; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $028", ROMX[$4000], BANK[$28]

    db $0b, $7d

    or d                                          ; $4002: $b2
    ld a, l                                       ; $4003: $7d
    ld l, b                                       ; $4004: $68
    ld b, b                                       ; $4005: $40
    ld [hl], b                                    ; $4006: $70
    ld b, b                                       ; $4007: $40
    cpl                                           ; $4008: $2f
    ld b, l                                       ; $4009: $45
    adc l                                         ; $400a: $8d
    ld b, a                                       ; $400b: $47
    inc h                                         ; $400c: $24
    ld c, c                                       ; $400d: $49
    sbc e                                         ; $400e: $9b
    ld c, c                                       ; $400f: $49
    ld [de], a                                    ; $4010: $12
    ld c, d                                       ; $4011: $4a
    inc de                                        ; $4012: $13
    ld c, d                                       ; $4013: $4a
    or b                                          ; $4014: $b0
    ld b, b                                       ; $4015: $40

    db $99, $4a, $a1, $4a, $b0, $4f, $d1, $51, $6c, $53, $d2, $53

    ld c, h                                       ; $4022: $4c
    ld d, h                                       ; $4023: $54

    db $6f, $54, $e1, $4a, $a9, $55, $b1, $55, $fb, $5b, $90, $5f, $ff, $61, $94, $62

    or $62                                        ; $4034: $f6 $62

    db $f7, $62, $f1, $55

    ld a, l                                       ; $403a: $7d
    ld h, e                                       ; $403b: $63
    add l                                         ; $403c: $85
    ld h, e                                       ; $403d: $63
    pop hl                                        ; $403e: $e1
    ld h, l                                       ; $403f: $65
    rst $10                                       ; $4040: $d7
    ld h, a                                       ; $4041: $67
    ld e, e                                       ; $4042: $5b
    ld l, c                                       ; $4043: $69
    xor l                                         ; $4044: $ad
    ld l, c                                       ; $4045: $69
    rra                                           ; $4046: $1f
    ld l, d                                       ; $4047: $6a
    jr nz, jr_028_40b4                            ; $4048: $20 $6a

    push bc                                       ; $404a: $c5
    ld h, e                                       ; $404b: $63

    db $a6, $6a, $ae, $6a, $ce, $76, $50, $7a, $d0, $7b, $24, $7c

    add h                                         ; $4058: $84
    ld a, h                                       ; $4059: $7c

    db $85, $7c, $ee, $6a

    ld [de], a                                    ; $405e: $12
    ld c, d                                       ; $405f: $4a

    db $4c, $54, $f6, $62

    rra                                           ; $4064: $1f
    ld l, d                                       ; $4065: $6a

    db $84, $7c

    nop                                           ; $4068: $00
    nop                                           ; $4069: $00
    nop                                           ; $406a: $00
    nop                                           ; $406b: $00
    ld h, $20                                     ; $406c: $26 $20
    nop                                           ; $406e: $00
    nop                                           ; $406f: $00
    xor b                                         ; $4070: $a8
    stop                                          ; $4071: $10 $00
    nop                                           ; $4073: $00
    xor l                                         ; $4074: $ad
    dec [hl]                                      ; $4075: $35
    sub h                                         ; $4076: $94
    ld c, [hl]                                    ; $4077: $4e
    ld [$0825], sp                                ; $4078: $08 $25 $08
    dec h                                         ; $407b: $25
    ld [$0825], sp                                ; $407c: $08 $25 $08
    dec h                                         ; $407f: $25
    ld e, a                                       ; $4080: $5f
    ld e, d                                       ; $4081: $5a
    ld e, e                                       ; $4082: $5b
    ld b, c                                       ; $4083: $41
    or l                                          ; $4084: $b5
    inc l                                         ; $4085: $2c
    rst $38                                       ; $4086: $ff
    ld a, a                                       ; $4087: $7f
    sub d                                         ; $4088: $92
    ld e, d                                       ; $4089: $5a
    ld e, a                                       ; $408a: $5f
    ld [bc], a                                    ; $408b: $02
    rst $38                                       ; $408c: $ff
    ld a, a                                       ; $408d: $7f
    ld d, a                                       ; $408e: $57
    inc e                                         ; $408f: $1c
    rst $38                                       ; $4090: $ff
    ld a, a                                       ; $4091: $7f
    sbc c                                         ; $4092: $99
    ld [hl-], a                                   ; $4093: $32
    or c                                          ; $4094: $b1
    dec e                                         ; $4095: $1d
    ret                                           ; $4096: $c9


    inc c                                         ; $4097: $0c
    rst $38                                       ; $4098: $ff
    ld a, a                                       ; $4099: $7f
    ld a, [hl-]                                   ; $409a: $3a
    ld c, [hl]                                    ; $409b: $4e
    ld d, d                                       ; $409c: $52
    ld sp, $7fe0                                  ; $409d: $31 $e0 $7f
    ld a, [c]                                     ; $40a0: $f2
    inc bc                                        ; $40a1: $03

jr_028_40a2:
    add b                                         ; $40a2: $80
    ld [bc], a                                    ; $40a3: $02
    sbc a                                         ; $40a4: $9f
    nop                                           ; $40a5: $00
    ld [hl-], a                                   ; $40a6: $32
    nop                                           ; $40a7: $00
    ld [$0825], sp                                ; $40a8: $08 $25 $08

Call_028_40ab:
    dec h                                         ; $40ab: $25
    ld [$0825], sp                                ; $40ac: $08 $25 $08
    dec h                                         ; $40af: $25
    db $fd                                        ; $40b0: $fd
    nop                                           ; $40b1: $00
    rst $38                                       ; $40b2: $ff
    db $ec                                        ; $40b3: $ec

jr_028_40b4:
    add c                                         ; $40b4: $81
    add b                                         ; $40b5: $80
    dec bc                                        ; $40b6: $0b
    nop                                           ; $40b7: $00
    dec d                                         ; $40b8: $15
    nop                                           ; $40b9: $00
    rst $18                                       ; $40ba: $df
    cpl                                           ; $40bb: $2f
    nop                                           ; $40bc: $00
    ld d, l                                       ; $40bd: $55
    nop                                           ; $40be: $00
    ccf                                           ; $40bf: $3f
    db $fc                                        ; $40c0: $fc
    ldh [$fe], a                                  ; $40c1: $e0 $fe
    ld bc, $7eff                                  ; $40c3: $01 $ff $7e
    ld bc, $0bf4                                  ; $40c6: $01 $f4 $0b
    ld [$d015], a                                 ; $40c9: $ea $15 $d0
    cpl                                           ; $40cc: $2f
    rst $38                                       ; $40cd: $ff
    xor d                                         ; $40ce: $aa
    ld d, l                                       ; $40cf: $55
    ret nz                                        ; $40d0: $c0

    ccf                                           ; $40d1: $3f
    xor d                                         ; $40d2: $aa
    ld d, l                                       ; $40d3: $55
    nop                                           ; $40d4: $00
    rst $38                                       ; $40d5: $ff
    rst $38                                       ; $40d6: $ff
    cp $01                                        ; $40d7: $fe $01
    ld [hl], h                                    ; $40d9: $74
    dec bc                                        ; $40da: $0b
    ld a, [hl+]                                   ; $40db: $2a
    dec d                                         ; $40dc: $15
    jr nc, jr_028_40ee                            ; $40dd: $30 $0f

    rst $38                                       ; $40df: $ff
    ld e, d                                       ; $40e0: $5a
    dec b                                         ; $40e1: $05
    inc a                                         ; $40e2: $3c
    inc bc                                        ; $40e3: $03
    ld d, [hl]                                    ; $40e4: $56
    ld bc, $01fe                                  ; $40e5: $01 $fe $01
    rst $38                                       ; $40e8: $ff
    add c                                         ; $40e9: $81
    nop                                           ; $40ea: $00
    rlc b                                         ; $40eb: $cb $00
    push af                                       ; $40ed: $f5

jr_028_40ee:
    nop                                           ; $40ee: $00
    rst $18                                       ; $40ef: $df
    jr nz, @+$01                                  ; $40f0: $20 $ff

    xor l                                         ; $40f2: $ad
    ld d, b                                       ; $40f3: $50
    rst $00                                       ; $40f4: $c7
    jr c, jr_028_40a2                             ; $40f5: $38 $ab

    ld d, h                                       ; $40f7: $54
    nop                                           ; $40f8: $00
    rst $38                                       ; $40f9: $ff
    xor $b0                                       ; $40fa: $ee $b0
    db $e3                                        ; $40fc: $e3
    ld d, l                                       ; $40fd: $55
    nop                                           ; $40fe: $00

Call_028_40ff:
    xor d                                         ; $40ff: $aa
    push af                                       ; $4100: $f5
    ldh [rIE], a                                  ; $4101: $e0 $ff
    nop                                           ; $4103: $00
    ld d, l                                       ; $4104: $55
    ld a, e                                       ; $4105: $7b
    xor d                                         ; $4106: $aa
    nop                                           ; $4107: $00
    ld hl, sp-$1e                                 ; $4108: $f8 $e2
    nop                                           ; $410a: $00
    rst $38                                       ; $410b: $ff
    ld d, l                                       ; $410c: $55
    xor d                                         ; $410d: $aa
    ld a, [c]                                     ; $410e: $f2
    ldh [$e8], a                                  ; $410f: $e0 $e8
    ld [$e9e0], a                                 ; $4111: $ea $e0 $e9
    pop hl                                        ; $4114: $e1
    ld [$ffe0], a                                 ; $4115: $ea $e0 $ff
    or h                                          ; $4118: $b4
    pop hl                                        ; $4119: $e1
    ld d, l                                       ; $411a: $55
    xor d                                         ; $411b: $aa
    xor d                                         ; $411c: $aa
    adc b                                         ; $411d: $88
    push af                                       ; $411e: $f5
    pop hl                                        ; $411f: $e1
    add sp, -$1d                                  ; $4120: $e8 $e3
    adc [hl]                                      ; $4122: $8e
    ldh [rP1], a                                  ; $4123: $e0 $00
    jp z, $e4e0                                   ; $4125: $ca $e0 $e4

    db $e3                                        ; $4128: $e3
    jp nc, $aae1                                  ; $4129: $d2 $e1 $aa

    db $fd                                        ; $412c: $fd
    ld d, l                                       ; $412d: $55
    ret nz                                        ; $412e: $c0

    db $e3                                        ; $412f: $e3
    add d                                         ; $4130: $82
    nop                                           ; $4131: $00
    sub [hl]                                      ; $4132: $96
    nop                                           ; $4133: $00
    add b                                         ; $4134: $80
    nop                                           ; $4135: $00
    rst $38                                       ; $4136: $ff
    ld a, a                                       ; $4137: $7f
    add b                                         ; $4138: $80
    ld [$a800], sp                                ; $4139: $08 $00 $a8
    nop                                           ; $413c: $00
    ld h, c                                       ; $413d: $61
    ld [$08ff], sp                                ; $413e: $08 $ff $08
    nop                                           ; $4141: $00
    ld [hl], $c9                                  ; $4142: $36 $c9
    add b                                         ; $4144: $80
    nop                                           ; $4145: $00
    ld d, $80                                     ; $4146: $16 $80
    rst $38                                       ; $4148: $ff
    ld l, $80                                     ; $4149: $2e $80
    add b                                         ; $414b: $80
    nop                                           ; $414c: $00
    ld a, [hl]                                    ; $414d: $7e
    add b                                         ; $414e: $80
    ld bc, $fcfe                                  ; $414f: $01 $fe $fc
    xor b                                         ; $4152: $a8
    ld [c], a                                     ; $4153: $e2
    sub e                                         ; $4154: $93
    ldh [rHDMA5], a                               ; $4155: $e0 $55
    rst $38                                       ; $4157: $ff
    ei                                            ; $4158: $fb
    rst $38                                       ; $4159: $ff
    ld [hl], $f9                                  ; $415a: $36 $f9
    rst $38                                       ; $415c: $ff
    and $19                                       ; $415d: $e6 $19
    ld l, l                                       ; $415f: $6d
    di                                            ; $4160: $f3
    adc $f1                                       ; $4161: $ce $f1
    call nz, $79fb                                ; $4163: $c4 $fb $79
    xor $fc                                       ; $4166: $ee $fc
    and $40                                       ; $4168: $e6 $40
    db $e3                                        ; $416a: $e3
    di                                            ; $416b: $f3
    inc c                                         ; $416c: $0c
    ld l, b                                       ; $416d: $68
    dec d                                         ; $416e: $15
    add b                                         ; $416f: $80
    pop hl                                        ; $4170: $e1
    ld a, a                                       ; $4171: $7f
    cp $01                                        ; $4172: $fe $01
    inc d                                         ; $4174: $14
    db $eb                                        ; $4175: $eb
    nop                                           ; $4176: $00
    rst $38                                       ; $4177: $ff
    push af                                       ; $4178: $f5
    ld h, d                                       ; $4179: $62
    ldh [$ed], a                                  ; $417a: $e0 $ed
    ld b, c                                       ; $417c: $41
    rlca                                          ; $417d: $07
    ldh [$5d], a                                  ; $417e: $e0 $5d
    and d                                         ; $4180: $a2
    ld l, $e1                                     ; $4181: $2e $e1
    nop                                           ; $4183: $00
    rst $38                                       ; $4184: $ff
    add sp, -$01                                  ; $4185: $e8 $ff
    rla                                           ; $4187: $17
    ld b, b                                       ; $4188: $40
    cp a                                          ; $4189: $bf
    jr z, jr_028_41e3                             ; $418a: $28 $57

    or h                                          ; $418c: $b4
    dec bc                                        ; $418d: $0b
    nop                                           ; $418e: $00
    rst $30                                       ; $418f: $f7
    rst $38                                       ; $4190: $ff
    and b                                         ; $4191: $a0
    ld e, a                                       ; $4192: $5f
    ld c, c                                       ; $4193: $49
    pop hl                                        ; $4194: $e1
    ld a, [$ad05]                                 ; $4195: $fa $05 $ad
    ld [bc], a                                    ; $4198: $02
    rst $38                                       ; $4199: $ff
    ld d, [hl]                                    ; $419a: $56
    ld bc, $000b                                  ; $419b: $01 $0b $00
    ld b, b                                       ; $419e: $40
    cp a                                          ; $419f: $bf
    xor b                                         ; $41a0: $a8
    ld d, a                                       ; $41a1: $57
    rst $38                                       ; $41a2: $ff
    add c                                         ; $41a3: $81
    rst $38                                       ; $41a4: $ff
    inc bc                                        ; $41a5: $03
    or $07                                        ; $41a6: $f6 $07
    call $db0f                                    ; $41a8: $cd $0f $db
    rst $38                                       ; $41ab: $ff
    rra                                           ; $41ac: $1f
    or [hl]                                       ; $41ad: $b6
    ccf                                           ; $41ae: $3f
    db $ec                                        ; $41af: $ec
    ld a, a                                       ; $41b0: $7f
    ret c                                         ; $41b1: $d8

    ccf                                           ; $41b2: $3f
    db $ec                                        ; $41b3: $ec
    rst $38                                       ; $41b4: $ff
    rra                                           ; $41b5: $1f
    or [hl]                                       ; $41b6: $b6
    rrca                                          ; $41b7: $0f
    db $db                                        ; $41b8: $db
    rlca                                          ; $41b9: $07
    adc l                                         ; $41ba: $8d
    inc bc                                        ; $41bb: $03
    sub $ff                                       ; $41bc: $d6 $ff
    add c                                         ; $41be: $81
    rst $38                                       ; $41bf: $ff
    add b                                         ; $41c0: $80
    add b                                         ; $41c1: $80
    sbc a                                         ; $41c2: $9f
    sbc a                                         ; $41c3: $9f
    rst $18                                       ; $41c4: $df
    rst $18                                       ; $41c5: $df
    rst $38                                       ; $41c6: $ff
    ld e, [hl]                                    ; $41c7: $5e
    db $fc                                        ; $41c8: $fc
    ld hl, sp-$10                                 ; $41c9: $f8 $f0
    ld [hl], b                                    ; $41cb: $70
    ldh [$ea], a                                  ; $41cc: $e0 $ea
    ldh [$df], a                                  ; $41ce: $e0 $df
    ld [hl], l                                    ; $41d0: $75
    ret nz                                        ; $41d1: $c0

    ld [$7fc0], a                                 ; $41d2: $ea $c0 $7f
    cp $e0                                        ; $41d5: $fe $e0
    jr c, jr_028_41f8                             ; $41d7: $38 $1f

    rst $38                                       ; $41d9: $ff
    ld c, $07                                     ; $41da: $0e $07
    ld b, $07                                     ; $41dc: $06 $07
    ld b, $03                                     ; $41de: $06 $03
    ld b, d                                       ; $41e0: $42
    inc bc                                        ; $41e1: $03
    cp l                                          ; $41e2: $bd

jr_028_41e3:
    and d                                         ; $41e3: $a2
    db $fc                                        ; $41e4: $fc
    ldh [$a6], a                                  ; $41e5: $e0 $a6
    ld [bc], a                                    ; $41e7: $02
    ld a, a                                       ; $41e8: $7f
    ldh [$fe], a                                  ; $41e9: $e0 $fe
    ldh [rIE], a                                  ; $41eb: $e0 $ff
    rst $38                                       ; $41ed: $ff
    nop                                           ; $41ee: $00
    ld a, a                                       ; $41ef: $7f
    ld a, a                                       ; $41f0: $7f
    rst $38                                       ; $41f1: $ff
    ld a, [$54ff]                                 ; $41f2: $fa $ff $54
    rst $38                                       ; $41f5: $ff
    rst $38                                       ; $41f6: $ff
    rst $38                                       ; $41f7: $ff

jr_028_41f8:
    rst $38                                       ; $41f8: $ff
    sub $07                                       ; $41f9: $d6 $07
    xor [hl]                                      ; $41fb: $ae
    ld b, $fc                                     ; $41fc: $06 $fc
    cp $df                                        ; $41fe: $fe $df
    nop                                           ; $4200: $00
    add sp, -$2b                                  ; $4201: $e8 $d5
    rst $38                                       ; $4203: $ff
    and c                                         ; $4204: $a1
    rst $18                                       ; $4205: $df
    ret nz                                        ; $4206: $c0

    db $fd                                        ; $4207: $fd
    rst $38                                       ; $4208: $ff
    rst $38                                       ; $4209: $ff
    ld hl, sp+$6d                                 ; $420a: $f8 $6d
    ldh a, [$da]                                  ; $420c: $f0 $da
    ldh [$b1], a                                  ; $420e: $e0 $b1
    ret nz                                        ; $4210: $c0

    ld l, d                                       ; $4211: $6a
    ld sp, hl                                     ; $4212: $f9
    add b                                         ; $4213: $80
    db $db                                        ; $4214: $db
    pop bc                                        ; $4215: $c1
    ldh [$e0], a                                  ; $4216: $e0 $e0
    add b                                         ; $4218: $80
    rst $38                                       ; $4219: $ff
    ret nz                                        ; $421a: $c0

    ld l, l                                       ; $421b: $6d
    ldh [rIE], a                                  ; $421c: $e0 $ff

jr_028_421e:
    or e                                          ; $421e: $b3
    ldh a, [$db]                                  ; $421f: $f0 $db
    ld hl, sp+$6d                                 ; $4221: $f8 $6d
    db $fc                                        ; $4223: $fc
    scf                                           ; $4224: $37
    cp $ff                                        ; $4225: $fe $ff
    dec de                                        ; $4227: $1b
    db $fc                                        ; $4228: $fc
    scf                                           ; $4229: $37
    push de                                       ; $422a: $d5
    ldh [$a0], a                                  ; $422b: $e0 $a0
    ret nz                                        ; $422d: $c0

    or d                                          ; $422e: $b2
    rst $38                                       ; $422f: $ff
    ret nz                                        ; $4230: $c0

    ld e, a                                       ; $4231: $5f
    and b                                         ; $4232: $a0
    jp z, Jump_000_1515                           ; $4233: $ca $15 $15

    adc d                                         ; $4236: $8a
    pop bc                                        ; $4237: $c1
    rst $38                                       ; $4238: $ff
    rrca                                          ; $4239: $0f
    rla                                           ; $423a: $17
    adc b                                         ; $423b: $88
    ld e, l                                       ; $423c: $5d
    add b                                         ; $423d: $80
    ld [hl+], a                                   ; $423e: $22
    adc b                                         ; $423f: $88
    ld e, c                                       ; $4240: $59
    rst $38                                       ; $4241: $ff
    add b                                         ; $4242: $80
    ld [hl-], a                                   ; $4243: $32
    adc b                                         ; $4244: $88
    pop de                                        ; $4245: $d1
    ld [$8834], sp                                ; $4246: $08 $34 $88
    rst $30                                       ; $4249: $f7
    rst $38                                       ; $424a: $ff
    ld [$9d6a], sp                                ; $424b: $08 $6a $9d
    ld d, l                                       ; $424e: $55
    inc bc                                        ; $424f: $03
    ld [bc], a                                    ; $4250: $02
    ld bc, $ffa6                                  ; $4251: $01 $a6 $ff
    ld bc, $02fd                                  ; $4254: $01 $fd $02
    xor c                                         ; $4257: $a9
    ld d, h                                       ; $4258: $54
    ld d, h                                       ; $4259: $54
    xor b                                         ; $425a: $a8
    ld e, c                                       ; $425b: $59
    rst $38                                       ; $425c: $ff
    ld hl, sp+$4c                                 ; $425d: $f8 $4c
    cp b                                          ; $425f: $b8
    ld [hl], l                                    ; $4260: $75
    ld [$08ea], sp                                ; $4261: $08 $ea $08
    push de                                       ; $4264: $d5
    rst $38                                       ; $4265: $ff
    ld [$08a6], sp                                ; $4266: $08 $a6 $08
    ld b, l                                       ; $4269: $45
    ld [$0816], sp                                ; $426a: $08 $16 $08
    rst $30                                       ; $426d: $f7
    rst $38                                       ; $426e: $ff
    ld [$5cab], sp                                ; $426f: $08 $ab $5c
    adc [hl]                                      ; $4272: $8e
    adc l                                         ; $4273: $8d
    rla                                           ; $4274: $17
    db $10                                        ; $4275: $10
    jr z, @+$01                                   ; $4276: $28 $ff

    inc h                                         ; $4278: $24
    ld [de], a                                    ; $4279: $12
    ld [$90a6], sp                                ; $427a: $08 $a6 $90
    ld b, b                                       ; $427d: $40
    jr nz, jr_028_421e                            ; $427e: $20 $9e

    rst $38                                       ; $4280: $ff
    ld h, b                                       ; $4281: $60
    ld bc, $8efe                                  ; $4282: $01 $fe $8e
    adc l                                         ; $4285: $8d
    inc d                                         ; $4286: $14
    ld [de], a                                    ; $4287: $12
    inc l                                         ; $4288: $2c
    rst $38                                       ; $4289: $ff
    jr nz, jr_028_42a4                            ; $428a: $20 $18

    nop                                           ; $428c: $00
    or a                                          ; $428d: $b7
    adc b                                         ; $428e: $88
    ld l, b                                       ; $428f: $68
    nop                                           ; $4290: $00
    adc b                                         ; $4291: $88
    rst $38                                       ; $4292: $ff
    ld b, b                                       ; $4293: $40
    add hl, hl                                    ; $4294: $29
    add b                                         ; $4295: $80
    db $eb                                        ; $4296: $eb
    ld [$d0d1], a                                 ; $4297: $ea $d1 $d0
    and e                                         ; $429a: $a3
    rst $38                                       ; $429b: $ff
    and d                                         ; $429c: $a2
    pop bc                                        ; $429d: $c1
    ret nz                                        ; $429e: $c0

    and e                                         ; $429f: $a3
    and d                                         ; $42a0: $a2
    ld b, l                                       ; $42a1: $45
    ld b, h                                       ; $42a2: $44
    adc e                                         ; $42a3: $8b

jr_028_42a4:
    rst $38                                       ; $42a4: $ff
    adc d                                         ; $42a5: $8a
    dec b                                         ; $42a6: $05
    inc b                                         ; $42a7: $04
    nop                                           ; $42a8: $00
    rst $38                                       ; $42a9: $ff
    inc h                                         ; $42aa: $24
    db $db                                        ; $42ab: $db
    ld e, b                                       ; $42ac: $58
    rst $38                                       ; $42ad: $ff
    and a                                         ; $42ae: $a7
    ld [hl-], a                                   ; $42af: $32
    rst $08                                       ; $42b0: $cf
    ld h, $df                                     ; $42b1: $26 $df
    ld c, l                                       ; $42b3: $4d
    cp h                                          ; $42b4: $bc
    jr jr_028_42be                                ; $42b5: $18 $07

    ld sp, hl                                     ; $42b7: $f9
    dec [hl]                                      ; $42b8: $35
    db $f4                                        ; $42b9: $f4
    ld d, b                                       ; $42ba: $50
    rst $00                                       ; $42bb: $c7
    ld a, $c1                                     ; $42bc: $3e $c1

jr_028_42be:
    ld e, l                                       ; $42be: $5d
    ldh [$2c], a                                  ; $42bf: $e0 $2c
    ret nz                                        ; $42c1: $c0

    ld h, h                                       ; $42c2: $64
    jp Jump_000_30fe                              ; $42c3: $c3 $fe $30


    pop bc                                        ; $42c6: $c1
    rst $38                                       ; $42c7: $ff
    nop                                           ; $42c8: $00
    ld a, [bc]                                    ; $42c9: $0a
    push af                                       ; $42ca: $f5
    ld a, a                                       ; $42cb: $7f
    rst $38                                       ; $42cc: $ff
    push de                                       ; $42cd: $d5
    ld a, a                                       ; $42ce: $7f
    ld d, l                                       ; $42cf: $55
    ld a, [hl]                                    ; $42d0: $7e
    cp $ff                                        ; $42d1: $fe $ff
    ld a, a                                       ; $42d3: $7f
    cp a                                          ; $42d4: $bf
    ccf                                           ; $42d5: $3f
    db $fc                                        ; $42d6: $fc
    pop hl                                        ; $42d7: $e1
    rst $38                                       ; $42d8: $ff
    add sp, $17                                   ; $42d9: $e8 $17
    cp $ff                                        ; $42db: $fe $ff
    ld b, b                                       ; $42dd: $40
    ld b, c                                       ; $42de: $41
    xor c                                         ; $42df: $a9
    xor b                                         ; $42e0: $a8
    rst $38                                       ; $42e1: $ff
    call nc, $f9d5                                ; $42e2: $d4 $d5 $f9
    ld hl, sp-$0b                                 ; $42e5: $f8 $f5
    db $f4                                        ; $42e7: $f4
    ld sp, hl                                     ; $42e8: $f9
    ld hl, sp-$01                                 ; $42e9: $f8 $ff
    cp a                                          ; $42eb: $bf
    ccf                                           ; $42ec: $3f
    xor a                                         ; $42ed: $af
    cpl                                           ; $42ee: $2f
    cp a                                          ; $42ef: $bf
    ccf                                           ; $42f0: $3f
    xor d                                         ; $42f1: $aa
    ld a, [hl+]                                   ; $42f2: $2a
    rst $38                                       ; $42f3: $ff
    or l                                          ; $42f4: $b5
    dec [hl]                                      ; $42f5: $35
    xor d                                         ; $42f6: $aa
    ld a, [hl+]                                   ; $42f7: $2a
    sub b                                         ; $42f8: $90
    db $10                                        ; $42f9: $10
    xor d                                         ; $42fa: $aa
    ld a, [hl+]                                   ; $42fb: $2a
    rst $38                                       ; $42fc: $ff
    jp c, $0880                                   ; $42fd: $da $80 $08

    add h                                         ; $4300: $84
    call z, $1802                                 ; $4301: $cc $02 $18
    add a                                         ; $4304: $87
    ld e, a                                       ; $4305: $5f
    rst $08                                       ; $4306: $cf
    ld [bc], a                                    ; $4307: $02
    add hl, de                                    ; $4308: $19
    add [hl]                                      ; $4309: $86
    rst $08                                       ; $430a: $cf
    ld hl, sp-$20                                 ; $430b: $f8 $e0
    cp l                                          ; $430d: $bd
    cp d                                          ; $430e: $ba
    and b                                         ; $430f: $a0
    rst $38                                       ; $4310: $ff
    xor e                                         ; $4311: $ab
    nop                                           ; $4312: $00
    cp a                                          ; $4313: $bf
    ld b, b                                       ; $4314: $40
    add [hl]                                      ; $4315: $86
    ld bc, $0152                                  ; $4316: $01 $52 $01
    rst $38                                       ; $4319: $ff
    xor d                                         ; $431a: $aa
    ld bc, $0172                                  ; $431b: $01 $72 $01
    cp $fe                                        ; $431e: $fe $fe
    db $f4                                        ; $4320: $f4
    db $f4                                        ; $4321: $f4
    rst $38                                       ; $4322: $ff
    ld [$d0ea], a                                 ; $4323: $ea $ea $d0
    ret nc                                        ; $4326: $d0

    xor d                                         ; $4327: $aa
    xor d                                         ; $4328: $aa
    ret nz                                        ; $4329: $c0

    ret nz                                        ; $432a: $c0

    rst $38                                       ; $432b: $ff
    xor d                                         ; $432c: $aa
    xor d                                         ; $432d: $aa
    ld bc, $d400                                  ; $432e: $01 $00 $d4
    nop                                           ; $4331: $00
    and b                                         ; $4332: $a0
    nop                                           ; $4333: $00
    rst $38                                       ; $4334: $ff
    ld d, d                                       ; $4335: $52
    ld [bc], a                                    ; $4336: $02
    add b                                         ; $4337: $80
    nop                                           ; $4338: $00
    ld c, e                                       ; $4339: $4b
    ld a, [bc]                                    ; $433a: $0a
    add b                                         ; $433b: $80
    nop                                           ; $433c: $00
    rst $38                                       ; $433d: $ff
    dec hl                                        ; $433e: $2b
    ld a, [hl+]                                   ; $433f: $2a
    and e                                         ; $4340: $a3
    nop                                           ; $4341: $00
    ld l, e                                       ; $4342: $6b
    ld [$dcdd], a                                 ; $4343: $ea $dd $dc
    rst $38                                       ; $4346: $ff
    cp e                                          ; $4347: $bb
    cp d                                          ; $4348: $ba
    db $fd                                        ; $4349: $fd
    db $fc                                        ; $434a: $fc
    ei                                            ; $434b: $fb
    ld a, [$fcfd]                                 ; $434c: $fa $fd $fc
    rst $38                                       ; $434f: $ff
    db $eb                                        ; $4350: $eb
    ld [$f4f5], a                                 ; $4351: $ea $f5 $f4
    push bc                                       ; $4354: $c5
    ld a, [$f0ef]                                 ; $4355: $fa $ef $f0
    rst $38                                       ; $4358: $ff
    push bc                                       ; $4359: $c5
    ld a, [$ffe0]                                 ; $435a: $fa $e0 $ff
    ld a, l                                       ; $435d: $7d
    rst $38                                       ; $435e: $ff
    dec sp                                        ; $435f: $3b
    rst $38                                       ; $4360: $ff
    rst $38                                       ; $4361: $ff
    or [hl]                                       ; $4362: $b6
    ld a, c                                       ; $4363: $79
    and $19                                       ; $4364: $e6 $19
    ld d, h                                       ; $4366: $54
    xor e                                         ; $4367: $ab
    cp $01                                        ; $4368: $fe $01
    ei                                            ; $436a: $fb
    ld d, h                                       ; $436b: $54
    xor e                                         ; $436c: $ab
    ldh a, [$a7]                                  ; $436d: $f0 $a7
    call nc, $a5ff                                ; $436f: $d4 $ff $a5
    ld a, [$ff2b]                                 ; $4372: $fa $2b $ff
    call nc, $a05a                                ; $4375: $d4 $5a $a0
    ld a, [c]                                     ; $4378: $f2
    db $fd                                        ; $4379: $fd
    ld d, l                                       ; $437a: $55
    ld a, [$ffad]                                 ; $437b: $fa $ad $ff

jr_028_437e:
    ldh a, [$2b]                                  ; $437e: $f0 $2b
    ret nc                                        ; $4380: $d0

    push af                                       ; $4381: $f5
    add b                                         ; $4382: $80
    ldh a, [$81]                                  ; $4383: $f0 $81
    ld de, $c2ff                                  ; $4385: $11 $ff $c2
    ld d, [hl]                                    ; $4388: $56
    and b                                         ; $4389: $a0
    add b                                         ; $438a: $80
    nop                                           ; $438b: $00
    ld d, [hl]                                    ; $438c: $56
    xor b                                         ; $438d: $a8
    ld a, [hl]                                    ; $438e: $7e
    rst $28                                       ; $438f: $ef
    add b                                         ; $4390: $80
    ld a, [hl]                                    ; $4391: $7e
    add b                                         ; $4392: $80
    nop                                           ; $4393: $00
    cp d                                          ; $4394: $ba
    and b                                         ; $4395: $a0
    ld a, [hl]                                    ; $4396: $7e
    add b                                         ; $4397: $80
    ld l, b                                       ; $4398: $68
    rst $18                                       ; $4399: $df
    add b                                         ; $439a: $80
    ld [$55f7], a                                 ; $439b: $ea $f7 $55
    ld [c], a                                     ; $439e: $e2
    cp $e1                                        ; $439f: $fe $e1
    push de                                       ; $43a1: $d5
    and b                                         ; $43a2: $a0
    rst $38                                       ; $43a3: $ff
    ldh a, [$81]                                  ; $43a4: $f0 $81
    ret nc                                        ; $43a6: $d0

    jp $e671                                      ; $43a7: $c3 $71 $e6


    pop hl                                        ; $43aa: $e1
    cp h                                          ; $43ab: $bc
    cp a                                          ; $43ac: $bf
    inc hl                                        ; $43ad: $23
    ret c                                         ; $43ae: $d8

    push de                                       ; $43af: $d5
    and b                                         ; $43b0: $a0
    inc hl                                        ; $43b1: $23
    ret nc                                        ; $43b2: $d0

    xor $e0                                       ; $43b3: $ee $e0
    ld [c], a                                     ; $43b5: $e2
    rst $20                                       ; $43b6: $e7
    sub a                                         ; $43b7: $97
    ldh [$7c], a                                  ; $43b8: $e0 $7c
    sub d                                         ; $43ba: $92
    and b                                         ; $43bb: $a0
    ret nc                                        ; $43bc: $d0

    db $e3                                        ; $43bd: $e3
    ld l, e                                       ; $43be: $6b
    sbc a                                         ; $43bf: $9f
    ld b, a                                       ; $43c0: $47
    rst $38                                       ; $43c1: $ff
    cp a                                          ; $43c2: $bf
    ld l, d                                       ; $43c3: $6a
    sbc a                                         ; $43c4: $9f
    ld b, l                                       ; $43c5: $45
    cp a                                          ; $43c6: $bf
    ld h, b                                       ; $43c7: $60
    sbc a                                         ; $43c8: $9f
    ld d, b                                       ; $43c9: $50
    ei                                            ; $43ca: $fb
    xor a                                         ; $43cb: $af
    ld h, d                                       ; $43cc: $62
    ld hl, sp-$20                                 ; $43cd: $f8 $e0
    ld e, a                                       ; $43cf: $5f
    rst $38                                       ; $43d0: $ff
    rst $30                                       ; $43d1: $f7
    rst $38                                       ; $43d2: $ff
    cp e                                          ; $43d3: $bb
    rst $38                                       ; $43d4: $ff
    rst $38                                       ; $43d5: $ff

