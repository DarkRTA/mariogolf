; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $046", ROMX[$4000], BANK[$46]

    xor $6b                                       ; $4000: $ee $6b
    rst $38                                       ; $4002: $ff
    ld l, a                                       ; $4003: $6f
    adc $39                                       ; $4004: $ce $39
    nop                                           ; $4006: $00
    nop                                           ; $4007: $00
    rst $18                                       ; $4008: $df
    ld h, e                                       ; $4009: $63
    ld a, $26                                     ; $400a: $3e $26
    rra                                           ; $400c: $1f
    inc bc                                        ; $400d: $03
    ld b, [hl]                                    ; $400e: $46
    nop                                           ; $400f: $00
    rst $18                                       ; $4010: $df
    ld h, e                                       ; $4011: $63
    ld c, c                                       ; $4012: $49
    rrca                                          ; $4013: $0f
    ld [bc], a                                    ; $4014: $02
    ld [bc], a                                    ; $4015: $02
    ld b, [hl]                                    ; $4016: $46
    nop                                           ; $4017: $00
    rst $18                                       ; $4018: $df
    ld h, e                                       ; $4019: $63
    ld [hl], a                                    ; $401a: $77
    ld bc, $7da0                                  ; $401b: $01 $a0 $7d
    ld b, [hl]                                    ; $401e: $46
    nop                                           ; $401f: $00
    rst $18                                       ; $4020: $df
    ld h, e                                       ; $4021: $63
    rra                                           ; $4022: $1f
    inc bc                                        ; $4023: $03
    ld [bc], a                                    ; $4024: $02
    ld [bc], a                                    ; $4025: $02
    ld b, [hl]                                    ; $4026: $46
    nop                                           ; $4027: $00
    rst $18                                       ; $4028: $df
    ld h, e                                       ; $4029: $63
    ld [de], a                                    ; $402a: $12
    ld bc, $7da0                                  ; $402b: $01 $a0 $7d
    ld b, [hl]                                    ; $402e: $46
    nop                                           ; $402f: $00
    sbc a                                         ; $4030: $9f
    ld bc, $0202                                  ; $4031: $01 $02 $02
    ld a, [c]                                     ; $4034: $f2
    ld [$0046], sp                                ; $4035: $08 $46 $00
    rst $18                                       ; $4038: $df
    ld h, e                                       ; $4039: $63
    rra                                           ; $403a: $1f
    inc bc                                        ; $403b: $03
    sbc a                                         ; $403c: $9f
    ld bc, $0046                                  ; $403d: $01 $46 $00
    and e                                         ; $4040: $a3
    nop                                           ; $4041: $00
    rst $38                                       ; $4042: $ff
    cp $ec                                        ; $4043: $fe $ec
    rst $38                                       ; $4045: $ff
    db $ed                                        ; $4046: $ed
    ldh [$ea], a                                  ; $4047: $e0 $ea
    rlca                                          ; $4049: $07
    jp nc, Jump_000_01ec                          ; $404a: $d2 $ec $01

    cp $ec                                        ; $404d: $fe $ec
    ld [c], a                                     ; $404f: $e2
    dec e                                         ; $4050: $1d
    ld hl, sp+$32                                 ; $4051: $f8 $32
    ldh [$65], a                                  ; $4053: $e0 $65
    ret nz                                        ; $4055: $c0

    set 7, a                                      ; $4056: $cb $ff
    add b                                         ; $4058: $80
    rst $38                                       ; $4059: $ff
    add b                                         ; $405a: $80
    rst $38                                       ; $405b: $ff
    ret nz                                        ; $405c: $c0

    rst $38                                       ; $405d: $ff
    rst $38                                       ; $405e: $ff
    rst $38                                       ; $405f: $ff
    rst $38                                       ; $4060: $ff
    ld bc, $037f                                  ; $4061: $01 $7f $03
    rst $38                                       ; $4064: $ff
    inc b                                         ; $4065: $04
    rst $38                                       ; $4066: $ff
    ld [$f3eb], sp                                ; $4067: $08 $eb $f3
    nop                                           ; $406a: $00
    rst $08                                       ; $406b: $cf
    or c                                          ; $406c: $b1
    pop hl                                        ; $406d: $e1
    and b                                         ; $406e: $a0
    ldh [$e0], a                                  ; $406f: $e0 $e0
    rst $38                                       ; $4071: $ff
    ldh [$3f], a                                  ; $4072: $e0 $3f
    rst $38                                       ; $4074: $ff
    ret nz                                        ; $4075: $c0

    ld a, a                                       ; $4076: $7f
    ldh [rIE], a                                  ; $4077: $e0 $ff
    ld hl, sp+$1f                                 ; $4079: $f8 $1f
    db $fc                                        ; $407b: $fc
    rlca                                          ; $407c: $07
    cp $90                                        ; $407d: $fe $90
    db $ec                                        ; $407f: $ec
    ld d, a                                       ; $4080: $57
    rra                                           ; $4081: $1f
    ld sp, hl                                     ; $4082: $f9
    add hl, de                                    ; $4083: $19
    ldh a, [rNR24]                                ; $4084: $f0 $19
    pop af                                        ; $4086: $f1
    rst $38                                       ; $4087: $ff
    rra                                           ; $4088: $1f
    or $0c                                        ; $4089: $f6 $0c
    ld hl, sp+$0c                                 ; $408b: $f8 $0c
    ld hl, sp+$07                                 ; $408d: $f8 $07
    db $fd                                        ; $408f: $fd
    rst $20                                       ; $4090: $e7
    rra                                           ; $4091: $1f
    cp $00                                        ; $4092: $fe $00
    cp e                                          ; $4094: $bb
    ldh [$b7], a                                  ; $4095: $e0 $b7
    pop hl                                        ; $4097: $e1
    rst $00                                       ; $4098: $c7
    ld a, a                                       ; $4099: $7f
    rst $38                                       ; $409a: $ff
    rst $28                                       ; $409b: $ef
    ld a, b                                       ; $409c: $78
    ld hl, sp-$40                                 ; $409d: $f8 $c0
    pop bc                                        ; $409f: $c1
    add b                                         ; $40a0: $80
    and $f8                                       ; $40a1: $e6 $f8
    rst $38                                       ; $40a3: $ff
    db $fc                                        ; $40a4: $fc
    rst $28                                       ; $40a5: $ef

jr_046_40a6:
    rrca                                          ; $40a6: $0f
    inc e                                         ; $40a7: $1c
    rlca                                          ; $40a8: $07
    db $fc                                        ; $40a9: $fc
    adc [hl]                                      ; $40aa: $8e
    ldh [$03], a                                  ; $40ab: $e0 $03
    cp $06                                        ; $40ad: $fe $06
    rst $38                                       ; $40af: $ff
    db $fc                                        ; $40b0: $fc
    rrca                                          ; $40b1: $0f
    ei                                            ; $40b2: $fb
    add hl, de                                    ; $40b3: $19
    ldh a, [$30]                                  ; $40b4: $f0 $30
    ldh [$e0], a                                  ; $40b6: $e0 $e0
    rst $38                                       ; $40b8: $ff
    ldh [$98], a                                  ; $40b9: $e0 $98
    jr @+$01                                      ; $40bb: $18 $ff

    jr nc, jr_046_40de                            ; $40bd: $30 $1f

    rrca                                          ; $40bf: $0f
    inc bc                                        ; $40c0: $03
    xor $4b                                       ; $40c1: $ee $4b
    ldh [$80], a                                  ; $40c3: $e0 $80
    nop                                           ; $40c5: $00
    ld bc, $e751                                  ; $40c6: $01 $51 $e7
    ldh [$3f], a                                  ; $40c9: $e0 $3f
    inc e                                         ; $40cb: $1c
    rst $38                                       ; $40cc: $ff
    rlca                                          ; $40cd: $07
    ld [bc], a                                    ; $40ce: $02
    pop bc                                        ; $40cf: $c1
    add c                                         ; $40d0: $81
    pop hl                                        ; $40d1: $e1
    ld b, b                                       ; $40d2: $40
    jr nz, jr_046_40f5                            ; $40d3: $20 $20

    rrca                                          ; $40d5: $0f
    cp $03                                        ; $40d6: $fe $03
    cp $03                                        ; $40d8: $fe $03
    ld e, c                                       ; $40da: $59
    ldh [$57], a                                  ; $40db: $e0 $57
    pop hl                                        ; $40dd: $e1

jr_046_40de:
    and l                                         ; $40de: $a5
    ld [c], a                                     ; $40df: $e2
    db $10                                        ; $40e0: $10
    push hl                                       ; $40e1: $e5
    cp $53                                        ; $40e2: $fe $53
    ldh [$fe], a                                  ; $40e4: $e0 $fe
    add b                                         ; $40e6: $80
    push de                                       ; $40e7: $d5
    ret nz                                        ; $40e8: $c0

    ld l, d                                       ; $40e9: $6a
    nop                                           ; $40ea: $00
    xor d                                         ; $40eb: $aa
    db $eb                                        ; $40ec: $eb
    nop                                           ; $40ed: $00
    ld d, l                                       ; $40ee: $55
    db $fc                                        ; $40ef: $fc
    ldh [rLCDC], a                                ; $40f0: $e0 $40
    db $10                                        ; $40f2: $10
    add sp, $7f                                   ; $40f3: $e8 $7f

jr_046_40f5:
    ld bc, $ffbf                                  ; $40f5: $01 $bf $ff
    inc bc                                        ; $40f8: $03
    ld e, [hl]                                    ; $40f9: $5e
    ld b, $2c                                     ; $40fa: $06 $2c
    inc c                                         ; $40fc: $0c
    jr @+$11                                      ; $40fd: $18 $0f

Jump_046_40ff:
    dec bc                                        ; $40ff: $0b
    rst $38                                       ; $4100: $ff
    rlca                                          ; $4101: $07
    inc b                                         ; $4102: $04
    pop af                                        ; $4103: $f1
    cp $cf                                        ; $4104: $fe $cf
    ldh a, [$9c]                                  ; $4106: $f0 $9c
    jp Jump_000_33ff                              ; $4108: $c3 $ff $33


    inc c                                         ; $410b: $0c
    rst $08                                       ; $410c: $cf
    jr nc, jr_046_40a6                            ; $410d: $30 $97

    add sp, $2c                                   ; $410f: $e8 $2c
    db $d3                                        ; $4111: $d3
    rst $38                                       ; $4112: $ff
    inc de                                        ; $4113: $13
    db $ec                                        ; $4114: $ec
    db $e3                                        ; $4115: $e3
    rra                                           ; $4116: $1f
    sbc b                                         ; $4117: $98
    ld h, c                                       ; $4118: $61
    ld a, [hl]                                    ; $4119: $7e
    add c                                         ; $411a: $81
    rst $38                                       ; $411b: $ff
    ld hl, sp+$07                                 ; $411c: $f8 $07
    and $18                                       ; $411e: $e6 $18
    sbc [hl]                                      ; $4120: $9e
    ld h, b                                       ; $4121: $60
    ld a, a                                       ; $4122: $7f
    add b                                         ; $4123: $80
    rst $38                                       ; $4124: $ff
    rst $38                                       ; $4125: $ff
    nop                                           ; $4126: $00
    db $fc                                        ; $4127: $fc
    rlca                                          ; $4128: $07
    db $fc                                        ; $4129: $fc
    rlca                                          ; $412a: $07
    cp $3f                                        ; $412b: $fe $3f
    di                                            ; $412d: $f3
    add a                                         ; $412e: $87
    ld bc, $e0ff                                  ; $412f: $01 $ff $e0
    ret nc                                        ; $4132: $d0

    call nz, $ff0e                                ; $4133: $c4 $0e $ff
    rra                                           ; $4136: $1f
    pop af                                        ; $4137: $f1
    rst $38                                       ; $4138: $ff
    ld sp, $e0e0                                  ; $4139: $31 $e0 $e0
    ret nz                                        ; $413c: $c0

    ret nz                                        ; $413d: $c0

    add b                                         ; $413e: $80
    ret nz                                        ; $413f: $c0

    add b                                         ; $4140: $80
    ei                                            ; $4141: $fb
    ld hl, sp+$50                                 ; $4142: $f8 $50
    add l                                         ; $4144: $85
    pop hl                                        ; $4145: $e1
    ld bc, $81ff                                  ; $4146: $01 $ff $81
    rst $38                                       ; $4149: $ff
    add e                                         ; $414a: $83
    rst $38                                       ; $414b: $ff
    cp $c2                                        ; $414c: $fe $c2
    ld a, [hl]                                    ; $414e: $7e
    add $6c                                       ; $414f: $c6 $6c
    ld b, [hl]                                    ; $4151: $46
    ld d, h                                       ; $4152: $54
    inc e                                         ; $4153: $1c
    rst $38                                       ; $4154: $ff
    inc e                                         ; $4155: $1c
    cpl                                           ; $4156: $2f
    ld l, $5f                                     ; $4157: $2e $5f
    ld e, a                                       ; $4159: $5f
    cp a                                          ; $415a: $bf
    cp a                                          ; $415b: $bf
    rst $38                                       ; $415c: $ff
    rst $38                                       ; $415d: $ff
    ld sp, hl                                     ; $415e: $f9
    ld a, c                                       ; $415f: $79
    ld sp, $497d                                  ; $4160: $31 $7d $49
    ld c, l                                       ; $4163: $4d
    ld b, h                                       ; $4164: $44
    nop                                           ; $4165: $00
    rst $38                                       ; $4166: $ff
    nop                                           ; $4167: $00
    jr c, jr_046_416a                             ; $4168: $38 $00

jr_046_416a:
    rst $38                                       ; $416a: $ff
    db $fc                                        ; $416b: $fc
    rst $00                                       ; $416c: $c7
    add a                                         ; $416d: $87
    add l                                         ; $416e: $85
    ld a, a                                       ; $416f: $7f
    add l                                         ; $4170: $85
    adc e                                         ; $4171: $8b
    adc e                                         ; $4172: $8b
    sub a                                         ; $4173: $97
    sub a                                         ; $4174: $97
    xor a                                         ; $4175: $af
    xor a                                         ; $4176: $af
    add b                                         ; $4177: $80
    pop bc                                        ; $4178: $c1
    rst $38                                       ; $4179: $ff
    ld bc, $8100                                  ; $417a: $01 $00 $81
    add b                                         ; $417d: $80
    pop bc                                        ; $417e: $c1
    pop bc                                        ; $417f: $c1
    db $e3                                        ; $4180: $e3
    pop hl                                        ; $4181: $e1
    jp $f9fb                                      ; $4182: $c3 $fb $f9


    or d                                          ; $4185: $b2
    ret nz                                        ; $4186: $c0

    pop af                                        ; $4187: $f1
    jp $e096                                      ; $4188: $c3 $96 $e0


    adc a                                         ; $418b: $8f
    jp Jump_046_50c0                              ; $418c: $c3 $c0 $50


    set 0, b                                      ; $418f: $cb $c0
    ld b, b                                       ; $4191: $40
    cp $e2                                        ; $4192: $fe $e2
    add b                                         ; $4194: $80
    rst $38                                       ; $4195: $ff
    db $e3                                        ; $4196: $e3
    ld d, b                                       ; $4197: $50
    ret                                           ; $4198: $c9


    ld bc, $bf00                                  ; $4199: $01 $00 $bf
    ld bc, $0301                                  ; $419c: $01 $01 $03
    ld [bc], a                                    ; $419f: $02
    inc bc                                        ; $41a0: $03
    ld [bc], a                                    ; $41a1: $02
    ld a, [$03e0]                                 ; $41a2: $fa $e0 $03
    rst $38                                       ; $41a5: $ff
    rlca                                          ; $41a6: $07
    inc b                                         ; $41a7: $04
    ld a, [hl]                                    ; $41a8: $7e
    ld a, h                                       ; $41a9: $7c
    cp $84                                        ; $41aa: $fe $84
    adc [hl]                                      ; $41ac: $8e
    inc b                                         ; $41ad: $04
    rst $38                                       ; $41ae: $ff
    cpl                                           ; $41af: $2f
    ldh a, [$d7]                                  ; $41b0: $f0 $d7
    add sp, $45                                   ; $41b2: $e8 $45
    cp d                                          ; $41b4: $ba
    ld c, e                                       ; $41b5: $4b
    inc [hl]                                      ; $41b6: $34
    rst $38                                       ; $41b7: $ff
    ld h, d                                       ; $41b8: $62
    dec e                                         ; $41b9: $1d
    and l                                         ; $41ba: $a5
    ld a, [de]                                    ; $41bb: $1a
    or c                                          ; $41bc: $b1
    ld c, $d2                                     ; $41bd: $0e $d2
    dec c                                         ; $41bf: $0d
    cp $4c                                        ; $41c0: $fe $4c
    pop hl                                        ; $41c2: $e1
    cp a                                          ; $41c3: $bf
    ld b, b                                       ; $41c4: $40
    rst $38                                       ; $41c5: $ff
    nop                                           ; $41c6: $00
    rst $18                                       ; $41c7: $df
    jr nz, @+$01                                  ; $41c8: $20 $ff

    ld d, a                                       ; $41ca: $57
    nop                                           ; $41cb: $00
    ld l, a                                       ; $41cc: $6f
    sub b                                         ; $41cd: $90
    ld de, $80c1                                  ; $41ce: $11 $c1 $80
    call nz, $c0c0                                ; $41d1: $c4 $c0 $c0
    cp $e0                                        ; $41d4: $fe $e0
    db $fd                                        ; $41d6: $fd
    ldh [$fe], a                                  ; $41d7: $e0 $fe
    ldh [$f0], a                                  ; $41d9: $e0 $f0
    nop                                           ; $41db: $00
    ld l, b                                       ; $41dc: $68
    db $ec                                        ; $41dd: $ec
    xor e                                         ; $41de: $ab

jr_046_41df:
    ld l, h                                       ; $41df: $6c
    rst $38                                       ; $41e0: $ff
    daa                                           ; $41e1: $27
    ld h, h                                       ; $41e2: $64
    ld h, a                                       ; $41e3: $67
    inc h                                         ; $41e4: $24
    dec d                                         ; $41e5: $15
    ld [hl], $15                                  ; $41e6: $36 $15
    ld [hl], $ff                                  ; $41e8: $36 $ff
    inc sp                                        ; $41ea: $33
    ld [de], a                                    ; $41eb: $12
    dec bc                                        ; $41ec: $0b
    ld a, [de]                                    ; $41ed: $1a
    ld b, h                                       ; $41ee: $44
    ld h, h                                       ; $41ef: $64
    inc h                                         ; $41f0: $24
    ld h, h                                       ; $41f1: $64
    ld [hl], a                                    ; $41f2: $77
    inc h                                         ; $41f3: $24
    inc h                                         ; $41f4: $24
    and h                                         ; $41f5: $a4
    cp $e0                                        ; $41f6: $fe $e0
    db $e4                                        ; $41f8: $e4
    inc h                                         ; $41f9: $24
    and $fe                                       ; $41fa: $e6 $fe
    ldh [$f7], a                                  ; $41fc: $e0 $f7
    ld b, h                                       ; $41fe: $44
    nop                                           ; $41ff: $00
    jr nz, jr_046_41df                            ; $4200: $20 $dd

    and b                                         ; $4202: $a0
    ret nz                                        ; $4203: $c0

    nop                                           ; $4204: $00
    rst $38                                       ; $4205: $ff
    ld [hl], b                                    ; $4206: $70
    rst $38                                       ; $4207: $ff
    ld a, a                                       ; $4208: $7f
    ccf                                           ; $4209: $3f
    ccf                                           ; $420a: $3f
    add hl, sp                                    ; $420b: $39
    ccf                                           ; $420c: $3f
    ld [de], a                                    ; $420d: $12
    rst $38                                       ; $420e: $ff
    rst $38                                       ; $420f: $ff
    rst $00                                       ; $4210: $c7
    ld a, a                                       ; $4211: $7f
    ld a, $1c                                     ; $4212: $3e $1c
    xor $e2                                       ; $4214: $ee $e2
    ld l, [hl]                                    ; $4216: $6e
    ldh [$d1], a                                  ; $4217: $e0 $d1
    and c                                         ; $4219: $a1
    sbc a                                         ; $421a: $9f
    rlca                                          ; $421b: $07
    rst $38                                       ; $421c: $ff
    rlca                                          ; $421d: $07
    rrca                                          ; $421e: $0f
    dec b                                         ; $421f: $05
    rrca                                          ; $4220: $0f
    ld [$081f], sp                                ; $4221: $08 $1f $08
    ccf                                           ; $4224: $3f
    rst $18                                       ; $4225: $df
    ld de, $123e                                  ; $4226: $11 $3e $12
    ld e, $0c                                     ; $4229: $1e $0c
    dec b                                         ; $422b: $05
    ldh [$e6], a                                  ; $422c: $e0 $e6
    cp $ff                                        ; $422e: $fe $ff
    db $fc                                        ; $4230: $fc
    rst $20                                       ; $4231: $e7
    jp nz, $8183                                  ; $4232: $c2 $83 $81

    dec e                                         ; $4235: $1d
    add hl, de                                    ; $4236: $19
    ld sp, $21c7                                  ; $4237: $31 $c7 $21
    ld h, e                                       ; $423a: $63
    ld hl, $c1d7                                  ; $423b: $21 $d7 $c1
    db $fc                                        ; $423e: $fc
    db $e3                                        ; $423f: $e3
    sub [hl]                                      ; $4240: $96
    and e                                         ; $4241: $a3
    ld [hl+], a                                   ; $4242: $22
    rra                                           ; $4243: $1f
    rst $38                                       ; $4244: $ff
    ld [hl], d                                    ; $4245: $72
    rrca                                          ; $4246: $0f
    ld [hl], a                                    ; $4247: $77
    rrca                                          ; $4248: $0f
    ld l, c                                       ; $4249: $69
    add hl, de                                    ; $424a: $19
    ld l, c                                       ; $424b: $69
    sbc c                                         ; $424c: $99
    rst $38                                       ; $424d: $ff
    or h                                          ; $424e: $b4
    adc h                                         ; $424f: $8c
    or h                                          ; $4250: $b4
    call z, Call_046_467a                         ; $4251: $cc $7a $46
    ld e, b                                       ; $4254: $58
    rlca                                          ; $4255: $07
    rst $38                                       ; $4256: $ff
    ld l, c                                       ; $4257: $69
    ld b, $ac                                     ; $4258: $06 $ac
    inc bc                                        ; $425a: $03
    inc [hl]                                      ; $425b: $34
    add e                                         ; $425c: $83
    ld d, [hl]                                    ; $425d: $56
    add c                                         ; $425e: $81
    rst $38                                       ; $425f: $ff
    sbc d                                         ; $4260: $9a
    pop bc                                        ; $4261: $c1
    xor e                                         ; $4262: $ab
    ret nz                                        ; $4263: $c0

    ld c, l                                       ; $4264: $4d
    ld h, b                                       ; $4265: $60
    or a                                          ; $4266: $b7
    ld c, b                                       ; $4267: $48
    rst $38                                       ; $4268: $ff
    ld a, a                                       ; $4269: $7f
    add b                                         ; $426a: $80
    ld e, e                                       ; $426b: $5b
    and h                                         ; $426c: $a4
    cp a                                          ; $426d: $bf
    ld b, b                                       ; $426e: $40
    dec l                                         ; $426f: $2d
    jp nc, Jump_046_5fff                          ; $4270: $d2 $ff $5f

    and b                                         ; $4273: $a0
    ld d, $e9                                     ; $4274: $16 $e9
    cpl                                           ; $4276: $2f
    ret nc                                        ; $4277: $d0

    ldh a, [rP1]                                  ; $4278: $f0 $00
    push de                                       ; $427a: $d5
    ld hl, sp-$02                                 ; $427b: $f8 $fe
    ldh [$fc], a                                  ; $427d: $e0 $fc
    cp $e0                                        ; $427f: $fe $e0
    cp $fe                                        ; $4281: $fe $fe
    ldh [rIE], a                                  ; $4283: $e0 $ff
    nop                                           ; $4285: $00
    rst $38                                       ; $4286: $ff
    dec bc                                        ; $4287: $0b
    ld a, [de]                                    ; $4288: $1a
    dec de                                        ; $4289: $1b
    ld a, [bc]                                    ; $428a: $0a
    rlca                                          ; $428b: $07
    ld c, $05                                     ; $428c: $0e $05
    ld c, $ff                                     ; $428e: $0e $ff
    dec c                                         ; $4290: $0d
    ld b, $03                                     ; $4291: $06 $03
    ld b, $36                                     ; $4293: $06 $36
    inc bc                                        ; $4295: $03
    cp [hl]                                       ; $4296: $be
    ld a, a                                       ; $4297: $7f
    rst $38                                       ; $4298: $ff
    ld [c], a                                     ; $4299: $e2
    ld [hl+], a                                   ; $429a: $22
    ld [c], a                                     ; $429b: $e2
    ld [hl+], a                                   ; $429c: $22
    and e                                         ; $429d: $a3
    ld h, d                                       ; $429e: $62
    and c                                         ; $429f: $a1
    ld h, c                                       ; $42a0: $61
    bit 0, c                                      ; $42a1: $cb $41
    pop bc                                        ; $42a3: $c1
    db $dd                                        ; $42a4: $dd
    jp Jump_046_631e                              ; $42a5: $c3 $1e $63


    pop hl                                        ; $42a8: $e1
    dec hl                                        ; $42a9: $2b
    and c                                         ; $42aa: $a1
    ret nz                                        ; $42ab: $c0

    add b                                         ; $42ac: $80
    rst $18                                       ; $42ad: $df
    add sp, $50                                   ; $42ae: $e8 $50
    ld h, l                                       ; $42b0: $65
    ld a, [hl+]                                   ; $42b1: $2a
    dec [hl]                                      ; $42b2: $35
    rst $10                                       ; $42b3: $d7
    jp Jump_000_0201                              ; $42b4: $c3 $01 $02


    rst $18                                       ; $42b7: $df
    ld [bc], a                                    ; $42b8: $02
    dec d                                         ; $42b9: $15
    cpl                                           ; $42ba: $2f
    add b                                         ; $42bb: $80
    ld e, a                                       ; $42bc: $5f
    db $fc                                        ; $42bd: $fc
    ret nz                                        ; $42be: $c0

    jr z, jr_046_4317                             ; $42bf: $28 $56

    rst $38                                       ; $42c1: $ff
    ld e, d                                       ; $42c2: $5a
    and h                                         ; $42c3: $a4
    cp h                                          ; $42c4: $bc
    ld b, e                                       ; $42c5: $43
    ld a, c                                       ; $42c6: $79
    add a                                         ; $42c7: $87
    cp $02                                        ; $42c8: $fe $02
    rst $38                                       ; $42ca: $ff
    cp $1e                                        ; $42cb: $fe $1e
    or a                                          ; $42cd: $b7
    halt                                          ; $42ce: $76
    db $e3                                        ; $42cf: $e3
    ld h, e                                       ; $42d0: $63
    ld h, d                                       ; $42d1: $62
    ld b, d                                       ; $42d2: $42
    rst $38                                       ; $42d3: $ff
    ld b, [hl]                                    ; $42d4: $46
    ld [bc], a                                    ; $42d5: $02
    inc e                                         ; $42d6: $1c
    inc b                                         ; $42d7: $04
    cp $de                                        ; $42d8: $fe $de
    ld a, a                                       ; $42da: $7f
    or e                                          ; $42db: $b3
    rra                                           ; $42dc: $1f
    ccf                                           ; $42dd: $3f
    ld h, b                                       ; $42de: $60
    ccf                                           ; $42df: $3f
    ldh [rIE], a                                  ; $42e0: $e0 $ff
    ld a, a                                       ; $42e2: $7f
    and b                                         ; $42e3: $a0
    xor $83                                       ; $42e4: $ee $83
    sub c                                         ; $42e6: $91
    call nz, $90f8                                ; $42e7: $c4 $f8 $90
    add $cc                                       ; $42ea: $c6 $cc
    pop bc                                        ; $42ec: $c1
    ret nc                                        ; $42ed: $d0

    pop bc                                        ; $42ee: $c1
    ld e, d                                       ; $42ef: $5a
    ld h, [hl]                                    ; $42f0: $66
    dec l                                         ; $42f1: $2d
    inc sp                                        ; $42f2: $33
    ld d, $7f                                     ; $42f3: $16 $7f
    add hl, de                                    ; $42f5: $19
    dec bc                                        ; $42f6: $0b
    inc c                                         ; $42f7: $0c
    dec b                                         ; $42f8: $05
    ld b, $02                                     ; $42f9: $06 $02
    inc bc                                        ; $42fb: $03
    db $fd                                        ; $42fc: $fd
    and c                                         ; $42fd: $a1
    rst $38                                       ; $42fe: $ff

Jump_046_42ff:
    ld d, l                                       ; $42ff: $55
    ld h, b                                       ; $4300: $60
    ld h, $30                                     ; $4301: $26 $30
    xor d                                         ; $4303: $aa
    or b                                          ; $4304: $b0
    ld d, e                                       ; $4305: $53
    ret c                                         ; $4306: $d8

    rst $38                                       ; $4307: $ff
    or l                                          ; $4308: $b5
    ld a, b                                       ; $4309: $78
    reti                                          ; $430a: $d9


    inc a                                         ; $430b: $3c
    ld a, [bc]                                    ; $430c: $0a
    db $fd                                        ; $430d: $fd
    rst $00                                       ; $430e: $c7
    rst $38                                       ; $430f: $ff
    rst $38                                       ; $4310: $ff
    adc e                                         ; $4311: $8b

jr_046_4312:
    ld [hl], h                                    ; $4312: $74
    sub a                                         ; $4313: $97
    ld l, b                                       ; $4314: $68
    add $39                                       ; $4315: $c6 $39

jr_046_4317:
    ld c, b                                       ; $4317: $48
    scf                                           ; $4318: $37
    rst $18                                       ; $4319: $df
    ld l, h                                       ; $431a: $6c
    rra                                           ; $431b: $1f
    or c                                          ; $431c: $b1
    ld a, [hl]                                    ; $431d: $7e
    ret nz                                        ; $431e: $c0

    sub h                                         ; $431f: $94
    add b                                         ; $4320: $80
    ld a, b                                       ; $4321: $78
    add a                                         ; $4322: $87
    rst $38                                       ; $4323: $ff
    jp Jump_000_1f3c                              ; $4324: $c3 $3c $1f


    ldh [$ef], a                                  ; $4327: $e0 $ef
    db $10                                        ; $4329: $10
    cp a                                          ; $432a: $bf
    ld b, b                                       ; $432b: $40
    rst $38                                       ; $432c: $ff
    ld [hl], a                                    ; $432d: $77
    adc b                                         ; $432e: $88
    ld e, a                                       ; $432f: $5f
    and b                                         ; $4330: $a0
    cp e                                          ; $4331: $bb
    ld b, h                                       ; $4332: $44
    inc bc                                        ; $4333: $03
    rst $38                                       ; $4334: $ff
    rst $38                                       ; $4335: $ff
    ld a, [$fe06]                                 ; $4336: $fa $06 $fe
    inc b                                         ; $4339: $04
    db $f4                                        ; $433a: $f4
    inc c                                         ; $433b: $0c
    db $fc                                        ; $433c: $fc
    ld [$e8bf], sp                                ; $433d: $08 $bf $e8
    jr jr_046_4312                                ; $4340: $18 $d0

    jr nc, @-$4e                                  ; $4342: $30 $b0

    ld [hl], b                                    ; $4344: $70
    add b                                         ; $4345: $80
    adc c                                         ; $4346: $89
    inc bc                                        ; $4347: $03
    rst $38                                       ; $4348: $ff
    nop                                           ; $4349: $00
    dec c                                         ; $434a: $0d
    rlca                                          ; $434b: $07
    rra                                           ; $434c: $1f
    db $10                                        ; $434d: $10
    rrca                                          ; $434e: $0f
    ld [$ff0b], sp                                ; $434f: $08 $0b $ff
    inc c                                         ; $4352: $0c
    dec de                                        ; $4353: $1b
    inc a                                         ; $4354: $3c
    dec a                                         ; $4355: $3d
    ld l, [hl]                                    ; $4356: $6e
    ld a, a                                       ; $4357: $7f
    add $fe                                       ; $4358: $c6 $fe
    rst $30                                       ; $435a: $f7
    add e                                         ; $435b: $83
    rst $38                                       ; $435c: $ff
    inc bc                                        ; $435d: $03
    ld d, c                                       ; $435e: $51
    add c                                         ; $435f: $81

jr_046_4360:
    cp $01                                        ; $4360: $fe $01
    db $fd                                        ; $4362: $fd
    inc bc                                        ; $4363: $03
    rst $28                                       ; $4364: $ef
    rst $28                                       ; $4365: $ef
    ld e, $bf                                     ; $4366: $1e $bf
    ld [hl], b                                    ; $4368: $70
    sub d                                         ; $4369: $92
    add b                                         ; $436a: $80
    nop                                           ; $436b: $00
    ld b, e                                       ; $436c: $43
    jp $c1fb                                      ; $436d: $c3 $fb $c1


    pop bc                                        ; $4370: $c1
    rst $30                                       ; $4371: $f7
    add b                                         ; $4372: $80
    or b                                          ; $4373: $b0
    ldh a, [rNR23]                                ; $4374: $f0 $18
    ld hl, sp+$08                                 ; $4376: $f8 $08
    rst $38                                       ; $4378: $ff
    ld hl, sp+$1c                                 ; $4379: $f8 $1c
    db $fc                                        ; $437b: $fc
    ld h, h                                       ; $437c: $64
    rst $38                                       ; $437d: $ff
    rrca                                          ; $437e: $0f
    ld hl, sp-$78                                 ; $437f: $f8 $88
    ei                                            ; $4381: $fb
    ld hl, sp-$08                                 ; $4382: $f8 $f8
    ld b, c                                       ; $4384: $41
    adc e                                         ; $4385: $8b
    ldh a, [rIF]                                  ; $4386: $f0 $0f
    ldh [$1f], a                                  ; $4388: $e0 $1f
    ret nz                                        ; $438a: $c0

    rst $08                                       ; $438b: $cf
    ccf                                           ; $438c: $3f
    add b                                         ; $438d: $80
    ld a, a                                       ; $438e: $7f
    nop                                           ; $438f: $00
    ld l, c                                       ; $4390: $69
    add b                                         ; $4391: $80
    jp nz, Jump_046_7ce1                          ; $4392: $c2 $e1 $7c

    add e                                         ; $4395: $83
    ld a, a                                       ; $4396: $7f
    jr c, jr_046_4360                             ; $4397: $38 $c7

    db $10                                        ; $4399: $10
    rst $28                                       ; $439a: $ef
    nop                                           ; $439b: $00
    rst $38                                       ; $439c: $ff
    db $10                                        ; $439d: $10
    cp $e0                                        ; $439e: $fe $e0
    rst $28                                       ; $43a0: $ef
    db $f4                                        ; $43a1: $f4
    ccf                                           ; $43a2: $3f
    cp $0f                                        ; $43a3: $fe $0f
    ld [c], a                                     ; $43a5: $e2

jr_046_43a6:
    add h                                         ; $43a6: $84
    nop                                           ; $43a7: $00
    rst $38                                       ; $43a8: $ff
    ld b, b                                       ; $43a9: $40
    ei                                            ; $43aa: $fb
    rst $38                                       ; $43ab: $ff
    ld b, d                                       ; $43ac: $42
    cp c                                          ; $43ad: $b9
    add b                                         ; $43ae: $80
    ret nz                                        ; $43af: $c0

    add b                                         ; $43b0: $80
    ldh a, [$f0]                                  ; $43b1: $f0 $f0
    ld a, l                                       ; $43b3: $7d
    ei                                            ; $43b4: $fb
    ld sp, hl                                     ; $43b5: $f9
    rrca                                          ; $43b6: $0f
    inc de                                        ; $43b7: $13
    add b                                         ; $43b8: $80
    inc bc                                        ; $43b9: $03
    rst $38                                       ; $43ba: $ff
    dec b                                         ; $43bb: $05
    cpl                                           ; $43bc: $2f
    db $d3                                        ; $43bd: $d3
    rst $38                                       ; $43be: $ff
    ld e, l                                       ; $43bf: $5d
    xor [hl]                                      ; $43c0: $ae
    inc [hl]                                      ; $43c1: $34
    ld hl, sp-$2f                                 ; $43c2: $f8 $d1
    ldh [$a7], a                                  ; $43c4: $e0 $a7
    jp $c63f                                      ; $43c6: $c3 $3f $c6


    adc h                                         ; $43c9: $8c
    nop                                           ; $43ca: $00
    add b                                         ; $43cb: $80
    add c                                         ; $43cc: $81

jr_046_43cd:
    inc bc                                        ; $43cd: $03
    adc e                                         ; $43ce: $8b
    add b                                         ; $43cf: $80
    xor d                                         ; $43d0: $aa
    add b                                         ; $43d1: $80
    rst $38                                       ; $43d2: $ff
    ldh [$e0], a                                  ; $43d3: $e0 $e0
    or c                                          ; $43d5: $b1
    ld de, $1b1b                                  ; $43d6: $11 $1b $1b
    cp $6f                                        ; $43d9: $fe $6f
    rst $38                                       ; $43db: $ff
    push bc                                       ; $43dc: $c5
    add [hl]                                      ; $43dd: $86
    rra                                           ; $43de: $1f
    add hl, de                                    ; $43df: $19
    ld l, $31                                     ; $43e0: $2e $31
    ld e, a                                       ; $43e2: $5f
    ld h, b                                       ; $43e3: $60
    rst $38                                       ; $43e4: $ff
    or a                                          ; $43e5: $b7
    ret z                                         ; $43e6: $c8

    ld l, a                                       ; $43e7: $6f
    sbc b                                         ; $43e8: $98
    rst $38                                       ; $43e9: $ff
    db $10                                        ; $43ea: $10
    rst $18                                       ; $43eb: $df
    jr nc, jr_046_43cd                            ; $43ec: $30 $df

    rst $38                                       ; $43ee: $ff
    jr nz, @+$05                                  ; $43ef: $20 $03

    rst $38                                       ; $43f1: $ff

jr_046_43f2:
    add l                                         ; $43f2: $85
    cp $e0                                        ; $43f3: $fe $e0
    ld c, d                                       ; $43f5: $4a
    db $fd                                        ; $43f6: $fd
    rst $08                                       ; $43f7: $cf
    or e                                          ; $43f8: $b3
    ld a, d                                       ; $43f9: $7a
    rst $00                                       ; $43fa: $c7
    ld a, $88                                     ; $43fb: $3e $88
    add c                                         ; $43fd: $81
    call c, Call_000_0261                         ; $43fe: $dc $61 $02
    rst $38                                       ; $4401: $ff
    rst $38                                       ; $4402: $ff
    add l                                         ; $4403: $85
    cp $cb                                        ; $4404: $fe $cb
    db $fc                                        ; $4406: $fc
    ld [hl], a                                    ; $4407: $77
    ld hl, sp-$71                                 ; $4408: $f8 $8f
    ld [hl], b                                    ; $440a: $70
    ld a, a                                       ; $440b: $7f
    rst $38                                       ; $440c: $ff
    nop                                           ; $440d: $00
    cp d                                          ; $440e: $ba
    add $7d                                       ; $440f: $c6 $7d
    add e                                         ; $4411: $83
    cp $90                                        ; $4412: $fe $90

jr_046_4414:
    push hl                                       ; $4414: $e5
    cp $91                                        ; $4415: $fe $91
    ld h, h                                       ; $4417: $64
    add b                                         ; $4418: $80
    add b                                         ; $4419: $80
    ld b, b                                       ; $441a: $40
    ret nz                                        ; $441b: $c0

    and b                                         ; $441c: $a0
    ld h, b                                       ; $441d: $60
    ldh [$df], a                                  ; $441e: $e0 $df
    jr nc, jr_046_43f2                            ; $4420: $30 $d0

    jr nc, jr_046_4414                            ; $4422: $30 $f0

    jr jr_046_43a6                                ; $4424: $18 $80

    ld h, c                                       ; $4426: $61
    rlca                                          ; $4427: $07
    nop                                           ; $4428: $00
    ld a, a                                       ; $4429: $7f
    rrca                                          ; $442a: $0f
    nop                                           ; $442b: $00
    inc e                                         ; $442c: $1c
    inc bc                                        ; $442d: $03
    jr c, jr_046_4437                             ; $442e: $38 $07

    ld [hl], b                                    ; $4430: $70
    ld c, b                                       ; $4431: $48
    ldh [rIE], a                                  ; $4432: $e0 $ff
    inc b                                         ; $4434: $04
    rst $38                                       ; $4435: $ff
    adc [hl]                                      ; $4436: $8e

jr_046_4437:
    ei                                            ; $4437: $fb
    adc [hl]                                      ; $4438: $8e

jr_046_4439:
    ei                                            ; $4439: $fb
    db $db                                        ; $443a: $db
    ld a, l                                       ; $443b: $7d
    rst $38                                       ; $443c: $ff
    db $db                                        ; $443d: $db
    ld a, l                                       ; $443e: $7d
    ld [hl], l                                    ; $443f: $75
    cp [hl]                                       ; $4440: $be
    ld [hl], l                                    ; $4441: $75
    cp [hl]                                       ; $4442: $be
    ld l, d                                       ; $4443: $6a
    db $fd                                        ; $4444: $fd
    rst $38                                       ; $4445: $ff
    jr c, jr_046_4437                             ; $4446: $38 $ef

    jr c, jr_046_4439                             ; $4448: $38 $ef

    ld l, l                                       ; $444a: $6d
    rst $30                                       ; $444b: $f7
    ld l, l                                       ; $444c: $6d
    rst $30                                       ; $444d: $f7
    rst $38                                       ; $444e: $ff
    rst $10                                       ; $444f: $d7
    ei                                            ; $4450: $fb
    rst $10                                       ; $4451: $d7
    ei                                            ; $4452: $fb
    and [hl]                                      ; $4453: $a6
    rst $38                                       ; $4454: $ff
    and $7f                                       ; $4455: $e6 $7f
    rst $38                                       ; $4457: $ff
    ld [c], a                                     ; $4458: $e2
    cp a                                          ; $4459: $bf
    rst $20                                       ; $445a: $e7
    cp l                                          ; $445b: $bd
    or a                                          ; $445c: $b7
    db $dd                                        ; $445d: $dd
    cp a                                          ; $445e: $bf
    sbc $ff                                       ; $445f: $de $ff
    ld e, a                                       ; $4461: $5f
    xor $5c                                       ; $4462: $ee $5c
    rst $28                                       ; $4464: $ef
    xor h                                         ; $4465: $ac
    rst $10                                       ; $4466: $d7
    xor l                                         ; $4467: $ad
    sub $ff                                       ; $4468: $d6 $ff
    dec b                                         ; $446a: $05
    rst $38                                       ; $446b: $ff
    dec bc                                        ; $446c: $0b
    db $fd                                        ; $446d: $fd
    dec bc                                        ; $446e: $0b
    db $fd                                        ; $446f: $fd
    sub l                                         ; $4470: $95
    rst $38                                       ; $4471: $ff
    rst $38                                       ; $4472: $ff
    sub l                                         ; $4473: $95
    rst $38                                       ; $4474: $ff
    ld [$aa7d], a                                 ; $4475: $ea $7d $aa
    ld a, l                                       ; $4478: $7d
    ld d, c                                       ; $4479: $51
    cp $f6                                        ; $447a: $fe $f6
    ld [hl+], a                                   ; $447c: $22
    and c                                         ; $447d: $a1
    add c                                         ; $447e: $81
    ld bc, $a022                                  ; $447f: $01 $22 $a0
    add b                                         ; $4482: $80
    ret nc                                        ; $4483: $d0

    add b                                         ; $4484: $80
    db $eb                                        ; $4485: $eb
    rst $38                                       ; $4486: $ff
    add e                                         ; $4487: $83
    db $fc                                        ; $4488: $fc
    adc l                                         ; $4489: $8d
    rlca                                          ; $448a: $07
    inc b                                         ; $448b: $04
    ld a, a                                       ; $448c: $7f
    inc a                                         ; $448d: $3c
    rst $00                                       ; $448e: $c7
    rst $38                                       ; $448f: $ff
    call nz, Call_000_0e0f                        ; $4490: $c4 $0f $0e
    ld sp, $c631                                  ; $4493: $31 $31 $c6
    pop bc                                        ; $4496: $c1
    dec sp                                        ; $4497: $3b
    rst $38                                       ; $4498: $ff
    nop                                           ; $4499: $00
    db $fd                                        ; $449a: $fd
    nop                                           ; $449b: $00
    cp a                                          ; $449c: $bf
    ld h, b                                       ; $449d: $60
    rst $38                                       ; $449e: $ff
    ld b, b                                       ; $449f: $40
    ld a, a                                       ; $44a0: $7f
    ld sp, hl                                     ; $44a1: $f9
    ret nz                                        ; $44a2: $c0

    ld c, b                                       ; $44a3: $48
    ld h, b                                       ; $44a4: $60
    adc c                                         ; $44a5: $89
    ld h, d                                       ; $44a6: $62
    ld a, a                                       ; $44a7: $7f
    ret nz                                        ; $44a8: $c0

    xor $0b                                       ; $44a9: $ee $0b
    rst $38                                       ; $44ab: $ff
    rst $38                                       ; $44ac: $ff
    ld a, [de]                                    ; $44ad: $1a
    rst $38                                       ; $44ae: $ff
    ld [bc], a                                    ; $44af: $02
    db $fd                                        ; $44b0: $fd
    ld h, $df                                     ; $44b1: $26 $df
    inc a                                         ; $44b3: $3c
    db $e3                                        ; $44b4: $e3
    db $fd                                        ; $44b5: $fd
    inc e                                         ; $44b6: $1c
    ld b, l                                       ; $44b7: $45
    ld [c], a                                     ; $44b8: $e2
    nop                                           ; $44b9: $00
    db $ed                                        ; $44ba: $ed
    ld e, $ff                                     ; $44bb: $1e $ff
    inc sp                                        ; $44bd: $33
    pop af                                        ; $44be: $f1
    rst $38                                       ; $44bf: $ff
    ld b, b                                       ; $44c0: $40
    ldh [rLCDC], a                                ; $44c1: $e0 $40
    ret z                                         ; $44c3: $c8

    add b                                         ; $44c4: $80

jr_046_44c5:
    sbc b                                         ; $44c5: $98
    nop                                           ; $44c6: $00
    jr nc, jr_046_44c5                            ; $44c7: $30 $fc

    pop de                                        ; $44c9: $d1
    ld b, d                                       ; $44ca: $42
    ld [$8080], sp                                ; $44cb: $08 $80 $80
    ld a, a                                       ; $44ce: $7f
    ld b, b                                       ; $44cf: $40
    ld a, a                                       ; $44d0: $7f
    jr nz, jr_046_4512                            ; $44d1: $20 $3f

    rst $38                                       ; $44d3: $ff
    jr nz, jr_046_4515                            ; $44d4: $20 $3f

    db $10                                        ; $44d6: $10
    rst $38                                       ; $44d7: $ff
    ld [$0aff], sp                                ; $44d8: $08 $ff $0a
    rst $38                                       ; $44db: $ff
    push af                                       ; $44dc: $f5
    ld b, $fe                                     ; $44dd: $06 $fe
    ldh [rTIMA], a                                ; $44df: $e0 $05
    cp $e0                                        ; $44e1: $fe $e0
    ld [bc], a                                    ; $44e3: $02
    rst $38                                       ; $44e4: $ff
    ld [bc], a                                    ; $44e5: $02
    pop bc                                        ; $44e6: $c1
    rst $38                                       ; $44e7: $ff
    ccf                                           ; $44e8: $3f
    and c                                         ; $44e9: $a1
    ld a, a                                       ; $44ea: $7f
    inc hl                                        ; $44eb: $23
    rst $38                                       ; $44ec: $ff
    ld [hl], e                                    ; $44ed: $73
    rst $18                                       ; $44ee: $df
    halt                                          ; $44ef: $76
    rst $38                                       ; $44f0: $ff
    rst $18                                       ; $44f1: $df
    sbc [hl]                                      ; $44f2: $9e
    rst $28                                       ; $44f3: $ef
    sbc l                                         ; $44f4: $9d
    rst $28                                       ; $44f5: $ef
    xor l                                         ; $44f6: $ad
    rst $18                                       ; $44f7: $df
    ld l, d                                       ; $44f8: $6a
    rst $38                                       ; $44f9: $ff
    db $fd                                        ; $44fa: $fd
    pop de                                        ; $44fb: $d1
    cp $d1                                        ; $44fc: $fe $d1
    cp $a0                                        ; $44fe: $fe $a0
    rst $38                                       ; $4500: $ff
    and b                                         ; $4501: $a0
    ld a, [$40e7]                                 ; $4502: $fa $e7 $40
    ld c, $e4                                     ; $4505: $0e $e4
    ld h, b                                       ; $4507: $60
    call $6d7f                                    ; $4508: $cd $7f $6d
    cp a                                          ; $450b: $bf
    ld a, d                                       ; $450c: $7a
    rst $38                                       ; $450d: $ff
    cp a                                          ; $450e: $bf
    cp d                                          ; $450f: $ba
    ld e, a                                       ; $4510: $5f
    cp a                                          ; $4511: $bf

jr_046_4512:
    ld e, a                                       ; $4512: $5f
    ld hl, sp-$01                                 ; $4513: $f8 $ff

jr_046_4515:
    jr c, jr_046_4515                             ; $4515: $38 $fe

    add h                                         ; $4517: $84
    ld b, b                                       ; $4518: $40
    rla                                           ; $4519: $17
    ld [$eb16], a                                 ; $451a: $ea $16 $eb
    dec bc                                        ; $451d: $0b
    push af                                       ; $451e: $f5
    dec bc                                        ; $451f: $0b
    rst $28                                       ; $4520: $ef
    push af                                       ; $4521: $f5
    rst $38                                       ; $4522: $ff
    rst $38                                       ; $4523: $ff
    db $e3                                        ; $4524: $e3
    cp $e0                                        ; $4525: $fe $e0
    nop                                           ; $4527: $00
    rst $38                                       ; $4528: $ff
    ld d, c                                       ; $4529: $51
    rst $38                                       ; $452a: $ff
    rst $38                                       ; $452b: $ff
    and c                                         ; $452c: $a1
    rst $38                                       ; $452d: $ff
    and e                                         ; $452e: $a3
    rst $38                                       ; $452f: $ff
    ld b, e                                       ; $4530: $43
    cp $46                                        ; $4531: $fe $46
    rst $38                                       ; $4533: $ff
    cp $fe                                        ; $4534: $fe $fe
    db $fc                                        ; $4536: $fc
    inc c                                         ; $4537: $0c
    db $fc                                        ; $4538: $fc
    inc c                                         ; $4539: $0c
    ld hl, sp-$0b                                 ; $453a: $f8 $f5
    rst $38                                       ; $453c: $ff
    or d                                          ; $453d: $b2
    pop hl                                        ; $453e: $e1
    ld a, $ea                                     ; $453f: $3e $ea
    dec [hl]                                      ; $4541: $35
    ld e, b                                       ; $4542: $58
    scf                                           ; $4543: $37
    dec a                                         ; $4544: $3d
    rst $38                                       ; $4545: $ff
    ld [de], a                                    ; $4546: $12
    inc d                                         ; $4547: $14
    dec de                                        ; $4548: $1b
    ld c, $19                                     ; $4549: $0e $19
    ld e, $09                                     ; $454b: $1e $09
    cp $fb                                        ; $454d: $fe $fb
    nop                                           ; $454f: $00
    ld a, [hl]                                    ; $4550: $7e
    ld a, $82                                     ; $4551: $3e $82
    ld a, [hl]                                    ; $4553: $7e
    add b                                         ; $4554: $80
    ld e, b                                       ; $4555: $58
    and c                                         ; $4556: $a1
    and c                                         ; $4557: $a1
    rst $38                                       ; $4558: $ff
    ld b, [hl]                                    ; $4559: $46
    rlca                                          ; $455a: $07
    ret c                                         ; $455b: $d8

    rst $38                                       ; $455c: $ff
    ld b, b                                       ; $455d: $40
    cp a                                          ; $455e: $bf
    ld h, b                                       ; $455f: $60
    ld e, a                                       ; $4560: $5f
    rst $38                                       ; $4561: $ff
    inc a                                         ; $4562: $3c
    inc bc                                        ; $4563: $03
    ld e, $13                                     ; $4564: $1e $13
    ld l, [hl]                                    ; $4566: $6e
    ld [hl], a                                    ; $4567: $77
    adc [hl]                                      ; $4568: $8e
    db $db                                        ; $4569: $db
    rst $20                                       ; $456a: $e7
    inc a                                         ; $456b: $3c
    ld l, a                                       ; $456c: $6f
    ldh a, [rNR10]                                ; $456d: $f0 $10
    ld h, c                                       ; $456f: $61
    ld c, $68                                     ; $4570: $0e $68
    nop                                           ; $4572: $00
    ld l, $51                                     ; $4573: $2e $51
    ei                                            ; $4575: $fb
    ld e, a                                       ; $4576: $5f
    and b                                         ; $4577: $a0
    add e                                         ; $4578: $83
    ld b, b                                       ; $4579: $40
    add b                                         ; $457a: $80
    ld a, a                                       ; $457b: $7f
    add b                                         ; $457c: $80
    cp a                                          ; $457d: $bf
    ret nz                                        ; $457e: $c0

    rst $38                                       ; $457f: $ff
    rst $18                                       ; $4580: $df
    ld h, b                                       ; $4581: $60
    scf                                           ; $4582: $37
    ld hl, sp+$10                                 ; $4583: $f8 $10
    rra                                           ; $4585: $1f
    ld [$ff9f], sp                                ; $4586: $08 $9f $ff
    adc b                                         ; $4589: $88
    rra                                           ; $458a: $1f
    sub b                                         ; $458b: $90
    ld e, a                                       ; $458c: $5f
    reti                                          ; $458d: $d9


    cpl                                           ; $458e: $2f
    xor [hl]                                      ; $458f: $ae
    ld d, a                                       ; $4590: $57
    rst $38                                       ; $4591: $ff
    rst $10                                       ; $4592: $d7
    dec hl                                        ; $4593: $2b
    ld [$ff15], a                                 ; $4594: $ea $15 $ff
    ld bc, $1ffd                                  ; $4597: $01 $fd $1f
    rst $38                                       ; $459a: $ff
    rst $38                                       ; $459b: $ff
    ld a, a                                       ; $459c: $7f
    jp $81ff                                      ; $459d: $c3 $ff $81


    jp $8101                                      ; $45a0: $c3 $01 $81


    rst $38                                       ; $45a3: $ff
    nop                                           ; $45a4: $00
    ld bc, $8080                                  ; $45a5: $01 $80 $80
    ld a, d                                       ; $45a8: $7a
    rst $18                                       ; $45a9: $df
    ld e, d                                       ; $45aa: $5a
    rst $38                                       ; $45ab: $ff
    ld a, l                                       ; $45ac: $7d
    inc [hl]                                      ; $45ad: $34
    cp $e0                                        ; $45ae: $fe $e0
    add sp, -$01                                  ; $45b0: $e8 $ff
    ccf                                           ; $45b2: $3f
    rst $38                                       ; $45b3: $ff
    add e                                         ; $45b4: $83
    cpl                                           ; $45b5: $2f
    ld b, b                                       ; $45b6: $40
    and h                                         ; $45b7: $a4
    rst $38                                       ; $45b8: $ff
    db $ed                                        ; $45b9: $ed
    ret nc                                        ; $45ba: $d0

    ld a, [hl+]                                   ; $45bb: $2a
    rrca                                          ; $45bc: $0f
    adc e                                         ; $45bd: $8b
    ld b, b                                       ; $45be: $40
    ret nz                                        ; $45bf: $c0

    dec h                                         ; $45c0: $25
    cp $6b                                        ; $45c1: $fe $6b
    add d                                         ; $45c3: $82
    ld sp, hl                                     ; $45c4: $f9
    xor [hl]                                      ; $45c5: $ae
    or b                                          ; $45c6: $b0
    inc h                                         ; $45c7: $24
    add c                                         ; $45c8: $81
    nop                                           ; $45c9: $00
    ld a, [hl+]                                   ; $45ca: $2a
    xor b                                         ; $45cb: $a8
    ld b, d                                       ; $45cc: $42
    ld d, l                                       ; $45cd: $55
    or b                                          ; $45ce: $b0
    jr nz, jr_046_4621                            ; $45cf: $20 $50

    ret c                                         ; $45d1: $d8

    sbc h                                         ; $45d2: $9c
    ld b, h                                       ; $45d3: $44
    ldh a, [$e3]                                  ; $45d4: $f0 $e3
    and b                                         ; $45d6: $a0
    ld b, b                                       ; $45d7: $40
    nop                                           ; $45d8: $00
    ccf                                           ; $45d9: $3f
    cp $e0                                        ; $45da: $fe $e0
    sbc a                                         ; $45dc: $9f
    nop                                           ; $45dd: $00
    pop hl                                        ; $45de: $e1
    ld b, c                                       ; $45df: $41
    ldh a, [$e4]                                  ; $45e0: $f0 $e4
    ld a, [hl]                                    ; $45e2: $7e
    daa                                           ; $45e3: $27
    and $e1                                       ; $45e4: $e6 $e1
    ld [hl], b                                    ; $45e6: $70
    daa                                           ; $45e7: $27
    db $fc                                        ; $45e8: $fc
    nop                                           ; $45e9: $00
    ld a, [$00ff]                                 ; $45ea: $fa $ff $00
    push de                                       ; $45ed: $d5
    nop                                           ; $45ee: $00

jr_046_45ef:
    ld a, [c]                                     ; $45ef: $f2
    nop                                           ; $45f0: $00
    push af                                       ; $45f1: $f5
    nop                                           ; $45f2: $00
    ld [$f8be], a                                 ; $45f3: $ea $be $f8
    ldh [$2a], a                                  ; $45f6: $e0 $2a
    nop                                           ; $45f8: $00
    ld d, h                                       ; $45f9: $54
    nop                                           ; $45fa: $00
    xor b                                         ; $45fb: $a8
    or h                                          ; $45fc: $b4
    add sp, -$7e                                  ; $45fd: $e8 $82
    ld [c], a                                     ; $45ff: $e2
    rrca                                          ; $4600: $0f
    ld b, h                                       ; $4601: $44
    xor d                                         ; $4602: $aa
    rlca                                          ; $4603: $07
    ld b, h                                       ; $4604: $44
    ld b, a                                       ; $4605: $47
    dec h                                         ; $4606: $25
    jr nc, jr_046_464a                            ; $4607: $30 $41

    ld a, [hl+]                                   ; $4609: $2a
    nop                                           ; $460a: $00
    dec d                                         ; $460b: $15
    cp e                                          ; $460c: $bb
    nop                                           ; $460d: $00
    ld a, [bc]                                    ; $460e: $0a
    rst $28                                       ; $460f: $ef
    inc h                                         ; $4610: $24
    adc a                                         ; $4611: $8f
    nop                                           ; $4612: $00
    ld d, a                                       ; $4613: $57
    add b                                         ; $4614: $80
    and $02                                       ; $4615: $e6 $02
    adc $30                                       ; $4617: $ce $30
    ld h, $7f                                     ; $4619: $26 $7f
    nop                                           ; $461b: $00
    xor a                                         ; $461c: $af
    add sp, -$1c                                  ; $461d: $e8 $e4
    jp hl                                         ; $461f: $e9


    inc hl                                        ; $4620: $23

jr_046_4621:
    db $fd                                        ; $4621: $fd
    add b                                         ; $4622: $80
    ld a, a                                       ; $4623: $7f
    ld a, [$55c0]                                 ; $4624: $fa $c0 $55
    ret nz                                        ; $4627: $c0

    ld l, d                                       ; $4628: $6a
    ret nz                                        ; $4629: $c0

    ld d, b                                       ; $462a: $50
    xor c                                         ; $462b: $a9
    ld h, b                                       ; $462c: $60
    ld b, l                                       ; $462d: $45
    push de                                       ; $462e: $d5
    db $ec                                        ; $462f: $ec
    jr nz, jr_046_4682                            ; $4630: $20 $50

    xor a                                         ; $4632: $af
    jr nz, @-$4e                                  ; $4633: $20 $b0

    rst $20                                       ; $4635: $e7
    call c, $0821                                 ; $4636: $dc $21 $08
    and $04                                       ; $4639: $e6 $04
    ld d, c                                       ; $463b: $51
    and b                                         ; $463c: $a0
    call nc, $8a20                                ; $463d: $d4 $20 $8a
    ld c, d                                       ; $4640: $4a
    adc $09                                       ; $4641: $ce $09
    ld [bc], a                                    ; $4643: $02
    or a                                          ; $4644: $b7
    jr nz, jr_046_45ef                            ; $4645: $20 $a8

    inc de                                        ; $4647: $13
    add sp, $71                                   ; $4648: $e8 $71

jr_046_464a:
    xor d                                         ; $464a: $aa
    jp nc, $cb66                                  ; $464b: $d2 $66 $cb

    pop hl                                        ; $464e: $e1
    rst $00                                       ; $464f: $c7
    ld [c], a                                     ; $4650: $e2
    ld a, [hl+]                                   ; $4651: $2a
    nop                                           ; $4652: $00
    dec b                                         ; $4653: $05
    ld a, b                                       ; $4654: $78
    ld [c], a                                     ; $4655: $e2
    and h                                         ; $4656: $a4
    ld l, c                                       ; $4657: $69
    ld h, l                                       ; $4658: $65
    ld [hl-], a                                   ; $4659: $32
    ld b, e                                       ; $465a: $43
    ld b, b                                       ; $465b: $40
    pop de                                        ; $465c: $d1
    jr nz, jr_046_4690                            ; $465d: $20 $31

    ld c, h                                       ; $465f: $4c
    jr z, jr_046_4671                             ; $4660: $28 $0f

    ldh [$2a], a                                  ; $4662: $e0 $2a
    ld a, [hl+]                                   ; $4664: $2a
    ld [hl], c                                    ; $4665: $71
    ld a, [bc]                                    ; $4666: $0a
    dec b                                         ; $4667: $05
    ldh a, [$e8]                                  ; $4668: $f0 $e8
    ld bc, $2447                                  ; $466a: $01 $47 $24
    dec d                                         ; $466d: $15
    sub a                                         ; $466e: $97
    add $37                                       ; $466f: $c6 $37

jr_046_4671:
    ld hl, $a8f1                                  ; $4671: $21 $f1 $a8
    dec a                                         ; $4674: $3d
    inc bc                                        ; $4675: $03
    inc l                                         ; $4676: $2c
    ld [$4124], sp                                ; $4677: $08 $24 $41

Call_046_467a:
    ld h, b                                       ; $467a: $60
    add b                                         ; $467b: $80
    jr nc, @-$3e                                  ; $467c: $30 $c0

    rst $38                                       ; $467e: $ff
    jr @-$1e                                      ; $467f: $18 $e0

    inc c                                         ; $4681: $0c

jr_046_4682:
    ldh a, [rTMA]                                 ; $4682: $f0 $06
    ld hl, sp+$03                                 ; $4684: $f8 $03
    db $fc                                        ; $4686: $fc
    jr nz, jr_046_46d6                            ; $4687: $20 $4d

    rst $20                                       ; $4689: $e7
    ld l, c                                       ; $468a: $69
    jp $e93d                                      ; $468b: $c3 $3d $e9


    adc [hl]                                      ; $468e: $8e
    pop hl                                        ; $468f: $e1

jr_046_4690:
    jp Jump_000_02c3                              ; $4690: $c3 $c3 $02


    xor e                                         ; $4693: $ab
    add $a8                                       ; $4694: $c6 $a8
    push hl                                       ; $4696: $e5
    adc c                                         ; $4697: $89
    ld d, b                                       ; $4698: $50
    rlca                                          ; $4699: $07
    ldh [$f0], a                                  ; $469a: $e0 $f0
    push hl                                       ; $469c: $e5
    dec b                                         ; $469d: $05
    ld [$d7e8], sp                                ; $469e: $08 $e8 $d7
    rst $00                                       ; $46a1: $c7
    di                                            ; $46a2: $f3
    jp $bf3f                                      ; $46a3: $c3 $3f $bf


    ret nz                                        ; $46a6: $c0

    rra                                           ; $46a7: $1f
    ldh [rIF], a                                  ; $46a8: $e0 $0f
    ldh a, [rTAC]                                 ; $46aa: $f0 $07
    sub [hl]                                      ; $46ac: $96
    ldh [rSB], a                                  ; $46ad: $e0 $01
    ld l, h                                       ; $46af: $6c
    ld h, c                                       ; $46b0: $61
    ld b, c                                       ; $46b1: $41
    rst $08                                       ; $46b2: $cf
    and h                                         ; $46b3: $a4
    add e                                         ; $46b4: $83
    ld a, h                                       ; $46b5: $7c
    cp $e3                                        ; $46b6: $fe $e3
    inc bc                                        ; $46b8: $03
    db $fc                                        ; $46b9: $fc
    push af                                       ; $46ba: $f5
    and l                                         ; $46bb: $a5
    db $fd                                        ; $46bc: $fd
    ld a, [bc]                                    ; $46bd: $0a
    call nz, $80c8                                ; $46be: $c4 $c8 $80
    add b                                         ; $46c1: $80
    ret nz                                        ; $46c2: $c0

    ret nz                                        ; $46c3: $c0

    ret nz                                        ; $46c4: $c0

    ld b, b                                       ; $46c5: $40
    cp a                                          ; $46c6: $bf
    ldh [rNR41], a                                ; $46c7: $e0 $20
    ldh [rNR41], a                                ; $46c9: $e0 $20
    ldh a, [$30]                                  ; $46cb: $f0 $30
    nop                                           ; $46cd: $00
    add e                                         ; $46ce: $83
    rra                                           ; $46cf: $1f
    db $dd                                        ; $46d0: $dd
    nop                                           ; $46d1: $00
    ld [bc], a                                    ; $46d2: $02
    add e                                         ; $46d3: $83
    ldh [$1f], a                                  ; $46d4: $e0 $1f

jr_046_46d6:
    ld bc, $40fa                                  ; $46d6: $01 $fa $40
    cp $01                                        ; $46d9: $fe $01
    rst $38                                       ; $46db: $ff
    db $fc                                        ; $46dc: $fc
    inc bc                                        ; $46dd: $03
    ld bc, $03fe                                  ; $46de: $01 $fe $03
    db $fc                                        ; $46e1: $fc

jr_046_46e2:
    rlca                                          ; $46e2: $07
    ld hl, sp+$7b                                 ; $46e3: $f8 $7b
    rlca                                          ; $46e5: $07
    ld hl, sp+$22                                 ; $46e6: $f8 $22
    pop hl                                        ; $46e8: $e1
    ld a, h                                       ; $46e9: $7c
    add e                                         ; $46ea: $83
    ld hl, sp+$07                                 ; $46eb: $f8 $07
    inc l                                         ; $46ed: $2c
    ld h, a                                       ; $46ee: $67
    ld a, [$a1be]                                 ; $46ef: $fa $be $a1

jr_046_46f2:
    jr nc, jr_046_46f2                            ; $46f2: $30 $fe

    ldh [$78], a                                  ; $46f4: $e0 $78
    rst $28                                       ; $46f6: $ef
    ld a, b                                       ; $46f7: $78
    rst $28                                       ; $46f8: $ef
    call z, $f737                                 ; $46f9: $cc $37 $f7
    inc bc                                        ; $46fc: $03
    db $fc                                        ; $46fd: $fc
    cp $e3                                        ; $46fe: $fe $e3
    ld [bc], a                                    ; $4700: $02
    db $fd                                        ; $4701: $fd
    pop de                                        ; $4702: $d1
    ld [bc], a                                    ; $4703: $02
    ld c, a                                       ; $4704: $4f
    and d                                         ; $4705: $a2
    jr c, jr_046_46e2                             ; $4706: $38 $da

    push hl                                       ; $4708: $e5
    ld d, $c1                                     ; $4709: $16 $c1
    ret nz                                        ; $470b: $c0

    ld hl, $e01c                                  ; $470c: $21 $1c $e0
    ld c, $5e                                     ; $470f: $0e $5e
    ldh [$fe], a                                  ; $4711: $e0 $fe
    db $e3                                        ; $4713: $e3
    set 6, b                                      ; $4714: $cb $f0
    db $10                                        ; $4716: $10
    cp $e2                                        ; $4717: $fe $e2
    ldh a, [$35]                                  ; $4719: $f0 $35
    call $e188                                    ; $471b: $cd $88 $e1
    rlca                                          ; $471e: $07
    nop                                           ; $471f: $00
    inc bc                                        ; $4720: $03
    ld c, $01                                     ; $4721: $0e $01
    ld a, h                                       ; $4723: $7c
    pop hl                                        ; $4724: $e1
    ld a, b                                       ; $4725: $78
    pop hl                                        ; $4726: $e1
    ret nz                                        ; $4727: $c0

    ld b, c                                       ; $4728: $41
    xor e                                         ; $4729: $ab
    add c                                         ; $472a: $81
    ld a, h                                       ; $472b: $7c
    pop hl                                        ; $472c: $e1
    inc h                                         ; $472d: $24
    push hl                                       ; $472e: $e5
    reti                                          ; $472f: $d9


    add b                                         ; $4730: $80
    ret                                           ; $4731: $c9


    ld h, c                                       ; $4732: $61
    and l                                         ; $4733: $a5
    add c                                         ; $4734: $81
    ld a, a                                       ; $4735: $7f
    adc h                                         ; $4736: $8c
    cp $e0                                        ; $4737: $fe $e0
    ld e, $fb                                     ; $4739: $1e $fb
    rst $38                                       ; $473b: $ff
    ld e, $fb                                     ; $473c: $1e $fb
    scf                                           ; $473e: $37
    db $fd                                        ; $473f: $fd
    call z, $b6f7                                 ; $4740: $cc $f7 $b6
    db $eb                                        ; $4743: $eb
    rst $38                                       ; $4744: $ff
    or [hl]                                       ; $4745: $b6
    db $eb                                        ; $4746: $eb
    ld c, e                                       ; $4747: $4b
    push af                                       ; $4748: $f5
    ld c, e                                       ; $4749: $4b
    push af                                       ; $474a: $f5
    and l                                         ; $474b: $a5
    ld a, [$a55f]                                 ; $474c: $fa $5f $a5
    ld a, [$fd42]                                 ; $474f: $fa $42 $fd
    ld bc, $40bb                                  ; $4752: $01 $bb $40
    inc bc                                        ; $4755: $03
    rst $18                                       ; $4756: $df
    ld h, d                                       ; $4757: $62
    db $dd                                        ; $4758: $dd
    adc l                                         ; $4759: $8d
    cp $e0                                        ; $475a: $fe $e0
    jp c, $c07f                                   ; $475c: $da $7f $c0

    cp $e0                                        ; $475f: $fe $e0
    ld h, c                                       ; $4761: $61
    cp a                                          ; $4762: $bf
    rst $38                                       ; $4763: $ff
    ld h, c                                       ; $4764: $61
    cp a                                          ; $4765: $bf
    or c                                          ; $4766: $b1
    ld e, a                                       ; $4767: $5f
    or e                                          ; $4768: $b3
    ld e, a                                       ; $4769: $5f
    ld e, e                                       ; $476a: $5b
    xor a                                         ; $476b: $af
    db $db                                        ; $476c: $db
    ld e, [hl]                                    ; $476d: $5e
    xor a                                         ; $476e: $af
    inc l                                         ; $476f: $2c
    pop hl                                        ; $4770: $e1
    add a                                         ; $4771: $87
    ld hl, sp-$16                                 ; $4772: $f8 $ea
    pop hl                                        ; $4774: $e1
    ld h, b                                       ; $4775: $60
    cp a                                          ; $4776: $bf
    jp hl                                         ; $4777: $e9


    ld h, b                                       ; $4778: $60
    ld [$08e0], a                                 ; $4779: $ea $e0 $08
    ld h, c                                       ; $477c: $61
    ld a, b                                       ; $477d: $78
    rla                                           ; $477e: $17
    pop hl                                        ; $477f: $e1
    rra                                           ; $4780: $1f
    ld hl, sp+$1f                                 ; $4781: $f8 $1f
    xor a                                         ; $4783: $af
    ld a, h                                       ; $4784: $7c
    or a                                          ; $4785: $b7
    inc a                                         ; $4786: $3c
    rst $30                                       ; $4787: $f7
    jp nz, Jump_000_0de5                          ; $4788: $c2 $e5 $0d

    cp $e0                                        ; $478b: $fe $e0
    ld a, [de]                                    ; $478d: $1a
    db $fc                                        ; $478e: $fc
    ld h, l                                       ; $478f: $65
    ld h, b                                       ; $4790: $60
    ret nz                                        ; $4791: $c0

    pop hl                                        ; $4792: $e1
    ldh [$bf], a                                  ; $4793: $e0 $bf
    ldh [$bf], a                                  ; $4795: $e0 $bf
    or b                                          ; $4797: $b0
    ld e, a                                       ; $4798: $5f
    rst $38                                       ; $4799: $ff
    or c                                          ; $479a: $b1
    ld e, a                                       ; $479b: $5f
    ld e, c                                       ; $479c: $59
    xor a                                         ; $479d: $af
    ld e, a                                       ; $479e: $5f
    xor a                                         ; $479f: $af
    scf                                           ; $47a0: $37
    db $fd                                        ; $47a1: $fd
    rst $38                                       ; $47a2: $ff
    ld l, l                                       ; $47a3: $6d
    ld a, [$fa6d]                                 ; $47a4: $fa $6d $fa
    jp nc, $d2fd                                  ; $47a7: $d2 $fd $d2

    db $fd                                        ; $47aa: $fd
    rst $28                                       ; $47ab: $ef
    and c                                         ; $47ac: $a1
    cp $a1                                        ; $47ad: $fe $a1
    cp $3f                                        ; $47af: $fe $3f
    ld b, b                                       ; $47b1: $40
    db $fd                                        ; $47b2: $fd
    add c                                         ; $47b3: $81
    cp $f9                                        ; $47b4: $fe $f9
    add c                                         ; $47b6: $81
    add [hl]                                      ; $47b7: $86
    jp nz, $83a6                                  ; $47b8: $c2 $a6 $83

    jp c, Jump_046_757f                           ; $47bb: $da $7f $75

    cp a                                          ; $47be: $bf
    ld [hl], l                                    ; $47bf: $75
    cp $90                                        ; $47c0: $fe $90
    ld h, b                                       ; $47c2: $60
    cp d                                          ; $47c3: $ba
    ld e, a                                       ; $47c4: $5f
    ld e, h                                       ; $47c5: $5c
    xor a                                         ; $47c6: $af
    ld e, h                                       ; $47c7: $5c
    xor a                                         ; $47c8: $af
    inc l                                         ; $47c9: $2c
    rst $38                                       ; $47ca: $ff
    rst $10                                       ; $47cb: $d7
    ld l, $d7                                     ; $47cc: $2e $d7
    cpl                                           ; $47ce: $2f
    rst $10                                       ; $47cf: $d7
    rla                                           ; $47d0: $17
    db $eb                                        ; $47d1: $eb
    rla                                           ; $47d2: $17
    cp [hl]                                       ; $47d3: $be
    adc h                                         ; $47d4: $8c
    ld h, d                                       ; $47d5: $62
    dec b                                         ; $47d6: $05
    ld a, [$fa05]                                 ; $47d7: $fa $05 $fa
    or c                                          ; $47da: $b1
    ld a, d                                       ; $47db: $7a
    ldh [$5b], a                                  ; $47dc: $e0 $5b
    ei                                            ; $47de: $fb
    xor a                                         ; $47df: $af
    ld l, $e8                                     ; $47e0: $2e $e8
    ldh [$97], a                                  ; $47e2: $e0 $97
    db $eb                                        ; $47e4: $eb
    sub a                                         ; $47e5: $97
    db $eb                                        ; $47e6: $eb
    set 7, a                                      ; $47e7: $cb $ff
    push af                                       ; $47e9: $f5
    ld h, [hl]                                    ; $47ea: $66
    ei                                            ; $47eb: $fb
    ld h, [hl]                                    ; $47ec: $66
    ei                                            ; $47ed: $fb
    db $db                                        ; $47ee: $db
    push af                                       ; $47ef: $f5
    db $db                                        ; $47f0: $db
    ld e, [hl]                                    ; $47f1: $5e
    ld b, d                                       ; $47f2: $42
    ld [c], a                                     ; $47f3: $e2
    ld b, e                                       ; $47f4: $43
    db $fd                                        ; $47f5: $fd
    ld b, e                                       ; $47f6: $43
    db $fd                                        ; $47f7: $fd
    db $f4                                        ; $47f8: $f4
    ld h, c                                       ; $47f9: $61
    ld l, b                                       ; $47fa: $68
    cp $e0                                        ; $47fb: $fe $e0
    ld sp, hl                                     ; $47fd: $f9
    ret nc                                        ; $47fe: $d0

    cp $e0                                        ; $47ff: $fe $e0
    ld a, [hl-]                                   ; $4801: $3a
    ld h, c                                       ; $4802: $61
    cpl                                           ; $4803: $2f
    rst $10                                       ; $4804: $d7
    ld l, $df                                     ; $4805: $2e $df
    ld e, $af                                     ; $4807: $1e $af
    rst $28                                       ; $4809: $ef
    dec e                                         ; $480a: $1d
    rst $28                                       ; $480b: $ef
    dec e                                         ; $480c: $1d
    reti                                          ; $480d: $d9


    ld b, b                                       ; $480e: $40
    ld a, [hl-]                                   ; $480f: $3a
    sub $60                                       ; $4810: $d6 $60
    ld b, b                                       ; $4812: $40
    db $fc                                        ; $4813: $fc
    rst $00                                       ; $4814: $c7
    ld b, d                                       ; $4815: $42
    ld a, [hl-]                                   ; $4816: $3a
    adc c                                         ; $4817: $89
    rst $38                                       ; $4818: $ff
    rst $38                                       ; $4819: $ff
    rst $18                                       ; $481a: $df
    rst $38                                       ; $481b: $ff
    ld l, c                                       ; $481c: $69
    rst $38                                       ; $481d: $ff
    db $fd                                        ; $481e: $fd
    ld e, c                                       ; $481f: $59
    jp z, Jump_046_48e0                           ; $4820: $ca $e0 $48

    rst $38                                       ; $4823: $ff
    ld a, b                                       ; $4824: $78
    rst $38                                       ; $4825: $ff
    ld l, $d7                                     ; $4826: $2e $d7
    sbc c                                         ; $4828: $99
    cp $ca                                        ; $4829: $fe $ca
    ld h, b                                       ; $482b: $60
    ld a, b                                       ; $482c: $78
    ret nz                                        ; $482d: $c0

    rst $38                                       ; $482e: $ff
    add hl, de                                    ; $482f: $19
    cp $e0                                        ; $4830: $fe $e0

jr_046_4832:
    db $f4                                        ; $4832: $f4
    jr nz, jr_046_4832                            ; $4833: $20 $fd

    ld a, a                                       ; $4835: $7f
    ld [bc], a                                    ; $4836: $02
    db $fd                                        ; $4837: $fd
    rst $38                                       ; $4838: $ff
    rst $38                                       ; $4839: $ff
    cp h                                          ; $483a: $bc
    rst $38                                       ; $483b: $ff
    ld a, a                                       ; $483c: $7f
    jr jr_046_489f                                ; $483d: $18 $60

    rst $38                                       ; $483f: $ff
    ld hl, $e0ff                                  ; $4840: $21 $ff $e0
    rst $38                                       ; $4843: $ff
    bit 6, l                                      ; $4844: $cb $75
    push hl                                       ; $4846: $e5
    ld a, d                                       ; $4847: $7a
    db $eb                                        ; $4848: $eb
    push hl                                       ; $4849: $e5
    ld a, [$e1ec]                                 ; $484a: $fa $ec $e1
    jp $e0fe                                      ; $484d: $c3 $fe $e0


    nop                                           ; $4850: $00
    rst $38                                       ; $4851: $ff
    add c                                         ; $4852: $81
    sbc h                                         ; $4853: $9c
    cp $e0                                        ; $4854: $fe $e0
    ld [hl], c                                    ; $4856: $71
    ld hl, $ffff                                  ; $4857: $21 $ff $ff

jr_046_485a:
    jr jr_046_485a                                ; $485a: $18 $fe

    ldh [$6d], a                                  ; $485c: $e0 $6d
    ld hl, $ae40                                  ; $485e: $21 $40 $ae
    adc d                                         ; $4861: $8a
    ld h, b                                       ; $4862: $60
    db $fd                                        ; $4863: $fd
    rst $38                                       ; $4864: $ff
    cp $9f                                        ; $4865: $fe $9f
    ld b, b                                       ; $4867: $40
    inc b                                         ; $4868: $04
    ld l, l                                       ; $4869: $6d
    jr nz, jr_046_48e0                            ; $486a: $20 $74

    ld l, d                                       ; $486c: $6a
    add $e0                                       ; $486d: $c6 $e0
    rst $38                                       ; $486f: $ff
    ld l, b                                       ; $4870: $68
    ld h, d                                       ; $4871: $62
    sbc b                                         ; $4872: $98
    cp $e0                                        ; $4873: $fe $e0
    add b                                         ; $4875: $80
    rst $38                                       ; $4876: $ff
    nop                                           ; $4877: $00
    nop                                           ; $4878: $00
    nop                                           ; $4879: $00
    ld b, l                                       ; $487a: $45
    ld h, d                                       ; $487b: $62
    rst $38                                       ; $487c: $ff
    ldh a, [rP1]                                  ; $487d: $f0 $00
    rst $38                                       ; $487f: $ff
    rst $38                                       ; $4880: $ff
    rst $20                                       ; $4881: $e7
    and $c0                                       ; $4882: $e6 $c0
    pop af                                        ; $4884: $f1
    ld bc, $ffc9                                  ; $4885: $01 $c9 $ff
    or b                                          ; $4888: $b0
    ret nz                                        ; $4889: $c0

    rst $38                                       ; $488a: $ff
    rst $38                                       ; $488b: $ff
    rst $38                                       ; $488c: $ff
    ret nz                                        ; $488d: $c0

    rst $38                                       ; $488e: $ff
    rst $38                                       ; $488f: $ff
    rst $38                                       ; $4890: $ff
    nop                                           ; $4891: $00
    ld h, e                                       ; $4892: $63
    db $dd                                        ; $4893: $dd
    xor $64                                       ; $4894: $ee $64
    ld [hl], c                                    ; $4896: $71
    ld h, l                                       ; $4897: $65
    jp z, $bde0                                   ; $4898: $ca $e0 $bd

    rst $38                                       ; $489b: $ff
    push hl                                       ; $489c: $e5
    db $e4                                        ; $489d: $e4
    ld h, [hl]                                    ; $489e: $66

jr_046_489f:
    ld h, a                                       ; $489f: $67
    ld l, b                                       ; $48a0: $68
    db $db                                        ; $48a1: $db
    ldh [$fd], a                                  ; $48a2: $e0 $fd
    ld [bc], a                                    ; $48a4: $02
    rst $10                                       ; $48a5: $d7
    pop hl                                        ; $48a6: $e1
    inc bc                                        ; $48a7: $03
    inc b                                         ; $48a8: $04
    dec b                                         ; $48a9: $05
    ld b, $00                                     ; $48aa: $06 $00
    nop                                           ; $48ac: $00
    rst $20                                       ; $48ad: $e7
    ld l, c                                       ; $48ae: $69
    ld l, d                                       ; $48af: $6a
    ld l, e                                       ; $48b0: $6b
    ret nz                                        ; $48b1: $c0

    rst $38                                       ; $48b2: $ff
    add sp, -$19                                  ; $48b3: $e8 $e7
    ld l, h                                       ; $48b5: $6c
    ld l, l                                       ; $48b6: $6d
    ld l, [hl]                                    ; $48b7: $6e
    rst $38                                       ; $48b8: $ff
    ld l, a                                       ; $48b9: $6f
    rlca                                          ; $48ba: $07
    nop                                           ; $48bb: $00
    ld [$0a09], sp                                ; $48bc: $08 $09 $0a
    nop                                           ; $48bf: $00
    inc bc                                        ; $48c0: $03
    rst $38                                       ; $48c1: $ff
    dec bc                                        ; $48c2: $0b
    inc c                                         ; $48c3: $0c
    dec c                                         ; $48c4: $0d
    ld c, $0f                                     ; $48c5: $0e $0f
    ld [hl], c                                    ; $48c7: $71
    ld [hl], d                                    ; $48c8: $72
    ld [hl], e                                    ; $48c9: $73
    ld sp, hl                                     ; $48ca: $f9
    ld [hl], h                                    ; $48cb: $74
    jp z, $e8ff                                   ; $48cc: $ca $ff $e8

    rst $20                                       ; $48cf: $e7
    ld [hl], l                                    ; $48d0: $75
    halt                                          ; $48d1: $76
    ld bc, $1077                                  ; $48d2: $01 $77 $10
    rst $38                                       ; $48d5: $ff
    ld de, $1312                                  ; $48d6: $11 $12 $13
    inc d                                         ; $48d9: $14
    dec d                                         ; $48da: $15
    ld d, $17                                     ; $48db: $16 $17
    jr jr_046_495e                                ; $48dd: $18 $7f

    add hl, de                                    ; $48df: $19

Jump_046_48e0:
jr_046_48e0:
    ld a, [de]                                    ; $48e0: $1a
    dec de                                        ; $48e1: $1b
    ld a, c                                       ; $48e2: $79
    ld a, d                                       ; $48e3: $7a
    ld a, e                                       ; $48e4: $7b
    ld a, h                                       ; $48e5: $7c
    jp z, $feff                                   ; $48e6: $ca $ff $fe

    add sp, -$19                                  ; $48e9: $e8 $e7
    ld a, l                                       ; $48eb: $7d
    ld a, [hl]                                    ; $48ec: $7e
    ld a, a                                       ; $48ed: $7f
    add b                                         ; $48ee: $80
    inc e                                         ; $48ef: $1c
    dec e                                         ; $48f0: $1d
    ld e, $ff                                     ; $48f1: $1e $ff
    rra                                           ; $48f3: $1f
    jr nz, jr_046_4917                            ; $48f4: $20 $21

    ld [hl+], a                                   ; $48f6: $22
    inc hl                                        ; $48f7: $23
    inc h                                         ; $48f8: $24
    dec h                                         ; $48f9: $25
    ld h, $9f                                     ; $48fa: $26 $9f
    ld bc, $8281                                  ; $48fc: $01 $81 $82
    add e                                         ; $48ff: $83
    add h                                         ; $4900: $84
    jp z, $e8ff                                   ; $4901: $ca $ff $e8

    rst $20                                       ; $4904: $e7
    add l                                         ; $4905: $85
    rst $38                                       ; $4906: $ff
    add [hl]                                      ; $4907: $86
    add a                                         ; $4908: $87
    add a                                         ; $4909: $87
    daa                                           ; $490a: $27
    jr z, jr_046_4936                             ; $490b: $28 $29

    ld a, [hl+]                                   ; $490d: $2a
    dec hl                                        ; $490e: $2b
    rst $38                                       ; $490f: $ff
    inc l                                         ; $4910: $2c
    dec l                                         ; $4911: $2d
    ld l, $2f                                     ; $4912: $2e $2f
    jr nc, jr_046_4947                            ; $4914: $30 $31

    ld [hl-], a                                   ; $4916: $32

jr_046_4917:
    ld bc, $89e7                                  ; $4917: $01 $e7 $89
    adc d                                         ; $491a: $8a
    adc e                                         ; $491b: $8b
    jp z, $e8ff                                   ; $491c: $ca $ff $e8

    rst $20                                       ; $491f: $e7
    adc h                                         ; $4920: $8c
    adc l                                         ; $4921: $8d
    adc [hl]                                      ; $4922: $8e
    rst $38                                       ; $4923: $ff
    adc a                                         ; $4924: $8f
    inc sp                                        ; $4925: $33
    inc [hl]                                      ; $4926: $34
    dec [hl]                                      ; $4927: $35
    ld [hl], $37                                  ; $4928: $36 $37
    jr c, jr_046_4965                             ; $492a: $38 $39

    rst $38                                       ; $492c: $ff
    ld a, [hl-]                                   ; $492d: $3a
    dec sp                                        ; $492e: $3b
    inc a                                         ; $492f: $3c
    dec a                                         ; $4930: $3d
    ld bc, $9291                                  ; $4931: $01 $91 $92
    sub e                                         ; $4934: $93
    ld sp, hl                                     ; $4935: $f9

jr_046_4936:
    sub h                                         ; $4936: $94
    jp z, $e8ff                                   ; $4937: $ca $ff $e8

    rst $20                                       ; $493a: $e7
    sub l                                         ; $493b: $95
    sub [hl]                                      ; $493c: $96
    sub a                                         ; $493d: $97
    sbc b                                         ; $493e: $98
    ld a, $ff                                     ; $493f: $3e $ff
    ccf                                           ; $4941: $3f
    ld b, b                                       ; $4942: $40
    ld b, c                                       ; $4943: $41
    ld b, d                                       ; $4944: $42
    ld b, e                                       ; $4945: $43
    ld b, h                                       ; $4946: $44

jr_046_4947:
    ld b, l                                       ; $4947: $45
    ld b, [hl]                                    ; $4948: $46
    ld a, a                                       ; $4949: $7f
    ld b, a                                       ; $494a: $47
    ld c, b                                       ; $494b: $48
    ld c, c                                       ; $494c: $49
    sbc c                                         ; $494d: $99
    sbc d                                         ; $494e: $9a
    sbc e                                         ; $494f: $9b
    sbc h                                         ; $4950: $9c
    jp z, $feff                                   ; $4951: $ca $ff $fe

    add sp, -$19                                  ; $4954: $e8 $e7
    sbc l                                         ; $4956: $9d
    sbc [hl]                                      ; $4957: $9e
    sbc a                                         ; $4958: $9f
    and b                                         ; $4959: $a0
    ld c, d                                       ; $495a: $4a
    ld c, e                                       ; $495b: $4b
    ld c, h                                       ; $495c: $4c
    rst $38                                       ; $495d: $ff

jr_046_495e:
    ld c, l                                       ; $495e: $4d
    ld c, [hl]                                    ; $495f: $4e
    ld c, a                                       ; $4960: $4f
    ld d, b                                       ; $4961: $50
    ld d, c                                       ; $4962: $51
    ld d, d                                       ; $4963: $52
    ld d, e                                       ; $4964: $53

jr_046_4965:
    ld d, h                                       ; $4965: $54
    sbc a                                         ; $4966: $9f
    ld d, l                                       ; $4967: $55
    and c                                         ; $4968: $a1
    and d                                         ; $4969: $a2
    and e                                         ; $496a: $a3
    and h                                         ; $496b: $a4
    jp z, $e8ff                                   ; $496c: $ca $ff $e8

    rst $20                                       ; $496f: $e7
    and l                                         ; $4970: $a5
    rst $38                                       ; $4971: $ff
    and [hl]                                      ; $4972: $a6
    and a                                         ; $4973: $a7
    xor b                                         ; $4974: $a8
    ld d, [hl]                                    ; $4975: $56
    ld d, a                                       ; $4976: $57
    ld e, b                                       ; $4977: $58
    ld e, c                                       ; $4978: $59
    ld e, d                                       ; $4979: $5a
    rst $38                                       ; $497a: $ff
    ld e, e                                       ; $497b: $5b
    ld e, h                                       ; $497c: $5c
    ld e, l                                       ; $497d: $5d
    ld e, [hl]                                    ; $497e: $5e
    ld e, a                                       ; $497f: $5f
    ld h, b                                       ; $4980: $60
    ld h, c                                       ; $4981: $61
    xor c                                         ; $4982: $a9
    rlca                                          ; $4983: $07
    xor d                                         ; $4984: $aa
    xor e                                         ; $4985: $ab
    and l                                         ; $4986: $a5
    jp z, Jump_046_40ff                           ; $4987: $ca $ff $40

    cp e                                          ; $498a: $bb
    jp z, $c0ff                                   ; $498b: $ca $ff $c0

    rst $38                                       ; $498e: $ff
    rst $38                                       ; $498f: $ff
    rst $38                                       ; $4990: $ff
    jr nc, @-$3e                                  ; $4991: $30 $c0

    rst $38                                       ; $4993: $ff
    rst $38                                       ; $4994: $ff
    rst $38                                       ; $4995: $ff
    ret nz                                        ; $4996: $c0

    rst $38                                       ; $4997: $ff
    rst $38                                       ; $4998: $ff
    rst $38                                       ; $4999: $ff
    nop                                           ; $499a: $00
    ld bc, $e8ff                                  ; $499b: $01 $ff $e8
    jp nc, Jump_000_00ff                          ; $499e: $d2 $ff $00

    ret nz                                        ; $49a1: $c0

    rst $38                                       ; $49a2: $ff
    rst $38                                       ; $49a3: $ff
    rst $38                                       ; $49a4: $ff
    ret nz                                        ; $49a5: $c0

    rst $38                                       ; $49a6: $ff
    rst $38                                       ; $49a7: $ff
    rst $38                                       ; $49a8: $ff
    ret nz                                        ; $49a9: $c0

    rst $38                                       ; $49aa: $ff
    rst $38                                       ; $49ab: $ff
    rst $38                                       ; $49ac: $ff
    ret nz                                        ; $49ad: $c0

    rst $38                                       ; $49ae: $ff
    rst $38                                       ; $49af: $ff
    rst $38                                       ; $49b0: $ff
    nop                                           ; $49b1: $00
    ret nz                                        ; $49b2: $c0

    rst $38                                       ; $49b3: $ff
    ret nz                                        ; $49b4: $c0

    rst $38                                       ; $49b5: $ff
    ret nz                                        ; $49b6: $c0

    rst $38                                       ; $49b7: $ff
    ret nz                                        ; $49b8: $c0

    rst $38                                       ; $49b9: $ff
    ret nz                                        ; $49ba: $c0

    rst $38                                       ; $49bb: $ff
    ret nz                                        ; $49bc: $c0

    rst $38                                       ; $49bd: $ff
    ret nz                                        ; $49be: $c0

    rst $38                                       ; $49bf: $ff
    ret nz                                        ; $49c0: $c0

    rst $38                                       ; $49c1: $ff
    nop                                           ; $49c2: $00
    rst $38                                       ; $49c3: $ff
    rst $38                                       ; $49c4: $ff
    cp [hl]                                       ; $49c5: $be
    di                                            ; $49c6: $f3
    jp c, $ffff                                   ; $49c7: $da $ff $ff

    rst $38                                       ; $49ca: $ff
    rst $38                                       ; $49cb: $ff
    rst $38                                       ; $49cc: $ff
    rst $38                                       ; $49cd: $ff
    rst $38                                       ; $49ce: $ff
    rst $38                                       ; $49cf: $ff
    rst $38                                       ; $49d0: $ff
    rst $38                                       ; $49d1: $ff
    rst $38                                       ; $49d2: $ff
    nop                                           ; $49d3: $00
    rst $38                                       ; $49d4: $ff
    rst $38                                       ; $49d5: $ff
    rst $38                                       ; $49d6: $ff
    rst $38                                       ; $49d7: $ff
    rst $38                                       ; $49d8: $ff
    rst $38                                       ; $49d9: $ff
    rst $38                                       ; $49da: $ff
    rst $38                                       ; $49db: $ff
    rst $38                                       ; $49dc: $ff
    rst $38                                       ; $49dd: $ff
    rst $38                                       ; $49de: $ff
    rst $38                                       ; $49df: $ff
    rst $38                                       ; $49e0: $ff
    rst $38                                       ; $49e1: $ff
    rst $38                                       ; $49e2: $ff
    rst $38                                       ; $49e3: $ff
    nop                                           ; $49e4: $00
    rst $38                                       ; $49e5: $ff
    rst $38                                       ; $49e6: $ff
    rst $38                                       ; $49e7: $ff
    rst $38                                       ; $49e8: $ff
    rst $38                                       ; $49e9: $ff
    rst $38                                       ; $49ea: $ff
    rst $38                                       ; $49eb: $ff
    rst $38                                       ; $49ec: $ff
    rst $38                                       ; $49ed: $ff
    rst $38                                       ; $49ee: $ff
    rst $38                                       ; $49ef: $ff
    rst $38                                       ; $49f0: $ff
    rst $38                                       ; $49f1: $ff
    rst $38                                       ; $49f2: $ff
    rst $38                                       ; $49f3: $ff
    rst $38                                       ; $49f4: $ff
    nop                                           ; $49f5: $00
    rst $38                                       ; $49f6: $ff
    rst $38                                       ; $49f7: $ff
    rst $38                                       ; $49f8: $ff
    rst $38                                       ; $49f9: $ff
    rst $38                                       ; $49fa: $ff
    rst $38                                       ; $49fb: $ff
    rst $38                                       ; $49fc: $ff
    rst $38                                       ; $49fd: $ff
    rst $38                                       ; $49fe: $ff
    rst $38                                       ; $49ff: $ff
    rst $38                                       ; $4a00: $ff
    rst $38                                       ; $4a01: $ff
    rst $38                                       ; $4a02: $ff
    rst $38                                       ; $4a03: $ff
    rst $38                                       ; $4a04: $ff
    rst $38                                       ; $4a05: $ff
    nop                                           ; $4a06: $00
    rst $38                                       ; $4a07: $ff
    rst $38                                       ; $4a08: $ff
    rst $38                                       ; $4a09: $ff
    rst $38                                       ; $4a0a: $ff
    rst $38                                       ; $4a0b: $ff
    rst $38                                       ; $4a0c: $ff
    rst $38                                       ; $4a0d: $ff
    rst $38                                       ; $4a0e: $ff
    rst $38                                       ; $4a0f: $ff
    rst $38                                       ; $4a10: $ff
    rst $38                                       ; $4a11: $ff
    rst $38                                       ; $4a12: $ff
    rst $38                                       ; $4a13: $ff
    rst $38                                       ; $4a14: $ff
    rst $38                                       ; $4a15: $ff
    rst $38                                       ; $4a16: $ff
    nop                                           ; $4a17: $00
    rst $38                                       ; $4a18: $ff
    rst $38                                       ; $4a19: $ff
    rst $38                                       ; $4a1a: $ff
    rst $38                                       ; $4a1b: $ff
    rst $38                                       ; $4a1c: $ff
    rst $38                                       ; $4a1d: $ff
    rst $38                                       ; $4a1e: $ff
    rst $38                                       ; $4a1f: $ff
    rst $38                                       ; $4a20: $ff
    rst $38                                       ; $4a21: $ff
    rst $38                                       ; $4a22: $ff
    rst $38                                       ; $4a23: $ff
    rst $38                                       ; $4a24: $ff
    rst $38                                       ; $4a25: $ff
    rst $38                                       ; $4a26: $ff
    rst $38                                       ; $4a27: $ff
    nop                                           ; $4a28: $00
    rst $38                                       ; $4a29: $ff
    rst $38                                       ; $4a2a: $ff
    rst $38                                       ; $4a2b: $ff
    rst $38                                       ; $4a2c: $ff
    rst $38                                       ; $4a2d: $ff
    rst $38                                       ; $4a2e: $ff
    rst $38                                       ; $4a2f: $ff
    rst $38                                       ; $4a30: $ff
    rst $38                                       ; $4a31: $ff
    rst $38                                       ; $4a32: $ff
    rst $38                                       ; $4a33: $ff
    rst $38                                       ; $4a34: $ff
    rst $38                                       ; $4a35: $ff
    rst $38                                       ; $4a36: $ff
    rst $38                                       ; $4a37: $ff
    rst $38                                       ; $4a38: $ff
    nop                                           ; $4a39: $00
    rst $38                                       ; $4a3a: $ff
    rst $38                                       ; $4a3b: $ff
    rst $38                                       ; $4a3c: $ff
    rst $38                                       ; $4a3d: $ff
    rst $38                                       ; $4a3e: $ff
    rst $38                                       ; $4a3f: $ff
    rst $38                                       ; $4a40: $ff
    rst $38                                       ; $4a41: $ff
    rst $38                                       ; $4a42: $ff
    rst $38                                       ; $4a43: $ff
    rst $38                                       ; $4a44: $ff
    rst $38                                       ; $4a45: $ff
    rst $38                                       ; $4a46: $ff
    rst $38                                       ; $4a47: $ff
    rst $38                                       ; $4a48: $ff
    rst $38                                       ; $4a49: $ff
    nop                                           ; $4a4a: $00
    rst $38                                       ; $4a4b: $ff
    rst $38                                       ; $4a4c: $ff
    rst $38                                       ; $4a4d: $ff
    rst $38                                       ; $4a4e: $ff
    rst $38                                       ; $4a4f: $ff
    rst $38                                       ; $4a50: $ff
    rst $38                                       ; $4a51: $ff
    rst $38                                       ; $4a52: $ff
    rst $38                                       ; $4a53: $ff
    rst $38                                       ; $4a54: $ff
    rst $38                                       ; $4a55: $ff
    xor $00                                       ; $4a56: $ee $00
    nop                                           ; $4a58: $00
    nop                                           ; $4a59: $00
    dec b                                         ; $4a5a: $05
    ld [$f0ff], sp                                ; $4a5b: $08 $ff $f0
    dec bc                                        ; $4a5e: $0b
    rst $38                                       ; $4a5f: $ff
    rst $38                                       ; $4a60: $ff
    rst $20                                       ; $4a61: $e7

jr_046_4a62:
    and $c0                                       ; $4a62: $e6 $c0
    pop af                                        ; $4a64: $f1
    cp a                                          ; $4a65: $bf
    rst $38                                       ; $4a66: $ff
    ret nz                                        ; $4a67: $c0

    rst $38                                       ; $4a68: $ff
    nop                                           ; $4a69: $00
    rst $38                                       ; $4a6a: $ff
    rst $38                                       ; $4a6b: $ff
    ret nz                                        ; $4a6c: $c0

    rst $38                                       ; $4a6d: $ff
    rst $38                                       ; $4a6e: $ff
    rst $38                                       ; $4a6f: $ff
    xor c                                         ; $4a70: $a9
    rst $30                                       ; $4a71: $f7
    db $dd                                        ; $4a72: $dd
    rst $38                                       ; $4a73: $ff
    ret nz                                        ; $4a74: $c0

    rst $38                                       ; $4a75: $ff
    rst $38                                       ; $4a76: $ff
    rst $38                                       ; $4a77: $ff
    rst $28                                       ; $4a78: $ef
    xor $25                                       ; $4a79: $ee $25
    dec c                                         ; $4a7b: $0d
    db $dd                                        ; $4a7c: $dd
    ldh [rIF], a                                  ; $4a7d: $e0 $0f
    reti                                          ; $4a7f: $d9


    rst $38                                       ; $4a80: $ff
    add sp, -$19                                  ; $4a81: $e8 $e7
    rrca                                          ; $4a83: $0f
    jp nc, $fae2                                  ; $4a84: $d2 $e2 $fa

    ld [c], a                                     ; $4a87: $e2
    ccf                                           ; $4a88: $3f
    add hl, bc                                    ; $4a89: $09
    add hl, bc                                    ; $4a8a: $09
    dec c                                         ; $4a8b: $0d
    dec bc                                        ; $4a8c: $0b
    dec c                                         ; $4a8d: $0d
    rrca                                          ; $4a8e: $0f
    rst $38                                       ; $4a8f: $ff
    ldh [$ca], a                                  ; $4a90: $e0 $ca
    rst $38                                       ; $4a92: $ff
    and [hl]                                      ; $4a93: $a6
    add sp, -$19                                  ; $4a94: $e8 $e7
    ld a, [bc]                                    ; $4a96: $0a
    ld a, [bc]                                    ; $4a97: $0a
    cp [hl]                                       ; $4a98: $be
    pop hl                                        ; $4a99: $e1
    jp z, $0fe1                                   ; $4a9a: $ca $e1 $0f

    ret nz                                        ; $4a9d: $c0

    ldh [$0d], a                                  ; $4a9e: $e0 $0d
    jr z, jr_046_4a62                             ; $4aa0: $28 $c0

    rst $38                                       ; $4aa2: $ff
    ret nz                                        ; $4aa3: $c0

    ldh a, [$fe]                                  ; $4aa4: $f0 $fe
    db $e4                                        ; $4aa6: $e4
    add hl, bc                                    ; $4aa7: $09
    cp a                                          ; $4aa8: $bf
    pop hl                                        ; $4aa9: $e1
    ld a, [bc]                                    ; $4aaa: $0a
    rst $38                                       ; $4aab: $ff
    ldh [$ca], a                                  ; $4aac: $e0 $ca
    rst $38                                       ; $4aae: $ff
    ld [hl], b                                    ; $4aaf: $70
    add b                                         ; $4ab0: $80
    jp hl                                         ; $4ab1: $e9


    adc $e0                                       ; $4ab2: $ce $e0
    ret nz                                        ; $4ab4: $c0

    rst $38                                       ; $4ab5: $ff
    ret nz                                        ; $4ab6: $c0

    ei                                            ; $4ab7: $fb
    ld a, [bc]                                    ; $4ab8: $0a
    ld c, $0e                                     ; $4ab9: $0e $0e
    ld a, d                                       ; $4abb: $7a
    db $e4                                        ; $4abc: $e4
    cp b                                          ; $4abd: $b8
    or c                                          ; $4abe: $b1
    ld [c], a                                     ; $4abf: $e2
    jp z, $c0ff                                   ; $4ac0: $ca $ff $c0

    db $ed                                        ; $4ac3: $ed
    ld a, [bc]                                    ; $4ac4: $0a
    ld a, [bc]                                    ; $4ac5: $0a
    inc c                                         ; $4ac6: $0c
    db $fd                                        ; $4ac7: $fd
    jp nz, $900c                                  ; $4ac8: $c2 $0c $90

    ret nz                                        ; $4acb: $c0

    rst $38                                       ; $4acc: $ff
    ret nz                                        ; $4acd: $c0

    db $f4                                        ; $4ace: $f4
    cp a                                          ; $4acf: $bf
    jp $e280                                      ; $4ad0: $c3 $80 $e2


    ld a, [hl+]                                   ; $4ad3: $2a
    jp z, Jump_046_40ff                           ; $4ad4: $ca $ff $40

    or a                                          ; $4ad7: $b7
    ld c, b                                       ; $4ad8: $48
    nop                                           ; $4ad9: $00
    rst $38                                       ; $4ada: $ff
    ldh [$ca], a                                  ; $4adb: $e0 $ca
    rst $38                                       ; $4add: $ff
    nop                                           ; $4ade: $00
    cp e                                          ; $4adf: $bb
    jp z, $c0ff                                   ; $4ae0: $ca $ff $c0

    rst $38                                       ; $4ae3: $ff
    rst $38                                       ; $4ae4: $ff
    rst $38                                       ; $4ae5: $ff
    ret nz                                        ; $4ae6: $c0

    rst $38                                       ; $4ae7: $ff
    rst $38                                       ; $4ae8: $ff
    rst $38                                       ; $4ae9: $ff
    nop                                           ; $4aea: $00
    dec a                                         ; $4aeb: $3d
    adc [hl]                                      ; $4aec: $8e
    jp nc, $c0ff                                  ; $4aed: $d2 $ff $c0

    rst $38                                       ; $4af0: $ff
    rst $38                                       ; $4af1: $ff
    rst $38                                       ; $4af2: $ff
    ret nz                                        ; $4af3: $c0

    rst $38                                       ; $4af4: $ff
    rst $38                                       ; $4af5: $ff
    rst $38                                       ; $4af6: $ff
    ret nz                                        ; $4af7: $c0

    rst $38                                       ; $4af8: $ff
    rst $38                                       ; $4af9: $ff
    rst $38                                       ; $4afa: $ff
    nop                                           ; $4afb: $00
    ret nz                                        ; $4afc: $c0

    rst $38                                       ; $4afd: $ff
    rst $38                                       ; $4afe: $ff
    rst $38                                       ; $4aff: $ff
    ret nz                                        ; $4b00: $c0

    rst $38                                       ; $4b01: $ff
    ret nz                                        ; $4b02: $c0

    rst $38                                       ; $4b03: $ff
    ret nz                                        ; $4b04: $c0

    rst $38                                       ; $4b05: $ff
    ret nz                                        ; $4b06: $c0

    rst $38                                       ; $4b07: $ff
    ret nz                                        ; $4b08: $c0

    rst $38                                       ; $4b09: $ff
    ret nz                                        ; $4b0a: $c0

    rst $38                                       ; $4b0b: $ff
    nop                                           ; $4b0c: $00
    ret nz                                        ; $4b0d: $c0

    rst $38                                       ; $4b0e: $ff
    ret nz                                        ; $4b0f: $c0

    rst $38                                       ; $4b10: $ff
    rst $38                                       ; $4b11: $ff
    rst $38                                       ; $4b12: $ff
    dec sp                                        ; $4b13: $3b
    or e                                          ; $4b14: $b3
    jp c, $ffff                                   ; $4b15: $da $ff $ff

    rst $38                                       ; $4b18: $ff
    rst $38                                       ; $4b19: $ff
    rst $38                                       ; $4b1a: $ff
    rst $38                                       ; $4b1b: $ff
    rst $38                                       ; $4b1c: $ff
    nop                                           ; $4b1d: $00
    rst $38                                       ; $4b1e: $ff
    rst $38                                       ; $4b1f: $ff
    rst $38                                       ; $4b20: $ff
    rst $38                                       ; $4b21: $ff
    rst $38                                       ; $4b22: $ff
    rst $38                                       ; $4b23: $ff
    rst $38                                       ; $4b24: $ff
    rst $38                                       ; $4b25: $ff
    rst $38                                       ; $4b26: $ff
    rst $38                                       ; $4b27: $ff
    rst $38                                       ; $4b28: $ff
    rst $38                                       ; $4b29: $ff
    rst $38                                       ; $4b2a: $ff
    rst $38                                       ; $4b2b: $ff
    rst $38                                       ; $4b2c: $ff
    rst $38                                       ; $4b2d: $ff
    nop                                           ; $4b2e: $00
    rst $38                                       ; $4b2f: $ff
    rst $38                                       ; $4b30: $ff
    rst $38                                       ; $4b31: $ff
    rst $38                                       ; $4b32: $ff
    rst $38                                       ; $4b33: $ff
    rst $38                                       ; $4b34: $ff
    rst $38                                       ; $4b35: $ff
    rst $38                                       ; $4b36: $ff
    rst $38                                       ; $4b37: $ff
    rst $38                                       ; $4b38: $ff
    rst $38                                       ; $4b39: $ff
    rst $38                                       ; $4b3a: $ff
    rst $38                                       ; $4b3b: $ff
    rst $38                                       ; $4b3c: $ff
    rst $38                                       ; $4b3d: $ff
    rst $38                                       ; $4b3e: $ff
    nop                                           ; $4b3f: $00
    rst $38                                       ; $4b40: $ff
    rst $38                                       ; $4b41: $ff
    rst $38                                       ; $4b42: $ff
    rst $38                                       ; $4b43: $ff
    rst $38                                       ; $4b44: $ff
    rst $38                                       ; $4b45: $ff
    rst $38                                       ; $4b46: $ff
    rst $38                                       ; $4b47: $ff
    rst $38                                       ; $4b48: $ff
    rst $38                                       ; $4b49: $ff
    rst $38                                       ; $4b4a: $ff
    rst $38                                       ; $4b4b: $ff
    rst $38                                       ; $4b4c: $ff
    rst $38                                       ; $4b4d: $ff
    rst $38                                       ; $4b4e: $ff
    rst $38                                       ; $4b4f: $ff
    nop                                           ; $4b50: $00
    rst $38                                       ; $4b51: $ff
    rst $38                                       ; $4b52: $ff
    rst $38                                       ; $4b53: $ff
    rst $38                                       ; $4b54: $ff
    rst $38                                       ; $4b55: $ff
    rst $38                                       ; $4b56: $ff
    rst $38                                       ; $4b57: $ff
    rst $38                                       ; $4b58: $ff
    rst $38                                       ; $4b59: $ff
    rst $38                                       ; $4b5a: $ff
    rst $38                                       ; $4b5b: $ff
    rst $38                                       ; $4b5c: $ff
    rst $38                                       ; $4b5d: $ff
    rst $38                                       ; $4b5e: $ff
    rst $38                                       ; $4b5f: $ff
    rst $38                                       ; $4b60: $ff
    nop                                           ; $4b61: $00
    rst $38                                       ; $4b62: $ff
    rst $38                                       ; $4b63: $ff
    rst $38                                       ; $4b64: $ff
    rst $38                                       ; $4b65: $ff
    rst $38                                       ; $4b66: $ff
    rst $38                                       ; $4b67: $ff
    rst $38                                       ; $4b68: $ff
    rst $38                                       ; $4b69: $ff
    rst $38                                       ; $4b6a: $ff
    rst $38                                       ; $4b6b: $ff
    rst $38                                       ; $4b6c: $ff
    rst $38                                       ; $4b6d: $ff
    rst $38                                       ; $4b6e: $ff
    rst $38                                       ; $4b6f: $ff
    rst $38                                       ; $4b70: $ff
    rst $38                                       ; $4b71: $ff
    nop                                           ; $4b72: $00
    rst $38                                       ; $4b73: $ff
    rst $38                                       ; $4b74: $ff
    rst $38                                       ; $4b75: $ff
    rst $38                                       ; $4b76: $ff
    rst $38                                       ; $4b77: $ff
    rst $38                                       ; $4b78: $ff
    rst $38                                       ; $4b79: $ff
    rst $38                                       ; $4b7a: $ff
    rst $38                                       ; $4b7b: $ff
    rst $38                                       ; $4b7c: $ff
    rst $38                                       ; $4b7d: $ff
    rst $38                                       ; $4b7e: $ff
    rst $38                                       ; $4b7f: $ff
    rst $38                                       ; $4b80: $ff
    rst $38                                       ; $4b81: $ff
    rst $38                                       ; $4b82: $ff
    nop                                           ; $4b83: $00
    rst $38                                       ; $4b84: $ff
    rst $38                                       ; $4b85: $ff
    rst $38                                       ; $4b86: $ff
    rst $38                                       ; $4b87: $ff
    rst $38                                       ; $4b88: $ff
    rst $38                                       ; $4b89: $ff
    rst $38                                       ; $4b8a: $ff
    rst $38                                       ; $4b8b: $ff
    rst $38                                       ; $4b8c: $ff
    rst $38                                       ; $4b8d: $ff
    rst $38                                       ; $4b8e: $ff
    rst $38                                       ; $4b8f: $ff
    rst $38                                       ; $4b90: $ff
    rst $38                                       ; $4b91: $ff
    rst $38                                       ; $4b92: $ff
    rst $38                                       ; $4b93: $ff
    nop                                           ; $4b94: $00
    rst $38                                       ; $4b95: $ff
    rst $38                                       ; $4b96: $ff
    rst $38                                       ; $4b97: $ff
    rst $38                                       ; $4b98: $ff
    rst $38                                       ; $4b99: $ff
    rst $38                                       ; $4b9a: $ff
    rst $38                                       ; $4b9b: $ff
    rst $38                                       ; $4b9c: $ff
    rst $38                                       ; $4b9d: $ff
    rst $38                                       ; $4b9e: $ff
    rst $38                                       ; $4b9f: $ff
    rst $38                                       ; $4ba0: $ff
    rst $38                                       ; $4ba1: $ff
    rst $38                                       ; $4ba2: $ff
    rst $38                                       ; $4ba3: $ff
    xor $00                                       ; $4ba4: $ee $00
    nop                                           ; $4ba6: $00
    nop                                           ; $4ba7: $00
    xor $6b                                       ; $4ba8: $ee $6b
    rst $38                                       ; $4baa: $ff
    ld l, a                                       ; $4bab: $6f
    adc $39                                       ; $4bac: $ce $39
    nop                                           ; $4bae: $00
    nop                                           ; $4baf: $00
    rst $18                                       ; $4bb0: $df
    ld h, e                                       ; $4bb1: $63
    ld a, $26                                     ; $4bb2: $3e $26
    rra                                           ; $4bb4: $1f
    inc bc                                        ; $4bb5: $03
    ld b, [hl]                                    ; $4bb6: $46
    nop                                           ; $4bb7: $00
    rst $18                                       ; $4bb8: $df
    ld h, e                                       ; $4bb9: $63
    ld c, c                                       ; $4bba: $49
    rrca                                          ; $4bbb: $0f
    ld [bc], a                                    ; $4bbc: $02
    ld [bc], a                                    ; $4bbd: $02
    ld b, [hl]                                    ; $4bbe: $46
    nop                                           ; $4bbf: $00
    rst $18                                       ; $4bc0: $df
    ld h, e                                       ; $4bc1: $63
    ld [hl], a                                    ; $4bc2: $77
    ld bc, $7da0                                  ; $4bc3: $01 $a0 $7d
    ld b, [hl]                                    ; $4bc6: $46
    nop                                           ; $4bc7: $00
    rst $18                                       ; $4bc8: $df
    ld h, e                                       ; $4bc9: $63
    rra                                           ; $4bca: $1f
    inc bc                                        ; $4bcb: $03
    ld [bc], a                                    ; $4bcc: $02
    ld [bc], a                                    ; $4bcd: $02
    ld b, [hl]                                    ; $4bce: $46
    nop                                           ; $4bcf: $00
    rst $18                                       ; $4bd0: $df
    ld h, e                                       ; $4bd1: $63
    ld [de], a                                    ; $4bd2: $12
    ld bc, $7da0                                  ; $4bd3: $01 $a0 $7d

jr_046_4bd6:
    ld b, [hl]                                    ; $4bd6: $46
    nop                                           ; $4bd7: $00
    sbc a                                         ; $4bd8: $9f
    ld bc, $0202                                  ; $4bd9: $01 $02 $02
    ld a, [c]                                     ; $4bdc: $f2
    ld [$0046], sp                                ; $4bdd: $08 $46 $00
    rst $18                                       ; $4be0: $df
    ld h, e                                       ; $4be1: $63
    rra                                           ; $4be2: $1f
    inc bc                                        ; $4be3: $03
    sbc a                                         ; $4be4: $9f
    ld bc, $0046                                  ; $4be5: $01 $46 $00
    ei                                            ; $4be8: $fb
    nop                                           ; $4be9: $00
    rst $38                                       ; $4bea: $ff
    cp $f3                                        ; $4beb: $fe $f3
    ld bc, $03ff                                  ; $4bed: $01 $ff $03
    rst $38                                       ; $4bf0: $ff
    ld b, $ff                                     ; $4bf1: $06 $ff
    db $fc                                        ; $4bf3: $fc
    dec c                                         ; $4bf4: $0d
    ld hl, sp+$19                                 ; $4bf5: $f8 $19
    ldh a, [rIF]                                  ; $4bf7: $f0 $0f
    ei                                            ; $4bf9: $fb
    ccf                                           ; $4bfa: $3f
    rst $38                                       ; $4bfb: $ff
    db $fc                                        ; $4bfc: $fc
    db $fc                                        ; $4bfd: $fc
    ldh [$e0], a                                  ; $4bfe: $e0 $e0
    add b                                         ; $4c00: $80
    add a                                         ; $4c01: $87
    nop                                           ; $4c02: $00
    jr @+$01                                      ; $4c03: $18 $ff

    nop                                           ; $4c05: $00
    ld h, b                                       ; $4c06: $60
    nop                                           ; $4c07: $00
    ldh a, [rIE]                                  ; $4c08: $f0 $ff
    adc [hl]                                      ; $4c0a: $8e
    ldh a, [$7d]                                  ; $4c0b: $f0 $7d

jr_046_4c0d:
    rst $38                                       ; $4c0d: $ff
    add e                                         ; $4c0e: $83
    add $3f                                       ; $4c0f: $c6 $3f
    jr c, jr_046_4bd6                             ; $4c11: $38 $c3

    ld hl, sp+$03                                 ; $4c13: $f8 $03
    ldh a, [rIE]                                  ; $4c15: $f0 $ff
    rrca                                          ; $4c17: $0f
    call z, $f830                                 ; $4c18: $cc $30 $f8
    rra                                           ; $4c1b: $1f
    jr c, jr_046_4c2d                             ; $4c1c: $38 $0f

    ld hl, sp-$01                                 ; $4c1e: $f8 $ff
    rst $38                                       ; $4c20: $ff
    ld hl, sp+$0f                                 ; $4c21: $f8 $0f
    ld hl, sp+$0f                                 ; $4c23: $f8 $0f
    db $fc                                        ; $4c25: $fc
    ld a, a                                       ; $4c26: $7f
    ld c, $f7                                     ; $4c27: $0e $f7
    inc bc                                        ; $4c29: $03
    inc bc                                        ; $4c2a: $03
    inc bc                                        ; $4c2b: $03
    or b                                          ; $4c2c: $b0

jr_046_4c2d:
    push hl                                       ; $4c2d: $e5
    inc e                                         ; $4c2e: $1c
    rst $38                                       ; $4c2f: $ff
    ld a, $e3                                     ; $4c30: $3e $e3
    rst $18                                       ; $4c32: $df
    ld h, e                                       ; $4c33: $63
    pop bc                                        ; $4c34: $c1
    pop bc                                        ; $4c35: $c1
    add c                                         ; $4c36: $81
    nop                                           ; $4c37: $00
    rst $38                                       ; $4c38: $ff
    db $ec                                        ; $4c39: $ec
    add hl, de                                    ; $4c3a: $19
    pop af                                        ; $4c3b: $f1
    rst $38                                       ; $4c3c: $ff
    rra                                           ; $4c3d: $1f
    or $0f                                        ; $4c3e: $f6 $0f
    ld hl, sp+$07                                 ; $4c40: $f8 $07
    db $fc                                        ; $4c42: $fc
    rlca                                          ; $4c43: $07
    db $fd                                        ; $4c44: $fd
    rst $38                                       ; $4c45: $ff
    inc bc                                        ; $4c46: $03
    cp $06                                        ; $4c47: $fe $06
    cp $0e                                        ; $4c49: $fe $0e
    ld hl, sp+$03                                 ; $4c4b: $f8 $03
    ret nc                                        ; $4c4d: $d0

    rst $38                                       ; $4c4e: $ff
    nop                                           ; $4c4f: $00
    and a                                         ; $4c50: $a7
    daa                                           ; $4c51: $27
    ret c                                         ; $4c52: $d8

    ld e, [hl]                                    ; $4c53: $5e
    pop hl                                        ; $4c54: $e1
    xor a                                         ; $4c55: $af
    ret nc                                        ; $4c56: $d0

    rst $38                                       ; $4c57: $ff
    adc e                                         ; $4c58: $8b
    ld [hl], h                                    ; $4c59: $74
    sub a                                         ; $4c5a: $97
    ld l, b                                       ; $4c5b: $68
    push bc                                       ; $4c5c: $c5
    ld a, [hl-]                                   ; $4c5d: $3a
    inc a                                         ; $4c5e: $3c
    ret nz                                        ; $4c5f: $c0

    ei                                            ; $4c60: $fb
    cp $00                                        ; $4c61: $fe $00
    cp $e1                                        ; $4c63: $fe $e1
    rst $38                                       ; $4c65: $ff
    nop                                           ; $4c66: $00
    ld a, a                                       ; $4c67: $7f
    add b                                         ; $4c68: $80
    rst $38                                       ; $4c69: $ff
    rst $18                                       ; $4c6a: $df
    nop                                           ; $4c6b: $00
    cp a                                          ; $4c6c: $bf
    ld b, b                                       ; $4c6d: $40
    inc bc                                        ; $4c6e: $03
    ld bc, $e0ff                                  ; $4c6f: $01 $ff $e0
    nop                                           ; $4c72: $00
    nop                                           ; $4c73: $00
    sub $fc                                       ; $4c74: $d6 $fc
    pop hl                                        ; $4c76: $e1
    nop                                           ; $4c77: $00
    add b                                         ; $4c78: $80
    cp $e0                                        ; $4c79: $fe $e0
    add c                                         ; $4c7b: $81
    ld a, [$f0e0]                                 ; $4c7c: $fa $e0 $f0
    and b                                         ; $4c7f: $a0
    rst $38                                       ; $4c80: $ff
    ret c                                         ; $4c81: $d8

    ldh a, [$d8]                                  ; $4c82: $f0 $d8
    ld [hl], b                                    ; $4c84: $70
    ret z                                         ; $4c85: $c8

    ld a, b                                       ; $4c86: $78
    ld c, b                                       ; $4c87: $48
    ld a, b                                       ; $4c88: $78
    rst $28                                       ; $4c89: $ef
    ld l, h                                       ; $4c8a: $6c
    jr c, jr_046_4c0d                             ; $4c8b: $38 $80

    rst $38                                       ; $4c8d: $ff
    cp $e3                                        ; $4c8e: $fe $e3
    ret nz                                        ; $4c90: $c0

    ld a, a                                       ; $4c91: $7f
    ret nz                                        ; $4c92: $c0

    db $eb                                        ; $4c93: $eb
    ld a, a                                       ; $4c94: $7f
    ld b, b                                       ; $4c95: $40
    cp $e0                                        ; $4c96: $fe $e0
    nop                                           ; $4c98: $00
    ld c, b                                       ; $4c99: $48
    ldh [$0e], a                                  ; $4c9a: $e0 $0e
    db $fc                                        ; $4c9c: $fc
    add hl, de                                    ; $4c9d: $19
    rst $28                                       ; $4c9e: $ef
    ldh a, [$32]                                  ; $4c9f: $f0 $32
    ldh [$65], a                                  ; $4ca1: $e0 $65
    db $ed                                        ; $4ca3: $ed
    ldh [rIE], a                                  ; $4ca4: $e0 $ff
    ldh [$7f], a                                  ; $4ca6: $e0 $7f
    rst $38                                       ; $4ca8: $ff
    rst $38                                       ; $4ca9: $ff
    rst $38                                       ; $4caa: $ff
    add b                                         ; $4cab: $80
    cp a                                          ; $4cac: $bf
    ld bc, $027f                                  ; $4cad: $01 $7f $02
    rst $38                                       ; $4cb0: $ff
    rst $08                                       ; $4cb1: $cf
    inc b                                         ; $4cb2: $04
    push af                                       ; $4cb3: $f5
    nop                                           ; $4cb4: $00
    rst $20                                       ; $4cb5: $e7
    inc de                                        ; $4cb6: $13
    ldh [$d0], a                                  ; $4cb7: $e0 $d0
    pop hl                                        ; $4cb9: $e1
    ldh a, [rIE]                                  ; $4cba: $f0 $ff
    rst $38                                       ; $4cbc: $ff
    ldh a, [$1f]                                  ; $4cbd: $f0 $1f
    ldh [$3f], a                                  ; $4cbf: $e0 $3f
    ldh a, [$7f]                                  ; $4cc1: $f0 $7f
    db $fc                                        ; $4cc3: $fc
    rrca                                          ; $4cc4: $0f
    push de                                       ; $4cc5: $d5
    cp $50                                        ; $4cc6: $fe $50
    ldh [$03], a                                  ; $4cc8: $e0 $03
    halt                                          ; $4cca: $76
    ldh [rSC], a                                  ; $4ccb: $e0 $02
    cp $e4                                        ; $4ccd: $fe $e4
    inc bc                                        ; $4ccf: $03
    ld e, [hl]                                    ; $4cd0: $5e
    rst $38                                       ; $4cd1: $ff
    ld sp, hl                                     ; $4cd2: $f9
    db $fc                                        ; $4cd3: $fc
    add hl, bc                                    ; $4cd4: $09
    db $fc                                        ; $4cd5: $fc
    add hl, bc                                    ; $4cd6: $09
    inc e                                         ; $4cd7: $1c
    ld b, h                                       ; $4cd8: $44
    ld a, $ff                                     ; $4cd9: $3e $ff
    db $e4                                        ; $4cdb: $e4
    ld e, $ef                                     ; $4cdc: $1e $ef
    ld e, $d2                                     ; $4cde: $1e $d2
    inc sp                                        ; $4ce0: $33
    jp nc, $ff33                                  ; $4ce1: $d2 $33 $ff

    ld c, e                                       ; $4ce4: $4b
    inc [hl]                                      ; $4ce5: $34
    ld h, d                                       ; $4ce6: $62
    dec e                                         ; $4ce7: $1d
    and l                                         ; $4ce8: $a5
    ld a, [de]                                    ; $4ce9: $1a
    or c                                          ; $4cea: $b1
    ld c, $ff                                     ; $4ceb: $0e $ff
    jp nc, Jump_046_580d                          ; $4ced: $d2 $0d $58

    rlca                                          ; $4cf0: $07
    ld l, c                                       ; $4cf1: $69
    ld b, $ac                                     ; $4cf2: $06 $ac
    inc bc                                        ; $4cf4: $03
    rst $38                                       ; $4cf5: $ff
    rst $38                                       ; $4cf6: $ff
    nop                                           ; $4cf7: $00
    rst $18                                       ; $4cf8: $df
    jr nz, @+$01                                  ; $4cf9: $20 $ff

    nop                                           ; $4cfb: $00
    ld l, a                                       ; $4cfc: $6f
    sub b                                         ; $4cfd: $90
    rst $38                                       ; $4cfe: $ff
    rst $38                                       ; $4cff: $ff
    nop                                           ; $4d00: $00
    or a                                          ; $4d01: $b7
    ld c, b                                       ; $4d02: $48
    ld a, a                                       ; $4d03: $7f
    add b                                         ; $4d04: $80
    ld e, e                                       ; $4d05: $5b
    and h                                         ; $4d06: $a4
    ld e, a                                       ; $4d07: $5f
    ret nz                                        ; $4d08: $c0

    nop                                           ; $4d09: $00
    ret nz                                        ; $4d0a: $c0

    nop                                           ; $4d0b: $00
    ldh [$fe], a                                  ; $4d0c: $e0 $fe
    ldh [$f0], a                                  ; $4d0e: $e0 $f0
    cp $e0                                        ; $4d10: $fe $e0
    db $fd                                        ; $4d12: $fd
    ld hl, sp-$02                                 ; $4d13: $f8 $fe
    ldh [$6c], a                                  ; $4d15: $e0 $6c
    jr c, jr_046_4d3d                             ; $4d17: $38 $24

    inc a                                         ; $4d19: $3c
    inc [hl]                                      ; $4d1a: $34
    inc e                                         ; $4d1b: $1c
    rst $38                                       ; $4d1c: $ff
    inc [hl]                                      ; $4d1d: $34
    inc e                                         ; $4d1e: $1c
    inc d                                         ; $4d1f: $14
    inc e                                         ; $4d20: $1c
    inc e                                         ; $4d21: $1c
    inc c                                         ; $4d22: $0c
    inc e                                         ; $4d23: $1c
    ld [$0d83], sp                                ; $4d24: $08 $83 $0d
    ld [$e16c], sp                                ; $4d27: $08 $6c $e1
    db $fc                                        ; $4d2a: $fc
    db $e3                                        ; $4d2b: $e3
    ld e, [hl]                                    ; $4d2c: $5e
    pop hl                                        ; $4d2d: $e1
    dec l                                         ; $4d2e: $2d
    ldh [$a6], a                                  ; $4d2f: $e0 $a6
    pop bc                                        ; $4d31: $c1
    cp $ff                                        ; $4d32: $fe $ff
    rlca                                          ; $4d34: $07
    db $fd                                        ; $4d35: $fd
    inc c                                         ; $4d36: $0c
    ld hl, sp+$18                                 ; $4d37: $f8 $18
    ldh a, [rSVBK]                                ; $4d39: $f0 $70
    ldh a, [rIE]                                  ; $4d3b: $f0 $ff

jr_046_4d3d:
    call z, $ff8c                                 ; $4d3d: $cc $8c $ff
    sbc b                                         ; $4d40: $98
    adc a                                         ; $4d41: $8f
    rlca                                          ; $4d42: $07
    ld bc, $e700                                  ; $4d43: $01 $00 $e7
    add b                                         ; $4d46: $80
    add b                                         ; $4d47: $80
    ret nz                                        ; $4d48: $c0

    rst $10                                       ; $4d49: $d7
    call nz, $c071                                ; $4d4a: $c4 $71 $c0
    add b                                         ; $4d4d: $80
    rst $38                                       ; $4d4e: $ff
    ld [hl], b                                    ; $4d4f: $70
    rst $38                                       ; $4d50: $ff
    rra                                           ; $4d51: $1f
    ld c, $03                                     ; $4d52: $0e $03
    ld bc, $40e0                                  ; $4d54: $01 $e0 $40
    ld [hl], b                                    ; $4d57: $70
    jr nz, jr_046_4dc5                            ; $4d58: $20 $6b

    db $10                                        ; $4d5a: $10
    db $10                                        ; $4d5b: $10
    ld [hl], a                                    ; $4d5c: $77
    ret nz                                        ; $4d5d: $c0

    ld bc, $c45d                                  ; $4d5e: $01 $5d $c4
    add b                                         ; $4d61: $80
    rst $38                                       ; $4d62: $ff
    rra                                           ; $4d63: $1f
    ldh [$fc], a                                  ; $4d64: $e0 $fc
    rst $18                                       ; $4d66: $df
    db $e3                                        ; $4d67: $e3
    db $10                                        ; $4d68: $10
    ld [c], a                                     ; $4d69: $e2
    ld a, [hl]                                    ; $4d6a: $7e
    ret nz                                        ; $4d6b: $c0

    ld [hl], l                                    ; $4d6c: $75
    ldh [$2a], a                                  ; $4d6d: $e0 $2a
    ld bc, $a97f                                  ; $4d6f: $01 $7f $a9
    ld bc, $0055                                  ; $4d72: $01 $55 $00
    and b                                         ; $4d75: $a0
    nop                                           ; $4d76: $00
    ld b, b                                       ; $4d77: $40
    sbc b                                         ; $4d78: $98
    push bc                                       ; $4d79: $c5
    rst $38                                       ; $4d7a: $ff
    ld l, c                                       ; $4d7b: $69
    add hl, de                                    ; $4d7c: $19
    ld l, c                                       ; $4d7d: $69
    sbc c                                         ; $4d7e: $99
    db $f4                                        ; $4d7f: $f4
    adc h                                         ; $4d80: $8c
    or h                                          ; $4d81: $b4
    call z, Call_046_5aff                         ; $4d82: $cc $ff $5a
    ld h, [hl]                                    ; $4d85: $66
    dec l                                         ; $4d86: $2d
    inc sp                                        ; $4d87: $33
    ld d, $19                                     ; $4d88: $16 $19
    dec bc                                        ; $4d8a: $0b
    inc c                                         ; $4d8b: $0c
    rst $38                                       ; $4d8c: $ff
    inc [hl]                                      ; $4d8d: $34
    add e                                         ; $4d8e: $83
    ld d, [hl]                                    ; $4d8f: $56
    add c                                         ; $4d90: $81
    sbc d                                         ; $4d91: $9a
    pop bc                                        ; $4d92: $c1
    xor e                                         ; $4d93: $ab
    ret nz                                        ; $4d94: $c0

    rst $38                                       ; $4d95: $ff
    ld c, l                                       ; $4d96: $4d
    ld h, b                                       ; $4d97: $60
    ld d, l                                       ; $4d98: $55
    ld h, b                                       ; $4d99: $60
    and [hl]                                      ; $4d9a: $a6
    or b                                          ; $4d9b: $b0
    ld l, d                                       ; $4d9c: $6a
    ldh a, [rIE]                                  ; $4d9d: $f0 $ff
    cp a                                          ; $4d9f: $bf
    ld b, b                                       ; $4da0: $40
    dec l                                         ; $4da1: $2d
    jp nc, $a05f                                  ; $4da2: $d2 $5f $a0

    ld d, $e9                                     ; $4da5: $16 $e9
    rst $38                                       ; $4da7: $ff
    cpl                                           ; $4da8: $2f
    ret nc                                        ; $4da9: $d0

    adc h                                         ; $4daa: $8c
    ld [hl], e                                    ; $4dab: $73
    sub c                                         ; $4dac: $91
    ld l, [hl]                                    ; $4dad: $6e
    reti                                          ; $4dae: $d9


    ld a, $f7                                     ; $4daf: $3e $f7
    db $fc                                        ; $4db1: $fc
    nop                                           ; $4db2: $00
    db $fc                                        ; $4db3: $fc
    db $fd                                        ; $4db4: $fd
    and b                                         ; $4db5: $a0
    ldh a, [rIF]                                  ; $4db6: $f0 $0f
    add a                                         ; $4db8: $87
    ld a, b                                       ; $4db9: $78
    rst $38                                       ; $4dba: $ff
    ccf                                           ; $4dbb: $3f
    ret nz                                        ; $4dbc: $c0

    rst $18                                       ; $4dbd: $df
    jr nz, jr_046_4e3f                            ; $4dbe: $20 $7f

    add b                                         ; $4dc0: $80
    ld d, $0d                                     ; $4dc1: $16 $0d
    rst $38                                       ; $4dc3: $ff
    dec [hl]                                      ; $4dc4: $35

jr_046_4dc5:
    rrca                                          ; $4dc5: $0f
    ld a, l                                       ; $4dc6: $7d
    rst $38                                       ; $4dc7: $ff
    ld b, $fe                                     ; $4dc8: $06 $fe
    db $f4                                        ; $4dca: $f4
    inc c                                         ; $4dcb: $0c
    ccf                                           ; $4dcc: $3f
    db $fc                                        ; $4dcd: $fc
    ld [$18e8], sp                                ; $4dce: $08 $e8 $18
    ld hl, sp+$10                                 ; $4dd1: $f8 $10
    ld c, [hl]                                    ; $4dd3: $4e
    pop hl                                        ; $4dd4: $e1
    ldh a, [$a2]                                  ; $4dd5: $f0 $a2
    rst $38                                       ; $4dd7: $ff
    ld a, a                                       ; $4dd8: $7f
    ld bc, $035f                                  ; $4dd9: $01 $5f $03
    xor [hl]                                      ; $4ddc: $ae
    inc bc                                        ; $4ddd: $03
    ld d, d                                       ; $4dde: $52
    adc [hl]                                      ; $4ddf: $8e
    rst $38                                       ; $4de0: $ff
    adc [hl]                                      ; $4de1: $8e

Call_046_4de2:
    sub a                                         ; $4de2: $97
    sub a                                         ; $4de3: $97
    xor a                                         ; $4de4: $af
    xor a                                         ; $4de5: $af
    rst $18                                       ; $4de6: $df
    rst $18                                       ; $4de7: $df
    rst $38                                       ; $4de8: $ff
    rst $38                                       ; $4de9: $ff
    ld a, h                                       ; $4dea: $7c
    inc a                                         ; $4deb: $3c
    jr jr_046_4e2c                                ; $4dec: $18 $3e

    inc h                                         ; $4dee: $24
    ld h, $22                                     ; $4def: $26 $22
    nop                                           ; $4df1: $00
    rst $38                                       ; $4df2: $ff
    nop                                           ; $4df3: $00
    sbc h                                         ; $4df4: $9c
    nop                                           ; $4df5: $00
    rst $38                                       ; $4df6: $ff
    cp $e3                                        ; $4df7: $fe $e3
    jp Jump_046_7fc2                              ; $4df9: $c3 $c2 $7f


    jp nz, $c5c5                                  ; $4dfc: $c2 $c5 $c5

    set 1, e                                      ; $4dff: $cb $cb

jr_046_4e01:
    rst $10                                       ; $4e01: $d7
    ld d, a                                       ; $4e02: $57
    db $10                                        ; $4e03: $10
    pop bc                                        ; $4e04: $c1
    rst $38                                       ; $4e05: $ff
    add b                                         ; $4e06: $80
    nop                                           ; $4e07: $00
    ret nz                                        ; $4e08: $c0

    ret nz                                        ; $4e09: $c0

    ldh [$e0], a                                  ; $4e0a: $e0 $e0
    pop af                                        ; $4e0c: $f1
    ldh a, [$2f]                                  ; $4e0d: $f0 $2f
    db $fd                                        ; $4e0f: $fd
    db $fc                                        ; $4e10: $fc
    rst $38                                       ; $4e11: $ff
    rst $38                                       ; $4e12: $ff
    ld l, e                                       ; $4e13: $6b
    pop bc                                        ; $4e14: $c1
    rst $38                                       ; $4e15: $ff
    cp $e1                                        ; $4e16: $fe $e1
    ld d, a                                       ; $4e18: $57
    call nz, $e06f                                ; $4e19: $c4 $6f $e0
    jr nc, @-$1e                                  ; $4e1c: $30 $e0

jr_046_4e1e:
    jr nz, jr_046_4e1e                            ; $4e1e: $20 $fe

    ld [c], a                                     ; $4e20: $e2
    ld b, b                                       ; $4e21: $40
    ret nz                                        ; $4e22: $c0

    cp $e1                                        ; $4e23: $fe $e1
    rst $08                                       ; $4e25: $cf
    ret nz                                        ; $4e26: $c0

    dec b                                         ; $4e27: $05
    ld b, $02                                     ; $4e28: $06 $02
    dec e                                         ; $4e2a: $1d
    ret nz                                        ; $4e2b: $c0

jr_046_4e2c:
    jp c, $b3a7                                   ; $4e2c: $da $a7 $b3

    ld a, b                                       ; $4e2f: $78
    rst $38                                       ; $4e30: $ff
    dec d                                         ; $4e31: $15
    ei                                            ; $4e32: $fb
    adc [hl]                                      ; $4e33: $8e
    rst $38                                       ; $4e34: $ff
    ld l, b                                       ; $4e35: $68
    ld a, a                                       ; $4e36: $7f
    inc e                                         ; $4e37: $1c
    rra                                           ; $4e38: $1f
    ld a, h                                       ; $4e39: $7c
    or h                                          ; $4e3a: $b4
    and b                                         ; $4e3b: $a0
    jp Jump_046_62a0                              ; $4e3c: $c3 $a0 $62


jr_046_4e3f:
    db $fd                                        ; $4e3f: $fd
    add b                                         ; $4e40: $80
    rst $38                                       ; $4e41: $ff
    ld bc, $a1f1                                  ; $4e42: $01 $f1 $a1
    cp $58                                        ; $4e45: $fe $58
    and b                                         ; $4e47: $a0
    pop hl                                        ; $4e48: $e1
    rst $38                                       ; $4e49: $ff
    dec de                                        ; $4e4a: $1b
    rra                                           ; $4e4b: $1f
    rst $28                                       ; $4e4c: $ef
    db $10                                        ; $4e4d: $10
    cp a                                          ; $4e4e: $bf
    rst $38                                       ; $4e4f: $ff
    ld b, b                                       ; $4e50: $40
    ld [hl], a                                    ; $4e51: $77
    adc b                                         ; $4e52: $88
    ld e, a                                       ; $4e53: $5f
    and a                                         ; $4e54: $a7
    cp e                                          ; $4e55: $bb
    ld e, h                                       ; $4e56: $5c
    ld l, b                                       ; $4e57: $68
    rst $38                                       ; $4e58: $ff
    ldh a, [$a3]                                  ; $4e59: $f0 $a3
    pop bc                                        ; $4e5b: $c1
    ld c, a                                       ; $4e5c: $4f
    add [hl]                                      ; $4e5d: $86
    ret nc                                        ; $4e5e: $d0

    jr nc, jr_046_4e01                            ; $4e5f: $30 $a0

    rst $38                                       ; $4e61: $ff
    ld h, b                                       ; $4e62: $60
    ld h, b                                       ; $4e63: $60
    ldh [$c0], a                                  ; $4e64: $e0 $c0
    ret nz                                        ; $4e66: $c0

    ret nz                                        ; $4e67: $c0

    add b                                         ; $4e68: $80
    ld b, b                                       ; $4e69: $40
    ld e, [hl]                                    ; $4e6a: $5e
    or d                                          ; $4e6b: $b2
    ldh [$60], a                                  ; $4e6c: $e0 $60
    jr nz, jr_046_4e73                            ; $4e6e: $20 $03

    ld [bc], a                                    ; $4e70: $02
    rst $38                                       ; $4e71: $ff
    rst $20                                       ; $4e72: $e7

jr_046_4e73:
    inc bc                                        ; $4e73: $03
    cp $e0                                        ; $4e74: $fe $e0
    rst $30                                       ; $4e76: $f7
    ld [hl+], a                                   ; $4e77: $22
    nop                                           ; $4e78: $00
    db $10                                        ; $4e79: $10
    ld a, l                                       ; $4e7a: $7d
    and b                                         ; $4e7b: $a0

jr_046_4e7c:
    ld h, b                                       ; $4e7c: $60
    nop                                           ; $4e7d: $00
    ld h, b                                       ; $4e7e: $60
    jr nz, jr_046_4e7c                            ; $4e7f: $20 $fb

    ccf                                           ; $4e81: $3f
    rra                                           ; $4e82: $1f
    ld [hl], h                                    ; $4e83: $74
    and c                                         ; $4e84: $a1
    ld a, a                                       ; $4e85: $7f
    ld a, a                                       ; $4e86: $7f
    ccf                                           ; $4e87: $3f
    rra                                           ; $4e88: $1f
    ld c, $fa                                     ; $4e89: $0e $fa
    jr c, @-$5e                                   ; $4e8b: $38 $a0

    ldh [$8f], a                                  ; $4e8d: $e0 $8f
    call nz, $cfff                                ; $4e8f: $c4 $ff $cf
    add e                                         ; $4e92: $83
    inc bc                                        ; $4e93: $03
    rlca                                          ; $4e94: $07
    rst $38                                       ; $4e95: $ff
    ld [bc], a                                    ; $4e96: $02
    rlca                                          ; $4e97: $07
    inc b                                         ; $4e98: $04
    rrca                                          ; $4e99: $0f
    inc b                                         ; $4e9a: $04
    rra                                           ; $4e9b: $1f
    ld [$ff1f], sp                                ; $4e9c: $08 $1f $ff
    add hl, bc                                    ; $4e9f: $09
    rrca                                          ; $4ea0: $0f
    ld b, $ff                                     ; $4ea1: $06 $ff
    ret nz                                        ; $4ea3: $c0

    rst $38                                       ; $4ea4: $ff
    di                                            ; $4ea5: $f3
    rst $38                                       ; $4ea6: $ff
    rst $38                                       ; $4ea7: $ff
    cp $f3                                        ; $4ea8: $fe $f3
    ld h, c                                       ; $4eaa: $61
    pop bc                                        ; $4eab: $c1
    ld b, b                                       ; $4eac: $40
    adc [hl]                                      ; $4ead: $8e
    adc h                                         ; $4eae: $8c
    jr @+$41                                      ; $4eaf: $18 $3f

    db $10                                        ; $4eb1: $10
    ld sp, $8010                                  ; $4eb2: $31 $10 $80
    add b                                         ; $4eb5: $80
    add b                                         ; $4eb6: $80
    add [hl]                                      ; $4eb7: $86
    and e                                         ; $4eb8: $a3
    rst $38                                       ; $4eb9: $ff
    db $e4                                        ; $4eba: $e4
    adc a                                         ; $4ebb: $8f
    rlca                                          ; $4ebc: $07
    rlca                                          ; $4ebd: $07
    ld [bc], a                                    ; $4ebe: $02
    inc bc                                        ; $4ebf: $03
    xor b                                         ; $4ec0: $a8
    pop hl                                        ; $4ec1: $e1
    and h                                         ; $4ec2: $a4

jr_046_4ec3:
    pop hl                                        ; $4ec3: $e1
    or $e0                                        ; $4ec4: $f6 $e0
    inc bc                                        ; $4ec6: $03
    cp a                                          ; $4ec7: $bf
    adc h                                         ; $4ec8: $8c
    jr jr_046_4ecc                                ; $4ec9: $18 $01

    nop                                           ; $4ecb: $00

jr_046_4ecc:
    inc bc                                        ; $4ecc: $03
    rlca                                          ; $4ecd: $07
    ld h, h                                       ; $4ece: $64
    and c                                         ; $4ecf: $a1
    jp Jump_000_03fd                              ; $4ed0: $c3 $fd $03


    or $a1                                        ; $4ed3: $f6 $a1
    jr nc, @+$32                                  ; $4ed5: $30 $30

    ld hl, sp-$28                                 ; $4ed7: $f8 $d8
    adc b                                         ; $4ed9: $88
    ld [$08ff], sp                                ; $4eda: $08 $ff $08
    ld [$78f8], sp                                ; $4edd: $08 $f8 $78
    adc b                                         ; $4ee0: $88
    adc b                                         ; $4ee1: $88
    inc e                                         ; $4ee2: $1c
    inc e                                         ; $4ee3: $1c
    jp Jump_046_6363                              ; $4ee4: $c3 $63 $63


    ld b, c                                       ; $4ee7: $41
    and c                                         ; $4ee8: $a1
    jr nz, @-$15                                  ; $4ee9: $20 $e9

    ldh a, [$82]                                  ; $4eeb: $f0 $82
    or e                                          ; $4eed: $b3
    pop hl                                        ; $4eee: $e1
    ldh [rLCDC], a                                ; $4eef: $e0 $40
    rst $18                                       ; $4ef1: $df
    ld [hl], h                                    ; $4ef2: $74
    jr z, @+$34                                   ; $4ef3: $28 $32

    dec d                                         ; $4ef5: $15
    ld a, [de]                                    ; $4ef6: $1a
    ldh [$84], a                                  ; $4ef7: $e0 $84
    ld bc, $ff01                                  ; $4ef9: $01 $01 $ff
    ld a, [bc]                                    ; $4efc: $0a
    rla                                           ; $4efd: $17
    ld b, b                                       ; $4efe: $40
    cpl                                           ; $4eff: $2f
    sub b                                         ; $4f00: $90
    ld a, a                                       ; $4f01: $7f
    add b                                         ; $4f02: $80
    inc d                                         ; $4f03: $14
    rst $38                                       ; $4f04: $ff
    ld a, [hl+]                                   ; $4f05: $2a
    jr z, @+$57                                   ; $4f06: $28 $55

    ld e, h                                       ; $4f08: $5c
    and d                                         ; $4f09: $a2
    cp [hl]                                       ; $4f0a: $be
    ld b, c                                       ; $4f0b: $41
    ld a, l                                       ; $4f0c: $7d
    rst $38                                       ; $4f0d: $ff
    add e                                         ; $4f0e: $83
    rst $38                                       ; $4f0f: $ff
    rrca                                          ; $4f10: $0f
    db $db                                        ; $4f11: $db
    dec sp                                        ; $4f12: $3b
    pop af                                        ; $4f13: $f1
    ld sp, $ff31                                  ; $4f14: $31 $31 $ff
    ld hl, $0123                                  ; $4f17: $21 $23 $01
    ld c, $82                                     ; $4f1a: $0e $82
    rst $38                                       ; $4f1c: $ff
    rst $28                                       ; $4f1d: $ef
    ccf                                           ; $4f1e: $3f
    ld a, a                                       ; $4f1f: $7f
    ld e, c                                       ; $4f20: $59
    rra                                           ; $4f21: $1f
    jr nc, jr_046_4ec3                            ; $4f22: $30 $9f

    ld [hl], b                                    ; $4f24: $70
    rst $38                                       ; $4f25: $ff
    ldh [$b0], a                                  ; $4f26: $e0 $b0
    add l                                         ; $4f28: $85
    ld hl, sp+$0e                                 ; $4f29: $f8 $0e
    ldh [$c0], a                                  ; $4f2b: $e0 $c0
    jp nz, $86a0                                  ; $4f2d: $c2 $a0 $86

    rrca                                          ; $4f30: $0f
    nop                                           ; $4f31: $00
    rra                                           ; $4f32: $1f
    nop                                           ; $4f33: $00
    ccf                                           ; $4f34: $3f
    di                                            ; $4f35: $f3
    nop                                           ; $4f36: $00
    ld a, a                                       ; $4f37: $7f
    sub b                                         ; $4f38: $90
    db $e3                                        ; $4f39: $e3
    res 0, b                                      ; $4f3a: $cb $80
    pop hl                                        ; $4f3c: $e1
    ld bc, $02f1                                  ; $4f3d: $01 $f1 $02
    rst $38                                       ; $4f40: $ff
    ld a, [$fe02]                                 ; $4f41: $fa $02 $fe
    db $fd                                        ; $4f44: $fd
    inc bc                                        ; $4f45: $03
    or $0e                                        ; $4f46: $f6 $0e
    reti                                          ; $4f48: $d9


    rst $38                                       ; $4f49: $ff
    ld a, [hl-]                                   ; $4f4a: $3a
    ld l, e                                       ; $4f4b: $6b
    ld h, h                                       ; $4f4c: $64
    ld b, d                                       ; $4f4d: $42
    ld a, l                                       ; $4f4e: $7d
    ld d, l                                       ; $4f4f: $55
    ld l, d                                       ; $4f50: $6a
    ld sp, $6eff                                  ; $4f51: $31 $ff $6e
    ld a, [hl-]                                   ; $4f54: $3a
    dec h                                         ; $4f55: $25
    adc l                                         ; $4f56: $8d
    add e                                         ; $4f57: $83
    ld [hl], a                                    ; $4f58: $77
    ld bc, $effa                                  ; $4f59: $01 $fa $ef
    ld bc, $00fd                                  ; $4f5c: $01 $fd $00
    db $fd                                        ; $4f5f: $fd
    sbc d                                         ; $4f60: $9a
    add b                                         ; $4f61: $80
    ld a, [hl]                                    ; $4f62: $7e
    add b                                         ; $4f63: $80
    db $fc                                        ; $4f64: $fc
    cp $71                                        ; $4f65: $fe $71
    db $e4                                        ; $4f67: $e4
    ret nz                                        ; $4f68: $c0

    ret nz                                        ; $4f69: $c0

    ld l, a                                       ; $4f6a: $6f
    jp Jump_046_7cb7                              ; $4f6b: $c3 $b7 $7c


    rra                                           ; $4f6e: $1f
    rst $38                                       ; $4f6f: $ff
    jr z, jr_046_4faf                             ; $4f70: $28 $3d

    rst $00                                       ; $4f72: $c7
    rrca                                          ; $4f73: $0f
    ld [$0407], sp                                ; $4f74: $08 $07 $04
    dec b                                         ; $4f77: $05
    rst $38                                       ; $4f78: $ff
    ld b, $1b                                     ; $4f79: $06 $1b
    inc a                                         ; $4f7b: $3c
    cp l                                          ; $4f7c: $bd
    xor $7f                                       ; $4f7d: $ee $7f
    add $fe                                       ; $4f7f: $c6 $fe
    ld sp, hl                                     ; $4f81: $f9
    add e                                         ; $4f82: $83
    ei                                            ; $4f83: $fb
    ld h, b                                       ; $4f84: $60
    rst $18                                       ; $4f85: $df
    ld h, d                                       ; $4f86: $62
    db $fd                                        ; $4f87: $fd
    inc bc                                        ; $4f88: $03
    rst $28                                       ; $4f89: $ef
    ld e, $bf                                     ; $4f8a: $1e $bf
    db $dd                                        ; $4f8c: $dd
    ld [hl], b                                    ; $4f8d: $70
    db $e4                                        ; $4f8e: $e4
    ret nz                                        ; $4f8f: $c0

    nop                                           ; $4f90: $00
    and c                                         ; $4f91: $a1
    ld h, c                                       ; $4f92: $61
    sub b                                         ; $4f93: $90
    ret nz                                        ; $4f94: $c0

    ldh a, [$f0]                                  ; $4f95: $f0 $f0
    rst $38                                       ; $4f97: $ff
    or b                                          ; $4f98: $b0
    ldh a, [rNR23]                                ; $4f99: $f0 $18
    ld hl, sp+$08                                 ; $4f9b: $f8 $08
    ld hl, sp+$1c                                 ; $4f9d: $f8 $1c
    db $fc                                        ; $4f9f: $fc
    ld a, a                                       ; $4fa0: $7f
    ld h, h                                       ; $4fa1: $64
    rst $38                                       ; $4fa2: $ff
    add a                                         ; $4fa3: $87
    db $fc                                        ; $4fa4: $fc
    call nz, Call_046_7c7c                        ; $4fa5: $c4 $7c $7c
    dec h                                         ; $4fa8: $25
    jp hl                                         ; $4fa9: $e9


    db $fc                                        ; $4faa: $fc
    ld c, $8b                                     ; $4fab: $0e $8b
    and c                                         ; $4fad: $a1
    ld h, c                                       ; $4fae: $61

jr_046_4faf:
    ldh a, [rIF]                                  ; $4faf: $f0 $0f
    ldh [$1f], a                                  ; $4fb1: $e0 $1f
    ret nz                                        ; $4fb3: $c0

    ccf                                           ; $4fb4: $3f
    db $fd                                        ; $4fb5: $fd
    add b                                         ; $4fb6: $80
    ld h, h                                       ; $4fb7: $64
    add b                                         ; $4fb8: $80
    inc b                                         ; $4fb9: $04
    rst $38                                       ; $4fba: $ff
    rst $38                                       ; $4fbb: $ff
    nop                                           ; $4fbc: $00
    cp $01                                        ; $4fbd: $fe $01
    rst $38                                       ; $4fbf: $ff
    ld a, h                                       ; $4fc0: $7c
    add e                                         ; $4fc1: $83
    jr c, @-$37                                   ; $4fc2: $38 $c7

    db $10                                        ; $4fc4: $10
    rst $28                                       ; $4fc5: $ef
    nop                                           ; $4fc6: $00
    rst $38                                       ; $4fc7: $ff
    ld a, c                                       ; $4fc8: $79
    db $10                                        ; $4fc9: $10
    cp $e0                                        ; $4fca: $fe $e0
    add b                                         ; $4fcc: $80
    ld l, c                                       ; $4fcd: $69
    ld b, b                                       ; $4fce: $40
    rst $38                                       ; $4fcf: $ff
    ld b, d                                       ; $4fd0: $42
    rst $38                                       ; $4fd1: $ff
    halt                                          ; $4fd2: $76
    add c                                         ; $4fd3: $81
    rst $30                                       ; $4fd4: $f7
    ld b, $fc                                     ; $4fd5: $06 $fc
    inc b                                         ; $4fd7: $04
    cp $e4                                        ; $4fd8: $fe $e4
    ld b, $fc                                     ; $4fda: $06 $fc
    jr z, jr_046_5015                             ; $4fdc: $28 $37

    rst $38                                       ; $4fde: $ff
    dec e                                         ; $4fdf: $1d
    ld [hl-], a                                   ; $4fe0: $32
    inc e                                         ; $4fe1: $1c
    inc de                                        ; $4fe2: $13
    jr c, jr_046_4ff6                             ; $4fe3: $38 $11

    jr nc, jr_046_5006                            ; $4fe5: $30 $1f

    rst $38                                       ; $4fe7: $ff
    ld h, e                                       ; $4fe8: $63
    inc a                                         ; $4fe9: $3c
    ld h, c                                       ; $4fea: $61
    ccf                                           ; $4feb: $3f
    sbc [hl]                                      ; $4fec: $9e
    ld a, a                                       ; $4fed: $7f
    or b                                          ; $4fee: $b0
    ld b, e                                       ; $4fef: $43
    rst $38                                       ; $4ff0: $ff
    ld b, e                                       ; $4ff1: $43
    adc h                                         ; $4ff2: $8c
    ld c, $b1                                     ; $4ff3: $0e $b1
    dec sp                                        ; $4ff5: $3b

jr_046_4ff6:
    rst $00                                       ; $4ff6: $c7
    db $ed                                        ; $4ff7: $ed
    ld e, $ff                                     ; $4ff8: $1e $ff
    or a                                          ; $4ffa: $b7
    ld a, b                                       ; $4ffb: $78
    rst $38                                       ; $4ffc: $ff
    ldh [$5e], a                                  ; $4ffd: $e0 $5e
    pop hl                                        ; $4fff: $e1

Jump_046_5000:
    rst $28                                       ; $5000: $ef
    dec e                                         ; $5001: $1d
    rst $28                                       ; $5002: $ef
    or [hl]                                       ; $5003: $b6
    ld a, c                                       ; $5004: $79
    rst $18                                       ; $5005: $df

jr_046_5006:
    ldh [$d4], a                                  ; $5006: $e0 $d4
    ld h, c                                       ; $5008: $61
    rst $18                                       ; $5009: $df
    jr nz, @-$3f                                  ; $500a: $20 $bf

    cp a                                          ; $500c: $bf
    ld h, b                                       ; $500d: $60
    ld e, a                                       ; $500e: $5f
    ldh [$03], a                                  ; $500f: $e0 $03
    rst $38                                       ; $5011: $ff

jr_046_5012:
    add l                                         ; $5012: $85
    cp $e0                                        ; $5013: $fe $e0

jr_046_5015:
    ld c, d                                       ; $5015: $4a
    sbc a                                         ; $5016: $9f
    db $fd                                        ; $5017: $fd
    or e                                          ; $5018: $b3
    ld a, d                                       ; $5019: $7a
    rst $00                                       ; $501a: $c7
    ld a, $c4                                     ; $501b: $3e $c4
    add c                                         ; $501d: $81
    ld [hl], $61                                  ; $501e: $36 $61
    ld [bc], a                                    ; $5020: $02
    rst $38                                       ; $5021: $ff
    rst $38                                       ; $5022: $ff
    add l                                         ; $5023: $85
    cp $cb                                        ; $5024: $fe $cb
    db $fc                                        ; $5026: $fc
    ld [hl], a                                    ; $5027: $77
    ld hl, sp-$71                                 ; $5028: $f8 $8f
    rst $38                                       ; $502a: $ff
    ld [hl], b                                    ; $502b: $70
    rst $38                                       ; $502c: $ff
    nop                                           ; $502d: $00
    cp d                                          ; $502e: $ba
    add $7d                                       ; $502f: $c6 $7d
    add e                                         ; $5031: $83
    cp $f8                                        ; $5032: $fe $f8

jr_046_5034:
    xor [hl]                                      ; $5034: $ae
    add l                                         ; $5035: $85
    inc bc                                        ; $5036: $03
    ld h, b                                       ; $5037: $60
    ld [hl], c                                    ; $5038: $71
    jp $c040                                      ; $5039: $c3 $40 $c0


    and b                                         ; $503c: $a0
    ld h, b                                       ; $503d: $60
    ldh [$5f], a                                  ; $503e: $e0 $5f
    jr nc, jr_046_5012                            ; $5040: $30 $d0

    jr nc, jr_046_5034                            ; $5042: $30 $f0

    jr @+$52                                      ; $5044: $18 $50

    ld h, c                                       ; $5046: $61
    rlca                                          ; $5047: $07
    or e                                          ; $5048: $b3
    ret nz                                        ; $5049: $c0

    rst $18                                       ; $504a: $df
    inc e                                         ; $504b: $1c
    inc bc                                        ; $504c: $03
    jr c, jr_046_5056                             ; $504d: $38 $07

    ld [hl], b                                    ; $504f: $70
    ld c, b                                       ; $5050: $48
    ldh [rDIV], a                                 ; $5051: $e0 $04
    rst $38                                       ; $5053: $ff
    rst $38                                       ; $5054: $ff

jr_046_5055:
    adc [hl]                                      ; $5055: $8e

jr_046_5056:
    ei                                            ; $5056: $fb
    adc [hl]                                      ; $5057: $8e

jr_046_5058:
    ei                                            ; $5058: $fb
    db $db                                        ; $5059: $db
    ld a, l                                       ; $505a: $7d
    db $db                                        ; $505b: $db
    ld a, l                                       ; $505c: $7d
    rst $38                                       ; $505d: $ff
    ld [hl], l                                    ; $505e: $75
    cp [hl]                                       ; $505f: $be
    ld [hl], l                                    ; $5060: $75
    cp [hl]                                       ; $5061: $be
    ld l, d                                       ; $5062: $6a
    db $fd                                        ; $5063: $fd
    jr c, jr_046_5055                             ; $5064: $38 $ef

    rst $38                                       ; $5066: $ff
    jr c, jr_046_5058                             ; $5067: $38 $ef

    ld l, l                                       ; $5069: $6d
    rst $30                                       ; $506a: $f7
    ld l, l                                       ; $506b: $6d
    rst $30                                       ; $506c: $f7
    rst $10                                       ; $506d: $d7
    ei                                            ; $506e: $fb
    rst $38                                       ; $506f: $ff
    rst $10                                       ; $5070: $d7
    ei                                            ; $5071: $fb
    and [hl]                                      ; $5072: $a6
    rst $38                                       ; $5073: $ff
    and $7f                                       ; $5074: $e6 $7f
    ld [c], a                                     ; $5076: $e2
    cp a                                          ; $5077: $bf
    rst $38                                       ; $5078: $ff
    rst $20                                       ; $5079: $e7
    cp l                                          ; $507a: $bd
    or a                                          ; $507b: $b7
    db $dd                                        ; $507c: $dd
    cp a                                          ; $507d: $bf
    sbc $5f                                       ; $507e: $de $5f
    xor $ff                                       ; $5080: $ee $ff
    ld e, h                                       ; $5082: $5c
    rst $28                                       ; $5083: $ef
    xor h                                         ; $5084: $ac
    rst $10                                       ; $5085: $d7
    xor l                                         ; $5086: $ad
    sub $06                                       ; $5087: $d6 $06
    rst $38                                       ; $5089: $ff
    rst $38                                       ; $508a: $ff
    dec bc                                        ; $508b: $0b
    rst $38                                       ; $508c: $ff
    dec bc                                        ; $508d: $0b
    db $fd                                        ; $508e: $fd
    sub l                                         ; $508f: $95
    rst $38                                       ; $5090: $ff
    sub l                                         ; $5091: $95
    rst $38                                       ; $5092: $ff
    cp a                                          ; $5093: $bf
    ld [$aa7d], a                                 ; $5094: $ea $7d $aa
    ld a, l                                       ; $5097: $7d
    ld d, c                                       ; $5098: $51
    cp $a1                                        ; $5099: $fe $a1
    jp $ffe0                                      ; $509b: $c3 $e0 $ff


    ld hl, sp-$01                                 ; $509e: $f8 $ff
    ld e, a                                       ; $50a0: $5f
    rst $38                                       ; $50a1: $ff
    or c                                          ; $50a2: $b1
    rst $38                                       ; $50a3: $ff
    or b                                          ; $50a4: $b0
    rst $38                                       ; $50a5: $ff
    rst $38                                       ; $50a6: $ff
    ld l, b                                       ; $50a7: $68
    ld b, b                                       ; $50a8: $40
    ld b, b                                       ; $50a9: $40
    jr nz, jr_046_510d                            ; $50aa: $20 $61

    inc hl                                        ; $50ac: $23
    daa                                           ; $50ad: $27
    cpl                                           ; $50ae: $2f
    rst $38                                       ; $50af: $ff
    ld a, a                                       ; $50b0: $7f
    rst $38                                       ; $50b1: $ff
    db $fd                                        ; $50b2: $fd
    rst $38                                       ; $50b3: $ff
    dec d                                         ; $50b4: $15
    rst $38                                       ; $50b5: $ff
    xor e                                         ; $50b6: $ab
    cp $7d                                        ; $50b7: $fe $7d
    xor d                                         ; $50b9: $aa
    sub b                                         ; $50ba: $90
    and b                                         ; $50bb: $a0
    ret nz                                        ; $50bc: $c0

jr_046_50bd:
    cp a                                          ; $50bd: $bf
    ret nz                                        ; $50be: $c0

    rst $38                                       ; $50bf: $ff

Jump_046_50c0:
    add b                                         ; $50c0: $80
    push hl                                       ; $50c1: $e5
    ld h, d                                       ; $50c2: $62
    cp $73                                        ; $50c3: $fe $73

jr_046_50c5:
    ld b, b                                       ; $50c5: $40
    xor $0b                                       ; $50c6: $ee $0b
    rst $38                                       ; $50c8: $ff
    ld a, [de]                                    ; $50c9: $1a

jr_046_50ca:
    rst $38                                       ; $50ca: $ff
    ld [bc], a                                    ; $50cb: $02
    db $fd                                        ; $50cc: $fd
    rst $18                                       ; $50cd: $df
    ld h, $df                                     ; $50ce: $26 $df
    inc a                                         ; $50d0: $3c
    db $e3                                        ; $50d1: $e3
    inc e                                         ; $50d2: $1c
    ld h, l                                       ; $50d3: $65
    ld b, [hl]                                    ; $50d4: $46
    rlca                                          ; $50d5: $07
    cp $3f                                        ; $50d6: $fe $3f
    jr jr_046_50ca                                ; $50d8: $18 $f0

    jr nz, jr_046_50bd                            ; $50da: $20 $e1

    jr nz, jr_046_50c5                            ; $50dc: $20 $e7

    or [hl]                                       ; $50de: $b6
    add c                                         ; $50df: $81
    ld c, a                                       ; $50e0: $4f
    ld b, b                                       ; $50e1: $40
    rst $38                                       ; $50e2: $ff
    rst $28                                       ; $50e3: $ef
    ldh a, [$37]                                  ; $50e4: $f0 $37
    jr @+$0d                                      ; $50e6: $18 $0b

    inc c                                         ; $50e8: $0c
    rlc h                                         ; $50e9: $cb $04
    rst $38                                       ; $50eb: $ff
    rst $20                                       ; $50ec: $e7
    inc b                                         ; $50ed: $04
    jp $ff02                                      ; $50ee: $c3 $02 $ff


    ld [$0aff], sp                                ; $50f1: $08 $ff $0a
    cp e                                          ; $50f4: $bb
    rst $38                                       ; $50f5: $ff
    ld b, $fe                                     ; $50f6: $06 $fe
    ldh [rTIMA], a                                ; $50f8: $e0 $05
    ei                                            ; $50fa: $fb
    rlca                                          ; $50fb: $07
    rla                                           ; $50fc: $17
    ldh [rSC], a                                  ; $50fd: $e0 $02
    rst $38                                       ; $50ff: $ff
    pop bc                                        ; $5100: $c1
    ccf                                           ; $5101: $3f
    and c                                         ; $5102: $a1
    ld a, a                                       ; $5103: $7f
    inc hl                                        ; $5104: $23
    rst $38                                       ; $5105: $ff
    ld [hl], e                                    ; $5106: $73
    rst $18                                       ; $5107: $df
    rst $38                                       ; $5108: $ff
    halt                                          ; $5109: $76
    rst $18                                       ; $510a: $df
    sbc [hl]                                      ; $510b: $9e
    rst $28                                       ; $510c: $ef

jr_046_510d:
    sbc l                                         ; $510d: $9d
    rst $28                                       ; $510e: $ef
    xor l                                         ; $510f: $ad
    rst $18                                       ; $5110: $df
    rst $38                                       ; $5111: $ff
    ld l, d                                       ; $5112: $6a
    db $fd                                        ; $5113: $fd
    pop de                                        ; $5114: $d1
    cp $d1                                        ; $5115: $fe $d1
    cp $a0                                        ; $5117: $fe $a0
    rst $38                                       ; $5119: $ff
    rst $18                                       ; $511a: $df
    and b                                         ; $511b: $a0
    rst $38                                       ; $511c: $ff
    rst $38                                       ; $511d: $ff
    rst $38                                       ; $511e: $ff
    ld c, $fe                                     ; $511f: $0e $fe
    ldh [$cd], a                                  ; $5121: $e0 $cd
    ld a, a                                       ; $5123: $7f
    rst $38                                       ; $5124: $ff
    ld l, l                                       ; $5125: $6d
    cp a                                          ; $5126: $bf
    ld a, d                                       ; $5127: $7a
    cp a                                          ; $5128: $bf
    cp d                                          ; $5129: $ba
    ld e, a                                       ; $512a: $5f
    cp a                                          ; $512b: $bf
    ld e, a                                       ; $512c: $5f
    rst $30                                       ; $512d: $f7
    ld hl, sp-$01                                 ; $512e: $f8 $ff
    jr c, @+$06                                   ; $5130: $38 $04

    ld b, b                                       ; $5132: $40
    rla                                           ; $5133: $17
    ld [$eb16], a                                 ; $5134: $ea $16 $eb
    ld a, a                                       ; $5137: $7f
    dec bc                                        ; $5138: $0b
    push af                                       ; $5139: $f5
    dec bc                                        ; $513a: $0b
    push af                                       ; $513b: $f5
    rst $38                                       ; $513c: $ff
    rst $38                                       ; $513d: $ff
    db $e3                                        ; $513e: $e3
    cp $e0                                        ; $513f: $fe $e0
    rst $00                                       ; $5141: $c7
    nop                                           ; $5142: $00
    rst $38                                       ; $5143: $ff
    ld d, c                                       ; $5144: $51
    call nc, Call_046_4de2                        ; $5145: $d4 $e2 $4d
    add c                                         ; $5148: $81
    ret nc                                        ; $5149: $d0

    db $e3                                        ; $514a: $e3
    rst $38                                       ; $514b: $ff
    ld l, b                                       ; $514c: $68
    ei                                            ; $514d: $fb
    rst $38                                       ; $514e: $ff

jr_046_514f:
    jr nc, jr_046_514f                            ; $514f: $30 $fe

    ldh [rNR23], a                                ; $5151: $e0 $18
    rst $38                                       ; $5153: $ff
    rra                                           ; $5154: $1f
    rst $38                                       ; $5155: $ff
    xor $ee                                       ; $5156: $ee $ee
    cp a                                          ; $5158: $bf
    ldh [rP1], a                                  ; $5159: $e0 $00
    cp $52                                        ; $515b: $fe $52
    cp $e0                                        ; $515d: $fe $e0
    ld [hl+], a                                   ; $515f: $22
    db $fc                                        ; $5160: $fc
    inc h                                         ; $5161: $24
    cpl                                           ; $5162: $2f
    db $fc                                        ; $5163: $fc
    db $fc                                        ; $5164: $fc
    db $fc                                        ; $5165: $fc
    inc e                                         ; $5166: $1c
    cp $e0                                        ; $5167: $fe $e0
    inc b                                         ; $5169: $04
    pop bc                                        ; $516a: $c1
    ld l, $12                                     ; $516b: $2e $12

jr_046_516d:
    add c                                         ; $516d: $81
    ld sp, hl                                     ; $516e: $f9

jr_046_516f:
    jr nz, jr_046_516f                            ; $516f: $20 $fe

    ldh [rNR44], a                                ; $5171: $e0 $23
    pop bc                                        ; $5173: $c1
    ld [$08ff], sp                                ; $5174: $08 $ff $08
    db $e3                                        ; $5177: $e3
    ld [bc], a                                    ; $5178: $02
    rst $18                                       ; $5179: $df
    db $e3                                        ; $517a: $e3
    ld [bc], a                                    ; $517b: $02
    rst $30                                       ; $517c: $f7
    ld [bc], a                                    ; $517d: $02
    rst $20                                       ; $517e: $e7
    ld h, [hl]                                    ; $517f: $66
    ldh [$ef], a                                  ; $5180: $e0 $ef
    dec b                                         ; $5182: $05
    rst $38                                       ; $5183: $ff
    cp $07                                        ; $5184: $fe $07
    cp $06                                        ; $5186: $fe $06
    rst $38                                       ; $5188: $ff
    ld [bc], a                                    ; $5189: $02
    ei                                            ; $518a: $fb
    dec e                                         ; $518b: $1d
    rst $38                                       ; $518c: $ff
    db $fd                                        ; $518d: $fd
    ld a, a                                       ; $518e: $7f
    rst $00                                       ; $518f: $c7
    rst $38                                       ; $5190: $ff
    add c                                         ; $5191: $81
    jp $8301                                      ; $5192: $c3 $01 $83


    cp [hl]                                       ; $5195: $be
    ld e, a                                       ; $5196: $5f
    add c                                         ; $5197: $81
    ld a, d                                       ; $5198: $7a
    rst $18                                       ; $5199: $df
    ld e, d                                       ; $519a: $5a
    rst $38                                       ; $519b: $ff
    inc [hl]                                      ; $519c: $34
    cp $e0                                        ; $519d: $fe $e0
    add sp, $63                                   ; $519f: $e8 $63
    rst $38                                       ; $51a1: $ff
    ccf                                           ; $51a2: $3f
    sub e                                         ; $51a3: $93
    and d                                         ; $51a4: $a2
    rst $38                                       ; $51a5: $ff
    db $ed                                        ; $51a6: $ed
    ld h, b                                       ; $51a7: $60
    ld a, [hl+]                                   ; $51a8: $2a
    rrca                                          ; $51a9: $0f
    nop                                           ; $51aa: $00
    jr nc, jr_046_516d                            ; $51ab: $30 $c0

    cp d                                          ; $51ad: $ba
    ld c, [hl]                                    ; $51ae: $4e
    inc h                                         ; $51af: $24
    cp $47                                        ; $51b0: $fe $47

jr_046_51b2:
    ld h, b                                       ; $51b2: $60
    db $fc                                        ; $51b3: $fc
    nop                                           ; $51b4: $00

jr_046_51b5:
    ld sp, hl                                     ; $51b5: $f9
    ld b, b                                       ; $51b6: $40
    inc h                                         ; $51b7: $24
    add c                                         ; $51b8: $81
    cp a                                          ; $51b9: $bf
    nop                                           ; $51ba: $00
    ld a, [hl+]                                   ; $51bb: $2a
    nop                                           ; $51bc: $00
    ld d, l                                       ; $51bd: $55
    nop                                           ; $51be: $00
    xor d                                         ; $51bf: $aa
    db $fc                                        ; $51c0: $fc
    ldh [rP1], a                                  ; $51c1: $e0 $00
    jp Jump_046_5000                              ; $51c3: $c3 $00 $50


    ld hl, sp-$1e                                 ; $51c6: $f8 $e2
    db $fc                                        ; $51c8: $fc
    push hl                                       ; $51c9: $e5
    or a                                          ; $51ca: $b7
    jr nz, jr_046_51b5                            ; $51cb: $20 $e8

    add b                                         ; $51cd: $80
    ccf                                           ; $51ce: $3f
    nop                                           ; $51cf: $00
    add a                                         ; $51d0: $87
    sbc a                                         ; $51d1: $9f
    nop                                           ; $51d2: $00
    ld b, c                                       ; $51d3: $41
    ldh a, [$e4]                                  ; $51d4: $f0 $e4
    ld c, $27                                     ; $51d6: $0e $27
    and $e1                                       ; $51d8: $e6 $e1
    nop                                           ; $51da: $00
    daa                                           ; $51db: $27
    db $fc                                        ; $51dc: $fc
    rst $38                                       ; $51dd: $ff
    nop                                           ; $51de: $00
    ld a, [$d500]                                 ; $51df: $fa $00 $d5
    nop                                           ; $51e2: $00
    ld a, [c]                                     ; $51e3: $f2
    nop                                           ; $51e4: $00
    push af                                       ; $51e5: $f5
    ei                                            ; $51e6: $fb
    nop                                           ; $51e7: $00

jr_046_51e8:
    ld [$e0f8], a                                 ; $51e8: $ea $f8 $e0
    ld a, [hl+]                                   ; $51eb: $2a
    nop                                           ; $51ec: $00
    ld d, h                                       ; $51ed: $54
    nop                                           ; $51ee: $00
    xor b                                         ; $51ef: $a8
    ld [de], a                                    ; $51f0: $12
    or h                                          ; $51f1: $b4
    add sp, -$7e                                  ; $51f2: $e8 $82
    add h                                         ; $51f4: $84
    ldh [$33], a                                  ; $51f5: $e0 $33
    ld hl, $f8aa                                  ; $51f7: $21 $aa $f8
    db $e4                                        ; $51fa: $e4
    daa                                           ; $51fb: $27
    dec h                                         ; $51fc: $25

jr_046_51fd:
    adc h                                         ; $51fd: $8c
    pop hl                                        ; $51fe: $e1
    rst $18                                       ; $51ff: $df
    ld a, [hl+]                                   ; $5200: $2a
    nop                                           ; $5201: $00
    dec d                                         ; $5202: $15
    nop                                           ; $5203: $00
    ld a, [bc]                                    ; $5204: $0a
    ldh [$e4], a                                  ; $5205: $e0 $e4
    adc a                                         ; $5207: $8f
    nop                                           ; $5208: $00
    dec h                                         ; $5209: $25

jr_046_520a:
    ld d, a                                       ; $520a: $57
    add b                                         ; $520b: $80
    and $02                                       ; $520c: $e6 $02
    rst $38                                       ; $520e: $ff
    add h                                         ; $520f: $84
    ld a, h                                       ; $5210: $7c
    pop hl                                        ; $5211: $e1
    xor a                                         ; $5212: $af

jr_046_5213:
    add sp, -$1c                                  ; $5213: $e8 $e4
    sub b                                         ; $5215: $90
    dec bc                                        ; $5216: $0b
    db $fd                                        ; $5217: $fd
    ld d, a                                       ; $5218: $57
    jr nc, jr_046_525f                            ; $5219: $30 $44

    db $fd                                        ; $521b: $fd
    add b                                         ; $521c: $80
    ld a, [$55c0]                                 ; $521d: $fa $c0 $55
    ret nz                                        ; $5220: $c0

    ld d, a                                       ; $5221: $57
    ld l, d                                       ; $5222: $6a
    ret nz                                        ; $5223: $c0

    ld d, b                                       ; $5224: $50
    inc bc                                        ; $5225: $03
    jr nz, jr_046_51fd                            ; $5226: $20 $d5

    jr c, jr_046_520a                             ; $5228: $38 $e0

    ld d, b                                       ; $522a: $50
    inc de                                        ; $522b: $13
    jr nz, jr_046_51b2                            ; $522c: $20 $84

    and b                                         ; $522e: $a0
    rst $20                                       ; $522f: $e7
    jr z, jr_046_5213                             ; $5230: $28 $e1

    ld [$04b6], sp                                ; $5232: $08 $b6 $04
    inc d                                         ; $5235: $14
    ld b, c                                       ; $5236: $41
    sbc h                                         ; $5237: $9c
    adc h                                         ; $5238: $8c
    sbc h                                         ; $5239: $9c
    rlca                                          ; $523a: $07
    ld [bc], a                                    ; $523b: $02

jr_046_523c:
    adc d                                         ; $523c: $8a
    rst $30                                       ; $523d: $f7
    jr nz, jr_046_51e8                            ; $523e: $20 $a8

    inc bc                                        ; $5240: $03
    add sp, -$56                                  ; $5241: $e8 $aa
    adc a                                         ; $5243: $8f
    ld h, l                                       ; $5244: $65
    set 4, d                                      ; $5245: $cb $e2
    rst $00                                       ; $5247: $c7
    ld [c], a                                     ; $5248: $e2
    ld a, [hl+]                                   ; $5249: $2a
    inc de                                        ; $524a: $13
    nop                                           ; $524b: $00
    dec b                                         ; $524c: $05
    ld l, b                                       ; $524d: $68
    ld [c], a                                     ; $524e: $e2
    ld b, b                                       ; $524f: $40
    jp hl                                         ; $5250: $e9


    xor d                                         ; $5251: $aa
    ret nz                                        ; $5252: $c0

    daa                                           ; $5253: $27
    ld l, d                                       ; $5254: $6a
    ld b, d                                       ; $5255: $42
    ld h, [hl]                                    ; $5256: $66
    ld b, d                                       ; $5257: $42
    ld d, h                                       ; $5258: $54
    ld c, $62                                     ; $5259: $0e $62
    ld b, c                                       ; $525b: $41
    ld [$ef28], sp                                ; $525c: $08 $28 $ef

jr_046_525f:
    ret nz                                        ; $525f: $c0

    ld a, [hl+]                                   ; $5260: $2a
    ld sp, $050a                                  ; $5261: $31 $0a $05
    ldh a, [$e8]                                  ; $5264: $f0 $e8
    dec h                                         ; $5266: $25
    ld bc, $c48b                                  ; $5267: $01 $8b $c4
    dec d                                         ; $526a: $15
    ld [hl], a                                    ; $526b: $77
    add $73                                       ; $526c: $c6 $73
    pop bc                                        ; $526e: $c1
    xor b                                         ; $526f: $a8
    sbc h                                         ; $5270: $9c
    add e                                         ; $5271: $83
    inc c                                         ; $5272: $0c
    add sp, -$02                                  ; $5273: $e8 $fe
    db $e4                                        ; $5275: $e4
    jr nz, jr_046_5278                            ; $5276: $20 $00

jr_046_5278:
    ld h, b                                       ; $5278: $60
    add b                                         ; $5279: $80
    jr nc, jr_046_523c                            ; $527a: $30 $c0

jr_046_527c:
    jr @-$1e                                      ; $527c: $18 $e0

    rra                                           ; $527e: $1f
    inc c                                         ; $527f: $0c
    ldh a, [rTMA]                                 ; $5280: $f0 $06
    ld hl, sp+$03                                 ; $5282: $f8 $03
    ld a, a                                       ; $5284: $7f
    ld h, e                                       ; $5285: $63
    add hl, sp                                    ; $5286: $39
    ld [c], a                                     ; $5287: $e2
    ld c, c                                       ; $5288: $49
    jp Jump_000_2e48                              ; $5289: $c3 $48 $2e


    jp hl                                         ; $528c: $e9


    adc [hl]                                      ; $528d: $8e
    pop hl                                        ; $528e: $e1
    and e                                         ; $528f: $a3
    jp $8b02                                      ; $5290: $c3 $02 $8b


    add $a8                                       ; $5293: $c6 $a8
    push hl                                       ; $5295: $e5
    ld d, b                                       ; $5296: $50
    dec bc                                        ; $5297: $0b
    jr nz, jr_046_527c                            ; $5298: $20 $e2

    ldh a, [$e5]                                  ; $529a: $f0 $e5
    dec b                                         ; $529c: $05
    ld sp, hl                                     ; $529d: $f9
    ret z                                         ; $529e: $c8

    rst $00                                       ; $529f: $c7
    rst $00                                       ; $52a0: $c7
    db $e4                                        ; $52a1: $e4
    jp $c03f                                      ; $52a2: $c3 $3f $c0


    rra                                           ; $52a5: $1f
    adc a                                         ; $52a6: $8f
    ldh [rIF], a                                  ; $52a7: $e0 $0f
    ldh a, [rTAC]                                 ; $52a9: $f0 $07
    sub [hl]                                      ; $52ab: $96
    ldh [$ba], a                                  ; $52ac: $e0 $ba
    inc hl                                        ; $52ae: $23
    add c                                         ; $52af: $81
    jp Jump_000_2d83                              ; $52b0: $c3 $83 $2d


    ld a, h                                       ; $52b3: $7c
    cp $e3                                        ; $52b4: $fe $e3
    inc bc                                        ; $52b6: $03
    db $fc                                        ; $52b7: $fc
    push de                                       ; $52b8: $d5
    and l                                         ; $52b9: $a5
    ld a, [bc]                                    ; $52ba: $0a
    ld h, c                                       ; $52bb: $61
    ld c, d                                       ; $52bc: $4a
    and d                                         ; $52bd: $a2
    ld b, c                                       ; $52be: $41
    or [hl]                                       ; $52bf: $b6
    ld e, b                                       ; $52c0: $58
    ld hl, $30f0                                  ; $52c1: $21 $f0 $30
    ldh a, [$63]                                  ; $52c4: $f0 $63
    rra                                           ; $52c6: $1f
    nop                                           ; $52c7: $00
    ld a, [c]                                     ; $52c8: $f2
    ld h, e                                       ; $52c9: $63
    ldh [$f9], a                                  ; $52ca: $e0 $f9
    rra                                           ; $52cc: $1f
    ld [de], a                                    ; $52cd: $12
    ld b, b                                       ; $52ce: $40
    ld a, $60                                     ; $52cf: $3e $60
    db $fc                                        ; $52d1: $fc
    inc bc                                        ; $52d2: $03
    ld bc, $03fe                                  ; $52d3: $01 $fe $03
    rst $18                                       ; $52d6: $df
    db $fc                                        ; $52d7: $fc
    rlca                                          ; $52d8: $07
    ld hl, sp+$07                                 ; $52d9: $f8 $07

jr_046_52db:
    ld hl, sp+$22                                 ; $52db: $f8 $22
    pop hl                                        ; $52dd: $e1
    ld a, h                                       ; $52de: $7c
    add e                                         ; $52df: $83
    db $e3                                        ; $52e0: $e3
    ld hl, sp+$07                                 ; $52e1: $f8 $07
    inc e                                         ; $52e3: $1c
    ld h, a                                       ; $52e4: $67
    ld e, $c1                                     ; $52e5: $1e $c1
    call Call_046_7881                            ; $52e7: $cd $81 $78
    rst $28                                       ; $52ea: $ef
    ld a, b                                       ; $52eb: $78
    rst $18                                       ; $52ec: $df
    rst $28                                       ; $52ed: $ef
    call z, Call_000_03f7                         ; $52ee: $cc $f7 $03
    db $fc                                        ; $52f1: $fc
    cp $e3                                        ; $52f2: $fe $e3
    ld [bc], a                                    ; $52f4: $02
    db $fd                                        ; $52f5: $fd
    ldh a, [$ba]                                  ; $52f6: $f0 $ba
    ld [bc], a                                    ; $52f8: $02
    cpl                                           ; $52f9: $2f
    and d                                         ; $52fa: $a2
    jp c, $2de5                                   ; $52fb: $da $e5 $2d

    ld bc, $00f0                                  ; $52fe: $01 $f0 $00
    ld hl, sp+$00                                 ; $5301: $f8 $00
    add a                                         ; $5303: $87
    inc e                                         ; $5304: $1c
    ldh [$0e], a                                  ; $5305: $e0 $0e
    ld e, [hl]                                    ; $5307: $5e
    ldh [$fe], a                                  ; $5308: $e0 $fe
    db $e3                                        ; $530a: $e3
    db $dd                                        ; $530b: $dd
    ld h, $d8                                     ; $530c: $26 $d8
    ret nz                                        ; $530e: $c0

    ldh [$5f], a                                  ; $530f: $e0 $5f
    nop                                           ; $5311: $00
    ldh a, [rP1]                                  ; $5312: $f0 $00
    ldh a, [rNR10]                                ; $5314: $f0 $10
    cp $e2                                        ; $5316: $fe $e2
    ldh a, [rNR21]                                ; $5318: $f0 $16
    call Call_046_781e                            ; $531a: $cd $1e $78
    pop hl                                        ; $531d: $e1
    rlca                                          ; $531e: $07
    nop                                           ; $531f: $00
    ld c, $01                                     ; $5320: $0e $01
    ld l, h                                       ; $5322: $6c
    pop hl                                        ; $5323: $e1
    ld l, b                                       ; $5324: $68
    pop hl                                        ; $5325: $e1
    and b                                         ; $5326: $a0
    ld b, c                                       ; $5327: $41
    ld [de], a                                    ; $5328: $12
    ld de, $ff60                                  ; $5329: $11 $60 $ff
    ld l, h                                       ; $532c: $6c
    pop hl                                        ; $532d: $e1
    inc d                                         ; $532e: $14
    push hl                                       ; $532f: $e5
    add b                                         ; $5330: $80
    inc sp                                        ; $5331: $33
    jr nz, jr_046_52db                            ; $5332: $20 $a7

    ld h, b                                       ; $5334: $60
    cp $e0                                        ; $5335: $fe $e0
    db $fd                                        ; $5337: $fd
    adc h                                         ; $5338: $8c
    cp $e0                                        ; $5339: $fe $e0
    ld e, $fb                                     ; $533b: $1e $fb
    ld e, $fb                                     ; $533d: $1e $fb
    scf                                           ; $533f: $37
    db $fd                                        ; $5340: $fd
    rst $38                                       ; $5341: $ff
    call z, $b6f7                                 ; $5342: $cc $f7 $b6
    db $eb                                        ; $5345: $eb
    or [hl]                                       ; $5346: $b6
    db $eb                                        ; $5347: $eb
    ld c, e                                       ; $5348: $4b
    push af                                       ; $5349: $f5
    rst $38                                       ; $534a: $ff
    ld c, e                                       ; $534b: $4b
    push af                                       ; $534c: $f5
    and l                                         ; $534d: $a5
    ld a, [$faa5]                                 ; $534e: $fa $a5 $fa
    ld b, d                                       ; $5351: $42
    db $fd                                        ; $5352: $fd
    push de                                       ; $5353: $d5
    ld bc, $808a                                  ; $5354: $01 $8a $80
    inc bc                                        ; $5357: $03
    cp a                                          ; $5358: $bf
    ld h, d                                       ; $5359: $62
    adc l                                         ; $535a: $8d
    cp $e0                                        ; $535b: $fe $e0
    jp c, $fd7f                                   ; $535d: $da $7f $fd

    ret nz                                        ; $5360: $c0

    cp $e0                                        ; $5361: $fe $e0
    ld h, c                                       ; $5363: $61
    cp a                                          ; $5364: $bf
    ld h, c                                       ; $5365: $61
    cp a                                          ; $5366: $bf
    or c                                          ; $5367: $b1
    ld e, a                                       ; $5368: $5f
    cp a                                          ; $5369: $bf
    or e                                          ; $536a: $b3
    ld e, a                                       ; $536b: $5f
    ld e, e                                       ; $536c: $5b
    xor a                                         ; $536d: $af
    ld e, [hl]                                    ; $536e: $5e
    xor a                                         ; $536f: $af
    inc e                                         ; $5370: $1c
    pop hl                                        ; $5371: $e1
    add a                                         ; $5372: $87
    sbc l                                         ; $5373: $9d
    ld hl, sp-$16                                 ; $5374: $f8 $ea
    pop hl                                        ; $5376: $e1
    ld h, b                                       ; $5377: $60
    cp a                                          ; $5378: $bf
    ld h, b                                       ; $5379: $60
    ld [$e8e0], a                                 ; $537a: $ea $e0 $e8
    ld b, c                                       ; $537d: $41
    ld a, b                                       ; $537e: $78
    cp $07                                        ; $537f: $fe $07
    pop hl                                        ; $5381: $e1
    rra                                           ; $5382: $1f
    ld hl, sp+$1f                                 ; $5383: $f8 $1f
    ld a, h                                       ; $5385: $7c
    or a                                          ; $5386: $b7
    inc a                                         ; $5387: $3c
    rst $30                                       ; $5388: $f7
    jp z, $e5c2                                   ; $5389: $ca $c2 $e5

    dec c                                         ; $538c: $0d
    cp $e0                                        ; $538d: $fe $e0
    ld a, [de]                                    ; $538f: $1a
    ld b, l                                       ; $5390: $45
    ld h, b                                       ; $5391: $60
    ret nz                                        ; $5392: $c0

    pop hl                                        ; $5393: $e1
    ldh [$bf], a                                  ; $5394: $e0 $bf
    rst $38                                       ; $5396: $ff
    ldh [$bf], a                                  ; $5397: $e0 $bf
    or b                                          ; $5399: $b0
    ld e, a                                       ; $539a: $5f
    or c                                          ; $539b: $b1
    ld e, a                                       ; $539c: $5f
    ld e, c                                       ; $539d: $59
    xor a                                         ; $539e: $af
    rst $38                                       ; $539f: $ff
    ld e, a                                       ; $53a0: $5f
    xor a                                         ; $53a1: $af
    scf                                           ; $53a2: $37
    db $fd                                        ; $53a3: $fd
    ld l, l                                       ; $53a4: $6d
    ld a, [$fa6d]                                 ; $53a5: $fa $6d $fa
    rst $38                                       ; $53a8: $ff
    jp nc, $d2fd                                  ; $53a9: $d2 $fd $d2

    db $fd                                        ; $53ac: $fd
    and c                                         ; $53ad: $a1
    cp $a1                                        ; $53ae: $fe $a1
    cp $9e                                        ; $53b0: $fe $9e
    ld e, $40                                     ; $53b2: $1e $40
    db $fd                                        ; $53b4: $fd
    add c                                         ; $53b5: $81
    cp $81                                        ; $53b6: $fe $81
    jr nc, @+$06                                  ; $53b8: $30 $04

    db $f4                                        ; $53ba: $f4
    add c                                         ; $53bb: $81
    jp c, Jump_046_7fef                           ; $53bc: $da $ef $7f

    ld [hl], l                                    ; $53bf: $75
    cp a                                          ; $53c0: $bf
    ld [hl], l                                    ; $53c1: $75
    ld [hl], b                                    ; $53c2: $70
    ld h, b                                       ; $53c3: $60
    cp d                                          ; $53c4: $ba
    ld e, a                                       ; $53c5: $5f
    ld e, h                                       ; $53c6: $5c
    rst $38                                       ; $53c7: $ff
    xor a                                         ; $53c8: $af
    ld e, h                                       ; $53c9: $5c
    xor a                                         ; $53ca: $af
    inc l                                         ; $53cb: $2c
    rst $10                                       ; $53cc: $d7
    ld l, $d7                                     ; $53cd: $2e $d7
    cpl                                           ; $53cf: $2f
    rst $28                                       ; $53d0: $ef
    rst $10                                       ; $53d1: $d7
    rla                                           ; $53d2: $17
    db $eb                                        ; $53d3: $eb
    rla                                           ; $53d4: $17
    ld l, h                                       ; $53d5: $6c
    ld h, d                                       ; $53d6: $62
    dec b                                         ; $53d7: $05
    ld a, [$bb05]                                 ; $53d8: $fa $05 $bb
    ld a, [$7ab1]                                 ; $53db: $fa $b1 $7a
    ldh [$5b], a                                  ; $53de: $e0 $5b
    xor a                                         ; $53e0: $af
    ld l, $e8                                     ; $53e1: $2e $e8
    ldh [$97], a                                  ; $53e3: $e0 $97
    rst $38                                       ; $53e5: $ff
    db $eb                                        ; $53e6: $eb
    sub a                                         ; $53e7: $97
    db $eb                                        ; $53e8: $eb
    set 6, l                                      ; $53e9: $cb $f5
    ld h, [hl]                                    ; $53eb: $66
    ei                                            ; $53ec: $fb
    ld h, [hl]                                    ; $53ed: $66
    rst $28                                       ; $53ee: $ef
    ei                                            ; $53ef: $fb
    db $db                                        ; $53f0: $db
    push af                                       ; $53f1: $f5
    db $db                                        ; $53f2: $db
    ld b, d                                       ; $53f3: $42
    ld [c], a                                     ; $53f4: $e2
    ld b, e                                       ; $53f5: $43
    db $fd                                        ; $53f6: $fd
    ld b, e                                       ; $53f7: $43
    sub l                                         ; $53f8: $95
    db $fd                                        ; $53f9: $fd
    call nz, Call_046_6861                        ; $53fa: $c4 $61 $68
    ld e, e                                       ; $53fd: $5b
    ld h, b                                       ; $53fe: $60
    ret nc                                        ; $53ff: $d0

    cp $e0                                        ; $5400: $fe $e0
    ld a, [de]                                    ; $5402: $1a
    ld h, c                                       ; $5403: $61
    cpl                                           ; $5404: $2f
    rst $38                                       ; $5405: $ff
    rst $10                                       ; $5406: $d7
    ld l, $df                                     ; $5407: $2e $df
    ld e, $ef                                     ; $5409: $1e $ef
    dec e                                         ; $540b: $1d
    rst $28                                       ; $540c: $ef
    dec e                                         ; $540d: $1d
    jp z, $e074                                   ; $540e: $ca $74 $e0

    ld a, [hl-]                                   ; $5411: $3a
    and [hl]                                      ; $5412: $a6
    ld h, b                                       ; $5413: $60
    ld b, b                                       ; $5414: $40
    and d                                         ; $5415: $a2
    add c                                         ; $5416: $81
    adc h                                         ; $5417: $8c
    adc d                                         ; $5418: $8a
    rst $38                                       ; $5419: $ff
    rst $38                                       ; $541a: $ff
    rst $18                                       ; $541b: $df
    rst $18                                       ; $541c: $df
    rst $38                                       ; $541d: $ff
    ld l, c                                       ; $541e: $69
    rst $38                                       ; $541f: $ff
    ld e, c                                       ; $5420: $59
    daa                                           ; $5421: $27
    ld h, b                                       ; $5422: $60
    ld c, b                                       ; $5423: $48
    rst $38                                       ; $5424: $ff
    sbc a                                         ; $5425: $9f
    ld a, b                                       ; $5426: $78
    rst $38                                       ; $5427: $ff
    ld l, $d7                                     ; $5428: $2e $d7
    cp $e6                                        ; $542a: $fe $e6
    ld b, b                                       ; $542c: $40
    ld l, b                                       ; $542d: $68
    ret nz                                        ; $542e: $c0

    rst $38                                       ; $542f: $ff
    ld sp, hl                                     ; $5430: $f9
    add hl, de                                    ; $5431: $19
    cp $e0                                        ; $5432: $fe $e0
    call nc, $fd20                                ; $5434: $d4 $20 $fd
    ld [bc], a                                    ; $5437: $02
    db $fd                                        ; $5438: $fd
    rst $38                                       ; $5439: $ff
    rst $38                                       ; $543a: $ff
    rst $38                                       ; $543b: $ff
    cp h                                          ; $543c: $bc
    rst $38                                       ; $543d: $ff
    ld a, a                                       ; $543e: $7f
    rst $38                                       ; $543f: $ff
    and c                                         ; $5440: $a1
    rst $38                                       ; $5441: $ff
    ld hl, $ffff                                  ; $5442: $21 $ff $ff
    ldh [rIE], a                                  ; $5445: $e0 $ff
    bit 6, l                                      ; $5447: $cb $75
    push hl                                       ; $5449: $e5
    ld a, d                                       ; $544a: $7a
    push hl                                       ; $544b: $e5
    ld a, [$ec5a]                                 ; $544c: $fa $5a $ec
    pop hl                                        ; $544f: $e1
    jp $e0fe                                      ; $5450: $c3 $fe $e0


    nop                                           ; $5453: $00
    rst $38                                       ; $5454: $ff
    ld d, b                                       ; $5455: $50
    ld l, c                                       ; $5456: $69
    add e                                         ; $5457: $83
    ld b, [hl]                                    ; $5458: $46
    add b                                         ; $5459: $80
    xor c                                         ; $545a: $a9
    add c                                         ; $545b: $81
    cp $e0                                        ; $545c: $fe $e0
    or c                                          ; $545e: $b1
    ld hl, $ddff                                  ; $545f: $21 $ff $dd
    ld b, b                                       ; $5462: $40
    jr jr_046_5466                                ; $5463: $18 $01

    ld h, h                                       ; $5465: $64

jr_046_5466:
    rst $38                                       ; $5466: $ff
    xor $23                                       ; $5467: $ee $23
    ld b, b                                       ; $5469: $40
    cp $ff                                        ; $546a: $fe $ff
    dec b                                         ; $546c: $05
    ld [de], a                                    ; $546d: $12
    jr nz, @+$09                                  ; $546e: $20 $07

    rst $38                                       ; $5470: $ff
    ld [hl], h                                    ; $5471: $74
    cp d                                          ; $5472: $ba
    or [hl]                                       ; $5473: $b6
    ldh [rIE], a                                  ; $5474: $e0 $ff
    ld e, $80                                     ; $5476: $1e $80
    rst $38                                       ; $5478: $ff
    rst $38                                       ; $5479: $ff
    sbc b                                         ; $547a: $98
    cp $e0                                        ; $547b: $fe $e0
    add b                                         ; $547d: $80
    ld bc, $00ff                                  ; $547e: $01 $ff $00
    nop                                           ; $5481: $00
    nop                                           ; $5482: $00
    ld b, l                                       ; $5483: $45
    ld l, c                                       ; $5484: $69
    rst $38                                       ; $5485: $ff
    ldh a, [rP1]                                  ; $5486: $f0 $00
    rst $38                                       ; $5488: $ff
    rst $38                                       ; $5489: $ff
    rst $20                                       ; $548a: $e7
    and $c0                                       ; $548b: $e6 $c0
    pop af                                        ; $548d: $f1
    ld b, $c9                                     ; $548e: $06 $c9
    rst $38                                       ; $5490: $ff
    or b                                          ; $5491: $b0
    ret nz                                        ; $5492: $c0

    rst $38                                       ; $5493: $ff
    rst $38                                       ; $5494: $ff
    rst $38                                       ; $5495: $ff
    ret nz                                        ; $5496: $c0

    rst $38                                       ; $5497: $ff
    rst $38                                       ; $5498: $ff
    rst $38                                       ; $5499: $ff
    nop                                           ; $549a: $00
    ld l, d                                       ; $549b: $6a
    db $dd                                        ; $549c: $dd
    pop hl                                        ; $549d: $e1
    ld bc, $026f                                  ; $549e: $01 $6f $02
    inc bc                                        ; $54a1: $03
    inc b                                         ; $54a2: $04
    dec b                                         ; $54a3: $05
    call nc, Call_046_6be5                        ; $54a4: $d4 $e5 $6b
    ld l, h                                       ; $54a7: $6c
    jp z, $fce0                                   ; $54a8: $ca $e0 $fc

    cp l                                          ; $54ab: $bd
    rst $38                                       ; $54ac: $ff
    push hl                                       ; $54ad: $e5
    db $e4                                        ; $54ae: $e4
    ld l, l                                       ; $54af: $6d
    ld l, [hl]                                    ; $54b0: $6e
    ld l, a                                       ; $54b1: $6f
    nop                                           ; $54b2: $00
    nop                                           ; $54b3: $00
    rlca                                          ; $54b4: $07
    rst $38                                       ; $54b5: $ff
    ld [$0a09], sp                                ; $54b6: $08 $09 $0a
    dec bc                                        ; $54b9: $0b
    inc c                                         ; $54ba: $0c
    nop                                           ; $54bb: $00
    dec c                                         ; $54bc: $0d
    ld c, $3f                                     ; $54bd: $0e $3f
    rrca                                          ; $54bf: $0f
    nop                                           ; $54c0: $00
    nop                                           ; $54c1: $00
    ld [hl], b                                    ; $54c2: $70
    ld [hl], c                                    ; $54c3: $71
    ld [hl], d                                    ; $54c4: $72
    ret nz                                        ; $54c5: $c0

    rst $38                                       ; $54c6: $ff
    add sp, -$19                                  ; $54c7: $e8 $e7
    rst $38                                       ; $54c9: $ff
    ld [hl], e                                    ; $54ca: $73
    ld [hl], h                                    ; $54cb: $74
    ld [hl], l                                    ; $54cc: $75
    halt                                          ; $54cd: $76
    db $10                                        ; $54ce: $10
    ld de, $1312                                  ; $54cf: $11 $12 $13
    rst $38                                       ; $54d2: $ff
    inc d                                         ; $54d3: $14
    dec d                                         ; $54d4: $15
    ld d, $17                                     ; $54d5: $16 $17
    jr jr_046_54f2                                ; $54d7: $18 $19

    ld a, [de]                                    ; $54d9: $1a
    dec de                                        ; $54da: $1b
    rst $08                                       ; $54db: $cf
    ld a, c                                       ; $54dc: $79
    ld a, d                                       ; $54dd: $7a
    ld a, e                                       ; $54de: $7b
    ld a, h                                       ; $54df: $7c
    jp z, $e8ff                                   ; $54e0: $ca $ff $e8

    rst $20                                       ; $54e3: $e7
    ld a, l                                       ; $54e4: $7d
    ld a, [hl]                                    ; $54e5: $7e
    rst $38                                       ; $54e6: $ff
    ld b, $7f                                     ; $54e7: $06 $7f
    inc e                                         ; $54e9: $1c
    dec e                                         ; $54ea: $1d
    ld e, $1f                                     ; $54eb: $1e $1f
    jr nz, jr_046_5510                            ; $54ed: $20 $21

    rst $38                                       ; $54ef: $ff
    ld [hl+], a                                   ; $54f0: $22
    inc hl                                        ; $54f1: $23

jr_046_54f2:
    inc h                                         ; $54f2: $24
    dec h                                         ; $54f3: $25
    ld h, $27                                     ; $54f4: $26 $27
    add d                                         ; $54f6: $82
    add e                                         ; $54f7: $83
    di                                            ; $54f8: $f3
    add h                                         ; $54f9: $84
    add l                                         ; $54fa: $85
    jp z, $e8ff                                   ; $54fb: $ca $ff $e8

    rst $20                                       ; $54fe: $e7
    add [hl]                                      ; $54ff: $86
    add a                                         ; $5500: $87
    adc b                                         ; $5501: $88
    adc c                                         ; $5502: $89
    rst $38                                       ; $5503: $ff
    ld b, $28                                     ; $5504: $06 $28
    add hl, hl                                    ; $5506: $29
    ld a, [hl+]                                   ; $5507: $2a
    dec hl                                        ; $5508: $2b
    inc l                                         ; $5509: $2c
    dec l                                         ; $550a: $2d
    ld l, $ff                                     ; $550b: $2e $ff
    cpl                                           ; $550d: $2f
    jr nc, jr_046_5541                            ; $550e: $30 $31

jr_046_5510:
    ld [hl-], a                                   ; $5510: $32
    adc d                                         ; $5511: $8a
    adc e                                         ; $5512: $8b
    adc h                                         ; $5513: $8c
    adc l                                         ; $5514: $8d
    db $fc                                        ; $5515: $fc
    jp z, $e8ff                                   ; $5516: $ca $ff $e8

    rst $20                                       ; $5519: $e7
    adc [hl]                                      ; $551a: $8e
    adc a                                         ; $551b: $8f
    sub b                                         ; $551c: $90
    sub b                                         ; $551d: $90
    ld b, $06                                     ; $551e: $06 $06
    rst $38                                       ; $5520: $ff
    ld b, $33                                     ; $5521: $06 $33
    inc [hl]                                      ; $5523: $34
    dec [hl]                                      ; $5524: $35
    ld [hl], $37                                  ; $5525: $36 $37
    jr c, jr_046_5562                             ; $5527: $38 $39

    ccf                                           ; $5529: $3f
    ld a, [hl-]                                   ; $552a: $3a
    dec sp                                        ; $552b: $3b
    ld b, $92                                     ; $552c: $06 $92
    sub e                                         ; $552e: $93
    sub h                                         ; $552f: $94
    jp z, $e8ff                                   ; $5530: $ca $ff $e8

    rst $20                                       ; $5533: $e7
    rst $38                                       ; $5534: $ff
    sub l                                         ; $5535: $95
    sub [hl]                                      ; $5536: $96
    sub a                                         ; $5537: $97
    sbc b                                         ; $5538: $98
    ld b, $06                                     ; $5539: $06 $06
    inc a                                         ; $553b: $3c
    dec a                                         ; $553c: $3d
    rst $38                                       ; $553d: $ff
    ld a, $3f                                     ; $553e: $3e $3f
    ld b, b                                       ; $5540: $40

Call_046_5541:
jr_046_5541:
    ld b, c                                       ; $5541: $41
    ld b, d                                       ; $5542: $42
    ld b, e                                       ; $5543: $43
    ld b, h                                       ; $5544: $44
    ld b, l                                       ; $5545: $45
    rst $08                                       ; $5546: $cf
    sbc e                                         ; $5547: $9b
    sbc h                                         ; $5548: $9c
    sbc l                                         ; $5549: $9d
    sbc [hl]                                      ; $554a: $9e
    jp z, $e8ff                                   ; $554b: $ca $ff $e8

    rst $20                                       ; $554e: $e7
    sbc a                                         ; $554f: $9f
    and b                                         ; $5550: $a0
    rst $38                                       ; $5551: $ff
    and c                                         ; $5552: $a1
    and d                                         ; $5553: $a2
    ld b, [hl]                                    ; $5554: $46
    ld b, a                                       ; $5555: $47
    ld c, b                                       ; $5556: $48
    ld c, c                                       ; $5557: $49
    ld c, d                                       ; $5558: $4a
    ld c, e                                       ; $5559: $4b
    rst $38                                       ; $555a: $ff
    ld c, h                                       ; $555b: $4c
    ld c, l                                       ; $555c: $4d
    ld c, [hl]                                    ; $555d: $4e
    ld c, a                                       ; $555e: $4f
    ld d, b                                       ; $555f: $50
    ld d, c                                       ; $5560: $51
    and e                                         ; $5561: $a3

jr_046_5562:
    and h                                         ; $5562: $a4
    di                                            ; $5563: $f3
    and l                                         ; $5564: $a5
    and [hl]                                      ; $5565: $a6
    jp z, $e8ff                                   ; $5566: $ca $ff $e8

    rst $20                                       ; $5569: $e7
    and a                                         ; $556a: $a7
    xor b                                         ; $556b: $a8
    xor c                                         ; $556c: $a9
    xor d                                         ; $556d: $aa
    rst $38                                       ; $556e: $ff
    ld d, d                                       ; $556f: $52
    ld d, e                                       ; $5570: $53
    ld d, h                                       ; $5571: $54
    ld d, l                                       ; $5572: $55
    ld d, [hl]                                    ; $5573: $56
    ld d, a                                       ; $5574: $57
    ld e, b                                       ; $5575: $58
    ld e, c                                       ; $5576: $59
    rst $38                                       ; $5577: $ff
    ld e, d                                       ; $5578: $5a
    ld e, e                                       ; $5579: $5b
    ld e, h                                       ; $557a: $5c
    ld e, l                                       ; $557b: $5d
    xor e                                         ; $557c: $ab
    xor h                                         ; $557d: $ac
    xor l                                         ; $557e: $ad
    xor [hl]                                      ; $557f: $ae
    db $fc                                        ; $5580: $fc
    jp z, $e8ff                                   ; $5581: $ca $ff $e8

    rst $20                                       ; $5584: $e7
    xor a                                         ; $5585: $af
    or b                                          ; $5586: $b0
    or c                                          ; $5587: $b1
    or d                                          ; $5588: $b2
    ld e, [hl]                                    ; $5589: $5e
    ld e, a                                       ; $558a: $5f
    rst $38                                       ; $558b: $ff
    ld h, b                                       ; $558c: $60
    ld h, c                                       ; $558d: $61
    ld h, d                                       ; $558e: $62
    ld h, e                                       ; $558f: $63
    ld h, h                                       ; $5590: $64
    ld h, h                                       ; $5591: $64
    ld h, l                                       ; $5592: $65
    ld h, [hl]                                    ; $5593: $66
    ccf                                           ; $5594: $3f
    ld h, a                                       ; $5595: $67
    ld l, b                                       ; $5596: $68
    or h                                          ; $5597: $b4
    or l                                          ; $5598: $b5
    or [hl]                                       ; $5599: $b6
    xor a                                         ; $559a: $af
    jp z, Jump_046_40ff                           ; $559b: $ca $ff $40

    cp e                                          ; $559e: $bb
    add b                                         ; $559f: $80
    jp z, $c0ff                                   ; $55a0: $ca $ff $c0

    rst $38                                       ; $55a3: $ff
    rst $38                                       ; $55a4: $ff
    rst $38                                       ; $55a5: $ff
    ret nz                                        ; $55a6: $c0

    rst $38                                       ; $55a7: $ff
    rst $38                                       ; $55a8: $ff
    rst $38                                       ; $55a9: $ff
    ret nz                                        ; $55aa: $c0

    rst $38                                       ; $55ab: $ff
    rst $38                                       ; $55ac: $ff
    rst $38                                       ; $55ad: $ff
    nop                                           ; $55ae: $00
    nop                                           ; $55af: $00
    pop bc                                        ; $55b0: $c1
    and b                                         ; $55b1: $a0
    db $fd                                        ; $55b2: $fd
    and $d2                                       ; $55b3: $e6 $d2
    rst $38                                       ; $55b5: $ff
    ret nz                                        ; $55b6: $c0

    rst $38                                       ; $55b7: $ff
    rst $38                                       ; $55b8: $ff
    rst $38                                       ; $55b9: $ff
    ret nz                                        ; $55ba: $c0

    rst $38                                       ; $55bb: $ff
    rst $38                                       ; $55bc: $ff
    rst $38                                       ; $55bd: $ff
    ret nz                                        ; $55be: $c0

    rst $38                                       ; $55bf: $ff
    nop                                           ; $55c0: $00
    rst $38                                       ; $55c1: $ff
    rst $38                                       ; $55c2: $ff
    ret nz                                        ; $55c3: $c0

    rst $38                                       ; $55c4: $ff
    rst $38                                       ; $55c5: $ff
    rst $38                                       ; $55c6: $ff
    ret nz                                        ; $55c7: $c0

    rst $38                                       ; $55c8: $ff
    ret nz                                        ; $55c9: $c0

    rst $38                                       ; $55ca: $ff
    ret nz                                        ; $55cb: $c0

    rst $38                                       ; $55cc: $ff
    ret nz                                        ; $55cd: $c0

    rst $38                                       ; $55ce: $ff
    ret nz                                        ; $55cf: $c0

    rst $38                                       ; $55d0: $ff
    nop                                           ; $55d1: $00
    ret nz                                        ; $55d2: $c0

    rst $38                                       ; $55d3: $ff
    ret nz                                        ; $55d4: $c0

    rst $38                                       ; $55d5: $ff
    ret nz                                        ; $55d6: $c0

    rst $38                                       ; $55d7: $ff
    rst $38                                       ; $55d8: $ff
    rst $38                                       ; $55d9: $ff
    cp [hl]                                       ; $55da: $be
    di                                            ; $55db: $f3
    jp c, $ffff                                   ; $55dc: $da $ff $ff

Jump_046_55df:
    rst $38                                       ; $55df: $ff
    rst $38                                       ; $55e0: $ff
    rst $38                                       ; $55e1: $ff
    nop                                           ; $55e2: $00
    rst $38                                       ; $55e3: $ff
    rst $38                                       ; $55e4: $ff
    rst $38                                       ; $55e5: $ff
    rst $38                                       ; $55e6: $ff
    rst $38                                       ; $55e7: $ff
    rst $38                                       ; $55e8: $ff
    rst $38                                       ; $55e9: $ff
    rst $38                                       ; $55ea: $ff
    rst $38                                       ; $55eb: $ff
    rst $38                                       ; $55ec: $ff
    rst $38                                       ; $55ed: $ff
    rst $38                                       ; $55ee: $ff
    rst $38                                       ; $55ef: $ff
    rst $38                                       ; $55f0: $ff
    rst $38                                       ; $55f1: $ff
    rst $38                                       ; $55f2: $ff
    nop                                           ; $55f3: $00
    rst $38                                       ; $55f4: $ff
    rst $38                                       ; $55f5: $ff
    rst $38                                       ; $55f6: $ff
    rst $38                                       ; $55f7: $ff
    rst $38                                       ; $55f8: $ff
    rst $38                                       ; $55f9: $ff
    rst $38                                       ; $55fa: $ff
    rst $38                                       ; $55fb: $ff
    rst $38                                       ; $55fc: $ff
    rst $38                                       ; $55fd: $ff
    rst $38                                       ; $55fe: $ff
    rst $38                                       ; $55ff: $ff
    rst $38                                       ; $5600: $ff
    rst $38                                       ; $5601: $ff
    rst $38                                       ; $5602: $ff
    rst $38                                       ; $5603: $ff
    nop                                           ; $5604: $00
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
    rst $38                                       ; $560f: $ff
    rst $38                                       ; $5610: $ff
    rst $38                                       ; $5611: $ff
    rst $38                                       ; $5612: $ff
    rst $38                                       ; $5613: $ff
    rst $38                                       ; $5614: $ff
    nop                                           ; $5615: $00
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
    rst $38                                       ; $5620: $ff
    rst $38                                       ; $5621: $ff
    rst $38                                       ; $5622: $ff
    rst $38                                       ; $5623: $ff
    rst $38                                       ; $5624: $ff
    rst $38                                       ; $5625: $ff
    nop                                           ; $5626: $00
    rst $38                                       ; $5627: $ff
    rst $38                                       ; $5628: $ff
    rst $38                                       ; $5629: $ff
    rst $38                                       ; $562a: $ff
    rst $38                                       ; $562b: $ff
    rst $38                                       ; $562c: $ff
    rst $38                                       ; $562d: $ff
    rst $38                                       ; $562e: $ff
    rst $38                                       ; $562f: $ff
    rst $38                                       ; $5630: $ff
    rst $38                                       ; $5631: $ff
    rst $38                                       ; $5632: $ff
    rst $38                                       ; $5633: $ff
    rst $38                                       ; $5634: $ff
    rst $38                                       ; $5635: $ff
    rst $38                                       ; $5636: $ff
    nop                                           ; $5637: $00
    rst $38                                       ; $5638: $ff
    rst $38                                       ; $5639: $ff
    rst $38                                       ; $563a: $ff
    rst $38                                       ; $563b: $ff
    rst $38                                       ; $563c: $ff
    rst $38                                       ; $563d: $ff
    rst $38                                       ; $563e: $ff
    rst $38                                       ; $563f: $ff
    rst $38                                       ; $5640: $ff
    rst $38                                       ; $5641: $ff
    rst $38                                       ; $5642: $ff
    rst $38                                       ; $5643: $ff
    rst $38                                       ; $5644: $ff
    rst $38                                       ; $5645: $ff
    rst $38                                       ; $5646: $ff
    rst $38                                       ; $5647: $ff
    nop                                           ; $5648: $00
    rst $38                                       ; $5649: $ff
    rst $38                                       ; $564a: $ff
    rst $38                                       ; $564b: $ff
    rst $38                                       ; $564c: $ff
    rst $38                                       ; $564d: $ff
    rst $38                                       ; $564e: $ff
    rst $38                                       ; $564f: $ff
    rst $38                                       ; $5650: $ff
    rst $38                                       ; $5651: $ff
    rst $38                                       ; $5652: $ff
    rst $38                                       ; $5653: $ff
    rst $38                                       ; $5654: $ff
    rst $38                                       ; $5655: $ff
    rst $38                                       ; $5656: $ff
    rst $38                                       ; $5657: $ff
    rst $38                                       ; $5658: $ff
    nop                                           ; $5659: $00
    rst $38                                       ; $565a: $ff
    rst $38                                       ; $565b: $ff
    rst $38                                       ; $565c: $ff
    rst $38                                       ; $565d: $ff
    rst $38                                       ; $565e: $ff
    rst $38                                       ; $565f: $ff
    rst $38                                       ; $5660: $ff
    rst $38                                       ; $5661: $ff
    rst $38                                       ; $5662: $ff
    rst $38                                       ; $5663: $ff
    rst $38                                       ; $5664: $ff
    rst $38                                       ; $5665: $ff
    rst $38                                       ; $5666: $ff
    rst $38                                       ; $5667: $ff
    rst $38                                       ; $5668: $ff
    rst $38                                       ; $5669: $ff
    nop                                           ; $566a: $00
    rst $38                                       ; $566b: $ff
    xor $00                                       ; $566c: $ee $00
    nop                                           ; $566e: $00
    nop                                           ; $566f: $00
    dec b                                         ; $5670: $05
    ld [$f0ff], sp                                ; $5671: $08 $ff $f0
    dec bc                                        ; $5674: $0b
    rst $38                                       ; $5675: $ff
    rst $38                                       ; $5676: $ff
    rst $20                                       ; $5677: $e7
    and $c0                                       ; $5678: $e6 $c0
    pop af                                        ; $567a: $f1
    cp a                                          ; $567b: $bf
    rst $38                                       ; $567c: $ff
    ret nz                                        ; $567d: $c0

    rst $38                                       ; $567e: $ff
    db $10                                        ; $567f: $10
    rst $38                                       ; $5680: $ff
    rst $38                                       ; $5681: $ff
    ret nz                                        ; $5682: $c0

    rst $38                                       ; $5683: $ff
    rst $38                                       ; $5684: $ff
    rst $38                                       ; $5685: $ff
    rst $20                                       ; $5686: $e7
    and $0f                                       ; $5687: $e6 $0f
    xor c                                         ; $5689: $a9
    db $ed                                        ; $568a: $ed
    call $c1ff                                    ; $568b: $cd $ff $c1
    ld [$0f21], a                                 ; $568e: $ea $21 $0f
    cp a                                          ; $5691: $bf
    db $ec                                        ; $5692: $ec
    ret nz                                        ; $5693: $c0

    rst $38                                       ; $5694: $ff
    pop bc                                        ; $5695: $c1
    db $ec                                        ; $5696: $ec
    ld a, a                                       ; $5697: $7f
    db $e4                                        ; $5698: $e4
    dec c                                         ; $5699: $0d
    ld [hl], h                                    ; $569a: $74
    ldh a, [$86]                                  ; $569b: $f0 $86
    db $fc                                        ; $569d: $fc
    inc a                                         ; $569e: $3c
    ret nz                                        ; $569f: $c0

    db $e4                                        ; $56a0: $e4
    ld a, $e0                                     ; $56a1: $3e $e0
    add hl, bc                                    ; $56a3: $09
    dec c                                         ; $56a4: $0d
    dec c                                         ; $56a5: $0d
    dec c                                         ; $56a6: $0d
    or l                                          ; $56a7: $b5
    rst $20                                       ; $56a8: $e7
    rst $38                                       ; $56a9: $ff
    rst $38                                       ; $56aa: $ff
    ld h, $e2                                     ; $56ab: $26 $e2
    pop hl                                        ; $56ad: $e1
    ld a, [bc]                                    ; $56ae: $0a
    ld a, [bc]                                    ; $56af: $0a
    jp Jump_046_7ee2                              ; $56b0: $c3 $e2 $7e


    pop hl                                        ; $56b3: $e1
    add hl, bc                                    ; $56b4: $09
    ret nz                                        ; $56b5: $c0

    rst $38                                       ; $56b6: $ff
    ret nz                                        ; $56b7: $c0

    db $fc                                        ; $56b8: $fc
    ld [bc], a                                    ; $56b9: $02
    cp a                                          ; $56ba: $bf
    ldh [$0a], a                                  ; $56bb: $e0 $0a
    rst $38                                       ; $56bd: $ff
    ldh [$ca], a                                  ; $56be: $e0 $ca
    rst $38                                       ; $56c0: $ff
    add b                                         ; $56c1: $80
    jp hl                                         ; $56c2: $e9


    ld a, [hl]                                    ; $56c3: $7e
    pop hl                                        ; $56c4: $e1
    ld a, d                                       ; $56c5: $7a
    ld [c], a                                     ; $56c6: $e2
    ret nz                                        ; $56c7: $c0

    rst $38                                       ; $56c8: $ff
    ret nz                                        ; $56c9: $c0

    ret nz                                        ; $56ca: $c0

    db $f4                                        ; $56cb: $f4
    cp h                                          ; $56cc: $bc
    db $e3                                        ; $56cd: $e3
    ei                                            ; $56ce: $fb
    jp nz, $e2f1                                  ; $56cf: $c2 $f1 $e2

    jp z, $c0ff                                   ; $56d2: $ca $ff $c0

    rst $28                                       ; $56d5: $ef
    ld c, $0e                                     ; $56d6: $0e $0e
    ld d, d                                       ; $56d8: $52
    ld a, e                                       ; $56d9: $7b
    pop bc                                        ; $56da: $c1
    inc c                                         ; $56db: $0c
    ret nz                                        ; $56dc: $c0

    rst $38                                       ; $56dd: $ff
    ret nz                                        ; $56de: $c0

    ld sp, hl                                     ; $56df: $f9
    add hl, bc                                    ; $56e0: $09
    add b                                         ; $56e1: $80
    ld [c], a                                     ; $56e2: $e2
    ld a, [hl+]                                   ; $56e3: $2a
    jp z, Jump_000_02ff                           ; $56e4: $ca $ff $02

    ld b, b                                       ; $56e7: $40
    or a                                          ; $56e8: $b7
    ld c, b                                       ; $56e9: $48
    rst $38                                       ; $56ea: $ff
    ldh [$ca], a                                  ; $56eb: $e0 $ca
    rst $38                                       ; $56ed: $ff
    nop                                           ; $56ee: $00
    cp e                                          ; $56ef: $bb
    jp z, $c0ff                                   ; $56f0: $ca $ff $c0

    rst $38                                       ; $56f3: $ff
    rst $38                                       ; $56f4: $ff
    rst $38                                       ; $56f5: $ff
    nop                                           ; $56f6: $00
    ret nz                                        ; $56f7: $c0

    rst $38                                       ; $56f8: $ff
    rst $38                                       ; $56f9: $ff
    rst $38                                       ; $56fa: $ff
    dec a                                         ; $56fb: $3d
    adc [hl]                                      ; $56fc: $8e
    jp nc, $c0ff                                  ; $56fd: $d2 $ff $c0

    rst $38                                       ; $5700: $ff
    rst $38                                       ; $5701: $ff
    rst $38                                       ; $5702: $ff
    ret nz                                        ; $5703: $c0

    rst $38                                       ; $5704: $ff
    rst $38                                       ; $5705: $ff
    rst $38                                       ; $5706: $ff
    nop                                           ; $5707: $00
    ret nz                                        ; $5708: $c0

    rst $38                                       ; $5709: $ff
    rst $38                                       ; $570a: $ff
    rst $38                                       ; $570b: $ff
    ret nz                                        ; $570c: $c0

    rst $38                                       ; $570d: $ff
    rst $38                                       ; $570e: $ff
    rst $38                                       ; $570f: $ff
    ret nz                                        ; $5710: $c0

    rst $38                                       ; $5711: $ff
    ret nz                                        ; $5712: $c0

    rst $38                                       ; $5713: $ff
    ret nz                                        ; $5714: $c0

    rst $38                                       ; $5715: $ff
    ret nz                                        ; $5716: $c0

    rst $38                                       ; $5717: $ff
    nop                                           ; $5718: $00
    ret nz                                        ; $5719: $c0

    rst $38                                       ; $571a: $ff
    ret nz                                        ; $571b: $c0

    rst $38                                       ; $571c: $ff
    ret nz                                        ; $571d: $c0

    rst $38                                       ; $571e: $ff
    ret nz                                        ; $571f: $c0

    rst $38                                       ; $5720: $ff
    rst $38                                       ; $5721: $ff
    rst $38                                       ; $5722: $ff
    dec sp                                        ; $5723: $3b
    or e                                          ; $5724: $b3
    jp c, $ffff                                   ; $5725: $da $ff $ff

    rst $38                                       ; $5728: $ff
    nop                                           ; $5729: $00
    rst $38                                       ; $572a: $ff
    rst $38                                       ; $572b: $ff
    rst $38                                       ; $572c: $ff
    rst $38                                       ; $572d: $ff
    rst $38                                       ; $572e: $ff
    rst $38                                       ; $572f: $ff
    rst $38                                       ; $5730: $ff
    rst $38                                       ; $5731: $ff
    rst $38                                       ; $5732: $ff
    rst $38                                       ; $5733: $ff
    rst $38                                       ; $5734: $ff
    rst $38                                       ; $5735: $ff
    rst $38                                       ; $5736: $ff
    rst $38                                       ; $5737: $ff
    rst $38                                       ; $5738: $ff
    rst $38                                       ; $5739: $ff
    nop                                           ; $573a: $00
    rst $38                                       ; $573b: $ff
    rst $38                                       ; $573c: $ff
    rst $38                                       ; $573d: $ff
    rst $38                                       ; $573e: $ff
    rst $38                                       ; $573f: $ff
    rst $38                                       ; $5740: $ff
    rst $38                                       ; $5741: $ff
    rst $38                                       ; $5742: $ff
    rst $38                                       ; $5743: $ff
    rst $38                                       ; $5744: $ff
    rst $38                                       ; $5745: $ff
    rst $38                                       ; $5746: $ff
    rst $38                                       ; $5747: $ff
    rst $38                                       ; $5748: $ff
    rst $38                                       ; $5749: $ff
    rst $38                                       ; $574a: $ff
    nop                                           ; $574b: $00
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
    rst $38                                       ; $575a: $ff
    rst $38                                       ; $575b: $ff
    nop                                           ; $575c: $00
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
    rst $38                                       ; $576b: $ff
    rst $38                                       ; $576c: $ff
    nop                                           ; $576d: $00
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
    rst $38                                       ; $577c: $ff
    rst $38                                       ; $577d: $ff
    nop                                           ; $577e: $00
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
    rst $38                                       ; $578d: $ff
    rst $38                                       ; $578e: $ff
    nop                                           ; $578f: $00
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
    rst $38                                       ; $579e: $ff
    rst $38                                       ; $579f: $ff
    nop                                           ; $57a0: $00
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
    rst $38                                       ; $57af: $ff
    rst $38                                       ; $57b0: $ff
    nop                                           ; $57b1: $00
    rst $38                                       ; $57b2: $ff
    rst $38                                       ; $57b3: $ff
    rst $38                                       ; $57b4: $ff
    xor $00                                       ; $57b5: $ee $00
    nop                                           ; $57b7: $00
    nop                                           ; $57b8: $00
    xor $6b                                       ; $57b9: $ee $6b
    rst $38                                       ; $57bb: $ff
    ld l, a                                       ; $57bc: $6f
    adc $39                                       ; $57bd: $ce $39
    nop                                           ; $57bf: $00
    nop                                           ; $57c0: $00
    rst $18                                       ; $57c1: $df
    ld e, a                                       ; $57c2: $5f
    cp a                                          ; $57c3: $bf
    nop                                           ; $57c4: $00
    ld [hl], c                                    ; $57c5: $71
    nop                                           ; $57c6: $00
    inc bc                                        ; $57c7: $03
    nop                                           ; $57c8: $00
    rst $18                                       ; $57c9: $df
    ld e, a                                       ; $57ca: $5f
    ld c, c                                       ; $57cb: $49
    rrca                                          ; $57cc: $0f
    ld [bc], a                                    ; $57cd: $02
    ld [bc], a                                    ; $57ce: $02
    inc bc                                        ; $57cf: $03
    nop                                           ; $57d0: $00
    rst $18                                       ; $57d1: $df
    ld e, a                                       ; $57d2: $5f
    cp a                                          ; $57d3: $bf
    nop                                           ; $57d4: $00
    add b                                         ; $57d5: $80
    ld a, l                                       ; $57d6: $7d
    inc bc                                        ; $57d7: $03
    nop                                           ; $57d8: $00
    rst $18                                       ; $57d9: $df
    ld e, a                                       ; $57da: $5f
    rst $18                                       ; $57db: $df
    ld c, $bf                                     ; $57dc: $0e $bf
    ld bc, $0003                                  ; $57de: $01 $03 $00
    rst $18                                       ; $57e1: $df
    ld c, $02                                     ; $57e2: $0e $02
    ld [bc], a                                    ; $57e4: $02
    cp a                                          ; $57e5: $bf
    nop                                           ; $57e6: $00
    inc bc                                        ; $57e7: $03
    nop                                           ; $57e8: $00
    rst $18                                       ; $57e9: $df
    ld e, a                                       ; $57ea: $5f
    rst $18                                       ; $57eb: $df
    ld c, $bf                                     ; $57ec: $0e $bf

jr_046_57ee:
    nop                                           ; $57ee: $00
    inc bc                                        ; $57ef: $03
    nop                                           ; $57f0: $00
    rst $18                                       ; $57f1: $df
    ld e, a                                       ; $57f2: $5f
    ld a, $2a                                     ; $57f3: $3e $2a
    cp a                                          ; $57f5: $bf
    nop                                           ; $57f6: $00
    inc bc                                        ; $57f7: $03
    nop                                           ; $57f8: $00
    db $eb                                        ; $57f9: $eb
    nop                                           ; $57fa: $00
    rst $38                                       ; $57fb: $ff
    cp $f9                                        ; $57fc: $fe $f9
    ld a, a                                       ; $57fe: $7f
    ld [c], a                                     ; $57ff: $e2
    db $ec                                        ; $5800: $ec
    ld hl, sp-$01                                 ; $5801: $f8 $ff
    nop                                           ; $5803: $00
    db $fc                                        ; $5804: $fc
    rst $38                                       ; $5805: $ff
    db $ed                                        ; $5806: $ed
    ret nz                                        ; $5807: $c0

    and $01                                       ; $5808: $e6 $01
    rst $38                                       ; $580a: $ff
    inc bc                                        ; $580b: $03
    rst $38                                       ; $580c: $ff

Jump_046_580d:
    inc b                                         ; $580d: $04
    db $fc                                        ; $580e: $fc
    rst $38                                       ; $580f: $ff
    inc bc                                        ; $5810: $03
    rst $38                                       ; $5811: $ff
    rrca                                          ; $5812: $0f
    db $fc                                        ; $5813: $fc
    ccf                                           ; $5814: $3f
    ldh a, [$7f]                                  ; $5815: $f0 $7f
    ret nz                                        ; $5817: $c0

    rst $00                                       ; $5818: $c7
    rst $38                                       ; $5819: $ff
    add b                                         ; $581a: $80
    rst $38                                       ; $581b: $ff
    call nc, $f8e2                                ; $581c: $d4 $e2 $f8
    ldh [$9d], a                                  ; $581f: $e0 $9d
    rst $20                                       ; $5821: $e7
    ldh [$1f], a                                  ; $5822: $e0 $1f
    rst $38                                       ; $5824: $ff
    jr jr_046_57ee                                ; $5825: $18 $c7

    ccf                                           ; $5827: $3f
    and b                                         ; $5828: $a0
    ld e, a                                       ; $5829: $5f
    ret nc                                        ; $582a: $d0

    cpl                                           ; $582b: $2f
    xor b                                         ; $582c: $a8
    ld a, a                                       ; $582d: $7f
    ld d, a                                       ; $582e: $57
    push af                                       ; $582f: $f5
    ld a, [bc]                                    ; $5830: $0a
    cp $01                                        ; $5831: $fe $01
    db $fd                                        ; $5833: $fd
    ld [bc], a                                    ; $5834: $02
    or c                                          ; $5835: $b1
    ldh [$fe], a                                  ; $5836: $e0 $fe
    rst $10                                       ; $5838: $d7
    ldh [$c0], a                                  ; $5839: $e0 $c0
    ld a, a                                       ; $583b: $7f
    ldh [$3f], a                                  ; $583c: $e0 $3f
    ldh [$3f], a                                  ; $583e: $e0 $3f
    ldh a, [$df]                                  ; $5840: $f0 $df
    rra                                           ; $5842: $1f
    ldh a, [$1f]                                  ; $5843: $f0 $1f
    ld hl, sp+$0f                                 ; $5845: $f8 $0f
    ld [hl], b                                    ; $5847: $70
    add sp, $7f                                   ; $5848: $e8 $7f
    nop                                           ; $584a: $00
    rst $38                                       ; $584b: $ff
    xor a                                         ; $584c: $af
    nop                                           ; $584d: $00
    ld d, l                                       ; $584e: $55
    ld [$10f8], sp                                ; $584f: $08 $f8 $10
    ldh a, [rNR41]                                ; $5852: $f0 $20
    rst $38                                       ; $5854: $ff
    ldh [rNR41], a                                ; $5855: $e0 $20
    ldh [$4c], a                                  ; $5857: $e0 $4c
    ret nz                                        ; $5859: $c0

    ld c, a                                       ; $585a: $4f
    ret nz                                        ; $585b: $c0

    ld b, a                                       ; $585c: $47
    ld d, a                                       ; $585d: $57
    ret nz                                        ; $585e: $c0

jr_046_585f:
    ld b, [hl]                                    ; $585f: $46
    ret nz                                        ; $5860: $c0

    add b                                         ; $5861: $80
    pop hl                                        ; $5862: $e1
    ret nz                                        ; $5863: $c0

    cp $e0                                        ; $5864: $fe $e0
    ld h, b                                       ; $5866: $60
    cp $e0                                        ; $5867: $fe $e0
    db $fd                                        ; $5869: $fd
    ldh a, [$fe]                                  ; $586a: $f0 $fe
    ldh [$0c], a                                  ; $586c: $e0 $0c
    rlca                                          ; $586e: $07
    ld d, $03                                     ; $586f: $16 $03
    dec hl                                        ; $5871: $2b
    ld bc, $176f                                  ; $5872: $01 $6f $17
    nop                                           ; $5875: $00
    cpl                                           ; $5876: $2f
    nop                                           ; $5877: $00
    db $fc                                        ; $5878: $fc
    pop hl                                        ; $5879: $e1
    ld e, a                                       ; $587a: $5f
    rlca                                          ; $587b: $07
    jr nc, jr_046_585f                            ; $587c: $30 $e1

    rst $38                                       ; $587e: $ff
    inc bc                                        ; $587f: $03
    rst $38                                       ; $5880: $ff
    cp [hl]                                       ; $5881: $be
    db $fc                                        ; $5882: $fc
    db $fc                                        ; $5883: $fc
    ret nz                                        ; $5884: $c0

    ld hl, sp+$40                                 ; $5885: $f8 $40
    rst $38                                       ; $5887: $ff
    rst $38                                       ; $5888: $ff
    daa                                           ; $5889: $27
    db $fc                                        ; $588a: $fc
    rst $38                                       ; $588b: $ff
    ld hl, sp+$0f                                 ; $588c: $f8 $0f
    ld hl, sp+$3f                                 ; $588e: $f8 $3f
    rst $38                                       ; $5890: $ff
    db $ec                                        ; $5891: $ec
    rst $00                                       ; $5892: $c7
    inc b                                         ; $5893: $04
    rlca                                          ; $5894: $07
    ld b, $03                                     ; $5895: $06 $03
    cp $7f                                        ; $5897: $fe $7f
    ld c, a                                       ; $5899: $4f
    cp $83                                        ; $589a: $fe $83
    rst $38                                       ; $589c: $ff
    ld bc, $e910                                  ; $589d: $01 $10 $e9
    ld c, [hl]                                    ; $58a0: $4e
    ldh [$fe], a                                  ; $58a1: $e0 $fe
    nop                                           ; $58a3: $00
    push hl                                       ; $58a4: $e5
    rst $38                                       ; $58a5: $ff
    ld b, b                                       ; $58a6: $40
    cp $e0                                        ; $58a7: $fe $e0
    cp l                                          ; $58a9: $bd
    ldh [$2a], a                                  ; $58aa: $e0 $2a
    ldh [$35], a                                  ; $58ac: $e0 $35
    rst $28                                       ; $58ae: $ef
    nop                                           ; $58af: $00
    xor d                                         ; $58b0: $aa
    nop                                           ; $58b1: $00
    ld d, l                                       ; $58b2: $55
    db $fc                                        ; $58b3: $fc
    ld [c], a                                     ; $58b4: $e2
    ld a, [hl+]                                   ; $58b5: $2a
    nop                                           ; $58b6: $00
    dec d                                         ; $58b7: $15
    ei                                            ; $58b8: $fb
    nop                                           ; $58b9: $00
    ld a, [bc]                                    ; $58ba: $0a
    ld [de], a                                    ; $58bb: $12
    ldh [$bf], a                                  ; $58bc: $e0 $bf
    nop                                           ; $58be: $00
    ld e, a                                       ; $58bf: $5f
    nop                                           ; $58c0: $00
    xor e                                         ; $58c1: $ab
    sub [hl]                                      ; $58c2: $96
    db $ec                                        ; $58c3: $ec
    db $e4                                        ; $58c4: $e4
    ld a, [bc]                                    ; $58c5: $0a
    nop                                           ; $58c6: $00
    ret nz                                        ; $58c7: $c0

    jp hl                                         ; $58c8: $e9


    ld a, a                                       ; $58c9: $7f
    call nc, $c0e2                                ; $58ca: $d4 $e2 $c0
    pop bc                                        ; $58cd: $c1
    cp $fb                                        ; $58ce: $fe $fb
    nop                                           ; $58d0: $00
    push af                                       ; $58d1: $f5
    ret z                                         ; $58d2: $c8

    ldh [rHDMA4], a                               ; $58d3: $e0 $54
    nop                                           ; $58d5: $00
    and b                                         ; $58d6: $a0
    nop                                           ; $58d7: $00
    ld b, b                                       ; $58d8: $40
    cp d                                          ; $58d9: $ba
    or b                                          ; $58da: $b0
    ret nz                                        ; $58db: $c0

    push de                                       ; $58dc: $d5
    cp h                                          ; $58dd: $bc

jr_046_58de:
    ldh [$50], a                                  ; $58de: $e0 $50
    nop                                           ; $58e0: $00
    add b                                         ; $58e1: $80
    sub $c3                                       ; $58e2: $d6 $c3
    ld h, $ff                                     ; $58e4: $26 $ff
    ldh [rNR44], a                                ; $58e6: $e0 $23
    ld h, b                                       ; $58e8: $60
    inc hl                                        ; $58e9: $23
    and b                                         ; $58ea: $a0
    db $10                                        ; $58eb: $10
    db $10                                        ; $58ec: $10
    inc de                                        ; $58ed: $13
    rst $38                                       ; $58ee: $ff
    inc de                                        ; $58ef: $13
    ld c, $0c                                     ; $58f0: $0e $0c
    jr c, jr_046_5924                             ; $58f2: $38 $30

    ld h, b                                       ; $58f4: $60
    ld b, b                                       ; $58f5: $40
    nop                                           ; $58f6: $00
    rst $38                                       ; $58f7: $ff
    jr nc, jr_046_5909                            ; $58f8: $30 $0f

    rlca                                          ; $58fa: $07
    ld a, h                                       ; $58fb: $7c
    jr c, jr_046_58de                             ; $58fc: $38 $e0

    ret nz                                        ; $58fe: $c0

    add c                                         ; $58ff: $81
    rst $38                                       ; $5900: $ff
    nop                                           ; $5901: $00
    rlca                                          ; $5902: $07
    nop                                           ; $5903: $00
    rra                                           ; $5904: $1f
    inc bc                                        ; $5905: $03
    ld a, a                                       ; $5906: $7f
    ld c, $fc                                     ; $5907: $0e $fc

jr_046_5909:
    rst $30                                       ; $5909: $f7
    ld a, b                                       ; $590a: $78
    rst $00                                       ; $590b: $c7
    add b                                         ; $590c: $80
    ld hl, sp-$20                                 ; $590d: $f8 $e0
    rrca                                          ; $590f: $0f
    rst $38                                       ; $5910: $ff
    ld sp, $1fff                                  ; $5911: $31 $ff $1f
    db $fc                                        ; $5914: $fc
    rst $38                                       ; $5915: $ff
    ld h, b                                       ; $5916: $60
    rst $38                                       ; $5917: $ff
    add b                                         ; $5918: $80
    push bc                                       ; $5919: $c5
    jp $c16a                                      ; $591a: $c3 $6a $c1


    add sp, -$3d                                  ; $591d: $e8 $c3
    rst $38                                       ; $591f: $ff
    ld [$d515], a                                 ; $5920: $ea $15 $d5
    ld a, [hl+]                                   ; $5923: $2a

jr_046_5924:
    and d                                         ; $5924: $a2
    ld e, l                                       ; $5925: $5d
    call nc, $bf2b                                ; $5926: $d4 $2b $bf
    xor b                                         ; $5929: $a8
    ld d, a                                       ; $592a: $57
    call nc, $ea2b                                ; $592b: $d4 $2b $ea
    dec d                                         ; $592e: $15
    adc $c0                                       ; $592f: $ce $c0
    db $fc                                        ; $5931: $fc
    rst $38                                       ; $5932: $ff
    ld a, a                                       ; $5933: $7f
    ldh a, [$ba]                                  ; $5934: $f0 $ba
    ld b, l                                       ; $5936: $45
    ld d, h                                       ; $5937: $54
    xor e                                         ; $5938: $ab
    jr z, @-$27                                   ; $5939: $28 $d7

    cp a                                          ; $593b: $bf
    nop                                           ; $593c: $00
    rst $38                                       ; $593d: $ff
    adc e                                         ; $593e: $8b
    ld [hl], h                                    ; $593f: $74
    ld e, a                                       ; $5940: $5f
    and b                                         ; $5941: $a0
    ld c, h                                       ; $5942: $4c
    ldh [rNR41], a                                ; $5943: $e0 $20
    rst $38                                       ; $5945: $ff
    jp $c743                                      ; $5946: $c3 $43 $c7


    ld b, [hl]                                    ; $5949: $46
    rst $18                                       ; $594a: $df
    call c, $f0ff                                 ; $594b: $dc $ff $f0
    db $e4                                        ; $594e: $e4
    dec [hl]                                      ; $594f: $35
    pop bc                                        ; $5950: $c1
    ld a, b                                       ; $5951: $78
    ld [c], a                                     ; $5952: $e2
    xor b                                         ; $5953: $a8
    add b                                         ; $5954: $80
    ldh [$57], a                                  ; $5955: $e0 $57
    call nz, Call_000_0101                        ; $5957: $c4 $01 $01
    ld [bc], a                                    ; $595a: $02
    ld a, a                                       ; $595b: $7f
    ld [bc], a                                    ; $595c: $02
    inc b                                         ; $595d: $04
    inc b                                         ; $595e: $04
    ld [$0708], sp                                ; $595f: $08 $08 $07
    rlca                                          ; $5962: $07
    ld b, [hl]                                    ; $5963: $46
    jp $81fb                                      ; $5964: $c3 $fb $81


    add b                                         ; $5967: $80
    adc b                                         ; $5968: $88
    ldh [rTAC], a                                 ; $5969: $e0 $07
    ld a, e                                       ; $596b: $7b
    ld a, a                                       ; $596c: $7f
    add l                                         ; $596d: $85
    add a                                         ; $596e: $87
    rst $38                                       ; $596f: $ff
    inc bc                                        ; $5970: $03
    inc bc                                        ; $5971: $03
    ld [bc], a                                    ; $5972: $02
    inc bc                                        ; $5973: $03
    ld bc, $ff01                                  ; $5974: $01 $01 $ff
    jr c, @+$01                                   ; $5977: $38 $ff

    rst $38                                       ; $5979: $ff
    ldh [$fd], a                                  ; $597a: $e0 $fd
    sub b                                         ; $597c: $90
    ld a, [$fd00]                                 ; $597d: $fa $00 $fd
    or b                                          ; $5980: $b0
    rst $38                                       ; $5981: $ff
    cp $f8                                        ; $5982: $fe $f8
    db $fd                                        ; $5984: $fd
    call c, $d4fe                                 ; $5985: $dc $fe $d4
    rst $38                                       ; $5988: $ff
    ld c, $ff                                     ; $5989: $0e $ff
    rst $38                                       ; $598b: $ff
    rla                                           ; $598c: $17
    ld a, a                                       ; $598d: $7f
    cpl                                           ; $598e: $2f
    xor a                                         ; $598f: $af
    ld l, $6f                                     ; $5990: $2e $6f
    rrca                                          ; $5992: $0f
    cp a                                          ; $5993: $bf
    adc a                                         ; $5994: $8f
    dec b                                         ; $5995: $05
    rlca                                          ; $5996: $07
    inc b                                         ; $5997: $04
    rrca                                          ; $5998: $0f
    rlca                                          ; $5999: $07
    ld l, d                                       ; $599a: $6a
    ret nz                                        ; $599b: $c0

    sbc a                                         ; $599c: $9f
    rst $38                                       ; $599d: $ff
    ld hl, sp-$11                                 ; $599e: $f8 $ef
    call z, $c5c7                                 ; $59a0: $cc $c7 $c5
    rst $00                                       ; $59a3: $c7
    rst $00                                       ; $59a4: $c7
    jp nz, $c3ff                                  ; $59a5: $c2 $ff $c3

    add b                                         ; $59a8: $80
    add l                                         ; $59a9: $85
    nop                                           ; $59aa: $00
    inc e                                         ; $59ab: $1c
    rst $38                                       ; $59ac: $ff
    ld a, [hl]                                    ; $59ad: $7e
    db $e3                                        ; $59ae: $e3
    rst $38                                       ; $59af: $ff

jr_046_59b0:
    jp $9981                                      ; $59b0: $c3 $81 $99


    sbc c                                         ; $59b3: $99
    cp l                                          ; $59b4: $bd
    ld hl, $3139                                  ; $59b5: $21 $39 $31
    rst $08                                       ; $59b8: $cf
    ld [hl], e                                    ; $59b9: $73
    ld d, c                                       ; $59ba: $51
    ld h, d                                       ; $59bb: $62
    ld b, e                                       ; $59bc: $43
    pop bc                                        ; $59bd: $c1
    and e                                         ; $59be: $a3
    inc [hl]                                      ; $59bf: $34
    pop bc                                        ; $59c0: $c1
    ld a, [$ff05]                                 ; $59c1: $fa $05 $ff
    push af                                       ; $59c4: $f5
    ld a, [bc]                                    ; $59c5: $0a
    ld a, [$fd05]                                 ; $59c6: $fa $05 $fd
    ld [bc], a                                    ; $59c9: $02
    ld [$3f15], a                                 ; $59ca: $ea $15 $3f
    ld d, l                                       ; $59cd: $55
    xor d                                         ; $59ce: $aa
    xor b                                         ; $59cf: $a8
    ld d, a                                       ; $59d0: $57
    ld b, b                                       ; $59d1: $40
    cp a                                          ; $59d2: $bf
    and [hl]                                      ; $59d3: $a6
    and h                                         ; $59d4: $a4
    ld [hl], a                                    ; $59d5: $77
    and $bf                                       ; $59d6: $e6 $bf
    rlca                                          ; $59d8: $07
    rlca                                          ; $59d9: $07
    ld [$0b0f], sp                                ; $59da: $08 $0f $0b
    inc c                                         ; $59dd: $0c
    ret nz                                        ; $59de: $c0

    and l                                         ; $59df: $a5
    ldh a, [rIE]                                  ; $59e0: $f0 $ff
    ldh a, [rNR10]                                ; $59e2: $f0 $10
    ld hl, sp+$08                                 ; $59e4: $f8 $08
    jr c, jr_046_59b0                             ; $59e6: $38 $c8

    jr c, @+$03                                   ; $59e8: $38 $01

    cp $ff                                        ; $59ea: $fe $ff
    ld [c], a                                     ; $59ec: $e2
    rrca                                          ; $59ed: $0f
    rrca                                          ; $59ee: $0f
    ld [$040f], sp                                ; $59ef: $08 $0f $04
    rlca                                          ; $59f2: $07
    ld [bc], a                                    ; $59f3: $02
    rst $38                                       ; $59f4: $ff
    inc bc                                        ; $59f5: $03
    rrca                                          ; $59f6: $0f
    rrca                                          ; $59f7: $0f
    ld a, a                                       ; $59f8: $7f
    sbc $7f                                       ; $59f9: $de $7f
    ld [$ff3f], a                                 ; $59fb: $ea $3f $ff
    db $ed                                        ; $59fe: $ed
    ccf                                           ; $59ff: $3f
    pop hl                                        ; $5a00: $e1
    ld a, $e2                                     ; $5a01: $3e $e2
    rra                                           ; $5a03: $1f
    pop af                                        ; $5a04: $f1
    ld e, $f7                                     ; $5a05: $1e $f7
    ldh a, [$0c]                                  ; $5a07: $f0 $0c
    ld hl, sp-$70                                 ; $5a09: $f8 $90
    and a                                         ; $5a0b: $a7
    ld e, $1c                                     ; $5a0c: $1e $1c
    ld a, [hl]                                    ; $5a0e: $7e
    ld h, h                                       ; $5a0f: $64
    rst $18                                       ; $5a10: $df
    inc a                                         ; $5a11: $3c
    inc h                                         ; $5a12: $24
    ld [bc], a                                    ; $5a13: $02
    nop                                           ; $5a14: $00
    dec b                                         ; $5a15: $05
    ld l, c                                       ; $5a16: $69
    ret nz                                        ; $5a17: $c0

    dec b                                         ; $5a18: $05
    nop                                           ; $5a19: $00
    db $fd                                        ; $5a1a: $fd
    dec bc                                        ; $5a1b: $0b
    db $10                                        ; $5a1c: $10
    pop bc                                        ; $5a1d: $c1
    ld [bc], a                                    ; $5a1e: $02
    rra                                           ; $5a1f: $1f
    inc b                                         ; $5a20: $04
    add [hl]                                      ; $5a21: $86
    inc bc                                        ; $5a22: $03
    ld e, h                                       ; $5a23: $5c
    rst $18                                       ; $5a24: $df
    rlca                                          ; $5a25: $07
    ld hl, sp+$3f                                 ; $5a26: $f8 $3f
    ret nz                                        ; $5a28: $c0

    ld a, a                                       ; $5a29: $7f
    cp $e5                                        ; $5a2a: $fe $e5
    db $f4                                        ; $5a2c: $f4
    dec bc                                        ; $5a2d: $0b
    rst $28                                       ; $5a2e: $ef
    add sp, $17                                   ; $5a2f: $e8 $17
    ret nc                                        ; $5a31: $d0

    cpl                                           ; $5a32: $2f
    sbc h                                         ; $5a33: $9c
    and c                                         ; $5a34: $a1
    and b                                         ; $5a35: $a0
    ld e, a                                       ; $5a36: $5f
    ld b, b                                       ; $5a37: $40
    rst $30                                       ; $5a38: $f7
    cp a                                          ; $5a39: $bf
    ld sp, $66ee                                  ; $5a3a: $31 $ee $66
    and d                                         ; $5a3d: $a2
    cp $03                                        ; $5a3e: $fe $03
    db $fd                                        ; $5a40: $fd
    ld b, $7f                                     ; $5a41: $06 $7f
    ld a, [$d42c]                                 ; $5a43: $fa $2c $d4
    ld e, b                                       ; $5a46: $58
    cp b                                          ; $5a47: $b8
    ld h, b                                       ; $5a48: $60
    ldh [rLCDC], a                                ; $5a49: $e0 $40
    and l                                         ; $5a4b: $a5
    rst $20                                       ; $5a4c: $e7
    ld hl, sp+$00                                 ; $5a4d: $f8 $00
    db $fc                                        ; $5a4f: $fc
    ld c, c                                       ; $5a50: $49
    ret nz                                        ; $5a51: $c0

    ld sp, $e1ad                                  ; $5a52: $31 $ad $e1
    pop hl                                        ; $5a55: $e1
    rlca                                          ; $5a56: $07
    rst $38                                       ; $5a57: $ff
    inc c                                         ; $5a58: $0c
    dec b                                         ; $5a59: $05
    rlca                                          ; $5a5a: $07
    ld b, $07                                     ; $5a5b: $06 $07
    ld [bc], a                                    ; $5a5d: $02
    rlca                                          ; $5a5e: $07
    inc bc                                        ; $5a5f: $03
    rst $38                                       ; $5a60: $ff
    rlca                                          ; $5a61: $07
    rrca                                          ; $5a62: $0f
    rra                                           ; $5a63: $1f
    di                                            ; $5a64: $f3
    db $fc                                        ; $5a65: $fc
    sbc a                                         ; $5a66: $9f
    ldh [$38], a                                  ; $5a67: $e0 $38
    rst $38                                       ; $5a69: $ff
    db $fc                                        ; $5a6a: $fc
    call nz, $e4fc                                ; $5a6b: $c4 $fc $e4
    dec e                                         ; $5a6e: $1d
    rrca                                          ; $5a6f: $0f
    rst $38                                       ; $5a70: $ff
    di                                            ; $5a71: $f3
    rst $38                                       ; $5a72: $ff
    db $fc                                        ; $5a73: $fc
    ccf                                           ; $5a74: $3f
    ret nz                                        ; $5a75: $c0

    ldh a, [rIF]                                  ; $5a76: $f0 $0f
    inc bc                                        ; $5a78: $03
    ldh a, [rP1]                                  ; $5a79: $f0 $00
    ld a, a                                       ; $5a7b: $7f
    nop                                           ; $5a7c: $00
    inc c                                         ; $5a7d: $0c
    inc e                                         ; $5a7e: $1c
    ld a, [c]                                     ; $5a7f: $f2
    cp $3f                                        ; $5a80: $fe $3f
    jp $e1f4                                      ; $5a82: $c3 $f4 $e1


    rst $38                                       ; $5a85: $ff
    rlca                                          ; $5a86: $07
    nop                                           ; $5a87: $00
    call nz, Call_000_3103                        ; $5a88: $c4 $03 $31
    ccf                                           ; $5a8b: $3f
    ld c, [hl]                                    ; $5a8c: $4e
    ld [hl], c                                    ; $5a8d: $71
    rst $38                                       ; $5a8e: $ff
    ld c, a                                       ; $5a8f: $4f
    ld [hl], b                                    ; $5a90: $70
    add a                                         ; $5a91: $87
    ld hl, sp+$47                                 ; $5a92: $f8 $47
    ld hl, sp+$4b                                 ; $5a94: $f8 $4b
    db $fc                                        ; $5a96: $fc
    rst $38                                       ; $5a97: $ff
    ld e, e                                       ; $5a98: $5b
    db $fc                                        ; $5a99: $fc
    rst $20                                       ; $5a9a: $e7
    db $e4                                        ; $5a9b: $e4
    add [hl]                                      ; $5a9c: $86
    db $fc                                        ; $5a9d: $fc
    db $e3                                        ; $5a9e: $e3
    rst $38                                       ; $5a9f: $ff
    rst $38                                       ; $5aa0: $ff
    ld e, b                                       ; $5aa1: $58
    rst $18                                       ; $5aa2: $df
    rst $00                                       ; $5aa3: $c7
    ld b, a                                       ; $5aa4: $47
    ret nz                                        ; $5aa5: $c0

    ld b, b                                       ; $5aa6: $40
    and b                                         ; $5aa7: $a0
    ld h, b                                       ; $5aa8: $60
    cp $49                                        ; $5aa9: $fe $49
    and b                                         ; $5aab: $a0
    jr nz, jr_046_5ac6                            ; $5aac: $20 $18

    ld [$0080], sp                                ; $5aae: $08 $80 $00
    pop hl                                        ; $5ab1: $e1
    ret nz                                        ; $5ab2: $c0

    rst $38                                       ; $5ab3: $ff
    ccf                                           ; $5ab4: $3f
    jr nc, jr_046_5ac6                            ; $5ab5: $30 $0f

    rrca                                          ; $5ab7: $0f
    rlca                                          ; $5ab8: $07
    dec b                                         ; $5ab9: $05
    rrca                                          ; $5aba: $0f
    ld [$0cff], sp                                ; $5abb: $08 $ff $0c
    ld [$083f], sp                                ; $5abe: $08 $3f $08
    ld a, a                                       ; $5ac1: $7f
    db $10                                        ; $5ac2: $10
    rst $38                                       ; $5ac3: $ff
    jr nz, @+$01                                  ; $5ac4: $20 $ff

jr_046_5ac6:
    rst $38                                       ; $5ac6: $ff
    jp Jump_000_0cfe                              ; $5ac7: $c3 $fe $0c


    ld hl, sp+$30                                 ; $5aca: $f8 $30
    ldh [$c0], a                                  ; $5acc: $e0 $c0
    rst $38                                       ; $5ace: $ff
    ret nz                                        ; $5acf: $c0

    add b                                         ; $5ad0: $80
    ld a, l                                       ; $5ad1: $7d
    ld b, d                                       ; $5ad2: $42
    ld a, d                                       ; $5ad3: $7a
    ld h, l                                       ; $5ad4: $65
    sub h                                         ; $5ad5: $94
    sbc e                                         ; $5ad6: $9b
    ei                                            ; $5ad7: $fb
    db $10                                        ; $5ad8: $10
    rra                                           ; $5ad9: $1f
    cp $c0                                        ; $5ada: $fe $c0
    ld [$1818], sp                                ; $5adc: $08 $18 $18
    ld a, h                                       ; $5adf: $7c

jr_046_5ae0:
    ld h, h                                       ; $5ae0: $64
    ld a, a                                       ; $5ae1: $7f
    rra                                           ; $5ae2: $1f
    rst $38                                       ; $5ae3: $ff
    ld b, $fe                                     ; $5ae4: $06 $fe
    jr jr_046_5ae0                                ; $5ae6: $18 $f8

    ldh [$58], a                                  ; $5ae8: $e0 $58
    and $f9                                       ; $5aea: $e6 $f9
    ret nz                                        ; $5aec: $c0

    ld c, $a2                                     ; $5aed: $0e $a2
    sub c                                         ; $5aef: $91
    adc b                                         ; $5af0: $88
    inc bc                                        ; $5af1: $03
    db $fc                                        ; $5af2: $fc
    rlca                                          ; $5af3: $07
    db $fc                                        ; $5af4: $fc
    ld b, $fe                                     ; $5af5: $06 $fe
    cp $e2                                        ; $5af7: $fe $e2
    ld h, $fe                                     ; $5af9: $26 $fe
    inc hl                                        ; $5afb: $23
    cp $73                                        ; $5afc: $fe $73
    rra                                           ; $5afe: $1f

Call_046_5aff:
    pop af                                        ; $5aff: $f1
    rst $38                                       ; $5b00: $ff
    rrca                                          ; $5b01: $0f
    add hl, de                                    ; $5b02: $19
    rlca                                          ; $5b03: $07
    rrca                                          ; $5b04: $0f
    ld [bc], a                                    ; $5b05: $02
    rlca                                          ; $5b06: $07
    ld [hl-], a                                   ; $5b07: $32
    dec sp                                        ; $5b08: $3b
    rst $38                                       ; $5b09: $ff
    add hl, sp                                    ; $5b0a: $39
    cpl                                           ; $5b0b: $2f
    ccf                                           ; $5b0c: $3f
    daa                                           ; $5b0d: $27
    ccf                                           ; $5b0e: $3f
    jr nz, jr_046_5b81                            ; $5b0f: $20 $70

    adc a                                         ; $5b11: $8f
    rst $38                                       ; $5b12: $ff
    ld bc, $19fe                                  ; $5b13: $01 $fe $19
    add [hl]                                      ; $5b16: $86
    ld a, b                                       ; $5b17: $78
    add a                                         ; $5b18: $87
    ld b, b                                       ; $5b19: $40
    cp a                                          ; $5b1a: $bf
    rst $38                                       ; $5b1b: $ff
    inc c                                         ; $5b1c: $0c
    jp $eb94                                      ; $5b1d: $c3 $94 $eb


    adc h                                         ; $5b20: $8c
    di                                            ; $5b21: $f3
    rra                                           ; $5b22: $1f
    nop                                           ; $5b23: $00
    cp a                                          ; $5b24: $bf
    db $fc                                        ; $5b25: $fc
    inc bc                                        ; $5b26: $03
    ret nz                                        ; $5b27: $c0

    inc a                                         ; $5b28: $3c
    rrca                                          ; $5b29: $0f
    ret nz                                        ; $5b2a: $c0

    xor l                                         ; $5b2b: $ad
    add h                                         ; $5b2c: $84
    add b                                         ; $5b2d: $80
    ld a, a                                       ; $5b2e: $7f
    pop bc                                        ; $5b2f: $c1
    inc a                                         ; $5b30: $3c
    ld bc, $c1c0                                  ; $5b31: $01 $c0 $c1
    nop                                           ; $5b34: $00
    pop hl                                        ; $5b35: $e1
    cp $e0                                        ; $5b36: $fe $e0
    db $fd                                        ; $5b38: $fd
    ldh [$c0], a                                  ; $5b39: $e0 $c0
    add d                                         ; $5b3b: $82
    push bc                                       ; $5b3c: $c5
    add $83                                       ; $5b3d: $c6 $83
    add d                                         ; $5b3f: $82
    ld b, d                                       ; $5b40: $42

jr_046_5b41:
    jp Jump_046_42ff                              ; $5b41: $c3 $ff $42


    jp $41c1                                      ; $5b44: $c3 $c1 $41


    pop bc                                        ; $5b47: $c1
    ld b, c                                       ; $5b48: $41
    and c                                         ; $5b49: $a1
    ld h, c                                       ; $5b4a: $61
    cp a                                          ; $5b4b: $bf
    and b                                         ; $5b4c: $a0
    ld h, b                                       ; $5b4d: $60
    ret nc                                        ; $5b4e: $d0

    jr nc, jr_046_5b41                            ; $5b4f: $30 $f0

    db $10                                        ; $5b51: $10
    cp $e1                                        ; $5b52: $fe $e1
    ld l, b                                       ; $5b54: $68
    rst $38                                       ; $5b55: $ff
    sbc b                                         ; $5b56: $98
    ld l, b                                       ; $5b57: $68
    sbc b                                         ; $5b58: $98
    ld a, c                                       ; $5b59: $79
    adc c                                         ; $5b5a: $89
    ld sp, hl                                     ; $5b5b: $f9
    adc c                                         ; $5b5c: $89
    add hl, de                                    ; $5b5d: $19
    rst $38                                       ; $5b5e: $ff
    ld de, $1213                                  ; $5b5f: $11 $13 $12
    ld a, $24                                     ; $5b62: $3e $24
    ld e, h                                       ; $5b64: $5c
    ld a, b                                       ; $5b65: $78
    ld e, b                                       ; $5b66: $58
    cp a                                          ; $5b67: $bf
    ld [hl], b                                    ; $5b68: $70
    or b                                          ; $5b69: $b0
    ldh [$33], a                                  ; $5b6a: $e0 $33
    ldh [$3f], a                                  ; $5b6c: $e0 $3f
    inc b                                         ; $5b6e: $04
    ret nz                                        ; $5b6f: $c0

    add $ff                                       ; $5b70: $c6 $ff
    add e                                         ; $5b72: $83
    call z, $f847                                 ; $5b73: $cc $47 $f8
    ld c, a                                       ; $5b76: $4f
    ld [hl], b                                    ; $5b77: $70
    ccf                                           ; $5b78: $3f
    ldh [rIE], a                                  ; $5b79: $e0 $ff
    ld a, a                                       ; $5b7b: $7f
    add c                                         ; $5b7c: $81
    rst $38                                       ; $5b7d: $ff
    rlca                                          ; $5b7e: $07
    cp $84                                        ; $5b7f: $fe $84

jr_046_5b81:
    db $fc                                        ; $5b81: $fc
    ld [bc], a                                    ; $5b82: $02
    rst $28                                       ; $5b83: $ef
    cp $02                                        ; $5b84: $fe $02
    cp $01                                        ; $5b86: $fe $01
    ld [bc], a                                    ; $5b88: $02
    add b                                         ; $5b89: $80
    ld a, h                                       ; $5b8a: $7c
    rst $38                                       ; $5b8b: $ff
    adc $bf                                       ; $5b8c: $ce $bf
    add e                                         ; $5b8e: $83
    rlca                                          ; $5b8f: $07
    ld bc, $000f                                  ; $5b90: $01 $0f $00
    rra                                           ; $5b93: $1f
    dec e                                         ; $5b94: $1d
    and b                                         ; $5b95: $a0
    ld a, h                                       ; $5b96: $7c
    rst $38                                       ; $5b97: $ff
    rra                                           ; $5b98: $1f
    call c, $bb3f                                 ; $5b99: $dc $3f $bb
    rst $38                                       ; $5b9c: $ff
    cp e                                          ; $5b9d: $bb
    rst $38                                       ; $5b9e: $ff
    push af                                       ; $5b9f: $f5
    db $fd                                        ; $5ba0: $fd
    rst $38                                       ; $5ba1: $ff
    sbc b                                         ; $5ba2: $98
    ret nz                                        ; $5ba3: $c0

    ld h, b                                       ; $5ba4: $60
    ld l, [hl]                                    ; $5ba5: $6e
    ldh a, [$f7]                                  ; $5ba6: $f0 $f7
    reti                                          ; $5ba8: $d9


    di                                            ; $5ba9: $f3
    rst $38                                       ; $5baa: $ff
    db $dd                                        ; $5bab: $dd
    db $db                                        ; $5bac: $db
    rst $28                                       ; $5bad: $ef
    db $db                                        ; $5bae: $db
    rst $28                                       ; $5baf: $ef
    xor [hl]                                      ; $5bb0: $ae
    rst $30                                       ; $5bb1: $f7
    cp $57                                        ; $5bb2: $fe $57
    ld [hl], e                                    ; $5bb4: $73
    rst $38                                       ; $5bb5: $ff
    ret                                           ; $5bb6: $c9


    cp $e0                                        ; $5bb7: $fe $e0
    and l                                         ; $5bb9: $a5
    cp $e0                                        ; $5bba: $fe $e0
    ld d, e                                       ; $5bbc: $53
    cp $e0                                        ; $5bbd: $fe $e0
    rst $38                                       ; $5bbf: $ff
    and [hl]                                      ; $5bc0: $a6
    rra                                           ; $5bc1: $1f
    ld sp, $911f                                  ; $5bc2: $31 $1f $91
    rra                                           ; $5bc5: $1f
    sub e                                         ; $5bc6: $93
    rrca                                          ; $5bc7: $0f
    rst $38                                       ; $5bc8: $ff
    sbc e                                         ; $5bc9: $9b
    adc a                                         ; $5bca: $8f
    jp z, $ce87                                   ; $5bcb: $ca $87 $ce

    rst $00                                       ; $5bce: $c7
    ld b, l                                       ; $5bcf: $45
    rst $00                                       ; $5bd0: $c7
    rst $38                                       ; $5bd1: $ff
    push hl                                       ; $5bd2: $e5
    sub $e9                                       ; $5bd3: $d6 $e9
    jp z, $d6f5                                   ; $5bd5: $ca $f5 $d6

    add sp, -$15                                  ; $5bd8: $e8 $eb
    rst $38                                       ; $5bda: $ff
    db $f4                                        ; $5bdb: $f4
    rst $20                                       ; $5bdc: $e7
    ei                                            ; $5bdd: $fb
    db $ec                                        ; $5bde: $ec
    db $f4                                        ; $5bdf: $f4
    db $fc                                        ; $5be0: $fc
    db $fc                                        ; $5be1: $fc
    and $ff                                       ; $5be2: $e6 $ff
    and $7f                                       ; $5be4: $e6 $7f
    add b                                         ; $5be6: $80
    ccf                                           ; $5be7: $3f

jr_046_5be8:
    add b                                         ; $5be8: $80
    ccf                                           ; $5be9: $3f
    ret nz                                        ; $5bea: $c0

    ccf                                           ; $5beb: $3f
    rst $38                                       ; $5bec: $ff
    ret nz                                        ; $5bed: $c0

    rra                                           ; $5bee: $1f
    ret nz                                        ; $5bef: $c0

    sbc [hl]                                      ; $5bf0: $9e
    ldh [$50], a                                  ; $5bf1: $e0 $50
    ld h, a                                       ; $5bf3: $67
    daa                                           ; $5bf4: $27
    di                                            ; $5bf5: $f3
    jr c, jr_046_5be8                             ; $5bf6: $38 $f0

    ld b, [hl]                                    ; $5bf8: $46
    ret nz                                        ; $5bf9: $c0

    cp $e0                                        ; $5bfa: $fe $e0
    ld bc, $0ee0                                  ; $5bfc: $01 $e0 $0e
    inc c                                         ; $5bff: $0c
    rst $18                                       ; $5c00: $df
    ldh a, [$fc]                                  ; $5c01: $f0 $fc
    ld [hl], b                                    ; $5c03: $70
    sbc [hl]                                      ; $5c04: $9e
    sub b                                         ; $5c05: $90
    sbc h                                         ; $5c06: $9c
    pop bc                                        ; $5c07: $c1
    ld e, c                                       ; $5c08: $59
    add hl, sp                                    ; $5c09: $39
    rst $38                                       ; $5c0a: $ff
    dec b                                         ; $5c0b: $05
    db $fd                                        ; $5c0c: $fd
    ld [hl], $0f                                  ; $5c0d: $36 $0f
    scf                                           ; $5c0f: $37
    ld c, $3b                                     ; $5c10: $0e $3b
    ld b, $ff                                     ; $5c12: $06 $ff
    dec sp                                        ; $5c14: $3b
    ld b, $fa                                     ; $5c15: $06 $fa
    adc e                                         ; $5c17: $8b
    ld a, [$7c8b]                                 ; $5c18: $fa $8b $7c
    adc a                                         ; $5c1b: $8f
    rst $38                                       ; $5c1c: $ff
    db $ec                                        ; $5c1d: $ec
    rra                                           ; $5c1e: $1f
    ld hl, sp+$1f                                 ; $5c1f: $f8 $1f
    ret c                                         ; $5c21: $d8

    ccf                                           ; $5c22: $3f
    ldh a, [$3f]                                  ; $5c23: $f0 $3f
    rst $38                                       ; $5c25: $ff
    or b                                          ; $5c26: $b0
    ld a, a                                       ; $5c27: $7f
    db $dd                                        ; $5c28: $dd
    ld a, $f3                                     ; $5c29: $3e $f3
    inc c                                         ; $5c2b: $0c
    cp $01                                        ; $5c2c: $fe $01
    rst $38                                       ; $5c2e: $ff
    push af                                       ; $5c2f: $f5
    ld a, [bc]                                    ; $5c30: $0a
    ld [$f515], a                                 ; $5c31: $ea $15 $f5
    dec bc                                        ; $5c34: $0b
    jp hl                                         ; $5c35: $e9


    rla                                           ; $5c36: $17
    rst $38                                       ; $5c37: $ff
    jp nc, $e82e                                  ; $5c38: $d2 $2e $e8

    jr jr_046_5c8d                                ; $5c3b: $18 $50

    or b                                          ; $5c3d: $b0
    and b                                         ; $5c3e: $a0
    ld h, b                                       ; $5c3f: $60
    ld d, a                                       ; $5c40: $57
    ld b, b                                       ; $5c41: $40
    ret nz                                        ; $5c42: $c0

    add b                                         ; $5c43: $80
    ld h, b                                       ; $5c44: $60
    add h                                         ; $5c45: $84
    rrca                                          ; $5c46: $0f
    call nz, Call_000_0f60                        ; $5c47: $c4 $60 $0f
    call nz, $f562                                ; $5c4a: $c4 $62 $f5
    rra                                           ; $5c4d: $1f
    ret nz                                        ; $5c4e: $c0

    ld h, c                                       ; $5c4f: $61
    nop                                           ; $5c50: $00
    ld c, l                                       ; $5c51: $4d
    pop hl                                        ; $5c52: $e1
    cp a                                          ; $5c53: $bf
    ld hl, sp-$41                                 ; $5c54: $f8 $bf
    db $f4                                        ; $5c56: $f4
    rst $28                                       ; $5c57: $ef
    cp a                                          ; $5c58: $bf
    db $f4                                        ; $5c59: $f4
    rst $18                                       ; $5c5a: $df
    ld a, [$e0fe]                                 ; $5c5b: $fa $fe $e0
    db $f4                                        ; $5c5e: $f4
    xor [hl]                                      ; $5c5f: $ae
    rst $30                                       ; $5c60: $f7
    rst $38                                       ; $5c61: $ff
    db $dd                                        ; $5c62: $dd
    rst $28                                       ; $5c63: $ef
    db $dd                                        ; $5c64: $dd
    rst $28                                       ; $5c65: $ef
    ld a, [$fa7f]                                 ; $5c66: $fa $7f $fa
    ld a, a                                       ; $5c69: $7f
    rst $38                                       ; $5c6a: $ff
    ld [hl], l                                    ; $5c6b: $75
    cp a                                          ; $5c6c: $bf
    ld [hl], l                                    ; $5c6d: $75
    cp a                                          ; $5c6e: $bf
    cp d                                          ; $5c6f: $ba
    ld e, a                                       ; $5c70: $5f
    rst $38                                       ; $5c71: $ff
    and [hl]                                      ; $5c72: $a6
    cp e                                          ; $5c73: $bb
    rst $38                                       ; $5c74: $ff
    call $e0fe                                    ; $5c75: $cd $fe $e0
    sbc d                                         ; $5c78: $9a
    rst $38                                       ; $5c79: $ff
    ld a, [$40e3]                                 ; $5c7a: $fa $e3 $40
    ld h, b                                       ; $5c7d: $60
    rst $38                                       ; $5c7e: $ff
    rst $38                                       ; $5c7f: $ff
    nop                                           ; $5c80: $00
    db $e3                                        ; $5c81: $e3
    and d                                         ; $5c82: $a2
    pop hl                                        ; $5c83: $e1
    ld sp, $18f0                                  ; $5c84: $31 $f0 $18
    rst $38                                       ; $5c87: $ff
    ld hl, sp+$0c                                 ; $5c88: $f8 $0c
    db $fc                                        ; $5c8a: $fc
    ld b, $fe                                     ; $5c8b: $06 $fe

jr_046_5c8d:
    rst $38                                       ; $5c8d: $ff
    rst $38                                       ; $5c8e: $ff
    ld [hl], c                                    ; $5c8f: $71
    rst $38                                       ; $5c90: $ff
    rst $38                                       ; $5c91: $ff
    ld [hl], b                                    ; $5c92: $70

jr_046_5c93:
    db $e3                                        ; $5c93: $e3
    db $e3                                        ; $5c94: $e3
    pop af                                        ; $5c95: $f1
    ldh a, [$c8]                                  ; $5c96: $f0 $c8
    ret z                                         ; $5c98: $c8

    rst $38                                       ; $5c99: $ff
    ld b, h                                       ; $5c9a: $44
    call nz, $e262                                ; $5c9b: $c4 $62 $e2
    ld d, b                                       ; $5c9e: $50
    ret nc                                        ; $5c9f: $d0

    ret z                                         ; $5ca0: $c8

    ret z                                         ; $5ca1: $c8

    rst $38                                       ; $5ca2: $ff
    db $e4                                        ; $5ca3: $e4
    db $e4                                        ; $5ca4: $e4
    ccf                                           ; $5ca5: $3f
    ld de, $899f                                  ; $5ca6: $11 $9f $89
    rrca                                          ; $5ca9: $0f
    ld b, $fe                                     ; $5caa: $06 $fe
    jp z, $9e47                                   ; $5cac: $ca $47 $9e

    db $10                                        ; $5caf: $10
    ld a, $20                                     ; $5cb0: $3e $20
    ld a, $20                                     ; $5cb2: $3e $20
    ccf                                           ; $5cb4: $3f
    cp $fe                                        ; $5cb5: $fe $fe
    ldh [$7f], a                                  ; $5cb7: $e0 $7f
    jr nz, jr_046_5d39                            ; $5cb9: $20 $7e

    ld b, b                                       ; $5cbb: $40
    ld h, c                                       ; $5cbc: $61
    ld b, b                                       ; $5cbd: $40
    dec de                                        ; $5cbe: $1b
    rst $38                                       ; $5cbf: $ff
    ld b, $1a                                     ; $5cc0: $06 $1a
    rlca                                          ; $5cc2: $07
    dec e                                         ; $5cc3: $1d
    inc bc                                        ; $5cc4: $03
    dec e                                         ; $5cc5: $1d
    inc bc                                        ; $5cc6: $03
    dec de                                        ; $5cc7: $1b
    cp $8e                                        ; $5cc8: $fe $8e
    and b                                         ; $5cca: $a0
    dec bc                                        ; $5ccb: $0b
    rlca                                          ; $5ccc: $07
    add a                                         ; $5ccd: $87
    ld l, a                                       ; $5cce: $6f
    ldh [$7f], a                                  ; $5ccf: $e0 $7f
    ld h, b                                       ; $5cd1: $60
    ld e, a                                       ; $5cd2: $5f
    rst $38                                       ; $5cd3: $ff
    and b                                         ; $5cd4: $a0
    cp a                                          ; $5cd5: $bf
    db $10                                        ; $5cd6: $10
    rra                                           ; $5cd7: $1f
    cp $e1                                        ; $5cd8: $fe $e1
    ld [$80ea], sp                                ; $5cda: $08 $ea $80
    rst $38                                       ; $5cdd: $ff
    db $e4                                        ; $5cde: $e4
    inc e                                         ; $5cdf: $1c
    ret z                                         ; $5ce0: $c8

    jr c, jr_046_5c93                             ; $5ce1: $38 $b0

    ld d, b                                       ; $5ce3: $50
    ld h, b                                       ; $5ce4: $60
    and b                                         ; $5ce5: $a0
    rst $38                                       ; $5ce6: $ff
    ldh a, [$30]                                  ; $5ce7: $f0 $30
    add sp, $28                                   ; $5ce9: $e8 $28
    call nz, $8244                                ; $5ceb: $c4 $44 $82
    add d                                         ; $5cee: $82
    db $e4                                        ; $5cef: $e4
    ld l, $80                                     ; $5cf0: $2e $80
    ld a, [hl+]                                   ; $5cf2: $2a
    add c                                         ; $5cf3: $81
    nop                                           ; $5cf4: $00
    ld hl, sp-$7f                                 ; $5cf5: $f8 $81
    db $fc                                        ; $5cf7: $fc
    add c                                         ; $5cf8: $81
    cp a                                          ; $5cf9: $bf
    nop                                           ; $5cfa: $00
    ld e, [hl]                                    ; $5cfb: $5e
    rst $38                                       ; $5cfc: $ff
    nop                                           ; $5cfd: $00
    cp h                                          ; $5cfe: $bc
    ld bc, $017b                                  ; $5cff: $01 $7b $01
    db $fd                                        ; $5d02: $fd
    inc bc                                        ; $5d03: $03
    ei                                            ; $5d04: $fb
    cp a                                          ; $5d05: $bf
    inc bc                                        ; $5d06: $03
    ld a, [c]                                     ; $5d07: $f2
    rlca                                          ; $5d08: $07
    db $e4                                        ; $5d09: $e4
    rrca                                          ; $5d0a: $0f
    rst $18                                       ; $5d0b: $df
    ld c, b                                       ; $5d0c: $48
    ldh [$9f], a                                  ; $5d0d: $e0 $9f
    rst $38                                       ; $5d0f: $ff
    ld a, [$ffbf]                                 ; $5d10: $fa $bf $ff
    ccf                                           ; $5d13: $3f
    rst $38                                       ; $5d14: $ff
    ccf                                           ; $5d15: $3f
    and $7f                                       ; $5d16: $e6 $7f
    rst $38                                       ; $5d18: $ff
    and $7f                                       ; $5d19: $e6 $7f
    ret nz                                        ; $5d1b: $c0

    cp d                                          ; $5d1c: $ba
    ld e, a                                       ; $5d1d: $5f
    ld e, h                                       ; $5d1e: $5c
    xor a                                         ; $5d1f: $af
    ld e, h                                       ; $5d20: $5c
    cpl                                           ; $5d21: $2f
    xor a                                         ; $5d22: $af
    rst $38                                       ; $5d23: $ff
    rst $38                                       ; $5d24: $ff
    ei                                            ; $5d25: $fb
    ld h, d                                       ; $5d26: $62
    ld b, b                                       ; $5d27: $40
    inc bc                                        ; $5d28: $03
    inc d                                         ; $5d29: $14
    ld b, b                                       ; $5d2a: $40
    rst $38                                       ; $5d2b: $ff
    db $ed                                        ; $5d2c: $ed
    ld [$4a00], a                                 ; $5d2d: $ea $00 $4a
    rrca                                          ; $5d30: $0f
    jr nz, jr_046_5d9b                            ; $5d31: $20 $68

    cp $df                                        ; $5d33: $fe $df
    add b                                         ; $5d35: $80
    db $fc                                        ; $5d36: $fc
    nop                                           ; $5d37: $00
    ld sp, hl                                     ; $5d38: $f9

jr_046_5d39:
    sub d                                         ; $5d39: $92
    ldh [rNR50], a                                ; $5d3a: $e0 $24
    add c                                         ; $5d3c: $81
    ldh a, [rLCDC]                                ; $5d3d: $f0 $40
    add sp, $43                                   ; $5d3f: $e8 $43
    nop                                           ; $5d41: $00
    inc h                                         ; $5d42: $24
    ld h, b                                       ; $5d43: $60
    call c, $aa45                                 ; $5d44: $dc $45 $aa
    inc d                                         ; $5d47: $14
    ld [hl], e                                    ; $5d48: $73
    add b                                         ; $5d49: $80
    ld e, b                                       ; $5d4a: $58
    ld b, c                                       ; $5d4b: $41
    ccf                                           ; $5d4c: $3f
    cp $e0                                        ; $5d4d: $fe $e0
    sbc d                                         ; $5d4f: $9a
    ret z                                         ; $5d50: $c8

    ld b, h                                       ; $5d51: $44
    or b                                          ; $5d52: $b0
    dec h                                         ; $5d53: $25
    ret z                                         ; $5d54: $c8

    ld b, l                                       ; $5d55: $45
    ld e, h                                       ; $5d56: $5c
    or b                                          ; $5d57: $b0
    rst $20                                       ; $5d58: $e7
    call c, Call_046_5541                         ; $5d59: $dc $41 $55
    nop                                           ; $5d5c: $00
    ld a, [$40d4]                                 ; $5d5d: $fa $d4 $40
    ld [$42dc], a                                 ; $5d60: $ea $dc $42
    and h                                         ; $5d63: $a4
    sbc b                                         ; $5d64: $98
    ld b, c                                       ; $5d65: $41
    or h                                          ; $5d66: $b4
    rst $20                                       ; $5d67: $e7
    and b                                         ; $5d68: $a0
    and [hl]                                      ; $5d69: $a6
    inc h                                         ; $5d6a: $24
    add h                                         ; $5d6b: $84
    ld b, l                                       ; $5d6c: $45
    ld [$e8f0], sp                                ; $5d6d: $08 $f0 $e8
    xor d                                         ; $5d70: $aa
    ld d, h                                       ; $5d71: $54
    dec bc                                        ; $5d72: $0b
    ld [c], a                                     ; $5d73: $e2
    sub b                                         ; $5d74: $90
    dec h                                         ; $5d75: $25
    ld a, a                                       ; $5d76: $7f
    ld l, h                                       ; $5d77: $6c
    ld b, d                                       ; $5d78: $42
    cpl                                           ; $5d79: $2f
    ld h, b                                       ; $5d7a: $60
    ld b, d                                       ; $5d7b: $42
    dec b                                         ; $5d7c: $05
    add h                                         ; $5d7d: $84
    ld b, d                                       ; $5d7e: $42
    db $fd                                        ; $5d7f: $fd
    ld [$610c], a                                 ; $5d80: $ea $0c $61
    inc bc                                        ; $5d83: $03
    ld b, e                                       ; $5d84: $43
    rlca                                          ; $5d85: $07
    add l                                         ; $5d86: $85
    rra                                           ; $5d87: $1f
    add hl, de                                    ; $5d88: $19
    and d                                         ; $5d89: $a2
    ld b, b                                       ; $5d8a: $40
    ld b, b                                       ; $5d8b: $40
    ld b, b                                       ; $5d8c: $40
    ld e, h                                       ; $5d8d: $5c
    ld a, [hl+]                                   ; $5d8e: $2a
    ld a, b                                       ; $5d8f: $78
    ld b, h                                       ; $5d90: $44
    ld a, [$02f3]                                 ; $5d91: $fa $f3 $02
    ld c, a                                       ; $5d94: $4f
    ld b, b                                       ; $5d95: $40
    xor b                                         ; $5d96: $a8
    ld c, b                                       ; $5d97: $48
    inc sp                                        ; $5d98: $33
    and $07                                       ; $5d99: $e6 $07

jr_046_5d9b:
    ld b, c                                       ; $5d9b: $41
    set 4, l                                      ; $5d9c: $cb $e5
    ld b, b                                       ; $5d9e: $40
    db $fc                                        ; $5d9f: $fc
    db $e4                                        ; $5da0: $e4
    sub a                                         ; $5da1: $97
    jp nz, $8002                                  ; $5da2: $c2 $02 $80

    rst $20                                       ; $5da5: $e7
    rst $38                                       ; $5da6: $ff
    ld a, a                                       ; $5da7: $7f
    ld [hl], c                                    ; $5da8: $71
    rst $38                                       ; $5da9: $ff
    pop bc                                        ; $5daa: $c1
    rst $38                                       ; $5dab: $ff
    add c                                         ; $5dac: $81
    ei                                            ; $5dad: $fb
    dec b                                         ; $5dae: $05
    rst $38                                       ; $5daf: $ff
    db $fd                                        ; $5db0: $fd
    inc bc                                        ; $5db1: $03
    db $eb                                        ; $5db2: $eb
    rla                                           ; $5db3: $17
    sub $2a                                       ; $5db4: $d6 $2a

jr_046_5db6:
    xor d                                         ; $5db6: $aa
    ld d, [hl]                                    ; $5db7: $56
    ld [hl+], a                                   ; $5db8: $22
    ldh a, [$09]                                  ; $5db9: $f0 $09
    dec b                                         ; $5dbb: $05
    sla b                                         ; $5dbc: $cb $20
    adc b                                         ; $5dbe: $88
    ld b, [hl]                                    ; $5dbf: $46
    or a                                          ; $5dc0: $b7
    inc h                                         ; $5dc1: $24
    dec d                                         ; $5dc2: $15
    rst $00                                       ; $5dc3: $c7
    add $a7                                       ; $5dc4: $c6 $a7
    ld hl, $a8e9                                  ; $5dc6: $21 $e9 $a8
    db $ed                                        ; $5dc9: $ed
    ld b, e                                       ; $5dca: $43
    adc h                                         ; $5dcb: $8c
    ld [$3480], sp                                ; $5dcc: $08 $80 $34
    ld hl, $3080                                  ; $5dcf: $21 $80 $30
    ret nz                                        ; $5dd2: $c0

    rst $38                                       ; $5dd3: $ff
    jr jr_046_5db6                                ; $5dd4: $18 $e0

    inc c                                         ; $5dd6: $0c
    ldh a, [rTMA]                                 ; $5dd7: $f0 $06
    ld hl, sp+$03                                 ; $5dd9: $f8 $03
    db $fc                                        ; $5ddb: $fc
    add sp, -$60                                  ; $5ddc: $e8 $a0
    rlca                                          ; $5dde: $07
    sbc c                                         ; $5ddf: $99
    jp $0990                                      ; $5de0: $c3 $90 $09


    jr z, @-$61                                   ; $5de3: $28 $9d

    jr nz, jr_046_5e3d                            ; $5de5: $20 $56

    xor [hl]                                      ; $5de7: $ae
    add h                                         ; $5de8: $84
    rst $38                                       ; $5de9: $ff
    ld a, h                                       ; $5dea: $7c
    inc c                                         ; $5deb: $0c
    db $f4                                        ; $5dec: $f4

jr_046_5ded:
    ld [$18f8], sp                                ; $5ded: $08 $f8 $18
    add sp, $10                                   ; $5df0: $e8 $10
    rra                                           ; $5df2: $1f
    ldh a, [$30]                                  ; $5df3: $f0 $30
    ret nc                                        ; $5df5: $d0

    jr nz, @-$1e                                  ; $5df6: $20 $e0

    xor b                                         ; $5df8: $a8
    push hl                                       ; $5df9: $e5
    rrca                                          ; $5dfa: $0f
    ld b, l                                       ; $5dfb: $45
    ld l, e                                       ; $5dfc: $6b
    jp $ba78                                      ; $5dfd: $c3 $78 $ba


    jp hl                                         ; $5e00: $e9


    rst $38                                       ; $5e01: $ff
    res 6, [hl]                                   ; $5e02: $cb $b6
    add b                                         ; $5e04: $80
    ldh [rIF], a                                  ; $5e05: $e0 $0f
    ldh a, [rTAC]                                 ; $5e07: $f0 $07
    sub [hl]                                      ; $5e09: $96
    ldh [$d9], a                                  ; $5e0a: $e0 $d9
    ld bc, $2204                                  ; $5e0c: $01 $04 $22
    rst $38                                       ; $5e0f: $ff
    and e                                         ; $5e10: $a3
    add e                                         ; $5e11: $83
    ld a, h                                       ; $5e12: $7c
    cp $e3                                        ; $5e13: $fe $e3
    inc bc                                        ; $5e15: $03
    db $fc                                        ; $5e16: $fc
    ld a, b                                       ; $5e17: $78
    ld bc, $0525                                  ; $5e18: $01 $25 $05
    ld hl, $c1d1                                  ; $5e1b: $21 $d1 $c1
    ld h, b                                       ; $5e1e: $60
    and b                                         ; $5e1f: $a0
    ret nz                                        ; $5e20: $c0

    ld b, b                                       ; $5e21: $40
    call nc, $fc85                                ; $5e22: $d4 $85 $fc
    pop bc                                        ; $5e25: $c1
    push bc                                       ; $5e26: $c5
    ld b, [hl]                                    ; $5e27: $46
    jr nz, jr_046_5e2a                            ; $5e28: $20 $00

jr_046_5e2a:
    jr c, jr_046_5e33                             ; $5e2a: $38 $07

    ld [hl], b                                    ; $5e2c: $70
    rrca                                          ; $5e2d: $0f
    ldh [$bf], a                                  ; $5e2e: $e0 $bf
    rra                                           ; $5e30: $1f
    ldh [$1f], a                                  ; $5e31: $e0 $1f

jr_046_5e33:
    ld bc, $0300                                  ; $5e33: $01 $00 $03
    ld [bc], a                                    ; $5e36: $02
    ld b, b                                       ; $5e37: $40
    db $fc                                        ; $5e38: $fc
    ld a, l                                       ; $5e39: $7d
    inc bc                                        ; $5e3a: $03
    sbc h                                         ; $5e3b: $9c
    ld b, b                                       ; $5e3c: $40

jr_046_5e3d:
    db $fc                                        ; $5e3d: $fc
    rlca                                          ; $5e3e: $07
    ld hl, sp+$07                                 ; $5e3f: $f8 $07
    ld hl, sp+$2e                                 ; $5e41: $f8 $2e
    ld bc, $7cdf                                  ; $5e43: $01 $df $7c
    add e                                         ; $5e46: $83
    ld hl, sp+$07                                 ; $5e47: $f8 $07
    ldh a, [$e2]                                  ; $5e49: $f0 $e2
    ldh [$c0], a                                  ; $5e4b: $e0 $c0
    ccf                                           ; $5e4d: $3f
    db $eb                                        ; $5e4e: $eb
    add b                                         ; $5e4f: $80
    ld a, a                                       ; $5e50: $7f
    and b                                         ; $5e51: $a0
    and e                                         ; $5e52: $a3

jr_046_5e53:
    jr nc, jr_046_5e53                            ; $5e53: $30 $fe

    ldh [$78], a                                  ; $5e55: $e0 $78
    rst $28                                       ; $5e57: $ef
    ld a, b                                       ; $5e58: $78
    rst $18                                       ; $5e59: $df
    rst $28                                       ; $5e5a: $ef
    call z, Call_000_03f7                         ; $5e5b: $cc $f7 $03
    db $fc                                        ; $5e5e: $fc
    cp $e3                                        ; $5e5f: $fe $e3
    ld [bc], a                                    ; $5e61: $02
    db $fd                                        ; $5e62: $fd
    db $ec                                        ; $5e63: $ec
    ld a, [hl]                                    ; $5e64: $7e
    inc bc                                        ; $5e65: $03
    ldh a, [$cb]                                  ; $5e66: $f0 $cb
    add b                                         ; $5e68: $80
    rst $38                                       ; $5e69: $ff
    jr nz, jr_046_5ded                            ; $5e6a: $20 $81

    inc e                                         ; $5e6c: $1c
    ldh [$0e], a                                  ; $5e6d: $e0 $0e
    ld l, b                                       ; $5e6f: $68
    ld e, [hl]                                    ; $5e70: $5e
    ldh [$fe], a                                  ; $5e71: $e0 $fe
    db $e3                                        ; $5e73: $e3
    or b                                          ; $5e74: $b0
    rst $00                                       ; $5e75: $c7
    inc bc                                        ; $5e76: $03
    adc $00                                       ; $5e77: $ce $00
    ld c, $01                                     ; $5e79: $0e $01
    adc h                                         ; $5e7b: $8c
    pop hl                                        ; $5e7c: $e1
    ret nz                                        ; $5e7d: $c0

    adc b                                         ; $5e7e: $88
    pop hl                                        ; $5e7f: $e1
    and h                                         ; $5e80: $a4
    pop hl                                        ; $5e81: $e1
    adc d                                         ; $5e82: $8a
    ld h, c                                       ; $5e83: $61
    adc h                                         ; $5e84: $8c
    pop hl                                        ; $5e85: $e1
    inc [hl]                                      ; $5e86: $34
    push hl                                       ; $5e87: $e5
    adc $00                                       ; $5e88: $ce $00
    rst $38                                       ; $5e8a: $ff
    add b                                         ; $5e8b: $80
    push af                                       ; $5e8c: $f5
    ld a, a                                       ; $5e8d: $7f
    cp $e1                                        ; $5e8e: $fe $e1
    adc h                                         ; $5e90: $8c
    cp $e0                                        ; $5e91: $fe $e0
    ld e, $fb                                     ; $5e93: $1e $fb
    ld e, $fb                                     ; $5e95: $1e $fb
    rst $38                                       ; $5e97: $ff
    scf                                           ; $5e98: $37
    db $fd                                        ; $5e99: $fd
    call z, $b6f7                                 ; $5e9a: $cc $f7 $b6
    db $eb                                        ; $5e9d: $eb
    or [hl]                                       ; $5e9e: $b6
    db $eb                                        ; $5e9f: $eb
    rst $38                                       ; $5ea0: $ff
    ld c, e                                       ; $5ea1: $4b
    push af                                       ; $5ea2: $f5
    ld c, e                                       ; $5ea3: $4b
    push af                                       ; $5ea4: $f5
    and l                                         ; $5ea5: $a5
    ld a, [$faa5]                                 ; $5ea6: $fa $a5 $fa
    ld d, a                                       ; $5ea9: $57
    ld b, d                                       ; $5eaa: $42
    db $fd                                        ; $5eab: $fd
    ld bc, $82f8                                  ; $5eac: $01 $f8 $82
    ld b, $fe                                     ; $5eaf: $06 $fe
    ldh [$8d], a                                  ; $5eb1: $e0 $8d
    cp $e0                                        ; $5eb3: $fe $e0
    db $fd                                        ; $5eb5: $fd
    jp c, Jump_000_22c8                           ; $5eb6: $da $c8 $22

    ld h, c                                       ; $5eb9: $61
    cp a                                          ; $5eba: $bf
    ld h, c                                       ; $5ebb: $61
    cp a                                          ; $5ebc: $bf
    or c                                          ; $5ebd: $b1
    ld e, a                                       ; $5ebe: $5f
    rst $38                                       ; $5ebf: $ff
    or e                                          ; $5ec0: $b3
    ld e, a                                       ; $5ec1: $5f
    ld e, e                                       ; $5ec2: $5b
    xor a                                         ; $5ec3: $af
    ld e, [hl]                                    ; $5ec4: $5e
    xor a                                         ; $5ec5: $af
    rlca                                          ; $5ec6: $07
    ld hl, sp-$11                                 ; $5ec7: $f8 $ef
    ld b, $f9                                     ; $5ec9: $06 $f9
    add h                                         ; $5ecb: $84
    ei                                            ; $5ecc: $fb
    or [hl]                                       ; $5ecd: $b6
    ld hl, $bf60                                  ; $5ece: $21 $60 $bf
    ld h, b                                       ; $5ed1: $60
    cp [hl]                                       ; $5ed2: $be
    ld [$1ce0], a                                 ; $5ed3: $ea $e0 $1c
    inc bc                                        ; $5ed6: $03
    jr c, jr_046_5ee0                             ; $5ed7: $38 $07

    ld a, b                                       ; $5ed9: $78
    daa                                           ; $5eda: $27
    pop hl                                        ; $5edb: $e1
    rra                                           ; $5edc: $1f
    cp a                                          ; $5edd: $bf
    ld hl, sp-$61                                 ; $5ede: $f8 $9f

jr_046_5ee0:
    db $fc                                        ; $5ee0: $fc
    or a                                          ; $5ee1: $b7
    ld a, h                                       ; $5ee2: $7c
    rst $30                                       ; $5ee3: $f7
    jp nz, Jump_000_0de5                          ; $5ee4: $c2 $e5 $0d

    ld a, [c]                                     ; $5ee7: $f2
    cp $e0                                        ; $5ee8: $fe $e0
    ld a, [de]                                    ; $5eea: $1a
    cp $e0                                        ; $5eeb: $fe $e0
    adc h                                         ; $5eed: $8c
    ld hl, $bfe0                                  ; $5eee: $21 $e0 $bf
    ldh [$bf], a                                  ; $5ef1: $e0 $bf
    rst $38                                       ; $5ef3: $ff
    or b                                          ; $5ef4: $b0
    ld e, a                                       ; $5ef5: $5f
    or c                                          ; $5ef6: $b1
    ld e, a                                       ; $5ef7: $5f
    ld e, c                                       ; $5ef8: $59
    xor a                                         ; $5ef9: $af
    ld e, a                                       ; $5efa: $5f
    xor a                                         ; $5efb: $af
    rst $38                                       ; $5efc: $ff
    scf                                           ; $5efd: $37
    db $fd                                        ; $5efe: $fd
    ld l, l                                       ; $5eff: $6d
    ld a, [$fa6d]                                 ; $5f00: $fa $6d $fa
    jp nc, $fffd                                  ; $5f03: $d2 $fd $ff

    jp nc, $a1fd                                  ; $5f06: $d2 $fd $a1

    cp $a1                                        ; $5f09: $fe $a1
    cp $40                                        ; $5f0b: $fe $40
    rst $38                                       ; $5f0d: $ff
    sbc a                                         ; $5f0e: $9f
    ld b, d                                       ; $5f0f: $42
    db $fd                                        ; $5f10: $fd
    add c                                         ; $5f11: $81
    cp $81                                        ; $5f12: $fe $81
    sub [hl]                                      ; $5f14: $96
    jp nz, $8396                                  ; $5f15: $c2 $96 $83

    jp c, $b8fc                                   ; $5f18: $da $fc $b8

    ld h, h                                       ; $5f1b: $64
    ld l, b                                       ; $5f1c: $68
    add e                                         ; $5f1d: $83
    inc l                                         ; $5f1e: $2c
    rst $10                                       ; $5f1f: $d7
    ld l, $d7                                     ; $5f20: $2e $d7
    cpl                                           ; $5f22: $2f
    rst $10                                       ; $5f23: $d7
    rst $38                                       ; $5f24: $ff
    rla                                           ; $5f25: $17
    db $eb                                        ; $5f26: $eb
    rla                                           ; $5f27: $17
    db $eb                                        ; $5f28: $eb
    dec bc                                        ; $5f29: $0b
    push af                                       ; $5f2a: $f5
    dec bc                                        ; $5f2b: $0b
    push af                                       ; $5f2c: $f5
    rst $18                                       ; $5f2d: $df
    dec b                                         ; $5f2e: $05
    ld a, [$fa05]                                 ; $5f2f: $fa $05 $fa
    or c                                          ; $5f32: $b1
    ld a, d                                       ; $5f33: $7a
    ldh [$5b], a                                  ; $5f34: $e0 $5b
    xor a                                         ; $5f36: $af
    db $fd                                        ; $5f37: $fd
    ld l, $e8                                     ; $5f38: $2e $e8
    ldh [$97], a                                  ; $5f3a: $e0 $97
    db $eb                                        ; $5f3c: $eb
    sub a                                         ; $5f3d: $97
    db $eb                                        ; $5f3e: $eb
    set 6, l                                      ; $5f3f: $cb $f5
    ld a, a                                       ; $5f41: $7f
    ld h, [hl]                                    ; $5f42: $66
    ei                                            ; $5f43: $fb
    ld h, [hl]                                    ; $5f44: $66
    ei                                            ; $5f45: $fb
    db $db                                        ; $5f46: $db
    push af                                       ; $5f47: $f5
    db $db                                        ; $5f48: $db
    ld b, d                                       ; $5f49: $42
    ld [c], a                                     ; $5f4a: $e2
    rst $38                                       ; $5f4b: $ff
    ld b, e                                       ; $5f4c: $43
    db $fd                                        ; $5f4d: $fd
    ld b, e                                       ; $5f4e: $43
    db $fd                                        ; $5f4f: $fd
    inc [hl]                                      ; $5f50: $34
    rst $38                                       ; $5f51: $ff
    inc [hl]                                      ; $5f52: $34
    rst $38                                       ; $5f53: $ff
    push de                                       ; $5f54: $d5
    ld l, b                                       ; $5f55: $68
    cp $e0                                        ; $5f56: $fe $e0
    ret nc                                        ; $5f58: $d0

    cp $e0                                        ; $5f59: $fe $e0
    and b                                         ; $5f5b: $a0
    cp $e0                                        ; $5f5c: $fe $e0
    cpl                                           ; $5f5e: $2f
    rst $10                                       ; $5f5f: $d7
    ld a, a                                       ; $5f60: $7f
    ld l, $df                                     ; $5f61: $2e $df
    ld e, $ef                                     ; $5f63: $1e $ef
    dec e                                         ; $5f65: $1d
    rst $28                                       ; $5f66: $ef
    dec e                                         ; $5f67: $1d
    ld [hl], d                                    ; $5f68: $72
    ldh [$d5], a                                  ; $5f69: $e0 $d5
    ld a, [hl-]                                   ; $5f6b: $3a
    db $e4                                        ; $5f6c: $e4
    ldh [rLCDC], a                                ; $5f6d: $e0 $40
    cp h                                          ; $5f6f: $bc
    ret nz                                        ; $5f70: $c0

    add b                                         ; $5f71: $80
    ld a, [hl+]                                   ; $5f72: $2a
    adc d                                         ; $5f73: $8a
    rst $38                                       ; $5f74: $ff
    rst $38                                       ; $5f75: $ff
    rst $18                                       ; $5f76: $df
    rst $18                                       ; $5f77: $df
    rst $38                                       ; $5f78: $ff
    ld l, c                                       ; $5f79: $69
    rst $38                                       ; $5f7a: $ff
    ld e, c                                       ; $5f7b: $59
    jp z, Jump_046_48e0                           ; $5f7c: $ca $e0 $48

    rst $38                                       ; $5f7f: $ff
    rst $08                                       ; $5f80: $cf
    ld a, b                                       ; $5f81: $78
    rst $38                                       ; $5f82: $ff
    ld l, $d7                                     ; $5f83: $2e $d7
    ld e, b                                       ; $5f85: $58
    ld h, b                                       ; $5f86: $60
    adc b                                         ; $5f87: $88
    pop bc                                        ; $5f88: $c1
    rst $38                                       ; $5f89: $ff
    add hl, de                                    ; $5f8a: $19
    cp $fe                                        ; $5f8b: $fe $fe
    ldh [rSB], a                                  ; $5f8d: $e0 $01
    rst $38                                       ; $5f8f: $ff
    ld [bc], a                                    ; $5f90: $02
    db $fd                                        ; $5f91: $fd
    ld [bc], a                                    ; $5f92: $02
    db $fd                                        ; $5f93: $fd
    rst $38                                       ; $5f94: $ff
    ei                                            ; $5f95: $fb
    rst $38                                       ; $5f96: $ff
    cp h                                          ; $5f97: $bc
    inc sp                                        ; $5f98: $33
    ld h, b                                       ; $5f99: $60
    and c                                         ; $5f9a: $a1
    rst $38                                       ; $5f9b: $ff
    ld hl, $e0ff                                  ; $5f9c: $21 $ff $e0
    ld a, a                                       ; $5f9f: $7f
    rst $38                                       ; $5fa0: $ff
    bit 6, l                                      ; $5fa1: $cb $75
    push hl                                       ; $5fa3: $e5
    ld a, d                                       ; $5fa4: $7a
    push hl                                       ; $5fa5: $e5
    ld a, [$e1ec]                                 ; $5fa6: $fa $ec $e1
    ld e, l                                       ; $5fa9: $5d
    jp $e0fe                                      ; $5faa: $c3 $fe $e0


    nop                                           ; $5fad: $00
    rst $38                                       ; $5fae: $ff
    add c                                         ; $5faf: $81
    cp $e0                                        ; $5fb0: $fe $e0
    ld bc, $62c8                                  ; $5fb2: $01 $c8 $62
    push de                                       ; $5fb5: $d5

jr_046_5fb6:
    jr jr_046_5fb6                                ; $5fb6: $18 $fe

    ldh [rP1], a                                  ; $5fb8: $e0 $00
    and b                                         ; $5fba: $a0
    ldh [rLCDC], a                                ; $5fbb: $e0 $40
    cp h                                          ; $5fbd: $bc
    ld h, b                                       ; $5fbe: $60
    db $fd                                        ; $5fbf: $fd
    rst $38                                       ; $5fc0: $ff
    rst $38                                       ; $5fc1: $ff
    cp $ff                                        ; $5fc2: $fe $ff
    dec b                                         ; $5fc4: $05
    rst $38                                       ; $5fc5: $ff
    inc b                                         ; $5fc6: $04
    rst $38                                       ; $5fc7: $ff
    rlca                                          ; $5fc8: $07
    rst $38                                       ; $5fc9: $ff
    ld [hl], l                                    ; $5fca: $75
    ld [hl], h                                    ; $5fcb: $74
    ld sp, hl                                     ; $5fcc: $f9
    ld b, b                                       ; $5fcd: $40
    rst $38                                       ; $5fce: $ff
    ld c, b                                       ; $5fcf: $48
    ret nz                                        ; $5fd0: $c0

    rst $38                                       ; $5fd1: $ff
    rst $38                                       ; $5fd2: $ff
    sbc b                                         ; $5fd3: $98
    cp $e0                                        ; $5fd4: $fe $e0
    inc bc                                        ; $5fd6: $03
    add b                                         ; $5fd7: $80
    rst $38                                       ; $5fd8: $ff
    nop                                           ; $5fd9: $00
    nop                                           ; $5fda: $00
    nop                                           ; $5fdb: $00
    dec b                                         ; $5fdc: $05
    ld e, a                                       ; $5fdd: $5f
    rst $38                                       ; $5fde: $ff
    ldh a, [rP1]                                  ; $5fdf: $f0 $00
    rst $38                                       ; $5fe1: $ff
    rst $38                                       ; $5fe2: $ff
    rst $20                                       ; $5fe3: $e7
    and $c0                                       ; $5fe4: $e6 $c0
    rst $38                                       ; $5fe6: $ff
    ret nz                                        ; $5fe7: $c0

    rst $38                                       ; $5fe8: $ff
    ret nz                                        ; $5fe9: $c0

    rst $38                                       ; $5fea: $ff
    ld l, b                                       ; $5feb: $68
    ret nz                                        ; $5fec: $c0

    rst $38                                       ; $5fed: $ff
    ret nz                                        ; $5fee: $c0

    rst $38                                       ; $5fef: $ff
    db $f4                                        ; $5ff0: $f4
    di                                            ; $5ff1: $f3
    ld h, b                                       ; $5ff2: $60
    db $dd                                        ; $5ff3: $dd
    rst $20                                       ; $5ff4: $e7
    ld bc, $d102                                  ; $5ff5: $01 $02 $d1
    ld [c], a                                     ; $5ff8: $e2
    rra                                           ; $5ff9: $1f
    ld h, c                                       ; $5ffa: $61
    ld h, d                                       ; $5ffb: $62
    inc bc                                        ; $5ffc: $03
    nop                                           ; $5ffd: $00
    nop                                           ; $5ffe: $00

Jump_046_5fff:
    db $fd                                        ; $5fff: $fd
    ldh [rIE], a                                  ; $6000: $e0 $ff
    rst $38                                       ; $6002: $ff
    ld [c], a                                     ; $6003: $e2
    pop hl                                        ; $6004: $e1
    rst $30                                       ; $6005: $f7
    ld h, e                                       ; $6006: $63
    ld h, h                                       ; $6007: $64
    ld h, l                                       ; $6008: $65
    db $db                                        ; $6009: $db
    db $e3                                        ; $600a: $e3
    inc b                                         ; $600b: $04
    dec b                                         ; $600c: $05
    ld b, $07                                     ; $600d: $06 $07
    sbc l                                         ; $600f: $9d
    ld [$e0d0], sp                                ; $6010: $08 $d0 $e0
    ld h, [hl]                                    ; $6013: $66
    ld h, a                                       ; $6014: $67
    ld l, b                                       ; $6015: $68
    ret nz                                        ; $6016: $c0

    rst $38                                       ; $6017: $ff
    add sp, -$19                                  ; $6018: $e8 $e7
    inc bc                                        ; $601a: $03
    rst $28                                       ; $601b: $ef
    ld l, c                                       ; $601c: $69
    ld l, d                                       ; $601d: $6a
    ld l, e                                       ; $601e: $6b
    add hl, bc                                    ; $601f: $09
    reti                                          ; $6020: $d9


    pop hl                                        ; $6021: $e1
    ld a, [bc]                                    ; $6022: $0a
    dec bc                                        ; $6023: $0b
    inc c                                         ; $6024: $0c
    rst $38                                       ; $6025: $ff
    dec c                                         ; $6026: $0d
    ld c, $0f                                     ; $6027: $0e $0f
    db $10                                        ; $6029: $10
    ld l, h                                       ; $602a: $6c
    ld l, l                                       ; $602b: $6d
    ld l, [hl]                                    ; $602c: $6e
    ld l, a                                       ; $602d: $6f
    db $fc                                        ; $602e: $fc
    jp z, $e8ff                                   ; $602f: $ca $ff $e8

    rst $20                                       ; $6032: $e7
    ld [hl], b                                    ; $6033: $70
    ld [hl], c                                    ; $6034: $71
    inc bc                                        ; $6035: $03
    ld [hl], d                                    ; $6036: $72
    ld de, $ff12                                  ; $6037: $11 $12 $ff
    inc de                                        ; $603a: $13
    inc d                                         ; $603b: $14
    dec d                                         ; $603c: $15
    ld d, $17                                     ; $603d: $16 $17
    jr @+$1b                                      ; $603f: $18 $19

    ld a, [de]                                    ; $6041: $1a
    ccf                                           ; $6042: $3f
    dec de                                        ; $6043: $1b
    inc e                                         ; $6044: $1c
    ld [hl], e                                    ; $6045: $73
    ld [hl], h                                    ; $6046: $74
    ld [hl], l                                    ; $6047: $75
    halt                                          ; $6048: $76
    jp z, $e8ff                                   ; $6049: $ca $ff $e8

    rst $20                                       ; $604c: $e7
    rst $38                                       ; $604d: $ff
    ld [hl], a                                    ; $604e: $77
    ld a, b                                       ; $604f: $78
    ld a, c                                       ; $6050: $79
    ld a, d                                       ; $6051: $7a
    inc bc                                        ; $6052: $03
    inc bc                                        ; $6053: $03
    dec e                                         ; $6054: $1d
    inc bc                                        ; $6055: $03
    rst $38                                       ; $6056: $ff
    ld e, $1f                                     ; $6057: $1e $1f
    jr nz, jr_046_607c                            ; $6059: $20 $21

    ld [hl+], a                                   ; $605b: $22
    inc hl                                        ; $605c: $23
    inc h                                         ; $605d: $24
    dec h                                         ; $605e: $25
    rst $08                                       ; $605f: $cf
    ld a, e                                       ; $6060: $7b
    ld a, h                                       ; $6061: $7c
    ld a, l                                       ; $6062: $7d
    ld a, [hl]                                    ; $6063: $7e
    jp z, $e8ff                                   ; $6064: $ca $ff $e8

    rst $20                                       ; $6067: $e7
    ld a, a                                       ; $6068: $7f
    add b                                         ; $6069: $80
    rst $38                                       ; $606a: $ff
    add c                                         ; $606b: $81
    add c                                         ; $606c: $81
    inc bc                                        ; $606d: $03
    inc bc                                        ; $606e: $03
    ld h, $27                                     ; $606f: $26 $27
    inc bc                                        ; $6071: $03
    jr z, @+$01                                   ; $6072: $28 $ff

    add hl, hl                                    ; $6074: $29
    ld a, [hl+]                                   ; $6075: $2a
    dec hl                                        ; $6076: $2b
    inc l                                         ; $6077: $2c
    dec l                                         ; $6078: $2d
    ld l, $82                                     ; $6079: $2e $82
    add e                                         ; $607b: $83

jr_046_607c:
    di                                            ; $607c: $f3
    add h                                         ; $607d: $84
    add l                                         ; $607e: $85
    jp z, $e8ff                                   ; $607f: $ca $ff $e8

    rst $20                                       ; $6082: $e7
    add [hl]                                      ; $6083: $86
    add a                                         ; $6084: $87
    adc b                                         ; $6085: $88
    adc c                                         ; $6086: $89
    rst $38                                       ; $6087: $ff
    cpl                                           ; $6088: $2f
    jr nc, jr_046_60bc                            ; $6089: $30 $31

    ld [hl-], a                                   ; $608b: $32
    inc sp                                        ; $608c: $33
    inc [hl]                                      ; $608d: $34
    dec [hl]                                      ; $608e: $35
    ld [hl], $ff                                  ; $608f: $36 $ff
    scf                                           ; $6091: $37
    jr c, jr_046_60cd                             ; $6092: $38 $39

    ld a, [hl-]                                   ; $6094: $3a
    adc d                                         ; $6095: $8a
    adc e                                         ; $6096: $8b
    adc h                                         ; $6097: $8c
    adc l                                         ; $6098: $8d
    db $fc                                        ; $6099: $fc
    jp z, $e8ff                                   ; $609a: $ca $ff $e8

    rst $20                                       ; $609d: $e7
    adc [hl]                                      ; $609e: $8e
    adc a                                         ; $609f: $8f
    sub b                                         ; $60a0: $90
    sub c                                         ; $60a1: $91
    dec sp                                        ; $60a2: $3b
    inc a                                         ; $60a3: $3c
    rst $38                                       ; $60a4: $ff
    dec a                                         ; $60a5: $3d
    ld a, $3f                                     ; $60a6: $3e $3f
    ld b, b                                       ; $60a8: $40
    ld b, c                                       ; $60a9: $41
    ld b, d                                       ; $60aa: $42
    ld b, e                                       ; $60ab: $43
    ld b, h                                       ; $60ac: $44
    ccf                                           ; $60ad: $3f
    ld b, l                                       ; $60ae: $45
    ld b, [hl]                                    ; $60af: $46
    sub d                                         ; $60b0: $92
    sub e                                         ; $60b1: $93
    sub h                                         ; $60b2: $94
    sub l                                         ; $60b3: $95
    jp z, $e8ff                                   ; $60b4: $ca $ff $e8

    rst $20                                       ; $60b7: $e7
    rst $38                                       ; $60b8: $ff
    sub [hl]                                      ; $60b9: $96
    sub a                                         ; $60ba: $97
    sbc b                                         ; $60bb: $98

jr_046_60bc:
    sbc c                                         ; $60bc: $99
    ld b, a                                       ; $60bd: $47
    ld c, b                                       ; $60be: $48
    ld c, c                                       ; $60bf: $49
    ld c, d                                       ; $60c0: $4a
    rst $38                                       ; $60c1: $ff
    ld c, e                                       ; $60c2: $4b
    ld c, h                                       ; $60c3: $4c
    ld c, l                                       ; $60c4: $4d
    ld c, [hl]                                    ; $60c5: $4e
    ld c, a                                       ; $60c6: $4f
    ld d, b                                       ; $60c7: $50
    ld d, c                                       ; $60c8: $51
    ld d, d                                       ; $60c9: $52
    rst $08                                       ; $60ca: $cf
    sbc d                                         ; $60cb: $9a
    sbc e                                         ; $60cc: $9b

jr_046_60cd:
    sbc h                                         ; $60cd: $9c
    sbc l                                         ; $60ce: $9d
    jp z, $e8ff                                   ; $60cf: $ca $ff $e8

    rst $20                                       ; $60d2: $e7
    sbc [hl]                                      ; $60d3: $9e
    sbc a                                         ; $60d4: $9f
    rst $38                                       ; $60d5: $ff
    and b                                         ; $60d6: $a0
    and c                                         ; $60d7: $a1
    ld d, e                                       ; $60d8: $53
    ld d, h                                       ; $60d9: $54
    ld d, l                                       ; $60da: $55
    ld d, [hl]                                    ; $60db: $56
    ld d, a                                       ; $60dc: $57
    ld e, b                                       ; $60dd: $58
    rst $38                                       ; $60de: $ff
    ld e, c                                       ; $60df: $59
    ld e, d                                       ; $60e0: $5a
    ld e, e                                       ; $60e1: $5b
    ld e, h                                       ; $60e2: $5c
    ld e, l                                       ; $60e3: $5d
    ld e, [hl]                                    ; $60e4: $5e
    and d                                         ; $60e5: $a2
    and e                                         ; $60e6: $a3
    inc bc                                        ; $60e7: $03
    and h                                         ; $60e8: $a4
    sbc [hl]                                      ; $60e9: $9e
    jp z, Jump_046_40ff                           ; $60ea: $ca $ff $40

    cp a                                          ; $60ed: $bf
    rst $38                                       ; $60ee: $ff
    rst $38                                       ; $60ef: $ff
    ret nz                                        ; $60f0: $c0

    rst $38                                       ; $60f1: $ff
    rst $38                                       ; $60f2: $ff
    rst $38                                       ; $60f3: $ff
    ret nz                                        ; $60f4: $c0

    rst $38                                       ; $60f5: $ff
    nop                                           ; $60f6: $00
    ret nz                                        ; $60f7: $c0

    rst $38                                       ; $60f8: $ff
    ret nz                                        ; $60f9: $c0

    rst $38                                       ; $60fa: $ff
    db $fc                                        ; $60fb: $fc
    sbc [hl]                                      ; $60fc: $9e
    rst $38                                       ; $60fd: $ff
    add sp, -$2e                                  ; $60fe: $e8 $d2
    rst $38                                       ; $6100: $ff
    ret nz                                        ; $6101: $c0

    rst $38                                       ; $6102: $ff
    rst $38                                       ; $6103: $ff
    rst $38                                       ; $6104: $ff
    ret nz                                        ; $6105: $c0

    rst $38                                       ; $6106: $ff
    nop                                           ; $6107: $00
    rst $38                                       ; $6108: $ff
    rst $38                                       ; $6109: $ff
    ret nz                                        ; $610a: $c0

    rst $38                                       ; $610b: $ff
    rst $38                                       ; $610c: $ff
    rst $38                                       ; $610d: $ff
    ret nz                                        ; $610e: $c0

    rst $38                                       ; $610f: $ff
    rst $38                                       ; $6110: $ff
    rst $38                                       ; $6111: $ff
    ret nz                                        ; $6112: $c0

    rst $38                                       ; $6113: $ff
    ret nz                                        ; $6114: $c0

    rst $38                                       ; $6115: $ff
    ret nz                                        ; $6116: $c0

    rst $38                                       ; $6117: $ff
    nop                                           ; $6118: $00
    ret nz                                        ; $6119: $c0

    rst $38                                       ; $611a: $ff
    ret nz                                        ; $611b: $c0

    rst $38                                       ; $611c: $ff
    ret nz                                        ; $611d: $c0

    rst $38                                       ; $611e: $ff
    ret nz                                        ; $611f: $c0

    rst $38                                       ; $6120: $ff
    ret nz                                        ; $6121: $c0

    rst $38                                       ; $6122: $ff
    rst $38                                       ; $6123: $ff
    rst $38                                       ; $6124: $ff
    rst $38                                       ; $6125: $ff
    rst $38                                       ; $6126: $ff
    rst $38                                       ; $6127: $ff
    rst $38                                       ; $6128: $ff
    nop                                           ; $6129: $00
    rst $38                                       ; $612a: $ff
    rst $38                                       ; $612b: $ff
    rst $38                                       ; $612c: $ff
    rst $38                                       ; $612d: $ff
    rst $38                                       ; $612e: $ff
    rst $38                                       ; $612f: $ff
    rst $38                                       ; $6130: $ff
    rst $38                                       ; $6131: $ff
    rst $38                                       ; $6132: $ff
    rst $38                                       ; $6133: $ff
    rst $38                                       ; $6134: $ff
    rst $38                                       ; $6135: $ff
    rst $38                                       ; $6136: $ff
    rst $38                                       ; $6137: $ff
    rst $38                                       ; $6138: $ff
    rst $38                                       ; $6139: $ff
    nop                                           ; $613a: $00
    rst $38                                       ; $613b: $ff
    rst $38                                       ; $613c: $ff
    rst $38                                       ; $613d: $ff
    rst $38                                       ; $613e: $ff
    rst $38                                       ; $613f: $ff
    rst $38                                       ; $6140: $ff
    rst $38                                       ; $6141: $ff
    rst $38                                       ; $6142: $ff
    rst $38                                       ; $6143: $ff
    rst $38                                       ; $6144: $ff
    rst $38                                       ; $6145: $ff
    rst $38                                       ; $6146: $ff
    rst $38                                       ; $6147: $ff
    rst $38                                       ; $6148: $ff
    rst $38                                       ; $6149: $ff
    rst $38                                       ; $614a: $ff
    nop                                           ; $614b: $00
    rst $38                                       ; $614c: $ff
    rst $38                                       ; $614d: $ff
    rst $38                                       ; $614e: $ff
    rst $38                                       ; $614f: $ff
    rst $38                                       ; $6150: $ff
    rst $38                                       ; $6151: $ff
    rst $38                                       ; $6152: $ff
    rst $38                                       ; $6153: $ff
    rst $38                                       ; $6154: $ff
    rst $38                                       ; $6155: $ff
    rst $38                                       ; $6156: $ff
    rst $38                                       ; $6157: $ff
    rst $38                                       ; $6158: $ff
    rst $38                                       ; $6159: $ff
    rst $38                                       ; $615a: $ff
    rst $38                                       ; $615b: $ff
    nop                                           ; $615c: $00
    rst $38                                       ; $615d: $ff
    rst $38                                       ; $615e: $ff
    rst $38                                       ; $615f: $ff
    rst $38                                       ; $6160: $ff
    rst $38                                       ; $6161: $ff
    rst $38                                       ; $6162: $ff
    rst $38                                       ; $6163: $ff
    rst $38                                       ; $6164: $ff
    rst $38                                       ; $6165: $ff
    rst $38                                       ; $6166: $ff
    rst $38                                       ; $6167: $ff
    rst $38                                       ; $6168: $ff
    rst $38                                       ; $6169: $ff
    rst $38                                       ; $616a: $ff
    rst $38                                       ; $616b: $ff
    rst $38                                       ; $616c: $ff
    nop                                           ; $616d: $00
    rst $38                                       ; $616e: $ff
    rst $38                                       ; $616f: $ff
    rst $38                                       ; $6170: $ff
    rst $38                                       ; $6171: $ff
    rst $38                                       ; $6172: $ff
    rst $38                                       ; $6173: $ff
    rst $38                                       ; $6174: $ff
    rst $38                                       ; $6175: $ff
    rst $38                                       ; $6176: $ff
    rst $38                                       ; $6177: $ff
    rst $38                                       ; $6178: $ff
    rst $38                                       ; $6179: $ff
    rst $38                                       ; $617a: $ff
    rst $38                                       ; $617b: $ff
    rst $38                                       ; $617c: $ff
    rst $38                                       ; $617d: $ff
    nop                                           ; $617e: $00
    rst $38                                       ; $617f: $ff
    rst $38                                       ; $6180: $ff
    rst $38                                       ; $6181: $ff
    rst $38                                       ; $6182: $ff
    rst $38                                       ; $6183: $ff
    rst $38                                       ; $6184: $ff
    rst $38                                       ; $6185: $ff
    rst $38                                       ; $6186: $ff
    rst $38                                       ; $6187: $ff
    rst $38                                       ; $6188: $ff
    rst $38                                       ; $6189: $ff
    rst $38                                       ; $618a: $ff
    rst $38                                       ; $618b: $ff
    rst $38                                       ; $618c: $ff
    rst $38                                       ; $618d: $ff
    rst $38                                       ; $618e: $ff
    nop                                           ; $618f: $00
    rst $38                                       ; $6190: $ff
    rst $38                                       ; $6191: $ff
    rst $38                                       ; $6192: $ff
    rst $38                                       ; $6193: $ff
    rst $38                                       ; $6194: $ff
    rst $38                                       ; $6195: $ff
    rst $38                                       ; $6196: $ff
    rst $38                                       ; $6197: $ff
    rst $38                                       ; $6198: $ff
    rst $38                                       ; $6199: $ff
    rst $38                                       ; $619a: $ff
    rst $38                                       ; $619b: $ff
    rst $38                                       ; $619c: $ff
    rst $38                                       ; $619d: $ff
    rst $38                                       ; $619e: $ff
    rst $38                                       ; $619f: $ff
    nop                                           ; $61a0: $00
    rst $38                                       ; $61a1: $ff
    rst $38                                       ; $61a2: $ff
    rst $38                                       ; $61a3: $ff
    rst $38                                       ; $61a4: $ff
    rst $38                                       ; $61a5: $ff
    rst $38                                       ; $61a6: $ff
    rst $38                                       ; $61a7: $ff
    rst $38                                       ; $61a8: $ff
    rst $38                                       ; $61a9: $ff
    rst $38                                       ; $61aa: $ff
    rst $38                                       ; $61ab: $ff
    rst $38                                       ; $61ac: $ff
    rst $38                                       ; $61ad: $ff
    rst $38                                       ; $61ae: $ff
    rst $38                                       ; $61af: $ff
    rst $38                                       ; $61b0: $ff
    nop                                           ; $61b1: $00
    rst $38                                       ; $61b2: $ff
    rst $38                                       ; $61b3: $ff
    rst $38                                       ; $61b4: $ff
    rst $38                                       ; $61b5: $ff
    rst $38                                       ; $61b6: $ff
    pop hl                                        ; $61b7: $e1
    nop                                           ; $61b8: $00
    nop                                           ; $61b9: $00
    nop                                           ; $61ba: $00
    dec b                                         ; $61bb: $05
    ld [$f0ff], sp                                ; $61bc: $08 $ff $f0
    dec bc                                        ; $61bf: $0b
    rst $38                                       ; $61c0: $ff
    rst $38                                       ; $61c1: $ff
    rst $20                                       ; $61c2: $e7
    and $c0                                       ; $61c3: $e6 $c0
    rst $38                                       ; $61c5: $ff
    ret nz                                        ; $61c6: $c0

    rst $38                                       ; $61c7: $ff
    ret nz                                        ; $61c8: $c0

    rst $38                                       ; $61c9: $ff
    add b                                         ; $61ca: $80
    ret nz                                        ; $61cb: $c0

    rst $38                                       ; $61cc: $ff
    ret nz                                        ; $61cd: $c0

    rst $38                                       ; $61ce: $ff
    rst $38                                       ; $61cf: $ff
    rst $38                                       ; $61d0: $ff
    xor h                                         ; $61d1: $ac
    and $fd                                       ; $61d2: $e6 $fd
    ld [c], a                                     ; $61d4: $e2
    rst $38                                       ; $61d5: $ff
    rst $38                                       ; $61d6: $ff
    xor $ed                                       ; $61d7: $ee $ed
    add hl, bc                                    ; $61d9: $09
    inc c                                         ; $61da: $0c
    ret nz                                        ; $61db: $c0

    rst $38                                       ; $61dc: $ff
    ld a, [$0ff9]                                 ; $61dd: $fa $f9 $0f
    rrca                                          ; $61e0: $0f
    ld hl, sp-$1c                                 ; $61e1: $f8 $e4
    push de                                       ; $61e3: $d5
    rst $38                                       ; $61e4: $ff
    set 5, a                                      ; $61e5: $cb $ef
    pop bc                                        ; $61e7: $c1
    pop hl                                        ; $61e8: $e1
    rra                                           ; $61e9: $1f
    rrca                                          ; $61ea: $0f
    add hl, bc                                    ; $61eb: $09
    add hl, bc                                    ; $61ec: $09
    dec bc                                        ; $61ed: $0b
    add hl, bc                                    ; $61ee: $09
    ld sp, hl                                     ; $61ef: $f9
    ldh [$ca], a                                  ; $61f0: $e0 $ca
    rst $38                                       ; $61f2: $ff
    add sp, -$19                                  ; $61f3: $e8 $e7
    add e                                         ; $61f5: $83
    ld a, [bc]                                    ; $61f6: $0a
    ld a, [bc]                                    ; $61f7: $0a
    adc c                                         ; $61f8: $89
    db $e4                                        ; $61f9: $e4
    pop bc                                        ; $61fa: $c1
    ldh [$bf], a                                  ; $61fb: $e0 $bf
    pop hl                                        ; $61fd: $e1
    ret nz                                        ; $61fe: $c0

    rst $38                                       ; $61ff: $ff
    ret nz                                        ; $6200: $c0

    rst $28                                       ; $6201: $ef
    inc c                                         ; $6202: $0c
    inc e                                         ; $6203: $1c
    rst $38                                       ; $6204: $ff
    pop hl                                        ; $6205: $e1
    ret nz                                        ; $6206: $c0

    push hl                                       ; $6207: $e5
    ld a, [bc]                                    ; $6208: $0a
    ld a, [bc]                                    ; $6209: $0a
    ld a, [bc]                                    ; $620a: $0a
    jp z, $80ff                                   ; $620b: $ca $ff $80

    jp hl                                         ; $620e: $e9


    rst $08                                       ; $620f: $cf
    ldh [$c2], a                                  ; $6210: $e0 $c2
    cp a                                          ; $6212: $bf
    ld [c], a                                     ; $6213: $e2
    ld c, $40                                     ; $6214: $0e $40
    pop hl                                        ; $6216: $e1
    pop af                                        ; $6217: $f1
    ld [c], a                                     ; $6218: $e2
    jp z, $c0ff                                   ; $6219: $ca $ff $c0

    db $eb                                        ; $621c: $eb
    dec c                                         ; $621d: $0d
    dec c                                         ; $621e: $0d
    jr nc, jr_046_629f                            ; $621f: $30 $7e

    push hl                                       ; $6221: $e5
    or d                                          ; $6222: $b2
    ld [c], a                                     ; $6223: $e2
    ret nz                                        ; $6224: $c0

    rst $38                                       ; $6225: $ff
    ret nz                                        ; $6226: $c0

    xor $0e                                       ; $6227: $ee $0e
    ld c, $80                                     ; $6229: $0e $80
    ldh [rDIV], a                                 ; $622b: $e0 $04
    ldh [$a9], a                                  ; $622d: $e0 $a9
    dec c                                         ; $622f: $0d
    ret nz                                        ; $6230: $c0

    rst $38                                       ; $6231: $ff
    ret nz                                        ; $6232: $c0

    db $f4                                        ; $6233: $f4
    ld c, $c0                                     ; $6234: $0e $c0
    ldh [rIF], a                                  ; $6236: $e0 $0f
    ret nz                                        ; $6238: $c0

    db $e3                                        ; $6239: $e3
    ld a, [hl+]                                   ; $623a: $2a
    nop                                           ; $623b: $00
    jp z, Jump_046_40ff                           ; $623c: $ca $ff $40

    cp a                                          ; $623f: $bf
    rst $38                                       ; $6240: $ff
    rst $38                                       ; $6241: $ff
    ret nz                                        ; $6242: $c0

    rst $38                                       ; $6243: $ff
    rst $38                                       ; $6244: $ff
    rst $38                                       ; $6245: $ff
    ret nz                                        ; $6246: $c0

    rst $38                                       ; $6247: $ff
    ret nz                                        ; $6248: $c0

    rst $38                                       ; $6249: $ff
    ret nz                                        ; $624a: $c0

    rst $38                                       ; $624b: $ff
    nop                                           ; $624c: $00
    cp h                                          ; $624d: $bc
    rst $38                                       ; $624e: $ff
    call nz, $c0ff                                ; $624f: $c4 $ff $c0
    rst $38                                       ; $6252: $ff
    ret nz                                        ; $6253: $c0

    rst $38                                       ; $6254: $ff
    ret nz                                        ; $6255: $c0

    rst $38                                       ; $6256: $ff
    ret nz                                        ; $6257: $c0

    rst $38                                       ; $6258: $ff
    ret nz                                        ; $6259: $c0

    rst $38                                       ; $625a: $ff
    rst $38                                       ; $625b: $ff
    rst $38                                       ; $625c: $ff
    nop                                           ; $625d: $00
    ret nz                                        ; $625e: $c0

    rst $38                                       ; $625f: $ff
    rst $38                                       ; $6260: $ff
    rst $38                                       ; $6261: $ff
    ret nz                                        ; $6262: $c0

    rst $38                                       ; $6263: $ff
    rst $38                                       ; $6264: $ff
    rst $38                                       ; $6265: $ff
    ret nz                                        ; $6266: $c0

    rst $38                                       ; $6267: $ff
    rst $38                                       ; $6268: $ff
    rst $38                                       ; $6269: $ff
    ret nz                                        ; $626a: $c0

    rst $38                                       ; $626b: $ff
    rst $38                                       ; $626c: $ff
    rst $38                                       ; $626d: $ff
    nop                                           ; $626e: $00
    ret nz                                        ; $626f: $c0

    rst $38                                       ; $6270: $ff
    ret nz                                        ; $6271: $c0

    rst $38                                       ; $6272: $ff
    ret nz                                        ; $6273: $c0

    rst $38                                       ; $6274: $ff
    rst $38                                       ; $6275: $ff
    rst $38                                       ; $6276: $ff
    rst $38                                       ; $6277: $ff
    rst $38                                       ; $6278: $ff
    rst $38                                       ; $6279: $ff
    rst $38                                       ; $627a: $ff
    rst $38                                       ; $627b: $ff
    rst $38                                       ; $627c: $ff
    rst $38                                       ; $627d: $ff
    rst $38                                       ; $627e: $ff
    nop                                           ; $627f: $00
    rst $38                                       ; $6280: $ff
    rst $38                                       ; $6281: $ff
    rst $38                                       ; $6282: $ff
    rst $38                                       ; $6283: $ff
    rst $38                                       ; $6284: $ff
    rst $38                                       ; $6285: $ff
    rst $38                                       ; $6286: $ff
    rst $38                                       ; $6287: $ff
    rst $38                                       ; $6288: $ff
    rst $38                                       ; $6289: $ff
    rst $38                                       ; $628a: $ff
    rst $38                                       ; $628b: $ff
    rst $38                                       ; $628c: $ff
    rst $38                                       ; $628d: $ff
    rst $38                                       ; $628e: $ff
    rst $38                                       ; $628f: $ff
    nop                                           ; $6290: $00
    rst $38                                       ; $6291: $ff
    rst $38                                       ; $6292: $ff
    rst $38                                       ; $6293: $ff
    rst $38                                       ; $6294: $ff
    rst $38                                       ; $6295: $ff
    rst $38                                       ; $6296: $ff
    rst $38                                       ; $6297: $ff
    rst $38                                       ; $6298: $ff
    rst $38                                       ; $6299: $ff
    rst $38                                       ; $629a: $ff
    rst $38                                       ; $629b: $ff
    rst $38                                       ; $629c: $ff
    rst $38                                       ; $629d: $ff
    rst $38                                       ; $629e: $ff

jr_046_629f:
    rst $38                                       ; $629f: $ff

Jump_046_62a0:
    rst $38                                       ; $62a0: $ff
    nop                                           ; $62a1: $00
    rst $38                                       ; $62a2: $ff
    rst $38                                       ; $62a3: $ff
    rst $38                                       ; $62a4: $ff
    rst $38                                       ; $62a5: $ff
    rst $38                                       ; $62a6: $ff
    rst $38                                       ; $62a7: $ff
    rst $38                                       ; $62a8: $ff
    rst $38                                       ; $62a9: $ff
    rst $38                                       ; $62aa: $ff
    rst $38                                       ; $62ab: $ff
    rst $38                                       ; $62ac: $ff
    rst $38                                       ; $62ad: $ff
    rst $38                                       ; $62ae: $ff
    rst $38                                       ; $62af: $ff
    rst $38                                       ; $62b0: $ff
    rst $38                                       ; $62b1: $ff
    nop                                           ; $62b2: $00
    rst $38                                       ; $62b3: $ff
    rst $38                                       ; $62b4: $ff
    rst $38                                       ; $62b5: $ff
    rst $38                                       ; $62b6: $ff
    rst $38                                       ; $62b7: $ff
    rst $38                                       ; $62b8: $ff
    rst $38                                       ; $62b9: $ff
    rst $38                                       ; $62ba: $ff
    rst $38                                       ; $62bb: $ff
    rst $38                                       ; $62bc: $ff
    rst $38                                       ; $62bd: $ff
    rst $38                                       ; $62be: $ff
    rst $38                                       ; $62bf: $ff
    rst $38                                       ; $62c0: $ff
    rst $38                                       ; $62c1: $ff
    rst $38                                       ; $62c2: $ff
    nop                                           ; $62c3: $00
    rst $38                                       ; $62c4: $ff
    rst $38                                       ; $62c5: $ff
    rst $38                                       ; $62c6: $ff
    rst $38                                       ; $62c7: $ff
    rst $38                                       ; $62c8: $ff
    rst $38                                       ; $62c9: $ff
    rst $38                                       ; $62ca: $ff
    rst $38                                       ; $62cb: $ff
    rst $38                                       ; $62cc: $ff
    rst $38                                       ; $62cd: $ff
    rst $38                                       ; $62ce: $ff
    rst $38                                       ; $62cf: $ff
    rst $38                                       ; $62d0: $ff
    rst $38                                       ; $62d1: $ff
    rst $38                                       ; $62d2: $ff
    rst $38                                       ; $62d3: $ff
    nop                                           ; $62d4: $00
    rst $38                                       ; $62d5: $ff
    rst $38                                       ; $62d6: $ff
    rst $38                                       ; $62d7: $ff
    rst $38                                       ; $62d8: $ff
    rst $38                                       ; $62d9: $ff
    rst $38                                       ; $62da: $ff
    rst $38                                       ; $62db: $ff
    rst $38                                       ; $62dc: $ff
    rst $38                                       ; $62dd: $ff
    rst $38                                       ; $62de: $ff
    rst $38                                       ; $62df: $ff
    rst $38                                       ; $62e0: $ff
    rst $38                                       ; $62e1: $ff
    rst $38                                       ; $62e2: $ff
    rst $38                                       ; $62e3: $ff
    rst $38                                       ; $62e4: $ff
    nop                                           ; $62e5: $00
    rst $38                                       ; $62e6: $ff
    rst $38                                       ; $62e7: $ff
    rst $38                                       ; $62e8: $ff
    rst $38                                       ; $62e9: $ff
    rst $38                                       ; $62ea: $ff
    rst $38                                       ; $62eb: $ff
    rst $38                                       ; $62ec: $ff
    rst $38                                       ; $62ed: $ff
    rst $38                                       ; $62ee: $ff
    rst $38                                       ; $62ef: $ff
    rst $38                                       ; $62f0: $ff
    rst $38                                       ; $62f1: $ff
    rst $38                                       ; $62f2: $ff
    rst $38                                       ; $62f3: $ff
    rst $38                                       ; $62f4: $ff
    rst $38                                       ; $62f5: $ff
    nop                                           ; $62f6: $00
    rst $38                                       ; $62f7: $ff
    rst $38                                       ; $62f8: $ff
    rst $38                                       ; $62f9: $ff
    rst $38                                       ; $62fa: $ff
    rst $38                                       ; $62fb: $ff
    rst $38                                       ; $62fc: $ff
    rst $38                                       ; $62fd: $ff
    rst $38                                       ; $62fe: $ff
    rst $38                                       ; $62ff: $ff
    rst $38                                       ; $6300: $ff
    rst $38                                       ; $6301: $ff
    rst $38                                       ; $6302: $ff
    rst $38                                       ; $6303: $ff
    rst $38                                       ; $6304: $ff
    rst $38                                       ; $6305: $ff
    db $eb                                        ; $6306: $eb
    nop                                           ; $6307: $00
    nop                                           ; $6308: $00
    nop                                           ; $6309: $00
    xor $6b                                       ; $630a: $ee $6b
    rst $38                                       ; $630c: $ff
    ld l, a                                       ; $630d: $6f
    adc $39                                       ; $630e: $ce $39
    nop                                           ; $6310: $00
    nop                                           ; $6311: $00
    rst $18                                       ; $6312: $df
    ld e, a                                       ; $6313: $5f
    cp a                                          ; $6314: $bf
    nop                                           ; $6315: $00
    ld [hl], c                                    ; $6316: $71
    nop                                           ; $6317: $00
    inc bc                                        ; $6318: $03
    nop                                           ; $6319: $00
    rst $18                                       ; $631a: $df
    ld e, a                                       ; $631b: $5f
    ld c, c                                       ; $631c: $49
    rrca                                          ; $631d: $0f

Jump_046_631e:
    ld [bc], a                                    ; $631e: $02
    ld [bc], a                                    ; $631f: $02
    inc bc                                        ; $6320: $03
    nop                                           ; $6321: $00
    rst $18                                       ; $6322: $df
    ld e, a                                       ; $6323: $5f
    cp a                                          ; $6324: $bf
    nop                                           ; $6325: $00
    add b                                         ; $6326: $80
    ld a, l                                       ; $6327: $7d
    inc bc                                        ; $6328: $03
    nop                                           ; $6329: $00
    rst $18                                       ; $632a: $df
    ld e, a                                       ; $632b: $5f
    rst $18                                       ; $632c: $df
    ld c, $bf                                     ; $632d: $0e $bf
    ld bc, $0003                                  ; $632f: $01 $03 $00
    rst $18                                       ; $6332: $df
    ld c, $02                                     ; $6333: $0e $02
    ld [bc], a                                    ; $6335: $02
    cp a                                          ; $6336: $bf
    nop                                           ; $6337: $00
    inc bc                                        ; $6338: $03
    nop                                           ; $6339: $00
    rst $18                                       ; $633a: $df
    ld e, a                                       ; $633b: $5f
    rst $18                                       ; $633c: $df
    ld c, $bf                                     ; $633d: $0e $bf
    nop                                           ; $633f: $00
    inc bc                                        ; $6340: $03
    nop                                           ; $6341: $00
    rst $18                                       ; $6342: $df
    ld e, a                                       ; $6343: $5f
    ld a, $2a                                     ; $6344: $3e $2a
    cp a                                          ; $6346: $bf
    nop                                           ; $6347: $00
    inc bc                                        ; $6348: $03
    nop                                           ; $6349: $00
    di                                            ; $634a: $f3
    nop                                           ; $634b: $00
    rst $38                                       ; $634c: $ff
    cp $ec                                        ; $634d: $fe $ec
    rst $38                                       ; $634f: $ff
    db $ed                                        ; $6350: $ed
    rst $38                                       ; $6351: $ff
    ld bc, $06ff                                  ; $6352: $01 $ff $06
    rst $38                                       ; $6355: $ff
    cp $08                                        ; $6356: $fe $08
    ld hl, sp+$11                                 ; $6358: $f8 $11
    ldh a, [rNR42]                                ; $635a: $f0 $21
    ldh [rSCX], a                                 ; $635c: $e0 $43
    rst $38                                       ; $635e: $ff
    ret nz                                        ; $635f: $c0

    ld b, e                                       ; $6360: $43
    ret nz                                        ; $6361: $c0

    ccf                                           ; $6362: $3f

Jump_046_6363:
    rst $38                                       ; $6363: $ff
    rst $38                                       ; $6364: $ff
    ld hl, sp+$07                                 ; $6365: $f8 $07
    rst $38                                       ; $6367: $ff
    ld b, $01                                     ; $6368: $06 $01
    ld bc, $0080                                  ; $636a: $01 $80 $00
    sbc b                                         ; $636d: $98
    nop                                           ; $636e: $00
    cp b                                          ; $636f: $b8
    rst $38                                       ; $6370: $ff
    nop                                           ; $6371: $00
    or b                                          ; $6372: $b0
    nop                                           ; $6373: $00
    ldh a, [rIE]                                  ; $6374: $f0 $ff
    db $fc                                        ; $6376: $fc
    rrca                                          ; $6377: $0f
    rst $38                                       ; $6378: $ff
    rst $38                                       ; $6379: $ff
    inc bc                                        ; $637a: $03
    rst $38                                       ; $637b: $ff
    add b                                         ; $637c: $80
    ld a, a                                       ; $637d: $7f
    ld b, b                                       ; $637e: $40
    ccf                                           ; $637f: $3f
    jr nz, jr_046_63a1                            ; $6380: $20 $1f

    rst $30                                       ; $6382: $f7
    db $10                                        ; $6383: $10
    rra                                           ; $6384: $1f
    db $10                                        ; $6385: $10
    or b                                          ; $6386: $b0
    pop hl                                        ; $6387: $e1
    add b                                         ; $6388: $80
    rst $38                                       ; $6389: $ff
    ldh [$7f], a                                  ; $638a: $e0 $7f
    rst $38                                       ; $638c: $ff
    ldh a, [$1f]                                  ; $638d: $f0 $1f
    ld hl, sp+$0f                                 ; $638f: $f8 $0f
    db $fc                                        ; $6391: $fc
    rlca                                          ; $6392: $07
    cp $03                                        ; $6393: $fe $03
    cp [hl]                                       ; $6395: $be
    and b                                         ; $6396: $a0
    add sp, $7f                                   ; $6397: $e8 $7f
    nop                                           ; $6399: $00
    xor a                                         ; $639a: $af
    nop                                           ; $639b: $00
    ld d, l                                       ; $639c: $55
    sub b                                         ; $639d: $90
    pop hl                                        ; $639e: $e1
    ccf                                           ; $639f: $3f
    ld a, a                                       ; $63a0: $7f

jr_046_63a1:
    rst $38                                       ; $63a1: $ff
    ld h, b                                       ; $63a2: $60
    ret nz                                        ; $63a3: $c0

    ld [hl], b                                    ; $63a4: $70
    ldh [$3e], a                                  ; $63a5: $e0 $3e
    ld hl, sp-$39                                 ; $63a7: $f8 $c7
    ld [c], a                                     ; $63a9: $e2
    rst $38                                       ; $63aa: $ff
    add [hl]                                      ; $63ab: $86
    add b                                         ; $63ac: $80
    add [hl]                                      ; $63ad: $86
    ldh a, [$f0]                                  ; $63ae: $f0 $f0
    ld a, $0e                                     ; $63b0: $3e $0e
    inc bc                                        ; $63b2: $03
    rst $38                                       ; $63b3: $ff
    ld bc, $0000                                  ; $63b4: $01 $00 $00
    ret nz                                        ; $63b7: $c0

    nop                                           ; $63b8: $00
    ld hl, sp-$10                                 ; $63b9: $f8 $f0
    nop                                           ; $63bb: $00
    rst $30                                       ; $63bc: $f7
    ldh a, [rP1]                                  ; $63bd: $f0 $00
    ldh [$fe], a                                  ; $63bf: $e0 $fe
    ldh [rP1], a                                  ; $63c1: $e0 $00
    pop hl                                        ; $63c3: $e1
    ldh [$7a], a                                  ; $63c4: $e0 $7a
    ei                                            ; $63c6: $fb
    jr jr_046_63d8                                ; $63c7: $18 $0f

    sbc b                                         ; $63c9: $98
    ldh [rNR23], a                                ; $63ca: $e0 $18
    rrca                                          ; $63cc: $0f
    jr z, jr_046_63de                             ; $63cd: $28 $0f

    ld d, h                                       ; $63cf: $54
    rst $38                                       ; $63d0: $ff
    rlca                                          ; $63d1: $07
    xor h                                         ; $63d2: $ac
    rlca                                          ; $63d3: $07
    ld e, [hl]                                    ; $63d4: $5e
    inc bc                                        ; $63d5: $03
    cp [hl]                                       ; $63d6: $be
    inc bc                                        ; $63d7: $03

jr_046_63d8:
    ld a, [hl]                                    ; $63d8: $7e
    rst $30                                       ; $63d9: $f7
    inc bc                                        ; $63da: $03
    rst $38                                       ; $63db: $ff
    add e                                         ; $63dc: $83
    ld [hl], c                                    ; $63dd: $71

jr_046_63de:
    ldh [rSB], a                                  ; $63de: $e0 $01
    rst $30                                       ; $63e0: $f7
    ld [$d7eb], sp                                ; $63e1: $08 $eb $d7
    inc d                                         ; $63e4: $14
    push af                                       ; $63e5: $f5
    ld a, [bc]                                    ; $63e6: $0a
    db $fc                                        ; $63e7: $fc
    ld [c], a                                     ; $63e8: $e2
    call nc, $e390                                ; $63e9: $d4 $90 $e3
    add b                                         ; $63ec: $80
    rst $38                                       ; $63ed: $ff
    rst $38                                       ; $63ee: $ff
    ret nz                                        ; $63ef: $c0

    ld a, [hl]                                    ; $63f0: $7e
    ret nz                                        ; $63f1: $c0

    ld e, l                                       ; $63f2: $5d
    ret nz                                        ; $63f3: $c0

    ld l, d                                       ; $63f4: $6a
    ret nz                                        ; $63f5: $c0

    ld d, l                                       ; $63f6: $55
    di                                            ; $63f7: $f3
    nop                                           ; $63f8: $00
    xor d                                         ; $63f9: $aa
    sbc h                                         ; $63fa: $9c
    ldh [$fc], a                                  ; $63fb: $e0 $fc
    pop hl                                        ; $63fd: $e1
    ld a, [hl+]                                   ; $63fe: $2a
    nop                                           ; $63ff: $00
    dec d                                         ; $6400: $15
    nop                                           ; $6401: $00
    ld a, l                                       ; $6402: $7d
    ld a, [bc]                                    ; $6403: $0a
    ld [hl-], a                                   ; $6404: $32
    ldh [$bf], a                                  ; $6405: $e0 $bf
    nop                                           ; $6407: $00
    ld e, a                                       ; $6408: $5f
    nop                                           ; $6409: $00
    xor e                                         ; $640a: $ab
    db $ec                                        ; $640b: $ec
    db $e4                                        ; $640c: $e4
    rst $30                                       ; $640d: $f7
    ld a, [bc]                                    ; $640e: $0a
    nop                                           ; $640f: $00
    ld bc, $e110                                  ; $6410: $01 $10 $e1
    ld bc, $0fff                                  ; $6413: $01 $ff $0f
    cp $ff                                        ; $6416: $fe $ff
    ld e, $f0                                     ; $6418: $1e $f0
    jr jr_046_648c                                ; $641a: $18 $70

    add hl, de                                    ; $641c: $19
    xor b                                         ; $641d: $a8
    rra                                           ; $641e: $1f
    ld c, e                                       ; $641f: $4b
    cp $00                                        ; $6420: $fe $00
    pop hl                                        ; $6422: $e1
    ldh [$fe], a                                  ; $6423: $e0 $fe
    ldh a, [rNR51]                                ; $6425: $f0 $25
    jr nc, jr_046_6443                            ; $6427: $30 $1a

    jr nc, @+$61                                  ; $6429: $30 $5f

    inc d                                         ; $642b: $14
    ld hl, sp+$70                                 ; $642c: $f8 $70
    ld hl, sp-$78                                 ; $642e: $f8 $88
    ldh a, [$c0]                                  ; $6430: $f0 $c0
    push de                                       ; $6432: $d5
    cp h                                          ; $6433: $bc
    ldh [$f7], a                                  ; $6434: $e0 $f7
    ld d, b                                       ; $6436: $50
    nop                                           ; $6437: $00
    add b                                         ; $6438: $80
    or $c1                                        ; $6439: $f6 $c1
    jr c, jr_046_6455                             ; $643b: $38 $18

    nop                                           ; $643d: $00
    ld [$b0fe], a                                 ; $643e: $ea $fe $b0
    ld [c], a                                     ; $6441: $e2
    dec b                                         ; $6442: $05

jr_046_6443:
    nop                                           ; $6443: $00
    nop                                           ; $6444: $00
    inc e                                         ; $6445: $1c
    inc e                                         ; $6446: $1c
    ld a, [hl]                                    ; $6447: $7e
    ld h, d                                       ; $6448: $62
    rst $38                                       ; $6449: $ff
    db $e3                                        ; $644a: $e3
    add c                                         ; $644b: $81
    inc bc                                        ; $644c: $03
    cp a                                          ; $644d: $bf
    inc bc                                        ; $644e: $03
    ld d, [hl]                                    ; $644f: $56
    inc bc                                        ; $6450: $03
    xor e                                         ; $6451: $ab
    rst $38                                       ; $6452: $ff
    inc bc                                        ; $6453: $03
    ld d, [hl]                                    ; $6454: $56

jr_046_6455:
    rlca                                          ; $6455: $07
    ld c, $0f                                     ; $6456: $0e $0f
    rrca                                          ; $6458: $0f
    rrca                                          ; $6459: $0f
    dec bc                                        ; $645a: $0b
    rst $38                                       ; $645b: $ff
    adc a                                         ; $645c: $8f
    adc d                                         ; $645d: $8a
    rst $38                                       ; $645e: $ff
    rra                                           ; $645f: $1f
    rst $38                                       ; $6460: $ff
    pop bc                                        ; $6461: $c1
    rst $38                                       ; $6462: $ff
    jr nz, @+$01                                  ; $6463: $20 $ff

    rst $38                                       ; $6465: $ff
    nop                                           ; $6466: $00
    rst $30                                       ; $6467: $f7
    ret nz                                        ; $6468: $c0

    db $eb                                        ; $6469: $eb
    ldh [$f5], a                                  ; $646a: $e0 $f5
    and c                                         ; $646c: $a1
    rst $38                                       ; $646d: $ff
    ld [$83e0], a                                 ; $646e: $ea $e0 $83
    nop                                           ; $6471: $00
    rst $38                                       ; $6472: $ff
    ldh a, [rIE]                                  ; $6473: $f0 $ff
    ld e, $ef                                     ; $6475: $1e $ef
    rst $38                                       ; $6477: $ff
    dec a                                         ; $6478: $3d
    rst $38                                       ; $6479: $ff
    ld [bc], a                                    ; $647a: $02
    ld hl, sp-$20                                 ; $647b: $f8 $e0
    cp b                                          ; $647d: $b8
    rst $38                                       ; $647e: $ff
    ld a, h                                       ; $647f: $7c
    rst $38                                       ; $6480: $ff
    rst $38                                       ; $6481: $ff
    ld h, [hl]                                    ; $6482: $66
    rst $38                                       ; $6483: $ff
    inc d                                         ; $6484: $14
    rst $38                                       ; $6485: $ff
    inc c                                         ; $6486: $0c
    rst $38                                       ; $6487: $ff
    call nz, $ffff                                ; $6488: $c4 $ff $ff
    ccf                                           ; $648b: $3f

jr_046_648c:
    ldh a, [$1f]                                  ; $648c: $f0 $1f
    ldh a, [$1f]                                  ; $648e: $f0 $1f
    ldh [$3f], a                                  ; $6490: $e0 $3f
    ei                                            ; $6492: $fb
    ldh a, [$3f]                                  ; $6493: $f0 $3f
    ret nc                                        ; $6495: $d0

    pop bc                                        ; $6496: $c1
    rst $00                                       ; $6497: $c7
    nop                                           ; $6498: $00
    pop bc                                        ; $6499: $c1
    nop                                           ; $649a: $00
    pop af                                        ; $649b: $f1
    rst $38                                       ; $649c: $ff
    ldh [$1f], a                                  ; $649d: $e0 $1f
    ld hl, sp+$07                                 ; $649f: $f8 $07
    rst $38                                       ; $64a1: $ff
    ret nz                                        ; $64a2: $c0

    ld c, d                                       ; $64a3: $4a
    ret nz                                        ; $64a4: $c0

    di                                            ; $64a5: $f3
    ret nz                                        ; $64a6: $c0

    add b                                         ; $64a7: $80
    rst $38                                       ; $64a8: $ff
    and $82                                       ; $64a9: $e6 $82
    ret                                           ; $64ab: $c9


    inc bc                                        ; $64ac: $03
    inc bc                                        ; $64ad: $03
    inc b                                         ; $64ae: $04
    rlca                                          ; $64af: $07
    ei                                            ; $64b0: $fb
    add hl, bc                                    ; $64b1: $09
    ld c, $70                                     ; $64b2: $0e $70
    push bc                                       ; $64b4: $c5
    ld bc, $c301                                  ; $64b5: $01 $01 $c3

Jump_046_64b8:
    jp $ff22                                      ; $64b8: $c3 $22 $ff


    db $e3                                        ; $64bb: $e3
    ld [de], a                                    ; $64bc: $12
    inc sp                                        ; $64bd: $33
    dec c                                         ; $64be: $0d
    ld c, $04                                     ; $64bf: $0e $04
    rrca                                          ; $64c1: $0f
    rlca                                          ; $64c2: $07
    rst $38                                       ; $64c3: $ff
    rrca                                          ; $64c4: $0f
    ld e, $7f                                     ; $64c5: $1e $7f
    rst $20                                       ; $64c7: $e7
    ld hl, sp+$3e                                 ; $64c8: $f8 $3e
    pop bc                                        ; $64ca: $c1
    ldh [rIE], a                                  ; $64cb: $e0 $ff
    ld e, $03                                     ; $64cd: $1e $03
    db $fc                                        ; $64cf: $fc
    ret                                           ; $64d0: $c9


    ccf                                           ; $64d1: $3f
    ld e, $ff                                     ; $64d2: $1e $ff
    rst $20                                       ; $64d4: $e7
    rst $38                                       ; $64d5: $ff
    ld hl, sp+$7e                                 ; $64d6: $f8 $7e
    add c                                         ; $64d8: $81
    ldh [rNR34], a                                ; $64d9: $e0 $1e
    rlca                                          ; $64db: $07
    ldh [$3f], a                                  ; $64dc: $e0 $3f
    rst $38                                       ; $64de: $ff
    nop                                           ; $64df: $00
    ld hl, sp+$07                                 ; $64e0: $f8 $07
    db $e4                                        ; $64e2: $e4
    db $fc                                        ; $64e3: $fc
    ld a, a                                       ; $64e4: $7f
    add a                                         ; $64e5: $87
    ldh [rIE], a                                  ; $64e6: $e0 $ff
    rra                                           ; $64e8: $1f
    ld b, $e1                                     ; $64e9: $06 $e1
    ld c, $01                                     ; $64eb: $0e $01
    adc c                                         ; $64ed: $89
    rlca                                          ; $64ee: $07
    add e                                         ; $64ef: $83
    rst $38                                       ; $64f0: $ff
    ld a, c                                       ; $64f1: $79
    inc bc                                        ; $64f2: $03
    add c                                         ; $64f3: $81
    sbc b                                         ; $64f4: $98
    ldh [$0c], a                                  ; $64f5: $e0 $0c
    ldh a, [$8e]                                  ; $64f7: $f0 $8e
    rst $38                                       ; $64f9: $ff
    ldh a, [$97]                                  ; $64fa: $f0 $97
    ld hl, sp-$49                                 ; $64fc: $f8 $b7
    ld hl, sp-$31                                 ; $64fe: $f8 $cf
    ret z                                         ; $6500: $c8

    adc e                                         ; $6501: $8b
    rst $38                                       ; $6502: $ff
    adc h                                         ; $6503: $8c

jr_046_6504:
    rlca                                          ; $6504: $07
    inc b                                         ; $6505: $04
    adc d                                         ; $6506: $8a
    adc a                                         ; $6507: $8f
    jp c, Jump_046_55df                           ; $6508: $da $df $55

    rst $38                                       ; $650b: $ff
    rst $18                                       ; $650c: $df
    rst $30                                       ; $650d: $f7
    ld a, l                                       ; $650e: $7d
    jp hl                                         ; $650f: $e9


    ld a, l                                       ; $6510: $7d
    xor h                                         ; $6511: $ac
    ld a, b                                       ; $6512: $78
    add sp, -$01                                  ; $6513: $e8 $ff
    jr c, jr_046_6504                             ; $6515: $38 $ed

    add hl, sp                                    ; $6517: $39
    db $f4                                        ; $6518: $f4
    and b                                         ; $6519: $a0
    ldh [$e0], a                                  ; $651a: $e0 $e0
    ldh [$fd], a                                  ; $651c: $e0 $fd
    ret nz                                        ; $651e: $c0

    add a                                         ; $651f: $87
    push hl                                       ; $6520: $e5
    add b                                         ; $6521: $80
    nop                                           ; $6522: $00
    rst $38                                       ; $6523: $ff
    db $ec                                        ; $6524: $ec
    rst $38                                       ; $6525: $ff
    db $fc                                        ; $6526: $fc
    cp a                                          ; $6527: $bf
    rst $38                                       ; $6528: $ff
    cp a                                          ; $6529: $bf
    rst $38                                       ; $652a: $ff
    sbc h                                         ; $652b: $9c
    db $fc                                        ; $652c: $fc
    ld a, b                                       ; $652d: $78
    or $a3                                        ; $652e: $f6 $a3
    ldh [$df], a                                  ; $6530: $e0 $df
    ccf                                           ; $6532: $3f
    ldh [$3f], a                                  ; $6533: $e0 $3f
    ret nz                                        ; $6535: $c0

    ld a, a                                       ; $6536: $7f
    cp $e1                                        ; $6537: $fe $e1
    add [hl]                                      ; $6539: $86
    rst $38                                       ; $653a: $ff
    rst $28                                       ; $653b: $ef
    sbc a                                         ; $653c: $9f
    ld sp, hl                                     ; $653d: $f9
    cp b                                          ; $653e: $b8
    ldh [$82], a                                  ; $653f: $e0 $82
    ret nz                                        ; $6541: $c0

    add hl, bc                                    ; $6542: $09
    db $eb                                        ; $6543: $eb
    dec d                                         ; $6544: $15
    rst $38                                       ; $6545: $ff
    push de                                       ; $6546: $d5
    dec hl                                        ; $6547: $2b
    ld [$d115], a                                 ; $6548: $ea $15 $d1
    ld l, $e8                                     ; $654b: $2e $e8
    rla                                           ; $654d: $17
    ei                                            ; $654e: $fb
    ldh a, [$8f]                                  ; $654f: $f0 $8f
    ret nc                                        ; $6551: $d0

    and e                                         ; $6552: $a3
    adc a                                         ; $6553: $8f
    adc a                                         ; $6554: $8f
    rst $38                                       ; $6555: $ff
    ldh a, [$fd]                                  ; $6556: $f0 $fd
    ld a, a                                       ; $6558: $7f
    ld [bc], a                                    ; $6559: $02
    xor e                                         ; $655a: $ab
    ld d, l                                       ; $655b: $55
    ld d, $ea                                     ; $655c: $16 $ea
    ld a, [bc]                                    ; $655e: $0a
    inc c                                         ; $655f: $0c
    cp $e3                                        ; $6560: $fe $e3
    rst $38                                       ; $6562: $ff
    ld b, $04                                     ; $6563: $06 $04
    dec b                                         ; $6565: $05
    ld b, $05                                     ; $6566: $06 $05
    ld b, $03                                     ; $6568: $06 $03
    ld [bc], a                                    ; $656a: $02
    rst $38                                       ; $656b: $ff
    ld l, [hl]                                    ; $656c: $6e
    rra                                           ; $656d: $1f
    db $f4                                        ; $656e: $f4
    rrca                                          ; $656f: $0f
    db $ec                                        ; $6570: $ec
    ld [hl], a                                    ; $6571: $77
    jp nc, $ff5f                                  ; $6572: $d2 $5f $ff

    rst $08                                       ; $6575: $cf
    ld c, a                                       ; $6576: $4f
    pop bc                                        ; $6577: $c1
    ld b, c                                       ; $6578: $41
    and b                                         ; $6579: $a0
    ld h, b                                       ; $657a: $60
    ldh [rNR41], a                                ; $657b: $e0 $20
    rst $38                                       ; $657d: $ff
    inc sp                                        ; $657e: $33
    inc c                                         ; $657f: $0c
    ldh a, [rIF]                                  ; $6580: $f0 $0f
    add c                                         ; $6582: $81
    ld a, [hl]                                    ; $6583: $7e
    add hl, de                                    ; $6584: $19
    add [hl]                                      ; $6585: $86
    rst $38                                       ; $6586: $ff
    add hl, hl                                    ; $6587: $29
    sub $18                                       ; $6588: $d6 $18
    rst $20                                       ; $658a: $e7
    xor h                                         ; $658b: $ac
    db $d3                                        ; $658c: $d3
    sub h                                         ; $658d: $94
    db $eb                                        ; $658e: $eb
    rst $28                                       ; $658f: $ef
    add c                                         ; $6590: $81
    ld a, b                                       ; $6591: $78
    rra                                           ; $6592: $1f
    add b                                         ; $6593: $80
    db $dd                                        ; $6594: $dd
    xor c                                         ; $6595: $a9
    add d                                         ; $6596: $82
    ld bc, $ebc2                                  ; $6597: $01 $c2 $eb
    ld bc, $e2c3                                  ; $659a: $01 $c3 $e2
    ret nz                                        ; $659d: $c0

    pop hl                                        ; $659e: $e1
    cp $e2                                        ; $659f: $fe $e2
    pop af                                        ; $65a1: $f1
    nop                                           ; $65a2: $00
    add l                                         ; $65a3: $85
    rst $38                                       ; $65a4: $ff
    add [hl]                                      ; $65a5: $86
    add l                                         ; $65a6: $85
    add [hl]                                      ; $65a7: $86
    add d                                         ; $65a8: $82
    add e                                         ; $65a9: $83
    add d                                         ; $65aa: $82
    add e                                         ; $65ab: $83
    ld b, d                                       ; $65ac: $42
    rst $38                                       ; $65ad: $ff
    jp $c141                                      ; $65ae: $c3 $41 $c1


    pop bc                                        ; $65b1: $c1
    ld b, c                                       ; $65b2: $41
    pop bc                                        ; $65b3: $c1
    ld b, c                                       ; $65b4: $41
    add sp, -$01                                  ; $65b5: $e8 $ff
    dec a                                         ; $65b7: $3d
    call nc, $d43c                                ; $65b8: $d4 $3c $d4
    ld a, $fa                                     ; $65bb: $3e $fa
    ld e, $f6                                     ; $65bd: $1e $f6
    rst $38                                       ; $65bf: $ff
    rla                                           ; $65c0: $17
    pop af                                        ; $65c1: $f1
    ld de, $10f0                                  ; $65c2: $11 $f0 $10
    ret nc                                        ; $65c5: $d0

    jr nc, @-$02                                  ; $65c6: $30 $fc

    ld a, a                                       ; $65c8: $7f
    ld hl, sp-$08                                 ; $65c9: $f8 $f8
    ld c, b                                       ; $65cb: $48
    ld a, b                                       ; $65cc: $78
    jr jr_046_65ff                                ; $65cd: $18 $30

    jr nz, jr_046_6615                            ; $65cf: $20 $44

    pop hl                                        ; $65d1: $e1
    ld e, a                                       ; $65d2: $5f
    pop bc                                        ; $65d3: $c1
    add b                                         ; $65d4: $80
    ld a, a                                       ; $65d5: $7f
    ld b, c                                       ; $65d6: $41
    nop                                           ; $65d7: $00
    ld d, l                                       ; $65d8: $55
    ret nz                                        ; $65d9: $c0

    dec bc                                        ; $65da: $0b
    dec b                                         ; $65db: $05
    ret nz                                        ; $65dc: $c0

    rst $38                                       ; $65dd: $ff
    dec hl                                        ; $65de: $2b
    ld [bc], a                                    ; $65df: $02
    ld e, a                                       ; $65e0: $5f
    inc c                                         ; $65e1: $0c
    rst $38                                       ; $65e2: $ff
    jr c, @+$01                                   ; $65e3: $38 $ff

    ldh a, [rIE]                                  ; $65e5: $f0 $ff
    and $c6                                       ; $65e7: $e6 $c6
    sbc $18                                       ; $65e9: $de $18
    sbc c                                         ; $65eb: $99
    db $10                                        ; $65ec: $10
    ld sp, $ff21                                  ; $65ed: $31 $21 $ff
    inc de                                        ; $65f0: $13
    ld bc, $87ce                                  ; $65f1: $01 $ce $87
    ld hl, sp-$01                                 ; $65f4: $f8 $ff
    ret nz                                        ; $65f6: $c0

Jump_046_65f7:
    ld a, a                                       ; $65f7: $7f
    rst $28                                       ; $65f8: $ef
    ld [$fd95], a                                 ; $65f9: $ea $95 $fd

jr_046_65fc:
    add d                                         ; $65fc: $82
    rst $08                                       ; $65fd: $cf
    and c                                         ; $65fe: $a1

jr_046_65ff:
    cp $01                                        ; $65ff: $fe $01
    push af                                       ; $6601: $f5
    rst $38                                       ; $6602: $ff
    ld a, [bc]                                    ; $6603: $0a
    ld [$d515], a                                 ; $6604: $ea $15 $d5
    ld a, [hl+]                                   ; $6607: $2a
    inc c                                         ; $6608: $0c
    db $f4                                        ; $6609: $f4
    ld e, a                                       ; $660a: $5f
    rst $38                                       ; $660b: $ff
    and a                                         ; $660c: $a7
    rst $38                                       ; $660d: $ff
    nop                                           ; $660e: $00
    db $fd                                        ; $660f: $fd
    ld [bc], a                                    ; $6610: $02
    xor d                                         ; $6611: $aa
    ld d, l                                       ; $6612: $55
    ld d, l                                       ; $6613: $55
    cp a                                          ; $6614: $bf

jr_046_6615:
    xor d                                         ; $6615: $aa
    xor b                                         ; $6616: $a8
    ld d, a                                       ; $6617: $57
    nop                                           ; $6618: $00
    rst $38                                       ; $6619: $ff
    inc bc                                        ; $661a: $03
    rst $38                                       ; $661b: $ff
    ldh [rSB], a                                  ; $661c: $e0 $01
    cp [hl]                                       ; $661e: $be
    rst $38                                       ; $661f: $ff
    ldh [$f8], a                                  ; $6620: $e0 $f8
    nop                                           ; $6622: $00

jr_046_6623:
    db $fc                                        ; $6623: $fc
    nop                                           ; $6624: $00
    cp $e3                                        ; $6625: $fe $e3
    add b                                         ; $6627: $80
    ldh [rIE], a                                  ; $6628: $e0 $ff
    jr nz, jr_046_65fc                            ; $662a: $20 $d0

    jr nc, jr_046_669e                            ; $662c: $30 $70

    sub b                                         ; $662e: $90
    ld l, b                                       ; $662f: $68
    sbc b                                         ; $6630: $98
    ld hl, sp-$01                                 ; $6631: $f8 $ff
    adc b                                         ; $6633: $88
    cp b                                          ; $6634: $b8
    ret z                                         ; $6635: $c8

    ld [hl], h                                    ; $6636: $74
    ld c, h                                       ; $6637: $4c
    ld e, e                                       ; $6638: $5b
    ld h, a                                       ; $6639: $67
    xor h                                         ; $663a: $ac
    rst $38                                       ; $663b: $ff
    db $d3                                        ; $663c: $d3
    sub [hl]                                      ; $663d: $96
    jp hl                                         ; $663e: $e9


    ld c, [hl]                                    ; $663f: $4e
    ld [hl], c                                    ; $6640: $71
    ld d, [hl]                                    ; $6641: $56
    ld l, c                                       ; $6642: $69
    ld c, e                                       ; $6643: $4b
    rst $38                                       ; $6644: $ff
    ld [hl], h                                    ; $6645: $74

jr_046_6646:
    ld d, a                                       ; $6646: $57
    ld l, b                                       ; $6647: $68
    ld c, a                                       ; $6648: $4f
    ld [hl], a                                    ; $6649: $77
    ld d, h                                       ; $664a: $54
    ld l, h                                       ; $664b: $6c
    ld a, a                                       ; $664c: $7f
    rst $38                                       ; $664d: $ff
    add b                                         ; $664e: $80
    ld a, a                                       ; $664f: $7f
    add b                                         ; $6650: $80
    ccf                                           ; $6651: $3f
    add b                                         ; $6652: $80
    ld a, $c0                                     ; $6653: $3e $c0
    ld [hl], b                                    ; $6655: $70
    ld a, a                                       ; $6656: $7f
    rst $20                                       ; $6657: $e7
    sub a                                         ; $6658: $97
    sbc b                                         ; $6659: $98
    adc a                                         ; $665a: $8f

jr_046_665b:
    adc b                                         ; $665b: $88
    rst $00                                       ; $665c: $c7
    call nz, $a03f                                ; $665d: $c4 $3f $a0
    rst $18                                       ; $6660: $df

jr_046_6661:
    inc bc                                        ; $6661: $03
    ret nz                                        ; $6662: $c0

    inc e                                         ; $6663: $1c
    jr jr_046_6646                                ; $6664: $18 $e0

    ret nz                                        ; $6666: $c0

    ld [c], a                                     ; $6667: $e2
    ld c, $f2                                     ; $6668: $0e $f2

jr_046_666a:
    rst $38                                       ; $666a: $ff
    ld [de], a                                    ; $666b: $12
    or d                                          ; $666c: $b2
    ld [hl], e                                    ; $666d: $73
    inc de                                        ; $666e: $13
    ld a, [c]                                     ; $666f: $f2
    ld l, l                                       ; $6670: $6d
    ld e, $6b                                     ; $6671: $1e $6b
    rst $38                                       ; $6673: $ff
    inc e                                         ; $6674: $1c
    ld a, e                                       ; $6675: $7b
    inc c                                         ; $6676: $0c
    ld [hl], a                                    ; $6677: $77
    inc c                                         ; $6678: $0c
    inc [hl]                                      ; $6679: $34
    rrca                                          ; $667a: $0f
    ccf                                           ; $667b: $3f
    rst $38                                       ; $667c: $ff
    rlca                                          ; $667d: $07
    ret nc                                        ; $667e: $d0

    jr nc, jr_046_6661                            ; $667f: $30 $e0

    jr nz, jr_046_6623                            ; $6681: $20 $a0

    ld h, b                                       ; $6683: $60
    ret nz                                        ; $6684: $c0

    ld a, e                                       ; $6685: $7b
    ld b, b                                       ; $6686: $40
    ld b, b                                       ; $6687: $40
    ld a, [bc]                                    ; $6688: $0a
    jp nz, $0000                                  ; $6689: $c2 $00 $00

    ccf                                           ; $668c: $3f
    ccf                                           ; $668d: $3f
    sub d                                         ; $668e: $92
    pop hl                                        ; $668f: $e1
    rst $38                                       ; $6690: $ff
    ld bc, $0701                                  ; $6691: $01 $01 $07
    rlca                                          ; $6694: $07
    rrca                                          ; $6695: $0f
    dec bc                                        ; $6696: $0b
    rra                                           ; $6697: $1f
    ld de, $39ef                                  ; $6698: $11 $ef $39
    ld hl, $c0ff                                  ; $669b: $21 $ff $c0

jr_046_669e:
    ld l, a                                       ; $669e: $6f
    add d                                         ; $669f: $82
    inc bc                                        ; $66a0: $03
    cp $1c                                        ; $66a1: $fe $1c
    db $eb                                        ; $66a3: $eb
    ldh a, [$60]                                  ; $66a4: $f0 $60
    rst $20                                       ; $66a6: $e7
    and b                                         ; $66a7: $a0
    nop                                           ; $66a8: $00
    add h                                         ; $66a9: $84
    jp $ffe0                                      ; $66aa: $c3 $e0 $ff


    ld [hl], b                                    ; $66ad: $70
    rst $38                                       ; $66ae: $ff
    ccf                                           ; $66af: $3f
    ld a, $1f                                     ; $66b0: $3e $1f
    ld sp, $f811                                  ; $66b2: $31 $11 $f8
    ld a, b                                       ; $66b5: $78
    ld [$15ff], a                                 ; $66b6: $ea $ff $15
    ret nc                                        ; $66b9: $d0

    cpl                                           ; $66ba: $2f
    xor b                                         ; $66bb: $a8
    ld d, a                                       ; $66bc: $57
    ld d, b                                       ; $66bd: $50
    xor a                                         ; $66be: $af
    and b                                         ; $66bf: $a0
    rst $08                                       ; $66c0: $cf
    ld e, a                                       ; $66c1: $5f
    ld d, b                                       ; $66c2: $50
    xor a                                         ; $66c3: $af
    rst $38                                       ; $66c4: $ff
    ld d, d                                       ; $66c5: $52
    add c                                         ; $66c6: $81
    jr nc, jr_046_666a                            ; $66c7: $30 $a1

    cp $07                                        ; $66c9: $fe $07
    sbc a                                         ; $66cb: $9f
    ei                                            ; $66cc: $fb
    inc e                                         ; $66cd: $1c
    db $ec                                        ; $66ce: $ec
    ldh a, [rSVBK]                                ; $66cf: $f0 $70
    ret nz                                        ; $66d1: $c0

    and d                                         ; $66d2: $a2
    jr nc, jr_046_665b                            ; $66d3: $30 $86

jr_046_66d5:
    jr nz, jr_046_66d5                            ; $66d5: $20 $fe

    ld l, c                                       ; $66d7: $69
    and b                                         ; $66d8: $a0
    ld [hl], b                                    ; $66d9: $70
    rst $18                                       ; $66da: $df
    pop hl                                        ; $66db: $e1
    inc sp                                        ; $66dc: $33
    ldh a, [rNR24]                                ; $66dd: $f0 $19
    ld hl, sp-$19                                 ; $66df: $f8 $e7
    inc c                                         ; $66e1: $0c
    cp $07                                        ; $66e2: $fe $07
    ret z                                         ; $66e4: $c8

    add c                                         ; $66e5: $81
    dec [hl]                                      ; $66e6: $35
    add b                                         ; $66e7: $80
    ld b, e                                       ; $66e8: $43
    db $e4                                        ; $66e9: $e4
    call nz, $eeff                                ; $66ea: $c4 $ff $ee
    ld c, [hl]                                    ; $66ed: $4e
    ld a, c                                       ; $66ee: $79
    add hl, hl                                    ; $66ef: $29
    ld hl, sp+$28                                 ; $66f0: $f8 $28
    db $fc                                        ; $66f2: $fc
    db $ec                                        ; $66f3: $ec
    rst $38                                       ; $66f4: $ff
    ld a, [$f9aa]                                 ; $66f5: $fa $aa $f9
    sbc c                                         ; $66f8: $99
    db $fc                                        ; $66f9: $fc
    ld c, h                                       ; $66fa: $4c
    ld h, a                                       ; $66fb: $67
    ld h, d                                       ; $66fc: $62
    rst $38                                       ; $66fd: $ff
    inc sp                                        ; $66fe: $33
    ld de, $0001                                  ; $66ff: $11 $01 $00
    add b                                         ; $6702: $80
    add b                                         ; $6703: $80
    ld b, b                                       ; $6704: $40
    ld b, b                                       ; $6705: $40
    cp $00                                        ; $6706: $fe $00
    jp nz, $f280                                  ; $6708: $c2 $80 $f2

    ld [hl+], a                                   ; $670b: $22
    and $24                                       ; $670c: $e6 $24
    rst $20                                       ; $670e: $e7
    call nz, Call_000_07ff                        ; $670f: $c4 $ff $07
    inc b                                         ; $6712: $04
    rlca                                          ; $6713: $07
    inc b                                         ; $6714: $04
    inc c                                         ; $6715: $0c
    rlca                                          ; $6716: $07
    ld [$ff0f], sp                                ; $6717: $08 $0f $ff
    ld [$3a0f], sp                                ; $671a: $08 $0f $3a
    ld b, $1a                                     ; $671d: $06 $1a
    ld b, $16                                     ; $671f: $06 $16
    ld c, $ff                                     ; $6721: $0e $ff
    inc b                                         ; $6723: $04
    inc c                                         ; $6724: $0c
    inc b                                         ; $6725: $04
    inc e                                         ; $6726: $1c
    ld [$1098], sp                                ; $6727: $08 $98 $10
    ldh a, [$fd]                                  ; $672a: $f0 $fd
    jr nz, jr_046_6794                            ; $672c: $20 $66

    add b                                         ; $672e: $80
    ld bc, $0301                                  ; $672f: $01 $01 $03
    ld [bc], a                                    ; $6732: $02
    ld b, $04                                     ; $6733: $06 $04
    rst $38                                       ; $6735: $ff
    dec c                                         ; $6736: $0d
    add hl, bc                                    ; $6737: $09
    dec de                                        ; $6738: $1b
    ld de, $2332                                  ; $6739: $11 $32 $23
    ld h, [hl]                                    ; $673c: $66
    ld b, e                                       ; $673d: $43
    rst $38                                       ; $673e: $ff
    di                                            ; $673f: $f3
    jp Jump_046_65f7                              ; $6740: $c3 $f7 $65


    db $fd                                        ; $6743: $fd
    ret c                                         ; $6744: $d8

    ldh [$c0], a                                  ; $6745: $e0 $c0
    rst $38                                       ; $6747: $ff
    ld b, b                                       ; $6748: $40
    ret nz                                        ; $6749: $c0

    ld b, c                                       ; $674a: $41
    ret nz                                        ; $674b: $c0

    ld h, e                                       ; $674c: $63
    pop bc                                        ; $674d: $c1
    ld [hl], $e3                                  ; $674e: $36 $e3
    rst $38                                       ; $6750: $ff
    add a                                         ; $6751: $87

jr_046_6752:
    ld bc, $078e                                  ; $6752: $01 $8e $07
    sbc b                                         ; $6755: $98
    adc a                                         ; $6756: $8f
    ldh a, [$9f]                                  ; $6757: $f0 $9f
    rst $38                                       ; $6759: $ff
    ldh [$7f], a                                  ; $675a: $e0 $7f
    add e                                         ; $675c: $83
    rst $38                                       ; $675d: $ff
    ld c, $fc                                     ; $675e: $0e $fc
    jr c, jr_046_6752                             ; $6760: $38 $f0

    rst $38                                       ; $6762: $ff
    add h                                         ; $6763: $84
    db $fc                                        ; $6764: $fc
    inc b                                         ; $6765: $04
    db $fc                                        ; $6766: $fc
    ld [bc], a                                    ; $6767: $02
    cp $01                                        ; $6768: $fe $01
    rst $38                                       ; $676a: $ff
    rst $38                                       ; $676b: $ff
    ld a, l                                       ; $676c: $7d
    rst $38                                       ; $676d: $ff
    adc $83                                       ; $676e: $ce $83
    rlca                                          ; $6770: $07
    ld bc, $0107                                  ; $6771: $01 $07 $01
    rst $38                                       ; $6774: $ff
    rrca                                          ; $6775: $0f
    nop                                           ; $6776: $00
    rra                                           ; $6777: $1f
    nop                                           ; $6778: $00
    jr nc, jr_046_678a                            ; $6779: $30 $0f

    ld a, h                                       ; $677b: $7c
    rra                                           ; $677c: $1f
    rst $38                                       ; $677d: $ff
    call c, $bb3f                                 ; $677e: $dc $3f $bb
    rst $38                                       ; $6781: $ff
    cp e                                          ; $6782: $bb
    rst $38                                       ; $6783: $ff
    push af                                       ; $6784: $f5
    rst $38                                       ; $6785: $ff
    cp $98                                        ; $6786: $fe $98
    ret nz                                        ; $6788: $c0

    ld h, b                                       ; $6789: $60

jr_046_678a:
    ld l, [hl]                                    ; $678a: $6e
    ldh a, [$f7]                                  ; $678b: $f0 $f7
    reti                                          ; $678d: $d9


    di                                            ; $678e: $f3
    db $dd                                        ; $678f: $dd
    rst $38                                       ; $6790: $ff
    db $db                                        ; $6791: $db
    rst $28                                       ; $6792: $ef
    db $db                                        ; $6793: $db

jr_046_6794:
    rst $28                                       ; $6794: $ef
    xor [hl]                                      ; $6795: $ae
    rst $30                                       ; $6796: $f7
    ld [hl], d                                    ; $6797: $72
    rst $18                                       ; $6798: $df
    rst $38                                       ; $6799: $ff
    jp c, $ddef                                   ; $679a: $da $ef $dd

    rst $28                                       ; $679d: $ef
    xor l                                         ; $679e: $ad
    rst $30                                       ; $679f: $f7
    xor a                                         ; $67a0: $af
    rst $30                                       ; $67a1: $f7
    rst $38                                       ; $67a2: $ff
    ld d, a                                       ; $67a3: $57
    ei                                            ; $67a4: $fb
    ld d, a                                       ; $67a5: $57
    ei                                            ; $67a6: $fb
    and [hl]                                      ; $67a7: $a6
    rst $38                                       ; $67a8: $ff
    ld b, e                                       ; $67a9: $43
    rst $38                                       ; $67aa: $ff
    rst $38                                       ; $67ab: $ff
    and $bf                                       ; $67ac: $e6 $bf
    and $bf                                       ; $67ae: $e6 $bf
    cp l                                          ; $67b0: $bd
    rst $18                                       ; $67b1: $df
    cp l                                          ; $67b2: $bd
    rst $18                                       ; $67b3: $df
    rst $38                                       ; $67b4: $ff
    ld e, d                                       ; $67b5: $5a
    rst $28                                       ; $67b6: $ef
    ld e, d                                       ; $67b7: $5a
    rst $28                                       ; $67b8: $ef
    xor h                                         ; $67b9: $ac
    rst $10                                       ; $67ba: $d7
    jp nz, $ff7e                                  ; $67bb: $c2 $7e $ff

    db $e3                                        ; $67be: $e3
    cp a                                          ; $67bf: $bf
    db $e3                                        ; $67c0: $e3
    cp a                                          ; $67c1: $bf
    or [hl]                                       ; $67c2: $b6
    ld e, a                                       ; $67c3: $5f
    or [hl]                                       ; $67c4: $b6
    ld e, a                                       ; $67c5: $5f
    cp a                                          ; $67c6: $bf
    ld e, l                                       ; $67c7: $5d
    xor a                                         ; $67c8: $af
    ld e, l                                       ; $67c9: $5d
    xor a                                         ; $67ca: $af

jr_046_67cb:
    ld l, $d7                                     ; $67cb: $2e $d7
    ld c, h                                       ; $67cd: $4c
    pop hl                                        ; $67ce: $e1
    ld b, b                                       ; $67cf: $40
    rst $38                                       ; $67d0: $ff
    ret nz                                        ; $67d1: $c0

    and b                                         ; $67d2: $a0
    ldh [$b8], a                                  ; $67d3: $e0 $b8
    ret c                                         ; $67d5: $d8

    ld l, $d6                                     ; $67d6: $2e $d6
    rla                                           ; $67d8: $17
    rst $18                                       ; $67d9: $df
    db $eb                                        ; $67da: $eb
    ld d, $eb                                     ; $67db: $16 $eb
    add hl, bc                                    ; $67dd: $09
    rrca                                          ; $67de: $0f
    ld h, a                                       ; $67df: $67
    add b                                         ; $67e0: $80
    inc b                                         ; $67e1: $04
    rlca                                          ; $67e2: $07
    ld sp, hl                                     ; $67e3: $f9
    ld [bc], a                                    ; $67e4: $02
    dec sp                                        ; $67e5: $3b
    ret nz                                        ; $67e6: $c0

    jr nc, jr_046_67cb                            ; $67e7: $30 $e2

    ldh [$e0], a                                  ; $67e9: $e0 $e0
    sub c                                         ; $67eb: $91
    pop af                                        ; $67ec: $f1
    adc [hl]                                      ; $67ed: $8e
    rst $38                                       ; $67ee: $ff
    rst $38                                       ; $67ef: $ff
    ld b, b                                       ; $67f0: $40
    ld hl, sp-$04                                 ; $67f1: $f8 $fc
    ld a, h                                       ; $67f3: $7c
    cp $e2                                        ; $67f4: $fe $e2
    ld a, a                                       ; $67f6: $7f
    rst $38                                       ; $67f7: $ff
    ld sp, $0e1f                                  ; $67f8: $31 $1f $0e
    call nz, $8c87                                ; $67fb: $c4 $87 $8c
    add a                                         ; $67fe: $87
    ret z                                         ; $67ff: $c8

    rst $38                                       ; $6800: $ff
    ld c, a                                       ; $6801: $4f
    ld a, b                                       ; $6802: $78
    cpl                                           ; $6803: $2f
    add hl, sp                                    ; $6804: $39
    rra                                           ; $6805: $1f
    ld sp, $711f                                  ; $6806: $31 $1f $71
    rst $08                                       ; $6809: $cf
    rra                                           ; $680a: $1f
    rst $20                                       ; $680b: $e7
    cp a                                          ; $680c: $bf
    inc e                                         ; $680d: $1c
    ld b, e                                       ; $680e: $43
    ld h, b                                       ; $680f: $60
    ld e, b                                       ; $6810: $58
    pop hl                                        ; $6811: $e1
    ldh [$c0], a                                  ; $6812: $e0 $c0
    halt                                          ; $6814: $76
    ld [bc], a                                    ; $6815: $02
    and c                                         ; $6816: $a1
    ret nz                                        ; $6817: $c0

    add b                                         ; $6818: $80
    db $f4                                        ; $6819: $f4
    add a                                         ; $681a: $87
    ld bc, $0200                                  ; $681b: $01 $00 $02
    or h                                          ; $681e: $b4
    and c                                         ; $681f: $a1
    cp a                                          ; $6820: $bf
    ld bc, $0017                                  ; $6821: $01 $17 $00
    dec hl                                        ; $6824: $2b
    nop                                           ; $6825: $00
    ld d, a                                       ; $6826: $57
    ld b, l                                       ; $6827: $45
    ld h, b                                       ; $6828: $60
    ld e, a                                       ; $6829: $5f
    or $b5                                        ; $682a: $f6 $b5
    ld h, b                                       ; $682c: $60
    ld a, a                                       ; $682d: $7f
    ld bc, $e14d                                  ; $682e: $01 $4d $e1
    cp a                                          ; $6831: $bf
    ld hl, sp-$41                                 ; $6832: $f8 $bf
    db $f4                                        ; $6834: $f4
    ld a, d                                       ; $6835: $7a
    cp $e0                                        ; $6836: $fe $e0
    ld a, [$e0fe]                                 ; $6838: $fa $fe $e0
    db $f4                                        ; $683b: $f4
    xor [hl]                                      ; $683c: $ae
    rst $30                                       ; $683d: $f7
    db $dd                                        ; $683e: $dd
    ld d, b                                       ; $683f: $50
    ldh [rIE], a                                  ; $6840: $e0 $ff
    ld a, [$fa7f]                                 ; $6842: $fa $7f $fa
    ld a, a                                       ; $6845: $7f
    ld [hl], l                                    ; $6846: $75
    cp a                                          ; $6847: $bf
    ld [hl], l                                    ; $6848: $75
    cp a                                          ; $6849: $bf
    rst $18                                       ; $684a: $df
    cp d                                          ; $684b: $ba
    ld e, a                                       ; $684c: $5f
    and [hl]                                      ; $684d: $a6
    rst $38                                       ; $684e: $ff
    call $e0fe                                    ; $684f: $cd $fe $e0
    sbc d                                         ; $6852: $9a
    rst $38                                       ; $6853: $ff
    rst $18                                       ; $6854: $df
    ld a, [$7fff]                                 ; $6855: $fa $ff $7f
    rst $38                                       ; $6858: $ff
    ld h, b                                       ; $6859: $60
    and h                                         ; $685a: $a4
    ld b, b                                       ; $685b: $40
    xor h                                         ; $685c: $ac
    rst $10                                       ; $685d: $d7
    db $fd                                        ; $685e: $fd
    ld d, $6a                                     ; $685f: $16 $6a

Call_046_6861:
    ldh [$0b], a                                  ; $6861: $e0 $0b
    push af                                       ; $6863: $f5
    dec bc                                        ; $6864: $0b
    push af                                       ; $6865: $f5
    rst $38                                       ; $6866: $ff
    rst $38                                       ; $6867: $ff
    ld e, a                                       ; $6868: $5f
    ld [hl], c                                    ; $6869: $71
    rst $38                                       ; $686a: $ff
    ld [hl], b                                    ; $686b: $70
    rst $38                                       ; $686c: $ff
    ld l, $f0                                     ; $686d: $2e $f0
    ldh [rNR22], a                                ; $686f: $e0 $17
    ldh a, [$e2]                                  ; $6871: $f0 $e2
    db $fd                                        ; $6873: $fd
    cp $15                                        ; $6874: $fe $15
    jp nz, Jump_000_03ff                          ; $6876: $c2 $ff $03

    db $fc                                        ; $6879: $fc
    rrca                                          ; $687a: $0f
    ldh a, [$f8]                                  ; $687b: $f0 $f8
    rst $38                                       ; $687d: $ff
    ldh a, [$f8]                                  ; $687e: $f0 $f8
    ld hl, sp+$6c                                 ; $6880: $f8 $6c
    db $fc                                        ; $6882: $fc
    ld l, a                                       ; $6883: $6f
    ldh a, [rNR32]                                ; $6884: $f0 $1c
    rst $38                                       ; $6886: $ff
    ldh a, [rNR23]                                ; $6887: $f0 $18
    ld b, b                                       ; $6889: $40
    ret nz                                        ; $688a: $c0

    ldh [rNR41], a                                ; $688b: $e0 $20
    ldh a, [rNR10]                                ; $688d: $f0 $10
    rst $08                                       ; $688f: $cf
    db $fc                                        ; $6890: $fc
    inc c                                         ; $6891: $0c
    ld c, $f2                                     ; $6892: $0e $f2
    add a                                         ; $6894: $87
    ld b, b                                       ; $6895: $40
    ld h, e                                       ; $6896: $63
    ld b, b                                       ; $6897: $40
    inc bc                                        ; $6898: $03
    inc bc                                        ; $6899: $03
    ld a, [hl]                                    ; $689a: $7e
    ld l, [hl]                                    ; $689b: $6e
    ld b, a                                       ; $689c: $47
    add b                                         ; $689d: $80
    add b                                         ; $689e: $80
    ret nz                                        ; $689f: $c0

    ld h, b                                       ; $68a0: $60
    cp $dc                                        ; $68a1: $fe $dc
    call c, $fc40                                 ; $68a3: $dc $40 $fc
    ld e, e                                       ; $68a6: $5b
    ld b, h                                       ; $68a7: $44
    ld d, $a1                                     ; $68a8: $16 $a1
    ld b, b                                       ; $68aa: $40
    ld b, b                                       ; $68ab: $40
    ld h, b                                       ; $68ac: $60
    ld b, b                                       ; $68ad: $40
    ld h, b                                       ; $68ae: $60
    jr nz, @+$01                                  ; $68af: $20 $ff

    dec [hl]                                      ; $68b1: $35
    jr nz, jr_046_692e                            ; $68b2: $20 $7a

    db $10                                        ; $68b4: $10
    cp l                                          ; $68b5: $bd
    ld [$085f], sp                                ; $68b6: $08 $5f $08
    rla                                           ; $68b9: $17
    rst $38                                       ; $68ba: $ff
    inc b                                         ; $68bb: $04
    ld a, [hl+]                                   ; $68bc: $2a
    sbc l                                         ; $68bd: $9d
    ld b, b                                       ; $68be: $40
    xor e                                         ; $68bf: $ab
    ld d, b                                       ; $68c0: $50
    ldh [rHDMA4], a                               ; $68c1: $e0 $54
    ldh [rLYC], a                                 ; $68c3: $e0 $45
    ld b, c                                       ; $68c5: $41
    db $fd                                        ; $68c6: $fd
    inc bc                                        ; $68c7: $03
    db $fc                                        ; $68c8: $fc
    pop hl                                        ; $68c9: $e1
    cp $07                                        ; $68ca: $fe $07
    cp $1f                                        ; $68cc: $fe $1f
    db $fc                                        ; $68ce: $fc
    ccf                                           ; $68cf: $3f
    db $fd                                        ; $68d0: $fd
    ld hl, sp+$67                                 ; $68d1: $f8 $67
    ld h, b                                       ; $68d3: $60
    ldh [rIE], a                                  ; $68d4: $e0 $ff
    ccf                                           ; $68d6: $3f
    db $f4                                        ; $68d7: $f4
    ccf                                           ; $68d8: $3f
    ld a, [$feec]                                 ; $68d9: $fa $ec $fe
    ldh [$62], a                                  ; $68dc: $e0 $62
    ldh [$7f], a                                  ; $68de: $e0 $7f
    add $fe                                       ; $68e0: $c6 $fe
    ldh [$c0], a                                  ; $68e2: $e0 $c0
    cp d                                          ; $68e4: $ba
    ld e, a                                       ; $68e5: $5f
    ld d, a                                       ; $68e6: $57
    ld e, h                                       ; $68e7: $5c
    xor a                                         ; $68e8: $af
    ld e, h                                       ; $68e9: $5c
    or [hl]                                       ; $68ea: $b6
    and b                                         ; $68eb: $a0
    ei                                            ; $68ec: $fb
    dec sp                                        ; $68ed: $3b
    ld b, b                                       ; $68ee: $40
    inc bc                                        ; $68ef: $03
    ld [hl], b                                    ; $68f0: $70
    pop hl                                        ; $68f1: $e1
    and h                                         ; $68f2: $a4
    cp $ec                                        ; $68f3: $fe $ec
    ldh [$2a], a                                  ; $68f5: $e0 $2a
    rrca                                          ; $68f7: $0f
    ret nz                                        ; $68f8: $c0

    ld b, e                                       ; $68f9: $43
    call z, $fe22                                 ; $68fa: $cc $22 $fe
    rst $18                                       ; $68fd: $df
    add b                                         ; $68fe: $80
    db $fc                                        ; $68ff: $fc
    ld c, e                                       ; $6900: $4b
    nop                                           ; $6901: $00
    ld sp, hl                                     ; $6902: $f9
    ret nz                                        ; $6903: $c0

    inc h                                         ; $6904: $24
    add c                                         ; $6905: $81
    sub b                                         ; $6906: $90
    ld b, b                                       ; $6907: $40
    add h                                         ; $6908: $84
    ld b, e                                       ; $6909: $43
    nop                                           ; $690a: $00
    call nz, $2840                                ; $690b: $c4 $40 $28
    ld a, h                                       ; $690e: $7c
    ld b, l                                       ; $690f: $45
    ret z                                         ; $6910: $c8

    ld b, c                                       ; $6911: $41
    ld [$3f41], sp                                ; $6912: $08 $41 $3f
    cp $e0                                        ; $6915: $fe $e0
    sbc d                                         ; $6917: $9a
    ld l, b                                       ; $6918: $68
    ld b, h                                       ; $6919: $44
    sub b                                         ; $691a: $90
    dec h                                         ; $691b: $25
    ld d, h                                       ; $691c: $54
    ld l, b                                       ; $691d: $68
    ld b, l                                       ; $691e: $45
    or b                                          ; $691f: $b0
    rst $20                                       ; $6920: $e7
    push af                                       ; $6921: $f5
    ld b, h                                       ; $6922: $44
    ld b, d                                       ; $6923: $42
    ld a, [$e0f8]                                 ; $6924: $fa $f8 $e0
    ld [$427c], a                                 ; $6927: $ea $7c $42
    and h                                         ; $692a: $a4
    inc [hl]                                      ; $692b: $34
    ld b, c                                       ; $692c: $41
    or h                                          ; $692d: $b4

jr_046_692e:
    rst $20                                       ; $692e: $e7
    and b                                         ; $692f: $a0
    ld h, [hl]                                    ; $6930: $66
    inc h                                         ; $6931: $24
    inc h                                         ; $6932: $24
    ld b, l                                       ; $6933: $45
    ld [$e8f0], sp                                ; $6934: $08 $f0 $e8
    xor d                                         ; $6937: $aa
    ld d, b                                       ; $6938: $50
    jr z, jr_046_697b                             ; $6939: $28 $40

    ld d, b                                       ; $693b: $50
    ld h, $98                                     ; $693c: $26 $98
    jr nz, jr_046_694c                            ; $693e: $20 $0c

    ld b, c                                       ; $6940: $41
    cpl                                           ; $6941: $2f
    nop                                           ; $6942: $00
    ld b, d                                       ; $6943: $42
    dec b                                         ; $6944: $05
    xor b                                         ; $6945: $a8
    ld [c], a                                     ; $6946: $e2
    ld a, a                                       ; $6947: $7f
    ld [$5400], a                                 ; $6948: $ea $00 $54
    nop                                           ; $694b: $00

jr_046_694c:
    xor b                                         ; $694c: $a8
    nop                                           ; $694d: $00
    ld b, b                                       ; $694e: $40
    inc l                                         ; $694f: $2c
    ld b, d                                       ; $6950: $42
    and c                                         ; $6951: $a1
    xor d                                         ; $6952: $aa
    ld hl, sp-$20                                 ; $6953: $f8 $e0
    dec de                                        ; $6955: $1b
    add hl, hl                                    ; $6956: $29
    adc h                                         ; $6957: $8c
    ld c, d                                       ; $6958: $4a
    ld [bc], a                                    ; $6959: $02
    dec l                                         ; $695a: $2d
    ld [bc], a                                    ; $695b: $02
    set 4, b                                      ; $695c: $cb $e0
    xor b                                         ; $695e: $a8
    ld b, b                                       ; $695f: $40
    inc sp                                        ; $6960: $33
    and $a3                                       ; $6961: $e6 $a3
    ld hl, $45d8                                  ; $6963: $21 $d8 $45
    or e                                          ; $6966: $b3
    pop hl                                        ; $6967: $e1
    xor a                                         ; $6968: $af
    ld [c], a                                     ; $6969: $e2
    db $db                                        ; $696a: $db
    and c                                         ; $696b: $a1
    ld [bc], a                                    ; $696c: $02
    add b                                         ; $696d: $80
    add sp, $22                                   ; $696e: $e8 $22
    cp a                                          ; $6970: $bf
    ld [$7b05], sp                                ; $6971: $08 $05 $7b
    jr nz, jr_046_69b6                            ; $6974: $20 $40

    ld b, [hl]                                    ; $6976: $46
    ld h, a                                       ; $6977: $67
    inc h                                         ; $6978: $24
    dec d                                         ; $6979: $15
    rst $10                                       ; $697a: $d7

jr_046_697b:
    add $57                                       ; $697b: $c6 $57
    ld hl, $a8f1                                  ; $697d: $21 $f1 $a8
    adc l                                         ; $6980: $8d
    inc bc                                        ; $6981: $03
    ld a, h                                       ; $6982: $7c
    ld [$800e], sp                                ; $6983: $08 $0e $80
    nop                                           ; $6986: $00
    ld h, b                                       ; $6987: $60
    add b                                         ; $6988: $80
    jr nc, jr_046_6a06                            ; $6989: $30 $7b

    ret nz                                        ; $698b: $c0

    jr @+$4a                                      ; $698c: $18 $48

    ld b, b                                       ; $698e: $40
    ld b, $f8                                     ; $698f: $06 $f8
    inc bc                                        ; $6991: $03
    db $fc                                        ; $6992: $fc
    ld [hl], b                                    ; $6993: $70
    rlca                                          ; $6994: $07
    db $e4                                        ; $6995: $e4
    xor c                                         ; $6996: $a9
    jp Jump_000_0960                              ; $6997: $c3 $60 $09


    jr z, jr_046_69c5                             ; $699a: $28 $29

    ldh [$50], a                                  ; $699c: $e0 $50
    inc bc                                        ; $699e: $03
    ret nz                                        ; $699f: $c0

    ret nz                                        ; $69a0: $c0

    ret nz                                        ; $69a1: $c0

    dec l                                         ; $69a2: $2d
    ld b, b                                       ; $69a3: $40
    jp nz, Jump_000_3e21                          ; $69a4: $c2 $21 $3e

    ld a, $a8                                     ; $69a7: $3e $a8
    push hl                                       ; $69a9: $e5
    ld d, b                                       ; $69aa: $50
    scf                                           ; $69ab: $37
    inc b                                         ; $69ac: $04
    ld b, e                                       ; $69ad: $43
    inc h                                         ; $69ae: $24
    db $fc                                        ; $69af: $fc
    cp d                                          ; $69b0: $ba
    add sp, $0f                                   ; $69b1: $e8 $0f
    db $eb                                        ; $69b3: $eb
    ccf                                           ; $69b4: $3f
    ret nz                                        ; $69b5: $c0

jr_046_69b6:
    rra                                           ; $69b6: $1f
    ldh [rIF], a                                  ; $69b7: $e0 $0f
    ldh a, [$65]                                  ; $69b9: $f0 $65
    rlca                                          ; $69bb: $07
    sub [hl]                                      ; $69bc: $96
    ldh [rSB], a                                  ; $69bd: $e0 $01
    ld de, $0f61                                  ; $69bf: $11 $61 $0f
    call nz, Call_046_7c83                        ; $69c2: $c4 $83 $7c

jr_046_69c5:
    cp $e3                                        ; $69c5: $fe $e3
    jp $fc03                                      ; $69c7: $c3 $03 $fc


    or c                                          ; $69ca: $b1
    dec b                                         ; $69cb: $05
    or l                                          ; $69cc: $b5
    ld bc, $e11f                                  ; $69cd: $01 $1f $e1
    ret nc                                        ; $69d0: $d0

    ld b, e                                       ; $69d1: $43
    rst $38                                       ; $69d2: $ff
    nop                                           ; $69d3: $00
    ld a, [$41d0]                                 ; $69d4: $fa $d0 $41
    xor d                                         ; $69d7: $aa
    ld [hl-], a                                   ; $69d8: $32
    nop                                           ; $69d9: $00
    ld a, [$b2e6]                                 ; $69da: $fa $e6 $b2
    adc $ec                                       ; $69dd: $ce $ec
    rst $38                                       ; $69df: $ff
    inc d                                         ; $69e0: $14
    ld d, h                                       ; $69e1: $54
    xor h                                         ; $69e2: $ac
    xor b                                         ; $69e3: $a8
    ld e, b                                       ; $69e4: $58
    ld [$10f8], sp                                ; $69e5: $08 $f8 $10
    db $eb                                        ; $69e8: $eb
    ldh a, [$30]                                  ; $69e9: $f0 $30
    ld h, h                                       ; $69eb: $64
    and d                                         ; $69ec: $a2
    rlca                                          ; $69ed: $07
    inc e                                         ; $69ee: $1c
    add b                                         ; $69ef: $80
    jr c, jr_046_69f9                             ; $69f0: $38 $07

    ld [hl], b                                    ; $69f2: $70
    rst $38                                       ; $69f3: $ff
    rrca                                          ; $69f4: $0f
    ldh [$1f], a                                  ; $69f5: $e0 $1f
    ldh [$1f], a                                  ; $69f7: $e0 $1f

jr_046_69f9:
    ld bc, $0300                                  ; $69f9: $01 $00 $03
    rst $38                                       ; $69fc: $ff
    nop                                           ; $69fd: $00
    cp $01                                        ; $69fe: $fe $01
    db $fc                                        ; $6a00: $fc
    inc bc                                        ; $6a01: $03
    ld bc, $03fe                                  ; $6a02: $01 $fe $03
    rst $18                                       ; $6a05: $df

jr_046_6a06:
    db $fc                                        ; $6a06: $fc
    rlca                                          ; $6a07: $07
    ld hl, sp+$07                                 ; $6a08: $f8 $07
    ld hl, sp+$12                                 ; $6a0a: $f8 $12
    pop hl                                        ; $6a0c: $e1
    ld a, h                                       ; $6a0d: $7c
    add e                                         ; $6a0e: $83
    ld [hl], a                                    ; $6a0f: $77
    ld hl, sp+$07                                 ; $6a10: $f8 $07
    ldh a, [$e2]                                  ; $6a12: $f0 $e2
    ldh [$c0], a                                  ; $6a14: $e0 $c0
    ccf                                           ; $6a16: $3f
    add b                                         ; $6a17: $80
    ld e, e                                       ; $6a18: $5b
    and b                                         ; $6a19: $a0
    ld a, [$a19e]                                 ; $6a1a: $fa $9e $a1

jr_046_6a1d:
    jr nc, jr_046_6a1d                            ; $6a1d: $30 $fe

    ldh [$78], a                                  ; $6a1f: $e0 $78
    rst $28                                       ; $6a21: $ef
    ld a, b                                       ; $6a22: $78
    rst $28                                       ; $6a23: $ef
    call z, $f737                                 ; $6a24: $cc $37 $f7
    inc bc                                        ; $6a27: $03
    db $fc                                        ; $6a28: $fc
    cp $e3                                        ; $6a29: $fe $e3
    ld [bc], a                                    ; $6a2b: $02
    db $fd                                        ; $6a2c: $fd
    ld d, [hl]                                    ; $6a2d: $56
    inc bc                                        ; $6a2e: $03
    ldh [$cb], a                                  ; $6a2f: $e0 $cb
    rst $38                                       ; $6a31: $ff
    add b                                         ; $6a32: $80
    rst $38                                       ; $6a33: $ff
    ldh a, [rP1]                                  ; $6a34: $f0 $00
    ld hl, sp+$00                                 ; $6a36: $f8 $00
    inc e                                         ; $6a38: $1c
    ldh [rSTAT], a                                ; $6a39: $e0 $41
    ld c, $4e                                     ; $6a3b: $0e $4e
    ldh [$fe], a                                  ; $6a3d: $e0 $fe
    db $e3                                        ; $6a3f: $e3
    ld b, e                                       ; $6a40: $43
    jr nz, @-$25                                  ; $6a41: $20 $d9

    ld b, c                                       ; $6a43: $41
    daa                                           ; $6a44: $27
    nop                                           ; $6a45: $00
    inc bc                                        ; $6a46: $03
    adc b                                         ; $6a47: $88
    ldh [$03], a                                  ; $6a48: $e0 $03
    ld c, $01                                     ; $6a4a: $0e $01
    adc h                                         ; $6a4c: $8c
    pop hl                                        ; $6a4d: $e1
    adc b                                         ; $6a4e: $88
    pop hl                                        ; $6a4f: $e1
    and h                                         ; $6a50: $a4
    pop hl                                        ; $6a51: $e1
    dec c                                         ; $6a52: $0d
    ld h, c                                       ; $6a53: $61
    adc h                                         ; $6a54: $8c
    pop hl                                        ; $6a55: $e1
    inc h                                         ; $6a56: $24
    push hl                                       ; $6a57: $e5
    pop de                                        ; $6a58: $d1
    add b                                         ; $6a59: $80
    and e                                         ; $6a5a: $a3
    ld b, b                                       ; $6a5b: $40
    ld d, c                                       ; $6a5c: $51
    ld b, b                                       ; $6a5d: $40
    ld c, l                                       ; $6a5e: $4d
    ld b, b                                       ; $6a5f: $40
    adc h                                         ; $6a60: $8c
    cp $e0                                        ; $6a61: $fe $e0
    ld e, $fb                                     ; $6a63: $1e $fb
    rst $38                                       ; $6a65: $ff
    ld e, $fb                                     ; $6a66: $1e $fb
    scf                                           ; $6a68: $37
    db $fd                                        ; $6a69: $fd
    call z, $b6f7                                 ; $6a6a: $cc $f7 $b6
    db $eb                                        ; $6a6d: $eb
    rst $38                                       ; $6a6e: $ff
    or [hl]                                       ; $6a6f: $b6
    db $eb                                        ; $6a70: $eb
    ld c, e                                       ; $6a71: $4b
    push af                                       ; $6a72: $f5
    ld c, e                                       ; $6a73: $4b
    push af                                       ; $6a74: $f5
    and l                                         ; $6a75: $a5
    ld a, [$a5ef]                                 ; $6a76: $fa $ef $a5
    ld a, [$fd42]                                 ; $6a79: $fa $42 $fd
    call Call_000_0381                            ; $6a7c: $cd $81 $03
    rst $38                                       ; $6a7f: $ff
    ld b, $ea                                     ; $6a80: $06 $ea
    cp $e0                                        ; $6a82: $fe $e0
    adc l                                         ; $6a84: $8d
    cp $e0                                        ; $6a85: $fe $e0
    jp c, Jump_000_2206                           ; $6a87: $da $06 $22

    ld h, c                                       ; $6a8a: $61
    cp a                                          ; $6a8b: $bf
    ld h, c                                       ; $6a8c: $61
    rst $38                                       ; $6a8d: $ff
    cp a                                          ; $6a8e: $bf
    or c                                          ; $6a8f: $b1
    ld e, a                                       ; $6a90: $5f
    or e                                          ; $6a91: $b3
    ld e, a                                       ; $6a92: $5f
    ld e, e                                       ; $6a93: $5b
    xor a                                         ; $6a94: $af
    ld e, [hl]                                    ; $6a95: $5e
    ld a, a                                       ; $6a96: $7f
    xor a                                         ; $6a97: $af
    rlca                                          ; $6a98: $07
    ld hl, sp+$06                                 ; $6a99: $f8 $06
    ld sp, hl                                     ; $6a9b: $f9
    add h                                         ; $6a9c: $84
    ei                                            ; $6a9d: $fb
    xor $01                                       ; $6a9e: $ee $01
    rst $30                                       ; $6aa0: $f7
    ld h, b                                       ; $6aa1: $60
    cp a                                          ; $6aa2: $bf
    ld h, b                                       ; $6aa3: $60
    ld [$1ce0], a                                 ; $6aa4: $ea $e0 $1c
    inc bc                                        ; $6aa7: $03
    jr c, jr_046_6ab1                             ; $6aa8: $38 $07

    db $fd                                        ; $6aaa: $fd
    ld a, b                                       ; $6aab: $78
    daa                                           ; $6aac: $27
    pop hl                                        ; $6aad: $e1
    rra                                           ; $6aae: $1f
    ld hl, sp-$61                                 ; $6aaf: $f8 $9f

jr_046_6ab1:
    db $fc                                        ; $6ab1: $fc
    or a                                          ; $6ab2: $b7
    ld a, h                                       ; $6ab3: $7c
    sub l                                         ; $6ab4: $95
    rst $30                                       ; $6ab5: $f7
    jp nz, Jump_000_0de5                          ; $6ab6: $c2 $e5 $0d

    cp $e0                                        ; $6ab9: $fe $e0
    ld a, [de]                                    ; $6abb: $1a
    cp $e0                                        ; $6abc: $fe $e0
    ld b, d                                       ; $6abe: $42
    ld b, d                                       ; $6abf: $42
    cp a                                          ; $6ac0: $bf
    rst $38                                       ; $6ac1: $ff
    ldh [$bf], a                                  ; $6ac2: $e0 $bf
    or b                                          ; $6ac4: $b0
    ld e, a                                       ; $6ac5: $5f
    or c                                          ; $6ac6: $b1
    ld e, a                                       ; $6ac7: $5f
    ld e, c                                       ; $6ac8: $59
    xor a                                         ; $6ac9: $af
    rst $38                                       ; $6aca: $ff
    ld e, a                                       ; $6acb: $5f
    xor a                                         ; $6acc: $af
    scf                                           ; $6acd: $37
    db $fd                                        ; $6ace: $fd
    ld l, l                                       ; $6acf: $6d
    ld a, [$fa6d]                                 ; $6ad0: $fa $6d $fa
    rst $38                                       ; $6ad3: $ff
    jp nc, $d2fd                                  ; $6ad4: $d2 $fd $d2

    db $fd                                        ; $6ad7: $fd
    and c                                         ; $6ad8: $a1
    cp $a1                                        ; $6ad9: $fe $a1
    cp $7f                                        ; $6adb: $fe $7f
    ld b, b                                       ; $6add: $40
    rst $38                                       ; $6ade: $ff
    ld b, d                                       ; $6adf: $42
    db $fd                                        ; $6ae0: $fd
    add c                                         ; $6ae1: $81
    cp $81                                        ; $6ae2: $fe $81
    add [hl]                                      ; $6ae4: $86
    jp nz, $96f2                                  ; $6ae5: $c2 $f2 $96

    add e                                         ; $6ae8: $83
    jp c, Jump_046_64b8                           ; $6ae9: $da $b8 $64

    ld l, b                                       ; $6aec: $68
    add e                                         ; $6aed: $83
    inc l                                         ; $6aee: $2c
    rst $10                                       ; $6aef: $d7
    ld l, $d7                                     ; $6af0: $2e $d7
    rst $30                                       ; $6af2: $f7
    cpl                                           ; $6af3: $2f
    rst $10                                       ; $6af4: $d7
    rla                                           ; $6af5: $17
    adc $64                                       ; $6af6: $ce $64
    dec b                                         ; $6af8: $05
    ld a, [$fa05]                                 ; $6af9: $fa $05 $fa
    push af                                       ; $6afc: $f5
    or c                                          ; $6afd: $b1
    ld a, d                                       ; $6afe: $7a
    ldh [$5b], a                                  ; $6aff: $e0 $5b
    ld [$2e60], sp                                ; $6b01: $08 $60 $2e
    rst $10                                       ; $6b04: $d7
    sub a                                         ; $6b05: $97
    db $eb                                        ; $6b06: $eb
    rst $38                                       ; $6b07: $ff
    sub a                                         ; $6b08: $97
    db $eb                                        ; $6b09: $eb
    set 6, l                                      ; $6b0a: $cb $f5
    ld h, [hl]                                    ; $6b0c: $66
    ei                                            ; $6b0d: $fb
    ld h, [hl]                                    ; $6b0e: $66
    ei                                            ; $6b0f: $fb
    rst $30                                       ; $6b10: $f7
    db $db                                        ; $6b11: $db
    push af                                       ; $6b12: $f5
    db $db                                        ; $6b13: $db
    ld b, d                                       ; $6b14: $42
    ld [c], a                                     ; $6b15: $e2
    ld b, e                                       ; $6b16: $43
    db $fd                                        ; $6b17: $fd
    ld b, e                                       ; $6b18: $43
    db $fd                                        ; $6b19: $fd
    ld e, a                                       ; $6b1a: $5f
    inc [hl]                                      ; $6b1b: $34
    rst $38                                       ; $6b1c: $ff
    inc [hl]                                      ; $6b1d: $34
    rst $38                                       ; $6b1e: $ff
    ld l, b                                       ; $6b1f: $68
    cp $e0                                        ; $6b20: $fe $e0
    ret nc                                        ; $6b22: $d0

    cp $e0                                        ; $6b23: $fe $e0
    db $fd                                        ; $6b25: $fd
    and b                                         ; $6b26: $a0
    cp $e0                                        ; $6b27: $fe $e0
    cpl                                           ; $6b29: $2f
    rst $10                                       ; $6b2a: $d7
    ld l, $df                                     ; $6b2b: $2e $df
    ld e, $ef                                     ; $6b2d: $1e $ef
    ld d, a                                       ; $6b2f: $57
    dec e                                         ; $6b30: $1d
    rst $28                                       ; $6b31: $ef
    dec e                                         ; $6b32: $1d
    ld [hl], d                                    ; $6b33: $72
    ldh [$3a], a                                  ; $6b34: $e0 $3a
    db $e4                                        ; $6b36: $e4
    ldh [rLCDC], a                                ; $6b37: $e0 $40
    inc bc                                        ; $6b39: $03
    ld hl, $2afe                                  ; $6b3a: $21 $fe $2a
    adc d                                         ; $6b3d: $8a
    rst $38                                       ; $6b3e: $ff
    rst $38                                       ; $6b3f: $ff
    rst $18                                       ; $6b40: $df
    rst $38                                       ; $6b41: $ff
    ld l, c                                       ; $6b42: $69
    rst $38                                       ; $6b43: $ff
    ld e, c                                       ; $6b44: $59
    ld l, $ca                                     ; $6b45: $2e $ca
    ldh [rOBP0], a                                ; $6b47: $e0 $48
    rst $38                                       ; $6b49: $ff
    ld a, b                                       ; $6b4a: $78
    ld h, b                                       ; $6b4b: $60
    ld h, b                                       ; $6b4c: $60
    cp $fc                                        ; $6b4d: $fe $fc
    ld h, b                                       ; $6b4f: $60
    adc b                                         ; $6b50: $88
    ret nz                                        ; $6b51: $c0

    ei                                            ; $6b52: $fb
    rst $38                                       ; $6b53: $ff
    add hl, de                                    ; $6b54: $19
    cp $e0                                        ; $6b55: $fe $e0
    ld bc, $02ff                                  ; $6b57: $01 $ff $02
    db $fd                                        ; $6b5a: $fd
    ld [bc], a                                    ; $6b5b: $02
    rst $28                                       ; $6b5c: $ef
    db $fd                                        ; $6b5d: $fd
    rst $38                                       ; $6b5e: $ff
    rst $38                                       ; $6b5f: $ff
    cp h                                          ; $6b60: $bc
    ld [hl-], a                                   ; $6b61: $32
    ld h, b                                       ; $6b62: $60
    and c                                         ; $6b63: $a1
    rst $38                                       ; $6b64: $ff
    ld hl, $c07e                                  ; $6b65: $21 $7e $c0
    ld h, b                                       ; $6b68: $60
    bit 6, l                                      ; $6b69: $cb $75
    push hl                                       ; $6b6b: $e5
    ld a, d                                       ; $6b6c: $7a
    push hl                                       ; $6b6d: $e5
    ld a, [$e1ec]                                 ; $6b6e: $fa $ec $e1
    sbc l                                         ; $6b71: $9d
    jp $e0fe                                      ; $6b72: $c3 $fe $e0


    nop                                           ; $6b75: $00
    rst $38                                       ; $6b76: $ff
    add c                                         ; $6b77: $81
    cp $e0                                        ; $6b78: $fe $e0
    ld d, a                                       ; $6b7a: $57
    ld h, c                                       ; $6b7b: $61
    rst $38                                       ; $6b7c: $ff
    xor e                                         ; $6b7d: $ab
    rst $38                                       ; $6b7e: $ff

jr_046_6b7f:
    jr jr_046_6b7f                                ; $6b7f: $18 $fe

    ldh [rP1], a                                  ; $6b81: $e0 $00
    and b                                         ; $6b83: $a0
    ldh [rLCDC], a                                ; $6b84: $e0 $40
    cp h                                          ; $6b86: $bc
    ld h, b                                       ; $6b87: $60
    db $fd                                        ; $6b88: $fd
    rst $38                                       ; $6b89: $ff
    rst $38                                       ; $6b8a: $ff
    cp $ff                                        ; $6b8b: $fe $ff
    dec b                                         ; $6b8d: $05
    rst $38                                       ; $6b8e: $ff
    inc b                                         ; $6b8f: $04
    rst $38                                       ; $6b90: $ff
    rlca                                          ; $6b91: $07
    db $eb                                        ; $6b92: $eb
    rst $38                                       ; $6b93: $ff
    ld [hl], h                                    ; $6b94: $74
    ld hl, sp+$40                                 ; $6b95: $f8 $40
    rst $38                                       ; $6b97: $ff
    adc a                                         ; $6b98: $8f
    nop                                           ; $6b99: $00
    rst $38                                       ; $6b9a: $ff
    rst $38                                       ; $6b9b: $ff
    sbc b                                         ; $6b9c: $98
    ld b, $fe                                     ; $6b9d: $06 $fe
    ldh [$80], a                                  ; $6b9f: $e0 $80
    rst $38                                       ; $6ba1: $ff
    nop                                           ; $6ba2: $00
    nop                                           ; $6ba3: $00
    nop                                           ; $6ba4: $00
    dec b                                         ; $6ba5: $05
    ld h, c                                       ; $6ba6: $61
    rst $38                                       ; $6ba7: $ff
    ldh a, [rP1]                                  ; $6ba8: $f0 $00
    rst $38                                       ; $6baa: $ff
    rst $38                                       ; $6bab: $ff
    rst $20                                       ; $6bac: $e7
    and $c0                                       ; $6bad: $e6 $c0
    rst $38                                       ; $6baf: $ff
    ret nz                                        ; $6bb0: $c0

    rst $38                                       ; $6bb1: $ff
    ret nz                                        ; $6bb2: $c0

    rst $38                                       ; $6bb3: $ff
    add sp, -$40                                  ; $6bb4: $e8 $c0
    rst $38                                       ; $6bb6: $ff
    ret nz                                        ; $6bb7: $c0

    rst $38                                       ; $6bb8: $ff
    db $f4                                        ; $6bb9: $f4
    di                                            ; $6bba: $f3
    ld h, d                                       ; $6bbb: $62
    db $dd                                        ; $6bbc: $dd
    xor $63                                       ; $6bbd: $ee $63
    ld h, h                                       ; $6bbf: $64
    ld bc, $00e3                                  ; $6bc0: $01 $e3 $00
    nop                                           ; $6bc3: $00
    db $fd                                        ; $6bc4: $fd
    ldh [rIE], a                                  ; $6bc5: $e0 $ff
    rst $38                                       ; $6bc7: $ff
    ld [c], a                                     ; $6bc8: $e2
    pop hl                                        ; $6bc9: $e1
    ld h, l                                       ; $6bca: $65
    ld h, [hl]                                    ; $6bcb: $66
    ld h, a                                       ; $6bcc: $67
    cp $db                                        ; $6bcd: $fe $db
    push hl                                       ; $6bcf: $e5
    ld [bc], a                                    ; $6bd0: $02
    inc bc                                        ; $6bd1: $03
    inc b                                         ; $6bd2: $04
    dec b                                         ; $6bd3: $05
    nop                                           ; $6bd4: $00
    nop                                           ; $6bd5: $00
    ld l, b                                       ; $6bd6: $68
    di                                            ; $6bd7: $f3
    ld l, c                                       ; $6bd8: $69
    ld l, d                                       ; $6bd9: $6a
    ret nz                                        ; $6bda: $c0

    rst $38                                       ; $6bdb: $ff
    add sp, -$19                                  ; $6bdc: $e8 $e7
    ld bc, $6c6b                                  ; $6bde: $01 $6b $6c
    ld l, l                                       ; $6be1: $6d
    db $fd                                        ; $6be2: $fd
    ld b, $d9                                     ; $6be3: $06 $d9

Call_046_6be5:
    ld [c], a                                     ; $6be5: $e2
    rlca                                          ; $6be6: $07
    ld [$0a09], sp                                ; $6be7: $08 $09 $0a
    dec bc                                        ; $6bea: $0b
    inc c                                         ; $6beb: $0c
    rst $08                                       ; $6bec: $cf
    ld l, [hl]                                    ; $6bed: $6e
    ld l, a                                       ; $6bee: $6f
    ld [hl], b                                    ; $6bef: $70
    ld [hl], c                                    ; $6bf0: $71
    jp z, $e8ff                                   ; $6bf1: $ca $ff $e8

    rst $20                                       ; $6bf4: $e7
    ld [hl], d                                    ; $6bf5: $72
    ld [hl], e                                    ; $6bf6: $73
    rst $38                                       ; $6bf7: $ff
    ld bc, $0d74                                  ; $6bf8: $01 $74 $0d
    ld c, $0f                                     ; $6bfb: $0e $0f
    db $10                                        ; $6bfd: $10
    ld de, $ff12                                  ; $6bfe: $11 $12 $ff
    inc de                                        ; $6c01: $13
    inc d                                         ; $6c02: $14
    dec d                                         ; $6c03: $15
    ld d, $17                                     ; $6c04: $16 $17
    jr jr_046_6c09                                ; $6c06: $18 $01

    ld [hl], l                                    ; $6c08: $75

jr_046_6c09:
    di                                            ; $6c09: $f3
    halt                                          ; $6c0a: $76
    ld [hl], a                                    ; $6c0b: $77
    jp z, $e8ff                                   ; $6c0c: $ca $ff $e8

    rst $20                                       ; $6c0f: $e7
    ld a, b                                       ; $6c10: $78
    ld a, c                                       ; $6c11: $79
    ld a, d                                       ; $6c12: $7a
    ld a, e                                       ; $6c13: $7b
    rst $38                                       ; $6c14: $ff
    add hl, de                                    ; $6c15: $19
    ld a, [de]                                    ; $6c16: $1a
    dec de                                        ; $6c17: $1b
    inc e                                         ; $6c18: $1c
    dec e                                         ; $6c19: $1d
    ld e, $1f                                     ; $6c1a: $1e $1f
    jr nz, @+$01                                  ; $6c1c: $20 $ff

    ld hl, $2322                                  ; $6c1e: $21 $22 $23
    inc h                                         ; $6c21: $24
    ld a, h                                       ; $6c22: $7c
    ld a, l                                       ; $6c23: $7d
    ld a, [hl]                                    ; $6c24: $7e
    ld a, a                                       ; $6c25: $7f
    db $fc                                        ; $6c26: $fc
    jp z, $e8ff                                   ; $6c27: $ca $ff $e8

    rst $20                                       ; $6c2a: $e7
    add b                                         ; $6c2b: $80
    add c                                         ; $6c2c: $81
    add d                                         ; $6c2d: $82
    add d                                         ; $6c2e: $82
    dec h                                         ; $6c2f: $25
    ld h, $ff                                     ; $6c30: $26 $ff
    daa                                           ; $6c32: $27
    jr z, @+$2b                                   ; $6c33: $28 $29

    ld a, [hl+]                                   ; $6c35: $2a
    dec hl                                        ; $6c36: $2b
    inc l                                         ; $6c37: $2c
    dec l                                         ; $6c38: $2d
    ld l, $3f                                     ; $6c39: $2e $3f
    cpl                                           ; $6c3b: $2f
    jr nc, @-$7a                                  ; $6c3c: $30 $84

    add l                                         ; $6c3e: $85
    add [hl]                                      ; $6c3f: $86
    add a                                         ; $6c40: $87
    jp z, $e8ff                                   ; $6c41: $ca $ff $e8

    rst $20                                       ; $6c44: $e7
    rst $38                                       ; $6c45: $ff
    adc b                                         ; $6c46: $88
    adc c                                         ; $6c47: $89
    adc d                                         ; $6c48: $8a
    adc e                                         ; $6c49: $8b
    ld sp, $3332                                  ; $6c4a: $31 $32 $33
    inc [hl]                                      ; $6c4d: $34
    rst $38                                       ; $6c4e: $ff
    dec [hl]                                      ; $6c4f: $35
    ld [hl], $37                                  ; $6c50: $36 $37
    jr c, jr_046_6c8d                             ; $6c52: $38 $39

    ld a, [hl-]                                   ; $6c54: $3a
    dec sp                                        ; $6c55: $3b
    inc a                                         ; $6c56: $3c
    rst $08                                       ; $6c57: $cf
    adc h                                         ; $6c58: $8c
    adc l                                         ; $6c59: $8d
    adc [hl]                                      ; $6c5a: $8e
    adc a                                         ; $6c5b: $8f
    jp z, $e8ff                                   ; $6c5c: $ca $ff $e8

    rst $20                                       ; $6c5f: $e7
    sub b                                         ; $6c60: $90
    sub c                                         ; $6c61: $91
    rst $38                                       ; $6c62: $ff
    sub d                                         ; $6c63: $92
    sub e                                         ; $6c64: $93
    dec a                                         ; $6c65: $3d
    ld a, $3f                                     ; $6c66: $3e $3f
    ld b, b                                       ; $6c68: $40
    ld b, c                                       ; $6c69: $41
    ld b, d                                       ; $6c6a: $42
    rst $38                                       ; $6c6b: $ff
    ld b, e                                       ; $6c6c: $43
    ld b, h                                       ; $6c6d: $44
    ld b, l                                       ; $6c6e: $45
    ld b, [hl]                                    ; $6c6f: $46
    ld b, a                                       ; $6c70: $47
    ld c, b                                       ; $6c71: $48
    sub h                                         ; $6c72: $94
    sub l                                         ; $6c73: $95
    di                                            ; $6c74: $f3
    sub [hl]                                      ; $6c75: $96
    sub a                                         ; $6c76: $97
    jp z, $e8ff                                   ; $6c77: $ca $ff $e8

    rst $20                                       ; $6c7a: $e7
    sbc b                                         ; $6c7b: $98
    sbc c                                         ; $6c7c: $99
    sbc d                                         ; $6c7d: $9a
    sbc e                                         ; $6c7e: $9b
    rst $38                                       ; $6c7f: $ff
    ld c, c                                       ; $6c80: $49
    ld c, d                                       ; $6c81: $4a
    ld c, e                                       ; $6c82: $4b
    ld c, h                                       ; $6c83: $4c
    ld c, l                                       ; $6c84: $4d
    ld c, [hl]                                    ; $6c85: $4e
    ld c, a                                       ; $6c86: $4f
    ld d, b                                       ; $6c87: $50
    rst $38                                       ; $6c88: $ff
    ld d, c                                       ; $6c89: $51
    ld d, d                                       ; $6c8a: $52
    ld d, e                                       ; $6c8b: $53
    ld d, h                                       ; $6c8c: $54

jr_046_6c8d:
    sbc h                                         ; $6c8d: $9c
    sbc l                                         ; $6c8e: $9d
    sbc [hl]                                      ; $6c8f: $9e
    sbc a                                         ; $6c90: $9f
    db $fc                                        ; $6c91: $fc
    jp z, $e8ff                                   ; $6c92: $ca $ff $e8

    rst $20                                       ; $6c95: $e7
    and b                                         ; $6c96: $a0
    and c                                         ; $6c97: $a1
    and d                                         ; $6c98: $a2
    and e                                         ; $6c99: $a3
    ld d, l                                       ; $6c9a: $55
    ld d, [hl]                                    ; $6c9b: $56
    rst $38                                       ; $6c9c: $ff
    ld d, a                                       ; $6c9d: $57
    ld e, b                                       ; $6c9e: $58
    ld e, c                                       ; $6c9f: $59
    ld e, d                                       ; $6ca0: $5a
    ld e, e                                       ; $6ca1: $5b
    ld e, h                                       ; $6ca2: $5c
    ld e, l                                       ; $6ca3: $5d
    ld e, [hl]                                    ; $6ca4: $5e
    ccf                                           ; $6ca5: $3f
    ld e, a                                       ; $6ca6: $5f
    ld h, b                                       ; $6ca7: $60
    and h                                         ; $6ca8: $a4
    and l                                         ; $6ca9: $a5
    and [hl]                                      ; $6caa: $a6
    and b                                         ; $6cab: $a0
    jp z, Jump_046_40ff                           ; $6cac: $ca $ff $40

    cp a                                          ; $6caf: $bf
    nop                                           ; $6cb0: $00
    rst $38                                       ; $6cb1: $ff
    rst $38                                       ; $6cb2: $ff
    ret nz                                        ; $6cb3: $c0

    rst $38                                       ; $6cb4: $ff
    rst $38                                       ; $6cb5: $ff
    rst $38                                       ; $6cb6: $ff
    ret nz                                        ; $6cb7: $c0

    rst $38                                       ; $6cb8: $ff
    ret nz                                        ; $6cb9: $c0

    rst $38                                       ; $6cba: $ff
    ret nz                                        ; $6cbb: $c0

    rst $38                                       ; $6cbc: $ff
    db $fc                                        ; $6cbd: $fc
    sbc [hl]                                      ; $6cbe: $9e
    rst $38                                       ; $6cbf: $ff
    add sp, $00                                   ; $6cc0: $e8 $00
    jp nc, $c0ff                                  ; $6cc2: $d2 $ff $c0

    rst $38                                       ; $6cc5: $ff
    rst $38                                       ; $6cc6: $ff
    rst $38                                       ; $6cc7: $ff
    ret nz                                        ; $6cc8: $c0

    rst $38                                       ; $6cc9: $ff
    rst $38                                       ; $6cca: $ff
    rst $38                                       ; $6ccb: $ff
    ret nz                                        ; $6ccc: $c0

    rst $38                                       ; $6ccd: $ff
    rst $38                                       ; $6cce: $ff
    rst $38                                       ; $6ccf: $ff
    ret nz                                        ; $6cd0: $c0

    rst $38                                       ; $6cd1: $ff
    nop                                           ; $6cd2: $00
    rst $38                                       ; $6cd3: $ff
    rst $38                                       ; $6cd4: $ff
    ret nz                                        ; $6cd5: $c0

    rst $38                                       ; $6cd6: $ff
    ret nz                                        ; $6cd7: $c0

    rst $38                                       ; $6cd8: $ff
    ret nz                                        ; $6cd9: $c0

    rst $38                                       ; $6cda: $ff
    ret nz                                        ; $6cdb: $c0

    rst $38                                       ; $6cdc: $ff
    ret nz                                        ; $6cdd: $c0

    rst $38                                       ; $6cde: $ff
    ret nz                                        ; $6cdf: $c0

    rst $38                                       ; $6ce0: $ff
    ret nz                                        ; $6ce1: $c0

    rst $38                                       ; $6ce2: $ff
    nop                                           ; $6ce3: $00
    ret nz                                        ; $6ce4: $c0

    rst $38                                       ; $6ce5: $ff
    rst $38                                       ; $6ce6: $ff
    rst $38                                       ; $6ce7: $ff
    rst $38                                       ; $6ce8: $ff
    rst $38                                       ; $6ce9: $ff
    rst $38                                       ; $6cea: $ff
    rst $38                                       ; $6ceb: $ff
    rst $38                                       ; $6cec: $ff
    rst $38                                       ; $6ced: $ff
    rst $38                                       ; $6cee: $ff
    rst $38                                       ; $6cef: $ff
    rst $38                                       ; $6cf0: $ff
    rst $38                                       ; $6cf1: $ff
    rst $38                                       ; $6cf2: $ff
    rst $38                                       ; $6cf3: $ff
    nop                                           ; $6cf4: $00
    rst $38                                       ; $6cf5: $ff
    rst $38                                       ; $6cf6: $ff
    rst $38                                       ; $6cf7: $ff
    rst $38                                       ; $6cf8: $ff
    rst $38                                       ; $6cf9: $ff
    rst $38                                       ; $6cfa: $ff
    rst $38                                       ; $6cfb: $ff
    rst $38                                       ; $6cfc: $ff
    rst $38                                       ; $6cfd: $ff
    rst $38                                       ; $6cfe: $ff
    rst $38                                       ; $6cff: $ff
    rst $38                                       ; $6d00: $ff
    rst $38                                       ; $6d01: $ff
    rst $38                                       ; $6d02: $ff
    rst $38                                       ; $6d03: $ff
    rst $38                                       ; $6d04: $ff
    nop                                           ; $6d05: $00
    rst $38                                       ; $6d06: $ff
    rst $38                                       ; $6d07: $ff
    rst $38                                       ; $6d08: $ff
    rst $38                                       ; $6d09: $ff
    rst $38                                       ; $6d0a: $ff
    rst $38                                       ; $6d0b: $ff
    rst $38                                       ; $6d0c: $ff
    rst $38                                       ; $6d0d: $ff
    rst $38                                       ; $6d0e: $ff
    rst $38                                       ; $6d0f: $ff
    rst $38                                       ; $6d10: $ff
    rst $38                                       ; $6d11: $ff
    rst $38                                       ; $6d12: $ff
    rst $38                                       ; $6d13: $ff
    rst $38                                       ; $6d14: $ff
    rst $38                                       ; $6d15: $ff
    nop                                           ; $6d16: $00
    rst $38                                       ; $6d17: $ff
    rst $38                                       ; $6d18: $ff
    rst $38                                       ; $6d19: $ff
    rst $38                                       ; $6d1a: $ff
    rst $38                                       ; $6d1b: $ff
    rst $38                                       ; $6d1c: $ff
    rst $38                                       ; $6d1d: $ff
    rst $38                                       ; $6d1e: $ff
    rst $38                                       ; $6d1f: $ff
    rst $38                                       ; $6d20: $ff
    rst $38                                       ; $6d21: $ff
    rst $38                                       ; $6d22: $ff
    rst $38                                       ; $6d23: $ff
    rst $38                                       ; $6d24: $ff
    rst $38                                       ; $6d25: $ff
    rst $38                                       ; $6d26: $ff
    nop                                           ; $6d27: $00
    rst $38                                       ; $6d28: $ff
    rst $38                                       ; $6d29: $ff
    rst $38                                       ; $6d2a: $ff
    rst $38                                       ; $6d2b: $ff
    rst $38                                       ; $6d2c: $ff
    rst $38                                       ; $6d2d: $ff
    rst $38                                       ; $6d2e: $ff
    rst $38                                       ; $6d2f: $ff
    rst $38                                       ; $6d30: $ff
    rst $38                                       ; $6d31: $ff
    rst $38                                       ; $6d32: $ff
    rst $38                                       ; $6d33: $ff
    rst $38                                       ; $6d34: $ff
    rst $38                                       ; $6d35: $ff
    rst $38                                       ; $6d36: $ff
    rst $38                                       ; $6d37: $ff
    nop                                           ; $6d38: $00
    rst $38                                       ; $6d39: $ff
    rst $38                                       ; $6d3a: $ff
    rst $38                                       ; $6d3b: $ff
    rst $38                                       ; $6d3c: $ff
    rst $38                                       ; $6d3d: $ff
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
    nop                                           ; $6d49: $00
    rst $38                                       ; $6d4a: $ff
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
    nop                                           ; $6d5a: $00
    rst $38                                       ; $6d5b: $ff
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
    nop                                           ; $6d6b: $00
    rst $38                                       ; $6d6c: $ff
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
    pop hl                                        ; $6d79: $e1
    nop                                           ; $6d7a: $00
    nop                                           ; $6d7b: $00
    nop                                           ; $6d7c: $00
    dec b                                         ; $6d7d: $05
    ld [$f0ff], sp                                ; $6d7e: $08 $ff $f0
    dec bc                                        ; $6d81: $0b
    rst $38                                       ; $6d82: $ff
    rst $38                                       ; $6d83: $ff
    rst $20                                       ; $6d84: $e7
    and $c0                                       ; $6d85: $e6 $c0
    rst $38                                       ; $6d87: $ff
    ret nz                                        ; $6d88: $c0

    rst $38                                       ; $6d89: $ff
    ret nz                                        ; $6d8a: $c0

    rst $38                                       ; $6d8b: $ff
    nop                                           ; $6d8c: $00
    ret nz                                        ; $6d8d: $c0

    rst $38                                       ; $6d8e: $ff
    ret nz                                        ; $6d8f: $c0

    rst $38                                       ; $6d90: $ff
    rst $38                                       ; $6d91: $ff
    rst $38                                       ; $6d92: $ff
    xor h                                         ; $6d93: $ac
    and $fd                                       ; $6d94: $e6 $fd
    ld [c], a                                     ; $6d96: $e2
    rst $38                                       ; $6d97: $ff
    rst $38                                       ; $6d98: $ff
    ret nz                                        ; $6d99: $c0

    rst $38                                       ; $6d9a: $ff
    rst $38                                       ; $6d9b: $ff
    rst $38                                       ; $6d9c: $ff
    ld e, $e9                                     ; $6d9d: $1e $e9
    add sp, $0f                                   ; $6d9f: $e8 $0f
    rrca                                          ; $6da1: $0f
    rrca                                          ; $6da2: $0f
    add hl, bc                                    ; $6da3: $09
    ld hl, sp-$1e                                 ; $6da4: $f8 $e2
    push de                                       ; $6da6: $d5
    rst $38                                       ; $6da7: $ff
    set 5, c                                      ; $6da8: $cb $e9
    ld [c], a                                     ; $6daa: $e2
    ret nz                                        ; $6dab: $c0

    jp hl                                         ; $6dac: $e9


    rrca                                          ; $6dad: $0f
    ei                                            ; $6dae: $fb
    db $e3                                        ; $6daf: $e3
    rst $38                                       ; $6db0: $ff
    rst $38                                       ; $6db1: $ff
    rst $20                                       ; $6db2: $e7
    and $0a                                       ; $6db3: $e6 $0a
    ld a, [bc]                                    ; $6db5: $0a
    rrca                                          ; $6db6: $0f
    inc de                                        ; $6db7: $13
    rrca                                          ; $6db8: $0f
    inc c                                         ; $6db9: $0c
    rst $38                                       ; $6dba: $ff
    db $e3                                        ; $6dbb: $e3
    add b                                         ; $6dbc: $80
    pop hl                                        ; $6dbd: $e1
    add hl, bc                                    ; $6dbe: $09
    ld a, d                                       ; $6dbf: $7a
    pop hl                                        ; $6dc0: $e1
    jp z, $c0ff                                   ; $6dc1: $ca $ff $c0

    rst $30                                       ; $6dc4: $f7
    adc a                                         ; $6dc5: $8f
    add hl, bc                                    ; $6dc6: $09
    ld a, [bc]                                    ; $6dc7: $0a
    ld a, [bc]                                    ; $6dc8: $0a
    ld a, [bc]                                    ; $6dc9: $0a
    jp z, $80ff                                   ; $6dca: $ca $ff $80

    jp hl                                         ; $6dcd: $e9


    rst $08                                       ; $6dce: $cf
    ldh [$0c], a                                  ; $6dcf: $e0 $0c
    rra                                           ; $6dd1: $1f
    ld c, $0e                                     ; $6dd2: $0e $0e
    inc c                                         ; $6dd4: $0c
    inc c                                         ; $6dd5: $0c
    ld c, $80                                     ; $6dd6: $0e $80
    ld [c], a                                     ; $6dd8: $e2
    ldh a, [$e1]                                  ; $6dd9: $f0 $e1
    jp z, Jump_000_06ff                           ; $6ddb: $ca $ff $06

    ret nz                                        ; $6dde: $c0

    db $ec                                        ; $6ddf: $ec
    dec c                                         ; $6de0: $0d
    ld a, [bc]                                    ; $6de1: $0a
    ret nz                                        ; $6de2: $c0

    ldh [rSB], a                                  ; $6de3: $e0 $01
    pop hl                                        ; $6de5: $e1
    or d                                          ; $6de6: $b2
    ld [c], a                                     ; $6de7: $e2
    ret nz                                        ; $6de8: $c0

    rst $38                                       ; $6de9: $ff
    add b                                         ; $6dea: $80
    db $ed                                        ; $6deb: $ed
    ld h, h                                       ; $6dec: $64
    ld a, l                                       ; $6ded: $7d
    pop hl                                        ; $6dee: $e1
    ret nz                                        ; $6def: $c0

    ld [c], a                                     ; $6df0: $e2
    dec c                                         ; $6df1: $0d
    ret nz                                        ; $6df2: $c0

    rst $38                                       ; $6df3: $ff
    ret nz                                        ; $6df4: $c0

    di                                            ; $6df5: $f3
    dec c                                         ; $6df6: $0d
    ld c, $41                                     ; $6df7: $0e $41
    pop hl                                        ; $6df9: $e1
    ld [bc], a                                    ; $6dfa: $02
    ret nz                                        ; $6dfb: $c0

    db $e3                                        ; $6dfc: $e3
    ld a, [hl+]                                   ; $6dfd: $2a
    jp z, Jump_046_40ff                           ; $6dfe: $ca $ff $40

    cp a                                          ; $6e01: $bf
    rst $38                                       ; $6e02: $ff
    rst $38                                       ; $6e03: $ff
    ret nz                                        ; $6e04: $c0

    rst $38                                       ; $6e05: $ff
    rst $38                                       ; $6e06: $ff
    rst $38                                       ; $6e07: $ff
    ret nz                                        ; $6e08: $c0

    rst $38                                       ; $6e09: $ff
    nop                                           ; $6e0a: $00
    ret nz                                        ; $6e0b: $c0

    rst $38                                       ; $6e0c: $ff
    ret nz                                        ; $6e0d: $c0

    rst $38                                       ; $6e0e: $ff
    cp h                                          ; $6e0f: $bc
    rst $38                                       ; $6e10: $ff
    call nz, $c0ff                                ; $6e11: $c4 $ff $c0
    rst $38                                       ; $6e14: $ff
    ret nz                                        ; $6e15: $c0

    rst $38                                       ; $6e16: $ff
    ret nz                                        ; $6e17: $c0

    rst $38                                       ; $6e18: $ff
    ret nz                                        ; $6e19: $c0

    rst $38                                       ; $6e1a: $ff
    nop                                           ; $6e1b: $00
    ret nz                                        ; $6e1c: $c0

    rst $38                                       ; $6e1d: $ff
    rst $38                                       ; $6e1e: $ff
    rst $38                                       ; $6e1f: $ff
    ret nz                                        ; $6e20: $c0

    rst $38                                       ; $6e21: $ff
    rst $38                                       ; $6e22: $ff
    rst $38                                       ; $6e23: $ff
    ret nz                                        ; $6e24: $c0

    rst $38                                       ; $6e25: $ff
    rst $38                                       ; $6e26: $ff
    rst $38                                       ; $6e27: $ff
    ret nz                                        ; $6e28: $c0

    rst $38                                       ; $6e29: $ff
    rst $38                                       ; $6e2a: $ff
    rst $38                                       ; $6e2b: $ff
    nop                                           ; $6e2c: $00
    ret nz                                        ; $6e2d: $c0

    rst $38                                       ; $6e2e: $ff
    rst $38                                       ; $6e2f: $ff
    rst $38                                       ; $6e30: $ff
    ret nz                                        ; $6e31: $c0

    rst $38                                       ; $6e32: $ff
    ret nz                                        ; $6e33: $c0

    rst $38                                       ; $6e34: $ff
    ret nz                                        ; $6e35: $c0

    rst $38                                       ; $6e36: $ff
    rst $38                                       ; $6e37: $ff
    rst $38                                       ; $6e38: $ff
    rst $38                                       ; $6e39: $ff
    rst $38                                       ; $6e3a: $ff
    rst $38                                       ; $6e3b: $ff
    rst $38                                       ; $6e3c: $ff
    nop                                           ; $6e3d: $00
    rst $38                                       ; $6e3e: $ff
    rst $38                                       ; $6e3f: $ff
    rst $38                                       ; $6e40: $ff
    rst $38                                       ; $6e41: $ff
    rst $38                                       ; $6e42: $ff
    rst $38                                       ; $6e43: $ff
    rst $38                                       ; $6e44: $ff
    rst $38                                       ; $6e45: $ff
    rst $38                                       ; $6e46: $ff
    rst $38                                       ; $6e47: $ff
    rst $38                                       ; $6e48: $ff
    rst $38                                       ; $6e49: $ff
    rst $38                                       ; $6e4a: $ff
    rst $38                                       ; $6e4b: $ff
    rst $38                                       ; $6e4c: $ff
    rst $38                                       ; $6e4d: $ff
    nop                                           ; $6e4e: $00
    rst $38                                       ; $6e4f: $ff
    rst $38                                       ; $6e50: $ff
    rst $38                                       ; $6e51: $ff
    rst $38                                       ; $6e52: $ff
    rst $38                                       ; $6e53: $ff
    rst $38                                       ; $6e54: $ff
    rst $38                                       ; $6e55: $ff
    rst $38                                       ; $6e56: $ff
    rst $38                                       ; $6e57: $ff
    rst $38                                       ; $6e58: $ff
    rst $38                                       ; $6e59: $ff
    rst $38                                       ; $6e5a: $ff
    rst $38                                       ; $6e5b: $ff
    rst $38                                       ; $6e5c: $ff
    rst $38                                       ; $6e5d: $ff
    rst $38                                       ; $6e5e: $ff
    nop                                           ; $6e5f: $00
    rst $38                                       ; $6e60: $ff
    rst $38                                       ; $6e61: $ff
    rst $38                                       ; $6e62: $ff
    rst $38                                       ; $6e63: $ff
    rst $38                                       ; $6e64: $ff
    rst $38                                       ; $6e65: $ff
    rst $38                                       ; $6e66: $ff
    rst $38                                       ; $6e67: $ff
    rst $38                                       ; $6e68: $ff
    rst $38                                       ; $6e69: $ff
    rst $38                                       ; $6e6a: $ff
    rst $38                                       ; $6e6b: $ff
    rst $38                                       ; $6e6c: $ff
    rst $38                                       ; $6e6d: $ff
    rst $38                                       ; $6e6e: $ff
    rst $38                                       ; $6e6f: $ff
    nop                                           ; $6e70: $00
    rst $38                                       ; $6e71: $ff
    rst $38                                       ; $6e72: $ff
    rst $38                                       ; $6e73: $ff
    rst $38                                       ; $6e74: $ff
    rst $38                                       ; $6e75: $ff
    rst $38                                       ; $6e76: $ff
    rst $38                                       ; $6e77: $ff
    rst $38                                       ; $6e78: $ff
    rst $38                                       ; $6e79: $ff
    rst $38                                       ; $6e7a: $ff
    rst $38                                       ; $6e7b: $ff
    rst $38                                       ; $6e7c: $ff
    rst $38                                       ; $6e7d: $ff
    rst $38                                       ; $6e7e: $ff
    rst $38                                       ; $6e7f: $ff
    rst $38                                       ; $6e80: $ff
    nop                                           ; $6e81: $00
    rst $38                                       ; $6e82: $ff
    rst $38                                       ; $6e83: $ff
    rst $38                                       ; $6e84: $ff
    rst $38                                       ; $6e85: $ff
    rst $38                                       ; $6e86: $ff
    rst $38                                       ; $6e87: $ff
    rst $38                                       ; $6e88: $ff
    rst $38                                       ; $6e89: $ff
    rst $38                                       ; $6e8a: $ff
    rst $38                                       ; $6e8b: $ff
    rst $38                                       ; $6e8c: $ff
    rst $38                                       ; $6e8d: $ff
    rst $38                                       ; $6e8e: $ff
    rst $38                                       ; $6e8f: $ff
    rst $38                                       ; $6e90: $ff
    rst $38                                       ; $6e91: $ff
    nop                                           ; $6e92: $00
    rst $38                                       ; $6e93: $ff
    rst $38                                       ; $6e94: $ff
    rst $38                                       ; $6e95: $ff
    rst $38                                       ; $6e96: $ff
    rst $38                                       ; $6e97: $ff
    rst $38                                       ; $6e98: $ff
    rst $38                                       ; $6e99: $ff
    rst $38                                       ; $6e9a: $ff
    rst $38                                       ; $6e9b: $ff
    rst $38                                       ; $6e9c: $ff
    rst $38                                       ; $6e9d: $ff
    rst $38                                       ; $6e9e: $ff
    rst $38                                       ; $6e9f: $ff
    rst $38                                       ; $6ea0: $ff
    rst $38                                       ; $6ea1: $ff
    rst $38                                       ; $6ea2: $ff
    nop                                           ; $6ea3: $00
    rst $38                                       ; $6ea4: $ff
    rst $38                                       ; $6ea5: $ff
    rst $38                                       ; $6ea6: $ff
    rst $38                                       ; $6ea7: $ff
    rst $38                                       ; $6ea8: $ff
    rst $38                                       ; $6ea9: $ff
    rst $38                                       ; $6eaa: $ff
    rst $38                                       ; $6eab: $ff
    rst $38                                       ; $6eac: $ff
    rst $38                                       ; $6ead: $ff
    rst $38                                       ; $6eae: $ff
    rst $38                                       ; $6eaf: $ff
    rst $38                                       ; $6eb0: $ff
    rst $38                                       ; $6eb1: $ff
    rst $38                                       ; $6eb2: $ff
    rst $38                                       ; $6eb3: $ff
    nop                                           ; $6eb4: $00
    rst $38                                       ; $6eb5: $ff
    rst $38                                       ; $6eb6: $ff
    rst $38                                       ; $6eb7: $ff
    rst $38                                       ; $6eb8: $ff
    rst $38                                       ; $6eb9: $ff
    rst $38                                       ; $6eba: $ff
    rst $38                                       ; $6ebb: $ff
    rst $38                                       ; $6ebc: $ff
    rst $38                                       ; $6ebd: $ff
    rst $38                                       ; $6ebe: $ff
    rst $38                                       ; $6ebf: $ff
    rst $38                                       ; $6ec0: $ff
    rst $38                                       ; $6ec1: $ff
    rst $38                                       ; $6ec2: $ff
    rst $38                                       ; $6ec3: $ff
    rst $38                                       ; $6ec4: $ff
    nop                                           ; $6ec5: $00
    rst $38                                       ; $6ec6: $ff
    rst $38                                       ; $6ec7: $ff
    rst $38                                       ; $6ec8: $ff
    db $eb                                        ; $6ec9: $eb
    nop                                           ; $6eca: $00
    nop                                           ; $6ecb: $00
    nop                                           ; $6ecc: $00
    rst $38                                       ; $6ecd: $ff
    ld e, a                                       ; $6ece: $5f
    rst $38                                       ; $6ecf: $ff
    ld a, a                                       ; $6ed0: $7f
    adc $39                                       ; $6ed1: $ce $39
    nop                                           ; $6ed3: $00
    nop                                           ; $6ed4: $00
    adc e                                         ; $6ed5: $8b
    ld hl, $218b                                  ; $6ed6: $21 $8b $21
    adc e                                         ; $6ed9: $8b
    ld hl, $218b                                  ; $6eda: $21 $8b $21
    ldh [$03], a                                  ; $6edd: $e0 $03
    ld d, $33                                     ; $6edf: $16 $33
    ld c, h                                       ; $6ee1: $4c
    ld e, $a0                                     ; $6ee2: $1e $a0
    ld bc, $3296                                  ; $6ee4: $01 $96 $32
    jp nc, $ec21                                  ; $6ee7: $d2 $21 $ec

    db $10                                        ; $6eea: $10
    ld b, h                                       ; $6eeb: $44
    ld [$67df], sp                                ; $6eec: $08 $df $67
    or h                                          ; $6eef: $b4
    ld hl, $7dc0                                  ; $6ef0: $21 $c0 $7d
    ldh [$03], a                                  ; $6ef3: $e0 $03
    db $f4                                        ; $6ef5: $f4
    rra                                           ; $6ef6: $1f
    or h                                          ; $6ef7: $b4
    ld hl, $02c3                                  ; $6ef8: $21 $c3 $02
    add b                                         ; $6efb: $80
    ld bc, $1ff4                                  ; $6efc: $01 $f4 $1f
    jr nz, jr_046_6f58                            ; $6eff: $20 $57

    jp $8002                                      ; $6f01: $c3 $02 $80


    ld bc, $1ff4                                  ; $6f04: $01 $f4 $1f
    jp $c002                                      ; $6f07: $c3 $02 $c0


    ld a, l                                       ; $6f0a: $7d
    and b                                         ; $6f0b: $a0
    ld bc, $0001                                  ; $6f0c: $01 $01 $00
    rst $38                                       ; $6f0f: $ff
    db $ec                                        ; $6f10: $ec
    nop                                           ; $6f11: $00
    nop                                           ; $6f12: $00
    nop                                           ; $6f13: $00
    ld bc, $ff00                                  ; $6f14: $01 $00 $ff
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

jr_046_6f58:
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
    rst $38                                       ; $6fbc: $ff
    nop                                           ; $6fbd: $00
    rst $38                                       ; $6fbe: $ff
    rst $38                                       ; $6fbf: $ff
    rst $38                                       ; $6fc0: $ff
    rst $38                                       ; $6fc1: $ff
    rst $38                                       ; $6fc2: $ff
    rst $38                                       ; $6fc3: $ff
    rst $38                                       ; $6fc4: $ff
    rst $38                                       ; $6fc5: $ff
    rst $38                                       ; $6fc6: $ff
    rst $38                                       ; $6fc7: $ff
    rst $38                                       ; $6fc8: $ff
    rst $38                                       ; $6fc9: $ff
    rst $38                                       ; $6fca: $ff
    rst $38                                       ; $6fcb: $ff
    rst $38                                       ; $6fcc: $ff
    rst $38                                       ; $6fcd: $ff
    nop                                           ; $6fce: $00
    rst $38                                       ; $6fcf: $ff
    rst $38                                       ; $6fd0: $ff
    rst $38                                       ; $6fd1: $ff
    rst $38                                       ; $6fd2: $ff
    rst $38                                       ; $6fd3: $ff
    rst $38                                       ; $6fd4: $ff
    rst $38                                       ; $6fd5: $ff
    rst $38                                       ; $6fd6: $ff
    rst $38                                       ; $6fd7: $ff
    rst $38                                       ; $6fd8: $ff
    rst $38                                       ; $6fd9: $ff
    rst $38                                       ; $6fda: $ff
    rst $38                                       ; $6fdb: $ff
    rst $38                                       ; $6fdc: $ff
    rst $38                                       ; $6fdd: $ff
    rst $38                                       ; $6fde: $ff
    nop                                           ; $6fdf: $00
    rst $38                                       ; $6fe0: $ff
    rst $38                                       ; $6fe1: $ff
    rst $38                                       ; $6fe2: $ff
    rst $38                                       ; $6fe3: $ff
    rst $38                                       ; $6fe4: $ff
    rst $38                                       ; $6fe5: $ff
    rst $38                                       ; $6fe6: $ff
    rst $38                                       ; $6fe7: $ff
    rst $38                                       ; $6fe8: $ff
    rst $38                                       ; $6fe9: $ff
    rst $38                                       ; $6fea: $ff
    rst $38                                       ; $6feb: $ff
    rst $38                                       ; $6fec: $ff
    rst $38                                       ; $6fed: $ff
    rst $38                                       ; $6fee: $ff
    rst $38                                       ; $6fef: $ff
    nop                                           ; $6ff0: $00
    rst $38                                       ; $6ff1: $ff
    rst $38                                       ; $6ff2: $ff
    rst $38                                       ; $6ff3: $ff
    rst $38                                       ; $6ff4: $ff
    rst $38                                       ; $6ff5: $ff
    rst $38                                       ; $6ff6: $ff
    rst $38                                       ; $6ff7: $ff
    rst $38                                       ; $6ff8: $ff
    rst $38                                       ; $6ff9: $ff
    rst $38                                       ; $6ffa: $ff
    rst $38                                       ; $6ffb: $ff
    rst $38                                       ; $6ffc: $ff
    rst $38                                       ; $6ffd: $ff
    rst $38                                       ; $6ffe: $ff
    rst $38                                       ; $6fff: $ff
    rst $38                                       ; $7000: $ff
    nop                                           ; $7001: $00
    rst $38                                       ; $7002: $ff
    rst $38                                       ; $7003: $ff
    rst $38                                       ; $7004: $ff
    rst $38                                       ; $7005: $ff
    rst $38                                       ; $7006: $ff
    rst $38                                       ; $7007: $ff
    rst $38                                       ; $7008: $ff
    rst $38                                       ; $7009: $ff
    rst $38                                       ; $700a: $ff
    rst $38                                       ; $700b: $ff
    rst $38                                       ; $700c: $ff
    rst $38                                       ; $700d: $ff
    rst $38                                       ; $700e: $ff
    rst $38                                       ; $700f: $ff
    rst $38                                       ; $7010: $ff
    rst $38                                       ; $7011: $ff
    nop                                           ; $7012: $00
    rst $38                                       ; $7013: $ff
    rst $38                                       ; $7014: $ff
    rst $38                                       ; $7015: $ff
    db $ec                                        ; $7016: $ec
    nop                                           ; $7017: $00
    nop                                           ; $7018: $00
    nop                                           ; $7019: $00
    ld bc, $ff0a                                  ; $701a: $01 $0a $ff
    rst $38                                       ; $701d: $ff
    rst $38                                       ; $701e: $ff
    rst $38                                       ; $701f: $ff
    rst $38                                       ; $7020: $ff
    rst $38                                       ; $7021: $ff
    rst $38                                       ; $7022: $ff
    rst $38                                       ; $7023: $ff
    rst $38                                       ; $7024: $ff
    rst $38                                       ; $7025: $ff
    rst $38                                       ; $7026: $ff
    rst $38                                       ; $7027: $ff
    rst $38                                       ; $7028: $ff
    rst $38                                       ; $7029: $ff
    nop                                           ; $702a: $00
    rst $38                                       ; $702b: $ff
    rst $38                                       ; $702c: $ff
    rst $38                                       ; $702d: $ff
    rst $38                                       ; $702e: $ff
    rst $38                                       ; $702f: $ff
    rst $38                                       ; $7030: $ff
    rst $38                                       ; $7031: $ff
    rst $38                                       ; $7032: $ff
    rst $38                                       ; $7033: $ff
    rst $38                                       ; $7034: $ff
    rst $38                                       ; $7035: $ff
    rst $38                                       ; $7036: $ff
    rst $38                                       ; $7037: $ff
    rst $38                                       ; $7038: $ff
    rst $38                                       ; $7039: $ff
    rst $38                                       ; $703a: $ff
    nop                                           ; $703b: $00
    rst $38                                       ; $703c: $ff
    rst $38                                       ; $703d: $ff
    rst $38                                       ; $703e: $ff
    rst $38                                       ; $703f: $ff
    rst $38                                       ; $7040: $ff
    rst $38                                       ; $7041: $ff
    rst $38                                       ; $7042: $ff
    rst $38                                       ; $7043: $ff
    rst $38                                       ; $7044: $ff
    rst $38                                       ; $7045: $ff
    rst $38                                       ; $7046: $ff
    rst $38                                       ; $7047: $ff
    rst $38                                       ; $7048: $ff
    rst $38                                       ; $7049: $ff
    rst $38                                       ; $704a: $ff
    rst $38                                       ; $704b: $ff
    nop                                           ; $704c: $00
    rst $38                                       ; $704d: $ff
    rst $38                                       ; $704e: $ff
    rst $38                                       ; $704f: $ff
    rst $38                                       ; $7050: $ff
    rst $38                                       ; $7051: $ff
    rst $38                                       ; $7052: $ff
    rst $38                                       ; $7053: $ff
    rst $38                                       ; $7054: $ff
    rst $38                                       ; $7055: $ff
    rst $38                                       ; $7056: $ff
    rst $38                                       ; $7057: $ff
    rst $38                                       ; $7058: $ff
    rst $38                                       ; $7059: $ff
    rst $38                                       ; $705a: $ff
    rst $38                                       ; $705b: $ff
    rst $38                                       ; $705c: $ff
    nop                                           ; $705d: $00
    rst $38                                       ; $705e: $ff
    rst $38                                       ; $705f: $ff
    rst $38                                       ; $7060: $ff
    rst $38                                       ; $7061: $ff
    rst $38                                       ; $7062: $ff
    rst $38                                       ; $7063: $ff
    rst $38                                       ; $7064: $ff
    rst $38                                       ; $7065: $ff
    rst $38                                       ; $7066: $ff
    rst $38                                       ; $7067: $ff
    rst $38                                       ; $7068: $ff
    rst $38                                       ; $7069: $ff
    rst $38                                       ; $706a: $ff
    rst $38                                       ; $706b: $ff
    rst $38                                       ; $706c: $ff
    rst $38                                       ; $706d: $ff
    nop                                           ; $706e: $00
    rst $38                                       ; $706f: $ff
    rst $38                                       ; $7070: $ff
    rst $38                                       ; $7071: $ff
    rst $38                                       ; $7072: $ff
    rst $38                                       ; $7073: $ff
    rst $38                                       ; $7074: $ff
    rst $38                                       ; $7075: $ff
    rst $38                                       ; $7076: $ff
    rst $38                                       ; $7077: $ff
    rst $38                                       ; $7078: $ff
    rst $38                                       ; $7079: $ff
    rst $38                                       ; $707a: $ff
    rst $38                                       ; $707b: $ff
    rst $38                                       ; $707c: $ff
    rst $38                                       ; $707d: $ff
    rst $38                                       ; $707e: $ff
    nop                                           ; $707f: $00
    rst $38                                       ; $7080: $ff
    rst $38                                       ; $7081: $ff
    rst $38                                       ; $7082: $ff
    rst $38                                       ; $7083: $ff
    rst $38                                       ; $7084: $ff
    rst $38                                       ; $7085: $ff
    rst $38                                       ; $7086: $ff
    rst $38                                       ; $7087: $ff
    rst $38                                       ; $7088: $ff
    rst $38                                       ; $7089: $ff
    rst $38                                       ; $708a: $ff
    rst $38                                       ; $708b: $ff
    rst $38                                       ; $708c: $ff
    rst $38                                       ; $708d: $ff
    rst $38                                       ; $708e: $ff
    rst $38                                       ; $708f: $ff
    nop                                           ; $7090: $00
    rst $38                                       ; $7091: $ff
    rst $38                                       ; $7092: $ff
    rst $38                                       ; $7093: $ff
    rst $38                                       ; $7094: $ff
    rst $38                                       ; $7095: $ff
    rst $38                                       ; $7096: $ff
    rst $38                                       ; $7097: $ff
    rst $38                                       ; $7098: $ff
    rst $38                                       ; $7099: $ff
    rst $38                                       ; $709a: $ff
    rst $38                                       ; $709b: $ff
    rst $38                                       ; $709c: $ff
    rst $38                                       ; $709d: $ff
    rst $38                                       ; $709e: $ff
    rst $38                                       ; $709f: $ff
    rst $38                                       ; $70a0: $ff
    nop                                           ; $70a1: $00
    rst $38                                       ; $70a2: $ff
    rst $38                                       ; $70a3: $ff
    rst $38                                       ; $70a4: $ff
    rst $38                                       ; $70a5: $ff
    rst $38                                       ; $70a6: $ff
    rst $38                                       ; $70a7: $ff
    rst $38                                       ; $70a8: $ff
    rst $38                                       ; $70a9: $ff
    rst $38                                       ; $70aa: $ff
    rst $38                                       ; $70ab: $ff
    rst $38                                       ; $70ac: $ff
    rst $38                                       ; $70ad: $ff
    rst $38                                       ; $70ae: $ff
    rst $38                                       ; $70af: $ff
    rst $38                                       ; $70b0: $ff
    rst $38                                       ; $70b1: $ff
    nop                                           ; $70b2: $00
    rst $38                                       ; $70b3: $ff
    rst $38                                       ; $70b4: $ff
    rst $38                                       ; $70b5: $ff
    rst $38                                       ; $70b6: $ff
    rst $38                                       ; $70b7: $ff
    rst $38                                       ; $70b8: $ff
    rst $38                                       ; $70b9: $ff
    rst $38                                       ; $70ba: $ff
    rst $38                                       ; $70bb: $ff
    rst $38                                       ; $70bc: $ff
    rst $38                                       ; $70bd: $ff
    rst $38                                       ; $70be: $ff
    rst $38                                       ; $70bf: $ff
    rst $38                                       ; $70c0: $ff
    rst $38                                       ; $70c1: $ff
    rst $38                                       ; $70c2: $ff
    nop                                           ; $70c3: $00
    rst $38                                       ; $70c4: $ff
    rst $38                                       ; $70c5: $ff
    rst $38                                       ; $70c6: $ff
    rst $38                                       ; $70c7: $ff
    rst $38                                       ; $70c8: $ff
    rst $38                                       ; $70c9: $ff
    rst $38                                       ; $70ca: $ff
    rst $38                                       ; $70cb: $ff
    rst $38                                       ; $70cc: $ff
    rst $38                                       ; $70cd: $ff
    rst $38                                       ; $70ce: $ff
    rst $38                                       ; $70cf: $ff
    rst $38                                       ; $70d0: $ff
    rst $38                                       ; $70d1: $ff
    rst $38                                       ; $70d2: $ff
    rst $38                                       ; $70d3: $ff
    nop                                           ; $70d4: $00
    rst $38                                       ; $70d5: $ff
    rst $38                                       ; $70d6: $ff
    rst $38                                       ; $70d7: $ff
    rst $38                                       ; $70d8: $ff
    rst $38                                       ; $70d9: $ff
    rst $38                                       ; $70da: $ff
    rst $38                                       ; $70db: $ff
    rst $38                                       ; $70dc: $ff
    rst $38                                       ; $70dd: $ff
    rst $38                                       ; $70de: $ff
    rst $38                                       ; $70df: $ff
    rst $38                                       ; $70e0: $ff
    rst $38                                       ; $70e1: $ff
    rst $38                                       ; $70e2: $ff
    rst $38                                       ; $70e3: $ff
    rst $38                                       ; $70e4: $ff
    nop                                           ; $70e5: $00
    rst $38                                       ; $70e6: $ff
    rst $38                                       ; $70e7: $ff
    rst $38                                       ; $70e8: $ff
    rst $38                                       ; $70e9: $ff
    rst $38                                       ; $70ea: $ff
    rst $38                                       ; $70eb: $ff
    rst $38                                       ; $70ec: $ff
    rst $38                                       ; $70ed: $ff
    rst $38                                       ; $70ee: $ff
    rst $38                                       ; $70ef: $ff
    rst $38                                       ; $70f0: $ff
    rst $38                                       ; $70f1: $ff
    rst $38                                       ; $70f2: $ff
    rst $38                                       ; $70f3: $ff
    rst $38                                       ; $70f4: $ff
    rst $38                                       ; $70f5: $ff
    nop                                           ; $70f6: $00
    rst $38                                       ; $70f7: $ff
    rst $38                                       ; $70f8: $ff
    rst $38                                       ; $70f9: $ff
    rst $38                                       ; $70fa: $ff
    rst $38                                       ; $70fb: $ff
    rst $38                                       ; $70fc: $ff
    rst $38                                       ; $70fd: $ff
    rst $38                                       ; $70fe: $ff
    rst $38                                       ; $70ff: $ff
    rst $38                                       ; $7100: $ff
    rst $38                                       ; $7101: $ff
    rst $38                                       ; $7102: $ff
    rst $38                                       ; $7103: $ff
    rst $38                                       ; $7104: $ff
    rst $38                                       ; $7105: $ff
    rst $38                                       ; $7106: $ff
    nop                                           ; $7107: $00
    rst $38                                       ; $7108: $ff
    rst $38                                       ; $7109: $ff
    rst $38                                       ; $710a: $ff
    rst $38                                       ; $710b: $ff
    rst $38                                       ; $710c: $ff
    rst $38                                       ; $710d: $ff
    rst $38                                       ; $710e: $ff
    rst $38                                       ; $710f: $ff
    rst $38                                       ; $7110: $ff
    rst $38                                       ; $7111: $ff
    rst $38                                       ; $7112: $ff
    rst $38                                       ; $7113: $ff
    rst $38                                       ; $7114: $ff
    rst $38                                       ; $7115: $ff
    rst $38                                       ; $7116: $ff
    rst $38                                       ; $7117: $ff
    nop                                           ; $7118: $00
    rst $38                                       ; $7119: $ff
    rst $38                                       ; $711a: $ff
    rst $38                                       ; $711b: $ff
    db $ec                                        ; $711c: $ec
    nop                                           ; $711d: $00
    nop                                           ; $711e: $00
    nop                                           ; $711f: $00
    rst $38                                       ; $7120: $ff
    rst $38                                       ; $7121: $ff
    rst $38                                       ; $7122: $ff
    rst $38                                       ; $7123: $ff
    rst $38                                       ; $7124: $ff
    rst $38                                       ; $7125: $ff
    rst $38                                       ; $7126: $ff
    rst $38                                       ; $7127: $ff
    rst $38                                       ; $7128: $ff
    rst $38                                       ; $7129: $ff
    rst $38                                       ; $712a: $ff
    rst $38                                       ; $712b: $ff
    rst $38                                       ; $712c: $ff
    rst $38                                       ; $712d: $ff
    rst $38                                       ; $712e: $ff
    rst $38                                       ; $712f: $ff
    rst $38                                       ; $7130: $ff
    rst $38                                       ; $7131: $ff
    rst $38                                       ; $7132: $ff
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
    rst $38                                       ; $7143: $ff
    rst $38                                       ; $7144: $ff
    rst $38                                       ; $7145: $ff
    rst $38                                       ; $7146: $ff
    rst $38                                       ; $7147: $ff
    rst $38                                       ; $7148: $ff
    rst $38                                       ; $7149: $ff
    rst $38                                       ; $714a: $ff
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

Jump_046_757f:
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

Call_046_781e:
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

Call_046_7881:
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

Call_046_7c7c:
    rst $38                                       ; $7c7c: $ff
    rst $38                                       ; $7c7d: $ff
    rst $38                                       ; $7c7e: $ff
    rst $38                                       ; $7c7f: $ff
    rst $38                                       ; $7c80: $ff
    rst $38                                       ; $7c81: $ff
    rst $38                                       ; $7c82: $ff

Call_046_7c83:
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

Jump_046_7cb7:
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

Jump_046_7ce1:
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

Jump_046_7ee2:
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

Jump_046_7fc2:
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

Jump_046_7fef:
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
