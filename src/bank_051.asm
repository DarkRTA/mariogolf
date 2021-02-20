; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $051", ROMX[$4000], BANK[$51]

    db $10                                        ; $4000: $10
    ld b, b                                       ; $4001: $40
    pop hl                                        ; $4002: $e1
    ld e, b                                       ; $4003: $58
    add b                                         ; $4004: $80
    ld d, b                                       ; $4005: $50
    ldh a, [rBCPS]                                ; $4006: $f0 $68
    ld d, c                                       ; $4008: $51
    ld [hl], c                                    ; $4009: $71

    db $04, $72

    inc bc                                        ; $400c: $03
    ld [hl], e                                    ; $400d: $73
    adc [hl]                                      ; $400e: $8e
    ld [hl], a                                    ; $400f: $77
    ld a, [de]                                    ; $4010: $1a
    ld b, b                                       ; $4011: $40
    ld c, d                                       ; $4012: $4a
    ld b, b                                       ; $4013: $40
    ld d, b                                       ; $4014: $50
    ld c, e                                       ; $4015: $4b
    ld d, b                                       ; $4016: $50
    ld c, l                                       ; $4017: $4d
    ld b, h                                       ; $4018: $44
    ld c, a                                       ; $4019: $4f
    rst $18                                       ; $401a: $df
    dec l                                         ; $401b: $2d
    rst $38                                       ; $401c: $ff
    ld d, e                                       ; $401d: $53
    sub b                                         ; $401e: $90
    inc bc                                        ; $401f: $03
    call nc, $ff01                                ; $4020: $d4 $01 $ff
    ld a, a                                       ; $4023: $7f
    db $f4                                        ; $4024: $f4
    inc bc                                        ; $4025: $03
    sub b                                         ; $4026: $90
    inc bc                                        ; $4027: $03
    call nc, $1601                                ; $4028: $d4 $01 $16
    ld a, l                                       ; $402b: $7d
    sbc a                                         ; $402c: $9f
    ld a, [hl]                                    ; $402d: $7e
    pop af                                        ; $402e: $f1
    nop                                           ; $402f: $00
    call nc, $ff01                                ; $4030: $d4 $01 $ff
    ld a, a                                       ; $4033: $7f
    sub b                                         ; $4034: $90
    inc bc                                        ; $4035: $03
    call nc, $ac01                                ; $4036: $d4 $01 $ac
    ld [$08f5], sp                                ; $4039: $08 $f5 $08
    ld a, a                                       ; $403c: $7f
    ld de, $1aff                                  ; $403d: $11 $ff $1a
    xor h                                         ; $4040: $ac
    ld [$2508], sp                                ; $4041: $08 $08 $25
    ld [$0825], sp                                ; $4044: $08 $25 $08
    dec h                                         ; $4047: $25
    ld [$d525], sp                                ; $4048: $08 $25 $d5

jr_051_404b:
    nop                                           ; $404b: $00
    rst $38                                       ; $404c: $ff
    ldh [rTIMA], a                                ; $404d: $e0 $05
    ei                                            ; $404f: $fb
    ldh [$0b], a                                  ; $4050: $e0 $0b
    rst $30                                       ; $4052: $f7
    pop hl                                        ; $4053: $e1
    nop                                           ; $4054: $00
    ld [bc], a                                    ; $4055: $02
    db $eb                                        ; $4056: $eb
    nop                                           ; $4057: $00
    jr z, @-$0f                                   ; $4058: $28 $ef

    ldh [$90], a                                  ; $405a: $e0 $90
    db $eb                                        ; $405c: $eb
    ldh [$f5], a                                  ; $405d: $e0 $f5
    nop                                           ; $405f: $00
    ret z                                         ; $4060: $c8

    cp $e5                                        ; $4061: $fe $e5
    ldh [$80], a                                  ; $4063: $e0 $80
    nop                                           ; $4065: $00
    db $ec                                        ; $4066: $ec
    rst $38                                       ; $4067: $ff
    ld hl, sp-$01                                 ; $4068: $f8 $ff
    ldh [rIE], a                                  ; $406a: $e0 $ff
    cp $42                                        ; $406c: $fe $42
    ld hl, sp-$38                                 ; $406e: $f8 $c8
    ldh a, [$80]                                  ; $4070: $f0 $80
    ldh [rNR10], a                                ; $4072: $e0 $10
    rst $28                                       ; $4074: $ef
    ldh [rP1], a                                  ; $4075: $e0 $00
    ret nz                                        ; $4077: $c0

    rst $38                                       ; $4078: $ff
    rst $38                                       ; $4079: $ff
    ld [c], a                                     ; $407a: $e2
    rst $30                                       ; $407b: $f7
    rst $38                                       ; $407c: $ff
    cp h                                          ; $407d: $bc
    ld a, a                                       ; $407e: $7f
    rst $38                                       ; $407f: $ff
    add sp, -$01                                  ; $4080: $e8 $ff
    add c                                         ; $4082: $81
    cp $08                                        ; $4083: $fe $08
    ldh a, [$f8]                                  ; $4085: $f0 $f8
    push hl                                       ; $4087: $e5
    ei                                            ; $4088: $fb
    jr nz, jr_051_404b                            ; $4089: $20 $c0

    cp a                                          ; $408b: $bf
    ld [c], a                                     ; $408c: $e2
    nop                                           ; $408d: $00
    ld a, a                                       ; $408e: $7f
    rst $38                                       ; $408f: $ff
    cpl                                           ; $4090: $2f
    rst $38                                       ; $4091: $ff
    rst $38                                       ; $4092: $ff
    ccf                                           ; $4093: $3f
    rst $38                                       ; $4094: $ff
    rra                                           ; $4095: $1f
    rst $38                                       ; $4096: $ff
    or a                                          ; $4097: $b7
    ld a, a                                       ; $4098: $7f
    rra                                           ; $4099: $1f
    ld a, a                                       ; $409a: $7f
    rst $38                                       ; $409b: $ff
    rrca                                          ; $409c: $0f
    ld a, a                                       ; $409d: $7f
    ld c, a                                       ; $409e: $4f
    ccf                                           ; $409f: $3f
    rlca                                          ; $40a0: $07
    rra                                           ; $40a1: $1f
    ld [bc], a                                    ; $40a2: $02
    rra                                           ; $40a3: $1f
    rst $38                                       ; $40a4: $ff
    inc de                                        ; $40a5: $13
    rrca                                          ; $40a6: $0f
    ld bc, $0b0f                                  ; $40a7: $01 $0f $0b
    rlca                                          ; $40aa: $07
    ld bc, $ff07                                  ; $40ab: $01 $07 $ff
    nop                                           ; $40ae: $00
    rlca                                          ; $40af: $07
    inc b                                         ; $40b0: $04
    inc bc                                        ; $40b1: $03
    ld e, h                                       ; $40b2: $5c
    rst $38                                       ; $40b3: $ff
    nop                                           ; $40b4: $00
    rst $38                                       ; $40b5: $ff
    rst $20                                       ; $40b6: $e7
    add c                                         ; $40b7: $81
    inc a                                         ; $40b8: $3c
    db $10                                        ; $40b9: $10
    db $d3                                        ; $40ba: $d3
    db $e3                                        ; $40bb: $e3
    add e                                         ; $40bc: $83
    ldh [rNR41], a                                ; $40bd: $e0 $20
    ret nz                                        ; $40bf: $c0

    add b                                         ; $40c0: $80
    cp a                                          ; $40c1: $bf
    ret nz                                        ; $40c2: $c0

    nop                                           ; $40c3: $00
    ldh [$90], a                                  ; $40c4: $e0 $90
    ldh [$80], a                                  ; $40c6: $e0 $80
    cp $e0                                        ; $40c8: $fe $e0
    nop                                           ; $40ca: $00
    ei                                            ; $40cb: $fb
    ret nz                                        ; $40cc: $c0

    jr nz, @-$5e                                  ; $40cd: $20 $a0

    ldh [$7d], a                                  ; $40cf: $e0 $7d
    rst $38                                       ; $40d1: $ff
    rst $28                                       ; $40d2: $ef
    rst $38                                       ; $40d3: $ff
    ld a, [hl-]                                   ; $40d4: $3a
    ld a, [$e2da]                                 ; $40d5: $fa $da $e2
    ld [$e063], sp                                ; $40d8: $08 $63 $e0
    and h                                         ; $40db: $a4
    ld hl, sp-$20                                 ; $40dc: $f8 $e0
    ld hl, sp-$10                                 ; $40de: $f8 $f0
    rst $38                                       ; $40e0: $ff
    db $fc                                        ; $40e1: $fc
    ret nc                                        ; $40e2: $d0

    db $fc                                        ; $40e3: $fc
    ld a, [c]                                     ; $40e4: $f2
    db $fc                                        ; $40e5: $fc
    ldh [$fc], a                                  ; $40e6: $e0 $fc
    or b                                          ; $40e8: $b0
    rst $30                                       ; $40e9: $f7
    ld hl, sp-$1c                                 ; $40ea: $f8 $e4
    ld hl, sp-$80                                 ; $40ec: $f8 $80
    push hl                                       ; $40ee: $e5
    cp [hl]                                       ; $40ef: $be
    rst $38                                       ; $40f0: $ff
    db $e3                                        ; $40f1: $e3
    rst $38                                       ; $40f2: $ff
    rst $38                                       ; $40f3: $ff
    ld b, b                                       ; $40f4: $40
    rst $38                                       ; $40f5: $ff
    nop                                           ; $40f6: $00
    rst $20                                       ; $40f7: $e7
    db $fc                                        ; $40f8: $fc
    rst $38                                       ; $40f9: $ff
    or $ff                                        ; $40fa: $f6 $ff
    ld a, a                                       ; $40fc: $7f
    db $fc                                        ; $40fd: $fc
    rst $38                                       ; $40fe: $ff

Jump_051_40ff:
    ld hl, sp-$02                                 ; $40ff: $f8 $fe
    add sp, -$02                                  ; $4101: $e8 $fe
    ld hl, sp-$08                                 ; $4103: $f8 $f8
    ldh [$0b], a                                  ; $4105: $e0 $0b
    db $f4                                        ; $4107: $f4
    rst $38                                       ; $4108: $ff
    ld a, b                                       ; $4109: $78
    ldh [$80], a                                  ; $410a: $e0 $80
    and e                                         ; $410c: $a3
    and $23                                       ; $410d: $e6 $23
    pop hl                                        ; $410f: $e1
    ldh a, [$e0]                                  ; $4110: $f0 $e0
    rst $28                                       ; $4112: $ef
    ld [$c0e3], a                                 ; $4113: $ea $e3 $c0
    ld b, b                                       ; $4116: $40
    ldh [$ea], a                                  ; $4117: $e0 $ea
    ret nc                                        ; $4119: $d0

    pop hl                                        ; $411a: $e1
    rst $08                                       ; $411b: $cf
    jp hl                                         ; $411c: $e9


    ld [bc], a                                    ; $411d: $02
    add c                                         ; $411e: $81
    and b                                         ; $411f: $a0
    rst $38                                       ; $4120: $ff
    pop bc                                        ; $4121: $c1
    add b                                         ; $4122: $80
    pop bc                                        ; $4123: $c1
    add l                                         ; $4124: $85
    jp $c3a1                                      ; $4125: $c3 $a1 $c3


    nop                                           ; $4128: $00
    ld a, a                                       ; $4129: $7f
    add e                                         ; $412a: $83
    dec b                                         ; $412b: $05
    add e                                         ; $412c: $83
    ld b, b                                       ; $412d: $40
    add c                                         ; $412e: $81
    ld b, c                                       ; $412f: $41
    add b                                         ; $4130: $80
    ret nz                                        ; $4131: $c0

    ldh [rIE], a                                  ; $4132: $e0 $ff
    ret nz                                        ; $4134: $c0

    and b                                         ; $4135: $a0
    ret nz                                        ; $4136: $c0

    ret nz                                        ; $4137: $c0

    ldh [rBCPS], a                                ; $4138: $e0 $68
    ldh a, [$f1]                                  ; $413a: $f0 $f1
    rst $38                                       ; $413c: $ff
    db $fc                                        ; $413d: $fc
    call c, Call_000_1eff                         ; $413e: $dc $ff $1e
    rst $38                                       ; $4141: $ff
    add b                                         ; $4142: $80
    ld e, $12                                     ; $4143: $1e $12
    ld a, [hl]                                    ; $4145: $7e
    call nc, Call_051_48c2                        ; $4146: $d4 $c2 $48
    nop                                           ; $4149: $00
    ld bc, $5878                                  ; $414a: $01 $78 $58
    rst $38                                       ; $414d: $ff
    or b                                          ; $414e: $b0
    jp hl                                         ; $414f: $e9


    rst $38                                       ; $4150: $ff
    ld [bc], a                                    ; $4151: $02
    ld bc, $0300                                  ; $4152: $01 $00 $03
    nop                                           ; $4155: $00
    nop                                           ; $4156: $00
    ld b, b                                       ; $4157: $40
    ld b, b                                       ; $4158: $40
    ld a, a                                       ; $4159: $7f
    nop                                           ; $415a: $00
    jr nz, jr_051_415d                            ; $415b: $20 $00

jr_051_415d:
    db $10                                        ; $415d: $10
    ld [$0400], sp                                ; $415e: $08 $00 $04
    or d                                          ; $4161: $b2
    ret nz                                        ; $4162: $c0

    ret nz                                        ; $4163: $c0

    and d                                         ; $4164: $a2
    pop bc                                        ; $4165: $c1
    ldh a, [rIE]                                  ; $4166: $f0 $ff
    ldh a, [rIE]                                  ; $4168: $f0 $ff
    ldh a, [rIE]                                  ; $416a: $f0 $ff
    ldh a, [rIE]                                  ; $416c: $f0 $ff
    ldh a, [$f3]                                  ; $416e: $f0 $f3
    jp $e33c                                      ; $4170: $c3 $3c $e3


    jp $fd3c                                      ; $4173: $c3 $3c $fd


    ldh [$fe], a                                  ; $4176: $e0 $fe
    ld [c], a                                     ; $4178: $e2
    db $f4                                        ; $4179: $f4
    pop hl                                        ; $417a: $e1
    dec de                                        ; $417b: $1b
    rst $20                                       ; $417c: $e7
    cpl                                           ; $417d: $2f
    rst $38                                       ; $417e: $ff
    call c, $f11e                                 ; $417f: $dc $1e $f1
    inc a                                         ; $4182: $3c
    db $e3                                        ; $4183: $e3
    ld a, h                                       ; $4184: $7c
    jp Jump_051_7f7c                              ; $4185: $c3 $7c $7f


    jp $9ce3                                      ; $4188: $c3 $e3 $9c


    jp Jump_000_18bc                              ; $418b: $c3 $bc $18


    rst $20                                       ; $418e: $e7
    ld [c], a                                     ; $418f: $e2
    pop hl                                        ; $4190: $e1
    rst $38                                       ; $4191: $ff
    ld a, [de]                                    ; $4192: $1a
    push hl                                       ; $4193: $e5
    ld [de], a                                    ; $4194: $12
    rst $28                                       ; $4195: $ef
    ld e, a                                       ; $4196: $5f
    cp b                                          ; $4197: $b8
    ld a, a                                       ; $4198: $7f
    ldh [rIE], a                                  ; $4199: $e0 $ff
    di                                            ; $419b: $f3
    adc h                                         ; $419c: $8c
    inc de                                        ; $419d: $13
    rst $28                                       ; $419e: $ef
    rra                                           ; $419f: $1f
    ld hl, sp-$04                                 ; $41a0: $f8 $fc
    ld h, e                                       ; $41a2: $63
    cp a                                          ; $41a3: $bf
    db $fc                                        ; $41a4: $fc
    add e                                         ; $41a5: $83
    db $fc                                        ; $41a6: $fc
    inc bc                                        ; $41a7: $03
    cp h                                          ; $41a8: $bc
    ld b, e                                       ; $41a9: $43
    call nz, $98e1                                ; $41aa: $c4 $e1 $98
    rst $38                                       ; $41ad: $ff
    rst $20                                       ; $41ae: $e7
    db $fc                                        ; $41af: $fc
    ld b, e                                       ; $41b0: $43
    call c, $f863                                 ; $41b1: $dc $63 $f8
    daa                                           ; $41b4: $27
    ld l, b                                       ; $41b5: $68
    rst $38                                       ; $41b6: $ff
    or a                                          ; $41b7: $b7
    ld l, h                                       ; $41b8: $6c
    sub e                                         ; $41b9: $93
    db $fc                                        ; $41ba: $fc
    inc de                                        ; $41bb: $13
    add sp, $17                                   ; $41bc: $e8 $17
    ld hl, sp-$01                                 ; $41be: $f8 $ff
    rrca                                          ; $41c0: $0f
    sbc $25                                       ; $41c1: $de $25
    inc a                                         ; $41c3: $3c
    rst $00                                       ; $41c4: $c7
    ld a, $c3                                     ; $41c5: $3e $c3
    ccf                                           ; $41c7: $3f
    rst $38                                       ; $41c8: $ff
    jp nz, $c13e                                  ; $41c9: $c2 $3e $c1

    jp $c33d                                      ; $41cc: $c3 $3d $c3


    dec a                                         ; $41cf: $3d
    cp e                                          ; $41d0: $bb
    rst $30                                       ; $41d1: $f7
    rst $10                                       ; $41d2: $d7
    rst $38                                       ; $41d3: $ff
    nop                                           ; $41d4: $00
    and b                                         ; $41d5: $a0
    jp hl                                         ; $41d6: $e9


    jp $c3bc                                      ; $41d7: $c3 $bc $c3


    cp h                                          ; $41da: $bc
    ret                                           ; $41db: $c9


    ld a, h                                       ; $41dc: $7c
    jp nz, $bee0                                  ; $41dd: $c2 $e0 $be

    pop hl                                        ; $41e0: $e1
    ld b, e                                       ; $41e1: $43
    db $f4                                        ; $41e2: $f4
    ldh [$a0], a                                  ; $41e3: $e0 $a0
    pop hl                                        ; $41e5: $e1
    nop                                           ; $41e6: $00
    rst $38                                       ; $41e7: $ff
    cp a                                          ; $41e8: $bf
    db $dd                                        ; $41e9: $dd
    db $eb                                        ; $41ea: $eb
    rst $38                                       ; $41eb: $ff
    nop                                           ; $41ec: $00
    ld a, [hl]                                    ; $41ed: $7e
    add c                                         ; $41ee: $81
    add b                                         ; $41ef: $80
    ld [c], a                                     ; $41f0: $e2
    db $f4                                        ; $41f1: $f4
    rst $38                                       ; $41f2: $ff
    rrca                                          ; $41f3: $0f
    ldh a, [rNR32]                                ; $41f4: $f0 $1c
    db $e3                                        ; $41f6: $e3
    inc e                                         ; $41f7: $1c
    di                                            ; $41f8: $f3
    inc e                                         ; $41f9: $1c
    db $e3                                        ; $41fa: $e3
    rst $38                                       ; $41fb: $ff
    inc c                                         ; $41fc: $0c
    di                                            ; $41fd: $f3
    ccf                                           ; $41fe: $3f
    ret nc                                        ; $41ff: $d0

    dec de                                        ; $4200: $1b
    db $f4                                        ; $4201: $f4
    ld d, a                                       ; $4202: $57
    rst $38                                       ; $4203: $ff
    ld e, a                                       ; $4204: $5f
    xor a                                         ; $4205: $af
    db $fc                                        ; $4206: $fc
    ld a, [hl]                                    ; $4207: $7e
    pop af                                        ; $4208: $f1
    cp h                                          ; $4209: $bc
    ld [hl], b                                    ; $420a: $70
    ldh [$fc], a                                  ; $420b: $e0 $fc
    ld [hl], b                                    ; $420d: $70
    ld [c], a                                     ; $420e: $e2
    rst $38                                       ; $420f: $ff
    ei                                            ; $4210: $fb
    rst $38                                       ; $4211: $ff
    sbc $ff                                       ; $4212: $de $ff
    push af                                       ; $4214: $f5
    rst $38                                       ; $4215: $ff
    xor d                                         ; $4216: $aa
    rst $38                                       ; $4217: $ff
    or a                                          ; $4218: $b7
    ld d, a                                       ; $4219: $57
    rst $38                                       ; $421a: $ff
    cp a                                          ; $421b: $bf
    ld h, a                                       ; $421c: $67
    and b                                         ; $421d: $a0
    di                                            ; $421e: $f3
    adc h                                         ; $421f: $8c
    ld hl, sp-$1f                                 ; $4220: $f8 $e1
    ld a, h                                       ; $4222: $7c
    db $fd                                        ; $4223: $fd
    db $e3                                        ; $4224: $e3
    ld [hl], b                                    ; $4225: $70
    rst $20                                       ; $4226: $e7
    rst $28                                       ; $4227: $ef
    rst $38                                       ; $4228: $ff
    rst $10                                       ; $4229: $d7
    ld a, a                                       ; $422a: $7f
    db $ed                                        ; $422b: $ed
    ld a, a                                       ; $422c: $7f
    rst $38                                       ; $422d: $ff
    rst $30                                       ; $422e: $f7
    ccf                                           ; $422f: $3f
    ld l, e                                       ; $4230: $6b
    cp a                                          ; $4231: $bf
    halt                                          ; $4232: $76
    sbc a                                         ; $4233: $9f
    ei                                            ; $4234: $fb
    rra                                           ; $4235: $1f
    rst $38                                       ; $4236: $ff
    push af                                       ; $4237: $f5
    rra                                           ; $4238: $1f
    ld a, [$dd0f]                                 ; $4239: $fa $0f $dd
    daa                                           ; $423c: $27
    ld a, $c7                                     ; $423d: $3e $c7
    di                                            ; $423f: $f3
    ccf                                           ; $4240: $3f
    jp $e06e                                      ; $4241: $c3 $6e $e0


    ld [hl], b                                    ; $4244: $70
    ld [c], a                                     ; $4245: $e2
    db $ed                                        ; $4246: $ed
    rst $38                                       ; $4247: $ff
    db $d3                                        ; $4248: $d3
    inc a                                         ; $4249: $3c
    dec sp                                        ; $424a: $3b
    ld a, [hl]                                    ; $424b: $7e
    add c                                         ; $424c: $81
    ld [hl], b                                    ; $424d: $70
    jp hl                                         ; $424e: $e9


    db $e3                                        ; $424f: $e3
    sbc h                                         ; $4250: $9c
    cp h                                          ; $4251: $bc
    inc d                                         ; $4252: $14
    ldh [rBCPD], a                                ; $4253: $e0 $69
    ldh [$eb], a                                  ; $4255: $e0 $eb
    jp $1063                                      ; $4257: $c3 $63 $10


    ldh [$57], a                                  ; $425a: $e0 $57
    and h                                         ; $425c: $a4
    ldh [$7d], a                                  ; $425d: $e0 $7d
    rst $38                                       ; $425f: $ff
    db $d3                                        ; $4260: $d3
    ld sp, hl                                     ; $4261: $f9
    rst $28                                       ; $4262: $ef
    ld c, d                                       ; $4263: $4a
    pop hl                                        ; $4264: $e1
    db $e4                                        ; $4265: $e4
    pop bc                                        ; $4266: $c1
    cp e                                          ; $4267: $bb
    db $f4                                        ; $4268: $f4
    ld e, e                                       ; $4269: $5b
    db $f4                                        ; $426a: $f4
    xor h                                         ; $426b: $ac
    rst $38                                       ; $426c: $ff
    di                                            ; $426d: $f3
    ld l, h                                       ; $426e: $6c
    di                                            ; $426f: $f3
    cp h                                          ; $4270: $bc
    db $e3                                        ; $4271: $e3
    ld l, h                                       ; $4272: $6c
    di                                            ; $4273: $f3
    cp e                                          ; $4274: $bb
    rst $38                                       ; $4275: $ff
    db $f4                                        ; $4276: $f4
    db $db                                        ; $4277: $db
    db $f4                                        ; $4278: $f4
    cp l                                          ; $4279: $bd
    jp $ffe7                                      ; $427a: $c3 $e7 $ff


    cp d                                          ; $427d: $ba
    cp a                                          ; $427e: $bf
    rst $38                                       ; $427f: $ff
    ld d, l                                       ; $4280: $55
    rst $38                                       ; $4281: $ff
    xor e                                         ; $4282: $ab
    rst $38                                       ; $4283: $ff
    cp $58                                        ; $4284: $fe $58
    and b                                         ; $4286: $a0
    rst $38                                       ; $4287: $ff
    rst $28                                       ; $4288: $ef
    rst $38                                       ; $4289: $ff
    db $db                                        ; $428a: $db
    rst $38                                       ; $428b: $ff
    ld l, a                                       ; $428c: $6f
    adc [hl]                                      ; $428d: $8e
    ldh [$af], a                                  ; $428e: $e0 $af
    ld a, a                                       ; $4290: $7f
    or l                                          ; $4291: $b5
    rst $08                                       ; $4292: $cf
    ld a, a                                       ; $4293: $7f
    rst $28                                       ; $4294: $ef
    ld a, a                                       ; $4295: $7f
    ld d, a                                       ; $4296: $57
    ld b, [hl]                                    ; $4297: $46
    and b                                         ; $4298: $a0
    ret nc                                        ; $4299: $d0

    jp $e718                                      ; $429a: $c3 $18 $e7


    cp $f8                                        ; $429d: $fe $f8
    push hl                                       ; $429f: $e5
    ld d, a                                       ; $42a0: $57
    rst $38                                       ; $42a1: $ff
    xor h                                         ; $42a2: $ac
    rst $38                                       ; $42a3: $ff
    ld [hl], h                                    ; $42a4: $74
    ei                                            ; $42a5: $fb
    cp b                                          ; $42a6: $b8
    ld l, a                                       ; $42a7: $6f
    rst $20                                       ; $42a8: $e7
    ld e, b                                       ; $42a9: $58
    rst $20                                       ; $42aa: $e7
    db $fc                                        ; $42ab: $fc
    dec b                                         ; $42ac: $05
    ldh [$98], a                                  ; $42ad: $e0 $98
    rst $20                                       ; $42af: $e7
    ld b, b                                       ; $42b0: $40
    rst $20                                       ; $42b1: $e7
    rst $18                                       ; $42b2: $df
    cp d                                          ; $42b3: $ba
    rst $38                                       ; $42b4: $ff
    db $ec                                        ; $42b5: $ec
    di                                            ; $42b6: $f3
    sbc b                                         ; $42b7: $98
    ldh [$e0], a                                  ; $42b8: $e0 $e0
    cp d                                          ; $42ba: $ba
    rst $38                                       ; $42bb: $ff
    jp hl                                         ; $42bc: $e9


    ld l, h                                       ; $42bd: $6c
    ld hl, sp-$20                                 ; $42be: $f8 $e0
    ret z                                         ; $42c0: $c8

    push hl                                       ; $42c1: $e5
    rst $28                                       ; $42c2: $ef
    ld h, $e0                                     ; $42c3: $26 $e0
    ld l, l                                       ; $42c5: $6d
    rst $38                                       ; $42c6: $ff
    scf                                           ; $42c7: $37
    rst $38                                       ; $42c8: $ff
    rst $38                                       ; $42c9: $ff
    dec hl                                        ; $42ca: $2b
    rst $38                                       ; $42cb: $ff
    ld d, $ff                                     ; $42cc: $16 $ff
    dec sp                                        ; $42ce: $3b
    rst $38                                       ; $42cf: $ff
    dec d                                         ; $42d0: $15
    rst $38                                       ; $42d1: $ff
    rst $38                                       ; $42d2: $ff
    ld a, [de]                                    ; $42d3: $1a
    rst $28                                       ; $42d4: $ef
    dec [hl]                                      ; $42d5: $35
    rst $08                                       ; $42d6: $cf
    ld a, $c7                                     ; $42d7: $3e $c7
    dec de                                        ; $42d9: $1b
    rst $38                                       ; $42da: $ff
    rst $20                                       ; $42db: $e7
    ld a, [de]                                    ; $42dc: $1a
    rst $20                                       ; $42dd: $e7
    dec a                                         ; $42de: $3d
    jp $c33f                                      ; $42df: $c3 $3f $c3


    add hl, de                                    ; $42e2: $19
    db $db                                        ; $42e3: $db
    rst $20                                       ; $42e4: $e7
    rst $10                                       ; $42e5: $d7
    db $e4                                        ; $42e6: $e4
    add b                                         ; $42e7: $80
    inc l                                         ; $42e8: $2c
    db $d3                                        ; $42e9: $d3
    and b                                         ; $42ea: $a0
    rst $20                                       ; $42eb: $e7
    sbc b                                         ; $42ec: $98
    rst $20                                       ; $42ed: $e7
    adc d                                         ; $42ee: $8a
    ld b, d                                       ; $42ef: $42
    pop hl                                        ; $42f0: $e1
    ret c                                         ; $42f1: $d8

    and b                                         ; $42f2: $a0
    ldh [$bc], a                                  ; $42f3: $e0 $bc
    sbc $c0                                       ; $42f5: $de $c0
    or b                                          ; $42f7: $b0
    pop hl                                        ; $42f8: $e1
    ld b, b                                       ; $42f9: $40
    pop hl                                        ; $42fa: $e1
    set 7, [hl]                                   ; $42fb: $cb $fe
    ld a, b                                       ; $42fd: $78
    and $b0                                       ; $42fe: $e6 $b0
    rst $38                                       ; $4300: $ff
    ld d, h                                       ; $4301: $54
    ei                                            ; $4302: $fb
    and h                                         ; $4303: $a4
    ei                                            ; $4304: $fb
    ld a, b                                       ; $4305: $78
    rst $38                                       ; $4306: $ff
    rst $30                                       ; $4307: $f7
    xor b                                         ; $4308: $a8
    rst $30                                       ; $4309: $f7
    ld h, h                                       ; $430a: $64
    ei                                            ; $430b: $fb
    or h                                          ; $430c: $b4
    ei                                            ; $430d: $fb
    ret nc                                        ; $430e: $d0

    rst $38                                       ; $430f: $ff
    rst $38                                       ; $4310: $ff
    pop bc                                        ; $4311: $c1
    rst $38                                       ; $4312: $ff
    or a                                          ; $4313: $b7
    rst $38                                       ; $4314: $ff
    ld e, l                                       ; $4315: $5d

Jump_051_4316:
    rst $38                                       ; $4316: $ff
    ld [$3e54], a                                 ; $4317: $ea $54 $3e
    ldh [$3a], a                                  ; $431a: $e0 $3a
    add c                                         ; $431c: $81
    rst $38                                       ; $431d: $ff
    sub h                                         ; $431e: $94
    add b                                         ; $431f: $80
    ld d, a                                       ; $4320: $57
    ld a, $e0                                     ; $4321: $3e $e0
    dec [hl]                                      ; $4323: $35
    ld a, [hl-]                                   ; $4324: $3a
    ldh [$f6], a                                  ; $4325: $e0 $f6
    xor [hl]                                      ; $4327: $ae
    ret nz                                        ; $4328: $c0

    rst $38                                       ; $4329: $ff
    rst $10                                       ; $432a: $d7
    ld hl, $ff83                                  ; $432b: $21 $83 $ff
    db $dd                                        ; $432e: $dd
    rst $38                                       ; $432f: $ff
    ld [hl], a                                    ; $4330: $77
    ld e, h                                       ; $4331: $5c
    sbc h                                         ; $4332: $9c
    ret nz                                        ; $4333: $c0

    call c, $afe1                                 ; $4334: $dc $e1 $af
    rst $38                                       ; $4337: $ff
    rst $18                                       ; $4338: $df
    adc $e0                                       ; $4339: $ce $e0
    rst $18                                       ; $433b: $df
    ld hl, sp-$1a                                 ; $433c: $f8 $e6
    inc d                                         ; $433e: $14
    rst $38                                       ; $433f: $ff
    push hl                                       ; $4340: $e5
    sbc $e5                                       ; $4341: $de $e5
    ld e, a                                       ; $4343: $5f
    jp z, Jump_051_6fe0                           ; $4344: $ca $e0 $6f

    add $e0                                       ; $4347: $c6 $e0
    ld hl, sp-$1b                                 ; $4349: $f8 $e5
    ldh [$63], a                                  ; $434b: $e0 $63
    jp z, $e1f8                                   ; $434d: $ca $f8 $e1

    ld e, a                                       ; $4350: $5f
    sub [hl]                                      ; $4351: $96
    ldh [$5f], a                                  ; $4352: $e0 $5f
    ret nc                                        ; $4354: $d0

    and $c7                                       ; $4355: $e6 $c7
    push hl                                       ; $4357: $e5
    ld l, c                                       ; $4358: $69
    rst $38                                       ; $4359: $ff
    rst $38                                       ; $435a: $ff
    call nc, $81fc                                ; $435b: $d4 $fc $81
    ldh a, [rDMA]                                 ; $435e: $f0 $46
    ldh [$8b], a                                  ; $4360: $e0 $8b
    ret nz                                        ; $4362: $c0

    ld a, a                                       ; $4363: $7f
    ld d, a                                       ; $4364: $57
    ret nz                                        ; $4365: $c0

    dec e                                         ; $4366: $1d
    add b                                         ; $4367: $80
    xor a                                         ; $4368: $af
    add b                                         ; $4369: $80
    db $fd                                        ; $436a: $fd
    xor a                                         ; $436b: $af
    ld h, b                                       ; $436c: $60
    db $fd                                        ; $436d: $fd
    jp c, $8048                                   ; $436e: $da $48 $80

    and b                                         ; $4371: $a0
    db $fc                                        ; $4372: $fc
    ld b, c                                       ; $4373: $41
    ldh a, [$0b]                                  ; $4374: $f0 $0b
    ret nz                                        ; $4376: $c0

    ei                                            ; $4377: $fb
    ld d, $00                                     ; $4378: $16 $00
    ld hl, sp-$1f                                 ; $437a: $f8 $e1
    ld a, [bc]                                    ; $437c: $0a
    ret nz                                        ; $437d: $c0

    rla                                           ; $437e: $17
    nop                                           ; $437f: $00
    cp l                                          ; $4380: $bd
    rst $30                                       ; $4381: $f7
    nop                                           ; $4382: $00
    ld l, a                                       ; $4383: $6f
    nop                                           ; $4384: $00
    push de                                       ; $4385: $d5
    ld h, b                                       ; $4386: $60
    nop                                           ; $4387: $00
    ld hl, sp-$02                                 ; $4388: $f8 $fe
    db $f4                                        ; $438a: $f4
    rst $38                                       ; $438b: $ff
    cp $d8                                        ; $438c: $fe $d8
    db $fc                                        ; $438e: $fc
    pop af                                        ; $438f: $f1
    db $fc                                        ; $4390: $fc
    ld [c], a                                     ; $4391: $e2
    ld hl, sp-$2f                                 ; $4392: $f8 $d1
    rst $38                                       ; $4394: $ff
    ld hl, sp+$63                                 ; $4395: $f8 $63
    ldh a, [$c6]                                  ; $4397: $f0 $c6
    ldh a, [$8b]                                  ; $4399: $f0 $8b
    ldh [rBGP], a                                 ; $439b: $e0 $47
    rst $38                                       ; $439d: $ff
    ldh [$8f], a                                  ; $439e: $e0 $8f
    ret nz                                        ; $43a0: $c0

    dec de                                        ; $43a1: $1b
    ret nz                                        ; $43a2: $c0

    cpl                                           ; $43a3: $2f
    add b                                         ; $43a4: $80
    rra                                           ; $43a5: $1f
    rst $38                                       ; $43a6: $ff
    add b                                         ; $43a7: $80
    scf                                           ; $43a8: $37
    nop                                           ; $43a9: $00
    ld e, a                                       ; $43aa: $5f
    nop                                           ; $43ab: $00
    inc h                                         ; $43ac: $24
    inc a                                         ; $43ad: $3c
    ld b, d                                       ; $43ae: $42
    cp a                                          ; $43af: $bf
    nop                                           ; $43b0: $00
    xor l                                         ; $43b1: $ad
    nop                                           ; $43b2: $00
    rst $30                                       ; $43b3: $f7
    nop                                           ; $43b4: $00
    ld a, l                                       ; $43b5: $7d
    jp nc, $ffe2                                  ; $43b6: $d2 $e2 $ff

    push af                                       ; $43b9: $f5
    nop                                           ; $43ba: $00
    db $ec                                        ; $43bb: $ec
    pop hl                                        ; $43bc: $e1
    cp a                                          ; $43bd: $bf
    db $e4                                        ; $43be: $e4
    ldh [$2f], a                                  ; $43bf: $e0 $2f
    add b                                         ; $43c1: $80
    cp a                                          ; $43c2: $bf
    add b                                         ; $43c3: $80
    rst $18                                       ; $43c4: $df
    ld d, a                                       ; $43c5: $57
    nop                                           ; $43c6: $00
    ccf                                           ; $43c7: $3f
    nop                                           ; $43c8: $00
    push af                                       ; $43c9: $f5
    ld a, $e0                                     ; $43ca: $3e $e0
    ld b, l                                       ; $43cc: $45
    rst $38                                       ; $43cd: $ff
    rst $38                                       ; $43ce: $ff
    nop                                           ; $43cf: $00
    rst $00                                       ; $43d0: $c7
    stop                                          ; $43d1: $10 $00
    ld l, l                                       ; $43d3: $6d
    nop                                           ; $43d4: $00
    cp e                                          ; $43d5: $bb
    nop                                           ; $43d6: $00
    rst $38                                       ; $43d7: $ff
    rst $28                                       ; $43d8: $ef
    nop                                           ; $43d9: $00
    rst $20                                       ; $43da: $e7
    ldh a, [rSCX]                                 ; $43db: $f0 $43
    ldh a, [$e5]                                  ; $43dd: $f0 $e5
    ldh a, [rIE]                                  ; $43df: $f0 $ff
    ld b, a                                       ; $43e1: $47
    ldh [$8a], a                                  ; $43e2: $e0 $8a
    ldh [$c7], a                                  ; $43e4: $e0 $c7
    ldh [$a5], a                                  ; $43e6: $e0 $a5
    ldh a, [$eb]                                  ; $43e8: $f0 $eb
    jp $30f0                                      ; $43ea: $c3 $f0 $30


    ld h, e                                       ; $43ed: $63
    rst $18                                       ; $43ee: $df
    ld l, $60                                     ; $43ef: $2e $60
    xor l                                         ; $43f1: $ad
    rst $38                                       ; $43f2: $ff
    ld b, d                                       ; $43f3: $42
    rst $38                                       ; $43f4: $ff
    rst $38                                       ; $43f5: $ff
    nop                                           ; $43f6: $00
    jp $fffc                                      ; $43f7: $c3 $fc $ff


    ld a, [$fcff]                                 ; $43fa: $fa $ff $fc
    sbc $8c                                       ; $43fd: $de $8c
    ldh [$f8], a                                  ; $43ff: $e0 $f8
    cp $ec                                        ; $4401: $fe $ec
    cp $f6                                        ; $4403: $fe $f6
    ldh [rIE], a                                  ; $4405: $e0 $ff
    rst $38                                       ; $4407: $ff
    rst $38                                       ; $4408: $ff
    add b                                         ; $4409: $80
    ccf                                           ; $440a: $3f
    add b                                         ; $440b: $80
    ld a, a                                       ; $440c: $7f
    ret nz                                        ; $440d: $c0

    sbc a                                         ; $440e: $9f
    ret nz                                        ; $440f: $c0

    ld c, a                                       ; $4410: $4f
    rst $38                                       ; $4411: $ff
    ldh [$87], a                                  ; $4412: $e0 $87
    ldh a, [$d5]                                  ; $4414: $f0 $d5
    db $fc                                        ; $4416: $fc
    ld l, c                                       ; $4417: $69
    rst $38                                       ; $4418: $ff
    ccf                                           ; $4419: $3f
    rst $38                                       ; $441a: $ff
    nop                                           ; $441b: $00
    rrca                                          ; $441c: $0f
    ret nz                                        ; $441d: $c0

    ld b, e                                       ; $441e: $43
    ldh a, [$a0]                                  ; $441f: $f0 $a0
    db $fc                                        ; $4421: $fc
    db $f4                                        ; $4422: $f4
    add $4a                                       ; $4423: $c6 $4a
    ldh [rIE], a                                  ; $4425: $e0 $ff
    rst $38                                       ; $4427: $ff
    ld b, d                                       ; $4428: $42
    ldh [$88], a                                  ; $4429: $e0 $88
    db $e4                                        ; $442b: $e4
    add sp, -$1b                                  ; $442c: $e8 $e5
    db $e3                                        ; $442e: $e3
    rrca                                          ; $442f: $0f
    rst $38                                       ; $4430: $ff
    and $0f                                       ; $4431: $e6 $0f
    rr a                                          ; $4433: $cb $1f
    rst $00                                       ; $4435: $c7
    rra                                           ; $4436: $1f
    adc a                                         ; $4437: $8f
    ccf                                           ; $4438: $3f
    rst $30                                       ; $4439: $f7
    sbc e                                         ; $443a: $9b
    ccf                                           ; $443b: $3f
    cpl                                           ; $443c: $2f
    db $fc                                        ; $443d: $fc
    ld b, b                                       ; $443e: $40
    cp $00                                        ; $443f: $fe $00
    cp $00                                        ; $4441: $fe $00
    rst $38                                       ; $4443: $ff
    db $fc                                        ; $4444: $fc
    ld bc, $01fc                                  ; $4445: $01 $fc $01
    ld hl, sp+$03                                 ; $4448: $f8 $03

jr_051_444a:
    ld sp, hl                                     ; $444a: $f9
    inc bc                                        ; $444b: $03
    rst $08                                       ; $444c: $cf
    ld a, [c]                                     ; $444d: $f2
    rlca                                          ; $444e: $07
    pop af                                        ; $444f: $f1
    rlca                                          ; $4450: $07
    ret nc                                        ; $4451: $d0

    push hl                                       ; $4452: $e5
    inc h                                         ; $4453: $24
    pop hl                                        ; $4454: $e1
    db $d3                                        ; $4455: $d3
    nop                                           ; $4456: $00
    ld e, a                                       ; $4457: $5f
    ld b, d                                       ; $4458: $42
    ld a, [hl]                                    ; $4459: $7e
    cp $00                                        ; $445a: $fe $00
    rst $38                                       ; $445c: $ff
    ld [c], a                                     ; $445d: $e2
    ldh [$fe], a                                  ; $445e: $e0 $fe
    sbc $e0                                       ; $4460: $de $e0
    rst $08                                       ; $4462: $cf
    db $fc                                        ; $4463: $fc
    ld bc, $01ff                                  ; $4464: $01 $ff $01
    ld a, [c]                                     ; $4467: $f2
    ldh [$0a], a                                  ; $4468: $e0 $0a
    ld [c], a                                     ; $446a: $e2
    inc a                                         ; $446b: $3c
    nop                                           ; $446c: $00
    rst $30                                       ; $446d: $f7
    nop                                           ; $446e: $00
    rst $00                                       ; $446f: $c7
    ld b, l                                       ; $4470: $45
    add h                                         ; $4471: $84
    ret nz                                        ; $4472: $c0

    push af                                       ; $4473: $f5
    rst $38                                       ; $4474: $ff
    rst $20                                       ; $4475: $e7
    rrca                                          ; $4476: $0f
    rst $28                                       ; $4477: $ef
    ld [c], a                                     ; $4478: $e2
    rrca                                          ; $4479: $0f
    rst $30                                       ; $447a: $f7
    rrca                                          ; $447b: $0f
    add $e1                                       ; $447c: $c6 $e1
    di                                            ; $447e: $f3
    rlca                                          ; $447f: $07
    push hl                                       ; $4480: $e5
    cp a                                          ; $4481: $bf
    rrca                                          ; $4482: $0f
    db $e3                                        ; $4483: $e3
    rrca                                          ; $4484: $0f
    jr jr_051_444a                                ; $4485: $18 $c3

    ld b, d                                       ; $4487: $42
    ld d, [hl]                                    ; $4488: $56
    ldh [$f7], a                                  ; $4489: $e0 $f7
    ld [$c676], a                                 ; $448b: $ea $76 $c6
    ccf                                           ; $448e: $3f
    ld a, [hl]                                    ; $448f: $7e
    ret nz                                        ; $4490: $c0

    ccf                                           ; $4491: $3f
    add b                                         ; $4492: $80
    and b                                         ; $4493: $a0
    sbc a                                         ; $4494: $9f
    ld a, a                                       ; $4495: $7f
    scf                                           ; $4496: $37
    db $fd                                        ; $4497: $fd
    ld a, a                                       ; $4498: $7f
    or $e0                                        ; $4499: $f6 $e0
    rst $38                                       ; $449b: $ff
    ld [$5500], sp                                ; $449c: $08 $00 $55
    nop                                           ; $449f: $00
    cp [hl]                                       ; $44a0: $be
    ld [hl], h                                    ; $44a1: $74
    ldh a, [$c0]                                  ; $44a2: $f0 $c0
    ld l, b                                       ; $44a4: $68
    push hl                                       ; $44a5: $e5
    ld e, a                                       ; $44a6: $5f
    db $fc                                        ; $44a7: $fc
    ret nz                                        ; $44a8: $c0

    ld a, a                                       ; $44a9: $7f
    nop                                           ; $44aa: $00
    xor a                                         ; $44ab: $af
    db $fc                                        ; $44ac: $fc
    ldh [$9d], a                                  ; $44ad: $e0 $9d
    ccf                                           ; $44af: $3f
    db $f4                                        ; $44b0: $f4
    ld [c], a                                     ; $44b1: $e2
    ld de, $2a80                                  ; $44b2: $11 $80 $2a
    call nc, $f0c0                                ; $44b5: $d4 $c0 $f0
    push hl                                       ; $44b8: $e5
    cp a                                          ; $44b9: $bf
    ldh a, [$fa]                                  ; $44ba: $f0 $fa
    db $e4                                        ; $44bc: $e4
    ld l, d                                       ; $44bd: $6a
    jp hl                                         ; $44be: $e9


    db $f4                                        ; $44bf: $f4
    db $eb                                        ; $44c0: $eb
    nop                                           ; $44c1: $00
    add e                                         ; $44c2: $83
    dec de                                        ; $44c3: $1b
    db $e4                                        ; $44c4: $e4
    dec d                                         ; $44c5: $15
    xor $ff                                       ; $44c6: $ee $ff
    dec l                                         ; $44c8: $2d
    ret nc                                        ; $44c9: $d0

    dec b                                         ; $44ca: $05
    ld a, [$c034]                                 ; $44cb: $fa $34 $c0
    ld d, a                                       ; $44ce: $57
    xor d                                         ; $44cf: $aa
    rst $18                                       ; $44d0: $df
    and h                                         ; $44d1: $a4
    ld a, [bc]                                    ; $44d2: $0a
    ld c, e                                       ; $44d3: $4b
    add b                                         ; $44d4: $80
    ld b, d                                       ; $44d5: $42
    ldh [rNR41], a                                ; $44d6: $e0 $20
    dec e                                         ; $44d8: $1d
    ld [bc], a                                    ; $44d9: $02
    rst $38                                       ; $44da: $ff
    cp h                                          ; $44db: $bc
    inc bc                                        ; $44dc: $03
    sbc b                                         ; $44dd: $98
    ld h, a                                       ; $44de: $67
    rla                                           ; $44df: $17
    xor d                                         ; $44e0: $aa
    db $e4                                        ; $44e1: $e4
    ld a, [bc]                                    ; $44e2: $0a
    rst $38                                       ; $44e3: $ff
    adc e                                         ; $44e4: $8b
    jr nz, @+$24                                  ; $44e5: $20 $22

    nop                                           ; $44e7: $00
    db $dd                                        ; $44e8: $dd
    nop                                           ; $44e9: $00
    cp l                                          ; $44ea: $bd
    ld b, d                                       ; $44eb: $42
    cp $08                                        ; $44ec: $fe $08
    and c                                         ; $44ee: $a1
    ld d, $a9                                     ; $44ef: $16 $a9
    add sp, $03                                   ; $44f1: $e8 $03
    add l                                         ; $44f3: $85
    ld [hl+], a                                   ; $44f4: $22
    ld a, [hl+]                                   ; $44f5: $2a
    rst $38                                       ; $44f6: $ff
    rlca                                          ; $44f7: $07
    db $db                                        ; $44f8: $db
    nop                                           ; $44f9: $00
    cp h                                          ; $44fa: $bc
    ld b, e                                       ; $44fb: $43
    ccf                                           ; $44fc: $3f
    ret nz                                        ; $44fd: $c0

    add hl, de                                    ; $44fe: $19
    ei                                            ; $44ff: $fb

jr_051_4500:
    and $18                                       ; $4500: $e6 $18
    ld h, b                                       ; $4502: $60
    and b                                         ; $4503: $a0
    inc a                                         ; $4504: $3c
    jp $e7b8                                      ; $4505: $c3 $b8 $e7


    ld [$f7ff], sp                                ; $4508: $08 $ff $f7
    call z, $90fb                                 ; $450b: $cc $fb $90
    ld l, a                                       ; $450e: $6f
    ld a, [hl+]                                   ; $450f: $2a
    rst $38                                       ; $4510: $ff
    rra                                           ; $4511: $1f
    rst $38                                       ; $4512: $ff
    ldh [$d0], a                                  ; $4513: $e0 $d0
    ld bc, $a15a                                  ; $4515: $01 $5a $a1
    ld c, b                                       ; $4518: $48
    rlca                                          ; $4519: $07
    ld hl, sp-$09                                 ; $451a: $f8 $f7
    rlca                                          ; $451c: $07
    inc e                                         ; $451d: $1c
    inc bc                                        ; $451e: $03
    ret nz                                        ; $451f: $c0

    pop hl                                        ; $4520: $e1
    or b                                          ; $4521: $b0
    rrca                                          ; $4522: $0f
    call z, $ff3f                                 ; $4523: $cc $3f $ff
    ld a, c                                       ; $4526: $79
    add [hl]                                      ; $4527: $86
    ld [de], a                                    ; $4528: $12
    rst $28                                       ; $4529: $ef
    dec de                                        ; $452a: $1b
    ldh [$3c], a                                  ; $452b: $e0 $3c
    jp $d0fe                                      ; $452d: $c3 $fe $d0


    pop hl                                        ; $4530: $e1
    dec a                                         ; $4531: $3d
    ret nz                                        ; $4532: $c0

    ld c, a                                       ; $4533: $4f
    and b                                         ; $4534: $a0
    jr nc, jr_051_4500                            ; $4535: $30 $c9

    ld d, d                                       ; $4537: $52
    rst $38                                       ; $4538: $ff
    and c                                         ; $4539: $a1
    ld l, l                                       ; $453a: $6d
    jp nz, $c934                                  ; $453b: $c2 $34 $c9

    ld c, b                                       ; $453e: $48
    or e                                          ; $453f: $b3
    ld a, [de]                                    ; $4540: $1a
    rst $38                                       ; $4541: $ff
    push hl                                       ; $4542: $e5
    dec d                                         ; $4543: $15
    cp a                                          ; $4544: $bf
    adc $3f                                       ; $4545: $ce $3f
    ld d, [hl]                                    ; $4547: $56
    cp a                                          ; $4548: $bf
    ld l, l                                       ; $4549: $6d
    rst $38                                       ; $454a: $ff
    cp a                                          ; $454b: $bf
    sbc [hl]                                      ; $454c: $9e
    ld a, a                                       ; $454d: $7f
    ld l, d                                       ; $454e: $6a
    cp a                                          ; $454f: $bf
    dec e                                         ; $4550: $1d
    rst $38                                       ; $4551: $ff
    ld c, [hl]                                    ; $4552: $4e
    rst $38                                       ; $4553: $ff
    cp a                                          ; $4554: $bf
    dec [hl]                                      ; $4555: $35
    ret nz                                        ; $4556: $c0

    ld c, [hl]                                    ; $4557: $4e
    and c                                         ; $4558: $a1
    ld [hl-], a                                   ; $4559: $32
    ret                                           ; $455a: $c9


    ld d, a                                       ; $455b: $57
    rst $38                                       ; $455c: $ff
    and d                                         ; $455d: $a2
    ld a, a                                       ; $455e: $7f
    push bc                                       ; $455f: $c5
    ld [hl-], a                                   ; $4560: $32
    rst $08                                       ; $4561: $cf
    ld d, l                                       ; $4562: $55
    cp a                                          ; $4563: $bf
    dec hl                                        ; $4564: $2b
    sbc $90                                       ; $4565: $de $90
    add d                                         ; $4567: $82
    cp h                                          ; $4568: $bc
    ld b, e                                       ; $4569: $43
    ld e, b                                       ; $456a: $58
    and a                                         ; $456b: $a7
    nop                                           ; $456c: $00
    and b                                         ; $456d: $a0
    db $e3                                        ; $456e: $e3
    call nz, $f3ff                                ; $456f: $c4 $ff $f3
    or h                                          ; $4572: $b4
    db $eb                                        ; $4573: $eb
    sbc d                                         ; $4574: $9a
    ld a, a                                       ; $4575: $7f
    rst $28                                       ; $4576: $ef
    ccf                                           ; $4577: $3f
    ld a, [hl-]                                   ; $4578: $3a
    rst $38                                       ; $4579: $ff
    rst $18                                       ; $457a: $df
    ld c, l                                       ; $457b: $4d
    rst $38                                       ; $457c: $ff
    or h                                          ; $457d: $b4
    rst $38                                       ; $457e: $ff
    ld a, d                                       ; $457f: $7a
    rst $38                                       ; $4580: $ff
    xor b                                         ; $4581: $a8
    ei                                            ; $4582: $fb
    rst $38                                       ; $4583: $ff
    ld [hl], h                                    ; $4584: $74
    cp [hl]                                       ; $4585: $be
    add b                                         ; $4586: $80
    inc hl                                        ; $4587: $23
    rst $18                                       ; $4588: $df
    dec b                                         ; $4589: $05
    rst $38                                       ; $458a: $ff
    ld a, [de]                                    ; $458b: $1a
    cp $70                                        ; $458c: $fe $70
    add [hl]                                      ; $458e: $86
    call nc, $bbff                                ; $458f: $d4 $ff $bb
    cp $74                                        ; $4592: $fe $74
    rst $38                                       ; $4594: $ff
    xor [hl]                                      ; $4595: $ae
    ld a, [$209a]                                 ; $4596: $fa $9a $20
    xor [hl]                                      ; $4599: $ae
    ld a, [hl-]                                   ; $459a: $3a
    add b                                         ; $459b: $80
    inc bc                                        ; $459c: $03
    rst $38                                       ; $459d: $ff
    ld d, d                                       ; $459e: $52
    db $fc                                        ; $459f: $fc
    xor d                                         ; $45a0: $aa
    xor a                                         ; $45a1: $af
    db $fd                                        ; $45a2: $fd
    ld [hl], a                                    ; $45a3: $77
    ei                                            ; $45a4: $fb
    and d                                         ; $45a5: $a2
    or b                                          ; $45a6: $b0
    ld h, b                                       ; $45a7: $60
    dec c                                         ; $45a8: $0d
    xor h                                         ; $45a9: $ac
    ld h, b                                       ; $45aa: $60
    ld a, [bc]                                    ; $45ab: $0a
    rst $38                                       ; $45ac: $ff
    rst $38                                       ; $45ad: $ff
    ld h, a                                       ; $45ae: $67
    adc b                                         ; $45af: $88
    call Call_000_32bb                            ; $45b0: $cd $bb $32
    rst $28                                       ; $45b3: $ef
    db $eb                                        ; $45b4: $eb
    ld a, [$e0de]                                 ; $45b5: $fa $de $e0
    cp $1c                                        ; $45b8: $fe $1c
    add b                                         ; $45ba: $80
    cp d                                          ; $45bb: $ba
    rst $38                                       ; $45bc: $ff
    daa                                           ; $45bd: $27
    ret z                                         ; $45be: $c8

    ld l, l                                       ; $45bf: $6d
    rst $38                                       ; $45c0: $ff
    sbc e                                         ; $45c1: $9b
    ld [hl+], a                                   ; $45c2: $22
    rst $38                                       ; $45c3: $ff

jr_051_45c4:
    ld a, e                                       ; $45c4: $7b
    rst $38                                       ; $45c5: $ff
    or [hl]                                       ; $45c6: $b6
    rst $38                                       ; $45c7: $ff
    ld e, [hl]                                    ; $45c8: $5e
    ei                                            ; $45c9: $fb
    rst $38                                       ; $45ca: $ff
    cp e                                          ; $45cb: $bb
    add h                                         ; $45cc: $84
    ld h, b                                       ; $45cd: $60
    ld c, $bf                                     ; $45ce: $0e $bf
    db $dd                                        ; $45d0: $dd
    ccf                                           ; $45d1: $3f
    ld l, [hl]                                    ; $45d2: $6e
    cp e                                          ; $45d3: $bb
    cp a                                          ; $45d4: $bf
    ld d, a                                       ; $45d5: $57
    ld [hl], b                                    ; $45d6: $70

jr_051_45d7:
    ldh [$6d], a                                  ; $45d7: $e0 $6d
    cp a                                          ; $45d9: $bf
    ld e, $70                                     ; $45da: $1e $70
    ldh [rHDMA2], a                               ; $45dc: $e0 $52
    rst $38                                       ; $45de: $ff
    db $fd                                        ; $45df: $fd
    xor $f9                                       ; $45e0: $ee $f9
    ld c, c                                       ; $45e2: $49
    or $a7                                        ; $45e3: $f6 $a7
    ld hl, sp+$47                                 ; $45e5: $f8 $47
    rst $38                                       ; $45e7: $ff
    ldh a, [$b4]                                  ; $45e8: $f0 $b4
    ret                                           ; $45ea: $c9


    ld c, d                                       ; $45eb: $4a
    or c                                          ; $45ec: $b1
    dec de                                        ; $45ed: $1b
    db $e4                                        ; $45ee: $e4
    rst $38                                       ; $45ef: $ff
    rst $38                                       ; $45f0: $ff
    rra                                           ; $45f1: $1f
    ld c, d                                       ; $45f2: $4a
    cp a                                          ; $45f3: $bf
    ld l, c                                       ; $45f4: $69
    sub a                                         ; $45f5: $97
    ld [de], a                                    ; $45f6: $12
    rst $28                                       ; $45f7: $ef
    add hl, de                                    ; $45f8: $19
    rst $30                                       ; $45f9: $f7
    ld [c], a                                     ; $45fa: $e2
    jr c, jr_051_45c4                             ; $45fb: $38 $c7

    nop                                           ; $45fd: $00
    pop hl                                        ; $45fe: $e1
    dec hl                                        ; $45ff: $2b
    ret nc                                        ; $4600: $d0

    xor d                                         ; $4601: $aa
    ld b, c                                       ; $4602: $41
    cp a                                          ; $4603: $bf
    cp $01                                        ; $4604: $fe $01
    xor b                                         ; $4606: $a8
    rlca                                          ; $4607: $07
    ld a, b                                       ; $4608: $78
    add a                                         ; $4609: $87
    db $10                                        ; $460a: $10
    db $e3                                        ; $460b: $e3

jr_051_460c:
    and c                                         ; $460c: $a1
    rst $38                                       ; $460d: $ff
    ld e, $8c                                     ; $460e: $1e $8c
    ld a, d                                       ; $4610: $7a
    ld d, a                                       ; $4611: $57
    xor b                                         ; $4612: $a8
    jr c, jr_051_45d7                             ; $4613: $38 $c2

    dec c                                         ; $4615: $0d
    rst $30                                       ; $4616: $f7
    ldh a, [$3d]                                  ; $4617: $f0 $3d
    jp nz, Jump_051_61d8                          ; $4619: $c2 $d8 $61

    cpl                                           ; $461c: $2f
    sub b                                         ; $461d: $90
    ld sp, hl                                     ; $461e: $f9
    nop                                           ; $461f: $00
    rst $38                                       ; $4620: $ff
    adc d                                         ; $4621: $8a
    ld hl, $0728                                  ; $4622: $21 $28 $07
    ret c                                         ; $4625: $d8

    rlca                                          ; $4626: $07
    cp h                                          ; $4627: $bc
    ld b, e                                       ; $4628: $43
    db $fc                                        ; $4629: $fc
    ret z                                         ; $462a: $c8

    ld h, c                                       ; $462b: $61
    add hl, sp                                    ; $462c: $39
    and e                                         ; $462d: $a3
    ld [bc], a                                    ; $462e: $02
    db $fd                                        ; $462f: $fd
    ld bc, $0dfe                                  ; $4630: $01 $fe $0d
    ldh a, [rIE]                                  ; $4633: $f0 $ff
    ld [bc], a                                    ; $4635: $02
    db $fd                                        ; $4636: $fd
    ld a, [hl+]                                   ; $4637: $2a
    ret nc                                        ; $4638: $d0

    dec hl                                        ; $4639: $2b
    sub $f5                                       ; $463a: $d6 $f5
    ld a, [bc]                                    ; $463c: $0a
    rst $38                                       ; $463d: $ff
    ld e, a                                       ; $463e: $5f
    add b                                         ; $463f: $80
    xor c                                         ; $4640: $a9
    ld [bc], a                                    ; $4641: $02
    ld a, a                                       ; $4642: $7f
    add b                                         ; $4643: $80
    db $10                                        ; $4644: $10
    rrca                                          ; $4645: $0f
    rst $38                                       ; $4646: $ff
    ldh [$1f], a                                  ; $4647: $e0 $1f
    add b                                         ; $4649: $80
    ld a, a                                       ; $464a: $7f
    ld d, a                                       ; $464b: $57
    xor d                                         ; $464c: $aa
    push af                                       ; $464d: $f5
    ld a, [bc]                                    ; $464e: $0a
    cp a                                          ; $464f: $bf
    sbc a                                         ; $4650: $9f
    jr nz, jr_051_460c                            ; $4651: $20 $b9

    ld [bc], a                                    ; $4653: $02
    ld h, a                                       ; $4654: $67
    sbc b                                         ; $4655: $98
    rrca                                          ; $4656: $0f
    and e                                         ; $4657: $a3
    ld c, d                                       ; $4658: $4a
    rst $38                                       ; $4659: $ff
    or l                                          ; $465a: $b5
    db $f4                                        ; $465b: $f4
    dec bc                                        ; $465c: $0b
    sbc l                                         ; $465d: $9d
    ld [hl+], a                                   ; $465e: $22
    cp d                                          ; $465f: $ba
    rlca                                          ; $4660: $07
    ld a, e                                       ; $4661: $7b
    ld e, a                                       ; $4662: $5f
    add b                                         ; $4663: $80
    inc c                                         ; $4664: $0c
    di                                            ; $4665: $f3
    rlca                                          ; $4666: $07
    ld hl, sp-$41                                 ; $4667: $f8 $bf
    and c                                         ; $4669: $a1
    add b                                         ; $466a: $80
    sbc [hl]                                      ; $466b: $9e
    nop                                           ; $466c: $00
    db $ed                                        ; $466d: $ed
    and b                                         ; $466e: $a0
    sbc d                                         ; $466f: $9a
    nop                                           ; $4670: $00
    ld l, b                                       ; $4671: $68
    rst $38                                       ; $4672: $ff
    sub b                                         ; $4673: $90
    pop bc                                        ; $4674: $c1
    rla                                           ; $4675: $17
    add sp, -$2f                                  ; $4676: $e8 $d1
    rst $20                                       ; $4678: $e7
    nop                                           ; $4679: $00
    ld l, $d1                                     ; $467a: $2e $d1
    add b                                         ; $467c: $80
    pop hl                                        ; $467d: $e1
    ret nz                                        ; $467e: $c0

    db $e3                                        ; $467f: $e3
    or b                                          ; $4680: $b0
    rrca                                          ; $4681: $0f
    add $fc                                       ; $4682: $c6 $fc
    sub b                                         ; $4684: $90
    call nz, $e3d0                                ; $4685: $c4 $d0 $e3
    dec a                                         ; $4688: $3d
    ret nz                                        ; $4689: $c0

    ld e, a                                       ; $468a: $5f
    and b                                         ; $468b: $a0
    inc [hl]                                      ; $468c: $34
    ret                                           ; $468d: $c9


    rst $10                                       ; $468e: $d7
    ld e, d                                       ; $468f: $5a
    and c                                         ; $4690: $a1
    ld a, l                                       ; $4691: $7d
    sub b                                         ; $4692: $90
    ret nz                                        ; $4693: $c0

    ld c, h                                       ; $4694: $4c
    sub b                                         ; $4695: $90
    ret nz                                        ; $4696: $c0

    ld d, l                                       ; $4697: $55
    cp a                                          ; $4698: $bf
    ei                                            ; $4699: $fb
    adc [hl]                                      ; $469a: $8e
    ld a, a                                       ; $469b: $7f
    sub b                                         ; $469c: $90
    jp z, Jump_051_5ac8                           ; $469d: $ca $c8 $5a

    and c                                         ; $46a0: $a1
    inc a                                         ; $46a1: $3c
    jp Jump_051_537f                              ; $46a2: $c3 $7f $53


    xor [hl]                                      ; $46a5: $ae
    ld [hl], a                                    ; $46a6: $77
    call $bf42                                    ; $46a7: $cd $42 $bf
    dec d                                         ; $46aa: $15
    ld l, d                                       ; $46ab: $6a
    ld h, b                                       ; $46ac: $60
    cp $6b                                        ; $46ad: $fe $6b
    add c                                         ; $46af: $81
    ret nz                                        ; $46b0: $c0

    ccf                                           ; $46b1: $3f
    ld b, b                                       ; $46b2: $40
    cp a                                          ; $46b3: $bf
    ld b, b                                       ; $46b4: $40
    rst $38                                       ; $46b5: $ff
    or b                                          ; $46b6: $b0
    rst $18                                       ; $46b7: $df
    rst $28                                       ; $46b8: $ef
    call z, $a4f3                                 ; $46b9: $cc $f3 $a4
    ei                                            ; $46bc: $fb
    sub b                                         ; $46bd: $90
    rst $08                                       ; $46be: $cf
    inc bc                                        ; $46bf: $03
    rst $38                                       ; $46c0: $ff
    and a                                         ; $46c1: $a7
    dec b                                         ; $46c2: $05
    rst $38                                       ; $46c3: $ff
    ld [bc], a                                    ; $46c4: $02
    add hl, de                                    ; $46c5: $19
    and [hl]                                      ; $46c6: $a6
    sub b                                         ; $46c7: $90
    call $9053                                    ; $46c8: $cd $53 $90
    ret nz                                        ; $46cb: $c0

    ld [hl], l                                    ; $46cc: $75
    xor [hl]                                      ; $46cd: $ae
    sub b                                         ; $46ce: $90
    ret z                                         ; $46cf: $c8

    ld [hl], a                                    ; $46d0: $77
    adc b                                         ; $46d1: $88
    call z, $ca90                                 ; $46d2: $cc $90 $ca
    scf                                           ; $46d5: $37
    sub b                                         ; $46d6: $90
    call z, Call_051_6e4e                         ; $46d7: $cc $4e $6e
    sub b                                         ; $46da: $90
    adc $ae                                       ; $46db: $ce $ae
    ld sp, hl                                     ; $46dd: $f9
    ld a, c                                       ; $46de: $79
    sub b                                         ; $46df: $90
    ret z                                         ; $46e0: $c8

    cp a                                          ; $46e1: $bf
    ld e, a                                       ; $46e2: $5f
    sub b                                         ; $46e3: $90
    jp Jump_000_1def                              ; $46e4: $c3 $ef $1d


    ld [c], a                                     ; $46e7: $e2
    ld [$00f7], sp                                ; $46e8: $08 $f7 $00
    pop hl                                        ; $46eb: $e1
    dec l                                         ; $46ec: $2d
    ret nc                                        ; $46ed: $d0

    sbc d                                         ; $46ee: $9a
    rst $28                                       ; $46ef: $ef
    ld h, c                                       ; $46f0: $61
    ld a, [hl]                                    ; $46f1: $7e
    add c                                         ; $46f2: $81
    add sp, $10                                   ; $46f3: $e8 $10
    and $61                                       ; $46f5: $e6 $61
    ld e, $95                                     ; $46f7: $1e $95
    sbc $90                                       ; $46f9: $de $90
    ret nz                                        ; $46fb: $c0

    add hl, sp                                    ; $46fc: $39
    jp nz, $f00f                                  ; $46fd: $c2 $0f $f0

    rst $18                                       ; $4700: $df
    ld h, e                                       ; $4701: $63
    ld d, a                                       ; $4702: $57
    xor b                                         ; $4703: $a8
    rst $38                                       ; $4704: $ff
    ei                                            ; $4705: $fb
    nop                                           ; $4706: $00
    sbc [hl]                                      ; $4707: $9e
    ld hl, $07a8                                  ; $4708: $21 $a8 $07
    ld [hl], b                                    ; $470b: $70
    adc a                                         ; $470c: $8f
    xor $cf                                       ; $470d: $ee $cf
    ld h, e                                       ; $470f: $63
    ld bc, $60ff                                  ; $4710: $01 $ff $60
    call nc, Call_000_00a0                        ; $4713: $d4 $a0 $00
    rst $38                                       ; $4716: $ff
    ld [hl+], a                                   ; $4717: $22
    cp e                                          ; $4718: $bb
    rst $38                                       ; $4719: $ff
    ld [$408e], sp                                ; $471a: $08 $8e $40
    ld b, b                                       ; $471d: $40
    rst $38                                       ; $471e: $ff
    sub b                                         ; $471f: $90
    ld b, h                                       ; $4720: $44
    ldh [$28], a                                  ; $4721: $e0 $28
    adc d                                         ; $4723: $8a
    cp h                                          ; $4724: $bc
    ret nz                                        ; $4725: $c0

    jr z, @-$40                                   ; $4726: $28 $be

    ret nz                                        ; $4728: $c0

    ld b, b                                       ; $4729: $40
    ld a, a                                       ; $472a: $7f
    ld h, c                                       ; $472b: $61
    rst $38                                       ; $472c: $ff
    rst $38                                       ; $472d: $ff
    db $eb                                        ; $472e: $eb
    ld [$fb55], a                                 ; $472f: $ea $55 $fb
    nop                                           ; $4732: $00
    cp d                                          ; $4733: $ba
    ld a, [hl]                                    ; $4734: $7e
    add b                                         ; $4735: $80
    xor e                                         ; $4736: $ab
    nop                                           ; $4737: $00
    ld e, l                                       ; $4738: $5d
    nop                                           ; $4739: $00
    ld [$76fa], a                                 ; $473a: $ea $fa $76
    add b                                         ; $473d: $80
    xor [hl]                                      ; $473e: $ae
    ld [hl], d                                    ; $473f: $72
    add b                                         ; $4740: $80
    adc d                                         ; $4741: $8a
    nop                                           ; $4742: $00
    ld d, h                                       ; $4743: $54
    nop                                           ; $4744: $00
    xor d                                         ; $4745: $aa
    cp $f0                                        ; $4746: $fe $f0
    ldh [$aa], a                                  ; $4748: $e0 $aa
    nop                                           ; $474a: $00
    dec d                                         ; $474b: $15
    nop                                           ; $474c: $00
    xor b                                         ; $474d: $a8
    nop                                           ; $474e: $00
    ld d, c                                       ; $474f: $51
    rst $38                                       ; $4750: $ff
    nop                                           ; $4751: $00
    ld [$2200], sp                                ; $4752: $08 $00 $22
    nop                                           ; $4755: $00
    sub h                                         ; $4756: $94
    nop                                           ; $4757: $00
    add hl, hl                                    ; $4758: $29
    xor a                                         ; $4759: $af
    nop                                           ; $475a: $00
    ld b, h                                       ; $475b: $44
    nop                                           ; $475c: $00
    db $10                                        ; $475d: $10

jr_051_475e:
    db $e4                                        ; $475e: $e4
    ldh [rP1], a                                  ; $475f: $e0 $00
    ld d, e                                       ; $4761: $53
    nop                                           ; $4762: $00
    ld bc, $74ce                                  ; $4763: $01 $ce $74
    nop                                           ; $4766: $00
    jr nz, jr_051_4769                            ; $4767: $20 $00

jr_051_4769:
    add b                                         ; $4769: $80
    ld l, [hl]                                    ; $476a: $6e
    nop                                           ; $476b: $00
    and b                                         ; $476c: $a0
    ldh a, [rNR23]                                ; $476d: $f0 $18
    inc a                                         ; $476f: $3c
    rst $38                                       ; $4770: $ff
    ld a, [hl]                                    ; $4771: $7e
    ld a, [hl]                                    ; $4772: $7e
    rst $38                                       ; $4773: $ff
    ld [hl], b                                    ; $4774: $70
    rst $38                                       ; $4775: $ff
    ld a, b                                       ; $4776: $78
    db $fc                                        ; $4777: $fc
    inc a                                         ; $4778: $3c
    rst $38                                       ; $4779: $ff
    cp $80                                        ; $477a: $fe $80
    ld a, h                                       ; $477c: $7c
    ld h, h                                       ; $477d: $64
    nop                                           ; $477e: $00
    nop                                           ; $477f: $00
    ld [$ff1c], sp                                ; $4780: $08 $1c $ff
    ld a, $36                                     ; $4783: $3e $36
    ld a, a                                       ; $4785: $7f
    and [hl]                                      ; $4786: $a6
    ld a, a                                       ; $4787: $7f
    add h                                         ; $4788: $84
    ld l, a                                       ; $4789: $6f
    ld b, b                                       ; $478a: $40
    db $eb                                        ; $478b: $eb
    ld c, $08                                     ; $478c: $0e $08
    jr nc, jr_051_4790                            ; $478e: $30 $00

jr_051_4790:
    inc bc                                        ; $4790: $03
    sub h                                         ; $4791: $94
    ret nz                                        ; $4792: $c0

    rrca                                          ; $4793: $0f
    rst $38                                       ; $4794: $ff
    ld a, [de]                                    ; $4795: $1a
    rst $38                                       ; $4796: $ff
    rst $38                                       ; $4797: $ff
    ld [hl], $fd                                  ; $4798: $36 $fd
    ld hl, $f8fe                                  ; $479a: $21 $fe $f8
    rst $30                                       ; $479d: $f7
    xor l                                         ; $479e: $ad
    ei                                            ; $479f: $fb
    di                                            ; $47a0: $f3
    rst $28                                       ; $47a1: $ef
    ld h, d                                       ; $47a2: $62
    jr nz, jr_051_47f7                            ; $47a3: $20 $52

jr_051_47a5:
    db $fd                                        ; $47a5: $fd
    ld d, l                                       ; $47a6: $55
    xor d                                         ; $47a7: $aa
    jr nz, jr_051_47a5                            ; $47a8: $20 $fb

    rst $18                                       ; $47aa: $df
    ld a, [bc]                                    ; $47ab: $0a
    ld e, d                                       ; $47ac: $5a
    jr nz, jr_051_475e                            ; $47ad: $20 $af

    rst $38                                       ; $47af: $ff
    add e                                         ; $47b0: $83
    rst $38                                       ; $47b1: $ff
    ld c, l                                       ; $47b2: $4d
    rst $38                                       ; $47b3: $ff
    rst $30                                       ; $47b4: $f7
    sub e                                         ; $47b5: $93
    rst $28                                       ; $47b6: $ef
    ld c, [hl]                                    ; $47b7: $4e
    rst $30                                       ; $47b8: $f7
    and e                                         ; $47b9: $a3
    rst $38                                       ; $47ba: $ff
    ret                                           ; $47bb: $c9


    cp a                                          ; $47bc: $bf
    rst $30                                       ; $47bd: $f7
    and a                                         ; $47be: $a7
    ei                                            ; $47bf: $fb
    ret                                           ; $47c0: $c9


    rst $30                                       ; $47c1: $f7
    or $4c                                        ; $47c2: $f6 $4c
    ld h, b                                       ; $47c4: $60
    ld [$ffff], a                                 ; $47c5: $ea $ff $ff
    or b                                          ; $47c8: $b0
    rst $38                                       ; $47c9: $ff
    db $eb                                        ; $47ca: $eb
    db $fc                                        ; $47cb: $fc
    ld b, c                                       ; $47cc: $41
    cp $a8                                        ; $47cd: $fe $a8
    rst $30                                       ; $47cf: $f7
    rst $30                                       ; $47d0: $f7
    ld b, $fb                                     ; $47d1: $06 $fb
    ld e, a                                       ; $47d3: $5f
    ld c, l                                       ; $47d4: $4d
    db $dd                                        ; $47d5: $dd
    sbc e                                         ; $47d6: $9b
    sbc l                                         ; $47d7: $9d
    ld c, a                                       ; $47d8: $4f
    rst $38                                       ; $47d9: $ff
    daa                                           ; $47da: $27
    rla                                           ; $47db: $17
    and e                                         ; $47dc: $a3
    di                                            ; $47dd: $f3
    db $db                                        ; $47de: $db
    pop hl                                        ; $47df: $e1
    xor $f1                                       ; $47e0: $ee $f1
    rst $38                                       ; $47e2: $ff
    or h                                          ; $47e3: $b4
    ei                                            ; $47e4: $fb
    reti                                          ; $47e5: $d9


    rst $38                                       ; $47e6: $ff
    jp c, $9d9f                                   ; $47e7: $da $9f $9d

    ld c, a                                       ; $47ea: $4f
    push af                                       ; $47eb: $f5
    ld h, $f0                                     ; $47ec: $26 $f0
    ld [c], a                                     ; $47ee: $e2
    ld l, [hl]                                    ; $47ef: $6e
    ldh a, [$e0]                                  ; $47f0: $f0 $e0
    ld sp, hl                                     ; $47f2: $f9
    rst $38                                       ; $47f3: $ff
    rst $20                                       ; $47f4: $e7
    jr @+$01                                      ; $47f5: $18 $ff

jr_051_47f7:
    jp $e724                                      ; $47f7: $c3 $24 $e7


    inc h                                         ; $47fa: $24
    rst $38                                       ; $47fb: $ff
    inc a                                         ; $47fc: $3c
    db $db                                        ; $47fd: $db
    inc a                                         ; $47fe: $3c
    ei                                            ; $47ff: $fb
    rst $20                                       ; $4800: $e7
    jr jr_051_4863                                ; $4801: $18 $60

    ld b, c                                       ; $4803: $41
    ld h, a                                       ; $4804: $67
    sbc d                                         ; $4805: $9a
    call nz, $0b8a                                ; $4806: $c4 $8a $0b
    rst $38                                       ; $4809: $ff
    ret nz                                        ; $480a: $c0

    ld b, d                                       ; $480b: $42
    and b                                         ; $480c: $a0
    db $10                                        ; $480d: $10
    ret nz                                        ; $480e: $c0

    jp hl                                         ; $480f: $e9


    add b                                         ; $4810: $80
    ld h, b                                       ; $4811: $60
    rst $38                                       ; $4812: $ff
    sub c                                         ; $4813: $91
    adc e                                         ; $4814: $8b
    ld h, b                                       ; $4815: $60
    ld d, $a9                                     ; $4816: $16 $a9
    pop hl                                        ; $4818: $e1

jr_051_4819:
    dec bc                                        ; $4819: $0b
    adc d                                         ; $481a: $8a
    rst $38                                       ; $481b: $ff
    daa                                           ; $481c: $27
    daa                                           ; $481d: $27
    rrca                                          ; $481e: $0f
    xor l                                         ; $481f: $ad
    rra                                           ; $4820: $1f
    sub $3f                                       ; $4821: $d6 $3f
    ld a, l                                       ; $4823: $7d
    db $fc                                        ; $4824: $fc
    ld b, [hl]                                    ; $4825: $46
    add b                                         ; $4826: $80
    ldh a, [rTAC]                                 ; $4827: $f0 $07
    inc h                                         ; $4829: $24
    db $db                                        ; $482a: $db
    inc c                                         ; $482b: $0c
    rst $30                                       ; $482c: $f7
    ld [hl], $cf                                  ; $482d: $36 $cf

jr_051_482f:
    rst $38                                       ; $482f: $ff
    jr jr_051_4819                                ; $4830: $18 $e7

    sub $0f                                       ; $4832: $d6 $0f
    ld e, c                                       ; $4834: $59
    and [hl]                                      ; $4835: $a6
    ld b, d                                       ; $4836: $42
    rrca                                          ; $4837: $0f
    rst $38                                       ; $4838: $ff
    ei                                            ; $4839: $fb
    nop                                           ; $483a: $00
    inc e                                         ; $483b: $1c
    inc bc                                        ; $483c: $03
    cp a                                          ; $483d: $bf

jr_051_483e:
    nop                                           ; $483e: $00
    sbc c                                         ; $483f: $99
    ld h, [hl]                                    ; $4840: $66
    ld a, $08                                     ; $4841: $3e $08
    ld hl, $c23d                                  ; $4843: $21 $3d $c2
    jr jr_051_482f                                ; $4846: $18 $e7

    add hl, de                                    ; $4848: $19
    nop                                           ; $4849: $00
    inc h                                         ; $484a: $24

jr_051_484b:
    ldh [$61], a                                  ; $484b: $e0 $61
    sbc a                                         ; $484d: $9f
    ld d, [hl]                                    ; $484e: $56
    xor c                                         ; $484f: $a9
    ld [hl+], a                                   ; $4850: $22
    rst $38                                       ; $4851: $ff
    ld [hl], l                                    ; $4852: $75
    ld h, b                                       ; $4853: $60
    add h                                         ; $4854: $84
    ld d, b                                       ; $4855: $50
    and e                                         ; $4856: $a3
    ld de, $efff                                  ; $4857: $11 $ff $ef
    rra                                           ; $485a: $1f
    ldh [$3d], a                                  ; $485b: $e0 $3d
    rst $00                                       ; $485d: $c7
    inc sp                                        ; $485e: $33
    rst $08                                       ; $485f: $cf

jr_051_4860:
    dec l                                         ; $4860: $2d
    db $fd                                        ; $4861: $fd
    rst $10                                       ; $4862: $d7

jr_051_4863:
    or b                                          ; $4863: $b0
    ld h, l                                       ; $4864: $65
    jr z, jr_051_483e                             ; $4865: $28 $d7

    ld b, h                                       ; $4867: $44
    ei                                            ; $4868: $fb
    or h                                          ; $4869: $b4
    rst $38                                       ; $486a: $ff
    rst $38                                       ; $486b: $ff
    ret nc                                        ; $486c: $d0

    rst $38                                       ; $486d: $ff
    rst $30                                       ; $486e: $f7
    jr jr_051_4860                                ; $486f: $18 $ef

    jr z, @-$01                                   ; $4871: $28 $fd

    ld l, $ff                                     ; $4873: $2e $ff
    db $eb                                        ; $4875: $eb
    ld a, [hl+]                                   ; $4876: $2a
    rst $38                                       ; $4877: $ff
    ld l, d                                       ; $4878: $6a
    xor e                                         ; $4879: $ab
    or [hl]                                       ; $487a: $b6
    cp $af                                        ; $487b: $fe $af
    rst $38                                       ; $487d: $ff
    cp a                                          ; $487e: $bf
    xor l                                         ; $487f: $ad
    db $ed                                        ; $4880: $ed
    sbc a                                         ; $4881: $9f
    ld e, a                                       ; $4882: $5f
    db $ed                                        ; $4883: $ed
    push hl                                       ; $4884: $e5

jr_051_4885:
    dec sp                                        ; $4885: $3b
    rst $38                                       ; $4886: $ff
    rst $30                                       ; $4887: $f7
    ld l, $ef                                     ; $4888: $2e $ef
    jr c, jr_051_484b                             ; $488a: $38 $bf

    ld l, [hl]                                    ; $488c: $6e
    rst $30                                       ; $488d: $f7
    ld c, a                                       ; $488e: $4f
    rst $38                                       ; $488f: $ff
    adc $3f                                       ; $4890: $ce $3f
    db $10                                        ; $4892: $10
    rst $38                                       ; $4893: $ff
    jr z, jr_051_4885                             ; $4894: $28 $ef

    inc a                                         ; $4896: $3c
    rst $28                                       ; $4897: $ef
    cp a                                          ; $4898: $bf
    ld a, [hl+]                                   ; $4899: $2a
    db $eb                                        ; $489a: $eb
    ld a, [hl]                                    ; $489b: $7e
    db $eb                                        ; $489c: $eb
    xor d                                         ; $489d: $aa
    or a                                          ; $489e: $b7
    ldh [$e5], a                                  ; $489f: $e0 $e5
    dec h                                         ; $48a1: $25
    rst $38                                       ; $48a2: $ff
    ei                                            ; $48a3: $fb
    ld [hl], $ef                                  ; $48a4: $36 $ef
    jr z, @+$01                                   ; $48a6: $28 $ff

    ld a, $ef                                     ; $48a8: $3e $ef
    ld [hl], a                                    ; $48aa: $77
    ei                                            ; $48ab: $fb
    rst $08                                       ; $48ac: $cf
    ld l, $20                                     ; $48ad: $2e $20
    sbc $20                                       ; $48af: $de $20
    rst $08                                       ; $48b1: $cf
    or [hl]                                       ; $48b2: $b6
    dec hl                                        ; $48b3: $2b
    db $ed                                        ; $48b4: $ed
    cp a                                          ; $48b5: $bf
    cp d                                          ; $48b6: $ba
    dec sp                                        ; $48b7: $3b
    rst $18                                       ; $48b8: $df
    halt                                          ; $48b9: $76
    rst $18                                       ; $48ba: $df
    ld d, h                                       ; $48bb: $54
    ret z                                         ; $48bc: $c8

    nop                                           ; $48bd: $00
    ld a, [hl+]                                   ; $48be: $2a
    ld d, h                                       ; $48bf: $54
    ldh a, [$bf]                                  ; $48c0: $f0 $bf

Call_051_48c2:
    db $ed                                        ; $48c2: $ed
    db $ec                                        ; $48c3: $ec
    xor e                                         ; $48c4: $ab
    db $f4                                        ; $48c5: $f4
    add b                                         ; $48c6: $80
    xor a                                         ; $48c7: $af
    ld h, b                                       ; $48c8: $60
    ret nz                                        ; $48c9: $c0

    or [hl]                                       ; $48ca: $b6
    ld h, b                                       ; $48cb: $60
    call nz, $b0ff                                ; $48cc: $c4 $ff $b0
    rrca                                          ; $48cf: $0f
    sbc $7f                                       ; $48d0: $de $7f
    add hl, hl                                    ; $48d2: $29
    cp $55                                        ; $48d3: $fe $55
    rst $38                                       ; $48d5: $ff
    db $fd                                        ; $48d6: $fd
    cp [hl]                                       ; $48d7: $be
    ld e, $e0                                     ; $48d8: $1e $e0
    xor d                                         ; $48da: $aa
    rst $38                                       ; $48db: $ff
    ret nz                                        ; $48dc: $c0

    rst $38                                       ; $48dd: $ff
    sbc b                                         ; $48de: $98
    ld h, a                                       ; $48df: $67
    jp nc, $e130                                  ; $48e0: $d2 $30 $e1

    ld e, b                                       ; $48e3: $58
    ld h, b                                       ; $48e4: $60
    ld h, [hl]                                    ; $48e5: $66
    sub b                                         ; $48e6: $90
    ld c, e                                       ; $48e7: $4b
    dec hl                                        ; $48e8: $2b
    ret nc                                        ; $48e9: $d0

    ld c, b                                       ; $48ea: $48
    inc a                                         ; $48eb: $3c
    inc bc                                        ; $48ec: $03
    cp a                                          ; $48ed: $bf
    add h                                         ; $48ee: $84
    ld [hl], e                                    ; $48ef: $73
    or h                                          ; $48f0: $b4
    db $eb                                        ; $48f1: $eb
    inc hl                                        ; $48f2: $23
    call z, $e170                                 ; $48f3: $cc $70 $e1
    ld a, [hl-]                                   ; $48f6: $3a
    rst $38                                       ; $48f7: $ff
    rst $18                                       ; $48f8: $df
    rst $30                                       ; $48f9: $f7
    ld e, [hl]                                    ; $48fa: $5e
    push de                                       ; $48fb: $d5
    ld a, [hl]                                    ; $48fc: $7e
    db $dd                                        ; $48fd: $dd
    ld a, a                                       ; $48fe: $7f
    ei                                            ; $48ff: $fb
    db $fd                                        ; $4900: $fd
    ld l, $28                                     ; $4901: $2e $28
    ld h, e                                       ; $4903: $63
    add hl, de                                    ; $4904: $19
    rst $20                                       ; $4905: $e7
    rla                                           ; $4906: $17
    xor $3f                                       ; $4907: $ee $3f
    ret z                                         ; $4909: $c8

    ld e, a                                       ; $490a: $5f
    cpl                                           ; $490b: $2f
    ret c                                         ; $490c: $d8

    rra                                           ; $490d: $1f
    ldh a, [$fd]                                  ; $490e: $f0 $fd
    ld a, [hl+]                                   ; $4910: $2a
    nop                                           ; $4911: $00
    jp c, $20c8                                   ; $4912: $da $c8 $20

    rst $38                                       ; $4915: $ff
    xor a                                         ; $4916: $af
    cp $df                                        ; $4917: $fe $df
    ld hl, sp+$6f                                 ; $4919: $f8 $6f
    ld hl, sp-$21                                 ; $491b: $f8 $df
    ldh a, [$fa]                                  ; $491d: $f0 $fa
    ld b, e                                       ; $491f: $43
    ld b, b                                       ; $4920: $40
    inc a                                         ; $4921: $3c
    and [hl]                                      ; $4922: $a6
    ld b, c                                       ; $4923: $41
    ccf                                           ; $4924: $3f
    jp $c73e                                      ; $4925: $c3 $3e $c7


    db $dd                                        ; $4928: $dd
    rst $30                                       ; $4929: $f7
    cpl                                           ; $492a: $2f
    jp c, $f02f                                   ; $492b: $da $2f $f0

    push hl                                       ; $492e: $e5
    dec a                                         ; $492f: $3d
    jp $c73c                                      ; $4930: $c3 $3c $c7


    rst $08                                       ; $4933: $cf
    ret nc                                        ; $4934: $d0

    cpl                                           ; $4935: $2f
    ret c                                         ; $4936: $d8

    cpl                                           ; $4937: $2f
    ld a, $ff                                     ; $4938: $3e $ff
    db $ec                                        ; $493a: $ec
    db $eb                                        ; $493b: $eb
    sub b                                         ; $493c: $90
    rst $38                                       ; $493d: $ff
    ld e, l                                       ; $493e: $5d
    ld a, [hl+]                                   ; $493f: $2a
    or b                                          ; $4940: $b0
    ret nz                                        ; $4941: $c0

    xor d                                         ; $4942: $aa
    db $eb                                        ; $4943: $eb
    ld a, a                                       ; $4944: $7f
    or b                                          ; $4945: $b0
    ret z                                         ; $4946: $c8

    and l                                         ; $4947: $a5

jr_051_4948:
    or b                                          ; $4948: $b0
    ret nz                                        ; $4949: $c0

    add c                                         ; $494a: $81
    xor c                                         ; $494b: $a9
    or b                                          ; $494c: $b0
    rst $18                                       ; $494d: $df
    rst $38                                       ; $494e: $ff
    rst $38                                       ; $494f: $ff
    rst $38                                       ; $4950: $ff
    rst $38                                       ; $4951: $ff
    rst $38                                       ; $4952: $ff
    rst $38                                       ; $4953: $ff
    rst $38                                       ; $4954: $ff
    rst $38                                       ; $4955: $ff
    db $eb                                        ; $4956: $eb
    ld [$abff], a                                 ; $4957: $ea $ff $ab
    nop                                           ; $495a: $00
    rst $18                                       ; $495b: $df
    ld e, [hl]                                    ; $495c: $5e
    nop                                           ; $495d: $00
    ei                                            ; $495e: $fb
    ld a, [$7fe0]                                 ; $495f: $fa $e0 $7f
    ld a, [$ffe0]                                 ; $4962: $fa $e0 $ff
    ld a, [$804e]                                 ; $4965: $fa $4e $80
    rst $30                                       ; $4968: $f7
    inc [hl]                                      ; $4969: $34
    jr nz, jr_051_49d7                            ; $496a: $20 $6b

    nop                                           ; $496c: $00
    sub $00                                       ; $496d: $d6 $00
    cp e                                          ; $496f: $bb
    rst $28                                       ; $4970: $ef
    nop                                           ; $4971: $00
    rst $28                                       ; $4972: $ef
    nop                                           ; $4973: $00
    ld [hl], l                                    ; $4974: $75
    ld e, b                                       ; $4975: $58
    ld [bc], a                                    ; $4976: $02
    db $db                                        ; $4977: $db
    inc h                                         ; $4978: $24
    cp $ff                                        ; $4979: $fe $ff
    ld bc, $0af5                                  ; $497b: $01 $f5 $0a
    jp c, $f425                                   ; $497e: $da $25 $f4

    dec bc                                        ; $4981: $0b
    add sp, -$01                                  ; $4982: $e8 $ff
    rla                                           ; $4984: $17
    add sp, $17                                   ; $4985: $e8 $17
    or c                                          ; $4987: $b1
    ld c, [hl]                                    ; $4988: $4e
    jp hl                                         ; $4989: $e9


    ld d, $d2                                     ; $498a: $16 $d2
    rst $38                                       ; $498c: $ff

jr_051_498d:
    inc l                                         ; $498d: $2c
    ld h, e                                       ; $498e: $63
    sbc h                                         ; $498f: $9c
    ret nc                                        ; $4990: $d0

    ld l, $e9                                     ; $4991: $2e $e9
    ld d, $b4                                     ; $4993: $16 $b4
    rst $38                                       ; $4995: $ff
    ld c, e                                       ; $4996: $4b
    rst $28                                       ; $4997: $ef
    db $10                                        ; $4998: $10
    ld a, l                                       ; $4999: $7d
    add d                                         ; $499a: $82
    rst $10                                       ; $499b: $d7
    jr z, jr_051_4948                             ; $499c: $28 $aa

    rst $38                                       ; $499e: $ff
    ld d, l                                       ; $499f: $55
    ld b, l                                       ; $49a0: $45
    cp d                                          ; $49a1: $ba
    add b                                         ; $49a2: $80
    ld a, a                                       ; $49a3: $7f
    jr jr_051_498d                                ; $49a4: $18 $e7

    ld l, [hl]                                    ; $49a6: $6e
    rst $38                                       ; $49a7: $ff
    add c                                         ; $49a8: $81
    ld a, [hl]                                    ; $49a9: $7e
    cp l                                          ; $49aa: $bd
    jr @-$17                                      ; $49ab: $18 $e7

    add b                                         ; $49ad: $80
    ld a, a                                       ; $49ae: $7f
    ld b, l                                       ; $49af: $45
    rst $38                                       ; $49b0: $ff
    cp d                                          ; $49b1: $ba
    xor d                                         ; $49b2: $aa
    ld d, l                                       ; $49b3: $55
    rst $10                                       ; $49b4: $d7
    jr z, jr_051_4a34                             ; $49b5: $28 $7d

    add d                                         ; $49b7: $82
    rst $28                                       ; $49b8: $ef
    rst $38                                       ; $49b9: $ff
    db $10                                        ; $49ba: $10
    ld e, a                                       ; $49bb: $5f

jr_051_49bc:
    add b                                         ; $49bc: $80
    rla                                           ; $49bd: $17
    ldh [$83], a                                  ; $49be: $e0 $83
    ld a, b                                       ; $49c0: $78
    ld d, c                                       ; $49c1: $51
    rst $38                                       ; $49c2: $ff
    xor h                                         ; $49c3: $ac
    xor e                                         ; $49c4: $ab
    ld d, h                                       ; $49c5: $54
    ldh a, [$0e]                                  ; $49c6: $f0 $0e
    xor c                                         ; $49c8: $a9
    ld d, [hl]                                    ; $49c9: $56
    db $f4                                        ; $49ca: $f4
    rst $38                                       ; $49cb: $ff
    dec bc                                        ; $49cc: $0b
    db $f4                                        ; $49cd: $f4
    dec bc                                        ; $49ce: $0b
    xor c                                         ; $49cf: $a9
    ld d, [hl]                                    ; $49d0: $56
    pop af                                        ; $49d1: $f1
    ld c, $aa                                     ; $49d2: $0e $aa
    rst $38                                       ; $49d4: $ff
    ld d, h                                       ; $49d5: $54
    ld d, d                                       ; $49d6: $52

jr_051_49d7:
    xor h                                         ; $49d7: $ac
    add h                                         ; $49d8: $84
    ld a, b                                       ; $49d9: $78
    jr jr_051_49bc                                ; $49da: $18 $e0

    ld l, b                                       ; $49dc: $68
    rst $38                                       ; $49dd: $ff
    add b                                         ; $49de: $80
    ld a, a                                       ; $49df: $7f
    cp a                                          ; $49e0: $bf
    rra                                           ; $49e1: $1f
    rst $28                                       ; $49e2: $ef
    add a                                         ; $49e3: $87
    ld a, a                                       ; $49e4: $7f
    ld d, e                                       ; $49e5: $53
    rst $18                                       ; $49e6: $df
    xor a                                         ; $49e7: $af
    xor e                                         ; $49e8: $ab
    ld d, l                                       ; $49e9: $55
    pop af                                        ; $49ea: $f1
    rrca                                          ; $49eb: $0f
    ldh [$e1], a                                  ; $49ec: $e0 $e1
    ld d, a                                       ; $49ee: $57
    nop                                           ; $49ef: $00
    rst $30                                       ; $49f0: $f7
    adc [hl]                                      ; $49f1: $8e
    nop                                           ; $49f2: $00
    rla                                           ; $49f3: $17
    call z, Call_000_0760                         ; $49f4: $cc $60 $07
    nop                                           ; $49f7: $00
    ld c, d                                       ; $49f8: $4a
    ld b, b                                       ; $49f9: $40
    rst $38                                       ; $49fa: $ff
    dec b                                         ; $49fb: $05
    nop                                           ; $49fc: $00
    ld [bc], a                                    ; $49fd: $02
    nop                                           ; $49fe: $00
    sub b                                         ; $49ff: $90
    nop                                           ; $4a00: $00
    adc b                                         ; $4a01: $88
    nop                                           ; $4a02: $00
    rst $30                                       ; $4a03: $f7
    ld de, $8001                                  ; $4a04: $11 $01 $80
    db $fc                                        ; $4a07: $fc
    ldh [$c0], a                                  ; $4a08: $e0 $c0
    ld b, b                                       ; $4a0a: $40
    ld de, $ff01                                  ; $4a0b: $11 $01 $ff
    ld [bc], a                                    ; $4a0e: $02
    ld [bc], a                                    ; $4a0f: $02
    ld b, l                                       ; $4a10: $45
    ld b, b                                       ; $4a11: $40
    ld [bc], a                                    ; $4a12: $02
    nop                                           ; $4a13: $00
    ld b, b                                       ; $4a14: $40
    ld b, b                                       ; $4a15: $40
    rst $38                                       ; $4a16: $ff
    and d                                         ; $4a17: $a2
    and b                                         ; $4a18: $a0
    ld b, b                                       ; $4a19: $40
    ld b, b                                       ; $4a1a: $40
    and b                                         ; $4a1b: $a0
    and b                                         ; $4a1c: $a0
    ld d, l                                       ; $4a1d: $55
    ld d, l                                       ; $4a1e: $55
    rst $28                                       ; $4a1f: $ef
    ld [$41ea], a                                 ; $4a20: $ea $ea $41
    ld b, c                                       ; $4a23: $41
    db $ec                                        ; $4a24: $ec
    ldh [rLYC], a                                 ; $4a25: $e0 $45
    inc hl                                        ; $4a27: $23
    inc hl                                        ; $4a28: $23
    rst $38                                       ; $4a29: $ff
    ld b, l                                       ; $4a2a: $45
    ld b, l                                       ; $4a2b: $45
    xor e                                         ; $4a2c: $ab
    xor e                                         ; $4a2d: $ab
    ld d, a                                       ; $4a2e: $57
    ld d, a                                       ; $4a2f: $57
    rst $38                                       ; $4a30: $ff
    rst $38                                       ; $4a31: $ff
    rst $38                                       ; $4a32: $ff
    sub b                                         ; $4a33: $90

jr_051_4a34:
    nop                                           ; $4a34: $00
    adc c                                         ; $4a35: $89
    nop                                           ; $4a36: $00
    ld de, $8300                                  ; $4a37: $11 $00 $83
    nop                                           ; $4a3a: $00
    rst $38                                       ; $4a3b: $ff
    ld [de], a                                    ; $4a3c: $12
    nop                                           ; $4a3d: $00
    rst $00                                       ; $4a3e: $c7
    ld b, b                                       ; $4a3f: $40
    dec e                                         ; $4a40: $1d
    nop                                           ; $4a41: $00
    ld [hl], a                                    ; $4a42: $77
    nop                                           ; $4a43: $00
    rst $38                                       ; $4a44: $ff
    cp $ff                                        ; $4a45: $fe $ff
    cp $fe                                        ; $4a47: $fe $fe
    db $f4                                        ; $4a49: $f4
    ld a, [$f2f6]                                 ; $4a4a: $fa $f6 $f2
    rst $30                                       ; $4a4d: $f7
    pop af                                        ; $4a4e: $f1
    or $fe                                        ; $4a4f: $f6 $fe
    db $fc                                        ; $4a51: $fc
    ldh [$f4], a                                  ; $4a52: $e0 $f4
    ld a, [$7fff]                                 ; $4a54: $fa $ff $7f
    ei                                            ; $4a57: $fb
    ccf                                           ; $4a58: $3f
    ld a, a                                       ; $4a59: $7f
    db $fc                                        ; $4a5a: $fc
    ldh [rIE], a                                  ; $4a5b: $e0 $ff
    rst $38                                       ; $4a5d: $ff
    ld a, a                                       ; $4a5e: $7f
    cpl                                           ; $4a5f: $2f
    rst $30                                       ; $4a60: $f7
    rst $38                                       ; $4a61: $ff
    db $eb                                        ; $4a62: $eb
    ld h, a                                       ; $4a63: $67
    inc hl                                        ; $4a64: $23
    rst $28                                       ; $4a65: $ef
    ld sp, hl                                     ; $4a66: $f9
    cp $fe                                        ; $4a67: $fe $fe
    cp $7f                                        ; $4a69: $fe $7f
    db $eb                                        ; $4a6b: $eb
    or $ee                                        ; $4a6c: $f6 $ee
    and $e3                                       ; $4a6e: $e6 $e3
    xor $fe                                       ; $4a70: $ee $fe
    db $fc                                        ; $4a72: $fc
    ldh [$e7], a                                  ; $4a73: $e0 $e7
    add sp, -$0a                                  ; $4a75: $e8 $f6
    rst $38                                       ; $4a77: $ff
    db $ec                                        ; $4a78: $ec
    ldh [$fc], a                                  ; $4a79: $e0 $fc
    ld [c], a                                     ; $4a7b: $e2
    ld b, a                                       ; $4a7c: $47
    inc de                                        ; $4a7d: $13
    rst $28                                       ; $4a7e: $ef
    db $dd                                        ; $4a7f: $dd
    rst $00                                       ; $4a80: $c7
    ret c                                         ; $4a81: $d8

    ldh [$f5], a                                  ; $4a82: $e0 $f5
    ld a, [$bdfc]                                 ; $4a84: $fa $fc $bd
    pop hl                                        ; $4a87: $e1
    cp $dd                                        ; $4a88: $fe $dd
    ld a, a                                       ; $4a8a: $7f
    cp $f3                                        ; $4a8b: $fe $f3
    db $fc                                        ; $4a8d: $fc
    ld d, l                                       ; $4a8e: $55
    ld [$fdf2], a                                 ; $4a8f: $ea $f2 $fd
    call nz, $9fe3                                ; $4a92: $c4 $e3 $9f
    ccf                                           ; $4a95: $3f
    rst $38                                       ; $4a96: $ff
    rst $30                                       ; $4a97: $f7
    ld a, a                                       ; $4a98: $7f
    ld a, $3c                                     ; $4a99: $3e $3c
    ld b, b                                       ; $4a9b: $40
    cp b                                          ; $4a9c: $b8
    ldh [rIE], a                                  ; $4a9d: $e0 $ff
    rst $38                                       ; $4a9f: $ff
    ld a, [$fdfa]                                 ; $4aa0: $fa $fa $fd
    db $fd                                        ; $4aa3: $fd
    cp $fc                                        ; $4aa4: $fe $fc
    db $fd                                        ; $4aa6: $fd
    ld a, [$fcfd]                                 ; $4aa7: $fa $fd $fc
    cp a                                          ; $4aaa: $bf
    ld h, b                                       ; $4aab: $60
    db $fd                                        ; $4aac: $fd
    rst $38                                       ; $4aad: $ff
    rst $38                                       ; $4aae: $ff
    rst $18                                       ; $4aaf: $df
    cp a                                          ; $4ab0: $bf
    ld a, a                                       ; $4ab1: $7f
    rst $18                                       ; $4ab2: $df
    ld c, a                                       ; $4ab3: $4f
    ccf                                           ; $4ab4: $3f

jr_051_4ab5:
    rst $18                                       ; $4ab5: $df
    ccf                                           ; $4ab6: $3f
    sbc a                                         ; $4ab7: $9f
    db $e4                                        ; $4ab8: $e4
    ldh [$ef], a                                  ; $4ab9: $e0 $ef
    rst $38                                       ; $4abb: $ff
    or a                                          ; $4abc: $b7
    ld e, a                                       ; $4abd: $5f
    ccf                                           ; $4abe: $3f
    cp $7f                                        ; $4abf: $fe $7f
    pop hl                                        ; $4ac1: $e1
    db $fd                                        ; $4ac2: $fd
    cp $a3                                        ; $4ac3: $fe $a3
    ld h, b                                       ; $4ac5: $60
    cp $fe                                        ; $4ac6: $fe $fe
    ret c                                         ; $4ac8: $d8

    ldh [rIE], a                                  ; $4ac9: $e0 $ff
    db $fc                                        ; $4acb: $fc
    xor a                                         ; $4acc: $af
    sbc a                                         ; $4acd: $9f
    ld l, a                                       ; $4ace: $6f
    rra                                           ; $4acf: $1f
    rst $00                                       ; $4ad0: $c7
    cp e                                          ; $4ad1: $bb
    ld a, a                                       ; $4ad2: $7f
    rra                                           ; $4ad3: $1f
    sub e                                         ; $4ad4: $93
    ld h, b                                       ; $4ad5: $60
    cp a                                          ; $4ad6: $bf
    ld a, a                                       ; $4ad7: $7f
    rst $08                                       ; $4ad8: $cf
    ret c                                         ; $4ad9: $d8

    ldh [$f9], a                                  ; $4ada: $e0 $f9
    db $fd                                        ; $4adc: $fd
    cp $c8                                        ; $4add: $fe $c8
    db $e3                                        ; $4adf: $e3
    cp $fe                                        ; $4ae0: $fe $fe
    rst $28                                       ; $4ae2: $ef
    cp $7e                                        ; $4ae3: $fe $7e
    db $fd                                        ; $4ae5: $fd
    rst $18                                       ; $4ae6: $df
    or $ff                                        ; $4ae7: $f6 $ff
    sbc a                                         ; $4ae9: $9f
    rst $38                                       ; $4aea: $ff
    cpl                                           ; $4aeb: $2f
    ld [hl], a                                    ; $4aec: $77
    ld h, b                                       ; $4aed: $60
    rst $18                                       ; $4aee: $df
    ccf                                           ; $4aef: $3f
    rst $18                                       ; $4af0: $df
    rst $20                                       ; $4af1: $e7
    sbc a                                         ; $4af2: $9f
    rst $28                                       ; $4af3: $ef
    rra                                           ; $4af4: $1f
    call $e2d8                                    ; $4af5: $cd $d8 $e2
    rst $08                                       ; $4af8: $cf
    rst $10                                       ; $4af9: $d7
    rst $38                                       ; $4afa: $ff
    db $e3                                        ; $4afb: $e3
    db $db                                        ; $4afc: $db
    add e                                         ; $4afd: $83
    cp e                                          ; $4afe: $bb
    ret                                           ; $4aff: $c9


    or c                                          ; $4b00: $b1
    pop hl                                        ; $4b01: $e1
    sub l                                         ; $4b02: $95
    rst $28                                       ; $4b03: $ef
    ld [hl], $00                                  ; $4b04: $36 $00
    and c                                         ; $4b06: $a1
    add c                                         ; $4b07: $81
    ld e, d                                       ; $4b08: $5a
    ld h, c                                       ; $4b09: $61
    rst $28                                       ; $4b0a: $ef
    rst $08                                       ; $4b0b: $cf
    rst $08                                       ; $4b0c: $cf
    rst $38                                       ; $4b0d: $ff
    rst $38                                       ; $4b0e: $ff
    sub a                                         ; $4b0f: $97
    and a                                         ; $4b10: $a7
    db $db                                        ; $4b11: $db
    and e                                         ; $4b12: $a3
    sbc a                                         ; $4b13: $9f
    db $e3                                        ; $4b14: $e3
    ccf                                           ; $4b15: $3f
    rst $38                                       ; $4b16: $ff
    ld b, e                                       ; $4b17: $43
    ei                                            ; $4b18: $fb
    ei                                            ; $4b19: $fb
    cp $fe                                        ; $4b1a: $fe $fe
    ld a, a                                       ; $4b1c: $7f
    ld a, [hl]                                    ; $4b1d: $7e
    ld hl, sp-$01                                 ; $4b1e: $f8 $ff
    ldh a, [$a6]                                  ; $4b20: $f0 $a6
    sbc d                                         ; $4b22: $9a
    pop hl                                        ; $4b23: $e1
    add c                                         ; $4b24: $81
    daa                                           ; $4b25: $27
    daa                                           ; $4b26: $27
    rst $38                                       ; $4b27: $ff
    rst $38                                       ; $4b28: $ff
    rst $38                                       ; $4b29: $ff
    sub c                                         ; $4b2a: $91
    ld b, c                                       ; $4b2b: $41
    ld b, d                                       ; $4b2c: $42
    add b                                         ; $4b2d: $80
    db $e3                                        ; $4b2e: $e3
    jr nz, jr_051_4ab5                            ; $4b2f: $20 $84

    ld [hl], a                                    ; $4b31: $77
    nop                                           ; $4b32: $00
    or e                                          ; $4b33: $b3
    or e                                          ; $4b34: $b3
    adc [hl]                                      ; $4b35: $8e
    ldh [$fe], a                                  ; $4b36: $e0 $fe
    cp a                                          ; $4b38: $bf
    cp a                                          ; $4b39: $bf
    cp $bf                                        ; $4b3a: $fe $bf
    nop                                           ; $4b3c: $00
    rst $38                                       ; $4b3d: $ff
    rst $38                                       ; $4b3e: $ff
    rst $38                                       ; $4b3f: $ff
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
    xor $ed                                       ; $4b4b: $ee $ed
    nop                                           ; $4b4d: $00
    nop                                           ; $4b4e: $00
    nop                                           ; $4b4f: $00
    nop                                           ; $4b50: $00
    nop                                           ; $4b51: $00
    nop                                           ; $4b52: $00
    nop                                           ; $4b53: $00
    nop                                           ; $4b54: $00
    nop                                           ; $4b55: $00
    nop                                           ; $4b56: $00
    nop                                           ; $4b57: $00
    nop                                           ; $4b58: $00
    nop                                           ; $4b59: $00
    nop                                           ; $4b5a: $00
    nop                                           ; $4b5b: $00
    nop                                           ; $4b5c: $00
    nop                                           ; $4b5d: $00
    nop                                           ; $4b5e: $00
    nop                                           ; $4b5f: $00
    nop                                           ; $4b60: $00
    nop                                           ; $4b61: $00
    nop                                           ; $4b62: $00
    nop                                           ; $4b63: $00
    nop                                           ; $4b64: $00
    nop                                           ; $4b65: $00
    nop                                           ; $4b66: $00
    nop                                           ; $4b67: $00
    nop                                           ; $4b68: $00
    nop                                           ; $4b69: $00
    nop                                           ; $4b6a: $00
    nop                                           ; $4b6b: $00
    nop                                           ; $4b6c: $00
    nop                                           ; $4b6d: $00
    nop                                           ; $4b6e: $00
    nop                                           ; $4b6f: $00
    nop                                           ; $4b70: $00
    nop                                           ; $4b71: $00
    nop                                           ; $4b72: $00
    nop                                           ; $4b73: $00
    nop                                           ; $4b74: $00
    nop                                           ; $4b75: $00
    nop                                           ; $4b76: $00
    nop                                           ; $4b77: $00
    nop                                           ; $4b78: $00
    nop                                           ; $4b79: $00
    nop                                           ; $4b7a: $00
    nop                                           ; $4b7b: $00
    nop                                           ; $4b7c: $00
    nop                                           ; $4b7d: $00
    nop                                           ; $4b7e: $00
    nop                                           ; $4b7f: $00
    nop                                           ; $4b80: $00
    nop                                           ; $4b81: $00
    nop                                           ; $4b82: $00
    nop                                           ; $4b83: $00
    nop                                           ; $4b84: $00
    nop                                           ; $4b85: $00
    nop                                           ; $4b86: $00
    nop                                           ; $4b87: $00
    nop                                           ; $4b88: $00
    nop                                           ; $4b89: $00
    nop                                           ; $4b8a: $00
    nop                                           ; $4b8b: $00
    nop                                           ; $4b8c: $00
    nop                                           ; $4b8d: $00
    nop                                           ; $4b8e: $00
    nop                                           ; $4b8f: $00
    nop                                           ; $4b90: $00
    nop                                           ; $4b91: $00
    nop                                           ; $4b92: $00
    nop                                           ; $4b93: $00
    nop                                           ; $4b94: $00
    nop                                           ; $4b95: $00
    nop                                           ; $4b96: $00
    nop                                           ; $4b97: $00
    nop                                           ; $4b98: $00
    nop                                           ; $4b99: $00
    nop                                           ; $4b9a: $00
    nop                                           ; $4b9b: $00
    nop                                           ; $4b9c: $00
    nop                                           ; $4b9d: $00
    nop                                           ; $4b9e: $00
    nop                                           ; $4b9f: $00
    nop                                           ; $4ba0: $00
    nop                                           ; $4ba1: $00
    nop                                           ; $4ba2: $00
    nop                                           ; $4ba3: $00
    nop                                           ; $4ba4: $00
    nop                                           ; $4ba5: $00
    nop                                           ; $4ba6: $00
    nop                                           ; $4ba7: $00
    nop                                           ; $4ba8: $00
    nop                                           ; $4ba9: $00
    nop                                           ; $4baa: $00
    nop                                           ; $4bab: $00
    nop                                           ; $4bac: $00
    nop                                           ; $4bad: $00
    nop                                           ; $4bae: $00
    nop                                           ; $4baf: $00
    nop                                           ; $4bb0: $00
    nop                                           ; $4bb1: $00
    nop                                           ; $4bb2: $00
    nop                                           ; $4bb3: $00
    nop                                           ; $4bb4: $00
    nop                                           ; $4bb5: $00
    nop                                           ; $4bb6: $00
    nop                                           ; $4bb7: $00
    nop                                           ; $4bb8: $00
    nop                                           ; $4bb9: $00
    nop                                           ; $4bba: $00
    nop                                           ; $4bbb: $00
    nop                                           ; $4bbc: $00
    nop                                           ; $4bbd: $00
    nop                                           ; $4bbe: $00
    nop                                           ; $4bbf: $00
    nop                                           ; $4bc0: $00
    nop                                           ; $4bc1: $00
    nop                                           ; $4bc2: $00
    nop                                           ; $4bc3: $00
    nop                                           ; $4bc4: $00
    nop                                           ; $4bc5: $00
    nop                                           ; $4bc6: $00
    nop                                           ; $4bc7: $00
    nop                                           ; $4bc8: $00
    nop                                           ; $4bc9: $00
    nop                                           ; $4bca: $00
    nop                                           ; $4bcb: $00
    nop                                           ; $4bcc: $00
    nop                                           ; $4bcd: $00
    nop                                           ; $4bce: $00
    nop                                           ; $4bcf: $00
    nop                                           ; $4bd0: $00
    nop                                           ; $4bd1: $00
    nop                                           ; $4bd2: $00
    nop                                           ; $4bd3: $00
    nop                                           ; $4bd4: $00
    nop                                           ; $4bd5: $00
    nop                                           ; $4bd6: $00
    nop                                           ; $4bd7: $00
    nop                                           ; $4bd8: $00
    nop                                           ; $4bd9: $00
    nop                                           ; $4bda: $00
    nop                                           ; $4bdb: $00
    nop                                           ; $4bdc: $00
    nop                                           ; $4bdd: $00
    nop                                           ; $4bde: $00
    nop                                           ; $4bdf: $00
    nop                                           ; $4be0: $00
    nop                                           ; $4be1: $00
    nop                                           ; $4be2: $00
    nop                                           ; $4be3: $00
    nop                                           ; $4be4: $00
    nop                                           ; $4be5: $00
    nop                                           ; $4be6: $00
    nop                                           ; $4be7: $00
    nop                                           ; $4be8: $00
    nop                                           ; $4be9: $00
    nop                                           ; $4bea: $00
    nop                                           ; $4beb: $00
    nop                                           ; $4bec: $00
    nop                                           ; $4bed: $00
    nop                                           ; $4bee: $00
    nop                                           ; $4bef: $00
    nop                                           ; $4bf0: $00
    nop                                           ; $4bf1: $00
    nop                                           ; $4bf2: $00
    nop                                           ; $4bf3: $00
    nop                                           ; $4bf4: $00
    nop                                           ; $4bf5: $00
    nop                                           ; $4bf6: $00
    nop                                           ; $4bf7: $00
    nop                                           ; $4bf8: $00
    nop                                           ; $4bf9: $00
    nop                                           ; $4bfa: $00
    nop                                           ; $4bfb: $00
    nop                                           ; $4bfc: $00
    nop                                           ; $4bfd: $00
    nop                                           ; $4bfe: $00
    nop                                           ; $4bff: $00
    nop                                           ; $4c00: $00
    nop                                           ; $4c01: $00
    nop                                           ; $4c02: $00
    nop                                           ; $4c03: $00
    nop                                           ; $4c04: $00
    nop                                           ; $4c05: $00
    nop                                           ; $4c06: $00
    nop                                           ; $4c07: $00
    nop                                           ; $4c08: $00
    nop                                           ; $4c09: $00
    nop                                           ; $4c0a: $00
    nop                                           ; $4c0b: $00
    nop                                           ; $4c0c: $00
    nop                                           ; $4c0d: $00
    nop                                           ; $4c0e: $00
    nop                                           ; $4c0f: $00
    nop                                           ; $4c10: $00
    nop                                           ; $4c11: $00
    nop                                           ; $4c12: $00
    nop                                           ; $4c13: $00
    nop                                           ; $4c14: $00
    nop                                           ; $4c15: $00
    nop                                           ; $4c16: $00
    nop                                           ; $4c17: $00
    nop                                           ; $4c18: $00
    nop                                           ; $4c19: $00
    nop                                           ; $4c1a: $00
    nop                                           ; $4c1b: $00
    nop                                           ; $4c1c: $00
    nop                                           ; $4c1d: $00
    nop                                           ; $4c1e: $00
    nop                                           ; $4c1f: $00
    nop                                           ; $4c20: $00
    nop                                           ; $4c21: $00
    nop                                           ; $4c22: $00
    nop                                           ; $4c23: $00
    nop                                           ; $4c24: $00
    nop                                           ; $4c25: $00
    nop                                           ; $4c26: $00
    nop                                           ; $4c27: $00
    nop                                           ; $4c28: $00
    nop                                           ; $4c29: $00
    nop                                           ; $4c2a: $00
    nop                                           ; $4c2b: $00
    nop                                           ; $4c2c: $00
    nop                                           ; $4c2d: $00
    nop                                           ; $4c2e: $00
    nop                                           ; $4c2f: $00
    nop                                           ; $4c30: $00
    nop                                           ; $4c31: $00
    nop                                           ; $4c32: $00
    nop                                           ; $4c33: $00
    nop                                           ; $4c34: $00
    nop                                           ; $4c35: $00
    nop                                           ; $4c36: $00
    nop                                           ; $4c37: $00
    nop                                           ; $4c38: $00
    nop                                           ; $4c39: $00
    nop                                           ; $4c3a: $00
    nop                                           ; $4c3b: $00
    nop                                           ; $4c3c: $00
    nop                                           ; $4c3d: $00
    nop                                           ; $4c3e: $00
    nop                                           ; $4c3f: $00
    nop                                           ; $4c40: $00
    nop                                           ; $4c41: $00
    nop                                           ; $4c42: $00
    nop                                           ; $4c43: $00
    nop                                           ; $4c44: $00
    nop                                           ; $4c45: $00
    nop                                           ; $4c46: $00
    nop                                           ; $4c47: $00
    nop                                           ; $4c48: $00
    nop                                           ; $4c49: $00
    nop                                           ; $4c4a: $00
    nop                                           ; $4c4b: $00
    nop                                           ; $4c4c: $00
    nop                                           ; $4c4d: $00
    nop                                           ; $4c4e: $00
    nop                                           ; $4c4f: $00
    nop                                           ; $4c50: $00
    nop                                           ; $4c51: $00
    nop                                           ; $4c52: $00
    nop                                           ; $4c53: $00
    nop                                           ; $4c54: $00
    nop                                           ; $4c55: $00
    nop                                           ; $4c56: $00
    nop                                           ; $4c57: $00
    nop                                           ; $4c58: $00
    nop                                           ; $4c59: $00
    nop                                           ; $4c5a: $00
    nop                                           ; $4c5b: $00
    nop                                           ; $4c5c: $00
    nop                                           ; $4c5d: $00
    nop                                           ; $4c5e: $00
    nop                                           ; $4c5f: $00
    nop                                           ; $4c60: $00
    nop                                           ; $4c61: $00
    nop                                           ; $4c62: $00
    nop                                           ; $4c63: $00
    nop                                           ; $4c64: $00
    nop                                           ; $4c65: $00
    nop                                           ; $4c66: $00
    nop                                           ; $4c67: $00
    nop                                           ; $4c68: $00
    nop                                           ; $4c69: $00
    nop                                           ; $4c6a: $00
    nop                                           ; $4c6b: $00
    nop                                           ; $4c6c: $00
    nop                                           ; $4c6d: $00
    nop                                           ; $4c6e: $00
    nop                                           ; $4c6f: $00
    nop                                           ; $4c70: $00
    nop                                           ; $4c71: $00
    nop                                           ; $4c72: $00
    nop                                           ; $4c73: $00
    nop                                           ; $4c74: $00
    nop                                           ; $4c75: $00
    nop                                           ; $4c76: $00
    nop                                           ; $4c77: $00
    nop                                           ; $4c78: $00
    nop                                           ; $4c79: $00
    nop                                           ; $4c7a: $00
    nop                                           ; $4c7b: $00
    nop                                           ; $4c7c: $00
    nop                                           ; $4c7d: $00
    nop                                           ; $4c7e: $00
    nop                                           ; $4c7f: $00
    nop                                           ; $4c80: $00
    nop                                           ; $4c81: $00
    nop                                           ; $4c82: $00
    nop                                           ; $4c83: $00
    nop                                           ; $4c84: $00
    nop                                           ; $4c85: $00
    nop                                           ; $4c86: $00
    nop                                           ; $4c87: $00
    nop                                           ; $4c88: $00
    nop                                           ; $4c89: $00
    nop                                           ; $4c8a: $00
    nop                                           ; $4c8b: $00
    nop                                           ; $4c8c: $00
    nop                                           ; $4c8d: $00
    nop                                           ; $4c8e: $00
    nop                                           ; $4c8f: $00
    nop                                           ; $4c90: $00
    nop                                           ; $4c91: $00
    nop                                           ; $4c92: $00
    nop                                           ; $4c93: $00
    nop                                           ; $4c94: $00
    nop                                           ; $4c95: $00
    nop                                           ; $4c96: $00
    nop                                           ; $4c97: $00
    nop                                           ; $4c98: $00
    nop                                           ; $4c99: $00
    nop                                           ; $4c9a: $00
    nop                                           ; $4c9b: $00
    nop                                           ; $4c9c: $00
    nop                                           ; $4c9d: $00
    nop                                           ; $4c9e: $00
    nop                                           ; $4c9f: $00
    nop                                           ; $4ca0: $00
    nop                                           ; $4ca1: $00
    nop                                           ; $4ca2: $00
    nop                                           ; $4ca3: $00
    nop                                           ; $4ca4: $00
    nop                                           ; $4ca5: $00
    nop                                           ; $4ca6: $00
    nop                                           ; $4ca7: $00
    nop                                           ; $4ca8: $00
    nop                                           ; $4ca9: $00
    nop                                           ; $4caa: $00
    nop                                           ; $4cab: $00
    nop                                           ; $4cac: $00
    nop                                           ; $4cad: $00
    nop                                           ; $4cae: $00
    nop                                           ; $4caf: $00
    nop                                           ; $4cb0: $00
    nop                                           ; $4cb1: $00
    nop                                           ; $4cb2: $00
    nop                                           ; $4cb3: $00
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
    nop                                           ; $4cc2: $00
    nop                                           ; $4cc3: $00
    nop                                           ; $4cc4: $00
    nop                                           ; $4cc5: $00
    nop                                           ; $4cc6: $00
    nop                                           ; $4cc7: $00
    nop                                           ; $4cc8: $00
    nop                                           ; $4cc9: $00
    nop                                           ; $4cca: $00
    nop                                           ; $4ccb: $00
    nop                                           ; $4ccc: $00
    nop                                           ; $4ccd: $00
    nop                                           ; $4cce: $00
    nop                                           ; $4ccf: $00
    nop                                           ; $4cd0: $00
    nop                                           ; $4cd1: $00
    nop                                           ; $4cd2: $00
    nop                                           ; $4cd3: $00
    nop                                           ; $4cd4: $00
    nop                                           ; $4cd5: $00
    nop                                           ; $4cd6: $00
    nop                                           ; $4cd7: $00
    nop                                           ; $4cd8: $00
    nop                                           ; $4cd9: $00
    nop                                           ; $4cda: $00
    nop                                           ; $4cdb: $00
    nop                                           ; $4cdc: $00
    nop                                           ; $4cdd: $00
    nop                                           ; $4cde: $00
    nop                                           ; $4cdf: $00
    nop                                           ; $4ce0: $00
    nop                                           ; $4ce1: $00
    nop                                           ; $4ce2: $00
    nop                                           ; $4ce3: $00
    nop                                           ; $4ce4: $00
    nop                                           ; $4ce5: $00
    nop                                           ; $4ce6: $00
    nop                                           ; $4ce7: $00
    nop                                           ; $4ce8: $00
    nop                                           ; $4ce9: $00
    nop                                           ; $4cea: $00
    nop                                           ; $4ceb: $00
    nop                                           ; $4cec: $00
    nop                                           ; $4ced: $00
    nop                                           ; $4cee: $00
    nop                                           ; $4cef: $00
    nop                                           ; $4cf0: $00
    nop                                           ; $4cf1: $00
    nop                                           ; $4cf2: $00
    nop                                           ; $4cf3: $00
    nop                                           ; $4cf4: $00
    nop                                           ; $4cf5: $00
    nop                                           ; $4cf6: $00
    nop                                           ; $4cf7: $00
    nop                                           ; $4cf8: $00
    nop                                           ; $4cf9: $00
    nop                                           ; $4cfa: $00
    nop                                           ; $4cfb: $00
    nop                                           ; $4cfc: $00
    nop                                           ; $4cfd: $00
    nop                                           ; $4cfe: $00
    nop                                           ; $4cff: $00
    nop                                           ; $4d00: $00
    nop                                           ; $4d01: $00
    nop                                           ; $4d02: $00
    nop                                           ; $4d03: $00
    nop                                           ; $4d04: $00
    nop                                           ; $4d05: $00
    nop                                           ; $4d06: $00
    nop                                           ; $4d07: $00
    nop                                           ; $4d08: $00
    nop                                           ; $4d09: $00
    nop                                           ; $4d0a: $00
    nop                                           ; $4d0b: $00
    nop                                           ; $4d0c: $00
    nop                                           ; $4d0d: $00
    nop                                           ; $4d0e: $00
    nop                                           ; $4d0f: $00
    nop                                           ; $4d10: $00
    nop                                           ; $4d11: $00
    nop                                           ; $4d12: $00
    nop                                           ; $4d13: $00
    nop                                           ; $4d14: $00
    nop                                           ; $4d15: $00
    nop                                           ; $4d16: $00
    nop                                           ; $4d17: $00
    nop                                           ; $4d18: $00
    nop                                           ; $4d19: $00
    nop                                           ; $4d1a: $00
    nop                                           ; $4d1b: $00
    nop                                           ; $4d1c: $00
    nop                                           ; $4d1d: $00
    nop                                           ; $4d1e: $00
    nop                                           ; $4d1f: $00
    nop                                           ; $4d20: $00
    nop                                           ; $4d21: $00
    nop                                           ; $4d22: $00
    nop                                           ; $4d23: $00
    nop                                           ; $4d24: $00
    nop                                           ; $4d25: $00
    nop                                           ; $4d26: $00
    nop                                           ; $4d27: $00
    nop                                           ; $4d28: $00
    nop                                           ; $4d29: $00
    nop                                           ; $4d2a: $00
    nop                                           ; $4d2b: $00
    nop                                           ; $4d2c: $00
    nop                                           ; $4d2d: $00
    nop                                           ; $4d2e: $00
    nop                                           ; $4d2f: $00
    nop                                           ; $4d30: $00
    nop                                           ; $4d31: $00
    nop                                           ; $4d32: $00
    nop                                           ; $4d33: $00
    nop                                           ; $4d34: $00
    nop                                           ; $4d35: $00
    nop                                           ; $4d36: $00
    nop                                           ; $4d37: $00
    nop                                           ; $4d38: $00
    nop                                           ; $4d39: $00
    nop                                           ; $4d3a: $00
    nop                                           ; $4d3b: $00
    nop                                           ; $4d3c: $00
    nop                                           ; $4d3d: $00
    nop                                           ; $4d3e: $00
    nop                                           ; $4d3f: $00
    nop                                           ; $4d40: $00
    nop                                           ; $4d41: $00
    nop                                           ; $4d42: $00
    nop                                           ; $4d43: $00
    nop                                           ; $4d44: $00
    nop                                           ; $4d45: $00
    nop                                           ; $4d46: $00
    nop                                           ; $4d47: $00
    nop                                           ; $4d48: $00
    nop                                           ; $4d49: $00
    nop                                           ; $4d4a: $00
    nop                                           ; $4d4b: $00
    nop                                           ; $4d4c: $00
    nop                                           ; $4d4d: $00
    nop                                           ; $4d4e: $00
    nop                                           ; $4d4f: $00
    ld a, l                                       ; $4d50: $7d
    inc sp                                        ; $4d51: $33
    rst $38                                       ; $4d52: $ff
    db $ec                                        ; $4d53: $ec
    ld de, $1113                                  ; $4d54: $11 $13 $11
    inc sp                                        ; $4d57: $33
    inc de                                        ; $4d58: $13
    ld hl, sp-$1f                                 ; $4d59: $f8 $e1
    ld b, [hl]                                    ; $4d5b: $46
    rst $38                                       ; $4d5c: $ff
    pop hl                                        ; $4d5d: $e1
    inc de                                        ; $4d5e: $13
    inc de                                        ; $4d5f: $13
    ldh a, [$e0]                                  ; $4d60: $f0 $e0
    ld a, [c]                                     ; $4d62: $f2
    pop hl                                        ; $4d63: $e1
    ldh a, [$e1]                                  ; $4d64: $f0 $e1
    ld sp, $e0fe                                  ; $4d66: $31 $fe $e0
    dec [hl]                                      ; $4d69: $35
    inc sp                                        ; $4d6a: $33
    cp $e1                                        ; $4d6b: $fe $e1
    ld sp, $e0fe                                  ; $4d6d: $31 $fe $e0
    inc sp                                        ; $4d70: $33
    ld sp, $e3e9                                  ; $4d71: $31 $e9 $e3
    pop bc                                        ; $4d74: $c1
    ldh [rNR42], a                                ; $4d75: $e0 $21
    inc de                                        ; $4d77: $13
    ret nc                                        ; $4d78: $d0

    and $c0                                       ; $4d79: $e6 $c0
    ld [c], a                                     ; $4d7b: $e2
    cp $e5                                        ; $4d7c: $fe $e5
    cp a                                          ; $4d7e: $bf
    db $e3                                        ; $4d7f: $e3
    ld sp, $e1ba                                  ; $4d80: $31 $ba $e1
    xor h                                         ; $4d83: $ac
    ldh [rNR23], a                                ; $4d84: $e0 $18
    db $e4                                        ; $4d86: $e4
    ld [c], a                                     ; $4d87: $e2
    db $fc                                        ; $4d88: $fc
    ld sp, hl                                     ; $4d89: $f9
    cp d                                          ; $4d8a: $ba
    ldh [$31], a                                  ; $4d8b: $e0 $31
    inc de                                        ; $4d8d: $13
    and [hl]                                      ; $4d8e: $a6
    ld [c], a                                     ; $4d8f: $e2
    adc h                                         ; $4d90: $8c
    ldh [$7a], a                                  ; $4d91: $e0 $7a
    ldh [$88], a                                  ; $4d93: $e0 $88
    sub h                                         ; $4d95: $94
    ldh [$72], a                                  ; $4d96: $e0 $72
    ld [c], a                                     ; $4d98: $e2
    ld h, b                                       ; $4d99: $60
    push hl                                       ; $4d9a: $e5
    rst $38                                       ; $4d9b: $ff
    rst $38                                       ; $4d9c: $ff
    rst $38                                       ; $4d9d: $ff
    rst $38                                       ; $4d9e: $ff
    rst $38                                       ; $4d9f: $ff
    pop af                                        ; $4da0: $f1
    ldh a, [$66]                                  ; $4da1: $f0 $66
    ld a, $ff                                     ; $4da3: $3e $ff
    db $e4                                        ; $4da5: $e4
    nop                                           ; $4da6: $00
    ld b, $06                                     ; $4da7: $06 $06
    ld h, [hl]                                    ; $4da9: $66
    ld b, $f8                                     ; $4daa: $06 $f8
    pop hl                                        ; $4dac: $e1
    rst $38                                       ; $4dad: $ff
    pop hl                                        ; $4dae: $e1
    cp h                                          ; $4daf: $bc
    ldh a, [$e1]                                  ; $4db0: $f0 $e1
    rst $20                                       ; $4db2: $e7
    db $e4                                        ; $4db3: $e4
    ld h, b                                       ; $4db4: $60
    nop                                           ; $4db5: $00
    ld h, b                                       ; $4db6: $60
    nop                                           ; $4db7: $00
    di                                            ; $4db8: $f3
    ldh [rP1], a                                  ; $4db9: $e0 $00
    add e                                         ; $4dbb: $83
    ld h, [hl]                                    ; $4dbc: $66
    ld h, b                                       ; $4dbd: $60
    cp $e0                                        ; $4dbe: $fe $e0
    rst $38                                       ; $4dc0: $ff
    ldh a, [$d1]                                  ; $4dc1: $f0 $d1
    db $e4                                        ; $4dc3: $e4
    db $dd                                        ; $4dc4: $dd
    ld [c], a                                     ; $4dc5: $e2
    rst $10                                       ; $4dc6: $d7
    pop hl                                        ; $4dc7: $e1
    sbc c                                         ; $4dc8: $99
    ld l, a                                       ; $4dc9: $6f
    sub [hl]                                      ; $4dca: $96
    sub [hl]                                      ; $4dcb: $96
    ld h, [hl]                                    ; $4dcc: $66
    sub [hl]                                      ; $4dcd: $96
    xor e                                         ; $4dce: $ab
    ldh [rNR11], a                                ; $4dcf: $e0 $11
    sbc c                                         ; $4dd1: $99
    rst $38                                       ; $4dd2: $ff
    ldh [$78], a                                  ; $4dd3: $e0 $78
    and e                                         ; $4dd5: $a3
    ldh [$fc], a                                  ; $4dd6: $e0 $fc
    pop hl                                        ; $4dd8: $e1
    sbc h                                         ; $4dd9: $9c
    pop hl                                        ; $4dda: $e1
    ld l, c                                       ; $4ddb: $69
    sub c                                         ; $4ddc: $91
    ld l, c                                       ; $4ddd: $69
    sub c                                         ; $4dde: $91
    di                                            ; $4ddf: $f3
    ldh [rTAC], a                                 ; $4de0: $e0 $07
    sbc c                                         ; $4de2: $99
    ld h, [hl]                                    ; $4de3: $66
    ld l, c                                       ; $4de4: $69
    cp $e0                                        ; $4de5: $fe $e0
    ldh a, [$e1]                                  ; $4de7: $f0 $e1
    db $db                                        ; $4de9: $db
    pop hl                                        ; $4dea: $e1
    add e                                         ; $4deb: $83
    ld [c], a                                     ; $4dec: $e2
    ret nc                                        ; $4ded: $d0

    db $e3                                        ; $4dee: $e3
    ld d, b                                       ; $4def: $50
    pop de                                        ; $4df0: $d1
    db $e4                                        ; $4df1: $e4
    db $dd                                        ; $4df2: $dd
    ld [c], a                                     ; $4df3: $e2
    db $fc                                        ; $4df4: $fc
    ld [c], a                                     ; $4df5: $e2
    ret nz                                        ; $4df6: $c0

    ldh [rNR24], a                                ; $4df7: $e0 $19
    ld a, e                                       ; $4df9: $7b
    ret nz                                        ; $4dfa: $c0

    sbc c                                         ; $4dfb: $99
    cp $e1                                        ; $4dfc: $fe $e1
    rst $20                                       ; $4dfe: $e7
    sub c                                         ; $4dff: $91
    sbc c                                         ; $4e00: $99
    ld de, $e268                                  ; $4e01: $11 $68 $e2
    ld h, e                                       ; $4e04: $63
    ldh [$99], a                                  ; $4e05: $e0 $99
    sub b                                         ; $4e07: $90
    sub b                                         ; $4e08: $90
    jp $9000                                      ; $4e09: $c3 $00 $90


    ld e, e                                       ; $4e0c: $5b
    ldh [$a0], a                                  ; $4e0d: $e0 $a0
    ld [c], a                                     ; $4e0f: $e2
    ldh a, [$e1]                                  ; $4e10: $f0 $e1
    rst $20                                       ; $4e12: $e7
    db $e4                                        ; $4e13: $e4
    add hl, bc                                    ; $4e14: $09
    sub c                                         ; $4e15: $91
    dec sp                                        ; $4e16: $3b
    add hl, bc                                    ; $4e17: $09
    sub c                                         ; $4e18: $91
    di                                            ; $4e19: $f3
    ldh [$99], a                                  ; $4e1a: $e0 $99
    nop                                           ; $4e1c: $00
    add hl, bc                                    ; $4e1d: $09
    cp $e0                                        ; $4e1e: $fe $e0
    ldh a, [$e1]                                  ; $4e20: $f0 $e1
    ret nz                                        ; $4e22: $c0

    db $db                                        ; $4e23: $db
    pop hl                                        ; $4e24: $e1
    inc sp                                        ; $4e25: $33
    ld [c], a                                     ; $4e26: $e2
    ret nc                                        ; $4e27: $d0

    db $e3                                        ; $4e28: $e3
    pop de                                        ; $4e29: $d1
    db $e4                                        ; $4e2a: $e4
    db $dd                                        ; $4e2b: $dd
    ld [c], a                                     ; $4e2c: $e2
    reti                                          ; $4e2d: $d9


    pop hl                                        ; $4e2e: $e1
    sub b                                         ; $4e2f: $90
    add hl, bc                                    ; $4e30: $09
    ld [de], a                                    ; $4e31: $12
    and b                                         ; $4e32: $a0
    ldh [$91], a                                  ; $4e33: $e0 $91
    and b                                         ; $4e35: $a0
    pop hl                                        ; $4e36: $e1
    add $e1                                       ; $4e37: $c6 $e1
    sbc c                                         ; $4e39: $99
    ld de, $4dc2                                  ; $4e3a: $11 $c2 $4d
    pop hl                                        ; $4e3d: $e1
    sub b                                         ; $4e3e: $90
    ld [c], a                                     ; $4e3f: $e2
    ld h, h                                       ; $4e40: $64
    adc d                                         ; $4e41: $8a
    ldh [$f0], a                                  ; $4e42: $e0 $f0
    pop af                                        ; $4e44: $f1
    sub c                                         ; $4e45: $91
    add sp, -$1c                                  ; $4e46: $e8 $e4
    call nc, Call_000_22e4                        ; $4e48: $d4 $e4 $22
    sub d                                         ; $4e4b: $92
    cp $e0                                        ; $4e4c: $fe $e0
    rst $38                                       ; $4e4e: $ff
    ld de, $1919                                  ; $4e4f: $11 $19 $19
    sbc c                                         ; $4e52: $99
    sbc c                                         ; $4e53: $99
    sub d                                         ; $4e54: $92
    sub d                                         ; $4e55: $92
    ld [hl+], a                                   ; $4e56: $22
    db $fc                                        ; $4e57: $fc
    db $fc                                        ; $4e58: $fc
    pop hl                                        ; $4e59: $e1
    rst $38                                       ; $4e5a: $ff
    pop hl                                        ; $4e5b: $e1
    ld de, $1999                                  ; $4e5c: $11 $99 $19
    sub d                                         ; $4e5f: $92
    add hl, de                                    ; $4e60: $19
    sub d                                         ; $4e61: $92
    dec sp                                        ; $4e62: $3b
    sbc c                                         ; $4e63: $99
    ld [hl+], a                                   ; $4e64: $22
    ld [c], a                                     ; $4e65: $e2
    db $e3                                        ; $4e66: $e3
    ld [hl+], a                                   ; $4e67: $22
    ld [hl+], a                                   ; $4e68: $22
    add hl, hl                                    ; $4e69: $29
    jp hl                                         ; $4e6a: $e9


    db $e3                                        ; $4e6b: $e3
    db $e4                                        ; $4e6c: $e4
    ldh [$80], a                                  ; $4e6d: $e0 $80
    ldh a, [$e3]                                  ; $4e6f: $f0 $e3
    jp hl                                         ; $4e71: $e9


    pop bc                                        ; $4e72: $c1
    rst $10                                       ; $4e73: $d7
    pop hl                                        ; $4e74: $e1
    sbc $e1                                       ; $4e75: $de $e1
    jp c, $88e1                                   ; $4e77: $da $e1 $88

    push hl                                       ; $4e7a: $e5
    adc c                                         ; $4e7b: $89
    db $e4                                        ; $4e7c: $e4
    sbc c                                         ; $4e7d: $99
    ld hl, sp-$54                                 ; $4e7e: $f8 $ac
    pop hl                                        ; $4e80: $e1
    jp nz, $f8e0                                  ; $4e81: $c2 $e0 $f8

    ldh [$99], a                                  ; $4e84: $e0 $99
    sub d                                         ; $4e86: $92
    add hl, de                                    ; $4e87: $19
    sbc c                                         ; $4e88: $99
    ld de, $1939                                  ; $4e89: $11 $39 $19
    add $e3                                       ; $4e8c: $c6 $e3
    pop af                                        ; $4e8e: $f1
    pop hl                                        ; $4e8f: $e1
    add hl, hl                                    ; $4e90: $29
    sub c                                         ; $4e91: $91
    add hl, hl                                    ; $4e92: $29
    ld hl, sp-$40                                 ; $4e93: $f8 $c0
    xor l                                         ; $4e95: $ad
    pop hl                                        ; $4e96: $e1
    nop                                           ; $4e97: $00
    cp $e0                                        ; $4e98: $fe $e0
    cp h                                          ; $4e9a: $bc
    ld [c], a                                     ; $4e9b: $e2
    and d                                         ; $4e9c: $a2
    db $e4                                        ; $4e9d: $e4
    ldh a, [$e1]                                  ; $4e9e: $f0 $e1
    add h                                         ; $4ea0: $84
    ld [c], a                                     ; $4ea1: $e2
    and h                                         ; $4ea2: $a4
    ld [c], a                                     ; $4ea3: $e2
    and a                                         ; $4ea4: $a7
    db $e4                                        ; $4ea5: $e4
    dec [hl]                                      ; $4ea6: $35
    ld [c], a                                     ; $4ea7: $e2
    nop                                           ; $4ea8: $00
    ret nz                                        ; $4ea9: $c0

    push bc                                       ; $4eaa: $c5
    cp d                                          ; $4eab: $ba
    ret nz                                        ; $4eac: $c0

    ld a, d                                       ; $4ead: $7a
    push hl                                       ; $4eae: $e5
    cp $fd                                        ; $4eaf: $fe $fd
    sbc b                                         ; $4eb1: $98
    push bc                                       ; $4eb2: $c5
    rst $38                                       ; $4eb3: $ff
    rst $38                                       ; $4eb4: $ff
    rst $38                                       ; $4eb5: $ff
    rst $38                                       ; $4eb6: $ff
    rst $38                                       ; $4eb7: $ff
    rst $38                                       ; $4eb8: $ff
    nop                                           ; $4eb9: $00
    rst $38                                       ; $4eba: $ff
    rst $38                                       ; $4ebb: $ff
    rst $38                                       ; $4ebc: $ff
    rst $38                                       ; $4ebd: $ff
    and $a3                                       ; $4ebe: $e6 $a3
    ld h, a                                       ; $4ec0: $67
    add $ff                                       ; $4ec1: $c6 $ff
    rst $38                                       ; $4ec3: $ff
    rst $38                                       ; $4ec4: $ff
    rst $38                                       ; $4ec5: $ff
    rst $38                                       ; $4ec6: $ff
    rst $38                                       ; $4ec7: $ff
    rst $38                                       ; $4ec8: $ff
    rst $38                                       ; $4ec9: $ff
    db $f4                                        ; $4eca: $f4
    rst $38                                       ; $4ecb: $ff
    rst $38                                       ; $4ecc: $ff
    sbc l                                         ; $4ecd: $9d
    ld h, d                                       ; $4ece: $62
    db $dd                                        ; $4ecf: $dd
    rst $38                                       ; $4ed0: $ff
    rst $20                                       ; $4ed1: $e7
    pop de                                        ; $4ed2: $d1
    db $dd                                        ; $4ed3: $dd
    ld de, $e0d1                                  ; $4ed4: $11 $d1 $e0
    jr @-$58                                      ; $4ed7: $18 $a6

    ld c, $ed                                     ; $4ed9: $0e $ed
    ret nz                                        ; $4edb: $c0

    ld a, l                                       ; $4edc: $7d
    and b                                         ; $4edd: $a0
    ld [hl], l                                    ; $4ede: $75
    jr c, jr_051_4f41                             ; $4edf: $38 $60

    rla                                           ; $4ee1: $17
    ld de, $5f77                                  ; $4ee2: $11 $77 $5f
    rla                                           ; $4ee5: $17
    ld [hl], a                                    ; $4ee6: $77
    ld de, $7711                                  ; $4ee7: $11 $11 $77
    rst $38                                       ; $4eea: $ff
    db $e3                                        ; $4eeb: $e3
    ld [hl], c                                    ; $4eec: $71
    cp $e4                                        ; $4eed: $fe $e4
    ld d, b                                       ; $4eef: $50
    rst $38                                       ; $4ef0: $ff
    db $fc                                        ; $4ef1: $fc
    adc [hl]                                      ; $4ef2: $8e
    rst $18                                       ; $4ef3: $df
    rst $38                                       ; $4ef4: $ff
    rst $38                                       ; $4ef5: $ff
    ld e, b                                       ; $4ef6: $58
    rst $18                                       ; $4ef7: $df
    ld de, $ee10                                  ; $4ef8: $11 $10 $ee
    call z, $e4ff                                 ; $4efb: $cc $ff $e4
    inc a                                         ; $4efe: $3c
    or [hl]                                       ; $4eff: $b6
    push af                                       ; $4f00: $f5
    ret nc                                        ; $4f01: $d0

    ret nz                                        ; $4f02: $c0

    rst $10                                       ; $4f03: $d7
    db $dd                                        ; $4f04: $dd
    ld [hl], a                                    ; $4f05: $77
    rst $10                                       ; $4f06: $d7
    ld h, b                                       ; $4f07: $60
    cp $b8                                        ; $4f08: $fe $b8
    ld [$065f], a                                 ; $4f0a: $ea $5f $06
    nop                                           ; $4f0d: $00
    ld h, [hl]                                    ; $4f0e: $66
    ld de, $6619                                  ; $4f0f: $11 $19 $66
    add b                                         ; $4f12: $80
    sub [hl]                                      ; $4f13: $96
    ld [hl], d                                    ; $4f14: $72
    ld h, h                                       ; $4f15: $64
    dec b                                         ; $4f16: $05
    ld l, c                                       ; $4f17: $69
    ld l, c                                       ; $4f18: $69
    ld h, h                                       ; $4f19: $64
    ld h, b                                       ; $4f1a: $60
    ld de, $9863                                  ; $4f1b: $11 $63 $98
    db $f4                                        ; $4f1e: $f4
    db $fd                                        ; $4f1f: $fd
    ld [$ff26], a                                 ; $4f20: $ea $26 $ff
    rst $38                                       ; $4f23: $ff
    rst $38                                       ; $4f24: $ff
    nop                                           ; $4f25: $00
    ld a, [c]                                     ; $4f26: $f2
    pop af                                        ; $4f27: $f1
    ld a, b                                       ; $4f28: $78
    db $dd                                        ; $4f29: $dd
    rst $38                                       ; $4f2a: $ff
    rst $38                                       ; $4f2b: $ff
    rst $38                                       ; $4f2c: $ff
    rst $38                                       ; $4f2d: $ff
    rst $38                                       ; $4f2e: $ff
    rst $38                                       ; $4f2f: $ff
    rst $38                                       ; $4f30: $ff
    rst $38                                       ; $4f31: $ff
    rst $38                                       ; $4f32: $ff
    rst $38                                       ; $4f33: $ff
    rst $38                                       ; $4f34: $ff
    rst $38                                       ; $4f35: $ff
    nop                                           ; $4f36: $00
    xor b                                         ; $4f37: $a8
    cp a                                          ; $4f38: $bf
    rst $38                                       ; $4f39: $ff
    rst $38                                       ; $4f3a: $ff
    rst $38                                       ; $4f3b: $ff
    rst $38                                       ; $4f3c: $ff
    rst $38                                       ; $4f3d: $ff
    rst $38                                       ; $4f3e: $ff
    xor b                                         ; $4f3f: $a8
    adc c                                         ; $4f40: $89

jr_051_4f41:
    nop                                           ; $4f41: $00
    nop                                           ; $4f42: $00
    nop                                           ; $4f43: $00
    ld bc, $ff00                                  ; $4f44: $01 $00 $ff
    rst $38                                       ; $4f47: $ff
    rst $38                                       ; $4f48: $ff
    rst $38                                       ; $4f49: $ff
    rst $38                                       ; $4f4a: $ff
    rst $38                                       ; $4f4b: $ff
    rst $38                                       ; $4f4c: $ff
    rst $38                                       ; $4f4d: $ff
    rst $38                                       ; $4f4e: $ff
    rst $38                                       ; $4f4f: $ff
    rst $38                                       ; $4f50: $ff
    rst $38                                       ; $4f51: $ff
    rst $38                                       ; $4f52: $ff
    rst $38                                       ; $4f53: $ff
    nop                                           ; $4f54: $00
    rst $38                                       ; $4f55: $ff
    rst $38                                       ; $4f56: $ff
    rst $38                                       ; $4f57: $ff
    rst $38                                       ; $4f58: $ff
    rst $38                                       ; $4f59: $ff
    rst $38                                       ; $4f5a: $ff
    rst $38                                       ; $4f5b: $ff
    rst $38                                       ; $4f5c: $ff
    rst $38                                       ; $4f5d: $ff
    rst $38                                       ; $4f5e: $ff
    rst $38                                       ; $4f5f: $ff
    rst $38                                       ; $4f60: $ff
    rst $38                                       ; $4f61: $ff
    rst $38                                       ; $4f62: $ff
    rst $38                                       ; $4f63: $ff
    rst $38                                       ; $4f64: $ff
    nop                                           ; $4f65: $00
    rst $38                                       ; $4f66: $ff
    rst $38                                       ; $4f67: $ff
    rst $38                                       ; $4f68: $ff
    rst $38                                       ; $4f69: $ff
    rst $38                                       ; $4f6a: $ff
    rst $38                                       ; $4f6b: $ff
    rst $38                                       ; $4f6c: $ff
    rst $38                                       ; $4f6d: $ff
    rst $38                                       ; $4f6e: $ff
    rst $38                                       ; $4f6f: $ff
    rst $38                                       ; $4f70: $ff
    rst $38                                       ; $4f71: $ff
    rst $38                                       ; $4f72: $ff
    rst $38                                       ; $4f73: $ff
    rst $38                                       ; $4f74: $ff
    rst $38                                       ; $4f75: $ff
    rst $38                                       ; $4f76: $ff
    nop                                           ; $4f77: $00
    nop                                           ; $4f78: $00
    dec c                                         ; $4f79: $0d
    nop                                           ; $4f7a: $00
    db $dd                                        ; $4f7b: $dd
    dec c                                         ; $4f7c: $0d
    db $dd                                        ; $4f7d: $dd
    db $dd                                        ; $4f7e: $dd
    ld a, e                                       ; $4f7f: $7b
    db $dd                                        ; $4f80: $dd
    xor $ff                                       ; $4f81: $ee $ff
    ldh [$de], a                                  ; $4f83: $e0 $de
    xor $d0                                       ; $4f85: $ee $d0
    nop                                           ; $4f87: $00
    ld hl, sp-$1f                                 ; $4f88: $f8 $e1
    rst $30                                       ; $4f8a: $f7
    xor $ee                                       ; $4f8b: $ee $ee
    nop                                           ; $4f8d: $00
    ld hl, sp-$1d                                 ; $4f8e: $f8 $e3
    rst $28                                       ; $4f90: $ef
    nop                                           ; $4f91: $00
    rrca                                          ; $4f92: $0f
    ldh a, [$7f]                                  ; $4f93: $f0 $7f
    nop                                           ; $4f95: $00
    rst $38                                       ; $4f96: $ff
    nop                                           ; $4f97: $00
    rst $38                                       ; $4f98: $ff
    ldh a, [rIE]                                  ; $4f99: $f0 $ff
    rst $38                                       ; $4f9b: $ff
    db $dd                                        ; $4f9c: $dd
    ldh [rIE], a                                  ; $4f9d: $e0 $ff
    ret nc                                        ; $4f9f: $d0

    db $dd                                        ; $4fa0: $dd
    nop                                           ; $4fa1: $00
    ret nc                                        ; $4fa2: $d0

    nop                                           ; $4fa3: $00
    rst $38                                       ; $4fa4: $ff
    rst $38                                       ; $4fa5: $ff
    rrca                                          ; $4fa6: $0f
    ld l, $ef                                     ; $4fa7: $2e $ef
    ldh [rP1], a                                  ; $4fa9: $e0 $00
    rrca                                          ; $4fab: $0f
    cp e                                          ; $4fac: $bb
    rst $38                                       ; $4fad: $ff
    db $e4                                        ; $4fae: $e4
    sbc c                                         ; $4faf: $99
    rst $38                                       ; $4fb0: $ff
    db $e4                                        ; $4fb1: $e4
    ldh a, [$e3]                                  ; $4fb2: $f0 $e3
    rst $38                                       ; $4fb4: $ff
    dec bc                                        ; $4fb5: $0b
    cp e                                          ; $4fb6: $bb
    nop                                           ; $4fb7: $00
    nop                                           ; $4fb8: $00
    or b                                          ; $4fb9: $b0
    nop                                           ; $4fba: $00
    cp e                                          ; $4fbb: $bb
    nop                                           ; $4fbc: $00
    di                                            ; $4fbd: $f3
    cp e                                          ; $4fbe: $bb
    or b                                          ; $4fbf: $b0
    add sp, -$1b                                  ; $4fc0: $e8 $e5
    xor $e0                                       ; $4fc2: $ee $e0
    cp e                                          ; $4fc4: $bb
    nop                                           ; $4fc5: $00
    dec bc                                        ; $4fc6: $0b
    nop                                           ; $4fc7: $00
    ld a, l                                       ; $4fc8: $7d
    nop                                           ; $4fc9: $00
    ret nc                                        ; $4fca: $d0

    push hl                                       ; $4fcb: $e5
    cp e                                          ; $4fcc: $bb
    xor d                                         ; $4fcd: $aa
    cp e                                          ; $4fce: $bb
    xor d                                         ; $4fcf: $aa
    cp d                                          ; $4fd0: $ba
    cp $e0                                        ; $4fd1: $fe $e0
    jp z, $e5ff                                   ; $4fd3: $ca $ff $e5

    sbc d                                         ; $4fd6: $9a
    cp $e0                                        ; $4fd7: $fe $e0
    sbc c                                         ; $4fd9: $99
    cp $e1                                        ; $4fda: $fe $e1
    cp b                                          ; $4fdc: $b8
    ld [$bbbb], a                                 ; $4fdd: $ea $bb $bb
    db $db                                        ; $4fe0: $db
    adc b                                         ; $4fe1: $88
    adc b                                         ; $4fe2: $88
    sbc b                                         ; $4fe3: $98
    db $e3                                        ; $4fe4: $e3
    call z, $88cc                                 ; $4fe5: $cc $cc $88
    db $e4                                        ; $4fe8: $e4
    cp $0f                                        ; $4fe9: $fe $0f
    ld a, e                                       ; $4feb: $7b
    xor $00                                       ; $4fec: $ee $00
    ld l, b                                       ; $4fee: $68
    ldh [$ed], a                                  ; $4fef: $e0 $ed
    db $dd                                        ; $4ff1: $dd
    xor $d0                                       ; $4ff2: $ee $d0
    ld h, c                                       ; $4ff4: $61
    ldh [rP1], a                                  ; $4ff5: $e0 $00
    ld c, b                                       ; $4ff7: $48
    rst $38                                       ; $4ff8: $ff
    ld c, b                                       ; $4ff9: $48
    rst $38                                       ; $4ffa: $ff
    sub b                                         ; $4ffb: $90
    ld [$ff48], a                                 ; $4ffc: $ea $48 $ff
    ld c, b                                       ; $4fff: $48
    rst $38                                       ; $5000: $ff
    ld c, b                                       ; $5001: $48
    rst $38                                       ; $5002: $ff
    rst $38                                       ; $5003: $ff
    rst $38                                       ; $5004: $ff
    rst $38                                       ; $5005: $ff
    rst $38                                       ; $5006: $ff
    ld hl, sp-$01                                 ; $5007: $f8 $ff
    rst $38                                       ; $5009: $ff
    rst $38                                       ; $500a: $ff
    rst $38                                       ; $500b: $ff
    ld hl, sp-$09                                 ; $500c: $f8 $f7
    ld c, $ee                                     ; $500e: $0e $ee
    call $bcee                                    ; $5010: $cd $ee $bc
    rst $38                                       ; $5013: $ff
    ret nc                                        ; $5014: $d0

    cp e                                          ; $5015: $bb
    or b                                          ; $5016: $b0
    xor $e0                                       ; $5017: $ee $e0
    xor $f8                                       ; $5019: $ee $f8
    rrca                                          ; $501b: $0f
    rst $30                                       ; $501c: $f7
    adc c                                         ; $501d: $89
    add hl, bc                                    ; $501e: $09
    sbc c                                         ; $501f: $99
    db $db                                        ; $5020: $db
    and h                                         ; $5021: $a4
    ldh [$dd], a                                  ; $5022: $e0 $dd
    rst $28                                       ; $5024: $ef
    db $dd                                        ; $5025: $dd
    rst $10                                       ; $5026: $d7
    rst $28                                       ; $5027: $ef
    ret nc                                        ; $5028: $d0

    rrca                                          ; $5029: $0f
    ret nz                                        ; $502a: $c0

    ld [c], a                                     ; $502b: $e2
    inc c                                         ; $502c: $0c
    cp d                                          ; $502d: $ba
    pop hl                                        ; $502e: $e1
    db $dd                                        ; $502f: $dd
    ret nc                                        ; $5030: $d0

    or e                                          ; $5031: $b3
    call z, Call_000_10cc                         ; $5032: $cc $cc $10
    pop bc                                        ; $5035: $c1
    ld a, [c]                                     ; $5036: $f2
    and d                                         ; $5037: $a2
    ld [$d800], sp                                ; $5038: $08 $00 $d8
    ldh [$f0], a                                  ; $503b: $e0 $f0
    rra                                           ; $503d: $1f
    nop                                           ; $503e: $00
    adc b                                         ; $503f: $88
    nop                                           ; $5040: $00
    sbc c                                         ; $5041: $99
    sub b                                         ; $5042: $90
    sbc [hl]                                      ; $5043: $9e
    rst $38                                       ; $5044: $ff
    rst $38                                       ; $5045: $ff
    rst $38                                       ; $5046: $ff
    ld a, [c]                                     ; $5047: $f2
    pop af                                        ; $5048: $f1
    ld b, e                                       ; $5049: $43
    ld [$9688], sp                                ; $504a: $08 $88 $96
    and d                                         ; $504d: $a2
    and b                                         ; $504e: $a0
    ldh [$9d], a                                  ; $504f: $e0 $9d
    and $fe                                       ; $5051: $e6 $fe
    and b                                         ; $5053: $a0
    inc c                                         ; $5054: $0c
    ld [c], a                                     ; $5055: $e2
    and h                                         ; $5056: $a4
    ld bc, $bfcc                                  ; $5057: $01 $cc $bf
    rst $38                                       ; $505a: $ff
    rst $38                                       ; $505b: $ff
    rst $38                                       ; $505c: $ff
    rst $38                                       ; $505d: $ff
    rst $38                                       ; $505e: $ff
    rst $38                                       ; $505f: $ff
    rst $38                                       ; $5060: $ff
    rst $38                                       ; $5061: $ff
    rst $38                                       ; $5062: $ff
    rst $38                                       ; $5063: $ff
    rst $38                                       ; $5064: $ff
    rst $38                                       ; $5065: $ff
    rst $38                                       ; $5066: $ff
    nop                                           ; $5067: $00
    rst $38                                       ; $5068: $ff
    rst $38                                       ; $5069: $ff
    rst $38                                       ; $506a: $ff
    rst $38                                       ; $506b: $ff
    rst $38                                       ; $506c: $ff
    rst $38                                       ; $506d: $ff
    rst $38                                       ; $506e: $ff
    rst $38                                       ; $506f: $ff
    rst $38                                       ; $5070: $ff
    rst $38                                       ; $5071: $ff
    rst $38                                       ; $5072: $ff
    rst $38                                       ; $5073: $ff
    rst $38                                       ; $5074: $ff
    rst $38                                       ; $5075: $ff
    rst $38                                       ; $5076: $ff
    rst $38                                       ; $5077: $ff
    nop                                           ; $5078: $00
    rst $38                                       ; $5079: $ff
    rst $38                                       ; $507a: $ff
    rst $38                                       ; $507b: $ff
    and $00                                       ; $507c: $e6 $00
    nop                                           ; $507e: $00
    nop                                           ; $507f: $00
    sub b                                         ; $5080: $90
    ld d, b                                       ; $5081: $50
    sub b                                         ; $5082: $90
    ld e, b                                       ; $5083: $58
    nop                                           ; $5084: $00
    nop                                           ; $5085: $00
    nop                                           ; $5086: $00
    nop                                           ; $5087: $00
    nop                                           ; $5088: $00
    nop                                           ; $5089: $00
    nop                                           ; $508a: $00
    nop                                           ; $508b: $00
    nop                                           ; $508c: $00
    nop                                           ; $508d: $00
    nop                                           ; $508e: $00
    nop                                           ; $508f: $00
    nop                                           ; $5090: $00
    nop                                           ; $5091: $00
    nop                                           ; $5092: $00
    nop                                           ; $5093: $00
    dec b                                         ; $5094: $05
    nop                                           ; $5095: $00
    nop                                           ; $5096: $00
    nop                                           ; $5097: $00
    dec bc                                        ; $5098: $0b
    nop                                           ; $5099: $00
    nop                                           ; $509a: $00
    nop                                           ; $509b: $00
    nop                                           ; $509c: $00
    nop                                           ; $509d: $00
    ld [bc], a                                    ; $509e: $02
    nop                                           ; $509f: $00
    jr z, jr_051_50a2                             ; $50a0: $28 $00

jr_051_50a2:
    nop                                           ; $50a2: $00
    nop                                           ; $50a3: $00
    sub b                                         ; $50a4: $90
    nop                                           ; $50a5: $00
    nop                                           ; $50a6: $00
    nop                                           ; $50a7: $00
    push af                                       ; $50a8: $f5
    nop                                           ; $50a9: $00
    ret z                                         ; $50aa: $c8

    nop                                           ; $50ab: $00
    nop                                           ; $50ac: $00
    nop                                           ; $50ad: $00
    add b                                         ; $50ae: $80
    nop                                           ; $50af: $00
    nop                                           ; $50b0: $00
    nop                                           ; $50b1: $00
    nop                                           ; $50b2: $00
    nop                                           ; $50b3: $00
    ld [bc], a                                    ; $50b4: $02
    nop                                           ; $50b5: $00
    nop                                           ; $50b6: $00
    nop                                           ; $50b7: $00
    rla                                           ; $50b8: $17
    nop                                           ; $50b9: $00
    ld bc, $0000                                  ; $50ba: $01 $00 $00
    nop                                           ; $50bd: $00
    dec b                                         ; $50be: $05
    nop                                           ; $50bf: $00
    ld d, b                                       ; $50c0: $50
    nop                                           ; $50c1: $00
    nop                                           ; $50c2: $00
    nop                                           ; $50c3: $00
    ret z                                         ; $50c4: $c8

    nop                                           ; $50c5: $00
    nop                                           ; $50c6: $00
    nop                                           ; $50c7: $00
    ld [$9000], a                                 ; $50c8: $ea $00 $90
    nop                                           ; $50cb: $00
    nop                                           ; $50cc: $00
    nop                                           ; $50cd: $00
    nop                                           ; $50ce: $00
    nop                                           ; $50cf: $00
    nop                                           ; $50d0: $00
    nop                                           ; $50d1: $00
    nop                                           ; $50d2: $00
    nop                                           ; $50d3: $00
    ld bc, $0000                                  ; $50d4: $01 $00 $00
    nop                                           ; $50d7: $00
    cpl                                           ; $50d8: $2f
    nop                                           ; $50d9: $00
    inc bc                                        ; $50da: $03
    nop                                           ; $50db: $00
    nop                                           ; $50dc: $00
    nop                                           ; $50dd: $00
    ld [bc], a                                    ; $50de: $02
    nop                                           ; $50df: $00
    and b                                         ; $50e0: $a0
    nop                                           ; $50e1: $00
    nop                                           ; $50e2: $00
    nop                                           ; $50e3: $00
    ld h, h                                       ; $50e4: $64
    nop                                           ; $50e5: $00
    nop                                           ; $50e6: $00
    nop                                           ; $50e7: $00
    call nc, Call_000_2000                        ; $50e8: $d4 $00 $20
    nop                                           ; $50eb: $00
    nop                                           ; $50ec: $00
    nop                                           ; $50ed: $00
    add b                                         ; $50ee: $80
    nop                                           ; $50ef: $00
    ld bc, $0000                                  ; $50f0: $01 $00 $00
    nop                                           ; $50f3: $00
    nop                                           ; $50f4: $00
    nop                                           ; $50f5: $00
    nop                                           ; $50f6: $00
    nop                                           ; $50f7: $00
    ld e, a                                       ; $50f8: $5f
    nop                                           ; $50f9: $00
    ld b, $00                                     ; $50fa: $06 $00
    nop                                           ; $50fc: $00
    nop                                           ; $50fd: $00
    dec b                                         ; $50fe: $05
    nop                                           ; $50ff: $00
    ld b, b                                       ; $5100: $40
    nop                                           ; $5101: $00
    nop                                           ; $5102: $00
    nop                                           ; $5103: $00
    or d                                          ; $5104: $b2
    nop                                           ; $5105: $00
    nop                                           ; $5106: $00
    nop                                           ; $5107: $00
    xor b                                         ; $5108: $a8
    nop                                           ; $5109: $00
    ld b, b                                       ; $510a: $40
    nop                                           ; $510b: $00
    nop                                           ; $510c: $00
    nop                                           ; $510d: $00
    nop                                           ; $510e: $00
    nop                                           ; $510f: $00
    ld [bc], a                                    ; $5110: $02
    nop                                           ; $5111: $00
    nop                                           ; $5112: $00
    nop                                           ; $5113: $00
    nop                                           ; $5114: $00
    nop                                           ; $5115: $00
    nop                                           ; $5116: $00
    nop                                           ; $5117: $00
    cp a                                          ; $5118: $bf
    nop                                           ; $5119: $00
    inc c                                         ; $511a: $0c
    nop                                           ; $511b: $00
    nop                                           ; $511c: $00
    nop                                           ; $511d: $00
    ld [bc], a                                    ; $511e: $02
    nop                                           ; $511f: $00
    add b                                         ; $5120: $80
    nop                                           ; $5121: $00
    nop                                           ; $5122: $00
    nop                                           ; $5123: $00
    ld e, c                                       ; $5124: $59
    nop                                           ; $5125: $00
    nop                                           ; $5126: $00
    nop                                           ; $5127: $00
    ld d, b                                       ; $5128: $50
    nop                                           ; $5129: $00
    add b                                         ; $512a: $80
    nop                                           ; $512b: $00
    nop                                           ; $512c: $00
    nop                                           ; $512d: $00
    add b                                         ; $512e: $80
    nop                                           ; $512f: $00
    db $ec                                        ; $5130: $ec
    rst $38                                       ; $5131: $ff
    ld hl, sp-$01                                 ; $5132: $f8 $ff
    ldh [$fe], a                                  ; $5134: $e0 $fe
    ld b, d                                       ; $5136: $42
    ld hl, sp-$38                                 ; $5137: $f8 $c8
    ldh a, [$80]                                  ; $5139: $f0 $80
    ldh [rNR10], a                                ; $513b: $e0 $10
    ldh [rP1], a                                  ; $513d: $e0 $00
    ret nz                                        ; $513f: $c0

    rst $38                                       ; $5140: $ff
    rst $38                                       ; $5141: $ff
    rst $38                                       ; $5142: $ff
    rst $38                                       ; $5143: $ff
    rst $38                                       ; $5144: $ff
    rst $38                                       ; $5145: $ff
    rst $30                                       ; $5146: $f7
    rst $38                                       ; $5147: $ff
    cp h                                          ; $5148: $bc
    rst $38                                       ; $5149: $ff
    add sp, -$01                                  ; $514a: $e8 $ff
    add c                                         ; $514c: $81
    cp $08                                        ; $514d: $fe $08
    ldh a, [$bc]                                  ; $514f: $f0 $bc
    rst $38                                       ; $5151: $ff

jr_051_5152:
    add sp, -$01                                  ; $5152: $e8 $ff
    add c                                         ; $5154: $81
    cp $08                                        ; $5155: $fe $08
    ldh a, [rNR41]                                ; $5157: $f0 $20
    ret nz                                        ; $5159: $c0

    nop                                           ; $515a: $00
    nop                                           ; $515b: $00
    nop                                           ; $515c: $00
    nop                                           ; $515d: $00
    nop                                           ; $515e: $00
    nop                                           ; $515f: $00

jr_051_5160:
    ld a, a                                       ; $5160: $7f
    rst $38                                       ; $5161: $ff
    cpl                                           ; $5162: $2f
    rst $38                                       ; $5163: $ff
    ccf                                           ; $5164: $3f
    rst $38                                       ; $5165: $ff
    rra                                           ; $5166: $1f
    rst $38                                       ; $5167: $ff
    or a                                          ; $5168: $b7
    ld a, a                                       ; $5169: $7f
    rra                                           ; $516a: $1f
    ld a, a                                       ; $516b: $7f
    rrca                                          ; $516c: $0f
    ld a, a                                       ; $516d: $7f
    ld c, a                                       ; $516e: $4f
    ccf                                           ; $516f: $3f
    rlca                                          ; $5170: $07
    rra                                           ; $5171: $1f
    ld [bc], a                                    ; $5172: $02
    rra                                           ; $5173: $1f
    inc de                                        ; $5174: $13
    rrca                                          ; $5175: $0f
    ld bc, $0b0f                                  ; $5176: $01 $0f $0b
    rlca                                          ; $5179: $07
    ld bc, $0007                                  ; $517a: $01 $07 $00
    rlca                                          ; $517d: $07
    inc b                                         ; $517e: $04
    inc bc                                        ; $517f: $03
    ld e, h                                       ; $5180: $5c
    rst $38                                       ; $5181: $ff
    nop                                           ; $5182: $00
    rst $38                                       ; $5183: $ff
    add c                                         ; $5184: $81
    inc a                                         ; $5185: $3c
    stop                                          ; $5186: $10 $00
    nop                                           ; $5188: $00
    nop                                           ; $5189: $00
    nop                                           ; $518a: $00
    nop                                           ; $518b: $00
    nop                                           ; $518c: $00
    nop                                           ; $518d: $00
    nop                                           ; $518e: $00
    nop                                           ; $518f: $00
    jr nz, jr_051_5152                            ; $5190: $20 $c0

    add b                                         ; $5192: $80
    ret nz                                        ; $5193: $c0

    nop                                           ; $5194: $00
    ldh [$90], a                                  ; $5195: $e0 $90
    ldh [$80], a                                  ; $5197: $e0 $80
    ldh [$80], a                                  ; $5199: $e0 $80
    ldh [rP1], a                                  ; $519b: $e0 $00
    ret nz                                        ; $519d: $c0

    jr nz, jr_051_5160                            ; $519e: $20 $c0

    rst $38                                       ; $51a0: $ff
    rst $38                                       ; $51a1: $ff

jr_051_51a2:
    ld a, l                                       ; $51a2: $7d
    rst $38                                       ; $51a3: $ff
    rst $28                                       ; $51a4: $ef
    rst $38                                       ; $51a5: $ff
    ld a, [hl-]                                   ; $51a6: $3a
    rst $38                                       ; $51a7: $ff
    nop                                           ; $51a8: $00
    rst $38                                       ; $51a9: $ff
    add c                                         ; $51aa: $81
    inc a                                         ; $51ab: $3c
    ld [$0000], sp                                ; $51ac: $08 $00 $00
    nop                                           ; $51af: $00
    and h                                         ; $51b0: $a4
    ld hl, sp-$20                                 ; $51b1: $f8 $e0
    ld hl, sp-$10                                 ; $51b3: $f8 $f0
    db $fc                                        ; $51b5: $fc
    ret nc                                        ; $51b6: $d0

    db $fc                                        ; $51b7: $fc
    ld a, [c]                                     ; $51b8: $f2
    db $fc                                        ; $51b9: $fc
    ldh [$fc], a                                  ; $51ba: $e0 $fc
    or b                                          ; $51bc: $b0
    ld hl, sp-$1c                                 ; $51bd: $f8 $e4
    ld hl, sp-$01                                 ; $51bf: $f8 $ff
    rst $38                                       ; $51c1: $ff
    rst $38                                       ; $51c2: $ff
    rst $38                                       ; $51c3: $ff
    rst $38                                       ; $51c4: $ff
    rst $38                                       ; $51c5: $ff
    rst $30                                       ; $51c6: $f7
    rst $38                                       ; $51c7: $ff
    cp [hl]                                       ; $51c8: $be
    rst $38                                       ; $51c9: $ff
    db $e3                                        ; $51ca: $e3
    rst $38                                       ; $51cb: $ff
    ld b, b                                       ; $51cc: $40
    rst $38                                       ; $51cd: $ff
    nop                                           ; $51ce: $00
    rst $20                                       ; $51cf: $e7
    db $fc                                        ; $51d0: $fc
    rst $38                                       ; $51d1: $ff

jr_051_51d2:
    or $ff                                        ; $51d2: $f6 $ff
    db $fc                                        ; $51d4: $fc
    rst $38                                       ; $51d5: $ff
    ld hl, sp-$02                                 ; $51d6: $f8 $fe
    add sp, -$02                                  ; $51d8: $e8 $fe
    ld hl, sp-$01                                 ; $51da: $f8 $ff
    db $fc                                        ; $51dc: $fc
    rst $38                                       ; $51dd: $ff
    db $f4                                        ; $51de: $f4
    rst $38                                       ; $51df: $ff
    jr nz, jr_051_51a2                            ; $51e0: $20 $c0

    nop                                           ; $51e2: $00
    add b                                         ; $51e3: $80
    nop                                           ; $51e4: $00
    nop                                           ; $51e5: $00
    nop                                           ; $51e6: $00
    nop                                           ; $51e7: $00
    nop                                           ; $51e8: $00
    nop                                           ; $51e9: $00
    nop                                           ; $51ea: $00
    nop                                           ; $51eb: $00
    nop                                           ; $51ec: $00
    nop                                           ; $51ed: $00

jr_051_51ee:
    nop                                           ; $51ee: $00
    nop                                           ; $51ef: $00
    nop                                           ; $51f0: $00
    ret nz                                        ; $51f1: $c0

    nop                                           ; $51f2: $00
    add b                                         ; $51f3: $80
    add b                                         ; $51f4: $80
    nop                                           ; $51f5: $00
    nop                                           ; $51f6: $00
    nop                                           ; $51f7: $00
    nop                                           ; $51f8: $00
    nop                                           ; $51f9: $00
    nop                                           ; $51fa: $00
    nop                                           ; $51fb: $00
    nop                                           ; $51fc: $00
    nop                                           ; $51fd: $00
    nop                                           ; $51fe: $00
    nop                                           ; $51ff: $00
    nop                                           ; $5200: $00
    ret nz                                        ; $5201: $c0

    ld b, b                                       ; $5202: $40
    add b                                         ; $5203: $80
    nop                                           ; $5204: $00
    nop                                           ; $5205: $00
    nop                                           ; $5206: $00
    nop                                           ; $5207: $00
    nop                                           ; $5208: $00
    nop                                           ; $5209: $00
    nop                                           ; $520a: $00
    nop                                           ; $520b: $00
    nop                                           ; $520c: $00
    nop                                           ; $520d: $00
    nop                                           ; $520e: $00
    nop                                           ; $520f: $00
    jr nz, jr_051_51d2                            ; $5210: $20 $c0

    nop                                           ; $5212: $00
    add b                                         ; $5213: $80
    add b                                         ; $5214: $80
    nop                                           ; $5215: $00
    nop                                           ; $5216: $00
    nop                                           ; $5217: $00
    nop                                           ; $5218: $00
    nop                                           ; $5219: $00
    nop                                           ; $521a: $00
    nop                                           ; $521b: $00
    nop                                           ; $521c: $00
    nop                                           ; $521d: $00
    nop                                           ; $521e: $00
    nop                                           ; $521f: $00
    db $ec                                        ; $5220: $ec
    rst $38                                       ; $5221: $ff
    ld sp, hl                                     ; $5222: $f9
    cp $e6                                        ; $5223: $fe $e6
    ld hl, sp+$48                                 ; $5225: $f8 $48
    ldh a, [$d0]                                  ; $5227: $f0 $d0
    ldh [$a8], a                                  ; $5229: $e0 $a8
    ret nz                                        ; $522b: $c0

    jr nz, jr_051_51ee                            ; $522c: $20 $c0

    ld b, b                                       ; $522e: $40
    add b                                         ; $522f: $80
    rst $38                                       ; $5230: $ff
    rst $38                                       ; $5231: $ff
    rst $38                                       ; $5232: $ff
    rst $38                                       ; $5233: $ff
    rst $38                                       ; $5234: $ff
    rst $38                                       ; $5235: $ff
    rst $30                                       ; $5236: $f7
    rst $38                                       ; $5237: $ff
    cp h                                          ; $5238: $bc
    rst $38                                       ; $5239: $ff
    jp hl                                         ; $523a: $e9


    cp $8e                                        ; $523b: $fe $8e
    ldh a, [$30]                                  ; $523d: $f0 $30
    ret nz                                        ; $523f: $c0

    cp h                                          ; $5240: $bc
    rst $38                                       ; $5241: $ff
    jp hl                                         ; $5242: $e9


    cp $8e                                        ; $5243: $fe $8e
    ldh a, [$30]                                  ; $5245: $f0 $30
    ret nz                                        ; $5247: $c0

    ret z                                         ; $5248: $c8

    nop                                           ; $5249: $00
    nop                                           ; $524a: $00
    nop                                           ; $524b: $00
    nop                                           ; $524c: $00
    nop                                           ; $524d: $00
    nop                                           ; $524e: $00
    nop                                           ; $524f: $00
    ld a, a                                       ; $5250: $7f
    rst $38                                       ; $5251: $ff
    cpl                                           ; $5252: $2f
    rst $38                                       ; $5253: $ff
    cp a                                          ; $5254: $bf
    ld a, a                                       ; $5255: $7f
    sbc a                                         ; $5256: $9f
    ld a, a                                       ; $5257: $7f
    ld [hl], a                                    ; $5258: $77
    ccf                                           ; $5259: $3f
    ld e, a                                       ; $525a: $5f
    ccf                                           ; $525b: $3f
    ld c, a                                       ; $525c: $4f
    ccf                                           ; $525d: $3f
    cpl                                           ; $525e: $2f
    rra                                           ; $525f: $1f
    rla                                           ; $5260: $17
    rrca                                          ; $5261: $0f
    ld [de], a                                    ; $5262: $12
    rrca                                          ; $5263: $0f
    dec bc                                        ; $5264: $0b
    rlca                                          ; $5265: $07
    add hl, bc                                    ; $5266: $09
    rlca                                          ; $5267: $07
    rla                                           ; $5268: $17
    inc bc                                        ; $5269: $03
    dec b                                         ; $526a: $05
    inc bc                                        ; $526b: $03
    inc b                                         ; $526c: $04
    inc bc                                        ; $526d: $03
    ld [bc], a                                    ; $526e: $02
    ld bc, $ff5c                                  ; $526f: $01 $5c $ff
    jp Jump_000_3c3c                              ; $5272: $c3 $3c $3c


    nop                                           ; $5275: $00
    ld [bc], a                                    ; $5276: $02
    nop                                           ; $5277: $00
    nop                                           ; $5278: $00
    nop                                           ; $5279: $00
    nop                                           ; $527a: $00
    nop                                           ; $527b: $00
    nop                                           ; $527c: $00
    nop                                           ; $527d: $00
    nop                                           ; $527e: $00
    nop                                           ; $527f: $00
    ld b, b                                       ; $5280: $40
    add b                                         ; $5281: $80
    ret nz                                        ; $5282: $c0

    add b                                         ; $5283: $80
    jr nz, @-$3e                                  ; $5284: $20 $c0

    and b                                         ; $5286: $a0
    ret nz                                        ; $5287: $c0

    and b                                         ; $5288: $a0
    ret nz                                        ; $5289: $c0

    and b                                         ; $528a: $a0
    ret nz                                        ; $528b: $c0

    ld d, b                                       ; $528c: $50
    add b                                         ; $528d: $80
    ld b, b                                       ; $528e: $40
    add b                                         ; $528f: $80
    rst $38                                       ; $5290: $ff
    rst $38                                       ; $5291: $ff
    ld a, l                                       ; $5292: $7d
    rst $38                                       ; $5293: $ff
    rst $28                                       ; $5294: $ef
    rst $38                                       ; $5295: $ff
    ld a, [hl-]                                   ; $5296: $3a
    rst $38                                       ; $5297: $ff
    jp Jump_000_3c3c                              ; $5298: $c3 $3c $3c


    nop                                           ; $529b: $00
    ld b, b                                       ; $529c: $40
    nop                                           ; $529d: $00
    nop                                           ; $529e: $00
    nop                                           ; $529f: $00
    xor b                                         ; $52a0: $a8
    ldh a, [$ea]                                  ; $52a1: $f0 $ea
    ldh a, [$f4]                                  ; $52a3: $f0 $f4
    ld hl, sp-$2c                                 ; $52a5: $f8 $d4
    ld hl, sp-$0c                                 ; $52a7: $f8 $f4
    ld hl, sp-$1c                                 ; $52a9: $f8 $e4
    ld hl, sp-$48                                 ; $52ab: $f8 $b8
    ldh a, [$e8]                                  ; $52ad: $f0 $e8
    ldh a, [rIE]                                  ; $52af: $f0 $ff
    rst $38                                       ; $52b1: $ff
    rst $38                                       ; $52b2: $ff
    rst $38                                       ; $52b3: $ff
    rst $38                                       ; $52b4: $ff
    rst $38                                       ; $52b5: $ff
    rst $30                                       ; $52b6: $f7
    rst $38                                       ; $52b7: $ff
    cp [hl]                                       ; $52b8: $be
    rst $38                                       ; $52b9: $ff
    db $e3                                        ; $52ba: $e3
    rst $38                                       ; $52bb: $ff
    ld e, b                                       ; $52bc: $58
    rst $20                                       ; $52bd: $e7
    ld h, [hl]                                    ; $52be: $66
    add c                                         ; $52bf: $81
    db $fc                                        ; $52c0: $fc
    rst $38                                       ; $52c1: $ff
    rst $30                                       ; $52c2: $f7
    cp $fd                                        ; $52c3: $fe $fd
    cp $fa                                        ; $52c5: $fe $fa
    db $fc                                        ; $52c7: $fc
    ld [$f9fc], a                                 ; $52c8: $ea $fc $f9
    cp $fd                                        ; $52cb: $fe $fd
    cp $f4                                        ; $52cd: $fe $f4
    rst $38                                       ; $52cf: $ff
    ld c, b                                       ; $52d0: $48
    add b                                         ; $52d1: $80
    add b                                         ; $52d2: $80
    nop                                           ; $52d3: $00
    nop                                           ; $52d4: $00
    nop                                           ; $52d5: $00
    nop                                           ; $52d6: $00
    nop                                           ; $52d7: $00
    nop                                           ; $52d8: $00
    nop                                           ; $52d9: $00
    nop                                           ; $52da: $00
    nop                                           ; $52db: $00
    nop                                           ; $52dc: $00
    nop                                           ; $52dd: $00
    nop                                           ; $52de: $00
    nop                                           ; $52df: $00
    ld b, b                                       ; $52e0: $40
    add b                                         ; $52e1: $80
    add b                                         ; $52e2: $80
    nop                                           ; $52e3: $00
    nop                                           ; $52e4: $00
    nop                                           ; $52e5: $00
    nop                                           ; $52e6: $00
    nop                                           ; $52e7: $00
    add b                                         ; $52e8: $80
    nop                                           ; $52e9: $00
    nop                                           ; $52ea: $00
    nop                                           ; $52eb: $00
    nop                                           ; $52ec: $00
    nop                                           ; $52ed: $00
    nop                                           ; $52ee: $00
    nop                                           ; $52ef: $00
    ret nz                                        ; $52f0: $c0

    nop                                           ; $52f1: $00
    add b                                         ; $52f2: $80
    nop                                           ; $52f3: $00
    nop                                           ; $52f4: $00
    nop                                           ; $52f5: $00
    nop                                           ; $52f6: $00
    nop                                           ; $52f7: $00
    nop                                           ; $52f8: $00
    nop                                           ; $52f9: $00
    nop                                           ; $52fa: $00
    nop                                           ; $52fb: $00
    nop                                           ; $52fc: $00
    nop                                           ; $52fd: $00
    nop                                           ; $52fe: $00
    nop                                           ; $52ff: $00
    add b                                         ; $5300: $80
    nop                                           ; $5301: $00
    nop                                           ; $5302: $00
    nop                                           ; $5303: $00
    nop                                           ; $5304: $00
    nop                                           ; $5305: $00
    nop                                           ; $5306: $00
    nop                                           ; $5307: $00
    nop                                           ; $5308: $00
    nop                                           ; $5309: $00
    nop                                           ; $530a: $00
    nop                                           ; $530b: $00
    nop                                           ; $530c: $00
    nop                                           ; $530d: $00
    nop                                           ; $530e: $00
    nop                                           ; $530f: $00
    db $ed                                        ; $5310: $ed
    cp $fe                                        ; $5311: $fe $fe
    ld hl, sp-$18                                 ; $5313: $f8 $e8
    ldh a, [rHDMA2]                               ; $5315: $f0 $52
    ldh [$e8], a                                  ; $5317: $e0 $e8
    ret nz                                        ; $5319: $c0

    ret nz                                        ; $531a: $c0

    add b                                         ; $531b: $80
    ld d, b                                       ; $531c: $50
    add b                                         ; $531d: $80
    add b                                         ; $531e: $80
    nop                                           ; $531f: $00
    rst $38                                       ; $5320: $ff
    rst $38                                       ; $5321: $ff
    rst $38                                       ; $5322: $ff
    rst $38                                       ; $5323: $ff
    rst $38                                       ; $5324: $ff
    rst $38                                       ; $5325: $ff
    rst $30                                       ; $5326: $f7
    rst $38                                       ; $5327: $ff
    cp l                                          ; $5328: $bd
    cp $ee                                        ; $5329: $fe $ee
    ldh a, [$b1]                                  ; $532b: $f0 $b1
    ret nz                                        ; $532d: $c0

    ret z                                         ; $532e: $c8

    nop                                           ; $532f: $00
    cp l                                          ; $5330: $bd
    cp $ee                                        ; $5331: $fe $ee
    ldh a, [$b1]                                  ; $5333: $f0 $b1
    ret nz                                        ; $5335: $c0

    ret z                                         ; $5336: $c8

    nop                                           ; $5337: $00
    jr nz, jr_051_533a                            ; $5338: $20 $00

jr_051_533a:
    nop                                           ; $533a: $00
    nop                                           ; $533b: $00
    nop                                           ; $533c: $00
    nop                                           ; $533d: $00
    nop                                           ; $533e: $00
    nop                                           ; $533f: $00
    rst $38                                       ; $5340: $ff
    ld a, a                                       ; $5341: $7f
    xor a                                         ; $5342: $af
    ld a, a                                       ; $5343: $7f
    ld a, a                                       ; $5344: $7f
    ccf                                           ; $5345: $3f
    ld e, a                                       ; $5346: $5f
    ccf                                           ; $5347: $3f
    or a                                          ; $5348: $b7
    rra                                           ; $5349: $1f
    ccf                                           ; $534a: $3f
    rra                                           ; $534b: $1f
    cpl                                           ; $534c: $2f
    rra                                           ; $534d: $1f
    ld e, a                                       ; $534e: $5f
    rrca                                          ; $534f: $0f
    rrca                                          ; $5350: $0f
    rlca                                          ; $5351: $07
    ld a, [bc]                                    ; $5352: $0a
    rlca                                          ; $5353: $07
    rla                                           ; $5354: $17
    inc bc                                        ; $5355: $03
    dec b                                         ; $5356: $05
    inc bc                                        ; $5357: $03
    dec bc                                        ; $5358: $0b
    ld bc, $0103                                  ; $5359: $01 $03 $01
    ld [bc], a                                    ; $535c: $02
    ld bc, $0005                                  ; $535d: $01 $05 $00
    rst $18                                       ; $5360: $df
    inc a                                         ; $5361: $3c
    inc a                                         ; $5362: $3c
    nop                                           ; $5363: $00
    ld b, d                                       ; $5364: $42
    nop                                           ; $5365: $00
    nop                                           ; $5366: $00
    nop                                           ; $5367: $00
    nop                                           ; $5368: $00
    nop                                           ; $5369: $00
    nop                                           ; $536a: $00
    nop                                           ; $536b: $00
    nop                                           ; $536c: $00
    nop                                           ; $536d: $00
    nop                                           ; $536e: $00
    nop                                           ; $536f: $00
    add b                                         ; $5370: $80
    nop                                           ; $5371: $00
    and b                                         ; $5372: $a0
    nop                                           ; $5373: $00
    ld b, b                                       ; $5374: $40
    add b                                         ; $5375: $80
    ret nz                                        ; $5376: $c0

    add b                                         ; $5377: $80
    ret nz                                        ; $5378: $c0

    add b                                         ; $5379: $80
    ret nz                                        ; $537a: $c0

    add b                                         ; $537b: $80
    and b                                         ; $537c: $a0
    nop                                           ; $537d: $00
    add b                                         ; $537e: $80

Jump_051_537f:
    nop                                           ; $537f: $00
    rst $38                                       ; $5380: $ff
    rst $38                                       ; $5381: $ff
    ld a, l                                       ; $5382: $7d
    rst $38                                       ; $5383: $ff
    rst $28                                       ; $5384: $ef
    rst $38                                       ; $5385: $ff
    ei                                            ; $5386: $fb
    inc a                                         ; $5387: $3c
    inc a                                         ; $5388: $3c
    nop                                           ; $5389: $00
    ld b, d                                       ; $538a: $42
    nop                                           ; $538b: $00
    nop                                           ; $538c: $00
    nop                                           ; $538d: $00
    nop                                           ; $538e: $00
    nop                                           ; $538f: $00
    or b                                          ; $5390: $b0
    ldh [$f4], a                                  ; $5391: $e0 $f4
    ldh [$f8], a                                  ; $5393: $e0 $f8
    ldh a, [$d8]                                  ; $5395: $f0 $d8
    ldh a, [$f8]                                  ; $5397: $f0 $f8
    ldh a, [$e8]                                  ; $5399: $f0 $e8
    ldh a, [$b4]                                  ; $539b: $f0 $b4
    ldh [$f0], a                                  ; $539d: $e0 $f0
    ldh [rIE], a                                  ; $539f: $e0 $ff
    rst $38                                       ; $53a1: $ff
    rst $38                                       ; $53a2: $ff
    rst $38                                       ; $53a3: $ff
    rst $38                                       ; $53a4: $ff
    rst $38                                       ; $53a5: $ff
    rst $30                                       ; $53a6: $f7
    rst $38                                       ; $53a7: $ff
    cp [hl]                                       ; $53a8: $be
    rst $38                                       ; $53a9: $ff
    ei                                            ; $53aa: $fb
    rst $20                                       ; $53ab: $e7
    ld h, [hl]                                    ; $53ac: $66
    add c                                         ; $53ad: $81
    sub c                                         ; $53ae: $91
    nop                                           ; $53af: $00
    db $fd                                        ; $53b0: $fd
    cp $f6                                        ; $53b1: $fe $f6
    db $fc                                        ; $53b3: $fc
    cp $fc                                        ; $53b4: $fe $fc
    db $fd                                        ; $53b6: $fd
    ld hl, sp-$14                                 ; $53b7: $f8 $ec
    ld hl, sp-$06                                 ; $53b9: $f8 $fa
    db $fc                                        ; $53bb: $fc
    cp $fc                                        ; $53bc: $fe $fc
    push af                                       ; $53be: $f5
    cp $20                                        ; $53bf: $fe $20
    nop                                           ; $53c1: $00
    nop                                           ; $53c2: $00
    nop                                           ; $53c3: $00
    nop                                           ; $53c4: $00
    nop                                           ; $53c5: $00
    nop                                           ; $53c6: $00
    nop                                           ; $53c7: $00
    nop                                           ; $53c8: $00
    nop                                           ; $53c9: $00
    nop                                           ; $53ca: $00
    nop                                           ; $53cb: $00
    nop                                           ; $53cc: $00
    nop                                           ; $53cd: $00
    nop                                           ; $53ce: $00
    nop                                           ; $53cf: $00
    nop                                           ; $53d0: $00
    nop                                           ; $53d1: $00
    nop                                           ; $53d2: $00
    nop                                           ; $53d3: $00
    add b                                         ; $53d4: $80
    nop                                           ; $53d5: $00
    nop                                           ; $53d6: $00
    nop                                           ; $53d7: $00
    nop                                           ; $53d8: $00
    nop                                           ; $53d9: $00
    nop                                           ; $53da: $00
    nop                                           ; $53db: $00
    nop                                           ; $53dc: $00
    nop                                           ; $53dd: $00
    nop                                           ; $53de: $00
    nop                                           ; $53df: $00
    and b                                         ; $53e0: $a0
    nop                                           ; $53e1: $00
    nop                                           ; $53e2: $00
    nop                                           ; $53e3: $00
    add b                                         ; $53e4: $80
    nop                                           ; $53e5: $00
    nop                                           ; $53e6: $00
    nop                                           ; $53e7: $00
    nop                                           ; $53e8: $00
    nop                                           ; $53e9: $00
    nop                                           ; $53ea: $00
    nop                                           ; $53eb: $00
    nop                                           ; $53ec: $00
    nop                                           ; $53ed: $00
    nop                                           ; $53ee: $00
    nop                                           ; $53ef: $00
    nop                                           ; $53f0: $00
    nop                                           ; $53f1: $00
    ld b, b                                       ; $53f2: $40
    nop                                           ; $53f3: $00
    nop                                           ; $53f4: $00
    nop                                           ; $53f5: $00
    nop                                           ; $53f6: $00
    nop                                           ; $53f7: $00
    nop                                           ; $53f8: $00
    nop                                           ; $53f9: $00
    nop                                           ; $53fa: $00
    nop                                           ; $53fb: $00
    nop                                           ; $53fc: $00
    nop                                           ; $53fd: $00
    nop                                           ; $53fe: $00
    nop                                           ; $53ff: $00
    ld [bc], a                                    ; $5400: $02
    add c                                         ; $5401: $81
    and b                                         ; $5402: $a0
    pop bc                                        ; $5403: $c1
    add b                                         ; $5404: $80
    pop bc                                        ; $5405: $c1
    add l                                         ; $5406: $85
    jp $c3a1                                      ; $5407: $c3 $a1 $c3


    nop                                           ; $540a: $00
    add e                                         ; $540b: $83
    dec b                                         ; $540c: $05
    add e                                         ; $540d: $83
    ld b, b                                       ; $540e: $40
    add c                                         ; $540f: $81
    ld b, c                                       ; $5410: $41
    add b                                         ; $5411: $80
    nop                                           ; $5412: $00
    add b                                         ; $5413: $80
    add b                                         ; $5414: $80
    ret nz                                        ; $5415: $c0

    and b                                         ; $5416: $a0
    ret nz                                        ; $5417: $c0

    ret nz                                        ; $5418: $c0

    ldh [rBCPS], a                                ; $5419: $e0 $68
    ldh a, [$f1]                                  ; $541b: $f0 $f1
    db $fc                                        ; $541d: $fc
    call c, Call_000_1eff                         ; $541e: $dc $ff $1e
    rst $38                                       ; $5421: $ff
    add b                                         ; $5422: $80
    ld e, $12                                     ; $5423: $1e $12
    nop                                           ; $5425: $00
    nop                                           ; $5426: $00
    nop                                           ; $5427: $00
    nop                                           ; $5428: $00
    nop                                           ; $5429: $00
    ld c, b                                       ; $542a: $48
    nop                                           ; $542b: $00
    ld bc, $5878                                  ; $542c: $01 $78 $58
    rst $38                                       ; $542f: $ff
    ld b, b                                       ; $5430: $40
    add c                                         ; $5431: $81
    add d                                         ; $5432: $82
    pop bc                                        ; $5433: $c1
    and b                                         ; $5434: $a0
    pop bc                                        ; $5435: $c1
    and c                                         ; $5436: $a1
    jp $c385                                      ; $5437: $c3 $85 $c3


    inc b                                         ; $543a: $04
    add e                                         ; $543b: $83
    ld b, c                                       ; $543c: $41
    add e                                         ; $543d: $83
    ld [bc], a                                    ; $543e: $02
    add c                                         ; $543f: $81
    nop                                           ; $5440: $00
    add b                                         ; $5441: $80
    nop                                           ; $5442: $00
    add b                                         ; $5443: $80
    and b                                         ; $5444: $a0
    ret nz                                        ; $5445: $c0

    add b                                         ; $5446: $80
    ret nz                                        ; $5447: $c0

    ret nc                                        ; $5448: $d0

    ldh [$64], a                                  ; $5449: $e0 $64
    ldh a, [$f0]                                  ; $544b: $f0 $f0
    db $fc                                        ; $544d: $fc
    call c, Call_000_1eff                         ; $544e: $dc $ff $1e
    rst $38                                       ; $5451: $ff
    ld b, c                                       ; $5452: $41
    ld e, $0c                                     ; $5453: $1e $0c
    nop                                           ; $5455: $00
    nop                                           ; $5456: $00
    nop                                           ; $5457: $00
    nop                                           ; $5458: $00
    nop                                           ; $5459: $00
    jr nc, jr_051_545c                            ; $545a: $30 $00

jr_051_545c:
    add d                                         ; $545c: $82
    ld a, b                                       ; $545d: $78
    ld e, b                                       ; $545e: $58
    rst $38                                       ; $545f: $ff
    nop                                           ; $5460: $00
    ret nz                                        ; $5461: $c0

    ld b, b                                       ; $5462: $40
    add b                                         ; $5463: $80
    nop                                           ; $5464: $00
    nop                                           ; $5465: $00
    nop                                           ; $5466: $00
    nop                                           ; $5467: $00
    nop                                           ; $5468: $00
    nop                                           ; $5469: $00
    nop                                           ; $546a: $00
    nop                                           ; $546b: $00
    ld [bc], a                                    ; $546c: $02
    ld bc, $0300                                  ; $546d: $01 $00 $03
    ret nz                                        ; $5470: $c0

    nop                                           ; $5471: $00
    add b                                         ; $5472: $80
    nop                                           ; $5473: $00
    nop                                           ; $5474: $00
    nop                                           ; $5475: $00
    nop                                           ; $5476: $00
    nop                                           ; $5477: $00
    nop                                           ; $5478: $00
    nop                                           ; $5479: $00
    nop                                           ; $547a: $00
    nop                                           ; $547b: $00
    ld bc, $0300                                  ; $547c: $01 $00 $03
    nop                                           ; $547f: $00
    and b                                         ; $5480: $a0
    nop                                           ; $5481: $00
    nop                                           ; $5482: $00
    nop                                           ; $5483: $00
    add b                                         ; $5484: $80
    nop                                           ; $5485: $00
    nop                                           ; $5486: $00
    nop                                           ; $5487: $00
    nop                                           ; $5488: $00
    nop                                           ; $5489: $00
    ld bc, $0000                                  ; $548a: $01 $00 $00
    nop                                           ; $548d: $00
    dec b                                         ; $548e: $05
    nop                                           ; $548f: $00
    nop                                           ; $5490: $00
    nop                                           ; $5491: $00
    nop                                           ; $5492: $00
    nop                                           ; $5493: $00
    nop                                           ; $5494: $00
    nop                                           ; $5495: $00
    nop                                           ; $5496: $00
    nop                                           ; $5497: $00
    nop                                           ; $5498: $00
    nop                                           ; $5499: $00
    nop                                           ; $549a: $00
    nop                                           ; $549b: $00
    nop                                           ; $549c: $00
    nop                                           ; $549d: $00
    nop                                           ; $549e: $00
    nop                                           ; $549f: $00
    nop                                           ; $54a0: $00
    nop                                           ; $54a1: $00
    nop                                           ; $54a2: $00
    nop                                           ; $54a3: $00
    nop                                           ; $54a4: $00
    nop                                           ; $54a5: $00
    nop                                           ; $54a6: $00
    nop                                           ; $54a7: $00
    nop                                           ; $54a8: $00
    nop                                           ; $54a9: $00
    nop                                           ; $54aa: $00
    nop                                           ; $54ab: $00
    nop                                           ; $54ac: $00
    nop                                           ; $54ad: $00
    nop                                           ; $54ae: $00
    nop                                           ; $54af: $00
    nop                                           ; $54b0: $00
    nop                                           ; $54b1: $00
    nop                                           ; $54b2: $00
    nop                                           ; $54b3: $00
    nop                                           ; $54b4: $00
    nop                                           ; $54b5: $00
    nop                                           ; $54b6: $00
    nop                                           ; $54b7: $00
    nop                                           ; $54b8: $00
    nop                                           ; $54b9: $00
    nop                                           ; $54ba: $00
    nop                                           ; $54bb: $00
    nop                                           ; $54bc: $00
    nop                                           ; $54bd: $00
    nop                                           ; $54be: $00
    nop                                           ; $54bf: $00
    nop                                           ; $54c0: $00
    nop                                           ; $54c1: $00
    nop                                           ; $54c2: $00
    nop                                           ; $54c3: $00
    nop                                           ; $54c4: $00
    nop                                           ; $54c5: $00
    nop                                           ; $54c6: $00
    nop                                           ; $54c7: $00
    nop                                           ; $54c8: $00
    nop                                           ; $54c9: $00
    nop                                           ; $54ca: $00
    nop                                           ; $54cb: $00
    nop                                           ; $54cc: $00
    nop                                           ; $54cd: $00
    nop                                           ; $54ce: $00
    nop                                           ; $54cf: $00
    nop                                           ; $54d0: $00
    nop                                           ; $54d1: $00
    nop                                           ; $54d2: $00
    nop                                           ; $54d3: $00
    nop                                           ; $54d4: $00
    nop                                           ; $54d5: $00
    nop                                           ; $54d6: $00
    nop                                           ; $54d7: $00
    nop                                           ; $54d8: $00
    nop                                           ; $54d9: $00
    nop                                           ; $54da: $00
    nop                                           ; $54db: $00
    nop                                           ; $54dc: $00
    nop                                           ; $54dd: $00
    nop                                           ; $54de: $00
    nop                                           ; $54df: $00
    nop                                           ; $54e0: $00
    nop                                           ; $54e1: $00
    nop                                           ; $54e2: $00
    nop                                           ; $54e3: $00
    nop                                           ; $54e4: $00
    nop                                           ; $54e5: $00
    nop                                           ; $54e6: $00
    nop                                           ; $54e7: $00
    nop                                           ; $54e8: $00
    nop                                           ; $54e9: $00
    nop                                           ; $54ea: $00
    nop                                           ; $54eb: $00
    nop                                           ; $54ec: $00
    nop                                           ; $54ed: $00
    nop                                           ; $54ee: $00
    nop                                           ; $54ef: $00
    nop                                           ; $54f0: $00
    nop                                           ; $54f1: $00
    nop                                           ; $54f2: $00
    nop                                           ; $54f3: $00
    nop                                           ; $54f4: $00
    nop                                           ; $54f5: $00
    nop                                           ; $54f6: $00
    nop                                           ; $54f7: $00
    nop                                           ; $54f8: $00
    nop                                           ; $54f9: $00
    nop                                           ; $54fa: $00
    nop                                           ; $54fb: $00
    nop                                           ; $54fc: $00
    nop                                           ; $54fd: $00
    nop                                           ; $54fe: $00
    nop                                           ; $54ff: $00
    nop                                           ; $5500: $00
    nop                                           ; $5501: $00
    nop                                           ; $5502: $00
    nop                                           ; $5503: $00
    nop                                           ; $5504: $00
    nop                                           ; $5505: $00
    nop                                           ; $5506: $00
    nop                                           ; $5507: $00
    nop                                           ; $5508: $00
    nop                                           ; $5509: $00
    nop                                           ; $550a: $00
    nop                                           ; $550b: $00
    nop                                           ; $550c: $00
    nop                                           ; $550d: $00
    nop                                           ; $550e: $00
    nop                                           ; $550f: $00
    nop                                           ; $5510: $00
    nop                                           ; $5511: $00
    nop                                           ; $5512: $00
    nop                                           ; $5513: $00
    nop                                           ; $5514: $00
    nop                                           ; $5515: $00
    nop                                           ; $5516: $00
    nop                                           ; $5517: $00
    nop                                           ; $5518: $00
    nop                                           ; $5519: $00
    nop                                           ; $551a: $00
    nop                                           ; $551b: $00
    nop                                           ; $551c: $00
    nop                                           ; $551d: $00
    nop                                           ; $551e: $00
    nop                                           ; $551f: $00
    nop                                           ; $5520: $00
    nop                                           ; $5521: $00
    nop                                           ; $5522: $00
    nop                                           ; $5523: $00
    nop                                           ; $5524: $00
    nop                                           ; $5525: $00
    nop                                           ; $5526: $00
    nop                                           ; $5527: $00
    nop                                           ; $5528: $00
    nop                                           ; $5529: $00
    nop                                           ; $552a: $00
    nop                                           ; $552b: $00
    nop                                           ; $552c: $00
    nop                                           ; $552d: $00
    nop                                           ; $552e: $00
    nop                                           ; $552f: $00
    nop                                           ; $5530: $00
    nop                                           ; $5531: $00
    nop                                           ; $5532: $00
    nop                                           ; $5533: $00
    nop                                           ; $5534: $00
    nop                                           ; $5535: $00
    nop                                           ; $5536: $00
    nop                                           ; $5537: $00
    nop                                           ; $5538: $00
    nop                                           ; $5539: $00
    nop                                           ; $553a: $00
    nop                                           ; $553b: $00
    nop                                           ; $553c: $00
    nop                                           ; $553d: $00
    nop                                           ; $553e: $00
    nop                                           ; $553f: $00
    nop                                           ; $5540: $00
    nop                                           ; $5541: $00
    nop                                           ; $5542: $00
    nop                                           ; $5543: $00
    nop                                           ; $5544: $00
    nop                                           ; $5545: $00
    nop                                           ; $5546: $00
    nop                                           ; $5547: $00
    nop                                           ; $5548: $00
    nop                                           ; $5549: $00
    nop                                           ; $554a: $00
    nop                                           ; $554b: $00
    nop                                           ; $554c: $00
    nop                                           ; $554d: $00
    nop                                           ; $554e: $00
    nop                                           ; $554f: $00
    nop                                           ; $5550: $00
    nop                                           ; $5551: $00
    nop                                           ; $5552: $00
    nop                                           ; $5553: $00
    nop                                           ; $5554: $00
    nop                                           ; $5555: $00
    nop                                           ; $5556: $00
    nop                                           ; $5557: $00
    nop                                           ; $5558: $00
    nop                                           ; $5559: $00
    nop                                           ; $555a: $00
    nop                                           ; $555b: $00
    nop                                           ; $555c: $00
    nop                                           ; $555d: $00
    nop                                           ; $555e: $00
    nop                                           ; $555f: $00
    nop                                           ; $5560: $00
    nop                                           ; $5561: $00
    nop                                           ; $5562: $00
    nop                                           ; $5563: $00
    nop                                           ; $5564: $00
    nop                                           ; $5565: $00
    nop                                           ; $5566: $00
    nop                                           ; $5567: $00
    nop                                           ; $5568: $00
    nop                                           ; $5569: $00
    nop                                           ; $556a: $00
    nop                                           ; $556b: $00
    nop                                           ; $556c: $00
    nop                                           ; $556d: $00
    nop                                           ; $556e: $00
    nop                                           ; $556f: $00
    nop                                           ; $5570: $00
    nop                                           ; $5571: $00
    nop                                           ; $5572: $00
    nop                                           ; $5573: $00
    nop                                           ; $5574: $00
    nop                                           ; $5575: $00
    nop                                           ; $5576: $00
    nop                                           ; $5577: $00
    nop                                           ; $5578: $00
    nop                                           ; $5579: $00
    nop                                           ; $557a: $00
    nop                                           ; $557b: $00
    nop                                           ; $557c: $00
    nop                                           ; $557d: $00
    nop                                           ; $557e: $00
    nop                                           ; $557f: $00
    nop                                           ; $5580: $00
    nop                                           ; $5581: $00
    nop                                           ; $5582: $00
    nop                                           ; $5583: $00
    nop                                           ; $5584: $00
    nop                                           ; $5585: $00
    nop                                           ; $5586: $00
    nop                                           ; $5587: $00
    nop                                           ; $5588: $00
    nop                                           ; $5589: $00
    nop                                           ; $558a: $00
    nop                                           ; $558b: $00
    nop                                           ; $558c: $00
    nop                                           ; $558d: $00
    nop                                           ; $558e: $00
    nop                                           ; $558f: $00
    nop                                           ; $5590: $00
    nop                                           ; $5591: $00
    nop                                           ; $5592: $00
    nop                                           ; $5593: $00
    nop                                           ; $5594: $00
    nop                                           ; $5595: $00
    nop                                           ; $5596: $00
    nop                                           ; $5597: $00
    nop                                           ; $5598: $00
    nop                                           ; $5599: $00
    nop                                           ; $559a: $00
    nop                                           ; $559b: $00
    nop                                           ; $559c: $00
    nop                                           ; $559d: $00
    nop                                           ; $559e: $00
    nop                                           ; $559f: $00
    nop                                           ; $55a0: $00
    nop                                           ; $55a1: $00
    nop                                           ; $55a2: $00
    nop                                           ; $55a3: $00
    nop                                           ; $55a4: $00
    nop                                           ; $55a5: $00
    nop                                           ; $55a6: $00
    nop                                           ; $55a7: $00
    nop                                           ; $55a8: $00
    nop                                           ; $55a9: $00
    nop                                           ; $55aa: $00
    nop                                           ; $55ab: $00
    nop                                           ; $55ac: $00
    nop                                           ; $55ad: $00
    nop                                           ; $55ae: $00
    nop                                           ; $55af: $00
    nop                                           ; $55b0: $00
    nop                                           ; $55b1: $00
    nop                                           ; $55b2: $00
    nop                                           ; $55b3: $00
    nop                                           ; $55b4: $00
    nop                                           ; $55b5: $00
    nop                                           ; $55b6: $00
    nop                                           ; $55b7: $00
    nop                                           ; $55b8: $00
    nop                                           ; $55b9: $00
    nop                                           ; $55ba: $00
    nop                                           ; $55bb: $00
    nop                                           ; $55bc: $00
    nop                                           ; $55bd: $00
    nop                                           ; $55be: $00
    nop                                           ; $55bf: $00
    nop                                           ; $55c0: $00
    nop                                           ; $55c1: $00
    nop                                           ; $55c2: $00
    nop                                           ; $55c3: $00
    nop                                           ; $55c4: $00
    nop                                           ; $55c5: $00
    nop                                           ; $55c6: $00
    nop                                           ; $55c7: $00
    nop                                           ; $55c8: $00
    nop                                           ; $55c9: $00
    nop                                           ; $55ca: $00
    nop                                           ; $55cb: $00
    nop                                           ; $55cc: $00
    nop                                           ; $55cd: $00
    nop                                           ; $55ce: $00
    nop                                           ; $55cf: $00
    nop                                           ; $55d0: $00
    nop                                           ; $55d1: $00
    nop                                           ; $55d2: $00
    nop                                           ; $55d3: $00
    nop                                           ; $55d4: $00
    nop                                           ; $55d5: $00
    nop                                           ; $55d6: $00
    nop                                           ; $55d7: $00
    nop                                           ; $55d8: $00
    nop                                           ; $55d9: $00
    nop                                           ; $55da: $00
    nop                                           ; $55db: $00
    nop                                           ; $55dc: $00
    nop                                           ; $55dd: $00
    nop                                           ; $55de: $00
    nop                                           ; $55df: $00
    nop                                           ; $55e0: $00
    nop                                           ; $55e1: $00
    nop                                           ; $55e2: $00
    nop                                           ; $55e3: $00
    nop                                           ; $55e4: $00
    nop                                           ; $55e5: $00
    nop                                           ; $55e6: $00
    nop                                           ; $55e7: $00
    nop                                           ; $55e8: $00
    nop                                           ; $55e9: $00
    nop                                           ; $55ea: $00
    nop                                           ; $55eb: $00
    nop                                           ; $55ec: $00
    nop                                           ; $55ed: $00
    nop                                           ; $55ee: $00
    nop                                           ; $55ef: $00
    nop                                           ; $55f0: $00
    nop                                           ; $55f1: $00
    nop                                           ; $55f2: $00
    nop                                           ; $55f3: $00
    nop                                           ; $55f4: $00
    nop                                           ; $55f5: $00
    nop                                           ; $55f6: $00
    nop                                           ; $55f7: $00
    nop                                           ; $55f8: $00
    nop                                           ; $55f9: $00
    nop                                           ; $55fa: $00
    nop                                           ; $55fb: $00
    nop                                           ; $55fc: $00
    nop                                           ; $55fd: $00
    nop                                           ; $55fe: $00
    nop                                           ; $55ff: $00
    nop                                           ; $5600: $00
    nop                                           ; $5601: $00
    nop                                           ; $5602: $00
    nop                                           ; $5603: $00
    nop                                           ; $5604: $00
    nop                                           ; $5605: $00
    nop                                           ; $5606: $00
    nop                                           ; $5607: $00
    nop                                           ; $5608: $00
    nop                                           ; $5609: $00
    nop                                           ; $560a: $00
    nop                                           ; $560b: $00
    nop                                           ; $560c: $00
    nop                                           ; $560d: $00
    nop                                           ; $560e: $00
    nop                                           ; $560f: $00
    nop                                           ; $5610: $00
    nop                                           ; $5611: $00
    nop                                           ; $5612: $00
    nop                                           ; $5613: $00
    nop                                           ; $5614: $00
    nop                                           ; $5615: $00
    nop                                           ; $5616: $00
    nop                                           ; $5617: $00
    nop                                           ; $5618: $00
    nop                                           ; $5619: $00
    nop                                           ; $561a: $00
    nop                                           ; $561b: $00
    nop                                           ; $561c: $00
    nop                                           ; $561d: $00
    nop                                           ; $561e: $00
    nop                                           ; $561f: $00
    nop                                           ; $5620: $00
    nop                                           ; $5621: $00
    nop                                           ; $5622: $00
    nop                                           ; $5623: $00
    nop                                           ; $5624: $00
    nop                                           ; $5625: $00
    nop                                           ; $5626: $00
    nop                                           ; $5627: $00
    nop                                           ; $5628: $00
    nop                                           ; $5629: $00
    nop                                           ; $562a: $00
    nop                                           ; $562b: $00
    nop                                           ; $562c: $00
    nop                                           ; $562d: $00
    nop                                           ; $562e: $00
    nop                                           ; $562f: $00
    nop                                           ; $5630: $00
    nop                                           ; $5631: $00
    nop                                           ; $5632: $00
    nop                                           ; $5633: $00
    nop                                           ; $5634: $00
    nop                                           ; $5635: $00
    nop                                           ; $5636: $00
    nop                                           ; $5637: $00
    nop                                           ; $5638: $00
    nop                                           ; $5639: $00
    nop                                           ; $563a: $00
    nop                                           ; $563b: $00
    nop                                           ; $563c: $00
    nop                                           ; $563d: $00
    nop                                           ; $563e: $00
    nop                                           ; $563f: $00
    nop                                           ; $5640: $00
    nop                                           ; $5641: $00
    nop                                           ; $5642: $00
    nop                                           ; $5643: $00
    nop                                           ; $5644: $00
    nop                                           ; $5645: $00
    nop                                           ; $5646: $00
    nop                                           ; $5647: $00
    nop                                           ; $5648: $00
    nop                                           ; $5649: $00
    nop                                           ; $564a: $00
    nop                                           ; $564b: $00
    nop                                           ; $564c: $00
    nop                                           ; $564d: $00
    nop                                           ; $564e: $00
    nop                                           ; $564f: $00
    nop                                           ; $5650: $00
    nop                                           ; $5651: $00
    nop                                           ; $5652: $00
    nop                                           ; $5653: $00
    nop                                           ; $5654: $00
    nop                                           ; $5655: $00
    nop                                           ; $5656: $00
    nop                                           ; $5657: $00
    nop                                           ; $5658: $00
    nop                                           ; $5659: $00
    nop                                           ; $565a: $00
    nop                                           ; $565b: $00
    nop                                           ; $565c: $00
    nop                                           ; $565d: $00
    nop                                           ; $565e: $00
    nop                                           ; $565f: $00
    nop                                           ; $5660: $00
    nop                                           ; $5661: $00
    nop                                           ; $5662: $00
    nop                                           ; $5663: $00
    nop                                           ; $5664: $00
    nop                                           ; $5665: $00
    nop                                           ; $5666: $00
    nop                                           ; $5667: $00
    nop                                           ; $5668: $00
    nop                                           ; $5669: $00
    nop                                           ; $566a: $00
    nop                                           ; $566b: $00
    nop                                           ; $566c: $00
    nop                                           ; $566d: $00
    nop                                           ; $566e: $00
    nop                                           ; $566f: $00
    nop                                           ; $5670: $00
    nop                                           ; $5671: $00
    nop                                           ; $5672: $00
    nop                                           ; $5673: $00
    nop                                           ; $5674: $00
    nop                                           ; $5675: $00
    nop                                           ; $5676: $00
    nop                                           ; $5677: $00
    nop                                           ; $5678: $00
    nop                                           ; $5679: $00
    nop                                           ; $567a: $00
    nop                                           ; $567b: $00
    nop                                           ; $567c: $00
    nop                                           ; $567d: $00
    nop                                           ; $567e: $00
    nop                                           ; $567f: $00
    nop                                           ; $5680: $00
    nop                                           ; $5681: $00
    nop                                           ; $5682: $00
    nop                                           ; $5683: $00
    nop                                           ; $5684: $00
    nop                                           ; $5685: $00
    nop                                           ; $5686: $00
    nop                                           ; $5687: $00
    nop                                           ; $5688: $00
    nop                                           ; $5689: $00
    nop                                           ; $568a: $00
    nop                                           ; $568b: $00
    nop                                           ; $568c: $00
    nop                                           ; $568d: $00
    nop                                           ; $568e: $00
    nop                                           ; $568f: $00
    nop                                           ; $5690: $00
    nop                                           ; $5691: $00
    nop                                           ; $5692: $00
    nop                                           ; $5693: $00
    nop                                           ; $5694: $00
    nop                                           ; $5695: $00
    nop                                           ; $5696: $00
    nop                                           ; $5697: $00
    nop                                           ; $5698: $00
    nop                                           ; $5699: $00
    nop                                           ; $569a: $00
    nop                                           ; $569b: $00
    nop                                           ; $569c: $00
    nop                                           ; $569d: $00
    nop                                           ; $569e: $00
    nop                                           ; $569f: $00
    nop                                           ; $56a0: $00
    nop                                           ; $56a1: $00
    nop                                           ; $56a2: $00
    nop                                           ; $56a3: $00
    nop                                           ; $56a4: $00
    nop                                           ; $56a5: $00
    nop                                           ; $56a6: $00
    nop                                           ; $56a7: $00
    nop                                           ; $56a8: $00
    nop                                           ; $56a9: $00
    nop                                           ; $56aa: $00
    nop                                           ; $56ab: $00
    nop                                           ; $56ac: $00
    nop                                           ; $56ad: $00
    nop                                           ; $56ae: $00
    nop                                           ; $56af: $00
    nop                                           ; $56b0: $00
    nop                                           ; $56b1: $00
    nop                                           ; $56b2: $00
    nop                                           ; $56b3: $00
    nop                                           ; $56b4: $00
    nop                                           ; $56b5: $00
    nop                                           ; $56b6: $00
    nop                                           ; $56b7: $00
    nop                                           ; $56b8: $00
    nop                                           ; $56b9: $00
    nop                                           ; $56ba: $00
    nop                                           ; $56bb: $00
    nop                                           ; $56bc: $00
    nop                                           ; $56bd: $00
    nop                                           ; $56be: $00
    nop                                           ; $56bf: $00
    nop                                           ; $56c0: $00
    nop                                           ; $56c1: $00
    nop                                           ; $56c2: $00
    nop                                           ; $56c3: $00
    nop                                           ; $56c4: $00
    nop                                           ; $56c5: $00
    nop                                           ; $56c6: $00
    nop                                           ; $56c7: $00
    nop                                           ; $56c8: $00
    nop                                           ; $56c9: $00
    nop                                           ; $56ca: $00
    nop                                           ; $56cb: $00
    nop                                           ; $56cc: $00
    nop                                           ; $56cd: $00
    nop                                           ; $56ce: $00
    nop                                           ; $56cf: $00
    nop                                           ; $56d0: $00
    nop                                           ; $56d1: $00
    nop                                           ; $56d2: $00
    nop                                           ; $56d3: $00
    nop                                           ; $56d4: $00
    nop                                           ; $56d5: $00
    nop                                           ; $56d6: $00
    nop                                           ; $56d7: $00
    nop                                           ; $56d8: $00
    nop                                           ; $56d9: $00
    nop                                           ; $56da: $00
    nop                                           ; $56db: $00
    nop                                           ; $56dc: $00
    nop                                           ; $56dd: $00
    nop                                           ; $56de: $00
    nop                                           ; $56df: $00
    nop                                           ; $56e0: $00
    nop                                           ; $56e1: $00
    nop                                           ; $56e2: $00
    nop                                           ; $56e3: $00
    nop                                           ; $56e4: $00
    nop                                           ; $56e5: $00
    nop                                           ; $56e6: $00
    nop                                           ; $56e7: $00
    nop                                           ; $56e8: $00
    nop                                           ; $56e9: $00
    nop                                           ; $56ea: $00
    nop                                           ; $56eb: $00
    nop                                           ; $56ec: $00
    nop                                           ; $56ed: $00
    nop                                           ; $56ee: $00
    nop                                           ; $56ef: $00
    nop                                           ; $56f0: $00
    nop                                           ; $56f1: $00
    nop                                           ; $56f2: $00
    nop                                           ; $56f3: $00
    nop                                           ; $56f4: $00
    nop                                           ; $56f5: $00
    nop                                           ; $56f6: $00
    nop                                           ; $56f7: $00
    nop                                           ; $56f8: $00
    nop                                           ; $56f9: $00
    nop                                           ; $56fa: $00
    nop                                           ; $56fb: $00
    nop                                           ; $56fc: $00
    nop                                           ; $56fd: $00
    nop                                           ; $56fe: $00
    nop                                           ; $56ff: $00
    nop                                           ; $5700: $00
    nop                                           ; $5701: $00
    nop                                           ; $5702: $00
    nop                                           ; $5703: $00
    nop                                           ; $5704: $00
    nop                                           ; $5705: $00
    nop                                           ; $5706: $00
    nop                                           ; $5707: $00
    nop                                           ; $5708: $00
    nop                                           ; $5709: $00
    nop                                           ; $570a: $00
    nop                                           ; $570b: $00
    nop                                           ; $570c: $00
    nop                                           ; $570d: $00
    nop                                           ; $570e: $00
    nop                                           ; $570f: $00
    nop                                           ; $5710: $00
    nop                                           ; $5711: $00
    nop                                           ; $5712: $00
    nop                                           ; $5713: $00
    nop                                           ; $5714: $00
    nop                                           ; $5715: $00
    nop                                           ; $5716: $00
    nop                                           ; $5717: $00
    nop                                           ; $5718: $00
    nop                                           ; $5719: $00
    nop                                           ; $571a: $00
    nop                                           ; $571b: $00
    nop                                           ; $571c: $00
    nop                                           ; $571d: $00
    nop                                           ; $571e: $00
    nop                                           ; $571f: $00
    nop                                           ; $5720: $00
    nop                                           ; $5721: $00
    nop                                           ; $5722: $00
    nop                                           ; $5723: $00
    nop                                           ; $5724: $00
    nop                                           ; $5725: $00
    nop                                           ; $5726: $00
    nop                                           ; $5727: $00
    nop                                           ; $5728: $00
    nop                                           ; $5729: $00
    nop                                           ; $572a: $00
    nop                                           ; $572b: $00
    nop                                           ; $572c: $00
    nop                                           ; $572d: $00
    nop                                           ; $572e: $00
    nop                                           ; $572f: $00
    nop                                           ; $5730: $00
    nop                                           ; $5731: $00
    nop                                           ; $5732: $00
    nop                                           ; $5733: $00
    nop                                           ; $5734: $00
    nop                                           ; $5735: $00
    nop                                           ; $5736: $00
    nop                                           ; $5737: $00
    nop                                           ; $5738: $00
    nop                                           ; $5739: $00
    nop                                           ; $573a: $00
    nop                                           ; $573b: $00
    nop                                           ; $573c: $00
    nop                                           ; $573d: $00
    nop                                           ; $573e: $00
    nop                                           ; $573f: $00
    nop                                           ; $5740: $00
    nop                                           ; $5741: $00
    nop                                           ; $5742: $00
    nop                                           ; $5743: $00
    nop                                           ; $5744: $00
    nop                                           ; $5745: $00
    nop                                           ; $5746: $00
    nop                                           ; $5747: $00
    nop                                           ; $5748: $00
    nop                                           ; $5749: $00
    nop                                           ; $574a: $00
    nop                                           ; $574b: $00
    nop                                           ; $574c: $00
    nop                                           ; $574d: $00
    nop                                           ; $574e: $00
    nop                                           ; $574f: $00
    nop                                           ; $5750: $00
    nop                                           ; $5751: $00
    nop                                           ; $5752: $00
    nop                                           ; $5753: $00
    nop                                           ; $5754: $00
    nop                                           ; $5755: $00
    nop                                           ; $5756: $00
    nop                                           ; $5757: $00
    nop                                           ; $5758: $00
    nop                                           ; $5759: $00
    nop                                           ; $575a: $00
    nop                                           ; $575b: $00
    nop                                           ; $575c: $00
    nop                                           ; $575d: $00
    nop                                           ; $575e: $00
    nop                                           ; $575f: $00
    nop                                           ; $5760: $00
    nop                                           ; $5761: $00
    nop                                           ; $5762: $00
    nop                                           ; $5763: $00
    nop                                           ; $5764: $00
    nop                                           ; $5765: $00
    nop                                           ; $5766: $00
    nop                                           ; $5767: $00
    nop                                           ; $5768: $00
    nop                                           ; $5769: $00
    nop                                           ; $576a: $00
    nop                                           ; $576b: $00
    nop                                           ; $576c: $00
    nop                                           ; $576d: $00
    nop                                           ; $576e: $00
    nop                                           ; $576f: $00
    nop                                           ; $5770: $00
    nop                                           ; $5771: $00
    nop                                           ; $5772: $00
    nop                                           ; $5773: $00
    nop                                           ; $5774: $00
    nop                                           ; $5775: $00
    nop                                           ; $5776: $00
    nop                                           ; $5777: $00
    nop                                           ; $5778: $00
    nop                                           ; $5779: $00
    nop                                           ; $577a: $00
    nop                                           ; $577b: $00
    nop                                           ; $577c: $00
    nop                                           ; $577d: $00
    nop                                           ; $577e: $00
    nop                                           ; $577f: $00
    nop                                           ; $5780: $00
    nop                                           ; $5781: $00
    nop                                           ; $5782: $00
    nop                                           ; $5783: $00
    nop                                           ; $5784: $00
    nop                                           ; $5785: $00
    nop                                           ; $5786: $00
    nop                                           ; $5787: $00
    nop                                           ; $5788: $00
    nop                                           ; $5789: $00
    nop                                           ; $578a: $00
    nop                                           ; $578b: $00
    nop                                           ; $578c: $00
    nop                                           ; $578d: $00
    nop                                           ; $578e: $00
    nop                                           ; $578f: $00
    nop                                           ; $5790: $00
    nop                                           ; $5791: $00
    nop                                           ; $5792: $00
    nop                                           ; $5793: $00
    nop                                           ; $5794: $00
    nop                                           ; $5795: $00
    nop                                           ; $5796: $00
    nop                                           ; $5797: $00
    nop                                           ; $5798: $00
    nop                                           ; $5799: $00
    nop                                           ; $579a: $00
    nop                                           ; $579b: $00
    nop                                           ; $579c: $00
    nop                                           ; $579d: $00
    nop                                           ; $579e: $00
    nop                                           ; $579f: $00
    nop                                           ; $57a0: $00
    nop                                           ; $57a1: $00
    nop                                           ; $57a2: $00
    nop                                           ; $57a3: $00
    nop                                           ; $57a4: $00
    nop                                           ; $57a5: $00
    nop                                           ; $57a6: $00
    nop                                           ; $57a7: $00
    nop                                           ; $57a8: $00
    nop                                           ; $57a9: $00
    nop                                           ; $57aa: $00
    nop                                           ; $57ab: $00
    nop                                           ; $57ac: $00
    nop                                           ; $57ad: $00
    nop                                           ; $57ae: $00
    nop                                           ; $57af: $00
    nop                                           ; $57b0: $00
    nop                                           ; $57b1: $00
    nop                                           ; $57b2: $00
    nop                                           ; $57b3: $00
    nop                                           ; $57b4: $00
    nop                                           ; $57b5: $00
    nop                                           ; $57b6: $00
    nop                                           ; $57b7: $00
    nop                                           ; $57b8: $00
    nop                                           ; $57b9: $00
    nop                                           ; $57ba: $00
    nop                                           ; $57bb: $00
    nop                                           ; $57bc: $00
    nop                                           ; $57bd: $00
    nop                                           ; $57be: $00
    nop                                           ; $57bf: $00
    nop                                           ; $57c0: $00
    nop                                           ; $57c1: $00
    nop                                           ; $57c2: $00
    nop                                           ; $57c3: $00
    nop                                           ; $57c4: $00
    nop                                           ; $57c5: $00
    nop                                           ; $57c6: $00
    nop                                           ; $57c7: $00
    nop                                           ; $57c8: $00
    nop                                           ; $57c9: $00
    nop                                           ; $57ca: $00
    nop                                           ; $57cb: $00
    nop                                           ; $57cc: $00
    nop                                           ; $57cd: $00
    nop                                           ; $57ce: $00
    nop                                           ; $57cf: $00
    nop                                           ; $57d0: $00
    nop                                           ; $57d1: $00
    nop                                           ; $57d2: $00
    nop                                           ; $57d3: $00
    nop                                           ; $57d4: $00
    nop                                           ; $57d5: $00
    nop                                           ; $57d6: $00
    nop                                           ; $57d7: $00
    nop                                           ; $57d8: $00
    nop                                           ; $57d9: $00
    nop                                           ; $57da: $00
    nop                                           ; $57db: $00
    nop                                           ; $57dc: $00
    nop                                           ; $57dd: $00
    nop                                           ; $57de: $00
    nop                                           ; $57df: $00
    nop                                           ; $57e0: $00
    nop                                           ; $57e1: $00
    nop                                           ; $57e2: $00
    nop                                           ; $57e3: $00
    nop                                           ; $57e4: $00
    nop                                           ; $57e5: $00
    nop                                           ; $57e6: $00
    nop                                           ; $57e7: $00
    nop                                           ; $57e8: $00
    nop                                           ; $57e9: $00
    nop                                           ; $57ea: $00
    nop                                           ; $57eb: $00
    nop                                           ; $57ec: $00
    nop                                           ; $57ed: $00
    nop                                           ; $57ee: $00
    nop                                           ; $57ef: $00
    nop                                           ; $57f0: $00
    nop                                           ; $57f1: $00
    nop                                           ; $57f2: $00
    nop                                           ; $57f3: $00
    nop                                           ; $57f4: $00
    nop                                           ; $57f5: $00
    nop                                           ; $57f6: $00
    nop                                           ; $57f7: $00
    nop                                           ; $57f8: $00
    nop                                           ; $57f9: $00
    nop                                           ; $57fa: $00
    nop                                           ; $57fb: $00
    nop                                           ; $57fc: $00
    nop                                           ; $57fd: $00
    nop                                           ; $57fe: $00
    nop                                           ; $57ff: $00
    nop                                           ; $5800: $00
    nop                                           ; $5801: $00
    nop                                           ; $5802: $00
    nop                                           ; $5803: $00
    nop                                           ; $5804: $00
    nop                                           ; $5805: $00
    nop                                           ; $5806: $00
    nop                                           ; $5807: $00
    nop                                           ; $5808: $00
    nop                                           ; $5809: $00
    nop                                           ; $580a: $00
    nop                                           ; $580b: $00
    nop                                           ; $580c: $00
    nop                                           ; $580d: $00
    nop                                           ; $580e: $00
    nop                                           ; $580f: $00
    nop                                           ; $5810: $00
    nop                                           ; $5811: $00
    nop                                           ; $5812: $00
    nop                                           ; $5813: $00
    nop                                           ; $5814: $00
    nop                                           ; $5815: $00
    nop                                           ; $5816: $00
    nop                                           ; $5817: $00
    nop                                           ; $5818: $00
    nop                                           ; $5819: $00
    nop                                           ; $581a: $00
    nop                                           ; $581b: $00
    nop                                           ; $581c: $00
    nop                                           ; $581d: $00
    nop                                           ; $581e: $00
    nop                                           ; $581f: $00
    nop                                           ; $5820: $00
    nop                                           ; $5821: $00
    nop                                           ; $5822: $00
    nop                                           ; $5823: $00
    nop                                           ; $5824: $00
    nop                                           ; $5825: $00
    nop                                           ; $5826: $00
    nop                                           ; $5827: $00
    nop                                           ; $5828: $00
    nop                                           ; $5829: $00
    nop                                           ; $582a: $00
    nop                                           ; $582b: $00
    nop                                           ; $582c: $00
    nop                                           ; $582d: $00
    nop                                           ; $582e: $00
    nop                                           ; $582f: $00
    nop                                           ; $5830: $00
    nop                                           ; $5831: $00
    nop                                           ; $5832: $00
    nop                                           ; $5833: $00
    nop                                           ; $5834: $00
    nop                                           ; $5835: $00
    nop                                           ; $5836: $00
    nop                                           ; $5837: $00
    nop                                           ; $5838: $00
    nop                                           ; $5839: $00
    nop                                           ; $583a: $00
    nop                                           ; $583b: $00
    nop                                           ; $583c: $00
    nop                                           ; $583d: $00
    nop                                           ; $583e: $00
    nop                                           ; $583f: $00
    nop                                           ; $5840: $00
    nop                                           ; $5841: $00
    nop                                           ; $5842: $00
    nop                                           ; $5843: $00
    nop                                           ; $5844: $00
    nop                                           ; $5845: $00
    nop                                           ; $5846: $00
    nop                                           ; $5847: $00
    nop                                           ; $5848: $00
    nop                                           ; $5849: $00
    nop                                           ; $584a: $00
    nop                                           ; $584b: $00
    nop                                           ; $584c: $00
    nop                                           ; $584d: $00
    nop                                           ; $584e: $00
    nop                                           ; $584f: $00
    nop                                           ; $5850: $00
    nop                                           ; $5851: $00
    nop                                           ; $5852: $00
    nop                                           ; $5853: $00
    nop                                           ; $5854: $00
    nop                                           ; $5855: $00
    nop                                           ; $5856: $00
    nop                                           ; $5857: $00
    nop                                           ; $5858: $00
    nop                                           ; $5859: $00
    nop                                           ; $585a: $00
    nop                                           ; $585b: $00
    nop                                           ; $585c: $00
    nop                                           ; $585d: $00
    nop                                           ; $585e: $00
    nop                                           ; $585f: $00
    nop                                           ; $5860: $00
    nop                                           ; $5861: $00
    nop                                           ; $5862: $00
    nop                                           ; $5863: $00
    nop                                           ; $5864: $00
    nop                                           ; $5865: $00
    nop                                           ; $5866: $00
    nop                                           ; $5867: $00
    nop                                           ; $5868: $00
    nop                                           ; $5869: $00
    nop                                           ; $586a: $00
    nop                                           ; $586b: $00
    nop                                           ; $586c: $00
    nop                                           ; $586d: $00
    nop                                           ; $586e: $00
    nop                                           ; $586f: $00
    nop                                           ; $5870: $00
    nop                                           ; $5871: $00
    nop                                           ; $5872: $00
    nop                                           ; $5873: $00
    nop                                           ; $5874: $00
    nop                                           ; $5875: $00
    nop                                           ; $5876: $00
    nop                                           ; $5877: $00
    nop                                           ; $5878: $00
    nop                                           ; $5879: $00
    nop                                           ; $587a: $00
    nop                                           ; $587b: $00
    nop                                           ; $587c: $00
    nop                                           ; $587d: $00
    nop                                           ; $587e: $00
    nop                                           ; $587f: $00
    nop                                           ; $5880: $00
    nop                                           ; $5881: $00
    nop                                           ; $5882: $00
    nop                                           ; $5883: $00
    nop                                           ; $5884: $00
    nop                                           ; $5885: $00
    nop                                           ; $5886: $00
    nop                                           ; $5887: $00
    nop                                           ; $5888: $00
    nop                                           ; $5889: $00
    nop                                           ; $588a: $00
    nop                                           ; $588b: $00
    nop                                           ; $588c: $00
    nop                                           ; $588d: $00
    nop                                           ; $588e: $00
    nop                                           ; $588f: $00
    nop                                           ; $5890: $00
    ld [bc], a                                    ; $5891: $02
    nop                                           ; $5892: $00
    rrca                                          ; $5893: $0f
    ld [bc], a                                    ; $5894: $02
    ld [bc], a                                    ; $5895: $02
    nop                                           ; $5896: $00
    rrca                                          ; $5897: $0f
    inc b                                         ; $5898: $04
    ld [bc], a                                    ; $5899: $02
    nop                                           ; $589a: $00
    rrca                                          ; $589b: $0f
    ld b, $02                                     ; $589c: $06 $02
    nop                                           ; $589e: $00
    rrca                                          ; $589f: $0f
    ld [$0002], sp                                ; $58a0: $08 $02 $00
    rrca                                          ; $58a3: $0f
    ld b, $02                                     ; $58a4: $06 $02
    nop                                           ; $58a6: $00
    rrca                                          ; $58a7: $0f
    inc b                                         ; $58a8: $04
    ld [bc], a                                    ; $58a9: $02
    nop                                           ; $58aa: $00
    rrca                                          ; $58ab: $0f
    ld [bc], a                                    ; $58ac: $02
    ld [bc], a                                    ; $58ad: $02
    nop                                           ; $58ae: $00
    rrca                                          ; $58af: $0f
    rst $38                                       ; $58b0: $ff
    nop                                           ; $58b1: $00
    ld a, [bc]                                    ; $58b2: $0a
    rrca                                          ; $58b3: $0f
    ld [bc], a                                    ; $58b4: $02
    ld e, $19                                     ; $58b5: $1e $19
    rrca                                          ; $58b7: $0f
    ld [bc], a                                    ; $58b8: $02
    ld e, $28                                     ; $58b9: $1e $28
    rrca                                          ; $58bb: $0f
    ld [bc], a                                    ; $58bc: $02
    ld e, $19                                     ; $58bd: $1e $19
    rrca                                          ; $58bf: $0f
    ld [bc], a                                    ; $58c0: $02
    ld e, $ff                                     ; $58c1: $1e $ff
    ld bc, $0337                                  ; $58c3: $01 $37 $03
    ld de, $3a1e                                  ; $58c6: $11 $1e $3a
    inc bc                                        ; $58c9: $03
    ld de, $ff1e                                  ; $58ca: $11 $1e $ff
    ld [bc], a                                    ; $58cd: $02
    dec a                                         ; $58ce: $3d
    ld bc, $1e14                                  ; $58cf: $01 $14 $1e
    ld a, $01                                     ; $58d2: $3e $01
    inc d                                         ; $58d4: $14
    ld e, $3f                                     ; $58d5: $1e $3f
    ld bc, $1e14                                  ; $58d7: $01 $14 $1e
    ld a, $01                                     ; $58da: $3e $01
    inc d                                         ; $58dc: $14
    ld e, $ff                                     ; $58dd: $1e $ff
    ld [bc], a                                    ; $58df: $02
    cp $eb                                        ; $58e0: $fe $eb
    ld e, b                                       ; $58e2: $58
    dec de                                        ; $58e3: $1b
    ld e, c                                       ; $58e4: $59
    cp d                                          ; $58e5: $ba
    ld h, e                                       ; $58e6: $63
    cp d                                          ; $58e7: $ba
    ld h, l                                       ; $58e8: $65
    or h                                          ; $58e9: $b4
    ld h, a                                       ; $58ea: $67
    or h                                          ; $58eb: $b4
    ld d, l                                       ; $58ec: $55
    ccf                                           ; $58ed: $3f
    ld a, a                                       ; $58ee: $7f
    push hl                                       ; $58ef: $e5
    cpl                                           ; $58f0: $2f
    add c                                         ; $58f1: $81
    ld h, $ff                                     ; $58f2: $26 $ff
    ld a, a                                       ; $58f4: $7f
    db $ec                                        ; $58f5: $ec
    dec hl                                        ; $58f6: $2b
    rst $20                                       ; $58f7: $e7
    dec hl                                        ; $58f8: $2b
    add c                                         ; $58f9: $81
    ld h, $5a                                     ; $58fa: $26 $5a
    ld a, l                                       ; $58fc: $7d
    cp a                                          ; $58fd: $bf
    ld a, [hl]                                    ; $58fe: $7e
    ld [hl], h                                    ; $58ff: $74
    db $10                                        ; $5900: $10
    add c                                         ; $5901: $81
    ld h, $ff                                     ; $5902: $26 $ff
    ld a, a                                       ; $5904: $7f
    push hl                                       ; $5905: $e5
    cpl                                           ; $5906: $2f
    add c                                         ; $5907: $81
    ld h, $ca                                     ; $5908: $26 $ca
    nop                                           ; $590a: $00
    rst $38                                       ; $590b: $ff
    ld a, a                                       ; $590c: $7f
    ccf                                           ; $590d: $3f
    ld a, [hl]                                    ; $590e: $7e
    scf                                           ; $590f: $37
    ld [hl], c                                    ; $5910: $71
    jp z, Jump_000_0800                           ; $5911: $ca $00 $08

    dec h                                         ; $5914: $25
    ld [$0825], sp                                ; $5915: $08 $25 $08
    dec h                                         ; $5918: $25
    ld [$d525], sp                                ; $5919: $08 $25 $d5

jr_051_591c:
    nop                                           ; $591c: $00
    rst $38                                       ; $591d: $ff
    ldh [rTIMA], a                                ; $591e: $e0 $05
    ei                                            ; $5920: $fb
    ldh [$0b], a                                  ; $5921: $e0 $0b
    rst $30                                       ; $5923: $f7
    pop hl                                        ; $5924: $e1
    nop                                           ; $5925: $00
    ld [bc], a                                    ; $5926: $02
    db $eb                                        ; $5927: $eb
    nop                                           ; $5928: $00
    jr z, @-$0f                                   ; $5929: $28 $ef

    ldh [$90], a                                  ; $592b: $e0 $90
    db $eb                                        ; $592d: $eb
    ldh [$f5], a                                  ; $592e: $e0 $f5
    nop                                           ; $5930: $00
    ret z                                         ; $5931: $c8

    cp $e5                                        ; $5932: $fe $e5
    ldh [$80], a                                  ; $5934: $e0 $80
    nop                                           ; $5936: $00
    db $ec                                        ; $5937: $ec
    rst $38                                       ; $5938: $ff
    ld hl, sp-$01                                 ; $5939: $f8 $ff
    ldh [rIE], a                                  ; $593b: $e0 $ff
    cp $42                                        ; $593d: $fe $42
    ld hl, sp-$38                                 ; $593f: $f8 $c8
    ldh a, [$80]                                  ; $5941: $f0 $80
    ldh [rNR10], a                                ; $5943: $e0 $10
    rst $28                                       ; $5945: $ef
    ldh [rP1], a                                  ; $5946: $e0 $00
    ret nz                                        ; $5948: $c0

    rst $38                                       ; $5949: $ff
    rst $38                                       ; $594a: $ff
    ld [c], a                                     ; $594b: $e2
    rst $30                                       ; $594c: $f7
    rst $38                                       ; $594d: $ff
    cp h                                          ; $594e: $bc
    ld a, a                                       ; $594f: $7f
    rst $38                                       ; $5950: $ff
    add sp, -$01                                  ; $5951: $e8 $ff
    add c                                         ; $5953: $81
    cp $08                                        ; $5954: $fe $08
    ldh a, [$f8]                                  ; $5956: $f0 $f8
    push hl                                       ; $5958: $e5
    ei                                            ; $5959: $fb
    jr nz, jr_051_591c                            ; $595a: $20 $c0

    cp a                                          ; $595c: $bf
    ld [c], a                                     ; $595d: $e2
    nop                                           ; $595e: $00
    ld a, a                                       ; $595f: $7f
    rst $38                                       ; $5960: $ff
    cpl                                           ; $5961: $2f
    rst $38                                       ; $5962: $ff
    rst $38                                       ; $5963: $ff
    ccf                                           ; $5964: $3f
    rst $38                                       ; $5965: $ff
    rra                                           ; $5966: $1f
    rst $38                                       ; $5967: $ff
    or a                                          ; $5968: $b7
    ld a, a                                       ; $5969: $7f
    rra                                           ; $596a: $1f
    ld a, a                                       ; $596b: $7f
    rst $38                                       ; $596c: $ff
    rrca                                          ; $596d: $0f
    ld a, a                                       ; $596e: $7f
    ld c, a                                       ; $596f: $4f
    ccf                                           ; $5970: $3f
    rlca                                          ; $5971: $07
    rra                                           ; $5972: $1f
    ld [bc], a                                    ; $5973: $02
    rra                                           ; $5974: $1f
    rst $38                                       ; $5975: $ff
    inc de                                        ; $5976: $13
    rrca                                          ; $5977: $0f
    ld bc, $0b0f                                  ; $5978: $01 $0f $0b
    rlca                                          ; $597b: $07
    ld bc, $ff07                                  ; $597c: $01 $07 $ff
    nop                                           ; $597f: $00
    rlca                                          ; $5980: $07
    inc b                                         ; $5981: $04
    inc bc                                        ; $5982: $03
    ld e, h                                       ; $5983: $5c
    rst $38                                       ; $5984: $ff
    nop                                           ; $5985: $00
    rst $38                                       ; $5986: $ff
    rst $20                                       ; $5987: $e7
    add c                                         ; $5988: $81
    inc a                                         ; $5989: $3c
    db $10                                        ; $598a: $10
    db $d3                                        ; $598b: $d3
    db $e3                                        ; $598c: $e3
    add e                                         ; $598d: $83
    ldh [rNR41], a                                ; $598e: $e0 $20
    ret nz                                        ; $5990: $c0

    add b                                         ; $5991: $80
    cp a                                          ; $5992: $bf
    ret nz                                        ; $5993: $c0

    nop                                           ; $5994: $00
    ldh [$90], a                                  ; $5995: $e0 $90
    ldh [$80], a                                  ; $5997: $e0 $80
    cp $e0                                        ; $5999: $fe $e0
    nop                                           ; $599b: $00
    ei                                            ; $599c: $fb
    ret nz                                        ; $599d: $c0

    jr nz, @-$5e                                  ; $599e: $20 $a0

    ldh [$7d], a                                  ; $59a0: $e0 $7d
    rst $38                                       ; $59a2: $ff
    rst $28                                       ; $59a3: $ef
    rst $38                                       ; $59a4: $ff
    ld a, [hl-]                                   ; $59a5: $3a
    ld a, [$e2da]                                 ; $59a6: $fa $da $e2
    ld [$e063], sp                                ; $59a9: $08 $63 $e0
    and h                                         ; $59ac: $a4
    ld hl, sp-$20                                 ; $59ad: $f8 $e0
    ld hl, sp-$10                                 ; $59af: $f8 $f0
    rst $38                                       ; $59b1: $ff
    db $fc                                        ; $59b2: $fc
    ret nc                                        ; $59b3: $d0

    db $fc                                        ; $59b4: $fc
    ld a, [c]                                     ; $59b5: $f2
    db $fc                                        ; $59b6: $fc
    ldh [$fc], a                                  ; $59b7: $e0 $fc
    or b                                          ; $59b9: $b0
    rst $30                                       ; $59ba: $f7
    ld hl, sp-$1c                                 ; $59bb: $f8 $e4
    ld hl, sp-$80                                 ; $59bd: $f8 $80
    push hl                                       ; $59bf: $e5
    cp [hl]                                       ; $59c0: $be
    rst $38                                       ; $59c1: $ff
    db $e3                                        ; $59c2: $e3
    rst $38                                       ; $59c3: $ff
    rst $38                                       ; $59c4: $ff
    ld b, b                                       ; $59c5: $40
    rst $38                                       ; $59c6: $ff
    nop                                           ; $59c7: $00
    rst $20                                       ; $59c8: $e7
    db $fc                                        ; $59c9: $fc
    rst $38                                       ; $59ca: $ff
    or $ff                                        ; $59cb: $f6 $ff
    ld a, a                                       ; $59cd: $7f
    db $fc                                        ; $59ce: $fc
    rst $38                                       ; $59cf: $ff
    ld hl, sp-$02                                 ; $59d0: $f8 $fe
    add sp, -$02                                  ; $59d2: $e8 $fe
    ld hl, sp-$08                                 ; $59d4: $f8 $f8
    ldh [$0b], a                                  ; $59d6: $e0 $0b
    db $f4                                        ; $59d8: $f4
    rst $38                                       ; $59d9: $ff
    ld a, b                                       ; $59da: $78
    ldh [$80], a                                  ; $59db: $e0 $80
    and e                                         ; $59dd: $a3
    and $23                                       ; $59de: $e6 $23
    pop hl                                        ; $59e0: $e1
    ldh a, [$e0]                                  ; $59e1: $f0 $e0
    rst $28                                       ; $59e3: $ef
    ld [$c0e3], a                                 ; $59e4: $ea $e3 $c0
    ld b, b                                       ; $59e7: $40
    ldh [$ea], a                                  ; $59e8: $e0 $ea
    ret nc                                        ; $59ea: $d0

    pop hl                                        ; $59eb: $e1
    rst $08                                       ; $59ec: $cf
    jp hl                                         ; $59ed: $e9


    ld [bc], a                                    ; $59ee: $02
    add c                                         ; $59ef: $81
    and b                                         ; $59f0: $a0
    rst $38                                       ; $59f1: $ff
    pop bc                                        ; $59f2: $c1
    add b                                         ; $59f3: $80
    pop bc                                        ; $59f4: $c1
    add l                                         ; $59f5: $85
    jp $c3a1                                      ; $59f6: $c3 $a1 $c3


    nop                                           ; $59f9: $00
    ld a, a                                       ; $59fa: $7f
    add e                                         ; $59fb: $83
    dec b                                         ; $59fc: $05
    add e                                         ; $59fd: $83
    ld b, b                                       ; $59fe: $40
    add c                                         ; $59ff: $81
    ld b, c                                       ; $5a00: $41
    add b                                         ; $5a01: $80
    ret nz                                        ; $5a02: $c0

    ldh [rIE], a                                  ; $5a03: $e0 $ff
    ret nz                                        ; $5a05: $c0

    and b                                         ; $5a06: $a0
    ret nz                                        ; $5a07: $c0

    ret nz                                        ; $5a08: $c0

    ldh [rBCPS], a                                ; $5a09: $e0 $68
    ldh a, [$f1]                                  ; $5a0b: $f0 $f1
    rst $38                                       ; $5a0d: $ff
    db $fc                                        ; $5a0e: $fc
    call c, Call_000_1eff                         ; $5a0f: $dc $ff $1e
    rst $38                                       ; $5a12: $ff
    add b                                         ; $5a13: $80
    ld e, $12                                     ; $5a14: $1e $12
    ld a, [hl]                                    ; $5a16: $7e
    call nc, Call_051_48c2                        ; $5a17: $d4 $c2 $48
    nop                                           ; $5a1a: $00
    ld bc, $5878                                  ; $5a1b: $01 $78 $58
    rst $38                                       ; $5a1e: $ff
    or b                                          ; $5a1f: $b0
    jp hl                                         ; $5a20: $e9


    rst $38                                       ; $5a21: $ff
    ld [bc], a                                    ; $5a22: $02
    ld bc, $0300                                  ; $5a23: $01 $00 $03
    nop                                           ; $5a26: $00
    nop                                           ; $5a27: $00
    ld b, b                                       ; $5a28: $40
    ld b, b                                       ; $5a29: $40
    ld a, a                                       ; $5a2a: $7f
    nop                                           ; $5a2b: $00
    jr nz, jr_051_5a2e                            ; $5a2c: $20 $00

jr_051_5a2e:
    db $10                                        ; $5a2e: $10
    ld [$0400], sp                                ; $5a2f: $08 $00 $04
    or d                                          ; $5a32: $b2
    ret nz                                        ; $5a33: $c0

    ret nz                                        ; $5a34: $c0

    and d                                         ; $5a35: $a2
    pop bc                                        ; $5a36: $c1
    ldh a, [rIE]                                  ; $5a37: $f0 $ff
    ldh a, [rIE]                                  ; $5a39: $f0 $ff
    ldh a, [rIE]                                  ; $5a3b: $f0 $ff
    ldh a, [rIE]                                  ; $5a3d: $f0 $ff
    ldh a, [$f3]                                  ; $5a3f: $f0 $f3
    jp $e33c                                      ; $5a41: $c3 $3c $e3


    jp $fd3c                                      ; $5a44: $c3 $3c $fd


    ldh [$fe], a                                  ; $5a47: $e0 $fe
    ld [c], a                                     ; $5a49: $e2
    db $f4                                        ; $5a4a: $f4
    pop hl                                        ; $5a4b: $e1
    dec de                                        ; $5a4c: $1b
    rst $20                                       ; $5a4d: $e7
    cpl                                           ; $5a4e: $2f
    rst $38                                       ; $5a4f: $ff
    call c, $f11e                                 ; $5a50: $dc $1e $f1
    inc a                                         ; $5a53: $3c
    db $e3                                        ; $5a54: $e3
    ld a, h                                       ; $5a55: $7c
    jp Jump_051_7f7c                              ; $5a56: $c3 $7c $7f


    jp $9ce3                                      ; $5a59: $c3 $e3 $9c


    jp Jump_000_18bc                              ; $5a5c: $c3 $bc $18


    rst $20                                       ; $5a5f: $e7
    ld [c], a                                     ; $5a60: $e2
    pop hl                                        ; $5a61: $e1
    rst $38                                       ; $5a62: $ff
    ld a, [de]                                    ; $5a63: $1a
    push hl                                       ; $5a64: $e5
    ld [de], a                                    ; $5a65: $12
    rst $28                                       ; $5a66: $ef
    ld e, a                                       ; $5a67: $5f
    cp b                                          ; $5a68: $b8
    ld a, a                                       ; $5a69: $7f
    ldh [rIE], a                                  ; $5a6a: $e0 $ff
    di                                            ; $5a6c: $f3
    adc h                                         ; $5a6d: $8c
    inc de                                        ; $5a6e: $13
    rst $28                                       ; $5a6f: $ef
    rra                                           ; $5a70: $1f
    ld hl, sp-$04                                 ; $5a71: $f8 $fc
    ld h, e                                       ; $5a73: $63
    cp a                                          ; $5a74: $bf
    db $fc                                        ; $5a75: $fc
    add e                                         ; $5a76: $83
    db $fc                                        ; $5a77: $fc
    inc bc                                        ; $5a78: $03
    cp h                                          ; $5a79: $bc
    ld b, e                                       ; $5a7a: $43
    call nz, $98e1                                ; $5a7b: $c4 $e1 $98
    rst $38                                       ; $5a7e: $ff
    rst $20                                       ; $5a7f: $e7
    db $fc                                        ; $5a80: $fc
    ld b, e                                       ; $5a81: $43
    call c, $f863                                 ; $5a82: $dc $63 $f8
    daa                                           ; $5a85: $27
    ld l, b                                       ; $5a86: $68
    rst $38                                       ; $5a87: $ff
    or a                                          ; $5a88: $b7
    ld l, h                                       ; $5a89: $6c
    sub e                                         ; $5a8a: $93
    db $fc                                        ; $5a8b: $fc
    inc de                                        ; $5a8c: $13
    add sp, $17                                   ; $5a8d: $e8 $17
    ld hl, sp-$01                                 ; $5a8f: $f8 $ff
    rrca                                          ; $5a91: $0f
    sbc $25                                       ; $5a92: $de $25
    inc a                                         ; $5a94: $3c
    rst $00                                       ; $5a95: $c7
    ld a, $c3                                     ; $5a96: $3e $c3
    ccf                                           ; $5a98: $3f
    rst $38                                       ; $5a99: $ff
    jp nz, $c13e                                  ; $5a9a: $c2 $3e $c1

    jp $c33d                                      ; $5a9d: $c3 $3d $c3


    dec a                                         ; $5aa0: $3d
    cp e                                          ; $5aa1: $bb
    rst $30                                       ; $5aa2: $f7
    rst $10                                       ; $5aa3: $d7
    rst $38                                       ; $5aa4: $ff
    nop                                           ; $5aa5: $00
    and b                                         ; $5aa6: $a0
    jp hl                                         ; $5aa7: $e9


    jp $c3bc                                      ; $5aa8: $c3 $bc $c3


    cp h                                          ; $5aab: $bc
    ret                                           ; $5aac: $c9


    ld a, h                                       ; $5aad: $7c
    jp nz, $bee0                                  ; $5aae: $c2 $e0 $be

    pop hl                                        ; $5ab1: $e1
    ld b, e                                       ; $5ab2: $43
    db $f4                                        ; $5ab3: $f4
    ldh [$a0], a                                  ; $5ab4: $e0 $a0
    pop hl                                        ; $5ab6: $e1
    nop                                           ; $5ab7: $00
    rst $38                                       ; $5ab8: $ff
    cp a                                          ; $5ab9: $bf
    db $dd                                        ; $5aba: $dd
    db $eb                                        ; $5abb: $eb
    rst $38                                       ; $5abc: $ff
    nop                                           ; $5abd: $00
    ld a, [hl]                                    ; $5abe: $7e
    add c                                         ; $5abf: $81
    add b                                         ; $5ac0: $80
    ld [c], a                                     ; $5ac1: $e2
    db $f4                                        ; $5ac2: $f4
    rst $38                                       ; $5ac3: $ff
    rrca                                          ; $5ac4: $0f
    ldh a, [rNR32]                                ; $5ac5: $f0 $1c
    db $e3                                        ; $5ac7: $e3

Jump_051_5ac8:
    inc e                                         ; $5ac8: $1c
    di                                            ; $5ac9: $f3
    inc e                                         ; $5aca: $1c
    db $e3                                        ; $5acb: $e3
    rst $38                                       ; $5acc: $ff
    inc c                                         ; $5acd: $0c
    di                                            ; $5ace: $f3
    ccf                                           ; $5acf: $3f
    ret nc                                        ; $5ad0: $d0

    dec de                                        ; $5ad1: $1b
    db $f4                                        ; $5ad2: $f4
    ld d, a                                       ; $5ad3: $57
    rst $38                                       ; $5ad4: $ff
    ld e, a                                       ; $5ad5: $5f
    xor a                                         ; $5ad6: $af
    db $fc                                        ; $5ad7: $fc
    ld a, [hl]                                    ; $5ad8: $7e
    pop af                                        ; $5ad9: $f1
    cp h                                          ; $5ada: $bc
    ld [hl], b                                    ; $5adb: $70
    ldh [$fc], a                                  ; $5adc: $e0 $fc
    ld [hl], b                                    ; $5ade: $70
    ld [c], a                                     ; $5adf: $e2
    rst $38                                       ; $5ae0: $ff
    ei                                            ; $5ae1: $fb
    rst $38                                       ; $5ae2: $ff
    sbc $ff                                       ; $5ae3: $de $ff
    push af                                       ; $5ae5: $f5
    rst $38                                       ; $5ae6: $ff
    xor d                                         ; $5ae7: $aa
    rst $38                                       ; $5ae8: $ff
    or a                                          ; $5ae9: $b7
    ld d, a                                       ; $5aea: $57
    rst $38                                       ; $5aeb: $ff
    cp a                                          ; $5aec: $bf
    ld h, a                                       ; $5aed: $67
    and b                                         ; $5aee: $a0
    di                                            ; $5aef: $f3
    adc h                                         ; $5af0: $8c
    ld hl, sp-$1f                                 ; $5af1: $f8 $e1
    ld a, h                                       ; $5af3: $7c
    db $fd                                        ; $5af4: $fd
    db $e3                                        ; $5af5: $e3
    ld [hl], b                                    ; $5af6: $70
    rst $20                                       ; $5af7: $e7
    rst $28                                       ; $5af8: $ef
    rst $38                                       ; $5af9: $ff
    rst $10                                       ; $5afa: $d7
    ld a, a                                       ; $5afb: $7f
    db $ed                                        ; $5afc: $ed
    ld a, a                                       ; $5afd: $7f
    rst $38                                       ; $5afe: $ff
    rst $30                                       ; $5aff: $f7
    ccf                                           ; $5b00: $3f
    ld l, e                                       ; $5b01: $6b
    cp a                                          ; $5b02: $bf
    halt                                          ; $5b03: $76
    sbc a                                         ; $5b04: $9f
    ei                                            ; $5b05: $fb
    rra                                           ; $5b06: $1f
    rst $38                                       ; $5b07: $ff
    push af                                       ; $5b08: $f5
    rra                                           ; $5b09: $1f
    ld a, [$dd0f]                                 ; $5b0a: $fa $0f $dd
    daa                                           ; $5b0d: $27
    ld a, $c7                                     ; $5b0e: $3e $c7
    di                                            ; $5b10: $f3
    ccf                                           ; $5b11: $3f
    jp $e06e                                      ; $5b12: $c3 $6e $e0


    ld [hl], b                                    ; $5b15: $70
    ld [c], a                                     ; $5b16: $e2
    db $ed                                        ; $5b17: $ed
    rst $38                                       ; $5b18: $ff
    db $d3                                        ; $5b19: $d3
    inc a                                         ; $5b1a: $3c
    dec sp                                        ; $5b1b: $3b
    ld a, [hl]                                    ; $5b1c: $7e
    add c                                         ; $5b1d: $81
    ld [hl], b                                    ; $5b1e: $70
    jp hl                                         ; $5b1f: $e9


    db $e3                                        ; $5b20: $e3
    sbc h                                         ; $5b21: $9c
    cp h                                          ; $5b22: $bc
    inc d                                         ; $5b23: $14
    ldh [rBCPD], a                                ; $5b24: $e0 $69
    ldh [$eb], a                                  ; $5b26: $e0 $eb
    jp $1063                                      ; $5b28: $c3 $63 $10


    ldh [$57], a                                  ; $5b2b: $e0 $57
    and h                                         ; $5b2d: $a4
    ldh [$7d], a                                  ; $5b2e: $e0 $7d
    rst $38                                       ; $5b30: $ff
    db $d3                                        ; $5b31: $d3
    ld sp, hl                                     ; $5b32: $f9
    rst $28                                       ; $5b33: $ef
    ld c, d                                       ; $5b34: $4a
    pop hl                                        ; $5b35: $e1
    db $e4                                        ; $5b36: $e4
    pop bc                                        ; $5b37: $c1
    cp e                                          ; $5b38: $bb
    db $f4                                        ; $5b39: $f4
    ld e, e                                       ; $5b3a: $5b
    db $f4                                        ; $5b3b: $f4
    xor h                                         ; $5b3c: $ac
    rst $38                                       ; $5b3d: $ff
    di                                            ; $5b3e: $f3
    ld l, h                                       ; $5b3f: $6c
    di                                            ; $5b40: $f3
    cp h                                          ; $5b41: $bc
    db $e3                                        ; $5b42: $e3
    ld l, h                                       ; $5b43: $6c
    di                                            ; $5b44: $f3
    cp e                                          ; $5b45: $bb
    rst $38                                       ; $5b46: $ff
    db $f4                                        ; $5b47: $f4
    db $db                                        ; $5b48: $db
    db $f4                                        ; $5b49: $f4
    cp l                                          ; $5b4a: $bd
    jp $ffe7                                      ; $5b4b: $c3 $e7 $ff


    cp d                                          ; $5b4e: $ba
    cp a                                          ; $5b4f: $bf
    rst $38                                       ; $5b50: $ff
    ld d, l                                       ; $5b51: $55
    rst $38                                       ; $5b52: $ff
    xor e                                         ; $5b53: $ab
    rst $38                                       ; $5b54: $ff
    cp $58                                        ; $5b55: $fe $58
    and b                                         ; $5b57: $a0
    rst $38                                       ; $5b58: $ff
    rst $28                                       ; $5b59: $ef
    rst $38                                       ; $5b5a: $ff
    db $db                                        ; $5b5b: $db
    rst $38                                       ; $5b5c: $ff
    ld l, a                                       ; $5b5d: $6f
    adc [hl]                                      ; $5b5e: $8e
    ldh [$af], a                                  ; $5b5f: $e0 $af
    ld a, a                                       ; $5b61: $7f
    or l                                          ; $5b62: $b5
    rst $08                                       ; $5b63: $cf
    ld a, a                                       ; $5b64: $7f
    rst $28                                       ; $5b65: $ef
    ld a, a                                       ; $5b66: $7f
    ld d, a                                       ; $5b67: $57
    ld b, [hl]                                    ; $5b68: $46
    and b                                         ; $5b69: $a0
    ret nc                                        ; $5b6a: $d0

    jp $e718                                      ; $5b6b: $c3 $18 $e7


    cp $f8                                        ; $5b6e: $fe $f8
    push hl                                       ; $5b70: $e5
    ld d, a                                       ; $5b71: $57
    rst $38                                       ; $5b72: $ff
    xor h                                         ; $5b73: $ac
    rst $38                                       ; $5b74: $ff
    ld [hl], h                                    ; $5b75: $74
    ei                                            ; $5b76: $fb
    cp b                                          ; $5b77: $b8
    ld l, a                                       ; $5b78: $6f
    rst $20                                       ; $5b79: $e7
    ld e, b                                       ; $5b7a: $58
    rst $20                                       ; $5b7b: $e7
    db $fc                                        ; $5b7c: $fc
    dec b                                         ; $5b7d: $05
    ldh [$98], a                                  ; $5b7e: $e0 $98
    rst $20                                       ; $5b80: $e7
    ld b, b                                       ; $5b81: $40
    rst $20                                       ; $5b82: $e7
    rst $18                                       ; $5b83: $df
    cp d                                          ; $5b84: $ba
    rst $38                                       ; $5b85: $ff
    db $ec                                        ; $5b86: $ec
    di                                            ; $5b87: $f3
    sbc b                                         ; $5b88: $98
    ldh [$e0], a                                  ; $5b89: $e0 $e0
    cp d                                          ; $5b8b: $ba
    rst $38                                       ; $5b8c: $ff
    jp hl                                         ; $5b8d: $e9


    ld l, h                                       ; $5b8e: $6c
    ld hl, sp-$20                                 ; $5b8f: $f8 $e0
    ret z                                         ; $5b91: $c8

    push hl                                       ; $5b92: $e5
    rst $28                                       ; $5b93: $ef
    ld h, $e0                                     ; $5b94: $26 $e0
    ld l, l                                       ; $5b96: $6d
    rst $38                                       ; $5b97: $ff
    scf                                           ; $5b98: $37
    rst $38                                       ; $5b99: $ff
    rst $38                                       ; $5b9a: $ff
    dec hl                                        ; $5b9b: $2b
    rst $38                                       ; $5b9c: $ff
    ld d, $ff                                     ; $5b9d: $16 $ff
    dec sp                                        ; $5b9f: $3b
    rst $38                                       ; $5ba0: $ff
    dec d                                         ; $5ba1: $15
    rst $38                                       ; $5ba2: $ff
    rst $38                                       ; $5ba3: $ff
    ld a, [de]                                    ; $5ba4: $1a
    rst $28                                       ; $5ba5: $ef
    dec [hl]                                      ; $5ba6: $35
    rst $08                                       ; $5ba7: $cf
    ld a, $c7                                     ; $5ba8: $3e $c7
    dec de                                        ; $5baa: $1b
    rst $38                                       ; $5bab: $ff
    rst $20                                       ; $5bac: $e7
    ld a, [de]                                    ; $5bad: $1a
    rst $20                                       ; $5bae: $e7
    dec a                                         ; $5baf: $3d
    jp $c33f                                      ; $5bb0: $c3 $3f $c3


    add hl, de                                    ; $5bb3: $19
    db $db                                        ; $5bb4: $db
    rst $20                                       ; $5bb5: $e7
    rst $10                                       ; $5bb6: $d7
    db $e4                                        ; $5bb7: $e4
    add b                                         ; $5bb8: $80
    inc l                                         ; $5bb9: $2c
    db $d3                                        ; $5bba: $d3
    and b                                         ; $5bbb: $a0
    rst $20                                       ; $5bbc: $e7
    sbc b                                         ; $5bbd: $98
    rst $20                                       ; $5bbe: $e7
    adc d                                         ; $5bbf: $8a
    ld b, d                                       ; $5bc0: $42
    pop hl                                        ; $5bc1: $e1
    ret c                                         ; $5bc2: $d8

    and b                                         ; $5bc3: $a0
    ldh [$bc], a                                  ; $5bc4: $e0 $bc
    sbc $c0                                       ; $5bc6: $de $c0
    or b                                          ; $5bc8: $b0
    pop hl                                        ; $5bc9: $e1
    ld b, b                                       ; $5bca: $40
    pop hl                                        ; $5bcb: $e1
    set 7, [hl]                                   ; $5bcc: $cb $fe
    ld a, b                                       ; $5bce: $78
    and $b0                                       ; $5bcf: $e6 $b0
    rst $38                                       ; $5bd1: $ff
    ld d, h                                       ; $5bd2: $54
    ei                                            ; $5bd3: $fb
    and h                                         ; $5bd4: $a4
    ei                                            ; $5bd5: $fb
    ld a, b                                       ; $5bd6: $78
    rst $38                                       ; $5bd7: $ff
    rst $30                                       ; $5bd8: $f7
    xor b                                         ; $5bd9: $a8
    rst $30                                       ; $5bda: $f7
    ld h, h                                       ; $5bdb: $64
    ei                                            ; $5bdc: $fb
    or h                                          ; $5bdd: $b4
    ei                                            ; $5bde: $fb
    ret nc                                        ; $5bdf: $d0

    rst $38                                       ; $5be0: $ff
    rst $38                                       ; $5be1: $ff
    pop bc                                        ; $5be2: $c1
    rst $38                                       ; $5be3: $ff
    or a                                          ; $5be4: $b7
    rst $38                                       ; $5be5: $ff
    ld e, l                                       ; $5be6: $5d
    rst $38                                       ; $5be7: $ff
    ld [$3e54], a                                 ; $5be8: $ea $54 $3e
    ldh [$3a], a                                  ; $5beb: $e0 $3a
    add c                                         ; $5bed: $81
    rst $38                                       ; $5bee: $ff
    sub h                                         ; $5bef: $94
    add b                                         ; $5bf0: $80
    ld d, a                                       ; $5bf1: $57
    ld a, $e0                                     ; $5bf2: $3e $e0
    dec [hl]                                      ; $5bf4: $35
    ld a, [hl-]                                   ; $5bf5: $3a
    ldh [$f6], a                                  ; $5bf6: $e0 $f6
    xor [hl]                                      ; $5bf8: $ae
    ret nz                                        ; $5bf9: $c0

    rst $38                                       ; $5bfa: $ff
    rst $10                                       ; $5bfb: $d7
    ld hl, $ff83                                  ; $5bfc: $21 $83 $ff
    db $dd                                        ; $5bff: $dd
    rst $38                                       ; $5c00: $ff
    ld [hl], a                                    ; $5c01: $77
    ld e, h                                       ; $5c02: $5c
    sbc h                                         ; $5c03: $9c
    ret nz                                        ; $5c04: $c0

    call c, $afe1                                 ; $5c05: $dc $e1 $af
    rst $38                                       ; $5c08: $ff
    rst $18                                       ; $5c09: $df
    adc $e0                                       ; $5c0a: $ce $e0
    rst $18                                       ; $5c0c: $df
    ld hl, sp-$1a                                 ; $5c0d: $f8 $e6
    inc d                                         ; $5c0f: $14
    rst $38                                       ; $5c10: $ff
    push hl                                       ; $5c11: $e5
    sbc $e5                                       ; $5c12: $de $e5
    ld e, a                                       ; $5c14: $5f
    jp z, Jump_051_6fe0                           ; $5c15: $ca $e0 $6f

    add $e0                                       ; $5c18: $c6 $e0
    ld hl, sp-$1b                                 ; $5c1a: $f8 $e5
    ldh [$63], a                                  ; $5c1c: $e0 $63
    jp z, $e1f8                                   ; $5c1e: $ca $f8 $e1

    ld e, a                                       ; $5c21: $5f
    sub [hl]                                      ; $5c22: $96
    ldh [$5f], a                                  ; $5c23: $e0 $5f
    ret nc                                        ; $5c25: $d0

    and $c7                                       ; $5c26: $e6 $c7
    push hl                                       ; $5c28: $e5
    ld l, c                                       ; $5c29: $69
    rst $38                                       ; $5c2a: $ff
    rst $38                                       ; $5c2b: $ff
    call nc, $81fc                                ; $5c2c: $d4 $fc $81
    ldh a, [rDMA]                                 ; $5c2f: $f0 $46
    ldh [$8b], a                                  ; $5c31: $e0 $8b
    ret nz                                        ; $5c33: $c0

    ld a, a                                       ; $5c34: $7f
    ld d, a                                       ; $5c35: $57
    ret nz                                        ; $5c36: $c0

    dec e                                         ; $5c37: $1d
    add b                                         ; $5c38: $80
    xor a                                         ; $5c39: $af
    add b                                         ; $5c3a: $80
    db $fd                                        ; $5c3b: $fd
    xor a                                         ; $5c3c: $af
    ld h, b                                       ; $5c3d: $60
    db $fd                                        ; $5c3e: $fd
    jp c, $8048                                   ; $5c3f: $da $48 $80

    and b                                         ; $5c42: $a0
    db $fc                                        ; $5c43: $fc
    ld b, c                                       ; $5c44: $41
    ldh a, [$0b]                                  ; $5c45: $f0 $0b
    ret nz                                        ; $5c47: $c0

    ei                                            ; $5c48: $fb
    ld d, $00                                     ; $5c49: $16 $00
    ld hl, sp-$1f                                 ; $5c4b: $f8 $e1
    ld a, [bc]                                    ; $5c4d: $0a
    ret nz                                        ; $5c4e: $c0

    rla                                           ; $5c4f: $17
    nop                                           ; $5c50: $00
    cp l                                          ; $5c51: $bd
    rst $30                                       ; $5c52: $f7
    nop                                           ; $5c53: $00
    ld l, a                                       ; $5c54: $6f
    nop                                           ; $5c55: $00
    push de                                       ; $5c56: $d5
    ld h, b                                       ; $5c57: $60
    nop                                           ; $5c58: $00
    ld hl, sp-$02                                 ; $5c59: $f8 $fe
    db $f4                                        ; $5c5b: $f4
    rst $38                                       ; $5c5c: $ff
    cp $d8                                        ; $5c5d: $fe $d8
    db $fc                                        ; $5c5f: $fc
    pop af                                        ; $5c60: $f1
    db $fc                                        ; $5c61: $fc
    ld [c], a                                     ; $5c62: $e2
    ld hl, sp-$2f                                 ; $5c63: $f8 $d1
    rst $38                                       ; $5c65: $ff
    ld hl, sp+$63                                 ; $5c66: $f8 $63
    ldh a, [$c6]                                  ; $5c68: $f0 $c6
    ldh a, [$8b]                                  ; $5c6a: $f0 $8b
    ldh [rBGP], a                                 ; $5c6c: $e0 $47
    rst $38                                       ; $5c6e: $ff
    ldh [$8f], a                                  ; $5c6f: $e0 $8f
    ret nz                                        ; $5c71: $c0

    dec de                                        ; $5c72: $1b
    ret nz                                        ; $5c73: $c0

    cpl                                           ; $5c74: $2f
    add b                                         ; $5c75: $80
    rra                                           ; $5c76: $1f
    rst $38                                       ; $5c77: $ff
    add b                                         ; $5c78: $80
    scf                                           ; $5c79: $37
    nop                                           ; $5c7a: $00
    ld e, a                                       ; $5c7b: $5f
    nop                                           ; $5c7c: $00
    inc h                                         ; $5c7d: $24
    inc a                                         ; $5c7e: $3c
    ld b, d                                       ; $5c7f: $42
    cp a                                          ; $5c80: $bf
    nop                                           ; $5c81: $00
    xor l                                         ; $5c82: $ad
    nop                                           ; $5c83: $00
    rst $30                                       ; $5c84: $f7
    nop                                           ; $5c85: $00
    ld a, l                                       ; $5c86: $7d
    jp nc, $ffe2                                  ; $5c87: $d2 $e2 $ff

    push af                                       ; $5c8a: $f5
    nop                                           ; $5c8b: $00
    db $ec                                        ; $5c8c: $ec
    pop hl                                        ; $5c8d: $e1
    cp a                                          ; $5c8e: $bf
    db $e4                                        ; $5c8f: $e4
    ldh [$2f], a                                  ; $5c90: $e0 $2f
    add b                                         ; $5c92: $80
    cp a                                          ; $5c93: $bf
    add b                                         ; $5c94: $80
    rst $18                                       ; $5c95: $df
    ld d, a                                       ; $5c96: $57
    nop                                           ; $5c97: $00
    ccf                                           ; $5c98: $3f
    nop                                           ; $5c99: $00
    push af                                       ; $5c9a: $f5
    ld a, $e0                                     ; $5c9b: $3e $e0
    ld b, l                                       ; $5c9d: $45
    rst $38                                       ; $5c9e: $ff
    rst $38                                       ; $5c9f: $ff
    nop                                           ; $5ca0: $00
    rst $00                                       ; $5ca1: $c7
    stop                                          ; $5ca2: $10 $00
    ld l, l                                       ; $5ca4: $6d
    nop                                           ; $5ca5: $00
    cp e                                          ; $5ca6: $bb
    nop                                           ; $5ca7: $00
    rst $38                                       ; $5ca8: $ff
    rst $28                                       ; $5ca9: $ef
    nop                                           ; $5caa: $00
    rst $20                                       ; $5cab: $e7
    ldh a, [rSCX]                                 ; $5cac: $f0 $43
    ldh a, [$e5]                                  ; $5cae: $f0 $e5
    ldh a, [rIE]                                  ; $5cb0: $f0 $ff
    ld b, a                                       ; $5cb2: $47
    ldh [$8a], a                                  ; $5cb3: $e0 $8a
    ldh [$c7], a                                  ; $5cb5: $e0 $c7
    ldh [$a5], a                                  ; $5cb7: $e0 $a5
    ldh a, [$eb]                                  ; $5cb9: $f0 $eb
    jp $30f0                                      ; $5cbb: $c3 $f0 $30


    ld h, e                                       ; $5cbe: $63
    rst $18                                       ; $5cbf: $df
    ld l, $60                                     ; $5cc0: $2e $60
    xor l                                         ; $5cc2: $ad
    rst $38                                       ; $5cc3: $ff
    ld b, d                                       ; $5cc4: $42
    rst $38                                       ; $5cc5: $ff
    rst $38                                       ; $5cc6: $ff
    nop                                           ; $5cc7: $00
    jp $fffc                                      ; $5cc8: $c3 $fc $ff


    ld a, [$fcff]                                 ; $5ccb: $fa $ff $fc
    sbc $8c                                       ; $5cce: $de $8c
    ldh [$f8], a                                  ; $5cd0: $e0 $f8
    cp $ec                                        ; $5cd2: $fe $ec
    cp $f6                                        ; $5cd4: $fe $f6
    ldh [rIE], a                                  ; $5cd6: $e0 $ff
    rst $38                                       ; $5cd8: $ff
    rst $38                                       ; $5cd9: $ff
    add b                                         ; $5cda: $80
    ccf                                           ; $5cdb: $3f
    add b                                         ; $5cdc: $80
    ld a, a                                       ; $5cdd: $7f
    ret nz                                        ; $5cde: $c0

    sbc a                                         ; $5cdf: $9f
    ret nz                                        ; $5ce0: $c0

    ld c, a                                       ; $5ce1: $4f
    rst $38                                       ; $5ce2: $ff
    ldh [$87], a                                  ; $5ce3: $e0 $87
    ldh a, [$d5]                                  ; $5ce5: $f0 $d5
    db $fc                                        ; $5ce7: $fc
    ld l, c                                       ; $5ce8: $69
    rst $38                                       ; $5ce9: $ff
    ccf                                           ; $5cea: $3f
    rst $38                                       ; $5ceb: $ff
    nop                                           ; $5cec: $00
    rrca                                          ; $5ced: $0f
    ret nz                                        ; $5cee: $c0

    ld b, e                                       ; $5cef: $43
    ldh a, [$a0]                                  ; $5cf0: $f0 $a0
    db $fc                                        ; $5cf2: $fc
    db $f4                                        ; $5cf3: $f4
    add $4a                                       ; $5cf4: $c6 $4a
    ldh [rIE], a                                  ; $5cf6: $e0 $ff
    rst $38                                       ; $5cf8: $ff
    ld b, d                                       ; $5cf9: $42
    ldh [$88], a                                  ; $5cfa: $e0 $88
    db $e4                                        ; $5cfc: $e4
    add sp, -$1b                                  ; $5cfd: $e8 $e5
    db $e3                                        ; $5cff: $e3
    rrca                                          ; $5d00: $0f
    rst $38                                       ; $5d01: $ff
    and $0f                                       ; $5d02: $e6 $0f
    rr a                                          ; $5d04: $cb $1f
    rst $00                                       ; $5d06: $c7
    rra                                           ; $5d07: $1f
    adc a                                         ; $5d08: $8f
    ccf                                           ; $5d09: $3f
    rst $30                                       ; $5d0a: $f7
    sbc e                                         ; $5d0b: $9b
    ccf                                           ; $5d0c: $3f
    cpl                                           ; $5d0d: $2f
    db $fc                                        ; $5d0e: $fc
    ld b, b                                       ; $5d0f: $40
    cp $00                                        ; $5d10: $fe $00
    cp $00                                        ; $5d12: $fe $00
    rst $38                                       ; $5d14: $ff
    db $fc                                        ; $5d15: $fc
    ld bc, $01fc                                  ; $5d16: $01 $fc $01
    ld hl, sp+$03                                 ; $5d19: $f8 $03

jr_051_5d1b:
    ld sp, hl                                     ; $5d1b: $f9
    inc bc                                        ; $5d1c: $03
    rst $08                                       ; $5d1d: $cf
    ld a, [c]                                     ; $5d1e: $f2
    rlca                                          ; $5d1f: $07
    pop af                                        ; $5d20: $f1
    rlca                                          ; $5d21: $07
    ret nc                                        ; $5d22: $d0

    push hl                                       ; $5d23: $e5
    inc h                                         ; $5d24: $24
    pop hl                                        ; $5d25: $e1
    db $d3                                        ; $5d26: $d3
    nop                                           ; $5d27: $00
    ld e, a                                       ; $5d28: $5f
    ld b, d                                       ; $5d29: $42
    ld a, [hl]                                    ; $5d2a: $7e
    cp $00                                        ; $5d2b: $fe $00
    rst $38                                       ; $5d2d: $ff
    ld [c], a                                     ; $5d2e: $e2
    ldh [$fe], a                                  ; $5d2f: $e0 $fe
    sbc $e0                                       ; $5d31: $de $e0
    rst $08                                       ; $5d33: $cf
    db $fc                                        ; $5d34: $fc
    ld bc, $01ff                                  ; $5d35: $01 $ff $01
    ld a, [c]                                     ; $5d38: $f2
    ldh [$0a], a                                  ; $5d39: $e0 $0a
    ld [c], a                                     ; $5d3b: $e2
    inc a                                         ; $5d3c: $3c
    nop                                           ; $5d3d: $00
    rst $30                                       ; $5d3e: $f7
    nop                                           ; $5d3f: $00
    rst $00                                       ; $5d40: $c7
    ld b, l                                       ; $5d41: $45
    add h                                         ; $5d42: $84
    ret nz                                        ; $5d43: $c0

    push af                                       ; $5d44: $f5
    rst $38                                       ; $5d45: $ff
    rst $20                                       ; $5d46: $e7
    rrca                                          ; $5d47: $0f
    rst $28                                       ; $5d48: $ef
    ld [c], a                                     ; $5d49: $e2
    rrca                                          ; $5d4a: $0f
    rst $30                                       ; $5d4b: $f7
    rrca                                          ; $5d4c: $0f
    add $e1                                       ; $5d4d: $c6 $e1
    di                                            ; $5d4f: $f3
    rlca                                          ; $5d50: $07
    push hl                                       ; $5d51: $e5
    cp a                                          ; $5d52: $bf
    rrca                                          ; $5d53: $0f
    db $e3                                        ; $5d54: $e3
    rrca                                          ; $5d55: $0f
    jr jr_051_5d1b                                ; $5d56: $18 $c3

    ld b, d                                       ; $5d58: $42
    ld d, [hl]                                    ; $5d59: $56
    ldh [$f7], a                                  ; $5d5a: $e0 $f7
    ld [$c676], a                                 ; $5d5c: $ea $76 $c6
    ccf                                           ; $5d5f: $3f
    ld a, [hl]                                    ; $5d60: $7e
    ret nz                                        ; $5d61: $c0

    ccf                                           ; $5d62: $3f
    add b                                         ; $5d63: $80
    and b                                         ; $5d64: $a0
    sbc a                                         ; $5d65: $9f
    ld a, a                                       ; $5d66: $7f
    scf                                           ; $5d67: $37
    db $fd                                        ; $5d68: $fd
    ld a, a                                       ; $5d69: $7f
    or $e0                                        ; $5d6a: $f6 $e0
    rst $38                                       ; $5d6c: $ff
    ld [$5500], sp                                ; $5d6d: $08 $00 $55
    nop                                           ; $5d70: $00
    cp [hl]                                       ; $5d71: $be
    ld [hl], h                                    ; $5d72: $74
    ldh a, [$c0]                                  ; $5d73: $f0 $c0
    ld l, b                                       ; $5d75: $68
    push hl                                       ; $5d76: $e5
    ld e, a                                       ; $5d77: $5f
    db $fc                                        ; $5d78: $fc
    ret nz                                        ; $5d79: $c0

    ld a, a                                       ; $5d7a: $7f
    nop                                           ; $5d7b: $00
    xor a                                         ; $5d7c: $af
    db $fc                                        ; $5d7d: $fc
    ldh [$9d], a                                  ; $5d7e: $e0 $9d
    ccf                                           ; $5d80: $3f
    db $f4                                        ; $5d81: $f4
    ld [c], a                                     ; $5d82: $e2
    ld de, $2a80                                  ; $5d83: $11 $80 $2a
    call nc, $f0c0                                ; $5d86: $d4 $c0 $f0
    push hl                                       ; $5d89: $e5
    cp a                                          ; $5d8a: $bf
    ldh a, [$fa]                                  ; $5d8b: $f0 $fa
    db $e4                                        ; $5d8d: $e4
    ld l, d                                       ; $5d8e: $6a
    jp hl                                         ; $5d8f: $e9


    db $f4                                        ; $5d90: $f4
    db $eb                                        ; $5d91: $eb
    nop                                           ; $5d92: $00
    add e                                         ; $5d93: $83
    dec de                                        ; $5d94: $1b
    db $e4                                        ; $5d95: $e4
    dec d                                         ; $5d96: $15
    xor $ff                                       ; $5d97: $ee $ff
    dec l                                         ; $5d99: $2d
    ret nc                                        ; $5d9a: $d0

    dec b                                         ; $5d9b: $05
    ld a, [$c034]                                 ; $5d9c: $fa $34 $c0
    ld d, a                                       ; $5d9f: $57
    xor d                                         ; $5da0: $aa
    rst $18                                       ; $5da1: $df
    and h                                         ; $5da2: $a4
    ld a, [bc]                                    ; $5da3: $0a
    ld c, e                                       ; $5da4: $4b
    add b                                         ; $5da5: $80
    ld b, d                                       ; $5da6: $42
    ldh [rNR41], a                                ; $5da7: $e0 $20
    dec e                                         ; $5da9: $1d
    ld [bc], a                                    ; $5daa: $02
    rst $38                                       ; $5dab: $ff
    cp h                                          ; $5dac: $bc
    inc bc                                        ; $5dad: $03
    sbc b                                         ; $5dae: $98
    ld h, a                                       ; $5daf: $67
    rla                                           ; $5db0: $17
    xor d                                         ; $5db1: $aa
    db $e4                                        ; $5db2: $e4
    ld a, [bc]                                    ; $5db3: $0a
    rst $38                                       ; $5db4: $ff
    adc e                                         ; $5db5: $8b
    jr nz, @+$24                                  ; $5db6: $20 $22

    nop                                           ; $5db8: $00
    db $dd                                        ; $5db9: $dd
    nop                                           ; $5dba: $00
    cp l                                          ; $5dbb: $bd
    ld b, d                                       ; $5dbc: $42
    cp $08                                        ; $5dbd: $fe $08
    and c                                         ; $5dbf: $a1
    ld d, $a9                                     ; $5dc0: $16 $a9
    add sp, $03                                   ; $5dc2: $e8 $03
    add l                                         ; $5dc4: $85
    ld [hl+], a                                   ; $5dc5: $22
    ld a, [hl+]                                   ; $5dc6: $2a
    rst $38                                       ; $5dc7: $ff
    rlca                                          ; $5dc8: $07
    db $db                                        ; $5dc9: $db
    nop                                           ; $5dca: $00
    cp h                                          ; $5dcb: $bc
    ld b, e                                       ; $5dcc: $43
    ccf                                           ; $5dcd: $3f
    ret nz                                        ; $5dce: $c0

    add hl, de                                    ; $5dcf: $19
    ei                                            ; $5dd0: $fb

jr_051_5dd1:
    and $18                                       ; $5dd1: $e6 $18
    ld h, b                                       ; $5dd3: $60
    and b                                         ; $5dd4: $a0
    inc a                                         ; $5dd5: $3c
    jp $e7b8                                      ; $5dd6: $c3 $b8 $e7


    ld [$f7ff], sp                                ; $5dd9: $08 $ff $f7
    call z, $90fb                                 ; $5ddc: $cc $fb $90
    ld l, a                                       ; $5ddf: $6f
    ld a, [hl+]                                   ; $5de0: $2a
    rst $38                                       ; $5de1: $ff
    rra                                           ; $5de2: $1f
    rst $38                                       ; $5de3: $ff
    ldh [$d0], a                                  ; $5de4: $e0 $d0
    ld bc, $a15a                                  ; $5de6: $01 $5a $a1
    ld c, b                                       ; $5de9: $48
    rlca                                          ; $5dea: $07
    ld hl, sp-$09                                 ; $5deb: $f8 $f7
    rlca                                          ; $5ded: $07
    inc e                                         ; $5dee: $1c
    inc bc                                        ; $5def: $03
    ret nz                                        ; $5df0: $c0

    pop hl                                        ; $5df1: $e1
    or b                                          ; $5df2: $b0
    rrca                                          ; $5df3: $0f
    call z, $ff3f                                 ; $5df4: $cc $3f $ff
    ld a, c                                       ; $5df7: $79
    add [hl]                                      ; $5df8: $86
    ld [de], a                                    ; $5df9: $12
    rst $28                                       ; $5dfa: $ef
    dec de                                        ; $5dfb: $1b
    ldh [$3c], a                                  ; $5dfc: $e0 $3c
    jp $d0fe                                      ; $5dfe: $c3 $fe $d0


    pop hl                                        ; $5e01: $e1
    dec a                                         ; $5e02: $3d
    ret nz                                        ; $5e03: $c0

    ld c, a                                       ; $5e04: $4f
    and b                                         ; $5e05: $a0
    jr nc, jr_051_5dd1                            ; $5e06: $30 $c9

    ld d, d                                       ; $5e08: $52
    rst $38                                       ; $5e09: $ff
    and c                                         ; $5e0a: $a1
    ld l, l                                       ; $5e0b: $6d
    jp nz, $c934                                  ; $5e0c: $c2 $34 $c9

    ld c, b                                       ; $5e0f: $48
    or e                                          ; $5e10: $b3
    ld a, [de]                                    ; $5e11: $1a
    rst $38                                       ; $5e12: $ff
    push hl                                       ; $5e13: $e5
    dec d                                         ; $5e14: $15
    cp a                                          ; $5e15: $bf
    adc $3f                                       ; $5e16: $ce $3f
    ld d, [hl]                                    ; $5e18: $56
    cp a                                          ; $5e19: $bf
    ld l, l                                       ; $5e1a: $6d
    rst $38                                       ; $5e1b: $ff
    cp a                                          ; $5e1c: $bf
    sbc [hl]                                      ; $5e1d: $9e
    ld a, a                                       ; $5e1e: $7f
    ld l, d                                       ; $5e1f: $6a
    cp a                                          ; $5e20: $bf
    dec e                                         ; $5e21: $1d
    rst $38                                       ; $5e22: $ff
    ld c, [hl]                                    ; $5e23: $4e
    rst $38                                       ; $5e24: $ff
    cp a                                          ; $5e25: $bf
    dec [hl]                                      ; $5e26: $35
    ret nz                                        ; $5e27: $c0

    ld c, [hl]                                    ; $5e28: $4e
    and c                                         ; $5e29: $a1
    ld [hl-], a                                   ; $5e2a: $32
    ret                                           ; $5e2b: $c9


    ld d, a                                       ; $5e2c: $57
    rst $38                                       ; $5e2d: $ff
    and d                                         ; $5e2e: $a2
    ld a, a                                       ; $5e2f: $7f
    push bc                                       ; $5e30: $c5
    ld [hl-], a                                   ; $5e31: $32
    rst $08                                       ; $5e32: $cf
    ld d, l                                       ; $5e33: $55
    cp a                                          ; $5e34: $bf
    dec hl                                        ; $5e35: $2b
    sbc $90                                       ; $5e36: $de $90
    add d                                         ; $5e38: $82
    cp h                                          ; $5e39: $bc
    ld b, e                                       ; $5e3a: $43
    ld e, b                                       ; $5e3b: $58
    and a                                         ; $5e3c: $a7
    nop                                           ; $5e3d: $00
    and b                                         ; $5e3e: $a0
    db $e3                                        ; $5e3f: $e3
    call nz, $f3ff                                ; $5e40: $c4 $ff $f3
    or h                                          ; $5e43: $b4
    db $eb                                        ; $5e44: $eb
    sbc d                                         ; $5e45: $9a
    ld a, a                                       ; $5e46: $7f
    rst $28                                       ; $5e47: $ef
    ccf                                           ; $5e48: $3f
    ld a, [hl-]                                   ; $5e49: $3a
    rst $38                                       ; $5e4a: $ff
    rst $18                                       ; $5e4b: $df
    ld c, l                                       ; $5e4c: $4d
    rst $38                                       ; $5e4d: $ff
    or h                                          ; $5e4e: $b4
    rst $38                                       ; $5e4f: $ff
    ld a, d                                       ; $5e50: $7a
    rst $38                                       ; $5e51: $ff
    xor b                                         ; $5e52: $a8
    ei                                            ; $5e53: $fb
    rst $38                                       ; $5e54: $ff
    ld [hl], h                                    ; $5e55: $74
    cp [hl]                                       ; $5e56: $be
    add b                                         ; $5e57: $80
    inc hl                                        ; $5e58: $23
    rst $18                                       ; $5e59: $df
    dec b                                         ; $5e5a: $05
    rst $38                                       ; $5e5b: $ff
    ld a, [de]                                    ; $5e5c: $1a
    cp $70                                        ; $5e5d: $fe $70
    add [hl]                                      ; $5e5f: $86
    call nc, $bbff                                ; $5e60: $d4 $ff $bb
    cp $74                                        ; $5e63: $fe $74
    rst $38                                       ; $5e65: $ff
    xor [hl]                                      ; $5e66: $ae
    ld a, [$209a]                                 ; $5e67: $fa $9a $20
    xor [hl]                                      ; $5e6a: $ae
    ld a, [hl-]                                   ; $5e6b: $3a
    add b                                         ; $5e6c: $80
    inc bc                                        ; $5e6d: $03
    rst $38                                       ; $5e6e: $ff
    ld d, d                                       ; $5e6f: $52
    db $fc                                        ; $5e70: $fc
    xor d                                         ; $5e71: $aa
    xor a                                         ; $5e72: $af
    db $fd                                        ; $5e73: $fd
    ld [hl], a                                    ; $5e74: $77
    ei                                            ; $5e75: $fb
    and d                                         ; $5e76: $a2
    or b                                          ; $5e77: $b0
    ld h, b                                       ; $5e78: $60
    dec c                                         ; $5e79: $0d
    xor h                                         ; $5e7a: $ac
    ld h, b                                       ; $5e7b: $60
    ld a, [bc]                                    ; $5e7c: $0a
    rst $38                                       ; $5e7d: $ff
    rst $38                                       ; $5e7e: $ff
    ld h, a                                       ; $5e7f: $67
    adc b                                         ; $5e80: $88
    call Call_000_32bb                            ; $5e81: $cd $bb $32
    rst $28                                       ; $5e84: $ef
    db $eb                                        ; $5e85: $eb
    ld a, [$e0de]                                 ; $5e86: $fa $de $e0
    cp $1c                                        ; $5e89: $fe $1c
    add b                                         ; $5e8b: $80
    cp d                                          ; $5e8c: $ba
    rst $38                                       ; $5e8d: $ff
    daa                                           ; $5e8e: $27
    ret z                                         ; $5e8f: $c8

    ld l, l                                       ; $5e90: $6d
    rst $38                                       ; $5e91: $ff
    sbc e                                         ; $5e92: $9b
    ld [hl+], a                                   ; $5e93: $22
    rst $38                                       ; $5e94: $ff

jr_051_5e95:
    ld a, e                                       ; $5e95: $7b
    rst $38                                       ; $5e96: $ff
    or [hl]                                       ; $5e97: $b6
    rst $38                                       ; $5e98: $ff
    ld e, [hl]                                    ; $5e99: $5e
    ei                                            ; $5e9a: $fb
    rst $38                                       ; $5e9b: $ff
    cp e                                          ; $5e9c: $bb
    add h                                         ; $5e9d: $84
    ld h, b                                       ; $5e9e: $60
    ld c, $bf                                     ; $5e9f: $0e $bf
    db $dd                                        ; $5ea1: $dd
    ccf                                           ; $5ea2: $3f
    ld l, [hl]                                    ; $5ea3: $6e
    cp e                                          ; $5ea4: $bb
    cp a                                          ; $5ea5: $bf
    ld d, a                                       ; $5ea6: $57
    ld [hl], b                                    ; $5ea7: $70

jr_051_5ea8:
    ldh [$6d], a                                  ; $5ea8: $e0 $6d
    cp a                                          ; $5eaa: $bf
    ld e, $70                                     ; $5eab: $1e $70
    ldh [rHDMA2], a                               ; $5ead: $e0 $52
    rst $38                                       ; $5eaf: $ff
    db $fd                                        ; $5eb0: $fd
    xor $f9                                       ; $5eb1: $ee $f9
    ld c, c                                       ; $5eb3: $49
    or $a7                                        ; $5eb4: $f6 $a7
    ld hl, sp+$47                                 ; $5eb6: $f8 $47
    rst $38                                       ; $5eb8: $ff
    ldh a, [$b4]                                  ; $5eb9: $f0 $b4
    ret                                           ; $5ebb: $c9


    ld c, d                                       ; $5ebc: $4a
    or c                                          ; $5ebd: $b1
    dec de                                        ; $5ebe: $1b
    db $e4                                        ; $5ebf: $e4
    rst $38                                       ; $5ec0: $ff
    rst $38                                       ; $5ec1: $ff
    rra                                           ; $5ec2: $1f
    ld c, d                                       ; $5ec3: $4a
    cp a                                          ; $5ec4: $bf
    ld l, c                                       ; $5ec5: $69
    sub a                                         ; $5ec6: $97
    ld [de], a                                    ; $5ec7: $12
    rst $28                                       ; $5ec8: $ef
    add hl, de                                    ; $5ec9: $19
    rst $30                                       ; $5eca: $f7
    ld [c], a                                     ; $5ecb: $e2
    jr c, jr_051_5e95                             ; $5ecc: $38 $c7

    nop                                           ; $5ece: $00
    pop hl                                        ; $5ecf: $e1
    dec hl                                        ; $5ed0: $2b
    ret nc                                        ; $5ed1: $d0

    xor d                                         ; $5ed2: $aa
    ld b, c                                       ; $5ed3: $41
    cp a                                          ; $5ed4: $bf
    cp $01                                        ; $5ed5: $fe $01
    xor b                                         ; $5ed7: $a8
    rlca                                          ; $5ed8: $07
    ld a, b                                       ; $5ed9: $78
    add a                                         ; $5eda: $87
    db $10                                        ; $5edb: $10
    db $e3                                        ; $5edc: $e3

jr_051_5edd:
    and c                                         ; $5edd: $a1
    rst $38                                       ; $5ede: $ff
    ld e, $8c                                     ; $5edf: $1e $8c
    ld a, d                                       ; $5ee1: $7a
    ld d, a                                       ; $5ee2: $57
    xor b                                         ; $5ee3: $a8
    jr c, jr_051_5ea8                             ; $5ee4: $38 $c2

    dec c                                         ; $5ee6: $0d
    rst $30                                       ; $5ee7: $f7
    ldh a, [$3d]                                  ; $5ee8: $f0 $3d
    jp nz, Jump_051_61d8                          ; $5eea: $c2 $d8 $61

    cpl                                           ; $5eed: $2f
    sub b                                         ; $5eee: $90
    ld sp, hl                                     ; $5eef: $f9
    nop                                           ; $5ef0: $00
    rst $38                                       ; $5ef1: $ff
    adc d                                         ; $5ef2: $8a
    ld hl, $0728                                  ; $5ef3: $21 $28 $07
    ret c                                         ; $5ef6: $d8

    rlca                                          ; $5ef7: $07
    cp h                                          ; $5ef8: $bc
    ld b, e                                       ; $5ef9: $43
    db $fc                                        ; $5efa: $fc
    ret z                                         ; $5efb: $c8

    ld h, c                                       ; $5efc: $61
    add hl, sp                                    ; $5efd: $39
    and e                                         ; $5efe: $a3
    ld [bc], a                                    ; $5eff: $02
    db $fd                                        ; $5f00: $fd
    ld bc, $0dfe                                  ; $5f01: $01 $fe $0d
    ldh a, [rIE]                                  ; $5f04: $f0 $ff
    ld [bc], a                                    ; $5f06: $02
    db $fd                                        ; $5f07: $fd
    ld a, [hl+]                                   ; $5f08: $2a
    ret nc                                        ; $5f09: $d0

    dec hl                                        ; $5f0a: $2b
    sub $f5                                       ; $5f0b: $d6 $f5
    ld a, [bc]                                    ; $5f0d: $0a
    rst $38                                       ; $5f0e: $ff
    ld e, a                                       ; $5f0f: $5f
    add b                                         ; $5f10: $80
    xor c                                         ; $5f11: $a9
    ld [bc], a                                    ; $5f12: $02
    ld a, a                                       ; $5f13: $7f
    add b                                         ; $5f14: $80
    db $10                                        ; $5f15: $10
    rrca                                          ; $5f16: $0f
    rst $38                                       ; $5f17: $ff
    ldh [$1f], a                                  ; $5f18: $e0 $1f
    add b                                         ; $5f1a: $80
    ld a, a                                       ; $5f1b: $7f
    ld d, a                                       ; $5f1c: $57
    xor d                                         ; $5f1d: $aa
    push af                                       ; $5f1e: $f5
    ld a, [bc]                                    ; $5f1f: $0a
    cp a                                          ; $5f20: $bf
    sbc a                                         ; $5f21: $9f
    jr nz, jr_051_5edd                            ; $5f22: $20 $b9

    ld [bc], a                                    ; $5f24: $02
    ld h, a                                       ; $5f25: $67
    sbc b                                         ; $5f26: $98
    rrca                                          ; $5f27: $0f
    and e                                         ; $5f28: $a3
    ld c, d                                       ; $5f29: $4a
    rst $38                                       ; $5f2a: $ff
    or l                                          ; $5f2b: $b5
    db $f4                                        ; $5f2c: $f4
    dec bc                                        ; $5f2d: $0b
    sbc l                                         ; $5f2e: $9d
    ld [hl+], a                                   ; $5f2f: $22
    cp d                                          ; $5f30: $ba
    rlca                                          ; $5f31: $07
    ld a, e                                       ; $5f32: $7b
    ld e, a                                       ; $5f33: $5f
    add b                                         ; $5f34: $80
    inc c                                         ; $5f35: $0c
    di                                            ; $5f36: $f3
    rlca                                          ; $5f37: $07
    ld hl, sp-$41                                 ; $5f38: $f8 $bf
    and c                                         ; $5f3a: $a1
    add b                                         ; $5f3b: $80
    sbc [hl]                                      ; $5f3c: $9e
    nop                                           ; $5f3d: $00
    db $ed                                        ; $5f3e: $ed
    and b                                         ; $5f3f: $a0
    sbc d                                         ; $5f40: $9a
    nop                                           ; $5f41: $00
    ld l, b                                       ; $5f42: $68
    rst $38                                       ; $5f43: $ff
    sub b                                         ; $5f44: $90
    pop bc                                        ; $5f45: $c1
    rla                                           ; $5f46: $17
    add sp, -$2f                                  ; $5f47: $e8 $d1
    rst $20                                       ; $5f49: $e7
    nop                                           ; $5f4a: $00
    ld l, $d1                                     ; $5f4b: $2e $d1
    add b                                         ; $5f4d: $80
    pop hl                                        ; $5f4e: $e1
    ret nz                                        ; $5f4f: $c0

    db $e3                                        ; $5f50: $e3
    or b                                          ; $5f51: $b0
    rrca                                          ; $5f52: $0f
    add $fc                                       ; $5f53: $c6 $fc
    sub b                                         ; $5f55: $90
    call nz, $e3d0                                ; $5f56: $c4 $d0 $e3
    dec a                                         ; $5f59: $3d
    ret nz                                        ; $5f5a: $c0

    ld e, a                                       ; $5f5b: $5f
    and b                                         ; $5f5c: $a0
    inc [hl]                                      ; $5f5d: $34
    ret                                           ; $5f5e: $c9


    rst $10                                       ; $5f5f: $d7
    ld e, d                                       ; $5f60: $5a
    and c                                         ; $5f61: $a1
    ld a, l                                       ; $5f62: $7d
    sub b                                         ; $5f63: $90
    ret nz                                        ; $5f64: $c0

    ld c, h                                       ; $5f65: $4c
    sub b                                         ; $5f66: $90
    ret nz                                        ; $5f67: $c0

    ld d, l                                       ; $5f68: $55
    cp a                                          ; $5f69: $bf
    ei                                            ; $5f6a: $fb
    adc [hl]                                      ; $5f6b: $8e
    ld a, a                                       ; $5f6c: $7f
    sub b                                         ; $5f6d: $90
    jp z, Jump_051_5ac8                           ; $5f6e: $ca $c8 $5a

    and c                                         ; $5f71: $a1
    inc a                                         ; $5f72: $3c
    jp Jump_051_537f                              ; $5f73: $c3 $7f $53


    xor [hl]                                      ; $5f76: $ae
    ld [hl], a                                    ; $5f77: $77
    call $bf42                                    ; $5f78: $cd $42 $bf
    dec d                                         ; $5f7b: $15
    ld l, d                                       ; $5f7c: $6a
    ld h, b                                       ; $5f7d: $60
    cp $6b                                        ; $5f7e: $fe $6b
    add c                                         ; $5f80: $81
    ret nz                                        ; $5f81: $c0

    ccf                                           ; $5f82: $3f
    ld b, b                                       ; $5f83: $40
    cp a                                          ; $5f84: $bf
    ld b, b                                       ; $5f85: $40
    rst $38                                       ; $5f86: $ff
    or b                                          ; $5f87: $b0
    rst $18                                       ; $5f88: $df
    rst $28                                       ; $5f89: $ef
    call z, $a4f3                                 ; $5f8a: $cc $f3 $a4
    ei                                            ; $5f8d: $fb
    sub b                                         ; $5f8e: $90
    rst $08                                       ; $5f8f: $cf
    inc bc                                        ; $5f90: $03
    rst $38                                       ; $5f91: $ff
    and a                                         ; $5f92: $a7
    dec b                                         ; $5f93: $05
    rst $38                                       ; $5f94: $ff
    ld [bc], a                                    ; $5f95: $02
    add hl, de                                    ; $5f96: $19
    and [hl]                                      ; $5f97: $a6
    sub b                                         ; $5f98: $90
    call $9053                                    ; $5f99: $cd $53 $90
    ret nz                                        ; $5f9c: $c0

    ld [hl], l                                    ; $5f9d: $75
    xor [hl]                                      ; $5f9e: $ae
    sub b                                         ; $5f9f: $90
    ret z                                         ; $5fa0: $c8

    ld [hl], a                                    ; $5fa1: $77
    adc b                                         ; $5fa2: $88
    call z, $ca90                                 ; $5fa3: $cc $90 $ca
    scf                                           ; $5fa6: $37
    sub b                                         ; $5fa7: $90
    call z, Call_051_6e4e                         ; $5fa8: $cc $4e $6e
    sub b                                         ; $5fab: $90
    adc $ae                                       ; $5fac: $ce $ae
    ld sp, hl                                     ; $5fae: $f9
    ld a, c                                       ; $5faf: $79
    sub b                                         ; $5fb0: $90
    ret z                                         ; $5fb1: $c8

    cp a                                          ; $5fb2: $bf
    ld e, a                                       ; $5fb3: $5f
    sub b                                         ; $5fb4: $90
    jp Jump_000_1def                              ; $5fb5: $c3 $ef $1d


    ld [c], a                                     ; $5fb8: $e2
    ld [$00f7], sp                                ; $5fb9: $08 $f7 $00
    pop hl                                        ; $5fbc: $e1
    dec l                                         ; $5fbd: $2d
    ret nc                                        ; $5fbe: $d0

    sbc d                                         ; $5fbf: $9a
    rst $28                                       ; $5fc0: $ef
    ld h, c                                       ; $5fc1: $61
    ld a, [hl]                                    ; $5fc2: $7e
    add c                                         ; $5fc3: $81
    add sp, $10                                   ; $5fc4: $e8 $10
    and $61                                       ; $5fc6: $e6 $61
    ld e, $95                                     ; $5fc8: $1e $95
    sbc $90                                       ; $5fca: $de $90
    ret nz                                        ; $5fcc: $c0

    add hl, sp                                    ; $5fcd: $39
    jp nz, $f00f                                  ; $5fce: $c2 $0f $f0

    rst $18                                       ; $5fd1: $df
    ld h, e                                       ; $5fd2: $63
    ld d, a                                       ; $5fd3: $57
    xor b                                         ; $5fd4: $a8
    rst $38                                       ; $5fd5: $ff
    ei                                            ; $5fd6: $fb
    nop                                           ; $5fd7: $00
    sbc [hl]                                      ; $5fd8: $9e
    ld hl, $07a8                                  ; $5fd9: $21 $a8 $07
    ld [hl], b                                    ; $5fdc: $70
    adc a                                         ; $5fdd: $8f
    cp $cf                                        ; $5fde: $fe $cf
    ld h, e                                       ; $5fe0: $63
    inc c                                         ; $5fe1: $0c
    rst $30                                       ; $5fe2: $f7
    reti                                          ; $5fe3: $d9


    ld l, a                                       ; $5fe4: $6f
    ld [$63ff], sp                                ; $5fe5: $08 $ff $63
    rst $38                                       ; $5fe8: $ff
    cp l                                          ; $5fe9: $bd
    sub $6b                                       ; $5fea: $d6 $6b
    ld l, d                                       ; $5fec: $6a
    rst $18                                       ; $5fed: $df
    jr nc, @-$1f                                  ; $5fee: $30 $df

    ld d, e                                       ; $5ff0: $53
    rst $38                                       ; $5ff1: $ff
    db $fd                                        ; $5ff2: $fd
    nop                                           ; $5ff3: $00
    rst $38                                       ; $5ff4: $ff
    ld e, l                                       ; $5ff5: $5d
    rst $20                                       ; $5ff6: $e7
    ld [$40ff], sp                                ; $5ff7: $08 $ff $40
    ld l, a                                       ; $5ffa: $6f
    cp a                                          ; $5ffb: $bf
    ld l, h                                       ; $5ffc: $6c
    or a                                          ; $5ffd: $b7
    ld c, b                                       ; $5ffe: $48
    cp h                                          ; $5fff: $bc
    ret nz                                        ; $6000: $c0

    ld b, b                                       ; $6001: $40
    rst $38                                       ; $6002: $ff
    inc h                                         ; $6003: $24
    dec b                                         ; $6004: $05
    call c, $ffff                                 ; $6005: $dc $ff $ff
    db $e4                                        ; $6008: $e4
    db $e3                                        ; $6009: $e3
    ld d, l                                       ; $600a: $55
    nop                                           ; $600b: $00
    cp d                                          ; $600c: $ba
    ld a, [hl]                                    ; $600d: $7e
    add b                                         ; $600e: $80
    xor e                                         ; $600f: $ab
    nop                                           ; $6010: $00
    rst $10                                       ; $6011: $d7
    ld e, l                                       ; $6012: $5d
    nop                                           ; $6013: $00
    ld [$8076], a                                 ; $6014: $ea $76 $80
    xor [hl]                                      ; $6017: $ae
    ld [hl], d                                    ; $6018: $72
    add b                                         ; $6019: $80
    adc d                                         ; $601a: $8a
    nop                                           ; $601b: $00
    rst $30                                       ; $601c: $f7
    ld d, h                                       ; $601d: $54
    nop                                           ; $601e: $00
    xor d                                         ; $601f: $aa
    ldh a, [$e0]                                  ; $6020: $f0 $e0
    xor d                                         ; $6022: $aa
    nop                                           ; $6023: $00
    dec d                                         ; $6024: $15
    nop                                           ; $6025: $00
    rst $38                                       ; $6026: $ff
    xor b                                         ; $6027: $a8
    nop                                           ; $6028: $00
    ld d, c                                       ; $6029: $51
    nop                                           ; $602a: $00
    ld [$2200], sp                                ; $602b: $08 $00 $22
    nop                                           ; $602e: $00
    ld a, a                                       ; $602f: $7f
    sub h                                         ; $6030: $94
    nop                                           ; $6031: $00
    add hl, hl                                    ; $6032: $29
    nop                                           ; $6033: $00
    ld b, h                                       ; $6034: $44
    nop                                           ; $6035: $00
    db $10                                        ; $6036: $10
    db $e4                                        ; $6037: $e4
    ldh [$75], a                                  ; $6038: $e0 $75
    nop                                           ; $603a: $00
    ld d, e                                       ; $603b: $53
    nop                                           ; $603c: $00
    ld bc, $0074                                  ; $603d: $01 $74 $00
    jr nz, jr_051_6042                            ; $6040: $20 $00

jr_051_6042:
    add b                                         ; $6042: $80
    ld l, [hl]                                    ; $6043: $6e
    nop                                           ; $6044: $00
    cp $a0                                        ; $6045: $fe $a0
    ldh a, [rNR23]                                ; $6047: $f0 $18
    inc a                                         ; $6049: $3c
    ld a, [hl]                                    ; $604a: $7e
    ld a, [hl]                                    ; $604b: $7e
    rst $38                                       ; $604c: $ff
    ld [hl], b                                    ; $604d: $70
    rst $38                                       ; $604e: $ff
    rst $38                                       ; $604f: $ff
    ld a, b                                       ; $6050: $78
    db $fc                                        ; $6051: $fc
    inc a                                         ; $6052: $3c
    cp $80                                        ; $6053: $fe $80
    ld a, h                                       ; $6055: $7c
    ld h, h                                       ; $6056: $64
    nop                                           ; $6057: $00
    rst $38                                       ; $6058: $ff
    nop                                           ; $6059: $00
    ld [$3e1c], sp                                ; $605a: $08 $1c $3e
    ld [hl], $7f                                  ; $605d: $36 $7f
    and [hl]                                      ; $605f: $a6
    ld a, a                                       ; $6060: $7f
    ld e, a                                       ; $6061: $5f
    add h                                         ; $6062: $84
    ld l, a                                       ; $6063: $6f
    ld b, b                                       ; $6064: $40
    ld c, $08                                     ; $6065: $0e $08
    jr nc, jr_051_6069                            ; $6067: $30 $00

jr_051_6069:
    inc bc                                        ; $6069: $03
    ld c, h                                       ; $606a: $4c
    and b                                         ; $606b: $a0
    rst $38                                       ; $606c: $ff
    ld b, $ff                                     ; $606d: $06 $ff
    ld e, h                                       ; $606f: $5c
    rst $38                                       ; $6070: $ff
    ld de, $74fe                                  ; $6071: $11 $fe $74
    ei                                            ; $6074: $fb
    ld a, a                                       ; $6075: $7f
    ret nz                                        ; $6076: $c0

    rst $38                                       ; $6077: $ff
    sub c                                         ; $6078: $91
    rst $28                                       ; $6079: $ef
    ld c, [hl]                                    ; $607a: $4e
    rst $38                                       ; $607b: $ff
    ei                                            ; $607c: $fb
    ld [bc], a                                    ; $607d: $02
    ret nz                                        ; $607e: $c0

    ld a, a                                       ; $607f: $7f
    inc b                                         ; $6080: $04
    ei                                            ; $6081: $fb
    ld c, d                                       ; $6082: $4a
    or l                                          ; $6083: $b5
    and b                                         ; $6084: $a0
    ld e, a                                       ; $6085: $5f
    ld a, [bc]                                    ; $6086: $0a
    ld e, b                                       ; $6087: $58
    jr nz, @+$01                                  ; $6088: $20 $ff

    ld h, $df                                     ; $608a: $26 $df
    sub e                                         ; $608c: $93
    rst $28                                       ; $608d: $ef
    ld h, $df                                     ; $608e: $26 $df
    add d                                         ; $6090: $82
    rst $38                                       ; $6091: $ff
    ld a, a                                       ; $6092: $7f
    ld d, e                                       ; $6093: $53
    rst $28                                       ; $6094: $ef
    adc c                                         ; $6095: $89

jr_051_6096:
    rst $30                                       ; $6096: $f7
    ld d, e                                       ; $6097: $53
    rst $28                                       ; $6098: $ef
    add d                                         ; $6099: $82

jr_051_609a:
    ld c, d                                       ; $609a: $4a
    jr nz, jr_051_609a                            ; $609b: $20 $fd

    push af                                       ; $609d: $f5
    ld [bc], a                                    ; $609e: $02
    ld b, b                                       ; $609f: $40
    ldh a, [rIE]                                  ; $60a0: $f0 $ff
    xor d                                         ; $60a2: $aa
    db $fd                                        ; $60a3: $fd
    ld d, c                                       ; $60a4: $51
    cp $ef                                        ; $60a5: $fe $ef
    add b                                         ; $60a7: $80
    rst $38                                       ; $60a8: $ff
    ld d, l                                       ; $60a9: $55
    db $eb                                        ; $60aa: $eb
    ld e, a                                       ; $60ab: $5f
    ld c, l                                       ; $60ac: $4d
    pop de                                        ; $60ad: $d1
    sbc a                                         ; $60ae: $9f
    sbc l                                         ; $60af: $9d
    rst $38                                       ; $60b0: $ff
    ld c, a                                       ; $60b1: $4f
    daa                                           ; $60b2: $27
    rla                                           ; $60b3: $17
    and e                                         ; $60b4: $a3
    di                                            ; $60b5: $f3
    db $db                                        ; $60b6: $db
    pop hl                                        ; $60b7: $e1
    xor $bf                                       ; $60b8: $ee $bf
    pop af                                        ; $60ba: $f1
    or h                                          ; $60bb: $b4
    ei                                            ; $60bc: $fb
    ret                                           ; $60bd: $c9


    rst $38                                       ; $60be: $ff
    jp c, $e0f0                                   ; $60bf: $da $f0 $e0

    ld h, $ff                                     ; $60c2: $26 $ff
    rla                                           ; $60c4: $17
    and d                                         ; $60c5: $a2
    di                                            ; $60c6: $f3
    ld e, d                                       ; $60c7: $5a
    pop hl                                        ; $60c8: $e1
    ld l, [hl]                                    ; $60c9: $6e
    pop af                                        ; $60ca: $f1
    inc [hl]                                      ; $60cb: $34
    rst $38                                       ; $60cc: $ff
    ei                                            ; $60cd: $fb
    ld sp, hl                                     ; $60ce: $f9
    rst $38                                       ; $60cf: $ff
    rst $20                                       ; $60d0: $e7
    jr jr_051_6096                                ; $60d1: $18 $c3

    inc h                                         ; $60d3: $24
    rst $20                                       ; $60d4: $e7
    ld a, a                                       ; $60d5: $7f
    inc h                                         ; $60d6: $24
    rst $38                                       ; $60d7: $ff
    inc a                                         ; $60d8: $3c
    db $db                                        ; $60d9: $db
    inc a                                         ; $60da: $3c
    rst $20                                       ; $60db: $e7
    jr jr_051_613e                                ; $60dc: $18 $60

    ld b, c                                       ; $60de: $41
    rst $38                                       ; $60df: $ff
    ld h, a                                       ; $60e0: $67
    sbc d                                         ; $60e1: $9a
    call nz, $0b8a                                ; $60e2: $c4 $8a $0b
    ret nz                                        ; $60e5: $c0

    ld b, d                                       ; $60e6: $42
    and b                                         ; $60e7: $a0
    rst $38                                       ; $60e8: $ff
    db $10                                        ; $60e9: $10
    ret nz                                        ; $60ea: $c0

    jp hl                                         ; $60eb: $e9


    add b                                         ; $60ec: $80
    ld h, b                                       ; $60ed: $60
    sub c                                         ; $60ee: $91
    adc e                                         ; $60ef: $8b
    ld h, b                                       ; $60f0: $60
    rst $38                                       ; $60f1: $ff
    ld d, $a9                                     ; $60f2: $16 $a9

jr_051_60f4:
    pop hl                                        ; $60f4: $e1
    dec bc                                        ; $60f5: $0b
    adc d                                         ; $60f6: $8a
    daa                                           ; $60f7: $27
    daa                                           ; $60f8: $27
    rrca                                          ; $60f9: $0f
    sbc a                                         ; $60fa: $9f
    xor l                                         ; $60fb: $ad
    rra                                           ; $60fc: $1f
    sub $3f                                       ; $60fd: $d6 $3f
    ld a, l                                       ; $60ff: $7d
    ld b, [hl]                                    ; $6100: $46
    add b                                         ; $6101: $80
    ldh a, [rTAC]                                 ; $6102: $f0 $07
    inc h                                         ; $6104: $24
    rst $38                                       ; $6105: $ff
    db $db                                        ; $6106: $db
    inc c                                         ; $6107: $0c
    rst $30                                       ; $6108: $f7
    ld [hl], $cf                                  ; $6109: $36 $cf
    jr jr_051_60f4                                ; $610b: $18 $e7

    sub $ff                                       ; $610d: $d6 $ff
    rrca                                          ; $610f: $0f
    ld e, c                                       ; $6110: $59
    and [hl]                                      ; $6111: $a6
    ld b, d                                       ; $6112: $42
    rrca                                          ; $6113: $0f
    ei                                            ; $6114: $fb
    nop                                           ; $6115: $00
    inc e                                         ; $6116: $1c
    rst $18                                       ; $6117: $df
    inc bc                                        ; $6118: $03
    cp a                                          ; $6119: $bf
    nop                                           ; $611a: $00
    sbc c                                         ; $611b: $99
    ld h, [hl]                                    ; $611c: $66
    ld [$3d21], sp                                ; $611d: $08 $21 $3d
    jp nz, Jump_000_18e7                          ; $6120: $c2 $e7 $18

    rst $20                                       ; $6123: $e7
    add hl, de                                    ; $6124: $19
    nop                                           ; $6125: $00
    inc h                                         ; $6126: $24
    ldh [$61], a                                  ; $6127: $e0 $61
    ld d, [hl]                                    ; $6129: $56
    xor c                                         ; $612a: $a9
    ld [hl+], a                                   ; $612b: $22
    di                                            ; $612c: $f3
    rst $38                                       ; $612d: $ff
    ld [hl], l                                    ; $612e: $75
    ld h, b                                       ; $612f: $60
    add h                                         ; $6130: $84
    ld d, b                                       ; $6131: $50
    and e                                         ; $6132: $a3
    ld de, $1fef                                  ; $6133: $11 $ef $1f
    ldh [$bf], a                                  ; $6136: $e0 $bf
    dec a                                         ; $6138: $3d
    rst $00                                       ; $6139: $c7
    inc sp                                        ; $613a: $33
    rst $08                                       ; $613b: $cf
    dec l                                         ; $613c: $2d
    rst $10                                       ; $613d: $d7

jr_051_613e:
    or b                                          ; $613e: $b0
    ld h, l                                       ; $613f: $65
    jr z, @+$01                                   ; $6140: $28 $ff

    rst $10                                       ; $6142: $d7
    ld b, h                                       ; $6143: $44
    ei                                            ; $6144: $fb
    or h                                          ; $6145: $b4
    rst $38                                       ; $6146: $ff
    ret nc                                        ; $6147: $d0

    rst $38                                       ; $6148: $ff
    rst $28                                       ; $6149: $ef
    rst $38                                       ; $614a: $ff
    jr @-$23                                      ; $614b: $18 $db

    inc l                                         ; $614d: $2c
    rst $10                                       ; $614e: $d7
    inc l                                         ; $614f: $2c
    rst $28                                       ; $6150: $ef
    inc a                                         ; $6151: $3c

jr_051_6152:
    sub l                                         ; $6152: $95
    rst $38                                       ; $6153: $ff
    ld l, [hl]                                    ; $6154: $6e
    sbc e                                         ; $6155: $9b
    ld b, [hl]                                    ; $6156: $46

jr_051_6157:
    rst $18                                       ; $6157: $df
    ld l, [hl]                                    ; $6158: $6e
    ld a, [bc]                                    ; $6159: $0a
    rst $10                                       ; $615a: $d7
    dec e                                         ; $615b: $1d

jr_051_615c:
    rst $38                                       ; $615c: $ff
    add e                                         ; $615d: $83
    adc a                                         ; $615e: $8f
    rst $10                                       ; $615f: $d7
    cp l                                          ; $6160: $bd
    ld a, [hl]                                    ; $6161: $7e
    rst $28                                       ; $6162: $ef
    jr c, @+$01                                   ; $6163: $38 $ff

    rst $30                                       ; $6165: $f7
    jr z, jr_051_6157                             ; $6166: $28 $ef

    ld a, $f1                                     ; $6168: $3e $f1
    ld b, b                                       ; $616a: $40
    ld e, $18                                     ; $616b: $1e $18
    rst $38                                       ; $616d: $ff
    inc e                                         ; $616e: $1c
    rst $38                                       ; $616f: $ff
    rst $28                                       ; $6170: $ef
    inc d                                         ; $6171: $14
    rst $28                                       ; $6172: $ef
    inc l                                         ; $6173: $2c
    rst $38                                       ; $6174: $ff

jr_051_6175:
    ld d, $ef                                     ; $6175: $16 $ef
    ld a, [de]                                    ; $6177: $1a
    rst $28                                       ; $6178: $ef
    rst $00                                       ; $6179: $c7
    ld e, [hl]                                    ; $617a: $5e
    rst $28                                       ; $617b: $ef
    dec bc                                        ; $617c: $0b
    ldh [$e2], a                                  ; $617d: $e0 $e2
    ld a, [hl]                                    ; $617f: $7e
    rst $38                                       ; $6180: $ff
    jr z, jr_051_6152                             ; $6181: $28 $cf

    rst $38                                       ; $6183: $ff
    jr c, jr_051_6175                             ; $6184: $38 $ef

    ld l, $e1                                     ; $6186: $2e $e1
    pop hl                                        ; $6188: $e1
    jr nz, @-$20                                  ; $6189: $20 $de

    jr nz, jr_051_615c                            ; $618b: $20 $cf

    rst $38                                       ; $618d: $ff
    or [hl]                                       ; $618e: $b6
    dec hl                                        ; $618f: $2b
    db $ed                                        ; $6190: $ed
    cp d                                          ; $6191: $ba
    dec sp                                        ; $6192: $3b
    rst $18                                       ; $6193: $df
    halt                                          ; $6194: $76

jr_051_6195:
    rst $18                                       ; $6195: $df
    push hl                                       ; $6196: $e5
    ld d, h                                       ; $6197: $54
    ret z                                         ; $6198: $c8

    nop                                           ; $6199: $00
    ld a, [hl+]                                   ; $619a: $2a
    ldh a, [$bf]                                  ; $619b: $f0 $bf
    db $fd                                        ; $619d: $fd
    db $fc                                        ; $619e: $fc
    or b                                          ; $619f: $b0
    rrca                                          ; $61a0: $0f
    sbc $bf                                       ; $61a1: $de $bf
    ld a, a                                       ; $61a3: $7f
    add hl, hl                                    ; $61a4: $29
    cp $55                                        ; $61a5: $fe $55
    rst $38                                       ; $61a7: $ff
    cp [hl]                                       ; $61a8: $be
    ld e, $e0                                     ; $61a9: $1e $e0
    xor d                                         ; $61ab: $aa
    ld e, a                                       ; $61ac: $5f
    rst $38                                       ; $61ad: $ff
    ret nz                                        ; $61ae: $c0

    rst $38                                       ; $61af: $ff
    sbc b                                         ; $61b0: $98
    ld h, a                                       ; $61b1: $67
    jr nc, jr_051_6195                            ; $61b2: $30 $e1

    ld e, b                                       ; $61b4: $58
    ld h, b                                       ; $61b5: $60
    ld h, [hl]                                    ; $61b6: $66
    ld a, [$4b90]                                 ; $61b7: $fa $90 $4b
    dec hl                                        ; $61ba: $2b
    ret nc                                        ; $61bb: $d0

    ld c, b                                       ; $61bc: $48
    inc a                                         ; $61bd: $3c
    inc bc                                        ; $61be: $03
    add h                                         ; $61bf: $84
    ld [hl], e                                    ; $61c0: $73
    or h                                          ; $61c1: $b4
    rst $30                                       ; $61c2: $f7
    db $eb                                        ; $61c3: $eb
    and e                                         ; $61c4: $a3
    ld c, h                                       ; $61c5: $4c
    ld [hl], b                                    ; $61c6: $70
    pop hl                                        ; $61c7: $e1
    ld a, [hl-]                                   ; $61c8: $3a
    rst $18                                       ; $61c9: $df
    rst $30                                       ; $61ca: $f7
    ld e, [hl]                                    ; $61cb: $5e
    cp a                                          ; $61cc: $bf
    push de                                       ; $61cd: $d5
    ld a, [hl]                                    ; $61ce: $7e
    db $dd                                        ; $61cf: $dd
    ld a, a                                       ; $61d0: $7f
    ei                                            ; $61d1: $fb
    ld l, $28                                     ; $61d2: $2e $28
    ld h, e                                       ; $61d4: $63
    add hl, de                                    ; $61d5: $19
    rst $38                                       ; $61d6: $ff
    rst $20                                       ; $61d7: $e7

Jump_051_61d8:
    rla                                           ; $61d8: $17
    xor $3f                                       ; $61d9: $ee $3f
    ret z                                         ; $61db: $c8

    cpl                                           ; $61dc: $2f
    ret c                                         ; $61dd: $d8

    rra                                           ; $61de: $1f
    db $eb                                        ; $61df: $eb
    ldh a, [$fd]                                  ; $61e0: $f0 $fd
    ld a, [hl+]                                   ; $61e2: $2a
    nop                                           ; $61e3: $00
    jp c, $20c8                                   ; $61e4: $da $c8 $20

    xor a                                         ; $61e7: $af
    cp $df                                        ; $61e8: $fe $df
    ld e, a                                       ; $61ea: $5f
    ld hl, sp+$6f                                 ; $61eb: $f8 $6f
    ld hl, sp-$21                                 ; $61ed: $f8 $df
    ldh a, [rSCX]                                 ; $61ef: $f0 $43
    ld b, b                                       ; $61f1: $40
    inc a                                         ; $61f2: $3c
    and [hl]                                      ; $61f3: $a6
    ld b, c                                       ; $61f4: $41
    rst $38                                       ; $61f5: $ff
    ccf                                           ; $61f6: $3f
    jp $c73e                                      ; $61f7: $c3 $3e $c7


    db $dd                                        ; $61fa: $dd
    cpl                                           ; $61fb: $2f
    jp c, $fe2f                                   ; $61fc: $da $2f $fe

    ldh a, [$e5]                                  ; $61ff: $f0 $e5
    dec a                                         ; $6201: $3d
    jp $c73c                                      ; $6202: $c3 $3c $c7


    ret nc                                        ; $6205: $d0

    cpl                                           ; $6206: $2f
    ret c                                         ; $6207: $d8

    add c                                         ; $6208: $81
    cpl                                           ; $6209: $2f
    ld c, [hl]                                    ; $620a: $4e
    rst $38                                       ; $620b: $ff
    rst $38                                       ; $620c: $ff
    rst $38                                       ; $620d: $ff
    rst $38                                       ; $620e: $ff
    rst $38                                       ; $620f: $ff
    rst $38                                       ; $6210: $ff
    rst $38                                       ; $6211: $ff
    rst $38                                       ; $6212: $ff
    rst $38                                       ; $6213: $ff
    db $e4                                        ; $6214: $e4
    db $e3                                        ; $6215: $e3
    jr nc, jr_051_6297                            ; $6216: $30 $7f

    di                                            ; $6218: $f3
    ld d, h                                       ; $6219: $54

jr_051_621a:
    pop bc                                        ; $621a: $c1
    xor d                                         ; $621b: $aa
    add b                                         ; $621c: $80
    sbc $80                                       ; $621d: $de $80
    ld [hl-], a                                   ; $621f: $32
    ld hl, $3eaf                                  ; $6220: $21 $af $3e
    add c                                         ; $6223: $81
    inc c                                         ; $6224: $0c
    jp Jump_000_2d46                              ; $6225: $c3 $46 $2d


    or l                                          ; $6228: $b5
    inc [hl]                                      ; $6229: $34
    ld l, $7f                                     ; $622a: $2e $7f
    db $fc                                        ; $622c: $fc
    db $fc                                        ; $622d: $fc
    db $e4                                        ; $622e: $e4
    or $e3                                        ; $622f: $f6 $e3
    jr jr_051_621a                                ; $6231: $18 $e7

    dec a                                         ; $6233: $3d
    jp nz, $c439                                  ; $6234: $c2 $39 $c4

    rst $38                                       ; $6237: $ff
    rla                                           ; $6238: $17
    add sp, $27                                   ; $6239: $e8 $27
    ret nc                                        ; $623b: $d0

    rrca                                          ; $623c: $0f
    ldh [$bf], a                                  ; $623d: $e0 $bf
    ld b, b                                       ; $623f: $40
    rst $28                                       ; $6240: $ef
    ccf                                           ; $6241: $3f
    add b                                         ; $6242: $80
    cp $ff                                        ; $6243: $fe $ff
    add a                                         ; $6245: $87
    ld h, b                                       ; $6246: $60
    cp $fc                                        ; $6247: $fe $fc
    rst $38                                       ; $6249: $ff
    rst $38                                       ; $624a: $ff
    ld a, [$fbfd]                                 ; $624b: $fa $fd $fb
    ldh a, [$fd]                                  ; $624e: $f0 $fd
    cp $f9                                        ; $6250: $fe $f9
    rst $38                                       ; $6252: $ff
    db $dd                                        ; $6253: $dd
    ld a, a                                       ; $6254: $7f
    cp $e0                                        ; $6255: $fe $e0
    rst $38                                       ; $6257: $ff
    ld a, a                                       ; $6258: $7f
    cp a                                          ; $6259: $bf
    xor d                                         ; $625a: $aa
    nop                                           ; $625b: $00
    rra                                           ; $625c: $1f
    rst $28                                       ; $625d: $ef
    db $fd                                        ; $625e: $fd
    ld a, a                                       ; $625f: $7f
    sbc d                                         ; $6260: $9a
    nop                                           ; $6261: $00
    db $f4                                        ; $6262: $f4
    ei                                            ; $6263: $fb
    jp hl                                         ; $6264: $e9


    or $ef                                        ; $6265: $f6 $ef
    ret nz                                        ; $6267: $c0

    rst $38                                       ; $6268: $ff
    ld a, [c]                                     ; $6269: $f2
    ld sp, hl                                     ; $626a: $f9
    db $e3                                        ; $626b: $e3
    rst $38                                       ; $626c: $ff
    ret nc                                        ; $626d: $d0

    rst $28                                       ; $626e: $ef
    add l                                         ; $626f: $85
    jp c, $bbf7                                   ; $6270: $da $f7 $bb

    inc b                                         ; $6273: $04
    xor a                                         ; $6274: $af
    ld b, [hl]                                    ; $6275: $46
    ld h, b                                       ; $6276: $60
    add a                                         ; $6277: $87
    ld a, e                                       ; $6278: $7b
    rst $18                                       ; $6279: $df
    cp a                                          ; $627a: $bf
    db $fd                                        ; $627b: $fd
    rst $30                                       ; $627c: $f7
    sbc b                                         ; $627d: $98
    add b                                         ; $627e: $80
    ld d, a                                       ; $627f: $57
    db $fd                                        ; $6280: $fd
    xor c                                         ; $6281: $a9
    ld a, [hl]                                    ; $6282: $7e
    call $f7e3                                    ; $6283: $cd $e3 $f7
    di                                            ; $6286: $f3
    rst $30                                       ; $6287: $f7
    or $44                                        ; $6288: $f6 $44
    ld h, b                                       ; $628a: $60
    rst $38                                       ; $628b: $ff
    cp $f5                                        ; $628c: $fe $f5
    cp $ff                                        ; $628e: $fe $ff
    cp a                                          ; $6290: $bf
    ld [$fff4], a                                 ; $6291: $ea $f4 $ff
    jp $efbf                                      ; $6294: $c3 $bf $ef


jr_051_6297:
    rst $18                                       ; $6297: $df
    sub l                                         ; $6298: $95
    rst $28                                       ; $6299: $ef
    cp d                                          ; $629a: $ba
    ld [c], a                                     ; $629b: $e2
    ld e, a                                       ; $629c: $5f
    inc a                                         ; $629d: $3c
    and b                                         ; $629e: $a0
    cp a                                          ; $629f: $bf
    xor e                                         ; $62a0: $ab
    add b                                         ; $62a1: $80
    and c                                         ; $62a2: $a1
    ldh [rIE], a                                  ; $62a3: $e0 $ff
    ld a, l                                       ; $62a5: $7d
    db $fd                                        ; $62a6: $fd
    and b                                         ; $62a7: $a0
    ldh [$f4], a                                  ; $62a8: $e0 $f4
    ei                                            ; $62aa: $fb
    rst $38                                       ; $62ab: $ff
    cp $fb                                        ; $62ac: $fe $fb
    sub d                                         ; $62ae: $92
    adc b                                         ; $62af: $88
    db $fd                                        ; $62b0: $fd
    ld e, a                                       ; $62b1: $5f
    adc a                                         ; $62b2: $8f
    add d                                         ; $62b3: $82
    di                                            ; $62b4: $f3
    rst $38                                       ; $62b5: $ff
    ld [$d8f7], a                                 ; $62b6: $ea $f7 $d8
    rst $20                                       ; $62b9: $e7
    rst $38                                       ; $62ba: $ff
    db $fd                                        ; $62bb: $fd
    ei                                            ; $62bc: $fb
    rst $28                                       ; $62bd: $ef
    rst $38                                       ; $62be: $ff
    set 7, a                                      ; $62bf: $cb $ff
    and d                                         ; $62c1: $a2
    rst $18                                       ; $62c2: $df
    ld a, a                                       ; $62c3: $7f
    ld l, b                                       ; $62c4: $68
    sub a                                         ; $62c5: $97
    rst $38                                       ; $62c6: $ff
    rst $38                                       ; $62c7: $ff
    rst $28                                       ; $62c8: $ef
    rst $38                                       ; $62c9: $ff
    ld [hl], a                                    ; $62ca: $77
    ret z                                         ; $62cb: $c8

    ld [c], a                                     ; $62cc: $e2
    sbc [hl]                                      ; $62cd: $9e
    sbc [hl]                                      ; $62ce: $9e
    pop hl                                        ; $62cf: $e1
    ld l, c                                       ; $62d0: $69
    rst $38                                       ; $62d1: $ff
    db $d3                                        ; $62d2: $d3
    rst $28                                       ; $62d3: $ef
    cpl                                           ; $62d4: $2f
    ret nz                                        ; $62d5: $c0

    cp d                                          ; $62d6: $ba
    ld [c], a                                     ; $62d7: $e2
    or $3f                                        ; $62d8: $f6 $3f
    rst $38                                       ; $62da: $ff
    xor [hl]                                      ; $62db: $ae
    ei                                            ; $62dc: $fb
    push af                                       ; $62dd: $f5
    rst $38                                       ; $62de: $ff
    or a                                          ; $62df: $b7
    ld l, h                                       ; $62e0: $6c
    ldh [rRP], a                                  ; $62e1: $e0 $56
    add e                                         ; $62e3: $83
    ret                                           ; $62e4: $c9


    rst $18                                       ; $62e5: $df
    xor d                                         ; $62e6: $aa
    ldh [rSCX], a                                 ; $62e7: $e0 $43
    adc e                                         ; $62e9: $8b
    ei                                            ; $62ea: $fb
    inc sp                                        ; $62eb: $33
    ldh [$31], a                                  ; $62ec: $e0 $31
    adc b                                         ; $62ee: $88
    or a                                          ; $62ef: $b7
    ld [c], a                                     ; $62f0: $e2
    ei                                            ; $62f1: $fb
    rra                                           ; $62f2: $1f
    add c                                         ; $62f3: $81
    inc sp                                        ; $62f4: $33
    ldh [$fe], a                                  ; $62f5: $e0 $fe
    rst $38                                       ; $62f7: $ff
    rst $28                                       ; $62f8: $ef
    ei                                            ; $62f9: $fb
    ld d, b                                       ; $62fa: $50
    ld h, h                                       ; $62fb: $64
    ld e, [hl]                                    ; $62fc: $5e
    ldh [$84], a                                  ; $62fd: $e0 $84
    jp hl                                         ; $62ff: $e9


    ld d, a                                       ; $6300: $57
    ld h, [hl]                                    ; $6301: $66
    ld [c], a                                     ; $6302: $e2
    db $fd                                        ; $6303: $fd
    rst $28                                       ; $6304: $ef
    db $eb                                        ; $6305: $eb
    db $fc                                        ; $6306: $fc
    or d                                          ; $6307: $b2
    add sp, -$21                                  ; $6308: $e8 $df
    rst $30                                       ; $630a: $f7
    cp l                                          ; $630b: $bd
    ld h, d                                       ; $630c: $62
    ld [$e115], a                                 ; $630d: $ea $15 $e1
    ld l, c                                       ; $6310: $69
    rst $18                                       ; $6311: $df
    cp a                                          ; $6312: $bf
    ld e, a                                       ; $6313: $5f
    ld h, $dd                                     ; $6314: $26 $dd
    rst $38                                       ; $6316: $ff
    rst $38                                       ; $6317: $ff
    ld a, [$6ace]                                 ; $6318: $fa $ce $6a
    ld a, a                                       ; $631b: $7f
    ld c, d                                       ; $631c: $4a
    ld b, b                                       ; $631d: $40
    ld d, h                                       ; $631e: $54
    ld l, [hl]                                    ; $631f: $6e
    push hl                                       ; $6320: $e5
    cp [hl]                                       ; $6321: $be
    ld h, c                                       ; $6322: $61
    ld [$ec6a], a                                 ; $6323: $ea $6a $ec
    adc d                                         ; $6326: $8a
    ld a, h                                       ; $6327: $7c
    ld h, b                                       ; $6328: $60
    xor a                                         ; $6329: $af
    sbc h                                         ; $632a: $9c
    ld l, b                                       ; $632b: $68
    pop af                                        ; $632c: $f1
    xor a                                         ; $632d: $af
    and b                                         ; $632e: $a0
    pop bc                                        ; $632f: $c1
    adc h                                         ; $6330: $8c
    ld l, h                                       ; $6331: $6c
    call z, $fde9                                 ; $6332: $cc $e9 $fd
    cp $54                                        ; $6335: $fe $54
    ei                                            ; $6337: $fb
    rst $20                                       ; $6338: $e7
    add c                                         ; $6339: $81
    rst $38                                       ; $633a: $ff
    ld d, h                                       ; $633b: $54
    ld e, h                                       ; $633c: $5c
    ld h, b                                       ; $633d: $60
    ld [hl], b                                    ; $633e: $70
    ld h, e                                       ; $633f: $63
    ld b, b                                       ; $6340: $40
    cp a                                          ; $6341: $bf
    ld [$b2ea], sp                                ; $6342: $08 $ea $b2
    jr nz, jr_051_639c                            ; $6345: $20 $55

    db $e4                                        ; $6347: $e4
    jr nz, jr_051_63c8                            ; $6348: $20 $7e

    ld e, a                                       ; $634a: $5f
    ld h, d                                       ; $634b: $62
    nop                                           ; $634c: $00
    rst $38                                       ; $634d: $ff
    add h                                         ; $634e: $84
    ld c, $7a                                     ; $634f: $0e $7a
    add b                                         ; $6351: $80
    ld d, a                                       ; $6352: $57
    rst $38                                       ; $6353: $ff
    cp l                                          ; $6354: $bd
    ld a, [$7ec6]                                 ; $6355: $fa $c6 $7e
    pop hl                                        ; $6358: $e1
    or h                                          ; $6359: $b4
    jp Jump_051_6d34                              ; $635a: $c3 $34 $6d


    and a                                         ; $635d: $a7
    push af                                       ; $635e: $f5
    rst $38                                       ; $635f: $ff
    cp a                                          ; $6360: $bf
    cp c                                          ; $6361: $b9
    push hl                                       ; $6362: $e5
    inc hl                                        ; $6363: $23
    ld h, b                                       ; $6364: $60
    xor d                                         ; $6365: $aa
    add hl, bc                                    ; $6366: $09
    ldh [$ca], a                                  ; $6367: $e0 $ca
    ld a, $09                                     ; $6369: $3e $09
    db $ec                                        ; $636b: $ec
    xor a                                         ; $636c: $af
    rst $38                                       ; $636d: $ff
    ld d, d                                       ; $636e: $52
    db $fd                                        ; $636f: $fd
    xor d                                         ; $6370: $aa
    xor $40                                       ; $6371: $ee $40
    ld e, d                                       ; $6373: $5a
    pop bc                                        ; $6374: $c1
    ld a, $00                                     ; $6375: $3e $00
    ld h, e                                       ; $6377: $63
    dec hl                                        ; $6378: $2b
    push de                                       ; $6379: $d5
    dec b                                         ; $637a: $05
    ld a, [$d454]                                 ; $637b: $fa $54 $d4
    pop hl                                        ; $637e: $e1
    ld [$2ee2], a                                 ; $637f: $ea $e2 $2e
    ld e, d                                       ; $6382: $5a
    pop bc                                        ; $6383: $c1
    ld l, [hl]                                    ; $6384: $6e
    cp e                                          ; $6385: $bb
    ld bc, $8056                                  ; $6386: $01 $56 $80
    ld d, a                                       ; $6389: $57
    inc h                                         ; $638a: $24
    ld [c], a                                     ; $638b: $e2
    cp b                                          ; $638c: $b8
    db $e3                                        ; $638d: $e3
    and c                                         ; $638e: $a1
    dec d                                         ; $638f: $15
    ld l, $e2                                     ; $6390: $2e $e2
    ldh [$e3], a                                  ; $6392: $e0 $e3
    sub [hl]                                      ; $6394: $96
    add b                                         ; $6395: $80
    ld l, $e2                                     ; $6396: $2e $e2
    rst $28                                       ; $6398: $ef
    adc d                                         ; $6399: $8a
    add sp, -$57                                  ; $639a: $e8 $a9

jr_051_639c:
    rst $20                                       ; $639c: $e7
    cp $48                                        ; $639d: $fe $48
    rst $30                                       ; $639f: $f7
    xor d                                         ; $63a0: $aa
    db $e3                                        ; $63a1: $e3
    ld c, $e3                                     ; $63a2: $0e $e3
    ld d, l                                       ; $63a4: $55
    rst $38                                       ; $63a5: $ff
    ld [de], a                                    ; $63a6: $12
    ld bc, $ccef                                  ; $63a7: $01 $ef $cc
    db $e3                                        ; $63aa: $e3
    ld b, b                                       ; $63ab: $40
    ldh [rIE], a                                  ; $63ac: $e0 $ff
    rst $38                                       ; $63ae: $ff
    rst $38                                       ; $63af: $ff
    rst $38                                       ; $63b0: $ff
    rst $38                                       ; $63b1: $ff
    rst $38                                       ; $63b2: $ff
    rst $38                                       ; $63b3: $ff
    rst $38                                       ; $63b4: $ff
    push hl                                       ; $63b5: $e5
    db $e4                                        ; $63b6: $e4
    nop                                           ; $63b7: $00
    nop                                           ; $63b8: $00
    nop                                           ; $63b9: $00
    nop                                           ; $63ba: $00
    nop                                           ; $63bb: $00
    nop                                           ; $63bc: $00
    nop                                           ; $63bd: $00
    nop                                           ; $63be: $00
    nop                                           ; $63bf: $00
    nop                                           ; $63c0: $00
    nop                                           ; $63c1: $00
    nop                                           ; $63c2: $00
    nop                                           ; $63c3: $00
    nop                                           ; $63c4: $00
    nop                                           ; $63c5: $00
    nop                                           ; $63c6: $00
    nop                                           ; $63c7: $00

jr_051_63c8:
    nop                                           ; $63c8: $00
    nop                                           ; $63c9: $00
    nop                                           ; $63ca: $00
    nop                                           ; $63cb: $00
    nop                                           ; $63cc: $00
    nop                                           ; $63cd: $00
    nop                                           ; $63ce: $00
    nop                                           ; $63cf: $00
    nop                                           ; $63d0: $00
    nop                                           ; $63d1: $00
    nop                                           ; $63d2: $00
    nop                                           ; $63d3: $00
    nop                                           ; $63d4: $00
    nop                                           ; $63d5: $00
    nop                                           ; $63d6: $00
    nop                                           ; $63d7: $00
    nop                                           ; $63d8: $00
    nop                                           ; $63d9: $00
    nop                                           ; $63da: $00
    nop                                           ; $63db: $00
    nop                                           ; $63dc: $00
    nop                                           ; $63dd: $00
    nop                                           ; $63de: $00
    nop                                           ; $63df: $00
    nop                                           ; $63e0: $00
    nop                                           ; $63e1: $00
    nop                                           ; $63e2: $00
    nop                                           ; $63e3: $00
    nop                                           ; $63e4: $00
    nop                                           ; $63e5: $00
    nop                                           ; $63e6: $00
    nop                                           ; $63e7: $00
    nop                                           ; $63e8: $00
    nop                                           ; $63e9: $00
    nop                                           ; $63ea: $00
    nop                                           ; $63eb: $00
    nop                                           ; $63ec: $00
    nop                                           ; $63ed: $00
    nop                                           ; $63ee: $00
    nop                                           ; $63ef: $00
    nop                                           ; $63f0: $00
    nop                                           ; $63f1: $00
    nop                                           ; $63f2: $00
    nop                                           ; $63f3: $00
    nop                                           ; $63f4: $00
    nop                                           ; $63f5: $00
    nop                                           ; $63f6: $00
    nop                                           ; $63f7: $00
    nop                                           ; $63f8: $00
    nop                                           ; $63f9: $00
    nop                                           ; $63fa: $00
    nop                                           ; $63fb: $00
    nop                                           ; $63fc: $00
    nop                                           ; $63fd: $00
    nop                                           ; $63fe: $00
    nop                                           ; $63ff: $00
    nop                                           ; $6400: $00
    nop                                           ; $6401: $00
    nop                                           ; $6402: $00
    nop                                           ; $6403: $00
    nop                                           ; $6404: $00
    nop                                           ; $6405: $00
    nop                                           ; $6406: $00
    nop                                           ; $6407: $00
    nop                                           ; $6408: $00
    nop                                           ; $6409: $00
    nop                                           ; $640a: $00
    nop                                           ; $640b: $00
    nop                                           ; $640c: $00
    nop                                           ; $640d: $00
    nop                                           ; $640e: $00
    nop                                           ; $640f: $00
    nop                                           ; $6410: $00
    nop                                           ; $6411: $00
    nop                                           ; $6412: $00
    nop                                           ; $6413: $00
    nop                                           ; $6414: $00
    nop                                           ; $6415: $00
    nop                                           ; $6416: $00
    nop                                           ; $6417: $00
    nop                                           ; $6418: $00
    nop                                           ; $6419: $00
    nop                                           ; $641a: $00
    nop                                           ; $641b: $00
    nop                                           ; $641c: $00
    nop                                           ; $641d: $00
    nop                                           ; $641e: $00
    nop                                           ; $641f: $00
    nop                                           ; $6420: $00
    nop                                           ; $6421: $00
    nop                                           ; $6422: $00
    nop                                           ; $6423: $00
    nop                                           ; $6424: $00
    nop                                           ; $6425: $00
    nop                                           ; $6426: $00
    nop                                           ; $6427: $00
    nop                                           ; $6428: $00
    nop                                           ; $6429: $00
    nop                                           ; $642a: $00
    nop                                           ; $642b: $00
    nop                                           ; $642c: $00
    nop                                           ; $642d: $00
    nop                                           ; $642e: $00
    nop                                           ; $642f: $00
    nop                                           ; $6430: $00
    nop                                           ; $6431: $00
    nop                                           ; $6432: $00
    nop                                           ; $6433: $00
    nop                                           ; $6434: $00
    nop                                           ; $6435: $00
    nop                                           ; $6436: $00
    nop                                           ; $6437: $00
    nop                                           ; $6438: $00
    nop                                           ; $6439: $00
    nop                                           ; $643a: $00
    nop                                           ; $643b: $00
    nop                                           ; $643c: $00
    nop                                           ; $643d: $00
    nop                                           ; $643e: $00
    nop                                           ; $643f: $00
    nop                                           ; $6440: $00
    nop                                           ; $6441: $00
    nop                                           ; $6442: $00
    nop                                           ; $6443: $00
    nop                                           ; $6444: $00
    nop                                           ; $6445: $00
    nop                                           ; $6446: $00
    nop                                           ; $6447: $00
    nop                                           ; $6448: $00
    nop                                           ; $6449: $00
    nop                                           ; $644a: $00
    nop                                           ; $644b: $00
    nop                                           ; $644c: $00
    nop                                           ; $644d: $00
    nop                                           ; $644e: $00
    nop                                           ; $644f: $00
    nop                                           ; $6450: $00
    nop                                           ; $6451: $00
    nop                                           ; $6452: $00
    nop                                           ; $6453: $00
    nop                                           ; $6454: $00
    nop                                           ; $6455: $00
    nop                                           ; $6456: $00
    nop                                           ; $6457: $00
    nop                                           ; $6458: $00
    nop                                           ; $6459: $00
    nop                                           ; $645a: $00
    nop                                           ; $645b: $00
    nop                                           ; $645c: $00
    nop                                           ; $645d: $00
    nop                                           ; $645e: $00
    nop                                           ; $645f: $00
    nop                                           ; $6460: $00
    nop                                           ; $6461: $00
    nop                                           ; $6462: $00
    nop                                           ; $6463: $00
    nop                                           ; $6464: $00
    nop                                           ; $6465: $00
    nop                                           ; $6466: $00
    nop                                           ; $6467: $00
    nop                                           ; $6468: $00
    nop                                           ; $6469: $00
    nop                                           ; $646a: $00
    nop                                           ; $646b: $00
    nop                                           ; $646c: $00
    nop                                           ; $646d: $00
    nop                                           ; $646e: $00
    nop                                           ; $646f: $00
    nop                                           ; $6470: $00
    nop                                           ; $6471: $00
    nop                                           ; $6472: $00
    nop                                           ; $6473: $00
    nop                                           ; $6474: $00
    nop                                           ; $6475: $00
    nop                                           ; $6476: $00
    nop                                           ; $6477: $00
    nop                                           ; $6478: $00
    nop                                           ; $6479: $00
    nop                                           ; $647a: $00
    nop                                           ; $647b: $00
    nop                                           ; $647c: $00
    nop                                           ; $647d: $00
    nop                                           ; $647e: $00
    nop                                           ; $647f: $00
    nop                                           ; $6480: $00
    nop                                           ; $6481: $00
    nop                                           ; $6482: $00
    nop                                           ; $6483: $00
    nop                                           ; $6484: $00
    nop                                           ; $6485: $00
    nop                                           ; $6486: $00
    nop                                           ; $6487: $00
    nop                                           ; $6488: $00
    nop                                           ; $6489: $00
    nop                                           ; $648a: $00
    nop                                           ; $648b: $00
    nop                                           ; $648c: $00
    nop                                           ; $648d: $00
    nop                                           ; $648e: $00
    nop                                           ; $648f: $00
    nop                                           ; $6490: $00
    nop                                           ; $6491: $00
    nop                                           ; $6492: $00
    nop                                           ; $6493: $00
    nop                                           ; $6494: $00
    nop                                           ; $6495: $00
    nop                                           ; $6496: $00
    nop                                           ; $6497: $00
    nop                                           ; $6498: $00
    nop                                           ; $6499: $00
    nop                                           ; $649a: $00
    nop                                           ; $649b: $00
    nop                                           ; $649c: $00
    nop                                           ; $649d: $00
    nop                                           ; $649e: $00
    nop                                           ; $649f: $00
    nop                                           ; $64a0: $00
    nop                                           ; $64a1: $00
    nop                                           ; $64a2: $00
    nop                                           ; $64a3: $00
    nop                                           ; $64a4: $00
    nop                                           ; $64a5: $00
    nop                                           ; $64a6: $00
    nop                                           ; $64a7: $00
    nop                                           ; $64a8: $00
    nop                                           ; $64a9: $00
    nop                                           ; $64aa: $00
    nop                                           ; $64ab: $00
    nop                                           ; $64ac: $00
    nop                                           ; $64ad: $00
    nop                                           ; $64ae: $00
    nop                                           ; $64af: $00
    nop                                           ; $64b0: $00
    nop                                           ; $64b1: $00
    nop                                           ; $64b2: $00
    nop                                           ; $64b3: $00
    nop                                           ; $64b4: $00
    nop                                           ; $64b5: $00
    nop                                           ; $64b6: $00
    nop                                           ; $64b7: $00
    nop                                           ; $64b8: $00
    nop                                           ; $64b9: $00
    nop                                           ; $64ba: $00
    nop                                           ; $64bb: $00
    nop                                           ; $64bc: $00
    nop                                           ; $64bd: $00
    nop                                           ; $64be: $00
    nop                                           ; $64bf: $00
    nop                                           ; $64c0: $00
    nop                                           ; $64c1: $00
    nop                                           ; $64c2: $00
    nop                                           ; $64c3: $00
    nop                                           ; $64c4: $00
    nop                                           ; $64c5: $00
    nop                                           ; $64c6: $00
    nop                                           ; $64c7: $00
    nop                                           ; $64c8: $00
    nop                                           ; $64c9: $00
    nop                                           ; $64ca: $00
    nop                                           ; $64cb: $00
    nop                                           ; $64cc: $00
    nop                                           ; $64cd: $00
    nop                                           ; $64ce: $00
    nop                                           ; $64cf: $00
    nop                                           ; $64d0: $00
    nop                                           ; $64d1: $00
    nop                                           ; $64d2: $00
    nop                                           ; $64d3: $00
    nop                                           ; $64d4: $00
    nop                                           ; $64d5: $00
    nop                                           ; $64d6: $00
    nop                                           ; $64d7: $00
    nop                                           ; $64d8: $00
    nop                                           ; $64d9: $00
    nop                                           ; $64da: $00
    nop                                           ; $64db: $00
    nop                                           ; $64dc: $00
    nop                                           ; $64dd: $00
    nop                                           ; $64de: $00
    nop                                           ; $64df: $00
    nop                                           ; $64e0: $00
    nop                                           ; $64e1: $00
    nop                                           ; $64e2: $00
    nop                                           ; $64e3: $00
    nop                                           ; $64e4: $00
    nop                                           ; $64e5: $00
    nop                                           ; $64e6: $00
    nop                                           ; $64e7: $00
    nop                                           ; $64e8: $00
    nop                                           ; $64e9: $00
    nop                                           ; $64ea: $00
    nop                                           ; $64eb: $00
    nop                                           ; $64ec: $00
    nop                                           ; $64ed: $00
    nop                                           ; $64ee: $00
    nop                                           ; $64ef: $00
    nop                                           ; $64f0: $00
    nop                                           ; $64f1: $00
    nop                                           ; $64f2: $00
    nop                                           ; $64f3: $00
    nop                                           ; $64f4: $00
    nop                                           ; $64f5: $00
    nop                                           ; $64f6: $00
    nop                                           ; $64f7: $00
    nop                                           ; $64f8: $00
    nop                                           ; $64f9: $00
    nop                                           ; $64fa: $00
    nop                                           ; $64fb: $00
    nop                                           ; $64fc: $00
    nop                                           ; $64fd: $00
    nop                                           ; $64fe: $00
    nop                                           ; $64ff: $00
    nop                                           ; $6500: $00
    nop                                           ; $6501: $00
    nop                                           ; $6502: $00
    nop                                           ; $6503: $00
    nop                                           ; $6504: $00
    nop                                           ; $6505: $00
    nop                                           ; $6506: $00
    nop                                           ; $6507: $00
    nop                                           ; $6508: $00
    nop                                           ; $6509: $00
    nop                                           ; $650a: $00
    nop                                           ; $650b: $00
    nop                                           ; $650c: $00
    nop                                           ; $650d: $00
    nop                                           ; $650e: $00
    nop                                           ; $650f: $00
    nop                                           ; $6510: $00
    nop                                           ; $6511: $00
    nop                                           ; $6512: $00
    nop                                           ; $6513: $00
    nop                                           ; $6514: $00
    nop                                           ; $6515: $00
    nop                                           ; $6516: $00
    nop                                           ; $6517: $00
    nop                                           ; $6518: $00
    nop                                           ; $6519: $00
    nop                                           ; $651a: $00
    nop                                           ; $651b: $00
    nop                                           ; $651c: $00
    nop                                           ; $651d: $00
    nop                                           ; $651e: $00
    nop                                           ; $651f: $00
    nop                                           ; $6520: $00
    nop                                           ; $6521: $00
    nop                                           ; $6522: $00
    nop                                           ; $6523: $00
    nop                                           ; $6524: $00
    nop                                           ; $6525: $00
    nop                                           ; $6526: $00
    nop                                           ; $6527: $00
    nop                                           ; $6528: $00
    nop                                           ; $6529: $00
    nop                                           ; $652a: $00
    nop                                           ; $652b: $00
    nop                                           ; $652c: $00
    nop                                           ; $652d: $00
    nop                                           ; $652e: $00
    nop                                           ; $652f: $00
    nop                                           ; $6530: $00
    nop                                           ; $6531: $00
    nop                                           ; $6532: $00
    nop                                           ; $6533: $00
    nop                                           ; $6534: $00
    nop                                           ; $6535: $00
    nop                                           ; $6536: $00
    nop                                           ; $6537: $00
    nop                                           ; $6538: $00
    nop                                           ; $6539: $00
    nop                                           ; $653a: $00
    nop                                           ; $653b: $00
    nop                                           ; $653c: $00
    nop                                           ; $653d: $00
    nop                                           ; $653e: $00
    nop                                           ; $653f: $00
    nop                                           ; $6540: $00
    nop                                           ; $6541: $00
    nop                                           ; $6542: $00
    nop                                           ; $6543: $00
    nop                                           ; $6544: $00
    nop                                           ; $6545: $00
    nop                                           ; $6546: $00
    nop                                           ; $6547: $00
    nop                                           ; $6548: $00
    nop                                           ; $6549: $00
    nop                                           ; $654a: $00
    nop                                           ; $654b: $00
    nop                                           ; $654c: $00
    nop                                           ; $654d: $00
    nop                                           ; $654e: $00
    nop                                           ; $654f: $00
    nop                                           ; $6550: $00
    nop                                           ; $6551: $00
    nop                                           ; $6552: $00
    nop                                           ; $6553: $00
    nop                                           ; $6554: $00
    nop                                           ; $6555: $00
    nop                                           ; $6556: $00
    nop                                           ; $6557: $00
    nop                                           ; $6558: $00
    nop                                           ; $6559: $00
    nop                                           ; $655a: $00
    nop                                           ; $655b: $00
    nop                                           ; $655c: $00
    nop                                           ; $655d: $00
    nop                                           ; $655e: $00
    nop                                           ; $655f: $00
    nop                                           ; $6560: $00
    nop                                           ; $6561: $00
    nop                                           ; $6562: $00
    nop                                           ; $6563: $00
    nop                                           ; $6564: $00
    nop                                           ; $6565: $00
    nop                                           ; $6566: $00
    nop                                           ; $6567: $00
    nop                                           ; $6568: $00
    nop                                           ; $6569: $00
    nop                                           ; $656a: $00
    nop                                           ; $656b: $00
    nop                                           ; $656c: $00
    nop                                           ; $656d: $00
    nop                                           ; $656e: $00
    nop                                           ; $656f: $00
    nop                                           ; $6570: $00
    nop                                           ; $6571: $00
    nop                                           ; $6572: $00
    nop                                           ; $6573: $00
    nop                                           ; $6574: $00
    nop                                           ; $6575: $00
    nop                                           ; $6576: $00
    nop                                           ; $6577: $00
    nop                                           ; $6578: $00
    nop                                           ; $6579: $00
    nop                                           ; $657a: $00
    nop                                           ; $657b: $00
    nop                                           ; $657c: $00
    nop                                           ; $657d: $00
    nop                                           ; $657e: $00
    nop                                           ; $657f: $00
    nop                                           ; $6580: $00
    nop                                           ; $6581: $00
    nop                                           ; $6582: $00
    nop                                           ; $6583: $00
    nop                                           ; $6584: $00
    nop                                           ; $6585: $00
    nop                                           ; $6586: $00
    nop                                           ; $6587: $00
    nop                                           ; $6588: $00
    nop                                           ; $6589: $00
    nop                                           ; $658a: $00
    nop                                           ; $658b: $00
    nop                                           ; $658c: $00
    nop                                           ; $658d: $00
    nop                                           ; $658e: $00
    nop                                           ; $658f: $00
    nop                                           ; $6590: $00
    nop                                           ; $6591: $00
    nop                                           ; $6592: $00
    nop                                           ; $6593: $00
    nop                                           ; $6594: $00
    nop                                           ; $6595: $00
    nop                                           ; $6596: $00
    nop                                           ; $6597: $00
    nop                                           ; $6598: $00
    nop                                           ; $6599: $00
    nop                                           ; $659a: $00
    nop                                           ; $659b: $00
    nop                                           ; $659c: $00
    nop                                           ; $659d: $00
    nop                                           ; $659e: $00
    nop                                           ; $659f: $00
    nop                                           ; $65a0: $00
    nop                                           ; $65a1: $00
    nop                                           ; $65a2: $00
    nop                                           ; $65a3: $00
    nop                                           ; $65a4: $00
    nop                                           ; $65a5: $00
    nop                                           ; $65a6: $00
    nop                                           ; $65a7: $00
    nop                                           ; $65a8: $00
    nop                                           ; $65a9: $00
    nop                                           ; $65aa: $00
    nop                                           ; $65ab: $00
    nop                                           ; $65ac: $00
    nop                                           ; $65ad: $00
    nop                                           ; $65ae: $00
    nop                                           ; $65af: $00
    nop                                           ; $65b0: $00
    nop                                           ; $65b1: $00
    nop                                           ; $65b2: $00
    nop                                           ; $65b3: $00
    nop                                           ; $65b4: $00
    nop                                           ; $65b5: $00
    nop                                           ; $65b6: $00
    nop                                           ; $65b7: $00
    nop                                           ; $65b8: $00
    nop                                           ; $65b9: $00
    ld a, l                                       ; $65ba: $7d
    inc sp                                        ; $65bb: $33
    rst $38                                       ; $65bc: $ff
    db $ec                                        ; $65bd: $ec
    ld de, $1113                                  ; $65be: $11 $13 $11
    inc sp                                        ; $65c1: $33
    inc de                                        ; $65c2: $13
    ld hl, sp-$1f                                 ; $65c3: $f8 $e1
    ld b, [hl]                                    ; $65c5: $46
    rst $38                                       ; $65c6: $ff
    pop hl                                        ; $65c7: $e1
    inc de                                        ; $65c8: $13
    inc de                                        ; $65c9: $13
    ldh a, [$e0]                                  ; $65ca: $f0 $e0
    ld a, [c]                                     ; $65cc: $f2
    pop hl                                        ; $65cd: $e1
    ldh a, [$e1]                                  ; $65ce: $f0 $e1
    ld sp, $e0fe                                  ; $65d0: $31 $fe $e0
    dec [hl]                                      ; $65d3: $35
    inc sp                                        ; $65d4: $33
    cp $e1                                        ; $65d5: $fe $e1
    ld sp, $e0fe                                  ; $65d7: $31 $fe $e0
    inc sp                                        ; $65da: $33
    ld sp, $e3e9                                  ; $65db: $31 $e9 $e3
    pop bc                                        ; $65de: $c1
    ldh [rNR42], a                                ; $65df: $e0 $21
    inc de                                        ; $65e1: $13
    ret nc                                        ; $65e2: $d0

    and $c0                                       ; $65e3: $e6 $c0
    ld [c], a                                     ; $65e5: $e2
    cp $e5                                        ; $65e6: $fe $e5
    cp a                                          ; $65e8: $bf
    db $e3                                        ; $65e9: $e3
    ld sp, $e1ba                                  ; $65ea: $31 $ba $e1
    xor h                                         ; $65ed: $ac
    ldh [rNR23], a                                ; $65ee: $e0 $18
    db $e4                                        ; $65f0: $e4
    ld [c], a                                     ; $65f1: $e2
    db $fc                                        ; $65f2: $fc
    ld sp, hl                                     ; $65f3: $f9
    cp d                                          ; $65f4: $ba
    ldh [$31], a                                  ; $65f5: $e0 $31
    inc de                                        ; $65f7: $13
    and [hl]                                      ; $65f8: $a6
    ld [c], a                                     ; $65f9: $e2
    adc h                                         ; $65fa: $8c
    ldh [$7a], a                                  ; $65fb: $e0 $7a
    ldh [$88], a                                  ; $65fd: $e0 $88
    sub h                                         ; $65ff: $94
    ldh [$72], a                                  ; $6600: $e0 $72
    ld [c], a                                     ; $6602: $e2
    ld h, b                                       ; $6603: $60
    push hl                                       ; $6604: $e5
    rst $38                                       ; $6605: $ff
    rst $38                                       ; $6606: $ff
    rst $38                                       ; $6607: $ff
    rst $38                                       ; $6608: $ff
    rst $38                                       ; $6609: $ff
    pop af                                        ; $660a: $f1
    ldh a, [$66]                                  ; $660b: $f0 $66
    ld a, $ff                                     ; $660d: $3e $ff
    db $e4                                        ; $660f: $e4
    nop                                           ; $6610: $00
    ld b, $06                                     ; $6611: $06 $06
    ld h, [hl]                                    ; $6613: $66
    ld b, $f8                                     ; $6614: $06 $f8
    pop hl                                        ; $6616: $e1
    rst $38                                       ; $6617: $ff
    pop hl                                        ; $6618: $e1
    cp h                                          ; $6619: $bc
    ldh a, [$e1]                                  ; $661a: $f0 $e1
    rst $20                                       ; $661c: $e7
    db $e4                                        ; $661d: $e4
    ld h, b                                       ; $661e: $60
    nop                                           ; $661f: $00
    ld h, b                                       ; $6620: $60
    nop                                           ; $6621: $00
    di                                            ; $6622: $f3
    ldh [rP1], a                                  ; $6623: $e0 $00
    add e                                         ; $6625: $83
    ld h, [hl]                                    ; $6626: $66
    ld h, b                                       ; $6627: $60
    cp $e0                                        ; $6628: $fe $e0
    rst $38                                       ; $662a: $ff
    ldh a, [$d1]                                  ; $662b: $f0 $d1
    db $e4                                        ; $662d: $e4
    db $dd                                        ; $662e: $dd
    ld [c], a                                     ; $662f: $e2
    rst $10                                       ; $6630: $d7
    pop hl                                        ; $6631: $e1
    sbc c                                         ; $6632: $99
    ld l, a                                       ; $6633: $6f
    sub [hl]                                      ; $6634: $96
    sub [hl]                                      ; $6635: $96
    ld h, [hl]                                    ; $6636: $66
    sub [hl]                                      ; $6637: $96
    xor e                                         ; $6638: $ab
    ldh [rNR11], a                                ; $6639: $e0 $11
    sbc c                                         ; $663b: $99
    rst $38                                       ; $663c: $ff
    ldh [$78], a                                  ; $663d: $e0 $78
    and e                                         ; $663f: $a3
    ldh [$fc], a                                  ; $6640: $e0 $fc
    pop hl                                        ; $6642: $e1
    sbc h                                         ; $6643: $9c
    pop hl                                        ; $6644: $e1
    ld l, c                                       ; $6645: $69
    sub c                                         ; $6646: $91
    ld l, c                                       ; $6647: $69
    sub c                                         ; $6648: $91
    di                                            ; $6649: $f3
    ldh [rTAC], a                                 ; $664a: $e0 $07
    sbc c                                         ; $664c: $99
    ld h, [hl]                                    ; $664d: $66
    ld l, c                                       ; $664e: $69
    cp $e0                                        ; $664f: $fe $e0
    ldh a, [$e1]                                  ; $6651: $f0 $e1
    db $db                                        ; $6653: $db
    pop hl                                        ; $6654: $e1
    add e                                         ; $6655: $83
    ld [c], a                                     ; $6656: $e2
    ret nc                                        ; $6657: $d0

    db $e3                                        ; $6658: $e3
    ld d, b                                       ; $6659: $50
    pop de                                        ; $665a: $d1
    db $e4                                        ; $665b: $e4
    db $dd                                        ; $665c: $dd
    ld [c], a                                     ; $665d: $e2
    db $fc                                        ; $665e: $fc
    ld [c], a                                     ; $665f: $e2
    ret nz                                        ; $6660: $c0

    ldh [rNR24], a                                ; $6661: $e0 $19
    ld a, e                                       ; $6663: $7b
    ret nz                                        ; $6664: $c0

    sbc c                                         ; $6665: $99
    cp $e1                                        ; $6666: $fe $e1
    rst $20                                       ; $6668: $e7
    sub c                                         ; $6669: $91
    sbc c                                         ; $666a: $99
    ld de, $e268                                  ; $666b: $11 $68 $e2
    ld h, e                                       ; $666e: $63
    ldh [$99], a                                  ; $666f: $e0 $99
    sub b                                         ; $6671: $90
    sub b                                         ; $6672: $90
    jp $9000                                      ; $6673: $c3 $00 $90


    ld e, e                                       ; $6676: $5b
    ldh [$a0], a                                  ; $6677: $e0 $a0
    ld [c], a                                     ; $6679: $e2
    ldh a, [$e1]                                  ; $667a: $f0 $e1
    rst $20                                       ; $667c: $e7
    db $e4                                        ; $667d: $e4
    add hl, bc                                    ; $667e: $09
    sub c                                         ; $667f: $91
    dec sp                                        ; $6680: $3b
    add hl, bc                                    ; $6681: $09
    sub c                                         ; $6682: $91
    di                                            ; $6683: $f3
    ldh [$99], a                                  ; $6684: $e0 $99
    nop                                           ; $6686: $00
    add hl, bc                                    ; $6687: $09
    cp $e0                                        ; $6688: $fe $e0
    ldh a, [$e1]                                  ; $668a: $f0 $e1
    ret nz                                        ; $668c: $c0

    db $db                                        ; $668d: $db
    pop hl                                        ; $668e: $e1
    inc sp                                        ; $668f: $33
    ld [c], a                                     ; $6690: $e2
    ret nc                                        ; $6691: $d0

    db $e3                                        ; $6692: $e3
    pop de                                        ; $6693: $d1
    db $e4                                        ; $6694: $e4
    db $dd                                        ; $6695: $dd
    ld [c], a                                     ; $6696: $e2
    reti                                          ; $6697: $d9


    pop hl                                        ; $6698: $e1
    sub b                                         ; $6699: $90
    add hl, bc                                    ; $669a: $09
    ld [de], a                                    ; $669b: $12
    and b                                         ; $669c: $a0
    ldh [$91], a                                  ; $669d: $e0 $91
    and b                                         ; $669f: $a0
    pop hl                                        ; $66a0: $e1
    add $e1                                       ; $66a1: $c6 $e1
    sbc c                                         ; $66a3: $99
    ld de, $4dc2                                  ; $66a4: $11 $c2 $4d
    pop hl                                        ; $66a7: $e1
    sub b                                         ; $66a8: $90
    ld [c], a                                     ; $66a9: $e2
    ld h, h                                       ; $66aa: $64
    adc d                                         ; $66ab: $8a
    ldh [$f0], a                                  ; $66ac: $e0 $f0
    pop af                                        ; $66ae: $f1
    sub c                                         ; $66af: $91
    add sp, -$1c                                  ; $66b0: $e8 $e4
    call nc, Call_000_22e4                        ; $66b2: $d4 $e4 $22
    sub d                                         ; $66b5: $92
    cp $e0                                        ; $66b6: $fe $e0
    rst $38                                       ; $66b8: $ff
    ld de, $1919                                  ; $66b9: $11 $19 $19
    sbc c                                         ; $66bc: $99
    sbc c                                         ; $66bd: $99
    sub d                                         ; $66be: $92
    sub d                                         ; $66bf: $92
    ld [hl+], a                                   ; $66c0: $22
    db $fc                                        ; $66c1: $fc
    db $fc                                        ; $66c2: $fc
    pop hl                                        ; $66c3: $e1
    rst $38                                       ; $66c4: $ff
    pop hl                                        ; $66c5: $e1
    ld de, $1999                                  ; $66c6: $11 $99 $19
    sub d                                         ; $66c9: $92
    add hl, de                                    ; $66ca: $19
    sub d                                         ; $66cb: $92
    dec sp                                        ; $66cc: $3b
    sbc c                                         ; $66cd: $99
    ld [hl+], a                                   ; $66ce: $22
    ld [c], a                                     ; $66cf: $e2
    db $e3                                        ; $66d0: $e3
    ld [hl+], a                                   ; $66d1: $22
    ld [hl+], a                                   ; $66d2: $22
    add hl, hl                                    ; $66d3: $29
    jp hl                                         ; $66d4: $e9


Call_051_66d5:
    db $e3                                        ; $66d5: $e3
    db $e4                                        ; $66d6: $e4
    ldh [$80], a                                  ; $66d7: $e0 $80
    ldh a, [$e3]                                  ; $66d9: $f0 $e3
    jp hl                                         ; $66db: $e9


    pop bc                                        ; $66dc: $c1
    rst $10                                       ; $66dd: $d7
    pop hl                                        ; $66de: $e1
    sbc $e1                                       ; $66df: $de $e1
    jp c, $88e1                                   ; $66e1: $da $e1 $88

    push hl                                       ; $66e4: $e5
    adc c                                         ; $66e5: $89
    db $e4                                        ; $66e6: $e4
    sbc c                                         ; $66e7: $99
    ld hl, sp-$54                                 ; $66e8: $f8 $ac
    pop hl                                        ; $66ea: $e1
    jp nz, $f8e0                                  ; $66eb: $c2 $e0 $f8

    ldh [$99], a                                  ; $66ee: $e0 $99
    sub d                                         ; $66f0: $92
    add hl, de                                    ; $66f1: $19
    sbc c                                         ; $66f2: $99
    ld de, $1939                                  ; $66f3: $11 $39 $19
    add $e3                                       ; $66f6: $c6 $e3
    pop af                                        ; $66f8: $f1
    pop hl                                        ; $66f9: $e1
    add hl, hl                                    ; $66fa: $29
    sub c                                         ; $66fb: $91
    add hl, hl                                    ; $66fc: $29
    ld hl, sp-$40                                 ; $66fd: $f8 $c0
    xor l                                         ; $66ff: $ad
    pop hl                                        ; $6700: $e1
    nop                                           ; $6701: $00
    cp $e0                                        ; $6702: $fe $e0
    cp h                                          ; $6704: $bc
    ld [c], a                                     ; $6705: $e2
    and d                                         ; $6706: $a2
    db $e4                                        ; $6707: $e4
    ldh a, [$e1]                                  ; $6708: $f0 $e1
    add h                                         ; $670a: $84
    ld [c], a                                     ; $670b: $e2
    and h                                         ; $670c: $a4
    ld [c], a                                     ; $670d: $e2
    and a                                         ; $670e: $a7
    db $e4                                        ; $670f: $e4
    dec [hl]                                      ; $6710: $35
    ld [c], a                                     ; $6711: $e2
    nop                                           ; $6712: $00
    ret nz                                        ; $6713: $c0

    push bc                                       ; $6714: $c5
    cp d                                          ; $6715: $ba
    ret nz                                        ; $6716: $c0

    ld a, d                                       ; $6717: $7a
    push hl                                       ; $6718: $e5
    cp $fd                                        ; $6719: $fe $fd
    sbc b                                         ; $671b: $98
    push bc                                       ; $671c: $c5
    rst $38                                       ; $671d: $ff
    rst $38                                       ; $671e: $ff
    rst $38                                       ; $671f: $ff
    rst $38                                       ; $6720: $ff
    rst $38                                       ; $6721: $ff
    rst $38                                       ; $6722: $ff
    nop                                           ; $6723: $00
    rst $38                                       ; $6724: $ff
    rst $38                                       ; $6725: $ff
    rst $38                                       ; $6726: $ff
    rst $38                                       ; $6727: $ff
    and $a3                                       ; $6728: $e6 $a3
    ld h, a                                       ; $672a: $67
    add $ff                                       ; $672b: $c6 $ff
    rst $38                                       ; $672d: $ff
    rst $38                                       ; $672e: $ff
    rst $38                                       ; $672f: $ff
    rst $38                                       ; $6730: $ff
    rst $38                                       ; $6731: $ff
    rst $38                                       ; $6732: $ff
    rst $38                                       ; $6733: $ff
    db $f4                                        ; $6734: $f4
    rst $38                                       ; $6735: $ff
    rst $38                                       ; $6736: $ff
    sbc l                                         ; $6737: $9d
    ld h, d                                       ; $6738: $62
    ld d, l                                       ; $6739: $55
    rst $38                                       ; $673a: $ff
    rst $20                                       ; $673b: $e7
    ld d, c                                       ; $673c: $51
    ld d, l                                       ; $673d: $55
    ld de, $e051                                  ; $673e: $11 $51 $e0
    jr @-$58                                      ; $6741: $18 $a6

    ld c, $ed                                     ; $6743: $0e $ed
    ret nz                                        ; $6745: $c0

    ld a, l                                       ; $6746: $7d
    and b                                         ; $6747: $a0
    ld [hl], l                                    ; $6748: $75
    jr c, jr_051_67ab                             ; $6749: $38 $60

    rla                                           ; $674b: $17
    ld de, $5f77                                  ; $674c: $11 $77 $5f
    rla                                           ; $674f: $17
    ld [hl], a                                    ; $6750: $77
    ld de, $7711                                  ; $6751: $11 $11 $77
    rst $38                                       ; $6754: $ff
    db $e3                                        ; $6755: $e3
    ld [hl], c                                    ; $6756: $71
    cp $e4                                        ; $6757: $fe $e4
    ld d, b                                       ; $6759: $50
    rst $38                                       ; $675a: $ff
    db $fc                                        ; $675b: $fc
    adc [hl]                                      ; $675c: $8e
    rst $18                                       ; $675d: $df
    rst $38                                       ; $675e: $ff
    rst $38                                       ; $675f: $ff
    ld e, b                                       ; $6760: $58
    rst $18                                       ; $6761: $df
    ld de, $ee10                                  ; $6762: $11 $10 $ee
    call z, $e4ff                                 ; $6765: $cc $ff $e4
    ld hl, sp-$4a                                 ; $6768: $f8 $b6
    rst $38                                       ; $676a: $ff
    db $fc                                        ; $676b: $fc
    ei                                            ; $676c: $fb
    cp b                                          ; $676d: $b8
    ld [$0006], a                                 ; $676e: $ea $06 $00
    ld h, [hl]                                    ; $6771: $66
    ld de, $2a19                                  ; $6772: $11 $19 $2a
    ld h, [hl]                                    ; $6775: $66
    add b                                         ; $6776: $80
    sub [hl]                                      ; $6777: $96
    ld [hl], d                                    ; $6778: $72
    ld h, h                                       ; $6779: $64
    ld l, c                                       ; $677a: $69
    ld l, c                                       ; $677b: $69
    ld h, h                                       ; $677c: $64
    ld h, b                                       ; $677d: $60
    ld de, $ff63                                  ; $677e: $11 $63 $ff
    rst $38                                       ; $6781: $ff
    ld [hl], h                                    ; $6782: $74
    rst $38                                       ; $6783: $ff
    rst $38                                       ; $6784: $ff
    xor $ed                                       ; $6785: $ee $ed
    sub d                                         ; $6787: $92
    ld l, h                                       ; $6788: $6c
    add d                                         ; $6789: $82
    sub d                                         ; $678a: $92
    add hl, hl                                    ; $678b: $29
    xor $ff                                       ; $678c: $ee $ff
    db $f4                                        ; $678e: $f4
    rra                                           ; $678f: $1f
    nop                                           ; $6790: $00
    ld c, $00                                     ; $6791: $0e $00
    xor $0e                                       ; $6793: $ee $0e
    db $e3                                        ; $6795: $e3
    ldh [$78], a                                  ; $6796: $e0 $78
    db $dd                                        ; $6798: $dd
    rst $38                                       ; $6799: $ff
    rst $38                                       ; $679a: $ff
    nop                                           ; $679b: $00
    rst $38                                       ; $679c: $ff
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
    ld h, b                                       ; $67aa: $60

jr_051_67ab:
    cp a                                          ; $67ab: $bf
    nop                                           ; $67ac: $00
    rst $38                                       ; $67ad: $ff
    rst $38                                       ; $67ae: $ff
    xor b                                         ; $67af: $a8
    adc c                                         ; $67b0: $89
    nop                                           ; $67b1: $00
    nop                                           ; $67b2: $00
    nop                                           ; $67b3: $00
    ld bc, $ff00                                  ; $67b4: $01 $00 $ff
    rst $38                                       ; $67b7: $ff
    rst $38                                       ; $67b8: $ff
    rst $38                                       ; $67b9: $ff
    rst $38                                       ; $67ba: $ff
    rst $38                                       ; $67bb: $ff
    rst $38                                       ; $67bc: $ff
    rst $38                                       ; $67bd: $ff
    rst $38                                       ; $67be: $ff
    rst $38                                       ; $67bf: $ff
    rst $38                                       ; $67c0: $ff
    rst $38                                       ; $67c1: $ff
    rst $38                                       ; $67c2: $ff
    rst $38                                       ; $67c3: $ff
    nop                                           ; $67c4: $00
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
    rst $38                                       ; $67cf: $ff
    rst $38                                       ; $67d0: $ff
    rst $38                                       ; $67d1: $ff
    rst $38                                       ; $67d2: $ff
    rst $38                                       ; $67d3: $ff
    rst $38                                       ; $67d4: $ff
    nop                                           ; $67d5: $00
    rst $38                                       ; $67d6: $ff
    rst $38                                       ; $67d7: $ff
    rst $38                                       ; $67d8: $ff
    rst $38                                       ; $67d9: $ff
    rst $38                                       ; $67da: $ff
    rst $38                                       ; $67db: $ff
    rst $38                                       ; $67dc: $ff
    rst $38                                       ; $67dd: $ff
    rst $38                                       ; $67de: $ff
    rst $38                                       ; $67df: $ff
    rst $38                                       ; $67e0: $ff
    rst $38                                       ; $67e1: $ff
    rst $38                                       ; $67e2: $ff
    rst $38                                       ; $67e3: $ff
    rst $38                                       ; $67e4: $ff
    rst $38                                       ; $67e5: $ff
    rst $38                                       ; $67e6: $ff
    nop                                           ; $67e7: $00
    nop                                           ; $67e8: $00
    dec c                                         ; $67e9: $0d
    nop                                           ; $67ea: $00
    db $dd                                        ; $67eb: $dd
    dec c                                         ; $67ec: $0d
    db $dd                                        ; $67ed: $dd
    db $dd                                        ; $67ee: $dd
    ld a, e                                       ; $67ef: $7b
    db $dd                                        ; $67f0: $dd
    xor $ff                                       ; $67f1: $ee $ff
    ldh [$de], a                                  ; $67f3: $e0 $de
    xor $d0                                       ; $67f5: $ee $d0
    nop                                           ; $67f7: $00
    ld hl, sp-$1f                                 ; $67f8: $f8 $e1
    rst $30                                       ; $67fa: $f7
    xor $ee                                       ; $67fb: $ee $ee
    nop                                           ; $67fd: $00
    ld hl, sp-$1d                                 ; $67fe: $f8 $e3
    rst $28                                       ; $6800: $ef
    nop                                           ; $6801: $00
    rrca                                          ; $6802: $0f
    ldh a, [$7f]                                  ; $6803: $f0 $7f
    nop                                           ; $6805: $00
    rst $38                                       ; $6806: $ff
    nop                                           ; $6807: $00
    rst $38                                       ; $6808: $ff
    ldh a, [rIE]                                  ; $6809: $f0 $ff
    rst $38                                       ; $680b: $ff
    db $dd                                        ; $680c: $dd
    ldh [rIE], a                                  ; $680d: $e0 $ff
    ret nc                                        ; $680f: $d0

    db $dd                                        ; $6810: $dd
    nop                                           ; $6811: $00
    ret nc                                        ; $6812: $d0

    nop                                           ; $6813: $00
    rst $38                                       ; $6814: $ff
    rst $38                                       ; $6815: $ff
    rrca                                          ; $6816: $0f
    ld l, $ef                                     ; $6817: $2e $ef
    ldh [rP1], a                                  ; $6819: $e0 $00
    rrca                                          ; $681b: $0f
    cp e                                          ; $681c: $bb
    rst $38                                       ; $681d: $ff
    db $e4                                        ; $681e: $e4
    sbc c                                         ; $681f: $99
    rst $38                                       ; $6820: $ff
    db $e4                                        ; $6821: $e4
    ldh a, [$e3]                                  ; $6822: $f0 $e3
    rst $38                                       ; $6824: $ff
    dec bc                                        ; $6825: $0b
    cp e                                          ; $6826: $bb
    nop                                           ; $6827: $00
    nop                                           ; $6828: $00
    or b                                          ; $6829: $b0
    nop                                           ; $682a: $00
    cp e                                          ; $682b: $bb
    nop                                           ; $682c: $00
    di                                            ; $682d: $f3
    cp e                                          ; $682e: $bb
    or b                                          ; $682f: $b0
    add sp, -$1b                                  ; $6830: $e8 $e5
    xor $e0                                       ; $6832: $ee $e0
    cp e                                          ; $6834: $bb
    nop                                           ; $6835: $00
    dec bc                                        ; $6836: $0b
    nop                                           ; $6837: $00
    ld a, l                                       ; $6838: $7d
    nop                                           ; $6839: $00
    ret nc                                        ; $683a: $d0

    push hl                                       ; $683b: $e5
    cp e                                          ; $683c: $bb
    xor d                                         ; $683d: $aa
    cp e                                          ; $683e: $bb
    xor d                                         ; $683f: $aa
    cp d                                          ; $6840: $ba
    cp $e0                                        ; $6841: $fe $e0
    jp z, $e5ff                                   ; $6843: $ca $ff $e5

    sbc d                                         ; $6846: $9a
    cp $e0                                        ; $6847: $fe $e0
    sbc c                                         ; $6849: $99
    cp $e1                                        ; $684a: $fe $e1
    cp b                                          ; $684c: $b8
    ld [$bbbb], a                                 ; $684d: $ea $bb $bb
    db $db                                        ; $6850: $db
    adc b                                         ; $6851: $88
    adc b                                         ; $6852: $88
    sbc b                                         ; $6853: $98
    db $e3                                        ; $6854: $e3
    call z, $88cc                                 ; $6855: $cc $cc $88
    db $e4                                        ; $6858: $e4
    cp $0f                                        ; $6859: $fe $0f
    ld a, e                                       ; $685b: $7b
    xor $00                                       ; $685c: $ee $00
    ld l, b                                       ; $685e: $68
    ldh [$ed], a                                  ; $685f: $e0 $ed
    db $dd                                        ; $6861: $dd
    xor $d0                                       ; $6862: $ee $d0
    ld h, c                                       ; $6864: $61
    ldh [rP1], a                                  ; $6865: $e0 $00
    ld c, b                                       ; $6867: $48
    rst $38                                       ; $6868: $ff
    ld c, b                                       ; $6869: $48
    rst $38                                       ; $686a: $ff
    sub b                                         ; $686b: $90
    ld [$ff48], a                                 ; $686c: $ea $48 $ff
    ld c, b                                       ; $686f: $48
    rst $38                                       ; $6870: $ff
    ld c, b                                       ; $6871: $48
    rst $38                                       ; $6872: $ff
    rst $38                                       ; $6873: $ff
    rst $38                                       ; $6874: $ff
    rst $38                                       ; $6875: $ff
    rst $38                                       ; $6876: $ff
    ld hl, sp-$01                                 ; $6877: $f8 $ff
    rst $38                                       ; $6879: $ff
    rst $38                                       ; $687a: $ff
    rst $38                                       ; $687b: $ff
    ld hl, sp-$09                                 ; $687c: $f8 $f7
    ld c, $ee                                     ; $687e: $0e $ee
    call $bcee                                    ; $6880: $cd $ee $bc
    rst $38                                       ; $6883: $ff
    ret nc                                        ; $6884: $d0

    cp e                                          ; $6885: $bb
    or b                                          ; $6886: $b0
    xor $e0                                       ; $6887: $ee $e0
    xor $f8                                       ; $6889: $ee $f8
    rrca                                          ; $688b: $0f
    rst $30                                       ; $688c: $f7
    adc c                                         ; $688d: $89
    add hl, bc                                    ; $688e: $09
    sbc c                                         ; $688f: $99
    db $db                                        ; $6890: $db
    and h                                         ; $6891: $a4
    ldh [$dd], a                                  ; $6892: $e0 $dd
    rst $28                                       ; $6894: $ef
    db $dd                                        ; $6895: $dd
    rst $10                                       ; $6896: $d7
    rst $28                                       ; $6897: $ef
    ret nc                                        ; $6898: $d0

    rrca                                          ; $6899: $0f
    ret nz                                        ; $689a: $c0

    ld [c], a                                     ; $689b: $e2
    inc c                                         ; $689c: $0c
    cp d                                          ; $689d: $ba
    pop hl                                        ; $689e: $e1
    db $dd                                        ; $689f: $dd
    ret nc                                        ; $68a0: $d0

    or e                                          ; $68a1: $b3
    call z, Call_000_10cc                         ; $68a2: $cc $cc $10
    pop bc                                        ; $68a5: $c1
    ld a, [c]                                     ; $68a6: $f2
    and d                                         ; $68a7: $a2
    ld [$d800], sp                                ; $68a8: $08 $00 $d8
    ldh [$f0], a                                  ; $68ab: $e0 $f0
    rra                                           ; $68ad: $1f
    nop                                           ; $68ae: $00
    adc b                                         ; $68af: $88
    nop                                           ; $68b0: $00
    sbc c                                         ; $68b1: $99
    sub b                                         ; $68b2: $90
    sbc [hl]                                      ; $68b3: $9e
    rst $38                                       ; $68b4: $ff
    rst $38                                       ; $68b5: $ff
    rst $38                                       ; $68b6: $ff
    ld a, [c]                                     ; $68b7: $f2
    pop af                                        ; $68b8: $f1
    ld b, e                                       ; $68b9: $43
    ld [$9688], sp                                ; $68ba: $08 $88 $96
    and d                                         ; $68bd: $a2
    and b                                         ; $68be: $a0
    ldh [$9d], a                                  ; $68bf: $e0 $9d
    and $fe                                       ; $68c1: $e6 $fe
    and b                                         ; $68c3: $a0
    inc c                                         ; $68c4: $0c
    ld [c], a                                     ; $68c5: $e2
    and h                                         ; $68c6: $a4
    ld bc, $bfcc                                  ; $68c7: $01 $cc $bf
    rst $38                                       ; $68ca: $ff
    rst $38                                       ; $68cb: $ff
    rst $38                                       ; $68cc: $ff
    rst $38                                       ; $68cd: $ff
    rst $38                                       ; $68ce: $ff
    rst $38                                       ; $68cf: $ff
    rst $38                                       ; $68d0: $ff
    rst $38                                       ; $68d1: $ff
    rst $38                                       ; $68d2: $ff
    rst $38                                       ; $68d3: $ff
    rst $38                                       ; $68d4: $ff
    rst $38                                       ; $68d5: $ff
    rst $38                                       ; $68d6: $ff
    nop                                           ; $68d7: $00
    rst $38                                       ; $68d8: $ff
    rst $38                                       ; $68d9: $ff
    rst $38                                       ; $68da: $ff
    rst $38                                       ; $68db: $ff
    rst $38                                       ; $68dc: $ff
    rst $38                                       ; $68dd: $ff
    rst $38                                       ; $68de: $ff
    rst $38                                       ; $68df: $ff
    rst $38                                       ; $68e0: $ff
    rst $38                                       ; $68e1: $ff
    rst $38                                       ; $68e2: $ff
    rst $38                                       ; $68e3: $ff
    rst $38                                       ; $68e4: $ff
    rst $38                                       ; $68e5: $ff
    rst $38                                       ; $68e6: $ff
    rst $38                                       ; $68e7: $ff
    nop                                           ; $68e8: $00
    rst $38                                       ; $68e9: $ff
    rst $38                                       ; $68ea: $ff
    rst $38                                       ; $68eb: $ff
    and $00                                       ; $68ec: $e6 $00
    nop                                           ; $68ee: $00
    nop                                           ; $68ef: $00
    nop                                           ; $68f0: $00
    ld l, c                                       ; $68f1: $69
    nop                                           ; $68f2: $00
    ld [hl], c                                    ; $68f3: $71
    nop                                           ; $68f4: $00
    nop                                           ; $68f5: $00
    nop                                           ; $68f6: $00
    nop                                           ; $68f7: $00
    nop                                           ; $68f8: $00
    nop                                           ; $68f9: $00
    nop                                           ; $68fa: $00
    nop                                           ; $68fb: $00
    nop                                           ; $68fc: $00
    nop                                           ; $68fd: $00
    nop                                           ; $68fe: $00
    nop                                           ; $68ff: $00
    nop                                           ; $6900: $00
    nop                                           ; $6901: $00
    nop                                           ; $6902: $00
    nop                                           ; $6903: $00
    dec b                                         ; $6904: $05
    nop                                           ; $6905: $00
    nop                                           ; $6906: $00
    nop                                           ; $6907: $00
    dec bc                                        ; $6908: $0b
    nop                                           ; $6909: $00
    nop                                           ; $690a: $00
    nop                                           ; $690b: $00
    nop                                           ; $690c: $00
    nop                                           ; $690d: $00
    ld [bc], a                                    ; $690e: $02
    nop                                           ; $690f: $00
    jr z, jr_051_6912                             ; $6910: $28 $00

jr_051_6912:
    nop                                           ; $6912: $00
    nop                                           ; $6913: $00
    sub b                                         ; $6914: $90
    nop                                           ; $6915: $00
    nop                                           ; $6916: $00
    nop                                           ; $6917: $00
    push af                                       ; $6918: $f5
    nop                                           ; $6919: $00
    ret z                                         ; $691a: $c8

    nop                                           ; $691b: $00
    nop                                           ; $691c: $00
    nop                                           ; $691d: $00
    add b                                         ; $691e: $80
    nop                                           ; $691f: $00
    nop                                           ; $6920: $00
    nop                                           ; $6921: $00
    nop                                           ; $6922: $00
    nop                                           ; $6923: $00
    ld [bc], a                                    ; $6924: $02
    nop                                           ; $6925: $00
    nop                                           ; $6926: $00
    nop                                           ; $6927: $00
    rla                                           ; $6928: $17
    nop                                           ; $6929: $00
    ld bc, $0000                                  ; $692a: $01 $00 $00
    nop                                           ; $692d: $00
    dec b                                         ; $692e: $05
    nop                                           ; $692f: $00
    ld d, b                                       ; $6930: $50
    nop                                           ; $6931: $00
    nop                                           ; $6932: $00
    nop                                           ; $6933: $00
    ret z                                         ; $6934: $c8

    nop                                           ; $6935: $00
    nop                                           ; $6936: $00
    nop                                           ; $6937: $00
    ld [$9000], a                                 ; $6938: $ea $00 $90
    nop                                           ; $693b: $00
    nop                                           ; $693c: $00
    nop                                           ; $693d: $00
    nop                                           ; $693e: $00
    nop                                           ; $693f: $00
    nop                                           ; $6940: $00
    nop                                           ; $6941: $00
    nop                                           ; $6942: $00
    nop                                           ; $6943: $00
    ld bc, $0000                                  ; $6944: $01 $00 $00
    nop                                           ; $6947: $00
    cpl                                           ; $6948: $2f
    nop                                           ; $6949: $00
    inc bc                                        ; $694a: $03
    nop                                           ; $694b: $00
    nop                                           ; $694c: $00
    nop                                           ; $694d: $00
    ld [bc], a                                    ; $694e: $02
    nop                                           ; $694f: $00
    and b                                         ; $6950: $a0
    nop                                           ; $6951: $00
    nop                                           ; $6952: $00
    nop                                           ; $6953: $00
    ld h, h                                       ; $6954: $64
    nop                                           ; $6955: $00
    nop                                           ; $6956: $00
    nop                                           ; $6957: $00
    call nc, Call_000_2000                        ; $6958: $d4 $00 $20
    nop                                           ; $695b: $00
    nop                                           ; $695c: $00
    nop                                           ; $695d: $00
    add b                                         ; $695e: $80
    nop                                           ; $695f: $00
    ld bc, $0000                                  ; $6960: $01 $00 $00
    nop                                           ; $6963: $00
    nop                                           ; $6964: $00
    nop                                           ; $6965: $00
    nop                                           ; $6966: $00
    nop                                           ; $6967: $00
    ld e, a                                       ; $6968: $5f
    nop                                           ; $6969: $00
    ld b, $00                                     ; $696a: $06 $00
    nop                                           ; $696c: $00
    nop                                           ; $696d: $00
    dec b                                         ; $696e: $05
    nop                                           ; $696f: $00
    ld b, b                                       ; $6970: $40
    nop                                           ; $6971: $00
    nop                                           ; $6972: $00
    nop                                           ; $6973: $00
    or d                                          ; $6974: $b2
    nop                                           ; $6975: $00
    nop                                           ; $6976: $00
    nop                                           ; $6977: $00
    xor b                                         ; $6978: $a8
    nop                                           ; $6979: $00
    ld b, b                                       ; $697a: $40
    nop                                           ; $697b: $00
    nop                                           ; $697c: $00
    nop                                           ; $697d: $00
    nop                                           ; $697e: $00
    nop                                           ; $697f: $00
    ld [bc], a                                    ; $6980: $02
    nop                                           ; $6981: $00
    nop                                           ; $6982: $00
    nop                                           ; $6983: $00
    nop                                           ; $6984: $00
    nop                                           ; $6985: $00
    nop                                           ; $6986: $00
    nop                                           ; $6987: $00
    cp a                                          ; $6988: $bf
    nop                                           ; $6989: $00
    inc c                                         ; $698a: $0c
    nop                                           ; $698b: $00
    nop                                           ; $698c: $00
    nop                                           ; $698d: $00
    ld [bc], a                                    ; $698e: $02
    nop                                           ; $698f: $00
    add b                                         ; $6990: $80
    nop                                           ; $6991: $00
    nop                                           ; $6992: $00
    nop                                           ; $6993: $00
    ld e, c                                       ; $6994: $59
    nop                                           ; $6995: $00
    nop                                           ; $6996: $00
    nop                                           ; $6997: $00
    ld d, b                                       ; $6998: $50
    nop                                           ; $6999: $00
    add b                                         ; $699a: $80
    nop                                           ; $699b: $00
    nop                                           ; $699c: $00
    nop                                           ; $699d: $00
    add b                                         ; $699e: $80
    nop                                           ; $699f: $00
    db $ec                                        ; $69a0: $ec
    rst $38                                       ; $69a1: $ff
    ld hl, sp-$01                                 ; $69a2: $f8 $ff
    ldh [$fe], a                                  ; $69a4: $e0 $fe
    ld b, d                                       ; $69a6: $42
    ld hl, sp-$38                                 ; $69a7: $f8 $c8
    ldh a, [$80]                                  ; $69a9: $f0 $80
    ldh [rNR10], a                                ; $69ab: $e0 $10
    ldh [rP1], a                                  ; $69ad: $e0 $00
    ret nz                                        ; $69af: $c0

    rst $38                                       ; $69b0: $ff
    rst $38                                       ; $69b1: $ff
    rst $38                                       ; $69b2: $ff
    rst $38                                       ; $69b3: $ff
    rst $38                                       ; $69b4: $ff
    rst $38                                       ; $69b5: $ff
    rst $30                                       ; $69b6: $f7
    rst $38                                       ; $69b7: $ff
    cp h                                          ; $69b8: $bc
    rst $38                                       ; $69b9: $ff
    add sp, -$01                                  ; $69ba: $e8 $ff
    add c                                         ; $69bc: $81
    cp $08                                        ; $69bd: $fe $08
    ldh a, [$bc]                                  ; $69bf: $f0 $bc
    rst $38                                       ; $69c1: $ff

jr_051_69c2:
    add sp, -$01                                  ; $69c2: $e8 $ff
    add c                                         ; $69c4: $81
    cp $08                                        ; $69c5: $fe $08
    ldh a, [rNR41]                                ; $69c7: $f0 $20
    ret nz                                        ; $69c9: $c0

    nop                                           ; $69ca: $00
    nop                                           ; $69cb: $00
    nop                                           ; $69cc: $00
    nop                                           ; $69cd: $00
    nop                                           ; $69ce: $00
    nop                                           ; $69cf: $00

jr_051_69d0:
    ld a, a                                       ; $69d0: $7f
    rst $38                                       ; $69d1: $ff
    cpl                                           ; $69d2: $2f
    rst $38                                       ; $69d3: $ff
    ccf                                           ; $69d4: $3f
    rst $38                                       ; $69d5: $ff
    rra                                           ; $69d6: $1f
    rst $38                                       ; $69d7: $ff
    or a                                          ; $69d8: $b7
    ld a, a                                       ; $69d9: $7f
    rra                                           ; $69da: $1f
    ld a, a                                       ; $69db: $7f
    rrca                                          ; $69dc: $0f
    ld a, a                                       ; $69dd: $7f
    ld c, a                                       ; $69de: $4f
    ccf                                           ; $69df: $3f
    rlca                                          ; $69e0: $07
    rra                                           ; $69e1: $1f
    ld [bc], a                                    ; $69e2: $02
    rra                                           ; $69e3: $1f
    inc de                                        ; $69e4: $13
    rrca                                          ; $69e5: $0f
    ld bc, $0b0f                                  ; $69e6: $01 $0f $0b
    rlca                                          ; $69e9: $07
    ld bc, $0007                                  ; $69ea: $01 $07 $00
    rlca                                          ; $69ed: $07
    inc b                                         ; $69ee: $04
    inc bc                                        ; $69ef: $03
    ld e, h                                       ; $69f0: $5c
    rst $38                                       ; $69f1: $ff
    nop                                           ; $69f2: $00
    rst $38                                       ; $69f3: $ff
    add c                                         ; $69f4: $81
    inc a                                         ; $69f5: $3c
    stop                                          ; $69f6: $10 $00
    nop                                           ; $69f8: $00
    nop                                           ; $69f9: $00
    nop                                           ; $69fa: $00
    nop                                           ; $69fb: $00
    nop                                           ; $69fc: $00
    nop                                           ; $69fd: $00
    nop                                           ; $69fe: $00
    nop                                           ; $69ff: $00
    jr nz, jr_051_69c2                            ; $6a00: $20 $c0

    add b                                         ; $6a02: $80
    ret nz                                        ; $6a03: $c0

    nop                                           ; $6a04: $00
    ldh [$90], a                                  ; $6a05: $e0 $90
    ldh [$80], a                                  ; $6a07: $e0 $80
    ldh [$80], a                                  ; $6a09: $e0 $80
    ldh [rP1], a                                  ; $6a0b: $e0 $00
    ret nz                                        ; $6a0d: $c0

    jr nz, jr_051_69d0                            ; $6a0e: $20 $c0

    rst $38                                       ; $6a10: $ff
    rst $38                                       ; $6a11: $ff

jr_051_6a12:
    ld a, l                                       ; $6a12: $7d
    rst $38                                       ; $6a13: $ff
    rst $28                                       ; $6a14: $ef
    rst $38                                       ; $6a15: $ff
    ld a, [hl-]                                   ; $6a16: $3a
    rst $38                                       ; $6a17: $ff
    nop                                           ; $6a18: $00
    rst $38                                       ; $6a19: $ff
    add c                                         ; $6a1a: $81
    inc a                                         ; $6a1b: $3c
    ld [$0000], sp                                ; $6a1c: $08 $00 $00
    nop                                           ; $6a1f: $00
    and h                                         ; $6a20: $a4
    ld hl, sp-$20                                 ; $6a21: $f8 $e0
    ld hl, sp-$10                                 ; $6a23: $f8 $f0
    db $fc                                        ; $6a25: $fc
    ret nc                                        ; $6a26: $d0

    db $fc                                        ; $6a27: $fc
    ld a, [c]                                     ; $6a28: $f2
    db $fc                                        ; $6a29: $fc
    ldh [$fc], a                                  ; $6a2a: $e0 $fc
    or b                                          ; $6a2c: $b0
    ld hl, sp-$1c                                 ; $6a2d: $f8 $e4
    ld hl, sp-$01                                 ; $6a2f: $f8 $ff
    rst $38                                       ; $6a31: $ff
    rst $38                                       ; $6a32: $ff
    rst $38                                       ; $6a33: $ff
    rst $38                                       ; $6a34: $ff
    rst $38                                       ; $6a35: $ff
    rst $30                                       ; $6a36: $f7
    rst $38                                       ; $6a37: $ff
    cp [hl]                                       ; $6a38: $be
    rst $38                                       ; $6a39: $ff
    db $e3                                        ; $6a3a: $e3
    rst $38                                       ; $6a3b: $ff
    ld b, b                                       ; $6a3c: $40
    rst $38                                       ; $6a3d: $ff
    nop                                           ; $6a3e: $00
    rst $20                                       ; $6a3f: $e7
    db $fc                                        ; $6a40: $fc
    rst $38                                       ; $6a41: $ff

jr_051_6a42:
    or $ff                                        ; $6a42: $f6 $ff
    db $fc                                        ; $6a44: $fc
    rst $38                                       ; $6a45: $ff
    ld hl, sp-$02                                 ; $6a46: $f8 $fe
    add sp, -$02                                  ; $6a48: $e8 $fe
    ld hl, sp-$01                                 ; $6a4a: $f8 $ff
    db $fc                                        ; $6a4c: $fc
    rst $38                                       ; $6a4d: $ff
    db $f4                                        ; $6a4e: $f4
    rst $38                                       ; $6a4f: $ff
    jr nz, jr_051_6a12                            ; $6a50: $20 $c0

    nop                                           ; $6a52: $00
    add b                                         ; $6a53: $80
    nop                                           ; $6a54: $00
    nop                                           ; $6a55: $00
    nop                                           ; $6a56: $00
    nop                                           ; $6a57: $00
    nop                                           ; $6a58: $00
    nop                                           ; $6a59: $00
    nop                                           ; $6a5a: $00
    nop                                           ; $6a5b: $00
    nop                                           ; $6a5c: $00
    nop                                           ; $6a5d: $00

jr_051_6a5e:
    nop                                           ; $6a5e: $00
    nop                                           ; $6a5f: $00
    nop                                           ; $6a60: $00
    ret nz                                        ; $6a61: $c0

    nop                                           ; $6a62: $00
    add b                                         ; $6a63: $80
    add b                                         ; $6a64: $80
    nop                                           ; $6a65: $00
    nop                                           ; $6a66: $00
    nop                                           ; $6a67: $00
    nop                                           ; $6a68: $00
    nop                                           ; $6a69: $00
    nop                                           ; $6a6a: $00
    nop                                           ; $6a6b: $00
    nop                                           ; $6a6c: $00
    nop                                           ; $6a6d: $00
    nop                                           ; $6a6e: $00
    nop                                           ; $6a6f: $00
    nop                                           ; $6a70: $00
    ret nz                                        ; $6a71: $c0

    ld b, b                                       ; $6a72: $40
    add b                                         ; $6a73: $80
    nop                                           ; $6a74: $00
    nop                                           ; $6a75: $00
    nop                                           ; $6a76: $00
    nop                                           ; $6a77: $00
    nop                                           ; $6a78: $00
    nop                                           ; $6a79: $00
    nop                                           ; $6a7a: $00
    nop                                           ; $6a7b: $00
    nop                                           ; $6a7c: $00
    nop                                           ; $6a7d: $00
    nop                                           ; $6a7e: $00
    nop                                           ; $6a7f: $00
    jr nz, jr_051_6a42                            ; $6a80: $20 $c0

    nop                                           ; $6a82: $00
    add b                                         ; $6a83: $80
    add b                                         ; $6a84: $80
    nop                                           ; $6a85: $00
    nop                                           ; $6a86: $00
    nop                                           ; $6a87: $00
    nop                                           ; $6a88: $00
    nop                                           ; $6a89: $00
    nop                                           ; $6a8a: $00
    nop                                           ; $6a8b: $00
    nop                                           ; $6a8c: $00
    nop                                           ; $6a8d: $00
    nop                                           ; $6a8e: $00
    nop                                           ; $6a8f: $00
    db $ec                                        ; $6a90: $ec
    rst $38                                       ; $6a91: $ff
    ld sp, hl                                     ; $6a92: $f9
    cp $e6                                        ; $6a93: $fe $e6
    ld hl, sp+$48                                 ; $6a95: $f8 $48
    ldh a, [$d0]                                  ; $6a97: $f0 $d0
    ldh [$a8], a                                  ; $6a99: $e0 $a8
    ret nz                                        ; $6a9b: $c0

    jr nz, jr_051_6a5e                            ; $6a9c: $20 $c0

    ld b, b                                       ; $6a9e: $40
    add b                                         ; $6a9f: $80
    rst $38                                       ; $6aa0: $ff
    rst $38                                       ; $6aa1: $ff
    rst $38                                       ; $6aa2: $ff
    rst $38                                       ; $6aa3: $ff
    rst $38                                       ; $6aa4: $ff
    rst $38                                       ; $6aa5: $ff
    rst $30                                       ; $6aa6: $f7
    rst $38                                       ; $6aa7: $ff
    cp h                                          ; $6aa8: $bc
    rst $38                                       ; $6aa9: $ff
    jp hl                                         ; $6aaa: $e9


    cp $8e                                        ; $6aab: $fe $8e
    ldh a, [$30]                                  ; $6aad: $f0 $30
    ret nz                                        ; $6aaf: $c0

    cp h                                          ; $6ab0: $bc
    rst $38                                       ; $6ab1: $ff
    jp hl                                         ; $6ab2: $e9


    cp $8e                                        ; $6ab3: $fe $8e
    ldh a, [$30]                                  ; $6ab5: $f0 $30
    ret nz                                        ; $6ab7: $c0

    ret z                                         ; $6ab8: $c8

    nop                                           ; $6ab9: $00
    nop                                           ; $6aba: $00
    nop                                           ; $6abb: $00
    nop                                           ; $6abc: $00
    nop                                           ; $6abd: $00
    nop                                           ; $6abe: $00
    nop                                           ; $6abf: $00
    ld a, a                                       ; $6ac0: $7f
    rst $38                                       ; $6ac1: $ff
    cpl                                           ; $6ac2: $2f
    rst $38                                       ; $6ac3: $ff
    cp a                                          ; $6ac4: $bf
    ld a, a                                       ; $6ac5: $7f
    sbc a                                         ; $6ac6: $9f
    ld a, a                                       ; $6ac7: $7f
    ld [hl], a                                    ; $6ac8: $77
    ccf                                           ; $6ac9: $3f
    ld e, a                                       ; $6aca: $5f
    ccf                                           ; $6acb: $3f
    ld c, a                                       ; $6acc: $4f
    ccf                                           ; $6acd: $3f
    cpl                                           ; $6ace: $2f
    rra                                           ; $6acf: $1f
    rla                                           ; $6ad0: $17
    rrca                                          ; $6ad1: $0f
    ld [de], a                                    ; $6ad2: $12
    rrca                                          ; $6ad3: $0f
    dec bc                                        ; $6ad4: $0b
    rlca                                          ; $6ad5: $07
    add hl, bc                                    ; $6ad6: $09
    rlca                                          ; $6ad7: $07
    rla                                           ; $6ad8: $17
    inc bc                                        ; $6ad9: $03
    dec b                                         ; $6ada: $05
    inc bc                                        ; $6adb: $03
    inc b                                         ; $6adc: $04
    inc bc                                        ; $6add: $03
    ld [bc], a                                    ; $6ade: $02
    ld bc, $ff5c                                  ; $6adf: $01 $5c $ff
    jp Jump_000_3c3c                              ; $6ae2: $c3 $3c $3c


    nop                                           ; $6ae5: $00
    ld [bc], a                                    ; $6ae6: $02
    nop                                           ; $6ae7: $00
    nop                                           ; $6ae8: $00
    nop                                           ; $6ae9: $00
    nop                                           ; $6aea: $00
    nop                                           ; $6aeb: $00
    nop                                           ; $6aec: $00
    nop                                           ; $6aed: $00
    nop                                           ; $6aee: $00
    nop                                           ; $6aef: $00
    ld b, b                                       ; $6af0: $40
    add b                                         ; $6af1: $80
    ret nz                                        ; $6af2: $c0

    add b                                         ; $6af3: $80
    jr nz, @-$3e                                  ; $6af4: $20 $c0

    and b                                         ; $6af6: $a0
    ret nz                                        ; $6af7: $c0

    and b                                         ; $6af8: $a0
    ret nz                                        ; $6af9: $c0

    and b                                         ; $6afa: $a0
    ret nz                                        ; $6afb: $c0

    ld d, b                                       ; $6afc: $50
    add b                                         ; $6afd: $80
    ld b, b                                       ; $6afe: $40
    add b                                         ; $6aff: $80
    rst $38                                       ; $6b00: $ff
    rst $38                                       ; $6b01: $ff
    ld a, l                                       ; $6b02: $7d
    rst $38                                       ; $6b03: $ff
    rst $28                                       ; $6b04: $ef
    rst $38                                       ; $6b05: $ff
    ld a, [hl-]                                   ; $6b06: $3a
    rst $38                                       ; $6b07: $ff
    jp Jump_000_3c3c                              ; $6b08: $c3 $3c $3c


    nop                                           ; $6b0b: $00
    ld b, b                                       ; $6b0c: $40
    nop                                           ; $6b0d: $00
    nop                                           ; $6b0e: $00
    nop                                           ; $6b0f: $00
    xor b                                         ; $6b10: $a8
    ldh a, [$ea]                                  ; $6b11: $f0 $ea
    ldh a, [$f4]                                  ; $6b13: $f0 $f4
    ld hl, sp-$2c                                 ; $6b15: $f8 $d4
    ld hl, sp-$0c                                 ; $6b17: $f8 $f4
    ld hl, sp-$1c                                 ; $6b19: $f8 $e4
    ld hl, sp-$48                                 ; $6b1b: $f8 $b8
    ldh a, [$e8]                                  ; $6b1d: $f0 $e8
    ldh a, [rIE]                                  ; $6b1f: $f0 $ff
    rst $38                                       ; $6b21: $ff
    rst $38                                       ; $6b22: $ff
    rst $38                                       ; $6b23: $ff
    rst $38                                       ; $6b24: $ff
    rst $38                                       ; $6b25: $ff
    rst $30                                       ; $6b26: $f7
    rst $38                                       ; $6b27: $ff
    cp [hl]                                       ; $6b28: $be
    rst $38                                       ; $6b29: $ff
    db $e3                                        ; $6b2a: $e3
    rst $38                                       ; $6b2b: $ff
    ld e, b                                       ; $6b2c: $58
    rst $20                                       ; $6b2d: $e7
    ld h, [hl]                                    ; $6b2e: $66
    add c                                         ; $6b2f: $81
    db $fc                                        ; $6b30: $fc
    rst $38                                       ; $6b31: $ff
    rst $30                                       ; $6b32: $f7
    cp $fd                                        ; $6b33: $fe $fd
    cp $fa                                        ; $6b35: $fe $fa
    db $fc                                        ; $6b37: $fc
    ld [$f9fc], a                                 ; $6b38: $ea $fc $f9
    cp $fd                                        ; $6b3b: $fe $fd
    cp $f4                                        ; $6b3d: $fe $f4
    rst $38                                       ; $6b3f: $ff
    ld c, b                                       ; $6b40: $48
    add b                                         ; $6b41: $80
    add b                                         ; $6b42: $80
    nop                                           ; $6b43: $00
    nop                                           ; $6b44: $00
    nop                                           ; $6b45: $00
    nop                                           ; $6b46: $00
    nop                                           ; $6b47: $00
    nop                                           ; $6b48: $00
    nop                                           ; $6b49: $00
    nop                                           ; $6b4a: $00
    nop                                           ; $6b4b: $00
    nop                                           ; $6b4c: $00
    nop                                           ; $6b4d: $00
    nop                                           ; $6b4e: $00
    nop                                           ; $6b4f: $00
    ld b, b                                       ; $6b50: $40
    add b                                         ; $6b51: $80
    add b                                         ; $6b52: $80
    nop                                           ; $6b53: $00
    nop                                           ; $6b54: $00
    nop                                           ; $6b55: $00
    nop                                           ; $6b56: $00
    nop                                           ; $6b57: $00
    add b                                         ; $6b58: $80
    nop                                           ; $6b59: $00
    nop                                           ; $6b5a: $00
    nop                                           ; $6b5b: $00
    nop                                           ; $6b5c: $00
    nop                                           ; $6b5d: $00
    nop                                           ; $6b5e: $00
    nop                                           ; $6b5f: $00
    ret nz                                        ; $6b60: $c0

    nop                                           ; $6b61: $00
    add b                                         ; $6b62: $80
    nop                                           ; $6b63: $00
    nop                                           ; $6b64: $00
    nop                                           ; $6b65: $00
    nop                                           ; $6b66: $00
    nop                                           ; $6b67: $00
    nop                                           ; $6b68: $00
    nop                                           ; $6b69: $00
    nop                                           ; $6b6a: $00
    nop                                           ; $6b6b: $00
    nop                                           ; $6b6c: $00
    nop                                           ; $6b6d: $00
    nop                                           ; $6b6e: $00
    nop                                           ; $6b6f: $00
    add b                                         ; $6b70: $80
    nop                                           ; $6b71: $00
    nop                                           ; $6b72: $00
    nop                                           ; $6b73: $00
    nop                                           ; $6b74: $00
    nop                                           ; $6b75: $00
    nop                                           ; $6b76: $00
    nop                                           ; $6b77: $00
    nop                                           ; $6b78: $00
    nop                                           ; $6b79: $00
    nop                                           ; $6b7a: $00
    nop                                           ; $6b7b: $00
    nop                                           ; $6b7c: $00
    nop                                           ; $6b7d: $00
    nop                                           ; $6b7e: $00
    nop                                           ; $6b7f: $00
    db $ed                                        ; $6b80: $ed
    cp $fe                                        ; $6b81: $fe $fe
    ld hl, sp-$18                                 ; $6b83: $f8 $e8
    ldh a, [rHDMA2]                               ; $6b85: $f0 $52
    ldh [$e8], a                                  ; $6b87: $e0 $e8
    ret nz                                        ; $6b89: $c0

    ret nz                                        ; $6b8a: $c0

    add b                                         ; $6b8b: $80
    ld d, b                                       ; $6b8c: $50
    add b                                         ; $6b8d: $80
    add b                                         ; $6b8e: $80
    nop                                           ; $6b8f: $00
    rst $38                                       ; $6b90: $ff
    rst $38                                       ; $6b91: $ff
    rst $38                                       ; $6b92: $ff
    rst $38                                       ; $6b93: $ff
    rst $38                                       ; $6b94: $ff
    rst $38                                       ; $6b95: $ff
    rst $30                                       ; $6b96: $f7
    rst $38                                       ; $6b97: $ff
    cp l                                          ; $6b98: $bd
    cp $ee                                        ; $6b99: $fe $ee
    ldh a, [$b1]                                  ; $6b9b: $f0 $b1
    ret nz                                        ; $6b9d: $c0

    ret z                                         ; $6b9e: $c8

    nop                                           ; $6b9f: $00
    cp l                                          ; $6ba0: $bd
    cp $ee                                        ; $6ba1: $fe $ee
    ldh a, [$b1]                                  ; $6ba3: $f0 $b1
    ret nz                                        ; $6ba5: $c0

    ret z                                         ; $6ba6: $c8

    nop                                           ; $6ba7: $00
    jr nz, jr_051_6baa                            ; $6ba8: $20 $00

jr_051_6baa:
    nop                                           ; $6baa: $00
    nop                                           ; $6bab: $00
    nop                                           ; $6bac: $00
    nop                                           ; $6bad: $00
    nop                                           ; $6bae: $00
    nop                                           ; $6baf: $00
    rst $38                                       ; $6bb0: $ff
    ld a, a                                       ; $6bb1: $7f
    xor a                                         ; $6bb2: $af
    ld a, a                                       ; $6bb3: $7f
    ld a, a                                       ; $6bb4: $7f
    ccf                                           ; $6bb5: $3f
    ld e, a                                       ; $6bb6: $5f
    ccf                                           ; $6bb7: $3f
    or a                                          ; $6bb8: $b7
    rra                                           ; $6bb9: $1f
    ccf                                           ; $6bba: $3f
    rra                                           ; $6bbb: $1f
    cpl                                           ; $6bbc: $2f
    rra                                           ; $6bbd: $1f
    ld e, a                                       ; $6bbe: $5f
    rrca                                          ; $6bbf: $0f
    rrca                                          ; $6bc0: $0f
    rlca                                          ; $6bc1: $07
    ld a, [bc]                                    ; $6bc2: $0a
    rlca                                          ; $6bc3: $07
    rla                                           ; $6bc4: $17
    inc bc                                        ; $6bc5: $03
    dec b                                         ; $6bc6: $05
    inc bc                                        ; $6bc7: $03
    dec bc                                        ; $6bc8: $0b
    ld bc, $0103                                  ; $6bc9: $01 $03 $01
    ld [bc], a                                    ; $6bcc: $02
    ld bc, $0005                                  ; $6bcd: $01 $05 $00
    rst $18                                       ; $6bd0: $df
    inc a                                         ; $6bd1: $3c
    inc a                                         ; $6bd2: $3c
    nop                                           ; $6bd3: $00
    ld b, d                                       ; $6bd4: $42
    nop                                           ; $6bd5: $00
    nop                                           ; $6bd6: $00
    nop                                           ; $6bd7: $00
    nop                                           ; $6bd8: $00
    nop                                           ; $6bd9: $00
    nop                                           ; $6bda: $00
    nop                                           ; $6bdb: $00
    nop                                           ; $6bdc: $00
    nop                                           ; $6bdd: $00
    nop                                           ; $6bde: $00
    nop                                           ; $6bdf: $00
    add b                                         ; $6be0: $80
    nop                                           ; $6be1: $00
    and b                                         ; $6be2: $a0
    nop                                           ; $6be3: $00
    ld b, b                                       ; $6be4: $40
    add b                                         ; $6be5: $80
    ret nz                                        ; $6be6: $c0

    add b                                         ; $6be7: $80
    ret nz                                        ; $6be8: $c0

    add b                                         ; $6be9: $80
    ret nz                                        ; $6bea: $c0

    add b                                         ; $6beb: $80
    and b                                         ; $6bec: $a0
    nop                                           ; $6bed: $00
    add b                                         ; $6bee: $80
    nop                                           ; $6bef: $00
    rst $38                                       ; $6bf0: $ff
    rst $38                                       ; $6bf1: $ff
    ld a, l                                       ; $6bf2: $7d
    rst $38                                       ; $6bf3: $ff
    rst $28                                       ; $6bf4: $ef
    rst $38                                       ; $6bf5: $ff
    ei                                            ; $6bf6: $fb
    inc a                                         ; $6bf7: $3c
    inc a                                         ; $6bf8: $3c
    nop                                           ; $6bf9: $00
    ld b, d                                       ; $6bfa: $42
    nop                                           ; $6bfb: $00
    nop                                           ; $6bfc: $00
    nop                                           ; $6bfd: $00
    nop                                           ; $6bfe: $00
    nop                                           ; $6bff: $00
    or b                                          ; $6c00: $b0
    ldh [$f4], a                                  ; $6c01: $e0 $f4
    ldh [$f8], a                                  ; $6c03: $e0 $f8
    ldh a, [$d8]                                  ; $6c05: $f0 $d8
    ldh a, [$f8]                                  ; $6c07: $f0 $f8
    ldh a, [$e8]                                  ; $6c09: $f0 $e8
    ldh a, [$b4]                                  ; $6c0b: $f0 $b4
    ldh [$f0], a                                  ; $6c0d: $e0 $f0
    ldh [rIE], a                                  ; $6c0f: $e0 $ff
    rst $38                                       ; $6c11: $ff
    rst $38                                       ; $6c12: $ff
    rst $38                                       ; $6c13: $ff
    rst $38                                       ; $6c14: $ff
    rst $38                                       ; $6c15: $ff
    rst $30                                       ; $6c16: $f7
    rst $38                                       ; $6c17: $ff
    cp [hl]                                       ; $6c18: $be
    rst $38                                       ; $6c19: $ff
    ei                                            ; $6c1a: $fb
    rst $20                                       ; $6c1b: $e7
    ld h, [hl]                                    ; $6c1c: $66
    add c                                         ; $6c1d: $81
    sub c                                         ; $6c1e: $91
    nop                                           ; $6c1f: $00
    db $fd                                        ; $6c20: $fd
    cp $f6                                        ; $6c21: $fe $f6
    db $fc                                        ; $6c23: $fc
    cp $fc                                        ; $6c24: $fe $fc
    db $fd                                        ; $6c26: $fd
    ld hl, sp-$14                                 ; $6c27: $f8 $ec
    ld hl, sp-$06                                 ; $6c29: $f8 $fa
    db $fc                                        ; $6c2b: $fc
    cp $fc                                        ; $6c2c: $fe $fc
    push af                                       ; $6c2e: $f5
    cp $20                                        ; $6c2f: $fe $20
    nop                                           ; $6c31: $00
    nop                                           ; $6c32: $00
    nop                                           ; $6c33: $00
    nop                                           ; $6c34: $00
    nop                                           ; $6c35: $00
    nop                                           ; $6c36: $00
    nop                                           ; $6c37: $00
    nop                                           ; $6c38: $00
    nop                                           ; $6c39: $00
    nop                                           ; $6c3a: $00
    nop                                           ; $6c3b: $00
    nop                                           ; $6c3c: $00
    nop                                           ; $6c3d: $00
    nop                                           ; $6c3e: $00
    nop                                           ; $6c3f: $00
    nop                                           ; $6c40: $00
    nop                                           ; $6c41: $00
    nop                                           ; $6c42: $00
    nop                                           ; $6c43: $00
    add b                                         ; $6c44: $80
    nop                                           ; $6c45: $00
    nop                                           ; $6c46: $00
    nop                                           ; $6c47: $00
    nop                                           ; $6c48: $00
    nop                                           ; $6c49: $00
    nop                                           ; $6c4a: $00
    nop                                           ; $6c4b: $00
    nop                                           ; $6c4c: $00
    nop                                           ; $6c4d: $00
    nop                                           ; $6c4e: $00
    nop                                           ; $6c4f: $00
    and b                                         ; $6c50: $a0
    nop                                           ; $6c51: $00
    nop                                           ; $6c52: $00
    nop                                           ; $6c53: $00
    add b                                         ; $6c54: $80
    nop                                           ; $6c55: $00
    nop                                           ; $6c56: $00
    nop                                           ; $6c57: $00
    nop                                           ; $6c58: $00
    nop                                           ; $6c59: $00
    nop                                           ; $6c5a: $00
    nop                                           ; $6c5b: $00
    nop                                           ; $6c5c: $00
    nop                                           ; $6c5d: $00
    nop                                           ; $6c5e: $00
    nop                                           ; $6c5f: $00
    nop                                           ; $6c60: $00
    nop                                           ; $6c61: $00
    ld b, b                                       ; $6c62: $40
    nop                                           ; $6c63: $00
    nop                                           ; $6c64: $00
    nop                                           ; $6c65: $00
    nop                                           ; $6c66: $00
    nop                                           ; $6c67: $00
    nop                                           ; $6c68: $00
    nop                                           ; $6c69: $00
    nop                                           ; $6c6a: $00
    nop                                           ; $6c6b: $00
    nop                                           ; $6c6c: $00
    nop                                           ; $6c6d: $00
    nop                                           ; $6c6e: $00
    nop                                           ; $6c6f: $00
    ld [bc], a                                    ; $6c70: $02
    add c                                         ; $6c71: $81
    and b                                         ; $6c72: $a0
    pop bc                                        ; $6c73: $c1
    add b                                         ; $6c74: $80
    pop bc                                        ; $6c75: $c1
    add l                                         ; $6c76: $85
    jp $c3a1                                      ; $6c77: $c3 $a1 $c3


    nop                                           ; $6c7a: $00
    add e                                         ; $6c7b: $83
    dec b                                         ; $6c7c: $05
    add e                                         ; $6c7d: $83
    ld b, b                                       ; $6c7e: $40
    add c                                         ; $6c7f: $81
    ld b, c                                       ; $6c80: $41
    add b                                         ; $6c81: $80
    nop                                           ; $6c82: $00
    add b                                         ; $6c83: $80
    add b                                         ; $6c84: $80
    ret nz                                        ; $6c85: $c0

    and b                                         ; $6c86: $a0
    ret nz                                        ; $6c87: $c0

    ret nz                                        ; $6c88: $c0

    ldh [rBCPS], a                                ; $6c89: $e0 $68
    ldh a, [$f1]                                  ; $6c8b: $f0 $f1
    db $fc                                        ; $6c8d: $fc
    call c, Call_000_1eff                         ; $6c8e: $dc $ff $1e
    rst $38                                       ; $6c91: $ff
    add b                                         ; $6c92: $80
    ld e, $12                                     ; $6c93: $1e $12
    nop                                           ; $6c95: $00
    nop                                           ; $6c96: $00
    nop                                           ; $6c97: $00
    nop                                           ; $6c98: $00
    nop                                           ; $6c99: $00
    ld c, b                                       ; $6c9a: $48
    nop                                           ; $6c9b: $00
    ld bc, $5878                                  ; $6c9c: $01 $78 $58
    rst $38                                       ; $6c9f: $ff
    ld b, b                                       ; $6ca0: $40
    add c                                         ; $6ca1: $81
    add d                                         ; $6ca2: $82
    pop bc                                        ; $6ca3: $c1
    and b                                         ; $6ca4: $a0
    pop bc                                        ; $6ca5: $c1
    and c                                         ; $6ca6: $a1
    jp $c385                                      ; $6ca7: $c3 $85 $c3


    inc b                                         ; $6caa: $04
    add e                                         ; $6cab: $83
    ld b, c                                       ; $6cac: $41
    add e                                         ; $6cad: $83
    ld [bc], a                                    ; $6cae: $02
    add c                                         ; $6caf: $81
    nop                                           ; $6cb0: $00
    add b                                         ; $6cb1: $80
    nop                                           ; $6cb2: $00
    add b                                         ; $6cb3: $80
    and b                                         ; $6cb4: $a0
    ret nz                                        ; $6cb5: $c0

    add b                                         ; $6cb6: $80
    ret nz                                        ; $6cb7: $c0

    ret nc                                        ; $6cb8: $d0

    ldh [$64], a                                  ; $6cb9: $e0 $64
    ldh a, [$f0]                                  ; $6cbb: $f0 $f0
    db $fc                                        ; $6cbd: $fc
    call c, Call_000_1eff                         ; $6cbe: $dc $ff $1e
    rst $38                                       ; $6cc1: $ff
    ld b, c                                       ; $6cc2: $41
    ld e, $0c                                     ; $6cc3: $1e $0c
    nop                                           ; $6cc5: $00
    nop                                           ; $6cc6: $00
    nop                                           ; $6cc7: $00
    nop                                           ; $6cc8: $00
    nop                                           ; $6cc9: $00
    jr nc, jr_051_6ccc                            ; $6cca: $30 $00

jr_051_6ccc:
    add d                                         ; $6ccc: $82
    ld a, b                                       ; $6ccd: $78
    ld e, b                                       ; $6cce: $58
    rst $38                                       ; $6ccf: $ff
    nop                                           ; $6cd0: $00
    ret nz                                        ; $6cd1: $c0

    ld b, b                                       ; $6cd2: $40
    add b                                         ; $6cd3: $80
    nop                                           ; $6cd4: $00
    nop                                           ; $6cd5: $00
    nop                                           ; $6cd6: $00
    nop                                           ; $6cd7: $00
    nop                                           ; $6cd8: $00
    nop                                           ; $6cd9: $00
    nop                                           ; $6cda: $00
    nop                                           ; $6cdb: $00
    ld [bc], a                                    ; $6cdc: $02
    ld bc, $0300                                  ; $6cdd: $01 $00 $03
    ret nz                                        ; $6ce0: $c0

    nop                                           ; $6ce1: $00
    add b                                         ; $6ce2: $80
    nop                                           ; $6ce3: $00
    nop                                           ; $6ce4: $00
    nop                                           ; $6ce5: $00
    nop                                           ; $6ce6: $00
    nop                                           ; $6ce7: $00
    nop                                           ; $6ce8: $00
    nop                                           ; $6ce9: $00
    nop                                           ; $6cea: $00
    nop                                           ; $6ceb: $00
    ld bc, $0300                                  ; $6cec: $01 $00 $03
    nop                                           ; $6cef: $00
    and b                                         ; $6cf0: $a0
    nop                                           ; $6cf1: $00
    nop                                           ; $6cf2: $00
    nop                                           ; $6cf3: $00
    add b                                         ; $6cf4: $80
    nop                                           ; $6cf5: $00
    nop                                           ; $6cf6: $00
    nop                                           ; $6cf7: $00
    nop                                           ; $6cf8: $00
    nop                                           ; $6cf9: $00
    ld bc, $0000                                  ; $6cfa: $01 $00 $00
    nop                                           ; $6cfd: $00
    dec b                                         ; $6cfe: $05
    nop                                           ; $6cff: $00
    nop                                           ; $6d00: $00
    nop                                           ; $6d01: $00
    nop                                           ; $6d02: $00
    nop                                           ; $6d03: $00
    nop                                           ; $6d04: $00
    nop                                           ; $6d05: $00
    nop                                           ; $6d06: $00
    nop                                           ; $6d07: $00
    nop                                           ; $6d08: $00
    nop                                           ; $6d09: $00
    nop                                           ; $6d0a: $00
    nop                                           ; $6d0b: $00
    nop                                           ; $6d0c: $00
    nop                                           ; $6d0d: $00
    nop                                           ; $6d0e: $00
    nop                                           ; $6d0f: $00
    nop                                           ; $6d10: $00
    nop                                           ; $6d11: $00
    nop                                           ; $6d12: $00
    nop                                           ; $6d13: $00
    nop                                           ; $6d14: $00
    nop                                           ; $6d15: $00
    nop                                           ; $6d16: $00
    nop                                           ; $6d17: $00
    nop                                           ; $6d18: $00
    nop                                           ; $6d19: $00
    nop                                           ; $6d1a: $00
    nop                                           ; $6d1b: $00
    nop                                           ; $6d1c: $00
    nop                                           ; $6d1d: $00
    nop                                           ; $6d1e: $00
    nop                                           ; $6d1f: $00
    nop                                           ; $6d20: $00
    nop                                           ; $6d21: $00
    nop                                           ; $6d22: $00
    nop                                           ; $6d23: $00
    nop                                           ; $6d24: $00
    nop                                           ; $6d25: $00
    nop                                           ; $6d26: $00
    nop                                           ; $6d27: $00
    nop                                           ; $6d28: $00
    nop                                           ; $6d29: $00
    nop                                           ; $6d2a: $00
    nop                                           ; $6d2b: $00
    nop                                           ; $6d2c: $00
    nop                                           ; $6d2d: $00
    nop                                           ; $6d2e: $00
    nop                                           ; $6d2f: $00
    nop                                           ; $6d30: $00
    nop                                           ; $6d31: $00
    nop                                           ; $6d32: $00
    nop                                           ; $6d33: $00

Jump_051_6d34:
    nop                                           ; $6d34: $00
    nop                                           ; $6d35: $00
    nop                                           ; $6d36: $00
    nop                                           ; $6d37: $00
    nop                                           ; $6d38: $00
    nop                                           ; $6d39: $00
    nop                                           ; $6d3a: $00
    nop                                           ; $6d3b: $00
    nop                                           ; $6d3c: $00
    nop                                           ; $6d3d: $00
    nop                                           ; $6d3e: $00
    nop                                           ; $6d3f: $00
    nop                                           ; $6d40: $00
    nop                                           ; $6d41: $00
    nop                                           ; $6d42: $00
    nop                                           ; $6d43: $00
    nop                                           ; $6d44: $00
    nop                                           ; $6d45: $00
    nop                                           ; $6d46: $00
    nop                                           ; $6d47: $00
    nop                                           ; $6d48: $00
    nop                                           ; $6d49: $00
    nop                                           ; $6d4a: $00
    nop                                           ; $6d4b: $00
    nop                                           ; $6d4c: $00
    nop                                           ; $6d4d: $00
    nop                                           ; $6d4e: $00
    nop                                           ; $6d4f: $00
    nop                                           ; $6d50: $00
    nop                                           ; $6d51: $00
    nop                                           ; $6d52: $00
    nop                                           ; $6d53: $00
    nop                                           ; $6d54: $00
    nop                                           ; $6d55: $00
    nop                                           ; $6d56: $00
    nop                                           ; $6d57: $00
    nop                                           ; $6d58: $00
    nop                                           ; $6d59: $00
    nop                                           ; $6d5a: $00
    nop                                           ; $6d5b: $00
    nop                                           ; $6d5c: $00
    nop                                           ; $6d5d: $00
    nop                                           ; $6d5e: $00
    nop                                           ; $6d5f: $00
    nop                                           ; $6d60: $00
    nop                                           ; $6d61: $00
    nop                                           ; $6d62: $00
    nop                                           ; $6d63: $00
    nop                                           ; $6d64: $00
    nop                                           ; $6d65: $00
    nop                                           ; $6d66: $00
    nop                                           ; $6d67: $00
    nop                                           ; $6d68: $00
    nop                                           ; $6d69: $00
    nop                                           ; $6d6a: $00
    nop                                           ; $6d6b: $00
    nop                                           ; $6d6c: $00
    nop                                           ; $6d6d: $00
    nop                                           ; $6d6e: $00
    nop                                           ; $6d6f: $00
    nop                                           ; $6d70: $00
    nop                                           ; $6d71: $00
    nop                                           ; $6d72: $00
    nop                                           ; $6d73: $00
    nop                                           ; $6d74: $00
    nop                                           ; $6d75: $00
    nop                                           ; $6d76: $00
    nop                                           ; $6d77: $00
    nop                                           ; $6d78: $00
    nop                                           ; $6d79: $00
    nop                                           ; $6d7a: $00
    nop                                           ; $6d7b: $00
    nop                                           ; $6d7c: $00
    nop                                           ; $6d7d: $00
    nop                                           ; $6d7e: $00
    nop                                           ; $6d7f: $00
    nop                                           ; $6d80: $00
    nop                                           ; $6d81: $00
    nop                                           ; $6d82: $00
    nop                                           ; $6d83: $00
    nop                                           ; $6d84: $00
    nop                                           ; $6d85: $00
    nop                                           ; $6d86: $00
    nop                                           ; $6d87: $00
    nop                                           ; $6d88: $00
    nop                                           ; $6d89: $00
    nop                                           ; $6d8a: $00
    nop                                           ; $6d8b: $00
    nop                                           ; $6d8c: $00
    nop                                           ; $6d8d: $00
    nop                                           ; $6d8e: $00
    nop                                           ; $6d8f: $00
    nop                                           ; $6d90: $00
    nop                                           ; $6d91: $00
    nop                                           ; $6d92: $00
    nop                                           ; $6d93: $00
    nop                                           ; $6d94: $00
    nop                                           ; $6d95: $00
    nop                                           ; $6d96: $00
    nop                                           ; $6d97: $00
    nop                                           ; $6d98: $00
    nop                                           ; $6d99: $00
    nop                                           ; $6d9a: $00
    nop                                           ; $6d9b: $00
    nop                                           ; $6d9c: $00
    nop                                           ; $6d9d: $00
    nop                                           ; $6d9e: $00
    nop                                           ; $6d9f: $00
    nop                                           ; $6da0: $00
    nop                                           ; $6da1: $00
    nop                                           ; $6da2: $00
    nop                                           ; $6da3: $00
    nop                                           ; $6da4: $00
    nop                                           ; $6da5: $00
    nop                                           ; $6da6: $00
    nop                                           ; $6da7: $00
    nop                                           ; $6da8: $00
    nop                                           ; $6da9: $00
    nop                                           ; $6daa: $00
    nop                                           ; $6dab: $00
    nop                                           ; $6dac: $00
    nop                                           ; $6dad: $00
    nop                                           ; $6dae: $00
    nop                                           ; $6daf: $00
    nop                                           ; $6db0: $00
    nop                                           ; $6db1: $00
    nop                                           ; $6db2: $00
    nop                                           ; $6db3: $00
    nop                                           ; $6db4: $00
    nop                                           ; $6db5: $00
    nop                                           ; $6db6: $00
    nop                                           ; $6db7: $00
    nop                                           ; $6db8: $00
    nop                                           ; $6db9: $00
    nop                                           ; $6dba: $00
    nop                                           ; $6dbb: $00
    nop                                           ; $6dbc: $00
    nop                                           ; $6dbd: $00
    nop                                           ; $6dbe: $00
    nop                                           ; $6dbf: $00
    nop                                           ; $6dc0: $00
    nop                                           ; $6dc1: $00
    nop                                           ; $6dc2: $00
    nop                                           ; $6dc3: $00
    nop                                           ; $6dc4: $00
    nop                                           ; $6dc5: $00
    nop                                           ; $6dc6: $00
    nop                                           ; $6dc7: $00
    nop                                           ; $6dc8: $00
    nop                                           ; $6dc9: $00
    nop                                           ; $6dca: $00
    nop                                           ; $6dcb: $00
    nop                                           ; $6dcc: $00
    nop                                           ; $6dcd: $00
    nop                                           ; $6dce: $00
    nop                                           ; $6dcf: $00
    nop                                           ; $6dd0: $00
    nop                                           ; $6dd1: $00
    nop                                           ; $6dd2: $00
    nop                                           ; $6dd3: $00
    nop                                           ; $6dd4: $00
    nop                                           ; $6dd5: $00
    nop                                           ; $6dd6: $00
    nop                                           ; $6dd7: $00
    nop                                           ; $6dd8: $00
    nop                                           ; $6dd9: $00
    nop                                           ; $6dda: $00
    nop                                           ; $6ddb: $00
    nop                                           ; $6ddc: $00
    nop                                           ; $6ddd: $00
    nop                                           ; $6dde: $00
    nop                                           ; $6ddf: $00
    nop                                           ; $6de0: $00
    nop                                           ; $6de1: $00
    nop                                           ; $6de2: $00
    nop                                           ; $6de3: $00
    nop                                           ; $6de4: $00
    nop                                           ; $6de5: $00
    nop                                           ; $6de6: $00
    nop                                           ; $6de7: $00
    nop                                           ; $6de8: $00
    nop                                           ; $6de9: $00
    nop                                           ; $6dea: $00
    nop                                           ; $6deb: $00
    nop                                           ; $6dec: $00
    nop                                           ; $6ded: $00
    nop                                           ; $6dee: $00
    nop                                           ; $6def: $00
    nop                                           ; $6df0: $00
    nop                                           ; $6df1: $00
    nop                                           ; $6df2: $00
    nop                                           ; $6df3: $00
    nop                                           ; $6df4: $00
    nop                                           ; $6df5: $00
    nop                                           ; $6df6: $00
    nop                                           ; $6df7: $00
    nop                                           ; $6df8: $00
    nop                                           ; $6df9: $00
    nop                                           ; $6dfa: $00
    nop                                           ; $6dfb: $00
    nop                                           ; $6dfc: $00
    nop                                           ; $6dfd: $00
    nop                                           ; $6dfe: $00
    nop                                           ; $6dff: $00
    nop                                           ; $6e00: $00
    nop                                           ; $6e01: $00
    nop                                           ; $6e02: $00
    nop                                           ; $6e03: $00
    nop                                           ; $6e04: $00
    nop                                           ; $6e05: $00
    nop                                           ; $6e06: $00
    nop                                           ; $6e07: $00
    nop                                           ; $6e08: $00
    nop                                           ; $6e09: $00
    nop                                           ; $6e0a: $00
    nop                                           ; $6e0b: $00
    nop                                           ; $6e0c: $00
    nop                                           ; $6e0d: $00
    nop                                           ; $6e0e: $00
    nop                                           ; $6e0f: $00
    nop                                           ; $6e10: $00
    nop                                           ; $6e11: $00
    nop                                           ; $6e12: $00
    nop                                           ; $6e13: $00
    nop                                           ; $6e14: $00
    nop                                           ; $6e15: $00
    nop                                           ; $6e16: $00
    nop                                           ; $6e17: $00
    nop                                           ; $6e18: $00
    nop                                           ; $6e19: $00
    nop                                           ; $6e1a: $00
    nop                                           ; $6e1b: $00
    nop                                           ; $6e1c: $00
    nop                                           ; $6e1d: $00
    nop                                           ; $6e1e: $00
    nop                                           ; $6e1f: $00
    nop                                           ; $6e20: $00
    nop                                           ; $6e21: $00
    nop                                           ; $6e22: $00
    nop                                           ; $6e23: $00
    nop                                           ; $6e24: $00
    nop                                           ; $6e25: $00
    nop                                           ; $6e26: $00
    nop                                           ; $6e27: $00
    nop                                           ; $6e28: $00
    nop                                           ; $6e29: $00
    nop                                           ; $6e2a: $00
    nop                                           ; $6e2b: $00
    nop                                           ; $6e2c: $00
    nop                                           ; $6e2d: $00
    nop                                           ; $6e2e: $00
    nop                                           ; $6e2f: $00
    nop                                           ; $6e30: $00
    nop                                           ; $6e31: $00
    nop                                           ; $6e32: $00
    nop                                           ; $6e33: $00
    nop                                           ; $6e34: $00
    nop                                           ; $6e35: $00
    nop                                           ; $6e36: $00
    nop                                           ; $6e37: $00
    nop                                           ; $6e38: $00
    nop                                           ; $6e39: $00
    nop                                           ; $6e3a: $00
    nop                                           ; $6e3b: $00
    nop                                           ; $6e3c: $00
    nop                                           ; $6e3d: $00
    nop                                           ; $6e3e: $00
    nop                                           ; $6e3f: $00
    nop                                           ; $6e40: $00
    nop                                           ; $6e41: $00
    nop                                           ; $6e42: $00
    nop                                           ; $6e43: $00
    nop                                           ; $6e44: $00
    nop                                           ; $6e45: $00
    nop                                           ; $6e46: $00
    nop                                           ; $6e47: $00
    nop                                           ; $6e48: $00
    nop                                           ; $6e49: $00
    nop                                           ; $6e4a: $00
    nop                                           ; $6e4b: $00
    nop                                           ; $6e4c: $00
    nop                                           ; $6e4d: $00

Call_051_6e4e:
    nop                                           ; $6e4e: $00
    nop                                           ; $6e4f: $00
    nop                                           ; $6e50: $00
    nop                                           ; $6e51: $00
    nop                                           ; $6e52: $00
    nop                                           ; $6e53: $00
    nop                                           ; $6e54: $00
    nop                                           ; $6e55: $00
    nop                                           ; $6e56: $00
    nop                                           ; $6e57: $00
    nop                                           ; $6e58: $00
    nop                                           ; $6e59: $00
    nop                                           ; $6e5a: $00
    nop                                           ; $6e5b: $00
    nop                                           ; $6e5c: $00
    nop                                           ; $6e5d: $00
    nop                                           ; $6e5e: $00
    nop                                           ; $6e5f: $00
    nop                                           ; $6e60: $00
    nop                                           ; $6e61: $00
    nop                                           ; $6e62: $00
    nop                                           ; $6e63: $00
    nop                                           ; $6e64: $00
    nop                                           ; $6e65: $00
    nop                                           ; $6e66: $00
    nop                                           ; $6e67: $00
    nop                                           ; $6e68: $00
    nop                                           ; $6e69: $00
    nop                                           ; $6e6a: $00
    nop                                           ; $6e6b: $00
    nop                                           ; $6e6c: $00
    nop                                           ; $6e6d: $00
    nop                                           ; $6e6e: $00
    nop                                           ; $6e6f: $00
    nop                                           ; $6e70: $00
    nop                                           ; $6e71: $00
    nop                                           ; $6e72: $00
    nop                                           ; $6e73: $00
    nop                                           ; $6e74: $00
    nop                                           ; $6e75: $00
    nop                                           ; $6e76: $00
    nop                                           ; $6e77: $00
    nop                                           ; $6e78: $00
    nop                                           ; $6e79: $00
    nop                                           ; $6e7a: $00
    nop                                           ; $6e7b: $00
    nop                                           ; $6e7c: $00
    nop                                           ; $6e7d: $00
    nop                                           ; $6e7e: $00
    nop                                           ; $6e7f: $00
    nop                                           ; $6e80: $00
    nop                                           ; $6e81: $00
    nop                                           ; $6e82: $00
    nop                                           ; $6e83: $00
    nop                                           ; $6e84: $00
    nop                                           ; $6e85: $00
    nop                                           ; $6e86: $00
    nop                                           ; $6e87: $00
    nop                                           ; $6e88: $00
    nop                                           ; $6e89: $00
    nop                                           ; $6e8a: $00
    nop                                           ; $6e8b: $00
    nop                                           ; $6e8c: $00
    nop                                           ; $6e8d: $00
    nop                                           ; $6e8e: $00
    nop                                           ; $6e8f: $00
    nop                                           ; $6e90: $00
    nop                                           ; $6e91: $00
    nop                                           ; $6e92: $00
    nop                                           ; $6e93: $00
    nop                                           ; $6e94: $00
    nop                                           ; $6e95: $00
    nop                                           ; $6e96: $00
    nop                                           ; $6e97: $00
    nop                                           ; $6e98: $00
    nop                                           ; $6e99: $00
    nop                                           ; $6e9a: $00
    nop                                           ; $6e9b: $00
    nop                                           ; $6e9c: $00
    nop                                           ; $6e9d: $00
    nop                                           ; $6e9e: $00
    nop                                           ; $6e9f: $00
    nop                                           ; $6ea0: $00
    nop                                           ; $6ea1: $00
    nop                                           ; $6ea2: $00
    nop                                           ; $6ea3: $00
    nop                                           ; $6ea4: $00
    nop                                           ; $6ea5: $00
    nop                                           ; $6ea6: $00
    nop                                           ; $6ea7: $00
    nop                                           ; $6ea8: $00
    nop                                           ; $6ea9: $00
    nop                                           ; $6eaa: $00
    nop                                           ; $6eab: $00
    nop                                           ; $6eac: $00
    nop                                           ; $6ead: $00
    nop                                           ; $6eae: $00
    nop                                           ; $6eaf: $00
    nop                                           ; $6eb0: $00
    nop                                           ; $6eb1: $00
    nop                                           ; $6eb2: $00
    nop                                           ; $6eb3: $00
    nop                                           ; $6eb4: $00
    nop                                           ; $6eb5: $00
    nop                                           ; $6eb6: $00
    nop                                           ; $6eb7: $00
    nop                                           ; $6eb8: $00
    nop                                           ; $6eb9: $00
    nop                                           ; $6eba: $00
    nop                                           ; $6ebb: $00
    nop                                           ; $6ebc: $00
    nop                                           ; $6ebd: $00
    nop                                           ; $6ebe: $00
    nop                                           ; $6ebf: $00
    nop                                           ; $6ec0: $00
    nop                                           ; $6ec1: $00
    nop                                           ; $6ec2: $00
    nop                                           ; $6ec3: $00
    nop                                           ; $6ec4: $00
    nop                                           ; $6ec5: $00
    nop                                           ; $6ec6: $00
    nop                                           ; $6ec7: $00
    nop                                           ; $6ec8: $00
    nop                                           ; $6ec9: $00
    nop                                           ; $6eca: $00
    nop                                           ; $6ecb: $00
    nop                                           ; $6ecc: $00
    nop                                           ; $6ecd: $00
    nop                                           ; $6ece: $00
    nop                                           ; $6ecf: $00
    nop                                           ; $6ed0: $00
    nop                                           ; $6ed1: $00
    nop                                           ; $6ed2: $00
    nop                                           ; $6ed3: $00
    nop                                           ; $6ed4: $00
    nop                                           ; $6ed5: $00
    nop                                           ; $6ed6: $00
    nop                                           ; $6ed7: $00
    nop                                           ; $6ed8: $00
    nop                                           ; $6ed9: $00
    nop                                           ; $6eda: $00
    nop                                           ; $6edb: $00
    nop                                           ; $6edc: $00
    nop                                           ; $6edd: $00
    nop                                           ; $6ede: $00
    nop                                           ; $6edf: $00
    nop                                           ; $6ee0: $00
    nop                                           ; $6ee1: $00
    nop                                           ; $6ee2: $00

Call_051_6ee3:
    nop                                           ; $6ee3: $00
    nop                                           ; $6ee4: $00
    nop                                           ; $6ee5: $00
    nop                                           ; $6ee6: $00
    nop                                           ; $6ee7: $00
    nop                                           ; $6ee8: $00
    nop                                           ; $6ee9: $00
    nop                                           ; $6eea: $00
    nop                                           ; $6eeb: $00
    nop                                           ; $6eec: $00
    nop                                           ; $6eed: $00
    nop                                           ; $6eee: $00
    nop                                           ; $6eef: $00
    nop                                           ; $6ef0: $00
    nop                                           ; $6ef1: $00
    nop                                           ; $6ef2: $00
    nop                                           ; $6ef3: $00
    nop                                           ; $6ef4: $00
    nop                                           ; $6ef5: $00
    nop                                           ; $6ef6: $00
    nop                                           ; $6ef7: $00
    nop                                           ; $6ef8: $00
    nop                                           ; $6ef9: $00
    nop                                           ; $6efa: $00
    nop                                           ; $6efb: $00
    nop                                           ; $6efc: $00
    nop                                           ; $6efd: $00
    nop                                           ; $6efe: $00
    nop                                           ; $6eff: $00
    nop                                           ; $6f00: $00
    nop                                           ; $6f01: $00
    nop                                           ; $6f02: $00
    nop                                           ; $6f03: $00
    nop                                           ; $6f04: $00
    nop                                           ; $6f05: $00
    nop                                           ; $6f06: $00
    nop                                           ; $6f07: $00
    nop                                           ; $6f08: $00
    nop                                           ; $6f09: $00
    nop                                           ; $6f0a: $00
    nop                                           ; $6f0b: $00
    nop                                           ; $6f0c: $00
    nop                                           ; $6f0d: $00
    nop                                           ; $6f0e: $00
    nop                                           ; $6f0f: $00
    nop                                           ; $6f10: $00
    nop                                           ; $6f11: $00
    nop                                           ; $6f12: $00
    nop                                           ; $6f13: $00
    nop                                           ; $6f14: $00
    nop                                           ; $6f15: $00
    nop                                           ; $6f16: $00
    nop                                           ; $6f17: $00
    nop                                           ; $6f18: $00
    nop                                           ; $6f19: $00
    nop                                           ; $6f1a: $00
    nop                                           ; $6f1b: $00
    nop                                           ; $6f1c: $00
    nop                                           ; $6f1d: $00
    nop                                           ; $6f1e: $00
    nop                                           ; $6f1f: $00
    nop                                           ; $6f20: $00
    nop                                           ; $6f21: $00
    nop                                           ; $6f22: $00
    nop                                           ; $6f23: $00
    nop                                           ; $6f24: $00
    nop                                           ; $6f25: $00
    nop                                           ; $6f26: $00
    nop                                           ; $6f27: $00
    nop                                           ; $6f28: $00
    nop                                           ; $6f29: $00
    nop                                           ; $6f2a: $00
    nop                                           ; $6f2b: $00
    nop                                           ; $6f2c: $00
    nop                                           ; $6f2d: $00
    nop                                           ; $6f2e: $00
    nop                                           ; $6f2f: $00
    nop                                           ; $6f30: $00
    nop                                           ; $6f31: $00
    nop                                           ; $6f32: $00
    nop                                           ; $6f33: $00
    nop                                           ; $6f34: $00
    nop                                           ; $6f35: $00
    nop                                           ; $6f36: $00
    nop                                           ; $6f37: $00
    nop                                           ; $6f38: $00
    nop                                           ; $6f39: $00
    nop                                           ; $6f3a: $00
    nop                                           ; $6f3b: $00
    nop                                           ; $6f3c: $00
    nop                                           ; $6f3d: $00
    nop                                           ; $6f3e: $00
    nop                                           ; $6f3f: $00
    nop                                           ; $6f40: $00
    nop                                           ; $6f41: $00
    nop                                           ; $6f42: $00
    nop                                           ; $6f43: $00
    nop                                           ; $6f44: $00
    nop                                           ; $6f45: $00
    nop                                           ; $6f46: $00
    nop                                           ; $6f47: $00
    nop                                           ; $6f48: $00
    nop                                           ; $6f49: $00
    nop                                           ; $6f4a: $00
    nop                                           ; $6f4b: $00
    nop                                           ; $6f4c: $00
    nop                                           ; $6f4d: $00
    nop                                           ; $6f4e: $00
    nop                                           ; $6f4f: $00
    nop                                           ; $6f50: $00
    nop                                           ; $6f51: $00
    nop                                           ; $6f52: $00
    nop                                           ; $6f53: $00
    nop                                           ; $6f54: $00
    nop                                           ; $6f55: $00
    nop                                           ; $6f56: $00
    nop                                           ; $6f57: $00
    nop                                           ; $6f58: $00
    nop                                           ; $6f59: $00
    nop                                           ; $6f5a: $00
    nop                                           ; $6f5b: $00
    nop                                           ; $6f5c: $00
    nop                                           ; $6f5d: $00
    nop                                           ; $6f5e: $00
    nop                                           ; $6f5f: $00
    nop                                           ; $6f60: $00
    nop                                           ; $6f61: $00
    nop                                           ; $6f62: $00
    nop                                           ; $6f63: $00
    nop                                           ; $6f64: $00
    nop                                           ; $6f65: $00
    nop                                           ; $6f66: $00
    nop                                           ; $6f67: $00
    nop                                           ; $6f68: $00
    nop                                           ; $6f69: $00
    nop                                           ; $6f6a: $00
    nop                                           ; $6f6b: $00
    nop                                           ; $6f6c: $00
    nop                                           ; $6f6d: $00
    nop                                           ; $6f6e: $00
    nop                                           ; $6f6f: $00
    nop                                           ; $6f70: $00
    nop                                           ; $6f71: $00
    nop                                           ; $6f72: $00
    nop                                           ; $6f73: $00
    nop                                           ; $6f74: $00
    nop                                           ; $6f75: $00
    nop                                           ; $6f76: $00
    nop                                           ; $6f77: $00
    nop                                           ; $6f78: $00
    nop                                           ; $6f79: $00
    nop                                           ; $6f7a: $00
    nop                                           ; $6f7b: $00
    nop                                           ; $6f7c: $00
    nop                                           ; $6f7d: $00
    nop                                           ; $6f7e: $00
    nop                                           ; $6f7f: $00
    nop                                           ; $6f80: $00
    nop                                           ; $6f81: $00
    nop                                           ; $6f82: $00
    nop                                           ; $6f83: $00
    nop                                           ; $6f84: $00
    nop                                           ; $6f85: $00
    nop                                           ; $6f86: $00
    nop                                           ; $6f87: $00
    nop                                           ; $6f88: $00
    nop                                           ; $6f89: $00
    nop                                           ; $6f8a: $00
    nop                                           ; $6f8b: $00
    nop                                           ; $6f8c: $00
    nop                                           ; $6f8d: $00
    nop                                           ; $6f8e: $00
    nop                                           ; $6f8f: $00
    nop                                           ; $6f90: $00
    nop                                           ; $6f91: $00
    nop                                           ; $6f92: $00
    nop                                           ; $6f93: $00
    nop                                           ; $6f94: $00
    nop                                           ; $6f95: $00
    nop                                           ; $6f96: $00
    nop                                           ; $6f97: $00
    nop                                           ; $6f98: $00
    nop                                           ; $6f99: $00
    nop                                           ; $6f9a: $00
    nop                                           ; $6f9b: $00
    nop                                           ; $6f9c: $00
    nop                                           ; $6f9d: $00
    nop                                           ; $6f9e: $00
    nop                                           ; $6f9f: $00
    nop                                           ; $6fa0: $00
    nop                                           ; $6fa1: $00
    nop                                           ; $6fa2: $00
    nop                                           ; $6fa3: $00
    nop                                           ; $6fa4: $00
    nop                                           ; $6fa5: $00
    nop                                           ; $6fa6: $00
    nop                                           ; $6fa7: $00
    nop                                           ; $6fa8: $00
    nop                                           ; $6fa9: $00
    nop                                           ; $6faa: $00
    nop                                           ; $6fab: $00
    nop                                           ; $6fac: $00
    nop                                           ; $6fad: $00
    nop                                           ; $6fae: $00
    nop                                           ; $6faf: $00
    nop                                           ; $6fb0: $00
    nop                                           ; $6fb1: $00
    nop                                           ; $6fb2: $00
    nop                                           ; $6fb3: $00
    nop                                           ; $6fb4: $00
    nop                                           ; $6fb5: $00
    nop                                           ; $6fb6: $00
    nop                                           ; $6fb7: $00
    nop                                           ; $6fb8: $00
    nop                                           ; $6fb9: $00
    nop                                           ; $6fba: $00
    nop                                           ; $6fbb: $00
    nop                                           ; $6fbc: $00
    nop                                           ; $6fbd: $00
    nop                                           ; $6fbe: $00
    nop                                           ; $6fbf: $00
    nop                                           ; $6fc0: $00
    nop                                           ; $6fc1: $00
    nop                                           ; $6fc2: $00
    nop                                           ; $6fc3: $00
    nop                                           ; $6fc4: $00
    nop                                           ; $6fc5: $00
    nop                                           ; $6fc6: $00
    nop                                           ; $6fc7: $00
    nop                                           ; $6fc8: $00
    nop                                           ; $6fc9: $00
    nop                                           ; $6fca: $00
    nop                                           ; $6fcb: $00
    nop                                           ; $6fcc: $00
    nop                                           ; $6fcd: $00
    nop                                           ; $6fce: $00
    nop                                           ; $6fcf: $00
    nop                                           ; $6fd0: $00
    nop                                           ; $6fd1: $00
    nop                                           ; $6fd2: $00
    nop                                           ; $6fd3: $00
    nop                                           ; $6fd4: $00
    nop                                           ; $6fd5: $00
    nop                                           ; $6fd6: $00
    nop                                           ; $6fd7: $00
    nop                                           ; $6fd8: $00
    nop                                           ; $6fd9: $00
    nop                                           ; $6fda: $00
    nop                                           ; $6fdb: $00
    nop                                           ; $6fdc: $00
    nop                                           ; $6fdd: $00
    nop                                           ; $6fde: $00
    nop                                           ; $6fdf: $00

Jump_051_6fe0:
    nop                                           ; $6fe0: $00
    nop                                           ; $6fe1: $00
    nop                                           ; $6fe2: $00
    nop                                           ; $6fe3: $00
    nop                                           ; $6fe4: $00
    nop                                           ; $6fe5: $00
    nop                                           ; $6fe6: $00
    nop                                           ; $6fe7: $00
    nop                                           ; $6fe8: $00
    nop                                           ; $6fe9: $00
    nop                                           ; $6fea: $00
    nop                                           ; $6feb: $00
    nop                                           ; $6fec: $00
    nop                                           ; $6fed: $00
    nop                                           ; $6fee: $00
    nop                                           ; $6fef: $00
    nop                                           ; $6ff0: $00
    nop                                           ; $6ff1: $00
    nop                                           ; $6ff2: $00
    nop                                           ; $6ff3: $00
    nop                                           ; $6ff4: $00
    nop                                           ; $6ff5: $00
    nop                                           ; $6ff6: $00
    nop                                           ; $6ff7: $00
    nop                                           ; $6ff8: $00
    nop                                           ; $6ff9: $00
    nop                                           ; $6ffa: $00
    nop                                           ; $6ffb: $00
    nop                                           ; $6ffc: $00
    nop                                           ; $6ffd: $00
    nop                                           ; $6ffe: $00
    nop                                           ; $6fff: $00
    nop                                           ; $7000: $00
    nop                                           ; $7001: $00
    nop                                           ; $7002: $00
    nop                                           ; $7003: $00
    nop                                           ; $7004: $00
    nop                                           ; $7005: $00
    nop                                           ; $7006: $00
    nop                                           ; $7007: $00
    nop                                           ; $7008: $00
    nop                                           ; $7009: $00
    nop                                           ; $700a: $00
    nop                                           ; $700b: $00
    nop                                           ; $700c: $00
    nop                                           ; $700d: $00
    nop                                           ; $700e: $00
    nop                                           ; $700f: $00
    nop                                           ; $7010: $00
    nop                                           ; $7011: $00
    nop                                           ; $7012: $00
    nop                                           ; $7013: $00
    nop                                           ; $7014: $00
    nop                                           ; $7015: $00
    nop                                           ; $7016: $00
    nop                                           ; $7017: $00
    nop                                           ; $7018: $00
    nop                                           ; $7019: $00
    nop                                           ; $701a: $00
    nop                                           ; $701b: $00
    nop                                           ; $701c: $00
    nop                                           ; $701d: $00
    nop                                           ; $701e: $00
    nop                                           ; $701f: $00
    nop                                           ; $7020: $00
    nop                                           ; $7021: $00
    nop                                           ; $7022: $00
    nop                                           ; $7023: $00
    nop                                           ; $7024: $00
    nop                                           ; $7025: $00
    nop                                           ; $7026: $00
    nop                                           ; $7027: $00
    nop                                           ; $7028: $00
    nop                                           ; $7029: $00
    nop                                           ; $702a: $00
    nop                                           ; $702b: $00
    nop                                           ; $702c: $00
    nop                                           ; $702d: $00
    nop                                           ; $702e: $00
    nop                                           ; $702f: $00
    nop                                           ; $7030: $00
    nop                                           ; $7031: $00
    nop                                           ; $7032: $00
    nop                                           ; $7033: $00
    nop                                           ; $7034: $00
    nop                                           ; $7035: $00
    nop                                           ; $7036: $00
    nop                                           ; $7037: $00
    nop                                           ; $7038: $00
    nop                                           ; $7039: $00
    nop                                           ; $703a: $00
    nop                                           ; $703b: $00
    nop                                           ; $703c: $00
    nop                                           ; $703d: $00
    nop                                           ; $703e: $00
    nop                                           ; $703f: $00
    nop                                           ; $7040: $00
    nop                                           ; $7041: $00
    nop                                           ; $7042: $00
    nop                                           ; $7043: $00
    nop                                           ; $7044: $00
    nop                                           ; $7045: $00
    nop                                           ; $7046: $00
    nop                                           ; $7047: $00
    nop                                           ; $7048: $00
    nop                                           ; $7049: $00
    nop                                           ; $704a: $00
    nop                                           ; $704b: $00
    nop                                           ; $704c: $00
    nop                                           ; $704d: $00
    nop                                           ; $704e: $00
    nop                                           ; $704f: $00
    nop                                           ; $7050: $00
    nop                                           ; $7051: $00
    nop                                           ; $7052: $00
    nop                                           ; $7053: $00
    nop                                           ; $7054: $00
    nop                                           ; $7055: $00
    nop                                           ; $7056: $00
    nop                                           ; $7057: $00
    nop                                           ; $7058: $00
    nop                                           ; $7059: $00
    nop                                           ; $705a: $00
    nop                                           ; $705b: $00
    nop                                           ; $705c: $00
    nop                                           ; $705d: $00
    nop                                           ; $705e: $00
    nop                                           ; $705f: $00
    nop                                           ; $7060: $00
    nop                                           ; $7061: $00
    nop                                           ; $7062: $00
    nop                                           ; $7063: $00
    nop                                           ; $7064: $00
    nop                                           ; $7065: $00
    nop                                           ; $7066: $00
    nop                                           ; $7067: $00
    nop                                           ; $7068: $00
    nop                                           ; $7069: $00
    nop                                           ; $706a: $00
    nop                                           ; $706b: $00
    nop                                           ; $706c: $00
    nop                                           ; $706d: $00
    nop                                           ; $706e: $00
    nop                                           ; $706f: $00
    nop                                           ; $7070: $00
    nop                                           ; $7071: $00
    nop                                           ; $7072: $00
    nop                                           ; $7073: $00
    nop                                           ; $7074: $00
    nop                                           ; $7075: $00
    nop                                           ; $7076: $00
    nop                                           ; $7077: $00
    nop                                           ; $7078: $00
    nop                                           ; $7079: $00
    nop                                           ; $707a: $00
    nop                                           ; $707b: $00
    nop                                           ; $707c: $00
    nop                                           ; $707d: $00
    nop                                           ; $707e: $00
    nop                                           ; $707f: $00
    nop                                           ; $7080: $00
    nop                                           ; $7081: $00
    nop                                           ; $7082: $00
    nop                                           ; $7083: $00
    nop                                           ; $7084: $00
    nop                                           ; $7085: $00
    nop                                           ; $7086: $00
    nop                                           ; $7087: $00
    nop                                           ; $7088: $00
    nop                                           ; $7089: $00
    nop                                           ; $708a: $00
    nop                                           ; $708b: $00
    nop                                           ; $708c: $00
    nop                                           ; $708d: $00
    nop                                           ; $708e: $00
    nop                                           ; $708f: $00
    nop                                           ; $7090: $00
    nop                                           ; $7091: $00
    nop                                           ; $7092: $00
    nop                                           ; $7093: $00
    nop                                           ; $7094: $00
    nop                                           ; $7095: $00
    nop                                           ; $7096: $00
    nop                                           ; $7097: $00
    nop                                           ; $7098: $00
    nop                                           ; $7099: $00
    nop                                           ; $709a: $00
    nop                                           ; $709b: $00
    nop                                           ; $709c: $00
    nop                                           ; $709d: $00
    nop                                           ; $709e: $00
    nop                                           ; $709f: $00
    nop                                           ; $70a0: $00
    nop                                           ; $70a1: $00
    nop                                           ; $70a2: $00
    nop                                           ; $70a3: $00
    nop                                           ; $70a4: $00
    nop                                           ; $70a5: $00
    nop                                           ; $70a6: $00
    nop                                           ; $70a7: $00
    nop                                           ; $70a8: $00
    nop                                           ; $70a9: $00
    nop                                           ; $70aa: $00
    nop                                           ; $70ab: $00
    nop                                           ; $70ac: $00
    nop                                           ; $70ad: $00
    nop                                           ; $70ae: $00
    nop                                           ; $70af: $00
    nop                                           ; $70b0: $00
    nop                                           ; $70b1: $00
    nop                                           ; $70b2: $00
    nop                                           ; $70b3: $00
    nop                                           ; $70b4: $00
    nop                                           ; $70b5: $00
    nop                                           ; $70b6: $00
    nop                                           ; $70b7: $00
    nop                                           ; $70b8: $00
    nop                                           ; $70b9: $00
    nop                                           ; $70ba: $00
    nop                                           ; $70bb: $00
    nop                                           ; $70bc: $00
    nop                                           ; $70bd: $00
    nop                                           ; $70be: $00
    nop                                           ; $70bf: $00
    nop                                           ; $70c0: $00
    nop                                           ; $70c1: $00
    nop                                           ; $70c2: $00
    nop                                           ; $70c3: $00
    nop                                           ; $70c4: $00
    nop                                           ; $70c5: $00
    nop                                           ; $70c6: $00
    nop                                           ; $70c7: $00
    nop                                           ; $70c8: $00
    nop                                           ; $70c9: $00
    nop                                           ; $70ca: $00
    nop                                           ; $70cb: $00
    nop                                           ; $70cc: $00
    nop                                           ; $70cd: $00
    nop                                           ; $70ce: $00
    nop                                           ; $70cf: $00
    nop                                           ; $70d0: $00
    nop                                           ; $70d1: $00
    nop                                           ; $70d2: $00
    nop                                           ; $70d3: $00
    nop                                           ; $70d4: $00
    nop                                           ; $70d5: $00
    nop                                           ; $70d6: $00
    nop                                           ; $70d7: $00
    nop                                           ; $70d8: $00
    nop                                           ; $70d9: $00
    nop                                           ; $70da: $00
    nop                                           ; $70db: $00
    nop                                           ; $70dc: $00
    nop                                           ; $70dd: $00
    nop                                           ; $70de: $00
    nop                                           ; $70df: $00
    nop                                           ; $70e0: $00
    nop                                           ; $70e1: $00
    nop                                           ; $70e2: $00
    nop                                           ; $70e3: $00
    nop                                           ; $70e4: $00
    nop                                           ; $70e5: $00
    nop                                           ; $70e6: $00
    nop                                           ; $70e7: $00
    nop                                           ; $70e8: $00
    nop                                           ; $70e9: $00
    nop                                           ; $70ea: $00
    nop                                           ; $70eb: $00
    nop                                           ; $70ec: $00
    nop                                           ; $70ed: $00
    nop                                           ; $70ee: $00
    nop                                           ; $70ef: $00
    nop                                           ; $70f0: $00
    nop                                           ; $70f1: $00
    nop                                           ; $70f2: $00
    nop                                           ; $70f3: $00
    nop                                           ; $70f4: $00
    nop                                           ; $70f5: $00
    nop                                           ; $70f6: $00
    nop                                           ; $70f7: $00
    nop                                           ; $70f8: $00
    nop                                           ; $70f9: $00
    nop                                           ; $70fa: $00
    nop                                           ; $70fb: $00
    nop                                           ; $70fc: $00
    nop                                           ; $70fd: $00
    nop                                           ; $70fe: $00
    nop                                           ; $70ff: $00
    nop                                           ; $7100: $00
    ld [bc], a                                    ; $7101: $02
    nop                                           ; $7102: $00
    rrca                                          ; $7103: $0f
    ld [bc], a                                    ; $7104: $02
    ld [bc], a                                    ; $7105: $02
    nop                                           ; $7106: $00
    rrca                                          ; $7107: $0f
    inc b                                         ; $7108: $04
    ld [bc], a                                    ; $7109: $02
    nop                                           ; $710a: $00
    rrca                                          ; $710b: $0f
    ld b, $02                                     ; $710c: $06 $02
    nop                                           ; $710e: $00
    rrca                                          ; $710f: $0f
    ld [$0002], sp                                ; $7110: $08 $02 $00
    rrca                                          ; $7113: $0f
    ld b, $02                                     ; $7114: $06 $02
    nop                                           ; $7116: $00
    rrca                                          ; $7117: $0f
    inc b                                         ; $7118: $04
    ld [bc], a                                    ; $7119: $02
    nop                                           ; $711a: $00
    rrca                                          ; $711b: $0f
    ld [bc], a                                    ; $711c: $02
    ld [bc], a                                    ; $711d: $02
    nop                                           ; $711e: $00
    rrca                                          ; $711f: $0f
    rst $38                                       ; $7120: $ff
    nop                                           ; $7121: $00
    ld a, [bc]                                    ; $7122: $0a
    rrca                                          ; $7123: $0f
    ld [bc], a                                    ; $7124: $02
    ld e, $19                                     ; $7125: $1e $19
    rrca                                          ; $7127: $0f
    ld [bc], a                                    ; $7128: $02
    ld e, $28                                     ; $7129: $1e $28
    rrca                                          ; $712b: $0f
    ld [bc], a                                    ; $712c: $02
    ld e, $19                                     ; $712d: $1e $19
    rrca                                          ; $712f: $0f
    ld [bc], a                                    ; $7130: $02
    ld e, $ff                                     ; $7131: $1e $ff
    ld bc, $0337                                  ; $7133: $01 $37 $03
    ld de, $3a1e                                  ; $7136: $11 $1e $3a
    inc bc                                        ; $7139: $03
    ld de, $ff1e                                  ; $713a: $11 $1e $ff
    ld [bc], a                                    ; $713d: $02
    dec a                                         ; $713e: $3d
    ld bc, $1e14                                  ; $713f: $01 $14 $1e
    ld a, $01                                     ; $7142: $3e $01
    inc d                                         ; $7144: $14
    ld e, $3f                                     ; $7145: $1e $3f
    ld bc, $1e14                                  ; $7147: $01 $14 $1e
    ld a, $01                                     ; $714a: $3e $01
    inc d                                         ; $714c: $14
    ld e, $ff                                     ; $714d: $1e $ff
    ld [bc], a                                    ; $714f: $02
    cp $f5                                        ; $7150: $fe $f5
    push bc                                       ; $7152: $c5
    push de                                       ; $7153: $d5
    push hl                                       ; $7154: $e5
    ld a, $ff                                     ; $7155: $3e $ff
    ld b, $01                                     ; $7157: $06 $01
    ld hl, $c330                                  ; $7159: $21 $30 $c3
    ld [hl+], a                                   ; $715c: $22
    ld [hl], b                                    ; $715d: $70
    inc hl                                        ; $715e: $23
    ld [hl+], a                                   ; $715f: $22
    ld [hl], b                                    ; $7160: $70
    inc hl                                        ; $7161: $23
    ld [hl+], a                                   ; $7162: $22
    ld [hl], b                                    ; $7163: $70
    inc hl                                        ; $7164: $23
    ld [hl+], a                                   ; $7165: $22
    ld [hl], b                                    ; $7166: $70
    inc hl                                        ; $7167: $23
    ld [hl+], a                                   ; $7168: $22
    ld [hl+], a                                   ; $7169: $22
    ld [hl+], a                                   ; $716a: $22
    ld [hl+], a                                   ; $716b: $22
    ld hl, $0401                                  ; $716c: $21 $01 $04
    rst $18                                       ; $716f: $df
    ld a, [bc]                                    ; $7170: $0a
    inc de                                        ; $7171: $13
    ld de, $4000                                  ; $7172: $11 $00 $40
    ld h, $00                                     ; $7175: $26 $00
    add hl, de                                    ; $7177: $19
    ld e, a                                       ; $7178: $5f
    ld d, $00                                     ; $7179: $16 $00
    ld a, [hl+]                                   ; $717b: $2a
    ld h, [hl]                                    ; $717c: $66
    ld l, a                                       ; $717d: $6f
    add hl, de                                    ; $717e: $19
    add hl, de                                    ; $717f: $19
    ld a, [hl+]                                   ; $7180: $2a
    ld h, [hl]                                    ; $7181: $66
    ld l, a                                       ; $7182: $6f
    ld a, [hl]                                    ; $7183: $7e
    cp $fe                                        ; $7184: $fe $fe
    jr nz, jr_051_718b                            ; $7186: $20 $03

    jp Jump_051_71ff                              ; $7188: $c3 $ff $71


jr_051_718b:
    add sp, -$02                                  ; $718b: $e8 $fe
    ld de, $c332                                  ; $718d: $11 $32 $c3
    push hl                                       ; $7190: $e5
    ld hl, sp+$02                                 ; $7191: $f8 $02
    ld [hl], e                                    ; $7193: $73
    inc hl                                        ; $7194: $23
    ld [hl], d                                    ; $7195: $72
    pop hl                                        ; $7196: $e1
    ld d, h                                       ; $7197: $54
    ld e, l                                       ; $7198: $5d
    ld b, $ff                                     ; $7199: $06 $ff
    ld c, $03                                     ; $719b: $0e $03
    xor a                                         ; $719d: $af
    ld hl, $c330                                  ; $719e: $21 $30 $c3
    ld [hl], a                                    ; $71a1: $77
    ld hl, $c338                                  ; $71a2: $21 $38 $c3
    ld [hl], a                                    ; $71a5: $77
    inc hl                                        ; $71a6: $23

jr_051_71a7:
    inc b                                         ; $71a7: $04
    ld a, [de]                                    ; $71a8: $1a
    inc de                                        ; $71a9: $13
    cp $fe                                        ; $71aa: $fe $fe
    jr z, jr_051_71e3                             ; $71ac: $28 $35

    cp $ff                                        ; $71ae: $fe $ff
    jr nz, jr_051_71a7                            ; $71b0: $20 $f5

    inc b                                         ; $71b2: $04
    ld a, b                                       ; $71b3: $78
    inc a                                         ; $71b4: $3c
    ld [hl], a                                    ; $71b5: $77
    push de                                       ; $71b6: $d5
    push hl                                       ; $71b7: $e5
    ld hl, sp+$04                                 ; $71b8: $f8 $04
    ld e, [hl]                                    ; $71ba: $5e
    inc hl                                        ; $71bb: $23
    ld d, [hl]                                    ; $71bc: $56
    pop hl                                        ; $71bd: $e1
    ld [de], a                                    ; $71be: $12
    inc de                                        ; $71bf: $13
    inc de                                        ; $71c0: $13
    push hl                                       ; $71c1: $e5
    ld hl, sp+$04                                 ; $71c2: $f8 $04
    ld [hl], e                                    ; $71c4: $73
    inc hl                                        ; $71c5: $23
    ld [hl], d                                    ; $71c6: $72
    pop hl                                        ; $71c7: $e1
    pop de                                        ; $71c8: $d1
    ld a, [de]                                    ; $71c9: $1a
    inc a                                         ; $71ca: $3c
    inc de                                        ; $71cb: $13
    push hl                                       ; $71cc: $e5
    push de                                       ; $71cd: $d5
    ld d, a                                       ; $71ce: $57
    ld a, $04                                     ; $71cf: $3e $04
    sub c                                         ; $71d1: $91
    ld hl, $c330                                  ; $71d2: $21 $30 $c3
    ld e, a                                       ; $71d5: $5f
    ld a, d                                       ; $71d6: $7a
    ld d, $00                                     ; $71d7: $16 $00
    add hl, de                                    ; $71d9: $19
    add hl, de                                    ; $71da: $19
    inc hl                                        ; $71db: $23
    ld [hl], a                                    ; $71dc: $77
    pop de                                        ; $71dd: $d1
    pop hl                                        ; $71de: $e1
    inc hl                                        ; $71df: $23
    dec c                                         ; $71e0: $0d
    jr nz, jr_051_71a7                            ; $71e1: $20 $c4

jr_051_71e3:
    ld a, c                                       ; $71e3: $79
    or a                                          ; $71e4: $b7
    jr z, jr_051_71f5                             ; $71e5: $28 $0e

    ld a, $ff                                     ; $71e7: $3e $ff
    dec hl                                        ; $71e9: $2b
    ld [hl], a                                    ; $71ea: $77
    push hl                                       ; $71eb: $e5
    ld hl, sp+$02                                 ; $71ec: $f8 $02
    ld e, [hl]                                    ; $71ee: $5e
    inc hl                                        ; $71ef: $23
    ld d, [hl]                                    ; $71f0: $56
    pop hl                                        ; $71f1: $e1
    dec de                                        ; $71f2: $1b
    dec de                                        ; $71f3: $1b
    ld [de], a                                    ; $71f4: $12

jr_051_71f5:
    ld a, $01                                     ; $71f5: $3e $01
    ld hl, $7213                                  ; $71f7: $21 $13 $72
    call Call_000_23e8                            ; $71fa: $cd $e8 $23
    add sp, $02                                   ; $71fd: $e8 $02

Jump_051_71ff:
    pop hl                                        ; $71ff: $e1
    pop de                                        ; $7200: $d1
    pop bc                                        ; $7201: $c1
    pop af                                        ; $7202: $f1
    ret                                           ; $7203: $c9


    push af                                       ; $7204: $f5
    push bc                                       ; $7205: $c5
    push de                                       ; $7206: $d5
    push hl                                       ; $7207: $e5
    ld hl, $7213                                  ; $7208: $21 $13 $72
    call Call_000_2449                            ; $720b: $cd $49 $24
    pop hl                                        ; $720e: $e1
    pop de                                        ; $720f: $d1
    pop bc                                        ; $7210: $c1
    pop af                                        ; $7211: $f1
    ret                                           ; $7212: $c9


    rst $30                                       ; $7213: $f7
    add b                                         ; $7214: $80
    inc bc                                        ; $7215: $03
    jr nz, jr_051_721c                            ; $7216: $20 $04

    rst $30                                       ; $7218: $f7
    nop                                           ; $7219: $00
    inc bc                                        ; $721a: $03
    ret nz                                        ; $721b: $c0

jr_051_721c:
    push af                                       ; $721c: $f5
    push bc                                       ; $721d: $c5
    push de                                       ; $721e: $d5
    push hl                                       ; $721f: $e5
    ldh a, [$96]                                  ; $7220: $f0 $96
    push af                                       ; $7222: $f5
    ld a, $06                                     ; $7223: $3e $06
    ldh [$96], a                                  ; $7225: $e0 $96
    ldh [rSVBK], a                                ; $7227: $e0 $70
    ld c, $00                                     ; $7229: $0e $00
    ld hl, $c338                                  ; $722b: $21 $38 $c3

jr_051_722e:
    ld a, [hl]                                    ; $722e: $7e
    cp $ff                                        ; $722f: $fe $ff
    jr z, jr_051_7257                             ; $7231: $28 $24

    push hl                                       ; $7233: $e5
    ld l, c                                       ; $7234: $69
    ld h, $00                                     ; $7235: $26 $00
    add hl, hl                                    ; $7237: $29
    ld de, $c330                                  ; $7238: $11 $30 $c3
    add hl, de                                    ; $723b: $19
    inc hl                                        ; $723c: $23
    ld a, [hl]                                    ; $723d: $7e
    dec a                                         ; $723e: $3d
    ld [hl], a                                    ; $723f: $77
    pop hl                                        ; $7240: $e1
    inc hl                                        ; $7241: $23
    ld b, c                                       ; $7242: $41
    inc c                                         ; $7243: $0c
    ld d, a                                       ; $7244: $57
    ld a, c                                       ; $7245: $79
    cp $04                                        ; $7246: $fe $04
    jr z, jr_051_7257                             ; $7248: $28 $0d

    ld a, d                                       ; $724a: $7a
    or a                                          ; $724b: $b7
    jr nz, jr_051_722e                            ; $724c: $20 $e0

    ld a, b                                       ; $724e: $78
    call Call_051_7261                            ; $724f: $cd $61 $72
    ld a, c                                       ; $7252: $79
    cp $04                                        ; $7253: $fe $04
    jr nz, jr_051_722e                            ; $7255: $20 $d7

jr_051_7257:
    pop af                                        ; $7257: $f1
    ldh [$96], a                                  ; $7258: $e0 $96
    ldh [rSVBK], a                                ; $725a: $e0 $70
    pop hl                                        ; $725c: $e1
    pop de                                        ; $725d: $d1
    pop bc                                        ; $725e: $c1
    pop af                                        ; $725f: $f1
    ret                                           ; $7260: $c9


Call_051_7261:
    push af                                       ; $7261: $f5
    push bc                                       ; $7262: $c5
    push de                                       ; $7263: $d5
    push hl                                       ; $7264: $e5
    push af                                       ; $7265: $f5
    add sp, -$01                                  ; $7266: $e8 $ff
    ld hl, sp+$00                                 ; $7268: $f8 $00
    ld [hl], a                                    ; $726a: $77
    ld h, $00                                     ; $726b: $26 $00
    ld l, a                                       ; $726d: $6f
    add hl, hl                                    ; $726e: $29
    ld bc, $c330                                  ; $726f: $01 $30 $c3
    add hl, bc                                    ; $7272: $09
    ld a, [hl]                                    ; $7273: $7e
    ld [$c33c], a                                 ; $7274: $ea $3c $c3

jr_051_7277:
    ld hl, $0401                                  ; $7277: $21 $01 $04
    rst $18                                       ; $727a: $df
    ld a, [bc]                                    ; $727b: $0a
    inc de                                        ; $727c: $13
    ld de, $4000                                  ; $727d: $11 $00 $40
    ld h, $00                                     ; $7280: $26 $00
    add hl, de                                    ; $7282: $19
    ld e, a                                       ; $7283: $5f
    ld d, $00                                     ; $7284: $16 $00
    ld a, [hl+]                                   ; $7286: $2a
    ld h, [hl]                                    ; $7287: $66
    ld l, a                                       ; $7288: $6f
    add hl, de                                    ; $7289: $19
    add hl, de                                    ; $728a: $19
    ld a, [hl+]                                   ; $728b: $2a
    ld h, [hl]                                    ; $728c: $66
    ld l, a                                       ; $728d: $6f
    ld a, [$c33c]                                 ; $728e: $fa $3c $c3
    ld c, a                                       ; $7291: $4f
    ld b, $00                                     ; $7292: $06 $00
    add hl, bc                                    ; $7294: $09
    ld a, [hl]                                    ; $7295: $7e
    cp $ff                                        ; $7296: $fe $ff
    jr nz, jr_051_72a9                            ; $7298: $20 $0f

    ld hl, sp+$00                                 ; $729a: $f8 $00
    ld c, [hl]                                    ; $729c: $4e
    ld b, $00                                     ; $729d: $06 $00
    ld hl, $c338                                  ; $729f: $21 $38 $c3
    add hl, bc                                    ; $72a2: $09
    ld a, [hl]                                    ; $72a3: $7e
    ld [$c33c], a                                 ; $72a4: $ea $3c $c3
    jr jr_051_7277                                ; $72a7: $18 $ce

jr_051_72a9:
    ld b, a                                       ; $72a9: $47
    inc hl                                        ; $72aa: $23
    ld c, [hl]                                    ; $72ab: $4e
    inc hl                                        ; $72ac: $23
    ld e, [hl]                                    ; $72ad: $5e
    inc hl                                        ; $72ae: $23
    ld a, [hl]                                    ; $72af: $7e
    push af                                       ; $72b0: $f5
    push bc                                       ; $72b1: $c5
    ld l, e                                       ; $72b2: $6b
    ld h, $00                                     ; $72b3: $26 $00
    add hl, hl                                    ; $72b5: $29
    add hl, hl                                    ; $72b6: $29
    add hl, hl                                    ; $72b7: $29
    add hl, hl                                    ; $72b8: $29
    ld de, $b000                                  ; $72b9: $11 $00 $b0
    add hl, de                                    ; $72bc: $19
    push hl                                       ; $72bd: $e5
    ld l, b                                       ; $72be: $68
    ld h, $00                                     ; $72bf: $26 $00
    add hl, hl                                    ; $72c1: $29
    add hl, hl                                    ; $72c2: $29
    add hl, hl                                    ; $72c3: $29
    add hl, hl                                    ; $72c4: $29
    ld b, h                                       ; $72c5: $44
    ld c, l                                       ; $72c6: $4d
    ld hl, $0400                                  ; $72c7: $21 $00 $04
    rst $18                                       ; $72ca: $df
    ld a, [bc]                                    ; $72cb: $0a
    inc de                                        ; $72cc: $13
    ld de, $4000                                  ; $72cd: $11 $00 $40
    ld h, $00                                     ; $72d0: $26 $00
    add hl, de                                    ; $72d2: $19
    ld e, a                                       ; $72d3: $5f
    ld d, $00                                     ; $72d4: $16 $00
    ld a, [hl+]                                   ; $72d6: $2a
    ld h, [hl]                                    ; $72d7: $66
    ld l, a                                       ; $72d8: $6f
    add hl, de                                    ; $72d9: $19
    add hl, de                                    ; $72da: $19
    ld a, [hl+]                                   ; $72db: $2a
    ld h, [hl]                                    ; $72dc: $66
    ld l, a                                       ; $72dd: $6f
    add hl, bc                                    ; $72de: $09
    pop de                                        ; $72df: $d1
    pop bc                                        ; $72e0: $c1
    call Call_000_0468                            ; $72e1: $cd $68 $04
    ld a, [$c33c]                                 ; $72e4: $fa $3c $c3
    add $04                                       ; $72e7: $c6 $04
    ld [$c33c], a                                 ; $72e9: $ea $3c $c3
    pop af                                        ; $72ec: $f1
    ld d, a                                       ; $72ed: $57
    add sp, $01                                   ; $72ee: $e8 $01
    pop af                                        ; $72f0: $f1
    ld h, $00                                     ; $72f1: $26 $00
    ld l, a                                       ; $72f3: $6f
    add hl, hl                                    ; $72f4: $29
    ld bc, $c330                                  ; $72f5: $01 $30 $c3
    add hl, bc                                    ; $72f8: $09
    ld a, [$c33c]                                 ; $72f9: $fa $3c $c3
    ld [hl+], a                                   ; $72fc: $22
    ld [hl], d                                    ; $72fd: $72
    pop hl                                        ; $72fe: $e1
    pop de                                        ; $72ff: $d1
    pop bc                                        ; $7300: $c1
    pop af                                        ; $7301: $f1
    ret                                           ; $7302: $c9


    dec bc                                        ; $7303: $0b
    ld [hl], e                                    ; $7304: $73
    dec sp                                        ; $7305: $3b
    ld [hl], e                                    ; $7306: $73
    sub c                                         ; $7307: $91
    ld [hl], l                                    ; $7308: $75
    ld e, d                                       ; $7309: $5a
    ld [hl], a                                    ; $730a: $77
    db $ec                                        ; $730b: $ec
    dec hl                                        ; $730c: $2b
    ld [hl+], a                                   ; $730d: $22
    dec sp                                        ; $730e: $3b
    ld b, b                                       ; $730f: $40
    ld [hl+], a                                   ; $7310: $22
    nop                                           ; $7311: $00
    add hl, bc                                    ; $7312: $09
    and l                                         ; $7313: $a5
    ld b, e                                       ; $7314: $43
    xor $37                                       ; $7315: $ee $37
    ld [hl+], a                                   ; $7317: $22
    dec sp                                        ; $7318: $3b
    ld b, b                                       ; $7319: $40
    ld [hl+], a                                   ; $731a: $22
    ccf                                           ; $731b: $3f
    ld a, a                                       ; $731c: $7f
    rla                                           ; $731d: $17
    ld e, [hl]                                    ; $731e: $5e
    ld de, $2249                                  ; $731f: $11 $49 $22
    dec sp                                        ; $7322: $3b
    ld [$0825], sp                                ; $7323: $08 $25 $08
    dec h                                         ; $7326: $25
    ld [$0825], sp                                ; $7327: $08 $25 $08
    dec h                                         ; $732a: $25
    ld [$0825], sp                                ; $732b: $08 $25 $08
    dec h                                         ; $732e: $25
    ld [$0825], sp                                ; $732f: $08 $25 $08
    dec h                                         ; $7332: $25
    ld [$0825], sp                                ; $7333: $08 $25 $08
    dec h                                         ; $7336: $25
    ld [$0825], sp                                ; $7337: $08 $25 $08
    dec h                                         ; $733a: $25
    rst $08                                       ; $733b: $cf
    dec bc                                        ; $733c: $0b
    dec bc                                        ; $733d: $0b
    dec bc                                        ; $733e: $0b
    ld a, [bc]                                    ; $733f: $0a
    db $fc                                        ; $7340: $fc
    ldh [$fd], a                                  ; $7341: $e0 $fd
    ld [c], a                                     ; $7343: $e2
    dec hl                                        ; $7344: $2b
    dec hl                                        ; $7345: $2b
    rst $38                                       ; $7346: $ff
    dec bc                                        ; $7347: $0b
    dec bc                                        ; $7348: $0b
    ld c, d                                       ; $7349: $4a
    ld l, d                                       ; $734a: $6a
    ld l, d                                       ; $734b: $6a
    ld l, d                                       ; $734c: $6a
    inc c                                         ; $734d: $0c
    inc c                                         ; $734e: $0c
    rst $00                                       ; $734f: $c7
    inc c                                         ; $7350: $0c
    ld c, h                                       ; $7351: $4c
    ld c, h                                       ; $7352: $4c
    db $fd                                        ; $7353: $fd
    pop hl                                        ; $7354: $e1
    db $fc                                        ; $7355: $fc
    db $e3                                        ; $7356: $e3
    ld a, [c]                                     ; $7357: $f2
    pop hl                                        ; $7358: $e1
    inc l                                         ; $7359: $2c
    inc l                                         ; $735a: $2c
    nop                                           ; $735b: $00
    ld a, [c]                                     ; $735c: $f2
    ldh [$f8], a                                  ; $735d: $e0 $f8
    and $fd                                       ; $735f: $e6 $fd
    add sp, -$3d                                  ; $7361: $e8 $c3
    and $be                                       ; $7363: $e6 $be
    push hl                                       ; $7365: $e5
    cp a                                          ; $7366: $bf
    ldh [$c1], a                                  ; $7367: $e0 $c1
    db $e4                                        ; $7369: $e4
    ret nz                                        ; $736a: $c0

    ld [c], a                                     ; $736b: $e2
    ldh [$ba], a                                  ; $736c: $e0 $ba
    pop hl                                        ; $736e: $e1
    cp c                                          ; $736f: $b9
    push hl                                       ; $7370: $e5
    ld hl, sp-$1a                                 ; $7371: $f8 $e6
    cp l                                          ; $7373: $bd
    add sp, -$7b                                  ; $7374: $e8 $85
    push hl                                       ; $7376: $e5
    ld l, e                                       ; $7377: $6b
    ld l, e                                       ; $7378: $6b
    ld c, e                                       ; $7379: $4b
    nop                                           ; $737a: $00
    rst $38                                       ; $737b: $ff
    ldh [$7c], a                                  ; $737c: $e0 $7c
    ldh [$7e], a                                  ; $737e: $e0 $7e
    ldh [$dc], a                                  ; $7380: $e0 $dc
    db $e4                                        ; $7382: $e4
    sub [hl]                                      ; $7383: $96
    and $73                                       ; $7384: $e6 $73
    pop hl                                        ; $7386: $e1
    ld hl, sp-$17                                 ; $7387: $f8 $e9
    ret nz                                        ; $7389: $c0

    rst $28                                       ; $738a: $ef
    rst $20                                       ; $738b: $e7
    ld l, e                                       ; $738c: $6b
    ld l, e                                       ; $738d: $6b
    ld l, e                                       ; $738e: $6b
    ld b, e                                       ; $738f: $43
    pop hl                                        ; $7390: $e1
    cp [hl]                                       ; $7391: $be
    pop hl                                        ; $7392: $e1
    dec hl                                        ; $7393: $2b
    dec hl                                        ; $7394: $2b
    ld c, d                                       ; $7395: $4a
    jr nz, @-$34                                  ; $7396: $20 $ca

    db $e4                                        ; $7398: $e4
    cp l                                          ; $7399: $bd
    push hl                                       ; $739a: $e5
    jr c, @-$1a                                   ; $739b: $38 $e4

    ld hl, sp-$1a                                 ; $739d: $f8 $e6
    ret nz                                        ; $739f: $c0

    pop af                                        ; $73a0: $f1
    dec hl                                        ; $73a1: $2b
    rst $38                                       ; $73a2: $ff
    ldh [$f9], a                                  ; $73a3: $e0 $f9
    pop bc                                        ; $73a5: $c1
    ldh [$be], a                                  ; $73a6: $e0 $be
    ld [c], a                                     ; $73a8: $e2
    ld [bc], a                                    ; $73a9: $02
    db $e4                                        ; $73aa: $e4
    ld a, $e1                                     ; $73ab: $3e $e1
    ccf                                           ; $73ad: $3f
    add sp, $76                                   ; $73ae: $e8 $76
    db $e4                                        ; $73b0: $e4
    inc c                                         ; $73b1: $0c
    inc c                                         ; $73b2: $0c
    inc l                                         ; $73b3: $2c

jr_051_73b4:
    jr nz, jr_051_73b4                            ; $73b4: $20 $fe

    jp $e3f9                                      ; $73b6: $c3 $f9 $e3


    push bc                                       ; $73b9: $c5
    add $c0                                       ; $73ba: $c6 $c0
    db $e3                                        ; $73bc: $e3
    ld a, h                                       ; $73bd: $7c
    pop hl                                        ; $73be: $e1
    dec bc                                        ; $73bf: $0b
    ret nz                                        ; $73c0: $c0

    push bc                                       ; $73c1: $c5
    ld c, c                                       ; $73c2: $49
    pop hl                                        ; $73c3: $e1
    ld [$e4b5], sp                                ; $73c4: $08 $b5 $e4
    ld b, c                                       ; $73c7: $41
    push af                                       ; $73c8: $f5
    nop                                           ; $73c9: $00
    ld [c], a                                     ; $73ca: $e2
    ld l, e                                       ; $73cb: $6b
    pop bc                                        ; $73cc: $c1
    ld [c], a                                     ; $73cd: $e2
    ret nz                                        ; $73ce: $c0

    db $e4                                        ; $73cf: $e4
    dec sp                                        ; $73d0: $3b
    ldh [$80], a                                  ; $73d1: $e0 $80
    jp nz, $fe40                                  ; $73d3: $c2 $40 $fe

    db $e4                                        ; $73d6: $e4
    ld [hl], l                                    ; $73d7: $75
    add $77                                       ; $73d8: $c6 $77
    pop bc                                        ; $73da: $c1
    ld b, c                                       ; $73db: $41
    rst $28                                       ; $73dc: $ef
    ret nz                                        ; $73dd: $c0

    call nz, $e9c0                                ; $73de: $c4 $c0 $e9
    dec bc                                        ; $73e1: $0b
    ret nz                                        ; $73e2: $c0

    ldh [$30], a                                  ; $73e3: $e0 $30
    adc $c4                                       ; $73e5: $ce $c4
    ld c, d                                       ; $73e7: $4a
    rst $20                                       ; $73e8: $e7
    ret nz                                        ; $73e9: $c0

    call c, $c1bf                                 ; $73ea: $dc $bf $c1
    ld l, e                                       ; $73ed: $6b
    ld l, e                                       ; $73ee: $6b
    scf                                           ; $73ef: $37
    push hl                                       ; $73f0: $e5
    adc $c5                                       ; $73f1: $ce $c5
    nop                                           ; $73f3: $00
    set 0, l                                      ; $73f4: $cb $c5
    ret nz                                        ; $73f6: $c0

    rst $18                                       ; $73f7: $df
    ret nz                                        ; $73f8: $c0

    db $e3                                        ; $73f9: $e3
    cp a                                          ; $73fa: $bf
    ld [c], a                                     ; $73fb: $e2
    xor a                                         ; $73fc: $af
    and b                                         ; $73fd: $a0
    adc h                                         ; $73fe: $8c
    db $e3                                        ; $73ff: $e3

Call_051_7400:
    ret nz                                        ; $7400: $c0

    and l                                         ; $7401: $a5
    add b                                         ; $7402: $80
    db $fd                                        ; $7403: $fd
    rlca                                          ; $7404: $07
    dec hl                                        ; $7405: $2b
    dec bc                                        ; $7406: $0b
    ld c, e                                       ; $7407: $4b
    add a                                         ; $7408: $87
    and b                                         ; $7409: $a0
    cp a                                          ; $740a: $bf
    jp hl                                         ; $740b: $e9


    ret nz                                        ; $740c: $c0

    and l                                         ; $740d: $a5
    ld a, l                                       ; $740e: $7d
    push bc                                       ; $740f: $c5
    add b                                         ; $7410: $80
    ldh a, [$08]                                  ; $7411: $f0 $08
    ld a, h                                       ; $7413: $7c
    call nz, $a1c0                                ; $7414: $c4 $c0 $a1
    add $a1                                       ; $7417: $c6 $a1
    dec hl                                        ; $7419: $2b
    jp $fca1                                      ; $741a: $c3 $a1 $fc


    db $e3                                        ; $741d: $e3
    db $f4                                        ; $741e: $f4
    and b                                         ; $741f: $a0
    ld c, l                                       ; $7420: $4d
    and e                                         ; $7421: $a3
    ld a, b                                       ; $7422: $78
    ld b, c                                       ; $7423: $41
    and l                                         ; $7424: $a5
    ld b, b                                       ; $7425: $40
    adc $3f                                       ; $7426: $ce $3f
    xor d                                         ; $7428: $aa
    ld a, [hl+]                                   ; $7429: $2a
    ld a, [bc]                                    ; $742a: $0a
    ld a, [bc]                                    ; $742b: $0a
    ld a, [bc]                                    ; $742c: $0a
    db $fc                                        ; $742d: $fc
    ld [c], a                                     ; $742e: $e2
    adc h                                         ; $742f: $8c

jr_051_7430:
    rst $30                                       ; $7430: $f7
    pop hl                                        ; $7431: $e1
    or $e2                                        ; $7432: $f6 $e2
    ld a, [bc]                                    ; $7434: $0a
    ld a, [bc]                                    ; $7435: $0a
    ld b, b                                       ; $7436: $40
    db $e4                                        ; $7437: $e4
    ret nz                                        ; $7438: $c0

jr_051_7439:
    add sp, -$03                                  ; $7439: $e8 $fd
    rst $30                                       ; $743b: $f7
    ld a, [hl+]                                   ; $743c: $2a
    inc b                                         ; $743d: $04
    rst $38                                       ; $743e: $ff
    ldh a, [$de]                                  ; $743f: $f0 $de
    add a                                         ; $7441: $87
    inc l                                         ; $7442: $2c
    rst $38                                       ; $7443: $ff
    ldh [$0d], a                                  ; $7444: $e0 $0d
    adc $c0                                       ; $7446: $ce $c0
    and b                                         ; $7448: $a0
    add sp, -$19                                  ; $7449: $e8 $e7
    ret nz                                        ; $744b: $c0

    ei                                            ; $744c: $fb
    nop                                           ; $744d: $00
    add l                                         ; $744e: $85
    push af                                       ; $744f: $f5
    ret nz                                        ; $7450: $c0

    rst $38                                       ; $7451: $ff
    pop bc                                        ; $7452: $c1
    rst $38                                       ; $7453: $ff
    db $e4                                        ; $7454: $e4
    and a                                         ; $7455: $a7
    sub [hl]                                      ; $7456: $96
    push bc                                       ; $7457: $c5
    rst $38                                       ; $7458: $ff
    rst $38                                       ; $7459: $ff
    add hl, hl                                    ; $745a: $29
    pop af                                        ; $745b: $f1
    jp c, Jump_000_0084                           ; $745c: $da $84 $00

    ret nz                                        ; $745f: $c0

    rst $38                                       ; $7460: $ff
    cp b                                          ; $7461: $b8
    db $d3                                        ; $7462: $d3
    add h                                         ; $7463: $84
    and $21                                       ; $7464: $e6 $21
    and a                                         ; $7466: $a7
    adc [hl]                                      ; $7467: $8e
    add a                                         ; $7468: $87
    add h                                         ; $7469: $84
    ld h, a                                       ; $746a: $67
    cp b                                          ; $746b: $b8
    adc b                                         ; $746c: $88
    ld [hl], c                                    ; $746d: $71
    ld h, h                                       ; $746e: $64
    nop                                           ; $746f: $00
    ld a, c                                       ; $7470: $79
    add e                                         ; $7471: $83
    push de                                       ; $7472: $d5
    ld h, [hl]                                    ; $7473: $66
    sub d                                         ; $7474: $92
    ld h, h                                       ; $7475: $64
    ret                                           ; $7476: $c9


    add l                                         ; $7477: $85
    ld l, l                                       ; $7478: $6d
    and $3d                                       ; $7479: $e6 $3d
    ld h, e                                       ; $747b: $63
    cp b                                          ; $747c: $b8
    adc c                                         ; $747d: $89
    ld a, [hl+]                                   ; $747e: $2a
    ld h, h                                       ; $747f: $64
    nop                                           ; $7480: $00
    ld h, a                                       ; $7481: $67
    ret z                                         ; $7482: $c8

    ld b, d                                       ; $7483: $42
    ld hl, sp-$74                                 ; $7484: $f8 $8c
    ld l, c                                       ; $7486: $69
    xor d                                         ; $7487: $aa
    add l                                         ; $7488: $85
    ld a, c                                       ; $7489: $79
    ld l, c                                       ; $748a: $69
    push de                                       ; $748b: $d5
    ld h, [hl]                                    ; $748c: $66
    reti                                          ; $748d: $d9


    or e                                          ; $748e: $b3
    db $fc                                        ; $748f: $fc
    add a                                         ; $7490: $87
    nop                                           ; $7491: $00
    add b                                         ; $7492: $80
    ld l, c                                       ; $7493: $69
    ld a, c                                       ; $7494: $79
    ld l, d                                       ; $7495: $6a
    push de                                       ; $7496: $d5
    ld h, [hl]                                    ; $7497: $66
    push hl                                       ; $7498: $e5
    ret nc                                        ; $7499: $d0

    add h                                         ; $749a: $84
    ld h, [hl]                                    ; $749b: $66
    nop                                           ; $749c: $00
    ld l, e                                       ; $749d: $6b
    ret nz                                        ; $749e: $c0

    db $ec                                        ; $749f: $ec
    push de                                       ; $74a0: $d5
    add e                                         ; $74a1: $83
    nop                                           ; $74a2: $00
    nop                                           ; $74a3: $00
    ld a, [c]                                     ; $74a4: $f2
    dec b                                         ; $74a5: $05
    adc c                                         ; $74a6: $89
    jr c, jr_051_7430                             ; $74a7: $38 $87

Call_051_74a9:
    add c                                         ; $74a9: $81
    db $ed                                        ; $74aa: $ed
    sub d                                         ; $74ab: $92
    ld c, d                                       ; $74ac: $4a
    ld h, e                                       ; $74ad: $63
    adc $05                                       ; $74ae: $ce $05
    ld l, b                                       ; $74b0: $68
    jr nc, jr_051_7439                            ; $74b1: $30 $86

    nop                                           ; $74b3: $00
    rra                                           ; $74b4: $1f
    rst $28                                       ; $74b5: $ef
    add c                                         ; $74b6: $81
    rst $08                                       ; $74b7: $cf
    ret nz                                        ; $74b8: $c0

    res 0, l                                      ; $74b9: $cb $85
    ld b, a                                       ; $74bb: $47
    add hl, sp                                    ; $74bc: $39
    ld c, l                                       ; $74bd: $4d
    push bc                                       ; $74be: $c5
    or [hl]                                       ; $74bf: $b6
    add h                                         ; $74c0: $84
    ld l, b                                       ; $74c1: $68
    cp b                                          ; $74c2: $b8
    adc e                                         ; $74c3: $8b
    nop                                           ; $74c4: $00
    ld a, a                                       ; $74c5: $7f
    ld [$52e9], a                                 ; $74c6: $ea $e9 $52
    add h                                         ; $74c9: $84
    ld l, [hl]                                    ; $74ca: $6e
    dec l                                         ; $74cb: $2d
    call nc, Call_051_66d5                        ; $74cc: $d4 $d5 $66
    ld l, d                                       ; $74cf: $6a
    or e                                          ; $74d0: $b3
    rst $38                                       ; $74d1: $ff
    ld [hl], h                                    ; $74d2: $74
    cp c                                          ; $74d3: $b9
    dec hl                                        ; $74d4: $2b
    nop                                           ; $74d5: $00
    ld e, e                                       ; $74d6: $5b
    ld h, l                                       ; $74d7: $65
    ld b, l                                       ; $74d8: $45
    xor h                                         ; $74d9: $ac
    add h                                         ; $74da: $84
    ld l, l                                       ; $74db: $6d
    ret nz                                        ; $74dc: $c0

    or $c4                                        ; $74dd: $f6 $c4
    db $d3                                        ; $74df: $d3
    add h                                         ; $74e0: $84
    ld a, a                                       ; $74e1: $7f
    ld e, e                                       ; $74e2: $5b
    sbc a                                         ; $74e3: $9f
    add h                                         ; $74e4: $84
    ld l, l                                       ; $74e5: $6d
    nop                                           ; $74e6: $00
    ld [hl], c                                    ; $74e7: $71
    ld [hl], d                                    ; $74e8: $72
    sub h                                         ; $74e9: $94
    dec bc                                        ; $74ea: $0b
    or $b5                                        ; $74eb: $f6 $b5
    dec sp                                        ; $74ed: $3b
    sbc h                                         ; $74ee: $9c
    add h                                         ; $74ef: $84
    adc l                                         ; $74f0: $8d
    call $ffff                                    ; $74f1: $cd $ff $ff
    rst $38                                       ; $74f4: $ff
    rst $38                                       ; $74f5: $ff
    rst $38                                       ; $74f6: $ff
    nop                                           ; $74f7: $00
    reti                                          ; $74f8: $d9


    adc b                                         ; $74f9: $88
    pop de                                        ; $74fa: $d1
    rst $18                                       ; $74fb: $df
    pop de                                        ; $74fc: $d1
    rst $18                                       ; $74fd: $df
    db $e4                                        ; $74fe: $e4
    ret c                                         ; $74ff: $d8

    ld [hl], d                                    ; $7500: $72
    ld h, a                                       ; $7501: $67
    cp c                                          ; $7502: $b9
    jp c, $9004                                   ; $7503: $da $04 $90

    ld a, [hl-]                                   ; $7506: $3a
    ld h, $00                                     ; $7507: $26 $00
    inc sp                                        ; $7509: $33
    add a                                         ; $750a: $87
    ret nz                                        ; $750b: $c0

    rst $38                                       ; $750c: $ff
    xor e                                         ; $750d: $ab
    push bc                                       ; $750e: $c5
    ld [c], a                                     ; $750f: $e2
    ld l, b                                       ; $7510: $68
    rst $38                                       ; $7511: $ff
    ld c, c                                       ; $7512: $49
    rst $38                                       ; $7513: $ff
    rst $38                                       ; $7514: $ff
    cp b                                          ; $7515: $b8
    ld c, b                                       ; $7516: $48
    xor $65                                       ; $7517: $ee $65
    nop                                           ; $7519: $00
    sub $94                                       ; $751a: $d6 $94
    rst $28                                       ; $751c: $ef
    rst $10                                       ; $751d: $d7
    dec c                                         ; $751e: $0d
    ld l, c                                       ; $751f: $69
    ld b, [hl]                                    ; $7520: $46
    sub e                                         ; $7521: $93
    ld a, [hl]                                    ; $7522: $7e
    rst $38                                       ; $7523: $ff
    add b                                         ; $7524: $80
    ld b, l                                       ; $7525: $45
    rst $38                                       ; $7526: $ff
    ld c, h                                       ; $7527: $4c
    rst $38                                       ; $7528: $ff
    rst $38                                       ; $7529: $ff
    nop                                           ; $752a: $00
    reti                                          ; $752b: $d9


    ld bc, $4440                                  ; $752c: $01 $40 $44
    ld a, e                                       ; $752f: $7b
    add a                                         ; $7530: $87
    add b                                         ; $7531: $80
    rst $38                                       ; $7532: $ff
    ld b, b                                       ; $7533: $40
    pop af                                        ; $7534: $f1
    ld l, l                                       ; $7535: $6d
    and l                                         ; $7536: $a5
    db $dd                                        ; $7537: $dd
    cp a                                          ; $7538: $bf
    ld b, c                                       ; $7539: $41
    ld d, e                                       ; $753a: $53
    nop                                           ; $753b: $00
    and d                                         ; $753c: $a2
    xor c                                         ; $753d: $a9
    ret nz                                        ; $753e: $c0

    rst $38                                       ; $753f: $ff
    ld e, c                                       ; $7540: $59
    ld l, l                                       ; $7541: $6d
    ld h, d                                       ; $7542: $62
    cp a                                          ; $7543: $bf
    rst $38                                       ; $7544: $ff
    rst $38                                       ; $7545: $ff
    call $ffbf                                    ; $7546: $cd $bf $ff
    rst $38                                       ; $7549: $ff
    rst $38                                       ; $754a: $ff
    rst $38                                       ; $754b: $ff
    nop                                           ; $754c: $00
    sub [hl]                                      ; $754d: $96
    rst $38                                       ; $754e: $ff
    reti                                          ; $754f: $d9


    or [hl]                                       ; $7550: $b6
    rst $38                                       ; $7551: $ff
    rst $38                                       ; $7552: $ff
    rst $38                                       ; $7553: $ff
    rst $38                                       ; $7554: $ff
    rst $38                                       ; $7555: $ff
    rst $38                                       ; $7556: $ff
    rst $38                                       ; $7557: $ff
    rst $38                                       ; $7558: $ff
    nop                                           ; $7559: $00
    ld l, e                                       ; $755a: $6b
    call c, Call_000_00ff                         ; $755b: $dc $ff $00
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
    nop                                           ; $756e: $00
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
    nop                                           ; $757f: $00
    rst $38                                       ; $7580: $ff
    rst $38                                       ; $7581: $ff
    nop                                           ; $7582: $00
    cp a                                          ; $7583: $bf
    rst $38                                       ; $7584: $ff
    rst $38                                       ; $7585: $ff
    rst $38                                       ; $7586: $ff
    rst $38                                       ; $7587: $ff
    rst $38                                       ; $7588: $ff
    rst $38                                       ; $7589: $ff
    rst $38                                       ; $758a: $ff
    rst $38                                       ; $758b: $ff
    push de                                       ; $758c: $d5
    inc sp                                        ; $758d: $33
    nop                                           ; $758e: $00
    nop                                           ; $758f: $00
    nop                                           ; $7590: $00
    rst $28                                       ; $7591: $ef
    ld e, e                                       ; $7592: $5b
    ld e, e                                       ; $7593: $5b
    ld e, e                                       ; $7594: $5b
    ld e, d                                       ; $7595: $5a
    db $fc                                        ; $7596: $fc
    ldh [$5b], a                                  ; $7597: $e0 $5b
    ld e, h                                       ; $7599: $5c
    ld e, l                                       ; $759a: $5d
    rst $38                                       ; $759b: $ff
    ld h, d                                       ; $759c: $62
    ld h, d                                       ; $759d: $62
    ld e, l                                       ; $759e: $5d
    ld e, h                                       ; $759f: $5c
    ld e, e                                       ; $75a0: $5b
    ld e, e                                       ; $75a1: $5b
    adc h                                         ; $75a2: $8c
    ld c, [hl]                                    ; $75a3: $4e
    add a                                         ; $75a4: $87
    ld c, [hl]                                    ; $75a5: $4e
    ld c, [hl]                                    ; $75a6: $4e
    nop                                           ; $75a7: $00
    rst $38                                       ; $75a8: $ff
    rst $38                                       ; $75a9: $ff
    rst $20                                       ; $75aa: $e7
    and $c3                                       ; $75ab: $e6 $c3
    ld [c], a                                     ; $75ad: $e2
    jp nz, Jump_000_31e0                          ; $75ae: $c2 $e0 $31

    and b                                         ; $75b1: $a0
    rst $38                                       ; $75b2: $ff
    ld [c], a                                     ; $75b3: $e2
    cp [hl]                                       ; $75b4: $be
    ldh [$bf], a                                  ; $75b5: $e0 $bf
    ldh [$ca], a                                  ; $75b7: $e0 $ca
    rst $38                                       ; $75b9: $ff
    add sp, -$19                                  ; $75ba: $e8 $e7
    ld h, d                                       ; $75bc: $62
    rst $38                                       ; $75bd: $ff
    ld [c], a                                     ; $75be: $e2
    ld sp, $31ff                                  ; $75bf: $31 $ff $31
    ld b, a                                       ; $75c2: $47
    ld b, [hl]                                    ; $75c3: $46
    ld d, h                                       ; $75c4: $54
    ld d, h                                       ; $75c5: $54
    ld b, [hl]                                    ; $75c6: $46

jr_051_75c7:
    ld b, a                                       ; $75c7: $47
    ld sp, $31c3                                  ; $75c8: $31 $c3 $31
    ld h, b                                       ; $75cb: $60
    ld a, [hl]                                    ; $75cc: $7e
    ldh [$ca], a                                  ; $75cd: $e0 $ca
    rst $38                                       ; $75cf: $ff
    add sp, -$19                                  ; $75d0: $e8 $e7
    adc b                                         ; $75d2: $88
    db $e3                                        ; $75d3: $e3
    ld c, l                                       ; $75d4: $4d
    ld b, [hl]                                    ; $75d5: $46
    cp a                                          ; $75d6: $bf
    ld [hl], $6a                                  ; $75d7: $36 $6a
    ld l, l                                       ; $75d9: $6d
    ld l, h                                       ; $75da: $6c
    ld l, h                                       ; $75db: $6c
    ld [hl], $be                                  ; $75dc: $36 $be
    ldh [$5d], a                                  ; $75de: $e0 $5d
    db $d3                                        ; $75e0: $d3
    ld e, h                                       ; $75e1: $5c

jr_051_75e2:
    adc h                                         ; $75e2: $8c
    jp z, $e8ff                                   ; $75e3: $ca $ff $e8

    rst $20                                       ; $75e6: $e7
    and h                                         ; $75e7: $a4
    rst $38                                       ; $75e8: $ff
    pop hl                                        ; $75e9: $e1
    or b                                          ; $75ea: $b0
    ld [hl-], a                                   ; $75eb: $32
    rst $30                                       ; $75ec: $f7
    ld l, d                                       ; $75ed: $6a
    ld l, d                                       ; $75ee: $6a
    ld l, l                                       ; $75ef: $6d
    ret nz                                        ; $75f0: $c0

    ldh [$6d], a                                  ; $75f1: $e0 $6d
    ld l, l                                       ; $75f3: $6d
    ld [hl], $46                                  ; $75f4: $36 $46
    and a                                         ; $75f6: $a7
    ld c, l                                       ; $75f7: $4d
    ld sp, $ca60                                  ; $75f8: $31 $60 $ca
    rst $38                                       ; $75fb: $ff
    add sp, -$19                                  ; $75fc: $e8 $e7
    add b                                         ; $75fe: $80
    rst $38                                       ; $75ff: $ff
    ldh [$78], a                                  ; $7600: $e0 $78
    di                                            ; $7602: $f3
    ld [hl], c                                    ; $7603: $71
    jr nc, jr_051_75c7                            ; $7604: $30 $c1

    ldh [$c0], a                                  ; $7606: $e0 $c0
    ld [c], a                                     ; $7608: $e2
    ld l, d                                       ; $7609: $6a
    jr nc, jr_051_763e                            ; $760a: $30 $32

    ld c, l                                       ; $760c: $4d
    ld sp, hl                                     ; $760d: $f9
    ld sp, $ffca                                  ; $760e: $31 $ca $ff
    ret nz                                        ; $7611: $c0

    db $eb                                        ; $7612: $eb
    add e                                         ; $7613: $83
    jr nc, jr_051_767f                            ; $7614: $30 $69

    ld l, c                                       ; $7616: $69
    ld l, e                                       ; $7617: $6b
    rst $38                                       ; $7618: $ff
    ld l, e                                       ; $7619: $6b
    ld l, e                                       ; $761a: $6b
    jr nc, jr_051_764d                            ; $761b: $30 $30

    ld l, e                                       ; $761d: $6b
    ld l, e                                       ; $761e: $6b
    ld l, c                                       ; $761f: $69
    jr nc, jr_051_768a                            ; $7620: $30 $68

    cp a                                          ; $7622: $bf
    ldh [$ca], a                                  ; $7623: $e0 $ca
    rst $38                                       ; $7625: $ff
    add b                                         ; $7626: $80
    db $eb                                        ; $7627: $eb
    ld d, d                                       ; $7628: $52
    ret nz                                        ; $7629: $c0

    ld [$3930], a                                 ; $762a: $ea $30 $39
    jp z, $f6ff                                   ; $762d: $ca $ff $f6

    ld b, b                                       ; $7630: $40
    db $eb                                        ; $7631: $eb
    ld d, e                                       ; $7632: $53
    jr nc, @+$42                                  ; $7633: $30 $40

    ld [c], a                                     ; $7635: $e2
    ld l, l                                       ; $7636: $6d
    jr nc, jr_051_7669                            ; $7637: $30 $30

    ld l, l                                       ; $7639: $6d
    sbc a                                         ; $763a: $9f
    ld l, l                                       ; $763b: $6d
    ld l, b                                       ; $763c: $68
    ld l, b                                       ; $763d: $68

jr_051_763e:
    ld l, b                                       ; $763e: $68
    ld d, e                                       ; $763f: $53
    jp z, $80ff                                   ; $7640: $ca $ff $80

    db $ed                                        ; $7643: $ed
    jr nc, jr_051_75e2                            ; $7644: $30 $9c

    ret nz                                        ; $7646: $c0

    pop bc                                        ; $7647: $c1
    cp a                                          ; $7648: $bf
    ld [c], a                                     ; $7649: $e2
    ld l, h                                       ; $764a: $6c
    ld l, h                                       ; $764b: $6c
    ld l, h                                       ; $764c: $6c

jr_051_764d:
    add b                                         ; $764d: $80
    rst $38                                       ; $764e: $ff
    ret nz                                        ; $764f: $c0

    jp z, $efaa                                   ; $7650: $ca $aa $ef

    ld e, b                                       ; $7653: $58
    or b                                          ; $7654: $b0
    dec sp                                        ; $7655: $3b
    ld [hl], $bf                                  ; $7656: $36 $bf
    and $6c                                       ; $7658: $e6 $6c
    ld [hl], $3b                                  ; $765a: $36 $3b
    ld sp, hl                                     ; $765c: $f9
    ld b, e                                       ; $765d: $43
    jp z, $e8ff                                   ; $765e: $ca $ff $e8

    rst $20                                       ; $7661: $e7
    and l                                         ; $7662: $a5
    ld e, b                                       ; $7663: $58
    xor e                                         ; $7664: $ab
    ld e, l                                       ; $7665: $5d
    ld h, h                                       ; $7666: $64
    cp a                                          ; $7667: $bf
    ld e, l                                       ; $7668: $5d

jr_051_7669:
    ld b, a                                       ; $7669: $47
    ld d, [hl]                                    ; $766a: $56
    ld d, [hl]                                    ; $766b: $56
    ld d, a                                       ; $766c: $57
    ld d, [hl]                                    ; $766d: $56
    rst $38                                       ; $766e: $ff
    db $e3                                        ; $766f: $e3
    ld b, a                                       ; $7670: $47
    di                                            ; $7671: $f3
    ld e, l                                       ; $7672: $5d
    ld e, h                                       ; $7673: $5c
    jp z, $e8ff                                   ; $7674: $ca $ff $e8

    rst $20                                       ; $7677: $e7
    adc c                                         ; $7678: $89
    add hl, bc                                    ; $7679: $09

jr_051_767a:
    add hl, bc                                    ; $767a: $09
    add hl, bc                                    ; $767b: $09
    jr jr_051_767a                                ; $767c: $18 $fc

    ld [c], a                                     ; $767e: $e2

jr_051_767f:
    rst $30                                       ; $767f: $f7
    pop hl                                        ; $7680: $e1
    or $e2                                        ; $7681: $f6 $e2
    add hl, bc                                    ; $7683: $09
    add hl, bc                                    ; $7684: $09
    jp z, $c0ff                                   ; $7685: $ca $ff $c0

    add sp, -$01                                  ; $7688: $e8 $ff

jr_051_768a:
    ldh a, [rP1]                                  ; $768a: $f0 $00
    jp z, $c0ff                                   ; $768c: $ca $ff $c0

    rst $38                                       ; $768f: $ff
    rst $38                                       ; $7690: $ff
    rst $38                                       ; $7691: $ff
    ret nz                                        ; $7692: $c0

    rst $38                                       ; $7693: $ff
    rst $38                                       ; $7694: $ff
    rst $38                                       ; $7695: $ff
    rst $38                                       ; $7696: $ff
    rst $38                                       ; $7697: $ff
    rst $38                                       ; $7698: $ff
    rst $38                                       ; $7699: $ff
    rst $38                                       ; $769a: $ff
    rst $38                                       ; $769b: $ff
    nop                                           ; $769c: $00
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
    nop                                           ; $76ad: $00
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
    nop                                           ; $76be: $00
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
    nop                                           ; $76cf: $00
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
    nop                                           ; $76e0: $00
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
    nop                                           ; $76f1: $00
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
    nop                                           ; $7702: $00
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
    nop                                           ; $7713: $00
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
    nop                                           ; $7724: $00
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
    rst $38                                       ; $774d: $ff
    rst $38                                       ; $774e: $ff
    rst $38                                       ; $774f: $ff
    rst $38                                       ; $7750: $ff
    rst $38                                       ; $7751: $ff
    rst $38                                       ; $7752: $ff
    rst $38                                       ; $7753: $ff
    rst $38                                       ; $7754: $ff
    rst $38                                       ; $7755: $ff
    db $eb                                        ; $7756: $eb
    nop                                           ; $7757: $00
    nop                                           ; $7758: $00
    nop                                           ; $7759: $00
    and l                                         ; $775a: $a5
    nop                                           ; $775b: $00
    rst $38                                       ; $775c: $ff
    push hl                                       ; $775d: $e5
    ld [hl-], a                                   ; $775e: $32
    or $e6                                        ; $775f: $f6 $e6
    rst $30                                       ; $7761: $f7
    rst $20                                       ; $7762: $e7
    dec [hl]                                      ; $7763: $35
    db $ec                                        ; $7764: $ec
    xor $37                                       ; $7765: $ee $37
    db $ec                                        ; $7767: $ec
    jp c, $c7f0                                   ; $7768: $da $f0 $c7

    add sp, $33                                   ; $776b: $e8 $33
    ld sp, $f2e0                                  ; $776d: $31 $e0 $f2
    ld [hl], $30                                  ; $7770: $36 $30
    scf                                           ; $7772: $37
    cp a                                          ; $7773: $bf
    ld h, $20                                     ; $7774: $26 $20
    daa                                           ; $7776: $27
    db $10                                        ; $7777: $10
    ld d, $17                                     ; $7778: $16 $17
    jp nz, Jump_000_34f6                          ; $777a: $c2 $f6 $34

    rst $38                                       ; $777d: $ff
    ld [hl], $32                                  ; $777e: $36 $32
    jr nc, jr_051_77b9                            ; $7780: $30 $37

    ld sp, $3133                                  ; $7782: $31 $33 $31
    inc sp                                        ; $7785: $33
    nop                                           ; $7786: $00
    and b                                         ; $7787: $a0
    ei                                            ; $7788: $fb
    rst $38                                       ; $7789: $ff
    rst $28                                       ; $778a: $ef
    nop                                           ; $778b: $00
    nop                                           ; $778c: $00
    nop                                           ; $778d: $00
    sub [hl]                                      ; $778e: $96
    ld [hl], a                                    ; $778f: $77
    add $77                                       ; $7790: $c6 $77
    ld c, [hl]                                    ; $7792: $4e
    ld a, d                                       ; $7793: $7a
    inc l                                         ; $7794: $2c
    ld a, h                                       ; $7795: $7c
    db $ec                                        ; $7796: $ec
    dec hl                                        ; $7797: $2b
    ld [hl+], a                                   ; $7798: $22
    dec sp                                        ; $7799: $3b
    ld b, b                                       ; $779a: $40
    ld [hl+], a                                   ; $779b: $22
    nop                                           ; $779c: $00
    add hl, bc                                    ; $779d: $09
    and l                                         ; $779e: $a5
    ld b, e                                       ; $779f: $43
    xor $37                                       ; $77a0: $ee $37
    ld [hl+], a                                   ; $77a2: $22
    dec sp                                        ; $77a3: $3b
    ld b, b                                       ; $77a4: $40
    ld [hl+], a                                   ; $77a5: $22
    ccf                                           ; $77a6: $3f
    ld a, a                                       ; $77a7: $7f
    rla                                           ; $77a8: $17
    ld e, [hl]                                    ; $77a9: $5e
    ld de, $2249                                  ; $77aa: $11 $49 $22
    dec sp                                        ; $77ad: $3b
    ld [$0825], sp                                ; $77ae: $08 $25 $08
    dec h                                         ; $77b1: $25
    ld [$0825], sp                                ; $77b2: $08 $25 $08
    dec h                                         ; $77b5: $25
    ld [$0825], sp                                ; $77b6: $08 $25 $08

jr_051_77b9:
    dec h                                         ; $77b9: $25
    ld [$0825], sp                                ; $77ba: $08 $25 $08
    dec h                                         ; $77bd: $25
    ld [$0825], sp                                ; $77be: $08 $25 $08
    dec h                                         ; $77c1: $25
    ld [$0825], sp                                ; $77c2: $08 $25 $08
    dec h                                         ; $77c5: $25
    ei                                            ; $77c6: $fb
    ld a, [bc]                                    ; $77c7: $0a
    dec bc                                        ; $77c8: $0b
    rst $38                                       ; $77c9: $ff
    ldh [$2b], a                                  ; $77ca: $e0 $2b
    dec bc                                        ; $77cc: $0b
    inc c                                         ; $77cd: $0c
    ld c, h                                       ; $77ce: $4c
    inc c                                         ; $77cf: $0c
    dec c                                         ; $77d0: $0d
    inc c                                         ; $77d1: $0c
    or $e1                                        ; $77d2: $f6 $e1
    dec bc                                        ; $77d4: $0b
    ld c, h                                       ; $77d5: $4c
    rst $38                                       ; $77d6: $ff
    ldh [$f3], a                                  ; $77d7: $e0 $f3
    ldh [$fb], a                                  ; $77d9: $e0 $fb
    pop hl                                        ; $77db: $e1
    ld a, [$3ae1]                                 ; $77dc: $fa $e1 $3a
    di                                            ; $77df: $f3
    ldh [$0c], a                                  ; $77e0: $e0 $0c
    di                                            ; $77e2: $f3
    pop hl                                        ; $77e3: $e1
    inc l                                         ; $77e4: $2c
    inc l                                         ; $77e5: $2c
    inc c                                         ; $77e6: $0c
    db $fc                                        ; $77e7: $fc
    ld [c], a                                     ; $77e8: $e2
    cp $ee                                        ; $77e9: $fe $ee
    jr @-$33                                      ; $77eb: $18 $cb

    ld [c], a                                     ; $77ed: $e2
    ret                                           ; $77ee: $c9


    ld [c], a                                     ; $77ef: $e2
    ret nz                                        ; $77f0: $c0

    db $e3                                        ; $77f1: $e3
    ld c, e                                       ; $77f2: $4b
    ld c, e                                       ; $77f3: $4b
    ret nz                                        ; $77f4: $c0

    rst $20                                       ; $77f5: $e7
    or a                                          ; $77f6: $b7
    pop hl                                        ; $77f7: $e1
    jp nz, $c3e2                                  ; $77f8: $c2 $e2 $c3

    ld c, h                                       ; $77fb: $4c
    inc l                                         ; $77fc: $2c
    ret nz                                        ; $77fd: $c0

    ldh [$fc], a                                  ; $77fe: $e0 $fc
    pop hl                                        ; $7800: $e1
    ret nz                                        ; $7801: $c0

    or $b9                                        ; $7802: $f6 $b9
    db $e4                                        ; $7804: $e4
    ld l, e                                       ; $7805: $6b
    ld l, e                                       ; $7806: $6b
    rrca                                          ; $7807: $0f
    ld c, e                                       ; $7808: $4b
    ld c, e                                       ; $7809: $4b
    dec bc                                        ; $780a: $0b
    dec bc                                        ; $780b: $0b
    call z, Call_051_6ee3                         ; $780c: $cc $e3 $6e
    ldh [$fc], a                                  ; $780f: $e0 $fc
    ld [c], a                                     ; $7811: $e2
    add b                                         ; $7812: $80
    pop hl                                        ; $7813: $e1
    ld e, h                                       ; $7814: $5c
    add c                                         ; $7815: $81
    or $c0                                        ; $7816: $f6 $c0
    ld [$6b6b], a                                 ; $7818: $ea $6b $6b
    ld l, e                                       ; $781b: $6b
    ld a, a                                       ; $781c: $7f
    pop hl                                        ; $781d: $e1
    ld c, e                                       ; $781e: $4b
    add d                                         ; $781f: $82
    push hl                                       ; $7820: $e5
    nop                                           ; $7821: $00
    ld b, b                                       ; $7822: $40
    add sp, -$01                                  ; $7823: $e8 $ff
    or $8b                                        ; $7825: $f6 $8b
    db $e4                                        ; $7827: $e4
    cp $e2                                        ; $7828: $fe $e2
    jp nz, Jump_000_3ee0                          ; $782a: $c2 $e0 $3e

    ld [c], a                                     ; $782d: $e2
    add hl, de                                    ; $782e: $19
    db $e3                                        ; $782f: $e3

jr_051_7830:
    set 4, [hl]                                   ; $7830: $cb $e6
    jr nz, jr_051_786c                            ; $7832: $20 $38

    push hl                                       ; $7834: $e5
    ld [bc], a                                    ; $7835: $02
    push hl                                       ; $7836: $e5
    ld sp, hl                                     ; $7837: $f9
    call nz, $c3f2                                ; $7838: $c4 $f2 $c3
    ld c, h                                       ; $783b: $4c
    pop hl                                        ; $783c: $e1
    dec hl                                        ; $783d: $2b
    adc d                                         ; $783e: $8a
    ld [c], a                                     ; $783f: $e2
    ld b, [hl]                                    ; $7840: $46
    pop hl                                        ; $7841: $e1
    ld [bc], a                                    ; $7842: $02
    cp l                                          ; $7843: $bd
    jp nz, $c12b                                  ; $7844: $c2 $2b $c1

    and $88                                       ; $7847: $e6 $88
    ld [c], a                                     ; $7849: $e2
    jr c, jr_051_7830                             ; $784a: $38 $e4

    or b                                          ; $784c: $b0
    rst $20                                       ; $784d: $e7
    ret nz                                        ; $784e: $c0

    set 0, c                                      ; $784f: $cb $c1
    pop hl                                        ; $7851: $e1
    ld bc, $802b                                  ; $7852: $01 $2b $80
    jp hl                                         ; $7855: $e9


    ret nz                                        ; $7856: $c0

    ldh [$c0], a                                  ; $7857: $e0 $c0
    rst $00                                       ; $7859: $c7
    ccf                                           ; $785a: $3f
    add sp, $3b                                   ; $785b: $e8 $3b
    di                                            ; $785d: $f3
    add d                                         ; $785e: $82
    rst $20                                       ; $785f: $e7
    ld [bc], a                                    ; $7860: $02
    ldh [rP1], a                                  ; $7861: $e0 $00
    cp a                                          ; $7863: $bf
    db $e4                                        ; $7864: $e4
    ret nz                                        ; $7865: $c0

    call nz, $c838                                ; $7866: $c4 $38 $c8
    nop                                           ; $7869: $00
    rst $30                                       ; $786a: $f7
    ld b, e                                       ; $786b: $43

jr_051_786c:
    pop hl                                        ; $786c: $e1
    ld b, d                                       ; $786d: $42
    ld [c], a                                     ; $786e: $e2
    jp nz, Jump_000_36c1                          ; $786f: $c2 $c1 $36

    ldh [rP1], a                                  ; $7872: $e0 $00
    cp l                                          ; $7874: $bd
    pop bc                                        ; $7875: $c1
    rst $00                                       ; $7876: $c7
    jp $e2fc                                      ; $7877: $c3 $fc $e2


    ld [hl], l                                    ; $787a: $75
    add $f4                                       ; $787b: $c6 $f4
    rst $00                                       ; $787d: $c7
    ld sp, hl                                     ; $787e: $f9
    xor e                                         ; $787f: $ab
    call nz, $0aa0                                ; $7880: $c4 $a0 $0a
    jp nz, Jump_051_4316                          ; $7883: $c2 $16 $43

    jp nz, Jump_000_2b2b                          ; $7886: $c2 $2b $2b

    cp h                                          ; $7889: $bc
    pop bc                                        ; $788a: $c1
    ld l, e                                       ; $788b: $6b
    adc $cc                                       ; $788c: $ce $cc
    ret nz                                        ; $788e: $c0

    ret z                                         ; $788f: $c8

    push af                                       ; $7890: $f5
    and h                                         ; $7891: $a4
    nop                                           ; $7892: $00
    ret nz                                        ; $7893: $c0

    xor $c8                                       ; $7894: $ee $c8
    jp $e0ff                                      ; $7896: $c3 $ff $e0


    ld b, b                                       ; $7899: $40
    db $e4                                        ; $789a: $e4
    ld b, $c5                                     ; $789b: $06 $c5
    ld [bc], a                                    ; $789d: $02
    jp nz, $c9c0                                  ; $789e: $c2 $c0 $c9

    push af                                       ; $78a1: $f5
    and e                                         ; $78a2: $a3
    ld b, $7c                                     ; $78a3: $06 $7c
    add $0c                                       ; $78a5: $c6 $0c
    inc c                                         ; $78a7: $0c
    call $c0e4                                    ; $78a8: $cd $e4 $c0
    rst $28                                       ; $78ab: $ef
    ret nz                                        ; $78ac: $c0

    and l                                         ; $78ad: $a5
    ld b, b                                       ; $78ae: $40
    set 6, l                                      ; $78af: $cb $f5
    xor [hl]                                      ; $78b1: $ae
    inc e                                         ; $78b2: $1c
    ret nz                                        ; $78b3: $c0

    jp hl                                         ; $78b4: $e9


    ld b, d                                       ; $78b5: $42
    and b                                         ; $78b6: $a0
    dec hl                                        ; $78b7: $2b
    dec bc                                        ; $78b8: $0b
    ld l, h                                       ; $78b9: $6c
    ld c, l                                       ; $78ba: $4d
    and h                                         ; $78bb: $a4
    add c                                         ; $78bc: $81
    call nz, $a678                                ; $78bd: $c4 $78 $a6
    nop                                           ; $78c0: $00
    inc [hl]                                      ; $78c1: $34
    and [hl]                                      ; $78c2: $a6
    nop                                           ; $78c3: $00
    xor h                                         ; $78c4: $ac
    ld c, h                                       ; $78c5: $4c
    db $e4                                        ; $78c6: $e4
    nop                                           ; $78c7: $00
    jp $a0f6                                      ; $78c8: $c3 $f6 $a0


    ld c, $c5                                     ; $78cb: $0e $c5
    ld b, c                                       ; $78cd: $41
    and l                                         ; $78ce: $a5
    ld b, b                                       ; $78cf: $40
    call z, Call_051_7400                         ; $78d0: $cc $00 $74
    and e                                         ; $78d3: $a3
    ldh a, [$80]                                  ; $78d4: $f0 $80
    or e                                          ; $78d6: $b3
    add h                                         ; $78d7: $84
    call $fc81                                    ; $78d8: $cd $81 $fc
    add a                                         ; $78db: $87
    add c                                         ; $78dc: $81
    db $e3                                        ; $78dd: $e3
    adc b                                         ; $78de: $88
    and l                                         ; $78df: $a5
    add [hl]                                      ; $78e0: $86
    and e                                         ; $78e1: $a3
    inc b                                         ; $78e2: $04
    push af                                       ; $78e3: $f5
    or b                                          ; $78e4: $b0
    ret nz                                        ; $78e5: $c0

    ld [$c02b], a                                 ; $78e6: $ea $2b $c0
    ld [$895d], a                                 ; $78e9: $ea $5d $89
    halt                                          ; $78ec: $76
    adc e                                         ; $78ed: $8b
    push af                                       ; $78ee: $f5
    xor b                                         ; $78ef: $a8
    add c                                         ; $78f0: $81
    rst $20                                       ; $78f1: $e7
    nop                                           ; $78f2: $00
    dec d                                         ; $78f3: $15
    rst $20                                       ; $78f4: $e7
    ld c, h                                       ; $78f5: $4c
    db $e3                                        ; $78f6: $e3
    add hl, bc                                    ; $78f7: $09
    push hl                                       ; $78f8: $e5
    ld bc, $f587                                  ; $78f9: $01 $87 $f5
    or c                                          ; $78fc: $b1
    ret nz                                        ; $78fd: $c0

    jp hl                                         ; $78fe: $e9


    push de                                       ; $78ff: $d5
    ld l, b                                       ; $7900: $68
    ret nz                                        ; $7901: $c0

    db $ec                                        ; $7902: $ec
    nop                                           ; $7903: $00
    cp a                                          ; $7904: $bf
    and h                                         ; $7905: $a4
    call z, Call_051_74a9                         ; $7906: $cc $a9 $74
    xor a                                         ; $7909: $af
    push de                                       ; $790a: $d5
    ld l, c                                       ; $790b: $69
    rrca                                          ; $790c: $0f
    add sp, -$73                                  ; $790d: $e8 $8d
    set 0, l                                      ; $790f: $cb $c5
    ld h, d                                       ; $7911: $62
    push af                                       ; $7912: $f5
    xor b                                         ; $7913: $a8
    nop                                           ; $7914: $00
    or e                                          ; $7915: $b3
    ld h, c                                       ; $7916: $61
    ld a, c                                       ; $7917: $79
    add l                                         ; $7918: $85
    ld e, l                                       ; $7919: $5d
    jp z, $840b                                   ; $791a: $ca $0b $84

    add b                                         ; $791d: $80
    ret                                           ; $791e: $c9


    pop bc                                        ; $791f: $c1
    ld h, l                                       ; $7920: $65
    push af                                       ; $7921: $f5
    xor c                                         ; $7922: $a9
    ret nz                                        ; $7923: $c0

    add sp, $00                                   ; $7924: $e8 $00
    push de                                       ; $7926: $d5
    ld l, c                                       ; $7927: $69
    db $d3                                        ; $7928: $d3
    add l                                         ; $7929: $85
    ld a, $68                                     ; $792a: $3e $68
    pop bc                                        ; $792c: $c1
    ld h, a                                       ; $792d: $67
    push af                                       ; $792e: $f5
    xor c                                         ; $792f: $a9
    ccf                                           ; $7930: $3f
    jp nz, $ea3b                                  ; $7931: $c2 $3b $ea

    or h                                          ; $7934: $b4
    ret                                           ; $7935: $c9


    nop                                           ; $7936: $00
    or $c6                                        ; $7937: $f6 $c6
    inc c                                         ; $7939: $0c
    db $ec                                        ; $793a: $ec
    ld [hl], h                                    ; $793b: $74
    ld l, c                                       ; $793c: $69
    di                                            ; $793d: $f3
    ld c, d                                       ; $793e: $4a
    ld [c], a                                     ; $793f: $e2
    adc b                                         ; $7940: $88
    adc $65                                       ; $7941: $ce $65
    rst $38                                       ; $7943: $ff
    add [hl]                                      ; $7944: $86
    pop bc                                        ; $7945: $c1
    ld l, d                                       ; $7946: $6a
    nop                                           ; $7947: $00
    pop hl                                        ; $7948: $e1
    rst $20                                       ; $7949: $e7
    ret nz                                        ; $794a: $c0

    ret nc                                        ; $794b: $d0

    adc h                                         ; $794c: $8c
    rst $20                                       ; $794d: $e7
    add b                                         ; $794e: $80
    and l                                         ; $794f: $a5
    ccf                                           ; $7950: $3f
    rst $28                                       ; $7951: $ef
    db $fd                                        ; $7952: $fd
    add [hl]                                      ; $7953: $86
    rst $38                                       ; $7954: $ff
    xor l                                         ; $7955: $ad
    adc [hl]                                      ; $7956: $8e
    ret                                           ; $7957: $c9


    nop                                           ; $7958: $00
    ld c, c                                       ; $7959: $49
    ld h, a                                       ; $795a: $67
    pop bc                                        ; $795b: $c1
    ld l, c                                       ; $795c: $69
    ld hl, sp+$66                                 ; $795d: $f8 $66
    ret nz                                        ; $795f: $c0

    xor $16                                       ; $7960: $ee $16
    rst $00                                       ; $7962: $c7
    inc e                                         ; $7963: $1c
    ld l, b                                       ; $7964: $68
    ld [de], a                                    ; $7965: $12
    and [hl]                                      ; $7966: $a6
    add $20                                       ; $7967: $c6 $20
    nop                                           ; $7969: $00
    ld hl, sp+$6f                                 ; $796a: $f8 $6f
    ld e, h                                       ; $796c: $5c
    xor h                                         ; $796d: $ac
    ld h, d                                       ; $796e: $62
    ret z                                         ; $796f: $c8

    ret nz                                        ; $7970: $c0

    ret                                           ; $7971: $c9


    dec b                                         ; $7972: $05
    ret                                           ; $7973: $c9


    cp b                                          ; $7974: $b8
    ld d, a                                       ; $7975: $57
    push de                                       ; $7976: $d5
    ld [hl], b                                    ; $7977: $70
    dec b                                         ; $7978: $05
    call $8500                                    ; $7979: $cd $00 $85
    add [hl]                                      ; $797c: $86
    ret nz                                        ; $797d: $c0

    rst $08                                       ; $797e: $cf
    push de                                       ; $797f: $d5
    ld [hl], d                                    ; $7980: $72
    add $2d                                       ; $7981: $c6 $2d
    ld l, a                                       ; $7983: $6f
    add $b2                                       ; $7984: $c6 $b2
    cpl                                           ; $7986: $2f
    push de                                       ; $7987: $d5
    ld [hl], d                                    ; $7988: $72
    add $2d                                       ; $7989: $c6 $2d
    nop                                           ; $798b: $00
    ld b, b                                       ; $798c: $40
    ret c                                         ; $798d: $d8

    push de                                       ; $798e: $d5
    ld [hl], d                                    ; $798f: $72
    add $2d                                       ; $7990: $c6 $2d
    dec b                                         ; $7992: $05
    ld h, h                                       ; $7993: $64
    sbc [hl]                                      ; $7994: $9e
    ldh a, [$15]                                  ; $7995: $f0 $15
    ld d, e                                       ; $7997: $53
    add $2d                                       ; $7998: $c6 $2d
    ld [hl], e                                    ; $799a: $73
    ld l, a                                       ; $799b: $6f
    nop                                           ; $799c: $00
    inc [hl]                                      ; $799d: $34
    rlca                                          ; $799e: $07
    dec d                                         ; $799f: $15
    ld d, c                                       ; $79a0: $51
    or c                                          ; $79a1: $b1
    xor $36                                       ; $79a2: $ee $36
    dec bc                                        ; $79a4: $0b
    ret nz                                        ; $79a5: $c0

    ld l, l                                       ; $79a6: $6d
    dec d                                         ; $79a7: $15
    ld c, a                                       ; $79a8: $4f
    or c                                          ; $79a9: $b1
    db $ed                                        ; $79aa: $ed
    ld [hl], $0b                                  ; $79ab: $36 $0b
    nop                                           ; $79ad: $00
    ld [bc], a                                    ; $79ae: $02
    xor h                                         ; $79af: $ac
    ld b, b                                       ; $79b0: $40
    ret nc                                        ; $79b1: $d0

    add $2e                                       ; $79b2: $c6 $2e
    ld [bc], a                                    ; $79b4: $02
    ld [hl], h                                    ; $79b5: $74
    ld b, b                                       ; $79b6: $40
    call nc, Call_000_31c6                        ; $79b7: $d4 $c6 $31
    add c                                         ; $79ba: $81
    ld [hl], e                                    ; $79bb: $73
    ld b, b                                       ; $79bc: $40
    push de                                       ; $79bd: $d5
    nop                                           ; $79be: $00
    pop af                                        ; $79bf: $f1
    xor h                                         ; $79c0: $ac
    ld [hl], $0b                                  ; $79c1: $36 $0b
    add b                                         ; $79c3: $80
    xor $15                                       ; $79c4: $ee $15
    ld c, a                                       ; $79c6: $4f
    add $2b                                       ; $79c7: $c6 $2b
    ld [hl], b                                    ; $79c9: $70
    call z, $eb40                                 ; $79ca: $cc $40 $eb
    ld sp, $00ae                                  ; $79cd: $31 $ae $00
    add $2f                                       ; $79d0: $c6 $2f
    ld [hl], $1f                                  ; $79d2: $36 $1f
    or l                                          ; $79d4: $b5
    di                                            ; $79d5: $f3
    ld hl, $ffd4                                  ; $79d6: $21 $d4 $ff
    rst $38                                       ; $79d9: $ff
    sbc l                                         ; $79da: $9d
    ld b, $36                                     ; $79db: $06 $36
    ld [de], a                                    ; $79dd: $12
    rst $38                                       ; $79de: $ff
    rst $38                                       ; $79df: $ff
    nop                                           ; $79e0: $00
    rst $20                                       ; $79e1: $e7
    ld c, b                                       ; $79e2: $48
    ld h, c                                       ; $79e3: $61
    sub d                                         ; $79e4: $92
    rst $38                                       ; $79e5: $ff
    rst $38                                       ; $79e6: $ff
    ld e, e                                       ; $79e7: $5b
    ld b, c                                       ; $79e8: $41
    inc a                                         ; $79e9: $3c
    ld l, b                                       ; $79ea: $68
    ld [hl], b                                    ; $79eb: $70
    call $ffff                                    ; $79ec: $cd $ff $ff
    ld b, b                                       ; $79ef: $40
    rst $20                                       ; $79f0: $e7
    nop                                           ; $79f1: $00
    ld h, c                                       ; $79f2: $61
    sub [hl]                                      ; $79f3: $96
    rst $38                                       ; $79f4: $ff
    rst $38                                       ; $79f5: $ff
    ld [hl], $13                                  ; $79f6: $36 $13
    rst $38                                       ; $79f8: $ff
    rst $38                                       ; $79f9: $ff
    ld h, $a7                                     ; $79fa: $26 $a7
    add e                                         ; $79fc: $83
    adc h                                         ; $79fd: $8c
    rst $38                                       ; $79fe: $ff
    rst $38                                       ; $79ff: $ff
    ld [hl], e                                    ; $7a00: $73
    call nc, $cd00                                ; $7a01: $d4 $00 $cd
    cp c                                          ; $7a04: $b9
    rst $38                                       ; $7a05: $ff
    rst $38                                       ; $7a06: $ff
    rst $38                                       ; $7a07: $ff
    rst $38                                       ; $7a08: $ff
    sub [hl]                                      ; $7a09: $96
    rst $38                                       ; $7a0a: $ff
    reti                                          ; $7a0b: $d9


    cp c                                          ; $7a0c: $b9
    rst $38                                       ; $7a0d: $ff
    rst $38                                       ; $7a0e: $ff
    rst $38                                       ; $7a0f: $ff
    rst $38                                       ; $7a10: $ff
    rst $38                                       ; $7a11: $ff
    rst $38                                       ; $7a12: $ff
    nop                                           ; $7a13: $00
    rst $38                                       ; $7a14: $ff
    rst $38                                       ; $7a15: $ff
    scf                                           ; $7a16: $37
    db $eb                                        ; $7a17: $eb
    call c, $ffff                                 ; $7a18: $dc $ff $ff
    rst $38                                       ; $7a1b: $ff
    rst $38                                       ; $7a1c: $ff
    rst $38                                       ; $7a1d: $ff
    rst $38                                       ; $7a1e: $ff
    rst $38                                       ; $7a1f: $ff
    rst $38                                       ; $7a20: $ff
    rst $38                                       ; $7a21: $ff
    rst $38                                       ; $7a22: $ff
    rst $38                                       ; $7a23: $ff
    nop                                           ; $7a24: $00
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
    nop                                           ; $7a35: $00
    rst $38                                       ; $7a36: $ff
    rst $38                                       ; $7a37: $ff
    rst $38                                       ; $7a38: $ff
    rst $38                                       ; $7a39: $ff
    rst $38                                       ; $7a3a: $ff
    rst $38                                       ; $7a3b: $ff
    rst $38                                       ; $7a3c: $ff
    rst $38                                       ; $7a3d: $ff
    nop                                           ; $7a3e: $00
    cp a                                          ; $7a3f: $bf
    rst $38                                       ; $7a40: $ff
    rst $38                                       ; $7a41: $ff
    rst $38                                       ; $7a42: $ff
    rst $38                                       ; $7a43: $ff
    rst $38                                       ; $7a44: $ff
    rst $38                                       ; $7a45: $ff
    nop                                           ; $7a46: $00
    rst $38                                       ; $7a47: $ff
    rst $38                                       ; $7a48: $ff
    sub b                                         ; $7a49: $90
    inc sp                                        ; $7a4a: $33
    nop                                           ; $7a4b: $00
    nop                                           ; $7a4c: $00
    nop                                           ; $7a4d: $00
    ei                                            ; $7a4e: $fb
    ld e, d                                       ; $7a4f: $5a
    ld e, e                                       ; $7a50: $5b
    rst $38                                       ; $7a51: $ff
    ldh [$61], a                                  ; $7a52: $e0 $61

jr_051_7a54:
    ld sp, $102b                                  ; $7a54: $31 $2b $10
    jr nz, jr_051_7a54                            ; $7a57: $20 $fb

    nop                                           ; $7a59: $00
    ld sp, $e1ff                                  ; $7a5a: $31 $ff $e1
    ld de, $2112                                  ; $7a5d: $11 $12 $21
    ld [hl+], a                                   ; $7a60: $22
    nop                                           ; $7a61: $00
    ld hl, sp-$01                                 ; $7a62: $f8 $ff
    rst $38                                       ; $7a64: $ff
    rst $20                                       ; $7a65: $e7
    and $c1                                       ; $7a66: $e6 $c1
    ldh [$5c], a                                  ; $7a68: $e0 $5c
    ld e, l                                       ; $7a6a: $5d
    ld sp, $2931                                  ; $7a6b: $31 $31 $29
    add a                                         ; $7a6e: $87
    daa                                           ; $7a6f: $27
    dec b                                         ; $7a70: $05
    rrca                                          ; $7a71: $0f
    ret nz                                        ; $7a72: $c0

    ld [c], a                                     ; $7a73: $e2
    cp [hl]                                       ; $7a74: $be
    pop hl                                        ; $7a75: $e1
    jp z, $c0ff                                   ; $7a76: $ca $ff $c0

    jp hl                                         ; $7a79: $e9


    ld h, b                                       ; $7a7a: $60
    db $fc                                        ; $7a7b: $fc
    ret z                                         ; $7a7c: $c8

    db $e4                                        ; $7a7d: $e4
    add c                                         ; $7a7e: $81
    pop hl                                        ; $7a7f: $e1
    ld b, a                                       ; $7a80: $47
    ld b, [hl]                                    ; $7a81: $46
    ld b, [hl]                                    ; $7a82: $46
    ld b, a                                       ; $7a83: $47
    ld sp, $f031                                  ; $7a84: $31 $31 $f0
    jp z, $e8ff                                   ; $7a87: $ca $ff $e8

    rst $20                                       ; $7a8a: $e7
    add e                                         ; $7a8b: $83
    pop hl                                        ; $7a8c: $e1
    jp nz, Jump_000_36e7                          ; $7a8d: $c2 $e7 $36

    ld l, l                                       ; $7a90: $6d
    jr nc, jr_051_7ac9                            ; $7a91: $30 $36

    db $e3                                        ; $7a93: $e3
    ld b, [hl]                                    ; $7a94: $46
    ld c, l                                       ; $7a95: $4d
    jp z, $e8ff                                   ; $7a96: $ca $ff $e8

    rst $20                                       ; $7a99: $e7
    dec bc                                        ; $7a9a: $0b
    ldh [rKEY1], a                                ; $7a9b: $e0 $4d
    ld a, [hl-]                                   ; $7a9d: $3a
    ld d, h                                       ; $7a9e: $54
    rst $38                                       ; $7a9f: $ff
    ld d, l                                       ; $7aa0: $55
    ld d, h                                       ; $7aa1: $54
    ld d, l                                       ; $7aa2: $55
    ld d, l                                       ; $7aa3: $55
    ld d, l                                       ; $7aa4: $55
    ld d, h                                       ; $7aa5: $54
    ld [hl], $30                                  ; $7aa6: $36 $30
    ccf                                           ; $7aa8: $3f
    ld h, a                                       ; $7aa9: $67
    ld l, d                                       ; $7aaa: $6a
    ld l, l                                       ; $7aab: $6d
    jr nc, jr_051_7ade                            ; $7aac: $30 $30

    add hl, sp                                    ; $7aae: $39
    jp z, $c0ff                                   ; $7aaf: $ca $ff $c0

    jp hl                                         ; $7ab2: $e9


    ld l, e                                       ; $7ab3: $6b
    ld c, l                                       ; $7ab4: $4d
    ld [hl-], a                                   ; $7ab5: $32
    call z, $65e0                                 ; $7ab6: $cc $e0 $65
    rst $38                                       ; $7ab9: $ff
    pop hl                                        ; $7aba: $e1
    jr nc, @+$32                                  ; $7abb: $30 $30

    cp a                                          ; $7abd: $bf
    ld [c], a                                     ; $7abe: $e2
    or c                                          ; $7abf: $b1
    ld d, d                                       ; $7ac0: $52
    jp z, $80ff                                   ; $7ac1: $ca $ff $80

    add sp, -$3f                                  ; $7ac4: $e8 $c1
    ld [c], a                                     ; $7ac6: $e2
    ld h, a                                       ; $7ac7: $67
    ld l, b                                       ; $7ac8: $68

jr_051_7ac9:
    rst $38                                       ; $7ac9: $ff
    pop hl                                        ; $7aca: $e1
    ld h, a                                       ; $7acb: $67
    ld [c], a                                     ; $7acc: $e2
    cp a                                          ; $7acd: $bf
    db $e3                                        ; $7ace: $e3
    ld d, e                                       ; $7acf: $53
    jp z, $e8ff                                   ; $7ad0: $ca $ff $e8

    rst $20                                       ; $7ad3: $e7
    pop bc                                        ; $7ad4: $c1
    db $e3                                        ; $7ad5: $e3
    ld l, d                                       ; $7ad6: $6a
    ld l, d                                       ; $7ad7: $6a
    ld l, l                                       ; $7ad8: $6d
    adc a                                         ; $7ad9: $8f
    ld l, h                                       ; $7ada: $6c
    ld l, l                                       ; $7adb: $6d
    ld l, d                                       ; $7adc: $6a
    ld l, d                                       ; $7add: $6a

jr_051_7ade:
    cp a                                          ; $7ade: $bf
    db $e3                                        ; $7adf: $e3
    ld b, b                                       ; $7ae0: $40
    rst $38                                       ; $7ae1: $ff
    jp hl                                         ; $7ae2: $e9


    add sp, $39                                   ; $7ae3: $e8 $39
    ld e, a                                       ; $7ae5: $5f
    ld l, e                                       ; $7ae6: $6b
    jr nc, jr_051_7b19                            ; $7ae7: $30 $30

    ld h, [hl]                                    ; $7ae9: $66
    ld l, d                                       ; $7aea: $6a
    ret nz                                        ; $7aeb: $c0

    ldh [$30], a                                  ; $7aec: $e0 $30
    ret nz                                        ; $7aee: $c0

    ldh [rWX], a                                  ; $7aef: $e0 $4b
    ld l, d                                       ; $7af1: $6a
    ld h, [hl]                                    ; $7af2: $66
    dec a                                         ; $7af3: $3d
    ldh [$32], a                                  ; $7af4: $e0 $32
    ret nz                                        ; $7af6: $c0

    rst $18                                       ; $7af7: $df
    jp hl                                         ; $7af8: $e9


    add sp, $53                                   ; $7af9: $e8 $53
    ret nz                                        ; $7afb: $c0

    pop hl                                        ; $7afc: $e1
    ld l, c                                       ; $7afd: $69
    ld l, c                                       ; $7afe: $69
    ret                                           ; $7aff: $c9


    pop bc                                        ; $7b00: $c1
    cp a                                          ; $7b01: $bf
    ldh [rBCPD], a                                ; $7b02: $e0 $69
    ret nz                                        ; $7b04: $c0

    ldh [$32], a                                  ; $7b05: $e0 $32
    ld c, l                                       ; $7b07: $4d
    ld b, b                                       ; $7b08: $40
    rst $18                                       ; $7b09: $df
    ld a, [hl-]                                   ; $7b0a: $3a
    ret nz                                        ; $7b0b: $c0

    xor $69                                       ; $7b0c: $ee $69
    ld a, d                                       ; $7b0e: $7a
    ldh [$30], a                                  ; $7b0f: $e0 $30
    ld l, e                                       ; $7b11: $6b
    ld l, c                                       ; $7b12: $69
    ret nz                                        ; $7b13: $c0

    ldh [$c1], a                                  ; $7b14: $e0 $c1
    ldh [$80], a                                  ; $7b16: $e0 $80
    ret nz                                        ; $7b18: $c0

jr_051_7b19:
    rst $38                                       ; $7b19: $ff
    ld b, b                                       ; $7b1a: $40
    db $ed                                        ; $7b1b: $ed
    ret nz                                        ; $7b1c: $c0

    rst $20                                       ; $7b1d: $e7
    pop bc                                        ; $7b1e: $c1
    pop hl                                        ; $7b1f: $e1
    ret nz                                        ; $7b20: $c0

    rst $38                                       ; $7b21: $ff
    ret nz                                        ; $7b22: $c0

    jp z, $e780                                   ; $7b23: $ca $80 $e7

jr_051_7b26:
    ld [hl], $7f                                  ; $7b26: $36 $7f
    ld l, [hl]                                    ; $7b28: $6e
    ld a, h                                       ; $7b29: $7c
    xor a                                         ; $7b2a: $af
    ld sp, $1415                                  ; $7b2b: $31 $15 $14
    inc d                                         ; $7b2e: $14
    jp z, $f8ff                                   ; $7b2f: $ca $ff $f8

    ld b, b                                       ; $7b32: $40
    jp z, $e000                                   ; $7b33: $ca $00 $e0

    add $e0                                       ; $7b36: $c6 $e0
    ld a, h                                       ; $7b38: $7c
    ld a, l                                       ; $7b39: $7d
    ld a, h                                       ; $7b3a: $7c
    ld l, a                                       ; $7b3b: $6f
    add b                                         ; $7b3c: $80
    ccf                                           ; $7b3d: $3f
    xor b                                         ; $7b3e: $a8
    xor h                                         ; $7b3f: $ac
    ld sp, $2417                                  ; $7b40: $31 $17 $24
    inc h                                         ; $7b43: $24
    jp z, $80ff                                   ; $7b44: $ca $ff $80

    xor c                                         ; $7b47: $a9
    cp a                                          ; $7b48: $bf
    xor a                                         ; $7b49: $af
    ld [hl], c                                    ; $7b4a: $71
    ld [hl], $6e                                  ; $7b4b: $36 $6e
    ld l, a                                       ; $7b4d: $6f
    add b                                         ; $7b4e: $80
    rst $38                                       ; $7b4f: $ff
    db $e3                                        ; $7b50: $e3
    and b                                         ; $7b51: $a0
    sbc a                                         ; $7b52: $9f
    ld sp, $1615                                  ; $7b53: $31 $15 $16
    jr nz, jr_051_7b78                            ; $7b56: $20 $20

    jp z, Jump_051_40ff                           ; $7b58: $ca $ff $40

    xor c                                         ; $7b5b: $a9
    and c                                         ; $7b5c: $a1
    add hl, de                                    ; $7b5d: $19
    ld a, c                                       ; $7b5e: $79
    jp nz, $c0e5                                  ; $7b5f: $c2 $e5 $c0

    pop hl                                        ; $7b62: $e1
    rla                                           ; $7b63: $17
    jr z, jr_051_7b26                             ; $7b64: $28 $c0

    rst $38                                       ; $7b66: $ff
    rst $38                                       ; $7b67: $ff
    rst $38                                       ; $7b68: $ff
    rst $38                                       ; $7b69: $ff
    rst $38                                       ; $7b6a: $ff
    nop                                           ; $7b6b: $00
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

jr_051_7b78:
    rst $38                                       ; $7b78: $ff
    rst $38                                       ; $7b79: $ff
    rst $38                                       ; $7b7a: $ff
    rst $38                                       ; $7b7b: $ff
    nop                                           ; $7b7c: $00
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
    nop                                           ; $7b8d: $00
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
    nop                                           ; $7b9e: $00
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
    nop                                           ; $7baf: $00
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
    nop                                           ; $7bc0: $00
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
    nop                                           ; $7bd1: $00
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
    nop                                           ; $7be2: $00
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
    nop                                           ; $7bf3: $00
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
    nop                                           ; $7c04: $00
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
    nop                                           ; $7c15: $00
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
    nop                                           ; $7c26: $00
    rst $38                                       ; $7c27: $ff
    push af                                       ; $7c28: $f5
    nop                                           ; $7c29: $00
    nop                                           ; $7c2a: $00
    nop                                           ; $7c2b: $00
    and l                                         ; $7c2c: $a5
    nop                                           ; $7c2d: $00
    rst $38                                       ; $7c2e: $ff
    push hl                                       ; $7c2f: $e5
    ld [hl-], a                                   ; $7c30: $32
    or $e6                                        ; $7c31: $f6 $e6
    rst $30                                       ; $7c33: $f7
    rst $20                                       ; $7c34: $e7
    dec [hl]                                      ; $7c35: $35
    db $ec                                        ; $7c36: $ec
    xor $37                                       ; $7c37: $ee $37
    db $ec                                        ; $7c39: $ec
    jp c, $c7f0                                   ; $7c3a: $da $f0 $c7

    add sp, $33                                   ; $7c3d: $e8 $33
    ld sp, $f2e0                                  ; $7c3f: $31 $e0 $f2
    ld [hl], $30                                  ; $7c42: $36 $30
    scf                                           ; $7c44: $37
    cp a                                          ; $7c45: $bf
    ld h, $20                                     ; $7c46: $26 $20
    daa                                           ; $7c48: $27
    db $10                                        ; $7c49: $10
    ld d, $17                                     ; $7c4a: $16 $17
    jp nz, Jump_000_34f6                          ; $7c4c: $c2 $f6 $34

    rst $38                                       ; $7c4f: $ff
    ld [hl], $32                                  ; $7c50: $36 $32
    jr nc, jr_051_7c8b                            ; $7c52: $30 $37

    ld sp, $3133                                  ; $7c54: $31 $33 $31
    inc sp                                        ; $7c57: $33
    nop                                           ; $7c58: $00
    and b                                         ; $7c59: $a0
    ei                                            ; $7c5a: $fb
    rst $38                                       ; $7c5b: $ff
    rst $28                                       ; $7c5c: $ef
    nop                                           ; $7c5d: $00
    nop                                           ; $7c5e: $00
    nop                                           ; $7c5f: $00
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

jr_051_7c8b:
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

Jump_051_7f7c:
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