jr_028_43d6:
    ld l, l                                       ; $43d6: $6d
    rst $38                                       ; $43d7: $ff
    rla                                           ; $43d8: $17
    rst $38                                       ; $43d9: $ff
    ld c, $ff                                     ; $43da: $0e $ff
    adc e                                         ; $43dc: $8b
    ei                                            ; $43dd: $fb
    rst $38                                       ; $43de: $ff
    ld b, [hl]                                    ; $43df: $46
    db $fc                                        ; $43e0: $fc
    db $e4                                        ; $43e1: $e4
    dec b                                         ; $43e2: $05
    rst $38                                       ; $43e3: $ff
    inc hl                                        ; $43e4: $23
    rst $18                                       ; $43e5: $df
    ld b, l                                       ; $43e6: $45
    rlca                                          ; $43e7: $07
    cp a                                          ; $43e8: $bf
    and d                                         ; $43e9: $a2
    ld e, a                                       ; $43ea: $5f
    rrca                                          ; $43eb: $0f
    ret nz                                        ; $43ec: $c0

    ret c                                         ; $43ed: $d8

    call nz, $a026                                ; $43ee: $c4 $26 $a0
    sub l                                         ; $43f1: $95
    add b                                         ; $43f2: $80
    or $81                                        ; $43f3: $f6 $81
    cp $20                                        ; $43f5: $fe $20
    xor e                                         ; $43f7: $ab
    add b                                         ; $43f8: $80
    nop                                           ; $43f9: $00
    and b                                         ; $43fa: $a0
    jr nz, jr_028_437e                            ; $43fb: $20 $81

    ld bc, $ff80                                  ; $43fd: $01 $80 $ff
    nop                                           ; $4400: $00
    add l                                         ; $4401: $85
    dec b                                         ; $4402: $05
    xor d                                         ; $4403: $aa
    ld a, [hl+]                                   ; $4404: $2a
    nop                                           ; $4405: $00
    add b                                         ; $4406: $80
    ld a, a                                       ; $4407: $7f
    rst $38                                       ; $4408: $ff
    add b                                         ; $4409: $80
    dec d                                         ; $440a: $15
    inc d                                         ; $440b: $14
    add hl, bc                                    ; $440c: $09
    ld [$5455], sp                                ; $440d: $08 $55 $54
    dec l                                         ; $4410: $2d
    rst $38                                       ; $4411: $ff
    inc l                                         ; $4412: $2c
    ld d, l                                       ; $4413: $55
    ld d, h                                       ; $4414: $54
    cp a                                          ; $4415: $bf
    cp [hl]                                       ; $4416: $be
    dec b                                         ; $4417: $05
    inc b                                         ; $4418: $04
    cp $ff                                        ; $4419: $fe $ff
    ld bc, $d4d5                                  ; $441b: $01 $d5 $d4
    jp hl                                         ; $441e: $e9


    add sp, $55                                   ; $441f: $e8 $55
    ld d, h                                       ; $4421: $54
    xor c                                         ; $4422: $a9
    rst $38                                       ; $4423: $ff
    xor b                                         ; $4424: $a8
    ld b, l                                       ; $4425: $45
    ld b, h                                       ; $4426: $44
    ld bc, $0500                                  ; $4427: $01 $00 $05
    inc b                                         ; $442a: $04
    ld bc, $00ff                                  ; $442b: $01 $ff $00
    ld de, $00ee                                  ; $442e: $11 $ee $00
    rst $38                                       ; $4431: $ff
    ld b, h                                       ; $4432: $44
    cp e                                          ; $4433: $bb
    nop                                           ; $4434: $00
    pop de                                        ; $4435: $d1
    rst $38                                       ; $4436: $ff
    ld hl, sp-$1f                                 ; $4437: $f8 $e1
    ld b, d                                       ; $4439: $42
    and e                                         ; $443a: $a3
    db $fc                                        ; $443b: $fc
    db $eb                                        ; $443c: $eb
    ld [$a09c], a                                 ; $443d: $ea $9c $a0
    push de                                       ; $4440: $d5
    rst $38                                       ; $4441: $ff
    rst $38                                       ; $4442: $ff
    xor d                                         ; $4443: $aa
    rst $38                                       ; $4444: $ff
    ret nz                                        ; $4445: $c0

    rst $38                                       ; $4446: $ff
    adc d                                         ; $4447: $8a
    push af                                       ; $4448: $f5
    sbc a                                         ; $4449: $9f
    ldh [rSB], a                                  ; $444a: $e0 $01
    rst $38                                       ; $444c: $ff
    ld b, h                                       ; $444d: $44
    ret z                                         ; $444e: $c8

    or b                                          ; $444f: $b0
    add h                                         ; $4450: $84
    adc $e8                                       ; $4451: $ce $e8
    jr nc, jr_028_43d6                            ; $4453: $30 $81

    cp a                                          ; $4455: $bf
    db $e3                                        ; $4456: $e3
    adc [hl]                                      ; $4457: $8e
    add c                                         ; $4458: $81
    or h                                          ; $4459: $b4
    db $e3                                        ; $445a: $e3
    rst $38                                       ; $445b: $ff
    cp a                                          ; $445c: $bf
    rst $38                                       ; $445d: $ff
    ld d, a                                       ; $445e: $57
    rst $38                                       ; $445f: $ff
    dec hl                                        ; $4460: $2b
    rst $38                                       ; $4461: $ff
    ld h, l                                       ; $4462: $65
    rra                                           ; $4463: $1f
    rst $38                                       ; $4464: $ff
    xor a                                         ; $4465: $af
    rst $38                                       ; $4466: $ff
    cpl                                           ; $4467: $2f
    rst $18                                       ; $4468: $df
    ld e, a                                       ; $4469: $5f
    xor a                                         ; $446a: $af
    sbc e                                         ; $446b: $9b
    ld c, a                                       ; $446c: $4f
    rst $38                                       ; $446d: $ff
    and a                                         ; $446e: $a7
    rrca                                          ; $446f: $0f
    rrca                                          ; $4470: $0f
    adc a                                         ; $4471: $8f
    dec bc                                        ; $4472: $0b
    rst $08                                       ; $4473: $cf
    add a                                         ; $4474: $87
    ld l, a                                       ; $4475: $6f
    rst $38                                       ; $4476: $ff
    adc a                                         ; $4477: $8f
    ccf                                           ; $4478: $3f
    rr a                                          ; $4479: $cb $1f
    and a                                         ; $447b: $a7
    rrca                                          ; $447c: $0f
    rrc a                                         ; $447d: $cb $0f
    cp $f0                                        ; $447f: $fe $f0
    pop hl                                        ; $4481: $e1
    adc e                                         ; $4482: $8b
    ld c, a                                       ; $4483: $4f
    ld h, a                                       ; $4484: $67
    rrca                                          ; $4485: $0f
    ld sp, $1f0f                                  ; $4486: $31 $0f $1f
    cp a                                          ; $4489: $bf
    ld a, a                                       ; $448a: $7f
    dec bc                                        ; $448b: $0b
    ld a, a                                       ; $448c: $7f
    ld b, l                                       ; $448d: $45
    ccf                                           ; $448e: $3f
    cp $ff                                        ; $448f: $fe $ff
    ld [c], a                                     ; $4491: $e2
    rst $38                                       ; $4492: $ff
    pop af                                        ; $4493: $f1
    rst $38                                       ; $4494: $ff
    db $fc                                        ; $4495: $fc
    pop hl                                        ; $4496: $e1
    db $e3                                        ; $4497: $e3
    and b                                         ; $4498: $a0
    ret nz                                        ; $4499: $c0

    ld h, b                                       ; $449a: $60
    add hl, bc                                    ; $449b: $09
    nop                                           ; $449c: $00
    sub l                                         ; $449d: $95
    add b                                         ; $449e: $80
    ld a, a                                       ; $449f: $7f
    ld c, c                                       ; $44a0: $49
    ld b, b                                       ; $44a1: $40
    add e                                         ; $44a2: $83

jr_028_44a3:
    add d                                         ; $44a3: $82
    push de                                       ; $44a4: $d5
    call nc, Call_028_40ab                        ; $44a5: $d4 $ab $40
    ret nz                                        ; $44a8: $c0

    cp $30                                        ; $44a9: $fe $30
    jp $f0f0                                      ; $44ab: $c3 $f0 $f0


    ld [$d4ea], a                                 ; $44ae: $ea $ea $d4
    call nc, $fdfa                                ; $44b1: $d4 $fa $fd
    ld a, [$6d92]                                 ; $44b4: $fa $92 $6d
    nop                                           ; $44b7: $00
    nop                                           ; $44b8: $00
    push af                                       ; $44b9: $f5
    add b                                         ; $44ba: $80
    rst $38                                       ; $44bb: $ff
    pop bc                                        ; $44bc: $c1
    rst $38                                       ; $44bd: $ff
    ld a, [hl]                                    ; $44be: $7e
    rst $38                                       ; $44bf: $ff
    nop                                           ; $44c0: $00
    ld a, [$fff5]                                 ; $44c1: $fa $f5 $ff
    xor c                                         ; $44c4: $a9
    rst $38                                       ; $44c5: $ff
    db $fd                                        ; $44c6: $fd
    ld b, b                                       ; $44c7: $40
    ldh a, [$80]                                  ; $44c8: $f0 $80
    pop hl                                        ; $44ca: $e1
    pop bc                                        ; $44cb: $c1
    ret nc                                        ; $44cc: $d0

    add b                                         ; $44cd: $80
    add sp, -$80                                  ; $44ce: $e8 $80
    xor $ea                                       ; $44d0: $ee $ea
    ldh [$c0], a                                  ; $44d2: $e0 $c0
    cp $b8                                        ; $44d4: $fe $b8
    or $e1                                        ; $44d6: $f6 $e1
    rst $08                                       ; $44d8: $cf
    ld [bc], a                                    ; $44d9: $02
    ld a, [bc]                                    ; $44da: $0a
    rst $38                                       ; $44db: $ff
    add a                                         ; $44dc: $87
    db $db                                        ; $44dd: $db
    rlca                                          ; $44de: $07
    halt                                          ; $44df: $76
    adc b                                         ; $44e0: $88
    jr nc, jr_028_44a3                            ; $44e1: $30 $c0

    ld a, [$80ff]                                 ; $44e3: $fa $ff $80
    xor d                                         ; $44e6: $aa
    push de                                       ; $44e7: $d5
    ld [$ebff], a                                 ; $44e8: $ea $ff $eb
    ld bc, $77d6                                  ; $44eb: $01 $d6 $77
    ld bc, $f947                                  ; $44ee: $01 $47 $f9
    jp z, Jump_000_0aa5                           ; $44f1: $ca $a5 $0a

    push af                                       ; $44f4: $f5
    xor d                                         ; $44f5: $aa
    xor h                                         ; $44f6: $ac
    add b                                         ; $44f7: $80
    pop af                                        ; $44f8: $f1
    ld d, l                                       ; $44f9: $55
    db $10                                        ; $44fa: $10
    ldh [$ae], a                                  ; $44fb: $e0 $ae
    ld h, c                                       ; $44fd: $61
    adc [hl]                                      ; $44fe: $8e
    ld h, b                                       ; $44ff: $60
    rst $38                                       ; $4500: $ff
    sub $f9                                       ; $4501: $d6 $f9
    ld h, d                                       ; $4503: $62
    db $fd                                        ; $4504: $fd
    db $fd                                        ; $4505: $fd
    db $fc                                        ; $4506: $fc
    db $eb                                        ; $4507: $eb
    ld [c], a                                     ; $4508: $e2
    db $fd                                        ; $4509: $fd
    ld d, [hl]                                    ; $450a: $56
    ld sp, hl                                     ; $450b: $f9
    and d                                         ; $450c: $a2
    db $fd                                        ; $450d: $fd
    ld a, a                                       ; $450e: $7f
    ld b, $f9                                     ; $450f: $06 $f9
    xor d                                         ; $4511: $aa
    ld d, l                                       ; $4512: $55
    cp $01                                        ; $4513: $fe $01
    db $fc                                        ; $4515: $fc
    ld a, d                                       ; $4516: $7a
    add b                                         ; $4517: $80
    rst $38                                       ; $4518: $ff
    rst $28                                       ; $4519: $ef
    rst $38                                       ; $451a: $ff
    db $dd                                        ; $451b: $dd
    rst $38                                       ; $451c: $ff
    or [hl]                                       ; $451d: $b6
    rst $38                                       ; $451e: $ff
    add sp, -$01                                  ; $451f: $e8 $ff
    ccf                                           ; $4521: $3f
    ld [hl], d                                    ; $4522: $72
    db $fd                                        ; $4523: $fd
    rst $10                                       ; $4524: $d7
    ld hl, sp+$62                                 ; $4525: $f8 $62
    db $fd                                        ; $4527: $fd
    adc h                                         ; $4528: $8c
    add c                                         ; $4529: $81
    db $fc                                        ; $452a: $fc
    jp hl                                         ; $452b: $e9


    nop                                           ; $452c: $00
    nop                                           ; $452d: $00
    nop                                           ; $452e: $00
    db $dd                                        ; $452f: $dd
    ld d, b                                       ; $4530: $50
    rst $38                                       ; $4531: $ff
    ldh [rVBK], a                                 ; $4532: $e0 $4f
    ld c, [hl]                                    ; $4534: $4e
    ld [hl+], a                                   ; $4535: $22
    rst $38                                       ; $4536: $ff
    db $e4                                        ; $4537: $e4
    ld c, [hl]                                    ; $4538: $4e
    ld c, a                                       ; $4539: $4f
    ld hl, sp-$10                                 ; $453a: $f8 $f0
    pop hl                                        ; $453c: $e1
    rst $38                                       ; $453d: $ff
    rst $38                                       ; $453e: $ff
    jp hl                                         ; $453f: $e9


    add sp, $4f                                   ; $4540: $e8 $4f
    ld c, h                                       ; $4542: $4c
    ld c, h                                       ; $4543: $4c
    ld c, [hl]                                    ; $4544: $4e
    ld hl, $24ef                                  ; $4545: $21 $ef $24
    dec h                                         ; $4548: $25
    inc h                                         ; $4549: $24
    dec h                                         ; $454a: $25
    db $fd                                        ; $454b: $fd
    ldh [rNR50], a                                ; $454c: $e0 $24
    ld hl, $f34e                                  ; $454e: $21 $4e $f3
    ld c, h                                       ; $4551: $4c
    ld c, h                                       ; $4552: $4c
    cp l                                          ; $4553: $bd
    rst $38                                       ; $4554: $ff
    db $eb                                        ; $4555: $eb
    ld [$074d], a                                 ; $4556: $ea $4d $07
    ld l, $21                                     ; $4559: $2e $21
    rst $18                                       ; $455b: $df
    dec hl                                        ; $455c: $2b
    ld h, $3a                                     ; $455d: $26 $3a
    ld h, $3a                                     ; $455f: $26 $3a
    db $fd                                        ; $4561: $fd
    ldh [rNR52], a                                ; $4562: $e0 $26
    dec hl                                        ; $4564: $2b
    rst $08                                       ; $4565: $cf
    ld hl, $3c41                                  ; $4566: $21 $41 $3c
    ld c, l                                       ; $4569: $4d
    call z, $c0ff                                 ; $456a: $cc $ff $c0
    ld [$3123], a                                 ; $456d: $ea $23 $31
    cp a                                          ; $4570: $bf
    dec hl                                        ; $4571: $2b
    jr nz, jr_028_45ac                            ; $4572: $20 $38

    add hl, sp                                    ; $4574: $39
    jr c, jr_028_45b0                             ; $4575: $38 $39

    db $fd                                        ; $4577: $fd
    ldh [$38], a                                  ; $4578: $e0 $38
    rst $08                                       ; $457a: $cf
    jr nz, jr_028_45a8                            ; $457b: $20 $2b

    ld b, d                                       ; $457d: $42
    ccf                                           ; $457e: $3f
    ret nz                                        ; $457f: $c0

    rst $38                                       ; $4580: $ff
    add b                                         ; $4581: $80
    db $eb                                        ; $4582: $eb
    ld [$f731], sp                                ; $4583: $08 $31 $f7
    jr nz, @+$21                                  ; $4586: $20 $1f

    ld a, [bc]                                    ; $4588: $0a
    rst $38                                       ; $4589: $ff
    db $e4                                        ; $458a: $e4
    rra                                           ; $458b: $1f
    jr nz, jr_028_45d0                            ; $458c: $20 $42

    add hl, bc                                    ; $458e: $09
    cp h                                          ; $458f: $bc
    ret nz                                        ; $4590: $c0

    rst $38                                       ; $4591: $ff
    ld b, b                                       ; $4592: $40
    db $eb                                        ; $4593: $eb
    dec b                                         ; $4594: $05
    cpl                                           ; $4595: $2f
    ld e, $0b                                     ; $4596: $1e $0b
    rst $38                                       ; $4598: $ff
    and $1e                                       ; $4599: $e6 $1e
    ld [hl], e                                    ; $459b: $73
    ld b, e                                       ; $459c: $43
    ld b, b                                       ; $459d: $40
    ret nz                                        ; $459e: $c0

    rst $38                                       ; $459f: $ff
    nop                                           ; $45a0: $00
    db $eb                                        ; $45a1: $eb
    ld bc, $292a                                  ; $45a2: $01 $2a $29
    rst $38                                       ; $45a5: $ff
    ldh [$6f], a                                  ; $45a6: $e0 $6f

jr_028_45a8:
    ld a, [de]                                    ; $45a8: $1a
    inc e                                         ; $45a9: $1c
    ld a, [de]                                    ; $45aa: $1a
    inc e                                         ; $45ab: $1c

jr_028_45ac:
    ld hl, sp-$1f                                 ; $45ac: $f8 $e1
    inc bc                                        ; $45ae: $03
    ld [bc], a                                    ; $45af: $02

jr_028_45b0:
    ret nz                                        ; $45b0: $c0

    rst $38                                       ; $45b1: $ff
    or $c0                                        ; $45b2: $f6 $c0
    sra d                                         ; $45b4: $cb $2a
    ld bc, $e1ff                                  ; $45b6: $01 $ff $e1
    dec de                                        ; $45b9: $1b
    dec e                                         ; $45ba: $1d
    dec de                                        ; $45bb: $1b
    dec e                                         ; $45bc: $1d
    ld [c], a                                     ; $45bd: $e2
    rst $30                                       ; $45be: $f7
    ld [c], a                                     ; $45bf: $e2
    inc bc                                        ; $45c0: $03
    ret nz                                        ; $45c1: $c0

    rst $38                                       ; $45c2: $ff
    add b                                         ; $45c3: $80
    db $ec                                        ; $45c4: $ec
    ret nz                                        ; $45c5: $c0

    ldh [$27], a                                  ; $45c6: $e0 $27
    jr z, jr_028_45dc                             ; $45c8: $28 $12

    rra                                           ; $45ca: $1f
    add hl, de                                    ; $45cb: $19
    add hl, de                                    ; $45cc: $19
    ld [de], a                                    ; $45cd: $12
    jr z, jr_028_45f7                             ; $45ce: $28 $27

jr_028_45d0:
    or l                                          ; $45d0: $b5
    ldh [$80], a                                  ; $45d1: $e0 $80
    rst $38                                       ; $45d3: $ff
    ret nz                                        ; $45d4: $c0

    ldh a, [rIE]                                  ; $45d5: $f0 $ff
    ld c, d                                       ; $45d7: $4a
    ld c, e                                       ; $45d8: $4b
    inc de                                        ; $45d9: $13
    jr jr_028_45f4                                ; $45da: $18 $18

jr_028_45dc:
    inc de                                        ; $45dc: $13
    ld c, e                                       ; $45dd: $4b
    ld c, d                                       ; $45de: $4a
    cp b                                          ; $45df: $b8
    pop bc                                        ; $45e0: $c1
    ldh [$c0], a                                  ; $45e1: $e0 $c0
    rst $38                                       ; $45e3: $ff
    add b                                         ; $45e4: $80
    ldh a, [$0e]                                  ; $45e5: $f0 $0e
    ld c, $02                                     ; $45e7: $0e $02
    rst $38                                       ; $45e9: $ff
    ldh [$0e], a                                  ; $45ea: $e0 $0e
    ld bc, $c00e                                  ; $45ec: $01 $0e $c0
    rst $38                                       ; $45ef: $ff
    ld b, b                                       ; $45f0: $40
    di                                            ; $45f1: $f3
    cp [hl]                                       ; $45f2: $be
    pop hl                                        ; $45f3: $e1

jr_028_45f4:
    jp nz, $c0e1                                  ; $45f4: $c2 $e1 $c0

jr_028_45f7:
    rst $38                                       ; $45f7: $ff
    ret nz                                        ; $45f8: $c0

    push af                                       ; $45f9: $f5
    ld a, [$cfe5]                                 ; $45fa: $fa $e5 $cf
    ld [bc], a                                    ; $45fd: $02
    ld [bc], a                                    ; $45fe: $02
    inc sp                                        ; $45ff: $33
    inc [hl]                                      ; $4600: $34
    set 7, a                                      ; $4601: $cb $ff
    jp hl                                         ; $4603: $e9


    add sp, $4e                                   ; $4604: $e8 $4e
    ld bc, $021b                                  ; $4606: $01 $1b $02
    inc b                                         ; $4609: $04
    ret nz                                        ; $460a: $c0

    ld [$354e], a                                 ; $460b: $ea $4e $35
    ld [$fe83], a                                 ; $460e: $ea $83 $fe
    db $e3                                        ; $4611: $e3
    ld a, [c]                                     ; $4612: $f2
    sbc [hl]                                      ; $4613: $9e
    rst $18                                       ; $4614: $df
    inc a                                         ; $4615: $3c
    ld bc, $1402                                  ; $4616: $01 $02 $14
    dec d                                         ; $4619: $15
    add b                                         ; $461a: $80
    jp hl                                         ; $461b: $e9


    inc a                                         ; $461c: $3c
    inc a                                         ; $461d: $3c
    ld a, h                                       ; $461e: $7c
    ld l, [hl]                                    ; $461f: $6e
    sbc a                                         ; $4620: $9f
    ld l, c                                       ; $4621: $69
    add sp, $3b                                   ; $4622: $e8 $3b
    ld bc, $1603                                  ; $4624: $01 $03 $16
    rla                                           ; $4627: $17
    ld a, l                                       ; $4628: $7d
    ld [c], a                                     ; $4629: $e2
    ld e, $fb                                     ; $462a: $1e $fb
    db $e3                                        ; $462c: $e3
    ld [bc], a                                    ; $462d: $02
    dec sp                                        ; $462e: $3b
    dec sp                                        ; $462f: $3b
    dec a                                         ; $4630: $3d
    ld l, [hl]                                    ; $4631: $6e
    sbc a                                         ; $4632: $9f
    ld b, b                                       ; $4633: $40
    add sp, -$7a                                  ; $4634: $e8 $86
    pop bc                                        ; $4636: $c1
    ld a, a                                       ; $4637: $7f
    ld [bc], a                                    ; $4638: $02
    dec c                                         ; $4639: $0d
    rrca                                          ; $463a: $0f
    rrca                                          ; $463b: $0f
    rrca                                          ; $463c: $0f
    db $10                                        ; $463d: $10
    dec c                                         ; $463e: $0d
    push af                                       ; $463f: $f5
    ld [c], a                                     ; $4640: $e2
    and a                                         ; $4641: $a7
    ld a, $3e                                     ; $4642: $3e $3e
    scf                                           ; $4644: $37
    ld l, [hl]                                    ; $4645: $6e
    sbc a                                         ; $4646: $9f
    ld b, b                                       ; $4647: $40
    adc b                                         ; $4648: $88
    inc c                                         ; $4649: $0c
    rst $38                                       ; $464a: $ff
    pop hl                                        ; $464b: $e1
    dec l                                         ; $464c: $2d
    ld a, [hl-]                                   ; $464d: $3a
    ret nz                                        ; $464e: $c0

    pop hl                                        ; $464f: $e1
    inc l                                         ; $4650: $2c
    push af                                       ; $4651: $f5
    ld [c], a                                     ; $4652: $e2
    ld [hl], $36                                  ; $4653: $36 $36
    ld [hl], $6e                                  ; $4655: $36 $6e
    sbc a                                         ; $4657: $9f
    nop                                           ; $4658: $00
    adc b                                         ; $4659: $88
    dec bc                                        ; $465a: $0b
    jr nc, @+$08                                  ; $465b: $30 $06

    rst $38                                       ; $465d: $ff
    ldh [$30], a                                  ; $465e: $e0 $30
    add b                                         ; $4660: $80
    pop hl                                        ; $4661: $e1
    or $e3                                        ; $4662: $f6 $e3
    pop af                                        ; $4664: $f1
    ldh [$6e], a                                  ; $4665: $e0 $6e
    add [hl]                                      ; $4667: $86
    cp e                                          ; $4668: $bb
    inc d                                         ; $4669: $14
    dec d                                         ; $466a: $15
    ld l, [hl]                                    ; $466b: $6e
    sbc [hl]                                      ; $466c: $9e
    ld c, l                                       ; $466d: $4d
    ld [hl-], a                                   ; $466e: $32
    dec b                                         ; $466f: $05
    rst $38                                       ; $4670: $ff
    ldh [$32], a                                  ; $4671: $e0 $32
    ld h, d                                       ; $4673: $62
    ld b, b                                       ; $4674: $40
    ldh [rNR11], a                                ; $4675: $e0 $11
    or $e3                                        ; $4677: $f6 $e3
    pop af                                        ; $4679: $f1
    ldh [$6e], a                                  ; $467a: $e0 $6e
    add [hl]                                      ; $467c: $86
    ld d, $17                                     ; $467d: $16 $17
    ld l, [hl]                                    ; $467f: $6e
    sbc [hl]                                      ; $4680: $9e
    jr nc, jr_028_4683                            ; $4681: $30 $00

