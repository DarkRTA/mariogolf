; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $04a", ROMX[$4000], BANK[$4a]

    add $56                                       ; $4000: $c6 $56

    db $05, $62, $9c, $62

    rra                                           ; $4006: $1f
    ld l, h                                       ; $4007: $6c
    rst $38                                       ; $4008: $ff
    nop                                           ; $4009: $00
    rst $38                                       ; $400a: $ff
    nop                                           ; $400b: $00
    rst $38                                       ; $400c: $ff
    nop                                           ; $400d: $00
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
    ld a, [c]                                     ; $4018: $f2
    ld [hl-], a                                   ; $4019: $32
    ld sp, hl                                     ; $401a: $f9
    add hl, sp                                    ; $401b: $39
    ei                                            ; $401c: $fb
    dec sp                                        ; $401d: $3b
    di                                            ; $401e: $f3
    inc sp                                        ; $401f: $33
    pop af                                        ; $4020: $f1
    ld sp, $3afa                                  ; $4021: $31 $fa $3a
    di                                            ; $4024: $f3
    inc sp                                        ; $4025: $33
    ld hl, sp+$38                                 ; $4026: $f8 $38
    inc b                                         ; $4028: $04
    inc b                                         ; $4029: $04
    inc b                                         ; $402a: $04
    inc b                                         ; $402b: $04
    and h                                         ; $402c: $a4
    and h                                         ; $402d: $a4
    and h                                         ; $402e: $a4
    and h                                         ; $402f: $a4
    ld b, b                                       ; $4030: $40
    ld b, b                                       ; $4031: $40
    call nz, $44c4                                ; $4032: $c4 $c4 $44
    ld b, h                                       ; $4035: $44
    nop                                           ; $4036: $00
    nop                                           ; $4037: $00
    cp a                                          ; $4038: $bf
    cp b                                          ; $4039: $b8
    cp a                                          ; $403a: $bf
    cp b                                          ; $403b: $b8
    sbc a                                         ; $403c: $9f
    sbc b                                         ; $403d: $98
    sbc a                                         ; $403e: $9f
    sbc b                                         ; $403f: $98
    ccf                                           ; $4040: $3f
    db $38, $9f                                   ; $4041: $38 $9f
    sbc b                                         ; $4043: $98
    cp a                                          ; $4044: $bf

jr_04a_4045:
    cp b                                          ; $4045: $b8
    ccf                                           ; $4046: $3f
    jr c, jr_04a_4045                             ; $4047: $38 $fc

    inc c                                         ; $4049: $0c
    cp $0e                                        ; $404a: $fe $0e
    db $fc                                        ; $404c: $fc
    inc c                                         ; $404d: $0c
    cp $0e                                        ; $404e: $fe $0e
    cp $0e                                        ; $4050: $fe $0e
    db $fc                                        ; $4052: $fc
    inc c                                         ; $4053: $0c
    cp $0e                                        ; $4054: $fe $0e
    cp $0e                                        ; $4056: $fe $0e
    dec h                                         ; $4058: $25
    dec h                                         ; $4059: $25
    ld b, l                                       ; $405a: $45
    ld b, l                                       ; $405b: $45
    db $ec                                        ; $405c: $ec
    db $ec                                        ; $405d: $ec
    db $ed                                        ; $405e: $ed
    db $ed                                        ; $405f: $ed
    ld d, c                                       ; $4060: $51
    ld d, c                                       ; $4061: $51
    or l                                          ; $4062: $b5
    or l                                          ; $4063: $b5
    ld h, b                                       ; $4064: $60
    ld h, b                                       ; $4065: $60
    add l                                         ; $4066: $85
    add l                                         ; $4067: $85
    ld a, a                                       ; $4068: $7f
    ld [hl], b                                    ; $4069: $70
    ld a, a                                       ; $406a: $7f
    ld [hl], b                                    ; $406b: $70
    ccf                                           ; $406c: $3f
    jr nc, jr_04a_40ee                            ; $406d: $30 $7f

    ld [hl], b                                    ; $406f: $70
    ld a, a                                       ; $4070: $7f
    ld [hl], b                                    ; $4071: $70
    ccf                                           ; $4072: $3f
    jr nc, jr_04a_40f4                            ; $4073: $30 $7f

    ld [hl], b                                    ; $4075: $70
    ccf                                           ; $4076: $3f

jr_04a_4077:
    jr c, jr_04a_4077                             ; $4077: $38 $fe

    ld b, $ff                                     ; $4079: $06 $ff
    rlca                                          ; $407b: $07
    cp $06                                        ; $407c: $fe $06
    rst $38                                       ; $407e: $ff
    rlca                                          ; $407f: $07
    rst $38                                       ; $4080: $ff
    rlca                                          ; $4081: $07
    rst $38                                       ; $4082: $ff
    rlca                                          ; $4083: $07
    cp $06                                        ; $4084: $fe $06
    rst $38                                       ; $4086: $ff
    rlca                                          ; $4087: $07
    ld h, h                                       ; $4088: $64
    ld h, h                                       ; $4089: $64
    ld h, l                                       ; $408a: $65
    ld h, l                                       ; $408b: $65
    ld b, l                                       ; $408c: $45
    ld b, l                                       ; $408d: $45
    inc b                                         ; $408e: $04
    inc b                                         ; $408f: $04
    ld h, b                                       ; $4090: $60
    ld h, b                                       ; $4091: $60
    ld b, l                                       ; $4092: $45
    ld b, l                                       ; $4093: $45
    inc b                                         ; $4094: $04
    inc b                                         ; $4095: $04
    ld b, e                                       ; $4096: $43
    ld b, e                                       ; $4097: $43
    rst $38                                       ; $4098: $ff
    ret nz                                        ; $4099: $c0

    rst $38                                       ; $409a: $ff
    ret nz                                        ; $409b: $c0

    rst $38                                       ; $409c: $ff
    ret nz                                        ; $409d: $c0

    rst $38                                       ; $409e: $ff
    ret nz                                        ; $409f: $c0

    rst $38                                       ; $40a0: $ff
    ret nz                                        ; $40a1: $c0

    rst $38                                       ; $40a2: $ff
    ret nz                                        ; $40a3: $c0

    rst $38                                       ; $40a4: $ff
    ldh [rIE], a                                  ; $40a5: $e0 $ff
    ldh [rIE], a                                  ; $40a7: $e0 $ff
    ld bc, $01ff                                  ; $40a9: $01 $ff $01
    rst $38                                       ; $40ac: $ff
    ld bc, $01ff                                  ; $40ad: $01 $ff $01
    rst $38                                       ; $40b0: $ff
    ld bc, $01ff                                  ; $40b1: $01 $ff $01
    rst $38                                       ; $40b4: $ff
    ld bc, $01ff                                  ; $40b5: $01 $ff $01
    ret                                           ; $40b8: $c9


    ret                                           ; $40b9: $c9


    or e                                          ; $40ba: $b3
    or e                                          ; $40bb: $b3
    or e                                          ; $40bc: $b3
    or e                                          ; $40bd: $b3
    push bc                                       ; $40be: $c5
    push bc                                       ; $40bf: $c5
    and e                                         ; $40c0: $a3
    and e                                         ; $40c1: $a3

jr_04a_40c2:
    push bc                                       ; $40c2: $c5
    push bc                                       ; $40c3: $c5
    push de                                       ; $40c4: $d5
    push de                                       ; $40c5: $d5
    sub e                                         ; $40c6: $93
    sub e                                         ; $40c7: $93
    rst $38                                       ; $40c8: $ff
    add b                                         ; $40c9: $80
    rst $38                                       ; $40ca: $ff
    add b                                         ; $40cb: $80
    rst $38                                       ; $40cc: $ff
    add b                                         ; $40cd: $80
    rst $38                                       ; $40ce: $ff
    add b                                         ; $40cf: $80
    rst $38                                       ; $40d0: $ff
    ret nz                                        ; $40d1: $c0

    rst $38                                       ; $40d2: $ff
    ret nz                                        ; $40d3: $c0

    rst $38                                       ; $40d4: $ff
    add b                                         ; $40d5: $80
    rst $38                                       ; $40d6: $ff
    add b                                         ; $40d7: $80
    ld sp, hl                                     ; $40d8: $f9

jr_04a_40d9:
    add hl, sp                                    ; $40d9: $39
    ld a, [$f23a]                                 ; $40da: $fa $3a $f2
    ld [hl-], a                                   ; $40dd: $32
    ld a, [$fa3a]                                 ; $40de: $fa $3a $fa
    ld a, [hl-]                                   ; $40e1: $3a
    ld a, [$f83a]                                 ; $40e2: $fa $3a $f8
    jr c, jr_04a_40d9                             ; $40e5: $38 $f2

    ld [hl-], a                                   ; $40e7: $32
    nop                                           ; $40e8: $00
    nop                                           ; $40e9: $00
    ld b, h                                       ; $40ea: $44
    ld b, h                                       ; $40eb: $44
    inc b                                         ; $40ec: $04
    inc b                                         ; $40ed: $04

jr_04a_40ee:
    ld b, h                                       ; $40ee: $44
    ld b, h                                       ; $40ef: $44
    ld b, h                                       ; $40f0: $44
    ld b, h                                       ; $40f1: $44
    ld b, b                                       ; $40f2: $40
    ld b, b                                       ; $40f3: $40

jr_04a_40f4:
    ld b, h                                       ; $40f4: $44
    ld b, h                                       ; $40f5: $44
    inc b                                         ; $40f6: $04
    inc b                                         ; $40f7: $04
    ccf                                           ; $40f8: $3f
    inc a                                         ; $40f9: $3c
    rra                                           ; $40fa: $1f
    inc e                                         ; $40fb: $1c
    ccf                                           ; $40fc: $3f
    inc a                                         ; $40fd: $3c
    sbc a                                         ; $40fe: $9f
    sbc h                                         ; $40ff: $9c
    rra                                           ; $4100: $1f
    jr jr_04a_40c2                                ; $4101: $18 $bf

    cp b                                          ; $4103: $b8
    cp a                                          ; $4104: $bf
    cp b                                          ; $4105: $b8
    sbc a                                         ; $4106: $9f
    sbc b                                         ; $4107: $98
    db $fc                                        ; $4108: $fc
    inc c                                         ; $4109: $0c
    cp $0e                                        ; $410a: $fe $0e
    db $fc                                        ; $410c: $fc
    inc c                                         ; $410d: $0c
    db $fc                                        ; $410e: $fc
    inc c                                         ; $410f: $0c
    cp $0e                                        ; $4110: $fe $0e
    cp $0e                                        ; $4112: $fe $0e
    db $fc                                        ; $4114: $fc
    inc c                                         ; $4115: $0c
    cp $0e                                        ; $4116: $fe $0e
    and h                                         ; $4118: $a4
    and h                                         ; $4119: $a4
    and h                                         ; $411a: $a4
    and h                                         ; $411b: $a4
    inc b                                         ; $411c: $04
    inc b                                         ; $411d: $04
    add l                                         ; $411e: $85
    add l                                         ; $411f: $85
    and b                                         ; $4120: $a0
    and b                                         ; $4121: $a0
    and l                                         ; $4122: $a5
    and l                                         ; $4123: $a5
    ld hl, $a121                                  ; $4124: $21 $21 $a1
    and c                                         ; $4127: $a1
    ld a, a                                       ; $4128: $7f
    ld a, b                                       ; $4129: $78
    ld a, a                                       ; $412a: $7f
    ld a, b                                       ; $412b: $78
    ld a, a                                       ; $412c: $7f
    ld [hl], b                                    ; $412d: $70
    ld a, a                                       ; $412e: $7f
    ld [hl], b                                    ; $412f: $70
    ccf                                           ; $4130: $3f
    jr nc, jr_04a_41b2                            ; $4131: $30 $7f

    ld [hl], b                                    ; $4133: $70
    ld a, a                                       ; $4134: $7f
    ld [hl], b                                    ; $4135: $70
    ccf                                           ; $4136: $3f

jr_04a_4137:
    jr nc, jr_04a_4137                            ; $4137: $30 $fe

    ld b, $fe                                     ; $4139: $06 $fe
    ld b, $ff                                     ; $413b: $06 $ff
    rlca                                          ; $413d: $07
    rst $38                                       ; $413e: $ff
    rlca                                          ; $413f: $07
    rst $38                                       ; $4140: $ff
    rlca                                          ; $4141: $07
    cp $06                                        ; $4142: $fe $06
    rst $38                                       ; $4144: $ff
    rlca                                          ; $4145: $07
    cp $06                                        ; $4146: $fe $06
    ld bc, $0501                                  ; $4148: $01 $01 $05
    dec b                                         ; $414b: $05
    ld b, l                                       ; $414c: $45
    ld b, l                                       ; $414d: $45
    ld b, h                                       ; $414e: $44
    ld b, h                                       ; $414f: $44
    ld b, c                                       ; $4150: $41
    ld b, c                                       ; $4151: $41
    ld b, b                                       ; $4152: $40
    ld b, b                                       ; $4153: $40
    ld c, h                                       ; $4154: $4c
    ld c, h                                       ; $4155: $4c
    ld c, l                                       ; $4156: $4d
    ld c, l                                       ; $4157: $4d
    rst $38                                       ; $4158: $ff
    ret nz                                        ; $4159: $c0

    rst $38                                       ; $415a: $ff
    ret nz                                        ; $415b: $c0

    rst $38                                       ; $415c: $ff
    ret nz                                        ; $415d: $c0

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
    ld bc, $01ff                                  ; $4169: $01 $ff $01
    rst $38                                       ; $416c: $ff
    ld bc, $01ff                                  ; $416d: $01 $ff $01
    rst $38                                       ; $4170: $ff
    ld bc, $03ff                                  ; $4171: $01 $ff $03
    rst $38                                       ; $4174: $ff
    inc bc                                        ; $4175: $03
    rst $38                                       ; $4176: $ff
    ld bc, $d3d3                                  ; $4177: $01 $d3 $d3
    add l                                         ; $417a: $85
    add l                                         ; $417b: $85
    db $d3                                        ; $417c: $d3
    db $d3                                        ; $417d: $d3
    pop de                                        ; $417e: $d1
    pop de                                        ; $417f: $d1

jr_04a_4180:
    jp $8fc3                                      ; $4180: $c3 $c3 $8f


    adc a                                         ; $4183: $8f
    call $93cd                                    ; $4184: $cd $cd $93
    sub e                                         ; $4187: $93
    rst $38                                       ; $4188: $ff
    add b                                         ; $4189: $80
    rst $38                                       ; $418a: $ff
    add b                                         ; $418b: $80
    rst $38                                       ; $418c: $ff
    add b                                         ; $418d: $80
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
    ld a, [$f23a]                                 ; $4198: $fa $3a $f2

jr_04a_419b:
    ld [hl-], a                                   ; $419b: $32
    ldh a, [$30]                                  ; $419c: $f0 $30
    ld a, [$f03a]                                 ; $419e: $fa $3a $f0
    jr nc, jr_04a_419b                            ; $41a1: $30 $f8

    jr c, @-$06                                   ; $41a3: $38 $f8

    jr c, @-$06                                   ; $41a5: $38 $f8

    jr c, jr_04a_41ed                             ; $41a7: $38 $44

    ld b, h                                       ; $41a9: $44
    ld b, b                                       ; $41aa: $40
    ld b, b                                       ; $41ab: $40
    ld b, h                                       ; $41ac: $44
    ld b, h                                       ; $41ad: $44
    ld c, $0e                                     ; $41ae: $0e $0e
    ld c, $0e                                     ; $41b0: $0e $0e

jr_04a_41b2:
    ld c, [hl]                                    ; $41b2: $4e
    ld c, [hl]                                    ; $41b3: $4e
    ld d, l                                       ; $41b4: $55
    ld d, l                                       ; $41b5: $55
    dec bc                                        ; $41b6: $0b
    dec bc                                        ; $41b7: $0b
    cp a                                          ; $41b8: $bf
    cp b                                          ; $41b9: $b8
    cp a                                          ; $41ba: $bf
    cp b                                          ; $41bb: $b8
    cp a                                          ; $41bc: $bf
    cp b                                          ; $41bd: $b8
    ccf                                           ; $41be: $3f
    jr c, jr_04a_4180                             ; $41bf: $38 $bf

    cp b                                          ; $41c1: $b8
    sbc a                                         ; $41c2: $9f
    sbc b                                         ; $41c3: $98
    ccf                                           ; $41c4: $3f
    jr c, jr_04a_41e6                             ; $41c5: $38 $1f

jr_04a_41c7:
    jr jr_04a_41c7                                ; $41c7: $18 $fe

    ld c, $fe                                     ; $41c9: $0e $fe
    ld c, $fe                                     ; $41cb: $0e $fe
    ld c, $fc                                     ; $41cd: $0e $fc
    inc c                                         ; $41cf: $0c
    cp $1e                                        ; $41d0: $fe $1e
    db $fc                                        ; $41d2: $fc
    inc e                                         ; $41d3: $1c
    db $fc                                        ; $41d4: $fc
    inc e                                         ; $41d5: $1c
    db $fc                                        ; $41d6: $fc
    inc c                                         ; $41d7: $0c
    inc h                                         ; $41d8: $24
    inc h                                         ; $41d9: $24
    ld [bc], a                                    ; $41da: $02
    ld [bc], a                                    ; $41db: $02
    and a                                         ; $41dc: $a7
    and a                                         ; $41dd: $a7
    add a                                         ; $41de: $87
    add a                                         ; $41df: $87
    adc d                                         ; $41e0: $8a
    adc d                                         ; $41e1: $8a
    dec b                                         ; $41e2: $05
    dec b                                         ; $41e3: $05
    add a                                         ; $41e4: $87
    add a                                         ; $41e5: $87

jr_04a_41e6:
    and d                                         ; $41e6: $a2
    and d                                         ; $41e7: $a2
    ld a, a                                       ; $41e8: $7f
    ld [hl], b                                    ; $41e9: $70
    ld a, a                                       ; $41ea: $7f
    ld [hl], b                                    ; $41eb: $70
    ccf                                           ; $41ec: $3f

jr_04a_41ed:
    jr nc, jr_04a_426e                            ; $41ed: $30 $7f

    ld [hl], b                                    ; $41ef: $70
    cp a                                          ; $41f0: $bf
    or b                                          ; $41f1: $b0
    ld a, a                                       ; $41f2: $7f
    ld [hl], b                                    ; $41f3: $70
    ld a, a                                       ; $41f4: $7f
    ld [hl], b                                    ; $41f5: $70
    ccf                                           ; $41f6: $3f
    jr nc, @+$01                                  ; $41f7: $30 $ff

    rlca                                          ; $41f9: $07
    rst $38                                       ; $41fa: $ff
    rrca                                          ; $41fb: $0f
    rst $38                                       ; $41fc: $ff
    rrca                                          ; $41fd: $0f
    rst $38                                       ; $41fe: $ff
    rlca                                          ; $41ff: $07
    cp $06                                        ; $4200: $fe $06
    rst $38                                       ; $4202: $ff
    rlca                                          ; $4203: $07
    cp $06                                        ; $4204: $fe $06
    rst $38                                       ; $4206: $ff
    rlca                                          ; $4207: $07
    inc c                                         ; $4208: $0c
    inc c                                         ; $4209: $0c
    ld d, c                                       ; $420a: $51
    ld d, c                                       ; $420b: $51
    dec c                                         ; $420c: $0d
    dec c                                         ; $420d: $0d
    add hl, bc                                    ; $420e: $09
    add hl, bc                                    ; $420f: $09
    nop                                           ; $4210: $00
    nop                                           ; $4211: $00
    ld b, c                                       ; $4212: $41
    ld b, c                                       ; $4213: $41
    ld b, h                                       ; $4214: $44
    ld b, h                                       ; $4215: $44

jr_04a_4216:
    ld b, h                                       ; $4216: $44
    ld b, h                                       ; $4217: $44
    add l                                         ; $4218: $85
    add l                                         ; $4219: $85
    db $d3                                        ; $421a: $d3
    db $d3                                        ; $421b: $d3
    db $d3                                        ; $421c: $d3
    db $d3                                        ; $421d: $d3
    sub e                                         ; $421e: $93
    sub e                                         ; $421f: $93
    pop de                                        ; $4220: $d1
    pop de                                        ; $4221: $d1
    add e                                         ; $4222: $83
    add e                                         ; $4223: $83
    db $d3                                        ; $4224: $d3
    db $d3                                        ; $4225: $d3
    pop bc                                        ; $4226: $c1
    pop bc                                        ; $4227: $c1
    ld hl, sp+$78                                 ; $4228: $f8 $78
    ld a, [$f07a]                                 ; $422a: $fa $7a $f0
    ld [hl], b                                    ; $422d: $70
    ld a, [$f27a]                                 ; $422e: $fa $7a $f2
    ld [hl-], a                                   ; $4231: $32
    ld a, [c]                                     ; $4232: $f2
    ld [hl-], a                                   ; $4233: $32
    ld a, [$f23a]                                 ; $4234: $fa $3a $f2
    ld [hl-], a                                   ; $4237: $32
    ld c, [hl]                                    ; $4238: $4e
    ld c, [hl]                                    ; $4239: $4e
    ld b, h                                       ; $423a: $44
    ld b, h                                       ; $423b: $44
    ld b, b                                       ; $423c: $40
    ld b, b                                       ; $423d: $40
    ld b, h                                       ; $423e: $44
    ld b, h                                       ; $423f: $44
    ld b, h                                       ; $4240: $44
    ld b, h                                       ; $4241: $44
    nop                                           ; $4242: $00
    nop                                           ; $4243: $00
    ld b, h                                       ; $4244: $44
    ld b, h                                       ; $4245: $44
    ld b, b                                       ; $4246: $40
    ld b, b                                       ; $4247: $40
    sbc a                                         ; $4248: $9f
    sbc b                                         ; $4249: $98
    sbc a                                         ; $424a: $9f
    sbc b                                         ; $424b: $98
    cp a                                          ; $424c: $bf
    cp b                                          ; $424d: $b8
    sbc a                                         ; $424e: $9f
    sbc b                                         ; $424f: $98
    cp a                                          ; $4250: $bf
    cp b                                          ; $4251: $b8
    cp a                                          ; $4252: $bf
    cp b                                          ; $4253: $b8
    rra                                           ; $4254: $1f
    jr jr_04a_4216                                ; $4255: $18 $bf

    cp b                                          ; $4257: $b8
    cp $0e                                        ; $4258: $fe $0e
    db $fc                                        ; $425a: $fc
    inc c                                         ; $425b: $0c
    cp $0e                                        ; $425c: $fe $0e
    cp $0e                                        ; $425e: $fe $0e
    cp $0e                                        ; $4260: $fe $0e
    cp $0e                                        ; $4262: $fe $0e
    db $fc                                        ; $4264: $fc
    inc c                                         ; $4265: $0c
    cp $0e                                        ; $4266: $fe $0e
    and h                                         ; $4268: $a4
    and h                                         ; $4269: $a4
    ld bc, $a101                                  ; $426a: $01 $01 $a1
    and c                                         ; $426d: $a1

jr_04a_426e:
    inc h                                         ; $426e: $24
    inc h                                         ; $426f: $24
    and l                                         ; $4270: $a5
    and l                                         ; $4271: $a5
    add l                                         ; $4272: $85
    add l                                         ; $4273: $85
    ld hl, $8121                                  ; $4274: $21 $21 $81
    add c                                         ; $4277: $81
    ld a, a                                       ; $4278: $7f
    ld [hl], b                                    ; $4279: $70
    ld a, a                                       ; $427a: $7f
    ld [hl], b                                    ; $427b: $70
    ccf                                           ; $427c: $3f
    jr nc, jr_04a_42fe                            ; $427d: $30 $7f

    ld [hl], b                                    ; $427f: $70
    ccf                                           ; $4280: $3f
    jr nc, jr_04a_4302                            ; $4281: $30 $7f

    ld [hl], b                                    ; $4283: $70
    ld a, a                                       ; $4284: $7f
    ld [hl], b                                    ; $4285: $70
    ld a, a                                       ; $4286: $7f
    ld [hl], b                                    ; $4287: $70
    rst $38                                       ; $4288: $ff
    rlca                                          ; $4289: $07
    cp $06                                        ; $428a: $fe $06
    cp $06                                        ; $428c: $fe $06
    rst $38                                       ; $428e: $ff
    rlca                                          ; $428f: $07
    rst $38                                       ; $4290: $ff
    rlca                                          ; $4291: $07
    rst $38                                       ; $4292: $ff
    rlca                                          ; $4293: $07
    rst $38                                       ; $4294: $ff
    rlca                                          ; $4295: $07
    cp $06                                        ; $4296: $fe $06
    ld bc, $4401                                  ; $4298: $01 $01 $44
    ld b, h                                       ; $429b: $44
    dec b                                         ; $429c: $05
    dec b                                         ; $429d: $05
    ld b, c                                       ; $429e: $41
    ld b, c                                       ; $429f: $41
    ld b, l                                       ; $42a0: $45
    ld b, l                                       ; $42a1: $45
    ld b, l                                       ; $42a2: $45
    ld b, l                                       ; $42a3: $45
    ld b, h                                       ; $42a4: $44
    ld b, h                                       ; $42a5: $44

jr_04a_42a6:
    dec b                                         ; $42a6: $05
    dec b                                         ; $42a7: $05
    rst $38                                       ; $42a8: $ff
    ld bc, $01ff                                  ; $42a9: $01 $ff $01
    rst $38                                       ; $42ac: $ff
    ld bc, $03ff                                  ; $42ad: $01 $ff $03
    rst $38                                       ; $42b0: $ff
    inc bc                                        ; $42b1: $03
    rst $38                                       ; $42b2: $ff
    inc bc                                        ; $42b3: $03
    rst $38                                       ; $42b4: $ff
    ld bc, $00ff                                  ; $42b5: $01 $ff $00
    ret                                           ; $42b8: $c9


    ret                                           ; $42b9: $c9


    adc e                                         ; $42ba: $8b
    adc e                                         ; $42bb: $8b

jr_04a_42bc:
    pop bc                                        ; $42bc: $c1
    pop bc                                        ; $42bd: $c1
    inc b                                         ; $42be: $04
    inc b                                         ; $42bf: $04
    ld d, h                                       ; $42c0: $54
    ld d, h                                       ; $42c1: $54
    db $e3                                        ; $42c2: $e3
    db $e3                                        ; $42c3: $e3
    rst $38                                       ; $42c4: $ff
    rst $38                                       ; $42c5: $ff
    rst $38                                       ; $42c6: $ff
    ld a, [hl]                                    ; $42c7: $7e
    rst $38                                       ; $42c8: $ff
    add b                                         ; $42c9: $80
    rst $38                                       ; $42ca: $ff
    add b                                         ; $42cb: $80
    rst $38                                       ; $42cc: $ff
    add b                                         ; $42cd: $80
    rst $38                                       ; $42ce: $ff
    ret nz                                        ; $42cf: $c0

    rst $38                                       ; $42d0: $ff
    ret nz                                        ; $42d1: $c0

    rst $38                                       ; $42d2: $ff
    ret nz                                        ; $42d3: $c0

    rst $38                                       ; $42d4: $ff
    add b                                         ; $42d5: $80
    rst $38                                       ; $42d6: $ff
    nop                                           ; $42d7: $00
    ld a, [$fa3a]                                 ; $42d8: $fa $3a $fa
    ld a, [hl-]                                   ; $42db: $3a
    ld a, [$fa3a]                                 ; $42dc: $fa $3a $fa
    ld a, [hl-]                                   ; $42df: $3a
    ld hl, sp+$38                                 ; $42e0: $f8 $38
    ld a, [$f03a]                                 ; $42e2: $fa $3a $f0
    jr nc, @-$04                                  ; $42e5: $30 $fa

    ld a, [hl-]                                   ; $42e7: $3a
    ld b, h                                       ; $42e8: $44
    ld b, h                                       ; $42e9: $44
    ld b, h                                       ; $42ea: $44
    ld b, h                                       ; $42eb: $44
    nop                                           ; $42ec: $00
    nop                                           ; $42ed: $00
    ld b, h                                       ; $42ee: $44
    ld b, h                                       ; $42ef: $44
    ld b, h                                       ; $42f0: $44
    ld b, h                                       ; $42f1: $44
    ld b, h                                       ; $42f2: $44
    ld b, h                                       ; $42f3: $44
    ld b, h                                       ; $42f4: $44
    ld b, h                                       ; $42f5: $44
    ld b, h                                       ; $42f6: $44
    ld b, h                                       ; $42f7: $44
    ccf                                           ; $42f8: $3f
    jr c, jr_04a_433a                             ; $42f9: $38 $3f

    jr c, jr_04a_42bc                             ; $42fb: $38 $bf

    cp b                                          ; $42fd: $b8

jr_04a_42fe:
    cp a                                          ; $42fe: $bf
    cp b                                          ; $42ff: $b8
    cp a                                          ; $4300: $bf
    cp b                                          ; $4301: $b8

jr_04a_4302:
    sbc a                                         ; $4302: $9f
    sbc b                                         ; $4303: $98
    ccf                                           ; $4304: $3f
    jr c, jr_04a_42a6                             ; $4305: $38 $9f

    sbc b                                         ; $4307: $98
    cp $0e                                        ; $4308: $fe $0e
    db $fc                                        ; $430a: $fc
    inc c                                         ; $430b: $0c
    cp $0e                                        ; $430c: $fe $0e
    db $fc                                        ; $430e: $fc
    inc c                                         ; $430f: $0c
    cp $0e                                        ; $4310: $fe $0e
    cp $0e                                        ; $4312: $fe $0e
    cp $0e                                        ; $4314: $fe $0e
    db $fc                                        ; $4316: $fc
    inc c                                         ; $4317: $0c
    add h                                         ; $4318: $84
    add h                                         ; $4319: $84
    and l                                         ; $431a: $a5
    and l                                         ; $431b: $a5
    and l                                         ; $431c: $a5
    and l                                         ; $431d: $a5
    add h                                         ; $431e: $84
    add h                                         ; $431f: $84
    dec h                                         ; $4320: $25
    dec h                                         ; $4321: $25
    and l                                         ; $4322: $a5
    and l                                         ; $4323: $a5
    ld hl, $8421                                  ; $4324: $21 $21 $84
    add h                                         ; $4327: $84
    ccf                                           ; $4328: $3f
    jr nc, jr_04a_43aa                            ; $4329: $30 $7f

    ld [hl], b                                    ; $432b: $70
    ccf                                           ; $432c: $3f
    jr nc, jr_04a_436e                            ; $432d: $30 $3f

    jr nc, jr_04a_43b0                            ; $432f: $30 $7f

    ld [hl], b                                    ; $4331: $70
    ccf                                           ; $4332: $3f
    jr nc, @+$81                                  ; $4333: $30 $7f

    ld [hl], b                                    ; $4335: $70
    ld a, a                                       ; $4336: $7f
    ld [hl], b                                    ; $4337: $70
    rst $38                                       ; $4338: $ff
    rlca                                          ; $4339: $07

jr_04a_433a:
    cp $06                                        ; $433a: $fe $06
    cp $0e                                        ; $433c: $fe $0e
    db $fc                                        ; $433e: $fc
    inc c                                         ; $433f: $0c
    db $fd                                        ; $4340: $fd
    dec c                                         ; $4341: $0d
    rst $38                                       ; $4342: $ff
    rrca                                          ; $4343: $0f
    rst $38                                       ; $4344: $ff
    rlca                                          ; $4345: $07
    rst $38                                       ; $4346: $ff
    nop                                           ; $4347: $00
    ld b, l                                       ; $4348: $45
    ld b, l                                       ; $4349: $45
    ld b, h                                       ; $434a: $44
    ld b, h                                       ; $434b: $44
    ld b, b                                       ; $434c: $40
    ld b, b                                       ; $434d: $40

jr_04a_434e:
    inc c                                         ; $434e: $0c
    inc c                                         ; $434f: $0c
    and d                                         ; $4350: $a2
    and d                                         ; $4351: $a2
    rst $00                                       ; $4352: $c7
    rst $00                                       ; $4353: $c7
    rst $38                                       ; $4354: $ff
    rst $38                                       ; $4355: $ff
    rst $38                                       ; $4356: $ff
    cp $ff                                        ; $4357: $fe $ff
    ret nz                                        ; $4359: $c0

    rst $38                                       ; $435a: $ff
    ret nz                                        ; $435b: $c0

jr_04a_435c:
    rst $38                                       ; $435c: $ff
    ldh [$7f], a                                  ; $435d: $e0 $7f
    ld h, b                                       ; $435f: $60
    ld a, a                                       ; $4360: $7f
    ld h, b                                       ; $4361: $60
    rst $38                                       ; $4362: $ff
    ldh [rIE], a                                  ; $4363: $e0 $ff
    ret nz                                        ; $4365: $c0

    rst $38                                       ; $4366: $ff
    nop                                           ; $4367: $00
    ld a, [c]                                     ; $4368: $f2
    ld [hl-], a                                   ; $4369: $32
    ld a, [$fa3a]                                 ; $436a: $fa $3a $fa
    ld a, [hl-]                                   ; $436d: $3a

jr_04a_436e:
    ld a, [$f23a]                                 ; $436e: $fa $3a $f2
    ld [hl-], a                                   ; $4371: $32
    ld hl, sp+$38                                 ; $4372: $f8 $38
    ld a, [$fa3a]                                 ; $4374: $fa $3a $fa
    ld a, [hl-]                                   ; $4377: $3a
    ld b, h                                       ; $4378: $44
    ld b, h                                       ; $4379: $44
    ld b, h                                       ; $437a: $44
    ld b, h                                       ; $437b: $44
    ld b, b                                       ; $437c: $40
    ld b, b                                       ; $437d: $40
    ld b, h                                       ; $437e: $44
    ld b, h                                       ; $437f: $44

jr_04a_4380:
    ld b, h                                       ; $4380: $44
    ld b, h                                       ; $4381: $44
    ld b, h                                       ; $4382: $44
    ld b, h                                       ; $4383: $44
    ld b, b                                       ; $4384: $40
    ld b, b                                       ; $4385: $40
    inc b                                         ; $4386: $04
    inc b                                         ; $4387: $04
    sbc a                                         ; $4388: $9f
    sbc b                                         ; $4389: $98
    cp a                                          ; $438a: $bf
    cp b                                          ; $438b: $b8
    ccf                                           ; $438c: $3f
    jr c, jr_04a_434e                             ; $438d: $38 $bf

    cp b                                          ; $438f: $b8
    sbc a                                         ; $4390: $9f
    sbc b                                         ; $4391: $98
    cp a                                          ; $4392: $bf
    cp b                                          ; $4393: $b8
    cp a                                          ; $4394: $bf
    cp b                                          ; $4395: $b8
    ccf                                           ; $4396: $3f

jr_04a_4397:
    jr c, jr_04a_4397                             ; $4397: $38 $fe

    ld c, $fc                                     ; $4399: $0e $fc
    inc e                                         ; $439b: $1c
    ld a, [$f81a]                                 ; $439c: $fa $1a $f8
    jr @-$01                                      ; $439f: $18 $fd

    dec e                                         ; $43a1: $1d
    rst $38                                       ; $43a2: $ff
    rrca                                          ; $43a3: $0f
    rst $38                                       ; $43a4: $ff
    rlca                                          ; $43a5: $07
    rst $38                                       ; $43a6: $ff
    nop                                           ; $43a7: $00
    add h                                         ; $43a8: $84
    add h                                         ; $43a9: $84

jr_04a_43aa:
    and c                                         ; $43aa: $a1
    and c                                         ; $43ab: $a1
    and h                                         ; $43ac: $a4
    and h                                         ; $43ad: $a4
    ld l, [hl]                                    ; $43ae: $6e
    ld l, [hl]                                    ; $43af: $6e

jr_04a_43b0:
    add c                                         ; $43b0: $81
    add c                                         ; $43b1: $81

jr_04a_43b2:
    jp $ffc3                                      ; $43b2: $c3 $c3 $ff


    rst $38                                       ; $43b5: $ff
    rst $38                                       ; $43b6: $ff
    rst $38                                       ; $43b7: $ff
    ld a, a                                       ; $43b8: $7f
    ld [hl], b                                    ; $43b9: $70
    ccf                                           ; $43ba: $3f
    jr c, jr_04a_435c                             ; $43bb: $38 $9f

    sbc b                                         ; $43bd: $98
    rra                                           ; $43be: $1f
    jr jr_04a_4380                                ; $43bf: $18 $bf

    cp b                                          ; $43c1: $b8
    rst $38                                       ; $43c2: $ff
    ldh a, [rIE]                                  ; $43c3: $f0 $ff
    ldh [rIE], a                                  ; $43c5: $e0 $ff
    nop                                           ; $43c7: $00
    rst $10                                       ; $43c8: $d7
    sub $f3                                       ; $43c9: $d6 $f3
    di                                            ; $43cb: $f3
    and a                                         ; $43cc: $a7
    and [hl]                                      ; $43cd: $a6
    rst $10                                       ; $43ce: $d7
    sub $83                                       ; $43cf: $d6 $83
    add d                                         ; $43d1: $82
    sub e                                         ; $43d2: $93
    sub d                                         ; $43d3: $92
    rst $10                                       ; $43d4: $d7
    sub $d3                                       ; $43d5: $d6 $d3
    jp nc, $0000                                  ; $43d7: $d2 $00 $00

    ld b, h                                       ; $43da: $44
    ld b, h                                       ; $43db: $44
    inc b                                         ; $43dc: $04
    inc b                                         ; $43dd: $04
    ld b, h                                       ; $43de: $44
    ld b, h                                       ; $43df: $44
    ld b, b                                       ; $43e0: $40
    ld b, b                                       ; $43e1: $40
    ld b, b                                       ; $43e2: $40
    ld b, b                                       ; $43e3: $40
    nop                                           ; $43e4: $00
    nop                                           ; $43e5: $00
    inc b                                         ; $43e6: $04
    inc b                                         ; $43e7: $04
    ccf                                           ; $43e8: $3f
    jr c, jr_04a_440a                             ; $43e9: $38 $1f

    jr jr_04a_442c                                ; $43eb: $18 $3f

    jr c, @-$5f                                   ; $43ed: $38 $9f

    sbc b                                         ; $43ef: $98
    rra                                           ; $43f0: $1f
    jr jr_04a_43b2                                ; $43f1: $18 $bf

    cp b                                          ; $43f3: $b8
    cp a                                          ; $43f4: $bf
    cp b                                          ; $43f5: $b8
    sbc a                                         ; $43f6: $9f
    sbc b                                         ; $43f7: $98
    ldh a, [rSVBK]                                ; $43f8: $f0 $70
    ld a, [$f07a]                                 ; $43fa: $fa $7a $f0
    ld [hl], b                                    ; $43fd: $70
    ldh a, [rSVBK]                                ; $43fe: $f0 $70
    ei                                            ; $4400: $fb
    ld a, e                                       ; $4401: $7b
    rst $38                                       ; $4402: $ff
    ccf                                           ; $4403: $3f
    rst $38                                       ; $4404: $ff
    rra                                           ; $4405: $1f
    rst $38                                       ; $4406: $ff
    ld bc, $4444                                  ; $4407: $01 $44 $44

jr_04a_440a:
    ret nz                                        ; $440a: $c0

    ret nz                                        ; $440b: $c0

    add h                                         ; $440c: $84
    add h                                         ; $440d: $84
    nop                                           ; $440e: $00
    nop                                           ; $440f: $00
    inc bc                                        ; $4410: $03
    inc bc                                        ; $4411: $03
    add a                                         ; $4412: $87
    add a                                         ; $4413: $87
    rst $38                                       ; $4414: $ff
    rst $38                                       ; $4415: $ff
    rst $38                                       ; $4416: $ff
    rst $38                                       ; $4417: $ff
    sbc a                                         ; $4418: $9f
    sbc h                                         ; $4419: $9c
    ld a, a                                       ; $441a: $7f
    ld a, h                                       ; $441b: $7c
    rra                                           ; $441c: $1f
    inc e                                         ; $441d: $1c
    rra                                           ; $441e: $1f
    inc e                                         ; $441f: $1c
    ccf                                           ; $4420: $3f
    inc a                                         ; $4421: $3c
    rst $38                                       ; $4422: $ff
    ld hl, sp-$01                                 ; $4423: $f8 $ff
    ldh a, [rIE]                                  ; $4425: $f0 $ff
    nop                                           ; $4427: $00
    db $eb                                        ; $4428: $eb
    ld l, d                                       ; $4429: $6a
    db $eb                                        ; $442a: $eb
    ld l, e                                       ; $442b: $6b

jr_04a_442c:
    rst $00                                       ; $442c: $c7
    ld b, [hl]                                    ; $442d: $46
    rst $20                                       ; $442e: $e7
    ld h, [hl]                                    ; $442f: $66
    db $eb                                        ; $4430: $eb
    ld l, d                                       ; $4431: $6a
    db $eb                                        ; $4432: $eb
    ld l, d                                       ; $4433: $6a
    rst $00                                       ; $4434: $c7
    add $c7                                       ; $4435: $c6 $c7
    ld b, [hl]                                    ; $4437: $46
    rst $38                                       ; $4438: $ff
    nop                                           ; $4439: $00
    rst $38                                       ; $443a: $ff
    ld bc, $00ff                                  ; $443b: $01 $ff $00
    rst $38                                       ; $443e: $ff
    nop                                           ; $443f: $00
    rst $38                                       ; $4440: $ff
    nop                                           ; $4441: $00
    rst $38                                       ; $4442: $ff
    nop                                           ; $4443: $00
    rst $38                                       ; $4444: $ff
    nop                                           ; $4445: $00
    rst $38                                       ; $4446: $ff
    nop                                           ; $4447: $00
    sub a                                         ; $4448: $97
    sub [hl]                                      ; $4449: $96
    set 1, d                                      ; $444a: $cb $ca

jr_04a_444c:
    sbc a                                         ; $444c: $9f
    sbc [hl]                                      ; $444d: $9e

jr_04a_444e:
    set 1, d                                      ; $444e: $cb $ca
    rst $00                                       ; $4450: $c7
    add $93                                       ; $4451: $c6 $93
    sub d                                         ; $4453: $92

jr_04a_4454:
    db $d3                                        ; $4454: $d3
    jp nc, $9697                                  ; $4455: $d2 $97 $96

    rst $38                                       ; $4458: $ff
    jr c, @+$01                                   ; $4459: $38 $ff

    jr c, jr_04a_444c                             ; $445b: $38 $ef

    jr z, jr_04a_444e                             ; $445d: $28 $ef

    jr z, @+$01                                   ; $445f: $28 $ff

    jr c, @-$0f                                   ; $4461: $38 $ef

    jr z, @+$01                                   ; $4463: $28 $ff

    ld a, h                                       ; $4465: $7c
    rst $38                                       ; $4466: $ff
    jr c, jr_04a_4454                             ; $4467: $38 $eb

    ld l, d                                       ; $4469: $6a
    db $eb                                        ; $446a: $eb
    ld l, d                                       ; $446b: $6a
    rst $08                                       ; $446c: $cf
    ld c, [hl]                                    ; $446d: $4e
    rst $20                                       ; $446e: $e7
    ld h, [hl]                                    ; $446f: $66
    db $eb                                        ; $4470: $eb
    ld l, d                                       ; $4471: $6a
    set 1, e                                      ; $4472: $cb $cb
    rst $20                                       ; $4474: $e7
    rst $20                                       ; $4475: $e7
    rst $38                                       ; $4476: $ff
    ld a, [hl]                                    ; $4477: $7e
    rst $38                                       ; $4478: $ff
    nop                                           ; $4479: $00
    rst $38                                       ; $447a: $ff
    nop                                           ; $447b: $00
    rst $38                                       ; $447c: $ff
    nop                                           ; $447d: $00
    rst $38                                       ; $447e: $ff
    nop                                           ; $447f: $00
    rst $38                                       ; $4480: $ff
    nop                                           ; $4481: $00
    rst $38                                       ; $4482: $ff
    ld bc, $01ff                                  ; $4483: $01 $ff $01
    rst $38                                       ; $4486: $ff
    nop                                           ; $4487: $00
    rst $00                                       ; $4488: $c7
    add $d7                                       ; $4489: $c6 $d7
    sub $93                                       ; $448b: $d6 $93
    sub d                                         ; $448d: $92
    rst $00                                       ; $448e: $c7
    add $93                                       ; $448f: $c6 $93
    sub d                                         ; $4491: $92
    add hl, hl                                    ; $4492: $29
    add hl, hl                                    ; $4493: $29
    rst $20                                       ; $4494: $e7
    rst $20                                       ; $4495: $e7
    rst $38                                       ; $4496: $ff
    cp $45                                        ; $4497: $fe $45
    ld b, d                                       ; $4499: $42
    ld b, [hl]                                    ; $449a: $46
    nop                                           ; $449b: $00
    inc a                                         ; $449c: $3c
    nop                                           ; $449d: $00
    ld b, e                                       ; $449e: $43
    ld b, h                                       ; $449f: $44
    nop                                           ; $44a0: $00
    ld b, a                                       ; $44a1: $47
    ld c, b                                       ; $44a2: $48
    nop                                           ; $44a3: $00
    ld a, [bc]                                    ; $44a4: $0a
    dec bc                                        ; $44a5: $0b
    inc c                                         ; $44a6: $0c
    ld d, $17                                     ; $44a7: $16 $17
    jr jr_04a_44b5                                ; $44a9: $18 $0a

    ld hl, $2a18                                  ; $44ab: $21 $18 $2a
    dec hl                                        ; $44ae: $2b
    inc l                                         ; $44af: $2c
    rlca                                          ; $44b0: $07
    ld [$1309], sp                                ; $44b1: $08 $09 $13
    inc d                                         ; $44b4: $14

jr_04a_44b5:
    dec d                                         ; $44b5: $15
    rra                                           ; $44b6: $1f
    jr nz, jr_04a_44ce                            ; $44b7: $20 $15

    jr z, jr_04a_44e4                             ; $44b9: $28 $29

    dec d                                         ; $44bb: $15
    inc sp                                        ; $44bc: $33
    inc [hl]                                      ; $44bd: $34
    dec [hl]                                      ; $44be: $35
    inc b                                         ; $44bf: $04
    dec b                                         ; $44c0: $05
    ld b, $10                                     ; $44c1: $06 $10
    ld de, $1c12                                  ; $44c3: $11 $12 $1c
    dec e                                         ; $44c6: $1d
    ld e, $25                                     ; $44c7: $1e $25
    ld h, $27                                     ; $44c9: $26 $27
    jr nc, jr_04a_44fe                            ; $44cb: $30 $31

    ld [hl-], a                                   ; $44cd: $32

jr_04a_44ce:
    add hl, sp                                    ; $44ce: $39
    ld a, [hl-]                                   ; $44cf: $3a
    dec sp                                        ; $44d0: $3b
    ld bc, $0302                                  ; $44d1: $01 $02 $03
    dec c                                         ; $44d4: $0d
    ld c, $0f                                     ; $44d5: $0e $0f
    add hl, de                                    ; $44d7: $19
    ld a, [de]                                    ; $44d8: $1a
    dec de                                        ; $44d9: $1b
    ld [hl+], a                                   ; $44da: $22
    inc hl                                        ; $44db: $23
    inc h                                         ; $44dc: $24
    dec l                                         ; $44dd: $2d
    ld l, $2f                                     ; $44de: $2e $2f
    ld [hl], $37                                  ; $44e0: $36 $37
    jr c, jr_04a_4523                             ; $44e2: $38 $3f

jr_04a_44e4:
    ld b, b                                       ; $44e4: $40
    ld b, c                                       ; $44e5: $41
    ld bc, $0302                                  ; $44e6: $01 $02 $03
    dec c                                         ; $44e9: $0d
    ld c, $0f                                     ; $44ea: $0e $0f
    add hl, de                                    ; $44ec: $19
    ld a, [de]                                    ; $44ed: $1a
    dec de                                        ; $44ee: $1b
    ld [hl+], a                                   ; $44ef: $22
    inc hl                                        ; $44f0: $23
    inc h                                         ; $44f1: $24
    dec l                                         ; $44f2: $2d
    ld l, $2f                                     ; $44f3: $2e $2f
    ld [hl], $37                                  ; $44f5: $36 $37
    jr c, jr_04a_4506                             ; $44f7: $38 $0d

    dec a                                         ; $44f9: $3d
    ld a, $3f                                     ; $44fa: $3e $3f
    ld b, b                                       ; $44fc: $40
    ld b, c                                       ; $44fd: $41

jr_04a_44fe:
    nop                                           ; $44fe: $00
    nop                                           ; $44ff: $00
    nop                                           ; $4500: $00
    nop                                           ; $4501: $00
    nop                                           ; $4502: $00
    nop                                           ; $4503: $00
    nop                                           ; $4504: $00
    nop                                           ; $4505: $00

jr_04a_4506:
    nop                                           ; $4506: $00
    nop                                           ; $4507: $00
    nop                                           ; $4508: $00
    nop                                           ; $4509: $00
    nop                                           ; $450a: $00
    nop                                           ; $450b: $00
    nop                                           ; $450c: $00
    nop                                           ; $450d: $00
    ld bc, $0701                                  ; $450e: $01 $01 $07
    rlca                                          ; $4511: $07
    rrca                                          ; $4512: $0f
    rrca                                          ; $4513: $0f
    ld a, [de]                                    ; $4514: $1a
    dec e                                         ; $4515: $1d
    rra                                           ; $4516: $1f
    jr jr_04a_4534                                ; $4517: $18 $1b

    inc e                                         ; $4519: $1c
    rrca                                          ; $451a: $0f
    inc c                                         ; $451b: $0c
    rrca                                          ; $451c: $0f
    inc c                                         ; $451d: $0c
    di                                            ; $451e: $f3
    rst $08                                       ; $451f: $cf
    or c                                          ; $4520: $b1
    rst $08                                       ; $4521: $cf
    ld [hl], b                                    ; $4522: $70

jr_04a_4523:
    adc a                                         ; $4523: $8f
    ld [hl], b                                    ; $4524: $70
    adc a                                         ; $4525: $8f
    ld h, b                                       ; $4526: $60
    sbc a                                         ; $4527: $9f
    ldh [$1f], a                                  ; $4528: $e0 $1f
    ret nz                                        ; $452a: $c0

    ccf                                           ; $452b: $3f
    add b                                         ; $452c: $80
    ld a, a                                       ; $452d: $7f
    add b                                         ; $452e: $80
    add b                                         ; $452f: $80
    ldh [$e0], a                                  ; $4530: $e0 $e0
    ldh a, [$f0]                                  ; $4532: $f0 $f0

jr_04a_4534:
    sbc b                                         ; $4534: $98
    ld hl, sp+$18                                 ; $4535: $f8 $18
    ld hl, sp+$18                                 ; $4537: $f8 $18
    ld hl, sp+$30                                 ; $4539: $f8 $30
    ldh a, [$30]                                  ; $453b: $f0 $30
    ldh a, [$3b]                                  ; $453d: $f0 $3b
    inc a                                         ; $453f: $3c
    dec a                                         ; $4540: $3d
    ld a, $1e                                     ; $4541: $3e $1e
    rra                                           ; $4543: $1f
    rra                                           ; $4544: $1f
    rra                                           ; $4545: $1f
    rrca                                          ; $4546: $0f
    rrca                                          ; $4547: $0f
    rrca                                          ; $4548: $0f
    rrca                                          ; $4549: $0f
    ccf                                           ; $454a: $3f
    ccf                                           ; $454b: $3f
    ld a, a                                       ; $454c: $7f
    ld a, a                                       ; $454d: $7f
    cp $01                                        ; $454e: $fe $01
    db $fc                                        ; $4550: $fc
    inc bc                                        ; $4551: $03
    ldh a, [rIF]                                  ; $4552: $f0 $0f
    ld [hl], b                                    ; $4554: $70
    adc a                                         ; $4555: $8f
    ld hl, sp-$79                                 ; $4556: $f8 $87
    cp h                                          ; $4558: $bc
    jp $c3bc                                      ; $4559: $c3 $bc $c3


    ld a, $c1                                     ; $455c: $3e $c1
    nop                                           ; $455e: $00
    rst $38                                       ; $455f: $ff
    nop                                           ; $4560: $00
    rst $38                                       ; $4561: $ff
    nop                                           ; $4562: $00
    rst $38                                       ; $4563: $ff
    nop                                           ; $4564: $00
    rst $38                                       ; $4565: $ff
    nop                                           ; $4566: $00
    rst $38                                       ; $4567: $ff
    nop                                           ; $4568: $00
    rst $38                                       ; $4569: $ff
    nop                                           ; $456a: $00
    rst $38                                       ; $456b: $ff
    nop                                           ; $456c: $00
    rst $38                                       ; $456d: $ff
    rlca                                          ; $456e: $07
    ld hl, sp+$03                                 ; $456f: $f8 $03
    db $fc                                        ; $4571: $fc
    inc bc                                        ; $4572: $03
    db $fc                                        ; $4573: $fc
    ld bc, $00fe                                  ; $4574: $01 $fe $00
    rst $38                                       ; $4577: $ff
    nop                                           ; $4578: $00
    rst $38                                       ; $4579: $ff
    nop                                           ; $457a: $00
    rst $38                                       ; $457b: $ff
    nop                                           ; $457c: $00
    rst $38                                       ; $457d: $ff
    rst $08                                       ; $457e: $cf
    jr nc, @+$01                                  ; $457f: $30 $ff

    nop                                           ; $4581: $00
    rst $38                                       ; $4582: $ff
    nop                                           ; $4583: $00
    rst $38                                       ; $4584: $ff
    nop                                           ; $4585: $00
    rst $38                                       ; $4586: $ff
    nop                                           ; $4587: $00
    ld a, a                                       ; $4588: $7f
    add b                                         ; $4589: $80
    ccf                                           ; $458a: $3f
    ret nz                                        ; $458b: $c0

    ld c, $f1                                     ; $458c: $0e $f1
    inc e                                         ; $458e: $1c
    db $fc                                        ; $458f: $fc
    inc a                                         ; $4590: $3c
    db $fc                                        ; $4591: $fc
    ld a, b                                       ; $4592: $78
    ld hl, sp-$08                                 ; $4593: $f8 $f8
    ld hl, sp-$10                                 ; $4595: $f8 $f0
    ldh a, [$f0]                                  ; $4597: $f0 $f0
    ldh a, [$fc]                                  ; $4599: $f0 $fc
    db $fc                                        ; $459b: $fc
    ld a, [hl]                                    ; $459c: $7e
    cp $1b                                        ; $459d: $fe $1b
    inc e                                         ; $459f: $1c
    scf                                           ; $45a0: $37
    jr c, jr_04a_45da                             ; $45a1: $38 $37

    jr c, jr_04a_45db                             ; $45a3: $38 $36

    add hl, sp                                    ; $45a5: $39
    ld e, $19                                     ; $45a6: $1e $19
    ld a, a                                       ; $45a8: $7f
    ld a, b                                       ; $45a9: $78
    rst $30                                       ; $45aa: $f7
    ld hl, sp-$21                                 ; $45ab: $f8 $df
    ldh [rP1], a                                  ; $45ad: $e0 $00
    rst $38                                       ; $45af: $ff
    nop                                           ; $45b0: $00
    rst $38                                       ; $45b1: $ff
    nop                                           ; $45b2: $00
    rst $38                                       ; $45b3: $ff
    ld b, $f9                                     ; $45b4: $06 $f9
    ld [hl], $c9                                  ; $45b6: $36 $c9

jr_04a_45b8:
    ld a, $c1                                     ; $45b8: $3e $c1
    ld e, $e1                                     ; $45ba: $1e $e1
    inc c                                         ; $45bc: $0c
    di                                            ; $45bd: $f3
    jr c, jr_04a_45b8                             ; $45be: $38 $f8

jr_04a_45c0:
    inc c                                         ; $45c0: $0c
    db $fc                                        ; $45c1: $fc
    inc c                                         ; $45c2: $0c
    db $fc                                        ; $45c3: $fc
    inc c                                         ; $45c4: $0c
    db $fc                                        ; $45c5: $fc
    jr jr_04a_45c0                                ; $45c6: $18 $f8

    ld e, $fe                                     ; $45c8: $1e $fe
    rrca                                          ; $45ca: $0f
    rst $38                                       ; $45cb: $ff
    inc bc                                        ; $45cc: $03
    rst $38                                       ; $45cd: $ff
    nop                                           ; $45ce: $00
    nop                                           ; $45cf: $00
    nop                                           ; $45d0: $00
    nop                                           ; $45d1: $00
    nop                                           ; $45d2: $00
    nop                                           ; $45d3: $00
    nop                                           ; $45d4: $00
    nop                                           ; $45d5: $00
    nop                                           ; $45d6: $00
    nop                                           ; $45d7: $00
    nop                                           ; $45d8: $00
    nop                                           ; $45d9: $00

jr_04a_45da:
    nop                                           ; $45da: $00

jr_04a_45db:
    nop                                           ; $45db: $00
    ld bc, $ee01                                  ; $45dc: $01 $01 $ee
    pop af                                        ; $45df: $f1
    rst $38                                       ; $45e0: $ff
    ldh [rIE], a                                  ; $45e1: $e0 $ff
    ldh [$ef], a                                  ; $45e3: $e0 $ef
    ldh a, [rPCM34]                               ; $45e5: $f0 $77
    ld a, b                                       ; $45e7: $78
    ld a, e                                       ; $45e8: $7b
    ld a, h                                       ; $45e9: $7c
    dec a                                         ; $45ea: $3d
    ld a, $fe                                     ; $45eb: $3e $fe
    rst $38                                       ; $45ed: $ff
    ld a, [hl]                                    ; $45ee: $7e
    add c                                         ; $45ef: $81
    rst $38                                       ; $45f0: $ff
    nop                                           ; $45f1: $00
    rst $38                                       ; $45f2: $ff
    nop                                           ; $45f3: $00
    rst $38                                       ; $45f4: $ff
    nop                                           ; $45f5: $00
    cp $01                                        ; $45f6: $fe $01
    ldh a, [rIF]                                  ; $45f8: $f0 $0f
    ldh a, [rIF]                                  ; $45fa: $f0 $0f
    ld hl, sp+$07                                 ; $45fc: $f8 $07
    nop                                           ; $45fe: $00
    rst $38                                       ; $45ff: $ff
    nop                                           ; $4600: $00
    rst $38                                       ; $4601: $ff
    nop                                           ; $4602: $00
    rst $38                                       ; $4603: $ff
    nop                                           ; $4604: $00
    rst $38                                       ; $4605: $ff
    ld b, $f9                                     ; $4606: $06 $f9
    rrca                                          ; $4608: $0f
    ldh a, [rIF]                                  ; $4609: $f0 $0f
    ldh a, [rIF]                                  ; $460b: $f0 $0f
    ldh a, [rP1]                                  ; $460d: $f0 $00
    rst $38                                       ; $460f: $ff
    inc c                                         ; $4610: $0c
    di                                            ; $4611: $f3
    ld e, $e1                                     ; $4612: $1e $e1
    ld e, $e1                                     ; $4614: $1e $e1
    ld e, $e1                                     ; $4616: $1e $e1
    ld e, $e1                                     ; $4618: $1e $e1
    sbc [hl]                                      ; $461a: $9e
    ld h, c                                       ; $461b: $61
    cp $01                                        ; $461c: $fe $01
    rlca                                          ; $461e: $07
    rst $38                                       ; $461f: $ff
    rlca                                          ; $4620: $07
    rst $38                                       ; $4621: $ff
    rlca                                          ; $4622: $07
    rst $38                                       ; $4623: $ff
    rlca                                          ; $4624: $07
    rst $38                                       ; $4625: $ff
    ld c, $fe                                     ; $4626: $0e $fe
    ld e, $fe                                     ; $4628: $1e $fe
    inc a                                         ; $462a: $3c
    db $fc                                        ; $462b: $fc
    ld a, a                                       ; $462c: $7f
    rst $38                                       ; $462d: $ff
    nop                                           ; $462e: $00
    nop                                           ; $462f: $00
    nop                                           ; $4630: $00
    nop                                           ; $4631: $00
    nop                                           ; $4632: $00
    nop                                           ; $4633: $00
    nop                                           ; $4634: $00
    nop                                           ; $4635: $00
    nop                                           ; $4636: $00
    nop                                           ; $4637: $00
    nop                                           ; $4638: $00
    nop                                           ; $4639: $00
    nop                                           ; $463a: $00
    nop                                           ; $463b: $00
    add b                                         ; $463c: $80
    add b                                         ; $463d: $80
    nop                                           ; $463e: $00
    nop                                           ; $463f: $00
    nop                                           ; $4640: $00
    nop                                           ; $4641: $00
    nop                                           ; $4642: $00
    nop                                           ; $4643: $00
    ld bc, $0101                                  ; $4644: $01 $01 $01
    ld bc, $0303                                  ; $4647: $01 $03 $03
    rlca                                          ; $464a: $07
    rlca                                          ; $464b: $07
    dec c                                         ; $464c: $0d
    ld c, $de                                     ; $464d: $0e $de
    pop hl                                        ; $464f: $e1
    ld a, h                                       ; $4650: $7c
    ld h, e                                       ; $4651: $63
    db $ec                                        ; $4652: $ec
    di                                            ; $4653: $f3
    call c, $bce3                                 ; $4654: $dc $e3 $bc
    jp $c7b8                                      ; $4657: $c3 $b8 $c7


    ldh a, [$cf]                                  ; $465a: $f0 $cf
    ld [hl], b                                    ; $465c: $70
    rst $08                                       ; $465d: $cf
    nop                                           ; $465e: $00
    rst $38                                       ; $465f: $ff
    nop                                           ; $4660: $00
    rst $38                                       ; $4661: $ff
    nop                                           ; $4662: $00
    rst $38                                       ; $4663: $ff
    nop                                           ; $4664: $00
    rst $38                                       ; $4665: $ff
    nop                                           ; $4666: $00
    rst $38                                       ; $4667: $ff
    nop                                           ; $4668: $00
    rst $38                                       ; $4669: $ff
    nop                                           ; $466a: $00
    rst $38                                       ; $466b: $ff
    ret nz                                        ; $466c: $c0

    ccf                                           ; $466d: $3f
    inc bc                                        ; $466e: $03
    rst $38                                       ; $466f: $ff
    ld b, $fe                                     ; $4670: $06 $fe
    rlca                                          ; $4672: $07
    rst $38                                       ; $4673: $ff
    inc bc                                        ; $4674: $03
    rst $38                                       ; $4675: $ff
    ld bc, $01ff                                  ; $4676: $01 $ff $01
    rst $38                                       ; $4679: $ff
    inc bc                                        ; $467a: $03
    rst $38                                       ; $467b: $ff
    inc bc                                        ; $467c: $03
    rst $38                                       ; $467d: $ff

jr_04a_467e:
    nop                                           ; $467e: $00
    nop                                           ; $467f: $00
    nop                                           ; $4680: $00
    nop                                           ; $4681: $00
    nop                                           ; $4682: $00
    nop                                           ; $4683: $00
    add b                                         ; $4684: $80
    add b                                         ; $4685: $80
    add b                                         ; $4686: $80
    add b                                         ; $4687: $80
    ret nz                                        ; $4688: $c0

    ret nz                                        ; $4689: $c0

    ldh [$e0], a                                  ; $468a: $e0 $e0
    jr nc, jr_04a_467e                            ; $468c: $30 $f0

    rlca                                          ; $468e: $07
    rlca                                          ; $468f: $07
    rrca                                          ; $4690: $0f
    rrca                                          ; $4691: $0f
    rrca                                          ; $4692: $0f
    rrca                                          ; $4693: $0f
    ld c, $0f                                     ; $4694: $0e $0f
    ld c, $0f                                     ; $4696: $0e $0f
    rrca                                          ; $4698: $0f
    rrca                                          ; $4699: $0f
    rlca                                          ; $469a: $07
    rlca                                          ; $469b: $07
    rlca                                          ; $469c: $07
    rlca                                          ; $469d: $07
    rst $38                                       ; $469e: $ff
    rst $38                                       ; $469f: $ff
    rst $38                                       ; $46a0: $ff
    rst $38                                       ; $46a1: $ff
    ld l, a                                       ; $46a2: $6f
    sbc a                                         ; $46a3: $9f
    ld hl, sp+$07                                 ; $46a4: $f8 $07
    rst $38                                       ; $46a6: $ff
    nop                                           ; $46a7: $00
    rst $38                                       ; $46a8: $ff
    nop                                           ; $46a9: $00
    ld a, a                                       ; $46aa: $7f
    add b                                         ; $46ab: $80
    cp a                                          ; $46ac: $bf
    ret nz                                        ; $46ad: $c0

    db $fc                                        ; $46ae: $fc
    add e                                         ; $46af: $83
    cp [hl]                                       ; $46b0: $be
    pop bc                                        ; $46b1: $c1
    ld a, $c1                                     ; $46b2: $3e $c1
    ld a, a                                       ; $46b4: $7f
    add b                                         ; $46b5: $80
    rst $38                                       ; $46b6: $ff
    nop                                           ; $46b7: $00
    rst $38                                       ; $46b8: $ff
    nop                                           ; $46b9: $00
    rst $38                                       ; $46ba: $ff
    nop                                           ; $46bb: $00
    cp $01                                        ; $46bc: $fe $01
    rlca                                          ; $46be: $07
    ld hl, sp+$03                                 ; $46bf: $f8 $03
    db $fc                                        ; $46c1: $fc
    ld bc, $00fe                                  ; $46c2: $01 $fe $00
    rst $38                                       ; $46c5: $ff
    nop                                           ; $46c6: $00
    rst $38                                       ; $46c7: $ff
    nop                                           ; $46c8: $00
    rst $38                                       ; $46c9: $ff
    nop                                           ; $46ca: $00
    rst $38                                       ; $46cb: $ff
    nop                                           ; $46cc: $00
    rst $38                                       ; $46cd: $ff
    cp $01                                        ; $46ce: $fe $01
    cp $01                                        ; $46d0: $fe $01
    cp $01                                        ; $46d2: $fe $01
    cp $01                                        ; $46d4: $fe $01
    ld a, [hl]                                    ; $46d6: $7e
    add c                                         ; $46d7: $81
    inc e                                         ; $46d8: $1c
    db $e3                                        ; $46d9: $e3
    nop                                           ; $46da: $00
    rst $38                                       ; $46db: $ff
    nop                                           ; $46dc: $00
    rst $38                                       ; $46dd: $ff
    rst $38                                       ; $46de: $ff
    rst $38                                       ; $46df: $ff
    rst $38                                       ; $46e0: $ff
    rst $38                                       ; $46e1: $ff
    ld [hl], b                                    ; $46e2: $70
    rst $38                                       ; $46e3: $ff
    nop                                           ; $46e4: $00
    rst $38                                       ; $46e5: $ff
    nop                                           ; $46e6: $00
    rst $38                                       ; $46e7: $ff
    nop                                           ; $46e8: $00
    rst $38                                       ; $46e9: $ff
    nop                                           ; $46ea: $00
    rst $38                                       ; $46eb: $ff
    ld bc, $e0ff                                  ; $46ec: $01 $ff $e0
    ldh [$f0], a                                  ; $46ef: $e0 $f0
    ldh a, [$f0]                                  ; $46f1: $f0 $f0
    ldh a, [rSVBK]                                ; $46f3: $f0 $70
    ldh a, [rSVBK]                                ; $46f5: $f0 $70
    ldh a, [$f0]                                  ; $46f7: $f0 $f0
    ldh a, [$e0]                                  ; $46f9: $f0 $e0
    ldh [$e0], a                                  ; $46fb: $e0 $e0
    ldh [rIF], a                                  ; $46fd: $e0 $0f
    inc c                                         ; $46ff: $0c
    dec c                                         ; $4700: $0d
    ld c, $07                                     ; $4701: $0e $07
    ld b, $06                                     ; $4703: $06 $06
    rlca                                          ; $4705: $07
    inc bc                                        ; $4706: $03
    inc bc                                        ; $4707: $03
    inc bc                                        ; $4708: $03
    inc bc                                        ; $4709: $03
    rlca                                          ; $470a: $07
    rlca                                          ; $470b: $07
    ld b, $07                                     ; $470c: $06 $07
    or [hl]                                       ; $470e: $b6
    ld c, c                                       ; $470f: $49
    rst $30                                       ; $4710: $f7
    ld [$0cf3], sp                                ; $4711: $08 $f3 $0c
    pop af                                        ; $4714: $f1
    ld c, $e0                                     ; $4715: $0e $e0
    rra                                           ; $4717: $1f
    ld h, b                                       ; $4718: $60
    sbc a                                         ; $4719: $9f
    ld h, b                                       ; $471a: $60
    sbc a                                         ; $471b: $9f
    ldh a, [rIF]                                  ; $471c: $f0 $0f
    ret nz                                        ; $471e: $c0

    ccf                                           ; $471f: $3f

jr_04a_4720:
    ret nz                                        ; $4720: $c0

    ccf                                           ; $4721: $3f

jr_04a_4722:
    ret nz                                        ; $4722: $c0

    ccf                                           ; $4723: $3f
    add b                                         ; $4724: $80
    ld a, a                                       ; $4725: $7f
    nop                                           ; $4726: $00
    rst $38                                       ; $4727: $ff
    nop                                           ; $4728: $00
    rst $38                                       ; $4729: $ff
    nop                                           ; $472a: $00
    rst $38                                       ; $472b: $ff
    nop                                           ; $472c: $00
    rst $38                                       ; $472d: $ff
    jr nc, jr_04a_4720                            ; $472e: $30 $f0

    jr nc, jr_04a_4722                            ; $4730: $30 $f0

    ld h, b                                       ; $4732: $60
    ldh [$60], a                                  ; $4733: $e0 $60
    ldh [$c0], a                                  ; $4735: $e0 $c0
    ret nz                                        ; $4737: $c0

    ret nz                                        ; $4738: $c0

    ret nz                                        ; $4739: $c0

    ldh [$e0], a                                  ; $473a: $e0 $e0
    ld h, b                                       ; $473c: $60
    ldh [$03], a                                  ; $473d: $e0 $03
    inc bc                                        ; $473f: $03
    ld bc, $0001                                  ; $4740: $01 $01 $00
    nop                                           ; $4743: $00
    nop                                           ; $4744: $00
    nop                                           ; $4745: $00
    nop                                           ; $4746: $00
    nop                                           ; $4747: $00
    nop                                           ; $4748: $00
    nop                                           ; $4749: $00
    nop                                           ; $474a: $00
    nop                                           ; $474b: $00
    nop                                           ; $474c: $00
    nop                                           ; $474d: $00
    rst $18                                       ; $474e: $df
    ldh [$ef], a                                  ; $474f: $e0 $ef
    ldh a, [$f7]                                  ; $4751: $f0 $f7
    ld hl, sp+$7d                                 ; $4753: $f8 $7d
    ld a, [hl]                                    ; $4755: $7e
    ccf                                           ; $4756: $3f
    ccf                                           ; $4757: $3f
    rra                                           ; $4758: $1f
    rra                                           ; $4759: $1f
    ccf                                           ; $475a: $3f
    ccf                                           ; $475b: $3f
    ld a, [hl]                                    ; $475c: $7e
    ld a, a                                       ; $475d: $7f
    ld hl, sp+$07                                 ; $475e: $f8 $07
    ld hl, sp+$07                                 ; $4760: $f8 $07
    db $fc                                        ; $4762: $fc
    inc bc                                        ; $4763: $03
    db $fc                                        ; $4764: $fc
    inc bc                                        ; $4765: $03
    ld a, [hl]                                    ; $4766: $7e
    add c                                         ; $4767: $81
    cp [hl]                                       ; $4768: $be
    pop bc                                        ; $4769: $c1
    sbc [hl]                                      ; $476a: $9e
    pop hl                                        ; $476b: $e1
    ld a, $c1                                     ; $476c: $3e $c1
    inc bc                                        ; $476e: $03
    rst $38                                       ; $476f: $ff
    rlca                                          ; $4770: $07
    rst $38                                       ; $4771: $ff
    rra                                           ; $4772: $1f
    rst $38                                       ; $4773: $ff
    ld a, [hl]                                    ; $4774: $7e
    cp $fc                                        ; $4775: $fe $fc
    db $fc                                        ; $4777: $fc
    ld hl, sp-$08                                 ; $4778: $f8 $f8
    db $fc                                        ; $477a: $fc
    db $fc                                        ; $477b: $fc
    ld a, [hl]                                    ; $477c: $7e
    cp $c0                                        ; $477d: $fe $c0
    ret nz                                        ; $477f: $c0

    add b                                         ; $4780: $80
    add b                                         ; $4781: $80
    nop                                           ; $4782: $00
    nop                                           ; $4783: $00
    nop                                           ; $4784: $00
    nop                                           ; $4785: $00
    nop                                           ; $4786: $00
    nop                                           ; $4787: $00
    nop                                           ; $4788: $00
    nop                                           ; $4789: $00
    nop                                           ; $478a: $00
    nop                                           ; $478b: $00
    nop                                           ; $478c: $00
    nop                                           ; $478d: $00
    ld c, $0f                                     ; $478e: $0e $0f
    ld a, [de]                                    ; $4790: $1a
    dec e                                         ; $4791: $1d
    rra                                           ; $4792: $1f
    jr @+$1d                                      ; $4793: $18 $1b

    inc e                                         ; $4795: $1c
    dec c                                         ; $4796: $0d
    ld c, $0e                                     ; $4797: $0e $0e
    rrca                                          ; $4799: $0f
    ld b, $07                                     ; $479a: $06 $07
    ld e, $1f                                     ; $479c: $1e $1f
    ldh a, [rIF]                                  ; $479e: $f0 $0f
    ld [hl], b                                    ; $47a0: $70
    adc a                                         ; $47a1: $8f
    ldh a, [rIF]                                  ; $47a2: $f0 $0f
    ldh [$1f], a                                  ; $47a4: $e0 $1f
    ret nz                                        ; $47a6: $c0

    ccf                                           ; $47a7: $3f
    ret nz                                        ; $47a8: $c0

    ccf                                           ; $47a9: $3f
    ldh [$1f], a                                  ; $47aa: $e0 $1f
    ldh [$1f], a                                  ; $47ac: $e0 $1f
    ld [hl], b                                    ; $47ae: $70
    ldh a, [rNR23]                                ; $47af: $f0 $18
    ld hl, sp+$18                                 ; $47b1: $f8 $18
    ld hl, sp+$18                                 ; $47b3: $f8 $18
    ld hl, sp+$30                                 ; $47b5: $f8 $30
    ldh a, [rSVBK]                                ; $47b7: $f0 $70
    ldh a, [$60]                                  ; $47b9: $f0 $60
    ldh [$78], a                                  ; $47bb: $e0 $78
    ld hl, sp+$78                                 ; $47bd: $f8 $78
    ld a, a                                       ; $47bf: $7f
    rst $30                                       ; $47c0: $f7
    ld hl, sp-$11                                 ; $47c1: $f8 $ef
    ldh a, [rIE]                                  ; $47c3: $f0 $ff
    ldh [$ef], a                                  ; $47c5: $e0 $ef
    ldh a, [$f7]                                  ; $47c7: $f0 $f7
    ld hl, sp+$7f                                 ; $47c9: $f8 $7f
    ld a, a                                       ; $47cb: $7f
    ccf                                           ; $47cc: $3f
    ccf                                           ; $47cd: $3f
    cp $01                                        ; $47ce: $fe $01
    db $fc                                        ; $47d0: $fc
    inc bc                                        ; $47d1: $03
    ld hl, sp+$07                                 ; $47d2: $f8 $07
    db $fc                                        ; $47d4: $fc
    inc bc                                        ; $47d5: $03
    cp $01                                        ; $47d6: $fe $01
    rst $38                                       ; $47d8: $ff
    nop                                           ; $47d9: $00
    ld a, a                                       ; $47da: $7f
    add b                                         ; $47db: $80
    cp a                                          ; $47dc: $bf
    ret nz                                        ; $47dd: $c0

    ld e, $fe                                     ; $47de: $1e $fe
    rrca                                          ; $47e0: $0f
    rst $38                                       ; $47e1: $ff
    rlca                                          ; $47e2: $07
    rst $38                                       ; $47e3: $ff
    rlca                                          ; $47e4: $07
    rst $38                                       ; $47e5: $ff
    rlca                                          ; $47e6: $07
    rst $38                                       ; $47e7: $ff
    rrca                                          ; $47e8: $0f
    rst $38                                       ; $47e9: $ff

jr_04a_47ea:
    ld a, [hl]                                    ; $47ea: $7e
    cp $fc                                        ; $47eb: $fe $fc
    db $fc                                        ; $47ed: $fc
    dec de                                        ; $47ee: $1b
    inc e                                         ; $47ef: $1c
    dec de                                        ; $47f0: $1b
    inc e                                         ; $47f1: $1c
    dec c                                         ; $47f2: $0d
    ld c, $3f                                     ; $47f3: $0e $3f
    ld a, $7e                                     ; $47f5: $3e $7e
    ld a, a                                       ; $47f7: $7f
    ld l, h                                       ; $47f8: $6c
    ld [hl], e                                    ; $47f9: $73
    ld l, a                                       ; $47fa: $6f
    ld [hl], b                                    ; $47fb: $70
    scf                                           ; $47fc: $37
    jr c, @-$1e                                   ; $47fd: $38 $e0

    rra                                           ; $47ff: $1f
    ret nz                                        ; $4800: $c0

    ccf                                           ; $4801: $3f
    add [hl]                                      ; $4802: $86
    ld a, c                                       ; $4803: $79
    rst $00                                       ; $4804: $c7
    jr c, jr_04a_47ea                             ; $4805: $38 $e3

    inc e                                         ; $4807: $1c
    pop af                                        ; $4808: $f1
    ld c, $f0                                     ; $4809: $0e $f0
    rrca                                          ; $480b: $0f
    ldh [$1f], a                                  ; $480c: $e0 $1f
    nop                                           ; $480e: $00
    rst $38                                       ; $480f: $ff
    ret nz                                        ; $4810: $c0

    ccf                                           ; $4811: $3f
    ret nz                                        ; $4812: $c0

    ccf                                           ; $4813: $3f

jr_04a_4814:
    ret nz                                        ; $4814: $c0

    ccf                                           ; $4815: $3f
    ret nz                                        ; $4816: $c0

    ccf                                           ; $4817: $3f

jr_04a_4818:
    add b                                         ; $4818: $80
    ld a, a                                       ; $4819: $7f

jr_04a_481a:
    nop                                           ; $481a: $00
    rst $38                                       ; $481b: $ff
    nop                                           ; $481c: $00
    rst $38                                       ; $481d: $ff
    jr jr_04a_4818                                ; $481e: $18 $f8

    jr jr_04a_481a                                ; $4820: $18 $f8

    jr nc, jr_04a_4814                            ; $4822: $30 $f0

    ld a, h                                       ; $4824: $7c
    db $fc                                        ; $4825: $fc
    ld a, [hl]                                    ; $4826: $7e
    cp $06                                        ; $4827: $fe $06
    cp $06                                        ; $4829: $fe $06
    cp $0c                                        ; $482b: $fe $0c
    db $fc                                        ; $482d: $fc
    rrca                                          ; $482e: $0f
    rrca                                          ; $482f: $0f
    rra                                           ; $4830: $1f
    rra                                           ; $4831: $1f
    ld e, $1f                                     ; $4832: $1e $1f
    dec a                                         ; $4834: $3d
    ld a, $7b                                     ; $4835: $3e $7b
    ld a, h                                       ; $4837: $7c
    ld [hl], a                                    ; $4838: $77
    ld a, b                                       ; $4839: $78
    rst $30                                       ; $483a: $f7
    ld hl, sp-$1d                                 ; $483b: $f8 $e3
    db $fc                                        ; $483d: $fc
    cp [hl]                                       ; $483e: $be
    pop bc                                        ; $483f: $c1
    ld a, [hl]                                    ; $4840: $7e
    add c                                         ; $4841: $81
    db $fc                                        ; $4842: $fc
    inc bc                                        ; $4843: $03
    ld hl, sp+$07                                 ; $4844: $f8 $07
    ldh a, [rIF]                                  ; $4846: $f0 $0f
    ldh [$1f], a                                  ; $4848: $e0 $1f
    add b                                         ; $484a: $80
    ld a, a                                       ; $484b: $7f
    nop                                           ; $484c: $00
    rst $38                                       ; $484d: $ff
    ldh a, [$f0]                                  ; $484e: $f0 $f0
    ld hl, sp-$08                                 ; $4850: $f8 $f8
    ld a, b                                       ; $4852: $78
    ld hl, sp+$3c                                 ; $4853: $f8 $3c
    db $fc                                        ; $4855: $fc
    ld e, $fe                                     ; $4856: $1e $fe
    ld c, $fe                                     ; $4858: $0e $fe
    rrca                                          ; $485a: $0f
    rst $38                                       ; $485b: $ff
    rlca                                          ; $485c: $07
    rst $38                                       ; $485d: $ff
    dec e                                         ; $485e: $1d
    ld e, $0f                                     ; $485f: $1e $0f
    rrca                                          ; $4861: $0f
    ld c, $0f                                     ; $4862: $0e $0f
    dec de                                        ; $4864: $1b
    inc e                                         ; $4865: $1c
    dec de                                        ; $4866: $1b
    inc e                                         ; $4867: $1c
    inc e                                         ; $4868: $1c
    rra                                           ; $4869: $1f
    ld c, $0f                                     ; $486a: $0e $0f
    ld b, $07                                     ; $486c: $06 $07
    ldh [$1f], a                                  ; $486e: $e0 $1f
    ldh [$1f], a                                  ; $4870: $e0 $1f
    ret nz                                        ; $4872: $c0

    ccf                                           ; $4873: $3f
    ret nz                                        ; $4874: $c0

    ccf                                           ; $4875: $3f
    ldh [$1f], a                                  ; $4876: $e0 $1f

jr_04a_4878:
    ldh a, [rIF]                                  ; $4878: $f0 $0f
    ldh a, [rIF]                                  ; $487a: $f0 $0f
    ldh [$1f], a                                  ; $487c: $e0 $1f
    jr c, jr_04a_4878                             ; $487e: $38 $f8

    ld [hl], b                                    ; $4880: $70
    ldh a, [rSVBK]                                ; $4881: $f0 $70
    ldh a, [rNR23]                                ; $4883: $f0 $18
    ld hl, sp+$18                                 ; $4885: $f8 $18
    ld hl, sp+$38                                 ; $4887: $f8 $38
    ld hl, sp+$70                                 ; $4889: $f8 $70
    ldh a, [$60]                                  ; $488b: $f0 $60
    ldh [$e0], a                                  ; $488d: $e0 $e0
    rst $38                                       ; $488f: $ff
    pop af                                        ; $4890: $f1
    rst $38                                       ; $4891: $ff
    ld a, a                                       ; $4892: $7f
    ld a, a                                       ; $4893: $7f
    ld a, a                                       ; $4894: $7f
    ld a, a                                       ; $4895: $7f
    ld a, $3e                                     ; $4896: $3e $3e
    nop                                           ; $4898: $00
    nop                                           ; $4899: $00
    nop                                           ; $489a: $00
    nop                                           ; $489b: $00
    nop                                           ; $489c: $00
    nop                                           ; $489d: $00
    ld h, b                                       ; $489e: $60
    rst $38                                       ; $489f: $ff
    ldh a, [rIE]                                  ; $48a0: $f0 $ff
    ldh a, [rIE]                                  ; $48a2: $f0 $ff
    ldh a, [rIE]                                  ; $48a4: $f0 $ff
    ld [hl], b                                    ; $48a6: $70
    ld a, a                                       ; $48a7: $7f
    ld [hl], b                                    ; $48a8: $70
    ld a, a                                       ; $48a9: $7f
    ld [hl], b                                    ; $48aa: $70
    ld a, a                                       ; $48ab: $7f
    ld [hl], c                                    ; $48ac: $71
    ld a, a                                       ; $48ad: $7f
    nop                                           ; $48ae: $00
    rst $38                                       ; $48af: $ff
    nop                                           ; $48b0: $00
    rst $38                                       ; $48b1: $ff
    jr @+$01                                      ; $48b2: $18 $ff

    inc a                                         ; $48b4: $3c
    rst $38                                       ; $48b5: $ff
    inc a                                         ; $48b6: $3c
    rst $38                                       ; $48b7: $ff
    ld a, b                                       ; $48b8: $78
    rst $38                                       ; $48b9: $ff
    ld hl, sp-$01                                 ; $48ba: $f8 $ff
    ld hl, sp-$01                                 ; $48bc: $f8 $ff
    nop                                           ; $48be: $00
    rst $38                                       ; $48bf: $ff
    nop                                           ; $48c0: $00
    rst $38                                       ; $48c1: $ff
    jr @+$01                                      ; $48c2: $18 $ff

    inc a                                         ; $48c4: $3c
    rst $38                                       ; $48c5: $ff
    inc a                                         ; $48c6: $3c
    rst $38                                       ; $48c7: $ff
    ld e, $ff                                     ; $48c8: $1e $ff
    rra                                           ; $48ca: $1f
    rst $38                                       ; $48cb: $ff
    rra                                           ; $48cc: $1f
    rst $38                                       ; $48cd: $ff
    ld b, $ff                                     ; $48ce: $06 $ff
    rrca                                          ; $48d0: $0f
    rst $38                                       ; $48d1: $ff
    rrca                                          ; $48d2: $0f
    rst $38                                       ; $48d3: $ff
    rrca                                          ; $48d4: $0f
    rst $38                                       ; $48d5: $ff
    ld c, $fe                                     ; $48d6: $0e $fe
    ld c, $fe                                     ; $48d8: $0e $fe
    ld c, $fe                                     ; $48da: $0e $fe
    adc [hl]                                      ; $48dc: $8e
    cp $07                                        ; $48dd: $fe $07
    rst $38                                       ; $48df: $ff
    adc a                                         ; $48e0: $8f
    rst $38                                       ; $48e1: $ff
    cp $fe                                        ; $48e2: $fe $fe
    cp $fe                                        ; $48e4: $fe $fe
    ld a, h                                       ; $48e6: $7c
    ld a, h                                       ; $48e7: $7c
    nop                                           ; $48e8: $00
    nop                                           ; $48e9: $00
    nop                                           ; $48ea: $00
    nop                                           ; $48eb: $00
    nop                                           ; $48ec: $00
    nop                                           ; $48ed: $00
    dec c                                         ; $48ee: $0d
    ld c, $1b                                     ; $48ef: $0e $1b
    inc e                                         ; $48f1: $1c
    inc e                                         ; $48f2: $1c
    rra                                           ; $48f3: $1f
    rra                                           ; $48f4: $1f
    rra                                           ; $48f5: $1f
    rrca                                          ; $48f6: $0f
    rrca                                          ; $48f7: $0f
    ld bc, $0001                                  ; $48f8: $01 $01 $00
    nop                                           ; $48fb: $00
    nop                                           ; $48fc: $00
    nop                                           ; $48fd: $00
    ret nz                                        ; $48fe: $c0

    ccf                                           ; $48ff: $3f
    nop                                           ; $4900: $00
    rst $38                                       ; $4901: $ff
    nop                                           ; $4902: $00
    rst $38                                       ; $4903: $ff
    add b                                         ; $4904: $80
    rst $38                                       ; $4905: $ff
    sbc b                                         ; $4906: $98
    rst $38                                       ; $4907: $ff
    ld sp, hl                                     ; $4908: $f9
    rst $38                                       ; $4909: $ff
    rst $38                                       ; $490a: $ff
    rst $38                                       ; $490b: $ff
    rrca                                          ; $490c: $0f
    rrca                                          ; $490d: $0f
    nop                                           ; $490e: $00
    rst $38                                       ; $490f: $ff
    nop                                           ; $4910: $00
    rst $38                                       ; $4911: $ff
    nop                                           ; $4912: $00
    rst $38                                       ; $4913: $ff
    nop                                           ; $4914: $00
    rst $38                                       ; $4915: $ff
    jp $e7ff                                      ; $4916: $c3 $ff $e7


    rst $38                                       ; $4919: $ff
    rst $38                                       ; $491a: $ff
    rst $38                                       ; $491b: $ff
    ld a, [hl]                                    ; $491c: $7e
    rst $38                                       ; $491d: $ff
    nop                                           ; $491e: $00
    rst $38                                       ; $491f: $ff

jr_04a_4920:
    nop                                           ; $4920: $00
    rst $38                                       ; $4921: $ff
    nop                                           ; $4922: $00
    rst $38                                       ; $4923: $ff
    ld bc, $19ff                                  ; $4924: $01 $ff $19
    rst $38                                       ; $4927: $ff
    sbc a                                         ; $4928: $9f
    rst $38                                       ; $4929: $ff

jr_04a_492a:
    rst $38                                       ; $492a: $ff
    rst $38                                       ; $492b: $ff

jr_04a_492c:
    ldh a, [$f0]                                  ; $492c: $f0 $f0
    jr nc, jr_04a_4920                            ; $492e: $30 $f0

    jr jr_04a_492a                                ; $4930: $18 $f8

    jr c, jr_04a_492c                             ; $4932: $38 $f8

    ld hl, sp-$08                                 ; $4934: $f8 $f8
    ldh a, [$f0]                                  ; $4936: $f0 $f0
    add b                                         ; $4938: $80
    add b                                         ; $4939: $80
    nop                                           ; $493a: $00
    nop                                           ; $493b: $00
    nop                                           ; $493c: $00
    nop                                           ; $493d: $00
    ccf                                           ; $493e: $3f
    ccf                                           ; $493f: $3f
    ccf                                           ; $4940: $3f
    ccf                                           ; $4941: $3f
    ld e, $1e                                     ; $4942: $1e $1e
    nop                                           ; $4944: $00
    nop                                           ; $4945: $00
    nop                                           ; $4946: $00
    nop                                           ; $4947: $00
    nop                                           ; $4948: $00
    nop                                           ; $4949: $00
    nop                                           ; $494a: $00
    nop                                           ; $494b: $00
    nop                                           ; $494c: $00
    nop                                           ; $494d: $00
    ldh a, [rIE]                                  ; $494e: $f0 $ff
    ldh a, [rIE]                                  ; $4950: $f0 $ff
    ld [hl], b                                    ; $4952: $70
    ld a, a                                       ; $4953: $7f
    ld [hl], b                                    ; $4954: $70
    ld a, a                                       ; $4955: $7f
    ld a, e                                       ; $4956: $7b
    ld a, a                                       ; $4957: $7f
    ccf                                           ; $4958: $3f
    ccf                                           ; $4959: $3f
    ccf                                           ; $495a: $3f
    ccf                                           ; $495b: $3f
    rra                                           ; $495c: $1f
    rra                                           ; $495d: $1f
    ld e, $ff                                     ; $495e: $1e $ff
    ccf                                           ; $4960: $3f
    rst $38                                       ; $4961: $ff
    ld a, a                                       ; $4962: $7f
    rst $38                                       ; $4963: $ff
    rst $38                                       ; $4964: $ff
    rst $38                                       ; $4965: $ff
    rst $30                                       ; $4966: $f7
    rst $38                                       ; $4967: $ff
    push af                                       ; $4968: $f5
    rst $38                                       ; $4969: $ff
    ld a, [$7aff]                                 ; $496a: $fa $ff $7a
    ld a, a                                       ; $496d: $7f
    nop                                           ; $496e: $00
    rst $38                                       ; $496f: $ff
    nop                                           ; $4970: $00
    rst $38                                       ; $4971: $ff
    nop                                           ; $4972: $00
    rst $38                                       ; $4973: $ff
    add c                                         ; $4974: $81
    rst $38                                       ; $4975: $ff
    rst $20                                       ; $4976: $e7
    rst $38                                       ; $4977: $ff
    rst $38                                       ; $4978: $ff
    rst $38                                       ; $4979: $ff
    rst $38                                       ; $497a: $ff
    rst $38                                       ; $497b: $ff
    rst $38                                       ; $497c: $ff
    rst $38                                       ; $497d: $ff
    ld a, b                                       ; $497e: $78
    rst $38                                       ; $497f: $ff
    db $fc                                        ; $4980: $fc
    rst $38                                       ; $4981: $ff
    cp $ff                                        ; $4982: $fe $ff
    rst $38                                       ; $4984: $ff
    rst $38                                       ; $4985: $ff
    rst $38                                       ; $4986: $ff
    rst $38                                       ; $4987: $ff
    cp a                                          ; $4988: $bf
    rst $38                                       ; $4989: $ff
    ld e, a                                       ; $498a: $5f
    rst $38                                       ; $498b: $ff
    ld e, h                                       ; $498c: $5c
    db $fc                                        ; $498d: $fc
    rrca                                          ; $498e: $0f
    rst $38                                       ; $498f: $ff
    rrca                                          ; $4990: $0f
    rst $38                                       ; $4991: $ff
    ld c, $fe                                     ; $4992: $0e $fe
    ld c, $fe                                     ; $4994: $0e $fe
    sbc $fe                                       ; $4996: $de $fe
    db $fc                                        ; $4998: $fc
    db $fc                                        ; $4999: $fc
    db $fc                                        ; $499a: $fc
    db $fc                                        ; $499b: $fc
    ld hl, sp-$08                                 ; $499c: $f8 $f8
    db $fc                                        ; $499e: $fc
    db $fc                                        ; $499f: $fc
    db $fc                                        ; $49a0: $fc
    db $fc                                        ; $49a1: $fc
    ld a, b                                       ; $49a2: $78
    ld a, b                                       ; $49a3: $78
    nop                                           ; $49a4: $00
    nop                                           ; $49a5: $00
    nop                                           ; $49a6: $00
    nop                                           ; $49a7: $00
    nop                                           ; $49a8: $00
    nop                                           ; $49a9: $00
    nop                                           ; $49aa: $00
    nop                                           ; $49ab: $00
    nop                                           ; $49ac: $00
    nop                                           ; $49ad: $00
    rra                                           ; $49ae: $1f
    inc e                                         ; $49af: $1c
    ccf                                           ; $49b0: $3f
    inc a                                         ; $49b1: $3c
    ld a, l                                       ; $49b2: $7d
    ld a, [hl]                                    ; $49b3: $7e
    ld l, e                                       ; $49b4: $6b
    halt                                          ; $49b5: $76
    ld a, l                                       ; $49b6: $7d
    ld h, d                                       ; $49b7: $62
    ld a, a                                       ; $49b8: $7f
    ld h, b                                       ; $49b9: $60
    ld l, a                                       ; $49ba: $6f
    ld [hl], b                                    ; $49bb: $70
    rst $30                                       ; $49bc: $f7
    ld hl, sp-$40                                 ; $49bd: $f8 $c0
    ccf                                           ; $49bf: $3f
    ldh [$1f], a                                  ; $49c0: $e0 $1f
    ldh [$1f], a                                  ; $49c2: $e0 $1f
    ret nz                                        ; $49c4: $c0

    ccf                                           ; $49c5: $3f
    add b                                         ; $49c6: $80
    ld a, a                                       ; $49c7: $7f

jr_04a_49c8:
    add b                                         ; $49c8: $80
    ld a, a                                       ; $49c9: $7f
    ret nz                                        ; $49ca: $c0

    ccf                                           ; $49cb: $3f
    ret nz                                        ; $49cc: $c0

    ccf                                           ; $49cd: $3f
    jr c, jr_04a_49c8                             ; $49ce: $38 $f8

    inc a                                         ; $49d0: $3c
    db $fc                                        ; $49d1: $fc
    ld a, [hl]                                    ; $49d2: $7e
    cp $66                                        ; $49d3: $fe $66
    cp $06                                        ; $49d5: $fe $06
    cp $06                                        ; $49d7: $fe $06
    cp $0e                                        ; $49d9: $fe $0e
    cp $0f                                        ; $49db: $fe $0f
    rst $38                                       ; $49dd: $ff
    rrca                                          ; $49de: $0f
    rrca                                          ; $49df: $0f
    ld c, $0f                                     ; $49e0: $0e $0f
    rrca                                          ; $49e2: $0f
    ld c, $0f                                     ; $49e3: $0e $0f
    ld c, $0f                                     ; $49e5: $0e $0f
    ld c, $0e                                     ; $49e7: $0e $0e
    rrca                                          ; $49e9: $0f
    rlca                                          ; $49ea: $07
    rlca                                          ; $49eb: $07
    rlca                                          ; $49ec: $07
    rlca                                          ; $49ed: $07
    ld [hl], a                                    ; $49ee: $77
    ld hl, sp-$49                                 ; $49ef: $f8 $b7
    ld a, b                                       ; $49f1: $78
    rst $10                                       ; $49f2: $d7
    jr c, @-$0f                                   ; $49f3: $38 $ef

    db $10                                        ; $49f5: $10
    rst $38                                       ; $49f6: $ff
    nop                                           ; $49f7: $00
    rst $38                                       ; $49f8: $ff
    nop                                           ; $49f9: $00
    rst $38                                       ; $49fa: $ff
    nop                                           ; $49fb: $00
    ld a, a                                       ; $49fc: $7f
    add b                                         ; $49fd: $80
    ret nz                                        ; $49fe: $c0

    ccf                                           ; $49ff: $3f
    ret nz                                        ; $4a00: $c0

    ccf                                           ; $4a01: $3f
    ret nz                                        ; $4a02: $c0

    ccf                                           ; $4a03: $3f
    ret nz                                        ; $4a04: $c0

    ccf                                           ; $4a05: $3f
    ret nz                                        ; $4a06: $c0

    ccf                                           ; $4a07: $3f
    ret nz                                        ; $4a08: $c0

    ccf                                           ; $4a09: $3f
    ret nz                                        ; $4a0a: $c0

    ccf                                           ; $4a0b: $3f
    add b                                         ; $4a0c: $80
    ld a, a                                       ; $4a0d: $7f
    nop                                           ; $4a0e: $00
    rst $38                                       ; $4a0f: $ff
    nop                                           ; $4a10: $00
    rst $38                                       ; $4a11: $ff
    nop                                           ; $4a12: $00
    rst $38                                       ; $4a13: $ff
    nop                                           ; $4a14: $00
    rst $38                                       ; $4a15: $ff
    nop                                           ; $4a16: $00
    rst $38                                       ; $4a17: $ff
    nop                                           ; $4a18: $00
    rst $38                                       ; $4a19: $ff
    nop                                           ; $4a1a: $00
    rst $38                                       ; $4a1b: $ff
    ld bc, $0efe                                  ; $4a1c: $01 $fe $0e
    rst $38                                       ; $4a1f: $ff
    inc c                                         ; $4a20: $0c
    rst $38                                       ; $4a21: $ff
    ld [$00ff], sp                                ; $4a22: $08 $ff $00
    rst $38                                       ; $4a25: $ff
    nop                                           ; $4a26: $00
    rst $38                                       ; $4a27: $ff
    nop                                           ; $4a28: $00
    rst $38                                       ; $4a29: $ff
    nop                                           ; $4a2a: $00
    rst $38                                       ; $4a2b: $ff
    nop                                           ; $4a2c: $00
    rst $38                                       ; $4a2d: $ff
    ldh a, [$f0]                                  ; $4a2e: $f0 $f0
    ld [hl], b                                    ; $4a30: $70
    ldh a, [rSVBK]                                ; $4a31: $f0 $70
    ldh a, [rSVBK]                                ; $4a33: $f0 $70
    ldh a, [rSVBK]                                ; $4a35: $f0 $70
    ldh a, [rSVBK]                                ; $4a37: $f0 $70
    ldh a, [$e0]                                  ; $4a39: $f0 $e0
    ldh [$e0], a                                  ; $4a3b: $e0 $e0
    ldh [rSB], a                                  ; $4a3d: $e0 $01
    ld bc, $0303                                  ; $4a3f: $01 $03 $03
    inc bc                                        ; $4a42: $03
    inc bc                                        ; $4a43: $03
    inc bc                                        ; $4a44: $03
    inc bc                                        ; $4a45: $03
    ld bc, $0101                                  ; $4a46: $01 $01 $01
    ld bc, $0000                                  ; $4a49: $01 $00 $00
    nop                                           ; $4a4c: $00
    nop                                           ; $4a4d: $00
    rst $38                                       ; $4a4e: $ff
    ld hl, sp-$61                                 ; $4a4f: $f8 $9f
    ld hl, sp+$67                                 ; $4a51: $f8 $67
    sbc b                                         ; $4a53: $98
    ld a, a                                       ; $4a54: $7f
    add b                                         ; $4a55: $80
    rst $38                                       ; $4a56: $ff
    add b                                         ; $4a57: $80
    cp [hl]                                       ; $4a58: $be
    pop bc                                        ; $4a59: $c1
    db $fc                                        ; $4a5a: $fc
    jp $e3dc                                      ; $4a5b: $c3 $dc $e3


    add d                                         ; $4a5e: $82
    ld a, l                                       ; $4a5f: $7d
    inc bc                                        ; $4a60: $03
    db $fc                                        ; $4a61: $fc
    inc sp                                        ; $4a62: $33
    call z, $c43b                                 ; $4a63: $cc $3b $c4
    rra                                           ; $4a66: $1f
    ldh [rIF], a                                  ; $4a67: $e0 $0f
    ldh a, [rTAC]                                 ; $4a69: $f0 $07
    ld hl, sp+$03                                 ; $4a6b: $f8 $03
    db $fc                                        ; $4a6d: $fc
    rra                                           ; $4a6e: $1f
    rst $38                                       ; $4a6f: $ff
    add hl, de                                    ; $4a70: $19
    rst $38                                       ; $4a71: $ff
    nop                                           ; $4a72: $00
    rst $38                                       ; $4a73: $ff
    nop                                           ; $4a74: $00
    rst $38                                       ; $4a75: $ff
    ld bc, $03ff                                  ; $4a76: $01 $ff $03
    rst $38                                       ; $4a79: $ff
    inc bc                                        ; $4a7a: $03
    rst $38                                       ; $4a7b: $ff
    rlca                                          ; $4a7c: $07
    rst $38                                       ; $4a7d: $ff
    add b                                         ; $4a7e: $80
    add b                                         ; $4a7f: $80
    ret nz                                        ; $4a80: $c0

    ret nz                                        ; $4a81: $c0

    ret nz                                        ; $4a82: $c0

    ret nz                                        ; $4a83: $c0

    ret nz                                        ; $4a84: $c0

    ret nz                                        ; $4a85: $c0

    add b                                         ; $4a86: $80
    add b                                         ; $4a87: $80
    add b                                         ; $4a88: $80
    add b                                         ; $4a89: $80
    nop                                           ; $4a8a: $00
    nop                                           ; $4a8b: $00
    nop                                           ; $4a8c: $00
    nop                                           ; $4a8d: $00
    inc bc                                        ; $4a8e: $03
    inc bc                                        ; $4a8f: $03
    inc bc                                        ; $4a90: $03
    inc bc                                        ; $4a91: $03
    ld bc, $0101                                  ; $4a92: $01 $01 $01
    ld bc, $0000                                  ; $4a95: $01 $00 $00
    nop                                           ; $4a98: $00
    nop                                           ; $4a99: $00
    inc bc                                        ; $4a9a: $03
    inc bc                                        ; $4a9b: $03
    rlca                                          ; $4a9c: $07
    rlca                                          ; $4a9d: $07
    ld a, h                                       ; $4a9e: $7c
    add e                                         ; $4a9f: $83
    cp h                                          ; $4aa0: $bc
    jp $c1fe                                      ; $4aa1: $c3 $fe $c1


    sbc $e1                                       ; $4aa4: $de $e1
    rst $28                                       ; $4aa6: $ef
    ldh a, [$ef]                                  ; $4aa7: $f0 $ef
    ldh a, [$f7]                                  ; $4aa9: $f0 $f7
    ld hl, sp-$09                                 ; $4aab: $f8 $f7
    ld hl, sp+$00                                 ; $4aad: $f8 $00
    rst $38                                       ; $4aaf: $ff
    nop                                           ; $4ab0: $00
    rst $38                                       ; $4ab1: $ff
    nop                                           ; $4ab2: $00
    rst $38                                       ; $4ab3: $ff
    nop                                           ; $4ab4: $00
    rst $38                                       ; $4ab5: $ff
    nop                                           ; $4ab6: $00
    rst $38                                       ; $4ab7: $ff
    nop                                           ; $4ab8: $00
    rst $38                                       ; $4ab9: $ff
    add b                                         ; $4aba: $80
    ld a, a                                       ; $4abb: $7f
    add b                                         ; $4abc: $80
    ld a, a                                       ; $4abd: $7f
    inc bc                                        ; $4abe: $03
    db $fc                                        ; $4abf: $fc
    ld b, e                                       ; $4ac0: $43
    cp h                                          ; $4ac1: $bc
    db $e3                                        ; $4ac2: $e3
    inc e                                         ; $4ac3: $1c
    di                                            ; $4ac4: $f3
    inc c                                         ; $4ac5: $0c
    ld a, a                                       ; $4ac6: $7f
    add b                                         ; $4ac7: $80
    ccf                                           ; $4ac8: $3f
    ret nz                                        ; $4ac9: $c0

    rra                                           ; $4aca: $1f
    ldh [rTAC], a                                 ; $4acb: $e0 $07
    ld hl, sp-$80                                 ; $4acd: $f8 $80
    ld a, a                                       ; $4acf: $7f
    add b                                         ; $4ad0: $80
    ld a, a                                       ; $4ad1: $7f
    add b                                         ; $4ad2: $80
    ld a, a                                       ; $4ad3: $7f
    add b                                         ; $4ad4: $80
    ld a, a                                       ; $4ad5: $7f
    add b                                         ; $4ad6: $80
    ld a, a                                       ; $4ad7: $7f
    add b                                         ; $4ad8: $80
    ld a, a                                       ; $4ad9: $7f
    add b                                         ; $4ada: $80
    ld a, a                                       ; $4adb: $7f
    nop                                           ; $4adc: $00
    rst $38                                       ; $4add: $ff
    nop                                           ; $4ade: $00
    rst $38                                       ; $4adf: $ff
    ld bc, $03ff                                  ; $4ae0: $01 $ff $03
    rst $38                                       ; $4ae3: $ff
    inc bc                                        ; $4ae4: $03
    rst $38                                       ; $4ae5: $ff
    rlca                                          ; $4ae6: $07
    rst $38                                       ; $4ae7: $ff
    rlca                                          ; $4ae8: $07
    rst $38                                       ; $4ae9: $ff
    rrca                                          ; $4aea: $0f
    rst $38                                       ; $4aeb: $ff
    rrca                                          ; $4aec: $0f
    rst $38                                       ; $4aed: $ff
    ret nz                                        ; $4aee: $c0

    ret nz                                        ; $4aef: $c0

    ret nz                                        ; $4af0: $c0

    ret nz                                        ; $4af1: $c0

    add b                                         ; $4af2: $80
    add b                                         ; $4af3: $80
    add b                                         ; $4af4: $80
    add b                                         ; $4af5: $80
    nop                                           ; $4af6: $00
    nop                                           ; $4af7: $00
    nop                                           ; $4af8: $00
    nop                                           ; $4af9: $00
    ret nz                                        ; $4afa: $c0

    ret nz                                        ; $4afb: $c0

    ldh [$e0], a                                  ; $4afc: $e0 $e0
    nop                                           ; $4afe: $00
    nop                                           ; $4aff: $00
    ld bc, $0101                                  ; $4b00: $01 $01 $01
    ld bc, $0101                                  ; $4b03: $01 $01 $01
    inc bc                                        ; $4b06: $03
    inc bc                                        ; $4b07: $03
    rlca                                          ; $4b08: $07
    rlca                                          ; $4b09: $07
    ld b, $07                                     ; $4b0a: $06 $07
    rlca                                          ; $4b0c: $07
    ld b, $fe                                     ; $4b0d: $06 $fe
    pop hl                                        ; $4b0f: $e1
    rst $28                                       ; $4b10: $ef
    ldh a, [$bf]                                  ; $4b11: $f0 $bf
    ret nz                                        ; $4b13: $c0

    cp [hl]                                       ; $4b14: $be
    pop bc                                        ; $4b15: $c1
    db $fc                                        ; $4b16: $fc
    jp $e3dc                                      ; $4b17: $c3 $dc $e3


    sbc h                                         ; $4b1a: $9c
    ld h, e                                       ; $4b1b: $63
    adc $31                                       ; $4b1c: $ce $31
    rlca                                          ; $4b1e: $07
    rst $38                                       ; $4b1f: $ff
    inc bc                                        ; $4b20: $03
    rst $38                                       ; $4b21: $ff
    ld bc, $01ff                                  ; $4b22: $01 $ff $01
    rst $38                                       ; $4b25: $ff
    inc bc                                        ; $4b26: $03
    rst $38                                       ; $4b27: $ff
    rlca                                          ; $4b28: $07
    rst $38                                       ; $4b29: $ff
    ld b, $ff                                     ; $4b2a: $06 $ff
    nop                                           ; $4b2c: $00
    rst $38                                       ; $4b2d: $ff
    add b                                         ; $4b2e: $80
    add b                                         ; $4b2f: $80
    add b                                         ; $4b30: $80
    add b                                         ; $4b31: $80
    add b                                         ; $4b32: $80
    add b                                         ; $4b33: $80
    add b                                         ; $4b34: $80
    add b                                         ; $4b35: $80
    ret nz                                        ; $4b36: $c0

    ret nz                                        ; $4b37: $c0

    ldh [$e0], a                                  ; $4b38: $e0 $e0
    ld h, b                                       ; $4b3a: $60
    ldh [$60], a                                  ; $4b3b: $e0 $60
    ldh [rTAC], a                                 ; $4b3d: $e0 $07
    rlca                                          ; $4b3f: $07
    rlca                                          ; $4b40: $07
    rlca                                          ; $4b41: $07
    rlca                                          ; $4b42: $07
    rlca                                          ; $4b43: $07
    rlca                                          ; $4b44: $07
    rlca                                          ; $4b45: $07
    inc bc                                        ; $4b46: $03
    inc bc                                        ; $4b47: $03
    inc bc                                        ; $4b48: $03
    inc bc                                        ; $4b49: $03
    dec e                                         ; $4b4a: $1d
    dec e                                         ; $4b4b: $1d
    ccf                                           ; $4b4c: $3f
    ccf                                           ; $4b4d: $3f
    cp a                                          ; $4b4e: $bf
    ret nz                                        ; $4b4f: $c0

    ld a, a                                       ; $4b50: $7f
    add b                                         ; $4b51: $80
    ld a, a                                       ; $4b52: $7f
    add b                                         ; $4b53: $80
    ld a, h                                       ; $4b54: $7c
    add e                                         ; $4b55: $83
    cp h                                          ; $4b56: $bc
    jp $c1fe                                      ; $4b57: $c3 $fe $c1


    sbc $e1                                       ; $4b5a: $de $e1
    rst $38                                       ; $4b5c: $ff
    ldh [$c0], a                                  ; $4b5d: $e0 $c0
    ccf                                           ; $4b5f: $3f
    ret nz                                        ; $4b60: $c0

    ccf                                           ; $4b61: $3f

jr_04a_4b62:
    add b                                         ; $4b62: $80
    ld a, a                                       ; $4b63: $7f
    nop                                           ; $4b64: $00
    rst $38                                       ; $4b65: $ff
    ld bc, $01fe                                  ; $4b66: $01 $fe $01
    cp $01                                        ; $4b69: $fe $01
    cp $00                                        ; $4b6b: $fe $00
    rst $38                                       ; $4b6d: $ff
    nop                                           ; $4b6e: $00
    rst $38                                       ; $4b6f: $ff
    ld [bc], a                                    ; $4b70: $02
    db $fd                                        ; $4b71: $fd
    rlca                                          ; $4b72: $07
    ld hl, sp+$07                                 ; $4b73: $f8 $07
    ld hl, sp-$79                                 ; $4b75: $f8 $87
    ld a, b                                       ; $4b77: $78
    rst $00                                       ; $4b78: $c7
    jr c, jr_04a_4b62                             ; $4b79: $38 $e7

    jr @+$01                                      ; $4b7b: $18 $ff

    nop                                           ; $4b7d: $00
    ld bc, $00ff                                  ; $4b7e: $01 $ff $00
    rst $38                                       ; $4b81: $ff
    nop                                           ; $4b82: $00
    rst $38                                       ; $4b83: $ff
    nop                                           ; $4b84: $00
    rst $38                                       ; $4b85: $ff
    ld bc, $03ff                                  ; $4b86: $01 $ff $03
    rst $38                                       ; $4b89: $ff
    inc bc                                        ; $4b8a: $03
    rst $38                                       ; $4b8b: $ff
    rlca                                          ; $4b8c: $07
    rst $38                                       ; $4b8d: $ff
    ldh [$e0], a                                  ; $4b8e: $e0 $e0
    ldh [$e0], a                                  ; $4b90: $e0 $e0
    ldh [$e0], a                                  ; $4b92: $e0 $e0
    ldh [$e0], a                                  ; $4b94: $e0 $e0
    ret nz                                        ; $4b96: $c0

    ret nz                                        ; $4b97: $c0

    ret nz                                        ; $4b98: $c0

    ret nz                                        ; $4b99: $c0

    cp b                                          ; $4b9a: $b8
    cp b                                          ; $4b9b: $b8
    db $fc                                        ; $4b9c: $fc
    db $fc                                        ; $4b9d: $fc
    ld b, $07                                     ; $4b9e: $06 $07
    rlca                                          ; $4ba0: $07
    rlca                                          ; $4ba1: $07
    inc bc                                        ; $4ba2: $03
    inc bc                                        ; $4ba3: $03
    inc bc                                        ; $4ba4: $03
    inc bc                                        ; $4ba5: $03
    ld bc, $0001                                  ; $4ba6: $01 $01 $00
    nop                                           ; $4ba9: $00
    inc bc                                        ; $4baa: $03
    inc bc                                        ; $4bab: $03
    rlca                                          ; $4bac: $07
    rlca                                          ; $4bad: $07
    rst $38                                       ; $4bae: $ff
    nop                                           ; $4baf: $00
    rst $38                                       ; $4bb0: $ff
    nop                                           ; $4bb1: $00
    ld a, a                                       ; $4bb2: $7f
    add b                                         ; $4bb3: $80
    cp [hl]                                       ; $4bb4: $be
    pop bc                                        ; $4bb5: $c1
    call c, $fce3                                 ; $4bb6: $dc $e3 $fc
    db $e3                                        ; $4bb9: $e3
    cp $e1                                        ; $4bba: $fe $e1
    sbc $e1                                       ; $4bbc: $de $e1
    ld [bc], a                                    ; $4bbe: $02
    db $fd                                        ; $4bbf: $fd
    inc bc                                        ; $4bc0: $03
    db $fc                                        ; $4bc1: $fc
    inc sp                                        ; $4bc2: $33
    call z, $c43b                                 ; $4bc3: $cc $3b $c4
    rra                                           ; $4bc6: $1f
    ldh [rIF], a                                  ; $4bc7: $e0 $0f
    ldh a, [rTAC]                                 ; $4bc9: $f0 $07
    ld hl, sp+$03                                 ; $4bcb: $f8 $03
    db $fc                                        ; $4bcd: $fc
    nop                                           ; $4bce: $00
    rst $38                                       ; $4bcf: $ff
    nop                                           ; $4bd0: $00
    rst $38                                       ; $4bd1: $ff
    nop                                           ; $4bd2: $00
    rst $38                                       ; $4bd3: $ff
    ld bc, $03ff                                  ; $4bd4: $01 $ff $03
    rst $38                                       ; $4bd7: $ff
    rlca                                          ; $4bd8: $07
    rst $38                                       ; $4bd9: $ff
    rlca                                          ; $4bda: $07
    rst $38                                       ; $4bdb: $ff
    inc bc                                        ; $4bdc: $03
    rst $38                                       ; $4bdd: $ff
    ld h, b                                       ; $4bde: $60
    ldh [$e0], a                                  ; $4bdf: $e0 $e0
    ldh [$c0], a                                  ; $4be1: $e0 $c0
    ret nz                                        ; $4be3: $c0

    ret nz                                        ; $4be4: $c0

    ret nz                                        ; $4be5: $c0

    add b                                         ; $4be6: $80
    add b                                         ; $4be7: $80
    nop                                           ; $4be8: $00
    nop                                           ; $4be9: $00
    ret nz                                        ; $4bea: $c0

    ret nz                                        ; $4beb: $c0

    ldh [$e0], a                                  ; $4bec: $e0 $e0
    ld a, a                                       ; $4bee: $7f
    ld a, a                                       ; $4bef: $7f
    ld a, d                                       ; $4bf0: $7a
    ld a, l                                       ; $4bf1: $7d
    ld [hl], a                                    ; $4bf2: $77
    ld a, b                                       ; $4bf3: $78
    ld [hl], a                                    ; $4bf4: $77
    ld a, b                                       ; $4bf5: $78
    ld [hl], a                                    ; $4bf6: $77
    ld a, b                                       ; $4bf7: $78
    dec sp                                        ; $4bf8: $3b
    inc a                                         ; $4bf9: $3c
    dec a                                         ; $4bfa: $3d
    ld a, $1e                                     ; $4bfb: $3e $1e
    rra                                           ; $4bfd: $1f
    rst $28                                       ; $4bfe: $ef
    ldh a, [$cf]                                  ; $4bff: $f0 $cf
    ldh a, [$9f]                                  ; $4c01: $f0 $9f
    ld h, b                                       ; $4c03: $60
    rst $38                                       ; $4c04: $ff
    nop                                           ; $4c05: $00
    rst $38                                       ; $4c06: $ff
    nop                                           ; $4c07: $00
    rst $38                                       ; $4c08: $ff
    nop                                           ; $4c09: $00
    rst $38                                       ; $4c0a: $ff
    nop                                           ; $4c0b: $00
    rst $38                                       ; $4c0c: $ff
    nop                                           ; $4c0d: $00
    add b                                         ; $4c0e: $80
    ld a, a                                       ; $4c0f: $7f
    ret nz                                        ; $4c10: $c0

    ccf                                           ; $4c11: $3f
    ldh [$1f], a                                  ; $4c12: $e0 $1f
    ldh [$1f], a                                  ; $4c14: $e0 $1f
    ldh a, [rIF]                                  ; $4c16: $f0 $0f
    ldh a, [rIF]                                  ; $4c18: $f0 $0f
    ldh [$1f], a                                  ; $4c1a: $e0 $1f
    nop                                           ; $4c1c: $00
    rst $38                                       ; $4c1d: $ff
    ld a, a                                       ; $4c1e: $7f
    add b                                         ; $4c1f: $80
    ccf                                           ; $4c20: $3f
    ret nz                                        ; $4c21: $c0

    ld c, $f1                                     ; $4c22: $0e $f1
    nop                                           ; $4c24: $00
    rst $38                                       ; $4c25: $ff
    nop                                           ; $4c26: $00
    rst $38                                       ; $4c27: $ff
    nop                                           ; $4c28: $00
    rst $38                                       ; $4c29: $ff
    nop                                           ; $4c2a: $00
    rst $38                                       ; $4c2b: $ff
    nop                                           ; $4c2c: $00
    rst $38                                       ; $4c2d: $ff
    rlca                                          ; $4c2e: $07
    rst $38                                       ; $4c2f: $ff
    inc bc                                        ; $4c30: $03
    rst $38                                       ; $4c31: $ff
    nop                                           ; $4c32: $00
    rst $38                                       ; $4c33: $ff
    nop                                           ; $4c34: $00
    rst $38                                       ; $4c35: $ff
    nop                                           ; $4c36: $00
    rst $38                                       ; $4c37: $ff
    nop                                           ; $4c38: $00
    rst $38                                       ; $4c39: $ff
    nop                                           ; $4c3a: $00
    rst $38                                       ; $4c3b: $ff
    nop                                           ; $4c3c: $00
    rst $38                                       ; $4c3d: $ff
    cp $fe                                        ; $4c3e: $fe $fe
    sbc [hl]                                      ; $4c40: $9e
    cp $0e                                        ; $4c41: $fe $0e
    cp $0e                                        ; $4c43: $fe $0e
    cp $0e                                        ; $4c45: $fe $0e
    cp $1c                                        ; $4c47: $fe $1c
    db $fc                                        ; $4c49: $fc
    inc a                                         ; $4c4a: $3c
    db $fc                                        ; $4c4b: $fc
    ld a, b                                       ; $4c4c: $78
    ld hl, sp+$06                                 ; $4c4d: $f8 $06
    rlca                                          ; $4c4f: $07
    rlca                                          ; $4c50: $07
    rlca                                          ; $4c51: $07
    rlca                                          ; $4c52: $07
    rlca                                          ; $4c53: $07
    inc bc                                        ; $4c54: $03
    inc bc                                        ; $4c55: $03
    ld bc, $0701                                  ; $4c56: $01 $01 $07
    rlca                                          ; $4c59: $07
    rrca                                          ; $4c5a: $0f
    rrca                                          ; $4c5b: $0f
    dec c                                         ; $4c5c: $0d
    ld c, $ff                                     ; $4c5d: $0e $ff
    nop                                           ; $4c5f: $00
    rst $38                                       ; $4c60: $ff
    nop                                           ; $4c61: $00
    ld a, [hl]                                    ; $4c62: $7e
    add c                                         ; $4c63: $81
    cp h                                          ; $4c64: $bc
    jp $e3dc                                      ; $4c65: $c3 $dc $e3


    xor $f1                                       ; $4c68: $ee $f1
    rst $38                                       ; $4c6a: $ff
    ldh a, [$b7]                                  ; $4c6b: $f0 $b7
    ld a, b                                       ; $4c6d: $78

jr_04a_4c6e:
    ld h, b                                       ; $4c6e: $60
    ldh [$60], a                                  ; $4c6f: $e0 $60
    ldh [$e0], a                                  ; $4c71: $e0 $e0
    ldh [$c0], a                                  ; $4c73: $e0 $c0
    ret nz                                        ; $4c75: $c0

    add b                                         ; $4c76: $80
    add b                                         ; $4c77: $80
    ldh [$e0], a                                  ; $4c78: $e0 $e0
    ldh a, [$f0]                                  ; $4c7a: $f0 $f0
    jr nc, jr_04a_4c6e                            ; $4c7c: $30 $f0

    rrca                                          ; $4c7e: $0f
    rrca                                          ; $4c7f: $0f
    rlca                                          ; $4c80: $07
    rlca                                          ; $4c81: $07
    inc bc                                        ; $4c82: $03
    inc bc                                        ; $4c83: $03
    inc bc                                        ; $4c84: $03
    inc bc                                        ; $4c85: $03
    rlca                                          ; $4c86: $07
    rlca                                          ; $4c87: $07
    rrca                                          ; $4c88: $0f
    rrca                                          ; $4c89: $0f
    ld c, $0f                                     ; $4c8a: $0e $0f
    ld c, $0f                                     ; $4c8c: $0e $0f
    cp a                                          ; $4c8e: $bf
    ret nz                                        ; $4c8f: $c0

    rst $28                                       ; $4c90: $ef
    ldh a, [$f7]                                  ; $4c91: $f0 $f7
    ld hl, sp-$09                                 ; $4c93: $f8 $f7
    ld hl, sp-$11                                 ; $4c95: $f8 $ef
    ldh a, [$7f]                                  ; $4c97: $f0 $7f
    add b                                         ; $4c99: $80
    rst $38                                       ; $4c9a: $ff
    nop                                           ; $4c9b: $00
    cp $01                                        ; $4c9c: $fe $01
    add b                                         ; $4c9e: $80
    ld a, a                                       ; $4c9f: $7f
    add b                                         ; $4ca0: $80
    ld a, a                                       ; $4ca1: $7f
    ret nz                                        ; $4ca2: $c0

    ccf                                           ; $4ca3: $3f
    ret nz                                        ; $4ca4: $c0

    ccf                                           ; $4ca5: $3f
    ret nz                                        ; $4ca6: $c0

    ccf                                           ; $4ca7: $3f
    add b                                         ; $4ca8: $80
    ld a, a                                       ; $4ca9: $7f
    nop                                           ; $4caa: $00
    rst $38                                       ; $4cab: $ff
    nop                                           ; $4cac: $00
    rst $38                                       ; $4cad: $ff
    ld bc, $07ff                                  ; $4cae: $01 $ff $07
    rst $38                                       ; $4cb1: $ff
    rrca                                          ; $4cb2: $0f
    rst $38                                       ; $4cb3: $ff
    rrca                                          ; $4cb4: $0f
    rst $38                                       ; $4cb5: $ff
    rlca                                          ; $4cb6: $07
    rst $38                                       ; $4cb7: $ff
    nop                                           ; $4cb8: $00
    rst $38                                       ; $4cb9: $ff
    nop                                           ; $4cba: $00
    rst $38                                       ; $4cbb: $ff
    nop                                           ; $4cbc: $00
    rst $38                                       ; $4cbd: $ff
    ldh a, [$f0]                                  ; $4cbe: $f0 $f0
    ldh [$e0], a                                  ; $4cc0: $e0 $e0
    ret nz                                        ; $4cc2: $c0

    ret nz                                        ; $4cc3: $c0

    ret nz                                        ; $4cc4: $c0

    ret nz                                        ; $4cc5: $c0

    ldh [$e0], a                                  ; $4cc6: $e0 $e0
    ldh a, [$f0]                                  ; $4cc8: $f0 $f0
    ld [hl], b                                    ; $4cca: $70
    ldh a, [rSVBK]                                ; $4ccb: $f0 $70
    ldh a, [$0d]                                  ; $4ccd: $f0 $0d
    ld c, $0e                                     ; $4ccf: $0e $0e
    rrca                                          ; $4cd1: $0f
    rlca                                          ; $4cd2: $07
    rlca                                          ; $4cd3: $07
    inc bc                                        ; $4cd4: $03
    inc bc                                        ; $4cd5: $03
    ld bc, $0301                                  ; $4cd6: $01 $01 $03
    inc bc                                        ; $4cd9: $03
    rlca                                          ; $4cda: $07
    rlca                                          ; $4cdb: $07
    ld b, $07                                     ; $4cdc: $06 $07
    rst $20                                       ; $4cde: $e7
    jr @+$01                                      ; $4cdf: $18 $ff

    nop                                           ; $4ce1: $00
    ld a, [hl]                                    ; $4ce2: $7e
    add c                                         ; $4ce3: $81
    cp h                                          ; $4ce4: $bc
    jp $e1de                                      ; $4ce5: $c3 $de $e1


    sbc a                                         ; $4ce8: $9f
    ldh [$7f], a                                  ; $4ce9: $e0 $7f
    add b                                         ; $4ceb: $80
    cp $01                                        ; $4cec: $fe $01
    nop                                           ; $4cee: $00
    rst $38                                       ; $4cef: $ff

jr_04a_4cf0:
    nop                                           ; $4cf0: $00
    rst $38                                       ; $4cf1: $ff
    nop                                           ; $4cf2: $00
    rst $38                                       ; $4cf3: $ff
    ld bc, $01ff                                  ; $4cf4: $01 $ff $01
    rst $38                                       ; $4cf7: $ff
    ld bc, $00ff                                  ; $4cf8: $01 $ff $00
    rst $38                                       ; $4cfb: $ff
    nop                                           ; $4cfc: $00
    rst $38                                       ; $4cfd: $ff
    jr nc, jr_04a_4cf0                            ; $4cfe: $30 $f0

    ld [hl], b                                    ; $4d00: $70
    ldh a, [$e0]                                  ; $4d01: $f0 $e0
    ldh [$c0], a                                  ; $4d03: $e0 $c0
    ret nz                                        ; $4d05: $c0

    add b                                         ; $4d06: $80
    add b                                         ; $4d07: $80
    ret nz                                        ; $4d08: $c0

    ret nz                                        ; $4d09: $c0

    ldh [$e0], a                                  ; $4d0a: $e0 $e0
    ld h, b                                       ; $4d0c: $60
    ldh [rIF], a                                  ; $4d0d: $e0 $0f
    rrca                                          ; $4d0f: $0f
    rlca                                          ; $4d10: $07
    rlca                                          ; $4d11: $07
    inc bc                                        ; $4d12: $03
    inc bc                                        ; $4d13: $03
    ld bc, $0001                                  ; $4d14: $01 $01 $00
    nop                                           ; $4d17: $00
    ld bc, $0301                                  ; $4d18: $01 $01 $03
    inc bc                                        ; $4d1b: $03
    rlca                                          ; $4d1c: $07
    rlca                                          ; $4d1d: $07
    ld a, a                                       ; $4d1e: $7f
    add b                                         ; $4d1f: $80
    cp a                                          ; $4d20: $bf
    ret nz                                        ; $4d21: $c0

    rst $08                                       ; $4d22: $cf
    ldh a, [$f7]                                  ; $4d23: $f0 $f7
    ld hl, sp-$09                                 ; $4d25: $f8 $f7
    ld hl, sp-$11                                 ; $4d27: $f8 $ef
    ldh a, [$df]                                  ; $4d29: $f0 $df
    ldh [$be], a                                  ; $4d2b: $e0 $be
    pop bc                                        ; $4d2d: $c1
    add b                                         ; $4d2e: $80
    ld a, a                                       ; $4d2f: $7f
    ldh [$1f], a                                  ; $4d30: $e0 $1f
    ldh a, [rIF]                                  ; $4d32: $f0 $0f
    ldh a, [rIF]                                  ; $4d34: $f0 $0f
    ldh [$1f], a                                  ; $4d36: $e0 $1f

Call_04a_4d38:
    ret nz                                        ; $4d38: $c0

    ccf                                           ; $4d39: $3f
    nop                                           ; $4d3a: $00
    rst $38                                       ; $4d3b: $ff
    nop                                           ; $4d3c: $00
    rst $38                                       ; $4d3d: $ff
    nop                                           ; $4d3e: $00
    rst $38                                       ; $4d3f: $ff
    ld bc, $03ff                                  ; $4d40: $01 $ff $03
    rst $38                                       ; $4d43: $ff
    rrca                                          ; $4d44: $0f
    rst $38                                       ; $4d45: $ff
    rrca                                          ; $4d46: $0f
    rst $38                                       ; $4d47: $ff
    rlca                                          ; $4d48: $07
    rst $38                                       ; $4d49: $ff
    inc bc                                        ; $4d4a: $03
    rst $38                                       ; $4d4b: $ff
    ld bc, $f0ff                                  ; $4d4c: $01 $ff $f0
    ldh a, [$e0]                                  ; $4d4f: $f0 $e0
    ldh [$c0], a                                  ; $4d51: $e0 $c0
    ret nz                                        ; $4d53: $c0

    add b                                         ; $4d54: $80
    add b                                         ; $4d55: $80
    nop                                           ; $4d56: $00
    nop                                           ; $4d57: $00
    add b                                         ; $4d58: $80
    add b                                         ; $4d59: $80
    ret nz                                        ; $4d5a: $c0

    ret nz                                        ; $4d5b: $c0

    ldh [$e0], a                                  ; $4d5c: $e0 $e0
    rlca                                          ; $4d5e: $07
    rlca                                          ; $4d5f: $07
    inc bc                                        ; $4d60: $03
    inc bc                                        ; $4d61: $03
    ld bc, $0001                                  ; $4d62: $01 $01 $00
    nop                                           ; $4d65: $00
    nop                                           ; $4d66: $00
    nop                                           ; $4d67: $00
    ld bc, $0101                                  ; $4d68: $01 $01 $01
    ld bc, $0101                                  ; $4d6b: $01 $01 $01
    ld a, [hl]                                    ; $4d6e: $7e
    add c                                         ; $4d6f: $81
    rst $18                                       ; $4d70: $df
    ldh [$ef], a                                  ; $4d71: $e0 $ef
    ldh a, [$ee]                                  ; $4d73: $f0 $ee
    pop af                                        ; $4d75: $f1
    call c, $f0e3                                 ; $4d76: $dc $e3 $f0
    rst $08                                       ; $4d79: $cf
    add b                                         ; $4d7a: $80
    rst $38                                       ; $4d7b: $ff
    ld hl, sp-$01                                 ; $4d7c: $f8 $ff
    nop                                           ; $4d7e: $00
    rst $38                                       ; $4d7f: $ff
    inc bc                                        ; $4d80: $03
    rst $38                                       ; $4d81: $ff
    rlca                                          ; $4d82: $07
    rst $38                                       ; $4d83: $ff
    rlca                                          ; $4d84: $07
    rst $38                                       ; $4d85: $ff
    inc bc                                        ; $4d86: $03
    rst $38                                       ; $4d87: $ff
    inc bc                                        ; $4d88: $03
    rst $38                                       ; $4d89: $ff
    ld bc, $1fff                                  ; $4d8a: $01 $ff $1f
    rst $38                                       ; $4d8d: $ff
    ldh [$e0], a                                  ; $4d8e: $e0 $e0
    ret nz                                        ; $4d90: $c0

    ret nz                                        ; $4d91: $c0

    add b                                         ; $4d92: $80
    add b                                         ; $4d93: $80
    nop                                           ; $4d94: $00
    nop                                           ; $4d95: $00
    nop                                           ; $4d96: $00
    nop                                           ; $4d97: $00
    add b                                         ; $4d98: $80
    add b                                         ; $4d99: $80
    add b                                         ; $4d9a: $80
    add b                                         ; $4d9b: $80
    add b                                         ; $4d9c: $80
    add b                                         ; $4d9d: $80
    rlca                                          ; $4d9e: $07
    rlca                                          ; $4d9f: $07
    rrca                                          ; $4da0: $0f
    rrca                                          ; $4da1: $0f
    ld c, $0f                                     ; $4da2: $0e $0f
    ld c, $0f                                     ; $4da4: $0e $0f
    rrca                                          ; $4da6: $0f
    rrca                                          ; $4da7: $0f
    rlca                                          ; $4da8: $07
    rlca                                          ; $4da9: $07
    inc bc                                        ; $4daa: $03
    inc bc                                        ; $4dab: $03
    nop                                           ; $4dac: $00
    nop                                           ; $4dad: $00
    ld a, b                                       ; $4dae: $78
    add a                                         ; $4daf: $87
    ld h, b                                       ; $4db0: $60
    sbc a                                         ; $4db1: $9f
    ld c, $ff                                     ; $4db2: $0e $ff
    ccf                                           ; $4db4: $3f
    rst $38                                       ; $4db5: $ff
    rst $38                                       ; $4db6: $ff
    rst $38                                       ; $4db7: $ff
    cp $ff                                        ; $4db8: $fe $ff
    xor $ef                                       ; $4dba: $ee $ef
    inc e                                         ; $4dbc: $1c
    rra                                           ; $4dbd: $1f
    nop                                           ; $4dbe: $00
    rst $38                                       ; $4dbf: $ff
    nop                                           ; $4dc0: $00
    rst $38                                       ; $4dc1: $ff
    nop                                           ; $4dc2: $00
    rst $38                                       ; $4dc3: $ff
    nop                                           ; $4dc4: $00
    rst $38                                       ; $4dc5: $ff
    nop                                           ; $4dc6: $00
    rst $38                                       ; $4dc7: $ff
    nop                                           ; $4dc8: $00
    rst $38                                       ; $4dc9: $ff
    jr @+$01                                      ; $4dca: $18 $ff

    inc a                                         ; $4dcc: $3c
    rst $38                                       ; $4dcd: $ff
    nop                                           ; $4dce: $00
    rst $38                                       ; $4dcf: $ff
    nop                                           ; $4dd0: $00
    rst $38                                       ; $4dd1: $ff
    ld [hl], b                                    ; $4dd2: $70
    rst $38                                       ; $4dd3: $ff
    db $fc                                        ; $4dd4: $fc
    rst $38                                       ; $4dd5: $ff

jr_04a_4dd6:
    rst $38                                       ; $4dd6: $ff
    rst $38                                       ; $4dd7: $ff
    ld a, a                                       ; $4dd8: $7f
    rst $38                                       ; $4dd9: $ff
    ld [hl], a                                    ; $4dda: $77
    rst $30                                       ; $4ddb: $f7
    jr c, jr_04a_4dd6                             ; $4ddc: $38 $f8

    ldh [$e0], a                                  ; $4dde: $e0 $e0
    ldh a, [$f0]                                  ; $4de0: $f0 $f0
    ld [hl], b                                    ; $4de2: $70
    ldh a, [rSVBK]                                ; $4de3: $f0 $70
    ldh a, [$f0]                                  ; $4de5: $f0 $f0
    ldh a, [$e0]                                  ; $4de7: $f0 $e0
    ldh [$c0], a                                  ; $4de9: $e0 $c0
    ret nz                                        ; $4deb: $c0

    nop                                           ; $4dec: $00
    nop                                           ; $4ded: $00
    ld hl, sp-$01                                 ; $4dee: $f8 $ff
    jr nc, jr_04a_4e31                            ; $4df0: $30 $3f

    inc sp                                        ; $4df2: $33
    ccf                                           ; $4df3: $3f
    ccf                                           ; $4df4: $3f
    ccf                                           ; $4df5: $3f
    ld e, $1e                                     ; $4df6: $1e $1e
    nop                                           ; $4df8: $00
    nop                                           ; $4df9: $00
    nop                                           ; $4dfa: $00
    nop                                           ; $4dfb: $00
    nop                                           ; $4dfc: $00
    nop                                           ; $4dfd: $00
    ld h, b                                       ; $4dfe: $60
    rst $38                                       ; $4dff: $ff
    ldh [rIE], a                                  ; $4e00: $e0 $ff
    ldh [rIE], a                                  ; $4e02: $e0 $ff
    pop bc                                        ; $4e04: $c1
    rst $38                                       ; $4e05: $ff
    jp $cfff                                      ; $4e06: $c3 $ff $cf


    rst $38                                       ; $4e09: $ff
    rst $38                                       ; $4e0a: $ff
    rst $38                                       ; $4e0b: $ff
    ld a, e                                       ; $4e0c: $7b
    ld a, e                                       ; $4e0d: $7b
    nop                                           ; $4e0e: $00
    rst $38                                       ; $4e0f: $ff
    nop                                           ; $4e10: $00
    rst $38                                       ; $4e11: $ff
    nop                                           ; $4e12: $00
    rst $38                                       ; $4e13: $ff
    add c                                         ; $4e14: $81
    rst $38                                       ; $4e15: $ff
    jp $e7ff                                      ; $4e16: $c3 $ff $e7


    rst $38                                       ; $4e19: $ff
    rst $38                                       ; $4e1a: $ff
    rst $38                                       ; $4e1b: $ff
    cp l                                          ; $4e1c: $bd
    rst $38                                       ; $4e1d: $ff
    ld b, $ff                                     ; $4e1e: $06 $ff
    rlca                                          ; $4e20: $07
    rst $38                                       ; $4e21: $ff
    rlca                                          ; $4e22: $07
    rst $38                                       ; $4e23: $ff
    add e                                         ; $4e24: $83
    rst $38                                       ; $4e25: $ff
    jp $f3ff                                      ; $4e26: $c3 $ff $f3


    rst $38                                       ; $4e29: $ff
    rst $38                                       ; $4e2a: $ff
    rst $38                                       ; $4e2b: $ff
    sbc $de                                       ; $4e2c: $de $de
    rra                                           ; $4e2e: $1f
    rst $38                                       ; $4e2f: $ff
    inc c                                         ; $4e30: $0c

jr_04a_4e31:
    db $fc                                        ; $4e31: $fc
    call z, $fcfc                                 ; $4e32: $cc $fc $fc
    db $fc                                        ; $4e35: $fc
    ld a, b                                       ; $4e36: $78
    ld a, b                                       ; $4e37: $78
    nop                                           ; $4e38: $00
    nop                                           ; $4e39: $00
    nop                                           ; $4e3a: $00
    nop                                           ; $4e3b: $00
    nop                                           ; $4e3c: $00
    nop                                           ; $4e3d: $00
    inc e                                         ; $4e3e: $1c
    rra                                           ; $4e3f: $1f
    rra                                           ; $4e40: $1f
    rra                                           ; $4e41: $1f
    rra                                           ; $4e42: $1f
    rra                                           ; $4e43: $1f
    rrca                                          ; $4e44: $0f
    rrca                                          ; $4e45: $0f
    nop                                           ; $4e46: $00
    nop                                           ; $4e47: $00
    nop                                           ; $4e48: $00
    nop                                           ; $4e49: $00
    nop                                           ; $4e4a: $00
    nop                                           ; $4e4b: $00
    nop                                           ; $4e4c: $00
    nop                                           ; $4e4d: $00
    db $fc                                        ; $4e4e: $fc
    rst $38                                       ; $4e4f: $ff
    db $fc                                        ; $4e50: $fc
    rst $38                                       ; $4e51: $ff
    db $ec                                        ; $4e52: $ec
    rst $28                                       ; $4e53: $ef
    adc [hl]                                      ; $4e54: $8e
    adc a                                         ; $4e55: $8f
    ld c, $0f                                     ; $4e56: $0e $0f
    rrca                                          ; $4e58: $0f
    rrca                                          ; $4e59: $0f
    rlca                                          ; $4e5a: $07
    rlca                                          ; $4e5b: $07
    inc bc                                        ; $4e5c: $03
    inc bc                                        ; $4e5d: $03
    rlca                                          ; $4e5e: $07
    rst $38                                       ; $4e5f: $ff
    rrca                                          ; $4e60: $0f
    rst $38                                       ; $4e61: $ff
    rra                                           ; $4e62: $1f
    rst $38                                       ; $4e63: $ff
    ccf                                           ; $4e64: $3f
    rst $38                                       ; $4e65: $ff
    ld a, l                                       ; $4e66: $7d
    rst $38                                       ; $4e67: $ff
    db $fd                                        ; $4e68: $fd
    rst $38                                       ; $4e69: $ff
    cp $ff                                        ; $4e6a: $fe $ff
    xor $ef                                       ; $4e6c: $ee $ef
    nop                                           ; $4e6e: $00
    rst $38                                       ; $4e6f: $ff
    add b                                         ; $4e70: $80
    rst $38                                       ; $4e71: $ff
    pop bc                                        ; $4e72: $c1
    rst $38                                       ; $4e73: $ff
    pop bc                                        ; $4e74: $c1
    rst $38                                       ; $4e75: $ff
    db $e3                                        ; $4e76: $e3
    rst $38                                       ; $4e77: $ff
    rst $38                                       ; $4e78: $ff
    rst $38                                       ; $4e79: $ff
    rst $38                                       ; $4e7a: $ff
    rst $38                                       ; $4e7b: $ff
    cp $ff                                        ; $4e7c: $fe $ff
    ldh [rIE], a                                  ; $4e7e: $e0 $ff
    ldh a, [rIE]                                  ; $4e80: $f0 $ff
    ld hl, sp-$01                                 ; $4e82: $f8 $ff
    db $fc                                        ; $4e84: $fc
    rst $38                                       ; $4e85: $ff
    sbc $ff                                       ; $4e86: $de $ff
    ld e, a                                       ; $4e88: $5f
    rst $38                                       ; $4e89: $ff
    cp a                                          ; $4e8a: $bf
    rst $38                                       ; $4e8b: $ff
    cp e                                          ; $4e8c: $bb
    rst $38                                       ; $4e8d: $ff
    ccf                                           ; $4e8e: $3f
    rst $38                                       ; $4e8f: $ff
    ccf                                           ; $4e90: $3f
    rst $38                                       ; $4e91: $ff
    scf                                           ; $4e92: $37
    rst $30                                       ; $4e93: $f7
    ld [hl], c                                    ; $4e94: $71
    pop af                                        ; $4e95: $f1
    ld [hl], b                                    ; $4e96: $70
    ldh a, [$f0]                                  ; $4e97: $f0 $f0
    ldh a, [$e0]                                  ; $4e99: $f0 $e0
    ldh [$c0], a                                  ; $4e9b: $e0 $c0
    ret nz                                        ; $4e9d: $c0

    jr c, @-$06                                   ; $4e9e: $38 $f8

    ld hl, sp-$08                                 ; $4ea0: $f8 $f8
    ld hl, sp-$08                                 ; $4ea2: $f8 $f8
    ldh a, [$f0]                                  ; $4ea4: $f0 $f0
    nop                                           ; $4ea6: $00
    nop                                           ; $4ea7: $00
    nop                                           ; $4ea8: $00
    nop                                           ; $4ea9: $00
    nop                                           ; $4eaa: $00
    nop                                           ; $4eab: $00
    nop                                           ; $4eac: $00
    nop                                           ; $4ead: $00
    jr @+$1a                                      ; $4eae: $18 $18

    inc l                                         ; $4eb0: $2c
    inc [hl]                                      ; $4eb1: $34
    inc [hl]                                      ; $4eb2: $34
    inc l                                         ; $4eb3: $2c
    halt                                          ; $4eb4: $76
    ld l, [hl]                                    ; $4eb5: $6e
    pop de                                        ; $4eb6: $d1
    xor a                                         ; $4eb7: $af
    rst $20                                       ; $4eb8: $e7
    db $db                                        ; $4eb9: $db
    xor l                                         ; $4eba: $ad
    db $d3                                        ; $4ebb: $d3
    ldh [$1f], a                                  ; $4ebc: $e0 $1f
    nop                                           ; $4ebe: $00
    nop                                           ; $4ebf: $00
    nop                                           ; $4ec0: $00
    nop                                           ; $4ec1: $00
    nop                                           ; $4ec2: $00
    nop                                           ; $4ec3: $00
    nop                                           ; $4ec4: $00
    nop                                           ; $4ec5: $00
    ld bc, $0301                                  ; $4ec6: $01 $01 $03
    ld [bc], a                                    ; $4ec9: $02
    inc bc                                        ; $4eca: $03
    ld [bc], a                                    ; $4ecb: $02
    dec b                                         ; $4ecc: $05
    rlca                                          ; $4ecd: $07
    jr jr_04a_4ee8                                ; $4ece: $18 $18

    inc h                                         ; $4ed0: $24
    inc a                                         ; $4ed1: $3c
    inc a                                         ; $4ed2: $3c
    inc h                                         ; $4ed3: $24
    ld e, d                                       ; $4ed4: $5a
    ld h, [hl]                                    ; $4ed5: $66
    di                                            ; $4ed6: $f3
    rst $08                                       ; $4ed7: $cf
    ld [hl], d                                    ; $4ed8: $72
    rst $08                                       ; $4ed9: $cf
    or b                                          ; $4eda: $b0
    ld c, a                                       ; $4edb: $4f
    ldh [$1f], a                                  ; $4edc: $e0 $1f
    nop                                           ; $4ede: $00
    nop                                           ; $4edf: $00
    nop                                           ; $4ee0: $00
    nop                                           ; $4ee1: $00
    nop                                           ; $4ee2: $00
    nop                                           ; $4ee3: $00
    nop                                           ; $4ee4: $00
    nop                                           ; $4ee5: $00
    add b                                         ; $4ee6: $80
    add b                                         ; $4ee7: $80

jr_04a_4ee8:
    ld b, b                                       ; $4ee8: $40
    ret nz                                        ; $4ee9: $c0

    ld b, b                                       ; $4eea: $40
    ret nz                                        ; $4eeb: $c0

    and b                                         ; $4eec: $a0
    ldh [$7f], a                                  ; $4eed: $e0 $7f
    ld [hl], b                                    ; $4eef: $70
    ld [hl], a                                    ; $4ef0: $77
    ld a, b                                       ; $4ef1: $78
    ccf                                           ; $4ef2: $3f
    jr c, jr_04a_4f10                             ; $4ef3: $38 $1b

    inc e                                         ; $4ef5: $1c
    ccf                                           ; $4ef6: $3f
    inc a                                         ; $4ef7: $3c
    ld a, l                                       ; $4ef8: $7d
    ld a, [hl]                                    ; $4ef9: $7e
    ld [hl], l                                    ; $4efa: $75
    ld a, d                                       ; $4efb: $7a
    ld l, a                                       ; $4efc: $6f
    ld [hl], b                                    ; $4efd: $70
    ld hl, sp+$07                                 ; $4efe: $f8 $07
    ld hl, sp+$07                                 ; $4f00: $f8 $07
    or b                                          ; $4f02: $b0
    ld c, a                                       ; $4f03: $4f
    add b                                         ; $4f04: $80
    ld a, a                                       ; $4f05: $7f
    ret nz                                        ; $4f06: $c0

    ccf                                           ; $4f07: $3f
    ldh [$1f], a                                  ; $4f08: $e0 $1f
    ldh a, [rIF]                                  ; $4f0a: $f0 $0f
    ldh a, [rIF]                                  ; $4f0c: $f0 $0f
    ld [hl], a                                    ; $4f0e: $77
    adc b                                         ; $4f0f: $88

jr_04a_4f10:
    ld a, [hl]                                    ; $4f10: $7e
    add c                                         ; $4f11: $81
    ld a, $c1                                     ; $4f12: $3e $c1
    inc e                                         ; $4f14: $1c
    db $e3                                        ; $4f15: $e3
    nop                                           ; $4f16: $00
    rst $38                                       ; $4f17: $ff
    nop                                           ; $4f18: $00
    rst $38                                       ; $4f19: $ff
    nop                                           ; $4f1a: $00
    rst $38                                       ; $4f1b: $ff
    nop                                           ; $4f1c: $00
    rst $38                                       ; $4f1d: $ff

jr_04a_4f1e:
    ld c, $fe                                     ; $4f1e: $0e $fe
    ld c, $fe                                     ; $4f20: $0e $fe
    inc e                                         ; $4f22: $1c
    db $fc                                        ; $4f23: $fc
    jr c, jr_04a_4f1e                             ; $4f24: $38 $f8

    ld a, h                                       ; $4f26: $7c
    db $fc                                        ; $4f27: $fc
    ld a, [hl]                                    ; $4f28: $7e
    cp $0e                                        ; $4f29: $fe $0e
    cp $06                                        ; $4f2b: $fe $06
    cp $01                                        ; $4f2d: $fe $01
    ld bc, $0101                                  ; $4f2f: $01 $01 $01
    inc bc                                        ; $4f32: $03
    ld [bc], a                                    ; $4f33: $02
    ld [bc], a                                    ; $4f34: $02
    inc bc                                        ; $4f35: $03
    ld bc, $0101                                  ; $4f36: $01 $01 $01
    ld bc, $0203                                  ; $4f39: $01 $03 $02
    ld bc, $c001                                  ; $4f3c: $01 $01 $c0
    cp a                                          ; $4f3f: $bf
    ld b, c                                       ; $4f40: $41
    cp a                                          ; $4f41: $bf
    sub b                                         ; $4f42: $90
    ld l, a                                       ; $4f43: $6f
    or b                                          ; $4f44: $b0
    ld c, a                                       ; $4f45: $4f
    add b                                         ; $4f46: $80
    ld a, a                                       ; $4f47: $7f
    ret nz                                        ; $4f48: $c0

    ccf                                           ; $4f49: $3f
    call nz, $8c3b                                ; $4f4a: $c4 $3b $8c
    ld [hl], e                                    ; $4f4d: $73
    add b                                         ; $4f4e: $80
    add b                                         ; $4f4f: $80
    add b                                         ; $4f50: $80
    add b                                         ; $4f51: $80
    ld b, b                                       ; $4f52: $40
    ret nz                                        ; $4f53: $c0

    ld b, b                                       ; $4f54: $40
    ret nz                                        ; $4f55: $c0

    add b                                         ; $4f56: $80
    add b                                         ; $4f57: $80
    add b                                         ; $4f58: $80
    add b                                         ; $4f59: $80
    ld b, b                                       ; $4f5a: $40
    ret nz                                        ; $4f5b: $c0

    ld b, b                                       ; $4f5c: $40
    ret nz                                        ; $4f5d: $c0

    ld b, $05                                     ; $4f5e: $06 $05

jr_04a_4f60:
    rlca                                          ; $4f60: $07
    inc b                                         ; $4f61: $04

jr_04a_4f62:
    inc bc                                        ; $4f62: $03
    ld [bc], a                                    ; $4f63: $02
    rlca                                          ; $4f64: $07
    ld b, $0b                                     ; $4f65: $06 $0b
    inc c                                         ; $4f67: $0c
    dec de                                        ; $4f68: $1b
    inc d                                         ; $4f69: $14
    ld e, $11                                     ; $4f6a: $1e $11
    ld d, $19                                     ; $4f6c: $16 $19
    ret nz                                        ; $4f6e: $c0

    ccf                                           ; $4f6f: $3f
    add b                                         ; $4f70: $80
    ld a, a                                       ; $4f71: $7f
    add d                                         ; $4f72: $82
    ld a, l                                       ; $4f73: $7d
    sbc d                                         ; $4f74: $9a
    ld h, l                                       ; $4f75: $65
    adc [hl]                                      ; $4f76: $8e
    ld [hl], c                                    ; $4f77: $71
    ld b, $f9                                     ; $4f78: $06 $f9
    nop                                           ; $4f7a: $00
    rst $38                                       ; $4f7b: $ff
    nop                                           ; $4f7c: $00
    rst $38                                       ; $4f7d: $ff
    jr nz, jr_04a_4f60                            ; $4f7e: $20 $e0

    jr nz, jr_04a_4f62                            ; $4f80: $20 $e0

    ld b, b                                       ; $4f82: $40
    ret nz                                        ; $4f83: $c0

    ld h, b                                       ; $4f84: $60
    ldh [rNR10], a                                ; $4f85: $e0 $10
    ldh a, [rNR23]                                ; $4f87: $f0 $18
    ld hl, sp+$28                                 ; $4f89: $f8 $28
    ld hl, sp+$08                                 ; $4f8b: $f8 $08
    ld hl, sp+$00                                 ; $4f8d: $f8 $00
    nop                                           ; $4f8f: $00
    ld bc, $0301                                  ; $4f90: $01 $01 $03
    inc bc                                        ; $4f93: $03
    inc bc                                        ; $4f94: $03
    inc bc                                        ; $4f95: $03
    inc bc                                        ; $4f96: $03
    inc bc                                        ; $4f97: $03
    inc bc                                        ; $4f98: $03
    inc bc                                        ; $4f99: $03
    ld bc, $0101                                  ; $4f9a: $01 $01 $01
    ld bc, $706f                                  ; $4f9d: $01 $6f $70
    rst $30                                       ; $4fa0: $f7
    ld hl, sp-$05                                 ; $4fa1: $f8 $fb
    db $fc                                        ; $4fa3: $fc
    dec e                                         ; $4fa4: $1d
    cp $6d                                        ; $4fa5: $fe $6d
    sbc [hl]                                      ; $4fa7: $9e
    ld sp, hl                                     ; $4fa8: $f9
    add [hl]                                      ; $4fa9: $86
    cp a                                          ; $4faa: $bf
    ret nz                                        ; $4fab: $c0

    rst $18                                       ; $4fac: $df
    ldh [$f8], a                                  ; $4fad: $e0 $f8
    rlca                                          ; $4faf: $07
    ld hl, sp+$07                                 ; $4fb0: $f8 $07
    ld hl, sp+$07                                 ; $4fb2: $f8 $07
    ldh a, [rIF]                                  ; $4fb4: $f0 $0f
    ret nz                                        ; $4fb6: $c0

    ccf                                           ; $4fb7: $3f
    ret nz                                        ; $4fb8: $c0

    ccf                                           ; $4fb9: $3f
    ldh [$1f], a                                  ; $4fba: $e0 $1f
    ldh [$1f], a                                  ; $4fbc: $e0 $1f
    ld b, $fe                                     ; $4fbe: $06 $fe
    rrca                                          ; $4fc0: $0f
    rst $38                                       ; $4fc1: $ff
    rra                                           ; $4fc2: $1f
    rst $38                                       ; $4fc3: $ff
    inc a                                         ; $4fc4: $3c
    rst $38                                       ; $4fc5: $ff
    jr nc, @+$01                                  ; $4fc6: $30 $ff

    ld bc, $01ff                                  ; $4fc8: $01 $ff $01
    rst $38                                       ; $4fcb: $ff
    inc bc                                        ; $4fcc: $03
    rst $38                                       ; $4fcd: $ff
    nop                                           ; $4fce: $00
    nop                                           ; $4fcf: $00
    add b                                         ; $4fd0: $80
    add b                                         ; $4fd1: $80
    ret nz                                        ; $4fd2: $c0

    ret nz                                        ; $4fd3: $c0

    ret nz                                        ; $4fd4: $c0

    ret nz                                        ; $4fd5: $c0

    ret nz                                        ; $4fd6: $c0

    ret nz                                        ; $4fd7: $c0

    ret nz                                        ; $4fd8: $c0

    ret nz                                        ; $4fd9: $c0

    add b                                         ; $4fda: $80
    add b                                         ; $4fdb: $80
    add b                                         ; $4fdc: $80
    add b                                         ; $4fdd: $80
    ld [bc], a                                    ; $4fde: $02
    inc bc                                        ; $4fdf: $03
    inc bc                                        ; $4fe0: $03
    ld [bc], a                                    ; $4fe1: $02
    ld [bc], a                                    ; $4fe2: $02
    inc bc                                        ; $4fe3: $03
    ld bc, $0301                                  ; $4fe4: $01 $01 $03
    ld [bc], a                                    ; $4fe7: $02
    ld [bc], a                                    ; $4fe8: $02
    inc bc                                        ; $4fe9: $03
    ld bc, $0001                                  ; $4fea: $01 $01 $00
    nop                                           ; $4fed: $00
    ret nz                                        ; $4fee: $c0

    ccf                                           ; $4fef: $3f
    sub b                                         ; $4ff0: $90
    ld l, a                                       ; $4ff1: $6f
    or b                                          ; $4ff2: $b0
    ld c, a                                       ; $4ff3: $4f
    ret nz                                        ; $4ff4: $c0

jr_04a_4ff5:
    ccf                                           ; $4ff5: $3f
    ret nz                                        ; $4ff6: $c0

    ccf                                           ; $4ff7: $3f
    add b                                         ; $4ff8: $80
    ld a, a                                       ; $4ff9: $7f
    sub h                                         ; $4ffa: $94
    rst $38                                       ; $4ffb: $ff
    ld a, a                                       ; $4ffc: $7f
    ld a, a                                       ; $4ffd: $7f
    add b                                         ; $4ffe: $80
    add b                                         ; $4fff: $80

Jump_04a_5000:
    ld b, b                                       ; $5000: $40
    ret nz                                        ; $5001: $c0

    ld b, b                                       ; $5002: $40
    ret nz                                        ; $5003: $c0

    add b                                         ; $5004: $80
    add b                                         ; $5005: $80
    ld b, b                                       ; $5006: $40
    ret nz                                        ; $5007: $c0

    ld b, b                                       ; $5008: $40
    ret nz                                        ; $5009: $c0

    add b                                         ; $500a: $80
    add b                                         ; $500b: $80
    nop                                           ; $500c: $00
    nop                                           ; $500d: $00
    rrca                                          ; $500e: $0f
    ld [$181f], sp                                ; $500f: $08 $1f $18
    ld [hl], $29                                  ; $5012: $36 $29
    inc l                                         ; $5014: $2c
    inc sp                                        ; $5015: $33
    ld e, h                                       ; $5016: $5c
    ld [hl], e                                    ; $5017: $73
    ld l, [hl]                                    ; $5018: $6e
    ld d, c                                       ; $5019: $51
    ld e, [hl]                                    ; $501a: $5e
    ld h, c                                       ; $501b: $61
    inc l                                         ; $501c: $2c
    inc sp                                        ; $501d: $33
    db $10                                        ; $501e: $10
    rst $28                                       ; $501f: $ef
    ret nc                                        ; $5020: $d0

    cpl                                           ; $5021: $2f
    ld [hl], b                                    ; $5022: $70
    adc a                                         ; $5023: $8f
    jr nc, jr_04a_4ff5                            ; $5024: $30 $cf

    nop                                           ; $5026: $00
    rst $38                                       ; $5027: $ff
    nop                                           ; $5028: $00
    rst $38                                       ; $5029: $ff
    nop                                           ; $502a: $00
    rst $38                                       ; $502b: $ff
    nop                                           ; $502c: $00
    rst $38                                       ; $502d: $ff
    db $10                                        ; $502e: $10
    ldh a, [rNR23]                                ; $502f: $f0 $18
    ld hl, sp+$24                                 ; $5031: $f8 $24
    db $fc                                        ; $5033: $fc
    inc b                                         ; $5034: $04
    db $fc                                        ; $5035: $fc
    inc c                                         ; $5036: $0c
    db $fc                                        ; $5037: $fc
    ld [bc], a                                    ; $5038: $02
    cp $02                                        ; $5039: $fe $02
    cp $04                                        ; $503b: $fe $04
    db $fc                                        ; $503d: $fc
    rst $38                                       ; $503e: $ff
    ldh [$ef], a                                  ; $503f: $e0 $ef
    ldh a, [rPCM34]                               ; $5041: $f0 $77
    ld a, b                                       ; $5043: $78
    ld [hl], a                                    ; $5044: $77
    ld a, b                                       ; $5045: $78
    dec sp                                        ; $5046: $3b
    inc a                                         ; $5047: $3c
    dec sp                                        ; $5048: $3b
    inc a                                         ; $5049: $3c

jr_04a_504a:
    ld a, c                                       ; $504a: $79
    ld a, [hl]                                    ; $504b: $7e

jr_04a_504c:
    ld sp, hl                                     ; $504c: $f9
    cp $e0                                        ; $504d: $fe $e0
    rra                                           ; $504f: $1f
    ret nz                                        ; $5050: $c0

    ccf                                           ; $5051: $3f
    nop                                           ; $5052: $00
    rst $38                                       ; $5053: $ff
    add b                                         ; $5054: $80
    ld a, a                                       ; $5055: $7f
    add b                                         ; $5056: $80
    ld a, a                                       ; $5057: $7f
    ret nz                                        ; $5058: $c0

    ccf                                           ; $5059: $3f
    ret nz                                        ; $505a: $c0

    ccf                                           ; $505b: $3f
    ldh [$1f], a                                  ; $505c: $e0 $1f
    ld [bc], a                                    ; $505e: $02
    db $fd                                        ; $505f: $fd
    rst $00                                       ; $5060: $c7
    jr c, jr_04a_504a                             ; $5061: $38 $e7

    jr jr_04a_504c                                ; $5063: $18 $e7

    jr jr_04a_50de                                ; $5065: $18 $77

    adc b                                         ; $5067: $88
    ld a, [hl]                                    ; $5068: $7e
    add c                                         ; $5069: $81
    ld a, $c1                                     ; $506a: $3e $c1
    inc e                                         ; $506c: $1c
    db $e3                                        ; $506d: $e3
    rlca                                          ; $506e: $07
    rst $38                                       ; $506f: $ff
    rlca                                          ; $5070: $07
    rst $38                                       ; $5071: $ff
    ld c, $fe                                     ; $5072: $0e $fe
    ld c, $fe                                     ; $5074: $0e $fe
    inc e                                         ; $5076: $1c
    db $fc                                        ; $5077: $fc
    inc e                                         ; $5078: $1c
    db $fc                                        ; $5079: $fc
    ld e, $fe                                     ; $507a: $1e $fe
    rra                                           ; $507c: $1f
    rst $38                                       ; $507d: $ff
    inc e                                         ; $507e: $1c
    inc de                                        ; $507f: $13
    ld a, $21                                     ; $5080: $3e $21
    ld l, $31                                     ; $5082: $2e $31
    inc a                                         ; $5084: $3c
    inc sp                                        ; $5085: $33
    ld a, h                                       ; $5086: $7c
    ld b, e                                       ; $5087: $43
    ld e, b                                       ; $5088: $58
    ld h, a                                       ; $5089: $67
    inc l                                         ; $508a: $2c
    inc sp                                        ; $508b: $33
    ld a, $31                                     ; $508c: $3e $31
    nop                                           ; $508e: $00
    rst $38                                       ; $508f: $ff
    nop                                           ; $5090: $00
    rst $38                                       ; $5091: $ff
    nop                                           ; $5092: $00
    rst $38                                       ; $5093: $ff
    inc b                                         ; $5094: $04
    ei                                            ; $5095: $fb
    inc [hl]                                      ; $5096: $34
    rr h                                          ; $5097: $cb $1c
    db $e3                                        ; $5099: $e3
    inc c                                         ; $509a: $0c
    di                                            ; $509b: $f3
    nop                                           ; $509c: $00
    rst $38                                       ; $509d: $ff
    ld [$04f8], sp                                ; $509e: $08 $f8 $04
    db $fc                                        ; $50a1: $fc
    inc b                                         ; $50a2: $04
    db $fc                                        ; $50a3: $fc
    inc c                                         ; $50a4: $0c
    db $fc                                        ; $50a5: $fc
    ld [de], a                                    ; $50a6: $12
    cp $02                                        ; $50a7: $fe $02
    cp $04                                        ; $50a9: $fe $04
    db $fc                                        ; $50ab: $fc
    inc c                                         ; $50ac: $0c
    db $fc                                        ; $50ad: $fc
    rst $08                                       ; $50ae: $cf
    ldh a, [$df]                                  ; $50af: $f0 $df
    ldh [rIE], a                                  ; $50b1: $e0 $ff
    ldh [$ef], a                                  ; $50b3: $e0 $ef
    ldh a, [rPCM34]                               ; $50b5: $f0 $77
    ld a, b                                       ; $50b7: $78
    dec sp                                        ; $50b8: $3b
    inc a                                         ; $50b9: $3c
    ld a, l                                       ; $50ba: $7d
    ld a, [hl]                                    ; $50bb: $7e
    db $fd                                        ; $50bc: $fd
    cp $e0                                        ; $50bd: $fe $e0
    rra                                           ; $50bf: $1f
    ldh [$1f], a                                  ; $50c0: $e0 $1f
    ret nz                                        ; $50c2: $c0

    ccf                                           ; $50c3: $3f
    add b                                         ; $50c4: $80
    ld a, a                                       ; $50c5: $7f
    ret nz                                        ; $50c6: $c0

    ccf                                           ; $50c7: $3f
    ret nz                                        ; $50c8: $c0

    ccf                                           ; $50c9: $3f
    ldh [$1f], a                                  ; $50ca: $e0 $1f
    ldh [$1f], a                                  ; $50cc: $e0 $1f
    inc bc                                        ; $50ce: $03
    rst $38                                       ; $50cf: $ff
    inc bc                                        ; $50d0: $03
    rst $38                                       ; $50d1: $ff
    rlca                                          ; $50d2: $07
    rst $38                                       ; $50d3: $ff
    rlca                                          ; $50d4: $07
    rst $38                                       ; $50d5: $ff
    ld c, $fe                                     ; $50d6: $0e $fe
    inc e                                         ; $50d8: $1c
    db $fc                                        ; $50d9: $fc
    ld a, $fe                                     ; $50da: $3e $fe
    ccf                                           ; $50dc: $3f
    rst $38                                       ; $50dd: $ff

jr_04a_50de:
    ld l, [hl]                                    ; $50de: $6e
    ld d, c                                       ; $50df: $51
    ld e, h                                       ; $50e0: $5c
    ld h, e                                       ; $50e1: $63
    ld a, b                                       ; $50e2: $78
    ld h, a                                       ; $50e3: $67
    add sp, -$69                                  ; $50e4: $e8 $97
    cp h                                          ; $50e6: $bc
    jp Jump_04a_615e                              ; $50e7: $c3 $5e $61


    ld l, $31                                     ; $50ea: $2e $31
    ld a, h                                       ; $50ec: $7c
    ld b, e                                       ; $50ed: $43
    ld [bc], a                                    ; $50ee: $02
    cp $02                                        ; $50ef: $fe $02
    cp $06                                        ; $50f1: $fe $06
    cp $01                                        ; $50f3: $fe $01
    rst $38                                       ; $50f5: $ff
    ld bc, $02ff                                  ; $50f6: $01 $ff $02
    cp $04                                        ; $50f9: $fe $04
    db $fc                                        ; $50fb: $fc
    ld [bc], a                                    ; $50fc: $02
    cp $ef                                        ; $50fd: $fe $ef
    ldh a, [$df]                                  ; $50ff: $f0 $df
    ldh [rIE], a                                  ; $5101: $e0 $ff
    ldh [$ef], a                                  ; $5103: $e0 $ef
    ldh a, [rPCM34]                               ; $5105: $f0 $77
    ld a, b                                       ; $5107: $78
    dec sp                                        ; $5108: $3b
    inc a                                         ; $5109: $3c
    dec e                                         ; $510a: $1d
    ld e, $7d                                     ; $510b: $1e $7d
    ld a, [hl]                                    ; $510d: $7e
    ldh a, [rIF]                                  ; $510e: $f0 $0f
    ldh a, [rIF]                                  ; $5110: $f0 $0f
    ldh [$1f], a                                  ; $5112: $e0 $1f
    nop                                           ; $5114: $00
    rst $38                                       ; $5115: $ff
    add b                                         ; $5116: $80
    ld a, a                                       ; $5117: $7f
    ret nz                                        ; $5118: $c0

    ccf                                           ; $5119: $3f
    ret nz                                        ; $511a: $c0

    ccf                                           ; $511b: $3f
    ldh [$1f], a                                  ; $511c: $e0 $1f
    rlca                                          ; $511e: $07
    rst $38                                       ; $511f: $ff
    inc bc                                        ; $5120: $03
    rst $38                                       ; $5121: $ff
    rlca                                          ; $5122: $07
    rst $38                                       ; $5123: $ff

jr_04a_5124:
    rlca                                          ; $5124: $07
    rst $38                                       ; $5125: $ff
    ld c, $fe                                     ; $5126: $0e $fe
    inc e                                         ; $5128: $1c
    db $fc                                        ; $5129: $fc
    jr c, jr_04a_5124                             ; $512a: $38 $f8

    ld a, $fe                                     ; $512c: $3e $fe
    ld e, [hl]                                    ; $512e: $5e
    ld h, c                                       ; $512f: $61
    ld a, $31                                     ; $5130: $3e $31
    inc l                                         ; $5132: $2c
    inc sp                                        ; $5133: $33
    ld e, b                                       ; $5134: $58
    ld h, a                                       ; $5135: $67
    jr nz, jr_04a_5177                            ; $5136: $20 $3f

    jr @+$21                                      ; $5138: $18 $1f

    ld b, $07                                     ; $513a: $06 $07
    ld bc, $0001                                  ; $513c: $01 $01 $00
    rst $38                                       ; $513f: $ff
    nop                                           ; $5140: $00
    rst $38                                       ; $5141: $ff
    nop                                           ; $5142: $00
    rst $38                                       ; $5143: $ff
    nop                                           ; $5144: $00
    rst $38                                       ; $5145: $ff
    nop                                           ; $5146: $00
    rst $38                                       ; $5147: $ff
    nop                                           ; $5148: $00
    rst $38                                       ; $5149: $ff
    ld b, d                                       ; $514a: $42
    rst $38                                       ; $514b: $ff
    rst $38                                       ; $514c: $ff
    rst $38                                       ; $514d: $ff
    ld [bc], a                                    ; $514e: $02
    cp $0c                                        ; $514f: $fe $0c
    db $fc                                        ; $5151: $fc

jr_04a_5152:
    ld [bc], a                                    ; $5152: $02
    cp $02                                        ; $5153: $fe $02
    cp $04                                        ; $5155: $fe $04
    db $fc                                        ; $5157: $fc
    jr jr_04a_5152                                ; $5158: $18 $f8

    ld h, b                                       ; $515a: $60
    ldh [$80], a                                  ; $515b: $e0 $80
    add b                                         ; $515d: $80
    nop                                           ; $515e: $00
    nop                                           ; $515f: $00
    ld bc, $0301                                  ; $5160: $01 $01 $03
    inc bc                                        ; $5163: $03
    inc bc                                        ; $5164: $03
    inc bc                                        ; $5165: $03
    inc bc                                        ; $5166: $03
    inc bc                                        ; $5167: $03
    ld bc, $0001                                  ; $5168: $01 $01 $00
    nop                                           ; $516b: $00
    nop                                           ; $516c: $00
    nop                                           ; $516d: $00
    db $fd                                        ; $516e: $fd
    cp $e7                                        ; $516f: $fe $e7
    ld hl, sp-$41                                 ; $5171: $f8 $bf
    ret nz                                        ; $5173: $c0

    rst $38                                       ; $5174: $ff
    add b                                         ; $5175: $80
    rst $18                                       ; $5176: $df

jr_04a_5177:
    ldh [$f3], a                                  ; $5177: $e0 $f3
    db $fc                                        ; $5179: $fc
    ld a, l                                       ; $517a: $7d
    ld a, [hl]                                    ; $517b: $7e
    dec e                                         ; $517c: $1d
    ld e, $e0                                     ; $517d: $1e $e0
    rra                                           ; $517f: $1f
    ldh [$1f], a                                  ; $5180: $e0 $1f
    ret nz                                        ; $5182: $c0

    ccf                                           ; $5183: $3f
    add b                                         ; $5184: $80
    ld a, a                                       ; $5185: $7f
    ret nz                                        ; $5186: $c0

    ccf                                           ; $5187: $3f
    ldh a, [rIF]                                  ; $5188: $f0 $0f
    ld hl, sp+$07                                 ; $518a: $f8 $07
    ld hl, sp+$07                                 ; $518c: $f8 $07
    ccf                                           ; $518e: $3f
    rst $38                                       ; $518f: $ff
    rlca                                          ; $5190: $07
    rst $38                                       ; $5191: $ff
    ld bc, $01ff                                  ; $5192: $01 $ff $01
    rst $38                                       ; $5195: $ff

jr_04a_5196:
    rlca                                          ; $5196: $07
    rst $38                                       ; $5197: $ff
    rra                                           ; $5198: $1f
    rst $38                                       ; $5199: $ff
    ld a, $fe                                     ; $519a: $3e $fe
    jr c, jr_04a_5196                             ; $519c: $38 $f8

    nop                                           ; $519e: $00
    nop                                           ; $519f: $00
    add b                                         ; $51a0: $80
    add b                                         ; $51a1: $80
    ret nz                                        ; $51a2: $c0

    ret nz                                        ; $51a3: $c0

    ret nz                                        ; $51a4: $c0

    ret nz                                        ; $51a5: $c0

    ret nz                                        ; $51a6: $c0

    ret nz                                        ; $51a7: $c0

    add b                                         ; $51a8: $80
    add b                                         ; $51a9: $80
    nop                                           ; $51aa: $00
    nop                                           ; $51ab: $00
    nop                                           ; $51ac: $00
    nop                                           ; $51ad: $00
    dec sp                                        ; $51ae: $3b
    inc a                                         ; $51af: $3c
    ld [hl], a                                    ; $51b0: $77
    ld a, b                                       ; $51b1: $78
    ld l, a                                       ; $51b2: $6f
    ld [hl], b                                    ; $51b3: $70
    xor $f1                                       ; $51b4: $ee $f1
    ret nz                                        ; $51b6: $c0

    rst $38                                       ; $51b7: $ff
    and $ff                                       ; $51b8: $e6 $ff
    rst $38                                       ; $51ba: $ff
    rst $38                                       ; $51bb: $ff
    ld a, a                                       ; $51bc: $7f
    ld a, a                                       ; $51bd: $7f
    ldh a, [rIF]                                  ; $51be: $f0 $0f
    ldh [$1f], a                                  ; $51c0: $e0 $1f
    add b                                         ; $51c2: $80
    ld a, a                                       ; $51c3: $7f
    nop                                           ; $51c4: $00
    rst $38                                       ; $51c5: $ff
    nop                                           ; $51c6: $00
    rst $38                                       ; $51c7: $ff
    nop                                           ; $51c8: $00
    rst $38                                       ; $51c9: $ff
    nop                                           ; $51ca: $00
    rst $38                                       ; $51cb: $ff
    nop                                           ; $51cc: $00
    rst $38                                       ; $51cd: $ff
    inc e                                         ; $51ce: $1c
    db $fc                                        ; $51cf: $fc
    ld c, $fe                                     ; $51d0: $0e $fe
    ld b, $fe                                     ; $51d2: $06 $fe
    rlca                                          ; $51d4: $07
    rst $38                                       ; $51d5: $ff
    inc bc                                        ; $51d6: $03
    rst $38                                       ; $51d7: $ff
    ld h, a                                       ; $51d8: $67
    rst $38                                       ; $51d9: $ff
    rst $38                                       ; $51da: $ff
    rst $38                                       ; $51db: $ff
    cp $fe                                        ; $51dc: $fe $fe
    inc bc                                        ; $51de: $03
    inc bc                                        ; $51df: $03
    inc bc                                        ; $51e0: $03
    inc bc                                        ; $51e1: $03
    inc bc                                        ; $51e2: $03
    inc bc                                        ; $51e3: $03
    inc bc                                        ; $51e4: $03
    inc bc                                        ; $51e5: $03
    ld bc, $0001                                  ; $51e6: $01 $01 $00
    nop                                           ; $51e9: $00
    nop                                           ; $51ea: $00
    nop                                           ; $51eb: $00
    nop                                           ; $51ec: $00
    nop                                           ; $51ed: $00
    ld c, $ff                                     ; $51ee: $0e $ff
    ccf                                           ; $51f0: $3f
    rst $38                                       ; $51f1: $ff
    rst $38                                       ; $51f2: $ff
    rst $38                                       ; $51f3: $ff
    di                                            ; $51f4: $f3
    di                                            ; $51f5: $f3
    jp Jump_000_03c3                              ; $51f6: $c3 $c3 $03


    inc bc                                        ; $51f9: $03
    inc bc                                        ; $51fa: $03
    inc bc                                        ; $51fb: $03
    ld bc, $0001                                  ; $51fc: $01 $01 $00
    rst $38                                       ; $51ff: $ff
    inc bc                                        ; $5200: $03
    rst $38                                       ; $5201: $ff
    rlca                                          ; $5202: $07
    rst $38                                       ; $5203: $ff
    rrca                                          ; $5204: $0f
    rst $38                                       ; $5205: $ff
    ccf                                           ; $5206: $3f
    rst $38                                       ; $5207: $ff
    db $fd                                        ; $5208: $fd
    rst $38                                       ; $5209: $ff
    cp $ff                                        ; $520a: $fe $ff
    xor $ff                                       ; $520c: $ee $ff
    nop                                           ; $520e: $00
    rst $38                                       ; $520f: $ff
    nop                                           ; $5210: $00
    rst $38                                       ; $5211: $ff
    add c                                         ; $5212: $81
    rst $38                                       ; $5213: $ff
    add c                                         ; $5214: $81
    rst $38                                       ; $5215: $ff
    jp $e7ff                                      ; $5216: $c3 $ff $e7


    rst $38                                       ; $5219: $ff
    rst $38                                       ; $521a: $ff
    rst $38                                       ; $521b: $ff
    db $fd                                        ; $521c: $fd
    rst $38                                       ; $521d: $ff
    nop                                           ; $521e: $00
    rst $38                                       ; $521f: $ff
    ret nz                                        ; $5220: $c0

    rst $38                                       ; $5221: $ff
    ldh [rIE], a                                  ; $5222: $e0 $ff
    ldh a, [rIE]                                  ; $5224: $f0 $ff
    db $fc                                        ; $5226: $fc
    rst $38                                       ; $5227: $ff
    rst $38                                       ; $5228: $ff
    rst $38                                       ; $5229: $ff
    ld a, a                                       ; $522a: $7f
    rst $38                                       ; $522b: $ff
    ld h, a                                       ; $522c: $67
    rst $20                                       ; $522d: $e7
    ld [hl], b                                    ; $522e: $70
    rst $38                                       ; $522f: $ff
    db $fc                                        ; $5230: $fc
    rst $38                                       ; $5231: $ff
    rst $38                                       ; $5232: $ff
    rst $38                                       ; $5233: $ff
    rst $08                                       ; $5234: $cf
    rst $08                                       ; $5235: $cf
    jp $c0c3                                      ; $5236: $c3 $c3 $c0


    ret nz                                        ; $5239: $c0

    ret nz                                        ; $523a: $c0

    ret nz                                        ; $523b: $c0

    add b                                         ; $523c: $80
    add b                                         ; $523d: $80
    ret nz                                        ; $523e: $c0

    ret nz                                        ; $523f: $c0

    ret nz                                        ; $5240: $c0

    ret nz                                        ; $5241: $c0

    ret nz                                        ; $5242: $c0

    ret nz                                        ; $5243: $c0

    ret nz                                        ; $5244: $c0

    ret nz                                        ; $5245: $c0

    add b                                         ; $5246: $80
    add b                                         ; $5247: $80
    nop                                           ; $5248: $00
    nop                                           ; $5249: $00
    nop                                           ; $524a: $00
    nop                                           ; $524b: $00
    nop                                           ; $524c: $00
    nop                                           ; $524d: $00
    dec c                                         ; $524e: $0d
    sbc e                                         ; $524f: $9b
    inc de                                        ; $5250: $13
    and e                                         ; $5251: $a3
    and h                                         ; $5252: $a4
    and l                                         ; $5253: $a5
    xor [hl]                                      ; $5254: $ae
    xor a                                         ; $5255: $af
    or b                                          ; $5256: $b0
    sbc h                                         ; $5257: $9c
    sbc l                                         ; $5258: $9d
    sbc [hl]                                      ; $5259: $9e
    and [hl]                                      ; $525a: $a6
    and a                                         ; $525b: $a7
    xor b                                         ; $525c: $a8
    or c                                          ; $525d: $b1
    or d                                          ; $525e: $b2
    or e                                          ; $525f: $b3
    cp b                                          ; $5260: $b8
    cp c                                          ; $5261: $b9
    cp d                                          ; $5262: $ba
    cp [hl]                                       ; $5263: $be
    or d                                          ; $5264: $b2
    cp a                                          ; $5265: $bf
    jp $c5c4                                      ; $5266: $c3 $c4 $c5


    nop                                           ; $5269: $00
    ld bc, $0302                                  ; $526a: $01 $02 $03
    nop                                           ; $526d: $00
    nop                                           ; $526e: $00
    ld a, [bc]                                    ; $526f: $0a
    dec bc                                        ; $5270: $0b
    inc c                                         ; $5271: $0c
    nop                                           ; $5272: $00
    inc d                                         ; $5273: $14
    dec d                                         ; $5274: $15
    ld d, $17                                     ; $5275: $16 $17
    jr jr_04a_5299                                ; $5277: $18 $20

    ld hl, $0622                                  ; $5279: $21 $22 $06
    inc hl                                        ; $527c: $23
    add hl, hl                                    ; $527d: $29
    ld a, [hl+]                                   ; $527e: $2a
    dec bc                                        ; $527f: $0b
    ld b, $2b                                     ; $5280: $06 $2b
    cpl                                           ; $5282: $2f
    jr nc, jr_04a_52b6                            ; $5283: $30 $31

    ld b, $32                                     ; $5285: $06 $32
    ld [hl], $37                                  ; $5287: $36 $37
    ld b, $06                                     ; $5289: $06 $06
    jr c, jr_04a_52cc                             ; $528b: $38 $3f

    ld b, b                                       ; $528d: $40
    ld b, c                                       ; $528e: $41
    ld b, d                                       ; $528f: $42
    ld b, e                                       ; $5290: $43
    nop                                           ; $5291: $00
    ld c, e                                       ; $5292: $4b
    ld c, h                                       ; $5293: $4c
    ld b, $06                                     ; $5294: $06 $06
    ld c, l                                       ; $5296: $4d
    nop                                           ; $5297: $00
    ld d, h                                       ; $5298: $54

jr_04a_5299:
    ld d, l                                       ; $5299: $55
    ld d, [hl]                                    ; $529a: $56
    ld b, $06                                     ; $529b: $06 $06
    ld d, a                                       ; $529d: $57
    ld e, b                                       ; $529e: $58
    ld h, b                                       ; $529f: $60
    ld h, c                                       ; $52a0: $61
    ld b, $06                                     ; $52a1: $06 $06
    ld b, $62                                     ; $52a3: $06 $62
    ld h, e                                       ; $52a5: $63
    ld l, d                                       ; $52a6: $6a
    ld l, e                                       ; $52a7: $6b
    ld b, $6c                                     ; $52a8: $06 $6c
    ld b, $6d                                     ; $52aa: $06 $6d
    ld l, [hl]                                    ; $52ac: $6e
    ld [hl], l                                    ; $52ad: $75
    halt                                          ; $52ae: $76
    ld l, h                                       ; $52af: $6c
    ld b, $06                                     ; $52b0: $06 $06
    ld l, l                                       ; $52b2: $6d
    ld [hl], a                                    ; $52b3: $77
    ld a, l                                       ; $52b4: $7d
    ld a, [hl]                                    ; $52b5: $7e

jr_04a_52b6:
    ld b, $06                                     ; $52b6: $06 $06
    ld b, $7f                                     ; $52b8: $06 $7f
    add b                                         ; $52ba: $80
    add [hl]                                      ; $52bb: $86
    add a                                         ; $52bc: $87
    ld b, $06                                     ; $52bd: $06 $06
    ld b, $88                                     ; $52bf: $06 $88
    adc c                                         ; $52c1: $89
    nop                                           ; $52c2: $00
    adc a                                         ; $52c3: $8f
    sub b                                         ; $52c4: $90
    sub c                                         ; $52c5: $91
    sub d                                         ; $52c6: $92
    sub e                                         ; $52c7: $93
    nop                                           ; $52c8: $00
    nop                                           ; $52c9: $00

Jump_04a_52ca:
    sbc a                                         ; $52ca: $9f
    and b                                         ; $52cb: $a0

jr_04a_52cc:
    and c                                         ; $52cc: $a1
    ld b, $06                                     ; $52cd: $06 $06
    ld b, $a2                                     ; $52cf: $06 $a2
    nop                                           ; $52d1: $00
    xor c                                         ; $52d2: $a9
    xor d                                         ; $52d3: $aa
    xor e                                         ; $52d4: $ab
    ld b, $06                                     ; $52d5: $06 $06
    ld b, $06                                     ; $52d7: $06 $06
    xor h                                         ; $52d9: $ac
    xor l                                         ; $52da: $ad
    nop                                           ; $52db: $00
    or h                                          ; $52dc: $b4
    or l                                          ; $52dd: $b5
    ld b, $b6                                     ; $52de: $06 $b6
    ld b, $06                                     ; $52e0: $06 $06
    or a                                          ; $52e2: $b7
    nop                                           ; $52e3: $00
    nop                                           ; $52e4: $00
    cp e                                          ; $52e5: $bb
    cp h                                          ; $52e6: $bc
    or [hl]                                       ; $52e7: $b6
    ld b, $06                                     ; $52e8: $06 $06
    ld b, $bd                                     ; $52ea: $06 $bd
    nop                                           ; $52ec: $00
    nop                                           ; $52ed: $00
    ret nz                                        ; $52ee: $c0

    pop bc                                        ; $52ef: $c1
    ld b, $06                                     ; $52f0: $06 $06
    ld b, $06                                     ; $52f2: $06 $06
    jp nz, $c600                                  ; $52f4: $c2 $00 $c6

    rst $00                                       ; $52f7: $c7
    ret z                                         ; $52f8: $c8

    ld b, $06                                     ; $52f9: $06 $06
    ld b, $06                                     ; $52fb: $06 $06
    ret                                           ; $52fd: $c9


    jp z, $cb00                                   ; $52fe: $ca $00 $cb

    call z, $0606                                 ; $5301: $cc $06 $06
    ld b, $06                                     ; $5304: $06 $06
    call $0000                                    ; $5306: $cd $00 $00
    adc $cf                                       ; $5309: $ce $cf
    ret nc                                        ; $530b: $d0

    pop de                                        ; $530c: $d1
    jp nc, $d4d3                                  ; $530d: $d2 $d3 $d4

    nop                                           ; $5310: $00
    ld c, [hl]                                    ; $5311: $4e
    ld c, a                                       ; $5312: $4f
    ld d, b                                       ; $5313: $50
    ld b, $51                                     ; $5314: $06 $51
    ld b, $06                                     ; $5316: $06 $06
    ld d, d                                       ; $5318: $52
    ld d, e                                       ; $5319: $53
    ld e, c                                       ; $531a: $59
    ld e, d                                       ; $531b: $5a
    ld e, e                                       ; $531c: $5b
    ld b, $5c                                     ; $531d: $06 $5c
    ld e, l                                       ; $531f: $5d
    ld b, $5e                                     ; $5320: $06 $5e
    ld e, a                                       ; $5322: $5f
    ld h, h                                       ; $5323: $64
    ld h, l                                       ; $5324: $65
    ld h, [hl]                                    ; $5325: $66
    ld h, a                                       ; $5326: $67
    ld b, $06                                     ; $5327: $06 $06
    ld b, $68                                     ; $5329: $06 $68
    ld l, c                                       ; $532b: $69
    ld l, a                                       ; $532c: $6f
    ld [hl], b                                    ; $532d: $70
    ld [hl], c                                    ; $532e: $71
    ld [hl], d                                    ; $532f: $72
    ld b, $06                                     ; $5330: $06 $06
    ld b, $73                                     ; $5332: $06 $73
    ld [hl], h                                    ; $5334: $74
    ld a, b                                       ; $5335: $78
    ld a, c                                       ; $5336: $79
    ld a, d                                       ; $5337: $7a
    ld b, $06                                     ; $5338: $06 $06
    ld b, $06                                     ; $533a: $06 $06
    ld a, e                                       ; $533c: $7b
    ld a, h                                       ; $533d: $7c
    add c                                         ; $533e: $81
    add d                                         ; $533f: $82
    add e                                         ; $5340: $83
    ld b, $06                                     ; $5341: $06 $06
    ld b, $06                                     ; $5343: $06 $06
    add h                                         ; $5345: $84
    add l                                         ; $5346: $85
    adc d                                         ; $5347: $8a
    adc e                                         ; $5348: $8b
    adc h                                         ; $5349: $8c
    ld b, $06                                     ; $534a: $06 $06
    ld b, $8c                                     ; $534c: $06 $8c
    adc l                                         ; $534e: $8d
    adc [hl]                                      ; $534f: $8e
    nop                                           ; $5350: $00
    sub h                                         ; $5351: $94
    sub l                                         ; $5352: $95
    sub [hl]                                      ; $5353: $96
    sub a                                         ; $5354: $97
    sbc b                                         ; $5355: $98
    sbc c                                         ; $5356: $99
    sbc d                                         ; $5357: $9a
    nop                                           ; $5358: $00
    nop                                           ; $5359: $00
    inc b                                         ; $535a: $04
    dec b                                         ; $535b: $05
    ld b, $07                                     ; $535c: $06 $07
    ld [$0606], sp                                ; $535e: $08 $06 $06
    ld b, $09                                     ; $5361: $06 $09
    nop                                           ; $5363: $00
    dec c                                         ; $5364: $0d
    ld c, $0f                                     ; $5365: $0e $0f
    db $10                                        ; $5367: $10
    ld de, $0606                                  ; $5368: $11 $06 $06
    ld b, $06                                     ; $536b: $06 $06
    ld [de], a                                    ; $536d: $12
    inc de                                        ; $536e: $13
    add hl, de                                    ; $536f: $19
    ld a, [de]                                    ; $5370: $1a
    dec de                                        ; $5371: $1b
    inc e                                         ; $5372: $1c
    dec e                                         ; $5373: $1d
    ld b, $06                                     ; $5374: $06 $06
    ld b, $06                                     ; $5376: $06 $06
    ld e, $1f                                     ; $5378: $1e $1f
    inc h                                         ; $537a: $24
    dec h                                         ; $537b: $25
    ld h, $06                                     ; $537c: $26 $06
    ld b, $06                                     ; $537e: $06 $06
    ld b, $06                                     ; $5380: $06 $06
    ld b, $27                                     ; $5382: $06 $27
    jr z, jr_04a_5386                             ; $5384: $28 $00

jr_04a_5386:
    inc l                                         ; $5386: $2c
    dec l                                         ; $5387: $2d
    ld b, $06                                     ; $5388: $06 $06
    ld b, $06                                     ; $538a: $06 $06
    ld b, $06                                     ; $538c: $06 $06
    ld l, $00                                     ; $538e: $2e $00
    nop                                           ; $5390: $00
    inc sp                                        ; $5391: $33
    inc [hl]                                      ; $5392: $34
    ld b, $06                                     ; $5393: $06 $06
    ld b, $06                                     ; $5395: $06 $06
    ld b, $06                                     ; $5397: $06 $06
    dec [hl]                                      ; $5399: $35
    nop                                           ; $539a: $00
    nop                                           ; $539b: $00
    add hl, sp                                    ; $539c: $39
    ld a, [hl-]                                   ; $539d: $3a
    dec sp                                        ; $539e: $3b
    ld b, $06                                     ; $539f: $06 $06
    ld b, $3c                                     ; $53a1: $06 $3c
    dec a                                         ; $53a3: $3d
    ld a, $00                                     ; $53a4: $3e $00
    nop                                           ; $53a6: $00
    nop                                           ; $53a7: $00
    ld b, h                                       ; $53a8: $44
    ld b, l                                       ; $53a9: $45
    ld b, [hl]                                    ; $53aa: $46
    ld b, a                                       ; $53ab: $47
    ld c, b                                       ; $53ac: $48
    ld c, c                                       ; $53ad: $49
    ld c, d                                       ; $53ae: $4a
    nop                                           ; $53af: $00
    nop                                           ; $53b0: $00
    nop                                           ; $53b1: $00
    inc b                                         ; $53b2: $04
    dec b                                         ; $53b3: $05
    ld b, $07                                     ; $53b4: $06 $07
    ld [$0606], sp                                ; $53b6: $08 $06 $06
    ld b, $09                                     ; $53b9: $06 $09
    nop                                           ; $53bb: $00
    dec c                                         ; $53bc: $0d
    ld c, $0f                                     ; $53bd: $0e $0f
    db $10                                        ; $53bf: $10
    ld de, $0606                                  ; $53c0: $11 $06 $06
    ld b, $06                                     ; $53c3: $06 $06
    ld [de], a                                    ; $53c5: $12
    inc de                                        ; $53c6: $13
    add hl, de                                    ; $53c7: $19
    ld a, [de]                                    ; $53c8: $1a
    dec de                                        ; $53c9: $1b
    inc e                                         ; $53ca: $1c
    dec e                                         ; $53cb: $1d
    ld b, $06                                     ; $53cc: $06 $06
    ld b, $06                                     ; $53ce: $06 $06
    ld e, $1f                                     ; $53d0: $1e $1f
    inc h                                         ; $53d2: $24
    dec h                                         ; $53d3: $25
    ld h, $06                                     ; $53d4: $26 $06
    ld b, $06                                     ; $53d6: $06 $06
    ld b, $06                                     ; $53d8: $06 $06
    ld b, $27                                     ; $53da: $06 $27
    jr z, jr_04a_53de                             ; $53dc: $28 $00

jr_04a_53de:
    inc l                                         ; $53de: $2c
    dec l                                         ; $53df: $2d
    ld b, $06                                     ; $53e0: $06 $06
    ld b, $06                                     ; $53e2: $06 $06
    ld b, $06                                     ; $53e4: $06 $06
    ld l, $00                                     ; $53e6: $2e $00
    nop                                           ; $53e8: $00
    inc sp                                        ; $53e9: $33
    inc [hl]                                      ; $53ea: $34
    ld b, $06                                     ; $53eb: $06 $06
    ld b, $06                                     ; $53ed: $06 $06
    ld b, $06                                     ; $53ef: $06 $06
    dec [hl]                                      ; $53f1: $35
    nop                                           ; $53f2: $00
    nop                                           ; $53f3: $00
    add hl, sp                                    ; $53f4: $39
    ld a, [hl-]                                   ; $53f5: $3a
    dec sp                                        ; $53f6: $3b
    ld b, $06                                     ; $53f7: $06 $06
    ld b, $3c                                     ; $53f9: $06 $3c
    dec a                                         ; $53fb: $3d
    ld a, $00                                     ; $53fc: $3e $00
    nop                                           ; $53fe: $00
    nop                                           ; $53ff: $00
    ld b, h                                       ; $5400: $44
    ld b, l                                       ; $5401: $45
    ld b, [hl]                                    ; $5402: $46
    ld b, a                                       ; $5403: $47
    ld c, b                                       ; $5404: $48
    ld c, c                                       ; $5405: $49
    ld c, d                                       ; $5406: $4a
    nop                                           ; $5407: $00
    nop                                           ; $5408: $00
    nop                                           ; $5409: $00
    nop                                           ; $540a: $00
    nop                                           ; $540b: $00
    nop                                           ; $540c: $00

jr_04a_540d:
    nop                                           ; $540d: $00
    nop                                           ; $540e: $00
    nop                                           ; $540f: $00
    push de                                       ; $5410: $d5
    nop                                           ; $5411: $00
    rst $38                                       ; $5412: $ff
    xor $ff                                       ; $5413: $ee $ff
    cp $e6                                        ; $5415: $fe $e6
    xor d                                         ; $5417: $aa
    db $e3                                        ; $5418: $e3
    rst $28                                       ; $5419: $ef
    nop                                           ; $541a: $00
    ld d, l                                       ; $541b: $55
    xor d                                         ; $541c: $aa
    db $fc                                        ; $541d: $fc
    xor $88                                       ; $541e: $ee $88
    db $ec                                        ; $5420: $ec
    ldh [rNR43], a                                ; $5421: $e0 $22
    ld hl, sp-$18                                 ; $5423: $f8 $e8
    xor d                                         ; $5425: $aa
    db $fc                                        ; $5426: $fc
    and $d5                                       ; $5427: $e6 $d5
    rst $38                                       ; $5429: $ff
    nop                                           ; $542a: $00
    ld [$3d00], a                                 ; $542b: $ea $00 $3d
    add b                                         ; $542e: $80
    ld c, $70                                     ; $542f: $0e $70
    inc bc                                        ; $5431: $03
    rst $38                                       ; $5432: $ff
    xor b                                         ; $5433: $a8
    rlca                                          ; $5434: $07
    ret c                                         ; $5435: $d8

    inc e                                         ; $5436: $1c
    and d                                         ; $5437: $a2
    ld [hl], b                                    ; $5438: $70
    rlca                                          ; $5439: $07
    ret nz                                        ; $543a: $c0

    ld a, a                                       ; $543b: $7f
    ld a, [hl+]                                   ; $543c: $2a
    nop                                           ; $543d: $00
    db $dd                                        ; $543e: $dd
    ld [hl-], a                                   ; $543f: $32
    ld [hl-], a                                   ; $5440: $32
    call $faff                                    ; $5441: $cd $ff $fa
    ldh [rIF], a                                  ; $5444: $e0 $0f
    rst $38                                       ; $5446: $ff
    ld [hl], a                                    ; $5447: $77
    rst $38                                       ; $5448: $ff
    rst $38                                       ; $5449: $ff
    ld hl, sp-$20                                 ; $544a: $f8 $e0
    db $fc                                        ; $544c: $fc
    ldh [$80], a                                  ; $544d: $e0 $80
    rst $38                                       ; $544f: $ff
    add b                                         ; $5450: $80
    rst $38                                       ; $5451: $ff
    cp $80                                        ; $5452: $fe $80
    db $f4                                        ; $5454: $f4
    ld d, l                                       ; $5455: $55
    nop                                           ; $5456: $00

Jump_04a_5457:
    xor a                                         ; $5457: $af
    nop                                           ; $5458: $00
    call c, $f002                                 ; $5459: $dc $02 $f0
    ld a, [hl]                                    ; $545c: $7e
    adc b                                         ; $545d: $88
    ldh [rLCDC], a                                ; $545e: $e0 $40
    db $dd                                        ; $5460: $dd
    jr nz, jr_04a_540d                            ; $5461: $20 $aa

    ld h, b                                       ; $5463: $60
    rst $30                                       ; $5464: $f7

jr_04a_5465:
    ld [hl], c                                    ; $5465: $71
    ldh [rPCM34], a                               ; $5466: $e0 $77
    db $dd                                        ; $5468: $dd
    inc sp                                        ; $5469: $33
    inc sp                                        ; $546a: $33
    add b                                         ; $546b: $80
    db $fd                                        ; $546c: $fd
    ld hl, sp+$00                                 ; $546d: $f8 $00
    cp $7c                                        ; $546f: $fe $7c
    ld [c], a                                     ; $5471: $e2
    ld [hl], a                                    ; $5472: $77
    cp $00                                        ; $5473: $fe $00
    xor b                                         ; $5475: $a8
    ld h, e                                       ; $5476: $63
    ld [c], a                                     ; $5477: $e2
    rrca                                          ; $5478: $0f
    nop                                           ; $5479: $00
    ld a, a                                       ; $547a: $7f
    ld l, h                                       ; $547b: $6c
    ld [c], a                                     ; $547c: $e2
    rst $20                                       ; $547d: $e7
    ld a, a                                       ; $547e: $7f
    nop                                           ; $547f: $00
    ld a, [hl+]                                   ; $5480: $2a
    add b                                         ; $5481: $80
    rst $38                                       ; $5482: $ff
    adc b                                         ; $5483: $88
    and $5e                                       ; $5484: $e6 $5e
    ld [bc], a                                    ; $5486: $02
    pop af                                        ; $5487: $f1
    rst $38                                       ; $5488: $ff
    rrca                                          ; $5489: $0f
    jp nz, Jump_000_022f                          ; $548a: $c2 $2f $02

    rst $38                                       ; $548d: $ff
    nop                                           ; $548e: $00
    ld [$ff20], a                                 ; $548f: $ea $20 $ff
    ld [hl], a                                    ; $5492: $77
    and b                                         ; $5493: $a0
    ld [$dd40], a                                 ; $5494: $ea $40 $dd
    ld [$34ba], sp                                ; $5497: $08 $ba $34
    ld a, a                                       ; $549a: $7f
    ld a, a                                       ; $549b: $7f
    ld a, [hl+]                                   ; $549c: $2a
    cp $dd                                        ; $549d: $fe $dd
    rst $38                                       ; $549f: $ff
    ld [hl-], a                                   ; $54a0: $32
    rst $38                                       ; $54a1: $ff
    nop                                           ; $54a2: $00
    db $fd                                        ; $54a3: $fd
    cp b                                          ; $54a4: $b8
    ldh a, [$db]                                  ; $54a5: $f0 $db
    add b                                         ; $54a7: $80
    rst $38                                       ; $54a8: $ff
    adc b                                         ; $54a9: $88
    add $f0                                       ; $54aa: $c6 $f0
    inc bc                                        ; $54ac: $03
    xor b                                         ; $54ad: $a8
    or e                                          ; $54ae: $b3
    ret nz                                        ; $54af: $c0

    xor [hl]                                      ; $54b0: $ae
    cp a                                          ; $54b1: $bf
    ld [bc], a                                    ; $54b2: $02
    ld [hl], a                                    ; $54b3: $77
    ld a, [bc]                                    ; $54b4: $0a
    xor [hl]                                      ; $54b5: $ae
    inc b                                         ; $54b6: $04
    db $dd                                        ; $54b7: $dd
    or e                                          ; $54b8: $b3
    ret nz                                        ; $54b9: $c0

    ld [hl], a                                    ; $54ba: $77
    ld l, $af                                     ; $54bb: $2e $af
    ret nz                                        ; $54bd: $c0

    db $dd                                        ; $54be: $dd
    inc sp                                        ; $54bf: $33
    or e                                          ; $54c0: $b3
    add b                                         ; $54c1: $80
    call Call_000_201f                            ; $54c2: $cd $1f $20
    db $e4                                        ; $54c5: $e4
    ld e, $e1                                     ; $54c6: $1e $e1
    push hl                                       ; $54c8: $e5
    dec d                                         ; $54c9: $15
    adc [hl]                                      ; $54ca: $8e
    ret nc                                        ; $54cb: $d0

    ldh a, [$f0]                                  ; $54cc: $f0 $f0
    jp z, $ff80                                   ; $54ce: $ca $80 $ff

    xor e                                         ; $54d1: $ab
    nop                                           ; $54d2: $00
    ld d, [hl]                                    ; $54d3: $56
    rst $38                                       ; $54d4: $ff
    nop                                           ; $54d5: $00
    cp b                                          ; $54d6: $b8
    rlca                                          ; $54d7: $07
    ld a, b                                       ; $54d8: $78
    ld a, [bc]                                    ; $54d9: $0a
    db $e4                                        ; $54da: $e4
    rra                                           ; $54db: $1f
    adc b                                         ; $54dc: $88
    ld a, a                                       ; $54dd: $7f
    ld a, $e8                                     ; $54de: $3e $e8
    rra                                           ; $54e0: $1f
    jr c, jr_04a_5465                             ; $54e1: $38 $82

    ld c, $71                                     ; $54e3: $0e $71
    ld a, b                                       ; $54e5: $78
    ldh [rNR12], a                                ; $54e6: $e0 $12
    add b                                         ; $54e8: $80
    and $32                                       ; $54e9: $e6 $32
    add b                                         ; $54eb: $80
    adc $10                                       ; $54ec: $ce $10
    rst $00                                       ; $54ee: $c7
    rst $38                                       ; $54ef: $ff
    and d                                         ; $54f0: $a2
    ld [c], a                                     ; $54f1: $e2
    xor $db                                       ; $54f2: $ee $db
    add b                                         ; $54f4: $80
    push af                                       ; $54f5: $f5
    rst $38                                       ; $54f6: $ff
    ld d, a                                       ; $54f7: $57
    nop                                           ; $54f8: $00
    adc [hl]                                      ; $54f9: $8e
    ld bc, $0558                                  ; $54fa: $01 $58 $05
    ld [hl], b                                    ; $54fd: $70
    rrca                                          ; $54fe: $0f
    ld c, a                                       ; $54ff: $4f
    ret nz                                        ; $5500: $c0

    ld l, $82                                     ; $5501: $2e $82
    ld a, a                                       ; $5503: $7f
    db $10                                        ; $5504: $10
    ldh [$88], a                                  ; $5505: $e0 $88
    pop bc                                        ; $5507: $c1
    rst $38                                       ; $5508: $ff
    adc b                                         ; $5509: $88
    ret nz                                        ; $550a: $c0

    cp $00                                        ; $550b: $fe $00
    ld [c], a                                     ; $550d: $e2
    adc d                                         ; $550e: $8a
    ld l, $e4                                     ; $550f: $2e $e4
    dec e                                         ; $5511: $1d
    ld [hl+], a                                   ; $5512: $22
    adc e                                         ; $5513: $8b
    rlca                                          ; $5514: $07
    ccf                                           ; $5515: $3f
    ld a, a                                       ; $5516: $7f
    ld a, [hl+]                                   ; $5517: $2a
    cp a                                          ; $5518: $bf
    db $dd                                        ; $5519: $dd
    rst $38                                       ; $551a: $ff
    inc sp                                        ; $551b: $33
    add b                                         ; $551c: $80
    adc $80                                       ; $551d: $ce $80
    rst $38                                       ; $551f: $ff
    ld a, d                                       ; $5520: $7a
    add b                                         ; $5521: $80
    rst $38                                       ; $5522: $ff
    ld [hl+], a                                   ; $5523: $22
    inc d                                         ; $5524: $14
    and b                                         ; $5525: $a0
    ld a, b                                       ; $5526: $78
    add b                                         ; $5527: $80
    dec e                                         ; $5528: $1d
    ret nz                                        ; $5529: $c0

    adc h                                         ; $552a: $8c
    pop bc                                        ; $552b: $c1
    db $d3                                        ; $552c: $d3
    ld bc, $47fe                                  ; $552d: $01 $fe $47
    and b                                         ; $5530: $a0
    adc b                                         ; $5531: $88
    pop bc                                        ; $5532: $c1
    rst $38                                       ; $5533: $ff
    ld a, b                                       ; $5534: $78
    pop hl                                        ; $5535: $e1
    ld [bc], a                                    ; $5536: $02
    xor e                                         ; $5537: $ab
    rst $38                                       ; $5538: $ff
    rlca                                          ; $5539: $07
    ld a, a                                       ; $553a: $7f
    jr z, @-$3f                                   ; $553b: $28 $bf

    call c, $a8ff                                 ; $553d: $dc $ff $a8
    cp d                                          ; $5540: $ba
    rra                                           ; $5541: $1f
    ld d, l                                       ; $5542: $55
    rst $38                                       ; $5543: $ff
    ld a, [bc]                                    ; $5544: $0a
    cp a                                          ; $5545: $bf
    sbc l                                         ; $5546: $9d
    nop                                           ; $5547: $00
    ret nc                                        ; $5548: $d0

    add b                                         ; $5549: $80
    rst $38                                       ; $554a: $ff
    add b                                         ; $554b: $80
    rst $38                                       ; $554c: $ff
    cp $80                                        ; $554d: $fe $80
    adc c                                         ; $554f: $89
    ld [$7500], a                                 ; $5550: $ea $00 $75
    add b                                         ; $5553: $80
    ld a, [hl-]                                   ; $5554: $3a
    ret nz                                        ; $5555: $c0

    dec c                                         ; $5556: $0d
    rst $38                                       ; $5557: $ff
    and b                                         ; $5558: $a0
    rlca                                          ; $5559: $07
    ld hl, sp+$01                                 ; $555a: $f8 $01
    xor d                                         ; $555c: $aa
    rlca                                          ; $555d: $07
    ld hl, sp-$80                                 ; $555e: $f8 $80
    rst $28                                       ; $5560: $ef
    ld [$f770], a                                 ; $5561: $ea $70 $f7
    xor b                                         ; $5564: $a8
    adc b                                         ; $5565: $88
    and b                                         ; $5566: $a0
    xor d                                         ; $5567: $aa
    cp $77                                        ; $5568: $fe $77
    adc a                                         ; $556a: $8f
    rst $38                                       ; $556b: $ff
    xor b                                         ; $556c: $a8
    cp $dc                                        ; $556d: $fe $dc
    nop                                           ; $556f: $00
    rst $38                                       ; $5570: $ff
    add b                                         ; $5571: $80
    rst $38                                       ; $5572: $ff
    nop                                           ; $5573: $00
    rst $18                                       ; $5574: $df
    nop                                           ; $5575: $00
    ei                                            ; $5576: $fb
    cp h                                          ; $5577: $bc
    inc bc                                        ; $5578: $03
    nop                                           ; $5579: $00
    jp $ff08                                      ; $557a: $c3 $08 $ff


    ld [bc], a                                    ; $557d: $02
    xor d                                         ; $557e: $aa
    ld bc, $77df                                  ; $557f: $01 $df $77
    ld [bc], a                                    ; $5582: $02
    xor a                                         ; $5583: $af
    nop                                           ; $5584: $00
    rst $18                                       ; $5585: $df
    ld a, b                                       ; $5586: $78
    ldh [rPCM34], a                               ; $5587: $e0 $77
    jr z, jr_04a_5593                             ; $5589: $28 $08

    nop                                           ; $558b: $00
    or d                                          ; $558c: $b2
    and b                                         ; $558d: $a0
    and l                                         ; $558e: $a5
    adc [hl]                                      ; $558f: $8e
    add c                                         ; $5590: $81
    ld d, b                                       ; $5591: $50
    add b                                         ; $5592: $80

jr_04a_5593:
    rst $38                                       ; $5593: $ff
    nop                                           ; $5594: $00
    rst $18                                       ; $5595: $df
    nop                                           ; $5596: $00
    adc $00                                       ; $5597: $ce $00
    xor d                                         ; $5599: $aa
    ld bc, $80f3                                  ; $559a: $01 $f3 $80
    sbc a                                         ; $559d: $9f
    add b                                         ; $559e: $80
    rst $38                                       ; $559f: $ff
    nop                                           ; $55a0: $00
    rst $18                                       ; $55a1: $df
    nop                                           ; $55a2: $00
    push bc                                       ; $55a3: $c5

jr_04a_55a4:
    adc b                                         ; $55a4: $88
    add l                                         ; $55a5: $85
    ld a, b                                       ; $55a6: $78
    add l                                         ; $55a7: $85
    nop                                           ; $55a8: $00
    ld a, a                                       ; $55a9: $7f
    ld hl, sp-$80                                 ; $55aa: $f8 $80
    rst $38                                       ; $55ac: $ff
    nop                                           ; $55ad: $00
    rst $18                                       ; $55ae: $df
    nop                                           ; $55af: $00
    push bc                                       ; $55b0: $c5
    nop                                           ; $55b1: $00
    rst $38                                       ; $55b2: $ff
    ld [bc], a                                    ; $55b3: $02
    ld [$1f21], a                                 ; $55b4: $ea $21 $1f
    ld [hl], a                                    ; $55b7: $77
    and d                                         ; $55b8: $a2
    rst $28                                       ; $55b9: $ef
    ld b, b                                       ; $55ba: $40
    rst $18                                       ; $55bb: $df
    nop                                           ; $55bc: $00
    add [hl]                                      ; $55bd: $86
    nop                                           ; $55be: $00
    ld a, [hl]                                    ; $55bf: $7e
    ld l, [hl]                                    ; $55c0: $6e
    ld c, l                                       ; $55c1: $4d
    jr c, jr_04a_55a4                             ; $55c2: $38 $e0

    ld h, l                                       ; $55c4: $65
    nop                                           ; $55c5: $00
    ld a, a                                       ; $55c6: $7f
    nop                                           ; $55c7: $00
    ld d, e                                       ; $55c8: $53
    ld e, $60                                     ; $55c9: $1e $60
    ld b, $00                                     ; $55cb: $06 $00
    add b                                         ; $55cd: $80
    ld hl, sp-$7f                                 ; $55ce: $f8 $81
    ldh [$80], a                                  ; $55d0: $e0 $80
    add c                                         ; $55d2: $81
    nop                                           ; $55d3: $00
    ld a, a                                       ; $55d4: $7f
    nop                                           ; $55d5: $00
    ld a, a                                       ; $55d6: $7f
    add b                                         ; $55d7: $80
    rst $38                                       ; $55d8: $ff
    ld a, h                                       ; $55d9: $7c
    inc hl                                        ; $55da: $23
    ld d, h                                       ; $55db: $54
    nop                                           ; $55dc: $00
    xor b                                         ; $55dd: $a8
    rst $28                                       ; $55de: $ef
    rlca                                          ; $55df: $07
    jp nz, $870b                                  ; $55e0: $c2 $0b $87

    ld [$aa82], sp                                ; $55e3: $08 $82 $aa
    cp a                                          ; $55e6: $bf
    ld d, a                                       ; $55e7: $57
    add b                                         ; $55e8: $80
    add b                                         ; $55e9: $80
    add d                                         ; $55ea: $82
    nop                                           ; $55eb: $00
    xor a                                         ; $55ec: $af
    db $10                                        ; $55ed: $10
    push af                                       ; $55ee: $f5
    ldh a, [rLYC]                                 ; $55ef: $f0 $45
    add b                                         ; $55f1: $80
    rst $38                                       ; $55f2: $ff
    nop                                           ; $55f3: $00
    dec l                                         ; $55f4: $2d
    adc b                                         ; $55f5: $88
    pop hl                                        ; $55f6: $e1
    ld b, d                                       ; $55f7: $42
    ei                                            ; $55f8: $fb
    dec bc                                        ; $55f9: $0b
    adc a                                         ; $55fa: $8f
    sub b                                         ; $55fb: $90
    ld h, b                                       ; $55fc: $60
    rst $38                                       ; $55fd: $ff
    rst $38                                       ; $55fe: $ff
    xor b                                         ; $55ff: $a8
    cp a                                          ; $5600: $bf
    ld d, [hl]                                    ; $5601: $56
    cp a                                          ; $5602: $bf
    rst $38                                       ; $5603: $ff
    ld [$9dba], sp                                ; $5604: $08 $ba $9d
    db $fd                                        ; $5607: $fd
    xor d                                         ; $5608: $aa
    ld c, $20                                     ; $5609: $0e $20
    xor d                                         ; $560b: $aa
    pop hl                                        ; $560c: $e1
    rst $38                                       ; $560d: $ff
    nop                                           ; $560e: $00
    rst $38                                       ; $560f: $ff
    ld [hl], b                                    ; $5610: $70
    adc a                                         ; $5611: $8f
    ld [hl], b                                    ; $5612: $70
    dec hl                                        ; $5613: $2b
    add b                                         ; $5614: $80
    ld sp, hl                                     ; $5615: $f9
    ld d, h                                       ; $5616: $54
    ld bc, $fe20                                  ; $5617: $01 $20 $fe
    adc b                                         ; $561a: $88
    and $aa                                       ; $561b: $e6 $aa
    ei                                            ; $561d: $fb
    db $fd                                        ; $561e: $fd
    rst $38                                       ; $561f: $ff
    and b                                         ; $5620: $a0
    ei                                            ; $5621: $fb
    ei                                            ; $5622: $fb
    ret nz                                        ; $5623: $c0

    adc h                                         ; $5624: $8c
    ldh [$88], a                                  ; $5625: $e0 $88
    db $e3                                        ; $5627: $e3
    add b                                         ; $5628: $80
    push hl                                       ; $5629: $e5
    nop                                           ; $562a: $00
    rst $38                                       ; $562b: $ff
    ldh a, [$7b]                                  ; $562c: $f0 $7b
    nop                                           ; $562e: $00
    ld a, [$0280]                                 ; $562f: $fa $80 $02
    ld a, a                                       ; $5632: $7f
    ldh [$85], a                                  ; $5633: $e0 $85
    add sp, -$10                                  ; $5635: $e8 $f0
    cp $a8                                        ; $5637: $fe $a8
    cp $80                                        ; $5639: $fe $80
    ldh [$2c], a                                  ; $563b: $e0 $2c
    and b                                         ; $563d: $a0
    ldh [$fc], a                                  ; $563e: $e0 $fc
    ld [c], a                                     ; $5640: $e2
    ei                                            ; $5641: $fb
    ld [hl], l                                    ; $5642: $75
    ld a, b                                       ; $5643: $78
    ldh [$d9], a                                  ; $5644: $e0 $d9
    ld a, b                                       ; $5646: $78
    and $00                                       ; $5647: $e6 $00
    rst $38                                       ; $5649: $ff
    db $ec                                        ; $564a: $ec
    add b                                         ; $564b: $80
    rst $38                                       ; $564c: $ff
    nop                                           ; $564d: $00
    sbc $80                                       ; $564e: $de $80
    ld a, [bc]                                    ; $5650: $0a
    ld a, b                                       ; $5651: $78
    and $8a                                       ; $5652: $e6 $8a
    rst $38                                       ; $5654: $ff
    ld h, a                                       ; $5655: $67
    rra                                           ; $5656: $1f
    rst $38                                       ; $5657: $ff
    adc d                                         ; $5658: $8a
    xor a                                         ; $5659: $af
    db $dd                                        ; $565a: $dd
    rst $18                                       ; $565b: $df
    nop                                           ; $565c: $00
    rst $38                                       ; $565d: $ff
    ld b, $25                                     ; $565e: $06 $25
    sub b                                         ; $5660: $90
    push bc                                       ; $5661: $c5
    ld hl, sp+$70                                 ; $5662: $f8 $70
    ld [hl], e                                    ; $5664: $73
    add b                                         ; $5665: $80
    rst $38                                       ; $5666: $ff
    add b                                         ; $5667: $80
    and l                                         ; $5668: $a5
    xor e                                         ; $5669: $ab
    nop                                           ; $566a: $00
    ld d, a                                       ; $566b: $57
    add b                                         ; $566c: $80
    inc e                                         ; $566d: $1c
    add c                                         ; $566e: $81
    db $e3                                        ; $566f: $e3
    add b                                         ; $5670: $80
    ld b, [hl]                                    ; $5671: $46
    nop                                           ; $5672: $00
    rst $38                                       ; $5673: $ff
    rst $38                                       ; $5674: $ff
    rst $38                                       ; $5675: $ff
    add b                                         ; $5676: $80
    rst $38                                       ; $5677: $ff
    adc b                                         ; $5678: $88
    db $e3                                        ; $5679: $e3
    add b                                         ; $567a: $80
    ld b, b                                       ; $567b: $40
    ld [hl], d                                    ; $567c: $72
    rst $38                                       ; $567d: $ff
    ld a, [bc]                                    ; $567e: $0a
    pop bc                                        ; $567f: $c1
    ccf                                           ; $5680: $3f
    ld [bc], a                                    ; $5681: $02
    xor a                                         ; $5682: $af
    ld [bc], a                                    ; $5683: $02
    rst $38                                       ; $5684: $ff
    jr nz, jr_04a_5706                            ; $5685: $20 $7f

    xor d                                         ; $5687: $aa
    db $10                                        ; $5688: $10
    ld [hl], a                                    ; $5689: $77
    jr nz, @-$04                                  ; $568a: $20 $fa

    nop                                           ; $568c: $00
    db $fd                                        ; $568d: $fd
    ld hl, sp+$25                                 ; $568e: $f8 $25
    nop                                           ; $5690: $00
    nop                                           ; $5691: $00
    ld c, l                                       ; $5692: $4d
    nop                                           ; $5693: $00
    nop                                           ; $5694: $00
    nop                                           ; $5695: $00
    ld c, $7e                                     ; $5696: $0e $7e
    ld d, [hl]                                    ; $5698: $56
    ld [hl], e                                    ; $5699: $73
    nop                                           ; $569a: $00
    ld a, [de]                                    ; $569b: $1a
    and b                                         ; $569c: $a0
    ld [$0200], sp                                ; $569d: $08 $00 $02
    ld b, b                                       ; $56a0: $40
    ld l, c                                       ; $56a1: $69
    adc b                                         ; $56a2: $88
    inc bc                                        ; $56a3: $03
    and b                                         ; $56a4: $a0
    ld [$0200], sp                                ; $56a5: $08 $00 $02
    nop                                           ; $56a8: $00
    inc hl                                        ; $56a9: $23
    ld d, [hl]                                    ; $56aa: $56
    ld [hl-], a                                   ; $56ab: $32
    and b                                         ; $56ac: $a0
    ld [$0200], sp                                ; $56ad: $08 $00 $02
    ld d, [hl]                                    ; $56b0: $56
    ld [hl-], a                                   ; $56b1: $32
    adc b                                         ; $56b2: $88
    inc bc                                        ; $56b3: $03
    and b                                         ; $56b4: $a0
    ld [$0200], sp                                ; $56b5: $08 $00 $02
    adc b                                         ; $56b8: $88
    inc bc                                        ; $56b9: $03
    ld b, b                                       ; $56ba: $40
    inc de                                        ; $56bb: $13
    and b                                         ; $56bc: $a0
    ld [$2508], sp                                ; $56bd: $08 $08 $25
    ld [$0825], sp                                ; $56c0: $08 $25 $08
    dec h                                         ; $56c3: $25
    ld [$1825], sp                                ; $56c4: $08 $25 $18
    nop                                           ; $56c7: $00
    call Call_04a_57d3                            ; $56c8: $cd $d3 $57
    call Call_04a_56fe                            ; $56cb: $cd $fe $56
    ld a, $01                                     ; $56ce: $3e $01
    ldh [rVBK], a                                 ; $56d0: $e0 $4f
    ld hl, $d000                                  ; $56d2: $21 $00 $d0
    ld de, $9000                                  ; $56d5: $11 $00 $90
    ld c, $80                                     ; $56d8: $0e $80
    call Call_000_2096                            ; $56da: $cd $96 $20
    ld hl, $d800                                  ; $56dd: $21 $00 $d8
    ld de, $8800                                  ; $56e0: $11 $00 $88
    ld c, $20                                     ; $56e3: $0e $20
    call Call_000_2096                            ; $56e5: $cd $96 $20
    ld hl, $5410                                  ; $56e8: $21 $10 $54
    ld de, $d000                                  ; $56eb: $11 $00 $d0
    call Call_000_1f2f                            ; $56ee: $cd $2f $1f
    call Call_04a_610a                            ; $56f1: $cd $0a $61
    ld hl, $5696                                  ; $56f4: $21 $96 $56
    ld de, $0205                                  ; $56f7: $11 $05 $02
    call Call_000_0595                            ; $56fa: $cd $95 $05
    ret                                           ; $56fd: $c9


Call_04a_56fe:
    ld hl, $da00                                  ; $56fe: $21 $00 $da

jr_04a_5701:
    ld a, [hl+]                                   ; $5701: $2a
    cp $ff                                        ; $5702: $fe $ff
    jr z, jr_04a_5727                             ; $5704: $28 $21

jr_04a_5706:
    ld e, a                                       ; $5706: $5f
    ld a, [hl+]                                   ; $5707: $2a
    ld d, a                                       ; $5708: $57
    ld a, [hl+]                                   ; $5709: $2a
    ld c, a                                       ; $570a: $4f
    ld a, e                                       ; $570b: $7b
    cp $03                                        ; $570c: $fe $03
    jr z, jr_04a_5714                             ; $570e: $28 $04

    cp $02                                        ; $5710: $fe $02
    jr nz, jr_04a_5725                            ; $5712: $20 $11

jr_04a_5714:
    ld a, c                                       ; $5714: $79
    and a                                         ; $5715: $a7
    jr z, jr_04a_5725                             ; $5716: $28 $0d

    ld a, c                                       ; $5718: $79
    rrca                                          ; $5719: $0f
    rrca                                          ; $571a: $0f
    rrca                                          ; $571b: $0f
    and $07                                       ; $571c: $e6 $07
    ld e, $00                                     ; $571e: $1e $00
    push hl                                       ; $5720: $e5
    call Call_04a_5728                            ; $5721: $cd $28 $57
    pop hl                                        ; $5724: $e1

jr_04a_5725:
    jr jr_04a_5701                                ; $5725: $18 $da

jr_04a_5727:
    ret                                           ; $5727: $c9


Call_04a_5728:
    add a                                         ; $5728: $87
    add a                                         ; $5729: $87
    add a                                         ; $572a: $87
    ld hl, $5793                                  ; $572b: $21 $93 $57
    add l                                         ; $572e: $85
    ld l, a                                       ; $572f: $6f
    jr nc, jr_04a_5733                            ; $5730: $30 $01

    inc h                                         ; $5732: $24

jr_04a_5733:
    ld a, [hl+]                                   ; $5733: $2a
    add d                                         ; $5734: $82
    ld d, a                                       ; $5735: $57
    ld a, [hl+]                                   ; $5736: $2a
    add e                                         ; $5737: $83
    ld b, a                                       ; $5738: $47
    ld a, [hl+]                                   ; $5739: $2a
    ld e, a                                       ; $573a: $5f
    ld a, [hl+]                                   ; $573b: $2a
    ld a, [hl+]                                   ; $573c: $2a
    ld h, [hl]                                    ; $573d: $66
    ld l, a                                       ; $573e: $6f

jr_04a_573f:
    push de                                       ; $573f: $d5

jr_04a_5740:
    ld a, [hl]                                    ; $5740: $7e
    and a                                         ; $5741: $a7
    jr z, jr_04a_5783                             ; $5742: $28 $3f

    bit 7, d                                      ; $5744: $cb $7a
    jr nz, jr_04a_5783                            ; $5746: $20 $3b

    ld a, d                                       ; $5748: $7a
    cp $14                                        ; $5749: $fe $14
    jr nc, jr_04a_5783                            ; $574b: $30 $36

    push bc                                       ; $574d: $c5
    push de                                       ; $574e: $d5
    push hl                                       ; $574f: $e5
    ld a, d                                       ; $5750: $7a
    ld l, [hl]                                    ; $5751: $6e
    ld h, $00                                     ; $5752: $26 $00
    add hl, hl                                    ; $5754: $29
    add hl, hl                                    ; $5755: $29
    add hl, hl                                    ; $5756: $29
    add hl, hl                                    ; $5757: $29
    ld de, $4008                                  ; $5758: $11 $08 $40
    add hl, de                                    ; $575b: $19
    ld e, l                                       ; $575c: $5d
    ld d, h                                       ; $575d: $54
    add a                                         ; $575e: $87
    add a                                         ; $575f: $87
    add a                                         ; $5760: $87
    add b                                         ; $5761: $80
    ld l, a                                       ; $5762: $6f
    ld h, $00                                     ; $5763: $26 $00
    add hl, hl                                    ; $5765: $29
    add hl, hl                                    ; $5766: $29
    add hl, hl                                    ; $5767: $29
    add hl, hl                                    ; $5768: $29
    ld a, $00                                     ; $5769: $3e $00
    add l                                         ; $576b: $85
    ld l, a                                       ; $576c: $6f
    ld a, h                                       ; $576d: $7c
    adc $d0                                       ; $576e: $ce $d0
    ld h, a                                       ; $5770: $67
    ld a, c                                       ; $5771: $79
    cp $08                                        ; $5772: $fe $08
    jr c, jr_04a_5778                             ; $5774: $38 $02

    ld c, $08                                     ; $5776: $0e $08

jr_04a_5778:
    push bc                                       ; $5778: $c5
    call Call_04a_61dd                            ; $5779: $cd $dd $61
    pop bc                                        ; $577c: $c1
    dec c                                         ; $577d: $0d
    jr nz, jr_04a_5778                            ; $577e: $20 $f8

    pop hl                                        ; $5780: $e1
    pop de                                        ; $5781: $d1
    pop bc                                        ; $5782: $c1

jr_04a_5783:
    inc hl                                        ; $5783: $23
    inc d                                         ; $5784: $14
    dec e                                         ; $5785: $1d
    jr nz, jr_04a_5740                            ; $5786: $20 $b8

    pop de                                        ; $5788: $d1
    inc b                                         ; $5789: $04
    ld a, c                                       ; $578a: $79
    sub $08                                       ; $578b: $d6 $08
    ld c, a                                       ; $578d: $4f
    jr z, jr_04a_5792                             ; $578e: $28 $02

    jr nc, jr_04a_573f                            ; $5790: $30 $ad

jr_04a_5792:
    ret                                           ; $5792: $c9


    nop                                           ; $5793: $00
    nop                                           ; $5794: $00
    ld bc, $9801                                  ; $5795: $01 $01 $98
    ld b, h                                       ; $5798: $44
    nop                                           ; $5799: $00
    nop                                           ; $579a: $00
    nop                                           ; $579b: $00
    nop                                           ; $579c: $00
    ld bc, $9902                                  ; $579d: $01 $02 $99
    ld b, h                                       ; $57a0: $44
    nop                                           ; $57a1: $00
    nop                                           ; $57a2: $00
    rst $38                                       ; $57a3: $ff
    nop                                           ; $57a4: $00
    inc bc                                        ; $57a5: $03
    inc bc                                        ; $57a6: $03
    sbc e                                         ; $57a7: $9b
    ld b, h                                       ; $57a8: $44
    nop                                           ; $57a9: $00
    nop                                           ; $57aa: $00
    rst $38                                       ; $57ab: $ff
    nop                                           ; $57ac: $00
    inc bc                                        ; $57ad: $03
    inc b                                         ; $57ae: $04
    and h                                         ; $57af: $a4
    ld b, h                                       ; $57b0: $44
    nop                                           ; $57b1: $00
    nop                                           ; $57b2: $00
    rst $38                                       ; $57b3: $ff
    nop                                           ; $57b4: $00
    inc bc                                        ; $57b5: $03
    dec b                                         ; $57b6: $05
    or b                                          ; $57b7: $b0
    ld b, h                                       ; $57b8: $44
    nop                                           ; $57b9: $00
    nop                                           ; $57ba: $00
    rst $38                                       ; $57bb: $ff
    nop                                           ; $57bc: $00
    inc bc                                        ; $57bd: $03
    ld b, $bf                                     ; $57be: $06 $bf
    ld b, h                                       ; $57c0: $44
    nop                                           ; $57c1: $00
    nop                                           ; $57c2: $00
    rst $38                                       ; $57c3: $ff
    nop                                           ; $57c4: $00
    inc bc                                        ; $57c5: $03
    rlca                                          ; $57c6: $07
    pop de                                        ; $57c7: $d1
    ld b, h                                       ; $57c8: $44
    nop                                           ; $57c9: $00
    nop                                           ; $57ca: $00
    rst $38                                       ; $57cb: $ff
    nop                                           ; $57cc: $00
    inc bc                                        ; $57cd: $03
    ld [$44e6], sp                                ; $57ce: $08 $e6 $44
    nop                                           ; $57d1: $00
    nop                                           ; $57d2: $00

Call_04a_57d3:
    ld hl, $da00                                  ; $57d3: $21 $00 $da

jr_04a_57d6:
    ld a, [hl+]                                   ; $57d6: $2a
    cp $ff                                        ; $57d7: $fe $ff
    jr z, jr_04a_57f9                             ; $57d9: $28 $1e

    ld e, a                                       ; $57db: $5f
    ld a, [hl+]                                   ; $57dc: $2a
    ld d, a                                       ; $57dd: $57
    ld a, [hl+]                                   ; $57de: $2a
    ld b, a                                       ; $57df: $47
    ld a, e                                       ; $57e0: $7b
    cp $01                                        ; $57e1: $fe $01
    jr nz, jr_04a_57f7                            ; $57e3: $20 $12

    ld a, b                                       ; $57e5: $78
    rrca                                          ; $57e6: $0f
    rrca                                          ; $57e7: $0f
    rrca                                          ; $57e8: $0f
    and $07                                       ; $57e9: $e6 $07
    jr z, jr_04a_57f7                             ; $57eb: $28 $0a

    cp $07                                        ; $57ed: $fe $07
    jr z, jr_04a_57f7                             ; $57ef: $28 $06

    ld e, b                                       ; $57f1: $58
    push hl                                       ; $57f2: $e5
    call Call_04a_580a                            ; $57f3: $cd $0a $58
    pop hl                                        ; $57f6: $e1

jr_04a_57f7:
    jr jr_04a_57d6                                ; $57f7: $18 $dd

jr_04a_57f9:
    ld a, [$c3b7]                                 ; $57f9: $fa $b7 $c3
    cp $0c                                        ; $57fc: $fe $0c
    jr nz, jr_04a_5809                            ; $57fe: $20 $09

    ld a, $07                                     ; $5800: $3e $07
    ld d, $0a                                     ; $5802: $16 $0a
    ld e, $3f                                     ; $5804: $1e $3f
    call Call_04a_580a                            ; $5806: $cd $0a $58

jr_04a_5809:
    ret                                           ; $5809: $c9


Call_04a_580a:
    add a                                         ; $580a: $87
    add a                                         ; $580b: $87
    add a                                         ; $580c: $87
    ld hl, $60ca                                  ; $580d: $21 $ca $60
    add l                                         ; $5810: $85
    ld l, a                                       ; $5811: $6f
    jr nc, jr_04a_5815                            ; $5812: $30 $01

    inc h                                         ; $5814: $24

jr_04a_5815:
    ld a, [hl+]                                   ; $5815: $2a
    add d                                         ; $5816: $82
    ld d, a                                       ; $5817: $57
    ld a, [hl+]                                   ; $5818: $2a
    add e                                         ; $5819: $83
    ld b, a                                       ; $581a: $47
    ld a, [hl+]                                   ; $581b: $2a
    ld e, a                                       ; $581c: $5f
    ld a, [hl+]                                   ; $581d: $2a
    ld c, a                                       ; $581e: $4f
    ld a, [hl+]                                   ; $581f: $2a
    ld h, [hl]                                    ; $5820: $66
    ld l, a                                       ; $5821: $6f

jr_04a_5822:
    push de                                       ; $5822: $d5

jr_04a_5823:
    ld a, [hl]                                    ; $5823: $7e
    and a                                         ; $5824: $a7
    jr z, jr_04a_586e                             ; $5825: $28 $47

    bit 7, d                                      ; $5827: $cb $7a
    jr nz, jr_04a_586e                            ; $5829: $20 $43

    ld a, d                                       ; $582b: $7a
    cp $14                                        ; $582c: $fe $14
    jr nc, jr_04a_586e                            ; $582e: $30 $3e

    push bc                                       ; $5830: $c5
    push de                                       ; $5831: $d5
    push hl                                       ; $5832: $e5
    ld c, d                                       ; $5833: $4a
    ld l, [hl]                                    ; $5834: $6e
    ld h, $00                                     ; $5835: $26 $00
    add hl, hl                                    ; $5837: $29
    add hl, hl                                    ; $5838: $29
    add hl, hl                                    ; $5839: $29
    add hl, hl                                    ; $583a: $29
    ld de, $587c                                  ; $583b: $11 $7c $58
    add hl, de                                    ; $583e: $19
    ld e, l                                       ; $583f: $5d
    ld d, h                                       ; $5840: $54
    ld h, c                                       ; $5841: $61
    ld l, $00                                     ; $5842: $2e $00
    srl h                                         ; $5844: $cb $3c
    rr l                                          ; $5846: $cb $1d
    ld a, b                                       ; $5848: $78
    add a                                         ; $5849: $87
    add l                                         ; $584a: $85
    ld l, a                                       ; $584b: $6f
    jr nc, jr_04a_584f                            ; $584c: $30 $01

    inc h                                         ; $584e: $24

jr_04a_584f:
    ld bc, $d000                                  ; $584f: $01 $00 $d0
    add hl, bc                                    ; $5852: $09
    call Call_04a_61dd                            ; $5853: $cd $dd $61
    call Call_04a_61dd                            ; $5856: $cd $dd $61
    call Call_04a_61dd                            ; $5859: $cd $dd $61
    call Call_04a_61dd                            ; $585c: $cd $dd $61
    call Call_04a_61dd                            ; $585f: $cd $dd $61
    call Call_04a_61dd                            ; $5862: $cd $dd $61
    call Call_04a_61dd                            ; $5865: $cd $dd $61
    call Call_04a_61dd                            ; $5868: $cd $dd $61
    pop hl                                        ; $586b: $e1
    pop de                                        ; $586c: $d1
    pop bc                                        ; $586d: $c1

jr_04a_586e:
    inc hl                                        ; $586e: $23
    inc d                                         ; $586f: $14
    dec e                                         ; $5870: $1d
    jr nz, jr_04a_5823                            ; $5871: $20 $b0

    pop de                                        ; $5873: $d1
    ld a, b                                       ; $5874: $78
    add $08                                       ; $5875: $c6 $08
    ld b, a                                       ; $5877: $47
    dec c                                         ; $5878: $0d
    jr nz, jr_04a_5822                            ; $5879: $20 $a7

    ret                                           ; $587b: $c9


    rst $38                                       ; $587c: $ff
    nop                                           ; $587d: $00
    rst $38                                       ; $587e: $ff
    ld bc, $73ff                                  ; $587f: $01 $ff $73
    rst $38                                       ; $5882: $ff
    ei                                            ; $5883: $fb
    rst $08                                       ; $5884: $cf
    rst $08                                       ; $5885: $cf
    rst $00                                       ; $5886: $c7
    rst $00                                       ; $5887: $c7
    rst $20                                       ; $5888: $e7
    ld h, a                                       ; $5889: $67
    di                                            ; $588a: $f3
    inc sp                                        ; $588b: $33
    rst $38                                       ; $588c: $ff
    nop                                           ; $588d: $00
    rst $38                                       ; $588e: $ff
    pop hl                                        ; $588f: $e1
    rst $38                                       ; $5890: $ff
    pop af                                        ; $5891: $f1
    ccf                                           ; $5892: $3f
    inc sp                                        ; $5893: $33
    ccf                                           ; $5894: $3f
    dec sp                                        ; $5895: $3b
    rra                                           ; $5896: $1f
    dec de                                        ; $5897: $1b
    sbc [hl]                                      ; $5898: $9e
    sbc [hl]                                      ; $5899: $9e
    sbc [hl]                                      ; $589a: $9e
    sbc [hl]                                      ; $589b: $9e
    rst $38                                       ; $589c: $ff
    ldh a, [rIE]                                  ; $589d: $f0 $ff
    ld hl, sp-$61                                 ; $589f: $f8 $9f
    sbc c                                         ; $58a1: $99
    rra                                           ; $58a2: $1f
    dec de                                        ; $58a3: $1b
    ccf                                           ; $58a4: $3f
    dec sp                                        ; $58a5: $3b
    ccf                                           ; $58a6: $3f
    scf                                           ; $58a7: $37
    ld a, $36                                     ; $58a8: $3e $36
    ld a, [hl]                                    ; $58aa: $7e
    ld a, [hl]                                    ; $58ab: $7e
    rst $38                                       ; $58ac: $ff
    nop                                           ; $58ad: $00
    rst $38                                       ; $58ae: $ff
    ldh a, [rIE]                                  ; $58af: $f0 $ff
    ld hl, sp-$61                                 ; $58b1: $f8 $9f
    sbc e                                         ; $58b3: $9b
    rra                                           ; $58b4: $1f
    rra                                           ; $58b5: $1f
    ld a, $36                                     ; $58b6: $3e $36
    ld a, $36                                     ; $58b8: $3e $36
    ld a, [hl]                                    ; $58ba: $7e
    ld a, [hl]                                    ; $58bb: $7e
    rst $38                                       ; $58bc: $ff
    nop                                           ; $58bd: $00
    rst $38                                       ; $58be: $ff
    nop                                           ; $58bf: $00
    rst $38                                       ; $58c0: $ff
    ld bc, $81ff                                  ; $58c1: $01 $ff $81
    rst $38                                       ; $58c4: $ff
    jp $efff                                      ; $58c5: $c3 $ff $ef


    ld a, a                                       ; $58c8: $7f
    ld a, a                                       ; $58c9: $7f
    dec sp                                        ; $58ca: $3b
    dec sp                                        ; $58cb: $3b
    rst $38                                       ; $58cc: $ff
    nop                                           ; $58cd: $00
    rst $38                                       ; $58ce: $ff
    ldh [rIE], a                                  ; $58cf: $e0 $ff
    pop af                                        ; $58d1: $f1
    cp a                                          ; $58d2: $bf
    or e                                          ; $58d3: $b3
    rra                                           ; $58d4: $1f
    dec de                                        ; $58d5: $1b
    ld e, $1e                                     ; $58d6: $1e $1e
    sbc [hl]                                      ; $58d8: $9e
    sbc [hl]                                      ; $58d9: $9e
    adc [hl]                                      ; $58da: $8e
    adc [hl]                                      ; $58db: $8e
    rst $38                                       ; $58dc: $ff
    ld [hl], b                                    ; $58dd: $70
    rst $38                                       ; $58de: $ff
    ld hl, sp-$61                                 ; $58df: $f8 $9f
    sbc b                                         ; $58e1: $98
    rra                                           ; $58e2: $1f
    jr jr_04a_5924                                ; $58e3: $18 $3f

    jr nc, @+$41                                  ; $58e5: $30 $3f

    jr nc, jr_04a_5968                            ; $58e7: $30 $7f

    ld h, b                                       ; $58e9: $60
    ld a, a                                       ; $58ea: $7f
    ld h, b                                       ; $58eb: $60
    rst $38                                       ; $58ec: $ff
    nop                                           ; $58ed: $00
    rst $38                                       ; $58ee: $ff
    nop                                           ; $58ef: $00
    rst $38                                       ; $58f0: $ff
    nop                                           ; $58f1: $00
    rst $38                                       ; $58f2: $ff
    nop                                           ; $58f3: $00
    rst $38                                       ; $58f4: $ff
    nop                                           ; $58f5: $00
    rst $38                                       ; $58f6: $ff
    inc bc                                        ; $58f7: $03
    rst $38                                       ; $58f8: $ff
    rlca                                          ; $58f9: $07
    db $fc                                        ; $58fa: $fc
    inc b                                         ; $58fb: $04
    rst $38                                       ; $58fc: $ff
    nop                                           ; $58fd: $00
    rst $38                                       ; $58fe: $ff
    nop                                           ; $58ff: $00
    rst $38                                       ; $5900: $ff
    nop                                           ; $5901: $00
    rst $38                                       ; $5902: $ff
    nop                                           ; $5903: $00
    rst $38                                       ; $5904: $ff
    jr @+$01                                      ; $5905: $18 $ff

    inc a                                         ; $5907: $3c
    rst $20                                       ; $5908: $e7
    and h                                         ; $5909: $a4
    rst $20                                       ; $590a: $e7
    and $ff                                       ; $590b: $e6 $ff
    nop                                           ; $590d: $00
    rst $38                                       ; $590e: $ff
    nop                                           ; $590f: $00
    rst $38                                       ; $5910: $ff
    nop                                           ; $5911: $00
    rst $38                                       ; $5912: $ff
    jr @+$01                                      ; $5913: $18 $ff

    inc a                                         ; $5915: $3c
    rst $20                                       ; $5916: $e7
    inc h                                         ; $5917: $24
    rst $20                                       ; $5918: $e7
    ld h, h                                       ; $5919: $64
    rst $08                                       ; $591a: $cf
    ld c, h                                       ; $591b: $4c
    rst $38                                       ; $591c: $ff
    nop                                           ; $591d: $00
    rst $38                                       ; $591e: $ff
    nop                                           ; $591f: $00
    rst $38                                       ; $5920: $ff
    nop                                           ; $5921: $00
    rst $38                                       ; $5922: $ff
    nop                                           ; $5923: $00

jr_04a_5924:
    rst $38                                       ; $5924: $ff
    jr nc, @+$01                                  ; $5925: $30 $ff

    ld a, b                                       ; $5927: $78
    rst $08                                       ; $5928: $cf
    ret z                                         ; $5929: $c8

    adc a                                         ; $592a: $8f
    adc b                                         ; $592b: $88
    rst $38                                       ; $592c: $ff
    nop                                           ; $592d: $00
    rst $38                                       ; $592e: $ff
    nop                                           ; $592f: $00
    rst $38                                       ; $5930: $ff
    nop                                           ; $5931: $00
    rst $38                                       ; $5932: $ff
    nop                                           ; $5933: $00
    rst $38                                       ; $5934: $ff
    nop                                           ; $5935: $00
    rst $38                                       ; $5936: $ff
    ld bc, $03ff                                  ; $5937: $01 $ff $03
    cp $c2                                        ; $593a: $fe $c2
    rst $38                                       ; $593c: $ff
    nop                                           ; $593d: $00
    rst $38                                       ; $593e: $ff
    nop                                           ; $593f: $00
    rst $38                                       ; $5940: $ff
    nop                                           ; $5941: $00
    rst $38                                       ; $5942: $ff
    ld bc, $03ff                                  ; $5943: $01 $ff $03
    cp $86                                        ; $5946: $fe $86
    db $fc                                        ; $5948: $fc
    call nz, $6c7c                                ; $5949: $c4 $7c $6c
    rst $38                                       ; $594c: $ff
    nop                                           ; $594d: $00
    rst $38                                       ; $594e: $ff
    nop                                           ; $594f: $00
    rst $38                                       ; $5950: $ff
    nop                                           ; $5951: $00
    rst $38                                       ; $5952: $ff
    add b                                         ; $5953: $80
    rst $38                                       ; $5954: $ff
    ret nz                                        ; $5955: $c0

    ld a, a                                       ; $5956: $7f
    ld b, b                                       ; $5957: $40
    ld a, a                                       ; $5958: $7f
    ld b, b                                       ; $5959: $40
    rst $38                                       ; $595a: $ff
    ret nz                                        ; $595b: $c0

    nop                                           ; $595c: $00
    nop                                           ; $595d: $00
    nop                                           ; $595e: $00
    nop                                           ; $595f: $00
    nop                                           ; $5960: $00
    nop                                           ; $5961: $00
    nop                                           ; $5962: $00
    nop                                           ; $5963: $00
    nop                                           ; $5964: $00
    nop                                           ; $5965: $00
    nop                                           ; $5966: $00
    nop                                           ; $5967: $00

jr_04a_5968:
    nop                                           ; $5968: $00
    nop                                           ; $5969: $00
    nop                                           ; $596a: $00
    nop                                           ; $596b: $00
    nop                                           ; $596c: $00
    nop                                           ; $596d: $00
    nop                                           ; $596e: $00
    nop                                           ; $596f: $00
    nop                                           ; $5970: $00
    nop                                           ; $5971: $00
    nop                                           ; $5972: $00
    nop                                           ; $5973: $00
    nop                                           ; $5974: $00
    nop                                           ; $5975: $00
    nop                                           ; $5976: $00
    nop                                           ; $5977: $00
    nop                                           ; $5978: $00
    nop                                           ; $5979: $00
    nop                                           ; $597a: $00
    nop                                           ; $597b: $00
    di                                            ; $597c: $f3
    inc sp                                        ; $597d: $33
    ld sp, hl                                     ; $597e: $f9
    add hl, de                                    ; $597f: $19
    ld sp, hl                                     ; $5980: $f9
    ld a, c                                       ; $5981: $79
    db $fc                                        ; $5982: $fc
    db $fc                                        ; $5983: $fc
    call z, $c4cc                                 ; $5984: $cc $cc $c4
    call nz, $e6e6                                ; $5987: $c4 $e6 $e6
    ld [c], a                                     ; $598a: $e2
    ld h, d                                       ; $598b: $62
    adc [hl]                                      ; $598c: $8e
    adc [hl]                                      ; $598d: $8e
    call z, $cccc                                 ; $598e: $cc $cc $cc
    call z, $cccc                                 ; $5991: $cc $cc $cc
    ret z                                         ; $5994: $c8

    ret z                                         ; $5995: $c8

    ld c, b                                       ; $5996: $48
    ld c, b                                       ; $5997: $48
    ld b, b                                       ; $5998: $40
    ld b, b                                       ; $5999: $40
    nop                                           ; $599a: $00
    nop                                           ; $599b: $00
    ld a, [hl]                                    ; $599c: $7e
    ld a, [hl]                                    ; $599d: $7e
    ld [hl], e                                    ; $599e: $73
    ld [hl], e                                    ; $599f: $73
    ld h, e                                       ; $59a0: $63
    ld h, e                                       ; $59a1: $63
    db $e3                                        ; $59a2: $e3
    db $e3                                        ; $59a3: $e3
    rst $00                                       ; $59a4: $c7
    rst $00                                       ; $59a5: $c7
    rst $00                                       ; $59a6: $c7
    rst $00                                       ; $59a7: $c7
    adc h                                         ; $59a8: $8c
    adc h                                         ; $59a9: $8c
    adc b                                         ; $59aa: $88
    adc b                                         ; $59ab: $88
    ld a, a                                       ; $59ac: $7f
    ld a, a                                       ; $59ad: $7f
    ld [hl], e                                    ; $59ae: $73
    ld [hl], e                                    ; $59af: $73
    ld h, e                                       ; $59b0: $63
    ld h, e                                       ; $59b1: $63
    db $e3                                        ; $59b2: $e3
    db $e3                                        ; $59b3: $e3
    rst $00                                       ; $59b4: $c7
    rst $00                                       ; $59b5: $c7
    rst $00                                       ; $59b6: $c7
    rst $00                                       ; $59b7: $c7
    adc h                                         ; $59b8: $8c
    adc h                                         ; $59b9: $8c
    adc b                                         ; $59ba: $88
    adc b                                         ; $59bb: $88
    ld sp, $3131                                  ; $59bc: $31 $31 $31
    ld sp, $1919                                  ; $59bf: $31 $19 $19
    sbc b                                         ; $59c2: $98
    sbc b                                         ; $59c3: $98
    sbc b                                         ; $59c4: $98
    sbc b                                         ; $59c5: $98
    adc b                                         ; $59c6: $88
    adc b                                         ; $59c7: $88
    adc h                                         ; $59c8: $8c
    adc h                                         ; $59c9: $8c
    adc h                                         ; $59ca: $8c
    adc h                                         ; $59cb: $8c
    adc h                                         ; $59cc: $8c
    adc h                                         ; $59cd: $8c
    adc h                                         ; $59ce: $8c
    adc h                                         ; $59cf: $8c
    adc h                                         ; $59d0: $8c
    adc h                                         ; $59d1: $8c
    call z, $cccc                                 ; $59d2: $cc $cc $cc
    call z, $c8c8                                 ; $59d5: $cc $c8 $c8
    ld c, b                                       ; $59d8: $48
    ld c, b                                       ; $59d9: $48
    ld [$7f08], sp                                ; $59da: $08 $08 $7f
    ld l, [hl]                                    ; $59dd: $6e
    ld a, a                                       ; $59de: $7f
    ld e, a                                       ; $59df: $5f
    di                                            ; $59e0: $f3
    di                                            ; $59e1: $f3
    db $e3                                        ; $59e2: $e3
    db $e3                                        ; $59e3: $e3
    rst $20                                       ; $59e4: $e7
    rst $20                                       ; $59e5: $e7
    rst $00                                       ; $59e6: $c7
    add $cf                                       ; $59e7: $c6 $cf
    call z, $8c8f                                 ; $59e9: $cc $8f $8c
    db $fc                                        ; $59ec: $fc
    inc b                                         ; $59ed: $04
    cp $06                                        ; $59ee: $fe $06
    rst $38                                       ; $59f0: $ff
    inc bc                                        ; $59f1: $03
    rst $38                                       ; $59f2: $ff
    ld bc, $03ff                                  ; $59f3: $01 $ff $03
    rst $38                                       ; $59f6: $ff
    rlca                                          ; $59f7: $07
    db $fc                                        ; $59f8: $fc
    inc b                                         ; $59f9: $04
    db $fc                                        ; $59fa: $fc
    inc b                                         ; $59fb: $04
    ld h, e                                       ; $59fc: $63
    ld h, d                                       ; $59fd: $62
    inc sp                                        ; $59fe: $33
    inc sp                                        ; $59ff: $33
    ld sp, $1931                                  ; $5a00: $31 $31 $19
    add hl, de                                    ; $5a03: $19
    sbc c                                         ; $5a04: $99
    sbc c                                         ; $5a05: $99
    sbc c                                         ; $5a06: $99
    sbc c                                         ; $5a07: $99
    ret                                           ; $5a08: $c9


    ret                                           ; $5a09: $c9


    ld c, c                                       ; $5a0a: $49
    ld c, c                                       ; $5a0b: $49
    rst $08                                       ; $5a0c: $cf
    ld c, c                                       ; $5a0d: $49
    rst $08                                       ; $5a0e: $cf
    ret                                           ; $5a0f: $c9


    sbc a                                         ; $5a10: $9f
    sbc a                                         ; $5a11: $9f
    sbc l                                         ; $5a12: $9d
    sbc l                                         ; $5a13: $9d
    sbc b                                         ; $5a14: $98
    sbc b                                         ; $5a15: $98
    cp c                                          ; $5a16: $b9
    cp c                                          ; $5a17: $b9
    ld sp, $3331                                  ; $5a18: $31 $31 $33
    inc sp                                        ; $5a1b: $33
    sbc a                                         ; $5a1c: $9f
    sbc c                                         ; $5a1d: $99
    rra                                           ; $5a1e: $1f
    ld de, $bfbf                                  ; $5a1f: $11 $bf $bf
    cp e                                          ; $5a22: $bb
    cp e                                          ; $5a23: $bb
    pop af                                        ; $5a24: $f1
    pop af                                        ; $5a25: $f1
    di                                            ; $5a26: $f3
    di                                            ; $5a27: $f3
    db $e3                                        ; $5a28: $e3
    db $e3                                        ; $5a29: $e3
    ld h, [hl]                                    ; $5a2a: $66
    ld h, [hl]                                    ; $5a2b: $66
    cp $ee                                        ; $5a2c: $fe $ee
    ld a, $3e                                     ; $5a2e: $3e $3e
    inc sp                                        ; $5a30: $33
    inc sp                                        ; $5a31: $33
    ld sp, $1931                                  ; $5a32: $31 $31 $19
    add hl, de                                    ; $5a35: $19
    sbc c                                         ; $5a36: $99
    sbc c                                         ; $5a37: $99
    sbc c                                         ; $5a38: $99
    sbc c                                         ; $5a39: $99
    adc b                                         ; $5a3a: $88
    adc b                                         ; $5a3b: $88
    inc a                                         ; $5a3c: $3c
    inc l                                         ; $5a3d: $2c
    add hl, sp                                    ; $5a3e: $39
    add hl, sp                                    ; $5a3f: $39
    add hl, sp                                    ; $5a40: $39
    add hl, sp                                    ; $5a41: $39
    add hl, de                                    ; $5a42: $19
    add hl, de                                    ; $5a43: $19
    add hl, de                                    ; $5a44: $19
    add hl, de                                    ; $5a45: $19
    sbc e                                         ; $5a46: $9b
    sbc e                                         ; $5a47: $9b
    sbc e                                         ; $5a48: $9b
    sbc e                                         ; $5a49: $9b
    sub e                                         ; $5a4a: $93
    sub e                                         ; $5a4b: $93
    rst $38                                       ; $5a4c: $ff
    add b                                         ; $5a4d: $80
    rst $38                                       ; $5a4e: $ff
    add b                                         ; $5a4f: $80
    rst $38                                       ; $5a50: $ff
    jr nc, @+$01                                  ; $5a51: $30 $ff

    ld a, b                                       ; $5a53: $78
    rst $08                                       ; $5a54: $cf
    ret z                                         ; $5a55: $c8

    adc a                                         ; $5a56: $8f
    adc b                                         ; $5a57: $88
    sbc a                                         ; $5a58: $9f
    sbc b                                         ; $5a59: $98
    rra                                           ; $5a5a: $1f
    stop                                          ; $5a5b: $10 $00
    nop                                           ; $5a5d: $00
    nop                                           ; $5a5e: $00
    nop                                           ; $5a5f: $00
    nop                                           ; $5a60: $00
    nop                                           ; $5a61: $00
    nop                                           ; $5a62: $00
    nop                                           ; $5a63: $00
    nop                                           ; $5a64: $00
    nop                                           ; $5a65: $00
    nop                                           ; $5a66: $00
    nop                                           ; $5a67: $00
    nop                                           ; $5a68: $00
    nop                                           ; $5a69: $00
    nop                                           ; $5a6a: $00
    nop                                           ; $5a6b: $00
    nop                                           ; $5a6c: $00
    nop                                           ; $5a6d: $00
    nop                                           ; $5a6e: $00
    nop                                           ; $5a6f: $00
    nop                                           ; $5a70: $00
    nop                                           ; $5a71: $00
    nop                                           ; $5a72: $00
    nop                                           ; $5a73: $00
    nop                                           ; $5a74: $00
    nop                                           ; $5a75: $00
    nop                                           ; $5a76: $00
    nop                                           ; $5a77: $00
    nop                                           ; $5a78: $00
    nop                                           ; $5a79: $00
    nop                                           ; $5a7a: $00
    nop                                           ; $5a7b: $00
    ldh a, [$30]                                  ; $5a7c: $f0 $30
    ld hl, sp+$38                                 ; $5a7e: $f8 $38
    ld hl, sp+$18                                 ; $5a80: $f8 $18
    ld hl, sp+$18                                 ; $5a82: $f8 $18
    db $fc                                        ; $5a84: $fc
    inc c                                         ; $5a85: $0c
    db $fc                                        ; $5a86: $fc
    inc c                                         ; $5a87: $0c
    rst $38                                       ; $5a88: $ff
    rrca                                          ; $5a89: $0f
    rst $38                                       ; $5a8a: $ff
    rlca                                          ; $5a8b: $07
    nop                                           ; $5a8c: $00
    nop                                           ; $5a8d: $00
    nop                                           ; $5a8e: $00
    nop                                           ; $5a8f: $00
    nop                                           ; $5a90: $00
    nop                                           ; $5a91: $00
    nop                                           ; $5a92: $00
    nop                                           ; $5a93: $00
    nop                                           ; $5a94: $00
    nop                                           ; $5a95: $00
    ld h, e                                       ; $5a96: $63
    ld h, e                                       ; $5a97: $63
    rst $38                                       ; $5a98: $ff
    rst $38                                       ; $5a99: $ff
    rst $38                                       ; $5a9a: $ff
    cp h                                          ; $5a9b: $bc
    ld [$0008], sp                                ; $5a9c: $08 $08 $00
    nop                                           ; $5a9f: $00
    nop                                           ; $5aa0: $00
    nop                                           ; $5aa1: $00
    nop                                           ; $5aa2: $00
    nop                                           ; $5aa3: $00
    nop                                           ; $5aa4: $00
    nop                                           ; $5aa5: $00
    sbc a                                         ; $5aa6: $9f
    sbc a                                         ; $5aa7: $9f
    rst $38                                       ; $5aa8: $ff
    rst $38                                       ; $5aa9: $ff
    rst $38                                       ; $5aaa: $ff
    ld [hl], b                                    ; $5aab: $70
    ld [$0008], sp                                ; $5aac: $08 $08 $00
    nop                                           ; $5aaf: $00
    nop                                           ; $5ab0: $00
    nop                                           ; $5ab1: $00
    nop                                           ; $5ab2: $00
    nop                                           ; $5ab3: $00
    nop                                           ; $5ab4: $00

jr_04a_5ab5:
    nop                                           ; $5ab5: $00
    sbc a                                         ; $5ab6: $9f
    sbc a                                         ; $5ab7: $9f
    rst $38                                       ; $5ab8: $ff
    rst $38                                       ; $5ab9: $ff
    rst $38                                       ; $5aba: $ff
    pop af                                        ; $5abb: $f1
    inc b                                         ; $5abc: $04
    inc b                                         ; $5abd: $04
    nop                                           ; $5abe: $00
    nop                                           ; $5abf: $00
    nop                                           ; $5ac0: $00
    nop                                           ; $5ac1: $00
    nop                                           ; $5ac2: $00
    nop                                           ; $5ac3: $00
    nop                                           ; $5ac4: $00
    nop                                           ; $5ac5: $00
    inc a                                         ; $5ac6: $3c
    inc a                                         ; $5ac7: $3c
    rst $38                                       ; $5ac8: $ff
    rst $38                                       ; $5ac9: $ff
    rst $38                                       ; $5aca: $ff
    rst $20                                       ; $5acb: $e7
    nop                                           ; $5acc: $00
    nop                                           ; $5acd: $00
    nop                                           ; $5ace: $00
    nop                                           ; $5acf: $00
    nop                                           ; $5ad0: $00
    nop                                           ; $5ad1: $00
    nop                                           ; $5ad2: $00
    nop                                           ; $5ad3: $00
    nop                                           ; $5ad4: $00
    nop                                           ; $5ad5: $00
    and $e6                                       ; $5ad6: $e6 $e6
    rst $38                                       ; $5ad8: $ff
    rst $38                                       ; $5ad9: $ff
    rst $38                                       ; $5ada: $ff
    cp l                                          ; $5adb: $bd
    rrca                                          ; $5adc: $0f
    inc c                                         ; $5add: $0c
    rra                                           ; $5ade: $1f
    jr jr_04a_5b00                                ; $5adf: $18 $1f

    jr jr_04a_5b02                                ; $5ae1: $18 $1f

    jr jr_04a_5b24                                ; $5ae3: $18 $3f

    jr nc, jr_04a_5b26                            ; $5ae5: $30 $3f

    jr nc, @+$01                                  ; $5ae7: $30 $ff

    ldh a, [rIE]                                  ; $5ae9: $f0 $ff
    ldh [$fe], a                                  ; $5aeb: $e0 $fe
    ld b, $ff                                     ; $5aed: $06 $ff
    inc bc                                        ; $5aef: $03
    rst $38                                       ; $5af0: $ff
    ld bc, $01ff                                  ; $5af1: $01 $ff $01
    rst $38                                       ; $5af4: $ff
    nop                                           ; $5af5: $00
    rst $38                                       ; $5af6: $ff
    nop                                           ; $5af7: $00
    rst $38                                       ; $5af8: $ff
    nop                                           ; $5af9: $00
    rst $38                                       ; $5afa: $ff
    nop                                           ; $5afb: $00
    ld c, b                                       ; $5afc: $48
    ld c, b                                       ; $5afd: $48
    nop                                           ; $5afe: $00
    nop                                           ; $5aff: $00

jr_04a_5b00:
    nop                                           ; $5b00: $00
    nop                                           ; $5b01: $00

jr_04a_5b02:
    add b                                         ; $5b02: $80
    add b                                         ; $5b03: $80
    add b                                         ; $5b04: $80
    add b                                         ; $5b05: $80
    call z, $ffcc                                 ; $5b06: $cc $cc $ff
    ld a, a                                       ; $5b09: $7f
    rst $38                                       ; $5b0a: $ff
    inc sp                                        ; $5b0b: $33
    ld [hl+], a                                   ; $5b0c: $22
    ld [hl+], a                                   ; $5b0d: $22
    ld [bc], a                                    ; $5b0e: $02
    ld [bc], a                                    ; $5b0f: $02
    nop                                           ; $5b10: $00
    nop                                           ; $5b11: $00
    nop                                           ; $5b12: $00
    nop                                           ; $5b13: $00
    nop                                           ; $5b14: $00
    nop                                           ; $5b15: $00
    ld h, a                                       ; $5b16: $67
    ld h, a                                       ; $5b17: $67
    rst $38                                       ; $5b18: $ff
    rst $38                                       ; $5b19: $ff
    rst $38                                       ; $5b1a: $ff
    sbc b                                         ; $5b1b: $98
    ld b, h                                       ; $5b1c: $44
    ld b, h                                       ; $5b1d: $44
    inc b                                         ; $5b1e: $04
    inc b                                         ; $5b1f: $04
    nop                                           ; $5b20: $00
    nop                                           ; $5b21: $00
    nop                                           ; $5b22: $00
    nop                                           ; $5b23: $00

jr_04a_5b24:
    nop                                           ; $5b24: $00
    nop                                           ; $5b25: $00

jr_04a_5b26:
    rst $08                                       ; $5b26: $cf
    rst $08                                       ; $5b27: $cf
    rst $38                                       ; $5b28: $ff
    rst $38                                       ; $5b29: $ff
    rst $38                                       ; $5b2a: $ff
    jr nc, jr_04a_5ab5                            ; $5b2b: $30 $88

    adc b                                         ; $5b2d: $88
    ld [$0008], sp                                ; $5b2e: $08 $08 $00
    nop                                           ; $5b31: $00
    nop                                           ; $5b32: $00
    nop                                           ; $5b33: $00
    nop                                           ; $5b34: $00
    nop                                           ; $5b35: $00
    add hl, sp                                    ; $5b36: $39
    add hl, sp                                    ; $5b37: $39
    rst $38                                       ; $5b38: $ff
    rst $38                                       ; $5b39: $ff
    rst $38                                       ; $5b3a: $ff
    add $93                                       ; $5b3b: $c6 $93
    sub e                                         ; $5b3d: $93
    nop                                           ; $5b3e: $00
    nop                                           ; $5b3f: $00
    nop                                           ; $5b40: $00
    nop                                           ; $5b41: $00
    nop                                           ; $5b42: $00
    nop                                           ; $5b43: $00
    nop                                           ; $5b44: $00
    nop                                           ; $5b45: $00
    call z, $ffcc                                 ; $5b46: $cc $cc $ff
    rst $38                                       ; $5b49: $ff
    rst $38                                       ; $5b4a: $ff
    inc sp                                        ; $5b4b: $33
    ccf                                           ; $5b4c: $3f
    jr nc, @+$41                                  ; $5b4d: $30 $3f

    jr nz, jr_04a_5bd0                            ; $5b4f: $20 $7f

    ld h, b                                       ; $5b51: $60
    ld a, a                                       ; $5b52: $7f
    ld h, b                                       ; $5b53: $60
    ld a, a                                       ; $5b54: $7f
    ld b, b                                       ; $5b55: $40
    rst $38                                       ; $5b56: $ff
    ret nz                                        ; $5b57: $c0

    rst $38                                       ; $5b58: $ff
    ret nz                                        ; $5b59: $c0

    rst $38                                       ; $5b5a: $ff
    add b                                         ; $5b5b: $80
    nop                                           ; $5b5c: $00
    nop                                           ; $5b5d: $00
    nop                                           ; $5b5e: $00
    nop                                           ; $5b5f: $00
    nop                                           ; $5b60: $00
    nop                                           ; $5b61: $00
    nop                                           ; $5b62: $00
    nop                                           ; $5b63: $00
    nop                                           ; $5b64: $00
    nop                                           ; $5b65: $00
    nop                                           ; $5b66: $00
    nop                                           ; $5b67: $00
    nop                                           ; $5b68: $00
    nop                                           ; $5b69: $00
    nop                                           ; $5b6a: $00
    nop                                           ; $5b6b: $00
    nop                                           ; $5b6c: $00
    nop                                           ; $5b6d: $00
    nop                                           ; $5b6e: $00
    nop                                           ; $5b6f: $00
    nop                                           ; $5b70: $00
    nop                                           ; $5b71: $00
    nop                                           ; $5b72: $00
    nop                                           ; $5b73: $00
    nop                                           ; $5b74: $00
    nop                                           ; $5b75: $00
    nop                                           ; $5b76: $00
    nop                                           ; $5b77: $00
    nop                                           ; $5b78: $00
    nop                                           ; $5b79: $00
    nop                                           ; $5b7a: $00
    nop                                           ; $5b7b: $00
    rst $38                                       ; $5b7c: $ff
    inc bc                                        ; $5b7d: $03
    db $fc                                        ; $5b7e: $fc
    inc b                                         ; $5b7f: $04
    db $fc                                        ; $5b80: $fc
    ld [hl], h                                    ; $5b81: $74
    sbc h                                         ; $5b82: $9c
    sbc h                                         ; $5b83: $9c
    adc h                                         ; $5b84: $8c
    adc h                                         ; $5b85: $8c
    add $c6                                       ; $5b86: $c6 $c6

jr_04a_5b88:
    and $66                                       ; $5b88: $e6 $66
    ld a, [c]                                     ; $5b8a: $f2
    ld [hl-], a                                   ; $5b8b: $32
    rst $38                                       ; $5b8c: $ff
    ld b, $f9                                     ; $5b8d: $06 $f9
    adc c                                         ; $5b8f: $89
    ld sp, hl                                     ; $5b90: $f9
    adc c                                         ; $5b91: $89
    ld sp, hl                                     ; $5b92: $f9
    reti                                          ; $5b93: $d9


    ld [hl], e                                    ; $5b94: $73
    ld d, e                                       ; $5b95: $53
    ld [hl], e                                    ; $5b96: $73
    ld d, d                                       ; $5b97: $52
    ld h, a                                       ; $5b98: $67
    ld h, a                                       ; $5b99: $67
    ld h, [hl]                                    ; $5b9a: $66
    ld h, [hl]                                    ; $5b9b: $66
    rst $38                                       ; $5b9c: $ff
    nop                                           ; $5b9d: $00
    rst $38                                       ; $5b9e: $ff
    jr jr_04a_5b88                                ; $5b9f: $18 $e7

    inc h                                         ; $5ba1: $24
    rst $20                                       ; $5ba2: $e7
    ld h, h                                       ; $5ba3: $64
    rst $08                                       ; $5ba4: $cf
    ld c, h                                       ; $5ba5: $4c
    rst $08                                       ; $5ba6: $cf
    ret                                           ; $5ba7: $c9


    rst $18                                       ; $5ba8: $df
    rst $18                                       ; $5ba9: $df
    ld e, c                                       ; $5baa: $59
    ld e, c                                       ; $5bab: $59
    rst $38                                       ; $5bac: $ff
    nop                                           ; $5bad: $00
    rst $38                                       ; $5bae: $ff
    inc bc                                        ; $5baf: $03
    db $fc                                        ; $5bb0: $fc
    inc b                                         ; $5bb1: $04
    db $fc                                        ; $5bb2: $fc
    inc b                                         ; $5bb3: $04
    db $fc                                        ; $5bb4: $fc
    inc b                                         ; $5bb5: $04
    db $fc                                        ; $5bb6: $fc
    call nz, Call_000_3e3e                        ; $5bb7: $c4 $3e $3e
    ld h, $26                                     ; $5bba: $26 $26
    rst $38                                       ; $5bbc: $ff
    ld b, $f9                                     ; $5bbd: $06 $f9
    add hl, bc                                    ; $5bbf: $09
    ld sp, hl                                     ; $5bc0: $f9
    adc c                                         ; $5bc1: $89
    di                                            ; $5bc2: $f3
    sub e                                         ; $5bc3: $93
    di                                            ; $5bc4: $f3
    sub d                                         ; $5bc5: $92
    rst $20                                       ; $5bc6: $e7
    and $67                                       ; $5bc7: $e6 $67
    ld h, h                                       ; $5bc9: $64
    ld h, a                                       ; $5bca: $67
    ld h, h                                       ; $5bcb: $64
    rst $38                                       ; $5bcc: $ff
    nop                                           ; $5bcd: $00
    rst $38                                       ; $5bce: $ff
    nop                                           ; $5bcf: $00

jr_04a_5bd0:
    rst $38                                       ; $5bd0: $ff
    ld bc, $19ff                                  ; $5bd1: $01 $ff $19
    rst $30                                       ; $5bd4: $f7
    dec d                                         ; $5bd5: $15
    di                                            ; $5bd6: $f3
    inc de                                        ; $5bd7: $13
    ld sp, hl                                     ; $5bd8: $f9
    add hl, bc                                    ; $5bd9: $09
    ld sp, hl                                     ; $5bda: $f9
    add hl, bc                                    ; $5bdb: $09
    rst $38                                       ; $5bdc: $ff
    nop                                           ; $5bdd: $00
    rst $38                                       ; $5bde: $ff
    ld b, $fb                                     ; $5bdf: $06 $fb
    adc d                                         ; $5be1: $8a
    ld [hl], e                                    ; $5be2: $73
    ld d, d                                       ; $5be3: $52
    ld [hl], a                                    ; $5be4: $77
    ld d, h                                       ; $5be5: $54
    ld [hl], a                                    ; $5be6: $77
    ld d, h                                       ; $5be7: $54
    daa                                           ; $5be8: $27
    daa                                           ; $5be9: $27

jr_04a_5bea:
    dec h                                         ; $5bea: $25
    dec h                                         ; $5beb: $25
    rst $38                                       ; $5bec: $ff
    nop                                           ; $5bed: $00
    rst $38                                       ; $5bee: $ff
    nop                                           ; $5bef: $00
    rst $38                                       ; $5bf0: $ff
    jr nc, @-$1f                                  ; $5bf1: $30 $df

    ld d, b                                       ; $5bf3: $50
    rst $18                                       ; $5bf4: $df
    ld d, d                                       ; $5bf5: $52
    sbc l                                         ; $5bf6: $9d
    sub l                                         ; $5bf7: $95
    cp h                                          ; $5bf8: $bc
    cp h                                          ; $5bf9: $bc
    inc h                                         ; $5bfa: $24
    inc h                                         ; $5bfb: $24
    rst $38                                       ; $5bfc: $ff
    nop                                           ; $5bfd: $00
    rst $38                                       ; $5bfe: $ff
    nop                                           ; $5bff: $00
    rst $38                                       ; $5c00: $ff
    jr jr_04a_5bea                                ; $5c01: $18 $e7

    dec h                                         ; $5c03: $25
    rst $20                                       ; $5c04: $e7
    dec h                                         ; $5c05: $25
    or $76                                        ; $5c06: $f6 $76
    sub d                                         ; $5c08: $92
    sub d                                         ; $5c09: $92
    sub d                                         ; $5c0a: $92
    sub d                                         ; $5c0b: $92
    rst $38                                       ; $5c0c: $ff
    nop                                           ; $5c0d: $00
    rst $38                                       ; $5c0e: $ff
    ld b, b                                       ; $5c0f: $40
    cp a                                          ; $5c10: $bf
    and b                                         ; $5c11: $a0
    ccf                                           ; $5c12: $3f
    jr nz, jr_04a_5c94                            ; $5c13: $20 $7f

    ld b, b                                       ; $5c15: $40
    ld a, a                                       ; $5c16: $7f
    ld b, b                                       ; $5c17: $40
    ld a, a                                       ; $5c18: $7f
    ld e, b                                       ; $5c19: $58
    rst $28                                       ; $5c1a: $ef
    xor b                                         ; $5c1b: $a8
    rst $38                                       ; $5c1c: $ff
    nop                                           ; $5c1d: $00
    rst $38                                       ; $5c1e: $ff
    nop                                           ; $5c1f: $00
    rst $38                                       ; $5c20: $ff
    nop                                           ; $5c21: $00
    rst $38                                       ; $5c22: $ff
    nop                                           ; $5c23: $00
    rst $38                                       ; $5c24: $ff
    nop                                           ; $5c25: $00
    rst $38                                       ; $5c26: $ff
    inc bc                                        ; $5c27: $03
    cp $02                                        ; $5c28: $fe $02
    rst $38                                       ; $5c2a: $ff
    ld bc, $00ff                                  ; $5c2b: $01 $ff $00
    rst $38                                       ; $5c2e: $ff
    nop                                           ; $5c2f: $00
    rst $38                                       ; $5c30: $ff
    nop                                           ; $5c31: $00
    rst $38                                       ; $5c32: $ff
    nop                                           ; $5c33: $00
    rst $38                                       ; $5c34: $ff
    ld bc, $62fe                                  ; $5c35: $01 $fe $62
    db $dd                                        ; $5c38: $dd
    push de                                       ; $5c39: $d5
    ld c, l                                       ; $5c3a: $4d
    ld c, l                                       ; $5c3b: $4d
    rst $38                                       ; $5c3c: $ff
    nop                                           ; $5c3d: $00
    rst $38                                       ; $5c3e: $ff
    nop                                           ; $5c3f: $00
    rst $38                                       ; $5c40: $ff
    nop                                           ; $5c41: $00
    rst $38                                       ; $5c42: $ff
    nop                                           ; $5c43: $00
    rst $38                                       ; $5c44: $ff
    add b                                         ; $5c45: $80
    rst $38                                       ; $5c46: $ff
    or b                                          ; $5c47: $b0
    rst $28                                       ; $5c48: $ef
    xor $dd                                       ; $5c49: $ee $dd
    ld d, l                                       ; $5c4b: $55
    rst $38                                       ; $5c4c: $ff
    nop                                           ; $5c4d: $00
    rst $38                                       ; $5c4e: $ff
    nop                                           ; $5c4f: $00
    rst $38                                       ; $5c50: $ff
    nop                                           ; $5c51: $00
    rst $38                                       ; $5c52: $ff
    nop                                           ; $5c53: $00
    rst $38                                       ; $5c54: $ff
    ld bc, $62fe                                  ; $5c55: $01 $fe $62
    db $dd                                        ; $5c58: $dd
    ld d, l                                       ; $5c59: $55
    db $ed                                        ; $5c5a: $ed
    ld l, l                                       ; $5c5b: $6d
    rst $38                                       ; $5c5c: $ff
    nop                                           ; $5c5d: $00
    rst $38                                       ; $5c5e: $ff
    nop                                           ; $5c5f: $00
    rst $38                                       ; $5c60: $ff
    nop                                           ; $5c61: $00
    rst $38                                       ; $5c62: $ff
    nop                                           ; $5c63: $00
    rst $38                                       ; $5c64: $ff
    add b                                         ; $5c65: $80
    rst $38                                       ; $5c66: $ff
    add b                                         ; $5c67: $80
    rst $38                                       ; $5c68: $ff
    nop                                           ; $5c69: $00
    rst $38                                       ; $5c6a: $ff
    nop                                           ; $5c6b: $00
    nop                                           ; $5c6c: $00
    nop                                           ; $5c6d: $00
    nop                                           ; $5c6e: $00
    nop                                           ; $5c6f: $00
    nop                                           ; $5c70: $00
    nop                                           ; $5c71: $00
    nop                                           ; $5c72: $00
    nop                                           ; $5c73: $00
    nop                                           ; $5c74: $00
    nop                                           ; $5c75: $00
    nop                                           ; $5c76: $00
    nop                                           ; $5c77: $00
    nop                                           ; $5c78: $00
    nop                                           ; $5c79: $00
    nop                                           ; $5c7a: $00
    nop                                           ; $5c7b: $00
    di                                            ; $5c7c: $f3
    ld [hl], e                                    ; $5c7d: $73
    sbc e                                         ; $5c7e: $9b
    sbc e                                         ; $5c7f: $9b
    adc c                                         ; $5c80: $89
    adc c                                         ; $5c81: $89
    ret nz                                        ; $5c82: $c0

    ret nz                                        ; $5c83: $c0

    ldh [$60], a                                  ; $5c84: $e0 $60
    ldh [rNR41], a                                ; $5c86: $e0 $20
    pop af                                        ; $5c88: $f1
    ld sp, $1fff                                  ; $5c89: $31 $ff $1f
    ld b, h                                       ; $5c8c: $44
    ld b, h                                       ; $5c8d: $44
    ld c, h                                       ; $5c8e: $4c
    ld c, h                                       ; $5c8f: $4c
    ld c, c                                       ; $5c90: $49
    ld c, c                                       ; $5c91: $49
    nop                                           ; $5c92: $00
    nop                                           ; $5c93: $00

jr_04a_5c94:
    nop                                           ; $5c94: $00
    nop                                           ; $5c95: $00
    nop                                           ; $5c96: $00
    nop                                           ; $5c97: $00
    sbc c                                         ; $5c98: $99
    sbc c                                         ; $5c99: $99
    rst $38                                       ; $5c9a: $ff
    rst $38                                       ; $5c9b: $ff
    or e                                          ; $5c9c: $b3
    or e                                          ; $5c9d: $b3
    db $e3                                        ; $5c9e: $e3
    db $e3                                        ; $5c9f: $e3
    inc h                                         ; $5ca0: $24
    inc h                                         ; $5ca1: $24
    nop                                           ; $5ca2: $00
    nop                                           ; $5ca3: $00
    nop                                           ; $5ca4: $00
    nop                                           ; $5ca5: $00
    nop                                           ; $5ca6: $00
    nop                                           ; $5ca7: $00
    rst $20                                       ; $5ca8: $e7
    rst $20                                       ; $5ca9: $e7
    rst $38                                       ; $5caa: $ff
    rst $38                                       ; $5cab: $ff
    ld [hl+], a                                   ; $5cac: $22
    ld [hl+], a                                   ; $5cad: $22
    ld [de], a                                    ; $5cae: $12
    ld [de], a                                    ; $5caf: $12
    sub d                                         ; $5cb0: $92
    sub d                                         ; $5cb1: $92
    nop                                           ; $5cb2: $00
    nop                                           ; $5cb3: $00
    nop                                           ; $5cb4: $00
    nop                                           ; $5cb5: $00
    nop                                           ; $5cb6: $00
    nop                                           ; $5cb7: $00
    dec sp                                        ; $5cb8: $3b
    dec sp                                        ; $5cb9: $3b
    rst $38                                       ; $5cba: $ff
    rst $38                                       ; $5cbb: $ff
    ld c, a                                       ; $5cbc: $4f
    ld c, h                                       ; $5cbd: $4c
    ld c, a                                       ; $5cbe: $4f
    ld c, [hl]                                    ; $5cbf: $4e
    ld c, c                                       ; $5cc0: $49
    ld c, c                                       ; $5cc1: $49
    ld bc, $0301                                  ; $5cc2: $01 $01 $03
    inc bc                                        ; $5cc5: $03
    inc bc                                        ; $5cc6: $03
    ld [bc], a                                    ; $5cc7: $02
    or a                                          ; $5cc8: $b7
    or [hl]                                       ; $5cc9: $b6
    rst $38                                       ; $5cca: $ff
    db $fc                                        ; $5ccb: $fc
    db $fc                                        ; $5ccc: $fc
    inc a                                         ; $5ccd: $3c
    db $e4                                        ; $5cce: $e4
    inc h                                         ; $5ccf: $24
    ld a, [c]                                     ; $5cd0: $f2
    ld [de], a                                    ; $5cd1: $12
    ld hl, sp+$08                                 ; $5cd2: $f8 $08
    ld hl, sp+$08                                 ; $5cd4: $f8 $08
    db $fc                                        ; $5cd6: $fc
    inc b                                         ; $5cd7: $04
    db $fd                                        ; $5cd8: $fd
    dec b                                         ; $5cd9: $05
    rst $38                                       ; $5cda: $ff
    inc bc                                        ; $5cdb: $03
    xor c                                         ; $5cdc: $a9
    xor c                                         ; $5cdd: $a9
    xor c                                         ; $5cde: $a9
    xor c                                         ; $5cdf: $a9
    adc c                                         ; $5ce0: $89
    adc c                                         ; $5ce1: $89
    nop                                           ; $5ce2: $00
    nop                                           ; $5ce3: $00
    nop                                           ; $5ce4: $00
    nop                                           ; $5ce5: $00
    nop                                           ; $5ce6: $00
    nop                                           ; $5ce7: $00
    sub e                                         ; $5ce8: $93
    sub e                                         ; $5ce9: $93
    rst $38                                       ; $5cea: $ff
    rst $38                                       ; $5ceb: $ff
    ld c, [hl]                                    ; $5cec: $4e
    ld c, [hl]                                    ; $5ced: $4e
    jp z, Jump_04a_52ca                           ; $5cee: $ca $ca $52

    ld d, d                                       ; $5cf1: $52
    nop                                           ; $5cf2: $00
    nop                                           ; $5cf3: $00
    nop                                           ; $5cf4: $00
    nop                                           ; $5cf5: $00
    nop                                           ; $5cf6: $00
    nop                                           ; $5cf7: $00
    ld [hl-], a                                   ; $5cf8: $32
    ld [hl-], a                                   ; $5cf9: $32
    rst $38                                       ; $5cfa: $ff
    rst $38                                       ; $5cfb: $ff
    ld c, d                                       ; $5cfc: $4a
    ld c, d                                       ; $5cfd: $4a
    ld c, d                                       ; $5cfe: $4a
    ld c, d                                       ; $5cff: $4a
    ld c, d                                       ; $5d00: $4a
    ld c, d                                       ; $5d01: $4a
    nop                                           ; $5d02: $00
    nop                                           ; $5d03: $00
    nop                                           ; $5d04: $00
    nop                                           ; $5d05: $00
    nop                                           ; $5d06: $00
    nop                                           ; $5d07: $00
    ld h, [hl]                                    ; $5d08: $66
    ld h, [hl]                                    ; $5d09: $66
    rst $38                                       ; $5d0a: $ff
    rst $38                                       ; $5d0b: $ff
    rst $08                                       ; $5d0c: $cf
    ret z                                         ; $5d0d: $c8

    sbc a                                         ; $5d0e: $9f
    sub b                                         ; $5d0f: $90
    sbc a                                         ; $5d10: $9f
    sub b                                         ; $5d11: $90
    cp a                                          ; $5d12: $bf
    and b                                         ; $5d13: $a0
    ccf                                           ; $5d14: $3f
    jr nz, @+$41                                  ; $5d15: $20 $3f

    jr nz, @+$41                                  ; $5d17: $20 $3f

    jr nz, @+$01                                  ; $5d19: $20 $ff

    ret nz                                        ; $5d1b: $c0

    rst $38                                       ; $5d1c: $ff
    ld bc, $03ff                                  ; $5d1d: $01 $ff $03
    cp $02                                        ; $5d20: $fe $02
    rst $38                                       ; $5d22: $ff
    inc bc                                        ; $5d23: $03
    rst $38                                       ; $5d24: $ff
    ld bc, $00ff                                  ; $5d25: $01 $ff $00
    rst $38                                       ; $5d28: $ff
    nop                                           ; $5d29: $00
    rst $38                                       ; $5d2a: $ff
    nop                                           ; $5d2b: $00
    ld l, c                                       ; $5d2c: $69
    ld l, c                                       ; $5d2d: $69
    xor e                                         ; $5d2e: $ab
    xor e                                         ; $5d2f: $ab
    xor d                                         ; $5d30: $aa
    xor d                                         ; $5d31: $aa
    ld b, d                                       ; $5d32: $42
    ld b, d                                       ; $5d33: $42
    nop                                           ; $5d34: $00
    nop                                           ; $5d35: $00
    add b                                         ; $5d36: $80
    add b                                         ; $5d37: $80
    sub c                                         ; $5d38: $91
    sub c                                         ; $5d39: $91
    rst $38                                       ; $5d3a: $ff
    ld a, a                                       ; $5d3b: $7f
    db $dd                                        ; $5d3c: $dd
    db $dd                                        ; $5d3d: $dd
    ld d, h                                       ; $5d3e: $54
    ld d, h                                       ; $5d3f: $54
    xor $ee                                       ; $5d40: $ee $ee
    xor d                                         ; $5d42: $aa
    xor d                                         ; $5d43: $aa
    nop                                           ; $5d44: $00
    nop                                           ; $5d45: $00
    nop                                           ; $5d46: $00
    nop                                           ; $5d47: $00
    adc e                                         ; $5d48: $8b
    adc e                                         ; $5d49: $8b
    rst $38                                       ; $5d4a: $ff
    rst $38                                       ; $5d4b: $ff
    xor c                                         ; $5d4c: $a9
    xor c                                         ; $5d4d: $a9
    xor e                                         ; $5d4e: $ab
    xor e                                         ; $5d4f: $ab
    xor d                                         ; $5d50: $aa
    xor d                                         ; $5d51: $aa
    adc d                                         ; $5d52: $8a
    adc d                                         ; $5d53: $8a
    ld bc, $0101                                  ; $5d54: $01 $01 $01
    ld bc, $1919                                  ; $5d57: $01 $19 $19
    rst $38                                       ; $5d5a: $ff
    cp $ff                                        ; $5d5b: $fe $ff
    ret nz                                        ; $5d5d: $c0

    ld a, a                                       ; $5d5e: $7f
    ld b, b                                       ; $5d5f: $40
    rst $38                                       ; $5d60: $ff
    add b                                         ; $5d61: $80
    rst $38                                       ; $5d62: $ff
    add b                                         ; $5d63: $80
    rst $38                                       ; $5d64: $ff
    nop                                           ; $5d65: $00
    rst $38                                       ; $5d66: $ff
    nop                                           ; $5d67: $00
    rst $38                                       ; $5d68: $ff
    nop                                           ; $5d69: $00
    rst $38                                       ; $5d6a: $ff
    nop                                           ; $5d6b: $00
    nop                                           ; $5d6c: $00
    nop                                           ; $5d6d: $00

jr_04a_5d6e:
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
    rst $38                                       ; $5d7c: $ff
    dec h                                         ; $5d7d: $25
    jp c, $eb5a                                   ; $5d7e: $da $5a $eb

    dec hl                                        ; $5d81: $2b
    db $ed                                        ; $5d82: $ed
    dec l                                         ; $5d83: $2d
    push de                                       ; $5d84: $d5
    ld d, l                                       ; $5d85: $55
    ldh [rNR41], a                                ; $5d86: $e0 $20
    ldh a, [rNR10]                                ; $5d88: $f0 $10
    rst $38                                       ; $5d8a: $ff
    rrca                                          ; $5d8b: $0f
    rst $38                                       ; $5d8c: $ff
    jr nz, jr_04a_5d6e                            ; $5d8d: $20 $df

    push de                                       ; $5d8f: $d5
    ld e, d                                       ; $5d90: $5a
    ld e, d                                       ; $5d91: $5a
    ld d, l                                       ; $5d92: $55
    ld d, l                                       ; $5d93: $55
    dec b                                         ; $5d94: $05
    dec b                                         ; $5d95: $05
    nop                                           ; $5d96: $00
    nop                                           ; $5d97: $00
    nop                                           ; $5d98: $00
    nop                                           ; $5d99: $00
    rst $38                                       ; $5d9a: $ff
    rst $38                                       ; $5d9b: $ff
    rst $38                                       ; $5d9c: $ff
    sub b                                         ; $5d9d: $90
    ld l, a                                       ; $5d9e: $6f
    ld l, b                                       ; $5d9f: $68
    xor a                                         ; $5da0: $af
    xor h                                         ; $5da1: $ac
    db $db                                        ; $5da2: $db
    jp c, Jump_04a_5457                           ; $5da3: $da $57 $54

    rlca                                          ; $5da6: $07
    inc b                                         ; $5da7: $04
    rrca                                          ; $5da8: $0f
    ld [$f0ff], sp                                ; $5da9: $08 $ff $f0
    rst $38                                       ; $5dac: $ff
    nop                                           ; $5dad: $00
    rst $38                                       ; $5dae: $ff
    nop                                           ; $5daf: $00
    rst $38                                       ; $5db0: $ff
    nop                                           ; $5db1: $00
    rst $38                                       ; $5db2: $ff
    ld [bc], a                                    ; $5db3: $02
    db $fd                                        ; $5db4: $fd
    dec b                                         ; $5db5: $05
    db $fd                                        ; $5db6: $fd
    dec b                                         ; $5db7: $05
    cp $02                                        ; $5db8: $fe $02
    rst $38                                       ; $5dba: $ff
    ld bc, $00ff                                  ; $5dbb: $01 $ff $00
    rst $38                                       ; $5dbe: $ff
    nop                                           ; $5dbf: $00
    rst $38                                       ; $5dc0: $ff
    ld b, b                                       ; $5dc1: $40
    cp a                                          ; $5dc2: $bf
    xor l                                         ; $5dc3: $ad
    ld a, d                                       ; $5dc4: $7a
    ld a, d                                       ; $5dc5: $7a
    ld d, [hl]                                    ; $5dc6: $56
    ld d, [hl]                                    ; $5dc7: $56
    nop                                           ; $5dc8: $00
    nop                                           ; $5dc9: $00
    rst $38                                       ; $5dca: $ff
    rst $38                                       ; $5dcb: $ff
    rst $38                                       ; $5dcc: $ff
    nop                                           ; $5dcd: $00
    rst $38                                       ; $5dce: $ff
    nop                                           ; $5dcf: $00
    rst $38                                       ; $5dd0: $ff
    nop                                           ; $5dd1: $00
    rst $38                                       ; $5dd2: $ff
    ld b, b                                       ; $5dd3: $40
    cp a                                          ; $5dd4: $bf
    and b                                         ; $5dd5: $a0
    cp a                                          ; $5dd6: $bf
    and b                                         ; $5dd7: $a0
    ld a, a                                       ; $5dd8: $7f
    ld b, b                                       ; $5dd9: $40
    rst $38                                       ; $5dda: $ff
    add b                                         ; $5ddb: $80
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
    nop                                           ; $5ff8: $00
    nop                                           ; $5ff9: $00
    nop                                           ; $5ffa: $00
    nop                                           ; $5ffb: $00
    nop                                           ; $5ffc: $00
    nop                                           ; $5ffd: $00
    nop                                           ; $5ffe: $00
    nop                                           ; $5fff: $00
    nop                                           ; $6000: $00
    nop                                           ; $6001: $00
    nop                                           ; $6002: $00
    nop                                           ; $6003: $00
    nop                                           ; $6004: $00
    nop                                           ; $6005: $00
    nop                                           ; $6006: $00
    nop                                           ; $6007: $00
    nop                                           ; $6008: $00
    nop                                           ; $6009: $00
    nop                                           ; $600a: $00
    nop                                           ; $600b: $00
    nop                                           ; $600c: $00
    nop                                           ; $600d: $00
    nop                                           ; $600e: $00
    nop                                           ; $600f: $00
    nop                                           ; $6010: $00
    nop                                           ; $6011: $00
    nop                                           ; $6012: $00
    nop                                           ; $6013: $00
    nop                                           ; $6014: $00
    nop                                           ; $6015: $00
    nop                                           ; $6016: $00
    nop                                           ; $6017: $00
    nop                                           ; $6018: $00
    nop                                           ; $6019: $00
    nop                                           ; $601a: $00
    nop                                           ; $601b: $00
    nop                                           ; $601c: $00
    nop                                           ; $601d: $00
    nop                                           ; $601e: $00
    nop                                           ; $601f: $00
    nop                                           ; $6020: $00
    nop                                           ; $6021: $00
    nop                                           ; $6022: $00
    nop                                           ; $6023: $00
    nop                                           ; $6024: $00
    nop                                           ; $6025: $00
    nop                                           ; $6026: $00
    nop                                           ; $6027: $00
    nop                                           ; $6028: $00
    nop                                           ; $6029: $00
    nop                                           ; $602a: $00
    nop                                           ; $602b: $00
    nop                                           ; $602c: $00
    nop                                           ; $602d: $00
    nop                                           ; $602e: $00
    nop                                           ; $602f: $00
    nop                                           ; $6030: $00
    nop                                           ; $6031: $00
    nop                                           ; $6032: $00
    nop                                           ; $6033: $00
    nop                                           ; $6034: $00
    nop                                           ; $6035: $00
    nop                                           ; $6036: $00
    nop                                           ; $6037: $00
    nop                                           ; $6038: $00
    nop                                           ; $6039: $00
    nop                                           ; $603a: $00
    nop                                           ; $603b: $00
    nop                                           ; $603c: $00
    nop                                           ; $603d: $00
    nop                                           ; $603e: $00
    nop                                           ; $603f: $00
    nop                                           ; $6040: $00
    nop                                           ; $6041: $00
    nop                                           ; $6042: $00
    nop                                           ; $6043: $00
    nop                                           ; $6044: $00
    nop                                           ; $6045: $00
    nop                                           ; $6046: $00
    nop                                           ; $6047: $00
    nop                                           ; $6048: $00
    nop                                           ; $6049: $00
    nop                                           ; $604a: $00
    nop                                           ; $604b: $00
    nop                                           ; $604c: $00
    nop                                           ; $604d: $00
    nop                                           ; $604e: $00
    nop                                           ; $604f: $00
    nop                                           ; $6050: $00
    nop                                           ; $6051: $00
    nop                                           ; $6052: $00
    nop                                           ; $6053: $00
    nop                                           ; $6054: $00
    nop                                           ; $6055: $00
    nop                                           ; $6056: $00
    nop                                           ; $6057: $00
    nop                                           ; $6058: $00
    nop                                           ; $6059: $00
    nop                                           ; $605a: $00
    nop                                           ; $605b: $00
    nop                                           ; $605c: $00
    nop                                           ; $605d: $00
    nop                                           ; $605e: $00
    nop                                           ; $605f: $00
    nop                                           ; $6060: $00
    nop                                           ; $6061: $00
    nop                                           ; $6062: $00
    nop                                           ; $6063: $00
    nop                                           ; $6064: $00
    nop                                           ; $6065: $00
    nop                                           ; $6066: $00
    nop                                           ; $6067: $00
    nop                                           ; $6068: $00
    nop                                           ; $6069: $00
    nop                                           ; $606a: $00
    nop                                           ; $606b: $00
    nop                                           ; $606c: $00
    nop                                           ; $606d: $00
    nop                                           ; $606e: $00
    nop                                           ; $606f: $00
    nop                                           ; $6070: $00
    nop                                           ; $6071: $00
    nop                                           ; $6072: $00
    nop                                           ; $6073: $00
    nop                                           ; $6074: $00
    nop                                           ; $6075: $00
    nop                                           ; $6076: $00
    nop                                           ; $6077: $00
    nop                                           ; $6078: $00
    nop                                           ; $6079: $00
    nop                                           ; $607a: $00
    nop                                           ; $607b: $00
    ld d, e                                       ; $607c: $53
    ld d, h                                       ; $607d: $54
    ld d, l                                       ; $607e: $55
    ld d, b                                       ; $607f: $50
    ld d, c                                       ; $6080: $51
    ld d, d                                       ; $6081: $52
    ld a, [hl-]                                   ; $6082: $3a
    dec sp                                        ; $6083: $3b
    inc a                                         ; $6084: $3c
    dec a                                         ; $6085: $3d
    ld a, $4a                                     ; $6086: $3e $4a
    ld c, e                                       ; $6088: $4b
    ld c, h                                       ; $6089: $4c
    ld c, l                                       ; $608a: $4d
    ld c, [hl]                                    ; $608b: $4e
    dec [hl]                                      ; $608c: $35
    ld [hl], $37                                  ; $608d: $36 $37
    jr c, @+$3b                                   ; $608f: $38 $39

    ld b, l                                       ; $6091: $45
    ld b, [hl]                                    ; $6092: $46
    ld b, a                                       ; $6093: $47
    ld c, b                                       ; $6094: $48
    ld c, c                                       ; $6095: $49
    jr nc, jr_04a_60c9                            ; $6096: $30 $31

    ld [hl-], a                                   ; $6098: $32
    inc sp                                        ; $6099: $33
    inc [hl]                                      ; $609a: $34
    ld b, b                                       ; $609b: $40
    ld b, c                                       ; $609c: $41
    ld b, d                                       ; $609d: $42
    ld b, e                                       ; $609e: $43
    ld b, h                                       ; $609f: $44
    rlca                                          ; $60a0: $07
    ld [$0a09], sp                                ; $60a1: $08 $09 $0a
    dec bc                                        ; $60a4: $0b
    inc c                                         ; $60a5: $0c
    dec c                                         ; $60a6: $0d
    rla                                           ; $60a7: $17
    jr @+$1b                                      ; $60a8: $18 $19

    ld a, [de]                                    ; $60aa: $1a
    dec de                                        ; $60ab: $1b
    inc e                                         ; $60ac: $1c
    dec e                                         ; $60ad: $1d
    daa                                           ; $60ae: $27
    jr z, jr_04a_60da                             ; $60af: $28 $29

    ld a, [hl+]                                   ; $60b1: $2a
    dec hl                                        ; $60b2: $2b
    inc l                                         ; $60b3: $2c
    dec l                                         ; $60b4: $2d
    nop                                           ; $60b5: $00
    ld bc, $0302                                  ; $60b6: $01 $02 $03
    inc b                                         ; $60b9: $04
    dec b                                         ; $60ba: $05
    ld b, $10                                     ; $60bb: $06 $10
    ld de, $1312                                  ; $60bd: $11 $12 $13
    inc d                                         ; $60c0: $14
    dec d                                         ; $60c1: $15
    ld d, $20                                     ; $60c2: $16 $20
    ld hl, $2322                                  ; $60c4: $21 $22 $23
    inc h                                         ; $60c7: $24
    dec h                                         ; $60c8: $25

jr_04a_60c9:
    ld h, $ff                                     ; $60c9: $26 $ff
    ld sp, hl                                     ; $60cb: $f9
    inc bc                                        ; $60cc: $03
    ld bc, $607c                                  ; $60cd: $01 $7c $60
    nop                                           ; $60d0: $00
    nop                                           ; $60d1: $00
    rst $38                                       ; $60d2: $ff
    ld sp, hl                                     ; $60d3: $f9
    inc bc                                        ; $60d4: $03
    ld bc, $607c                                  ; $60d5: $01 $7c $60
    nop                                           ; $60d8: $00
    nop                                           ; $60d9: $00

jr_04a_60da:
    rst $38                                       ; $60da: $ff
    ld sp, hl                                     ; $60db: $f9
    inc bc                                        ; $60dc: $03
    ld bc, $607f                                  ; $60dd: $01 $7f $60
    nop                                           ; $60e0: $00
    nop                                           ; $60e1: $00
    cp $f1                                        ; $60e2: $fe $f1
    dec b                                         ; $60e4: $05
    ld [bc], a                                    ; $60e5: $02
    add d                                         ; $60e6: $82
    ld h, b                                       ; $60e7: $60
    nop                                           ; $60e8: $00
    nop                                           ; $60e9: $00
    cp $f1                                        ; $60ea: $fe $f1
    dec b                                         ; $60ec: $05
    ld [bc], a                                    ; $60ed: $02
    adc h                                         ; $60ee: $8c
    ld h, b                                       ; $60ef: $60
    nop                                           ; $60f0: $00
    nop                                           ; $60f1: $00
    cp $f1                                        ; $60f2: $fe $f1
    dec b                                         ; $60f4: $05
    ld [bc], a                                    ; $60f5: $02
    sub [hl]                                      ; $60f6: $96
    ld h, b                                       ; $60f7: $60
    nop                                           ; $60f8: $00
    nop                                           ; $60f9: $00
    db $fd                                        ; $60fa: $fd
    jp hl                                         ; $60fb: $e9


    rlca                                          ; $60fc: $07
    inc bc                                        ; $60fd: $03
    and b                                         ; $60fe: $a0
    ld h, b                                       ; $60ff: $60
    nop                                           ; $6100: $00
    nop                                           ; $6101: $00
    db $fd                                        ; $6102: $fd
    jp hl                                         ; $6103: $e9


    rlca                                          ; $6104: $07
    inc bc                                        ; $6105: $03
    or l                                          ; $6106: $b5
    ld h, b                                       ; $6107: $60
    nop                                           ; $6108: $00
    nop                                           ; $6109: $00

Call_04a_610a:
    ld hl, $da00                                  ; $610a: $21 $00 $da

jr_04a_610d:
    ld a, [hl+]                                   ; $610d: $2a
    cp $ff                                        ; $610e: $fe $ff
    jr z, jr_04a_612f                             ; $6110: $28 $1d

    ld e, a                                       ; $6112: $5f
    ld a, [hl+]                                   ; $6113: $2a
    ld d, a                                       ; $6114: $57
    ld a, [hl+]                                   ; $6115: $2a
    ld b, a                                       ; $6116: $47
    ld a, e                                       ; $6117: $7b
    cp $03                                        ; $6118: $fe $03
    jr z, jr_04a_6120                             ; $611a: $28 $04

    cp $02                                        ; $611c: $fe $02
    jr nz, jr_04a_612d                            ; $611e: $20 $0d

jr_04a_6120:
    ld a, b                                       ; $6120: $78
    rrca                                          ; $6121: $0f
    rrca                                          ; $6122: $0f
    rrca                                          ; $6123: $0f
    and $07                                       ; $6124: $e6 $07
    ld e, $07                                     ; $6126: $1e $07
    push hl                                       ; $6128: $e5
    call Call_04a_6130                            ; $6129: $cd $30 $61
    pop hl                                        ; $612c: $e1

jr_04a_612d:
    jr jr_04a_610d                                ; $612d: $18 $de

jr_04a_612f:
    ret                                           ; $612f: $c9


Call_04a_6130:
    add a                                         ; $6130: $87
    add a                                         ; $6131: $87
    add a                                         ; $6132: $87
    ld hl, $619d                                  ; $6133: $21 $9d $61
    add l                                         ; $6136: $85
    ld l, a                                       ; $6137: $6f
    jr nc, jr_04a_613b                            ; $6138: $30 $01

    inc h                                         ; $613a: $24

jr_04a_613b:
    ld a, [hl+]                                   ; $613b: $2a
    add d                                         ; $613c: $82
    ld d, a                                       ; $613d: $57
    ld a, [hl+]                                   ; $613e: $2a
    add e                                         ; $613f: $83
    ld b, a                                       ; $6140: $47
    ld a, [hl+]                                   ; $6141: $2a
    ld e, a                                       ; $6142: $5f
    ld a, [hl+]                                   ; $6143: $2a
    ld c, a                                       ; $6144: $4f
    ld a, [hl+]                                   ; $6145: $2a
    ld h, [hl]                                    ; $6146: $66
    ld l, a                                       ; $6147: $6f

jr_04a_6148:
    push de                                       ; $6148: $d5

jr_04a_6149:
    ld a, [hl]                                    ; $6149: $7e
    and a                                         ; $614a: $a7
    jr z, jr_04a_6192                             ; $614b: $28 $45

    bit 7, d                                      ; $614d: $cb $7a
    jr nz, jr_04a_6192                            ; $614f: $20 $41

    ld a, d                                       ; $6151: $7a
    cp $14                                        ; $6152: $fe $14
    jr nc, jr_04a_6192                            ; $6154: $30 $3c

    push bc                                       ; $6156: $c5
    push de                                       ; $6157: $d5
    push hl                                       ; $6158: $e5
    ld c, d                                       ; $6159: $4a
    ld l, [hl]                                    ; $615a: $6e
    ld h, $00                                     ; $615b: $26 $00
    add hl, hl                                    ; $615d: $29

Jump_04a_615e:
    add hl, hl                                    ; $615e: $29
    add hl, hl                                    ; $615f: $29
    add hl, hl                                    ; $6160: $29
    ld de, $44fe                                  ; $6161: $11 $fe $44
    add hl, de                                    ; $6164: $19
    ld e, l                                       ; $6165: $5d
    ld d, h                                       ; $6166: $54
    ld a, c                                       ; $6167: $79
    add a                                         ; $6168: $87
    add a                                         ; $6169: $87
    add a                                         ; $616a: $87
    add b                                         ; $616b: $80
    ld l, a                                       ; $616c: $6f
    ld h, $00                                     ; $616d: $26 $00
    add hl, hl                                    ; $616f: $29
    add hl, hl                                    ; $6170: $29
    add hl, hl                                    ; $6171: $29
    add hl, hl                                    ; $6172: $29
    ld bc, $d000                                  ; $6173: $01 $00 $d0
    add hl, bc                                    ; $6176: $09
    call Call_04a_61ea                            ; $6177: $cd $ea $61
    call Call_04a_61ea                            ; $617a: $cd $ea $61
    call Call_04a_61ea                            ; $617d: $cd $ea $61
    call Call_04a_61ea                            ; $6180: $cd $ea $61
    call Call_04a_61ea                            ; $6183: $cd $ea $61
    call Call_04a_61ea                            ; $6186: $cd $ea $61
    call Call_04a_61ea                            ; $6189: $cd $ea $61
    call Call_04a_61ea                            ; $618c: $cd $ea $61
    pop hl                                        ; $618f: $e1
    pop de                                        ; $6190: $d1
    pop bc                                        ; $6191: $c1

jr_04a_6192:
    inc hl                                        ; $6192: $23
    inc d                                         ; $6193: $14
    dec e                                         ; $6194: $1d
    jr nz, jr_04a_6149                            ; $6195: $20 $b2

    pop de                                        ; $6197: $d1
    inc b                                         ; $6198: $04
    dec c                                         ; $6199: $0d
    jr nz, jr_04a_6148                            ; $619a: $20 $ac

    ret                                           ; $619c: $c9


    rst $38                                       ; $619d: $ff
    cp $03                                        ; $619e: $fe $03
    inc bc                                        ; $61a0: $03
    ld c, [hl]                                    ; $61a1: $4e
    ld d, d                                       ; $61a2: $52
    nop                                           ; $61a3: $00
    nop                                           ; $61a4: $00
    rst $38                                       ; $61a5: $ff
    ei                                            ; $61a6: $fb
    inc bc                                        ; $61a7: $03
    ld b, $57                                     ; $61a8: $06 $57
    ld d, d                                       ; $61aa: $52
    nop                                           ; $61ab: $00
    nop                                           ; $61ac: $00
    cp $f9                                        ; $61ad: $fe $f9
    dec b                                         ; $61af: $05
    ld [$5269], sp                                ; $61b0: $08 $69 $52
    nop                                           ; $61b3: $00
    nop                                           ; $61b4: $00
    db $fd                                        ; $61b5: $fd
    ld sp, hl                                     ; $61b6: $f9
    rlca                                          ; $61b7: $07
    ld [$5291], sp                                ; $61b8: $08 $91 $52
    nop                                           ; $61bb: $00
    nop                                           ; $61bc: $00
    db $fc                                        ; $61bd: $fc
    ld sp, hl                                     ; $61be: $f9
    add hl, bc                                    ; $61bf: $09
    ld [$52c9], sp                                ; $61c0: $08 $c9 $52
    nop                                           ; $61c3: $00
    nop                                           ; $61c4: $00
    db $fc                                        ; $61c5: $fc
    ld sp, hl                                     ; $61c6: $f9
    add hl, bc                                    ; $61c7: $09
    ld [$5311], sp                                ; $61c8: $08 $11 $53
    nop                                           ; $61cb: $00
    nop                                           ; $61cc: $00
    ei                                            ; $61cd: $fb
    ld sp, hl                                     ; $61ce: $f9
    dec bc                                        ; $61cf: $0b
    ld [$5359], sp                                ; $61d0: $08 $59 $53
    nop                                           ; $61d3: $00
    nop                                           ; $61d4: $00
    ei                                            ; $61d5: $fb
    ld sp, hl                                     ; $61d6: $f9
    dec bc                                        ; $61d7: $0b
    ld [$5359], sp                                ; $61d8: $08 $59 $53
    nop                                           ; $61db: $00
    nop                                           ; $61dc: $00

Call_04a_61dd:
    ld a, [de]                                    ; $61dd: $1a
    ld c, a                                       ; $61de: $4f
    inc de                                        ; $61df: $13
    ld a, [de]                                    ; $61e0: $1a
    ld b, a                                       ; $61e1: $47
    inc de                                        ; $61e2: $13
    push de                                       ; $61e3: $d5
    xor c                                         ; $61e4: $a9
    ld e, a                                       ; $61e5: $5f
    cpl                                           ; $61e6: $2f
    ld d, a                                       ; $61e7: $57
    jr jr_04a_61f5                                ; $61e8: $18 $0b

Call_04a_61ea:
    ld a, [de]                                    ; $61ea: $1a
    ld c, a                                       ; $61eb: $4f
    inc de                                        ; $61ec: $13
    ld a, [de]                                    ; $61ed: $1a
    ld b, a                                       ; $61ee: $47
    inc de                                        ; $61ef: $13
    push de                                       ; $61f0: $d5
    or c                                          ; $61f1: $b1
    ld d, a                                       ; $61f2: $57
    cpl                                           ; $61f3: $2f
    ld e, a                                       ; $61f4: $5f

jr_04a_61f5:
    ld a, d                                       ; $61f5: $7a
    and b                                         ; $61f6: $a0
    ld b, a                                       ; $61f7: $47
    ld a, d                                       ; $61f8: $7a
    and c                                         ; $61f9: $a1
    ld c, a                                       ; $61fa: $4f
    ld a, [hl]                                    ; $61fb: $7e
    and e                                         ; $61fc: $a3
    or c                                          ; $61fd: $b1
    ld [hl+], a                                   ; $61fe: $22
    ld a, [hl]                                    ; $61ff: $7e
    and e                                         ; $6200: $a3
    or b                                          ; $6201: $b0
    ld [hl+], a                                   ; $6202: $22
    pop de                                        ; $6203: $d1
    ret                                           ; $6204: $c9


    cp $01                                        ; $6205: $fe $01
    ret nc                                        ; $6207: $d0

Jump_04a_6208:
    ld hl, $62f1                                  ; $6208: $21 $f1 $62
    add a                                         ; $620b: $87
    add l                                         ; $620c: $85
    ld l, a                                       ; $620d: $6f
    jr nc, jr_04a_6211                            ; $620e: $30 $01

    inc h                                         ; $6210: $24

jr_04a_6211:
    ld a, [hl+]                                   ; $6211: $2a
    ld h, [hl]                                    ; $6212: $66
    ld l, a                                       ; $6213: $6f
    ldh a, [$96]                                  ; $6214: $f0 $96
    push af                                       ; $6216: $f5
    ld a, $01                                     ; $6217: $3e $01
    ldh [$96], a                                  ; $6219: $e0 $96
    ldh [rSVBK], a                                ; $621b: $e0 $70
    push hl                                       ; $621d: $e5
    ld a, [hl+]                                   ; $621e: $2a
    ld h, [hl]                                    ; $621f: $66
    ld l, a                                       ; $6220: $6f
    ld de, $d800                                  ; $6221: $11 $00 $d8
    call Call_000_1f2f                            ; $6224: $cd $2f $1f
    pop hl                                        ; $6227: $e1
    inc hl                                        ; $6228: $23
    inc hl                                        ; $6229: $23
    push hl                                       ; $622a: $e5
    ld a, [hl+]                                   ; $622b: $2a
    ld h, [hl]                                    ; $622c: $66
    ld l, a                                       ; $622d: $6f
    ld de, $d400                                  ; $622e: $11 $00 $d4
    call Call_000_1f2f                            ; $6231: $cd $2f $1f
    ld hl, $d000                                  ; $6234: $21 $00 $d0
    ld bc, $0400                                  ; $6237: $01 $00 $04
    ld a, $0a                                     ; $623a: $3e $0a

jr_04a_623c:
    ld [hl+], a                                   ; $623c: $22
    dec c                                         ; $623d: $0d
    jr nz, jr_04a_623c                            ; $623e: $20 $fc

    dec b                                         ; $6240: $05
    jr nz, jr_04a_623c                            ; $6241: $20 $f9

    pop hl                                        ; $6243: $e1
    inc hl                                        ; $6244: $23
    inc hl                                        ; $6245: $23
    call Call_000_0341                            ; $6246: $cd $41 $03
    ld a, [hl+]                                   ; $6249: $2a
    ld h, [hl]                                    ; $624a: $66
    ld l, a                                       ; $624b: $6f
    push hl                                       ; $624c: $e5
    ld de, $0201                                  ; $624d: $11 $01 $02
    call Call_000_056c                            ; $6250: $cd $6c $05
    ld hl, $d800                                  ; $6253: $21 $00 $d8
    ld de, $b000                                  ; $6256: $11 $00 $b0
    ld c, $40                                     ; $6259: $0e $40
    call Call_000_0468                            ; $625b: $cd $68 $04
    ld hl, $d400                                  ; $625e: $21 $00 $d4
    ld de, $9800                                  ; $6261: $11 $00 $98
    ld c, $20                                     ; $6264: $0e $20
    call Call_000_0468                            ; $6266: $cd $68 $04
    ld hl, $d000                                  ; $6269: $21 $00 $d0
    ld de, $b800                                  ; $626c: $11 $00 $b8
    ld c, $20                                     ; $626f: $0e $20
    call Call_000_04db                            ; $6271: $cd $db $04
    call Call_000_0371                            ; $6274: $cd $71 $03
    call Call_000_0804                            ; $6277: $cd $04 $08
    pop hl                                        ; $627a: $e1
    ld a, $06                                     ; $627b: $3e $06
    ldh [$96], a                                  ; $627d: $e0 $96
    ldh [rSVBK], a                                ; $627f: $e0 $70
    ld a, l                                       ; $6281: $7d
    ld [$d34e], a                                 ; $6282: $ea $4e $d3
    ld a, h                                       ; $6285: $7c
    ld [$d34f], a                                 ; $6286: $ea $4f $d3
    ld a, $ff                                     ; $6289: $3e $ff
    ld [$d443], a                                 ; $628b: $ea $43 $d4
    pop af                                        ; $628e: $f1
    ldh [$96], a                                  ; $628f: $e0 $96
    ldh [rSVBK], a                                ; $6291: $e0 $70
    ld a, $01                                     ; $6293: $3e $01
    ld hl, $62a3                                  ; $6295: $21 $a3 $62
    call Call_000_23e8                            ; $6298: $cd $e8 $23
    ret                                           ; $629b: $c9


    ld hl, $62a3                                  ; $629c: $21 $a3 $62
    call Call_000_2449                            ; $629f: $cd $49 $24
    ret                                           ; $62a2: $c9


    ld a, $06                                     ; $62a3: $3e $06
    ldh [$96], a                                  ; $62a5: $e0 $96
    ldh [rSVBK], a                                ; $62a7: $e0 $70
    ld hl, $d34e                                  ; $62a9: $21 $4e $d3
    ld a, [hl+]                                   ; $62ac: $2a
    ld h, [hl]                                    ; $62ad: $66
    ld l, a                                       ; $62ae: $6f
    ld de, $d350                                  ; $62af: $11 $50 $d3
    push de                                       ; $62b2: $d5
    push hl                                       ; $62b3: $e5
    ld a, [hl+]                                   ; $62b4: $2a
    ld [de], a                                    ; $62b5: $12
    inc de                                        ; $62b6: $13
    ld a, [hl+]                                   ; $62b7: $2a
    ld [de], a                                    ; $62b8: $12
    inc de                                        ; $62b9: $13
    ld a, [hl+]                                   ; $62ba: $2a
    ld [de], a                                    ; $62bb: $12
    inc de                                        ; $62bc: $13
    ld a, [hl+]                                   ; $62bd: $2a
    ld [de], a                                    ; $62be: $12
    inc de                                        ; $62bf: $13
    pop hl                                        ; $62c0: $e1
    push hl                                       ; $62c1: $e5
    ldh a, [$8c]                                  ; $62c2: $f0 $8c
    rrca                                          ; $62c4: $0f
    and $1e                                       ; $62c5: $e6 $1e
    add $08                                       ; $62c7: $c6 $08
    add l                                         ; $62c9: $85
    ld l, a                                       ; $62ca: $6f
    jr nc, jr_04a_62ce                            ; $62cb: $30 $01

    inc h                                         ; $62cd: $24

jr_04a_62ce:
    ld a, [hl+]                                   ; $62ce: $2a
    ld [de], a                                    ; $62cf: $12
    inc de                                        ; $62d0: $13
    ld a, [hl+]                                   ; $62d1: $2a
    ld [de], a                                    ; $62d2: $12
    inc de                                        ; $62d3: $13
    pop hl                                        ; $62d4: $e1
    push hl                                       ; $62d5: $e5
    ldh a, [$8c]                                  ; $62d6: $f0 $8c
    rrca                                          ; $62d8: $0f
    and $0e                                       ; $62d9: $e6 $0e
    add $28                                       ; $62db: $c6 $28
    add l                                         ; $62dd: $85
    ld l, a                                       ; $62de: $6f
    jr nc, jr_04a_62e2                            ; $62df: $30 $01

    inc h                                         ; $62e1: $24

jr_04a_62e2:
    ld a, [hl+]                                   ; $62e2: $2a
    ld [de], a                                    ; $62e3: $12
    inc de                                        ; $62e4: $13
    ld a, [hl+]                                   ; $62e5: $2a
    ld [de], a                                    ; $62e6: $12
    inc de                                        ; $62e7: $13
    pop hl                                        ; $62e8: $e1
    pop hl                                        ; $62e9: $e1
    ld de, $0201                                  ; $62ea: $11 $01 $02
    call Call_000_056c                            ; $62ed: $cd $6c $05
    ret                                           ; $62f0: $c9


    rst $30                                       ; $62f1: $f7
    ld h, d                                       ; $62f2: $62
    or [hl]                                       ; $62f3: $b6
    ld h, [hl]                                    ; $62f4: $66
    ld c, [hl]                                    ; $62f5: $4e
    ld l, c                                       ; $62f6: $69
    db $fd                                        ; $62f7: $fd
    ld h, d                                       ; $62f8: $62
    push hl                                       ; $62f9: $e5
    ld h, l                                       ; $62fa: $65
    ld a, [hl]                                    ; $62fb: $7e
    ld h, [hl]                                    ; $62fc: $66
    rst $38                                       ; $62fd: $ff
    ldh a, [$e0]                                  ; $62fe: $f0 $e0
    jr c, jr_04a_6312                             ; $6300: $38 $10

    inc e                                         ; $6302: $1c
    ld [$040e], sp                                ; $6303: $08 $0e $04
    rst $38                                       ; $6306: $ff
    rst $00                                       ; $6307: $c7
    add d                                         ; $6308: $82
    db $e3                                        ; $6309: $e3
    pop bc                                        ; $630a: $c1
    pop af                                        ; $630b: $f1
    pop hl                                        ; $630c: $e1
    pop af                                        ; $630d: $f1
    ld [hl], c                                    ; $630e: $71
    rst $38                                       ; $630f: $ff
    nop                                           ; $6310: $00
    nop                                           ; $6311: $00

jr_04a_6312:
    ld bc, $0700                                  ; $6312: $01 $00 $07
    nop                                           ; $6315: $00
    rra                                           ; $6316: $1f
    nop                                           ; $6317: $00
    rst $38                                       ; $6318: $ff
    ld a, [hl]                                    ; $6319: $7e
    ld bc, $3bfc                                  ; $631a: $01 $fc $3b
    rst $08                                       ; $631d: $cf
    ld b, a                                       ; $631e: $47
    ret nz                                        ; $631f: $c0

    ld b, b                                       ; $6320: $40
    rst $38                                       ; $6321: $ff
    ld [hl], c                                    ; $6322: $71
    ld sp, $21f1                                  ; $6323: $31 $f1 $21
    db $e3                                        ; $6326: $e3
    pop bc                                        ; $6327: $c1
    add a                                         ; $6328: $87
    inc bc                                        ; $6329: $03
    rst $38                                       ; $632a: $ff
    rrca                                          ; $632b: $0f
    rlca                                          ; $632c: $07
    rra                                           ; $632d: $1f
    ld c, $7e                                     ; $632e: $0e $7e
    dec a                                         ; $6330: $3d
    db $fd                                        ; $6331: $fd
    ld a, [$40ff]                                 ; $6332: $fa $ff $40

jr_04a_6335:
    ret nz                                        ; $6335: $c0

    ld b, b                                       ; $6336: $40
    ret nz                                        ; $6337: $c0

    ld b, a                                       ; $6338: $47
    add $47                                       ; $6339: $c6 $47
    rst $00                                       ; $633b: $c7
    rst $38                                       ; $633c: $ff
    ld b, a                                       ; $633d: $47
    rst $00                                       ; $633e: $c7
    ld b, l                                       ; $633f: $45
    push bc                                       ; $6340: $c5
    ld b, l                                       ; $6341: $45
    rst $00                                       ; $6342: $c7
    ld a, l                                       ; $6343: $7d
    ld a, l                                       ; $6344: $7d
    rst $38                                       ; $6345: $ff
    ld hl, sp-$0c                                 ; $6346: $f8 $f4
    add sp, -$39                                  ; $6348: $e8 $c7
    nop                                           ; $634a: $00
    ld bc, $0182                                  ; $634b: $01 $82 $01
    rst $38                                       ; $634e: $ff
    ld b, a                                       ; $634f: $47
    add b                                         ; $6350: $80
    inc de                                        ; $6351: $13
    add b                                         ; $6352: $80
    dec sp                                        ; $6353: $3b
    add b                                         ; $6354: $80
    dec de                                        ; $6355: $1b
    db $e4                                        ; $6356: $e4
    rst $38                                       ; $6357: $ff
    ld a, a                                       ; $6358: $7f
    ld a, l                                       ; $6359: $7d
    ld a, l                                       ; $635a: $7d
    ld a, [hl-]                                   ; $635b: $3a
    ccf                                           ; $635c: $3f
    nop                                           ; $635d: $00
    inc a                                         ; $635e: $3c
    jp $b0ff                                      ; $635f: $c3 $ff $b0


    ld c, a                                       ; $6362: $4f
    add b                                         ; $6363: $80
    ld a, a                                       ; $6364: $7f
    nop                                           ; $6365: $00
    rst $38                                       ; $6366: $ff
    nop                                           ; $6367: $00
    rst $38                                       ; $6368: $ff
    rst $38                                       ; $6369: $ff
    ld c, [hl]                                    ; $636a: $4e
    jr nc, jr_04a_63a7                            ; $636b: $30 $3a

    call nz, $1ce0                                ; $636d: $c4 $e0 $1c
    add h                                         ; $6370: $84
    ld a, b                                       ; $6371: $78
    rst $38                                       ; $6372: $ff
    jr nz, jr_04a_6335                            ; $6373: $20 $c0

    ld bc, $c300                                  ; $6375: $01 $00 $c3
    add c                                         ; $6378: $81
    rst $20                                       ; $6379: $e7
    ld b, d                                       ; $637a: $42
    rst $38                                       ; $637b: $ff
    nop                                           ; $637c: $00
    ld a, a                                       ; $637d: $7f
    ld b, b                                       ; $637e: $40
    ccf                                           ; $637f: $3f
    ld hl, $201e                                  ; $6380: $21 $1e $20
    inc e                                         ; $6383: $1c
    rst $38                                       ; $6384: $ff
    ld a, h                                       ; $6385: $7c
    dec sp                                        ; $6386: $3b
    xor $c4                                       ; $6387: $ee $c4
    add [hl]                                      ; $6389: $86
    ld [bc], a                                    ; $638a: $02
    inc bc                                        ; $638b: $03
    ld [bc], a                                    ; $638c: $02
    rst $38                                       ; $638d: $ff
    ld l, [hl]                                    ; $638e: $6e
    inc h                                         ; $638f: $24
    inc l                                         ; $6390: $2c
    jr z, @+$2a                                   ; $6391: $28 $28

    jr z, jr_04a_63c1                             ; $6393: $28 $2c

    jr z, @+$01                                   ; $6395: $28 $ff

    inc l                                         ; $6397: $2c
    inc l                                         ; $6398: $2c
    ld l, $2c                                     ; $6399: $2e $2c
    cpl                                           ; $639b: $2f
    daa                                           ; $639c: $27
    rst $28                                       ; $639d: $ef
    rst $20                                       ; $639e: $e7
    rst $38                                       ; $639f: $ff
    ld h, a                                       ; $63a0: $67
    ld h, d                                       ; $63a1: $62
    ld l, a                                       ; $63a2: $6f
    ld b, [hl]                                    ; $63a3: $46
    ccf                                           ; $63a4: $3f
    ld e, $7e                                     ; $63a5: $1e $7e

jr_04a_63a7:
    ld a, l                                       ; $63a7: $7d
    rst $38                                       ; $63a8: $ff
    ld e, $09                                     ; $63a9: $1e $09
    ld c, $05                                     ; $63ab: $0e $05
    add a                                         ; $63ad: $87
    inc b                                         ; $63ae: $04
    rst $38                                       ; $63af: $ff
    db $fc                                        ; $63b0: $fc
    rst $08                                       ; $63b1: $cf
    rst $28                                       ; $63b2: $ef
    di                                            ; $63b3: $f3
    db $ed                                        ; $63b4: $ed
    jp nc, $e1b8                                  ; $63b5: $d2 $b8 $e1

    or h                                          ; $63b8: $b4
    pop hl                                        ; $63b9: $e1
    ld bc, $3ffe                                  ; $63ba: $01 $fe $3f
    inc b                                         ; $63bd: $04
    ld hl, sp-$01                                 ; $63be: $f8 $ff
    db $fc                                        ; $63c0: $fc

jr_04a_63c1:
    rst $38                                       ; $63c1: $ff
    ld hl, sp-$10                                 ; $63c2: $f8 $f0
    push hl                                       ; $63c4: $e5

jr_04a_63c5:
    and b                                         ; $63c5: $a0
    db $eb                                        ; $63c6: $eb
    ld l, l                                       ; $63c7: $6d
    nop                                           ; $63c8: $00
    rst $38                                       ; $63c9: $ff
    ldh [$80], a                                  ; $63ca: $e0 $80
    nop                                           ; $63cc: $00
    and b                                         ; $63cd: $a0

jr_04a_63ce:
    push hl                                       ; $63ce: $e5
    inc b                                         ; $63cf: $04
    inc bc                                        ; $63d0: $03
    ldh a, [$e1]                                  ; $63d1: $f0 $e1
    rst $18                                       ; $63d3: $df
    ld bc, $1000                                  ; $63d4: $01 $00 $10
    ldh [rLCDC], a                                ; $63d7: $e0 $40
    db $eb                                        ; $63d9: $eb
    ldh [rP1], a                                  ; $63da: $e0 $00
    nop                                           ; $63dc: $00
    sbc a                                         ; $63dd: $9f
    ld b, b                                       ; $63de: $40
    add b                                         ; $63df: $80
    add c                                         ; $63e0: $81
    nop                                           ; $63e1: $00
    add a                                         ; $63e2: $87
    jr z, jr_04a_63c5                             ; $63e3: $28 $e0

    jr nz, jr_04a_63ce                            ; $63e5: $20 $e7

    ld hl, sp-$01                                 ; $63e7: $f8 $ff
    rlca                                          ; $63e9: $07
    ldh [$1f], a                                  ; $63ea: $e0 $1f
    add b                                         ; $63ec: $80
    ld a, a                                       ; $63ed: $7f
    ld a, h                                       ; $63ee: $7c
    cp b                                          ; $63ef: $b8
    ld b, h                                       ; $63f0: $44
    cp e                                          ; $63f1: $bb
    call nz, $ff44                                ; $63f2: $c4 $44 $ff
    ldh [rLYC], a                                 ; $63f5: $e0 $45
    call nz, $12c7                                ; $63f7: $c4 $c7 $12
    ldh [rLCDC], a                                ; $63fa: $e0 $40
    cp a                                          ; $63fc: $bf
    ld b, b                                       ; $63fd: $40
    ld a, h                                       ; $63fe: $7c
    jr c, @+$47                                   ; $63ff: $38 $45

    ld b, h                                       ; $6401: $44
    ld b, a                                       ; $6402: $47
    cp $e0                                        ; $6403: $fe $e0
    add $cf                                       ; $6405: $c6 $cf
    push bc                                       ; $6407: $c5
    add h                                         ; $6408: $84
    rlca                                          ; $6409: $07
    inc b                                         ; $640a: $04
    cp $e0                                        ; $640b: $fe $e0
    ld b, b                                       ; $640d: $40
    push hl                                       ; $640e: $e5
    ld a, $cc                                     ; $640f: $3e $cc
    rst $38                                       ; $6411: $ff
    ld a, a                                       ; $6412: $7f
    inc sp                                        ; $6413: $33
    pop hl                                        ; $6414: $e1
    ld b, b                                       ; $6415: $40
    ret nz                                        ; $6416: $c0

    add b                                         ; $6417: $80
    rra                                           ; $6418: $1f
    ld l, [hl]                                    ; $6419: $6e
    rst $38                                       ; $641a: $ff
    ld d, e                                       ; $641b: $53
    ld sp, $1131                                  ; $641c: $31 $31 $11
    ld sp, $1111                                  ; $641f: $31 $11 $11
    ld de, $91bf                                  ; $6422: $11 $bf $91
    ld de, $9191                                  ; $6425: $11 $91 $91
    pop de                                        ; $6428: $d1
    sub c                                         ; $6429: $91
    and b                                         ; $642a: $a0
    push hl                                       ; $642b: $e5
    ld b, e                                       ; $642c: $43
    ld a, a                                       ; $642d: $7f
    add c                                         ; $642e: $81
    adc a                                         ; $642f: $8f
    ld b, $9c                                     ; $6430: $06 $9c
    ld [$1038], sp                                ; $6432: $08 $38 $10
    ret nz                                        ; $6435: $c0

    push bc                                       ; $6436: $c5
    rst $38                                       ; $6437: $ff
    cp $c1                                        ; $6438: $fe $c1
    ld a, b                                       ; $643a: $78
    daa                                           ; $643b: $27
    jr nc, jr_04a_645d                            ; $643c: $30 $1f

    db $10                                        ; $643e: $10
    rra                                           ; $643f: $1f
    cp [hl]                                       ; $6440: $be
    db $10                                        ; $6441: $10
    db $e3                                        ; $6442: $e3
    ld a, $1c                                     ; $6443: $3e $1c
    ld h, $23                                     ; $6445: $26 $23

jr_04a_6447:
    ld [hl+], a                                   ; $6447: $22

jr_04a_6448:
    rst $38                                       ; $6448: $ff
    ldh [rNR44], a                                ; $6449: $e0 $23
    ld a, l                                       ; $644b: $7d
    ld [hl+], a                                   ; $644c: $22
    ld [hl], b                                    ; $644d: $70
    rst $20                                       ; $644e: $e7
    ld sp, hl                                     ; $644f: $f9
    ld [hl], b                                    ; $6450: $70
    sbc a                                         ; $6451: $9f
    adc a                                         ; $6452: $8f
    add c                                         ; $6453: $81
    ld c, a                                       ; $6454: $4f
    ldh [$fe], a                                  ; $6455: $e0 $fe
    ld [hl], b                                    ; $6457: $70
    jp hl                                         ; $6458: $e9


    ret nz                                        ; $6459: $c0

    cp a                                          ; $645a: $bf
    rrca                                          ; $645b: $0f
    ld [hl], a                                    ; $645c: $77

jr_04a_645d:
    ld e, h                                       ; $645d: $5c
    jr z, jr_04a_6498                             ; $645e: $28 $38

    rst $38                                       ; $6460: $ff
    db $10                                        ; $6461: $10
    ld [hl], b                                    ; $6462: $70
    jr nz, jr_04a_6448                            ; $6463: $20 $e3

    ld b, c                                       ; $6465: $41
    rst $00                                       ; $6466: $c7
    add e                                         ; $6467: $83
    adc a                                         ; $6468: $8f
    ld e, a                                       ; $6469: $5f
    add a                                         ; $646a: $87
    adc a                                         ; $646b: $8f
    adc [hl]                                      ; $646c: $8e
    ld b, b                                       ; $646d: $40
    add b                                         ; $646e: $80
    ld h, $e0                                     ; $646f: $26 $e0
    ldh [rNR43], a                                ; $6471: $e0 $22
    ldh [rIE], a                                  ; $6473: $e0 $ff
    ret nz                                        ; $6475: $c0

    ld bc, $83c0                                  ; $6476: $01 $c0 $83
    ld b, b                                       ; $6479: $40
    adc a                                         ; $647a: $8f
    ld b, b                                       ; $647b: $40
    inc bc                                        ; $647c: $03
    cp [hl]                                       ; $647d: $be
    ld h, d                                       ; $647e: $62
    ret nz                                        ; $647f: $c0

    rlca                                          ; $6480: $07
    nop                                           ; $6481: $00
    ld b, $01                                     ; $6482: $06 $01
    ld [bc], a                                    ; $6484: $02
    adc h                                         ; $6485: $8c
    ret nz                                        ; $6486: $c0

    jp Jump_000_00ff                              ; $6487: $c3 $ff $00


    sub e                                         ; $648a: $93

jr_04a_648b:
    ld h, b                                       ; $648b: $60
    ld e, [hl]                                    ; $648c: $5e
    ld hl, $47b8                                  ; $648d: $21 $b8 $47
    jr nz, jr_04a_648b                            ; $6490: $20 $f9

    rst $18                                       ; $6492: $df
    sbc $c7                                       ; $6493: $de $c7
    call nc, Call_000_04c5                        ; $6495: $d4 $c5 $04

jr_04a_6498:
    ld sp, hl                                     ; $6498: $f9
    db $10                                        ; $6499: $10
    pop hl                                        ; $649a: $e1
    ld b, l                                       ; $649b: $45
    rst $38                                       ; $649c: $ff
    add d                                         ; $649d: $82
    add hl, de                                    ; $649e: $19
    nop                                           ; $649f: $00
    ld b, b                                       ; $64a0: $40
    ld b, b                                       ; $64a1: $40
    rst $00                                       ; $64a2: $c7
    ld b, a                                       ; $64a3: $47
    ld b, a                                       ; $64a4: $47
    rst $38                                       ; $64a5: $ff
    rst $00                                       ; $64a6: $c7
    rst $00                                       ; $64a7: $c7
    ld b, a                                       ; $64a8: $47
    call nz, $8c87                                ; $64a9: $c4 $87 $8c
    add a                                         ; $64ac: $87
    sbc h                                         ; $64ad: $9c
    ld a, a                                       ; $64ae: $7f
    adc a                                         ; $64af: $8f
    db $fd                                        ; $64b0: $fd
    cp $05                                        ; $64b1: $fe $05
    ld b, $c5                                     ; $64b3: $06 $c5
    rst $00                                       ; $64b5: $c7
    cp $e1                                        ; $64b6: $fe $e1
    ld a, h                                       ; $64b8: $7c
    ld b, d                                       ; $64b9: $42
    ret nz                                        ; $64ba: $c0

    ld b, b                                       ; $64bb: $40
    pop bc                                        ; $64bc: $c1
    ld a, h                                       ; $64bd: $7c
    sbc h                                         ; $64be: $9c
    adc b                                         ; $64bf: $88
    sbc h                                         ; $64c0: $9c
    inc e                                         ; $64c1: $1c
    rst $38                                       ; $64c2: $ff
    ldh [$fb], a                                  ; $64c3: $e0 $fb
    jr jr_04a_6447                                ; $64c5: $18 $80

    ld h, d                                       ; $64c7: $62
    ret nz                                        ; $64c8: $c0

    rst $28                                       ; $64c9: $ef
    rst $00                                       ; $64ca: $c7
    rst $38                                       ; $64cb: $ff
    rst $38                                       ; $64cc: $ff
    pop de                                        ; $64cd: $d1
    db $dd                                        ; $64ce: $dd
    ld d, c                                       ; $64cf: $51
    rst $38                                       ; $64d0: $ff
    pop hl                                        ; $64d1: $e1
    pop de                                        ; $64d2: $d1
    ld d, c                                       ; $64d3: $51
    pop de                                        ; $64d4: $d1
    rst $38                                       ; $64d5: $ff
    pop hl                                        ; $64d6: $e1
    sub c                                         ; $64d7: $91
    sbc a                                         ; $64d8: $9f
    rst $38                                       ; $64d9: $ff
    ld a, a                                       ; $64da: $7f
    ld [hl], e                                    ; $64db: $73
    inc hl                                        ; $64dc: $23
    db $e3                                        ; $64dd: $e3
    ld b, d                                       ; $64de: $42
    ld b, c                                       ; $64df: $41
    ret nz                                        ; $64e0: $c0

    ld h, e                                       ; $64e1: $63
    rst $38                                       ; $64e2: $ff
    jp $e060                                      ; $64e3: $c3 $60 $e0


    ld [hl], b                                    ; $64e6: $70
    ldh [$7c], a                                  ; $64e7: $e0 $7c
    cp b                                          ; $64e9: $b8
    ccf                                           ; $64ea: $3f
    rst $38                                       ; $64eb: $ff
    rst $38                                       ; $64ec: $ff
    ld sp, $721f                                  ; $64ed: $31 $1f $72
    ld a, $f4                                     ; $64f0: $3e $f4
    db $fc                                        ; $64f2: $fc
    or $ff                                        ; $64f3: $f6 $ff
    xor $e7                                       ; $64f5: $ee $e7
    ld e, a                                       ; $64f7: $5f
    ld [hl], e                                    ; $64f8: $73
    inc hl                                        ; $64f9: $23
    dec h                                         ; $64fa: $25
    inc hl                                        ; $64fb: $23
    ld sp, hl                                     ; $64fc: $f9
    rst $18                                       ; $64fd: $df
    ldh [$fe], a                                  ; $64fe: $e0 $fe
    cp $01                                        ; $6500: $fe $01
    ld bc, $a0cc                                  ; $6502: $01 $cc $a0
    ld bc, $deff                                  ; $6505: $01 $ff $de
    rst $38                                       ; $6508: $ff
    pop hl                                        ; $6509: $e1
    cp $8f                                        ; $650a: $fe $8f
    ld b, b                                       ; $650c: $40
    inc hl                                        ; $650d: $23
    inc e                                         ; $650e: $1c
    ldh [$a3], a                                  ; $650f: $e0 $a3
    and d                                         ; $6511: $a2
    rst $38                                       ; $6512: $ff
    and d                                         ; $6513: $a2
    and e                                         ; $6514: $a3
    and d                                         ; $6515: $a2
    and e                                         ; $6516: $a3
    or d                                          ; $6517: $b2
    inc hl                                        ; $6518: $23
    ei                                            ; $6519: $fb
    ld [hl-], a                                   ; $651a: $32
    ld [hl], a                                    ; $651b: $77
    cp a                                          ; $651c: $bf
    ld a, [hl]                                    ; $651d: $7e
    add b                                         ; $651e: $80
    rst $38                                       ; $651f: $ff
    ldh [$8e], a                                  ; $6520: $e0 $8e
    adc h                                         ; $6522: $8c
    adc [hl]                                      ; $6523: $8e
    rst $38                                       ; $6524: $ff
    ldh [$fd], a                                  ; $6525: $e0 $fd
    adc d                                         ; $6527: $8a
    cp $e0                                        ; $6528: $fe $e0
    ei                                            ; $652a: $fb
    rst $38                                       ; $652b: $ff
    rst $00                                       ; $652c: $c7
    ld a, a                                       ; $652d: $7f
    ld c, b                                       ; $652e: $48
    ld a, b                                       ; $652f: $78
    rst $38                                       ; $6530: $ff
    ld d, b                                       ; $6531: $50
    ld [hl], b                                    ; $6532: $70
    ld e, b                                       ; $6533: $58
    ld a, b                                       ; $6534: $78
    ld e, a                                       ; $6535: $5f
    ld a, a                                       ; $6536: $7f
    ld e, a                                       ; $6537: $5f
    ld l, a                                       ; $6538: $6f
    rst $38                                       ; $6539: $ff
    ld b, a                                       ; $653a: $47
    ld b, a                                       ; $653b: $47
    reti                                          ; $653c: $d9


    ret nz                                        ; $653d: $c0

    ld hl, sp-$08                                 ; $653e: $f8 $f8
    inc b                                         ; $6540: $04
    inc b                                         ; $6541: $04

jr_04a_6542:
    rst $38                                       ; $6542: $ff
    ld [bc], a                                    ; $6543: $02
    ld [bc], a                                    ; $6544: $02
    ld b, $06                                     ; $6545: $06 $06
    cp $fe                                        ; $6547: $fe $fe
    db $fd                                        ; $6549: $fd
    db $fc                                        ; $654a: $fc
    rst $38                                       ; $654b: $ff
    ei                                            ; $654c: $fb
    ld hl, sp-$71                                 ; $654d: $f8 $8f
    ld b, b                                       ; $654f: $40
    adc a                                         ; $6550: $8f
    adc h                                         ; $6551: $8c
    adc a                                         ; $6552: $8f
    adc b                                         ; $6553: $88
    rst $38                                       ; $6554: $ff
    adc a                                         ; $6555: $8f
    add h                                         ; $6556: $84
    rst $00                                       ; $6557: $c7
    add a                                         ; $6558: $87
    ldh [$c0], a                                  ; $6559: $e0 $c0
    ldh a, [$e0]                                  ; $655b: $f0 $e0
    rst $38                                       ; $655d: $ff
    ld hl, sp+$70                                 ; $655e: $f8 $70
    rst $38                                       ; $6560: $ff
    ccf                                           ; $6561: $3f
    rrca                                          ; $6562: $0f
    ldh a, [$8c]                                  ; $6563: $f0 $8c
    ld [hl], e                                    ; $6565: $73
    sbc $00                                       ; $6566: $de $00
    ret                                           ; $6568: $c9


    rrca                                          ; $6569: $0f
    ldh a, [$03]                                  ; $656a: $f0 $03
    db $fc                                        ; $656c: $fc
    nop                                           ; $656d: $00
    ret                                           ; $656e: $c9


    nop                                           ; $656f: $00
    db $ec                                        ; $6570: $ec
    cp l                                          ; $6571: $bd
    jr z, @-$7e                                   ; $6572: $28 $80

    xor d                                         ; $6574: $aa
    ld [bc], a                                    ; $6575: $02
    ld bc, $0609                                  ; $6576: $01 $09 $06
    add b                                         ; $6579: $80
    xor c                                         ; $657a: $a9
    db $fc                                        ; $657b: $fc
    rst $10                                       ; $657c: $d7
    ld hl, sp-$08                                 ; $657d: $f8 $f8
    ld [hl], a                                    ; $657f: $77
    ld h, b                                       ; $6580: $60
    xor c                                         ; $6581: $a9
    ld a, [hl]                                    ; $6582: $7e
    ld h, b                                       ; $6583: $60
    xor h                                         ; $6584: $ac
    rst $38                                       ; $6585: $ff
    ld a, [hl]                                    ; $6586: $7e
    ld a, e                                       ; $6587: $7b
    db $fc                                        ; $6588: $fc
    dec sp                                        ; $6589: $3b
    and b                                         ; $658a: $a0
    xor c                                         ; $658b: $a9
    rra                                           ; $658c: $1f
    rst $38                                       ; $658d: $ff
    rra                                           ; $658e: $1f
    xor $a0                                       ; $658f: $ee $a0
    xor c                                         ; $6591: $a9
    rst $30                                       ; $6592: $f7
    ccf                                           ; $6593: $3f
    rst $18                                       ; $6594: $df
    cpl                                           ; $6595: $2f
    jr nz, jr_04a_6542                            ; $6596: $20 $aa

    ld [c], a                                     ; $6598: $e2
    pop hl                                        ; $6599: $e1
    jp hl                                         ; $659a: $e9


    add $de                                       ; $659b: $c6 $de
    jr nz, @-$55                                  ; $659d: $20 $a9

    ccf                                           ; $659f: $3f
    sbc $1f                                       ; $65a0: $de $1f
    db $ec                                        ; $65a2: $ec
    ld [hl], b                                    ; $65a3: $70
    xor c                                         ; $65a4: $a9
    ei                                            ; $65a5: $fb
    rst $38                                       ; $65a6: $ff
    ld a, e                                       ; $65a7: $7b
    ei                                            ; $65a8: $fb
    ld [hl], l                                    ; $65a9: $75
    ldh a, [$89]                                  ; $65aa: $f0 $89
    jp nz, $c9c1                                  ; $65ac: $c2 $c1 $c9

    add [hl]                                      ; $65af: $86
    ret nc                                        ; $65b0: $d0

    ld [$dff7], a                                 ; $65b1: $ea $f7 $df
    rra                                           ; $65b4: $1f
    rst $28                                       ; $65b5: $ef
    ld b, b                                       ; $65b6: $40
    xor c                                         ; $65b7: $a9
    ld de, $46e0                                  ; $65b8: $11 $e0 $46
    add c                                         ; $65bb: $81
    rst $38                                       ; $65bc: $ff
    add hl, de                                    ; $65bd: $19
    nop                                           ; $65be: $00
    ld h, d                                       ; $65bf: $62
    ld bc, $008d                                  ; $65c0: $01 $8d $00
    ld sp, $ff00                                  ; $65c3: $31 $00 $ff
    call nz, Call_000_1303                        ; $65c6: $c4 $03 $13
    inc c                                         ; $65c9: $0c
    nop                                           ; $65ca: $00
    rst $38                                       ; $65cb: $ff
    add b                                         ; $65cc: $80
    ld a, a                                       ; $65cd: $7f
    inc e                                         ; $65ce: $1c
    add $81                                       ; $65cf: $c6 $81
    db $fc                                        ; $65d1: $fc
    db $e3                                        ; $65d2: $e3
    add b                                         ; $65d3: $80
    ld a, a                                       ; $65d4: $7f
    ld de, $e872                                  ; $65d5: $11 $72 $e8
    nop                                           ; $65d8: $00
    and c                                         ; $65d9: $a1
    ld hl, sp-$7b                                 ; $65da: $f8 $85
    dec c                                         ; $65dc: $0d
    ld de, $a228                                  ; $65dd: $11 $28 $a2
    inc bc                                        ; $65e0: $03
    nop                                           ; $65e1: $00
    nop                                           ; $65e2: $00
    nop                                           ; $65e3: $00
    nop                                           ; $65e4: $00
    xor a                                         ; $65e5: $af
    inc c                                         ; $65e6: $0c
    dec c                                         ; $65e7: $0d
    ld c, $0f                                     ; $65e8: $0e $0f
    db $fc                                        ; $65ea: $fc
    db $ed                                        ; $65eb: $ed
    nop                                           ; $65ec: $00
    rst $38                                       ; $65ed: $ff
    add sp, $1a                                   ; $65ee: $e8 $1a
    rst $20                                       ; $65f0: $e7
    dec de                                        ; $65f1: $1b
    inc e                                         ; $65f2: $1c
    dec e                                         ; $65f3: $1d
    db $fc                                        ; $65f4: $fc
    db $ed                                        ; $65f5: $ed
    ldh [$e9], a                                  ; $65f6: $e0 $e9
    ld a, [hl+]                                   ; $65f8: $2a
    dec hl                                        ; $65f9: $2b
    inc l                                         ; $65fa: $2c
    ld a, c                                       ; $65fb: $79
    dec l                                         ; $65fc: $2d
    db $fc                                        ; $65fd: $fc
    db $ed                                        ; $65fe: $ed
    ret nz                                        ; $65ff: $c0

    jp hl                                         ; $6600: $e9


    jr c, jr_04a_663c                             ; $6601: $38 $39

    ld a, [hl-]                                   ; $6603: $3a
    dec sp                                        ; $6604: $3b
    db $fc                                        ; $6605: $fc
    db $ed                                        ; $6606: $ed
    nop                                           ; $6607: $00
    and b                                         ; $6608: $a0
    jp hl                                         ; $6609: $e9


    add b                                         ; $660a: $80
    rst $38                                       ; $660b: $ff
    add b                                         ; $660c: $80
    rst $38                                       ; $660d: $ff
    add b                                         ; $660e: $80
    rst $38                                       ; $660f: $ff
    add b                                         ; $6610: $80
    rst $38                                       ; $6611: $ff
    add b                                         ; $6612: $80
    rst $38                                       ; $6613: $ff
    add b                                         ; $6614: $80
    rst $38                                       ; $6615: $ff
    add b                                         ; $6616: $80
    rst $38                                       ; $6617: $ff
    cp $80                                        ; $6618: $fe $80
    pop af                                        ; $661a: $f1
    db $10                                        ; $661b: $10
    ld de, $1312                                  ; $661c: $11 $12 $13
    inc d                                         ; $661f: $14
    dec d                                         ; $6620: $15
    inc c                                         ; $6621: $0c
    rst $38                                       ; $6622: $ff
    ld d, $17                                     ; $6623: $16 $17
    jr jr_04a_6633                                ; $6625: $18 $0c

    add hl, de                                    ; $6627: $19
    nop                                           ; $6628: $00
    ld bc, $fd06                                  ; $6629: $01 $06 $fd
    rlca                                          ; $662c: $07
    add b                                         ; $662d: $80
    db $ed                                        ; $662e: $ed
    ld e, $1f                                     ; $662f: $1e $1f
    jr nz, jr_04a_6654                            ; $6631: $20 $21

jr_04a_6633:
    ld [hl+], a                                   ; $6633: $22
    inc hl                                        ; $6634: $23
    rst $38                                       ; $6635: $ff
    inc h                                         ; $6636: $24
    dec h                                         ; $6637: $25
    ld h, $27                                     ; $6638: $26 $27
    jr z, jr_04a_6665                             ; $663a: $28 $29

jr_04a_663c:
    ld [bc], a                                    ; $663c: $02
    inc bc                                        ; $663d: $03
    ei                                            ; $663e: $fb
    ld [$8009], sp                                ; $663f: $08 $09 $80

jr_04a_6642:
    db $ed                                        ; $6642: $ed
    ld l, $2f                                     ; $6643: $2e $2f
    jr nc, jr_04a_6678                            ; $6645: $30 $31

    ld [hl-], a                                   ; $6647: $32
    rst $38                                       ; $6648: $ff
    inc sp                                        ; $6649: $33
    ld a, [hl+]                                   ; $664a: $2a
    inc [hl]                                      ; $664b: $34
    dec [hl]                                      ; $664c: $35
    ld [hl], $2a                                  ; $664d: $36 $2a
    scf                                           ; $664f: $37
    inc b                                         ; $6650: $04
    rlca                                          ; $6651: $07
    dec b                                         ; $6652: $05
    ld a, [bc]                                    ; $6653: $0a

jr_04a_6654:
    dec bc                                        ; $6654: $0b
    add b                                         ; $6655: $80
    rst $38                                       ; $6656: $ff
    jr nz, jr_04a_6642                            ; $6657: $20 $e9

    rst $38                                       ; $6659: $ff
    rst $38                                       ; $665a: $ff
    rst $38                                       ; $665b: $ff
    rst $38                                       ; $665c: $ff
    rst $38                                       ; $665d: $ff
    rst $38                                       ; $665e: $ff
    nop                                           ; $665f: $00
    rst $38                                       ; $6660: $ff
    rst $38                                       ; $6661: $ff
    rst $38                                       ; $6662: $ff
    rst $38                                       ; $6663: $ff
    rst $38                                       ; $6664: $ff

jr_04a_6665:
    rst $38                                       ; $6665: $ff
    rst $38                                       ; $6666: $ff
    rst $38                                       ; $6667: $ff
    rst $38                                       ; $6668: $ff
    rst $38                                       ; $6669: $ff
    rst $38                                       ; $666a: $ff
    rst $38                                       ; $666b: $ff
    rst $38                                       ; $666c: $ff
    rst $38                                       ; $666d: $ff
    rst $38                                       ; $666e: $ff
    rst $38                                       ; $666f: $ff
    jr nc, @+$01                                  ; $6670: $30 $ff

    rst $38                                       ; $6672: $ff
    rst $38                                       ; $6673: $ff
    rst $38                                       ; $6674: $ff
    rst $38                                       ; $6675: $ff
    rst $38                                       ; $6676: $ff
    rst $38                                       ; $6677: $ff

jr_04a_6678:
    rst $38                                       ; $6678: $ff
    nop                                           ; $6679: $00
    nop                                           ; $667a: $00
    nop                                           ; $667b: $00
    nop                                           ; $667c: $00
    nop                                           ; $667d: $00
    db $fc                                        ; $667e: $fc
    inc bc                                        ; $667f: $03
    ld d, h                                       ; $6680: $54
    inc bc                                        ; $6681: $03
    ret nz                                        ; $6682: $c0

    ld a, [de]                                    ; $6683: $1a
    rra                                           ; $6684: $1f
    nop                                           ; $6685: $00
    jr nz, jr_04a_6706                            ; $6686: $20 $7e

    ld b, b                                       ; $6688: $40
    ld [hl], d                                    ; $6689: $72
    ld h, b                                       ; $668a: $60
    ld h, [hl]                                    ; $668b: $66
    add c                                         ; $668c: $81
    ld e, d                                       ; $668d: $5a
    and h                                         ; $668e: $a4
    ld c, [hl]                                    ; $668f: $4e
    rst $00                                       ; $6690: $c7
    ld b, d                                       ; $6691: $42
    ld [$0d36], a                                 ; $6692: $ea $36 $0d
    dec hl                                        ; $6695: $2b
    jr nc, jr_04a_66b7                            ; $6696: $30 $1f

    dec c                                         ; $6698: $0d
    dec hl                                        ; $6699: $2b
    ld [$c736], a                                 ; $669a: $ea $36 $c7
    ld b, d                                       ; $669d: $42
    and h                                         ; $669e: $a4
    ld c, [hl]                                    ; $669f: $4e
    add c                                         ; $66a0: $81
    ld e, d                                       ; $66a1: $5a
    ld h, b                                       ; $66a2: $60
    ld h, [hl]                                    ; $66a3: $66
    ld b, b                                       ; $66a4: $40
    ld [hl], d                                    ; $66a5: $72
    rra                                           ; $66a6: $1f
    nop                                           ; $66a7: $00
    sbc a                                         ; $66a8: $9f
    nop                                           ; $66a9: $00
    rra                                           ; $66aa: $1f
    ld bc, $019f                                  ; $66ab: $01 $9f $01
    rra                                           ; $66ae: $1f
    ld [bc], a                                    ; $66af: $02
    sbc a                                         ; $66b0: $9f
    ld bc, $011f                                  ; $66b1: $01 $1f $01
    sbc a                                         ; $66b4: $9f
    nop                                           ; $66b5: $00
    cp h                                          ; $66b6: $bc

jr_04a_66b7:
    ld h, [hl]                                    ; $66b7: $66
    sbc l                                         ; $66b8: $9d
    ld l, b                                       ; $66b9: $68
    ld d, $69                                     ; $66ba: $16 $69
    db $fd                                        ; $66bc: $fd
    nop                                           ; $66bd: $00
    rst $38                                       ; $66be: $ff
    db $ec                                        ; $66bf: $ec

jr_04a_66c0:
    adc b                                         ; $66c0: $88
    ld [hl], b                                    ; $66c1: $70
    adc b                                         ; $66c2: $88
    ld [hl], b                                    ; $66c3: $70
    ld [$d7f0], sp                                ; $66c4: $08 $f0 $d7
    ld [$f8f0], sp                                ; $66c7: $08 $f0 $f8
    rst $20                                       ; $66ca: $e7
    db $e4                                        ; $66cb: $e4
    rst $38                                       ; $66cc: $ff
    cp $e0                                        ; $66cd: $fe $e0
    add b                                         ; $66cf: $80
    ld a, a                                       ; $66d0: $7f
    rst $20                                       ; $66d1: $e7
    add b                                         ; $66d2: $80
    ld a, a                                       ; $66d3: $7f
    adc a                                         ; $66d4: $8f
    add sp, -$20                                  ; $66d5: $e8 $e0
    db $e4                                        ; $66d7: $e4
    pop hl                                        ; $66d8: $e1
    adc e                                         ; $66d9: $8b
    ld [hl], c                                    ; $66da: $71
    sbc a                                         ; $66db: $9f
    rst $38                                       ; $66dc: $ff
    ld l, [hl]                                    ; $66dd: $6e
    ld a, b                                       ; $66de: $78
    or b                                          ; $66df: $b0
    ldh [rLCDC], a                                ; $66e0: $e0 $40
    add a                                         ; $66e2: $87
    add e                                         ; $66e3: $83
    sbc $fb                                       ; $66e4: $de $fb
    adc h                                         ; $66e6: $8c
    db $fc                                        ; $66e7: $fc
    rst $38                                       ; $66e8: $ff
    ldh [rIE], a                                  ; $66e9: $e0 $ff
    ld hl, sp+$0f                                 ; $66eb: $f8 $0f
    inc b                                         ; $66ed: $04
    ld b, $ff                                     ; $66ee: $06 $ff
    inc bc                                        ; $66f0: $03
    ld a, [c]                                     ; $66f1: $f2
    ld h, e                                       ; $66f2: $63
    di                                            ; $66f3: $f3
    ld a, [c]                                     ; $66f4: $f2
    ld a, [c]                                     ; $66f5: $f2
    ld [c], a                                     ; $66f6: $e2
    and $ff                                       ; $66f7: $e6 $ff
    jp nz, Jump_000_060e                          ; $66f9: $c2 $0e $06

    adc b                                         ; $66fc: $88
    ld [hl], b                                    ; $66fd: $70
    sbc [hl]                                      ; $66fe: $9e
    ld l, h                                       ; $66ff: $6c
    rla                                           ; $6700: $17
    rst $38                                       ; $6701: $ff
    di                                            ; $6702: $f3
    inc de                                        ; $6703: $13
    di                                            ; $6704: $f3
    di                                            ; $6705: $f3

jr_04a_6706:
    inc de                                        ; $6706: $13
    inc sp                                        ; $6707: $33
    inc de                                        ; $6708: $13
    inc sp                                        ; $6709: $33
    rst $38                                       ; $670a: $ff
    inc hl                                        ; $670b: $23
    daa                                           ; $670c: $27
    inc hl                                        ; $670d: $23
    rst $38                                       ; $670e: $ff
    ld h, b                                       ; $670f: $60
    sbc a                                         ; $6710: $9f
    sub b                                         ; $6711: $90
    sub b                                         ; $6712: $90
    ld a, a                                       ; $6713: $7f
    sbc a                                         ; $6714: $9f
    sub b                                         ; $6715: $90
    rra                                           ; $6716: $1f
    ccf                                           ; $6717: $3f
    db $10                                        ; $6718: $10
    jr c, jr_04a_674b                             ; $6719: $38 $30

    cp $e0                                        ; $671b: $fe $e0
    db $fd                                        ; $671d: $fd
    jr nz, jr_04a_66c0                            ; $671e: $20 $a0

    db $e3                                        ; $6720: $e3
    ld e, $ec                                     ; $6721: $1e $ec
    or $12                                        ; $6723: $f6 $12
    ld [de], a                                    ; $6725: $12
    ld [de], a                                    ; $6726: $12
    rst $38                                       ; $6727: $ff
    ld [hl-], a                                   ; $6728: $32
    ld [de], a                                    ; $6729: $12
    ld [hl-], a                                   ; $672a: $32
    ld [hl+], a                                   ; $672b: $22
    rst $38                                       ; $672c: $ff
    inc c                                         ; $672d: $0c
    rst $30                                       ; $672e: $f7
    ld [hl], d                                    ; $672f: $72
    rst $38                                       ; $6730: $ff
    or e                                          ; $6731: $b3
    sub c                                         ; $6732: $91
    sbc c                                         ; $6733: $99
    sub c                                         ; $6734: $91
    reti                                          ; $6735: $d9


    adc c                                         ; $6736: $89
    call $ff49                                    ; $6737: $cd $49 $ff
    rst $28                                       ; $673a: $ef
    rst $08                                       ; $673b: $cf
    di                                            ; $673c: $f3
    ld [hl], e                                    ; $673d: $73
    adc a                                         ; $673e: $8f
    halt                                          ; $673f: $76
    adc l                                         ; $6740: $8d
    ld a, c                                       ; $6741: $79
    rst $38                                       ; $6742: $ff
    add hl, de                                    ; $6743: $19
    jp hl                                         ; $6744: $e9


    add hl, de                                    ; $6745: $19
    pop af                                        ; $6746: $f1
    pop af                                        ; $6747: $f1
    ld de, $1011                                  ; $6748: $11 $11 $10

jr_04a_674b:
    rst $28                                       ; $674b: $ef
    db $10                                        ; $674c: $10
    db $10                                        ; $674d: $10
    ld [de], a                                    ; $674e: $12
    db $10                                        ; $674f: $10
    add b                                         ; $6750: $80
    rst $20                                       ; $6751: $e7
    ld hl, sp-$20                                 ; $6752: $f8 $e0
    inc a                                         ; $6754: $3c
    rst $38                                       ; $6755: $ff
    jr jr_04a_675c                                ; $6756: $18 $04

    inc b                                         ; $6758: $04
    adc b                                         ; $6759: $88
    ld [hl], b                                    ; $675a: $70
    rst $38                                       ; $675b: $ff

jr_04a_675c:
    ld h, a                                       ; $675c: $67
    call c, $98ff                                 ; $675d: $dc $ff $98
    add b                                         ; $6760: $80
    add b                                         ; $6761: $80
    add e                                         ; $6762: $83
    add c                                         ; $6763: $81
    adc a                                         ; $6764: $8f
    add a                                         ; $6765: $87
    sbc a                                         ; $6766: $9f
    rst $30                                       ; $6767: $f7
    sbc a                                         ; $6768: $9f
    sbc a                                         ; $6769: $9f
    adc [hl]                                      ; $676a: $8e
    ld h, b                                       ; $676b: $60
    ldh [$f8], a                                  ; $676c: $e0 $f8
    ld c, $05                                     ; $676e: $0e $05
    ld b, $ef                                     ; $6770: $06 $ef
    inc bc                                        ; $6772: $03
    di                                            ; $6773: $f3
    ld [c], a                                     ; $6774: $e2
    ld a, [c]                                     ; $6775: $f2
    rst $38                                       ; $6776: $ff
    ldh [$b2], a                                  ; $6777: $e0 $b2
    ld h, d                                       ; $6779: $62
    sbc a                                         ; $677a: $9f
    rst $30                                       ; $677b: $f7
    ld l, a                                       ; $677c: $6f
    ld hl, sp+$30                                 ; $677d: $f8 $30
    ld h, d                                       ; $677f: $62
    pop hl                                        ; $6780: $e1
    rst $18                                       ; $6781: $df
    adc a                                         ; $6782: $8f
    rst $38                                       ; $6783: $ff
    rst $38                                       ; $6784: $ff
    rst $38                                       ; $6785: $ff
    rst $38                                       ; $6786: $ff
    db $fd                                        ; $6787: $fd
    ei                                            ; $6788: $fb
    ld [hl], d                                    ; $6789: $72
    rst $38                                       ; $678a: $ff
    ldh [$3f], a                                  ; $678b: $e0 $3f
    db $10                                        ; $678d: $10
    rst $38                                       ; $678e: $ff
    jr @+$11                                      ; $678f: $18 $0f

    adc b                                         ; $6791: $88
    adc a                                         ; $6792: $8f
    adc a                                         ; $6793: $8f
    adc b                                         ; $6794: $88
    sbc b                                         ; $6795: $98
    adc b                                         ; $6796: $88
    rst $38                                       ; $6797: $ff
    sbc b                                         ; $6798: $98

jr_04a_6799:
    jr jr_04a_67b3                                ; $6799: $18 $18

    jr jr_04a_6799                                ; $679b: $18 $fc

    ld [hl], h                                    ; $679d: $74
    db $fc                                        ; $679e: $fc
    ld [$99ff], sp                                ; $679f: $08 $ff $99
    ld l, b                                       ; $67a2: $68
    cp c                                          ; $67a3: $b9
    ld d, c                                       ; $67a4: $51
    or e                                          ; $67a5: $b3
    ld h, c                                       ; $67a6: $61
    and a                                         ; $67a7: $a7
    ld h, e                                       ; $67a8: $63
    rst $38                                       ; $67a9: $ff
    cp a                                          ; $67aa: $bf
    ld h, a                                       ; $67ab: $67
    cp a                                          ; $67ac: $bf
    ld a, [hl]                                    ; $67ad: $7e
    ld e, $0e                                     ; $67ae: $1e $0e
    cp $fc                                        ; $67b0: $fe $fc
    ld a, a                                       ; $67b2: $7f

jr_04a_67b3:
    db $fc                                        ; $67b3: $fc
    ld hl, sp-$08                                 ; $67b4: $f8 $f8
    ldh a, [$f8]                                  ; $67b6: $f0 $f8
    add b                                         ; $67b8: $80
    add b                                         ; $67b9: $80
    push af                                       ; $67ba: $f5
    jp nz, $e7fb                                  ; $67bb: $c2 $fb $e7

    daa                                           ; $67be: $27
    cp $e0                                        ; $67bf: $fe $e0
    ld b, l                                       ; $67c1: $45
    call $cf47                                    ; $67c2: $cd $47 $cf
    adc l                                         ; $67c5: $8d
    rst $38                                       ; $67c6: $ff
    sbc l                                         ; $67c7: $9d
    adc l                                         ; $67c8: $8d
    sbc l                                         ; $67c9: $9d
    sbc c                                         ; $67ca: $99
    ld sp, hl                                     ; $67cb: $f9
    ld sp, hl                                     ; $67cc: $f9
    cpl                                           ; $67cd: $2f
    ld [hl], $ff                                  ; $67ce: $36 $ff
    dec a                                         ; $67d0: $3d
    add hl, hl                                    ; $67d1: $29
    add hl, sp                                    ; $67d2: $39
    ld sp, $0123                                  ; $67d3: $31 $23 $01
    rlca                                          ; $67d6: $07
    inc bc                                        ; $67d7: $03
    rst $38                                       ; $67d8: $ff
    adc a                                         ; $67d9: $8f
    rlca                                          ; $67da: $07
    sbc $8e                                       ; $67db: $de $8e
    db $fc                                        ; $67dd: $fc
    db $fc                                        ; $67de: $fc
    rst $20                                       ; $67df: $e7
    ld [hl+], a                                   ; $67e0: $22
    rst $38                                       ; $67e1: $ff
    rst $20                                       ; $67e2: $e7
    ld h, $e6                                     ; $67e3: $26 $e6
    ld b, a                                       ; $67e5: $47
    adc $45                                       ; $67e6: $ce $45
    rst $08                                       ; $67e8: $cf
    adc h                                         ; $67e9: $8c
    rst $38                                       ; $67ea: $ff
    sbc h                                         ; $67eb: $9c
    adc h                                         ; $67ec: $8c
    call c, $f898                                 ; $67ed: $dc $98 $f8
    ld hl, sp-$0d                                 ; $67f0: $f8 $f3
    ld h, d                                       ; $67f2: $62
    rst $38                                       ; $67f3: $ff
    di                                            ; $67f4: $f3
    ld [hl-], a                                   ; $67f5: $32
    inc sp                                        ; $67f6: $33
    pop af                                        ; $67f7: $f1
    add hl, sp                                    ; $67f8: $39
    pop de                                        ; $67f9: $d1
    ld sp, hl                                     ; $67fa: $f9
    add hl, de                                    ; $67fb: $19
    cp a                                          ; $67fc: $bf
    add hl, de                                    ; $67fd: $19
    add hl, de                                    ; $67fe: $19
    dec de                                        ; $67ff: $1b
    add hl, bc                                    ; $6800: $09
    rrca                                          ; $6801: $0f
    rrca                                          ; $6802: $0f
    dec b                                         ; $6803: $05
    ldh [rNR13], a                                ; $6804: $e0 $13
    rst $38                                       ; $6806: $ff
    sub e                                         ; $6807: $93
    ld [hl], e                                    ; $6808: $73
    sub e                                         ; $6809: $93
    ld [hl], c                                    ; $680a: $71
    sbc c                                         ; $680b: $99
    ld [hl], c                                    ; $680c: $71
    sbc c                                         ; $680d: $99
    ld a, c                                       ; $680e: $79
    cp a                                          ; $680f: $bf
    sbc l                                         ; $6810: $9d
    ld a, c                                       ; $6811: $79
    sbc a                                         ; $6812: $9f
    ld l, a                                       ; $6813: $6f
    call z, $da84                                 ; $6814: $cc $84 $da
    pop bc                                        ; $6817: $c1
    db $fc                                        ; $6818: $fc
    db $fd                                        ; $6819: $fd
    ld a, b                                       ; $681a: $78
    or b                                          ; $681b: $b0
    push bc                                       ; $681c: $c5
    rst $08                                       ; $681d: $cf
    adc b                                         ; $681e: $88
    rst $08                                       ; $681f: $cf
    ret z                                         ; $6820: $c8

    call z, $ffcb                                 ; $6821: $cc $cb $ff
    rst $08                                       ; $6824: $cf
    ld b, l                                       ; $6825: $45
    rst $20                                       ; $6826: $e7
    ld b, [hl]                                    ; $6827: $46
    ldh [$60], a                                  ; $6828: $e0 $60
    ldh a, [$60]                                  ; $682a: $f0 $60
    rst $38                                       ; $682c: $ff
    rst $38                                       ; $682d: $ff

jr_04a_682e:
    ccf                                           ; $682e: $3f
    and [hl]                                      ; $682f: $a6
    ld h, d                                       ; $6830: $62
    and $26                                       ; $6831: $e6 $26
    ld h, [hl]                                    ; $6833: $66
    add $ff                                       ; $6834: $c6 $ff
    add $c4                                       ; $6836: $c6 $c4
    ld [bc], a                                    ; $6838: $02
    ld [bc], a                                    ; $6839: $02
    ld b, $02                                     ; $683a: $06 $02
    cp $7e                                        ; $683c: $fe $7e
    rst $38                                       ; $683e: $ff
    cp $fe                                        ; $683f: $fe $fe
    cp $02                                        ; $6841: $fe $02
    cp $04                                        ; $6843: $fe $04
    sbc h                                         ; $6845: $9c
    ld l, b                                       ; $6846: $68
    rst $28                                       ; $6847: $ef
    ld sp, hl                                     ; $6848: $f9
    jr nc, jr_04a_682e                            ; $6849: $30 $e3

    ld b, c                                       ; $684b: $41
    inc a                                         ; $684c: $3c
    ld [c], a                                     ; $684d: $e2
    ld a, [hl]                                    ; $684e: $7e
    jr jr_04a_6861                                ; $684f: $18 $10

    rst $38                                       ; $6851: $ff
    inc e                                         ; $6852: $1c
    ld [$04cc], sp                                ; $6853: $08 $cc $04
    and $c4                                       ; $6856: $e6 $c4
    and $e2                                       ; $6858: $e6 $e2
    rst $38                                       ; $685a: $ff
    ld a, [c]                                     ; $685b: $f2
    ld [c], a                                     ; $685c: $e2
    or $32                                        ; $685d: $f6 $32
    ld a, $3e                                     ; $685f: $3e $3e

jr_04a_6861:
    cp [hl]                                       ; $6861: $be
    ld a, h                                       ; $6862: $7c
    ld a, e                                       ; $6863: $7b
    cp h                                          ; $6864: $bc
    ld e, b                                       ; $6865: $58
    ld h, b                                       ; $6866: $60
    ret                                           ; $6867: $c9


    ld sp, hl                                     ; $6868: $f9
    ldh a, [$f8]                                  ; $6869: $f0 $f8
    ld h, b                                       ; $686b: $60
    ld d, b                                       ; $686c: $50
    jp z, $f8c7                                   ; $686d: $ca $c7 $f8

    rst $38                                       ; $6870: $ff
    ld [hl], b                                    ; $6871: $70
    ld d, b                                       ; $6872: $50
    ret                                           ; $6873: $c9


    ld h, $e0                                     ; $6874: $26 $e0
    ldh [$eb], a                                  ; $6876: $e0 $eb
    rrca                                          ; $6878: $0f
    rst $38                                       ; $6879: $ff
    cp l                                          ; $687a: $bd
    ld b, $30                                     ; $687b: $06 $30
    ret                                           ; $687d: $c9


    adc a                                         ; $687e: $8f
    ld a, a                                       ; $687f: $7f
    adc a                                         ; $6880: $8f
    halt                                          ; $6881: $76
    db $10                                        ; $6882: $10
    ret                                           ; $6883: $c9


    cp a                                          ; $6884: $bf
    ld [hl], a                                    ; $6885: $77
    ld a, a                                       ; $6886: $7f
    cp a                                          ; $6887: $bf
    ld e, a                                       ; $6888: $5f
    nop                                           ; $6889: $00
    jp z, $fffc                                   ; $688a: $ca $fc $ff

    add b                                         ; $688d: $80
    nop                                           ; $688e: $00
    ret                                           ; $688f: $c9


    inc e                                         ; $6890: $1c
    jp nc, $e0c0                                  ; $6891: $d2 $c0 $e0

    xor e                                         ; $6894: $ab
    ld e, $ff                                     ; $6895: $1e $ff
    inc c                                         ; $6897: $0c
    ldh [$a9], a                                  ; $6898: $e0 $a9
    nop                                           ; $689a: $00
    nop                                           ; $689b: $00
    nop                                           ; $689c: $00
    ld c, e                                       ; $689d: $4b
    ld bc, $fe02                                  ; $689e: $01 $02 $fe
    rst $28                                       ; $68a1: $ef
    nop                                           ; $68a2: $00
    rst $38                                       ; $68a3: $ff
    add sp, -$1f                                  ; $68a4: $e8 $e1
    ldh a, [rSB]                                  ; $68a6: $f0 $01
    ldh [$e9], a                                  ; $68a8: $e0 $e9
    nop                                           ; $68aa: $00
    ret nz                                        ; $68ab: $c0

    rst $38                                       ; $68ac: $ff
    ret nz                                        ; $68ad: $c0

    rst $38                                       ; $68ae: $ff
    ret nz                                        ; $68af: $c0

    rst $38                                       ; $68b0: $ff
    ret nz                                        ; $68b1: $c0

    rst $38                                       ; $68b2: $ff
    ret nz                                        ; $68b3: $c0

    rst $38                                       ; $68b4: $ff
    ret nz                                        ; $68b5: $c0

    rst $38                                       ; $68b6: $ff
    ret nz                                        ; $68b7: $c0

    rst $38                                       ; $68b8: $ff
    ret nz                                        ; $68b9: $c0

    rst $38                                       ; $68ba: $ff
    db $fc                                        ; $68bb: $fc
    ret nz                                        ; $68bc: $c0

    rst $38                                       ; $68bd: $ff
    ret nz                                        ; $68be: $c0

    rst $28                                       ; $68bf: $ef
    inc bc                                        ; $68c0: $03
    inc b                                         ; $68c1: $04
    dec b                                         ; $68c2: $05
    ld b, $07                                     ; $68c3: $06 $07
    ld [$09bf], sp                                ; $68c5: $08 $bf $09
    ld a, [bc]                                    ; $68c8: $0a
    dec bc                                        ; $68c9: $0b
    inc c                                         ; $68ca: $0c
    dec c                                         ; $68cb: $0d
    ld c, $c0                                     ; $68cc: $0e $c0
    pop af                                        ; $68ce: $f1
    rrca                                          ; $68cf: $0f
    rst $38                                       ; $68d0: $ff
    db $10                                        ; $68d1: $10
    ld de, $1312                                  ; $68d2: $11 $12 $13
    inc d                                         ; $68d5: $14
    dec d                                         ; $68d6: $15
    ld d, $17                                     ; $68d7: $16 $17
    rst $30                                       ; $68d9: $f7
    jr jr_04a_68f5                                ; $68da: $18 $19

    ld a, [de]                                    ; $68dc: $1a
    add b                                         ; $68dd: $80

jr_04a_68de:
    pop af                                        ; $68de: $f1
    dec de                                        ; $68df: $1b
    ld [bc], a                                    ; $68e0: $02
    inc e                                         ; $68e1: $1c
    dec e                                         ; $68e2: $1d
    rst $38                                       ; $68e3: $ff
    ld e, $1f                                     ; $68e4: $1e $1f
    jr nz, @+$04                                  ; $68e6: $20 $02

    ld hl, $2322                                  ; $68e8: $21 $22 $23
    inc h                                         ; $68eb: $24
    nop                                           ; $68ec: $00
    add b                                         ; $68ed: $80
    rst $38                                       ; $68ee: $ff
    ld b, b                                       ; $68ef: $40
    db $eb                                        ; $68f0: $eb
    rst $38                                       ; $68f1: $ff
    rst $38                                       ; $68f2: $ff
    rst $38                                       ; $68f3: $ff
    rst $38                                       ; $68f4: $ff

jr_04a_68f5:
    rst $38                                       ; $68f5: $ff
    rst $38                                       ; $68f6: $ff
    rst $38                                       ; $68f7: $ff
    rst $38                                       ; $68f8: $ff
    rst $38                                       ; $68f9: $ff
    rst $38                                       ; $68fa: $ff
    rst $38                                       ; $68fb: $ff
    rst $38                                       ; $68fc: $ff
    nop                                           ; $68fd: $00
    rst $38                                       ; $68fe: $ff
    rst $38                                       ; $68ff: $ff
    rst $38                                       ; $6900: $ff
    rst $38                                       ; $6901: $ff
    rst $38                                       ; $6902: $ff
    rst $38                                       ; $6903: $ff
    rst $38                                       ; $6904: $ff
    rst $38                                       ; $6905: $ff
    rst $38                                       ; $6906: $ff
    rst $38                                       ; $6907: $ff
    rst $38                                       ; $6908: $ff
    rst $38                                       ; $6909: $ff
    rst $38                                       ; $690a: $ff
    rst $38                                       ; $690b: $ff
    rst $38                                       ; $690c: $ff
    rst $38                                       ; $690d: $ff
    ld b, $ff                                     ; $690e: $06 $ff
    rst $38                                       ; $6910: $ff
    nop                                           ; $6911: $00
    nop                                           ; $6912: $00
    nop                                           ; $6913: $00
    nop                                           ; $6914: $00
    nop                                           ; $6915: $00
    db $fc                                        ; $6916: $fc
    inc bc                                        ; $6917: $03
    ld a, e                                       ; $6918: $7b
    ld h, d                                       ; $6919: $62
    adc $7d                                       ; $691a: $ce $7d
    rra                                           ; $691c: $1f
    jr jr_04a_68de                                ; $691d: $18 $bf

    ld a, [de]                                    ; $691f: $1a
    ld a, a                                       ; $6920: $7f
    ld [hl+], a                                   ; $6921: $22
    ccf                                           ; $6922: $3f
    ld a, [hl+]                                   ; $6923: $2a
    rst $38                                       ; $6924: $ff
    ld sp, $39bf                                  ; $6925: $31 $bf $39
    ld a, a                                       ; $6928: $7f
    ld b, c                                       ; $6929: $41
    ccf                                           ; $692a: $3f
    ld c, c                                       ; $692b: $49
    rst $38                                       ; $692c: $ff
    ld d, b                                       ; $692d: $50
    cp a                                          ; $692e: $bf
    ld e, b                                       ; $692f: $58
    rst $38                                       ; $6930: $ff
    ld d, b                                       ; $6931: $50
    ccf                                           ; $6932: $3f
    ld c, c                                       ; $6933: $49
    ld a, a                                       ; $6934: $7f
    ld b, c                                       ; $6935: $41
    cp a                                          ; $6936: $bf
    add hl, sp                                    ; $6937: $39
    rst $38                                       ; $6938: $ff
    ld sp, $2a3f                                  ; $6939: $31 $3f $2a
    ld a, a                                       ; $693c: $7f
    ld [hl+], a                                   ; $693d: $22
    nop                                           ; $693e: $00
    ld a, h                                       ; $693f: $7c
    add b                                         ; $6940: $80
    ld a, h                                       ; $6941: $7c
    nop                                           ; $6942: $00
    ld a, l                                       ; $6943: $7d
    add b                                         ; $6944: $80
    ld a, l                                       ; $6945: $7d
    nop                                           ; $6946: $00
    ld a, [hl]                                    ; $6947: $7e
    add b                                         ; $6948: $80
    ld a, l                                       ; $6949: $7d
    nop                                           ; $694a: $00
    ld a, l                                       ; $694b: $7d
    add b                                         ; $694c: $80
    ld a, h                                       ; $694d: $7c
    ld d, h                                       ; $694e: $54
    ld l, c                                       ; $694f: $69
    ld l, c                                       ; $6950: $69
    ld l, e                                       ; $6951: $6b
    rst $20                                       ; $6952: $e7
    ld l, e                                       ; $6953: $6b
    db $fd                                        ; $6954: $fd
    nop                                           ; $6955: $00
    rst $38                                       ; $6956: $ff
    db $ed                                        ; $6957: $ed
    rst $38                                       ; $6958: $ff
    ld bc, $00fe                                  ; $6959: $01 $fe $00
    cp $02                                        ; $695c: $fe $02
    rst $38                                       ; $695e: $ff
    db $fc                                        ; $695f: $fc
    inc b                                         ; $6960: $04
    ld hl, sp+$08                                 ; $6961: $f8 $08
    ldh a, [rNR10]                                ; $6963: $f0 $10
    ldh [rSTAT], a                                ; $6965: $e0 $41
    cp a                                          ; $6967: $bf
    add b                                         ; $6968: $80
    jr jr_04a_6972                                ; $6969: $18 $07

    jr jr_04a_6974                                ; $696b: $18 $07

jr_04a_696d:
    jr c, jr_04a_696d                             ; $696d: $38 $fe

    ldh [rSVBK], a                                ; $696f: $e0 $70
    rst $38                                       ; $6971: $ff

jr_04a_6972:
    rrca                                          ; $6972: $0f
    ld [hl], b                                    ; $6973: $70

jr_04a_6974:
    rrca                                          ; $6974: $0f
    ldh [$1f], a                                  ; $6975: $e0 $1f
    ldh [$1f], a                                  ; $6977: $e0 $1f
    nop                                           ; $6979: $00
    rst $38                                       ; $697a: $ff
    ld hl, sp+$00                                 ; $697b: $f8 $00
    ld hl, sp+$04                                 ; $697d: $f8 $04
    ld hl, sp+$00                                 ; $697f: $f8 $00
    db $fc                                        ; $6981: $fc
    ld [bc], a                                    ; $6982: $02
    rst $30                                       ; $6983: $f7
    db $fc                                        ; $6984: $fc
    nop                                           ; $6985: $00
    cp $d6                                        ; $6986: $fe $d6
    ldh [rIE], a                                  ; $6988: $e0 $ff
    ret nz                                        ; $698a: $c0

    ccf                                           ; $698b: $3f
    ret nz                                        ; $698c: $c0

    ei                                            ; $698d: $fb
    ccf                                           ; $698e: $3f
    ld b, b                                       ; $698f: $40
    cp $e0                                        ; $6990: $fe $e0
    jr nz, jr_04a_69b3                            ; $6992: $20 $1f

    db $10                                        ; $6994: $10
    rrca                                          ; $6995: $0f
    ld [$07f7], sp                                ; $6996: $08 $f7 $07
    add d                                         ; $6999: $82
    ld bc, $e1e0                                  ; $699a: $01 $e0 $e1
    dec b                                         ; $699d: $05
    ld hl, sp+$03                                 ; $699e: $f8 $03
    db $fd                                        ; $69a0: $fd
    rst $38                                       ; $69a1: $ff
    rrca                                          ; $69a2: $0f
    or $1c                                        ; $69a3: $f6 $1c

jr_04a_69a5:
    add sp, $38                                   ; $69a5: $e8 $38
    ret nc                                        ; $69a7: $d0

    ld [hl], b                                    ; $69a8: $70
    and b                                         ; $69a9: $a0
    rst $38                                       ; $69aa: $ff
    cp $1d                                        ; $69ab: $fe $1d
    or $63                                        ; $69ad: $f6 $63
    jp nz, $8e83                                  ; $69af: $c2 $83 $8e

    rlca                                          ; $69b2: $07

jr_04a_69b3:
    rst $38                                       ; $69b3: $ff
    ld a, $1f                                     ; $69b4: $3e $1f
    ld a, [hl]                                    ; $69b6: $7e
    dec a                                         ; $69b7: $3d
    ld a, h                                       ; $69b8: $7c
    ld a, e                                       ; $69b9: $7b
    ld [hl], d                                    ; $69ba: $72
    ld h, c                                       ; $69bb: $61
    sbc $a0                                       ; $69bc: $de $a0
    jp hl                                         ; $69be: $e9


    rla                                           ; $69bf: $17
    db $e3                                        ; $69c0: $e3
    ld a, [hl]                                    ; $69c1: $7e
    cp h                                          ; $69c2: $bc

jr_04a_69c3:
    and b                                         ; $69c3: $a0
    jp hl                                         ; $69c4: $e9


    rst $38                                       ; $69c5: $ff
    cp $ff                                        ; $69c6: $fe $ff
    inc bc                                        ; $69c8: $03
    ld bc, $f70f                                  ; $69c9: $01 $0f $f7
    dec c                                         ; $69cc: $0d
    ld hl, sp+$18                                 ; $69cd: $f8 $18
    add sp, -$01                                  ; $69cf: $e8 $ff
    jr jr_04a_69c3                                ; $69d1: $18 $f0

    jr nc, jr_04a_69a5                            ; $69d3: $30 $d0

    inc sp                                        ; $69d5: $33
    pop hl                                        ; $69d6: $e1
    ld h, a                                       ; $69d7: $67
    and e                                         ; $69d8: $a3
    rst $38                                       ; $69d9: $ff
    ld h, a                                       ; $69da: $67
    rst $00                                       ; $69db: $c7
    rst $18                                       ; $69dc: $df
    ld l, $fb                                     ; $69dd: $2e $fb
    pop af                                        ; $69df: $f1
    ld e, c                                       ; $69e0: $59
    ld c, c                                       ; $69e1: $49
    rst $38                                       ; $69e2: $ff
    ld c, l                                       ; $69e3: $4d
    ld c, c                                       ; $69e4: $49
    rst $28                                       ; $69e5: $ef
    ld b, l                                       ; $69e6: $45
    rst $30                                       ; $69e7: $f7
    rst $20                                       ; $69e8: $e7
    rst $38                                       ; $69e9: $ff
    ei                                            ; $69ea: $fb
    rst $38                                       ; $69eb: $ff
    di                                            ; $69ec: $f3
    and d                                         ; $69ed: $a2

jr_04a_69ee:
    nop                                           ; $69ee: $00
    rst $38                                       ; $69ef: $ff
    rra                                           ; $69f0: $1f
    db $ec                                        ; $69f1: $ec
    rla                                           ; $69f2: $17
    di                                            ; $69f3: $f3
    db $fd                                        ; $69f4: $fd
    inc de                                        ; $69f5: $13
    cp $e0                                        ; $69f6: $fe $e0
    inc sp                                        ; $69f8: $33
    db $d3                                        ; $69f9: $d3
    inc sp                                        ; $69fa: $33
    db $e3                                        ; $69fb: $e3
    ld h, a                                       ; $69fc: $67
    and e                                         ; $69fd: $a3
    rst $28                                       ; $69fe: $ef
    ld hl, sp+$67                                 ; $69ff: $f8 $67
    sbc b                                         ; $6a01: $98
    sub a                                         ; $6a02: $97
    cp $e0                                        ; $6a03: $fe $e0
    rla                                           ; $6a05: $17
    jr nc, jr_04a_6a27                            ; $6a06: $30 $1f

    ei                                            ; $6a08: $fb
    jr nc, jr_04a_6a4a                            ; $6a09: $30 $3f

    cp $e0                                        ; $6a0b: $fe $e0
    cpl                                           ; $6a0d: $2f
    inc bc                                        ; $6a0e: $03
    nop                                           ; $6a0f: $00
    rrca                                          ; $6a10: $0f
    nop                                           ; $6a11: $00
    ld a, a                                       ; $6a12: $7f
    ccf                                           ; $6a13: $3f
    nop                                           ; $6a14: $00
    cp $00                                        ; $6a15: $fe $00
    db $f4                                        ; $6a17: $f4
    ld [$3e00], sp                                ; $6a18: $08 $00 $3e
    ldh [$7f], a                                  ; $6a1b: $e0 $7f
    ld bc, $c0f0                                  ; $6a1d: $01 $f0 $c0
    ccf                                           ; $6a20: $3f
    call nz, $0103                                ; $6a21: $c4 $03 $01
    dec de                                        ; $6a24: $1b
    ldh [rIE], a                                  ; $6a25: $e0 $ff

jr_04a_6a27:
    jr c, jr_04a_6a29                             ; $6a27: $38 $00

jr_04a_6a29:
    ld h, h                                       ; $6a29: $64
    jr jr_04a_69ee                                ; $6a2a: $18 $c2

    inc a                                         ; $6a2c: $3c
    add c                                         ; $6a2d: $81
    ld a, [hl]                                    ; $6a2e: $7e
    ei                                            ; $6a2f: $fb
    nop                                           ; $6a30: $00
    rst $38                                       ; $6a31: $ff
    cp $e1                                        ; $6a32: $fe $e1
    add b                                         ; $6a34: $80
    ld a, a                                       ; $6a35: $7f
    ld b, b                                       ; $6a36: $40
    ld a, $00                                     ; $6a37: $3e $00
    rst $38                                       ; $6a39: $ff
    inc a                                         ; $6a3a: $3c
    jr nz, jr_04a_6a59                            ; $6a3b: $20 $1c

    nop                                           ; $6a3d: $00
    inc e                                         ; $6a3e: $1c
    ld b, b                                       ; $6a3f: $40
    add b                                         ; $6a40: $80
    db $10                                        ; $6a41: $10
    rst $38                                       ; $6a42: $ff
    ldh [$0c], a                                  ; $6a43: $e0 $0c
    ldh a, [$03]                                  ; $6a45: $f0 $03
    db $fc                                        ; $6a47: $fc
    nop                                           ; $6a48: $00
    rra                                           ; $6a49: $1f

jr_04a_6a4a:
    nop                                           ; $6a4a: $00
    rst $38                                       ; $6a4b: $ff
    rrca                                          ; $6a4c: $0f
    ret z                                         ; $6a4d: $c8

    rlca                                          ; $6a4e: $07
    adc b                                         ; $6a4f: $88
    ld b, a                                       ; $6a50: $47
    and $42                                       ; $6a51: $e6 $42
    adc $ff                                       ; $6a53: $ce $ff
    add [hl]                                      ; $6a55: $86
    sbc [hl]                                      ; $6a56: $9e
    adc [hl]                                      ; $6a57: $8e
    cp [hl]                                       ; $6a58: $be

jr_04a_6a59:
    sbc [hl]                                      ; $6a59: $9e
    cp $fa                                        ; $6a5a: $fe $fa
    ld a, [$f6ff]                                 ; $6a5c: $fa $ff $f6
    ld a, [c]                                     ; $6a5f: $f2
    ld l, [hl]                                    ; $6a60: $6e
    inc bc                                        ; $6a61: $03
    rra                                           ; $6a62: $1f
    ld b, b                                       ; $6a63: $40
    ld b, b                                       ; $6a64: $40
    ld d, b                                       ; $6a65: $50
    rst $38                                       ; $6a66: $ff
    ld h, b                                       ; $6a67: $60
    ld c, h                                       ; $6a68: $4c
    ld [hl], b                                    ; $6a69: $70
    ld b, e                                       ; $6a6a: $43
    ld a, h                                       ; $6a6b: $7c
    ld b, b                                       ; $6a6c: $40
    ld e, a                                       ; $6a6d: $5f
    ld b, b                                       ; $6a6e: $40
    rst $38                                       ; $6a6f: $ff
    ld c, a                                       ; $6a70: $4f
    ld c, b                                       ; $6a71: $48
    ld b, a                                       ; $6a72: $47
    ret z                                         ; $6a73: $c8

    rst $00                                       ; $6a74: $c7
    ldh [rLCDC], a                                ; $6a75: $e0 $40
    add c                                         ; $6a77: $81
    ld l, a                                       ; $6a78: $6f
    add b                                         ; $6a79: $80
    rst $38                                       ; $6a7a: $ff
    sbc a                                         ; $6a7b: $9f
    rst $38                                       ; $6a7c: $ff
    rst $38                                       ; $6a7d: $ff
    ldh [$f0], a                                  ; $6a7e: $e0 $f0
    ld l, b                                       ; $6a80: $68
    and b                                         ; $6a81: $a0
    pop hl                                        ; $6a82: $e1
    cp e                                          ; $6a83: $bb
    ld bc, $f401                                  ; $6a84: $01 $01 $f4
    pop hl                                        ; $6a87: $e1
    rst $38                                       ; $6a88: $ff
    cp $b8                                        ; $6a89: $fe $b8
    and b                                         ; $6a8b: $a0
    db $e4                                        ; $6a8c: $e4
    ld c, a                                       ; $6a8d: $4f
    rst $38                                       ; $6a8e: $ff
    add $4e                                       ; $6a8f: $c6 $4e
    call $ce5d                                    ; $6a91: $cd $5d $ce
    rst $38                                       ; $6a94: $ff
    ld a, c                                       ; $6a95: $79
    ld a, a                                       ; $6a96: $7f
    rst $38                                       ; $6a97: $ff
    ld a, d                                       ; $6a98: $7a
    ld a, [hl]                                    ; $6a99: $7e
    inc [hl]                                      ; $6a9a: $34
    inc h                                         ; $6a9b: $24
    inc e                                         ; $6a9c: $1c
    rlca                                          ; $6a9d: $07
    rra                                           ; $6a9e: $1f
    ld h, [hl]                                    ; $6a9f: $66
    rst $38                                       ; $6aa0: $ff
    and d                                         ; $6aa1: $a2
    and $46                                       ; $6aa2: $e6 $46
    adc $86                                       ; $6aa4: $ce $86
    sbc a                                         ; $6aa6: $9f
    inc c                                         ; $6aa7: $0c
    inc a                                         ; $6aa8: $3c
    rst $38                                       ; $6aa9: $ff
    rra                                           ; $6aaa: $1f
    ld a, h                                       ; $6aab: $7c
    dec sp                                        ; $6aac: $3b
    ld hl, sp+$77                                 ; $6aad: $f8 $77
    ld hl, sp-$19                                 ; $6aaf: $f8 $e7
    daa                                           ; $6ab1: $27
    rst $38                                       ; $6ab2: $ff
    daa                                           ; $6ab3: $27
    ld h, a                                       ; $6ab4: $67
    daa                                           ; $6ab5: $27
    ld h, a                                       ; $6ab6: $67
    ld b, l                                       ; $6ab7: $45
    rst $08                                       ; $6ab8: $cf
    ld b, l                                       ; $6ab9: $45
    call $8dff                                    ; $6aba: $cd $ff $8d
    sbc l                                         ; $6abd: $9d
    adc l                                         ; $6abe: $8d
    sbc l                                         ; $6abf: $9d
    sbc c                                         ; $6ac0: $99
    ld sp, hl                                     ; $6ac1: $f9
    ld sp, hl                                     ; $6ac2: $f9
    cpl                                           ; $6ac3: $2f
    rst $38                                       ; $6ac4: $ff
    ld [hl], $3d                                  ; $6ac5: $36 $3d
    add hl, hl                                    ; $6ac7: $29
    add hl, sp                                    ; $6ac8: $39
    ld sp, $0123                                  ; $6ac9: $31 $23 $01
    rlca                                          ; $6acc: $07
    ld a, a                                       ; $6acd: $7f
    inc bc                                        ; $6ace: $03
    adc a                                         ; $6acf: $8f
    rlca                                          ; $6ad0: $07
    sbc $8e                                       ; $6ad1: $de $8e
    db $fd                                        ; $6ad3: $fd
    cp $ae                                        ; $6ad4: $fe $ae
    ldh [$f7], a                                  ; $6ad6: $e0 $f7
    ldh a, [$08]                                  ; $6ad8: $f0 $08
    ldh a, [$9c]                                  ; $6ada: $f0 $9c
    pop bc                                        ; $6adc: $c1
    ld [hl+], a                                   ; $6add: $22
    inc e                                         ; $6ade: $1c
    add hl, bc                                    ; $6adf: $09
    ld b, $fb                                     ; $6ae0: $06 $fb
    ld [bc], a                                    ; $6ae2: $02
    ld bc, $c170                                  ; $6ae3: $01 $70 $c1
    add d                                         ; $6ae6: $82
    ld a, h                                       ; $6ae7: $7c
    ld b, h                                       ; $6ae8: $44
    jr c, jr_04a_6b13                             ; $6ae9: $38 $28

    rst $38                                       ; $6aeb: $ff
    stop                                          ; $6aec: $10 $00
    nop                                           ; $6aee: $00
    ld bc, $4700                                  ; $6aef: $01 $00 $47
    add b                                         ; $6af2: $80
    db $10                                        ; $6af3: $10
    rst $38                                       ; $6af4: $ff
    inc c                                         ; $6af5: $0c
    db $10                                        ; $6af6: $10
    ld c, $30                                     ; $6af7: $0e $30
    rrca                                          ; $6af9: $0f
    jr nz, jr_04a_6b1b                            ; $6afa: $20 $1f

    ld h, b                                       ; $6afc: $60
    rst $38                                       ; $6afd: $ff
    rra                                           ; $6afe: $1f
    ret nz                                        ; $6aff: $c0

    ccf                                           ; $6b00: $3f
    add b                                         ; $6b01: $80
    ld a, a                                       ; $6b02: $7f
    nop                                           ; $6b03: $00
    rst $38                                       ; $6b04: $ff
    ld [$60f6], sp                                ; $6b05: $08 $f6 $60
    ret nz                                        ; $6b08: $c0

    ldh a, [rIF]                                  ; $6b09: $f0 $0f
    ld a, [hl+]                                   ; $6b0b: $2a
    pop hl                                        ; $6b0c: $e1
    inc b                                         ; $6b0d: $04
    ld hl, sp+$10                                 ; $6b0e: $f8 $10
    ldh [$bf], a                                  ; $6b10: $e0 $bf
    ld b, b                                       ; $6b12: $40

jr_04a_6b13:
    add b                                         ; $6b13: $80
    inc de                                        ; $6b14: $13
    rrca                                          ; $6b15: $0f
    inc de                                        ; $6b16: $13
    dec c                                         ; $6b17: $0d
    ldh [$e9], a                                  ; $6b18: $e0 $e9
    ret z                                         ; $6b1a: $c8

jr_04a_6b1b:
    rst $30                                       ; $6b1b: $f7
    rst $00                                       ; $6b1c: $c7
    ret c                                         ; $6b1d: $d8

    add a                                         ; $6b1e: $87
    ldh [$e9], a                                  ; $6b1f: $e0 $e9
    rla                                           ; $6b21: $17
    rrca                                          ; $6b22: $0f
    rla                                           ; $6b23: $17
    dec bc                                        ; $6b24: $0b
    ld a, d                                       ; $6b25: $7a
    ret nz                                        ; $6b26: $c0

    jp hl                                         ; $6b27: $e9


    add sp, -$20                                  ; $6b28: $e8 $e0
    db $ec                                        ; $6b2a: $ec
    ld sp, hl                                     ; $6b2b: $f9
    ldh a, [$f1]                                  ; $6b2c: $f0 $f1
    ld h, b                                       ; $6b2e: $60
    add b                                         ; $6b2f: $80
    jp hl                                         ; $6b30: $e9


    rst $28                                       ; $6b31: $ef
    db $fc                                        ; $6b32: $fc
    ei                                            ; $6b33: $fb

jr_04a_6b34:
    ld sp, hl                                     ; $6b34: $f9
    halt                                          ; $6b35: $76
    add b                                         ; $6b36: $80
    jp hl                                         ; $6b37: $e9


    pop bc                                        ; $6b38: $c1
    nop                                           ; $6b39: $00
    ldh a, [$df]                                  ; $6b3a: $f0 $df
    nop                                           ; $6b3c: $00
    ld [$04f0], sp                                ; $6b3d: $08 $f0 $04
    ld hl, sp+$00                                 ; $6b40: $f8 $00
    push bc                                       ; $6b42: $c5
    inc e                                         ; $6b43: $1c
    db $e3                                        ; $6b44: $e3
    sub d                                         ; $6b45: $92
    ld a, d                                       ; $6b46: $7a
    ldh [$7f], a                                  ; $6b47: $e0 $7f
    nop                                           ; $6b49: $00
    pop bc                                        ; $6b4a: $c1
    cp $a1                                        ; $6b4b: $fe $a1
    db $10                                        ; $6b4d: $10
    halt                                          ; $6b4e: $76
    ldh [$c0], a                                  ; $6b4f: $e0 $c0
    and e                                         ; $6b51: $a3
    nop                                           ; $6b52: $00
    db $ec                                        ; $6b53: $ec
    cp $e0                                        ; $6b54: $fe $e0
    ret c                                         ; $6b56: $d8

    and b                                         ; $6b57: $a0
    ld hl, sp-$7d                                 ; $6b58: $f8 $83
    ld [hl], b                                    ; $6b5a: $70
    ret nz                                        ; $6b5b: $c0

    rra                                           ; $6b5c: $1f
    nop                                           ; $6b5d: $00
    inc a                                         ; $6b5e: $3c
    inc bc                                        ; $6b5f: $03
    inc bc                                        ; $6b60: $03
    ld a, b                                       ; $6b61: $78
    cp [hl]                                       ; $6b62: $be
    and b                                         ; $6b63: $a0
    ret nz                                        ; $6b64: $c0

    and c                                         ; $6b65: $a1
    nop                                           ; $6b66: $00
    nop                                           ; $6b67: $00
    nop                                           ; $6b68: $00
    xor a                                         ; $6b69: $af
    ld bc, $0302                                  ; $6b6a: $01 $02 $03
    inc b                                         ; $6b6d: $04
    db $fc                                        ; $6b6e: $fc
    db $ed                                        ; $6b6f: $ed
    nop                                           ; $6b70: $00
    rst $38                                       ; $6b71: $ff
    add sp, $0d                                   ; $6b72: $e8 $0d
    rst $20                                       ; $6b74: $e7
    ld c, $0f                                     ; $6b75: $0e $0f
    db $10                                        ; $6b77: $10
    db $fc                                        ; $6b78: $fc
    db $ed                                        ; $6b79: $ed
    ldh [$e9], a                                  ; $6b7a: $e0 $e9
    add hl, de                                    ; $6b7c: $19
    ld a, [de]                                    ; $6b7d: $1a
    dec de                                        ; $6b7e: $1b
    ld a, c                                       ; $6b7f: $79
    inc e                                         ; $6b80: $1c
    db $fc                                        ; $6b81: $fc
    db $ed                                        ; $6b82: $ed
    ret nz                                        ; $6b83: $c0

    jp hl                                         ; $6b84: $e9


    inc hl                                        ; $6b85: $23
    inc h                                         ; $6b86: $24
    dec h                                         ; $6b87: $25
    ld h, $fc                                     ; $6b88: $26 $fc
    db $ed                                        ; $6b8a: $ed
    nop                                           ; $6b8b: $00
    and b                                         ; $6b8c: $a0
    jp hl                                         ; $6b8d: $e9


    add b                                         ; $6b8e: $80
    rst $38                                       ; $6b8f: $ff
    add b                                         ; $6b90: $80
    rst $38                                       ; $6b91: $ff
    add b                                         ; $6b92: $80
    rst $38                                       ; $6b93: $ff
    add b                                         ; $6b94: $80
    rst $38                                       ; $6b95: $ff
    add b                                         ; $6b96: $80
    rst $38                                       ; $6b97: $ff
    add b                                         ; $6b98: $80
    rst $38                                       ; $6b99: $ff
    add b                                         ; $6b9a: $80
    rst $38                                       ; $6b9b: $ff
    cp $80                                        ; $6b9c: $fe $80
    push af                                       ; $6b9e: $f5
    dec b                                         ; $6b9f: $05
    ld b, $07                                     ; $6ba0: $06 $07
    ld [$0a09], sp                                ; $6ba2: $08 $09 $0a
    dec bc                                        ; $6ba5: $0b
    db $fd                                        ; $6ba6: $fd
    inc c                                         ; $6ba7: $0c
    add b                                         ; $6ba8: $80
    push af                                       ; $6ba9: $f5
    ld de, $1312                                  ; $6baa: $11 $12 $13
    inc d                                         ; $6bad: $14
    dec d                                         ; $6bae: $15
    ld d, $fb                                     ; $6baf: $16 $fb
    rla                                           ; $6bb1: $17
    jr jr_04a_6b34                                ; $6bb2: $18 $80

    push af                                       ; $6bb4: $f5
    dec e                                         ; $6bb5: $1d
    ld e, $19                                     ; $6bb6: $1e $19
    ld a, [de]                                    ; $6bb8: $1a
    rra                                           ; $6bb9: $1f
    rlca                                          ; $6bba: $07
    jr nz, jr_04a_6bde                            ; $6bbb: $20 $21

    ld [hl+], a                                   ; $6bbd: $22
    add b                                         ; $6bbe: $80
    rst $38                                       ; $6bbf: $ff
    nop                                           ; $6bc0: $00
    db $ed                                        ; $6bc1: $ed
    rst $38                                       ; $6bc2: $ff
    rst $38                                       ; $6bc3: $ff
    rst $38                                       ; $6bc4: $ff
    rst $38                                       ; $6bc5: $ff
    rst $38                                       ; $6bc6: $ff
    rst $38                                       ; $6bc7: $ff
    nop                                           ; $6bc8: $00
    rst $38                                       ; $6bc9: $ff
    rst $38                                       ; $6bca: $ff
    rst $38                                       ; $6bcb: $ff
    rst $38                                       ; $6bcc: $ff
    rst $38                                       ; $6bcd: $ff
    rst $38                                       ; $6bce: $ff
    rst $38                                       ; $6bcf: $ff
    rst $38                                       ; $6bd0: $ff
    rst $38                                       ; $6bd1: $ff
    rst $38                                       ; $6bd2: $ff
    rst $38                                       ; $6bd3: $ff
    rst $38                                       ; $6bd4: $ff
    rst $38                                       ; $6bd5: $ff
    rst $38                                       ; $6bd6: $ff
    rst $38                                       ; $6bd7: $ff
    rst $38                                       ; $6bd8: $ff
    jr nc, @+$01                                  ; $6bd9: $30 $ff

    rst $38                                       ; $6bdb: $ff
    rst $38                                       ; $6bdc: $ff
    rst $38                                       ; $6bdd: $ff

jr_04a_6bde:
    rst $38                                       ; $6bde: $ff
    rst $38                                       ; $6bdf: $ff
    rst $38                                       ; $6be0: $ff
    rst $38                                       ; $6be1: $ff
    nop                                           ; $6be2: $00
    nop                                           ; $6be3: $00
    nop                                           ; $6be4: $00
    nop                                           ; $6be5: $00
    nop                                           ; $6be6: $00
    rst $38                                       ; $6be7: $ff
    inc bc                                        ; $6be8: $03
    rst $18                                       ; $6be9: $df
    ld [bc], a                                    ; $6bea: $02
    rst $18                                       ; $6beb: $df
    ld h, b                                       ; $6bec: $60
    nop                                           ; $6bed: $00
    ld a, h                                       ; $6bee: $7c
    cp h                                          ; $6bef: $bc
    ld e, h                                       ; $6bf0: $5c
    reti                                          ; $6bf1: $d9


    ld h, b                                       ; $6bf2: $60
    or $64                                        ; $6bf3: $f6 $64

jr_04a_6bf5:
    inc de                                        ; $6bf5: $13
    ld l, c                                       ; $6bf6: $69
    jr nc, @+$6f                                  ; $6bf7: $30 $6d

    ld c, l                                       ; $6bf9: $4d
    ld [hl], c                                    ; $6bfa: $71
    ld l, d                                       ; $6bfb: $6a
    ld [hl], l                                    ; $6bfc: $75
    add a                                         ; $6bfd: $87
    ld a, c                                       ; $6bfe: $79
    call nz, $877d                                ; $6bff: $c4 $7d $87
    ld a, c                                       ; $6c02: $79
    ld l, d                                       ; $6c03: $6a
    ld [hl], l                                    ; $6c04: $75
    ld c, l                                       ; $6c05: $4d
    ld [hl], c                                    ; $6c06: $71
    jr nc, jr_04a_6c76                            ; $6c07: $30 $6d

    inc de                                        ; $6c09: $13
    ld l, c                                       ; $6c0a: $69
    or $64                                        ; $6c0b: $f6 $64
    reti                                          ; $6c0d: $d9


    ld h, b                                       ; $6c0e: $60
    rra                                           ; $6c0f: $1f
    jr @+$61                                      ; $6c10: $18 $5f

    inc e                                         ; $6c12: $1c
    sbc a                                         ; $6c13: $9f
    jr nz, jr_04a_6bf5                            ; $6c14: $20 $df

    inc h                                         ; $6c16: $24
    rra                                           ; $6c17: $1f
    add hl, hl                                    ; $6c18: $29
    rst $18                                       ; $6c19: $df
    inc h                                         ; $6c1a: $24
    sbc a                                         ; $6c1b: $9f
    jr nz, @+$61                                  ; $6c1c: $20 $5f

    inc e                                         ; $6c1e: $1c
    call Call_000_23b6                            ; $6c1f: $cd $b6 $23
    ld a, $01                                     ; $6c22: $3e $01
    ldh [$96], a                                  ; $6c24: $e0 $96
    ldh [rSVBK], a                                ; $6c26: $e0 $70
    call Call_000_0341                            ; $6c28: $cd $41 $03
    call Call_000_2683                            ; $6c2b: $cd $83 $26
    ld a, $90                                     ; $6c2e: $3e $90
    ldh [rWY], a                                  ; $6c30: $e0 $4a
    xor a                                         ; $6c32: $af
    ldh [$8b], a                                  ; $6c33: $e0 $8b
    ldh [$8a], a                                  ; $6c35: $e0 $8a
    ld hl, $6cc5                                  ; $6c37: $21 $c5 $6c
    ld de, $0008                                  ; $6c3a: $11 $08 $00
    call Call_000_056c                            ; $6c3d: $cd $6c $05
    ld hl, $6d05                                  ; $6c40: $21 $05 $6d
    ld de, $d000                                  ; $6c43: $11 $00 $d0
    call Call_000_1f2f                            ; $6c46: $cd $2f $1f
    ld hl, $d000                                  ; $6c49: $21 $00 $d0
    ld de, $b000                                  ; $6c4c: $11 $00 $b0
    ld c, $40                                     ; $6c4f: $0e $40
    call Call_000_0468                            ; $6c51: $cd $68 $04
    ld hl, $d400                                  ; $6c54: $21 $00 $d4
    ld de, $b400                                  ; $6c57: $11 $00 $b4
    ld c, $40                                     ; $6c5a: $0e $40
    call Call_000_0468                            ; $6c5c: $cd $68 $04
    ld hl, $d800                                  ; $6c5f: $21 $00 $d8
    ld de, $a800                                  ; $6c62: $11 $00 $a8
    ld c, $40                                     ; $6c65: $0e $40
    call Call_000_04db                            ; $6c67: $cd $db $04
    ld hl, $74d9                                  ; $6c6a: $21 $d9 $74
    ld de, $d000                                  ; $6c6d: $11 $00 $d0
    call Call_000_1f2f                            ; $6c70: $cd $2f $1f
    ld hl, $d000                                  ; $6c73: $21 $00 $d0

jr_04a_6c76:
    ld de, $b800                                  ; $6c76: $11 $00 $b8
    ld c, $24                                     ; $6c79: $0e $24
    call Call_000_04db                            ; $6c7b: $cd $db $04
    ld hl, $755e                                  ; $6c7e: $21 $5e $75
    ld de, $d000                                  ; $6c81: $11 $00 $d0
    call Call_000_1f2f                            ; $6c84: $cd $2f $1f
    ld hl, $d000                                  ; $6c87: $21 $00 $d0
    ld de, $9800                                  ; $6c8a: $11 $00 $98
    ld c, $24                                     ; $6c8d: $0e $24
    call Call_000_04db                            ; $6c8f: $cd $db $04
    call Call_000_0371                            ; $6c92: $cd $71 $03
    xor a                                         ; $6c95: $af
    ld [$c0f8], a                                 ; $6c96: $ea $f8 $c0
    ld a, $01                                     ; $6c99: $3e $01
    ld hl, $6ca2                                  ; $6c9b: $21 $a2 $6c
    call Call_000_23e8                            ; $6c9e: $cd $e8 $23
    ret                                           ; $6ca1: $c9


    ld hl, $c0f8                                  ; $6ca2: $21 $f8 $c0
    ld a, [hl]                                    ; $6ca5: $7e
    push hl                                       ; $6ca6: $e5
    and $fc                                       ; $6ca7: $e6 $fc
    ld h, $00                                     ; $6ca9: $26 $00
    ld l, a                                       ; $6cab: $6f
    add hl, hl                                    ; $6cac: $29
    add hl, hl                                    ; $6cad: $29
    add hl, hl                                    ; $6cae: $29
    add hl, hl                                    ; $6caf: $29
    ld de, $7650                                  ; $6cb0: $11 $50 $76
    add hl, de                                    ; $6cb3: $19
    ld de, $b000                                  ; $6cb4: $11 $00 $b0
    ld c, $04                                     ; $6cb7: $0e $04
    call Call_000_0468                            ; $6cb9: $cd $68 $04
    pop hl                                        ; $6cbc: $e1
    inc [hl]                                      ; $6cbd: $34
    ld a, [hl]                                    ; $6cbe: $7e
    cp $30                                        ; $6cbf: $fe $30
    ret c                                         ; $6cc1: $d8

    xor a                                         ; $6cc2: $af
    ld [hl], a                                    ; $6cc3: $77
    ret                                           ; $6cc4: $c9


    adc [hl]                                      ; $6cc5: $8e
    ld a, a                                       ; $6cc6: $7f
    pop de                                        ; $6cc7: $d1
    inc b                                         ; $6cc8: $04
    add hl, bc                                    ; $6cc9: $09
    nop                                           ; $6cca: $00
    rra                                           ; $6ccb: $1f
    nop                                           ; $6ccc: $00
    adc [hl]                                      ; $6ccd: $8e
    ld a, a                                       ; $6cce: $7f
    rst $18                                       ; $6ccf: $df
    ld [hl-], a                                   ; $6cd0: $32
    add hl, bc                                    ; $6cd1: $09
    nop                                           ; $6cd2: $00
    rra                                           ; $6cd3: $1f
    nop                                           ; $6cd4: $00
    adc [hl]                                      ; $6cd5: $8e
    ld a, a                                       ; $6cd6: $7f
    rst $38                                       ; $6cd7: $ff
    ld h, e                                       ; $6cd8: $63
    add hl, bc                                    ; $6cd9: $09
    nop                                           ; $6cda: $00
    rra                                           ; $6cdb: $1f
    nop                                           ; $6cdc: $00
    rst $38                                       ; $6cdd: $ff
    ld h, e                                       ; $6cde: $63
    pop de                                        ; $6cdf: $d1
    inc b                                         ; $6ce0: $04
    add hl, bc                                    ; $6ce1: $09
    nop                                           ; $6ce2: $00
    rra                                           ; $6ce3: $1f
    nop                                           ; $6ce4: $00
    rst $38                                       ; $6ce5: $ff
    ld h, e                                       ; $6ce6: $63
    rst $18                                       ; $6ce7: $df
    ld [hl-], a                                   ; $6ce8: $32
    add hl, bc                                    ; $6ce9: $09
    nop                                           ; $6cea: $00
    pop de                                        ; $6ceb: $d1
    inc b                                         ; $6cec: $04
    adc [hl]                                      ; $6ced: $8e
    ld a, a                                       ; $6cee: $7f
    rst $38                                       ; $6cef: $ff
    ld h, e                                       ; $6cf0: $63
    pop de                                        ; $6cf1: $d1
    inc b                                         ; $6cf2: $04
    add hl, bc                                    ; $6cf3: $09
    nop                                           ; $6cf4: $00
    adc [hl]                                      ; $6cf5: $8e
    ld a, a                                       ; $6cf6: $7f
    rst $18                                       ; $6cf7: $df
    ld [hl-], a                                   ; $6cf8: $32
    pop de                                        ; $6cf9: $d1
    inc b                                         ; $6cfa: $04
    add hl, bc                                    ; $6cfb: $09
    nop                                           ; $6cfc: $00
    adc [hl]                                      ; $6cfd: $8e
    ld a, a                                       ; $6cfe: $7f
    rst $38                                       ; $6cff: $ff
    inc bc                                        ; $6d00: $03
    sbc a                                         ; $6d01: $9f
    ld [bc], a                                    ; $6d02: $02
    add hl, bc                                    ; $6d03: $09
    nop                                           ; $6d04: $00
    rst $38                                       ; $6d05: $ff
    ld bc, $7203                                  ; $6d06: $01 $03 $72
    inc bc                                        ; $6d09: $03
    inc bc                                        ; $6d0a: $03
    ld b, $05                                     ; $6d0b: $06 $05
    ld c, $ff                                     ; $6d0d: $0e $ff
    ccf                                           ; $6d0f: $3f
    ld a, h                                       ; $6d10: $7c
    ld e, l                                       ; $6d11: $5d
    ld h, d                                       ; $6d12: $62
    cpl                                           ; $6d13: $2f
    ld [hl], d                                    ; $6d14: $72
    rla                                           ; $6d15: $17
    ld a, [hl-]                                   ; $6d16: $3a
    rst $38                                       ; $6d17: $ff
    dec bc                                        ; $6d18: $0b

jr_04a_6d19:
    inc e                                         ; $6d19: $1c
    ld a, [bc]                                    ; $6d1a: $0a
    dec e                                         ; $6d1b: $1d
    inc d                                         ; $6d1c: $14
    dec de                                        ; $6d1d: $1b
    ld de, $df3f                                  ; $6d1e: $11 $3f $df
    ld h, $3f                                     ; $6d21: $26 $3f
    jr jr_04a_6d61                                ; $6d23: $18 $3c

    nop                                           ; $6d25: $00
    rst $38                                       ; $6d26: $ff
    ldh [$80], a                                  ; $6d27: $e0 $80
    ret nz                                        ; $6d29: $c0

    rst $38                                       ; $6d2a: $ff
    ld b, b                                       ; $6d2b: $40
    ret nz                                        ; $6d2c: $c0

    ret nz                                        ; $6d2d: $c0

    ld h, b                                       ; $6d2e: $60
    and b                                         ; $6d2f: $a0
    ld [hl], b                                    ; $6d30: $70
    db $fc                                        ; $6d31: $fc
    ld a, $ff                                     ; $6d32: $3e $ff
    cp d                                          ; $6d34: $ba
    ld b, [hl]                                    ; $6d35: $46
    db $f4                                        ; $6d36: $f4
    ld c, [hl]                                    ; $6d37: $4e
    add sp, $5c                                   ; $6d38: $e8 $5c
    ret nc                                        ; $6d3a: $d0

    jr c, @+$01                                   ; $6d3b: $38 $ff

    ld d, b                                       ; $6d3d: $50
    cp b                                          ; $6d3e: $b8
    jr z, jr_04a_6d19                             ; $6d3f: $28 $d8

    adc b                                         ; $6d41: $88
    db $fc                                        ; $6d42: $fc
    ld h, h                                       ; $6d43: $64
    db $fc                                        ; $6d44: $fc
    rst $20                                       ; $6d45: $e7
    jr jr_04a_6d84                                ; $6d46: $18 $3c

    ld c, $df                                     ; $6d48: $0e $df
    pop hl                                        ; $6d4a: $e1
    db $fc                                        ; $6d4b: $fc
    ld hl, sp+$01                                 ; $6d4c: $f8 $01
    nop                                           ; $6d4e: $00
    ld [$07bd], sp                                ; $6d4f: $08 $bd $07

jr_04a_6d52:
    db $dd                                        ; $6d52: $dd
    jp hl                                         ; $6d53: $e9


    add b                                         ; $6d54: $80
    ld a, a                                       ; $6d55: $7f
    nop                                           ; $6d56: $00
    rst $38                                       ; $6d57: $ff
    ldh a, [$ea]                                  ; $6d58: $f0 $ea
    nop                                           ; $6d5a: $00
    ei                                            ; $6d5b: $fb
    ld [$daf0], sp                                ; $6d5c: $08 $f0 $da
    pop hl                                        ; $6d5f: $e1
    inc b                                         ; $6d60: $04

jr_04a_6d61:
    inc bc                                        ; $6d61: $03
    ld [$1107], sp                                ; $6d62: $08 $07 $11
    rst $38                                       ; $6d65: $ff
    ld c, $23                                     ; $6d66: $0e $23
    dec e                                         ; $6d68: $1d
    rlca                                          ; $6d69: $07
    dec sp                                        ; $6d6a: $3b
    ld b, a                                       ; $6d6b: $47
    ld a, $20                                     ; $6d6c: $3e $20
    rst $38                                       ; $6d6e: $ff
    rra                                           ; $6d6f: $1f
    nop                                           ; $6d70: $00
    rst $38                                       ; $6d71: $ff
    rrca                                          ; $6d72: $0f
    rst $30                                       ; $6d73: $f7
    ld a, a                                       ; $6d74: $7f
    cp a                                          ; $6d75: $bf
    rst $38                                       ; $6d76: $ff
    cp $ff                                        ; $6d77: $fe $ff
    ldh [$c1], a                                  ; $6d79: $e0 $c1
    cp [hl]                                       ; $6d7b: $be
    nop                                           ; $6d7c: $00
    rst $38                                       ; $6d7d: $ff
    ld [$01f0], sp                                ; $6d7e: $08 $f0 $01
    rst $18                                       ; $6d81: $df
    cp $e0                                        ; $6d82: $fe $e0

jr_04a_6d84:
    rst $18                                       ; $6d84: $df
    cp $fd                                        ; $6d85: $fe $fd
    ldh a, [$e1]                                  ; $6d87: $f0 $e1
    rst $38                                       ; $6d89: $ff
    rst $38                                       ; $6d8a: $ff
    ei                                            ; $6d8b: $fb
    ld a, a                                       ; $6d8c: $7f
    cp a                                          ; $6d8d: $bf
    ld l, h                                       ; $6d8e: $6c
    pop hl                                        ; $6d8f: $e1
    jr nz, jr_04a_6d52                            ; $6d90: $20 $c0

    ld [$c2f0], sp                                ; $6d92: $08 $f0 $c2
    ld a, a                                       ; $6d95: $7f
    cp h                                          ; $6d96: $bc
    ldh a, [$ef]                                  ; $6d97: $f0 $ef
    db $fc                                        ; $6d99: $fc
    ei                                            ; $6d9a: $fb
    rst $38                                       ; $6d9b: $ff
    cp $b2                                        ; $6d9c: $fe $b2
    jp hl                                         ; $6d9e: $e9


    rst $28                                       ; $6d9f: $ef
    ld b, b                                       ; $6da0: $40
    add b                                         ; $6da1: $80
    jr nz, @-$3e                                  ; $6da2: $20 $c0

    add [hl]                                      ; $6da4: $86
    push hl                                       ; $6da5: $e5
    nop                                           ; $6da6: $00
    ld bc, $ff02                                  ; $6da7: $01 $02 $ff
    ld bc, $0300                                  ; $6daa: $01 $00 $03
    nop                                           ; $6dad: $00
    inc bc                                        ; $6dae: $03
    jr nz, jr_04a_6dd0                            ; $6daf: $20 $1f

    ld b, e                                       ; $6db1: $43
    rst $38                                       ; $6db2: $ff
    inc a                                         ; $6db3: $3c
    adc a                                         ; $6db4: $8f
    ld [hl], a                                    ; $6db5: $77
    rra                                           ; $6db6: $1f
    rst $28                                       ; $6db7: $ef
    ccf                                           ; $6db8: $3f
    rst $18                                       ; $6db9: $df
    ld a, a                                       ; $6dba: $7f
    db $eb                                        ; $6dbb: $eb
    cp a                                          ; $6dbc: $bf
    ld a, a                                       ; $6dbd: $7f
    cp a                                          ; $6dbe: $bf
    ldh [rP1], a                                  ; $6dbf: $e0 $00
    and a                                         ; $6dc1: $a7
    ldh [$81], a                                  ; $6dc2: $e0 $81
    add c                                         ; $6dc4: $81
    nop                                           ; $6dc5: $00
    ld a, [$e1f9]                                 ; $6dc6: $fa $f9 $e1
    rst $38                                       ; $6dc9: $ff
    cp [hl]                                       ; $6dca: $be
    ldh [$83], a                                  ; $6dcb: $e0 $83
    inc bc                                        ; $6dcd: $03
    db $fc                                        ; $6dce: $fc
    ret nz                                        ; $6dcf: $c0

jr_04a_6dd0:
    ccf                                           ; $6dd0: $3f
    rst $38                                       ; $6dd1: $ff
    ld hl, sp-$09                                 ; $6dd2: $f8 $f7
    ld e, $1d                                     ; $6dd4: $1e $1d
    add e                                         ; $6dd6: $83
    add e                                         ; $6dd7: $83
    ld sp, hl                                     ; $6dd8: $f9
    ld sp, hl                                     ; $6dd9: $f9
    rst $38                                       ; $6dda: $ff
    cp $7e                                        ; $6ddb: $fe $7e
    rrca                                          ; $6ddd: $0f
    rst $30                                       ; $6dde: $f7
    adc h                                         ; $6ddf: $8c
    ld [hl], e                                    ; $6de0: $73
    ld [$ffff], sp                                ; $6de1: $08 $ff $ff
    add hl, bc                                    ; $6de4: $09
    or $00                                        ; $6de5: $f6 $00
    cp $80                                        ; $6de7: $fe $80
    ld a, [hl]                                    ; $6de9: $7e
    ldh [$df], a                                  ; $6dea: $e0 $df
    cp $9e                                        ; $6dec: $fe $9e
    pop hl                                        ; $6dee: $e1
    ld b, c                                       ; $6def: $41
    add b                                         ; $6df0: $80
    sbc h                                         ; $6df1: $9c
    inc e                                         ; $6df2: $1c
    inc a                                         ; $6df3: $3c
    inc a                                         ; $6df4: $3c
    ld a, h                                       ; $6df5: $7c
    db $fd                                        ; $6df6: $fd
    ld a, h                                       ; $6df7: $7c
    ld [hl], b                                    ; $6df8: $70
    pop hl                                        ; $6df9: $e1
    rst $18                                       ; $6dfa: $df
    rst $18                                       ; $6dfb: $df
    rra                                           ; $6dfc: $1f
    rst $18                                       ; $6dfd: $df
    rra                                           ; $6dfe: $1f
    rst $28                                       ; $6dff: $ef
    rst $38                                       ; $6e00: $ff
    ld c, a                                       ; $6e01: $4f
    scf                                           ; $6e02: $37
    daa                                           ; $6e03: $27
    rra                                           ; $6e04: $1f
    rlca                                          ; $6e05: $07
    dec de                                        ; $6e06: $1b
    db $d3                                        ; $6e07: $d3
    rst $08                                       ; $6e08: $cf
    ccf                                           ; $6e09: $3f
    jp $c3cf                                      ; $6e0a: $c3 $cf $c3


    call $c7c9                                    ; $6e0d: $cd $c9 $c7
    ld l, b                                       ; $6e10: $68
    db $e3                                        ; $6e11: $e3
    ld a, [$ffe7]                                 ; $6e12: $fa $e7 $ff
    sub b                                         ; $6e15: $90
    ld h, b                                       ; $6e16: $60
    ret z                                         ; $6e17: $c8

    or b                                          ; $6e18: $b0
    db $e4                                        ; $6e19: $e4
    ret c                                         ; $6e1a: $d8

    ld a, [c]                                     ; $6e1b: $f2
    db $ec                                        ; $6e1c: $ec
    ld a, a                                       ; $6e1d: $7f
    ld sp, hl                                     ; $6e1e: $f9
    or $fc                                        ; $6e1f: $f6 $fc
    ei                                            ; $6e21: $fb
    cp $fd                                        ; $6e22: $fe $fd
    cp $10                                        ; $6e24: $fe $10
    add sp, -$5a                                  ; $6e26: $e8 $a6
    ld h, b                                       ; $6e28: $60
    pop hl                                        ; $6e29: $e1
    nop                                           ; $6e2a: $00
    ret nz                                        ; $6e2b: $c0

    ld l, h                                       ; $6e2c: $6c
    pop hl                                        ; $6e2d: $e1
    ld l, b                                       ; $6e2e: $68
    pop hl                                        ; $6e2f: $e1
    ld [bc], a                                    ; $6e30: $02
    ld h, b                                       ; $6e31: $60
    pop hl                                        ; $6e32: $e1
    ld bc, $01bf                                  ; $6e33: $01 $bf $01
    nop                                           ; $6e36: $00
    rst $38                                       ; $6e37: $ff
    ld a, a                                       ; $6e38: $7f
    rst $38                                       ; $6e39: $ff
    cp $fe                                        ; $6e3a: $fe $fe
    ldh [$7e], a                                  ; $6e3c: $e0 $7e
    rst $38                                       ; $6e3e: $ff
    ld a, a                                       ; $6e3f: $7f
    rst $38                                       ; $6e40: $ff
    ld a, a                                       ; $6e41: $7f
    cp $7f                                        ; $6e42: $fe $7f
    cp a                                          ; $6e44: $bf
    ccf                                           ; $6e45: $3f
    rst $38                                       ; $6e46: $ff
    di                                            ; $6e47: $f3
    rst $38                                       ; $6e48: $ff
    ld a, $ee                                     ; $6e49: $3e $ee
    ldh [$ab], a                                  ; $6e4b: $e0 $ab
    rst $20                                       ; $6e4d: $e7
    cp $81                                        ; $6e4e: $fe $81
    ld a, [hl]                                    ; $6e50: $7e
    ld hl, sp-$59                                 ; $6e51: $f8 $a7
    rst $20                                       ; $6e53: $e7
    cp $f9                                        ; $6e54: $fe $f9
    call c, $ffe0                                 ; $6e56: $dc $e0 $ff
    jp nz, $f63f                                  ; $6e59: $c2 $3f $f6

    ret nz                                        ; $6e5c: $c0

    ld a, a                                       ; $6e5d: $7f
    rst $38                                       ; $6e5e: $ff
    cp [hl]                                       ; $6e5f: $be
    rra                                           ; $6e60: $1f
    rst $28                                       ; $6e61: $ef
    adc a                                         ; $6e62: $8f
    ld [hl], a                                    ; $6e63: $77
    rst $20                                       ; $6e64: $e7
    sbc e                                         ; $6e65: $9b
    di                                            ; $6e66: $f3
    db $fd                                        ; $6e67: $fd
    db $ed                                        ; $6e68: $ed
    sbc h                                         ; $6e69: $9c
    pop hl                                        ; $6e6a: $e1
    inc bc                                        ; $6e6b: $03
    db $e3                                        ; $6e6c: $e3
    inc bc                                        ; $6e6d: $03
    di                                            ; $6e6e: $f3
    jp $ffbb                                      ; $6e6f: $c3 $bb $ff


    db $e3                                        ; $6e72: $e3
    db $dd                                        ; $6e73: $dd
    pop af                                        ; $6e74: $f1
    xor $f0                                       ; $6e75: $ee $f0
    rst $38                                       ; $6e77: $ff
    ld hl, sp-$09                                 ; $6e78: $f8 $f7
    xor a                                         ; $6e7a: $af
    db $fc                                        ; $6e7b: $fc
    ld a, e                                       ; $6e7c: $7b
    pop bc                                        ; $6e7d: $c1
    rst $00                                       ; $6e7e: $c7
    cp $e1                                        ; $6e7f: $fe $e1
    ret                                           ; $6e81: $c9


    cp $e0                                        ; $6e82: $fe $e0
    jp $cdff                                      ; $6e84: $c3 $ff $cd


    ld d, e                                       ; $6e87: $53
    adc l                                         ; $6e88: $8d
    inc hl                                        ; $6e89: $23
    rst $18                                       ; $6e8a: $df
    rst $38                                       ; $6e8b: $ff
    cp $cf                                        ; $6e8c: $fe $cf
    rst $38                                       ; $6e8e: $ff
    rst $08                                       ; $6e8f: $cf
    rst $20                                       ; $6e90: $e7
    rst $20                                       ; $6e91: $e7
    db $e3                                        ; $6e92: $e3
    db $e3                                        ; $6e93: $e3
    di                                            ; $6e94: $f3
    di                                            ; $6e95: $f3
    pop af                                        ; $6e96: $f1
    or $ff                                        ; $6e97: $f6 $ff
    ldh [$f0], a                                  ; $6e99: $e0 $f0
    ldh a, [$de]                                  ; $6e9b: $f0 $de
    ret nz                                        ; $6e9d: $c0

    ldh [$90], a                                  ; $6e9e: $e0 $90
    ld h, b                                       ; $6ea0: $60
    add b                                         ; $6ea1: $80
    rst $38                                       ; $6ea2: $ff
    ldh a, [$c8]                                  ; $6ea3: $f0 $c8
    or b                                          ; $6ea5: $b0
    ret nz                                        ; $6ea6: $c0

    ld hl, sp-$40                                 ; $6ea7: $f8 $c0
    ld hl, sp-$1c                                 ; $6ea9: $f8 $e4
    rst $38                                       ; $6eab: $ff
    ret c                                         ; $6eac: $d8

    ccf                                           ; $6ead: $3f
    rst $18                                       ; $6eae: $df
    sbc a                                         ; $6eaf: $9f
    ld l, a                                       ; $6eb0: $6f
    ld e, a                                       ; $6eb1: $5f
    cpl                                           ; $6eb2: $2f
    rrca                                          ; $6eb3: $0f
    rst $38                                       ; $6eb4: $ff
    scf                                           ; $6eb5: $37
    daa                                           ; $6eb6: $27
    dec de                                        ; $6eb7: $1b
    inc de                                        ; $6eb8: $13
    inc c                                         ; $6eb9: $0c
    add hl, bc                                    ; $6eba: $09
    ld b, $04                                     ; $6ebb: $06 $04
    rst $38                                       ; $6ebd: $ff
    inc bc                                        ; $6ebe: $03
    db $fc                                        ; $6ebf: $fc
    ei                                            ; $6ec0: $fb
    ld hl, sp-$09                                 ; $6ec1: $f8 $f7
    ldh a, [$ef]                                  ; $6ec3: $f0 $ef
    ldh [rIE], a                                  ; $6ec5: $e0 $ff
    rst $18                                       ; $6ec7: $df
    ret nz                                        ; $6ec8: $c0

    cp a                                          ; $6ec9: $bf
    jp nz, $843c                                  ; $6eca: $c2 $3c $84

    ld a, b                                       ; $6ecd: $78
    ld [$f07f], sp                                ; $6ece: $08 $7f $f0
    rra                                           ; $6ed1: $1f
    rst $28                                       ; $6ed2: $ef
    rrca                                          ; $6ed3: $0f
    rst $30                                       ; $6ed4: $f7
    rlca                                          ; $6ed5: $07
    ei                                            ; $6ed6: $fb
    ld c, b                                       ; $6ed7: $48
    ret nz                                        ; $6ed8: $c0

    ld a, a                                       ; $6ed9: $7f
    rst $38                                       ; $6eda: $ff
    jr nz, jr_04a_6efc                            ; $6edb: $20 $1f

    db $10                                        ; $6edd: $10
    inc c                                         ; $6ede: $0c
    nop                                           ; $6edf: $00
    inc c                                         ; $6ee0: $0c
    halt                                          ; $6ee1: $76
    ret nz                                        ; $6ee2: $c0

    db $fd                                        ; $6ee3: $fd
    db $fc                                        ; $6ee4: $fc
    ld d, b                                       ; $6ee5: $50
    pop hl                                        ; $6ee6: $e1
    ccf                                           ; $6ee7: $3f
    sbc $0f                                       ; $6ee8: $de $0f
    db $f4                                        ; $6eea: $f4
    add e                                         ; $6eeb: $83
    ld a, h                                       ; $6eec: $7c
    rst $38                                       ; $6eed: $ff
    ld hl, $7e1e                                  ; $6eee: $21 $1e $7e
    cp l                                          ; $6ef1: $bd
    ccf                                           ; $6ef2: $3f
    sbc $9f                                       ; $6ef3: $de $9f
    ld l, a                                       ; $6ef5: $6f
    rst $38                                       ; $6ef6: $ff
    adc a                                         ; $6ef7: $8f
    ld a, a                                       ; $6ef8: $7f
    rst $08                                       ; $6ef9: $cf
    scf                                           ; $6efa: $37
    rst $00                                       ; $6efb: $c7

jr_04a_6efc:
    ccf                                           ; $6efc: $3f
    rst $20                                       ; $6efd: $e7
    dec de                                        ; $6efe: $1b
    rst $38                                       ; $6eff: $ff
    db $e3                                        ; $6f00: $e3
    rra                                           ; $6f01: $1f
    rlca                                          ; $6f02: $07
    ei                                            ; $6f03: $fb
    rlca                                          ; $6f04: $07
    rst $38                                       ; $6f05: $ff
    adc a                                         ; $6f06: $8f
    ld [hl], a                                    ; $6f07: $77
    rst $38                                       ; $6f08: $ff
    adc a                                         ; $6f09: $8f
    rst $30                                       ; $6f0a: $f7
    rst $00                                       ; $6f0b: $c7
    cp a                                          ; $6f0c: $bf
    rst $20                                       ; $6f0d: $e7
    db $db                                        ; $6f0e: $db
    db $e3                                        ; $6f0f: $e3
    rst $38                                       ; $6f10: $ff
    rst $10                                       ; $6f11: $d7
    di                                            ; $6f12: $f3
    rst $28                                       ; $6f13: $ef
    ld hl, sp-$01                                 ; $6f14: $f8 $ff
    and $fc                                       ; $6f16: $e6 $fc
    rst $38                                       ; $6f18: $ff
    ld [c], a                                     ; $6f19: $e2
    db $e4                                        ; $6f1a: $e4
    ret c                                         ; $6f1b: $d8

    ei                                            ; $6f1c: $fb
    ldh [$fc], a                                  ; $6f1d: $e0 $fc
    cp $e1                                        ; $6f1f: $fe $e1
    ld a, [c]                                     ; $6f21: $f2
    db $ec                                        ; $6f22: $ec
    ld a, [c]                                     ; $6f23: $f2
    db $ec                                        ; $6f24: $ec
    ldh a, [$fb]                                  ; $6f25: $f0 $fb
    cp $f0                                        ; $6f27: $fe $f0
    ld b, b                                       ; $6f29: $40
    ret z                                         ; $6f2a: $c8

    nop                                           ; $6f2b: $00
    ld bc, $0703                                  ; $6f2c: $01 $03 $07
    rlca                                          ; $6f2f: $07
    db $dd                                        ; $6f30: $dd
    rrca                                          ; $6f31: $0f
    xor l                                         ; $6f32: $ad
    and e                                         ; $6f33: $a3
    rlca                                          ; $6f34: $07
    rrca                                          ; $6f35: $0f
    ccf                                           ; $6f36: $3f
    ld d, e                                       ; $6f37: $53
    ret nz                                        ; $6f38: $c0

    rst $28                                       ; $6f39: $ef
    ldh a, [$ef]                                  ; $6f3a: $f0 $ef
    ld a, a                                       ; $6f3c: $7f
    add b                                         ; $6f3d: $80
    ld bc, $3303                                  ; $6f3e: $01 $03 $33
    pop bc                                        ; $6f41: $c1
    add b                                         ; $6f42: $80
    pop bc                                        ; $6f43: $c1
    pop af                                        ; $6f44: $f1
    rst $38                                       ; $6f45: $ff
    ld sp, hl                                     ; $6f46: $f9
    db $fd                                        ; $6f47: $fd
    rst $38                                       ; $6f48: $ff
    sbc a                                         ; $6f49: $9f
    ld a, a                                       ; $6f4a: $7f
    ei                                            ; $6f4b: $fb
    rlca                                          ; $6f4c: $07
    xor $ff                                       ; $6f4d: $ee $ff
    pop af                                        ; $6f4f: $f1
    ei                                            ; $6f50: $fb
    rst $20                                       ; $6f51: $e7
    sub $ef                                       ; $6f52: $d6 $ef
    db $ed                                        ; $6f54: $ed
    sbc $bb                                       ; $6f55: $de $bb
    rst $38                                       ; $6f57: $ff
    call c, $b856                                 ; $6f58: $dc $56 $b8
    db $fc                                        ; $6f5b: $fc
    ldh a, [$e8]                                  ; $6f5c: $f0 $e8
    ldh a, [$37]                                  ; $6f5e: $f0 $37
    rst $38                                       ; $6f60: $ff
    call z, $e4db                                 ; $6f61: $cc $db $e4
    cpl                                           ; $6f64: $2f
    ldh a, [$df]                                  ; $6f65: $f0 $df
    jr nc, jr_04a_6fa0                            ; $6f67: $30 $37

    ei                                            ; $6f69: $fb
    jr @+$19                                      ; $6f6a: $18 $17

    cp $e0                                        ; $6f6c: $fe $e0
    ld [hl], a                                    ; $6f6e: $77
    ld hl, sp+$18                                 ; $6f6f: $f8 $18
    rrca                                          ; $6f71: $0f
    inc c                                         ; $6f72: $0c
    rst $38                                       ; $6f73: $ff
    rlca                                          ; $6f74: $07
    ld [$100f], sp                                ; $6f75: $08 $0f $10
    rrca                                          ; $6f78: $0f
    db $10                                        ; $6f79: $10
    rra                                           ; $6f7a: $1f
    daa                                           ; $6f7b: $27
    ccf                                           ; $6f7c: $3f
    inc e                                         ; $6f7d: $1c
    jr c, jr_04a_6f90                             ; $6f7e: $38 $10

    jr nz, jr_04a_6f82                            ; $6f80: $20 $00

jr_04a_6f82:
    ld bc, $e046                                  ; $6f82: $01 $46 $e0
    cp $e3                                        ; $6f85: $fe $e3
    rst $38                                       ; $6f87: $ff
    ldh a, [$3f]                                  ; $6f88: $f0 $3f
    inc e                                         ; $6f8a: $1c
    rlca                                          ; $6f8b: $07
    ld b, $03                                     ; $6f8c: $06 $03

jr_04a_6f8e:
    di                                            ; $6f8e: $f3
    db $fd                                        ; $6f8f: $fd

jr_04a_6f90:
    rst $38                                       ; $6f90: $ff
    ld a, c                                       ; $6f91: $79
    or a                                          ; $6f92: $b7
    add hl, sp                                    ; $6f93: $39
    sbc $1c                                       ; $6f94: $de $1c
    ei                                            ; $6f96: $fb
    inc e                                         ; $6f97: $1c
    rst $28                                       ; $6f98: $ef
    cp a                                          ; $6f99: $bf
    inc c                                         ; $6f9a: $0c
    rst $38                                       ; $6f9b: $ff
    ld c, $fd                                     ; $6f9c: $0e $fd
    ld c, $f5                                     ; $6f9e: $0e $f5

jr_04a_6fa0:
    ld b, b                                       ; $6fa0: $40
    jp z, $b37f                                   ; $6fa1: $ca $7f $b3

    ld a, a                                       ; $6fa4: $7f
    rst $38                                       ; $6fa5: $ff
    ld e, d                                       ; $6fa6: $5a
    db $e3                                        ; $6fa7: $e3
    ld a, [$f0e7]                                 ; $6fa8: $fa $e7 $f0
    ld a, [hl]                                    ; $6fab: $7e
    cp $eb                                        ; $6fac: $fe $eb
    dec c                                         ; $6fae: $0d
    rst $38                                       ; $6faf: $ff
    ld e, $1b                                     ; $6fb0: $1e $1b
    inc a                                         ; $6fb2: $3c
    ccf                                           ; $6fb3: $3f
    jr c, jr_04a_6fed                             ; $6fb4: $38 $37

    ld a, b                                       ; $6fb6: $78
    ld a, a                                       ; $6fb7: $7f
    ld a, a                                       ; $6fb8: $7f
    ld [hl], b                                    ; $6fb9: $70
    ld l, a                                       ; $6fba: $6f
    ldh a, [$7f]                                  ; $6fbb: $f0 $7f
    ldh [rIE], a                                  ; $6fbd: $e0 $ff
    ldh [$a1], a                                  ; $6fbf: $e0 $a1
    and $f2                                       ; $6fc1: $e6 $f2
    sbc c                                         ; $6fc3: $99
    db $e4                                        ; $6fc4: $e4
    cp $8f                                        ; $6fc5: $fe $8f
    rst $20                                       ; $6fc7: $e7
    add a                                         ; $6fc8: $87
    ld [c], a                                     ; $6fc9: $e2
    add sp, -$0f                                  ; $6fca: $e8 $f1
    ld [hl], c                                    ; $6fcc: $71
    pop af                                        ; $6fcd: $f1
    cp a                                          ; $6fce: $bf
    or c                                          ; $6fcf: $b1
    ld [hl], e                                    ; $6fd0: $73
    db $db                                        ; $6fd1: $db
    dec sp                                        ; $6fd2: $3b
    rst $28                                       ; $6fd3: $ef
    rra                                           ; $6fd4: $1f
    add hl, hl                                    ; $6fd5: $29
    and b                                         ; $6fd6: $a0
    rrca                                          ; $6fd7: $0f
    rst $38                                       ; $6fd8: $ff
    rst $38                                       ; $6fd9: $ff
    rlca                                          ; $6fda: $07
    ld [$40f0], sp                                ; $6fdb: $08 $f0 $40
    ldh a, [rNR10]                                ; $6fde: $f0 $10
    or b                                          ; $6fe0: $b0
    rst $18                                       ; $6fe1: $df
    db $10                                        ; $6fe2: $10
    and b                                         ; $6fe3: $a0
    jr nz, @-$1e                                  ; $6fe4: $20 $e0

    jr nz, jr_04a_6f8e                            ; $6fe6: $20 $a6

    add c                                         ; $6fe8: $81
    add b                                         ; $6fe9: $80
    rst $38                                       ; $6fea: $ff
    rst $38                                       ; $6feb: $ff
    nop                                           ; $6fec: $00

jr_04a_6fed:
    db $fc                                        ; $6fed: $fc
    inc bc                                        ; $6fee: $03
    rst $30                                       ; $6fef: $f7
    rrca                                          ; $6ff0: $0f
    xor $1f                                       ; $6ff1: $ee $1f
    db $db                                        ; $6ff3: $db
    rst $38                                       ; $6ff4: $ff
    inc a                                         ; $6ff5: $3c
    or a                                          ; $6ff6: $b7
    ld a, b                                       ; $6ff7: $78
    ld l, [hl]                                    ; $6ff8: $6e
    ldh a, [$dc]                                  ; $6ff9: $f0 $dc
    ldh [$fe], a                                  ; $6ffb: $e0 $fe
    db $fd                                        ; $6ffd: $fd
    ld bc, $e01e                                  ; $6ffe: $01 $1e $e0
    db $fc                                        ; $7001: $fc
    db $ed                                        ; $7002: $ed
    ld e, $f7                                     ; $7003: $1e $f7
    ld c, $82                                     ; $7005: $0e $82
    ei                                            ; $7007: $fb
    rlca                                          ; $7008: $07
    inc bc                                        ; $7009: $03
    rst $38                                       ; $700a: $ff
    ldh [$0e], a                                  ; $700b: $e0 $0e
    rst $30                                       ; $700d: $f7
    ld c, $f7                                     ; $700e: $0e $f7
    adc [hl]                                      ; $7010: $8e
    rst $38                                       ; $7011: $ff
    ld [hl], e                                    ; $7012: $73
    adc a                                         ; $7013: $8f
    ld [hl], d                                    ; $7014: $72
    rlca                                          ; $7015: $07
    ld a, b                                       ; $7016: $78
    inc bc                                        ; $7017: $03
    ld a, h                                       ; $7018: $7c
    inc bc                                        ; $7019: $03
    rla                                           ; $701a: $17
    ld a, h                                       ; $701b: $7c
    ld de, $d86e                                  ; $701c: $11 $6e $d8
    and b                                         ; $701f: $a0
    cp a                                          ; $7020: $bf
    ret c                                         ; $7021: $d8

    and c                                         ; $7022: $a1
    cp $e5                                        ; $7023: $fe $e5
    ld d, b                                       ; $7025: $50
    push hl                                       ; $7026: $e5
    pop hl                                        ; $7027: $e1
    ld sp, hl                                     ; $7028: $f9
    rst $38                                       ; $7029: $ff
    ldh [$2c], a                                  ; $702a: $e0 $2c
    and d                                         ; $702c: $a2
    xor h                                         ; $702d: $ac
    ret nz                                        ; $702e: $c0

    xor b                                         ; $702f: $a8
    pop bc                                        ; $7030: $c1
    ld a, [c]                                     ; $7031: $f2
    db $ec                                        ; $7032: $ec
    ld [c], a                                     ; $7033: $e2
    ret c                                         ; $7034: $d8

    sbc b                                         ; $7035: $98
    jp nz, $e05e                                  ; $7036: $c2 $5e $e0

    ld e, d                                       ; $7039: $5a
    ldh [$ef], a                                  ; $703a: $e0 $ef
    ldh a, [rHDMA2]                               ; $703c: $f0 $52
    ldh [$f0], a                                  ; $703e: $e0 $f0
    ld a, a                                       ; $7040: $7f
    rst $38                                       ; $7041: $ff
    ld [hl], b                                    ; $7042: $70
    ld [hl], a                                    ; $7043: $77
    ld a, b                                       ; $7044: $78
    ld bc, $0507                                  ; $7045: $01 $07 $05
    ld b, $04                                     ; $7048: $06 $04
    xor e                                         ; $704a: $ab
    ld [bc], a                                    ; $704b: $02
    ld [bc], a                                    ; $704c: $02
    ld b, [hl]                                    ; $704d: $46
    add [hl]                                      ; $704e: $86
    add c                                         ; $704f: $81
    ret c                                         ; $7050: $d8

    add b                                         ; $7051: $80
    ld [bc], a                                    ; $7052: $02
    ret c                                         ; $7053: $d8

    add b                                         ; $7054: $80
    inc b                                         ; $7055: $04
    rst $38                                       ; $7056: $ff
    inc bc                                        ; $7057: $03
    dec b                                         ; $7058: $05
    rlca                                          ; $7059: $07
    ld bc, $0007                                  ; $705a: $01 $07 $00
    ld b, $b8                                     ; $705d: $06 $b8
    rst $38                                       ; $705f: $ff
    ret nz                                        ; $7060: $c0

    or b                                          ; $7061: $b0
    ret nz                                        ; $7062: $c0

    ldh a, [$80]                                  ; $7063: $f0 $80
    ld h, b                                       ; $7065: $60
    add c                                         ; $7066: $81
    pop hl                                        ; $7067: $e1
    rst $38                                       ; $7068: $ff
    inc bc                                        ; $7069: $03

jr_04a_706a:
    jp $c303                                      ; $706a: $c3 $03 $c3


    rlca                                          ; $706d: $07
    add e                                         ; $706e: $83
    rlca                                          ; $706f: $07
    dec bc                                        ; $7070: $0b
    rst $28                                       ; $7071: $ef
    rra                                           ; $7072: $1f
    ccf                                           ; $7073: $3f
    ld a, a                                       ; $7074: $7f
    ld a, [hl]                                    ; $7075: $7e
    ld a, b                                       ; $7076: $78
    and b                                         ; $7077: $a0
    db $dd                                        ; $7078: $dd
    xor $ff                                       ; $7079: $ee $ff
    rst $38                                       ; $707b: $ff
    call z, $dceb                                 ; $707c: $cc $eb $dc
    rst $38                                       ; $707f: $ff
    ld hl, sp-$47                                 ; $7080: $f8 $b9
    ld l, a                                       ; $7082: $6f
    ld hl, sp-$01                                 ; $7083: $f8 $ff
    ld b, a                                       ; $7085: $47
    ld a, h                                       ; $7086: $7c
    rlca                                          ; $7087: $07
    db $fc                                        ; $7088: $fc
    inc bc                                        ; $7089: $03
    ld a, [hl]                                    ; $708a: $7e
    inc bc                                        ; $708b: $03
    cp $e3                                        ; $708c: $fe $e3
    ld bc, $a37f                                  ; $708e: $01 $7f $a3
    ret nz                                        ; $7091: $c0

    halt                                          ; $7092: $76
    rst $20                                       ; $7093: $e7
    ld l, h                                       ; $7094: $6c
    ldh [$df], a                                  ; $7095: $e0 $df
    rra                                           ; $7097: $1f
    rst $38                                       ; $7098: $ff
    cp $8a                                        ; $7099: $fe $8a
    ldh [$df], a                                  ; $709b: $e0 $df
    ldh [$df], a                                  ; $709d: $e0 $df
    db $ec                                        ; $709f: $ec
    db $db                                        ; $70a0: $db
    rst $38                                       ; $70a1: $ff
    adc $fc                                       ; $70a2: $ce $fc
    ld c, [hl]                                    ; $70a4: $4e
    add e                                         ; $70a5: $83
    ld a, [de]                                    ; $70a6: $1a
    add c                                         ; $70a7: $81
    jr nz, jr_04a_706a                            ; $70a8: $20 $c0

    db $10                                        ; $70aa: $10
    ldh [$08], a                                  ; $70ab: $e0 $08
    ldh a, [rIE]                                  ; $70ad: $f0 $ff
    add h                                         ; $70af: $84
    ld a, b                                       ; $70b0: $78
    ret nz                                        ; $70b1: $c0

    cp h                                          ; $70b2: $bc
    ld [c], a                                     ; $70b3: $e2
    call c, $783f                                 ; $70b4: $dc $3f $78
    rst $38                                       ; $70b7: $ff
    dec sp                                        ; $70b8: $3b
    inc a                                         ; $70b9: $3c
    rra                                           ; $70ba: $1f
    inc a                                         ; $70bb: $3c
    dec c                                         ; $70bc: $0d
    ld e, $1e                                     ; $70bd: $1e $1e
    ccf                                           ; $70bf: $3f
    push af                                       ; $70c0: $f5
    rra                                           ; $70c1: $1f
    cp $e1                                        ; $70c2: $fe $e1
    rra                                           ; $70c4: $1f
    cp l                                          ; $70c5: $bd
    ld h, l                                       ; $70c6: $65
    sub l                                         ; $70c7: $95
    nop                                           ; $70c8: $00
    ld [$ef80], a                                 ; $70c9: $ea $80 $ef
    ccf                                           ; $70cc: $3f
    ldh [rIF], a                                  ; $70cd: $e0 $0f
    ld hl, sp-$53                                 ; $70cf: $f8 $ad
    ld h, e                                       ; $70d1: $63
    ld [bc], a                                    ; $70d2: $02
    nop                                           ; $70d3: $00
    ld d, l                                       ; $70d4: $55
    ei                                            ; $70d5: $fb
    nop                                           ; $70d6: $00
    cp a                                          ; $70d7: $bf
    ld b, a                                       ; $70d8: $47
    jp nz, Jump_000_0001                          ; $70d9: $c2 $01 $00

    dec bc                                        ; $70dc: $0b
    nop                                           ; $70dd: $00
    ld d, a                                       ; $70de: $57
    cp $f4                                        ; $70df: $fe $f4
    db $e4                                        ; $70e1: $e4
    cp $03                                        ; $70e2: $fe $03
    ld hl, sp+$0f                                 ; $70e4: $f8 $0f
    nop                                           ; $70e6: $00
    ld b, $01                                     ; $70e7: $06 $01
    rst $38                                       ; $70e9: $ff
    rlca                                          ; $70ea: $07
    inc b                                         ; $70eb: $04
    rlca                                          ; $70ec: $07
    add h                                         ; $70ed: $84
    inc bc                                        ; $70ee: $03
    add d                                         ; $70ef: $82
    inc bc                                        ; $70f0: $03
    pop bc                                        ; $70f1: $c1
    ld a, a                                       ; $70f2: $7f
    add c                                         ; $70f3: $81
    ld b, b                                       ; $70f4: $40
    add b                                         ; $70f5: $80
    ld h, b                                       ; $70f6: $60
    ret nz                                        ; $70f7: $c0

    add a                                         ; $70f8: $87
    rlca                                          ; $70f9: $07
    cp $e1                                        ; $70fa: $fe $e1
    rst $38                                       ; $70fc: $ff
    ld b, e                                       ; $70fd: $43
    add a                                         ; $70fe: $87
    and c                                         ; $70ff: $a1
    jp $ffe7                                      ; $7100: $c3 $e7 $ff


    cp l                                          ; $7103: $bd
    ld a, [hl]                                    ; $7104: $7e
    rst $38                                       ; $7105: $ff
    rst $38                                       ; $7106: $ff
    nop                                           ; $7107: $00
    add hl, bc                                    ; $7108: $09
    ld hl, sp+$00                                 ; $7109: $f8 $00
    ldh a, [$15]                                  ; $710b: $f0 $15
    ldh a, [rIE]                                  ; $710d: $f0 $ff
    inc hl                                        ; $710f: $23
    ldh [rLYC], a                                 ; $7110: $e0 $45
    ret nz                                        ; $7112: $c0

    adc e                                         ; $7113: $8b
    add b                                         ; $7114: $80
    rlca                                          ; $7115: $07
    nop                                           ; $7116: $00
    ei                                            ; $7117: $fb
    ccf                                           ; $7118: $3f
    jr nc, @+$03                                  ; $7119: $30 $01

    call nz, $fe01                                ; $711b: $c4 $01 $fe
    inc bc                                        ; $711e: $03
    db $fc                                        ; $711f: $fc
    rlca                                          ; $7120: $07
    rst $08                                       ; $7121: $cf
    pop af                                        ; $7122: $f1
    rra                                           ; $7123: $1f
    add a                                         ; $7124: $87
    rst $38                                       ; $7125: $ff
    ld d, h                                       ; $7126: $54
    and c                                         ; $7127: $a1
    cp $e0                                        ; $7128: $fe $e0
    ld [hl], a                                    ; $712a: $77
    rlca                                          ; $712b: $07
    db $ed                                        ; $712c: $ed
    rst $38                                       ; $712d: $ff
    ld d, d                                       ; $712e: $52
    and c                                         ; $712f: $a1
    di                                            ; $7130: $f3
    dec c                                         ; $7131: $0d
    ld b, b                                       ; $7132: $40
    adc c                                         ; $7133: $89
    ldh a, [$ef]                                  ; $7134: $f0 $ef
    ret nz                                        ; $7136: $c0

    rst $38                                       ; $7137: $ff
    cp a                                          ; $7138: $bf
    db $e3                                        ; $7139: $e3
    db $e3                                        ; $713a: $e3
    pop bc                                        ; $713b: $c1
    pop bc                                        ; $713c: $c1
    pop af                                        ; $713d: $f1
    pop af                                        ; $713e: $f1
    ld sp, hl                                     ; $713f: $f9
    ei                                            ; $7140: $fb
    ld sp, hl                                     ; $7141: $f9
    db $fd                                        ; $7142: $fd
    adc [hl]                                      ; $7143: $8e
    ld h, c                                       ; $7144: $61
    ld a, a                                       ; $7145: $7f
    ccf                                           ; $7146: $3f
    rst $08                                       ; $7147: $cf
    ldh [$fe], a                                  ; $7148: $e0 $fe
    cp e                                          ; $714a: $bb
    ldh a, [$ee]                                  ; $714b: $f0 $ee
    and h                                         ; $714d: $a4
    add b                                         ; $714e: $80
    rst $28                                       ; $714f: $ef
    ld hl, sp-$39                                 ; $7150: $f8 $c7
    cp $e0                                        ; $7152: $fe $e0
    add a                                         ; $7154: $87
    ld l, l                                       ; $7155: $6d
    ld hl, sp+$58                                 ; $7156: $f8 $58
    ld h, b                                       ; $7158: $60
    nop                                           ; $7159: $00
    rrca                                          ; $715a: $0f
    ld a, [hl+]                                   ; $715b: $2a
    ld h, b                                       ; $715c: $60
    rlca                                          ; $715d: $07
    inc b                                         ; $715e: $04
    call z, $ffc2                                 ; $715f: $cc $c2 $ff
    nop                                           ; $7162: $00
    rlca                                          ; $7163: $07
    ld b, c                                       ; $7164: $41
    rst $38                                       ; $7165: $ff
    jr c, @+$01                                   ; $7166: $38 $ff

    ld e, $ff                                     ; $7168: $1e $ff
    rst $38                                       ; $716a: $ff
    ld a, [bc]                                    ; $716b: $0a
    rst $38                                       ; $716c: $ff
    db $10                                        ; $716d: $10
    rst $38                                       ; $716e: $ff
    add b                                         ; $716f: $80
    rst $38                                       ; $7170: $ff
    ret nz                                        ; $7171: $c0

    ld a, a                                       ; $7172: $7f
    rst $28                                       ; $7173: $ef
    ret nz                                        ; $7174: $c0

    ccf                                           ; $7175: $3f
    rst $38                                       ; $7176: $ff
    add b                                         ; $7177: $80
    call nc, $a081                                ; $7178: $d4 $81 $a0
    rst $38                                       ; $717b: $ff
    dec b                                         ; $717c: $05
    db $eb                                        ; $717d: $eb
    rst $38                                       ; $717e: $ff
    ld [bc], a                                    ; $717f: $02
    add [hl]                                      ; $7180: $86
    and d                                         ; $7181: $a2
    ldh [$0c], a                                  ; $7182: $e0 $0c
    ld h, b                                       ; $7184: $60
    ld bc, $17ff                                  ; $7185: $01 $ff $17
    cp a                                          ; $7188: $bf
    rst $38                                       ; $7189: $ff
    db $fd                                        ; $718a: $fd
    rst $38                                       ; $718b: $ff
    xor d                                         ; $718c: $aa
    rst $38                                       ; $718d: $ff
    ld d, b                                       ; $718e: $50
    cp d                                          ; $718f: $ba
    add b                                         ; $7190: $80
    jr @+$01                                      ; $7191: $18 $ff

    ldh [$83], a                                  ; $7193: $e0 $83
    db $fc                                        ; $7195: $fc
    ld b, b                                       ; $7196: $40
    rst $38                                       ; $7197: $ff
    xor b                                         ; $7198: $a8
    rst $38                                       ; $7199: $ff
    ld b, b                                       ; $719a: $40
    adc $68                                       ; $719b: $ce $68
    and h                                         ; $719d: $a4
    inc bc                                        ; $719e: $03
    ld bc, $0e30                                  ; $719f: $01 $30 $0e
    ld h, b                                       ; $71a2: $60
    ld e, h                                       ; $71a3: $5c
    and l                                         ; $71a4: $a5
    rlca                                          ; $71a5: $07
    cp $ff                                        ; $71a6: $fe $ff
    rra                                           ; $71a8: $1f
    pop af                                        ; $71a9: $f1
    ld e, $f3                                     ; $71aa: $1e $f3
    inc e                                         ; $71ac: $1c
    di                                            ; $71ad: $f3
    inc e                                         ; $71ae: $1c
    db $e3                                        ; $71af: $e3
    rst $28                                       ; $71b0: $ef
    ld a, $e3                                     ; $71b1: $3e $e3
    ld a, a                                       ; $71b3: $7f
    pop bc                                        ; $71b4: $c1
    xor l                                         ; $71b5: $ad
    ldh [rP1], a                                  ; $71b6: $e0 $00
    ccf                                           ; $71b8: $3f
    db $fc                                        ; $71b9: $fc
    rst $18                                       ; $71ba: $df
    ld h, a                                       ; $71bb: $67
    pop hl                                        ; $71bc: $e1
    ld a, a                                       ; $71bd: $7f
    jp Jump_000_107f                              ; $71be: $c3 $7f $10


    ret nz                                        ; $71c1: $c0

    rra                                           ; $71c2: $1f
    rst $38                                       ; $71c3: $ff
    rst $18                                       ; $71c4: $df
    sbc [hl]                                      ; $71c5: $9e
    ld a, a                                       ; $71c6: $7f
    sub l                                         ; $71c7: $95
    rst $38                                       ; $71c8: $ff
    ldh a, [$8d]                                  ; $71c9: $f0 $8d
    and b                                         ; $71cb: $a0
    ret nz                                        ; $71cc: $c0

    rst $38                                       ; $71cd: $ff
    rst $38                                       ; $71ce: $ff
    db $e3                                        ; $71cf: $e3
    cp $87                                        ; $71d0: $fe $87
    db $fc                                        ; $71d2: $fc
    ld b, a                                       ; $71d3: $47
    db $fc                                        ; $71d4: $fc
    adc a                                         ; $71d5: $8f
    ld hl, sp-$32                                 ; $71d6: $f8 $ce
    ret nc                                        ; $71d8: $d0

    ret nz                                        ; $71d9: $c0

    rst $38                                       ; $71da: $ff
    ccf                                           ; $71db: $3f
    ldh [$d8], a                                  ; $71dc: $e0 $d8
    pop hl                                        ; $71de: $e1
    add hl, de                                    ; $71df: $19
    and e                                         ; $71e0: $a3
    rst $00                                       ; $71e1: $c7
    ld a, h                                       ; $71e2: $7c
    rst $38                                       ; $71e3: $ff
    rrca                                          ; $71e4: $0f
    rst $38                                       ; $71e5: $ff
    add a                                         ; $71e6: $87
    rst $38                                       ; $71e7: $ff
    db $e3                                        ; $71e8: $e3
    ccf                                           ; $71e9: $3f
    ld sp, hl                                     ; $71ea: $f9
    rrca                                          ; $71eb: $0f
    push af                                       ; $71ec: $f5
    db $fc                                        ; $71ed: $fc
    ld e, h                                       ; $71ee: $5c
    ret nz                                        ; $71ef: $c0

    cp $5c                                        ; $71f0: $fe $5c
    ret nz                                        ; $71f2: $c0

    ld sp, hl                                     ; $71f3: $f9
    ld b, $f0                                     ; $71f4: $06 $f0
    ld c, $ff                                     ; $71f6: $0e $ff
    ldh a, [$0e]                                  ; $71f8: $f0 $0e
    ld [c], a                                     ; $71fa: $e2
    inc e                                         ; $71fb: $1c
    ldh [rNR32], a                                ; $71fc: $e0 $1c
    call nz, Call_04a_4d38                        ; $71fe: $c4 $38 $4d
    nop                                           ; $7201: $00
    db $e4                                        ; $7202: $e4
    ret nz                                        ; $7203: $c0

    ld b, $07                                     ; $7204: $06 $07
    cp $e3                                        ; $7206: $fe $e3
    rst $38                                       ; $7208: $ff
    pop hl                                        ; $7209: $e1
    inc bc                                        ; $720a: $03
    sbc [hl]                                      ; $720b: $9e
    and b                                         ; $720c: $a0
    ld a, a                                       ; $720d: $7f
    ldh [$3f], a                                  ; $720e: $e0 $3f
    or b                                          ; $7210: $b0
    rra                                           ; $7211: $1f
    ld e, h                                       ; $7212: $5c
    rrca                                          ; $7213: $0f
    add a                                         ; $7214: $87
    push de                                       ; $7215: $d5
    ld b, b                                       ; $7216: $40
    rst $20                                       ; $7217: $e7
    add b                                         ; $7218: $80
    nop                                           ; $7219: $00
    add b                                         ; $721a: $80
    db $fd                                        ; $721b: $fd
    ldh [rNR21], a                                ; $721c: $e0 $16
    add c                                         ; $721e: $81
    ld hl, sp-$31                                 ; $721f: $f8 $cf
    db $fc                                        ; $7221: $fc
    adc a                                         ; $7222: $8f
    rlca                                          ; $7223: $07
    sbc a                                         ; $7224: $9f
    inc bc                                        ; $7225: $03
    rlca                                          ; $7226: $07
    cp d                                          ; $7227: $ba
    ld b, c                                       ; $7228: $41
    rst $10                                       ; $7229: $d7
    ld b, b                                       ; $722a: $40
    ld h, [hl]                                    ; $722b: $66
    db $e4                                        ; $722c: $e4
    db $fc                                        ; $722d: $fc
    ld a, [c]                                     ; $722e: $f2
    and l                                         ; $722f: $a5
    and b                                         ; $7230: $a0
    inc bc                                        ; $7231: $03
    ld d, h                                       ; $7232: $54
    rst $20                                       ; $7233: $e7
    adc l                                         ; $7234: $8d
    pop hl                                        ; $7235: $e1
    ld l, b                                       ; $7236: $68
    rst $00                                       ; $7237: $c7
    ret z                                         ; $7238: $c8

    adc a                                         ; $7239: $8f
    cp e                                          ; $723a: $bb
    ccf                                           ; $723b: $3f
    ldh [$fe], a                                  ; $723c: $e0 $fe
    pop hl                                        ; $723e: $e1
    dec hl                                        ; $723f: $2b
    ret nz                                        ; $7240: $c0

    ld d, l                                       ; $7241: $55
    sub b                                         ; $7242: $90
    ret nz                                        ; $7243: $c0

    ld bc, $48fa                                  ; $7244: $01 $fa $48
    ret nz                                        ; $7247: $c0

    ld [$e2e4], sp                                ; $7248: $08 $e4 $e2
    pop bc                                        ; $724b: $c1
    ld a, a                                       ; $724c: $7f
    rst $20                                       ; $724d: $e7
    ccf                                           ; $724e: $3f
    rst $38                                       ; $724f: $ff
    db $fd                                        ; $7250: $fd
    inc e                                         ; $7251: $1c
    add l                                         ; $7252: $85
    add c                                         ; $7253: $81
    rra                                           ; $7254: $1f
    pop af                                        ; $7255: $f1
    ld a, $f3                                     ; $7256: $3e $f3
    ld a, h                                       ; $7258: $7c
    db $e3                                        ; $7259: $e3
    rst $38                                       ; $725a: $ff
    db $fc                                        ; $725b: $fc
    rst $00                                       ; $725c: $c7
    ld hl, sp+$07                                 ; $725d: $f8 $07
    ld hl, sp+$0f                                 ; $725f: $f8 $0f
    pop af                                        ; $7261: $f1
    rrca                                          ; $7262: $0f
    rst $08                                       ; $7263: $cf
    di                                            ; $7264: $f3
    rrca                                          ; $7265: $0f
    inc bc                                        ; $7266: $03
    cp $ca                                        ; $7267: $fe $ca
    add b                                         ; $7269: $80
    push de                                       ; $726a: $d5
    ret nz                                        ; $726b: $c0

    ccf                                           ; $726c: $3f
    ldh [rIE], a                                  ; $726d: $e0 $ff
    rra                                           ; $726f: $1f
    ldh a, [$ef]                                  ; $7270: $f0 $ef
    or b                                          ; $7272: $b0
    rst $38                                       ; $7273: $ff
    nop                                           ; $7274: $00
    rst $20                                       ; $7275: $e7
    ld bc, $e3af                                  ; $7276: $01 $af $e3
    nop                                           ; $7279: $00
    db $d3                                        ; $727a: $d3
    nop                                           ; $727b: $00
    db $fc                                        ; $727c: $fc
    pop hl                                        ; $727d: $e1
    rst $20                                       ; $727e: $e7
    db $f4                                        ; $727f: $f4
    ldh [$cf], a                                  ; $7280: $e0 $cf
    ld h, a                                       ; $7282: $67
    ld bc, $e000                                  ; $7283: $01 $00 $e0
    call c, $fe40                                 ; $7286: $dc $40 $fe
    and $40                                       ; $7289: $e6 $40
    add b                                         ; $728b: $80
    jp c, $fe43                                   ; $728c: $da $43 $fe

    sub a                                         ; $728f: $97
    daa                                           ; $7290: $27

jr_04a_7291:
    cp a                                          ; $7291: $bf
    ret nz                                        ; $7292: $c0

    rst $38                                       ; $7293: $ff
    ret nz                                        ; $7294: $c0

    rst $18                                       ; $7295: $df
    ldh [$6f], a                                  ; $7296: $e0 $6f
    rst $28                                       ; $7298: $ef
    ldh a, [$37]                                  ; $7299: $f0 $37
    ld a, b                                       ; $729b: $78
    dec de                                        ; $729c: $1b
    cp d                                          ; $729d: $ba
    and b                                         ; $729e: $a0
    rlca                                          ; $729f: $07
    ld c, $1b                                     ; $72a0: $0e $1b
    rst $38                                       ; $72a2: $ff
    ld [hl], c                                    ; $72a3: $71
    ld b, b                                       ; $72a4: $40
    ld a, a                                       ; $72a5: $7f
    ld b, b                                       ; $72a6: $40
    ccf                                           ; $72a7: $3f
    jr nz, @+$3e                                  ; $72a8: $20 $3c

    jr nz, @+$01                                  ; $72aa: $20 $ff

    ld e, $10                                     ; $72ac: $1e $10
    rra                                           ; $72ae: $1f
    db $10                                        ; $72af: $10
    rrca                                          ; $72b0: $0f
    ld [$020f], sp                                ; $72b1: $08 $0f $02
    rst $28                                       ; $72b4: $ef
    db $fc                                        ; $72b5: $fc
    db $10                                        ; $72b6: $10
    ldh [$80], a                                  ; $72b7: $e0 $80
    xor h                                         ; $72b9: $ac
    ld [hl+], a                                   ; $72ba: $22
    pop hl                                        ; $72bb: $e1
    ld e, $03                                     ; $72bc: $1e $03
    rst $38                                       ; $72be: $ff
    db $fd                                        ; $72bf: $fd
    rra                                           ; $72c0: $1f
    rst $28                                       ; $72c1: $ef
    db $10                                        ; $72c2: $10
    rrca                                          ; $72c3: $0f
    ld hl, $991e                                  ; $72c4: $21 $1e $99
    rst $38                                       ; $72c7: $ff
    ld h, [hl]                                    ; $72c8: $66
    jr c, jr_04a_7291                             ; $72c9: $38 $c6

    ld a, b                                       ; $72cb: $78
    or [hl]                                       ; $72cc: $b6
    ld a, [$f2f4]                                 ; $72cd: $fa $f4 $f2
    ld d, a                                       ; $72d0: $57
    db $fc                                        ; $72d1: $fc
    ldh a, [$ec]                                  ; $72d2: $f0 $ec
    ld e, h                                       ; $72d4: $5c
    pop hl                                        ; $72d5: $e1
    dec b                                         ; $72d6: $05
    rst $20                                       ; $72d7: $e7
    jr nz, jr_04a_72df                            ; $72d8: $20 $05

    xor b                                         ; $72da: $a8
    and b                                         ; $72db: $a0
    db $fd                                        ; $72dc: $fd
    rlca                                          ; $72dd: $07
    and h                                         ; $72de: $a4

jr_04a_72df:
    and b                                         ; $72df: $a0
    di                                            ; $72e0: $f3
    ld c, $f3                                     ; $72e1: $0e $f3
    inc c                                         ; $72e3: $0c
    ei                                            ; $72e4: $fb
    ld c, $5f                                     ; $72e5: $0e $5f
    db $fd                                        ; $72e7: $fd
    ld b, $bf                                     ; $72e8: $06 $bf
    nop                                           ; $72ea: $00
    jp z, $e085                                   ; $72eb: $ca $85 $e0

    ldh a, [$d3]                                  ; $72ee: $f0 $d3
    ld h, d                                       ; $72f0: $62
    ld a, a                                       ; $72f1: $7f
    ei                                            ; $72f2: $fb
    nop                                           ; $72f3: $00
    jp hl                                         ; $72f4: $e9


    nop                                           ; $72f5: $00
    ld b, c                                       ; $72f6: $41
    nop                                           ; $72f7: $00
    add e                                         ; $72f8: $83
    ldh [$e0], a                                  ; $72f9: $e0 $e0
    cp $73                                        ; $72fb: $fe $73
    jr nz, jr_04a_7300                            ; $72fd: $20 $01

    db $fd                                        ; $72ff: $fd

jr_04a_7300:
    inc bc                                        ; $7300: $03
    db $fd                                        ; $7301: $fd
    inc bc                                        ; $7302: $03
    rst $38                                       ; $7303: $ff
    inc bc                                        ; $7304: $03
    rst $38                                       ; $7305: $ff
    ei                                            ; $7306: $fb
    rlca                                          ; $7307: $07
    or $0f                                        ; $7308: $f6 $0f
    db $ec                                        ; $730a: $ec
    ld e, $d8                                     ; $730b: $1e $d8
    inc a                                         ; $730d: $3c
    ld b, a                                       ; $730e: $47
    add b                                         ; $730f: $80
    ret nz                                        ; $7310: $c0

    add b                                         ; $7311: $80
    rst $38                                       ; $7312: $ff
    ldh [rLYC], a                                 ; $7313: $e0 $45
    jr nz, @+$06                                  ; $7315: $20 $04

    inc h                                         ; $7317: $24
    ld b, $ba                                     ; $7318: $06 $ba
    jp nz, $01d3                                  ; $731a: $c2 $d3 $01

    inc bc                                        ; $731d: $03
    dec [hl]                                      ; $731e: $35
    ld b, b                                       ; $731f: $40
    pop de                                        ; $7320: $d1
    jp nz, Jump_04a_6208                          ; $7321: $c2 $08 $62

    and c                                         ; $7324: $a1
    add e                                         ; $7325: $83
    ld [bc], a                                    ; $7326: $02
    rst $18                                       ; $7327: $df
    add e                                         ; $7328: $83
    ld b, b                                       ; $7329: $40
    pop bc                                        ; $732a: $c1
    ld hl, $96e0                                  ; $732b: $21 $e0 $96
    ld b, b                                       ; $732e: $40
    ldh a, [$27]                                  ; $732f: $f0 $27
    rst $18                                       ; $7331: $df
    rst $20                                       ; $7332: $e7
    ld c, a                                       ; $7333: $4f
    rst $08                                       ; $7334: $cf
    ld c, a                                       ; $7335: $4f
    rst $08                                       ; $7336: $cf
    ld [hl+], a                                   ; $7337: $22
    ld b, b                                       ; $7338: $40
    cp [hl]                                       ; $7339: $be
    inc a                                         ; $733a: $3c
    cp a                                          ; $733b: $bf
    db $db                                        ; $733c: $db
    nop                                           ; $733d: $00
    ld a, a                                       ; $733e: $7f
    ld [hl+], a                                   ; $733f: $22
    inc e                                         ; $7340: $1c
    ldh [$fe], a                                  ; $7341: $e0 $fe
    ld b, b                                       ; $7343: $40
    ret nz                                        ; $7344: $c0

    rst $08                                       ; $7345: $cf
    cp b                                          ; $7346: $b8
    adc b                                         ; $7347: $88
    ld [hl], b                                    ; $7348: $70
    stop                                          ; $7349: $10 $00
    add b                                         ; $734b: $80
    cp e                                          ; $734c: $bb
    pop hl                                        ; $734d: $e1
    rla                                           ; $734e: $17
    nop                                           ; $734f: $00
    db $fd                                        ; $7350: $fd
    cpl                                           ; $7351: $2f
    db $fc                                        ; $7352: $fc
    ld [c], a                                     ; $7353: $e2
    ld e, a                                       ; $7354: $5f
    nop                                           ; $7355: $00
    ccf                                           ; $7356: $3f
    nop                                           ; $7357: $00
    ld a, [hl]                                    ; $7358: $7e
    rlca                                          ; $7359: $07
    ei                                            ; $735a: $fb
    ldh [$3f], a                                  ; $735b: $e0 $3f
    ld d, c                                       ; $735d: $51
    ld h, l                                       ; $735e: $65
    db $fd                                        ; $735f: $fd
    inc bc                                        ; $7360: $03
    rst $08                                       ; $7361: $cf
    ccf                                           ; $7362: $3f
    cp $ff                                        ; $7363: $fe $ff
    rst $38                                       ; $7365: $ff
    ldh a, [$f8]                                  ; $7366: $f0 $f8
    ld sp, hl                                     ; $7368: $f9
    ld b, $f2                                     ; $7369: $06 $f2
    rrca                                          ; $736b: $0f
    rst $28                                       ; $736c: $ef
    ld a, a                                       ; $736d: $7f
    rra                                           ; $736e: $1f
    cp l                                          ; $736f: $bd
    ld a, a                                       ; $7370: $7f
    ldh a, [$f8]                                  ; $7371: $f0 $f8
    ret nz                                        ; $7373: $c0

    ldh [$71], a                                  ; $7374: $e0 $71
    push bc                                       ; $7376: $c5
    cp e                                          ; $7377: $bb
    cp a                                          ; $7378: $bf
    ret nz                                        ; $7379: $c0

    and $40                                       ; $737a: $e6 $40
    rst $38                                       ; $737c: $ff
    rra                                           ; $737d: $1f
    ccf                                           ; $737e: $3f
    ld h, c                                       ; $737f: $61
    jp $fffe                                      ; $7380: $c3 $fe $ff


    ld bc, $07fb                                  ; $7383: $01 $fb $07
    sbc a                                         ; $7386: $9f
    ld a, a                                       ; $7387: $7f
    db $fc                                        ; $7388: $fc
    cp $c0                                        ; $7389: $fe $c0
    ld a, [hl]                                    ; $738b: $7e
    or h                                          ; $738c: $b4
    nop                                           ; $738d: $00
    nop                                           ; $738e: $00
    nop                                           ; $738f: $00
    or b                                          ; $7390: $b0
    ld a, b                                       ; $7391: $78
    ldh [$f0], a                                  ; $7392: $e0 $f0
    sub $e0                                       ; $7394: $d6 $e0
    inc a                                         ; $7396: $3c
    ld h, b                                       ; $7397: $60
    and $d8                                       ; $7398: $e6 $d8
    pop bc                                        ; $739a: $c1
    ld c, $1f                                     ; $739b: $0e $1f
    rlca                                          ; $739d: $07
    rrca                                          ; $739e: $0f
    cp b                                          ; $739f: $b8
    ld b, b                                       ; $73a0: $40
    ld d, d                                       ; $73a1: $52
    ld [bc], a                                    ; $73a2: $02
    ret z                                         ; $73a3: $c8

    pop af                                        ; $73a4: $f1
    ld b, e                                       ; $73a5: $43
    cp d                                          ; $73a6: $ba
    ret nz                                        ; $73a7: $c0

    add a                                         ; $73a8: $87

jr_04a_73a9:
    jr nz, jr_04a_73ba                            ; $73a9: $20 $0f

    cp [hl]                                       ; $73ab: $be
    ldh [$c0], a                                  ; $73ac: $e0 $c0
    db $e3                                        ; $73ae: $e3
    rst $18                                       ; $73af: $df
    ccf                                           ; $73b0: $3f
    rst $28                                       ; $73b1: $ef
    db $fc                                        ; $73b2: $fc
    cp $f0                                        ; $73b3: $fe $f0
    ld hl, sp+$62                                 ; $73b5: $f8 $62
    jr nz, jr_04a_73b9                            ; $73b7: $20 $00

jr_04a_73b9:
    cp a                                          ; $73b9: $bf

jr_04a_73ba:
    ld a, a                                       ; $73ba: $7f
    adc a                                         ; $73bb: $8f
    ldh [$f0], a                                  ; $73bc: $e0 $f0
    add b                                         ; $73be: $80
    ret nz                                        ; $73bf: $c0

    jr nz, jr_04a_73a9                            ; $73c0: $20 $e7

    db $f4                                        ; $73c2: $f4
    ldh [rNR43], a                                ; $73c3: $e0 $22
    ld a, [bc]                                    ; $73c5: $0a
    ld [hl], b                                    ; $73c6: $70
    rst $38                                       ; $73c7: $ff
    ld hl, sp-$18                                 ; $73c8: $f8 $e8
    sbc b                                         ; $73ca: $98
    ld hl, sp-$74                                 ; $73cb: $f8 $8c
    db $f4                                        ; $73cd: $f4
    adc h                                         ; $73ce: $8c
    cp h                                          ; $73cf: $bc
    rst $38                                       ; $73d0: $ff
    add $7a                                       ; $73d1: $c6 $7a
    add $5e                                       ; $73d3: $c6 $5e
    ld h, e                                       ; $73d5: $63
    ccf                                           ; $73d6: $3f
    ld h, e                                       ; $73d7: $63
    inc e                                         ; $73d8: $1c
    rst $18                                       ; $73d9: $df
    ld a, $2e                                     ; $73da: $3e $2e
    ld [hl-], a                                   ; $73dc: $32
    ld a, $22                                     ; $73dd: $3e $22
    cp $e2                                        ; $73df: $fe $e2
    ld h, d                                       ; $73e1: $62
    ld e, b                                       ; $73e2: $58
    rst $30                                       ; $73e3: $f7
    ld h, h                                       ; $73e4: $64
    ld a, h                                       ; $73e5: $7c
    push bc                                       ; $73e6: $c5
    ld [$0fc4], a                                 ; $73e7: $ea $c4 $0f
    add hl, de                                    ; $73ea: $19
    ccf                                           ; $73eb: $3f
    ld l, $ef                                     ; $73ec: $2e $ef
    ld [hl], c                                    ; $73ee: $71
    ld e, a                                       ; $73ef: $5f
    ldh [$bf], a                                  ; $73f0: $e0 $bf
    ld [hl], b                                    ; $73f2: $70
    inc b                                         ; $73f3: $04
    jr jr_04a_7432                                ; $73f4: $18 $3c

    dec [hl]                                      ; $73f6: $35
    ld a, a                                       ; $73f7: $7f
    xor a                                         ; $73f8: $af
    cp a                                          ; $73f9: $bf
    and [hl]                                      ; $73fa: $a6
    cp a                                          ; $73fb: $bf
    and [hl]                                      ; $73fc: $a6
    cp l                                          ; $73fd: $bd
    and a                                         ; $73fe: $a7
    ld d, [hl]                                    ; $73ff: $56
    ld bc, $307f                                  ; $7400: $01 $7f $30
    ld a, b                                       ; $7403: $78
    ld a, b                                       ; $7404: $78
    ld c, c                                       ; $7405: $49
    db $fd                                        ; $7406: $fd
    rst $08                                       ; $7407: $cf
    rst $38                                       ; $7408: $ff
    xor d                                         ; $7409: $aa
    ret nz                                        ; $740a: $c0

    ei                                            ; $740b: $fb
    db $fd                                        ; $740c: $fd
    rst $08                                       ; $740d: $cf
    and d                                         ; $740e: $a2
    db $e3                                        ; $740f: $e3
    ret nz                                        ; $7410: $c0

    ldh [$a0], a                                  ; $7411: $e0 $a0
    ld h, b                                       ; $7413: $60
    xor $df                                       ; $7414: $ee $df
    ccf                                           ; $7416: $3f
    db $fd                                        ; $7417: $fd
    inc sp                                        ; $7418: $33
    rst $38                                       ; $7419: $ff
    jr nc, jr_04a_745f                            ; $741a: $30 $43

    ld bc, $0301                                  ; $741c: $01 $01 $03
    rst $38                                       ; $741f: $ff
    ld [bc], a                                    ; $7420: $02
    rlca                                          ; $7421: $07
    dec b                                         ; $7422: $05
    ld c, $0b                                     ; $7423: $0e $0b
    inc c                                         ; $7425: $0c
    set 5, h                                      ; $7426: $cb $ec
    rst $38                                       ; $7428: $ff
    and l                                         ; $7429: $a5
    ld a, [hl]                                    ; $742a: $7e
    ld [hl], b                                    ; $742b: $70
    ld a, b                                       ; $742c: $78
    cp b                                          ; $742d: $b8
    ret z                                         ; $742e: $c8

    ld a, b                                       ; $742f: $78
    adc b                                         ; $7430: $88
    rst $28                                       ; $7431: $ef

jr_04a_7432:
    ld hl, sp+$08                                 ; $7432: $f8 $08
    ld hl, sp+$48                                 ; $7434: $f8 $48
    cp $e2                                        ; $7436: $fe $e2
    ld [$233e], sp                                ; $7438: $08 $3e $23
    rst $38                                       ; $743b: $ff
    ccf                                           ; $743c: $3f
    jr nz, jr_04a_746e                            ; $743d: $20 $2f

    jr nc, jr_04a_7460                            ; $743f: $30 $1f

jr_04a_7441:
    jr nc, @+$21                                  ; $7441: $30 $1f

    db $10                                        ; $7443: $10
    rst $38                                       ; $7444: $ff
    ld d, $19                                     ; $7445: $16 $19
    dec bc                                        ; $7447: $0b
    dec e                                         ; $7448: $1d
    ld b, $0f                                     ; $7449: $06 $0f
    db $fd                                        ; $744b: $fd
    push bc                                       ; $744c: $c5
    rst $38                                       ; $744d: $ff
    cp l                                          ; $744e: $bd
    ld b, l                                       ; $744f: $45
    push af                                       ; $7450: $f5
    dec c                                         ; $7451: $0d

jr_04a_7452:
    ld sp, hl                                     ; $7452: $f9
    dec c                                         ; $7453: $0d
    ld hl, sp+$09                                 ; $7454: $f8 $09
    rst $38                                       ; $7456: $ff
    add sp, $18                                   ; $7457: $e8 $18
    ld d, b                                       ; $7459: $50
    cp b                                          ; $745a: $b8
    ldh [$f0], a                                  ; $745b: $e0 $f0
    ld l, a                                       ; $745d: $6f
    sbc b                                         ; $745e: $98

jr_04a_745f:
    rst $28                                       ; $745f: $ef

jr_04a_7460:
    rst $38                                       ; $7460: $ff
    jr jr_04a_7452                                ; $7461: $18 $ef

    jr jr_04a_7441                                ; $7463: $18 $dc

    pop bc                                        ; $7465: $c1
    ld l, a                                       ; $7466: $6f
    ldh a, [rNR33]                                ; $7467: $f0 $1d
    rst $18                                       ; $7469: $df
    ld a, $03                                     ; $746a: $3e $03
    rlca                                          ; $746c: $07
    cp h                                          ; $746d: $bc

jr_04a_746e:
    and h                                         ; $746e: $a4
    cp $e2                                        ; $746f: $fe $e2
    db $e4                                        ; $7471: $e4
    db $fc                                        ; $7472: $fc
    rst $38                                       ; $7473: $ff
    ld h, h                                       ; $7474: $64
    db $ec                                        ; $7475: $ec
    ld [hl], h                                    ; $7476: $74
    call c, $8874                                 ; $7477: $dc $74 $88
    call c, $ff79                                 ; $747a: $dc $79 $ff
    ld c, c                                       ; $747d: $49
    ld a, c                                       ; $747e: $79
    ld c, l                                       ; $747f: $4d
    ld [hl], l                                    ; $7480: $75
    ld c, l                                       ; $7481: $4d
    ld a, l                                       ; $7482: $7d
    ld b, a                                       ; $7483: $47
    ld e, e                                       ; $7484: $5b
    rst $38                                       ; $7485: $ff
    ld h, a                                       ; $7486: $67
    ccf                                           ; $7487: $3f
    ld h, e                                       ; $7488: $63
    ld l, $33                                     ; $7489: $2e $33
    inc e                                         ; $748b: $1c
    ld a, $ff                                     ; $748c: $3e $ff
    push af                                       ; $748e: $f5

jr_04a_748f:
    jr nc, jr_04a_748f                            ; $748f: $30 $fe

    ldh [$31], a                                  ; $7491: $e0 $31
    cp $e1                                        ; $7493: $fe $e1
    ld a, a                                       ; $7495: $7f
    or c                                          ; $7496: $b1
    rst $38                                       ; $7497: $ff
    or c                                          ; $7498: $b1
    rst $38                                       ; $7499: $ff
    ld c, [hl]                                    ; $749a: $4e
    rst $38                                       ; $749b: $ff
    jp nc, $f137                                  ; $749c: $d2 $37 $f1

    inc de                                        ; $749f: $13
    ld [hl], b                                    ; $74a0: $70
    sub c                                         ; $74a1: $91
    rst $30                                       ; $74a2: $f7
    ldh a, [$91]                                  ; $74a3: $f0 $91
    pop af                                        ; $74a5: $f1
    cp $e2                                        ; $74a6: $fe $e2
    ld h, b                                       ; $74a8: $60
    pop af                                        ; $74a9: $f1
    ld hl, sp+$08                                 ; $74aa: $f8 $08
    rst $38                                       ; $74ac: $ff
    ld a, b                                       ; $74ad: $78
    adc b                                         ; $74ae: $88
    add sp, -$68                                  ; $74af: $e8 $98
    di                                            ; $74b1: $f3
    sbc a                                         ; $74b2: $9f
    ld d, l                                       ; $74b3: $55
    or [hl]                                       ; $74b4: $b6
    cp a                                          ; $74b5: $bf
    rst $20                                       ; $74b6: $e7
    inc [hl]                                      ; $74b7: $34
    push bc                                       ; $74b8: $c5
    ld h, [hl]                                    ; $74b9: $66
    add e                                         ; $74ba: $83
    rst $00                                       ; $74bb: $c7
    ld a, [c]                                     ; $74bc: $f2
    jp $ff87                                      ; $74bd: $c3 $87 $ff


    rst $08                                       ; $74c0: $cf
    ld c, d                                       ; $74c1: $4a
    call $48cf                                    ; $74c2: $cd $cf $48
    ld c, d                                       ; $74c5: $4a
    call $fe87                                    ; $74c6: $cd $87 $fe
    ld b, b                                       ; $74c9: $40
    db $e4                                        ; $74ca: $e4
    ld c, $9f                                     ; $74cb: $0e $9f
    sub l                                         ; $74cd: $95
    sbc e                                         ; $74ce: $9b
    sbc a                                         ; $74cf: $9f
    sub c                                         ; $74d0: $91
    sub l                                         ; $74d1: $95
    rlca                                          ; $74d2: $07
    sbc e                                         ; $74d3: $9b
    ld c, $9f                                     ; $74d4: $0e $9f
    nop                                           ; $74d6: $00
    nop                                           ; $74d7: $00
    nop                                           ; $74d8: $00
    add l                                         ; $74d9: $85
    ld [$f0ff], sp                                ; $74da: $08 $ff $f0
    rrca                                          ; $74dd: $0f
    rst $38                                       ; $74de: $ff
    add sp, -$0d                                  ; $74df: $e8 $f3
    ldh [$e3], a                                  ; $74e1: $e0 $e3
    db $ed                                        ; $74e3: $ed
    ldh [$f1], a                                  ; $74e4: $e0 $f1
    dec bc                                        ; $74e6: $0b
    ld b, b                                       ; $74e7: $40
    rst $38                                       ; $74e8: $ff
    pop hl                                        ; $74e9: $e1
    ldh [$f2], a                                  ; $74ea: $e0 $f2
    sbc a                                         ; $74ec: $9f
    db $e3                                        ; $74ed: $e3
    ldh [$e3], a                                  ; $74ee: $e0 $e3
    sbc $e3                                       ; $74f0: $de $e3
    and b                                         ; $74f2: $a0
    ld [$ff48], a                                 ; $74f3: $ea $48 $ff
    ldh [rBCPS], a                                ; $74f6: $e0 $68
    ldh [$e9], a                                  ; $74f8: $e0 $e9
    ldh a, [$e1]                                  ; $74fa: $f0 $e1
    ldh [$ed], a                                  ; $74fc: $e0 $ed
    dec c                                         ; $74fe: $0d
    rst $38                                       ; $74ff: $ff
    pop hl                                        ; $7500: $e1
    inc c                                         ; $7501: $0c
    inc c                                         ; $7502: $0c
    ret nz                                        ; $7503: $c0

    ldh [$5d], a                                  ; $7504: $e0 $5d
    ld a, [bc]                                    ; $7506: $0a
    ldh [$f6], a                                  ; $7507: $e0 $f6
    inc c                                         ; $7509: $0c
    dec c                                         ; $750a: $0d
    dec c                                         ; $750b: $0d
    ret nz                                        ; $750c: $c0

    ld sp, hl                                     ; $750d: $f9
    inc c                                         ; $750e: $0c
    ldh [$e0], a                                  ; $750f: $e0 $e0
    add hl, bc                                    ; $7511: $09
    inc c                                         ; $7512: $0c
    ld e, [hl]                                    ; $7513: $5e
    pop hl                                        ; $7514: $e1
    and b                                         ; $7515: $a0
    ld a, [c]                                     ; $7516: $f2
    inc c                                         ; $7517: $0c
    rst $38                                       ; $7518: $ff
    ldh [$9f], a                                  ; $7519: $e0 $9f
    ldh [$3a], a                                  ; $751b: $e0 $3a

jr_04a_751d:
    ldh [$80], a                                  ; $751d: $e0 $80
    ld a, [c]                                     ; $751f: $f2
    pop de                                        ; $7520: $d1
    ld [$e1e0], sp                                ; $7521: $08 $e0 $e1
    db $fc                                        ; $7524: $fc
    db $e3                                        ; $7525: $e3
    ld h, b                                       ; $7526: $60
    ld a, [c]                                     ; $7527: $f2
    ld c, $e0                                     ; $7528: $0e $e0
    db $ec                                        ; $752a: $ec
    cpl                                           ; $752b: $2f
    cpl                                           ; $752c: $2f
    ld e, b                                       ; $752d: $58
    jr nz, @-$12                                  ; $752e: $20 $ec

    add l                                         ; $7530: $85
    pop hl                                        ; $7531: $e1
    cp h                                          ; $7532: $bc
    ld [c], a                                     ; $7533: $e2
    ld c, $0e                                     ; $7534: $0e $0e
    ldh [$f7], a                                  ; $7536: $e0 $f7
    ld c, $ff                                     ; $7538: $0e $ff
    ld [c], a                                     ; $753a: $e2
    jr @-$3e                                      ; $753b: $18 $c0

    db $ed                                        ; $753d: $ed
    ld h, b                                       ; $753e: $60
    jp $c0fe                                      ; $753f: $c3 $fe $c0


    ld c, $0e                                     ; $7542: $0e $0e
    ld h, b                                       ; $7544: $60
    ret c                                         ; $7545: $d8

    ld e, h                                       ; $7546: $5c
    ret nz                                        ; $7547: $c0

    sub h                                         ; $7548: $94
    jp nz, Jump_04a_5000                          ; $7549: $c2 $00 $50

    jp $ce40                                      ; $754c: $c3 $40 $ce


    jr nc, jr_04a_751d                            ; $754f: $30 $cc

    ld h, b                                       ; $7551: $60
    adc $50                                       ; $7552: $ce $50
    call z, $cd60                                 ; $7554: $cc $60 $cd
    db $fc                                        ; $7557: $fc
    db $ed                                        ; $7558: $ed
    ldh [$a9], a                                  ; $7559: $e0 $a9
    nop                                           ; $755b: $00
    nop                                           ; $755c: $00
    nop                                           ; $755d: $00
    ld [hl], l                                    ; $755e: $75
    inc b                                         ; $755f: $04
    rst $38                                       ; $7560: $ff
    ldh a, [rP1]                                  ; $7561: $f0 $00
    rst $38                                       ; $7563: $ff
    add sp, $04                                   ; $7564: $e8 $04
    nop                                           ; $7566: $00
    ld [bc], a                                    ; $7567: $02
    db $dd                                        ; $7568: $dd
    ldh [rIE], a                                  ; $7569: $e0 $ff
    dec b                                         ; $756b: $05
    ld b, $07                                     ; $756c: $06 $07
    ld [$0a09], sp                                ; $756e: $08 $09 $0a
    dec bc                                        ; $7571: $0b
    inc c                                         ; $7572: $0c
    ld a, [$e1e3]                                 ; $7573: $fa $e3 $e1
    ld [bc], a                                    ; $7576: $02
    ldh [$eb], a                                  ; $7577: $e0 $eb
    ld bc, $0403                                  ; $7579: $01 $03 $04
    inc b                                         ; $757c: $04
    dec c                                         ; $757d: $0d
    rst $38                                       ; $757e: $ff
    ld c, $0f                                     ; $757f: $0e $0f
    db $10                                        ; $7581: $10
    ld de, $1312                                  ; $7582: $11 $12 $13
    inc d                                         ; $7585: $14
    dec d                                         ; $7586: $15
    db $e3                                        ; $7587: $e3
    ld d, $04                                     ; $7588: $16 $04
    ldh a, [$e1]                                  ; $758a: $f0 $e1
    ret nz                                        ; $758c: $c0

    ld [$e19f], a                                 ; $758d: $ea $9f $e1
    rla                                           ; $7590: $17
    jr jr_04a_75ac                                ; $7591: $18 $19

    ld a, a                                       ; $7593: $7f
    ld a, [de]                                    ; $7594: $1a
    dec de                                        ; $7595: $1b
    inc e                                         ; $7596: $1c
    dec e                                         ; $7597: $1d
    inc d                                         ; $7598: $14
    ld e, $1f                                     ; $7599: $1e $1f
    and b                                         ; $759b: $a0
    rst $28                                       ; $759c: $ef
    cp $7f                                        ; $759d: $fe $7f
    ld [c], a                                     ; $759f: $e2
    jr nz, jr_04a_75c3                            ; $75a0: $20 $21

    ld [hl+], a                                   ; $75a2: $22
    inc hl                                        ; $75a3: $23
    inc h                                         ; $75a4: $24
    dec h                                         ; $75a5: $25
    inc d                                         ; $75a6: $14
    ei                                            ; $75a7: $fb
    ld h, $27                                     ; $75a8: $26 $27
    ldh [$f2], a                                  ; $75aa: $e0 $f2

jr_04a_75ac:
    jr z, jr_04a_75d7                             ; $75ac: $28 $29

    ld a, [hl+]                                   ; $75ae: $2a
    dec hl                                        ; $75af: $2b
    inc l                                         ; $75b0: $2c
    cp a                                          ; $75b1: $bf
    dec l                                         ; $75b2: $2d
    ld l, $2f                                     ; $75b3: $2e $2f
    jr nc, jr_04a_75e8                            ; $75b5: $30 $31

    ld [hl-], a                                   ; $75b7: $32
    ret nz                                        ; $75b8: $c0

    ld a, [c]                                     ; $75b9: $f2
    inc sp                                        ; $75ba: $33
    rst $38                                       ; $75bb: $ff
    inc [hl]                                      ; $75bc: $34
    dec [hl]                                      ; $75bd: $35
    ld [hl], $37                                  ; $75be: $36 $37
    jr c, jr_04a_75fb                             ; $75c0: $38 $39

    ld a, [hl-]                                   ; $75c2: $3a

jr_04a_75c3:
    dec sp                                        ; $75c3: $3b
    ei                                            ; $75c4: $fb
    inc a                                         ; $75c5: $3c
    dec a                                         ; $75c6: $3d
    and b                                         ; $75c7: $a0
    ld a, [c]                                     ; $75c8: $f2
    ld a, $34                                     ; $75c9: $3e $34
    inc [hl]                                      ; $75cb: $34
    ccf                                           ; $75cc: $3f
    ld b, b                                       ; $75cd: $40
    ld a, a                                       ; $75ce: $7f
    ld b, c                                       ; $75cf: $41
    ld b, d                                       ; $75d0: $42
    ld b, e                                       ; $75d1: $43
    ld b, h                                       ; $75d2: $44
    inc d                                         ; $75d3: $14
    ld b, l                                       ; $75d4: $45
    ld b, [hl]                                    ; $75d5: $46
    add b                                         ; $75d6: $80

jr_04a_75d7:
    pop af                                        ; $75d7: $f1
    rst $38                                       ; $75d8: $ff
    ld b, a                                       ; $75d9: $47
    ld c, b                                       ; $75da: $48
    ld c, c                                       ; $75db: $49
    ld c, d                                       ; $75dc: $4a
    ld c, e                                       ; $75dd: $4b
    ld c, h                                       ; $75de: $4c
    ld c, l                                       ; $75df: $4d
    ld c, [hl]                                    ; $75e0: $4e
    rst $28                                       ; $75e1: $ef
    ld c, a                                       ; $75e2: $4f
    ld d, b                                       ; $75e3: $50
    ld d, c                                       ; $75e4: $51
    ld d, d                                       ; $75e5: $52
    ld h, b                                       ; $75e6: $60
    pop af                                        ; $75e7: $f1

jr_04a_75e8:
    ld d, e                                       ; $75e8: $53
    ld d, h                                       ; $75e9: $54
    ld d, l                                       ; $75ea: $55
    rst $38                                       ; $75eb: $ff
    ld d, [hl]                                    ; $75ec: $56
    ld d, a                                       ; $75ed: $57
    ld e, b                                       ; $75ee: $58
    ld e, c                                       ; $75ef: $59
    ld e, d                                       ; $75f0: $5a
    ld e, e                                       ; $75f1: $5b
    ld e, h                                       ; $75f2: $5c
    ld e, l                                       ; $75f3: $5d
    db $fd                                        ; $75f4: $fd
    ld e, [hl]                                    ; $75f5: $5e
    ld b, b                                       ; $75f6: $40
    pop af                                        ; $75f7: $f1

jr_04a_75f8:
    ld e, a                                       ; $75f8: $5f
    ld h, b                                       ; $75f9: $60
    ld h, c                                       ; $75fa: $61

jr_04a_75fb:
    ld h, d                                       ; $75fb: $62
    ld h, e                                       ; $75fc: $63
    ld h, h                                       ; $75fd: $64
    cp a                                          ; $75fe: $bf
    inc [hl]                                      ; $75ff: $34
    ld h, l                                       ; $7600: $65
    ld h, [hl]                                    ; $7601: $66
    ld h, a                                       ; $7602: $67
    ld l, b                                       ; $7603: $68
    ld l, c                                       ; $7604: $69
    jr nz, jr_04a_75f8                            ; $7605: $20 $f1

    ld l, d                                       ; $7607: $6a
    rst $38                                       ; $7608: $ff
    ld l, e                                       ; $7609: $6b
    ld l, h                                       ; $760a: $6c
    ld l, l                                       ; $760b: $6d
    ld l, [hl]                                    ; $760c: $6e
    ld l, a                                       ; $760d: $6f
    inc [hl]                                      ; $760e: $34
    inc [hl]                                      ; $760f: $34
    ld [hl], b                                    ; $7610: $70
    rst $30                                       ; $7611: $f7
    ld [hl], c                                    ; $7612: $71
    ld [hl], d                                    ; $7613: $72
    ld [hl], e                                    ; $7614: $73
    nop                                           ; $7615: $00
    ld a, [c]                                     ; $7616: $f2
    ld [hl], h                                    ; $7617: $74
    ld [hl], l                                    ; $7618: $75
    halt                                          ; $7619: $76
    ld [hl], a                                    ; $761a: $77
    cp a                                          ; $761b: $bf
    ld a, b                                       ; $761c: $78
    ld a, c                                       ; $761d: $79
    ld a, d                                       ; $761e: $7a
    ld a, e                                       ; $761f: $7b
    ld a, h                                       ; $7620: $7c
    ld a, l                                       ; $7621: $7d
    ldh [$d4], a                                  ; $7622: $e0 $d4
    ld a, [hl]                                    ; $7624: $7e
    adc a                                         ; $7625: $8f
    ld a, a                                       ; $7626: $7f
    add b                                         ; $7627: $80
    add c                                         ; $7628: $81
    add d                                         ; $7629: $82
    ld h, b                                       ; $762a: $60
    ret c                                         ; $762b: $d8

    ld b, e                                       ; $762c: $43
    ret                                           ; $762d: $c9


    ld h, b                                       ; $762e: $60
    ret nc                                        ; $762f: $d0

    add e                                         ; $7630: $83
    ld a, a                                       ; $7631: $7f
    add h                                         ; $7632: $84
    add l                                         ; $7633: $85
    add [hl]                                      ; $7634: $86
    add a                                         ; $7635: $87
    adc b                                         ; $7636: $88
    adc c                                         ; $7637: $89
    adc d                                         ; $7638: $8a
    inc de                                        ; $7639: $13
    pop bc                                        ; $763a: $c1
    cp $60                                        ; $763b: $fe $60
    pop de                                        ; $763d: $d1
    adc e                                         ; $763e: $8b
    adc h                                         ; $763f: $8c
    adc l                                         ; $7640: $8d
    adc [hl]                                      ; $7641: $8e
    adc a                                         ; $7642: $8f
    sub b                                         ; $7643: $90
    sub c                                         ; $7644: $91
    rlca                                          ; $7645: $07
    sub d                                         ; $7646: $92
    sub e                                         ; $7647: $93
    sub h                                         ; $7648: $94
    ld h, b                                       ; $7649: $60
    call nc, $b7e0                                ; $764a: $d4 $e0 $b7
    nop                                           ; $764d: $00
    nop                                           ; $764e: $00
    nop                                           ; $764f: $00
    ld bc, $0203                                  ; $7650: $01 $03 $02
    inc bc                                        ; $7653: $03
    inc bc                                        ; $7654: $03
    ld b, $05                                     ; $7655: $06 $05
    ld c, $3f                                     ; $7657: $0e $3f
    ld a, h                                       ; $7659: $7c
    ld e, l                                       ; $765a: $5d
    ld h, d                                       ; $765b: $62
    cpl                                           ; $765c: $2f
    ld [hl], d                                    ; $765d: $72

jr_04a_765e:
    rla                                           ; $765e: $17
    ld a, [hl-]                                   ; $765f: $3a
    dec bc                                        ; $7660: $0b
    inc e                                         ; $7661: $1c
    ld a, [bc]                                    ; $7662: $0a
    dec e                                         ; $7663: $1d
    inc d                                         ; $7664: $14
    dec de                                        ; $7665: $1b
    ld de, $263f                                  ; $7666: $11 $3f $26
    ccf                                           ; $7669: $3f
    jr jr_04a_76a8                                ; $766a: $18 $3c

    nop                                           ; $766c: $00
    nop                                           ; $766d: $00
    nop                                           ; $766e: $00
    nop                                           ; $766f: $00
    add b                                         ; $7670: $80
    ret nz                                        ; $7671: $c0

    ld b, b                                       ; $7672: $40
    ret nz                                        ; $7673: $c0

    ret nz                                        ; $7674: $c0

    ld h, b                                       ; $7675: $60
    and b                                         ; $7676: $a0
    ld [hl], b                                    ; $7677: $70
    db $fc                                        ; $7678: $fc
    ld a, $ba                                     ; $7679: $3e $ba
    ld b, [hl]                                    ; $767b: $46
    db $f4                                        ; $767c: $f4
    ld c, [hl]                                    ; $767d: $4e
    add sp, $5c                                   ; $767e: $e8 $5c
    ret nc                                        ; $7680: $d0

    jr c, @+$52                                   ; $7681: $38 $50

    cp b                                          ; $7683: $b8
    jr z, jr_04a_765e                             ; $7684: $28 $d8

    adc b                                         ; $7686: $88
    db $fc                                        ; $7687: $fc
    ld h, h                                       ; $7688: $64
    db $fc                                        ; $7689: $fc
    jr @+$3e                                      ; $768a: $18 $3c

    nop                                           ; $768c: $00
    nop                                           ; $768d: $00
    nop                                           ; $768e: $00
    nop                                           ; $768f: $00
    nop                                           ; $7690: $00
    ld bc, $0101                                  ; $7691: $01 $01 $01
    ld bc, $0303                                  ; $7694: $01 $03 $03
    rlca                                          ; $7697: $07
    ld c, $1f                                     ; $7698: $0e $1f
    inc de                                        ; $769a: $13
    inc e                                         ; $769b: $1c
    inc de                                        ; $769c: $13
    inc e                                         ; $769d: $1c
    dec c                                         ; $769e: $0d
    ld e, $06                                     ; $769f: $1e $06
    rrca                                          ; $76a1: $0f
    ld [bc], a                                    ; $76a2: $02
    rlca                                          ; $76a3: $07
    dec b                                         ; $76a4: $05
    ld c, $0a                                     ; $76a5: $0e $0a
    dec c                                         ; $76a7: $0d

jr_04a_76a8:
    add hl, bc                                    ; $76a8: $09
    rrca                                          ; $76a9: $0f
    ld c, $0e                                     ; $76aa: $0e $0e
    nop                                           ; $76ac: $00
    nop                                           ; $76ad: $00
    nop                                           ; $76ae: $00
    nop                                           ; $76af: $00
    add b                                         ; $76b0: $80
    ret nz                                        ; $76b1: $c0

    ld b, b                                       ; $76b2: $40
    ret nz                                        ; $76b3: $c0

    ret nz                                        ; $76b4: $c0

    ld h, b                                       ; $76b5: $60
    and b                                         ; $76b6: $a0
    ld [hl], b                                    ; $76b7: $70
    ld hl, sp+$3c                                 ; $76b8: $f8 $3c
    ld e, h                                       ; $76ba: $5c
    and h                                         ; $76bb: $a4
    db $f4                                        ; $76bc: $f4
    xor h                                         ; $76bd: $ac
    add sp, -$44                                  ; $76be: $e8 $bc
    ldh a, [rNR23]                                ; $76c0: $f0 $18
    or b                                          ; $76c2: $b0
    ld d, b                                       ; $76c3: $50
    db $10                                        ; $76c4: $10
    ld hl, sp-$38                                 ; $76c5: $f8 $c8
    ld hl, sp+$28                                 ; $76c7: $f8 $28
    ld hl, sp+$18                                 ; $76c9: $f8 $18
    jr c, jr_04a_76cd                             ; $76cb: $38 $00

jr_04a_76cd:
    nop                                           ; $76cd: $00
    nop                                           ; $76ce: $00
    nop                                           ; $76cf: $00
    nop                                           ; $76d0: $00
    ld bc, $0101                                  ; $76d1: $01 $01 $01
    ld bc, $0203                                  ; $76d4: $01 $03 $02
    rlca                                          ; $76d7: $07
    dec c                                         ; $76d8: $0d
    ld c, $0f                                     ; $76d9: $0e $0f
    ld [$0c0b], sp                                ; $76db: $08 $0b $0c
    dec c                                         ; $76de: $0d
    ld c, $07                                     ; $76df: $0e $07
    ld c, $03                                     ; $76e1: $0e $03
    ld b, $07                                     ; $76e3: $06 $07
    inc b                                         ; $76e5: $04

jr_04a_76e6:
    ld b, $05                                     ; $76e6: $06 $05
    inc b                                         ; $76e8: $04
    rlca                                          ; $76e9: $07
    rlca                                          ; $76ea: $07
    rlca                                          ; $76eb: $07
    nop                                           ; $76ec: $00
    nop                                           ; $76ed: $00
    nop                                           ; $76ee: $00
    nop                                           ; $76ef: $00
    add b                                         ; $76f0: $80
    ret nz                                        ; $76f1: $c0

    ld b, b                                       ; $76f2: $40
    ret nz                                        ; $76f3: $c0

    ld b, b                                       ; $76f4: $40
    ret nz                                        ; $76f5: $c0

    ret nz                                        ; $76f6: $c0

    ld h, b                                       ; $76f7: $60
    and b                                         ; $76f8: $a0
    ld h, b                                       ; $76f9: $60
    ld d, b                                       ; $76fa: $50
    or b                                          ; $76fb: $b0
    ret nc                                        ; $76fc: $d0

    or b                                          ; $76fd: $b0
    ldh [$b0], a                                  ; $76fe: $e0 $b0
    ldh [rNR41], a                                ; $7700: $e0 $20
    and b                                         ; $7702: $a0
    ld h, b                                       ; $7703: $60
    jr nz, jr_04a_76e6                            ; $7704: $20 $e0

    ld d, b                                       ; $7706: $50
    ldh a, [$d0]                                  ; $7707: $f0 $d0
    ldh a, [$30]                                  ; $7709: $f0 $30
    ldh a, [rP1]                                  ; $770b: $f0 $00
    nop                                           ; $770d: $00
    nop                                           ; $770e: $00
    nop                                           ; $770f: $00
    nop                                           ; $7710: $00
    ld bc, $0101                                  ; $7711: $01 $01 $01
    ld bc, $0101                                  ; $7714: $01 $01 $01
    inc bc                                        ; $7717: $03
    inc bc                                        ; $7718: $03
    ld b, $07                                     ; $7719: $06 $07
    inc b                                         ; $771b: $04
    dec b                                         ; $771c: $05
    ld b, $06                                     ; $771d: $06 $06
    rlca                                          ; $771f: $07
    inc bc                                        ; $7720: $03
    rlca                                          ; $7721: $07
    inc bc                                        ; $7722: $03
    inc bc                                        ; $7723: $03
    ld [bc], a                                    ; $7724: $02
    inc bc                                        ; $7725: $03
    inc bc                                        ; $7726: $03
    ld [bc], a                                    ; $7727: $02
    inc bc                                        ; $7728: $03
    ld [bc], a                                    ; $7729: $02
    ld bc, $0003                                  ; $772a: $01 $03 $00
    nop                                           ; $772d: $00
    nop                                           ; $772e: $00
    nop                                           ; $772f: $00
    ret nz                                        ; $7730: $c0

    ret nz                                        ; $7731: $c0

    ld b, b                                       ; $7732: $40
    ret nz                                        ; $7733: $c0

    ld b, b                                       ; $7734: $40
    ldh [$a0], a                                  ; $7735: $e0 $a0
    ld h, b                                       ; $7737: $60
    ldh [rNR41], a                                ; $7738: $e0 $20
    and b                                         ; $773a: $a0
    ld h, b                                       ; $773b: $60
    ldh [$60], a                                  ; $773c: $e0 $60
    ldh [$60], a                                  ; $773e: $e0 $60
    ldh [rNR41], a                                ; $7740: $e0 $20
    and b                                         ; $7742: $a0
    ld h, b                                       ; $7743: $60
    and b                                         ; $7744: $a0
    ld h, b                                       ; $7745: $60
    ret nz                                        ; $7746: $c0

    ld h, b                                       ; $7747: $60
    ld b, b                                       ; $7748: $40
    ret nz                                        ; $7749: $c0

    add b                                         ; $774a: $80
    ret nz                                        ; $774b: $c0

    nop                                           ; $774c: $00
    nop                                           ; $774d: $00
    nop                                           ; $774e: $00
    nop                                           ; $774f: $00
    nop                                           ; $7750: $00
    ld bc, $0101                                  ; $7751: $01 $01 $01
    ld bc, $0101                                  ; $7754: $01 $01 $01
    inc bc                                        ; $7757: $03

jr_04a_7758:
    ld [bc], a                                    ; $7758: $02
    inc bc                                        ; $7759: $03
    dec b                                         ; $775a: $05
    ld b, $05                                     ; $775b: $06 $05
    ld b, $03                                     ; $775d: $06 $03
    ld b, $03                                     ; $775f: $06 $03
    ld [bc], a                                    ; $7761: $02
    ld [bc], a                                    ; $7762: $02

jr_04a_7763:
    inc bc                                        ; $7763: $03
    ld [bc], a                                    ; $7764: $02
    inc bc                                        ; $7765: $03
    dec b                                         ; $7766: $05
    rlca                                          ; $7767: $07
    dec b                                         ; $7768: $05
    rlca                                          ; $7769: $07
    ld b, $07                                     ; $776a: $06 $07
    nop                                           ; $776c: $00
    nop                                           ; $776d: $00
    nop                                           ; $776e: $00
    nop                                           ; $776f: $00
    add b                                         ; $7770: $80

jr_04a_7771:
    ret nz                                        ; $7771: $c0

    ld b, b                                       ; $7772: $40

jr_04a_7773:
    ret nz                                        ; $7773: $c0

    ld b, b                                       ; $7774: $40
    ldh [$a0], a                                  ; $7775: $e0 $a0
    ld [hl], b                                    ; $7777: $70
    ret c                                         ; $7778: $d8

    jr c, jr_04a_7773                             ; $7779: $38 $f8

    ld [$18e8], sp                                ; $777b: $08 $e8 $18
    ret c                                         ; $777e: $d8

    jr c, jr_04a_7771                             ; $777f: $38 $f0

    jr c, jr_04a_7763                             ; $7781: $38 $e0

    jr nc, jr_04a_77f5                            ; $7783: $30 $70

    sub b                                         ; $7785: $90
    jr nc, jr_04a_7758                            ; $7786: $30 $d0

    sub b                                         ; $7788: $90
    ldh a, [rSVBK]                                ; $7789: $f0 $70
    ldh a, [rP1]                                  ; $778b: $f0 $00
    nop                                           ; $778d: $00
    nop                                           ; $778e: $00
    nop                                           ; $778f: $00
    nop                                           ; $7790: $00
    ld bc, $0101                                  ; $7791: $01 $01 $01
    ld bc, $0203                                  ; $7794: $01 $03 $02
    rlca                                          ; $7797: $07
    rrca                                          ; $7798: $0f
    ld e, $1f                                     ; $7799: $1e $1f
    db $10                                        ; $779b: $10
    rla                                           ; $779c: $17
    jr jr_04a_77aa                                ; $779d: $18 $0b

    inc e                                         ; $779f: $1c
    rlca                                          ; $77a0: $07
    inc c                                         ; $77a1: $0c
    ld b, $05                                     ; $77a2: $06 $05
    inc b                                         ; $77a4: $04
    rrca                                          ; $77a5: $0f
    add hl, bc                                    ; $77a6: $09
    rrca                                          ; $77a7: $0f
    ld a, [bc]                                    ; $77a8: $0a
    rrca                                          ; $77a9: $0f

jr_04a_77aa:
    inc c                                         ; $77aa: $0c
    ld c, $00                                     ; $77ab: $0e $00
    nop                                           ; $77ad: $00
    nop                                           ; $77ae: $00
    nop                                           ; $77af: $00
    add b                                         ; $77b0: $80
    ret nz                                        ; $77b1: $c0

    ld b, b                                       ; $77b2: $40
    ret nz                                        ; $77b3: $c0

    ret nz                                        ; $77b4: $c0

    ld h, b                                       ; $77b5: $60
    ldh [rSVBK], a                                ; $77b6: $e0 $70
    cp b                                          ; $77b8: $b8
    ld a, h                                       ; $77b9: $7c
    db $e4                                        ; $77ba: $e4
    inc e                                         ; $77bb: $1c
    db $e4                                        ; $77bc: $e4
    inc e                                         ; $77bd: $1c
    ret c                                         ; $77be: $d8

    inc a                                         ; $77bf: $3c
    or b                                          ; $77c0: $b0
    ld a, b                                       ; $77c1: $78
    and b                                         ; $77c2: $a0
    ld [hl], b                                    ; $77c3: $70
    ld d, b                                       ; $77c4: $50
    cp b                                          ; $77c5: $b8
    xor b                                         ; $77c6: $a8
    ret c                                         ; $77c7: $d8

    ld c, b                                       ; $77c8: $48
    ld hl, sp+$38                                 ; $77c9: $f8 $38
    jr c, jr_04a_77cd                             ; $77cb: $38 $00

jr_04a_77cd:
    nop                                           ; $77cd: $00
    nop                                           ; $77ce: $00
    nop                                           ; $77cf: $00
    ld bc, $0203                                  ; $77d0: $01 $03 $02
    inc bc                                        ; $77d3: $03
    inc bc                                        ; $77d4: $03
    ld b, $05                                     ; $77d5: $06 $05
    ld c, $3f                                     ; $77d7: $0e $3f
    ld a, h                                       ; $77d9: $7c
    ld e, a                                       ; $77da: $5f
    ld h, b                                       ; $77db: $60
    cpl                                           ; $77dc: $2f
    ld [hl], b                                    ; $77dd: $70

jr_04a_77de:
    rla                                           ; $77de: $17
    jr c, jr_04a_77ec                             ; $77df: $38 $0b

    inc e                                         ; $77e1: $1c
    ld a, [bc]                                    ; $77e2: $0a
    dec e                                         ; $77e3: $1d
    inc d                                         ; $77e4: $14
    dec de                                        ; $77e5: $1b
    ld de, $263f                                  ; $77e6: $11 $3f $26
    ccf                                           ; $77e9: $3f
    jr jr_04a_7828                                ; $77ea: $18 $3c

jr_04a_77ec:
    nop                                           ; $77ec: $00
    nop                                           ; $77ed: $00
    nop                                           ; $77ee: $00
    nop                                           ; $77ef: $00
    add b                                         ; $77f0: $80
    ret nz                                        ; $77f1: $c0

    ld b, b                                       ; $77f2: $40
    ret nz                                        ; $77f3: $c0

    ret nz                                        ; $77f4: $c0

jr_04a_77f5:
    ld h, b                                       ; $77f5: $60
    and b                                         ; $77f6: $a0
    ld [hl], b                                    ; $77f7: $70
    db $fc                                        ; $77f8: $fc
    ld a, $fa                                     ; $77f9: $3e $fa
    ld b, $f4                                     ; $77fb: $06 $f4
    ld c, $e8                                     ; $77fd: $0e $e8
    inc e                                         ; $77ff: $1c
    ret nc                                        ; $7800: $d0

    jr c, @+$52                                   ; $7801: $38 $50

    cp b                                          ; $7803: $b8
    jr z, jr_04a_77de                             ; $7804: $28 $d8

    adc b                                         ; $7806: $88
    db $fc                                        ; $7807: $fc
    ld h, h                                       ; $7808: $64
    db $fc                                        ; $7809: $fc
    jr @+$3e                                      ; $780a: $18 $3c

    nop                                           ; $780c: $00
    nop                                           ; $780d: $00
    nop                                           ; $780e: $00
    nop                                           ; $780f: $00
    nop                                           ; $7810: $00
    ld bc, $0101                                  ; $7811: $01 $01 $01
    ld bc, $0303                                  ; $7814: $01 $03 $03
    rlca                                          ; $7817: $07
    ld c, $1f                                     ; $7818: $0e $1f
    inc de                                        ; $781a: $13
    inc e                                         ; $781b: $1c
    inc de                                        ; $781c: $13
    inc e                                         ; $781d: $1c
    dec c                                         ; $781e: $0d
    ld e, $06                                     ; $781f: $1e $06
    rrca                                          ; $7821: $0f
    ld [bc], a                                    ; $7822: $02

jr_04a_7823:
    rlca                                          ; $7823: $07
    dec b                                         ; $7824: $05
    ld c, $0a                                     ; $7825: $0e $0a
    dec c                                         ; $7827: $0d

jr_04a_7828:
    add hl, bc                                    ; $7828: $09
    rrca                                          ; $7829: $0f
    ld c, $0e                                     ; $782a: $0e $0e
    nop                                           ; $782c: $00
    nop                                           ; $782d: $00
    nop                                           ; $782e: $00
    nop                                           ; $782f: $00
    add b                                         ; $7830: $80
    ret nz                                        ; $7831: $c0

    ld b, b                                       ; $7832: $40
    ret nz                                        ; $7833: $c0

    ret nz                                        ; $7834: $c0

    ld h, b                                       ; $7835: $60
    and b                                         ; $7836: $a0
    ld [hl], b                                    ; $7837: $70
    ld hl, sp+$3c                                 ; $7838: $f8 $3c
    db $fc                                        ; $783a: $fc
    inc b                                         ; $783b: $04
    db $f4                                        ; $783c: $f4
    inc c                                         ; $783d: $0c
    add sp, $1c                                   ; $783e: $e8 $1c
    ldh a, [rNR23]                                ; $7840: $f0 $18
    or b                                          ; $7842: $b0
    ld d, b                                       ; $7843: $50
    db $10                                        ; $7844: $10
    ld hl, sp-$38                                 ; $7845: $f8 $c8
    ld hl, sp+$28                                 ; $7847: $f8 $28
    ld hl, sp+$18                                 ; $7849: $f8 $18
    jr c, jr_04a_784d                             ; $784b: $38 $00

jr_04a_784d:
    nop                                           ; $784d: $00
    nop                                           ; $784e: $00
    nop                                           ; $784f: $00
    nop                                           ; $7850: $00
    ld bc, $0101                                  ; $7851: $01 $01 $01
    ld bc, $0203                                  ; $7854: $01 $03 $02
    rlca                                          ; $7857: $07
    dec c                                         ; $7858: $0d
    ld c, $0f                                     ; $7859: $0e $0f
    ld [$0c0b], sp                                ; $785b: $08 $0b $0c
    dec c                                         ; $785e: $0d

jr_04a_785f:
    ld c, $07                                     ; $785f: $0e $07

jr_04a_7861:
    ld c, $03                                     ; $7861: $0e $03
    ld b, $07                                     ; $7863: $06 $07
    inc b                                         ; $7865: $04

jr_04a_7866:
    ld b, $05                                     ; $7866: $06 $05
    inc b                                         ; $7868: $04
    rlca                                          ; $7869: $07
    rlca                                          ; $786a: $07
    rlca                                          ; $786b: $07
    nop                                           ; $786c: $00
    nop                                           ; $786d: $00
    nop                                           ; $786e: $00

jr_04a_786f:
    nop                                           ; $786f: $00
    add b                                         ; $7870: $80
    ret nz                                        ; $7871: $c0

    ld b, b                                       ; $7872: $40
    ret nz                                        ; $7873: $c0

    ld b, b                                       ; $7874: $40
    ret nz                                        ; $7875: $c0

    ret nz                                        ; $7876: $c0

    ld h, b                                       ; $7877: $60
    and b                                         ; $7878: $a0
    ld h, b                                       ; $7879: $60
    ret nc                                        ; $787a: $d0

    jr nc, jr_04a_784d                            ; $787b: $30 $d0

    jr nc, jr_04a_785f                            ; $787d: $30 $e0

    jr nc, jr_04a_7861                            ; $787f: $30 $e0

    jr nz, jr_04a_7823                            ; $7881: $20 $a0

    ld h, b                                       ; $7883: $60
    jr nz, jr_04a_7866                            ; $7884: $20 $e0

    ld d, b                                       ; $7886: $50
    ldh a, [$d0]                                  ; $7887: $f0 $d0
    ldh a, [$30]                                  ; $7889: $f0 $30
    ldh a, [rP1]                                  ; $788b: $f0 $00
    nop                                           ; $788d: $00
    nop                                           ; $788e: $00
    nop                                           ; $788f: $00
    ld bc, $0101                                  ; $7890: $01 $01 $01
    ld bc, $0301                                  ; $7893: $01 $01 $03
    ld [bc], a                                    ; $7896: $02
    inc bc                                        ; $7897: $03
    inc bc                                        ; $7898: $03
    ld [bc], a                                    ; $7899: $02
    ld [bc], a                                    ; $789a: $02
    inc bc                                        ; $789b: $03
    inc bc                                        ; $789c: $03
    inc bc                                        ; $789d: $03
    inc bc                                        ; $789e: $03
    inc bc                                        ; $789f: $03
    inc bc                                        ; $78a0: $03
    ld [bc], a                                    ; $78a1: $02
    ld [bc], a                                    ; $78a2: $02
    inc bc                                        ; $78a3: $03
    ld [bc], a                                    ; $78a4: $02
    inc bc                                        ; $78a5: $03
    ld bc, $0103                                  ; $78a6: $01 $03 $01
    ld bc, $0100                                  ; $78a9: $01 $00 $01
    nop                                           ; $78ac: $00
    nop                                           ; $78ad: $00
    nop                                           ; $78ae: $00
    nop                                           ; $78af: $00
    add b                                         ; $78b0: $80
    ret nz                                        ; $78b1: $c0

    ld b, b                                       ; $78b2: $40
    ret nz                                        ; $78b3: $c0

    ld b, b                                       ; $78b4: $40
    ret nz                                        ; $78b5: $c0

    ret nz                                        ; $78b6: $c0

    ld h, b                                       ; $78b7: $60
    ldh [$30], a                                  ; $78b8: $e0 $30
    ldh a, [rNR10]                                ; $78ba: $f0 $10
    ret nc                                        ; $78bc: $d0

    jr nc, jr_04a_786f                            ; $78bd: $30 $b0

    ld [hl], b                                    ; $78bf: $70
    ldh [rSVBK], a                                ; $78c0: $e0 $70
    ldh [$60], a                                  ; $78c2: $e0 $60
    and b                                         ; $78c4: $a0
    ld h, b                                       ; $78c5: $60
    ldh [rNR41], a                                ; $78c6: $e0 $20
    ld h, b                                       ; $78c8: $60
    and b                                         ; $78c9: $a0
    ret nz                                        ; $78ca: $c0

    ldh [rP1], a                                  ; $78cb: $e0 $00
    nop                                           ; $78cd: $00
    nop                                           ; $78ce: $00
    nop                                           ; $78cf: $00
    nop                                           ; $78d0: $00
    ld bc, $0101                                  ; $78d1: $01 $01 $01
    ld bc, $0101                                  ; $78d4: $01 $01 $01
    inc bc                                        ; $78d7: $03

jr_04a_78d8:
    ld [bc], a                                    ; $78d8: $02
    inc bc                                        ; $78d9: $03
    dec b                                         ; $78da: $05
    ld b, $05                                     ; $78db: $06 $05
    ld b, $03                                     ; $78dd: $06 $03
    ld b, $03                                     ; $78df: $06 $03
    ld [bc], a                                    ; $78e1: $02
    ld [bc], a                                    ; $78e2: $02
    inc bc                                        ; $78e3: $03
    ld [bc], a                                    ; $78e4: $02
    inc bc                                        ; $78e5: $03
    dec b                                         ; $78e6: $05
    rlca                                          ; $78e7: $07
    dec b                                         ; $78e8: $05
    rlca                                          ; $78e9: $07
    ld b, $07                                     ; $78ea: $06 $07
    nop                                           ; $78ec: $00
    nop                                           ; $78ed: $00
    nop                                           ; $78ee: $00
    nop                                           ; $78ef: $00
    add b                                         ; $78f0: $80
    ret nz                                        ; $78f1: $c0

    ld b, b                                       ; $78f2: $40
    ret nz                                        ; $78f3: $c0

    ld b, b                                       ; $78f4: $40
    ldh [$a0], a                                  ; $78f5: $e0 $a0
    ld [hl], b                                    ; $78f7: $70
    ret c                                         ; $78f8: $d8

    jr c, jr_04a_7973                             ; $78f9: $38 $78

    adc b                                         ; $78fb: $88
    add sp, -$68                                  ; $78fc: $e8 $98
    ret c                                         ; $78fe: $d8

    cp b                                          ; $78ff: $b8
    ldh a, [$38]                                  ; $7900: $f0 $38
    ldh [$30], a                                  ; $7902: $e0 $30
    ld [hl], b                                    ; $7904: $70
    sub b                                         ; $7905: $90
    jr nc, jr_04a_78d8                            ; $7906: $30 $d0

    sub b                                         ; $7908: $90
    ldh a, [rSVBK]                                ; $7909: $f0 $70
    ldh a, [rP1]                                  ; $790b: $f0 $00
    nop                                           ; $790d: $00
    nop                                           ; $790e: $00
    nop                                           ; $790f: $00
    nop                                           ; $7910: $00
    ld bc, $0101                                  ; $7911: $01 $01 $01
    ld bc, $0203                                  ; $7914: $01 $03 $02
    rlca                                          ; $7917: $07
    rrca                                          ; $7918: $0f
    ld e, $1d                                     ; $7919: $1e $1d
    ld [de], a                                    ; $791b: $12
    rla                                           ; $791c: $17
    ld a, [de]                                    ; $791d: $1a
    dec bc                                        ; $791e: $0b
    ld e, $07                                     ; $791f: $1e $07
    inc c                                         ; $7921: $0c
    ld b, $05                                     ; $7922: $06 $05
    inc b                                         ; $7924: $04
    rrca                                          ; $7925: $0f
    add hl, bc                                    ; $7926: $09
    rrca                                          ; $7927: $0f
    ld a, [bc]                                    ; $7928: $0a
    rrca                                          ; $7929: $0f
    inc c                                         ; $792a: $0c
    ld c, $00                                     ; $792b: $0e $00
    nop                                           ; $792d: $00
    nop                                           ; $792e: $00
    nop                                           ; $792f: $00
    add b                                         ; $7930: $80
    ret nz                                        ; $7931: $c0

    ld b, b                                       ; $7932: $40
    ret nz                                        ; $7933: $c0

    ret nz                                        ; $7934: $c0

    ld h, b                                       ; $7935: $60
    ldh [rSVBK], a                                ; $7936: $e0 $70
    cp b                                          ; $7938: $b8
    ld a, h                                       ; $7939: $7c
    ld h, h                                       ; $793a: $64
    sbc h                                         ; $793b: $9c
    db $e4                                        ; $793c: $e4
    sbc h                                         ; $793d: $9c
    ret c                                         ; $793e: $d8

    cp h                                          ; $793f: $bc
    or b                                          ; $7940: $b0
    ld a, b                                       ; $7941: $78
    and b                                         ; $7942: $a0
    ld [hl], b                                    ; $7943: $70
    ld d, b                                       ; $7944: $50
    cp b                                          ; $7945: $b8
    xor b                                         ; $7946: $a8
    ret c                                         ; $7947: $d8

    ld c, b                                       ; $7948: $48
    ld hl, sp+$38                                 ; $7949: $f8 $38
    jr c, jr_04a_794d                             ; $794b: $38 $00

jr_04a_794d:
    nop                                           ; $794d: $00
    nop                                           ; $794e: $00
    nop                                           ; $794f: $00
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

jr_04a_7973:
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