jr_028_4683:
    call z, $82b3                                 ; $4683: $cc $b3 $82
    ld l, [hl]                                    ; $4686: $6e
    add d                                         ; $4687: $82
    ld l, d                                       ; $4688: $6a
    add c                                         ; $4689: $81
    ld c, $0e                                     ; $468a: $0e $0e
    ld l, [hl]                                    ; $468c: $6e
    sbc [hl]                                      ; $468d: $9e
    ret nz                                        ; $468e: $c0

    ldh a, [$80]                                  ; $468f: $f0 $80
    ld l, [hl]                                    ; $4691: $6e
    add e                                         ; $4692: $83
    xor b                                         ; $4693: $a8
    and [hl]                                      ; $4694: $a6
    ld l, [hl]                                    ; $4695: $6e
    sbc e                                         ; $4696: $9b
    add b                                         ; $4697: $80
    pop af                                        ; $4698: $f1
    ld l, [hl]                                    ; $4699: $6e
    add e                                         ; $469a: $83
    ld [hl], b                                    ; $469b: $70
    add e                                         ; $469c: $83
    ld l, [hl]                                    ; $469d: $6e
    sbc l                                         ; $469e: $9d
    ld c, l                                       ; $469f: $4d
    ld [bc], a                                    ; $46a0: $02
    add b                                         ; $46a1: $80
    and b                                         ; $46a2: $a0
    ld [bc], a                                    ; $46a3: $02
    ld a, l                                       ; $46a4: $7d
    and [hl]                                      ; $46a5: $a6
    or $e6                                        ; $46a6: $f6 $e6
    ld l, [hl]                                    ; $46a8: $6e
    add b                                         ; $46a9: $80
    ld [hl], b                                    ; $46aa: $70
    add d                                         ; $46ab: $82
    xor $9e                                       ; $46ac: $ee $9e
    ret nz                                        ; $46ae: $c0

    ldh [$8c], a                                  ; $46af: $e0 $8c
    sub h                                         ; $46b1: $94
    pop hl                                        ; $46b2: $e1
    ld d, h                                       ; $46b3: $54
    push hl                                       ; $46b4: $e5
    ld a, [de]                                    ; $46b5: $1a
    inc e                                         ; $46b6: $1c
    or b                                          ; $46b7: $b0
    add l                                         ; $46b8: $85
    ld [hl], b                                    ; $46b9: $70
    add e                                         ; $46ba: $83
    ret nz                                        ; $46bb: $c0

    rst $38                                       ; $46bc: $ff
    ld bc, $0319                                  ; $46bd: $01 $19 $03
    sub h                                         ; $46c0: $94
    pop hl                                        ; $46c1: $e1
    pop bc                                        ; $46c2: $c1
    add l                                         ; $46c3: $85
    dec de                                        ; $46c4: $1b
    dec e                                         ; $46c5: $1d
    ld a, [c]                                     ; $46c6: $f2
    add l                                         ; $46c7: $85
    jp nz, $c0e3                                  ; $46c8: $c2 $e3 $c0

    rst $38                                       ; $46cb: $ff
    nop                                           ; $46cc: $00
    add c                                         ; $46cd: $81
    adc e                                         ; $46ce: $8b
    ld a, [bc]                                    ; $46cf: $0a
    and $6e                                       ; $46d0: $e6 $6e
    adc b                                         ; $46d2: $88
    ret nz                                        ; $46d3: $c0

    rst $38                                       ; $46d4: $ff
    sub h                                         ; $46d5: $94
    rst $00                                       ; $46d6: $c7
    ld a, [bc]                                    ; $46d7: $0a
    push hl                                       ; $46d8: $e5
    ret nz                                        ; $46d9: $c0

    rst $38                                       ; $46da: $ff
    add b                                         ; $46db: $80
    dec h                                         ; $46dc: $25
    db $d3                                        ; $46dd: $d3
    ld [bc], a                                    ; $46de: $02
    ld c, c                                       ; $46df: $49
    ld a, [hl]                                    ; $46e0: $7e
    db $d3                                        ; $46e1: $d3
    rst $28                                       ; $46e2: $ef
    ld h, l                                       ; $46e3: $65
    ld c, c                                       ; $46e4: $49
    add b                                         ; $46e5: $80
    db $fc                                        ; $46e6: $fc
    inc bc                                        ; $46e7: $03
    ld c, b                                       ; $46e8: $48
    ld [de], a                                    ; $46e9: $12
    cp [hl]                                       ; $46ea: $be
    xor a                                         ; $46eb: $af
    ld b, l                                       ; $46ec: $45
    rst $38                                       ; $46ed: $ff
    ldh [rSC], a                                  ; $46ee: $e0 $02
    push bc                                       ; $46f0: $c5
    ld c, b                                       ; $46f1: $48
    ld l, [hl]                                    ; $46f2: $6e
    ld a, e                                       ; $46f3: $7b
    sub $66                                       ; $46f4: $d6 $66
    ld hl, sp-$18                                 ; $46f6: $f8 $e8
    ld b, e                                       ; $46f8: $43
    ld c, [hl]                                    ; $46f9: $4e
    ld b, [hl]                                    ; $46fa: $46
    rst $38                                       ; $46fb: $ff
    ldh [$b5], a                                  ; $46fc: $e0 $b5
    nop                                           ; $46fe: $00
    cp h                                          ; $46ff: $bc
    ld a, a                                       ; $4700: $7f
    xor h                                         ; $4701: $ac
    inc d                                         ; $4702: $14
    ld b, h                                       ; $4703: $44
    rst $38                                       ; $4704: $ff
    ldh [rP1], a                                  ; $4705: $e0 $00
    ld hl, sp+$5f                                 ; $4707: $f8 $5f
    rst $38                                       ; $4709: $ff
    rst $38                                       ; $470a: $ff
    rst $38                                       ; $470b: $ff
    rst $38                                       ; $470c: $ff
    rst $38                                       ; $470d: $ff
    rst $38                                       ; $470e: $ff
    rst $38                                       ; $470f: $ff
    rst $38                                       ; $4710: $ff
    rst $38                                       ; $4711: $ff
    rst $38                                       ; $4712: $ff
    rst $38                                       ; $4713: $ff
    rst $38                                       ; $4714: $ff
    rst $38                                       ; $4715: $ff
    rst $38                                       ; $4716: $ff
    nop                                           ; $4717: $00
    rst $38                                       ; $4718: $ff
    rst $38                                       ; $4719: $ff
    rst $38                                       ; $471a: $ff
    rst $38                                       ; $471b: $ff
    rst $38                                       ; $471c: $ff
    rst $38                                       ; $471d: $ff
    rst $38                                       ; $471e: $ff
    rst $38                                       ; $471f: $ff
    rst $38                                       ; $4720: $ff
    rst $38                                       ; $4721: $ff
    rst $38                                       ; $4722: $ff
    rst $38                                       ; $4723: $ff
    rst $38                                       ; $4724: $ff
    rst $38                                       ; $4725: $ff
    rst $38                                       ; $4726: $ff
    rst $38                                       ; $4727: $ff
    nop                                           ; $4728: $00
    rst $38                                       ; $4729: $ff
    rst $38                                       ; $472a: $ff
    rst $38                                       ; $472b: $ff
    rst $38                                       ; $472c: $ff
    rst $38                                       ; $472d: $ff
    rst $38                                       ; $472e: $ff
    rst $38                                       ; $472f: $ff
    rst $38                                       ; $4730: $ff
    rst $38                                       ; $4731: $ff
    rst $38                                       ; $4732: $ff
    rst $38                                       ; $4733: $ff
    rst $38                                       ; $4734: $ff
    rst $38                                       ; $4735: $ff
    rst $38                                       ; $4736: $ff
    rst $38                                       ; $4737: $ff
    rst $38                                       ; $4738: $ff
    nop                                           ; $4739: $00
    rst $38                                       ; $473a: $ff
    rst $38                                       ; $473b: $ff
    rst $38                                       ; $473c: $ff
    rst $38                                       ; $473d: $ff
    rst $38                                       ; $473e: $ff
    rst $38                                       ; $473f: $ff
    rst $38                                       ; $4740: $ff
    rst $38                                       ; $4741: $ff
    rst $38                                       ; $4742: $ff
    rst $38                                       ; $4743: $ff
    rst $38                                       ; $4744: $ff
    rst $38                                       ; $4745: $ff
    rst $38                                       ; $4746: $ff
    rst $38                                       ; $4747: $ff
    rst $38                                       ; $4748: $ff
    rst $38                                       ; $4749: $ff
    nop                                           ; $474a: $00
    rst $38                                       ; $474b: $ff
    rst $38                                       ; $474c: $ff
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
    nop                                           ; $475b: $00
    rst $38                                       ; $475c: $ff
    rst $38                                       ; $475d: $ff
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
    nop                                           ; $476c: $00
    rst $38                                       ; $476d: $ff
    rst $38                                       ; $476e: $ff
    rst $38                                       ; $476f: $ff
    rst $38                                       ; $4770: $ff
    rst $38                                       ; $4771: $ff
    rst $38                                       ; $4772: $ff
    rst $38                                       ; $4773: $ff
    rst $38                                       ; $4774: $ff
    rst $38                                       ; $4775: $ff
    rst $38                                       ; $4776: $ff
    rst $38                                       ; $4777: $ff
    rst $38                                       ; $4778: $ff
    rst $38                                       ; $4779: $ff
    rst $38                                       ; $477a: $ff
    rst $38                                       ; $477b: $ff
    rst $38                                       ; $477c: $ff
    nop                                           ; $477d: $00
    rst $38                                       ; $477e: $ff
    rst $38                                       ; $477f: $ff
    rst $38                                       ; $4780: $ff
    rst $38                                       ; $4781: $ff
    rst $38                                       ; $4782: $ff
    rst $38                                       ; $4783: $ff
    rst $38                                       ; $4784: $ff
    rst $38                                       ; $4785: $ff
    rst $38                                       ; $4786: $ff
    rst $38                                       ; $4787: $ff
    rst $38                                       ; $4788: $ff
    jp hl                                         ; $4789: $e9


    nop                                           ; $478a: $00
    nop                                           ; $478b: $00
    nop                                           ; $478c: $00
    ld d, a                                       ; $478d: $57
    inc l                                         ; $478e: $2c
    inc l                                         ; $478f: $2c
    inc c                                         ; $4790: $0c
    rst $38                                       ; $4791: $ff
    ldh [$0d], a                                  ; $4792: $e0 $0d
    rst $38                                       ; $4794: $ff
    ldh [$2d], a                                  ; $4795: $e0 $2d
    rst $38                                       ; $4797: $ff
    ldh [rTIMA], a                                ; $4798: $e0 $05
    inc l                                         ; $479a: $2c
    rst $38                                       ; $479b: $ff
    ldh [$0c], a                                  ; $479c: $e0 $0c
    ei                                            ; $479e: $fb
    pop hl                                        ; $479f: $e1
    rst $38                                       ; $47a0: $ff
    rst $38                                       ; $47a1: $ff
    and $e5                                       ; $47a2: $e6 $e5
    pop bc                                        ; $47a4: $c1
    push hl                                       ; $47a5: $e5
    ret nz                                        ; $47a6: $c0

    ld [c], a                                     ; $47a7: $e2
    ret z                                         ; $47a8: $c8

    cp a                                          ; $47a9: $bf
    ld [c], a                                     ; $47aa: $e2
    rst $38                                       ; $47ab: $ff
    rst $38                                       ; $47ac: $ff
    pop bc                                        ; $47ad: $c1
    ld [$c10d], a                                 ; $47ae: $ea $0d $c1
    db $e3                                        ; $47b1: $e3
    ret nz                                        ; $47b2: $c0

    db $e3                                        ; $47b3: $e3
    dec l                                         ; $47b4: $2d
    inc c                                         ; $47b5: $0c
    ld bc, $cc0d                                  ; $47b6: $01 $0d $cc
    rst $38                                       ; $47b9: $ff
    ret nz                                        ; $47ba: $c0

    rst $38                                       ; $47bb: $ff
    rst $38                                       ; $47bc: $ff
    rst $38                                       ; $47bd: $ff
    ret nz                                        ; $47be: $c0

    rst $38                                       ; $47bf: $ff
    rst $38                                       ; $47c0: $ff
    rst $38                                       ; $47c1: $ff
    ret nz                                        ; $47c2: $c0

    rst $38                                       ; $47c3: $ff
    rst $38                                       ; $47c4: $ff
    rst $38                                       ; $47c5: $ff
    rlca                                          ; $47c6: $07
    inc c                                         ; $47c7: $0c
    inc c                                         ; $47c8: $0c
    ld a, [bc]                                    ; $47c9: $0a
    rst $38                                       ; $47ca: $ff
    ld [c], a                                     ; $47cb: $e2
    ld a, d                                       ; $47cc: $7a
    pop bc                                        ; $47cd: $c1
    or $e3                                        ; $47ce: $f6 $e3
    call z, $c0ff                                 ; $47d0: $cc $ff $c0
    rst $38                                       ; $47d3: $ff
    db $fc                                        ; $47d4: $fc
    rst $38                                       ; $47d5: $ff
    rst $38                                       ; $47d6: $ff
    ret nz                                        ; $47d7: $c0

    db $eb                                        ; $47d8: $eb
    inc c                                         ; $47d9: $0c
    inc c                                         ; $47da: $0c
    dec bc                                        ; $47db: $0b
    dec bc                                        ; $47dc: $0b
    dec hl                                        ; $47dd: $2b
    dec hl                                        ; $47de: $2b
    inc bc                                        ; $47df: $03
    inc l                                         ; $47e0: $2c
    inc l                                         ; $47e1: $2c
    ret nz                                        ; $47e2: $c0

    rst $38                                       ; $47e3: $ff
    ret nz                                        ; $47e4: $c0

    rst $38                                       ; $47e5: $ff
    call z, Call_028_40ff                         ; $47e6: $cc $ff $40
    pop af                                        ; $47e9: $f1
    ld a, [$6fe7]                                 ; $47ea: $fa $e7 $6f
    and d                                         ; $47ed: $a2
    nop                                           ; $47ee: $00
    ld l, e                                       ; $47ef: $6b
    and b                                         ; $47f0: $a0
    call nz, $c0ff                                ; $47f1: $c4 $ff $c0
    rst $38                                       ; $47f4: $ff
    rst $38                                       ; $47f5: $ff
    rst $38                                       ; $47f6: $ff
    ret nz                                        ; $47f7: $c0

    rst $28                                       ; $47f8: $ef
    pop bc                                        ; $47f9: $c1
    db $e4                                        ; $47fa: $e4
    ret nz                                        ; $47fb: $c0

    rst $38                                       ; $47fc: $ff
    add b                                         ; $47fd: $80
    ld a, [$e57c]                                 ; $47fe: $fa $7c $e5
    add l                                         ; $4801: $85
    cp [hl]                                       ; $4802: $be
    cp $0d                                        ; $4803: $fe $0d
    ld a, [bc]                                    ; $4805: $0a
    ld a, [bc]                                    ; $4806: $0a
    ld c, $0e                                     ; $4807: $0e $0e
    inc a                                         ; $4809: $3c
    jp hl                                         ; $480a: $e9


    add e                                         ; $480b: $83
    dec c                                         ; $480c: $0d
    dec c                                         ; $480d: $0d
    ld l, [hl]                                    ; $480e: $6e
    adc l                                         ; $480f: $8d
    ret nz                                        ; $4810: $c0

    rst $38                                       ; $4811: $ff
    ret nz                                        ; $4812: $c0

    xor $6e                                       ; $4813: $ee $6e
    sbc a                                         ; $4815: $9f
    ld b, c                                       ; $4816: $41
    add l                                         ; $4817: $85
    ld c, h                                       ; $4818: $4c
    ld b, b                                       ; $4819: $40
    pop bc                                        ; $481a: $c1
    and e                                         ; $481b: $a3
    cp $61                                        ; $481c: $fe $61
    or l                                          ; $481e: $b5
    and e                                         ; $481f: $a3
    rst $30                                       ; $4820: $f7
    pop hl                                        ; $4821: $e1
    ld l, $bf                                     ; $4822: $2e $bf
    ld bc, $8c87                                  ; $4824: $01 $87 $8c
    rst $38                                       ; $4827: $ff
    ldh [$80], a                                  ; $4828: $e0 $80
    cp [hl]                                       ; $482a: $be
    ld h, e                                       ; $482b: $63
    db $f4                                        ; $482c: $f4
    db $e3                                        ; $482d: $e3
    ret nz                                        ; $482e: $c0

    rst $38                                       ; $482f: $ff
    pop bc                                        ; $4830: $c1
    ld l, h                                       ; $4831: $6c
    add l                                         ; $4832: $85
    ld [c], a                                     ; $4833: $e2
    ei                                            ; $4834: $fb
    ld [$e6c0], a                                 ; $4835: $ea $c0 $e6
    ld c, $01                                     ; $4838: $0e $01
    ld c, $ae                                     ; $483a: $0e $ae
    add e                                         ; $483c: $83
    cp c                                          ; $483d: $b9
    rst $10                                       ; $483e: $d7
    ret nz                                        ; $483f: $c0

    rst $38                                       ; $4840: $ff
    ld b, b                                       ; $4841: $40
    db $fd                                        ; $4842: $fd
    ret nz                                        ; $4843: $c0

    xor l                                         ; $4844: $ad
    ldh a, [$ef]                                  ; $4845: $f0 $ef
    ret nz                                        ; $4847: $c0

    rst $38                                       ; $4848: $ff
    ld [$ffc0], sp                                ; $4849: $08 $c0 $ff
    ret nz                                        ; $484c: $c0

    rst $38                                       ; $484d: $ff
    ld a, d                                       ; $484e: $7a
    xor l                                         ; $484f: $ad
    dec bc                                        ; $4850: $0b
    or b                                          ; $4851: $b0
    add h                                         ; $4852: $84
    ret nz                                        ; $4853: $c0

    rst $38                                       ; $4854: $ff
    ret nz                                        ; $4855: $c0

    rst $38                                       ; $4856: $ff
    ret nz                                        ; $4857: $c0

    ei                                            ; $4858: $fb
    ld [$e1d4], sp                                ; $4859: $08 $d4 $e1
    ld [bc], a                                    ; $485c: $02
    and a                                         ; $485d: $a7
    ld b, b                                       ; $485e: $40
    ld sp, hl                                     ; $485f: $f9
    ld l, h                                       ; $4860: $6c
    rst $38                                       ; $4861: $ff
    jp hl                                         ; $4862: $e9


    ret nz                                        ; $4863: $c0

    rst $38                                       ; $4864: $ff
    nop                                           ; $4865: $00
    ei                                            ; $4866: $fb
    or e                                          ; $4867: $b3
    ld [c], a                                     ; $4868: $e2
    nop                                           ; $4869: $00
    ld b, b                                       ; $486a: $40
    adc l                                         ; $486b: $8d
    ld c, d                                       ; $486c: $4a
    rst $20                                       ; $486d: $e7
    ret nz                                        ; $486e: $c0

    rst $18                                       ; $486f: $df
    nop                                           ; $4870: $00
    sub c                                         ; $4871: $91
    ret nz                                        ; $4872: $c0

    rst $38                                       ; $4873: $ff
    ret nz                                        ; $4874: $c0

    ld c, [hl]                                    ; $4875: $4e
    add d                                         ; $4876: $82
    adc d                                         ; $4877: $8a
    ld [hl-], a                                   ; $4878: $32
    rst $08                                       ; $4879: $cf
    sub c                                         ; $487a: $91
    ld c, $c0                                     ; $487b: $0e $c0
    rst $38                                       ; $487d: $ff
    ret nz                                        ; $487e: $c0

    rst $38                                       ; $487f: $ff
    add b                                         ; $4880: $80
    sbc b                                         ; $4881: $98
    call z, $f0ff                                 ; $4882: $cc $ff $f0
    inc l                                         ; $4885: $2c
    ld b, c                                       ; $4886: $41
    db $ec                                        ; $4887: $ec
    ldh [rIE], a                                  ; $4888: $e0 $ff
    and $96                                       ; $488a: $e6 $96
    jp $9980                                      ; $488c: $c3 $80 $99


    db $fc                                        ; $488f: $fc
    db $ec                                        ; $4890: $ec
    ret nz                                        ; $4891: $c0

    db $e3                                        ; $4892: $e3
    xor h                                         ; $4893: $ac
    xor h                                         ; $4894: $ac
    xor h                                         ; $4895: $ac
    ld b, $fc                                     ; $4896: $06 $fc
    pop hl                                        ; $4898: $e1
    xor h                                         ; $4899: $ac
    xor h                                         ; $489a: $ac
    ld b, c                                       ; $489b: $41
    dec e                                         ; $489c: $1d
    db $fc                                        ; $489d: $fc
    rst $28                                       ; $489e: $ef
    inc l                                         ; $489f: $2c
    add d                                         ; $48a0: $82
    inc bc                                        ; $48a1: $03
    ld a, a                                       ; $48a2: $7f
    ret nz                                        ; $48a3: $c0

    rst $38                                       ; $48a4: $ff
    nop                                           ; $48a5: $00
    ret nz                                        ; $48a6: $c0

    rst $38                                       ; $48a7: $ff
    rst $38                                       ; $48a8: $ff
    rst $30                                       ; $48a9: $f7
    jp $c0ff                                      ; $48aa: $c3 $ff $c0


    rst $38                                       ; $48ad: $ff
    ret nz                                        ; $48ae: $c0

    rst $38                                       ; $48af: $ff
    ret nz                                        ; $48b0: $c0

    rst $38                                       ; $48b1: $ff
    ret nz                                        ; $48b2: $c0

    rst $38                                       ; $48b3: $ff
    ret nz                                        ; $48b4: $c0

    rst $38                                       ; $48b5: $ff
    nop                                           ; $48b6: $00
    ret nz                                        ; $48b7: $c0

    rst $38                                       ; $48b8: $ff
    ret nz                                        ; $48b9: $c0

    rst $38                                       ; $48ba: $ff
    ret nz                                        ; $48bb: $c0

    rst $38                                       ; $48bc: $ff
    ret nz                                        ; $48bd: $c0

    rst $38                                       ; $48be: $ff
    ret nz                                        ; $48bf: $c0

    rst $38                                       ; $48c0: $ff
    ret nz                                        ; $48c1: $c0

    rst $38                                       ; $48c2: $ff
    ret nz                                        ; $48c3: $c0

    rst $38                                       ; $48c4: $ff
    ret nz                                        ; $48c5: $c0

    rst $38                                       ; $48c6: $ff
    nop                                           ; $48c7: $00
    ret nz                                        ; $48c8: $c0

    cp b                                          ; $48c9: $b8
    call z, $c0ff                                 ; $48ca: $cc $ff $c0
    rst $38                                       ; $48cd: $ff
    rst $38                                       ; $48ce: $ff
    rst $38                                       ; $48cf: $ff
    ret nz                                        ; $48d0: $c0

    rst $38                                       ; $48d1: $ff
    rst $38                                       ; $48d2: $ff
    rst $38                                       ; $48d3: $ff
    ret nz                                        ; $48d4: $c0

    rst $38                                       ; $48d5: $ff
    rst $38                                       ; $48d6: $ff
    rst $38                                       ; $48d7: $ff
    nop                                           ; $48d8: $00
    ret nz                                        ; $48d9: $c0

    rst $38                                       ; $48da: $ff
    ret nz                                        ; $48db: $c0

    rst $38                                       ; $48dc: $ff
    ret nz                                        ; $48dd: $c0

    rst $38                                       ; $48de: $ff
    ret nz                                        ; $48df: $c0

    rst $38                                       ; $48e0: $ff
    ret nz                                        ; $48e1: $c0

    rst $38                                       ; $48e2: $ff
    ret nz                                        ; $48e3: $c0

    rst $38                                       ; $48e4: $ff
    ret nz                                        ; $48e5: $c0

    rst $38                                       ; $48e6: $ff
    ret nz                                        ; $48e7: $c0

    rst $38                                       ; $48e8: $ff
    nop                                           ; $48e9: $00
    ret nz                                        ; $48ea: $c0

    rst $38                                       ; $48eb: $ff
    ret nz                                        ; $48ec: $c0

    rst $38                                       ; $48ed: $ff
    rst $38                                       ; $48ee: $ff
    rst $38                                       ; $48ef: $ff
    ret nz                                        ; $48f0: $c0

    rst $38                                       ; $48f1: $ff
    rst $38                                       ; $48f2: $ff
    rst $38                                       ; $48f3: $ff
    ret nz                                        ; $48f4: $c0

    rst $38                                       ; $48f5: $ff
    rst $38                                       ; $48f6: $ff
    rst $38                                       ; $48f7: $ff
    ret nz                                        ; $48f8: $c0

    rst $38                                       ; $48f9: $ff
    nop                                           ; $48fa: $00
    ret nz                                        ; $48fb: $c0

    rst $38                                       ; $48fc: $ff
    ret nz                                        ; $48fd: $c0

    rst $38                                       ; $48fe: $ff
    ret nz                                        ; $48ff: $c0

    rst $38                                       ; $4900: $ff
    ret nz                                        ; $4901: $c0

    rst $38                                       ; $4902: $ff
    ret nz                                        ; $4903: $c0

    rst $38                                       ; $4904: $ff
    ret nz                                        ; $4905: $c0

    rst $38                                       ; $4906: $ff
    ret nz                                        ; $4907: $c0

    rst $38                                       ; $4908: $ff
    ret nz                                        ; $4909: $c0

    rst $38                                       ; $490a: $ff
    nop                                           ; $490b: $00
    ret nz                                        ; $490c: $c0

    rst $38                                       ; $490d: $ff
    call z, $c0ff                                 ; $490e: $cc $ff $c0
    rst $38                                       ; $4911: $ff
    rst $38                                       ; $4912: $ff
    rst $38                                       ; $4913: $ff
    ret nz                                        ; $4914: $c0

    rst $38                                       ; $4915: $ff
    rst $38                                       ; $4916: $ff
    rst $38                                       ; $4917: $ff
    ret nz                                        ; $4918: $c0

    rst $38                                       ; $4919: $ff
    rst $38                                       ; $491a: $ff
    rst $38                                       ; $491b: $ff
    nop                                           ; $491c: $00
    ret nz                                        ; $491d: $c0

    rst $38                                       ; $491e: $ff
    ret nz                                        ; $491f: $c0

    ei                                            ; $4920: $fb
    nop                                           ; $4921: $00
    nop                                           ; $4922: $00
    nop                                           ; $4923: $00
    rla                                           ; $4924: $17
    nop                                           ; $4925: $00
    nop                                           ; $4926: $00
    rrca                                          ; $4927: $0f
    rst $38                                       ; $4928: $ff
    ld [c], a                                     ; $4929: $e2
    nop                                           ; $492a: $00
    rst $38                                       ; $492b: $ff
    push af                                       ; $492c: $f5
    pop hl                                        ; $492d: $e1
    db $e3                                        ; $492e: $e3
    rst $18                                       ; $492f: $df
    or $00                                        ; $4930: $f6 $00
    add $e5                                       ; $4932: $c6 $e5
    cp [hl]                                       ; $4934: $be
    push af                                       ; $4935: $f5
    and a                                         ; $4936: $a7
    pop hl                                        ; $4937: $e1
    and d                                         ; $4938: $a2
    ld [c], a                                     ; $4939: $e2
    ldh [$f7], a                                  ; $493a: $e0 $f7
    add c                                         ; $493c: $81
    db $e3                                        ; $493d: $e3
    ret nz                                        ; $493e: $c0

    ld hl, sp-$09                                 ; $493f: $f8 $f7
    db $eb                                        ; $4941: $eb
    ld h, b                                       ; $4942: $60
    ldh [rIE], a                                  ; $4943: $e0 $ff
    add b                                         ; $4945: $80
    db $eb                                        ; $4946: $eb
    ld e, a                                       ; $4947: $5f
    push hl                                       ; $4948: $e5
    rla                                           ; $4949: $17
    di                                            ; $494a: $f3
    add b                                         ; $494b: $80
    pop hl                                        ; $494c: $e1
    dec bc                                        ; $494d: $0b
    dec bc                                        ; $494e: $0b
    ld a, d                                       ; $494f: $7a
    db $e4                                        ; $4950: $e4
    nop                                           ; $4951: $00
    or $d0                                        ; $4952: $f6 $d0
    ld [c], a                                     ; $4954: $e2
    pop bc                                        ; $4955: $c1
    ldh [$e0], a                                  ; $4956: $e0 $e0
    db $dd                                        ; $4958: $dd
    push bc                                       ; $4959: $c5
    cp d                                          ; $495a: $ba
    pop hl                                        ; $495b: $e1
    add b                                         ; $495c: $80
    di                                            ; $495d: $f3
    xor $f4                                       ; $495e: $ee $f4
    and a                                         ; $4960: $a7
    ret                                           ; $4961: $c9


    nop                                           ; $4962: $00
    sbc c                                         ; $4963: $99
    jp $edc0                                      ; $4964: $c3 $c0 $ed


    and a                                         ; $4967: $a7
    push hl                                       ; $4968: $e5
    ret nz                                        ; $4969: $c0

    ei                                            ; $496a: $fb
    ld e, [hl]                                    ; $496b: $5e
    rst $00                                       ; $496c: $c7
    add b                                         ; $496d: $80
    db $ec                                        ; $496e: $ec
    cpl                                           ; $496f: $2f
    xor $60                                       ; $4970: $ee $60
    rst $38                                       ; $4972: $ff
    nop                                           ; $4973: $00
    ld hl, $7cd1                                  ; $4974: $21 $d1 $7c
    jp $db16                                      ; $4977: $c3 $16 $db


    jp c, $ffb8                                   ; $497a: $da $b8 $ff

    rst $38                                       ; $497d: $ff
    rst $38                                       ; $497e: $ff
    rst $38                                       ; $497f: $ff
    rst $38                                       ; $4980: $ff
    rst $38                                       ; $4981: $ff
    rst $38                                       ; $4982: $ff
    rst $38                                       ; $4983: $ff
    nop                                           ; $4984: $00
    rst $38                                       ; $4985: $ff
    rst $38                                       ; $4986: $ff
    rst $38                                       ; $4987: $ff
    rst $38                                       ; $4988: $ff
    rst $38                                       ; $4989: $ff
    rst $38                                       ; $498a: $ff
    rst $38                                       ; $498b: $ff
    rst $38                                       ; $498c: $ff
    rst $38                                       ; $498d: $ff
    rst $38                                       ; $498e: $ff
    rst $38                                       ; $498f: $ff
    rst $38                                       ; $4990: $ff
    rst $38                                       ; $4991: $ff
    rst $38                                       ; $4992: $ff
    rst $38                                       ; $4993: $ff
    rst $38                                       ; $4994: $ff
    nop                                           ; $4995: $00
    rst $38                                       ; $4996: $ff
    cp $00                                        ; $4997: $fe $00
    nop                                           ; $4999: $00
    nop                                           ; $499a: $00
    dec b                                         ; $499b: $05
    db $10                                        ; $499c: $10
    rst $38                                       ; $499d: $ff
    db $e4                                        ; $499e: $e4
    nop                                           ; $499f: $00
    rst $38                                       ; $49a0: $ff
    db $f4                                        ; $49a1: $f4
    push hl                                       ; $49a2: $e5
    db $e4                                        ; $49a3: $e4
    rst $18                                       ; $49a4: $df
    or $c6                                        ; $49a5: $f6 $c6
    push hl                                       ; $49a7: $e5
    cp [hl]                                       ; $49a8: $be
    push af                                       ; $49a9: $f5
    inc c                                         ; $49aa: $0c
    and a                                         ; $49ab: $a7
    and $e0                                       ; $49ac: $e6 $e0
    ld hl, sp+$1c                                 ; $49ae: $f8 $1c
    inc e                                         ; $49b0: $1c
    ldh [$fb], a                                  ; $49b1: $e0 $fb
    ret nz                                        ; $49b3: $c0

    db $fd                                        ; $49b4: $fd
    and b                                         ; $49b5: $a0
    ei                                            ; $49b6: $fb
    ld e, a                                       ; $49b7: $5f
    push hl                                       ; $49b8: $e5
    add b                                         ; $49b9: $80
    dec [hl]                                      ; $49ba: $35
    pop hl                                        ; $49bb: $e1
    rla                                           ; $49bc: $17
    rst $28                                       ; $49bd: $ef
    rlca                                          ; $49be: $07
    ldh [rSB], a                                  ; $49bf: $e0 $01
    db $e3                                        ; $49c1: $e3
    rla                                           ; $49c2: $17
    and $f5                                       ; $49c3: $e6 $f5
    set 4, b                                      ; $49c5: $cb $e0
    pop bc                                        ; $49c7: $c1
    ld de, $1101                                  ; $49c8: $11 $01 $11
    db $dd                                        ; $49cb: $dd
    add $ba                                       ; $49cc: $c6 $ba
    pop hl                                        ; $49ce: $e1
    add b                                         ; $49cf: $80
    di                                            ; $49d0: $f3
    xor $f4                                       ; $49d1: $ee $f4
    and a                                         ; $49d3: $a7
    jp z, $c299                                   ; $49d4: $ca $99 $c2

    ret nz                                        ; $49d7: $c0

    xor $00                                       ; $49d8: $ee $00
    dec a                                         ; $49da: $3d
    rst $20                                       ; $49db: $e7
    ldh [$f3], a                                  ; $49dc: $e0 $f3
    jr @-$18                                      ; $49de: $18 $e6

    ldh [$f2], a                                  ; $49e0: $e0 $f2
    cpl                                           ; $49e2: $2f
    xor $60                                       ; $49e3: $ee $60
    or $f7                                        ; $49e5: $f6 $f7
    add $20                                       ; $49e7: $c6 $20
    db $ed                                        ; $49e9: $ed
    ld b, $fc                                     ; $49ea: $06 $fc
    and h                                         ; $49ec: $a4
    inc de                                        ; $49ed: $13
    inc de                                        ; $49ee: $13
    push af                                       ; $49ef: $f5
    cp e                                          ; $49f0: $bb
    rst $38                                       ; $49f1: $ff
    rst $38                                       ; $49f2: $ff
    rst $38                                       ; $49f3: $ff
    rst $38                                       ; $49f4: $ff
    rst $38                                       ; $49f5: $ff
    rst $38                                       ; $49f6: $ff
    rst $38                                       ; $49f7: $ff
    rst $38                                       ; $49f8: $ff
    nop                                           ; $49f9: $00
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
    rst $38                                       ; $4a06: $ff
    rst $38                                       ; $4a07: $ff
    rst $38                                       ; $4a08: $ff
    rst $38                                       ; $4a09: $ff
    nop                                           ; $4a0a: $00
    rst $38                                       ; $4a0b: $ff
    rst $38                                       ; $4a0c: $ff
    rst $38                                       ; $4a0d: $ff
    ld hl, sp+$00                                 ; $4a0e: $f8 $00
    nop                                           ; $4a10: $00
    nop                                           ; $4a11: $00
    cp $01                                        ; $4a12: $fe $01
    nop                                           ; $4a14: $00
    rst $38                                       ; $4a15: $ff
    rst $38                                       ; $4a16: $ff
    rst $38                                       ; $4a17: $ff
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
    nop                                           ; $4a23: $00
    rst $38                                       ; $4a24: $ff
    rst $38                                       ; $4a25: $ff
    rst $38                                       ; $4a26: $ff
    rst $38                                       ; $4a27: $ff
    rst $38                                       ; $4a28: $ff
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
    nop                                           ; $4a34: $00
    rst $38                                       ; $4a35: $ff
    rst $38                                       ; $4a36: $ff
    rst $38                                       ; $4a37: $ff
    rst $38                                       ; $4a38: $ff
    rst $38                                       ; $4a39: $ff
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
    nop                                           ; $4a45: $00
    rst $38                                       ; $4a46: $ff
    rst $38                                       ; $4a47: $ff
    rst $38                                       ; $4a48: $ff
    rst $38                                       ; $4a49: $ff
    rst $38                                       ; $4a4a: $ff
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
    nop                                           ; $4a56: $00
    rst $38                                       ; $4a57: $ff
    rst $38                                       ; $4a58: $ff
    rst $38                                       ; $4a59: $ff
    rst $38                                       ; $4a5a: $ff
    rst $38                                       ; $4a5b: $ff
    rst $38                                       ; $4a5c: $ff
    rst $38                                       ; $4a5d: $ff
    rst $38                                       ; $4a5e: $ff
    rst $38                                       ; $4a5f: $ff
    rst $38                                       ; $4a60: $ff
    rst $38                                       ; $4a61: $ff
    rst $38                                       ; $4a62: $ff
    rst $38                                       ; $4a63: $ff
    rst $38                                       ; $4a64: $ff
    rst $38                                       ; $4a65: $ff
    rst $38                                       ; $4a66: $ff
    nop                                           ; $4a67: $00
    rst $38                                       ; $4a68: $ff
    rst $38                                       ; $4a69: $ff
    rst $38                                       ; $4a6a: $ff
    rst $38                                       ; $4a6b: $ff
    rst $38                                       ; $4a6c: $ff
    rst $38                                       ; $4a6d: $ff
    rst $38                                       ; $4a6e: $ff
    rst $38                                       ; $4a6f: $ff
    rst $38                                       ; $4a70: $ff
    rst $38                                       ; $4a71: $ff
    rst $38                                       ; $4a72: $ff
    rst $38                                       ; $4a73: $ff
    rst $38                                       ; $4a74: $ff
    rst $38                                       ; $4a75: $ff
    rst $38                                       ; $4a76: $ff
    rst $38                                       ; $4a77: $ff
    nop                                           ; $4a78: $00
    rst $38                                       ; $4a79: $ff
    rst $38                                       ; $4a7a: $ff
    rst $38                                       ; $4a7b: $ff
    rst $38                                       ; $4a7c: $ff
    rst $38                                       ; $4a7d: $ff
    rst $38                                       ; $4a7e: $ff
    rst $38                                       ; $4a7f: $ff
    rst $38                                       ; $4a80: $ff
    rst $38                                       ; $4a81: $ff
    rst $38                                       ; $4a82: $ff
    rst $38                                       ; $4a83: $ff
    rst $38                                       ; $4a84: $ff
    rst $38                                       ; $4a85: $ff
    rst $38                                       ; $4a86: $ff
    rst $38                                       ; $4a87: $ff
    rst $38                                       ; $4a88: $ff
    nop                                           ; $4a89: $00
    rst $38                                       ; $4a8a: $ff
    rst $38                                       ; $4a8b: $ff
    rst $38                                       ; $4a8c: $ff
    rst $38                                       ; $4a8d: $ff
    rst $38                                       ; $4a8e: $ff
    rst $38                                       ; $4a8f: $ff
    rst $38                                       ; $4a90: $ff
    rst $38                                       ; $4a91: $ff
    rst $38                                       ; $4a92: $ff
    rst $38                                       ; $4a93: $ff
    rst $38                                       ; $4a94: $ff
    db $e4                                        ; $4a95: $e4
    nop                                           ; $4a96: $00
    nop                                           ; $4a97: $00
    nop                                           ; $4a98: $00

    db $00, $00, $00, $00, $26, $12, $00, $00, $a8, $10, $00, $00, $ad, $35, $94, $4e
    db $08, $25, $08, $25, $08, $25, $08, $25, $96, $7e, $af, $79, $e9, $58, $ff, $7f
    db $ff, $7f, $54, $5a, $8e, $41, $a7, $24, $ff, $4f, $59, $22, $b2, $21, $e9, $14
    db $39, $7f, $50, $62, $69, $41, $60, $7f, $9f, $02, $1e, $00, $03, $75, $ff, $7f
    db $08, $25, $08, $25, $08, $25, $08, $25, $ff, $a6, $d4, $db, $a3, $b8, $d4, $dd
    db $ba, $ff, $bf, $df, $fc, $9f, $99, $d1, $f0, $80, $ff, $3f, $10, $ff, $e0, $6f
    db $14, $5f, $ac, $ff, $ff, $fc, $fd, $fe, $d7, $fc, $85, $fe, $ff, $90, $c0, $c8
    db $91, $91, $df, $ce, $af, $ff, $a7, $d7, $d0, $a8, $80, $ff, $9f, $ff, $ff, $d6
    db $ad, $a5, $de, $76, $8d, $ed, $1a, $ff, $f8, $f7, $b1, $0e, $00, $ff, $fc, $ff
    db $7f, $ff, $00, $81, $00, $bd, $00, $a5, $fe, $e0, $05, $bd, $f6, $e0, $ff, $fe
    db $e0, $f0, $ff, $f0, $ff, $f0, $ff, $f0, $ff, $00, $f0, $ff, $f0, $ff, $f0, $ff
    db $f0, $ff, $f0, $ff, $f0, $ff, $f0, $ff, $f0, $ff, $fe, $f0, $f3, $d0, $ff, $ff
    db $ff, $77, $c3, $c7, $ff, $f8, $40, $ff, $7f, $ff, $37, $c0, $41, $ff, $ff, $83
    db $7d, $7f, $fd, $fd, $87, $ff, $ff, $85, $ed, $87, $dd, $87, $ad, $87, $cd, $bb
    db $87, $1d, $fa, $e0, $4d, $87, $0d, $fe, $e1, $ff, $ff, $69, $97, $ff, $ff, $8b
    db $80, $00, $7f, $ff, $1d, $64, $96, $e6, $0f, $70, $ab, $c8, $ff, $80, $ff, $89
    db $f3, $d1, $01, $00, $fe, $ff, $c0, $3e, $e1, $1f, $f8, $06, $7d, $83, $ff, $9d
    db $63, $81, $bf, $ba, $d9, $98, $d8, $fb, $81, $e2, $e6, $e0, $f6, $84, $f8, $80
    db $ff, $ff, $f4, $f4, $85, $97, $21, $23, $71, $73, $ff, $21, $a7, $41, $5f, $01
    db $7f, $01, $ff, $ff, $2f, $2f, $3e, $01, $75, $0a, $ff, $3f, $ff, $ef, $20, $ba
    db $65, $f4, $2b, $b8, $67, $ff, $70, $af, $aa, $55, $40, $bf, $fe, $fd, $ff, $54
    db $ad, $86, $7d, $06, $fd, $06, $fd, $ff, $04, $ff, $a8, $77, $70, $ac, $a5, $7b
    db $ff, $34, $e8, $a5, $78, $24, $f8, $a6, $7f, $ff, $20, $ff, $06, $fd, $54, $3f
    db $f6, $fd, $ff, $f4, $5f, $54, $5f, $04, $5f, $d4, $ff, $f7, $04, $ff, $20, $fe
    db $e0, $28, $f0, $a5, $70, $d5, $21, $fc, $e0, $a0, $fa, $e0, $04, $de, $e0, $24
    db $1f, $ff, $56, $1d, $06, $1d, $54, $1d, $16, $5d, $df, $56, $1d, $a0, $70, $25
    db $dc, $e0, $30, $ef, $fe, $fc, $e1, $60, $be, $23, $fd, $34, $1f, $e6, $ff, $fd
    db $0c, $f7, $04, $ff, $0c, $b7, $44, $ff, $7f, $8c, $f7, $14, $ef, $62, $bf, $20
    db $ff, $ff, $60, $bf, $b0, $6f, $60, $bf, $b5, $ff, $6a, $7a, $a5, $ff, $3f, $0c
    db $f7, $16, $fd, $ed, $fc, $e1, $2c, $d7, $5e, $a5, $be, $45, $3f, $fe, $fd, $f5
    db $0a, $6a, $15, $ed, $c0, $f2, $c0, $ff, $7f, $ff, $d0, $2f, $ff, $ff, $50, $af
    db $6d, $00, $f1, $e1, $ff, $fe, $fe, $e0, $0b, $f4, $d3, $c0, $ff, $80, $d4, $ab
    db $ee, $94, $dc, $a8, $b8, $ff, $c8, $c8, $a8, $a8, $c8, $cc, $a8, $f4, $ff, $00
    db $1e, $e0, $be, $10, $1e, $88, $8f, $ff, $88, $5e, $e8, $ef, $08, $1e, $08, $03
    db $ff, $fd, $fd, $ff, $45, $cf, $f5, $4f, $45, $ff, $4f, $05, $4f, $4d, $ff, $d1
    db $2f, $83, $fe, $f0, $e0, $f5, $8f, $85, $7f, $05, $ff, $fd, $ff, $ff, $41, $bf
    db $5d, $ff, $e8, $1f, $64, $ff, $9f, $0e, $df, $e2, $9c, $ea, $fd, $f6, $fa, $a8
    db $e2, $d2, $80, $c0, $5d, $eb, $cb, $e9, $4d, $7f, $eb, $43, $e9, $6b, $ff, $65
    db $80, $93, $e2, $ee, $8e, $e2, $aa, $ff, $94, $86, $e2, $a8, $ff, $f4, $ff, $ff
    db $e8, $ff, $50, $ff, $82, $fd, $17, $fb, $e8, $fe, $67, $e0, $fe, $fe, $c5, $c4
    db $d4, $ff, $c4, $c7, $c7, $ff, $ff, $cc, $cc, $ad, $ff, $8d, $ff, $ff, $66, $66
    db $99, $00, $66, $f7, $00, $99, $99, $f6, $e2, $99, $ad, $8d, $d6, $9f, $c6, $d6
    db $c6, $ad, $8d, $f8, $e5, $34, $e1, $df, $7f, $df, $fb, $fb, $ff, $ff, $ef, $ef
    db $28, $e1, $fc, $ed, $a2, $fa, $ee, $55, $aa, $00, $ff, $aa, $55, $3f, $55, $aa
    db $ff, $00, $aa, $55, $dd, $e3, $d8, $e5, $ff, $81, $80, $0b, $00, $15, $00, $2f
    db $00, $b7, $55, $00, $3f, $fc, $e0, $fe, $01, $ad, $a1, $39, $ff, $d8, $22, $ec
    db $20, $ff, $00, $d9, $12, $f7, $ca, $20, $cc, $9d, $a1, $42, $81, $24, $18, $fb
    db $00, $7e, $93, $a0, $e7, $42, $81, $00, $e7, $ff, $21, $ce, $10, $ce, $00, $dc
    db $00, $dc, $ff, $10, $ce, $21, $ce, $00, $e7, $00, $7f, $0f, $00, $7f, $80, $7f
    db $77, $a1, $fa, $e0, $f4, $e0, $d6, $e0, $9e, $7c, $ea, $04, $d8, $00, $9f, $a5
    db $e0, $e0, $e6, $00, $f7, $ff, $01, $fe, $70, $e1, $01, $fe, $ab, $54, $ff, $55
    db $aa, $fe, $01, $aa, $55, $fe, $01, $fe, $fa, $e0, $01, $ff, $00, $54, $01, $ab
    db $00, $1f, $00, $01, $55, $00, $01, $fe, $e2, $76, $e3, $e2, $e0, $f0, $ff, $e2
    db $60, $c0, $e5, $c0, $73, $60, $00, $81, $80, $09, $ff, $00, $95, $80, $49, $40
    db $83, $82, $d5, $f7, $d4, $ab, $aa, $63, $a0, $fe, $f4, $f4, $ea, $ff, $ea, $f0
    db $f0, $ea, $ea, $d4, $d4, $fa, $ff, $fa, $00, $00, $7e, $01, $f4, $0b, $ea, $ff
    db $15, $d0, $2f, $aa, $55, $c0, $3f, $aa, $ff, $55, $00, $ff, $fe, $01, $74, $0b
    db $2a, $ff, $15, $30, $0f, $5a, $05, $3c, $03, $56, $fe, $96, $e0, $81, $00, $cb
    db $00, $f5, $00, $df, $7f, $20, $ad, $50, $c7, $38, $ab, $54, $e0, $e0, $fe, $c0
    db $e2, $d0, $d0, $aa, $aa, $c0, $c0, $aa, $66, $b0, $e0, $55, $00, $ff, $e3, $de
    db $c3, $aa, $55, $d0, $c3, $f4, $c1, $c0, $de, $c0, $aa, $e4, $e0, $af, $4f, $a0
    db $40, $df, $af, $50, $bf, $4f, $af, $fe, $e2, $a0, $40, $fe, $90, $c3, $a2, $5c
    db $09, $f1, $57, $a7, $8f, $7f, $6f, $af, $4f, $80, $60, $bf, $40, $c0, $e9, $ef
    db $d6, $f9, $62, $fd, $fc, $eb, $e2, $fd, $56, $df, $f9, $a2, $fd, $06, $f9, $06
    db $e1, $fc, $ff, $7f, $fa, $ff, $ef, $ff, $dd, $ff, $b6, $fe, $a0, $7f, $72, $fd
    db $d7, $f8, $62, $fd, $aa, $50, $80, $f1, $55, $e4, $a0, $50, $c1, $22, $80, $ff
    db $ef, $9f, $02, $ff, $dc, $ea, $1d, $a6, $1f, $0b, $bf, $06, $ff, $bd, $09, $be
    db $86, $3d, $9f, $ff, $83, $ff, $0f, $d9, $07, $94, $eb, $f5, $ff, $f7, $5f, $0f
    db $63, $8f, $ab, $47, $fc, $e1, $03, $ec, $e4, $fd, $f1, $14, $80, $b5, $c0, $e2
    db $80, $35, $c0, $ff, $5d, $a2, $00, $9f, $da, $0f, $02, $8d, $ff, $d5, $0a, $23
    db $8c, $d7, $08, $75, $88, $ff, $50, $88, $f5, $88, $a1, $de, $8d, $ff, $ff, $ca
    db $ff, $eb, $14, $2a, $00, $5d, $00, $fa, $f0, $a1, $2a, $ee, $a0, $d7, $28, $ff
    db $00, $be, $cf, $00, $75, $00, $a8, $00, $c0, $15, $e1, $aa, $ff, $ff, $3a, $85
    db $1a, $e0, $d4, $80, $2a, $80, $df, $da, $05, $55, $aa, $45, $5c, $a0, $ad, $50
    db $ff, $b4, $0b, $01, $0f, $b4, $0f, $a5, $5f, $fe, $ba, $a0, $ff, $ab, $ff, $57
    db $80, $8f, $80, $ff, $57, $80, $af, $80, $5f, $80, $ab, $80, $ff, $56, $81, $8f
    db $80, $8d, $70, $e3, $38, $ff, $8c, $71, $67, $b8, $8c, $71, $63, $b8, $7f, $8d
    db $70, $c1, $38, $ea, $15, $ff, $7c, $c0, $fd, $bf, $78, $c0, $af, $00, $de, $01
    db $af, $80, $ff, $e9, $17, $2a, $01, $50, $01, $7a, $81, $ff, $ad, $50, $1a, $e1
    db $8d, $f0, $50, $e9, $ea, $00, $a5, $fe, $1a, $e0, $28, $86, $82, $51, $ff, $e9
    db $ff, $ff, $d1, $ff, $a1, $ff, $05, $fb, $2f, $03, $d1, $fd, $e1, $87, $d7, $84
    db $71, $c4, $ff, $e6, $00, $00

    nop                                           ; $4faf: $00

    db $37, $6b, $5a, $5b, $ff, $ec, $5a, $6b, $ff, $e0, $ea, $ea, $fc, $ee, $e2, $fc
    db $f5, $58, $69, $6a, $69, $6a, $40, $df, $56, $56, $40, $23, $24, $fa, $e0, $3f
    db $6a, $7b, $69, $58, $ea, $e7, $3f, $39, $3a, $49, $ec, $e0, $fc, $ee, $e2, $c0
    db $f6, $38, $35, $38, $35, $54, $55, $ef, $55, $54, $25, $26, $fa, $e0, $40, $21
    db $21, $fa, $c0, $e3, $21, $ff, $e0, $54, $40, $33, $34, $4a, $bc, $ec, $e0, $c0
    db $ff, $53, $57, $57, $53, $ff, $e0, $57, $af, $57, $41, $22, $22, $80, $e3, $22
    db $ff, $e0, $53, $cf, $41, $00, $01, $4b, $ec, $e0, $c0, $fb, $20, $36, $bf, $20
    db $36, $42, $52, $52, $42, $ff, $e0, $52, $cf, $52, $50, $36, $20, $40, $e3, $ea
    db $e2, $50, $02, $df, $03, $42, $52, $42, $4f, $80, $fb, $42, $4f, $53, $4f, $51
    db $c3, $e1, $fc, $e3, $4f, $d2, $e3, $58, $f5, $e2, $b2, $fe, $e1, $51, $ee, $e4
    db $c0, $f8, $27, $28, $c0, $f3, $5f, $f5, $61, $ff, $e0, $68, $c0, $fd, $4f, $4f
    db $29, $2a, $d7, $42, $43, $44, $ff, $e2, $43, $80, $e9, $50, $60, $df, $62, $62
    db $62, $67, $66, $80, $fd, $5c, $5d, $bf, $2b, $2c, $42, $45, $48, $47, $ff, $e0
    db $48, $55, $45, $33, $e0, $59, $ef, $a1, $59, $31, $e5, $65, $c0, $fe, $ff, $37
    db $5e, $2d, $2e, $42, $45, $46, $3f, $ea, $ff, $e0, $46, $c0, $e1, $40, $ff, $e2
    db $42, $42, $3b, $cf, $3c, $3c, $3c, $3b, $c0, $ff, $c0, $c0, $2f, $30, $ee, $c0
    db $e7, $50, $4f, $54, $ff, $e2, $42, $42, $3d, $ef, $3e, $3e, $3e, $3d, $c0, $ff
    db $58, $42, $50, $db, $31, $32, $40, $e7, $42, $50, $f7, $a1, $53, $53, $0e, $c0
    db $e4, $50, $63, $64, $80, $fe, $06, $c1, $c0, $c6, $36, $c7, $00, $40, $e2, $2e
    db $c7, $c0, $fb, $00, $c8, $0b, $c2, $ee, $ea, $c0, $ff, $c0, $a9, $30, $80, $ca
    db $c0, $ff, $00, $c0, $8e, $e3, $4d, $4d, $8e, $a3, $80, $83, $70, $83, $a3, $7d
    db $a3, $c0, $9a, $00, $85, $59, $4e, $4e, $06, $c2, $0c, $00, $9f, $f8, $74, $4c
    db $4c, $58, $9a, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $e6, $00, $00

    nop                                           ; $51d0: $00

    db $8b, $2c, $0c, $ff, $ed, $2c, $ff, $e1, $ee, $ef, $fb, $f5, $0c, $fd, $0b, $ff
    db $e0, $0d, $0d, $2d, $0d, $0e, $0e, $76, $fa, $e1, $2b, $2b, $ea, $e9, $0b, $0b
    db $2d, $e6, $e0, $80, $c1, $fa, $c0, $ff, $c0, $ff, $c0, $e2, $ff, $e1, $c0, $ff
    db $80, $f3, $0a, $0c, $ff, $e6, $c0, $e9, $0a, $0a, $e6, $e3, $c0, $fb, $c4, $e7
    db $ba, $e3, $00, $c0, $c3, $ee, $ee, $c0, $f8, $80, $e9, $c0, $e9, $65, $c3, $c0
    db $ff, $40, $e0, $85, $0e, $ff, $e3, $2e, $c0, $ff, $80, $ce, $7e, $c1, $c0, $e4
    db $2e, $40, $c0, $e2, $ca, $e4, $ec, $c3, $c0, $ff, $c0, $ed, $77, $c2, $0d, $ae
    db $c3, $a1, $2a, $c0, $ff, $40, $e9, $c0, $ff, $00, $f6, $4e, $ff, $e1, $6e, $a0
    db $c0, $ff, $40, $d4, $c1, $e2, $bf, $e0, $33, $c8, $4a, $ff, $e0, $6a, $60, $40
    db $df, $00, $ce, $f0, $ef, $c0, $9b, $c0, $ad, $ec, $cc, $ff, $e1, $3c, $c0, $ff
    db $c0, $f6, $8c, $8c, $ac, $ac, $c0, $ff, $41, $85, $29, $4c, $91, $e2, $8e, $e2
    db $ec, $ff, $e2, $6c, $ff, $61, $ea, $e6, $08, $73, $e1, $ee, $e2, $40, $96, $8c
    db $ff, $e3, $c0, $e1, $f5, $e2, $be, $63, $18, $7c, $e0, $78, $e1, $75, $e0, $ac
    db $ac, $c0, $bd, $7d, $63, $c6, $e1, $00, $90, $75, $7d, $77, $c0, $ff, $fc, $fb
    db $01, $6e, $c0, $ff, $c0, $ff, $ff, $ff, $40, $c0, $ff, $ff, $ff, $c0, $ff, $ff
    db $ff, $c0, $ff, $03, $4a, $6c, $ff, $e9, $00, $c0, $ff, $fc, $fb, $b3, $e2, $c0
    db $ff, $40, $ff, $c0, $ff, $c0, $ff, $c0, $ff, $00, $c0, $ff, $c0, $ff, $c0, $ff
    db $c0, $ff, $c0, $ff, $b9, $ff, $c0, $ff, $c0, $ff, $00, $c0, $ff, $ff, $ff, $c0
    db $ff, $c0, $ff, $c0, $ff, $c0, $ff, $c0, $ff, $c0, $ff, $00, $c0, $ff, $c0, $ff
    db $c0, $ff, $c0, $ff, $c0, $ff, $c0, $ff, $c0, $ff, $c0, $ff, $00, $c0, $ff, $00
    db $b3, $cc, $ff, $c0, $ff, $ff, $ff, $c0, $ff, $ff, $ff, $c0, $ff, $00, $ff, $ff
    db $c0, $ff, $c0, $ff, $c0, $ff, $c0, $ff, $c0, $ff, $c0, $ff, $c0, $ff, $00, $c0
    db $ff, $c0, $ff, $c0, $ff, $ff, $ff, $c0, $ff, $ff, $ff, $c0, $ff, $ff, $ff, $00
    db $c0, $ff, $c0, $ff, $c0, $ff, $c0, $ff, $c0, $ff, $c0, $ff, $c0, $ff, $c0, $ff
    db $00, $c0, $ff, $c0, $ff, $cc, $ff, $c0, $ff, $ff, $ff, $c0, $ff, $ff, $ff, $c0
    db $ff, $00, $ff, $ff, $c0, $ff, $c0, $fb, $00, $00

    nop                                           ; $536b: $00

    db $0b, $0f, $00, $ff, $fb, $0f, $ff, $e6, $f5, $e6, $e0, $eb, $f7, $e7, $00, $b5
    db $e4, $e0, $ed, $e9, $e6, $95, $e0, $b9, $e2, $a0, $ed, $c0, $ea, $e0, $ee, $00
    db $a9, $e6, $87, $e3, $e0, $ef, $4e, $ee, $e0, $ff, $40, $f2, $77, $e7, $00, $ee
    db $00, $fa, $c2, $00, $f3, $3c, $ea, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $e8, $00, $00, $00, $f5, $10, $ff, $e5, $00, $ff, $f3, $10, $18, $28
    db $10, $ff, $10, $f8, $10, $10, $38, $10, $00, $10, $1f, $48, $58, $00, $68, $00
    db $d6, $ec, $c8, $e6, $e0, $e0, $44, $ee, $ec, $e0, $e4, $1c, $e0, $e8, $98, $e1
    db $c0, $ec, $10, $e0, $e9, $00, $b9, $e8, $c0, $ee, $5e, $e3, $e0, $ef, $4e, $ee
    db $e0, $ff, $40, $f2, $fd, $c5, $04, $60, $ed, $de, $c0, $13, $df, $c2, $d6, $dc
    db $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $eb, $00, $00

    nop                                           ; $544b: $00

    db $00, $04, $00, $10, $04, $04, $00, $10, $08, $04, $00, $10, $0c, $04, $00, $10
    db $10, $04, $00, $10, $0c, $04, $00, $10, $08, $04, $00, $10, $04, $04, $00, $10
    db $ff, $00, $fe, $ff, $a6, $d4, $db, $a3, $b8, $d4, $dd, $ba, $ff, $bf, $df, $fc
    db $9f, $99, $d1, $f0, $80, $ff, $3f, $10, $ff, $e0, $6f, $14, $5f, $ac, $ff, $ff
    db $fc, $fd, $fe, $d7, $fc, $85, $fe, $ff, $90, $c0, $c8, $91, $91, $df, $ce, $af
    db $ff, $a7, $d7, $d0, $a8, $80, $ff, $9f, $ff, $ff, $d6, $ad, $a5, $de, $76, $8d
    db $ed, $1a, $ff, $f8, $f7, $b1, $0e, $00, $ff, $fc, $ff, $7e, $c0, $e7, $ff, $9e
    db $96, $df, $fc, $98, $c0, $e7, $fd, $7d, $c0, $e2, $98, $d0, $d8, $90, $94, $d8
    db $fd, $c8, $c0, $e6, $56, $6d, $65, $5e, $76, $cd, $fb, $ad, $da, $c0, $f0, $9f
    db $95, $df, $f3, $9e, $fe, $80, $e8, $7e, $57, $fc, $25, $3e, $96, $dc, $ef, $d6
    db $9c, $95, $de, $80, $e7, $16, $1d, $15, $df, $1e, $16, $3d, $2d, $fa, $c0, $f3
    db $f0, $9f, $fe, $80, $e8, $be, $b7, $fc, $cd, $8e, $99, $d7, $bf, $d5, $9b, $9d
    db $d3, $cd, $ab, $40, $e5, $86, $bf, $05, $85, $06, $46, $8d, $8d, $c0, $ff, $fc
    db $ff, $9d, $fe, $e7, $c4, $c1, $82, $9a, $d5, $bf, $d4, $9b, $9e, $d1, $cf, $a8
    db $00, $e5, $c2, $bf, $81, $a1, $c6, $c6, $fd, $7d, $c0, $e6, $00, $00, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $f9, $f8, $00, $00

    nop                                           ; $55a8: $00

    db $00, $00, $00, $00, $34, $2a, $00, $00, $a8, $10, $00, $00, $ad, $35, $94, $4e
    db $08, $25, $08, $25, $08, $25, $08, $25, $3f, $42, $5a, $21, $13, $19, $9f, $57
    db $3f, $02, $06, $7e, $06, $65, $9f, $00, $ff, $3f, $1a, $36, $32, $19, $8a, $08
    db $40, $7f, $18, $7e, $10, $51, $ff, $7f, $f2, $03, $80, $02, $9f, $00, $32, $00
    db $08, $25, $08, $25, $08, $25, $08, $25, $fd, $00, $ff, $ec, $81, $80, $0b, $00
    db $15, $00, $df, $2f, $00, $55, $00, $3f, $fc, $e0, $fe, $01, $ff, $7e, $01, $f4
    db $0b, $ea, $15, $d0, $2f, $ff, $aa, $55, $c0, $3f, $aa, $55, $00, $ff, $ff, $fe
    db $01, $74, $0b, $2a, $15, $30, $0f, $ff, $5a, $05, $3c, $03, $56, $01, $fe, $01
    db $ff, $81, $00, $cb, $00, $f5, $00, $df, $20, $ff, $ad, $50, $c7, $38, $ab, $54
    db $00, $ff, $52, $ff, $e0, $55, $fb, $e1, $f6, $e2, $00, $fe, $e4, $55, $f1, $e0
    db $e5, $aa, $f8, $e2, $aa, $f1, $e2, $fa, $e0, $aa, $55, $55, $e8, $ee, $e0, $ae
    db $e1, $da, $e2, $5a, $ee, $e1, $ff, $00, $55, $ff, $aa, $81, $1e, $7c, $d8, $58
    db $f8, $8e, $ff, $1b, $0b, $0a, $7a, $ea, $ee, $6a, $39, $bd, $ac, $af, $e1, $ff
    db $ff, $fe, $fe, $fc, $e1, $fe, $ff, $fe, $00, $00, $fe, $fe, $f4, $f4, $ea, $ff
    db $ea, $d0, $d0, $aa, $aa, $c0, $c0, $aa, $ff, $aa, $01, $00, $00, $ff, $54, $ab
    db $aa, $c7, $55, $fe, $01, $95, $e5, $a0, $e7, $98, $e1, $aa, $55, $ff, $81, $c0
    db $d5, $e0, $d9, $e0, $c5, $f0, $ff, $c9, $c0, $95, $a0, $e3, $b5, $ee, $cf, $fb
    db $a0, $5f, $3c, $e0, $a1, $fe, $d5, $fe, $a9, $bf, $ff, $fc, $fa, $05, $d4, $2b
    db $f0, $e1, $50, $ff, $af, $ea, $15, $d4, $2b, $fe, $a1, $00, $f7, $ff, $d0, $2f
    db $e0, $e1, $d0, $2f, $ea, $15, $ff, $fd, $52, $ff, $ea, $50, $af, $e8, $17, $ff
    db $ef, $c0, $f0, $a0, $e5, $9a, $ca, $95, $ff, $df, $80, $cf, $90, $a7, $d8, $43
    db $84, $ff, $f7, $03, $0f, $05, $0c, $f9, $a1, $59, $ff, $51, $a9, $e1, $19, $d1
    db $29, $e1, $19, $ff, $5e, $fc, $f8, $f0, $70, $e0, $ea, $e0, $df, $75, $c0, $ea
    db $c0, $7f, $fe, $e0, $38, $1f, $ff, $0e, $07, $06, $07, $06, $03, $42, $03, $bd
    db $a2, $fc, $e0, $a6, $02, $7f, $e0, $fe, $e0, $ff, $7f, $00, $7f, $7f, $ff, $fa
    db $ff, $54, $e2, $c0, $ff, $d6, $07, $ae, $06, $fc, $fe, $00, $e8, $f7, $d5, $ff
    db $a1, $dc, $c0, $fd, $ff, $5d, $ff, $ff, $2f, $00, $3e, $01, $75, $0a, $6a, $15
    db $ff, $f1, $0e, $68, $17, $d0, $2f, $02, $fd, $ff, $fd, $00, $ae, $51, $56, $a9
    db $0a, $f5, $7b, $06, $f9, $fc, $e1, $d0, $2f, $e0, $1f, $fc, $e1, $ff, $54, $2b
    db $e8, $17, $75, $0a, $7a, $05, $db, $15, $ea, $ab, $c5, $80, $7f, $ba, $c1, $2a
    db $d5, $fb, $41, $be, $ee, $e7, $55, $aa, $be, $40, $57, $ff, $a8, $2b, $d4, $05
    db $fa, $2b, $d4, $17, $bf, $e8, $ab, $54, $5f, $a0, $3f, $34, $c0, $97, $ff, $ff
    db $4a, $ff, $a1, $7f, $42, $3f, $17, $ab, $00, $8a, $84, $c0, $f4, $5b, $c2, $5f
    db $56, $c0, $f4, $ff, $0b, $ff, $ff, $50, $2e, $60, $1c, $d2, $ff, $28, $22, $58
    db $c0, $38, $a2, $58, $c1, $ff, $39, $a2, $5b, $16, $e9, $8f, $f1, $d6, $ff, $e9
    db $8a, $f5, $c6, $f9, $8a, $f5, $46, $ff, $f9, $ca, $35, $c0, $00, $c2, $00, $c0
    db $ff, $00, $92, $40, $c2, $00, $90, $40, $c0, $ff, $00, $bf, $40, $0a, $05, $ae
    db $01, $0a, $ff, $a5, $2e, $81, $0e, $81, $a8, $05, $0e, $ff, $01, $f8, $05, $70
    db $b0, $75, $b5, $70, $ff, $b0, $7f, $bf, $70, $af, $70, $80, $70, $f9, $90, $f2
    db $ed, $e2, $e4, $af, $7f, $9f, $ff, $7f, $fe, $e2, $c0, $80, $7f, $80, $aa, $d0
    db $4c, $80, $ff, $e2, $84, $05, $c2, $ed, $82, $04, $c3, $d5, $ef, $fc, $e0, $bd
    db $ba, $a0, $ab, $0e, $e0, $84, $03, $ff, $53, $01, $aa, $01, $72, $01, $ab, $ff
    db $f7, $15, $ff, $af, $fc, $e0, $82, $ff, $60, $9f, $7f, $85, $ff, $75, $8a, $ff
    db $ff, $7f, $fd, $a2, $fd, $af, $a9, $a2, $17, $e9, $7f, $bf, $67, $bf, $ff, $45
    db $a7, $5a, $a5, $00, $a5, $40, $a5, $ff, $05, $bf, $85, $00, $fd, $ff, $ed, $ff
    db $ff, $35, $ef, $85, $2f, $87, $2d, $95, $2f, $ff, $2f, $fd, $eb, $15, $45, $bf
    db $60, $83, $ff, $4c, $a1, $0e, $a0, $4f, $a0, $02, $bf, $f7, $17, $80, $0b, $9e
    db $c0, $7d, $c7, $ed, $97, $ff, $c7, $3d, $ad, $57, $ff, $fd, $a3, $5d, $bc, $b2
    db $a3, $fa, $e9, $00, $ff, $7e, $81, $fe, $e0, $83, $ff, $7e, $8f, $00, $ff, $6f
    db $92, $2f, $d6, $ff, $7f, $8e, $af, $5e, $7e, $8f, $3d, $ee, $fb, $5f, $ba, $f4
    db $e1, $2f, $de, $7f, $8e, $6f, $7f, $9e, $2e, $dd, $0d, $fa, $4f, $b1, $3e, $e0
    db $7f, $81, $7f, $81, $0f, $f8, $8f, $70, $fc, $e0, $ff, $78, $9f, $6e, $1f, $f0
    db $bf, $60, $7f, $df, $80, $f7, $0f, $ff, $07, $fc, $e1, $ff, $bb, $bf, $47, $bd
    db $fb, $07, $ff, $01, $e0, $e4, $70, $e6, $fa, $e3, $0f, $f8, $e6, $e0, $fe, $ea
    db $e8, $57, $df, $f7, $aa, $8f, $78, $da, $e5, $0f, $f0, $5f, $a3, $0f, $f7, $0d
    db $f7, $0e, $bc, $e4, $d4, $e1, $cc, $85, $f6, $e1, $ff, $04, $ff, $06, $00, $ff
    db $40, $bf, $3f, $7f, $c0, $3f, $e0, $3f, $fa, $14, $eb, $9e, $c0, $ff, $b0, $ff
    db $ff, $98, $98, $8c, $8c, $86, $9b, $86, $8c, $ff, $e0, $86, $86, $9c, $88, $94
    db $84, $bf, $f2, $fe, $ec, $ff, $1f, $80, $dc, $eb, $90, $00, $8b, $00, $f5, $cf
    db $d8, $e0, $9f, $d4, $e2, $00, $bf, $e0, $1f, $ff, $90, $2f, $a8, $17, $b4, $0b
    db $ba, $05, $3f, $bd, $02, $be, $01, $40, $bf, $fe, $eb, $ea, $c0, $ff, $90, $74
    db $8b, $30, $cf, $40, $bf, $60, $fd, $9f, $e4, $e1, $42, $bd, $a2, $5d, $d2, $2d
    db $ff, $ea, $15, $f6, $09, $f8, $05, $ff, $00, $ff, $fc, $01, $7f, $80, $40, $00
    db $5f, $a0, $ff, $2f, $d0, $17, $e8, $0b, $f4, $05, $fa, $fb, $02, $fd, $c0, $e1
    db $bf, $00, $ba, $05, $b5, $f7, $0a, $05, $00, $c0, $e3, $00, $ff, $a2, $5d, $3f
    db $02, $fd, $02, $fd, $ad, $50, $f1, $61, $ff, $61, $d7, $55, $00, $aa, $a0, $60
    db $00, $fa, $e0, $00, $00, $ff, $f5, $80, $ff, $c1, $7e, $ff, $00, $fa, $df, $f5
    db $ff, $a9, $ff, $40, $f0, $80, $e1, $c1, $ef, $d0, $80, $e8, $80, $ea, $e0, $c0
    db $fe, $b8, $fe, $f6, $e1, $e7, $82, $0c, $c3, $fa, $87, $2a, $ff, $d0, $90, $e0
    db $9a, $e0, $ca, $f5, $ea, $ff, $ff, $ea, $01, $d6, $01, $06, $f9, $bc, $b8, $ca
    db $a4, $c2, $64, $98, $61, $fe, $a5, $5a, $90, $61, $0f, $f7, $f0, $0f, $f0, $a8
    db $c1, $8f, $7d, $90, $7f, $8f, $20, $df, $40, $bf, $e9, $67, $73, $63, $6c, $66
    db $b8, $3f, $1f, $e8, $2f, $d8, $4f, $b0, $5c, $61, $86, $63, $fc, $72, $61, $66
    db $61, $7f, $85, $4a, $b5, $57, $a8, $bf, $4b, $b4, $40, $ff, $7f, $fa, $52, $63
    db $2a, $df, $d5, $7f, $80, $00, $ff, $fa, $e0, $94, $00, $df, $ff, $c0, $3f, $a8
    db $57, $6c, $83, $20, $5f, $ff, $c0, $3f, $28, $57, $04, $f9, $08, $f5, $ff, $16
    db $e9, $0d, $f1, $16, $e9, $2b, $d5, $df, $07, $f9, $0b, $f5, $d7, $ff, $e2, $d0
    db $d0, $3f, $9f, $9f, $e0, $e0, $af, $af, $9a, $a6, $19, $61, $c2, $e3, $42, $aa
    db $df, $42, $f3, $41, $10, $61, $f0, $60, $f9, $62, $fd, $fd, $fc, $eb, $e2, $fd
    db $56, $f9, $a2, $fd, $eb, $06, $f9, $2a, $61, $fc, $ca, $60, $ef, $ff, $dd, $ff
    db $ff, $b6, $ff, $e8, $ff, $72, $fd, $d7, $ff, $f8, $62, $fd, $ff, $00, $8c, $00
    db $98, $3b, $00, $8e, $fa, $e0, $8c, $00, $86, $a0, $42, $b8, $41, $fc, $9f, $e5
    db $fe, $f3, $2a, $d5, $16, $e9, $2e, $d3, $ff, $00, $ff, $0a, $f5, $0c, $f3, $0e
    db $f1, $fb, $0c, $fb, $fc, $e1, $4a, $bd, $26, $dd, $1c, $fd, $eb, $f2, $e5, $09
    db $fe, $43, $bc, $7f, $85, $ff, $01, $fe, $41, $be, $e6, $ff, $e8, $f7, $ff, $e2
    db $f5, $f9, $f6, $d2, $ed, $d9, $e2, $ff, $e9, $f2, $f4, $ff, $ff, $03, $df, $e5
    db $7f, $1c, $f9, $49, $b9, $a1, $59, $d9, $12, $60, $ff, $e1, $19, $e9, $f6, $e2
    db $f5, $a9, $f6, $ff, $e8, $f9, $b6, $f8, $dc, $bf, $37, $8f, $fb, $9f, $ff, $fc
    db $41, $51, $a9, $21, $d9, $01, $ff, $39, $cc, $09, $97, $e5, $f7, $fb, $fd, $be
    db $fe, $20, $fd, $ff, $fd, $fe, $ff, $4e, $40, $bd, $fe, $20, $60, $c3, $ff, $ff
    db $f5, $5d, $f9, $a9, $ef, $f9, $99, $f9, $cd, $fc, $e0, $5d, $f9, $af, $ff, $fd
    db $fd, $ff, $96, $ff, $ce, $bf, $63, $ff, $9f, $39, $87, $97, $01, $43, $bf, $8d
    db $ff, $f9, $d9, $f9, $ed, $f9, $b9, $79, $59, $bf, $b9, $dc, $e9, $6f, $f5, $fb
    db $16, $82, $97, $ee, $ba, $20, $eb, $9f, $c5, $dc, $e0, $33, $8f, $ff, $ff, $ff
    db $d7, $fd, $dd, $f9, $f9, $f9, $dd, $fe, $d8, $e0, $dd, $f9, $fd, $f9, $19, $87
    db $8f, $ff, $ff, $07, $81, $2f, $81, $95, $01, $bf, $bf, $01, $94, $01, $41, $bf
    db $4d, $c2, $e0, $61, $fb, $f9, $35, $be, $e0, $9c, $79, $cf, $3d, $7f, $fe, $c4
    db $e0, $cb, $bf, $e9, $97, $bf, $ff, $1b, $7f, $85, $31, $8f, $9b, $05, $bd, $03
    db $c0, $60, $fb, $fd, $3d, $c8, $e0, $39, $fd, $dd, $79, $39, $f7, $fd, $b9, $7d
    db $8c, $e1, $05, $81, $2e, $81, $d7, $94, $01, $be, $c0, $e2, $d9, $e3, $e0, $cd
    db $39, $ff, $39, $5d, $cd, $39, $6c, $19, $3f, $0d, $03, $87, $7f, $f0, $0d, $00
    db $00

    nop                                           ; $5bfa: $00

    db $2d, $2f, $ff, $e7, $5a, $57, $ff, $f8, $5a, $d7, $e8, $f5, $f4, $bf, $58, $07
    db $07, $3a, $3a, $07, $ff, $f0, $3a, $cf, $3a, $5d, $5d, $58, $c0, $f7, $88, $e5
    db $59, $06, $ef, $06, $24, $24, $06, $ff, $e0, $3a, $3a, $50, $f6, $ff, $e4, $3a
    db $3a, $f0, $e1, $24, $24, $0d, $0d, $fd, $59, $76, $f7, $58, $07, $30, $51, $51
    db $30, $ff, $07, $07, $30, $05, $05, $26, $26, $05, $ff, $05, $37, $38, $24, $24
    db $08, $30, $52, $ff, $51, $51, $52, $30, $08, $24, $24, $37, $4d, $38, $ea, $e1
    db $5c, $5c, $e0, $e1, $ec, $e1, $5e, $76, $ef, $ff, $58, $06, $31, $12, $13, $31
    db $06, $06, $ff, $31, $01, $01, $0b, $0b, $01, $02, $35, $df, $36, $25, $25, $06
    db $31, $e8, $c1, $31, $06, $6f, $25, $25, $35, $36, $ea, $e1, $03, $02, $e0, $e1
    db $bf, $13, $12, $12, $13, $5f, $0d, $c0, $ef, $05, $ff, $32, $12, $13, $32, $05
    db $05, $32, $01, $58, $ff, $e1, $c0, $e0, $7a, $e0, $32, $0a, $ff, $e0, $32, $70
    db $e0, $64, $c0, $e1, $e8, $e0, $03, $e0, $e1, $c0, $e1, $60, $5c, $80, $ef, $9f
    db $01, $55, $56, $56, $55, $c3, $e2, $c0, $e3, $0a, $81, $0a, $76, $e1, $74, $e0
    db $70, $e0, $c0, $e4, $a5, $e2, $d9, $e1, $02, $81, $02, $c0, $ff, $c6, $e1, $b1
    db $e5, $c0, $ff, $80, $c7, $d0, $e2, $39, $fb, $4c, $34, $8e, $e7, $02, $02, $4d
    db $4e, $4f, $c6, $fe, $c0, $02, $02, $80, $d8, $38, $e7, $02, $e2, $08, $30, $d7
    db $01, $02, $04, $f6, $c2, $04, $c0, $e0, $5e, $0c, $98, $be, $c1, $4a, $f0, $c0
    db $f1, $3f, $3f, $82, $c0, $78, $c0, $02, $fb, $14, $15, $b6, $c1, $14, $15, $03
    db $02, $5f, $cd, $0d, $7e, $c0, $3f, $42, $c0, $ff, $b8, $c1, $3d, $3d, $9c, $42
    db $c0, $78, $c0, $03, $16, $17, $8c, $c1, $fa, $e0, $03, $1b, $60, $5c, $3e, $c0
    db $3d, $41, $c0, $ff, $c0, $e6, $90, $c7, $c0, $fe, $c3, $c0, $ff, $c0, $ec, $02
    db $e3, $c0, $ff, $8a, $8d, $59, $0f, $ff, $45, $45, $10, $33, $34, $01, $02, $27
    db $ed, $28, $b6, $a1, $3f, $3e, $ff, $e0, $3f, $02, $02, $3f, $33, $34, $0f, $45
    db $46, $10, $00, $a5, $02, $b0, $b2, $8d, $85, $30, $c0, $e1, $82, $c1, $4a, $4b
    db $76, $a1, $3d, $ff, $42, $44, $3e, $3f, $3d, $02, $02, $30, $c1, $08, $c0, $e1
    db $e0, $80, $65, $82, $02, $af, $94, $85, $50, $31, $f8, $80, $e1, $82, $c1, $80
    db $e3, $3d, $41, $49, $09, $3d, $c9, $3d, $06, $a1, $80, $e1, $31, $6d, $84, $c2
    db $8f, $08, $08, $93, $51, $51, $fc, $e2, $c0, $e1, $11, $82, $c1, $80, $e4, $40
    db $cf, $48, $0e, $3d, $3d, $06, $a1, $c0, $e2, $08, $08, $76, $5a, $80, $5e, $0c
    db $82, $90, $06, $12, $13, $fc, $e2, $a9, $31, $40, $c0, $83, $c8, $3d, $ff, $c0
    db $3f, $ef, $e3, $3d, $b9, $43, $80, $82, $82, $94, $05, $12, $13, $fc, $e2, $32
    db $90, $c0, $a0, $43, $c8, $c0, $c3, $f5, $e3, $3f, $80, $82, $82, $94, $01, $3f
    db $3b, $3b, $01, $01, $5b, $5b, $08, $cb, $f2, $f0, $00, $6f, $c0, $78, $b0, $0a
    db $a1, $ff, $ff, $c0, $f7, $8a, $51, $76, $82, $b2, $61, $00, $0a, $67, $78, $5f
    db $6c, $f1, $4a, $bf, $70, $52, $80, $ec, $8c, $ff, $70, $4d, $00, $c2, $65, $8a
    db $a3, $7a, $ff, $6e, $ac, $76, $40, $82, $63, $8a, $a3, $c0, $ff, $7c, $6e, $ac
    db $c0, $e7, $08, $08, $0c, $29, $2a, $c0, $ff, $38, $f0, $2d, $73, $43, $0a, $42
    db $0d, $2b, $2c, $c0, $ff, $f0, $2d, $9e, $34, $45, $18, $19, $05, $5c, $c0, $ff
    db $ae, $b6, $02, $3f, $22, $23, $01, $03, $2d, $2e, $c0, $ff, $78, $4e, $c6, $c3
    db $64, $53, $54, $84, $5f, $38, $52, $83, $83, $02, $20, $b9, $21, $c0, $ff, $c0
    db $f3, $3d, $3c, $3c, $72, $40, $53, $e7, $54, $02, $04, $c0, $ff, $c0, $f7, $1a
    db $1b, $1c, $f9, $1d, $c0, $ff, $80, $f6, $03, $1e, $1f, $1f, $1e, $0c, $c0, $ff
    db $ae, $4d, $02, $49, $40, $e4, $fc, $04, $c0, $ff, $6e, $4b, $63, $03, $48, $43
    db $69, $c0, $ff, $70, $10, $59, $47, $ff, $e0, $8c, $0c, $56, $ff, $ff, $58, $0b
    db $ff, $e0, $88, $ff, $fc, $97, $0a, $00, $ff, $e0, $c0, $ff, $bc, $97, $fb, $e6
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $80, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $f9, $f8, $12, $ff, $13, $61, $62, $65
    db $66, $69, $6a, $6d, $f9, $6e, $d4, $ff, $c0, $f3, $63, $64, $67, $68, $6b, $e7
    db $6c, $6f, $70, $d4, $ff, $f2, $f1, $13, $12, $12, $ff, $13, $62, $61, $61, $62
    db $66, $65, $65, $7f, $66, $6a, $69, $69, $6a, $6e, $6d, $76, $e9, $ff, $61, $62
    db $2f, $65, $66, $2f, $69, $6a, $a9, $2f, $61, $e3, $d7, $e1, $2f, $d6, $e1, $2f
    db $d5, $e1, $2f, $fc, $d4, $e1, $c0, $e1, $64, $63, $63, $64, $68, $67, $ff, $67
    db $68, $6c, $6b, $6b, $6c, $70, $6f, $fe, $76, $e9, $63, $64, $2f, $67, $68, $2f
    db $6b, $53, $6c, $2f, $61, $e3, $d7, $e1, $2f, $d6, $e1, $2f, $d5, $e1, $01, $2f
    db $d4, $e1, $00, $00

    nop                                           ; $5f8f: $00

    db $c9, $0c, $ff, $ff, $e3, $e2, $2c, $ff, $f4, $c6, $e9, $0d, $0d, $c3, $0d, $2d
    db $fc, $e0, $fd, $ef, $ea, $e0, $c0, $fb, $8c, $8c, $44, $c0, $ea, $ba, $e0, $8d
    db $ff, $e0, $f0, $e9, $80, $e1, $ac, $ff, $e0, $96, $80, $ef, $8c, $8c, $d2, $e0
    db $ad, $87, $e4, $c0, $e4, $2d, $06, $c0, $e0, $ad, $ad, $f9, $e0, $b0, $e6, $68
    db $e1, $ec, $e2, $76, $ec, $16, $c0, $e3, $0c, $0c, $47, $e1, $0a, $ff, $e2, $3a
    db $e7, $33, $e0, $c0, $30, $e0, $ea, $e6, $3c, $e0, $d8, $e1, $7c, $eb, $80, $e3
    db $4c, $4c, $98, $c0, $ed, $b4, $e1, $c0, $ed, $6c, $6c, $d8, $e1, $c0, $ef, $0a
    db $0f, $4b, $4b, $6b, $6b, $83, $e3, $80, $e2, $f5, $e6, $f2, $ec, $3c, $d9, $e3
    db $c0, $f0, $0b, $0b, $2b, $2b, $c0, $ff, $d9, $e4, $16, $40, $ee, $cc, $ec, $ff
    db $e3, $cc, $18, $e5, $80, $eb, $e8, $c3, $00, $dc, $e4, $d5, $e1, $00, $ee, $fe
    db $e5, $c0, $f1, $a8, $c5, $44, $c1, $fc, $e5, $d6, $c0, $f6, $0b, $2b, $82, $c0
    db $2d, $78, $c0, $0e, $0e, $80, $74, $c1, $fa, $e1, $68, $c2, $e8, $e0, $c0, $f7
    db $44, $a5, $c0, $f8, $4b, $00, $c0, $e1, $40, $bd, $80, $e5, $82, $c9, $70, $c4
    db $c0, $ff, $c0, $ff, $c0, $ff, $6f, $8c, $0d, $0b, $2b, $7a, $a2, $0c, $0c, $52
    db $c3, $18, $fe, $e0, $29, $c0, $aa, $80, $0b, $0b, $8a, $ac, $80, $89, $8e, $88
    db $02, $c0, $ea, $4b, $c1, $e1, $c0, $e6, $68, $85, $38, $8d, $c2, $82, $96, $80
    db $b0, $92, $82, $80, $e0, $82, $c1, $c0, $e5, $0e, $0c, $c0, $e2, $2d, $00, $c0
    db $e5, $6e, $81, $7e, $8d, $82, $83, $fc, $e3, $c0, $fe, $5a, $80, $c0, $f1, $c0
    db $c6, $61, $c2, $61, $00, $c1, $12, $a9, $e9, $80, $29, $a3, $0b, $0b, $d8, $80
    db $82, $82, $8f, $40, $e3, $4c, $4c, $fc, $e3, $0a, $4b, $00, $ba, $87, $c0, $e3
    db $ef, $e4, $e8, $e0, $68, $61, $82, $8f, $00, $e1, $e1, $e2, $40, $c5, $eb, $f5
    db $f3, $71, $c2, $c0, $f1, $ff, $ff, $2f, $e5, $6b, $c0, $ef, $01, $cc, $ff, $f1
    db $33, $85, $8a, $88, $82, $92, $40, $c1, $fe, $f1, $f3, $65, $20, $8a, $89, $82
    db $91, $c0, $ff, $48, $82, $79, $ea, $6c, $ff, $e5, $00, $4e, $00, $38, $a6, $3e
    db $66, $f2, $23, $04, $b4, $b7, $e2, $c0, $ff, $c0, $f6, $80, $ff, $00, $ca, $a4
    db $c0, $ff, $c0, $ff, $c0, $ff, $40, $f1, $26, $a3, $c0, $ff, $00, $eb, $00, $00
    db $47, $f6, $61, $c0, $ff, $c0, $f0, $c3, $64, $b6, $63, $c0, $ff, $c0, $f2, $18
    db $ac, $20, $c0, $ff, $40, $f4, $4b, $4b, $6d, $20, $c0, $ff, $c0, $ff, $f0, $fe
    db $c1, $c0, $ff, $80, $f2, $ac, $00, $0c, $0c, $2c, $2c, $04, $c0, $ff, $80, $ce
    db $0e, $14, $82, $ac, $06, $c0, $ff, $c0, $ef, $43, $67, $04, $c0, $ff, $7c, $ab
    db $ac, $ee, $62, $02, $41, $0c, $95, $c0, $fc, $6f, $01, $0b, $cc, $6a, $ff, $e0
    db $ec, $0c, $94, $40, $bb, $ed, $81, $c0, $e5, $04, $c8, $f7, $c0, $fd, $4d, $ff
    db $e0, $c0, $ff, $80, $f2, $d5, $e0, $48, $ff, $00, $c0, $ff, $c0, $ff, $c0, $f7
    db $ff, $ff, $c0, $ff, $ff, $ff, $c0, $ff, $ff, $ff, $00, $c0, $ff, $c0, $ff, $c0
    db $ff, $c0, $ff, $c0, $ff, $c0, $ff, $c0, $ff, $c0, $ff, $00, $c0, $ff, $c0, $ff
    db $ff, $ff, $00, $49, $dc, $ff, $c0, $ff, $ff, $ff, $c0, $ff, $00, $ff, $ff, $c0
    db $ff, $ff, $ff, $c0, $ff, $ff, $ff, $c0, $ff, $ff, $ff, $c0, $ff, $18, $ff, $ff
    db $00, $df, $ff, $ff, $4c, $4c, $c0, $ff, $3e, $ff, $fc, $ed, $78, $a2, $34, $11
    db $e4, $fb, $e9, $6c, $6c, $4c, $4c, $c0, $ff, $00, $c0, $f7, $00, $00

    nop                                           ; $61fe: $00

    db $05, $00, $ff, $e7, $0f, $ff, $e0, $f1, $e8, $ea, $e8, $fc, $e4, $f3, $ea, $00
    db $d5, $e5, $cc, $e0, $c9, $e2, $e0, $e5, $ed, $e3, $ec, $e3, $aa, $e2, $f8, $eb
    db $00, $9e, $e6, $e8, $ed, $f8, $ec, $c8, $e7, $86, $e5, $b6, $e1, $94, $e3, $80
    db $ea, $38, $9c, $e4, $a8, $e9, $3a, $ee, $0f, $0b, $0b, $c1, $e2, $f4, $e6, $00
    db $21, $ed, $e0, $e5, $1d, $e1, $d4, $e0, $f7, $c8, $88, $e2, $e9, $cc, $0d, $e5
    db $00, $30, $ea, $c9, $cd, $e0, $ff, $a1, $cf, $92, $c9, $78, $cf, $b1, $f9, $e0
    db $e6, $00, $3c, $d2, $78, $c7, $e2, $d1, $e0, $ff, $e0, $e8, $f3, $ce, $60, $eb
    db $0e, $f7, $00, $07, $ce, $98, $af, $13, $c6, $ad, $d6, $01, $f7, $04, $fa, $ff
    db $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $e8, $00, $00

    nop                                           ; $6293: $00

    db $59, $00, $ff, $ff, $e7, $e6, $21, $21, $dc, $f2, $31, $c6, $ef, $23, $61, $61
    db $b2, $ff, $ff, $ff, $ed, $ec, $18, $fd, $e2, $ff, $ff, $b8, $ff, $ff, $9d, $f9
    db $db, $ee, $41, $00, $51, $c7, $ee, $71, $a0, $b5, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $f0, $ef, $28, $dd, $f5, $10, $20, $c4, $ff, $ff, $ff, $c4, $df, $d7, $f6
    db $80, $e4, $10, $78, $ff, $f6, $f5, $03, $11, $11, $dc, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $fd, $00
    db $00

    nop                                           ; $62f5: $00

    db $fe, $01, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $e4, $00, $00

    nop                                           ; $637c: $00
    nop                                           ; $637d: $00
    nop                                           ; $637e: $00
    nop                                           ; $637f: $00
    nop                                           ; $6380: $00
    ld a, [de]                                    ; $6381: $1a
    ld [de], a                                    ; $6382: $12
    nop                                           ; $6383: $00
    nop                                           ; $6384: $00
    xor b                                         ; $6385: $a8
    stop                                          ; $6386: $10 $00
    nop                                           ; $6388: $00
    xor l                                         ; $6389: $ad
    dec [hl]                                      ; $638a: $35
    sub h                                         ; $638b: $94
    ld c, [hl]                                    ; $638c: $4e
    ld [$0825], sp                                ; $638d: $08 $25 $08
    dec h                                         ; $6390: $25
    ld [$0825], sp                                ; $6391: $08 $25 $08
    dec h                                         ; $6394: $25
    ret c                                         ; $6395: $d8

    ld d, [hl]                                    ; $6396: $56
    inc sp                                        ; $6397: $33
    ld b, d                                       ; $6398: $42
    xor a                                         ; $6399: $af
    ld sp, $7fff                                  ; $639a: $31 $ff $7f
    rst $38                                       ; $639d: $ff
    ld d, a                                       ; $639e: $57
    sbc h                                         ; $639f: $9c
    ld l, $b3                                     ; $63a0: $2e $b3
    ld hl, $1d0a                                  ; $63a2: $21 $0a $1d
    rst $38                                       ; $63a5: $ff
    ld a, a                                       ; $63a6: $7f
    ld d, c                                       ; $63a7: $51
    ld d, d                                       ; $63a8: $52
    adc e                                         ; $63a9: $8b
    add hl, sp                                    ; $63aa: $39
    and h                                         ; $63ab: $a4
    inc e                                         ; $63ac: $1c
    rst $38                                       ; $63ad: $ff
    ld a, a                                       ; $63ae: $7f
    cp a                                          ; $63af: $bf
    ld a, $d9                                     ; $63b0: $3e $d9
    dec h                                         ; $63b2: $25
    ld [hl], d                                    ; $63b3: $72
    ld hl, $301f                                  ; $63b4: $21 $1f $30

jr_028_63b7:
    rra                                           ; $63b7: $1f
    jr nc, @+$21                                  ; $63b8: $30 $1f

    jr nc, jr_028_63db                            ; $63ba: $30 $1f

    jr nc, jr_028_63c6                            ; $63bc: $30 $08

    dec h                                         ; $63be: $25
    ld [$0825], sp                                ; $63bf: $08 $25 $08
    dec h                                         ; $63c2: $25
    ld [$fd25], sp                                ; $63c3: $08 $25 $fd

jr_028_63c6:
    nop                                           ; $63c6: $00
    rst $38                                       ; $63c7: $ff
    db $ec                                        ; $63c8: $ec
    add c                                         ; $63c9: $81
    add b                                         ; $63ca: $80
    dec bc                                        ; $63cb: $0b
    nop                                           ; $63cc: $00
    dec d                                         ; $63cd: $15
    nop                                           ; $63ce: $00
    rst $18                                       ; $63cf: $df
    cpl                                           ; $63d0: $2f
    nop                                           ; $63d1: $00
    ld d, l                                       ; $63d2: $55
    nop                                           ; $63d3: $00
    ccf                                           ; $63d4: $3f
    db $fc                                        ; $63d5: $fc
    ldh [$fe], a                                  ; $63d6: $e0 $fe
    ld bc, $7eff                                  ; $63d8: $01 $ff $7e

jr_028_63db:
    ld bc, $0bf4                                  ; $63db: $01 $f4 $0b
    ld [$d015], a                                 ; $63de: $ea $15 $d0
    cpl                                           ; $63e1: $2f
    rst $38                                       ; $63e2: $ff
    xor d                                         ; $63e3: $aa
    ld d, l                                       ; $63e4: $55
    ret nz                                        ; $63e5: $c0

    ccf                                           ; $63e6: $3f
    xor d                                         ; $63e7: $aa
    ld d, l                                       ; $63e8: $55
    nop                                           ; $63e9: $00
    rst $38                                       ; $63ea: $ff
    rst $38                                       ; $63eb: $ff
    cp $01                                        ; $63ec: $fe $01
    ld [hl], h                                    ; $63ee: $74
    dec bc                                        ; $63ef: $0b
    ld a, [hl+]                                   ; $63f0: $2a
    dec d                                         ; $63f1: $15
    jr nc, jr_028_6403                            ; $63f2: $30 $0f

    rst $38                                       ; $63f4: $ff
    ld e, d                                       ; $63f5: $5a
    dec b                                         ; $63f6: $05
    inc a                                         ; $63f7: $3c
    inc bc                                        ; $63f8: $03
    ld d, [hl]                                    ; $63f9: $56
    ld bc, $01fe                                  ; $63fa: $01 $fe $01
    rst $38                                       ; $63fd: $ff
    add c                                         ; $63fe: $81
    nop                                           ; $63ff: $00
    rlc b                                         ; $6400: $cb $00
    push af                                       ; $6402: $f5

jr_028_6403:
    nop                                           ; $6403: $00
    rst $18                                       ; $6404: $df
    jr nz, @+$01                                  ; $6405: $20 $ff

    xor l                                         ; $6407: $ad
    ld d, b                                       ; $6408: $50
    rst $00                                       ; $6409: $c7
    jr c, jr_028_63b7                             ; $640a: $38 $ab

    ld d, h                                       ; $640c: $54
    nop                                           ; $640d: $00
    rst $38                                       ; $640e: $ff
    cp [hl]                                       ; $640f: $be
    ret nc                                        ; $6410: $d0

    db $e3                                        ; $6411: $e3
    di                                            ; $6412: $f3
    inc c                                         ; $6413: $0c
    ld l, b                                       ; $6414: $68
    dec d                                         ; $6415: $15
    rst $38                                       ; $6416: $ff
    ret nz                                        ; $6417: $c0

    ld [c], a                                     ; $6418: $e2
    cp $ff                                        ; $6419: $fe $ff
    cp $f4                                        ; $641b: $fe $f4
    db $f4                                        ; $641d: $f4
    ld [$d0ea], a                                 ; $641e: $ea $ea $d0
    ret nc                                        ; $6421: $d0

    xor d                                         ; $6422: $aa
    rst $38                                       ; $6423: $ff
    xor d                                         ; $6424: $aa
    ret nz                                        ; $6425: $c0

    ret nz                                        ; $6426: $c0

    xor d                                         ; $6427: $aa
    xor d                                         ; $6428: $aa
    ld bc, $ff00                                  ; $6429: $01 $00 $ff
    rst $38                                       ; $642c: $ff
    rst $38                                       ; $642d: $ff
    ld [$7dff], a                                 ; $642e: $ea $ff $7d
    rst $38                                       ; $6431: $ff
    rst $38                                       ; $6432: $ff
    rst $38                                       ; $6433: $ff
    ld a, a                                       ; $6434: $7f
    db $eb                                        ; $6435: $eb
    rst $38                                       ; $6436: $ff
    xor a                                         ; $6437: $af
    db $fc                                        ; $6438: $fc
    ldh [$2f], a                                  ; $6439: $e0 $2f
    ldh a, [$e0]                                  ; $643b: $f0 $e0
    add e                                         ; $643d: $83
    db $fd                                        ; $643e: $fd
    ld d, c                                       ; $643f: $51
    rst $28                                       ; $6440: $ef
    rst $38                                       ; $6441: $ff
    xor c                                         ; $6442: $a9
    rst $38                                       ; $6443: $ff
    push af                                       ; $6444: $f5
    db $fc                                        ; $6445: $fc
    ld [c], a                                     ; $6446: $e2
    ld d, [hl]                                    ; $6447: $56
    xor c                                         ; $6448: $a9
    ld a, d                                       ; $6449: $7a
    rst $38                                       ; $644a: $ff
    dec b                                         ; $644b: $05
    ld a, [bc]                                    ; $644c: $0a
    nop                                           ; $644d: $00
    and b                                         ; $644e: $a0
    ld e, a                                       ; $644f: $5f
    dec b                                         ; $6450: $05
    nop                                           ; $6451: $00
    ld a, $fe                                     ; $6452: $3e $fe
    add [hl]                                      ; $6454: $86
    ldh [$7e], a                                  ; $6455: $e0 $7e
    ld bc, $017f                                  ; $6457: $01 $7f $01
    dec bc                                        ; $645a: $0b
    push af                                       ; $645b: $f5
    cp $ef                                        ; $645c: $fe $ef
    ld bc, $ff2f                                  ; $645e: $01 $2f $ff
    rla                                           ; $6461: $17
    or $e0                                        ; $6462: $f6 $e0
    ld a, a                                       ; $6464: $7f
    ld bc, $ffff                                  ; $6465: $01 $ff $ff
    ld bc, $057b                                  ; $6468: $01 $7b $05
    adc [hl]                                      ; $646b: $8e
    ld b, c                                       ; $646c: $41
    ld c, a                                       ; $646d: $4f
    ld b, c                                       ; $646e: $41
    rst $08                                       ; $646f: $cf
    cp $fe                                        ; $6470: $fe $fe
    ld [c], a                                     ; $6472: $e2
    xor a                                         ; $6473: $af
    ld [hl], c                                    ; $6474: $71
    ei                                            ; $6475: $fb
    dec b                                         ; $6476: $05
    rst $30                                       ; $6477: $f7
    add hl, bc                                    ; $6478: $09
    rst $38                                       ; $6479: $ff
    db $fd                                        ; $647a: $fd
    ld bc, $e1fa                                  ; $647b: $01 $fa $e1
    cp e                                          ; $647e: $bb
    ld b, l                                       ; $647f: $45
    rst $30                                       ; $6480: $f7
    add hl, bc                                    ; $6481: $09
    xor e                                         ; $6482: $ab
    ld d, l                                       ; $6483: $55
    rst $38                                       ; $6484: $ff
    db $d3                                        ; $6485: $d3
    dec l                                         ; $6486: $2d
    xor e                                         ; $6487: $ab
    ld d, l                                       ; $6488: $55
    db $eb                                        ; $6489: $eb
    dec d                                         ; $648a: $15
    ld d, [hl]                                    ; $648b: $56
    add hl, hl                                    ; $648c: $29
    rst $38                                       ; $648d: $ff
    ld a, [hl]                                    ; $648e: $7e
    ld bc, $7f97                                  ; $648f: $01 $97 $7f
    ld a, l                                       ; $6492: $7d
    ld [bc], a                                    ; $6493: $02
    ld [$ff15], a                                 ; $6494: $ea $15 $ff
    call nc, $572b                                ; $6497: $d4 $2b $57
    rst $38                                       ; $649a: $ff
    db $d3                                        ; $649b: $d3
    dec l                                         ; $649c: $2d
    add e                                         ; $649d: $83
    ld a, l                                       ; $649e: $7d
    rst $38                                       ; $649f: $ff
    cp $01                                        ; $64a0: $fe $01
    rst $38                                       ; $64a2: $ff
    rst $38                                       ; $64a3: $ff
    ld d, d                                       ; $64a4: $52
    xor l                                         ; $64a5: $ad
    add c                                         ; $64a6: $81
    ld a, a                                       ; $64a7: $7f
    ld a, a                                       ; $64a8: $7f
    inc bc                                        ; $64a9: $03
    db $fd                                        ; $64aa: $fd
    rst $38                                       ; $64ab: $ff
    rst $38                                       ; $64ac: $ff
    nop                                           ; $64ad: $00
    nop                                           ; $64ae: $00
    ld e, l                                       ; $64af: $5d
    dec c                                         ; $64b0: $0d
    ldh [$7b], a                                  ; $64b1: $e0 $7b
    ret nc                                        ; $64b3: $d0

    cpl                                           ; $64b4: $2f
    ld hl, sp-$1d                                 ; $64b5: $f8 $e3
    dec hl                                        ; $64b7: $2b
    rst $38                                       ; $64b8: $ff
    and d                                         ; $64b9: $a2
    nop                                           ; $64ba: $00
    db $ed                                        ; $64bb: $ed
    ldh [$bf], a                                  ; $64bc: $e0 $bf
    nop                                           ; $64be: $00
    dec b                                         ; $64bf: $05
    rst $38                                       ; $64c0: $ff
    and b                                         ; $64c1: $a0
    nop                                           ; $64c2: $00
    rst $10                                       ; $64c3: $d7
    push af                                       ; $64c4: $f5
    ret nz                                        ; $64c5: $c0

    rst $38                                       ; $64c6: $ff
    rst $38                                       ; $64c7: $ff
    rst $38                                       ; $64c8: $ff
    cp a                                          ; $64c9: $bf
    nop                                           ; $64ca: $00
    and d                                         ; $64cb: $a2
    ld e, l                                       ; $64cc: $5d
    and d                                         ; $64cd: $a2
    nop                                           ; $64ce: $00
    rst $18                                       ; $64cf: $df
    cp a                                          ; $64d0: $bf
    rst $38                                       ; $64d1: $ff
    xor a                                         ; $64d2: $af
    nop                                           ; $64d3: $00
    add sp, $17                                   ; $64d4: $e8 $17
    ld [$e052], sp                                ; $64d6: $08 $52 $e0
    ld [hl], h                                    ; $64d9: $74
    ei                                            ; $64da: $fb
    adc e                                         ; $64db: $8b
    dec b                                         ; $64dc: $05
    set 4, b                                      ; $64dd: $cb $e0

jr_028_64df:
    rst $38                                       ; $64df: $ff
    rst $38                                       ; $64e0: $ff
    ld e, l                                       ; $64e1: $5d
    and d                                         ; $64e2: $a2
    and b                                         ; $64e3: $a0
    db $eb                                        ; $64e4: $eb

jr_028_64e5:
    ld e, a                                       ; $64e5: $5f
    cp a                                          ; $64e6: $bf
    ld b, d                                       ; $64e7: $42
    ldh [$0a], a                                  ; $64e8: $e0 $0a
    ld b, [hl]                                    ; $64ea: $46
    ldh [rSCY], a                                 ; $64eb: $e0 $42
    cp a                                          ; $64ed: $bf
    rst $38                                       ; $64ee: $ff
    ld a, a                                       ; $64ef: $7f
    rst $38                                       ; $64f0: $ff
    ld [bc], a                                    ; $64f1: $02
    rst $38                                       ; $64f2: $ff
    ld e, a                                       ; $64f3: $5f
    rst $38                                       ; $64f4: $ff
    ld d, b                                       ; $64f5: $50
    xor a                                         ; $64f6: $af
    scf                                           ; $64f7: $37
    ldh [$32], a                                  ; $64f8: $e0 $32
    inc [hl]                                      ; $64fa: $34
    ldh [$2f], a                                  ; $64fb: $e0 $2f
    jr nc, jr_028_64df                            ; $64fd: $30 $e0

    db $ed                                        ; $64ff: $ed
    ldh [rIE], a                                  ; $6500: $e0 $ff
    adc e                                         ; $6502: $8b
    jr z, jr_028_64e5                             ; $6503: $28 $e0

    ld b, b                                       ; $6505: $40
    pop hl                                        ; $6506: $e1
    sub a                                         ; $6507: $97
    rst $38                                       ; $6508: $ff
    rst $38                                       ; $6509: $ff
    cp $1e                                        ; $650a: $fe $1e
    ldh [$be], a                                  ; $650c: $e0 $be
    db $fc                                        ; $650e: $fc
    ld [c], a                                     ; $650f: $e2
    ld b, b                                       ; $6510: $40
    pop hl                                        ; $6511: $e1
    ld a, l                                       ; $6512: $7d
    rst $38                                       ; $6513: $ff
    rst $38                                       ; $6514: $ff
    cp $7d                                        ; $6515: $fe $7d
    cp a                                          ; $6517: $bf
    ld a, c                                       ; $6518: $79
    ld a, b                                       ; $6519: $78
    cp e                                          ; $651a: $bb
    ld e, c                                       ; $651b: $59
    rst $38                                       ; $651c: $ff
    or e                                          ; $651d: $b3
    inc [hl]                                      ; $651e: $34
    db $d3                                        ; $651f: $d3
    rst $18                                       ; $6520: $df
    rst $38                                       ; $6521: $ff
    cp a                                          ; $6522: $bf
    cp $df                                        ; $6523: $fe $df
    rst $38                                       ; $6525: $ff
    cp $af                                        ; $6526: $fe $af
    cp $9f                                        ; $6528: $fe $9f
    cp $ae                                        ; $652a: $fe $ae
    rst $38                                       ; $652c: $ff
    sub a                                         ; $652d: $97
    cp $d8                                        ; $652e: $fe $d8
    ldh [$35], a                                  ; $6530: $e0 $35
    jp $e30d                                      ; $6532: $c3 $0d $e3


    adc l                                         ; $6535: $8d
    db $e3                                        ; $6536: $e3
    sbc l                                         ; $6537: $9d
    cp $fe                                        ; $6538: $fe $fe
    ld [c], a                                     ; $653a: $e2
    cp l                                          ; $653b: $bd
    db $e3                                        ; $653c: $e3
    dec e                                         ; $653d: $1d
    db $e3                                        ; $653e: $e3
    cpl                                           ; $653f: $2f
    rst $38                                       ; $6540: $ff
    sub [hl]                                      ; $6541: $96
    rst $38                                       ; $6542: $ff
    ld a, a                                       ; $6543: $7f
    srl a                                         ; $6544: $cb $3f
    ld e, a                                       ; $6546: $5f
    rst $38                                       ; $6547: $ff
    ld a, l                                       ; $6548: $7d
    inc bc                                        ; $6549: $03
    add sp, -$0b                                  ; $654a: $e8 $f5
    rla                                           ; $654c: $17
    ld b, b                                       ; $654d: $40
    pop hl                                        ; $654e: $e1
    dec a                                         ; $654f: $3d
    db $ec                                        ; $6550: $ec
    ldh [$3f], a                                  ; $6551: $e0 $3f
    db $e3                                        ; $6553: $e3
    dec sp                                        ; $6554: $3b
    rst $20                                       ; $6555: $e7
    ld a, a                                       ; $6556: $7f
    cp l                                          ; $6557: $bd
    rst $20                                       ; $6558: $e7
    or l                                          ; $6559: $b5
    rst $28                                       ; $655a: $ef
    ei                                            ; $655b: $fb
    db $ed                                        ; $655c: $ed

jr_028_655d:
    rst $28                                       ; $655d: $ef
    add $c0                                       ; $655e: $c6 $c0
    ret nz                                        ; $6560: $c0

    ret nz                                        ; $6561: $c0

    ret                                           ; $6562: $c9


    ld h, [hl]                                    ; $6563: $66
    pop hl                                        ; $6564: $e1
    ret nz                                        ; $6565: $c0

    swap b                                        ; $6566: $cb $30
    call $ffff                                    ; $6568: $cd $ff $ff
    cp $ab                                        ; $656b: $fe $ab
    ld a, [hl]                                    ; $656d: $7e
    ld bc, $f6ff                                  ; $656e: $01 $ff $f6
    add hl, bc                                    ; $6571: $09
    ld l, d                                       ; $6572: $6a
    dec d                                         ; $6573: $15
    or [hl]                                       ; $6574: $b6
    add hl, bc                                    ; $6575: $09
    ld a, h                                       ; $6576: $7c
    ld bc, $2a17                                  ; $6577: $01 $17 $2a
    ld bc, $2054                                  ; $657a: $01 $54 $20
    ret nz                                        ; $657d: $c0

    cp $ff                                        ; $657e: $fe $ff
    ld [c], a                                     ; $6580: $e2
    ld l, $e0                                     ; $6581: $2e $e0
    dec l                                         ; $6583: $2d
    pop hl                                        ; $6584: $e1
    cp $c2                                        ; $6585: $fe $c2
    ret nz                                        ; $6587: $c0

    add c                                         ; $6588: $81
    add b                                         ; $6589: $80
    add hl, bc                                    ; $658a: $09
    nop                                           ; $658b: $00
    sub l                                         ; $658c: $95
    add b                                         ; $658d: $80
    ld c, c                                       ; $658e: $49
    ccf                                           ; $658f: $3f
    ld b, b                                       ; $6590: $40
    add e                                         ; $6591: $83
    add d                                         ; $6592: $82
    push de                                       ; $6593: $d5
    call nc, Call_000_30ab                        ; $6594: $d4 $ab $30
    ret nz                                        ; $6597: $c0

    jr nz, jr_028_655d                            ; $6598: $20 $c3

    rst $38                                       ; $659a: $ff
    ldh a, [$f0]                                  ; $659b: $f0 $f0
    ld [$d4ea], a                                 ; $659d: $ea $ea $d4
    call nc, $fafa                                ; $65a0: $d4 $fa $fa
    ld [hl], a                                    ; $65a3: $77
    nop                                           ; $65a4: $00
    nop                                           ; $65a5: $00
    xor d                                         ; $65a6: $aa
    inc h                                         ; $65a7: $24
    ret nz                                        ; $65a8: $c0

    ld d, l                                       ; $65a9: $55
    rst $38                                       ; $65aa: $ff
    xor d                                         ; $65ab: $aa
    call $7bc0                                    ; $65ac: $cd $c0 $7b
    xor d                                         ; $65af: $aa
    ld d, l                                       ; $65b0: $55
    ret z                                         ; $65b1: $c8

    pop bc                                        ; $65b2: $c1
    sub $f9                                       ; $65b3: $d6 $f9
    ld h, d                                       ; $65b5: $62
    db $fd                                        ; $65b6: $fd
    db $fc                                        ; $65b7: $fc
    db $eb                                        ; $65b8: $eb
    rst $38                                       ; $65b9: $ff
    ld [c], a                                     ; $65ba: $e2
    db $fd                                        ; $65bb: $fd
    ld d, [hl]                                    ; $65bc: $56
    ld sp, hl                                     ; $65bd: $f9
    and d                                         ; $65be: $a2
    db $fd                                        ; $65bf: $fd
    ld b, $f9                                     ; $65c0: $06 $f9
    rst $38                                       ; $65c2: $ff
    xor d                                         ; $65c3: $aa
    ld d, l                                       ; $65c4: $55
    cp $01                                        ; $65c5: $fe $01
    db $fc                                        ; $65c7: $fc
    rst $38                                       ; $65c8: $ff
    ld a, [$ffff]                                 ; $65c9: $fa $ff $ff
    rst $28                                       ; $65cc: $ef
    rst $38                                       ; $65cd: $ff
    db $dd                                        ; $65ce: $dd
    rst $38                                       ; $65cf: $ff
    or [hl]                                       ; $65d0: $b6
    rst $38                                       ; $65d1: $ff
    add sp, -$01                                  ; $65d2: $e8 $ff
    rra                                           ; $65d4: $1f
    ld [hl], d                                    ; $65d5: $72
    db $fd                                        ; $65d6: $fd
    rst $10                                       ; $65d7: $d7
    ld hl, sp+$62                                 ; $65d8: $f8 $62
    ld e, [hl]                                    ; $65da: $5e
    ret nz                                        ; $65db: $c0

    cp $eb                                        ; $65dc: $fe $eb
    nop                                           ; $65de: $00
    nop                                           ; $65df: $00
    nop                                           ; $65e0: $00
    scf                                           ; $65e1: $37
    add hl, hl                                    ; $65e2: $29
    jr z, @+$27                                   ; $65e3: $28 $25

    rst $38                                       ; $65e5: $ff
    db $e4                                        ; $65e6: $e4
    jr z, jr_028_6612                             ; $65e7: $28 $29

    rst $38                                       ; $65e9: $ff
    ldh [$f2], a                                  ; $65ea: $e0 $f2
    db $eb                                        ; $65ec: $eb
    ld e, h                                       ; $65ed: $5c
    xor $ef                                       ; $65ee: $ee $ef
    ldh [$ef], a                                  ; $65f0: $e0 $ef
    ld h, $07                                     ; $65f2: $26 $07
    ld [$e3fe], sp                                ; $65f4: $08 $fe $e3
    ld h, $f2                                     ; $65f7: $26 $f2
    rst $28                                       ; $65f9: $ef
    inc a                                         ; $65fa: $3c

jr_028_65fb:
    ldh [rIE], a                                  ; $65fb: $e0 $ff
    ldh [$e0], a                                  ; $65fd: $e0 $e0
    dec d                                         ; $65ff: $15
    ld d, $09                                     ; $6600: $16 $09
    ld a, [bc]                                    ; $6602: $0a
    cp $e1                                        ; $6603: $fe $e1
    ret nz                                        ; $6605: $c0

    db $e3                                        ; $6606: $e3
    jr jr_028_65fb                                ; $6607: $18 $f2

    ld [$e2c0], a                                 ; $6609: $ea $c0 $e2
    ld [c], a                                     ; $660c: $e2
    db $e3                                        ; $660d: $e3
    dec d                                         ; $660e: $15
    ld d, $a0                                     ; $660f: $16 $a0
    db $e3                                        ; $6611: $e3

jr_028_6612:
    db $f4                                        ; $6612: $f4
    db $e3                                        ; $6613: $e3
    ldh [$e9], a                                  ; $6614: $e0 $e9
    rrca                                          ; $6616: $0f
    rla                                           ; $6617: $17
    jr jr_028_6625                                ; $6618: $18 $0b

    inc c                                         ; $661a: $0c
    cp $e1                                        ; $661b: $fe $e1
    add b                                         ; $661d: $80
    db $e3                                        ; $661e: $e3
    ld a, [c]                                     ; $661f: $f2
    ld [$e280], a                                 ; $6620: $ea $80 $e2
    add $e2                                       ; $6623: $c6 $e2

jr_028_6625:
    db $e3                                        ; $6625: $e3
    rla                                           ; $6626: $17
    jr jr_028_6689                                ; $6627: $18 $60

    db $e3                                        ; $6629: $e3
    db $f4                                        ; $662a: $f4
    db $e3                                        ; $662b: $e3
    ldh [$e9], a                                  ; $662c: $e0 $e9
    add hl, de                                    ; $662e: $19
    ld a, [de]                                    ; $662f: $1a
    add e                                         ; $6630: $83
    dec c                                         ; $6631: $0d
    ld c, $fe                                     ; $6632: $0e $fe
    pop hl                                        ; $6634: $e1
    ld b, b                                       ; $6635: $40
    db $e3                                        ; $6636: $e3
    ld a, [c]                                     ; $6637: $f2
    ld [$e240], a                                 ; $6638: $ea $40 $e2
    ld [c], a                                     ; $663b: $e2
    db $e3                                        ; $663c: $e3
    add hl, de                                    ; $663d: $19
    pop af                                        ; $663e: $f1
    ld a, [de]                                    ; $663f: $1a
    jr nz, jr_028_6625                            ; $6640: $20 $e3

    db $f4                                        ; $6642: $f4
    db $e3                                        ; $6643: $e3
    ldh [$e9], a                                  ; $6644: $e0 $e9
    rrca                                          ; $6646: $0f
    db $10                                        ; $6647: $10
    ld de, $8f11                                  ; $6648: $11 $11 $8f
    ld de, $1312                                  ; $664b: $11 $12 $13
    inc d                                         ; $664e: $14
    nop                                           ; $664f: $00
    db $e3                                        ; $6650: $e3
    ld a, [c]                                     ; $6651: $f2

jr_028_6652:
    ld [$e6e0], a                                 ; $6652: $ea $e0 $e6
    ld [de], a                                    ; $6655: $12
    ld l, b                                       ; $6656: $68
    ldh [$ea], a                                  ; $6657: $e0 $ea
    ld a, [c]                                     ; $6659: $f2
    and $e0                                       ; $665a: $e6 $e0
    jp nz, $ff01                                  ; $665c: $c2 $01 $ff

    ld [c], a                                     ; $665f: $e2
    ld [bc], a                                    ; $6660: $02

jr_028_6661:
    ld [bc], a                                    ; $6661: $02
    ret nz                                        ; $6662: $c0

jr_028_6663:
    jp $f278                                      ; $6663: $c3 $78 $f2


    ld [$ffe0], a                                 ; $6666: $ea $e0 $ff
    and b                                         ; $6669: $a0
    ret nz                                        ; $666a: $c0

    ld [bc], a                                    ; $666b: $02
    ld [bc], a                                    ; $666c: $02

jr_028_666d:
    ld [bc], a                                    ; $666d: $02
    inc b                                         ; $666e: $04
    ret nz                                        ; $666f: $c0

jr_028_6670:
    add sp, $30                                   ; $6670: $e8 $30
    pop af                                        ; $6672: $f1
    ldh [$fd], a                                  ; $6673: $e0 $fd
    pop hl                                        ; $6675: $e1
    ldh [rIE], a                                  ; $6676: $e0 $ff
    ld h, b                                       ; $6678: $60
    push bc                                       ; $6679: $c5
    dec de                                        ; $667a: $1b

jr_028_667b:
    inc e                                         ; $667b: $1c
    cp $e1                                        ; $667c: $fe $e1
    ret nz                                        ; $667e: $c0

    rst $20                                       ; $667f: $e7
    nop                                           ; $6680: $00
    ldh a, [$e3]                                  ; $6681: $f0 $e3
    ldh [rIE], a                                  ; $6683: $e0 $ff
    jr nz, jr_028_6652                            ; $6685: $20 $cb

    add b                                         ; $6687: $80
    rst $20                                       ; $6688: $e7

jr_028_6689:
    nop                                           ; $6689: $00
    db $d3                                        ; $668a: $d3
    ldh [$f7], a                                  ; $668b: $e0 $f7
    jr nc, jr_028_6652                            ; $668d: $30 $c3

    ld b, b                                       ; $668f: $40
    rst $20                                       ; $6690: $e7
    nop                                           ; $6691: $00
    jr nz, jr_028_6661                            ; $6692: $20 $cd

    ldh [$ed], a                                  ; $6694: $e0 $ed
    ret nc                                        ; $6696: $d0

    and e                                         ; $6697: $a3
    jr nz, jr_028_6663                            ; $6698: $20 $c9

    cp $a1                                        ; $669a: $fe $a1
    nop                                           ; $669c: $00
    rst $20                                       ; $669d: $e7
    jr nz, jr_028_666d                            ; $669e: $20 $cd

    ldh [$ed], a                                  ; $66a0: $e0 $ed
    db $10                                        ; $66a2: $10
    ret nc                                        ; $66a3: $d0

    and e                                         ; $66a4: $a3
    jr nz, jr_028_6670                            ; $66a5: $20 $c9

    cp $a1                                        ; $66a7: $fe $a1
    add b                                         ; $66a9: $80
    add $03                                       ; $66aa: $c6 $03
    jr nz, jr_028_667b                            ; $66ac: $20 $cd

    ldh [$ed], a                                  ; $66ae: $e0 $ed
    ret nc                                        ; $66b0: $d0

    and e                                         ; $66b1: $a3
    ret nz                                        ; $66b2: $c0

    jr nz, @-$31                                  ; $66b3: $20 $cd

    ld b, b                                       ; $66b5: $40
    rst $00                                       ; $66b6: $c7
    nop                                           ; $66b7: $00
    db $d3                                        ; $66b8: $d3
    jr nz, @-$37                                  ; $66b9: $20 $c7

    ret nc                                        ; $66bb: $d0

    and b                                         ; $66bc: $a0
    nop                                           ; $66bd: $00
    ret nc                                        ; $66be: $d0

    ld hl, $d821                                  ; $66bf: $21 $21 $d8
    nop                                           ; $66c2: $00
    db $db                                        ; $66c3: $db
    ldh [$f7], a                                  ; $66c4: $e0 $f7
    nop                                           ; $66c6: $00
    jp Jump_000_2323                              ; $66c7: $c3 $23 $23


    add b                                         ; $66ca: $80
    add e                                         ; $66cb: $83
    inc hl                                        ; $66cc: $23
    inc hl                                        ; $66cd: $23
    cp b                                          ; $66ce: $b8
    nop                                           ; $66cf: $00
    db $d3                                        ; $66d0: $d3
    ldh [$f6], a                                  ; $66d1: $e0 $f6
    nop                                           ; $66d3: $00
    add e                                         ; $66d4: $83
    daa                                           ; $66d5: $27
    inc h                                         ; $66d6: $24
    inc h                                         ; $66d7: $24
    ld b, b                                       ; $66d8: $40
    add e                                         ; $66d9: $83
    inc h                                         ; $66da: $24
    ld h, e                                       ; $66db: $63
    inc h                                         ; $66dc: $24
    daa                                           ; $66dd: $27
    nop                                           ; $66de: $00
    sub c                                         ; $66df: $91
    ldh [$f7], a                                  ; $66e0: $e0 $f7
    ld a, [de]                                    ; $66e2: $1a
    add h                                         ; $66e3: $84
    ld [hl+], a                                   ; $66e4: $22
    ld [hl+], a                                   ; $66e5: $22
    nop                                           ; $66e6: $00
    add e                                         ; $66e7: $83
    nop                                           ; $66e8: $00
    ld hl, sp-$1c                                 ; $66e9: $f8 $e4
    db $fc                                        ; $66eb: $fc
    db $ed                                        ; $66ec: $ed
    ldh [$fd], a                                  ; $66ed: $e0 $fd
    rst $38                                       ; $66ef: $ff
    rst $38                                       ; $66f0: $ff
    rst $38                                       ; $66f1: $ff
    rst $38                                       ; $66f2: $ff
    rst $38                                       ; $66f3: $ff
    rst $38                                       ; $66f4: $ff
    rst $38                                       ; $66f5: $ff
    rst $38                                       ; $66f6: $ff
    rst $38                                       ; $66f7: $ff
    rst $38                                       ; $66f8: $ff
    nop                                           ; $66f9: $00
    rst $38                                       ; $66fa: $ff
    rst $38                                       ; $66fb: $ff
    rst $38                                       ; $66fc: $ff
    rst $38                                       ; $66fd: $ff
    rst $38                                       ; $66fe: $ff
    rst $38                                       ; $66ff: $ff
    rst $38                                       ; $6700: $ff
    rst $38                                       ; $6701: $ff
    rst $38                                       ; $6702: $ff
    rst $38                                       ; $6703: $ff
    rst $38                                       ; $6704: $ff
    rst $38                                       ; $6705: $ff
    rst $38                                       ; $6706: $ff
    rst $38                                       ; $6707: $ff
    rst $38                                       ; $6708: $ff
    rst $38                                       ; $6709: $ff
    adc h                                         ; $670a: $8c
    rst $38                                       ; $670b: $ff
    rst $38                                       ; $670c: $ff
    db $fd                                        ; $670d: $fd
    db $fc                                        ; $670e: $fc
    dec d                                         ; $670f: $15
    ld d, $fe                                     ; $6710: $16 $fe
    db $e3                                        ; $6712: $e3
    ld a, [c]                                     ; $6713: $f2
    pop af                                        ; $6714: $f1
    rst $38                                       ; $6715: $ff
    rst $38                                       ; $6716: $ff
    add hl, hl                                    ; $6717: $29
    rst $00                                       ; $6718: $c7
    add hl, hl                                    ; $6719: $29
    rla                                           ; $671a: $17

jr_028_671b:
    jr jr_028_671b                                ; $671b: $18 $fe

    db $e3                                        ; $671d: $e3
    ld a, [c]                                     ; $671e: $f2
    pop af                                        ; $671f: $f1
    rst $38                                       ; $6720: $ff
    rst $38                                       ; $6721: $ff
    add hl, hl                                    ; $6722: $29
    add hl, hl                                    ; $6723: $29
    ld h, e                                       ; $6724: $63
    add hl, de                                    ; $6725: $19
    ld a, [de]                                    ; $6726: $1a
    cp $e3                                        ; $6727: $fe $e3
    ld a, [c]                                     ; $6729: $f2
    pop af                                        ; $672a: $f1
    rst $38                                       ; $672b: $ff
    rst $38                                       ; $672c: $ff
    add hl, hl                                    ; $672d: $29
    add hl, hl                                    ; $672e: $29
    nop                                           ; $672f: $00
    ld b, l                                       ; $6730: $45
    ld l, h                                       ; $6731: $6c
    ld a, [c]                                     ; $6732: $f2
    pop af                                        ; $6733: $f1
    rst $38                                       ; $6734: $ff
    rst $38                                       ; $6735: $ff
    add hl, hl                                    ; $6736: $29
    add hl, hl                                    ; $6737: $29
    ld [bc], a                                    ; $6738: $02
    inc hl                                        ; $6739: $23
    add hl, bc                                    ; $673a: $09
    ld a, [bc]                                    ; $673b: $0a
    ld a, [c]                                     ; $673c: $f2
    pop af                                        ; $673d: $f1
    ld [hl], $ff                                  ; $673e: $36 $ff
    rst $38                                       ; $6740: $ff
    add hl, hl                                    ; $6741: $29
    add hl, hl                                    ; $6742: $29
    ld [bc], a                                    ; $6743: $02
    inc hl                                        ; $6744: $23
    dec bc                                        ; $6745: $0b
    inc c                                         ; $6746: $0c
    ld a, [c]                                     ; $6747: $f2
    pop af                                        ; $6748: $f1
    rst $38                                       ; $6749: $ff
    rst $38                                       ; $674a: $ff
    dec de                                        ; $674b: $1b
    add hl, hl                                    ; $674c: $29
    add hl, hl                                    ; $674d: $29
    ld [bc], a                                    ; $674e: $02
    inc hl                                        ; $674f: $23
    dec c                                         ; $6750: $0d
    ld c, $f2                                     ; $6751: $0e $f2
    pop af                                        ; $6753: $f1
    rst $38                                       ; $6754: $ff
    rst $38                                       ; $6755: $ff
    nop                                           ; $6756: $00
    rst $38                                       ; $6757: $ff
    nop                                           ; $6758: $00
    rst $38                                       ; $6759: $ff
    rst $38                                       ; $675a: $ff
    rst $38                                       ; $675b: $ff
    rst $38                                       ; $675c: $ff
    rst $38                                       ; $675d: $ff
    rst $38                                       ; $675e: $ff
    rst $38                                       ; $675f: $ff
    rst $38                                       ; $6760: $ff
    rst $38                                       ; $6761: $ff
    rst $38                                       ; $6762: $ff
    rst $38                                       ; $6763: $ff
    rst $38                                       ; $6764: $ff
    rst $38                                       ; $6765: $ff
    rst $38                                       ; $6766: $ff
    rst $38                                       ; $6767: $ff
    rst $38                                       ; $6768: $ff
    nop                                           ; $6769: $00
    rst $38                                       ; $676a: $ff
    rst $38                                       ; $676b: $ff
    rst $38                                       ; $676c: $ff
    rst $38                                       ; $676d: $ff
    rst $38                                       ; $676e: $ff
    rst $38                                       ; $676f: $ff
    rst $38                                       ; $6770: $ff
    rst $38                                       ; $6771: $ff
    rst $38                                       ; $6772: $ff
    rst $38                                       ; $6773: $ff
    rst $38                                       ; $6774: $ff
    rst $38                                       ; $6775: $ff
    rst $38                                       ; $6776: $ff
    rst $38                                       ; $6777: $ff
    rst $38                                       ; $6778: $ff
    rst $38                                       ; $6779: $ff
    nop                                           ; $677a: $00
    rst $38                                       ; $677b: $ff
    rst $38                                       ; $677c: $ff
    rst $38                                       ; $677d: $ff
    rst $38                                       ; $677e: $ff
    rst $38                                       ; $677f: $ff
    rst $38                                       ; $6780: $ff
    rst $38                                       ; $6781: $ff
    rst $38                                       ; $6782: $ff
    rst $38                                       ; $6783: $ff
    rst $38                                       ; $6784: $ff
    rst $38                                       ; $6785: $ff
    rst $38                                       ; $6786: $ff
    rst $38                                       ; $6787: $ff
    rst $38                                       ; $6788: $ff
    rst $38                                       ; $6789: $ff
    rst $38                                       ; $678a: $ff
    nop                                           ; $678b: $00
    rst $38                                       ; $678c: $ff
    rst $38                                       ; $678d: $ff
    rst $38                                       ; $678e: $ff
    rst $38                                       ; $678f: $ff
    rst $38                                       ; $6790: $ff
    rst $38                                       ; $6791: $ff
    rst $38                                       ; $6792: $ff
    rst $38                                       ; $6793: $ff
    rst $38                                       ; $6794: $ff
    rst $38                                       ; $6795: $ff
    rst $38                                       ; $6796: $ff
    rst $38                                       ; $6797: $ff
    rst $38                                       ; $6798: $ff
    rst $38                                       ; $6799: $ff
    rst $38                                       ; $679a: $ff
    rst $38                                       ; $679b: $ff
    nop                                           ; $679c: $00
    rst $38                                       ; $679d: $ff
    rst $38                                       ; $679e: $ff
    rst $38                                       ; $679f: $ff
    rst $38                                       ; $67a0: $ff
    rst $38                                       ; $67a1: $ff
    rst $38                                       ; $67a2: $ff
    rst $38                                       ; $67a3: $ff
    rst $38                                       ; $67a4: $ff
    rst $38                                       ; $67a5: $ff
    rst $38                                       ; $67a6: $ff
    rst $38                                       ; $67a7: $ff
    rst $38                                       ; $67a8: $ff
    rst $38                                       ; $67a9: $ff
    rst $38                                       ; $67aa: $ff
    rst $38                                       ; $67ab: $ff
    rst $38                                       ; $67ac: $ff
    nop                                           ; $67ad: $00
    rst $38                                       ; $67ae: $ff
    rst $38                                       ; $67af: $ff
    rst $38                                       ; $67b0: $ff
    rst $38                                       ; $67b1: $ff
    rst $38                                       ; $67b2: $ff
    rst $38                                       ; $67b3: $ff
    rst $38                                       ; $67b4: $ff
    rst $38                                       ; $67b5: $ff
    rst $38                                       ; $67b6: $ff
    rst $38                                       ; $67b7: $ff
    rst $38                                       ; $67b8: $ff
    rst $38                                       ; $67b9: $ff
    rst $38                                       ; $67ba: $ff
    rst $38                                       ; $67bb: $ff
    rst $38                                       ; $67bc: $ff
    rst $38                                       ; $67bd: $ff
    nop                                           ; $67be: $00
    rst $38                                       ; $67bf: $ff
    rst $38                                       ; $67c0: $ff
    rst $38                                       ; $67c1: $ff
    rst $38                                       ; $67c2: $ff
    rst $38                                       ; $67c3: $ff
    rst $38                                       ; $67c4: $ff
    rst $38                                       ; $67c5: $ff
    rst $38                                       ; $67c6: $ff
    rst $38                                       ; $67c7: $ff
    rst $38                                       ; $67c8: $ff
    rst $38                                       ; $67c9: $ff
    rst $38                                       ; $67ca: $ff
    rst $38                                       ; $67cb: $ff
    rst $38                                       ; $67cc: $ff
    rst $38                                       ; $67cd: $ff
    rst $38                                       ; $67ce: $ff
    nop                                           ; $67cf: $00
    rst $38                                       ; $67d0: $ff
    rst $38                                       ; $67d1: $ff
    ld b, b                                       ; $67d2: $40
    add hl, bc                                    ; $67d3: $09
    nop                                           ; $67d4: $00
    nop                                           ; $67d5: $00
    nop                                           ; $67d6: $00
    inc hl                                        ; $67d7: $23
    inc l                                         ; $67d8: $2c
    inc c                                         ; $67d9: $0c
    rst $38                                       ; $67da: $ff
    push hl                                       ; $67db: $e5
    or $e1                                        ; $67dc: $f6 $e1
    ld a, [c]                                     ; $67de: $f2
    jp hl                                         ; $67df: $e9


    inc l                                         ; $67e0: $2c
    db $fd                                        ; $67e1: $fd
    db $e3                                        ; $67e2: $e3
    ldh [$f8], a                                  ; $67e3: $e0 $f8
    ld b, $fe                                     ; $67e5: $06 $fe
    ld [c], a                                     ; $67e7: $e2
    inc c                                         ; $67e8: $0c
    dec bc                                        ; $67e9: $0b
    rst $38                                       ; $67ea: $ff
    db $e4                                        ; $67eb: $e4
    ret nz                                        ; $67ec: $c0

    db $e3                                        ; $67ed: $e3
    ld a, [c]                                     ; $67ee: $f2
    and $ff                                       ; $67ef: $e6 $ff
    push hl                                       ; $67f1: $e5
    ldh [$fc], a                                  ; $67f2: $e0 $fc
    ld bc, $ce0c                                  ; $67f4: $01 $0c $ce
    ld [$ebf2], a                                 ; $67f7: $ea $f2 $eb
    ldh [rIE], a                                  ; $67fa: $e0 $ff
    ldh [rIE], a                                  ; $67fc: $e0 $ff
    ldh [$f7], a                                  ; $67fe: $e0 $f7
    ccf                                           ; $6800: $3f
    db $e3                                        ; $6801: $e3
    ret nz                                        ; $6802: $c0

    rst $38                                       ; $6803: $ff
    ld b, d                                       ; $6804: $42
    ret nz                                        ; $6805: $c0

    db $fd                                        ; $6806: $fd
    dec c                                         ; $6807: $0d
    rst $38                                       ; $6808: $ff
    db $e4                                        ; $6809: $e4
    ld a, [c]                                     ; $680a: $f2
    rst $28                                       ; $680b: $ef
    ldh [$fb], a                                  ; $680c: $e0 $fb
    add b                                         ; $680e: $80
    push hl                                       ; $680f: $e5
    ld a, [bc]                                    ; $6810: $0a
    rst $38                                       ; $6811: $ff
    db $e4                                        ; $6812: $e4
    ld b, b                                       ; $6813: $40
    ld a, [c]                                     ; $6814: $f2
    rst $28                                       ; $6815: $ef
    ld h, c                                       ; $6816: $61
    ld [c], a                                     ; $6817: $e2
    ldh [$f6], a                                  ; $6818: $e0 $f6
    ret nz                                        ; $681a: $c0

    rst $38                                       ; $681b: $ff
    ldh [$fb], a                                  ; $681c: $e0 $fb
    nop                                           ; $681e: $00
    push hl                                       ; $681f: $e5
    adc e                                         ; $6820: $8b
    rst $38                                       ; $6821: $ff
    ld [c], a                                     ; $6822: $e2
    nop                                           ; $6823: $00
    xor [hl]                                      ; $6824: $ae
    ld [c], a                                     ; $6825: $e2
    sub d                                         ; $6826: $92
    ld [c], a                                     ; $6827: $e2
    ldh a, [$e3]                                  ; $6828: $f0 $e3
    nop                                           ; $682a: $00
    rst $20                                       ; $682b: $e7
    ldh [$e7], a                                  ; $682c: $e0 $e7
    ld d, d                                       ; $682e: $52
    db $e3                                        ; $682f: $e3
    ldh [$e5], a                                  ; $6830: $e0 $e5
    ret nz                                        ; $6832: $c0

    rst $28                                       ; $6833: $ef
    nop                                           ; $6834: $00
    ldh [$eb], a                                  ; $6835: $e0 $eb
    ret nz                                        ; $6837: $c0

    rst $38                                       ; $6838: $ff
    add b                                         ; $6839: $80
    ret                                           ; $683a: $c9


    add b                                         ; $683b: $80
    rst $20                                       ; $683c: $e7
    add b                                         ; $683d: $80
    db $d3                                        ; $683e: $d3
    ldh [$c7], a                                  ; $683f: $e0 $c7
    ld b, b                                       ; $6841: $40
    db $d3                                        ; $6842: $d3
    ret nz                                        ; $6843: $c0

    rst $38                                       ; $6844: $ff
    nop                                           ; $6845: $00
    ret nz                                        ; $6846: $c0

    rst $38                                       ; $6847: $ff
    and b                                         ; $6848: $a0
    db $eb                                        ; $6849: $eb
    ret nz                                        ; $684a: $c0

    rst $38                                       ; $684b: $ff
    nop                                           ; $684c: $00
    ret                                           ; $684d: $c9


    ld b, b                                       ; $684e: $40
    rst $00                                       ; $684f: $c7
    nop                                           ; $6850: $00
    db $d3                                        ; $6851: $d3
    ldh [$ef], a                                  ; $6852: $e0 $ef
    cp a                                          ; $6854: $bf
    add h                                         ; $6855: $84
    ret nz                                        ; $6856: $c0

    ld b, b                                       ; $6857: $40
    call c, $ffe0                                 ; $6858: $dc $e0 $ff
    ret nz                                        ; $685b: $c0

    and [hl]                                      ; $685c: $a6
    inc a                                         ; $685d: $3c
    add d                                         ; $685e: $82
    ldh [rIE], a                                  ; $685f: $e0 $ff
    ldh [$ac], a                                  ; $6861: $e0 $ac
    ld c, h                                       ; $6863: $4c
    call z, $ff94                                 ; $6864: $cc $94 $ff
    ld [c], a                                     ; $6867: $e2
    ret nz                                        ; $6868: $c0

    rst $20                                       ; $6869: $e7
    db $ec                                        ; $686a: $ec
    rst $38                                       ; $686b: $ff
    ld [c], a                                     ; $686c: $e2
    ld l, h                                       ; $686d: $6c
    ldh [rIE], a                                  ; $686e: $e0 $ff
    ret nz                                        ; $6870: $c0

    add h                                         ; $6871: $84
    adc h                                         ; $6872: $8c
    ld hl, sp-$01                                 ; $6873: $f8 $ff
    pop hl                                        ; $6875: $e1
    ret nz                                        ; $6876: $c0

    pop hl                                        ; $6877: $e1
    ld [hl], d                                    ; $6878: $72
    and h                                         ; $6879: $a4
    db $ec                                        ; $687a: $ec
    adc h                                         ; $687b: $8c
    adc h                                         ; $687c: $8c
    xor h                                         ; $687d: $ac
    xor h                                         ; $687e: $ac
    ld sp, $40ac                                  ; $687f: $31 $ac $40
    and a                                         ; $6882: $a7
    ldh [$fa], a                                  ; $6883: $e0 $fa
    add c                                         ; $6885: $81
    ld h, [hl]                                    ; $6886: $66
    adc h                                         ; $6887: $8c
    adc h                                         ; $6888: $8c
    ld hl, sp-$19                                 ; $6889: $f8 $e7
    call nz, Call_000_0066                        ; $688b: $c4 $66 $00
    ldh [$e8], a                                  ; $688e: $e0 $e8
    ld hl, sp-$19                                 ; $6890: $f8 $e7
    ld [c], a                                     ; $6892: $e2
    jp hl                                         ; $6893: $e9


    ret nz                                        ; $6894: $c0

    rst $38                                       ; $6895: $ff
    ret nz                                        ; $6896: $c0

    rst $38                                       ; $6897: $ff
    sbc $fb                                       ; $6898: $de $fb
    ret nz                                        ; $689a: $c0

    rst $38                                       ; $689b: $ff
    ret nz                                        ; $689c: $c0

    rst $38                                       ; $689d: $ff
    add b                                         ; $689e: $80
    ret nz                                        ; $689f: $c0

    rst $38                                       ; $68a0: $ff
    ld b, b                                       ; $68a1: $40
    rst $30                                       ; $68a2: $f7
    cp $fd                                        ; $68a3: $fe $fd
    ret nz                                        ; $68a5: $c0

    rst $38                                       ; $68a6: $ff
    ret nz                                        ; $68a7: $c0

    rst $38                                       ; $68a8: $ff
    ld e, [hl]                                    ; $68a9: $5e
    ei                                            ; $68aa: $fb
    ld [hl-], a                                   ; $68ab: $32
    jp hl                                         ; $68ac: $e9


    ld l, h                                       ; $68ad: $6c
    nop                                           ; $68ae: $00
    rst $38                                       ; $68af: $ff
    jp hl                                         ; $68b0: $e9


    ret nz                                        ; $68b1: $c0

    rst $38                                       ; $68b2: $ff
    db $fc                                        ; $68b3: $fc
    ei                                            ; $68b4: $fb
    or e                                          ; $68b5: $b3
    ld [c], a                                     ; $68b6: $e2
    add b                                         ; $68b7: $80
    ld b, a                                       ; $68b8: $47
    ld [hl], a                                    ; $68b9: $77
    inc hl                                        ; $68ba: $23
    ret nz                                        ; $68bb: $c0

    ld l, $40                                     ; $68bc: $2e $40
    cp $00                                        ; $68be: $fe $00
    ret nz                                        ; $68c0: $c0

    rst $38                                       ; $68c1: $ff
    ret nz                                        ; $68c2: $c0

    rst $38                                       ; $68c3: $ff
    ret nz                                        ; $68c4: $c0

    rst $38                                       ; $68c5: $ff
    add b                                         ; $68c6: $80
    rst $10                                       ; $68c7: $d7
    nop                                           ; $68c8: $00
    ld b, l                                       ; $68c9: $45
    or a                                          ; $68ca: $b7
    inc bc                                        ; $68cb: $03
    nop                                           ; $68cc: $00
    ld c, l                                       ; $68cd: $4d
    ret nz                                        ; $68ce: $c0

    rst $38                                       ; $68cf: $ff
    nop                                           ; $68d0: $00
    add b                                         ; $68d1: $80
    rst $38                                       ; $68d2: $ff
    ret nz                                        ; $68d3: $c0

    rst $38                                       ; $68d4: $ff
    ret nz                                        ; $68d5: $c0

    rst $38                                       ; $68d6: $ff
    ret nz                                        ; $68d7: $c0

    rst $38                                       ; $68d8: $ff
    ret nz                                        ; $68d9: $c0

    rst $38                                       ; $68da: $ff
    nop                                           ; $68db: $00
    rst $38                                       ; $68dc: $ff
    nop                                           ; $68dd: $00
    rst $38                                       ; $68de: $ff
    add b                                         ; $68df: $80
    cp a                                          ; $68e0: $bf
    nop                                           ; $68e1: $00
    call z, $c0ff                                 ; $68e2: $cc $ff $c0
    rst $38                                       ; $68e5: $ff
    rst $38                                       ; $68e6: $ff
    rst $38                                       ; $68e7: $ff
    ret nz                                        ; $68e8: $c0

    rst $38                                       ; $68e9: $ff
    rst $38                                       ; $68ea: $ff
    rst $38                                       ; $68eb: $ff
    ret nz                                        ; $68ec: $c0

    rst $38                                       ; $68ed: $ff
    rst $38                                       ; $68ee: $ff
    rst $38                                       ; $68ef: $ff
    ret nz                                        ; $68f0: $c0

    rst $38                                       ; $68f1: $ff
    nop                                           ; $68f2: $00
    ret nz                                        ; $68f3: $c0

    rst $38                                       ; $68f4: $ff
    ret nz                                        ; $68f5: $c0

    rst $38                                       ; $68f6: $ff
    ret nz                                        ; $68f7: $c0

    rst $38                                       ; $68f8: $ff
    ret nz                                        ; $68f9: $c0

    rst $38                                       ; $68fa: $ff
    ret nz                                        ; $68fb: $c0

    rst $38                                       ; $68fc: $ff
    ret nz                                        ; $68fd: $c0

    rst $38                                       ; $68fe: $ff
    ret nz                                        ; $68ff: $c0

    rst $38                                       ; $6900: $ff
    ret nz                                        ; $6901: $c0

    rst $38                                       ; $6902: $ff
    nop                                           ; $6903: $00
    ret nz                                        ; $6904: $c0

    rst $38                                       ; $6905: $ff
    rst $38                                       ; $6906: $ff
    rst $38                                       ; $6907: $ff
    ret nz                                        ; $6908: $c0

    rst $38                                       ; $6909: $ff
    rst $38                                       ; $690a: $ff
    rst $38                                       ; $690b: $ff
    ret nz                                        ; $690c: $c0

    rst $38                                       ; $690d: $ff
    rst $38                                       ; $690e: $ff
    rst $38                                       ; $690f: $ff
    ret nz                                        ; $6910: $c0

    rst $38                                       ; $6911: $ff
    ret nz                                        ; $6912: $c0

    rst $38                                       ; $6913: $ff
    nop                                           ; $6914: $00
    ret nz                                        ; $6915: $c0

    rst $38                                       ; $6916: $ff
    ret nz                                        ; $6917: $c0

    rst $38                                       ; $6918: $ff
    ret nz                                        ; $6919: $c0

    rst $38                                       ; $691a: $ff
    ret nz                                        ; $691b: $c0

    rst $38                                       ; $691c: $ff
    ret nz                                        ; $691d: $c0

    rst $38                                       ; $691e: $ff
    ret nz                                        ; $691f: $c0

    rst $38                                       ; $6920: $ff
    ret nz                                        ; $6921: $c0

    rst $38                                       ; $6922: $ff
    ret nz                                        ; $6923: $c0

    rst $38                                       ; $6924: $ff
    nop                                           ; $6925: $00
    call z, $c0ff                                 ; $6926: $cc $ff $c0
    rst $38                                       ; $6929: $ff
    rst $38                                       ; $692a: $ff
    rst $38                                       ; $692b: $ff
    ret nz                                        ; $692c: $c0

    rst $38                                       ; $692d: $ff
    rst $38                                       ; $692e: $ff
    rst $38                                       ; $692f: $ff
    ret nz                                        ; $6930: $c0

    rst $38                                       ; $6931: $ff
    rst $38                                       ; $6932: $ff
    rst $38                                       ; $6933: $ff
    ret nz                                        ; $6934: $c0

    rst $38                                       ; $6935: $ff
    nop                                           ; $6936: $00
    ret nz                                        ; $6937: $c0

    rst $38                                       ; $6938: $ff
    ret nz                                        ; $6939: $c0

    rst $38                                       ; $693a: $ff
    ret nz                                        ; $693b: $c0

    rst $38                                       ; $693c: $ff
    ret nz                                        ; $693d: $c0

    rst $38                                       ; $693e: $ff
    ret nz                                        ; $693f: $c0

    rst $38                                       ; $6940: $ff
    ret nz                                        ; $6941: $c0

    rst $38                                       ; $6942: $ff
    ret nz                                        ; $6943: $c0

    rst $38                                       ; $6944: $ff
    ret nz                                        ; $6945: $c0

    rst $38                                       ; $6946: $ff
    nop                                           ; $6947: $00
    ret nz                                        ; $6948: $c0

    rst $38                                       ; $6949: $ff
    rst $38                                       ; $694a: $ff
    rst $38                                       ; $694b: $ff
    ret nz                                        ; $694c: $c0

    rst $38                                       ; $694d: $ff
    rst $38                                       ; $694e: $ff
    rst $38                                       ; $694f: $ff
    ret nz                                        ; $6950: $c0

    rst $38                                       ; $6951: $ff
    rst $38                                       ; $6952: $ff
    rst $38                                       ; $6953: $ff
    ret nz                                        ; $6954: $c0

    rst $38                                       ; $6955: $ff
    ret nz                                        ; $6956: $c0

    db $fd                                        ; $6957: $fd
    nop                                           ; $6958: $00
    nop                                           ; $6959: $00
    nop                                           ; $695a: $00
    dec b                                         ; $695b: $05
    nop                                           ; $695c: $00
    rst $38                                       ; $695d: $ff
    db $fc                                        ; $695e: $fc
    rrca                                          ; $695f: $0f
    rst $38                                       ; $6960: $ff
    ld [c], a                                     ; $6961: $e2
    ld sp, hl                                     ; $6962: $f9
    push hl                                       ; $6963: $e5
    ldh [$f0], a                                  ; $6964: $e0 $f0
    ei                                            ; $6966: $fb
    db $e3                                        ; $6967: $e3
    ld sp, hl                                     ; $6968: $f9
    db $e4                                        ; $6969: $e4
    nop                                           ; $696a: $00
    ldh [rIE], a                                  ; $696b: $e0 $ff
    ldh [rIE], a                                  ; $696d: $e0 $ff
    add b                                         ; $696f: $80
    rst $28                                       ; $6970: $ef
    ret nz                                        ; $6971: $c0

    ld [c], a                                     ; $6972: $e2
    add b                                         ; $6973: $80
    rst $38                                       ; $6974: $ff
    and b                                         ; $6975: $a0
    rst $38                                       ; $6976: $ff
    ldh [rIE], a                                  ; $6977: $e0 $ff
    add b                                         ; $6979: $80
    ld a, [$dd00]                                 ; $697a: $fa $00 $dd
    rst $10                                       ; $697d: $d7
    ld [c], a                                     ; $697e: $e2
    ld hl, sp-$01                                 ; $697f: $f8 $ff
    rst $38                                       ; $6981: $ff
    rst $38                                       ; $6982: $ff
    rst $38                                       ; $6983: $ff
    rst $38                                       ; $6984: $ff
    rst $38                                       ; $6985: $ff
    rst $38                                       ; $6986: $ff
    rst $38                                       ; $6987: $ff
    rst $38                                       ; $6988: $ff
    rst $38                                       ; $6989: $ff
    rst $38                                       ; $698a: $ff
    rst $38                                       ; $698b: $ff
    nop                                           ; $698c: $00
    rst $38                                       ; $698d: $ff
    rst $38                                       ; $698e: $ff
    rst $38                                       ; $698f: $ff
    rst $38                                       ; $6990: $ff
    rst $38                                       ; $6991: $ff
    rst $38                                       ; $6992: $ff
    rst $38                                       ; $6993: $ff
    rst $38                                       ; $6994: $ff

jr_028_6995:
    rst $38                                       ; $6995: $ff
    rst $38                                       ; $6996: $ff
    rst $38                                       ; $6997: $ff
    rst $38                                       ; $6998: $ff
    rst $38                                       ; $6999: $ff
    rst $38                                       ; $699a: $ff
    rst $38                                       ; $699b: $ff
    rst $38                                       ; $699c: $ff
    nop                                           ; $699d: $00
    rst $38                                       ; $699e: $ff
    rst $38                                       ; $699f: $ff
    rst $38                                       ; $69a0: $ff
    rst $38                                       ; $69a1: $ff
    rst $38                                       ; $69a2: $ff
    rst $38                                       ; $69a3: $ff
    rst $38                                       ; $69a4: $ff
    rst $38                                       ; $69a5: $ff
    rst $38                                       ; $69a6: $ff
    rst $38                                       ; $69a7: $ff
    rst $38                                       ; $69a8: $ff
    or $00                                        ; $69a9: $f6 $00
    nop                                           ; $69ab: $00
    nop                                           ; $69ac: $00
    ei                                            ; $69ad: $fb
    stop                                          ; $69ae: $10 $00
    rst $38                                       ; $69b0: $ff
    ei                                            ; $69b1: $fb
    db $10                                        ; $69b2: $10
    db $10                                        ; $69b3: $10
    jr jr_028_69de                                ; $69b4: $18 $28

    jr c, jr_028_6995                             ; $69b6: $38 $dd

    db $10                                        ; $69b8: $10
    ld sp, hl                                     ; $69b9: $f9
    ldh [rBCPS], a                                ; $69ba: $e0 $68
    ld a, b                                       ; $69bc: $78
    adc b                                         ; $69bd: $88
    call nc, Call_000_10f1                        ; $69be: $d4 $f1 $10
    ld b, b                                       ; $69c1: $40
    nop                                           ; $69c2: $00
    db $db                                        ; $69c3: $db
    pop hl                                        ; $69c4: $e1
    cp $e0                                        ; $69c5: $fe $e0
    ld sp, hl                                     ; $69c7: $f9
    ld [c], a                                     ; $69c8: $e2
    ret nz                                        ; $69c9: $c0

    ldh a, [$e7]                                  ; $69ca: $f0 $e7
    db $e3                                        ; $69cc: $e3
    ldh [$f7], a                                  ; $69cd: $e0 $f7
    ld a, a                                       ; $69cf: $7f
    pop hl                                        ; $69d0: $e1
    ret nz                                        ; $69d1: $c0

    ld sp, hl                                     ; $69d2: $f9
    ld [hl], a                                    ; $69d3: $77
    ld c, b                                       ; $69d4: $48
    db $10                                        ; $69d5: $10
    ld e, b                                       ; $69d6: $58
    and b                                         ; $69d7: $a0
    ld [c], a                                     ; $69d8: $e2
    sbc b                                         ; $69d9: $98
    db $10                                        ; $69da: $10
    xor b                                         ; $69db: $a8
    and b                                         ; $69dc: $a0
    rst $38                                       ; $69dd: $ff

jr_028_69de:
    cp b                                          ; $69de: $b8
    ldh [rIE], a                                  ; $69df: $e0 $ff
    ldh [rIE], a                                  ; $69e1: $e0 $ff
    nop                                           ; $69e3: $00
    db $ed                                        ; $69e4: $ed
    db $10                                        ; $69e5: $10
    db $10                                        ; $69e6: $10
    inc de                                        ; $69e7: $13
    nop                                           ; $69e8: $00
    ldh [rNR44], a                                ; $69e9: $e0 $23
    nop                                           ; $69eb: $00
    rst $30                                       ; $69ec: $f7
    ldh [$d5], a                                  ; $69ed: $e0 $d5
    call c, $ffff                                 ; $69ef: $dc $ff $ff
    rst $38                                       ; $69f2: $ff
    rst $38                                       ; $69f3: $ff
    rst $38                                       ; $69f4: $ff
    rst $38                                       ; $69f5: $ff
    rst $38                                       ; $69f6: $ff
    rst $38                                       ; $69f7: $ff
    rst $38                                       ; $69f8: $ff
    rst $38                                       ; $69f9: $ff
    rst $38                                       ; $69fa: $ff
    rst $38                                       ; $69fb: $ff
    nop                                           ; $69fc: $00
    rst $38                                       ; $69fd: $ff
    rst $38                                       ; $69fe: $ff
    rst $38                                       ; $69ff: $ff
    rst $38                                       ; $6a00: $ff
    rst $38                                       ; $6a01: $ff
    rst $38                                       ; $6a02: $ff
    rst $38                                       ; $6a03: $ff
    rst $38                                       ; $6a04: $ff
    rst $38                                       ; $6a05: $ff
    rst $38                                       ; $6a06: $ff
    rst $38                                       ; $6a07: $ff
    rst $38                                       ; $6a08: $ff
    rst $38                                       ; $6a09: $ff
    rst $38                                       ; $6a0a: $ff
    rst $38                                       ; $6a0b: $ff
    rst $38                                       ; $6a0c: $ff
    nop                                           ; $6a0d: $00
    rst $38                                       ; $6a0e: $ff
    rst $38                                       ; $6a0f: $ff
    rst $38                                       ; $6a10: $ff
    rst $38                                       ; $6a11: $ff
    rst $38                                       ; $6a12: $ff
    rst $38                                       ; $6a13: $ff
    rst $38                                       ; $6a14: $ff
    rst $38                                       ; $6a15: $ff
    rst $38                                       ; $6a16: $ff
    rst $38                                       ; $6a17: $ff
    rst $38                                       ; $6a18: $ff
    rst $38                                       ; $6a19: $ff
    rst $38                                       ; $6a1a: $ff
    ld [$0000], a                                 ; $6a1b: $ea $00 $00
    nop                                           ; $6a1e: $00
    cp $01                                        ; $6a1f: $fe $01
    nop                                           ; $6a21: $00
    rst $38                                       ; $6a22: $ff
    rst $38                                       ; $6a23: $ff
    rst $38                                       ; $6a24: $ff
    rst $38                                       ; $6a25: $ff
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
    nop                                           ; $6a30: $00
    rst $38                                       ; $6a31: $ff
    rst $38                                       ; $6a32: $ff
    rst $38                                       ; $6a33: $ff
    rst $38                                       ; $6a34: $ff
    rst $38                                       ; $6a35: $ff
    rst $38                                       ; $6a36: $ff
    rst $38                                       ; $6a37: $ff
    rst $38                                       ; $6a38: $ff
    rst $38                                       ; $6a39: $ff
    rst $38                                       ; $6a3a: $ff
    rst $38                                       ; $6a3b: $ff
    rst $38                                       ; $6a3c: $ff
    rst $38                                       ; $6a3d: $ff
    rst $38                                       ; $6a3e: $ff
    rst $38                                       ; $6a3f: $ff
    rst $38                                       ; $6a40: $ff
    nop                                           ; $6a41: $00
    rst $38                                       ; $6a42: $ff
    rst $38                                       ; $6a43: $ff
    rst $38                                       ; $6a44: $ff
    rst $38                                       ; $6a45: $ff
    rst $38                                       ; $6a46: $ff
    rst $38                                       ; $6a47: $ff
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
    nop                                           ; $6a52: $00
    rst $38                                       ; $6a53: $ff
    rst $38                                       ; $6a54: $ff
    rst $38                                       ; $6a55: $ff
    rst $38                                       ; $6a56: $ff
    rst $38                                       ; $6a57: $ff
    rst $38                                       ; $6a58: $ff
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
    nop                                           ; $6a63: $00
    rst $38                                       ; $6a64: $ff
    rst $38                                       ; $6a65: $ff
    rst $38                                       ; $6a66: $ff
    rst $38                                       ; $6a67: $ff
    rst $38                                       ; $6a68: $ff
    rst $38                                       ; $6a69: $ff
    rst $38                                       ; $6a6a: $ff
    rst $38                                       ; $6a6b: $ff
    rst $38                                       ; $6a6c: $ff
    rst $38                                       ; $6a6d: $ff
    rst $38                                       ; $6a6e: $ff
    rst $38                                       ; $6a6f: $ff
    rst $38                                       ; $6a70: $ff
    rst $38                                       ; $6a71: $ff
    rst $38                                       ; $6a72: $ff
    rst $38                                       ; $6a73: $ff
    nop                                           ; $6a74: $00
    rst $38                                       ; $6a75: $ff
    rst $38                                       ; $6a76: $ff
    rst $38                                       ; $6a77: $ff
    rst $38                                       ; $6a78: $ff
    rst $38                                       ; $6a79: $ff
    rst $38                                       ; $6a7a: $ff
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
    nop                                           ; $6a85: $00
    rst $38                                       ; $6a86: $ff
    rst $38                                       ; $6a87: $ff
    rst $38                                       ; $6a88: $ff
    rst $38                                       ; $6a89: $ff
    rst $38                                       ; $6a8a: $ff
    rst $38                                       ; $6a8b: $ff
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
    nop                                           ; $6a96: $00
    rst $38                                       ; $6a97: $ff
    rst $38                                       ; $6a98: $ff
    rst $38                                       ; $6a99: $ff
    rst $38                                       ; $6a9a: $ff
    rst $38                                       ; $6a9b: $ff
    rst $38                                       ; $6a9c: $ff
    rst $38                                       ; $6a9d: $ff
    rst $38                                       ; $6a9e: $ff
    rst $38                                       ; $6a9f: $ff
    rst $38                                       ; $6aa0: $ff
    rst $38                                       ; $6aa1: $ff
    db $e4                                        ; $6aa2: $e4
    nop                                           ; $6aa3: $00
    nop                                           ; $6aa4: $00
    nop                                           ; $6aa5: $00

    db $00, $00, $00, $00, $40, $12, $00, $00, $80, $00, $20, $55, $a0, $7e, $ff, $7f
    db $08, $25, $08, $25, $08, $25, $08, $25, $84, $02, $18, $01, $5f, $1b, $88, $30
    db $5f, $1b, $40, $7f, $84, $02, $88, $30, $5f, $1b, $18, $01, $5f, $1b, $88, $30
    db $ff, $7f, $88, $30, $c0, $15, $84, $02, $40, $7f, $ff, $7f, $1c, $00, $8c, $40
    db $08, $25, $08, $25, $08, $25, $08, $25, $fb, $ff, $00, $fe, $e4, $18, $e7, $2c
    db $c3, $5e, $ff, $c7, $4e, $81, $9f, $c3, $5f, $81, $bf, $ff, $83, $df, $cb, $7e
    db $ff, $3c, $ef, $08, $ff, $ef, $08, $ff, $03, $fe, $06, $fc, $1c, $ff, $f4, $15
    db $f0, $30, $e0, $25, $f0, $77, $ff, $c0, $43, $ff, $c0, $7f, $60, $3f, $b8, $ff
    db $2f, $f8, $0f, $cc, $07, $fc, $0f, $fe, $ff, $03, $f6, $c0, $d7, $80, $9f, $c0
    db $cf, $ef, $c0, $5f, $c0, $cf, $f8, $e0, $df, $c0, $7f, $9f, $03, $ff, $01, $ff
    db $03, $cb, $e0, $f8, $e5, $e0, $ff, $f0, $c0, $d0, $74, $76, $1e, $1e, $ab, $ff
    db $ab, $03, $02, $03, $02, $02, $03, $07, $ff, $07, $02, $02, $2f, $2f, $78, $78
    db $ea, $7f, $ea, $c0, $c0, $c0, $40, $c0, $40, $ec, $e1, $1e, $e8, $e2, $04, $03
    db $03, $00, $ff, $e0, $ec, $e1, $e8, $e1, $ff, $e8, $28, $d5, $d5, $aa, $aa, $15
    db $15, $ee, $60, $e2, $03, $fe, $02, $7a, $e0, $04, $fe, $1e, $ff, $f4, $14, $ff
    db $3c, $e7, $e7, $81, $8b, $bf, $81, $bf, $00, $1e, $00, $bf, $45, $e0, $7f, $f6
    db $40, $e2, $c0, $7f, $6a, $e1, $e0, $7f, $f8, $2f, $7d, $b8, $58, $e0, $22, $f8
    db $3b, $f0, $13, $54, $e1, $fe, $64, $e1, $0f, $fc, $07, $fc, $1f, $fc, $0f, $51
    db $f8, $54, $e0, $6c, $e2, $54, $e0, $4f, $52, $e2, $8f, $52, $e0, $e7, $4f, $e0
    db $6f, $54, $e2, $52, $e6, $07, $fe, $c0, $ff, $f0, $e0, $f8, $68, $78, $3c, $3e
    db $a8, $e7, $aa, $0e, $0e, $6e, $e3, $fc, $e5, $81, $c1, $e7, $ff, $e7, $7e, $7e
    db $03, $03, $06, $06, $15, $ff, $15, $3c, $3c, $12, $12, $70, $70, $c0, $ff, $c0
    db $00, $00, $7e, $56, $7e, $4a, $5e, $f7, $66, $7e, $42, $fc, $e3, $5e, $62, $7e
    db $46, $fe, $fc, $e3, $ff, $85, $ff, $e7, $3d, $3d, $0a, $fd, $0a, $be, $e5, $50
    db $50, $aa, $aa, $55, $55, $fb, $aa, $aa, $90, $c4, $03, $ff, $07, $fe, $06, $ff
    db $fe, $0e, $fe, $1e, $ff, $07, $ff, $3f, $ff, $fc, $7c, $e0, $e0, $e0, $e1, $60
    db $67, $ff, $00, $07, $00, $01, $ff, $e0, $ff, $fc, $ff, $3f, $3e, $07, $0f, $07
    db $cf, $06, $ff, $ef, $00, $f8, $00, $f8, $60, $c4, $c0, $ff, $e0, $ff, $7f, $e0
    db $7f, $70, $7f, $78, $f8, $18, $57, $f8, $18, $fc, $ff, $e0, $98, $ff, $e0, $80
    db $ff, $e0, $4f, $00, $01, $00, $cf, $fe, $e0, $39, $c1, $3f, $fe, $e0, $e7, $ff
    db $00, $fe, $2f, $c5, $27, $c3, $1f, $78, $1f, $ff, $f8, $3f, $ff, $3f, $ff, $19
    db $9f, $19, $13, $9f, $01, $64, $c0, $10, $c4, $80, $fe, $e2, $aa, $e0, $7a, $e0
    db $f9, $06, $7c, $e0, $4d, $c0, $ff, $1f, $ff, $3f, $f3, $df, $33, $00, $0c, $00
    db $0c, $30, $c0, $cf, $00, $41, $0f, $fe, $e0, $ae, $e3, $e3, $e2, $d9, $a5, $7a
    db $e0, $e0, $5c, $e0, $fd, $c0, $6e, $e0, $f8, $ff, $fc, $cf, $fc, $f0, $fd, $30
    db $fe, $e0, $73, $f0, $f3, $c0, $c3, $c0, $9f, $c3, $f0, $f0, $f0, $70, $c8, $e6
    db $c6, $e2, $00, $b7, $ff, $0f, $fc, $fe, $e0, $fe, $0f, $9f, $e2, $0f, $ff, $ff
    db $0f, $fe, $f0, $fc, $b0, $bc, $70, $7f, $7f, $30, $3f, $f0, $fc, $f0, $fc, $bb
    db $e1, $ff, $0f, $0f, $0e, $0e, $0d, $0d, $0c, $0c, $df, $0e, $0e, $0f, $0f, $03
    db $ff, $e0, $f0, $fc, $ff, $70, $7c, $30, $3f, $30, $3f, $3c, $3f, $e7, $1c, $1f
    db $18, $fe, $e0, $7e, $c9, $00, $c0, $00, $f5, $c0, $d0, $e1, $0c, $ff, $e0, $3c
    db $3c, $38, $38, $ed, $18, $ff, $e0, $1f, $1f, $c8, $e3, $03, $03, $01, $ed, $01
    db $52, $c2, $f0, $00, $6d, $e2, $fc, $ff, $fc, $df, $ff, $30, $33, $30, $33, $c0
    db $ea, $80, $00, $c9, $8c, $9c, $a1, $c0, $e1, $3f, $ff, $e0, $b8, $e1, $3e, $3e
    db $fb, $1f, $1f, $18, $c5, $c0, $00, $b3, $83, $70, $df, $7c, $fc, $fc, $ff, $ff
    db $e2, $e0, $35, $3f, $ff, $32, $37, $39, $3b, $34, $0e, $0e, $3f, $f7, $3f, $ff
    db $ff, $8e, $c1, $fc, $ec, $fc, $5c, $3f, $fc, $ac, $7c, $7c, $f8, $f8, $08, $c1
    db $d0, $e5, $ef, $37, $38, $33, $3c, $fc, $e9, $fc, $4c, $fc, $fd, $ac, $fc, $e9
    db $58, $a7, $ff, $3c, $f3, $c3, $ee, $cf, $e1, $01, $01, $03, $02, $a0, $77, $f8
    db $f3, $ff, $6c, $f7, $e8, $eb, $f4, $f7, $c8, $ef, $ff, $d0, $df, $a2, $ff, $85
    db $fe, $4f, $ff, $ff, $a6, $ff, $57, $ff, $27, $ff, $53, $ff, $ff, $2b, $ff, $15
    db $ff, $0a, $59, $a7, $fe, $ff, $3f, $f0, $df, $e0, $3a, $20, $30, $a0, $f5, $b0
    db $de, $80, $c0, $7c, $ab, $00, $00, $ff, $ea, $bf, $ff, $f7, $3f, $3f, $5e, $5e
    db $12, $e4, $00, $ff, $ff, $95, $ff, $ef, $ff, $ff, $be, $be, $7b, $55, $55, $94
    db $a3, $c0, $c0, $e8, $e8, $c6, $81, $d3, $54, $54, $e4, $a0, $d0, $e1, $ff, $88
    db $a1, $00, $00, $f3, $aa, $aa, $b8, $eb, $10, $e5, $3c, $3c, $42, $72, $ff, $81
    db $a5, $81, $f1, $81, $a1, $43, $43, $ff, $d0, $10, $f3, $c3, $00, $00, $03, $03
    db $ff, $0f, $0f, $3e, $3f, $79, $7e, $67, $78, $ff, $6d, $72, $67, $78, $ed, $f3
    db $ee, $f1, $ff, $9d, $e2, $77, $88, $de, $21, $7b, $85, $ff, $ee, $16, $b8, $58
    db $6e, $71, $6b, $75, $ef, $6e, $76, $18, $18, $92, $c1, $c0, $00, $f3, $ff, $c3
    db $f0, $70, $f0, $d0, $f0, $90, $b0, $ff, $d0, $b8, $d8, $f3, $f1, $c1, $01, $f3
    db $fd, $c3, $30, $85, $77, $74, $6b, $7b, $64, $7c, $ff, $6a, $76, $00, $00, $82
    db $80, $43, $c3, $ff, $a7, $67, $e2, $63, $82, $82, $16, $07, $fb, $1c, $1d, $f0
    db $c3, $ff, $ff, $97, $e8, $bf, $ff, $ff, $ff, $bf, $bf, $cb, $78, $ff, $df, $ff
    db $6c, $df, $f7, $df, $fb, $ff, $1d, $ff, $df, $fe, $bf, $df, $ff, $ba, $00, $e5
    db $a0, $b0, $ff, $e0, $f8, $e0, $70, $b0, $70, $ff, $bf, $e2, $fe, $e0, $ff, $78
    db $83, $1e, $c1, $f0, $e2, $bf, $f0, $b0, $fe, $fe, $e1, $f8, $b8, $f0, $f0, $f8
    db $d8, $f8, $e7, $e8, $f8, $f8, $df, $c9, $00, $ab, $75, $ff, $aa, $af, $ff, $50
    db $ff, $84, $19, $66, $f5, $f0, $e4, $40, $b8, $07, $64, $ff, $e5, $d8, $e5, $ff
    db $ff, $fe, $ec, $e0, $da, $ae, $d8, $e0, $58, $ff, $a4, $e0, $e4, $fa, $ca, $e0
    db $e8, $ab, $ff, $f2, $fc, $e0, $f0, $f8, $e0, $f4, $07, $a0, $f5, $ee, $ec, $e0
    db $f4, $ff, $f9, $f4, $e0, $ff, $ff, $b5, $af, $ff, $42, $ff, $ad, $b8, $e6, $ff
    db $9e, $e0, $a8, $72, $a2, $e0, $aa, $96, $e0, $a3, $e1, $7f, $ff, $af, $29, $c0
    db $d7, $02, $ff, $55, $f8, $e0, $7f, $92, $e0, $aa, $ff, $dd, $45, $6e, $e0, $54
    db $ff, $a2, $13, $c0, $aa, $ff, $5d, $51, $62, $e0, $75, $ff, $ab, $e2, $e0, $a2
    db $de, $e0, $fd, $ea, $f7, $a0, $ae, $ff, $f7, $ff, $dd, $ff, $5f, $6b, $ff, $d6
    db $ff, $bb, $27, $c0, $75, $60, $e0, $15, $df, $6e, $e0, $fb, $fa, $e0, $7f, $fa
    db $e0, $f6, $c5, $68, $67, $bf, $20, $30, $20, $38, $40, $70, $fe, $e0, $40, $ff
    db $20, $30, $70, $70, $04, $04, $02, $02, $f7, $02, $06, $01, $ff, $e2, $02, $02
    db $07, $07, $83, $b0, $b0, $e8, $e5, $36, $65, $e8, $e5, $26, $65, $60, $a5, $01
    db $7f, $01, $0e, $0f, $10, $1f, $20, $3a, $50, $a5, $ff, $c0, $c0, $38, $b8, $04
    db $b4, $02, $12, $fc, $70, $a7, $98, $e3, $d8, $e7, $3f, $bc, $07, $b7, $c3, $02
    db $12, $98, $e5, $20, $a7, $60, $a4, $90, $a2, $03, $03, $ff, $aa, $aa, $06, $07
    db $0c, $0d, $04, $06, $bf, $d8, $c8, $ff, $ff, $ab, $ab, $6a, $e0, $aa, $ff, $04
    db $54, $06, $f6, $04, $ac, $18, $1b, $ff, $0a, $0d, $18, $1f, $30, $37, $11, $1e
    db $ff, $30, $3f, $e0, $ff, $45, $5a, $06, $fe, $ff, $d3, $2b, $02, $fe, $13, $ef
    db $61, $9d, $ff, $22, $de, $32, $ca, $c3, $3f, $00, $00, $e1, $02, $7e, $a0, $da
    db $20, $d3, $20, $d0, $a1, $40, $7f, $c0, $ff, $ff, $80, $bf, $17, $68, $01, $fe
    db $01, $ff, $ff, $02, $fd, $bc, $47, $41, $bd, $6a, $ff, $d6, $82, $7e, $03, $fb
    db $03, $ff, $d2, $fd, $2e, $ed, $20, $fc, $38, $3b, $10, $1f, $30, $ff, $17, $15
    db $1a, $b0, $3f, $e0, $ef, $c0, $ff, $df, $df, $22, $04, $fb, $07, $fe, $08, $ff
    db $f7, $f0, $3f, $10, $ef, $1f, $fa, $20, $ee, $c9, $40, $06, $f6, $d6, $d8, $e0
    db $0c, $f8, $08, $ff, $f8, $ce, $2e, $0e, $fe, $2f, $d3, $40, $7f, $bf, $80, $7f
    db $80, $ff, $ff, $eb, $f4, $41, $ff, $02, $ff, $fc, $af, $40, $bf, $7f, $f5, $7d
    db $80, $fb, $00, $01, $ff, $fe, $d7, $02, $46, $20, $ef, $47, $fb, $87, $f8, $e0
    db $e9, $df, $df, $ff, $9f, $3c, $be, $41, $50, $af, $e0, $e5, $f0, $e3, $ff, $f3
    db $eb, $51, $ee, $e0, $c0, $e1, $04, $ff, $f8, $5f, $f5, $08, $28, $60, $10, $5f
    db $40, $20, $ff, $3f, $fa, $fd, $04, $2f, $40, $08, $ff, $f0, $bf, $10, $ff, $f3
    db $1f, $fd, $80, $e1, $d0, $c3, $0c, $1f, $10, $1e, $bf, $10, $1a, $20, $38, $20
    db $30, $f0, $62, $e3, $bf, $18, $98, $04, $34, $04, $14, $54, $c1, $40, $bf, $bf
    db $bf, $45, $fc, $f3, $cf, $94, $20, $07, $bf, $07, $1f, $1c, $3f, $3f, $40, $65
    db $42, $ff, $7f, $eb, $c1, $3f, $81, $7f, $82, $7f, $60, $e0, $ff, $ff, $7f, $f5
    db $87, $f8, $1f, $ef, $34, $7f, $d0, $e1, $a1, $21, $e1, $71, $b1, $b0, $61, $ff
    db $ef, $cf, $71, $7d, $80, $fd, $00, $d0, $fa, $30, $60, $c0, $a0, $64, $c0, $20
    db $a0, $10, $90, $ff, $10, $10, $10, $30, $40, $40, $27, $37, $f7, $78, $7e, $10
    db $90, $e1, $14, $20, $3e, $20, $ff, $34, $f0, $f0, $0e, $ee, $01, $8d, $00, $f9
    db $c4, $04, $60, $e0, $42, $02, $02, $00, $00, $04, $ff, $04, $8c, $8c, $a1, $a1
    db $83, $83, $43, $ff, $43, $46, $42, $77, $34, $6e, $29, $3c, $ff, $2b, $7f, $6e
    db $fc, $d3, $f8, $e7, $70, $b7, $2f, $bf, $7a, $40, $e5, $11, $fe, $40, $e1, $c1
    db $ff, $fe, $62, $a3, $e2, $43, $c2, $82, $c1, $ff, $81, $82, $83, $c4, $c7, $e4
    db $e7, $c4, $fd, $45, $bc, $40, $80, $3c, $3c, $c3, $fb, $00, $ff, $a3, $00, $f1
    db $00, $a0, $00, $00, $08, $fe, $ff, $e2, $90, $90, $50, $50, $38, $38, $20, $67
    db $20, $20, $60, $58, $83, $b4, $a2, $3f, $20, $ca, $a1, $ff, $30, $f0, $f0, $08
    db $e8, $07, $ff, $00, $f7, $23, $00, $81, $b2, $0a, $81, $44, $44, $40, $fe, $ff
    db $e0, $47, $42, $43, $43, $87, $86, $9e, $ff, $9d, $bf, $bd, $37, $36, $2f, $22
    db $7b, $7f, $27, $f0, $4f, $e0, $9f, $c0, $bf, $00, $e3, $fe, $60, $c1, $41, $fe
    db $7f, $f5, $81, $ff, $03, $ff, $fd, $03, $ff, $ff, $ad, $07, $fd, $07, $ff, $ff
    db $c8, $8f, $88, $0d, $88, $0c, $08, $ff, $08, $04, $06, $84, $84, $c7, $c7, $c2
    db $f9, $c3, $2c, $40, $e6, $20, $0f, $0f, $10, $1e, $e0, $9f, $ff, $00, $f2, $00
    db $f8, $fc, $c0, $fd, $e2, $a0, $ff, $a0, $70, $f0, $08, $38, $04, $14, $40, $ff
    db $78, $80, $f0, $80, $d0, $80, $c0, $80, $ff, $a0, $00, $20, $40, $40, $00, $08
    db $20, $fd, $60, $de, $e1, $11, $11, $13, $13, $03, $03, $ff, $22, $22, $07, $02
    db $77, $2c, $3e, $39, $ff, $7c, $6b, $ef, $de, $fc, $d3, $78, $67, $fd, $f0, $00
    db $e0, $0b, $fc, $f7, $79, $17, $fa, $ff, $1f, $fe, $26, $fa, $ce, $f2, $4f, $f7
    db $ff, $7f, $f7, $82, $83, $82, $03, $04, $07, $ff, $08, $0f, $08, $0d, $08, $0c
    db $00, $00, $23, $84, $86, $0c, $e1, $8c, $e3, $32, $e3, $04, $ff, $e0, $8e, $85
    db $90, $a2, $c1, $40, $c5, $a0, $a5, $48, $64, $01, $30, $a0, $fe, $e0, $00, $ff
    db $03, $7f, $7f, $96, $e9, $03, $fc, $11, $ff, $fe, $39, $fe, $78, $bf, $79, $be
    db $78, $ff, $bf, $80, $80, $7c, $fc, $53, $af, $aa, $af, $55, $00, $ff, $28, $dc
    db $60, $7e, $16, $62, $c0, $ff, $c0, $60, $e0, $20, $e0, $30, $f0, $50, $f0, $19
    db $60, $cc, $c9, $2c, $80, $74, $e0, $09, $0e, $13, $1d, $ff, $27, $3b, $4f, $77
    db $9f, $ee, $3f, $dd, $ff, $7f, $ba, $fc, $77, $fe, $eb, $ff, $d1, $af, $ff, $ac
    db $ff, $5e, $cf, $60, $74, $59, $60, $7f, $ff, $6b, $bf, $3d, $df, $9a, $ef, $cd
    db $77, $ff, $e6, $3b, $f2, $9d, $f9, $4e, $f8, $f8, $57, $fc, $fc, $5e, $2d, $60
    db $57, $f8, $40, $15, $e8, $41, $da, $f5, $05, $80, $9a, $e1, $b0, $f0, $df, $40
    db $e8, $ff, $ff, $d0, $ff, $a0, $ff, $41, $fe, $83, $fc, $e7, $07, $f9, $0e, $9d
    db $61, $c1, $40, $fe, $5d, $a3, $ff, $08, $f7, $65, $fb, $f2, $fd, $fc, $e7, $f3
    db $fe, $03, $f5, $80, $af, $41, $80, $7f, $c0, $bf, $ff, $e0, $d5, $7f, $40, $bf
    db $20, $df, $92, $ff, $ef, $c8, $77, $e4, $3b, $f2, $1d, $f9, $ff, $0e, $58, $f8
    db $0c, $fc, $56, $fe, $2b, $63, $ff, $05, $1c, $60, $fc, $e1, $a0, $eb, $90, $f0
    db $50, $eb, $f3, $bf, $fa, $5c, $e2, $90, $e1, $7f, $e0, $e0, $e5, $ff, $60, $eb
    db $60, $f3, $1d, $e7, $3b, $cf, $ff, $77, $9f, $ef, $df, $ff, $3f, $3d, $7f, $ff
    db $23, $ff, $21, $f9, $ee, $fc, $d7, $fe, $f7, $ab, $ff, $41, $d5, $42, $d5, $ff
    db $a0, $1f, $ff, $f0, $cf, $78, $67, $bc, $1f, $fe, $bf, $7d, $fc, $79, $40, $54
    db $ff, $10, $fc, $07, $70, $e4, $ff, $ff, $c0, $c0, $ca, $c0, $d7, $c0, $90, $fe
    db $70, $e2, $90, $ef, $c8, $f7, $66, $7b, $f3, $ff, $5d, $f8, $4f, $48, $f8, $14
    db $fc, $0a, $bb, $fe, $05, $7c, $80, $43, $ff, $1f, $22, $40, $f4, $ff, $00, $f8
    db $40, $f0, $a0, $f0, $e0, $f0, $e9, $60, $fc, $e0, $fe, $e0, $e7, $8c, $e0, $ff
    db $5f, $e0, $e9, $60, $84, $e1, $f4, $e2, $21, $fe, $e0, $e1, $3f, $21, $e9, $7f
    db $f8, $e1, $f4, $e1, $c0, $f4, $c0, $c0, $ff, $81, $b3, $ff, $c1, $77, $80, $85
    db $60, $ff, $10, $fe, $e0, $d0, $ef, $ff, $30, $bf, $70, $03, $40, $50, $ff, $10
    db $cd, $cf, $8c, $e0, $ff, $bf, $84, $e3, $f4, $e1, $fd, $47, $4e, $97, $e0, $c1
    db $7f, $41, $4e, $e0, $fc, $e2, $fb, $b5, $60, $7f, $7f, $00, $fb, $01, $7f, $01
    db $bb, $fc, $e1, $a9, $00, $8a, $e2, $3d, $60, $c0, $7d, $a0, $d5, $25, $81, $7f
    db $54, $89, $24, $5d, $21, $55, $81, $20, $e1, $97, $60, $01, $79, $20, $05, $1f
    db $96, $e0, $50, $61, $20, $01, $81, $5f, $60, $67, $20, $7d, $61, $55, $55, $80
    db $e2, $10, $59, $20, $e0, $fe, $e0, $ea, $51, $22, $ca, $c0, $e7, $aa, $41, $20
    db $c1, $c0, $e4, $f0, $e4, $5f, $00, $ff, $3d, $00, $ef, $00, $9d, $00, $af, $00
    db $eb, $bf, $03, $ff, $c0, $7f, $0e, $81, $07, $04, $17, $bf, $10, $3f, $20, $7f
    db $40, $3f, $3c, $c0, $e1, $ef, $e1, $d5, $14, $f7, $db, $08, $c3, $c3, $ab, $fb
    db $28, $ef, $cb, $08, $80, $80, $40, $40, $f0, $ff, $30, $e8, $08, $fc, $04, $fa
    db $02, $ee, $ff, $02, $f1, $01, $ff, $80, $2f, $00, $73, $bf, $40, $38, $20, $10
    db $10, $06, $a4, $20, $01, $ee, $f6, $a0, $df, $00, $66, $35, $80, $10, $10, $4c
    db $ff, $48, $d5, $14, $e3, $e3, $ff, $00, $bf, $fb, $00, $cd, $4c, $40, $20, $20
    db $99, $91, $ab, $ff, $28, $c7, $c7, $d3, $01, $61, $01, $8e, $bf, $0a, $0a, $02
    db $6c, $4c, $30, $74, $60, $80, $ff, $80, $0e, $0e, $2d, $21, $7f, $40, $7f, $ff
    db $00, $f5, $80, $a8, $80, $63, $63, $1c, $bf, $1c, $38, $38, $b6, $86, $7d, $a3
    db $40, $d5, $7f, $01, $a2, $02, $8c, $8c, $70, $70, $55, $06, $ff, $70, $8f, $9e
    db $c3, $7b, $89, $bf, $bd, $ff, $ff, $ef, $ef, $fb, $1e, $ef, $1c, $ef, $fd, $08
    db $fe, $e3, $ff, $1f, $e0, $63, $86, $9f, $ff, $f0, $f1, $e0, $2b, $c1, $6f, $c3
    db $5f, $fd, $cf, $c2, $c1, $c0, $7f, $fc, $03, $f6, $a9, $ff, $bf, $c7, $df, $43
    db $fe, $e3, $fe, $dc, $7f, $7e, $fc, $74, $ff, $23, $fe, $03, $fe, $e0, $fd, $02
    db $fe, $e1, $fb, $fe, $9f, $fe, $9f, $d4, $f2, $73, $40, $c0, $d8, $e0, $fc, $e0
    db $fe, $ff, $aa, $ab, $ff, $56, $57, $02, $03, $ab, $aa, $02, $03, $fe, $ad, $20
    db $03, $ff, $7f, $ea, $ea, $d5, $55, $ff, $c0, $c0, $ea, $6a, $c0, $c0, $c0, $40
    db $73, $c0, $c0, $ec, $e1, $65, $81, $07, $04, $03, $e6, $40, $f8, $84, $80, $ec
    db $e0, $e8, $e1, $e8, $68, $d5, $d5, $aa, $f3, $aa, $15, $cd, $82, $d2, $c0, $08
    db $f7, $14, $f7, $ff, $16, $f5, $15, $f5, $17, $f5, $37, $d1, $ff, $53, $d7, $56
    db $d7, $74, $c7, $64, $f7, $1d, $34, $ec, $e0, $1c, $ff, $01, $88, $e3, $fa, $e5
    db $da, $80, $fd, $40, $10, $e0, $c0, $7f, $4c, $73, $d6, $73, $77, $56, $73, $de
    db $e2, $e4, $32, $ce, $5a, $fe, $e2, $f9, $7a, $ec, $e1, $fe, $e0, $fe, $03, $7e
    db $07, $fc, $ff, $7f, $f8, $7f, $c0, $ce, $ef, $ca, $cb, $ff, $4e, $6f, $40, $47
    db $a0, $a1, $1e, $1f, $fe, $0c, $21, $7f, $7f, $6a, $6a, $55, $55, $40, $37, $40
    db $6a, $6a, $e2, $41, $40, $40, $f8, $01, $f4, $01, $78, $26, $01, $c8, $41, $ea
    db $e3, $40, $40, $28, $28, $60, $ea, $fe, $2e, $c0, $ef, $18, $c7, $2c, $ef, $3c
    db $c7, $ff, $6e, $83, $5e, $d7, $7e, $83, $cf, $05, $7f, $af, $c7, $7f, $ff, $1c
    db $ff, $18, $60, $e0, $ff, $03, $fc, $02, $fc, $05, $f8, $04, $f8, $9f, $09, $fe
    db $0e, $f9, $07, $2a, $a1, $62, $e0, $e0, $ef, $bf, $e0, $3f, $f0, $59, $20, $e0
    db $f8, $09, $ff, $f0, $0b, $f0, $15, $e0, $13, $e4, $2d, $ff, $fa, $3e, $e1, $13
    db $e0, $27, $3f, $f0, $ff, $5f, $f0, $1f, $f8, $2f, $f8, $4f, $fc, $ff, $ff, $fc
    db $9f, $f8, $2f, $fc, $c0, $d4, $ff, $c0, $f8, $80, $b5, $9c, $de, $76, $77, $fd
    db $03, $d8, $c2, $0f, $0f, $56, $56, $27, $27, $8f, $7b, $7b, $ee, $ee, $c0, $c0
    db $be, $c0, $aa, $c3, $02, $c9, $03, $c0, $c8, $fe, $e2, $e8, $60, $e4, $a0, $c5
    db $77, $74, $bf, $6b, $7a, $64, $7c, $6a, $76, $30, $e5, $74, $03, $74, $6a, $f0
    db $e4, $c0, $e3, $e0, $e5, $00, $00

    nop                                           ; $76cd: $00

    db $f1, $5b, $ff, $ff, $ff, $ff, $ee, $ed, $be, $bf, $c0, $c1, $ec, $ea, $ff, $d2
    db $f0, $c6, $c7, $a3, $e2, $c2, $c3, $c4, $01, $c5, $b9, $ea, $e8, $e2, $ea, $e4
    db $a1, $ee, $e8, $e6, $67, $ea, $b5, $e0, $f0, $e7, $f3, $a1, $e6, $93, $e3, $8d
    db $e4, $96, $97, $98, $99, $1e, $27, $e0, $17, $18, $19, $1a, $20, $f3, $e6, $e6
    db $5c, $e4, $fa, $ec, $e4, $0c, $f2, $c3, $9a, $9b, $9c, $9d, $9e, $ff, $9f, $5b
    db $1f, $1b, $1c, $1d, $1e, $1f, $8b, $0a, $0b, $ea, $e4, $5b, $f6, $e7, $e6, $f1
    db $d2, $e1, $0e, $ff, $00, $02, $03, $02, $03, $9a, $9b, $a0, $ff, $a1, $a2, $a3
    db $a4, $a5, $20, $21, $5b, $5f, $59, $22, $23, $0d, $5a, $ea, $e1, $00, $e6, $e0
    db $f8, $f6, $e7, $e6, $f1, $d2, $e1, $10, $01, $04, $05, $04, $ff, $05, $a6, $a7
    db $a8, $a9, $aa, $ab, $ac, $ff, $ad, $24, $25, $59, $58, $59, $26, $0f, $c2, $ea
    db $e2, $01, $e6, $e0, $f6, $e7, $e6, $f1, $d2, $e1, $13, $3e, $ff, $06, $07, $06
    db $07, $ae, $af, $b0, $b1, $ff, $b2, $b3, $b4, $b5, $27, $5b, $58, $57, $ef, $58
    db $28, $11, $12, $ea, $e1, $65, $66, $06, $f1, $07, $f6, $e7, $e6, $f1, $d2, $e1
    db $56, $55, $08, $09, $ff, $08, $09, $b6, $b7, $b8, $b9, $ba, $bb, $ef, $bc, $bd
    db $29, $2a, $80, $e0, $2b, $5b, $14, $ff, $56, $55, $45, $09, $67, $68, $08, $09
    db $f1, $54, $f6, $e6, $e6, $f1, $d2, $e1, $16, $54, $54, $5b, $7f, $55, $56, $54
    db $69, $6a, $6b, $54, $f9, $e0, $ff, $2c, $2d, $2e, $59, $2f, $2c, $54, $15, $cf
    db $16, $41, $42, $46, $ee, $e2, $f6, $e4, $55, $56, $f4, $e6, $f0, $d2, $e2, $40
    db $ff, $e1, $3f, $3f, $6c, $6d, $fb, $6e, $3f, $ff, $e1, $30, $31, $32, $33, $3f
    db $06, $ec, $e0, $43, $44, $ee, $e3, $f6, $e7, $e6, $ec, $ca, $e2, $d2, $e0, $bb
    db $72, $73, $fe, $e2, $6f, $70, $71, $f6, $e3, $34, $61, $35, $ee, $ed, $e4, $e5
    db $e6, $f0, $d2, $e0, $74, $75, $fe, $eb, $fc, $ee, $ef, $e6, $f9, $34, $35, $62
    db $63, $62, $76, $ff, $77, $78, $79, $70, $95, $7a, $7b, $7c, $ff, $62, $63, $64
    db $36, $37, $38, $39, $63, $ff, $60, $61, $64, $64, $60, $61, $60, $61, $31, $62
    db $f6, $e0, $fc, $e1, $f6, $e1, $62, $63, $e6, $e3, $f0, $e3, $e7, $47, $48, $49
    db $ee, $e0, $ec, $e1, $5e, $5f, $7d, $ff, $7e, $7f, $80, $75, $74, $81, $82, $83
    db $ff, $84, $5e, $5f, $54, $3a, $3b, $3c, $3d, $ff, $5f, $5c, $5d, $55, $56, $5c
    db $5d, $5c, $63, $5d, $5e, $f6, $e0, $fc, $e1, $f6, $e1, $5e, $5f, $e6, $e3, $ce
    db $f0, $e3, $4a, $4b, $4c, $ee, $e0, $ec, $e1, $52, $85, $ff, $86, $87, $88, $89
    db $70, $95, $8a, $8b, $df, $8c, $8d, $52, $4f, $4e, $ff, $e1, $4f, $51, $3f, $51
    db $4f, $4f, $51, $50, $50, $fa, $e1, $f6, $e5, $f0, $e7, $e2, $e6, $e8, $f0, $e3
    db $d1, $e0, $53, $8e, $5b, $8f, $fd, $90, $16, $e0, $91, $92, $93, $94, $53, $4d
    db $00, $ff, $ff, $ee, $ed, $b3, $7f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $f5
    db $f4, $9f, $c8, $ca, $cb, $ca, $cb, $40, $8e, $ea, $e0, $c8, $f0, $e6, $e0, $f6
    db $e7, $e6, $f1, $a3, $e2, $c9, $cc, $cd, $cc, $09, $cd, $40, $8e, $ea, $e0, $c9
    db $e6, $e0, $f6, $e7, $e6, $f1, $63, $e2, $df, $3e, $ce, $cf, $ce, $cf, $40, $8f
    db $ce, $cf, $8f, $65, $66, $ce, $cf, $f6, $e7, $e6, $f1, $23, $e2, $55, $ef, $d0
    db $d1, $d0, $d1, $40, $8f, $e6, $d1, $67, $07, $68, $d0, $d1, $40, $81, $f6, $e3
    db $e6, $f1, $e3, $df, $ff, $ff, $3f, $5b, $d2, $d4, $d5, $d4, $d5, $00, $6e, $ea
    db $e0, $e1, $d2, $e6, $e0, $f6, $e7, $e6, $f1, $a3, $e2, $d3, $d6, $d7, $13, $d6
    db $d7, $00, $6e, $ea, $e0, $d3, $e6, $e0, $f6, $e7, $e6, $f1, $de, $c0, $c3, $d8
    db $d9, $d8, $d9, $00, $6f, $d8, $d9, $8f, $65, $66, $d8, $d9, $f6, $e7, $e6, $f1
    db $c0, $c3, $da, $f7, $db, $da, $db, $00, $6f, $e7, $db, $67, $68, $83, $da, $db
    db $00, $61, $f6, $e3, $e6, $f1, $e3, $df, $ff, $ff, $5b, $9f, $dc, $de, $df, $de
    db $df, $c0, $2e, $ea, $e0, $dc, $f0, $e6, $e0, $f6, $e7, $e6, $f1, $a3, $e2, $dd
    db $e0, $e1, $e0, $09, $e1, $c0, $2e, $ea, $e0, $dd, $e6, $e0, $f6, $e7, $e6, $f1
    db $80, $a3, $ef, $e2, $e3, $e2, $e3, $c0, $2f, $e2, $e3, $65, $c7, $66, $e2, $e3
    db $f6, $e7, $e6, $f1, $80, $a3, $e4, $e5, $fb, $e4, $e5, $c0, $2f, $e8, $e5, $67
    db $68, $e4, $01, $e5, $c0, $21, $f6, $e3, $e6, $f1, $e3, $df, $ff, $ff, $ff, $ff
    db $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $f7, $f5, $00
    db $00

    nop                                           ; $7a4f: $00

    db $01, $0e, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $22, $fe, $fd, $0b, $ff, $e0, $e6, $ff, $d2, $f6, $2b, $c0, $e1, $bc, $e8, $f0
    db $b2, $e7, $e6, $f1, $d2, $e6, $8d, $e6, $0b, $0b, $0a, $0d, $80, $7d, $e0, $fc
    db $e1, $b6, $e3, $f6, $e7, $e6, $f2, $d2, $e2, $c0, $ea, $0d, $71, $0d, $bf, $e0
    db $c0, $f2, $e6, $f1, $0d, $0d, $0a, $ff, $e2, $81, $0d, $e6, $c3, $f2, $e0, $c0
    db $e0, $ed, $e3, $fa, $ee, $e6, $f1, $0d, $07, $0d, $2d, $2d, $c0, $f1, $ea, $e3
    db $f8, $e0, $f6, $e6, $e6, $ed, $7d, $0d, $dc, $e2, $8d, $8d, $0a, $0d, $2d, $ba
    db $e1, $3c, $a0, $e3, $b4, $e0, $8a, $8d, $0a, $2a, $7e, $e5, $74, $e7, $30, $58
    db $e1, $e6, $ee, $d2, $e3, $52, $ec, $8a, $8a, $41, $f4, $e6, $f2, $06, $d2, $ef
    db $8c, $8c, $c0, $f5, $e6, $f1, $d2, $ef, $c0, $ff, $d2, $ff, $80, $ff, $ff, $1c
    db $f5, $d0, $c9, $ff, $ff, $5e, $c3, $1e, $ca, $fd, $e1, $2d, $01, $2d, $fc, $e3
    db $f6, $e9, $e6, $ed, $ed, $e7, $c0, $ef, $ff, $ff, $be, $e8, $01, $08, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $f4, $f3, $40, $9f, $00, $40, $96, $c0
    db $f1, $40, $9f, $c0, $ec, $40, $9f, $40, $96, $23, $e2, $40, $9f, $00, $40, $96
    db $e3, $df, $ff, $ff, $c0, $df, $c0, $df, $c0, $df, $c0, $df, $c0, $df, $00, $c0
    db $df, $c0, $df, $c0, $df, $ff, $ff, $c0, $df, $c0, $df, $c0, $df, $c0, $df, $00
    db $c0, $df, $c0, $df, $c0, $df, $c0, $df, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $f1, $ef, $00, $00

    nop                                           ; $7bcf: $00

    db $21, $00, $ff, $ff, $ff, $ff, $ff, $ff, $f7, $f6, $0f, $ff, $fa, $e0, $e2, $00
    db $d9, $e6, $d1, $e2, $f3, $ea, $e3, $e3, $a0, $fc, $ca, $e2, $b3, $e1, $9b, $f9
    db $00, $7e, $f7, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $f1, $00, $00

    nop                                           ; $7c23: $00

    db $c1, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $18, $00, $bf, $11
    db $00, $00, $28, $00, $21, $d6, $e2, $38, $bb, $00, $31, $ce, $ff, $00, $41, $43
    db $dc, $f2, $f8, $3a, $c6, $e2, $48, $c0, $e3, $53, $53, $53, $b7, $ff, $ff, $ff
    db $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ec, $00, $00

    nop                                           ; $7c83: $00

    db $fe, $01, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $e4, $00, $00

    nop                                           ; $7d0a: $00

    push af                                       ; $7d0b: $f5
    push bc                                       ; $7d0c: $c5
    push de                                       ; $7d0d: $d5
    push hl                                       ; $7d0e: $e5
    ld [$c32f], a                                 ; $7d0f: $ea $2f $c3
    ld c, a                                       ; $7d12: $4f
    ld a, $ff                                     ; $7d13: $3e $ff
    ld b, $01                                     ; $7d15: $06 $01
    ld hl, $c330                                  ; $7d17: $21 $30 $c3
    ld [hl+], a                                   ; $7d1a: $22
    ld [hl], b                                    ; $7d1b: $70
    inc hl                                        ; $7d1c: $23
    ld [hl+], a                                   ; $7d1d: $22
    ld [hl], b                                    ; $7d1e: $70
    inc hl                                        ; $7d1f: $23
    ld [hl+], a                                   ; $7d20: $22
    ld [hl], b                                    ; $7d21: $70
    inc hl                                        ; $7d22: $23
    ld [hl+], a                                   ; $7d23: $22
    ld [hl], b                                    ; $7d24: $70
    inc hl                                        ; $7d25: $23
    ld [hl+], a                                   ; $7d26: $22
    ld [hl+], a                                   ; $7d27: $22
    ld [hl+], a                                   ; $7d28: $22
    ld [hl+], a                                   ; $7d29: $22
    ld a, c                                       ; $7d2a: $79
    ld h, $00                                     ; $7d2b: $26 $00
    ld l, a                                       ; $7d2d: $6f
    add hl, hl                                    ; $7d2e: $29
    ld bc, $405e                                  ; $7d2f: $01 $5e $40
    add hl, bc                                    ; $7d32: $09
    ld a, [hl+]                                   ; $7d33: $2a
    ld h, [hl]                                    ; $7d34: $66
    ld l, a                                       ; $7d35: $6f
    ld a, [hl]                                    ; $7d36: $7e
    cp $fe                                        ; $7d37: $fe $fe
    jr nz, jr_028_7d3d                            ; $7d39: $20 $02

    jr jr_028_7dad                                ; $7d3b: $18 $70

jr_028_7d3d:
    add sp, -$02                                  ; $7d3d: $e8 $fe
    ld de, $c332                                  ; $7d3f: $11 $32 $c3
    push hl                                       ; $7d42: $e5
    ld hl, sp+$02                                 ; $7d43: $f8 $02
    ld [hl], e                                    ; $7d45: $73
    inc hl                                        ; $7d46: $23
    ld [hl], d                                    ; $7d47: $72
    pop hl                                        ; $7d48: $e1
    ld d, h                                       ; $7d49: $54
    ld e, l                                       ; $7d4a: $5d
    ld b, $ff                                     ; $7d4b: $06 $ff
    ld c, $03                                     ; $7d4d: $0e $03
    xor a                                         ; $7d4f: $af
    ld hl, $c330                                  ; $7d50: $21 $30 $c3
    ld [hl], a                                    ; $7d53: $77
    ld hl, $c338                                  ; $7d54: $21 $38 $c3
    ld [hl], a                                    ; $7d57: $77
    inc hl                                        ; $7d58: $23

jr_028_7d59:
    inc b                                         ; $7d59: $04
    ld a, [de]                                    ; $7d5a: $1a
    inc de                                        ; $7d5b: $13
    cp $fe                                        ; $7d5c: $fe $fe
    jr z, jr_028_7d95                             ; $7d5e: $28 $35

    cp $ff                                        ; $7d60: $fe $ff
    jr nz, jr_028_7d59                            ; $7d62: $20 $f5

    inc b                                         ; $7d64: $04
    ld a, b                                       ; $7d65: $78
    inc a                                         ; $7d66: $3c
    ld [hl], a                                    ; $7d67: $77
    push de                                       ; $7d68: $d5
    push hl                                       ; $7d69: $e5
    ld hl, sp+$04                                 ; $7d6a: $f8 $04
    ld e, [hl]                                    ; $7d6c: $5e
    inc hl                                        ; $7d6d: $23
    ld d, [hl]                                    ; $7d6e: $56
    pop hl                                        ; $7d6f: $e1
    ld [de], a                                    ; $7d70: $12
    inc de                                        ; $7d71: $13
    inc de                                        ; $7d72: $13
    push hl                                       ; $7d73: $e5
    ld hl, sp+$04                                 ; $7d74: $f8 $04
    ld [hl], e                                    ; $7d76: $73
    inc hl                                        ; $7d77: $23
    ld [hl], d                                    ; $7d78: $72
    pop hl                                        ; $7d79: $e1
    pop de                                        ; $7d7a: $d1
    ld a, [de]                                    ; $7d7b: $1a
    inc a                                         ; $7d7c: $3c
    inc de                                        ; $7d7d: $13
    push hl                                       ; $7d7e: $e5
    push de                                       ; $7d7f: $d5
    ld d, a                                       ; $7d80: $57
    ld a, $04                                     ; $7d81: $3e $04
    sub c                                         ; $7d83: $91
    ld hl, $c330                                  ; $7d84: $21 $30 $c3
    ld e, a                                       ; $7d87: $5f
    ld a, d                                       ; $7d88: $7a
    ld d, $00                                     ; $7d89: $16 $00
    add hl, de                                    ; $7d8b: $19
    add hl, de                                    ; $7d8c: $19
    inc hl                                        ; $7d8d: $23
    ld [hl], a                                    ; $7d8e: $77
    pop de                                        ; $7d8f: $d1
    pop hl                                        ; $7d90: $e1
    inc hl                                        ; $7d91: $23
    dec c                                         ; $7d92: $0d
    jr nz, jr_028_7d59                            ; $7d93: $20 $c4

jr_028_7d95:
    ld a, $ff                                     ; $7d95: $3e $ff
    dec hl                                        ; $7d97: $2b
    ld [hl], a                                    ; $7d98: $77
    push hl                                       ; $7d99: $e5
    ld hl, sp+$02                                 ; $7d9a: $f8 $02
    ld e, [hl]                                    ; $7d9c: $5e
    inc hl                                        ; $7d9d: $23
    ld d, [hl]                                    ; $7d9e: $56
    pop hl                                        ; $7d9f: $e1
    dec de                                        ; $7da0: $1b
    dec de                                        ; $7da1: $1b
    ld [de], a                                    ; $7da2: $12
    ld a, $01                                     ; $7da3: $3e $01
    ld hl, $7dc1                                  ; $7da5: $21 $c1 $7d
    call Call_000_23e8                            ; $7da8: $cd $e8 $23
    add sp, $02                                   ; $7dab: $e8 $02

jr_028_7dad:
    pop hl                                        ; $7dad: $e1
    pop de                                        ; $7dae: $d1
    pop bc                                        ; $7daf: $c1
    pop af                                        ; $7db0: $f1
    ret                                           ; $7db1: $c9


    push af                                       ; $7db2: $f5
    push bc                                       ; $7db3: $c5
    push de                                       ; $7db4: $d5
    push hl                                       ; $7db5: $e5
    ld hl, $7dc1                                  ; $7db6: $21 $c1 $7d
    call Call_000_2449                            ; $7db9: $cd $49 $24
    pop hl                                        ; $7dbc: $e1
    pop de                                        ; $7dbd: $d1
    pop bc                                        ; $7dbe: $c1
    pop af                                        ; $7dbf: $f1
    ret                                           ; $7dc0: $c9


    rst $30                                       ; $7dc1: $f7

    db $80, $03

    jr nz, jr_028_7dca                            ; $7dc4: $20 $04

    rst $30                                       ; $7dc6: $f7

    db $00, $03

    ret nz                                        ; $7dc9: $c0

jr_028_7dca:
    push af                                       ; $7dca: $f5
    push bc                                       ; $7dcb: $c5
    push de                                       ; $7dcc: $d5
    push hl                                       ; $7dcd: $e5
    ldh a, [$96]                                  ; $7dce: $f0 $96
    push af                                       ; $7dd0: $f5
    ld a, $06                                     ; $7dd1: $3e $06
    ldh [$96], a                                  ; $7dd3: $e0 $96
    ldh [rSVBK], a                                ; $7dd5: $e0 $70
    ld c, $00                                     ; $7dd7: $0e $00
    ld hl, $c338                                  ; $7dd9: $21 $38 $c3

jr_028_7ddc:
    ld a, [hl]                                    ; $7ddc: $7e
    cp $ff                                        ; $7ddd: $fe $ff
    jr z, jr_028_7dfe                             ; $7ddf: $28 $1d

    push hl                                       ; $7de1: $e5
    ld l, c                                       ; $7de2: $69
    ld h, $00                                     ; $7de3: $26 $00
    add hl, hl                                    ; $7de5: $29
    ld de, $c330                                  ; $7de6: $11 $30 $c3
    add hl, de                                    ; $7de9: $19
    inc hl                                        ; $7dea: $23
    ld a, [hl]                                    ; $7deb: $7e
    dec a                                         ; $7dec: $3d
    ld [hl], a                                    ; $7ded: $77
    pop hl                                        ; $7dee: $e1
    inc hl                                        ; $7def: $23
    ld b, c                                       ; $7df0: $41
    inc c                                         ; $7df1: $0c
    or a                                          ; $7df2: $b7
    jr nz, jr_028_7ddc                            ; $7df3: $20 $e7

    ld a, b                                       ; $7df5: $78
    call Call_028_7e08                            ; $7df6: $cd $08 $7e
    ld a, c                                       ; $7df9: $79
    cp $04                                        ; $7dfa: $fe $04
    jr nz, jr_028_7ddc                            ; $7dfc: $20 $de

jr_028_7dfe:
    pop af                                        ; $7dfe: $f1
    ldh [$96], a                                  ; $7dff: $e0 $96
    ldh [rSVBK], a                                ; $7e01: $e0 $70
    pop hl                                        ; $7e03: $e1
    pop de                                        ; $7e04: $d1
    pop bc                                        ; $7e05: $c1
    pop af                                        ; $7e06: $f1
    ret                                           ; $7e07: $c9


Call_028_7e08:
    push af                                       ; $7e08: $f5
    push bc                                       ; $7e09: $c5
    push de                                       ; $7e0a: $d5
    push hl                                       ; $7e0b: $e5
    push af                                       ; $7e0c: $f5
    add sp, -$01                                  ; $7e0d: $e8 $ff
    ld hl, sp+$00                                 ; $7e0f: $f8 $00
    ld [hl], a                                    ; $7e11: $77
    ld h, $00                                     ; $7e12: $26 $00
    ld l, a                                       ; $7e14: $6f
    add hl, hl                                    ; $7e15: $29
    ld bc, $c330                                  ; $7e16: $01 $30 $c3
    add hl, bc                                    ; $7e19: $09
    ld a, [hl]                                    ; $7e1a: $7e
    ld [$c33c], a                                 ; $7e1b: $ea $3c $c3

jr_028_7e1e:
    ld a, [$c32f]                                 ; $7e1e: $fa $2f $c3
    ld l, a                                       ; $7e21: $6f
    ld h, $00                                     ; $7e22: $26 $00
    add hl, hl                                    ; $7e24: $29
    ld bc, $405e                                  ; $7e25: $01 $5e $40
    add hl, bc                                    ; $7e28: $09
    ld a, [hl+]                                   ; $7e29: $2a
    ld h, [hl]                                    ; $7e2a: $66
    ld l, a                                       ; $7e2b: $6f
    ld a, [$c33c]                                 ; $7e2c: $fa $3c $c3
    ld c, a                                       ; $7e2f: $4f
    ld b, $00                                     ; $7e30: $06 $00
    add hl, bc                                    ; $7e32: $09
    ld a, [hl]                                    ; $7e33: $7e
    cp $ff                                        ; $7e34: $fe $ff
    jr nz, jr_028_7e47                            ; $7e36: $20 $0f

    ld hl, sp+$00                                 ; $7e38: $f8 $00
    ld c, [hl]                                    ; $7e3a: $4e
    ld b, $00                                     ; $7e3b: $06 $00
    ld hl, $c338                                  ; $7e3d: $21 $38 $c3
    add hl, bc                                    ; $7e40: $09
    ld a, [hl]                                    ; $7e41: $7e
    ld [$c33c], a                                 ; $7e42: $ea $3c $c3
    jr jr_028_7e1e                                ; $7e45: $18 $d7

jr_028_7e47:
    ld b, a                                       ; $7e47: $47
    inc hl                                        ; $7e48: $23
    ld c, [hl]                                    ; $7e49: $4e
    inc hl                                        ; $7e4a: $23
    ld e, [hl]                                    ; $7e4b: $5e
    inc hl                                        ; $7e4c: $23
    ld a, [hl]                                    ; $7e4d: $7e
    push af                                       ; $7e4e: $f5
    push bc                                       ; $7e4f: $c5
    ld l, e                                       ; $7e50: $6b
    ld h, $00                                     ; $7e51: $26 $00
    add hl, hl                                    ; $7e53: $29
    add hl, hl                                    ; $7e54: $29
    add hl, hl                                    ; $7e55: $29
    add hl, hl                                    ; $7e56: $29
    ld de, $b000                                  ; $7e57: $11 $00 $b0
    add hl, de                                    ; $7e5a: $19
    push hl                                       ; $7e5b: $e5
    ld l, b                                       ; $7e5c: $68
    ld h, $00                                     ; $7e5d: $26 $00
    add hl, hl                                    ; $7e5f: $29
    add hl, hl                                    ; $7e60: $29
    add hl, hl                                    ; $7e61: $29
    add hl, hl                                    ; $7e62: $29
    ld bc, $d800                                  ; $7e63: $01 $00 $d8
    add hl, bc                                    ; $7e66: $09
    pop de                                        ; $7e67: $d1
    pop bc                                        ; $7e68: $c1
    call Call_000_0468                            ; $7e69: $cd $68 $04
    ld a, [$c33c]                                 ; $7e6c: $fa $3c $c3
    add $04                                       ; $7e6f: $c6 $04
    ld [$c33c], a                                 ; $7e71: $ea $3c $c3
    pop af                                        ; $7e74: $f1
    ld d, a                                       ; $7e75: $57
    add sp, $01                                   ; $7e76: $e8 $01
    pop af                                        ; $7e78: $f1
    ld h, $00                                     ; $7e79: $26 $00
    ld l, a                                       ; $7e7b: $6f
    add hl, hl                                    ; $7e7c: $29
    ld bc, $c330                                  ; $7e7d: $01 $30 $c3
    add hl, bc                                    ; $7e80: $09
    ld a, [$c33c]                                 ; $7e81: $fa $3c $c3
    ld [hl+], a                                   ; $7e84: $22
    ld [hl], d                                    ; $7e85: $72
    pop hl                                        ; $7e86: $e1
    pop de                                        ; $7e87: $d1
    pop bc                                        ; $7e88: $c1
    pop af                                        ; $7e89: $f1
    ret                                           ; $7e8a: $c9


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
