; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $052", ROMX[$4000], BANK[$52]

    db $10                                        ; $4000: $10
    ld b, b                                       ; $4001: $40
    ld h, c                                       ; $4002: $61
    ld e, c                                       ; $4003: $59
    dec b                                         ; $4004: $05
    ld d, c                                       ; $4005: $51
    daa                                           ; $4006: $27
    ld l, c                                       ; $4007: $69
    add c                                         ; $4008: $81
    ld [hl], c                                    ; $4009: $71

    db $34, $72

    inc sp                                        ; $400c: $33
    ld [hl], e                                    ; $400d: $73
    ld a, [de]                                    ; $400e: $1a
    ld a, b                                       ; $400f: $78
    ld a, [de]                                    ; $4010: $1a
    ld b, b                                       ; $4011: $40
    ld c, d                                       ; $4012: $4a
    ld b, b                                       ; $4013: $40
    sbc e                                         ; $4014: $9b
    ld c, e                                       ; $4015: $4b
    sbc e                                         ; $4016: $9b
    ld c, l                                       ; $4017: $4d
    ret                                           ; $4018: $c9


    ld c, a                                       ; $4019: $4f
    or $00                                        ; $401a: $f6 $00
    ccf                                           ; $401c: $3f
    ld [bc], a                                    ; $401d: $02
    db $ec                                        ; $401e: $ec
    inc bc                                        ; $401f: $03
    ldh [rSC], a                                  ; $4020: $e0 $02
    rst $38                                       ; $4022: $ff
    ld a, a                                       ; $4023: $7f
    ld a, [c]                                     ; $4024: $f2
    inc bc                                        ; $4025: $03
    db $ec                                        ; $4026: $ec
    inc bc                                        ; $4027: $03
    ldh [rSC], a                                  ; $4028: $e0 $02
    sub a                                         ; $402a: $97
    ld a, l                                       ; $402b: $7d
    sbc a                                         ; $402c: $9f
    ld a, [hl]                                    ; $402d: $7e
    ld hl, sp+$00                                 ; $402e: $f8 $00
    ldh [rSC], a                                  ; $4030: $e0 $02
    rra                                           ; $4032: $1f
    ld h, a                                       ; $4033: $67
    db $ec                                        ; $4034: $ec
    inc bc                                        ; $4035: $03
    ldh [rSC], a                                  ; $4036: $e0 $02
    add hl, hl                                    ; $4038: $29
    ld bc, $015f                                  ; $4039: $01 $5f $01
    ldh [rSC], a                                  ; $403c: $e0 $02
    rra                                           ; $403e: $1f
    ld h, a                                       ; $403f: $67
    add hl, hl                                    ; $4040: $29
    ld bc, $2508                                  ; $4041: $01 $08 $25
    ld [$0825], sp                                ; $4044: $08 $25 $08
    dec h                                         ; $4047: $25
    ld [$d525], sp                                ; $4048: $08 $25 $d5

jr_052_404b:
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
    jr nz, jr_052_404b                            ; $4089: $20 $c0

    cp a                                          ; $408b: $bf
    ld [c], a                                     ; $408c: $e2
    nop                                           ; $408d: $00
    ld a, a                                       ; $408e: $7f
    rst $38                                       ; $408f: $ff
    cpl                                           ; $4090: $2f
    rst $38                                       ; $4091: $ff
    rst $38                                       ; $4092: $ff
    ccf                                           ; $4093: $3f

Jump_052_4094:
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
    ld hl, sp-$02                                 ; $40ff: $f8 $fe
    add sp, -$02                                  ; $4101: $e8 $fe
    ld hl, sp-$08                                 ; $4103: $f8 $f8
    ldh [$0b], a                                  ; $4105: $e0 $0b

Call_052_4107:
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
    call nc, Call_052_48c2                        ; $4146: $d4 $c2 $48
    nop                                           ; $4149: $00
    ld bc, $5878                                  ; $414a: $01 $78 $58
    rst $38                                       ; $414d: $ff
    or b                                          ; $414e: $b0
    jp hl                                         ; $414f: $e9


    rst $28                                       ; $4150: $ef
    ld [bc], a                                    ; $4151: $02
    ld bc, $0300                                  ; $4152: $01 $00 $03
    ld [hl], d                                    ; $4155: $72
    pop hl                                        ; $4156: $e1
    or b                                          ; $4157: $b0
    rst $38                                       ; $4158: $ff
    pop hl                                        ; $4159: $e1
    rst $38                                       ; $415a: $ff
    cp $80                                        ; $415b: $fe $80
    ld hl, sp+$08                                 ; $415d: $f8 $08
    ldh a, [rSC]                                  ; $415f: $f0 $02
    db $fc                                        ; $4161: $fc
    and b                                         ; $4162: $a0
    rst $38                                       ; $4163: $ff
    rst $38                                       ; $4164: $ff
    ld sp, hl                                     ; $4165: $f9
    rst $38                                       ; $4166: $ff
    ret nc                                        ; $4167: $d0

    rst $38                                       ; $4168: $ff
    pop af                                        ; $4169: $f1
    rst $38                                       ; $416a: $ff
    ldh [rIE], a                                  ; $416b: $e0 $ff
    rst $38                                       ; $416d: $ff
    ld b, h                                       ; $416e: $44
    ei                                            ; $416f: $fb
    ret nz                                        ; $4170: $c0

    di                                            ; $4171: $f3
    add d                                         ; $4172: $82
    pop af                                        ; $4173: $f1
    db $10                                        ; $4174: $10
    db $fd                                        ; $4175: $fd
    pop hl                                        ; $4176: $e1
    ld [c], a                                     ; $4177: $e2
    jp Jump_052_7f9f                              ; $4178: $c3 $9f $7f


    dec bc                                        ; $417b: $0b
    ld a, a                                       ; $417c: $7f
    rrca                                          ; $417d: $0f
    ccf                                           ; $417e: $3f
    rst $28                                       ; $417f: $ef
    rlca                                          ; $4180: $07
    rst $38                                       ; $4181: $ff
    ld e, a                                       ; $4182: $5f
    rst $38                                       ; $4183: $ff
    add [hl]                                      ; $4184: $86
    add sp, $00                                   ; $4185: $e8 $00
    ld [$ff07], sp                                ; $4187: $08 $07 $ff
    nop                                           ; $418a: $00
    rra                                           ; $418b: $1f
    nop                                           ; $418c: $00
    nop                                           ; $418d: $00
    ld b, b                                       ; $418e: $40
    ld b, b                                       ; $418f: $40
    nop                                           ; $4190: $00
    jr nz, @+$21                                  ; $4191: $20 $1f

    nop                                           ; $4193: $00
    db $10                                        ; $4194: $10
    ld [$0400], sp                                ; $4195: $08 $00 $04
    ld [hl], d                                    ; $4198: $72
    ret nz                                        ; $4199: $c0

    ld h, d                                       ; $419a: $62
    pop bc                                        ; $419b: $c1
    ldh a, [rIE]                                  ; $419c: $f0 $ff
    inc a                                         ; $419e: $3c
    ldh a, [rIE]                                  ; $419f: $f0 $ff
    ldh a, [$f7]                                  ; $41a1: $f0 $f7
    jp $c33c                                      ; $41a3: $c3 $3c $c3


    inc a                                         ; $41a6: $3c
    db $fd                                        ; $41a7: $fd
    ldh [$fe], a                                  ; $41a8: $e0 $fe
    ld [c], a                                     ; $41aa: $e2
    cp $f4                                        ; $41ab: $fe $f4
    pop hl                                        ; $41ad: $e1
    dec de                                        ; $41ae: $1b
    rst $20                                       ; $41af: $e7
    cpl                                           ; $41b0: $2f
    call c, $f11e                                 ; $41b1: $dc $1e $f1
    inc a                                         ; $41b4: $3c
    rst $38                                       ; $41b5: $ff
    db $e3                                        ; $41b6: $e3
    ld a, h                                       ; $41b7: $7c
    jp $c37c                                      ; $41b8: $c3 $7c $c3


    db $e3                                        ; $41bb: $e3
    sbc h                                         ; $41bc: $9c
    jp $bcf7                                      ; $41bd: $c3 $f7 $bc


    jr @-$17                                      ; $41c0: $18 $e7

    ld [c], a                                     ; $41c2: $e2
    pop hl                                        ; $41c3: $e1
    ld a, [de]                                    ; $41c4: $1a
    push hl                                       ; $41c5: $e5
    ld [de], a                                    ; $41c6: $12
    rst $28                                       ; $41c7: $ef
    rst $38                                       ; $41c8: $ff
    ld e, a                                       ; $41c9: $5f
    cp b                                          ; $41ca: $b8
    ld a, a                                       ; $41cb: $7f
    ldh [$f3], a                                  ; $41cc: $e0 $f3
    adc h                                         ; $41ce: $8c
    inc de                                        ; $41cf: $13
    rst $28                                       ; $41d0: $ef
    rst $38                                       ; $41d1: $ff
    rra                                           ; $41d2: $1f
    ld hl, sp-$04                                 ; $41d3: $f8 $fc
    ld h, e                                       ; $41d5: $63
    db $fc                                        ; $41d6: $fc
    add e                                         ; $41d7: $83
    db $fc                                        ; $41d8: $fc
    inc bc                                        ; $41d9: $03
    ei                                            ; $41da: $fb
    cp h                                          ; $41db: $bc
    ld b, e                                       ; $41dc: $43
    call nz, $98e1                                ; $41dd: $c4 $e1 $98
    rst $20                                       ; $41e0: $e7
    db $fc                                        ; $41e1: $fc
    ld b, e                                       ; $41e2: $43
    call c, $63ff                                 ; $41e3: $dc $ff $63
    ld hl, sp+$27                                 ; $41e6: $f8 $27
    ld l, b                                       ; $41e8: $68
    or a                                          ; $41e9: $b7
    ld l, h                                       ; $41ea: $6c
    sub e                                         ; $41eb: $93
    db $fc                                        ; $41ec: $fc
    rst $38                                       ; $41ed: $ff
    inc de                                        ; $41ee: $13
    add sp, $17                                   ; $41ef: $e8 $17
    ld hl, sp+$0f                                 ; $41f1: $f8 $0f
    sbc $25                                       ; $41f3: $de $25
    inc a                                         ; $41f5: $3c
    rst $38                                       ; $41f6: $ff
    rst $00                                       ; $41f7: $c7
    ld a, $c3                                     ; $41f8: $3e $c3
    ccf                                           ; $41fa: $3f
    jp nz, $c13e                                  ; $41fb: $c2 $3e $c1

    jp Jump_000_3d7f                              ; $41fe: $c3 $7f $3d


    jp $bb3d                                      ; $4201: $c3 $3d $bb


    rst $10                                       ; $4204: $d7
    rst $38                                       ; $4205: $ff
    nop                                           ; $4206: $00
    and b                                         ; $4207: $a0
    jp hl                                         ; $4208: $e9


    sbc a                                         ; $4209: $9f
    jp $c3bc                                      ; $420a: $c3 $bc $c3


    cp h                                          ; $420d: $bc
    ld a, h                                       ; $420e: $7c
    jp nz, $bee0                                  ; $420f: $c2 $e0 $be

    pop hl                                        ; $4212: $e1
    ld b, e                                       ; $4213: $43
    db $fc                                        ; $4214: $fc
    db $f4                                        ; $4215: $f4
    ldh [$a0], a                                  ; $4216: $e0 $a0
    pop hl                                        ; $4218: $e1
    nop                                           ; $4219: $00
    rst $38                                       ; $421a: $ff
    db $dd                                        ; $421b: $dd
    db $eb                                        ; $421c: $eb
    rst $38                                       ; $421d: $ff
    nop                                           ; $421e: $00
    ei                                            ; $421f: $fb
    ld a, [hl]                                    ; $4220: $7e
    add c                                         ; $4221: $81
    add b                                         ; $4222: $80
    ld [c], a                                     ; $4223: $e2
    db $f4                                        ; $4224: $f4
    rrca                                          ; $4225: $0f
    ldh a, [rNR32]                                ; $4226: $f0 $1c
    db $e3                                        ; $4228: $e3
    rst $38                                       ; $4229: $ff
    inc e                                         ; $422a: $1c
    di                                            ; $422b: $f3
    inc e                                         ; $422c: $1c
    db $e3                                        ; $422d: $e3
    inc c                                         ; $422e: $0c
    di                                            ; $422f: $f3
    ccf                                           ; $4230: $3f
    ret nc                                        ; $4231: $d0

    rst $38                                       ; $4232: $ff
    dec de                                        ; $4233: $1b
    db $f4                                        ; $4234: $f4
    ld d, a                                       ; $4235: $57
    rst $38                                       ; $4236: $ff
    xor a                                         ; $4237: $af
    db $fc                                        ; $4238: $fc
    ld a, [hl]                                    ; $4239: $7e
    pop af                                        ; $423a: $f1
    push af                                       ; $423b: $f5
    cp h                                          ; $423c: $bc
    ld [hl], b                                    ; $423d: $70
    ldh [$fc], a                                  ; $423e: $e0 $fc
    ld [hl], b                                    ; $4240: $70
    ld [c], a                                     ; $4241: $e2
    ei                                            ; $4242: $fb
    rst $38                                       ; $4243: $ff
    sbc $ff                                       ; $4244: $de $ff
    ld a, a                                       ; $4246: $7f
    push af                                       ; $4247: $f5
    rst $38                                       ; $4248: $ff
    xor d                                         ; $4249: $aa
    rst $38                                       ; $424a: $ff
    ld d, a                                       ; $424b: $57
    rst $38                                       ; $424c: $ff
    cp a                                          ; $424d: $bf
    ld h, a                                       ; $424e: $67
    and b                                         ; $424f: $a0
    db $db                                        ; $4250: $db
    di                                            ; $4251: $f3
    adc h                                         ; $4252: $8c
    ld hl, sp-$1f                                 ; $4253: $f8 $e1
    ld a, h                                       ; $4255: $7c
    db $e3                                        ; $4256: $e3
    ld [hl], b                                    ; $4257: $70
    rst $20                                       ; $4258: $e7
    rst $28                                       ; $4259: $ef
    rst $38                                       ; $425a: $ff
    rst $38                                       ; $425b: $ff
    rst $10                                       ; $425c: $d7
    ld a, a                                       ; $425d: $7f
    db $ed                                        ; $425e: $ed
    ld a, a                                       ; $425f: $7f
    rst $30                                       ; $4260: $f7
    ccf                                           ; $4261: $3f
    ld l, e                                       ; $4262: $6b
    cp a                                          ; $4263: $bf
    rst $38                                       ; $4264: $ff
    halt                                          ; $4265: $76
    sbc a                                         ; $4266: $9f
    ei                                            ; $4267: $fb
    rra                                           ; $4268: $1f
    push af                                       ; $4269: $f5
    rra                                           ; $426a: $1f
    ld a, [$3f0f]                                 ; $426b: $fa $0f $3f
    db $dd                                        ; $426e: $dd
    daa                                           ; $426f: $27
    ld a, $c7                                     ; $4270: $3e $c7
    ccf                                           ; $4272: $3f
    jp $e06e                                      ; $4273: $c3 $6e $e0


    ld [hl], b                                    ; $4276: $70
    ld [c], a                                     ; $4277: $e2
    cp a                                          ; $4278: $bf
    db $ed                                        ; $4279: $ed
    rst $38                                       ; $427a: $ff
    db $d3                                        ; $427b: $d3
    inc a                                         ; $427c: $3c
    ld a, [hl]                                    ; $427d: $7e
    add c                                         ; $427e: $81
    ld [hl], b                                    ; $427f: $70
    jp hl                                         ; $4280: $e9


    db $e3                                        ; $4281: $e3
    or e                                          ; $4282: $b3
    sbc h                                         ; $4283: $9c
    cp h                                          ; $4284: $bc
    inc d                                         ; $4285: $14
    ldh [rBCPD], a                                ; $4286: $e0 $69
    ldh [$c3], a                                  ; $4288: $e0 $c3
    ld h, e                                       ; $428a: $63
    db $10                                        ; $428b: $10
    ldh [$57], a                                  ; $428c: $e0 $57
    sbc [hl]                                      ; $428e: $9e
    and h                                         ; $428f: $a4
    ldh [$7d], a                                  ; $4290: $e0 $7d
    rst $38                                       ; $4292: $ff
    db $d3                                        ; $4293: $d3
    rst $28                                       ; $4294: $ef
    ld c, d                                       ; $4295: $4a
    pop hl                                        ; $4296: $e1
    db $e4                                        ; $4297: $e4
    pop bc                                        ; $4298: $c1
    cp e                                          ; $4299: $bb
    rst $38                                       ; $429a: $ff
    db $f4                                        ; $429b: $f4
    ld e, e                                       ; $429c: $5b
    db $f4                                        ; $429d: $f4
    xor h                                         ; $429e: $ac
    di                                            ; $429f: $f3
    ld l, h                                       ; $42a0: $6c
    di                                            ; $42a1: $f3
    cp h                                          ; $42a2: $bc
    rst $38                                       ; $42a3: $ff
    db $e3                                        ; $42a4: $e3
    ld l, h                                       ; $42a5: $6c
    di                                            ; $42a6: $f3
    cp e                                          ; $42a7: $bb
    db $f4                                        ; $42a8: $f4
    db $db                                        ; $42a9: $db
    db $f4                                        ; $42aa: $f4
    cp l                                          ; $42ab: $bd
    rst $38                                       ; $42ac: $ff
    jp $ffe7                                      ; $42ad: $c3 $e7 $ff


    cp d                                          ; $42b0: $ba
    rst $38                                       ; $42b1: $ff
    ld d, l                                       ; $42b2: $55
    rst $38                                       ; $42b3: $ff
    xor e                                         ; $42b4: $ab
    ei                                            ; $42b5: $fb
    rst $38                                       ; $42b6: $ff
    cp $58                                        ; $42b7: $fe $58
    and b                                         ; $42b9: $a0
    rst $38                                       ; $42ba: $ff
    rst $38                                       ; $42bb: $ff
    db $db                                        ; $42bc: $db
    rst $38                                       ; $42bd: $ff
    ld l, a                                       ; $42be: $6f
    cp $8e                                        ; $42bf: $fe $8e
    ldh [$af], a                                  ; $42c1: $e0 $af
    ld a, a                                       ; $42c3: $7f
    or l                                          ; $42c4: $b5
    ld a, a                                       ; $42c5: $7f
    rst $28                                       ; $42c6: $ef
    ld a, a                                       ; $42c7: $7f
    ld d, a                                       ; $42c8: $57
    db $ec                                        ; $42c9: $ec
    ld b, [hl]                                    ; $42ca: $46
    and b                                         ; $42cb: $a0
    ret nc                                        ; $42cc: $d0

    jp $e718                                      ; $42cd: $c3 $18 $e7


    ld hl, sp-$1b                                 ; $42d0: $f8 $e5
    ld d, a                                       ; $42d2: $57
    rst $38                                       ; $42d3: $ff
    xor h                                         ; $42d4: $ac
    rst $38                                       ; $42d5: $ff
    rst $38                                       ; $42d6: $ff
    ld [hl], h                                    ; $42d7: $74
    ei                                            ; $42d8: $fb
    cp b                                          ; $42d9: $b8
    rst $20                                       ; $42da: $e7
    ld e, b                                       ; $42db: $58
    rst $20                                       ; $42dc: $e7
    db $fc                                        ; $42dd: $fc
    or $05                                        ; $42de: $f6 $05
    ldh [$98], a                                  ; $42e0: $e0 $98
    rst $20                                       ; $42e2: $e7
    ld b, b                                       ; $42e3: $40
    rst $20                                       ; $42e4: $e7
    cp d                                          ; $42e5: $ba
    rst $38                                       ; $42e6: $ff

Call_052_42e7:
    db $ec                                        ; $42e7: $ec
    di                                            ; $42e8: $f3
    sbc l                                         ; $42e9: $9d
    sbc b                                         ; $42ea: $98
    ldh [$e0], a                                  ; $42eb: $e0 $e0
    cp d                                          ; $42ed: $ba
    rst $38                                       ; $42ee: $ff
    ld l, h                                       ; $42ef: $6c
    ld hl, sp-$20                                 ; $42f0: $f8 $e0
    ret z                                         ; $42f2: $c8

    push hl                                       ; $42f3: $e5
    rst $28                                       ; $42f4: $ef
    cp $26                                        ; $42f5: $fe $26
    ldh [$6d], a                                  ; $42f7: $e0 $6d
    rst $38                                       ; $42f9: $ff
    scf                                           ; $42fa: $37
    rst $38                                       ; $42fb: $ff
    dec hl                                        ; $42fc: $2b
    rst $38                                       ; $42fd: $ff
    ld d, $ff                                     ; $42fe: $16 $ff
    rst $38                                       ; $4300: $ff
    dec sp                                        ; $4301: $3b
    rst $38                                       ; $4302: $ff
    dec d                                         ; $4303: $15
    rst $38                                       ; $4304: $ff
    ld a, [de]                                    ; $4305: $1a
    rst $28                                       ; $4306: $ef
    dec [hl]                                      ; $4307: $35
    rst $38                                       ; $4308: $ff
    rst $08                                       ; $4309: $cf
    ld a, $c7                                     ; $430a: $3e $c7
    dec de                                        ; $430c: $1b
    rst $20                                       ; $430d: $e7
    ld a, [de]                                    ; $430e: $1a
    rst $20                                       ; $430f: $e7
    dec a                                         ; $4310: $3d
    cp a                                          ; $4311: $bf
    jp $c33f                                      ; $4312: $c3 $3f $c3


    add hl, de                                    ; $4315: $19
    rst $20                                       ; $4316: $e7
    rst $10                                       ; $4317: $d7
    db $e4                                        ; $4318: $e4
    add b                                         ; $4319: $80
    inc l                                         ; $431a: $2c
    xor l                                         ; $431b: $ad
    db $d3                                        ; $431c: $d3
    and b                                         ; $431d: $a0
    rst $20                                       ; $431e: $e7
    sbc b                                         ; $431f: $98
    rst $20                                       ; $4320: $e7
    ld b, d                                       ; $4321: $42
    pop hl                                        ; $4322: $e1
    ret c                                         ; $4323: $d8

    and b                                         ; $4324: $a0
    ldh [$bc], a                                  ; $4325: $e0 $bc
    add sp, -$22                                  ; $4327: $e8 $de
    ret nz                                        ; $4329: $c0

    or b                                          ; $432a: $b0
    pop hl                                        ; $432b: $e1
    ld b, b                                       ; $432c: $40
    pop hl                                        ; $432d: $e1
    bit 7, b                                      ; $432e: $cb $78
    and $b0                                       ; $4330: $e6 $b0
    rst $38                                       ; $4332: $ff
    ld d, h                                       ; $4333: $54
    rst $38                                       ; $4334: $ff
    ei                                            ; $4335: $fb
    and h                                         ; $4336: $a4
    ei                                            ; $4337: $fb
    ld a, b                                       ; $4338: $78
    rst $30                                       ; $4339: $f7
    xor b                                         ; $433a: $a8
    rst $30                                       ; $433b: $f7
    ld h, h                                       ; $433c: $64
    rst $38                                       ; $433d: $ff
    ei                                            ; $433e: $fb
    or h                                          ; $433f: $b4
    ei                                            ; $4340: $fb
    ret nc                                        ; $4341: $d0

    rst $38                                       ; $4342: $ff
    pop bc                                        ; $4343: $c1
    rst $38                                       ; $4344: $ff
    or a                                          ; $4345: $b7
    ld c, a                                       ; $4346: $4f
    rst $38                                       ; $4347: $ff
    ld e, l                                       ; $4348: $5d
    rst $38                                       ; $4349: $ff
    ld [$e03e], a                                 ; $434a: $ea $3e $e0
    ld a, [hl-]                                   ; $434d: $3a
    add c                                         ; $434e: $81
    rst $38                                       ; $434f: $ff
    sub h                                         ; $4350: $94
    add b                                         ; $4351: $80
    ld h, l                                       ; $4352: $65
    ld d, a                                       ; $4353: $57
    ld a, $e0                                     ; $4354: $3e $e0
    dec [hl]                                      ; $4356: $35
    ld a, [hl-]                                   ; $4357: $3a
    ldh [$ae], a                                  ; $4358: $e0 $ae
    ret nz                                        ; $435a: $c0

    rst $38                                       ; $435b: $ff
    rst $10                                       ; $435c: $d7
    ld hl, $cf83                                  ; $435d: $21 $83 $cf
    rst $38                                       ; $4360: $ff
    db $dd                                        ; $4361: $dd
    rst $38                                       ; $4362: $ff
    ld [hl], a                                    ; $4363: $77
    sbc h                                         ; $4364: $9c
    ret nz                                        ; $4365: $c0

    call c, $afe1                                 ; $4366: $dc $e1 $af
    rst $38                                       ; $4369: $ff
    ld b, l                                       ; $436a: $45
    rst $18                                       ; $436b: $df
    adc $e0                                       ; $436c: $ce $e0
    rst $18                                       ; $436e: $df
    ld hl, sp-$1a                                 ; $436f: $f8 $e6
    rst $38                                       ; $4371: $ff
    push hl                                       ; $4372: $e5
    sbc $e5                                       ; $4373: $de $e5
    ld e, a                                       ; $4375: $5f
    jp z, $a1e0                                   ; $4376: $ca $e0 $a1

    ld l, a                                       ; $4379: $6f
    add $e0                                       ; $437a: $c6 $e0
    ld hl, sp-$1b                                 ; $437c: $f8 $e5
    ldh [$63], a                                  ; $437e: $e0 $63
    ld hl, sp-$1f                                 ; $4380: $f8 $e1
    ld e, a                                       ; $4382: $5f
    sub [hl]                                      ; $4383: $96
    ldh [$5f], a                                  ; $4384: $e0 $5f
    db $fc                                        ; $4386: $fc
    ret nc                                        ; $4387: $d0

    and $c7                                       ; $4388: $e6 $c7
    push hl                                       ; $438a: $e5
    ld l, c                                       ; $438b: $69
    rst $38                                       ; $438c: $ff
    call nc, $81fc                                ; $438d: $d4 $fc $81
    ldh a, [rIE]                                  ; $4390: $f0 $ff
    ld b, [hl]                                    ; $4392: $46
    ldh [$8b], a                                  ; $4393: $e0 $8b
    ret nz                                        ; $4395: $c0

    ld d, a                                       ; $4396: $57
    ret nz                                        ; $4397: $c0

    dec e                                         ; $4398: $1d
    add b                                         ; $4399: $80
    rst $10                                       ; $439a: $d7
    xor a                                         ; $439b: $af
    add b                                         ; $439c: $80
    db $fd                                        ; $439d: $fd
    xor a                                         ; $439e: $af
    ld h, b                                       ; $439f: $60
    jp c, $8048                                   ; $43a0: $da $48 $80

    and b                                         ; $43a3: $a0
    db $fc                                        ; $43a4: $fc
    cp a                                          ; $43a5: $bf
    ld b, c                                       ; $43a6: $41
    ldh a, [$0b]                                  ; $43a7: $f0 $0b
    ret nz                                        ; $43a9: $c0

    ld d, $00                                     ; $43aa: $16 $00
    ld hl, sp-$1f                                 ; $43ac: $f8 $e1
    ld a, [bc]                                    ; $43ae: $0a
    ld a, a                                       ; $43af: $7f
    ret nz                                        ; $43b0: $c0

    rla                                           ; $43b1: $17
    nop                                           ; $43b2: $00
    cp l                                          ; $43b3: $bd
    nop                                           ; $43b4: $00
    ld l, a                                       ; $43b5: $6f
    nop                                           ; $43b6: $00
    push de                                       ; $43b7: $d5
    ld h, b                                       ; $43b8: $60
    rst $38                                       ; $43b9: $ff
    nop                                           ; $43ba: $00
    ld hl, sp-$02                                 ; $43bb: $f8 $fe
    db $f4                                        ; $43bd: $f4
    cp $d8                                        ; $43be: $fe $d8
    db $fc                                        ; $43c0: $fc
    pop af                                        ; $43c1: $f1
    rst $38                                       ; $43c2: $ff
    db $fc                                        ; $43c3: $fc
    ld [c], a                                     ; $43c4: $e2
    ld hl, sp-$2f                                 ; $43c5: $f8 $d1
    ld hl, sp+$63                                 ; $43c7: $f8 $63
    ldh a, [$c6]                                  ; $43c9: $f0 $c6
    rst $38                                       ; $43cb: $ff
    ldh a, [$8b]                                  ; $43cc: $f0 $8b
    ldh [rBGP], a                                 ; $43ce: $e0 $47
    ldh [$8f], a                                  ; $43d0: $e0 $8f
    ret nz                                        ; $43d2: $c0

    dec de                                        ; $43d3: $1b
    rst $38                                       ; $43d4: $ff
    ret nz                                        ; $43d5: $c0

    cpl                                           ; $43d6: $2f
    add b                                         ; $43d7: $80
    rra                                           ; $43d8: $1f
    add b                                         ; $43d9: $80
    scf                                           ; $43da: $37
    nop                                           ; $43db: $00
    ld e, a                                       ; $43dc: $5f
    rst $38                                       ; $43dd: $ff
    nop                                           ; $43de: $00
    inc h                                         ; $43df: $24
    inc a                                         ; $43e0: $3c
    ld b, d                                       ; $43e1: $42
    nop                                           ; $43e2: $00
    xor l                                         ; $43e3: $ad
    nop                                           ; $43e4: $00
    rst $30                                       ; $43e5: $f7
    ld e, e                                       ; $43e6: $5b
    nop                                           ; $43e7: $00
    ld a, l                                       ; $43e8: $7d
    jp nc, $ffe2                                  ; $43e9: $d2 $e2 $ff

    nop                                           ; $43ec: $00
    db $ec                                        ; $43ed: $ec
    pop hl                                        ; $43ee: $e1
    cp a                                          ; $43ef: $bf
    db $e4                                        ; $43f0: $e4
    ldh [rIE], a                                  ; $43f1: $e0 $ff
    cpl                                           ; $43f3: $2f
    add b                                         ; $43f4: $80
    cp a                                          ; $43f5: $bf
    add b                                         ; $43f6: $80
    ld d, a                                       ; $43f7: $57
    nop                                           ; $43f8: $00
    ccf                                           ; $43f9: $3f
    nop                                           ; $43fa: $00
    db $fd                                        ; $43fb: $fd
    push af                                       ; $43fc: $f5
    ld a, $e0                                     ; $43fd: $3e $e0
    ld b, l                                       ; $43ff: $45
    rst $38                                       ; $4400: $ff
    nop                                           ; $4401: $00
    rst $00                                       ; $4402: $c7
    stop                                          ; $4403: $10 $00
    rst $38                                       ; $4405: $ff
    ld l, l                                       ; $4406: $6d
    nop                                           ; $4407: $00
    cp e                                          ; $4408: $bb
    nop                                           ; $4409: $00
    rst $28                                       ; $440a: $ef
    nop                                           ; $440b: $00
    rst $20                                       ; $440c: $e7
    ldh a, [rIE]                                  ; $440d: $f0 $ff
    ld b, e                                       ; $440f: $43
    ldh a, [$e5]                                  ; $4410: $f0 $e5
    ldh a, [rBGP]                                 ; $4412: $f0 $47
    ldh [$8a], a                                  ; $4414: $e0 $8a
    ldh [$bf], a                                  ; $4416: $e0 $bf
    rst $00                                       ; $4418: $c7
    ldh [$a5], a                                  ; $4419: $e0 $a5
    ldh a, [$c3]                                  ; $441b: $f0 $c3
    ldh a, [$30]                                  ; $441d: $f0 $30
    ld h, e                                       ; $441f: $63
    rst $18                                       ; $4420: $df
    cp $2e                                        ; $4421: $fe $2e
    ld h, b                                       ; $4423: $60
    xor l                                         ; $4424: $ad
    rst $38                                       ; $4425: $ff
    ld b, d                                       ; $4426: $42
    rst $38                                       ; $4427: $ff
    nop                                           ; $4428: $00
    jp $effc                                      ; $4429: $c3 $fc $ef


    rst $38                                       ; $442c: $ff
    ld a, [$fcff]                                 ; $442d: $fa $ff $fc
    adc h                                         ; $4430: $8c
    ldh [$f8], a                                  ; $4431: $e0 $f8
    cp $ec                                        ; $4433: $fe $ec
    db $fd                                        ; $4435: $fd
    cp $f6                                        ; $4436: $fe $f6
    ldh [rIE], a                                  ; $4438: $e0 $ff
    rst $38                                       ; $443a: $ff
    add b                                         ; $443b: $80
    ccf                                           ; $443c: $3f
    add b                                         ; $443d: $80
    ld a, a                                       ; $443e: $7f
    rst $38                                       ; $443f: $ff
    ret nz                                        ; $4440: $c0

    sbc a                                         ; $4441: $9f
    ret nz                                        ; $4442: $c0

    ld c, a                                       ; $4443: $4f
    ldh [$87], a                                  ; $4444: $e0 $87
    ldh a, [$d5]                                  ; $4446: $f0 $d5
    rst $38                                       ; $4448: $ff
    db $fc                                        ; $4449: $fc
    ld l, c                                       ; $444a: $69
    rst $38                                       ; $444b: $ff
    ccf                                           ; $444c: $3f
    nop                                           ; $444d: $00
    rrca                                          ; $444e: $0f
    ret nz                                        ; $444f: $c0

    ld b, e                                       ; $4450: $43
    ld l, a                                       ; $4451: $6f
    ldh a, [$a0]                                  ; $4452: $f0 $a0
    db $fc                                        ; $4454: $fc
    db $f4                                        ; $4455: $f4
    ld c, d                                       ; $4456: $4a
    ldh [rIE], a                                  ; $4457: $e0 $ff
    rst $38                                       ; $4459: $ff
    ld b, d                                       ; $445a: $42
    ldh [$fc], a                                  ; $445b: $e0 $fc
    adc b                                         ; $445d: $88
    db $e4                                        ; $445e: $e4
    add sp, -$1b                                  ; $445f: $e8 $e5
    db $e3                                        ; $4461: $e3
    rrca                                          ; $4462: $0f
    and $0f                                       ; $4463: $e6 $0f
    rr a                                          ; $4465: $cb $1f
    ld a, a                                       ; $4467: $7f
    rst $00                                       ; $4468: $c7
    rra                                           ; $4469: $1f
    adc a                                         ; $446a: $8f
    ccf                                           ; $446b: $3f
    sbc e                                         ; $446c: $9b
    ccf                                           ; $446d: $3f
    cpl                                           ; $446e: $2f
    db $fc                                        ; $446f: $fc
    ld b, b                                       ; $4470: $40
    rst $38                                       ; $4471: $ff
    cp $00                                        ; $4472: $fe $00
    cp $00                                        ; $4474: $fe $00
    db $fc                                        ; $4476: $fc
    ld bc, $01fc                                  ; $4477: $01 $fc $01
    rst $38                                       ; $447a: $ff
    ld hl, sp+$03                                 ; $447b: $f8 $03
    ld sp, hl                                     ; $447d: $f9
    inc bc                                        ; $447e: $03
    ld a, [c]                                     ; $447f: $f2
    rlca                                          ; $4480: $07
    pop af                                        ; $4481: $f1
    rlca                                          ; $4482: $07
    db $fc                                        ; $4483: $fc
    ret nc                                        ; $4484: $d0

    push hl                                       ; $4485: $e5
    inc h                                         ; $4486: $24
    pop hl                                        ; $4487: $e1
    db $d3                                        ; $4488: $d3
    nop                                           ; $4489: $00
    ld b, d                                       ; $448a: $42
    ld a, [hl]                                    ; $448b: $7e
    cp $00                                        ; $448c: $fe $00
    push af                                       ; $448e: $f5
    rst $38                                       ; $448f: $ff
    ld [c], a                                     ; $4490: $e2
    ldh [$fe], a                                  ; $4491: $e0 $fe
    sbc $e0                                       ; $4493: $de $e0
    db $fc                                        ; $4495: $fc
    ld bc, $01ff                                  ; $4496: $01 $ff $01
    ld a, h                                       ; $4499: $7c
    ld a, [c]                                     ; $449a: $f2
    ldh [$0a], a                                  ; $449b: $e0 $0a
    ld [c], a                                     ; $449d: $e2
    inc a                                         ; $449e: $3c
    nop                                           ; $449f: $00
    nop                                           ; $44a0: $00
    rst $00                                       ; $44a1: $c7
    ld b, l                                       ; $44a2: $45
    add h                                         ; $44a3: $84
    ret nz                                        ; $44a4: $c0

    rst $38                                       ; $44a5: $ff
    push af                                       ; $44a6: $f5
    rst $38                                       ; $44a7: $ff
    rst $20                                       ; $44a8: $e7
    rrca                                          ; $44a9: $0f
    ld [c], a                                     ; $44aa: $e2
    rrca                                          ; $44ab: $0f
    rst $30                                       ; $44ac: $f7
    rrca                                          ; $44ad: $0f
    cp $c6                                        ; $44ae: $fe $c6
    pop hl                                        ; $44b0: $e1
    di                                            ; $44b1: $f3
    rlca                                          ; $44b2: $07
    push hl                                       ; $44b3: $e5
    rrca                                          ; $44b4: $0f
    db $e3                                        ; $44b5: $e3
    rrca                                          ; $44b6: $0f
    jr @-$53                                      ; $44b7: $18 $ab

    jp Jump_052_5642                              ; $44b9: $c3 $42 $56


    ldh [$f7], a                                  ; $44bc: $e0 $f7
    halt                                          ; $44be: $76
    add $3f                                       ; $44bf: $c6 $3f
    cp h                                          ; $44c1: $bc
    ld h, b                                       ; $44c2: $60
    ccf                                           ; $44c3: $3f
    sbc $80                                       ; $44c4: $de $80
    and b                                         ; $44c6: $a0
    sbc a                                         ; $44c7: $9f
    ld a, a                                       ; $44c8: $7f
    scf                                           ; $44c9: $37
    ld a, a                                       ; $44ca: $7f
    or $e0                                        ; $44cb: $f6 $e0
    rst $38                                       ; $44cd: $ff
    ld [$004f], sp                                ; $44ce: $08 $4f $00
    ld d, l                                       ; $44d1: $55
    nop                                           ; $44d2: $00
    cp [hl]                                       ; $44d3: $be
    ldh a, [$c0]                                  ; $44d4: $f0 $c0
    ld l, b                                       ; $44d6: $68
    push hl                                       ; $44d7: $e5
    ld e, a                                       ; $44d8: $5f
    db $fc                                        ; $44d9: $fc
    ret nz                                        ; $44da: $c0

    rst $10                                       ; $44db: $d7
    ld a, a                                       ; $44dc: $7f
    nop                                           ; $44dd: $00
    xor a                                         ; $44de: $af
    db $fc                                        ; $44df: $fc
    ldh [$3f], a                                  ; $44e0: $e0 $3f
    db $f4                                        ; $44e2: $f4
    ld [c], a                                     ; $44e3: $e2
    ld de, $0980                                  ; $44e4: $11 $80 $09
    ld a, [hl+]                                   ; $44e7: $2a
    call nc, $f0c0                                ; $44e8: $d4 $c0 $f0
    push hl                                       ; $44eb: $e5
    cp a                                          ; $44ec: $bf
    ld a, [$6ae4]                                 ; $44ed: $fa $e4 $6a
    jp hl                                         ; $44f0: $e9


    db $f4                                        ; $44f1: $f4
    db $eb                                        ; $44f2: $eb
    nop                                           ; $44f3: $00
    add e                                         ; $44f4: $83
    rst $38                                       ; $44f5: $ff
    dec de                                        ; $44f6: $1b
    db $e4                                        ; $44f7: $e4
    dec d                                         ; $44f8: $15
    xor $2d                                       ; $44f9: $ee $2d
    ret nc                                        ; $44fb: $d0

    dec b                                         ; $44fc: $05
    ld a, [$34ff]                                 ; $44fd: $fa $ff $34
    ret nz                                        ; $4500: $c0

    ld d, a                                       ; $4501: $57
    xor d                                         ; $4502: $aa
    and h                                         ; $4503: $a4
    ld a, [bc]                                    ; $4504: $0a
    ld c, e                                       ; $4505: $4b
    add b                                         ; $4506: $80
    db $fd                                        ; $4507: $fd
    ld b, d                                       ; $4508: $42
    ldh [rNR41], a                                ; $4509: $e0 $20
    dec e                                         ; $450b: $1d
    ld [bc], a                                    ; $450c: $02
    cp h                                          ; $450d: $bc
    inc bc                                        ; $450e: $03
    sbc b                                         ; $450f: $98
    ld h, a                                       ; $4510: $67
    rst $38                                       ; $4511: $ff
    rla                                           ; $4512: $17
    xor d                                         ; $4513: $aa
    db $e4                                        ; $4514: $e4
    ld a, [bc]                                    ; $4515: $0a
    adc e                                         ; $4516: $8b
    jr nz, jr_052_453b                            ; $4517: $20 $22

    nop                                           ; $4519: $00
    rst $28                                       ; $451a: $ef
    db $dd                                        ; $451b: $dd
    nop                                           ; $451c: $00
    cp l                                          ; $451d: $bd
    ld b, d                                       ; $451e: $42
    ld [$16a1], sp                                ; $451f: $08 $a1 $16
    xor c                                         ; $4522: $a9
    add sp, -$01                                  ; $4523: $e8 $ff
    inc bc                                        ; $4525: $03
    add l                                         ; $4526: $85
    ld [hl+], a                                   ; $4527: $22
    ld a, [hl+]                                   ; $4528: $2a
    rlca                                          ; $4529: $07
    db $db                                        ; $452a: $db
    nop                                           ; $452b: $00
    cp h                                          ; $452c: $bc
    cp a                                          ; $452d: $bf
    ld b, e                                       ; $452e: $43
    ccf                                           ; $452f: $3f
    ret nz                                        ; $4530: $c0

    add hl, de                                    ; $4531: $19
    and $18                                       ; $4532: $e6 $18
    ld h, b                                       ; $4534: $60
    and b                                         ; $4535: $a0
    inc a                                         ; $4536: $3c
    rst $38                                       ; $4537: $ff
    jp $e7b8                                      ; $4538: $c3 $b8 $e7


jr_052_453b:
    ld [$ccf7], sp                                ; $453b: $08 $f7 $cc
    ei                                            ; $453e: $fb
    sub b                                         ; $453f: $90
    rst $38                                       ; $4540: $ff
    ld l, a                                       ; $4541: $6f
    ld a, [hl+]                                   ; $4542: $2a
    rst $38                                       ; $4543: $ff
    rra                                           ; $4544: $1f
    ldh [$d0], a                                  ; $4545: $e0 $d0
    ld bc, $7f5a                                  ; $4547: $01 $5a $7f
    and c                                         ; $454a: $a1
    ld c, b                                       ; $454b: $48
    rlca                                          ; $454c: $07
    ld hl, sp+$07                                 ; $454d: $f8 $07
    inc e                                         ; $454f: $1c
    inc bc                                        ; $4550: $03
    ret nz                                        ; $4551: $c0

    pop hl                                        ; $4552: $e1
    rst $38                                       ; $4553: $ff
    or b                                          ; $4554: $b0
    rrca                                          ; $4555: $0f
    call z, Call_052_793f                         ; $4556: $cc $3f $79
    add [hl]                                      ; $4559: $86
    ld [de], a                                    ; $455a: $12
    rst $28                                       ; $455b: $ef
    rst $28                                       ; $455c: $ef
    dec de                                        ; $455d: $1b
    ldh [$3c], a                                  ; $455e: $e0 $3c
    jp $e1d0                                      ; $4560: $c3 $d0 $e1


    dec a                                         ; $4563: $3d
    ret nz                                        ; $4564: $c0

    ld c, a                                       ; $4565: $4f
    rst $38                                       ; $4566: $ff
    and b                                         ; $4567: $a0
    jr nc, @-$35                                  ; $4568: $30 $c9

    ld d, d                                       ; $456a: $52
    and c                                         ; $456b: $a1
    ld l, l                                       ; $456c: $6d
    jp nz, $ff34                                  ; $456d: $c2 $34 $ff

    ret                                           ; $4570: $c9


    ld c, b                                       ; $4571: $48
    or e                                          ; $4572: $b3
    ld a, [de]                                    ; $4573: $1a
    push hl                                       ; $4574: $e5
    dec d                                         ; $4575: $15
    cp a                                          ; $4576: $bf
    adc $ff                                       ; $4577: $ce $ff
    ccf                                           ; $4579: $3f

jr_052_457a:
    ld d, [hl]                                    ; $457a: $56
    cp a                                          ; $457b: $bf
    ld l, l                                       ; $457c: $6d
    cp a                                          ; $457d: $bf
    sbc [hl]                                      ; $457e: $9e
    ld a, a                                       ; $457f: $7f
    ld l, d                                       ; $4580: $6a
    rst $38                                       ; $4581: $ff
    cp a                                          ; $4582: $bf
    dec e                                         ; $4583: $1d
    rst $38                                       ; $4584: $ff
    ld c, [hl]                                    ; $4585: $4e
    cp a                                          ; $4586: $bf
    dec [hl]                                      ; $4587: $35
    ret nz                                        ; $4588: $c0

    ld c, [hl]                                    ; $4589: $4e
    rst $38                                       ; $458a: $ff
    and c                                         ; $458b: $a1
    ld [hl-], a                                   ; $458c: $32
    ret                                           ; $458d: $c9


    ld d, a                                       ; $458e: $57
    and d                                         ; $458f: $a2
    ld a, a                                       ; $4590: $7f
    push bc                                       ; $4591: $c5
    ld [hl-], a                                   ; $4592: $32
    rst $28                                       ; $4593: $ef
    rst $08                                       ; $4594: $cf
    ld d, l                                       ; $4595: $55
    cp a                                          ; $4596: $bf
    dec hl                                        ; $4597: $2b
    sub b                                         ; $4598: $90
    add d                                         ; $4599: $82
    cp h                                          ; $459a: $bc
    ld b, e                                       ; $459b: $43
    ld e, b                                       ; $459c: $58
    db $fd                                        ; $459d: $fd
    and a                                         ; $459e: $a7
    nop                                           ; $459f: $00
    and b                                         ; $45a0: $a0
    db $e3                                        ; $45a1: $e3
    call nz, $b4f3                                ; $45a2: $c4 $f3 $b4
    db $eb                                        ; $45a5: $eb
    sbc d                                         ; $45a6: $9a
    rst $38                                       ; $45a7: $ff
    ld a, a                                       ; $45a8: $7f
    rst $28                                       ; $45a9: $ef
    ccf                                           ; $45aa: $3f
    ld a, [hl-]                                   ; $45ab: $3a
    rst $18                                       ; $45ac: $df
    ld c, l                                       ; $45ad: $4d
    rst $38                                       ; $45ae: $ff
    or h                                          ; $45af: $b4
    cp a                                          ; $45b0: $bf
    rst $38                                       ; $45b1: $ff
    ld a, d                                       ; $45b2: $7a
    rst $38                                       ; $45b3: $ff
    xor b                                         ; $45b4: $a8
    rst $38                                       ; $45b5: $ff
    ld [hl], h                                    ; $45b6: $74
    cp [hl]                                       ; $45b7: $be
    add b                                         ; $45b8: $80
    inc hl                                        ; $45b9: $23
    rst $28                                       ; $45ba: $ef
    rst $18                                       ; $45bb: $df
    dec b                                         ; $45bc: $05
    rst $38                                       ; $45bd: $ff
    ld a, [de]                                    ; $45be: $1a
    ld [hl], b                                    ; $45bf: $70
    add [hl]                                      ; $45c0: $86
    call nc, $bbff                                ; $45c1: $d4 $ff $bb
    xor a                                         ; $45c4: $af
    cp $74                                        ; $45c5: $fe $74
    rst $38                                       ; $45c7: $ff
    xor [hl]                                      ; $45c8: $ae
    sbc d                                         ; $45c9: $9a
    jr nz, jr_052_457a                            ; $45ca: $20 $ae

    ld a, [hl-]                                   ; $45cc: $3a
    add b                                         ; $45cd: $80
    inc bc                                        ; $45ce: $03
    rst $38                                       ; $45cf: $ff
    rst $38                                       ; $45d0: $ff
    ld d, d                                       ; $45d1: $52
    db $fc                                        ; $45d2: $fc
    xor d                                         ; $45d3: $aa
    db $fd                                        ; $45d4: $fd
    ld [hl], a                                    ; $45d5: $77
    ei                                            ; $45d6: $fb
    and d                                         ; $45d7: $a2
    ld a, [$60b0]                                 ; $45d8: $fa $b0 $60
    dec c                                         ; $45db: $0d
    xor h                                         ; $45dc: $ac
    ld h, b                                       ; $45dd: $60
    ld a, [bc]                                    ; $45de: $0a
    rst $38                                       ; $45df: $ff
    ld h, a                                       ; $45e0: $67
    adc b                                         ; $45e1: $88
    call $bbaf                                    ; $45e2: $cd $af $bb
    ld [hl-], a                                   ; $45e5: $32
    rst $28                                       ; $45e6: $ef
    db $eb                                        ; $45e7: $eb
    sbc $e0                                       ; $45e8: $de $e0
    cp $1c                                        ; $45ea: $fe $1c
    add b                                         ; $45ec: $80
    cp d                                          ; $45ed: $ba
    rst $38                                       ; $45ee: $ff
    rst $38                                       ; $45ef: $ff
    daa                                           ; $45f0: $27
    ret z                                         ; $45f1: $c8

    ld l, l                                       ; $45f2: $6d
    sbc e                                         ; $45f3: $9b
    ld [hl+], a                                   ; $45f4: $22
    rst $38                                       ; $45f5: $ff

jr_052_45f6:
    ld a, e                                       ; $45f6: $7b
    cp a                                          ; $45f7: $bf
    rst $38                                       ; $45f8: $ff
    or [hl]                                       ; $45f9: $b6
    rst $38                                       ; $45fa: $ff
    ld e, [hl]                                    ; $45fb: $5e
    rst $38                                       ; $45fc: $ff
    cp e                                          ; $45fd: $bb
    add h                                         ; $45fe: $84
    ld h, b                                       ; $45ff: $60
    ld c, $bf                                     ; $4600: $0e $bf
    cp a                                          ; $4602: $bf
    db $dd                                        ; $4603: $dd
    ccf                                           ; $4604: $3f
    ld l, [hl]                                    ; $4605: $6e
    cp a                                          ; $4606: $bf
    ld d, a                                       ; $4607: $57
    ld [hl], b                                    ; $4608: $70
    ldh [$6d], a                                  ; $4609: $e0 $6d
    ei                                            ; $460b: $fb
    cp a                                          ; $460c: $bf
    ld e, $70                                     ; $460d: $1e $70
    ldh [rHDMA2], a                               ; $460f: $e0 $52
    db $fd                                        ; $4611: $fd
    xor $f9                                       ; $4612: $ee $f9
    ld c, c                                       ; $4614: $49
    rst $38                                       ; $4615: $ff
    or $a7                                        ; $4616: $f6 $a7
    ld hl, sp+$47                                 ; $4618: $f8 $47
    ldh a, [$b4]                                  ; $461a: $f0 $b4
    ret                                           ; $461c: $c9


    ld c, d                                       ; $461d: $4a
    rst $38                                       ; $461e: $ff
    or c                                          ; $461f: $b1
    dec de                                        ; $4620: $1b
    db $e4                                        ; $4621: $e4
    rst $38                                       ; $4622: $ff
    rra                                           ; $4623: $1f
    ld c, d                                       ; $4624: $4a
    cp a                                          ; $4625: $bf
    ld l, c                                       ; $4626: $69
    ld a, a                                       ; $4627: $7f
    sub a                                         ; $4628: $97
    ld [de], a                                    ; $4629: $12
    rst $28                                       ; $462a: $ef
    add hl, de                                    ; $462b: $19
    ld [c], a                                     ; $462c: $e2
    jr c, jr_052_45f6                             ; $462d: $38 $c7

    nop                                           ; $462f: $00
    pop hl                                        ; $4630: $e1
    rst $38                                       ; $4631: $ff
    dec hl                                        ; $4632: $2b
    ret nc                                        ; $4633: $d0

    xor d                                         ; $4634: $aa
    ld b, c                                       ; $4635: $41
    cp $01                                        ; $4636: $fe $01
    xor b                                         ; $4638: $a8
    rlca                                          ; $4639: $07
    ei                                            ; $463a: $fb
    ld a, b                                       ; $463b: $78
    add a                                         ; $463c: $87
    db $10                                        ; $463d: $10

jr_052_463e:
    db $e3                                        ; $463e: $e3
    and c                                         ; $463f: $a1
    ld e, $8c                                     ; $4640: $1e $8c
    ld a, d                                       ; $4642: $7a
    ld d, a                                       ; $4643: $57
    ld a, a                                       ; $4644: $7f
    xor b                                         ; $4645: $a8
    jr c, @-$3c                                   ; $4646: $38 $c2

    dec c                                         ; $4648: $0d
    ldh a, [$3d]                                  ; $4649: $f0 $3d
    jp nz, Jump_052_61d8                          ; $464b: $c2 $d8 $61

    rst $38                                       ; $464e: $ff
    cpl                                           ; $464f: $2f
    sub b                                         ; $4650: $90
    ld sp, hl                                     ; $4651: $f9
    nop                                           ; $4652: $00
    adc d                                         ; $4653: $8a
    ld hl, $0728                                  ; $4654: $21 $28 $07
    rst $08                                       ; $4657: $cf
    ret c                                         ; $4658: $d8

    rlca                                          ; $4659: $07
    cp h                                          ; $465a: $bc
    ld b, e                                       ; $465b: $43
    ret z                                         ; $465c: $c8

    ld h, c                                       ; $465d: $61
    add hl, sp                                    ; $465e: $39
    and e                                         ; $465f: $a3
    ld [bc], a                                    ; $4660: $02
    db $fd                                        ; $4661: $fd
    rst $38                                       ; $4662: $ff
    ld bc, $0dfe                                  ; $4663: $01 $fe $0d
    ldh a, [rSC]                                  ; $4666: $f0 $02
    db $fd                                        ; $4668: $fd
    ld a, [hl+]                                   ; $4669: $2a
    ret nc                                        ; $466a: $d0

    rst $38                                       ; $466b: $ff
    dec hl                                        ; $466c: $2b
    sub $f5                                       ; $466d: $d6 $f5
    ld a, [bc]                                    ; $466f: $0a
    ld e, a                                       ; $4670: $5f
    add b                                         ; $4671: $80
    xor c                                         ; $4672: $a9
    ld [bc], a                                    ; $4673: $02
    rst $38                                       ; $4674: $ff
    ld a, a                                       ; $4675: $7f
    add b                                         ; $4676: $80
    db $10                                        ; $4677: $10
    rrca                                          ; $4678: $0f
    ldh [$1f], a                                  ; $4679: $e0 $1f
    add b                                         ; $467b: $80
    ld a, a                                       ; $467c: $7f
    rst $38                                       ; $467d: $ff
    ld d, a                                       ; $467e: $57
    xor d                                         ; $467f: $aa
    push af                                       ; $4680: $f5
    ld a, [bc]                                    ; $4681: $0a
    sbc a                                         ; $4682: $9f
    jr nz, jr_052_463e                            ; $4683: $20 $b9

    ld [bc], a                                    ; $4685: $02
    ei                                            ; $4686: $fb
    ld h, a                                       ; $4687: $67
    sbc b                                         ; $4688: $98
    rrca                                          ; $4689: $0f
    and e                                         ; $468a: $a3
    ld c, d                                       ; $468b: $4a
    or l                                          ; $468c: $b5
    db $f4                                        ; $468d: $f4
    dec bc                                        ; $468e: $0b
    sbc l                                         ; $468f: $9d
    rst $38                                       ; $4690: $ff
    ld [hl+], a                                   ; $4691: $22
    cp d                                          ; $4692: $ba
    rlca                                          ; $4693: $07
    ld a, e                                       ; $4694: $7b
    add b                                         ; $4695: $80
    inc c                                         ; $4696: $0c
    di                                            ; $4697: $f3
    rlca                                          ; $4698: $07
    push de                                       ; $4699: $d5
    ld hl, sp-$41                                 ; $469a: $f8 $bf
    and c                                         ; $469c: $a1
    add b                                         ; $469d: $80
    sbc [hl]                                      ; $469e: $9e
    nop                                           ; $469f: $00
    and b                                         ; $46a0: $a0
    sbc d                                         ; $46a1: $9a
    nop                                           ; $46a2: $00
    ld l, b                                       ; $46a3: $68
    rst $38                                       ; $46a4: $ff
    ld a, [hl]                                    ; $46a5: $7e
    sub b                                         ; $46a6: $90
    pop bc                                        ; $46a7: $c1
    rla                                           ; $46a8: $17
    add sp, -$2f                                  ; $46a9: $e8 $d1
    nop                                           ; $46ab: $00
    ld l, $d1                                     ; $46ac: $2e $d1
    add b                                         ; $46ae: $80
    pop hl                                        ; $46af: $e1
    adc $c0                                       ; $46b0: $ce $c0
    db $e3                                        ; $46b2: $e3
    or b                                          ; $46b3: $b0
    rrca                                          ; $46b4: $0f
    add $90                                       ; $46b5: $c6 $90
    call nz, $e3d0                                ; $46b7: $c4 $d0 $e3
    dec a                                         ; $46ba: $3d
    ret nz                                        ; $46bb: $c0

    ld a, a                                       ; $46bc: $7f
    ld e, a                                       ; $46bd: $5f
    and b                                         ; $46be: $a0
    inc [hl]                                      ; $46bf: $34
    ret                                           ; $46c0: $c9


    ld e, d                                       ; $46c1: $5a
    and c                                         ; $46c2: $a1
    ld a, l                                       ; $46c3: $7d
    sub b                                         ; $46c4: $90
    ret nz                                        ; $46c5: $c0

    cp l                                          ; $46c6: $bd
    ld c, h                                       ; $46c7: $4c
    sub b                                         ; $46c8: $90
    ret nz                                        ; $46c9: $c0

    ld d, l                                       ; $46ca: $55
    cp a                                          ; $46cb: $bf
    adc [hl]                                      ; $46cc: $8e
    ld a, a                                       ; $46cd: $7f
    sub b                                         ; $46ce: $90
    jp z, $ffc8                                   ; $46cf: $ca $c8 $ff

    ld e, d                                       ; $46d2: $5a
    and c                                         ; $46d3: $a1
    inc a                                         ; $46d4: $3c
    jp $ae53                                      ; $46d5: $c3 $53 $ae


    ld [hl], a                                    ; $46d8: $77
    call Call_052_42e7                            ; $46d9: $cd $e7 $42
    cp a                                          ; $46dc: $bf
    dec d                                         ; $46dd: $15
    ld l, d                                       ; $46de: $6a
    ld h, b                                       ; $46df: $60
    ld l, e                                       ; $46e0: $6b
    add c                                         ; $46e1: $81
    ret nz                                        ; $46e2: $c0

    ccf                                           ; $46e3: $3f
    ld b, b                                       ; $46e4: $40
    rst $38                                       ; $46e5: $ff
    cp a                                          ; $46e6: $bf
    ld b, b                                       ; $46e7: $40
    rst $38                                       ; $46e8: $ff
    or b                                          ; $46e9: $b0
    rst $28                                       ; $46ea: $ef
    call z, $a4f3                                 ; $46eb: $cc $f3 $a4
    ld a, l                                       ; $46ee: $7d
    ei                                            ; $46ef: $fb
    sub b                                         ; $46f0: $90
    rst $08                                       ; $46f1: $cf
    inc bc                                        ; $46f2: $03
    rst $38                                       ; $46f3: $ff
    dec b                                         ; $46f4: $05
    rst $38                                       ; $46f5: $ff
    ld [bc], a                                    ; $46f6: $02
    add hl, de                                    ; $46f7: $19
    and [hl]                                      ; $46f8: $a6
    ld [$cd90], a                                 ; $46f9: $ea $90 $cd
    ld d, e                                       ; $46fc: $53
    sub b                                         ; $46fd: $90
    ret nz                                        ; $46fe: $c0

    ld [hl], l                                    ; $46ff: $75
    sub b                                         ; $4700: $90
    ret z                                         ; $4701: $c8

    ld [hl], a                                    ; $4702: $77
    adc b                                         ; $4703: $88
    call z, $90ea                                 ; $4704: $cc $ea $90
    jp z, $9037                                   ; $4707: $ca $37 $90

    call z, $904e                                 ; $470a: $cc $4e $90
    adc $ae                                       ; $470d: $ce $ae
    ld sp, hl                                     ; $470f: $f9
    ld a, c                                       ; $4710: $79
    or $90                                        ; $4711: $f6 $90
    ret z                                         ; $4713: $c8

    cp a                                          ; $4714: $bf
    ld e, a                                       ; $4715: $5f
    sub b                                         ; $4716: $90
    jp $e21d                                      ; $4717: $c3 $1d $e2


    ld [$fef7], sp                                ; $471a: $08 $f7 $fe
    nop                                           ; $471d: $00
    pop hl                                        ; $471e: $e1
    dec l                                         ; $471f: $2d
    ret nc                                        ; $4720: $d0

    sbc d                                         ; $4721: $9a
    ld h, c                                       ; $4722: $61
    ld a, [hl]                                    ; $4723: $7e
    add c                                         ; $4724: $81
    add sp, -$12                                  ; $4725: $e8 $ee
    db $10                                        ; $4727: $10
    and $61                                       ; $4728: $e6 $61
    ld e, $95                                     ; $472a: $1e $95
    sub b                                         ; $472c: $90
    ret nz                                        ; $472d: $c0

    add hl, sp                                    ; $472e: $39
    jp nz, $fd0f                                  ; $472f: $c2 $0f $fd

    ldh a, [$df]                                  ; $4732: $f0 $df
    ld h, e                                       ; $4734: $63
    ld d, a                                       ; $4735: $57
    xor b                                         ; $4736: $a8
    ei                                            ; $4737: $fb
    nop                                           ; $4738: $00
    sbc [hl]                                      ; $4739: $9e
    ld hl, $a8ef                                  ; $473a: $21 $ef $a8
    rlca                                          ; $473d: $07
    ld [hl], b                                    ; $473e: $70
    adc a                                         ; $473f: $8f
    rst $08                                       ; $4740: $cf
    ld h, e                                       ; $4741: $63
    inc c                                         ; $4742: $0c
    rst $30                                       ; $4743: $f7
    reti                                          ; $4744: $d9


    rst $38                                       ; $4745: $ff
    ld l, a                                       ; $4746: $6f
    ld [$63ff], sp                                ; $4747: $08 $ff $63
    cp l                                          ; $474a: $bd
    sub $6b                                       ; $474b: $d6 $6b
    ld l, d                                       ; $474d: $6a
    rst $38                                       ; $474e: $ff
    rst $18                                       ; $474f: $df
    jr nc, @-$1f                                  ; $4750: $30 $df

    ld d, e                                       ; $4752: $53
    db $fd                                        ; $4753: $fd
    nop                                           ; $4754: $00
    rst $38                                       ; $4755: $ff
    ld e, l                                       ; $4756: $5d
    rst $38                                       ; $4757: $ff
    rst $20                                       ; $4758: $e7
    ld [$40ff], sp                                ; $4759: $08 $ff $40
    cp a                                          ; $475c: $bf
    ld l, h                                       ; $475d: $6c
    or a                                          ; $475e: $b7
    ld c, b                                       ; $475f: $48
    ld [c], a                                     ; $4760: $e2
    cp h                                          ; $4761: $bc
    ret nz                                        ; $4762: $c0

    ld b, b                                       ; $4763: $40
    ld h, b                                       ; $4764: $60
    ld [$ffff], sp                                ; $4765: $08 $ff $ff
    ld a, [hl-]                                   ; $4768: $3a
    ld bc, $0055                                  ; $4769: $01 $55 $00
    cp d                                          ; $476c: $ba
    cp [hl]                                       ; $476d: $be
    ld a, [hl]                                    ; $476e: $7e
    add b                                         ; $476f: $80
    xor e                                         ; $4770: $ab
    nop                                           ; $4771: $00
    ld e, l                                       ; $4772: $5d
    nop                                           ; $4773: $00
    ld [$8076], a                                 ; $4774: $ea $76 $80
    xor [hl]                                      ; $4777: $ae
    cp [hl]                                       ; $4778: $be
    ld [hl], d                                    ; $4779: $72
    add b                                         ; $477a: $80
    adc d                                         ; $477b: $8a
    nop                                           ; $477c: $00
    ld d, h                                       ; $477d: $54
    nop                                           ; $477e: $00
    xor d                                         ; $477f: $aa
    ldh a, [$e0]                                  ; $4780: $f0 $e0
    xor d                                         ; $4782: $aa
    rst $38                                       ; $4783: $ff
    nop                                           ; $4784: $00
    dec d                                         ; $4785: $15
    nop                                           ; $4786: $00
    xor b                                         ; $4787: $a8
    nop                                           ; $4788: $00
    ld d, c                                       ; $4789: $51
    nop                                           ; $478a: $00
    ld [$00ff], sp                                ; $478b: $08 $ff $00
    ld [hl+], a                                   ; $478e: $22
    nop                                           ; $478f: $00
    sub h                                         ; $4790: $94
    nop                                           ; $4791: $00
    add hl, hl                                    ; $4792: $29
    nop                                           ; $4793: $00
    ld b, h                                       ; $4794: $44

jr_052_4795:
    xor e                                         ; $4795: $ab
    nop                                           ; $4796: $00
    db $10                                        ; $4797: $10
    db $e4                                        ; $4798: $e4
    ldh [rP1], a                                  ; $4799: $e0 $00
    ld d, e                                       ; $479b: $53
    nop                                           ; $479c: $00
    ld bc, $0074                                  ; $479d: $01 $74 $00
    jr nz, jr_052_4795                            ; $47a0: $20 $f3

    nop                                           ; $47a2: $00
    add b                                         ; $47a3: $80
    ld l, [hl]                                    ; $47a4: $6e
    nop                                           ; $47a5: $00
    and b                                         ; $47a6: $a0
    ldh a, [rNR23]                                ; $47a7: $f0 $18
    inc a                                         ; $47a9: $3c
    ld a, [hl]                                    ; $47aa: $7e
    ld a, [hl]                                    ; $47ab: $7e
    rst $38                                       ; $47ac: $ff
    rst $38                                       ; $47ad: $ff
    ld [hl], b                                    ; $47ae: $70
    rst $38                                       ; $47af: $ff
    ld a, b                                       ; $47b0: $78
    db $fc                                        ; $47b1: $fc
    inc a                                         ; $47b2: $3c
    cp $80                                        ; $47b3: $fe $80
    rst $38                                       ; $47b5: $ff
    ld a, h                                       ; $47b6: $7c
    ld h, h                                       ; $47b7: $64
    nop                                           ; $47b8: $00
    nop                                           ; $47b9: $00
    ld [$3e1c], sp                                ; $47ba: $08 $1c $3e
    ld [hl], $ff                                  ; $47bd: $36 $ff
    ld a, a                                       ; $47bf: $7f
    and [hl]                                      ; $47c0: $a6
    ld a, a                                       ; $47c1: $7f
    add h                                         ; $47c2: $84
    ld l, a                                       ; $47c3: $6f
    ld b, b                                       ; $47c4: $40
    ld c, $08                                     ; $47c5: $0e $08
    cp $8e                                        ; $47c7: $fe $8e
    ldh [rIE], a                                  ; $47c9: $e0 $ff
    inc bc                                        ; $47cb: $03
    push af                                       ; $47cc: $f5
    dec bc                                        ; $47cd: $0b
    ei                                            ; $47ce: $fb
    rlca                                          ; $47cf: $07
    cp $ff                                        ; $47d0: $fe $ff
    ccf                                           ; $47d2: $3f
    ld hl, sp+$1f                                 ; $47d3: $f8 $1f
    ld d, b                                       ; $47d5: $50
    cp a                                          ; $47d6: $bf
    or b                                          ; $47d7: $b0
    ld a, a                                       ; $47d8: $7f
    ldh [$bf], a                                  ; $47d9: $e0 $bf
    ld a, a                                       ; $47db: $7f
    db $dd                                        ; $47dc: $dd
    and e                                         ; $47dd: $a3
    ld [hl], a                                    ; $47de: $77
    db $eb                                        ; $47df: $eb
    inc a                                         ; $47e0: $3c
    sbc e                                         ; $47e1: $9b
    ld l, b                                       ; $47e2: $68
    inc bc                                        ; $47e3: $03
    cp a                                          ; $47e4: $bf
    rst $38                                       ; $47e5: $ff
    inc bc                                        ; $47e6: $03
    cp $06                                        ; $47e7: $fe $06
    db $fd                                        ; $47e9: $fd
    dec b                                         ; $47ea: $05
    db $fc                                        ; $47eb: $fc
    ldh [rTAC], a                                 ; $47ec: $e0 $07
    ld e, a                                       ; $47ee: $5f
    cp $03                                        ; $47ef: $fe $03
    ei                                            ; $47f1: $fb
    inc bc                                        ; $47f2: $03
    ld a, [$8b15]                                 ; $47f3: $fa $15 $8b
    ld bc, $ee20                                  ; $47f6: $01 $20 $ee
    rst $38                                       ; $47f9: $ff
    rst $18                                       ; $47fa: $df
    sbc e                                         ; $47fb: $9b
    sbc a                                         ; $47fc: $9f
    ld c, a                                       ; $47fd: $4f
    daa                                           ; $47fe: $27
    rla                                           ; $47ff: $17
    and e                                         ; $4800: $a3
    di                                            ; $4801: $f3
    rst $38                                       ; $4802: $ff
    db $db                                        ; $4803: $db
    pop hl                                        ; $4804: $e1
    xor $f1                                       ; $4805: $ee $f1
    ld [hl], h                                    ; $4807: $74
    ei                                            ; $4808: $fb
    and c                                         ; $4809: $a1
    rst $38                                       ; $480a: $ff
    ld a, a                                       ; $480b: $7f
    rst $18                                       ; $480c: $df
    sbc a                                         ; $480d: $9f
    sbc l                                         ; $480e: $9d
    ld c, a                                       ; $480f: $4f
    ld h, $17                                     ; $4810: $26 $17
    and d                                         ; $4812: $a2
    ldh a, [$e0]                                  ; $4813: $f0 $e0
    rst $38                                       ; $4815: $ff
    ld l, [hl]                                    ; $4816: $6e
    pop af                                        ; $4817: $f1
    db $f4                                        ; $4818: $f4
    ei                                            ; $4819: $fb
    ld sp, hl                                     ; $481a: $f9
    rst $38                                       ; $481b: $ff
    rst $20                                       ; $481c: $e7
    jr @+$01                                      ; $481d: $18 $ff

    jp $e724                                      ; $481f: $c3 $24 $e7


    inc h                                         ; $4822: $24
    rst $38                                       ; $4823: $ff
    inc a                                         ; $4824: $3c
    db $db                                        ; $4825: $db
    inc a                                         ; $4826: $3c
    ei                                            ; $4827: $fb
    rst $20                                       ; $4828: $e7
    jr jr_052_488b                                ; $4829: $18 $60

    ld b, c                                       ; $482b: $41
    ld h, a                                       ; $482c: $67
    sbc d                                         ; $482d: $9a
    call nz, $0b8a                                ; $482e: $c4 $8a $0b
    rst $38                                       ; $4831: $ff
    ret nz                                        ; $4832: $c0

    ld b, d                                       ; $4833: $42
    and b                                         ; $4834: $a0
    db $10                                        ; $4835: $10
    ret nz                                        ; $4836: $c0

    jp hl                                         ; $4837: $e9


    add b                                         ; $4838: $80
    ld h, b                                       ; $4839: $60
    rst $38                                       ; $483a: $ff
    sub c                                         ; $483b: $91
    adc e                                         ; $483c: $8b
    ld h, b                                       ; $483d: $60
    ld d, $a9                                     ; $483e: $16 $a9
    pop hl                                        ; $4840: $e1

jr_052_4841:
    dec bc                                        ; $4841: $0b
    adc d                                         ; $4842: $8a
    rst $38                                       ; $4843: $ff
    daa                                           ; $4844: $27
    daa                                           ; $4845: $27
    rrca                                          ; $4846: $0f
    xor l                                         ; $4847: $ad
    rra                                           ; $4848: $1f
    sub $3f                                       ; $4849: $d6 $3f
    ld a, l                                       ; $484b: $7d
    db $fc                                        ; $484c: $fc
    ld b, [hl]                                    ; $484d: $46
    add b                                         ; $484e: $80
    ldh a, [rTAC]                                 ; $484f: $f0 $07
    inc h                                         ; $4851: $24
    db $db                                        ; $4852: $db
    inc c                                         ; $4853: $0c
    rst $30                                       ; $4854: $f7
    ld [hl], $cf                                  ; $4855: $36 $cf

jr_052_4857:
    rst $38                                       ; $4857: $ff
    jr jr_052_4841                                ; $4858: $18 $e7

    sub $0f                                       ; $485a: $d6 $0f
    ld e, c                                       ; $485c: $59
    and [hl]                                      ; $485d: $a6
    ld b, d                                       ; $485e: $42
    rrca                                          ; $485f: $0f
    rst $38                                       ; $4860: $ff
    ei                                            ; $4861: $fb
    nop                                           ; $4862: $00
    inc e                                         ; $4863: $1c
    inc bc                                        ; $4864: $03
    cp a                                          ; $4865: $bf

jr_052_4866:
    nop                                           ; $4866: $00
    sbc c                                         ; $4867: $99
    ld h, [hl]                                    ; $4868: $66
    ld a, $08                                     ; $4869: $3e $08
    ld hl, $c23d                                  ; $486b: $21 $3d $c2
    jr jr_052_4857                                ; $486e: $18 $e7

    add hl, de                                    ; $4870: $19
    nop                                           ; $4871: $00
    inc h                                         ; $4872: $24
    ldh [$61], a                                  ; $4873: $e0 $61
    sbc a                                         ; $4875: $9f
    ld d, [hl]                                    ; $4876: $56
    xor c                                         ; $4877: $a9
    ld [hl+], a                                   ; $4878: $22
    rst $38                                       ; $4879: $ff
    ld [hl], l                                    ; $487a: $75
    ld h, b                                       ; $487b: $60
    add h                                         ; $487c: $84
    ld d, b                                       ; $487d: $50
    and e                                         ; $487e: $a3
    ld de, $efff                                  ; $487f: $11 $ff $ef
    rra                                           ; $4882: $1f
    ldh [$3d], a                                  ; $4883: $e0 $3d
    rst $00                                       ; $4885: $c7
    inc sp                                        ; $4886: $33
    rst $08                                       ; $4887: $cf
    dec l                                         ; $4888: $2d
    db $fd                                        ; $4889: $fd
    rst $10                                       ; $488a: $d7

jr_052_488b:
    or b                                          ; $488b: $b0
    ld h, l                                       ; $488c: $65
    jr z, jr_052_4866                             ; $488d: $28 $d7

    ld b, h                                       ; $488f: $44
    ei                                            ; $4890: $fb
    or h                                          ; $4891: $b4
    rst $38                                       ; $4892: $ff
    ei                                            ; $4893: $fb
    ret nc                                        ; $4894: $d0

    rst $38                                       ; $4895: $ff
    adc a                                         ; $4896: $8f
    nop                                           ; $4897: $00
    inc l                                         ; $4898: $2c
    ld e, $e7                                     ; $4899: $1e $e7
    or l                                          ; $489b: $b5
    adc e                                         ; $489c: $8b
    rst $28                                       ; $489d: $ef
    sbc c                                         ; $489e: $99
    rst $00                                       ; $489f: $c7
    ei                                            ; $48a0: $fb
    ld b, [hl]                                    ; $48a1: $46
    ld a, [$56e1]                                 ; $48a2: $fa $e1 $56
    rst $28                                       ; $48a5: $ef
    cp l                                          ; $48a6: $bd
    rst $38                                       ; $48a7: $ff
    ld a, [hl]                                    ; $48a8: $7e
    rst $28                                       ; $48a9: $ef
    jr c, @+$01                                   ; $48aa: $38 $ff

    jr z, jr_052_488b                             ; $48ac: $28 $dd

    ld l, $ef                                     ; $48ae: $2e $ef
    rst $38                                       ; $48b0: $ff
    cpl                                           ; $48b1: $2f
    rst $18                                       ; $48b2: $df
    ccf                                           ; $48b3: $3f
    or $0f                                        ; $48b4: $f6 $0f
    jr @+$01                                      ; $48b6: $18 $ff

    inc h                                         ; $48b8: $24
    db $ed                                        ; $48b9: $ed
    rst $28                                       ; $48ba: $ef
    ldh [$e3], a                                  ; $48bb: $e0 $e3
    ld a, d                                       ; $48bd: $7a
    rst $00                                       ; $48be: $c7
    ldh [$e3], a                                  ; $48bf: $e0 $e3
    inc a                                         ; $48c1: $3c

Call_052_48c2:
    rst $38                                       ; $48c2: $ff
    jr z, @+$01                                   ; $48c3: $28 $ff

    rst $38                                       ; $48c5: $ff
    jr c, @-$0f                                   ; $48c6: $38 $ef

    ld a, $ef                                     ; $48c8: $3e $ef
    cpl                                           ; $48ca: $2f
    rst $28                                       ; $48cb: $ef
    rra                                           ; $48cc: $1f
    db $e3                                        ; $48cd: $e3
    rst $38                                       ; $48ce: $ff
    ld c, $20                                     ; $48cf: $0e $20
    rst $18                                       ; $48d1: $df
    rst $38                                       ; $48d2: $ff

jr_052_48d3:
    rst $38                                       ; $48d3: $ff
    ei                                            ; $48d4: $fb
    ld a, [$ffab]                                 ; $48d5: $fa $ab $ff
    dec b                                         ; $48d8: $05
    rst $38                                       ; $48d9: $ff
    cp $ab                                        ; $48da: $fe $ab
    db $fc                                        ; $48dc: $fc
    dec c                                         ; $48dd: $0d

jr_052_48de:
    ld a, [$fdb2]                                 ; $48de: $fa $b2 $fd
    ld d, l                                       ; $48e1: $55
    rst $38                                       ; $48e2: $ff
    ld [$d7a8], a                                 ; $48e3: $ea $a8 $d7
    db $f4                                        ; $48e6: $f4
    adc e                                         ; $48e7: $8b
    or b                                          ; $48e8: $b0
    rrca                                          ; $48e9: $0f
    sbc $bf                                       ; $48ea: $de $bf
    ld a, a                                       ; $48ec: $7f
    add hl, hl                                    ; $48ed: $29
    cp $55                                        ; $48ee: $fe $55
    rst $38                                       ; $48f0: $ff
    cp [hl]                                       ; $48f1: $be
    ld e, $e0                                     ; $48f2: $1e $e0
    xor d                                         ; $48f4: $aa
    ld e, a                                       ; $48f5: $5f
    rst $38                                       ; $48f6: $ff
    ret nz                                        ; $48f7: $c0

    rst $38                                       ; $48f8: $ff
    sbc b                                         ; $48f9: $98
    ld h, a                                       ; $48fa: $67
    jr nc, jr_052_48de                            ; $48fb: $30 $e1

    ld e, b                                       ; $48fd: $58
    ld h, b                                       ; $48fe: $60
    ld h, [hl]                                    ; $48ff: $66
    ld a, [$4b90]                                 ; $4900: $fa $90 $4b
    dec hl                                        ; $4903: $2b
    ret nc                                        ; $4904: $d0

    ld c, b                                       ; $4905: $48
    inc a                                         ; $4906: $3c
    inc bc                                        ; $4907: $03
    add h                                         ; $4908: $84
    ld [hl], e                                    ; $4909: $73
    or h                                          ; $490a: $b4
    ld sp, hl                                     ; $490b: $f9
    db $eb                                        ; $490c: $eb
    pop hl                                        ; $490d: $e1
    xor [hl]                                      ; $490e: $ae
    jr z, jr_052_4973                             ; $490f: $28 $62

    add hl, de                                    ; $4911: $19
    rst $20                                       ; $4912: $e7
    rla                                           ; $4913: $17
    xor $3f                                       ; $4914: $ee $3f
    cp a                                          ; $4916: $bf
    ret z                                         ; $4917: $c8

    cpl                                           ; $4918: $2f
    ret c                                         ; $4919: $d8

    rra                                           ; $491a: $1f
    ldh a, [$fd]                                  ; $491b: $f0 $fd
    ld a, [hl+]                                   ; $491d: $2a
    nop                                           ; $491e: $00
    jp c, $c8fe                                   ; $491f: $da $fe $c8

    jr nz, jr_052_48d3                            ; $4922: $20 $af

    cp $df                                        ; $4924: $fe $df
    ld hl, sp+$6f                                 ; $4926: $f8 $6f
    ld hl, sp-$21                                 ; $4928: $f8 $df
    push af                                       ; $492a: $f5
    ldh a, [rSCX]                                 ; $492b: $f0 $43
    ld b, b                                       ; $492d: $40
    inc a                                         ; $492e: $3c
    and [hl]                                      ; $492f: $a6
    ld b, c                                       ; $4930: $41
    ccf                                           ; $4931: $3f
    jp $c73e                                      ; $4932: $c3 $3e $c7


    rst $28                                       ; $4935: $ef
    db $dd                                        ; $4936: $dd
    cpl                                           ; $4937: $2f
    jp c, $f02f                                   ; $4938: $da $2f $f0

    push hl                                       ; $493b: $e5
    dec a                                         ; $493c: $3d
    jp $9f3c                                      ; $493d: $c3 $3c $9f


    rst $00                                       ; $4940: $c7
    ret nc                                        ; $4941: $d0

    cpl                                           ; $4942: $2f
    ret c                                         ; $4943: $d8

    cpl                                           ; $4944: $2f
    ld a, $ff                                     ; $4945: $3e $ff
    db $ec                                        ; $4947: $ec
    db $eb                                        ; $4948: $eb
    ld b, d                                       ; $4949: $42
    rst $38                                       ; $494a: $ff
    rst $20                                       ; $494b: $e7
    adc c                                         ; $494c: $89
    jp Jump_000_001c                              ; $494d: $c3 $1c $00


    ld a, [hl]                                    ; $4950: $7e
    nop                                           ; $4951: $00
    inc a                                         ; $4952: $3c
    rst $38                                       ; $4953: $ff
    add c                                         ; $4954: $81
    sbc a                                         ; $4955: $9f
    add c                                         ; $4956: $81
    ld [hl], $00                                  ; $4957: $36 $00
    ld l, e                                       ; $4959: $6b
    jr @-$67                                      ; $495a: $18 $97

    rst $38                                       ; $495c: $ff
    ret nz                                        ; $495d: $c0

    set 4, b                                      ; $495e: $cb $e0
    add a                                         ; $4960: $87
    ldh [$cb], a                                  ; $4961: $e0 $cb
    ret nz                                        ; $4963: $c0

    sub a                                         ; $4964: $97
    rst $38                                       ; $4965: $ff
    ret nz                                        ; $4966: $c0

    sbc h                                         ; $4967: $9c
    add c                                         ; $4968: $81
    ld [hl-], a                                   ; $4969: $32
    add a                                         ; $496a: $87
    adc a                                         ; $496b: $8f
    sbc a                                         ; $496c: $9f
    db $fd                                        ; $496d: $fd
    rst $38                                       ; $496e: $ff
    inc bc                                        ; $496f: $03
    di                                            ; $4970: $f3
    rlca                                          ; $4971: $07
    ld sp, hl                                     ; $4972: $f9

jr_052_4973:
    rlca                                          ; $4973: $07
    ei                                            ; $4974: $fb
    inc bc                                        ; $4975: $03
    ld a, l                                       ; $4976: $7d
    rst $38                                       ; $4977: $ff
    inc bc                                        ; $4978: $03
    dec e                                         ; $4979: $1d
    add c                                         ; $497a: $81
    add $e1                                       ; $497b: $c6 $e1
    pop af                                        ; $497d: $f1
    ld sp, hl                                     ; $497e: $f9
    db $fc                                        ; $497f: $fc
    rst $38                                       ; $4980: $ff
    cp $fe                                        ; $4981: $fe $fe
    cp $f8                                        ; $4983: $fe $f8
    db $fc                                        ; $4985: $fc
    db $ed                                        ; $4986: $ed
    db $fc                                        ; $4987: $fc
    ld d, c                                       ; $4988: $51
    ei                                            ; $4989: $fb
    ld hl, sp+$02                                 ; $498a: $f8 $02
    ld h, [hl]                                    ; $498c: $66
    jr nz, jr_052_49ce                            ; $498d: $20 $3f

    add b                                         ; $498f: $80
    ccf                                           ; $4990: $3f
    ld a, a                                       ; $4991: $7f
    rst $38                                       ; $4992: $ff
    rst $38                                       ; $4993: $ff
    ld a, a                                       ; $4994: $7f
    sbc a                                         ; $4995: $9f
    ccf                                           ; $4996: $3f
    ld [hl], a                                    ; $4997: $77
    ccf                                           ; $4998: $3f
    jp z, $e01f                                   ; $4999: $ca $1f $e0

    ei                                            ; $499c: $fb
    nop                                           ; $499d: $00
    sub $e6                                       ; $499e: $d6 $e6
    nop                                           ; $49a0: $00
    rla                                           ; $49a1: $17
    ret nz                                        ; $49a2: $c0

    dec bc                                        ; $49a3: $0b
    ldh [$27], a                                  ; $49a4: $e0 $27
    rst $38                                       ; $49a6: $ff
    ldh [$0b], a                                  ; $49a7: $e0 $0b
    ret nz                                        ; $49a9: $c0

    ld d, a                                       ; $49aa: $57
    ret nz                                        ; $49ab: $c0

    dec e                                         ; $49ac: $1d
    add c                                         ; $49ad: $81
    or h                                          ; $49ae: $b4
    rst $38                                       ; $49af: $ff
    add a                                         ; $49b0: $87
    sub b                                         ; $49b1: $90
    sbc a                                         ; $49b2: $9f
    db $fc                                        ; $49b3: $fc
    inc bc                                        ; $49b4: $03
    ldh a, [rTAC]                                 ; $49b5: $f0 $07
    db $fc                                        ; $49b7: $fc
    rst $38                                       ; $49b8: $ff
    rlca                                          ; $49b9: $07
    ld hl, sp+$03                                 ; $49ba: $f8 $03
    ld a, [hl]                                    ; $49bc: $7e
    inc bc                                        ; $49bd: $03
    sbc h                                         ; $49be: $9c
    add c                                         ; $49bf: $81
    daa                                           ; $49c0: $27
    cp a                                          ; $49c1: $bf
    pop hl                                        ; $49c2: $e1
    add hl, bc                                    ; $49c3: $09
    ld sp, hl                                     ; $49c4: $f9
    nop                                           ; $49c5: $00
    cp $02                                        ; $49c6: $fe $02
    cp a                                          ; $49c8: $bf
    nop                                           ; $49c9: $00
    dec b                                         ; $49ca: $05
    db $fc                                        ; $49cb: $fc
    cp a                                          ; $49cc: $bf
    nop                                           ; $49cd: $00

jr_052_49ce:
    ret nz                                        ; $49ce: $c0

    db $e3                                        ; $49cf: $e3

jr_052_49d0:
    nop                                           ; $49d0: $00
    ld a, a                                       ; $49d1: $7f
    ret nz                                        ; $49d2: $c0

    ld a, a                                       ; $49d3: $7f
    add b                                         ; $49d4: $80
    ccf                                           ; $49d5: $3f
    and a                                         ; $49d6: $a7
    ld h, b                                       ; $49d7: $60
    ccf                                           ; $49d8: $3f
    ret nz                                        ; $49d9: $c0

    ret nz                                        ; $49da: $c0

    db $e4                                        ; $49db: $e4
    ld b, [hl]                                    ; $49dc: $46
    dec l                                         ; $49dd: $2d
    or l                                          ; $49de: $b5
    inc [hl]                                      ; $49df: $34
    ld l, $7f                                     ; $49e0: $2e $7f
    db $fc                                        ; $49e2: $fc
    db $fc                                        ; $49e3: $fc
    db $e4                                        ; $49e4: $e4
    or $e3                                        ; $49e5: $f6 $e3
    jr jr_052_49d0                                ; $49e7: $18 $e7

    dec a                                         ; $49e9: $3d
    jp nz, $c439                                  ; $49ea: $c2 $39 $c4

    rst $38                                       ; $49ed: $ff
    rla                                           ; $49ee: $17
    add sp, $27                                   ; $49ef: $e8 $27
    ret nc                                        ; $49f1: $d0

    rrca                                          ; $49f2: $0f
    ldh [$bf], a                                  ; $49f3: $e0 $bf
    ld b, b                                       ; $49f5: $40
    rst $38                                       ; $49f6: $ff
    ccf                                           ; $49f7: $3f
    add b                                         ; $49f8: $80
    db $eb                                        ; $49f9: $eb
    dec d                                         ; $49fa: $15
    rst $30                                       ; $49fb: $f7
    add hl, bc                                    ; $49fc: $09
    rst $38                                       ; $49fd: $ff
    ld de, $bfff                                  ; $49fe: $11 $ff $bf
    ld c, e                                       ; $4a01: $4b
    sbc $2e                                       ; $4a02: $de $2e
    cp b                                          ; $4a04: $b8
    ld c, b                                       ; $4a05: $48
    ld hl, sp-$67                                 ; $4a06: $f8 $99
    rst $38                                       ; $4a08: $ff
    ldh a, [$f0]                                  ; $4a09: $f0 $f0
    db $dd                                        ; $4a0b: $dd
    and e                                         ; $4a0c: $a3
    rst $30                                       ; $4a0d: $f7
    rst $28                                       ; $4a0e: $ef
    ld a, h                                       ; $4a0f: $7c
    ld a, h                                       ; $4a10: $7c
    cp a                                          ; $4a11: $bf
    nop                                           ; $4a12: $00
    ld b, b                                       ; $4a13: $40
    nop                                           ; $4a14: $00
    ld [bc], a                                    ; $4a15: $02
    nop                                           ; $4a16: $00
    ld d, b                                       ; $4a17: $50
    ld c, c                                       ; $4a18: $49
    add b                                         ; $4a19: $80
    ld [hl], l                                    ; $4a1a: $75

jr_052_4a1b:
    rst $38                                       ; $4a1b: $ff
    inc bc                                        ; $4a1c: $03
    add e                                         ; $4a1d: $83
    inc bc                                        ; $4a1e: $03
    ld d, d                                       ; $4a1f: $52
    ld b, $85                                     ; $4a20: $06 $85
    dec b                                         ; $4a22: $05
    sub $ff                                       ; $4a23: $d6 $ff
    ld b, $ad                                     ; $4a25: $06 $ad
    rlca                                          ; $4a27: $07
    sub $07                                       ; $4a28: $d6 $07
    rst $38                                       ; $4a2a: $ff
    inc bc                                        ; $4a2b: $03
    jp c, Jump_000_17ee                           ; $4a2c: $da $ee $17

    jr nz, jr_052_4a1b                            ; $4a2f: $20 $ea

    nop                                           ; $4a31: $00
    call c, $8037                                 ; $4a32: $dc $37 $80
    call nz, $a800                                ; $4a35: $c4 $00 $a8
    rst $38                                       ; $4a38: $ff
    ld bc, $0341                                  ; $4a39: $01 $41 $03
    adc e                                         ; $4a3c: $8b
    dec d                                         ; $4a3d: $15
    ld [$bf40], a                                 ; $4a3e: $ea $40 $bf
    cp l                                          ; $4a41: $bd
    add b                                         ; $4a42: $80
    and c                                         ; $4a43: $a1

jr_052_4a44:
    ldh [$80], a                                  ; $4a44: $e0 $80
    ld a, a                                       ; $4a46: $7f
    xor d                                         ; $4a47: $aa
    ld d, l                                       ; $4a48: $55
    add hl, de                                    ; $4a49: $19
    add b                                         ; $4a4a: $80
    ret nz                                        ; $4a4b: $c0

    ld a, e                                       ; $4a4c: $7b
    ld e, d                                       ; $4a4d: $5a
    and l                                         ; $4a4e: $a5
    ld [hl], e                                    ; $4a4f: $73
    push hl                                       ; $4a50: $e5
    and l                                         ; $4a51: $a5
    ld e, d                                       ; $4a52: $5a

jr_052_4a53:
    nop                                           ; $4a53: $00
    and l                                         ; $4a54: $a5
    ld e, a                                       ; $4a55: $5f
    add d                                         ; $4a56: $82
    rst $38                                       ; $4a57: $ff
    db $fc                                        ; $4a58: $fc
    ld c, $f1                                     ; $4a59: $0e $f1
    jr jr_052_4a44                                ; $4a5b: $18 $e7

    jr nc, @-$2f                                  ; $4a5d: $30 $cf

    jr nz, @+$01                                  ; $4a5f: $20 $ff

jr_052_4a61:
    rst $18                                       ; $4a61: $df
    ld h, b                                       ; $4a62: $60
    sbc a                                         ; $4a63: $9f
    ld b, b                                       ; $4a64: $40
    cp a                                          ; $4a65: $bf
    rst $38                                       ; $4a66: $ff
    ld a, [bc]                                    ; $4a67: $0a
    add c                                         ; $4a68: $81
    db $fd                                        ; $4a69: $fd
    ld a, [hl]                                    ; $4a6a: $7e
    ld d, a                                       ; $4a6b: $57
    pop hl                                        ; $4a6c: $e1
    jp $c37d                                      ; $4a6d: $c3 $7d $c3


    rst $38                                       ; $4a70: $ff
    add d                                         ; $4a71: $82
    rst $38                                       ; $4a72: $ff
    db $fd                                        ; $4a73: $fd
    jp $41b2                                      ; $4a74: $c3 $b2 $41


    cp a                                          ; $4a77: $bf
    ld [hl], b                                    ; $4a78: $70
    xor a                                         ; $4a79: $af
    jr c, jr_052_4a53                             ; $4a7a: $38 $d7

    ld e, h                                       ; $4a7c: $5c
    rst $38                                       ; $4a7d: $ff
    xor e                                         ; $4a7e: $ab
    inc a                                         ; $4a7f: $3c
    rst $00                                       ; $4a80: $c7
    ld e, [hl]                                    ; $4a81: $5e

jr_052_4a82:
    and l                                         ; $4a82: $a5
    cp [hl]                                       ; $4a83: $be
    ld b, e                                       ; $4a84: $43
    ld b, b                                       ; $4a85: $40
    cp a                                          ; $4a86: $bf
    cp a                                          ; $4a87: $bf
    ret nz                                        ; $4a88: $c0

    ccf                                           ; $4a89: $3f
    add b                                         ; $4a8a: $80
    ld a, a                                       ; $4a8b: $7f
    add b                                         ; $4a8c: $80
    ld b, h                                       ; $4a8d: $44
    ld b, b                                       ; $4a8e: $40
    adc d                                         ; $4a8f: $8a
    ld a, a                                       ; $4a90: $7f
    push af                                       ; $4a91: $f5
    sub l                                         ; $4a92: $95

jr_052_4a93:
    ld l, d                                       ; $4a93: $6a
    xor a                                         ; $4a94: $af
    ret nc                                        ; $4a95: $d0

    jp Jump_052_5a7d                              ; $4a96: $c3 $7d $5a


    add b                                         ; $4a99: $80
    rst $38                                       ; $4a9a: $ff
    cp $02                                        ; $4a9b: $fe $02
    db $fd                                        ; $4a9d: $fd
    dec d                                         ; $4a9e: $15
    ld [$54ab], a                                 ; $4a9f: $ea $ab $54
    ld e, a                                       ; $4aa2: $5f
    rst $38                                       ; $4aa3: $ff
    and b                                         ; $4aa4: $a0
    rst $30                                       ; $4aa5: $f7
    ld [$837e], sp                                ; $4aa6: $08 $7e $83
    cp a                                          ; $4aa9: $bf
    ld c, d                                       ; $4aaa: $4a
    ld a, a                                       ; $4aab: $7f
    rst $10                                       ; $4aac: $d7
    add c                                         ; $4aad: $81
    rst $38                                       ; $4aae: $ff
    add hl, bc                                    ; $4aaf: $09
    daa                                           ; $4ab0: $27
    jr nz, jr_052_4afc                            ; $4ab1: $20 $49

    inc hl                                        ; $4ab3: $23
    jr nz, jr_052_4a61                            ; $4ab4: $20 $ab

    sbc e                                         ; $4ab6: $9b
    rst $38                                       ; $4ab7: $ff
    db $e4                                        ; $4ab8: $e4
    xor a                                         ; $4ab9: $af
    ret nc                                        ; $4aba: $d0

    rst $18                                       ; $4abb: $df
    jr nz, @-$47                                  ; $4abc: $20 $b7

    ret z                                         ; $4abe: $c8

    rst $18                                       ; $4abf: $df
    rla                                           ; $4ac0: $17
    jr nz, jr_052_4a82                            ; $4ac1: $20 $bf

    ret nz                                        ; $4ac3: $c0

    ld hl, sp-$20                                 ; $4ac4: $f8 $e0
    ld c, b                                       ; $4ac6: $48
    push bc                                       ; $4ac7: $c5
    ldh [$c1], a                                  ; $4ac8: $e0 $c1
    jr nz, jr_052_4acd                            ; $4aca: $20 $01

    ld b, b                                       ; $4acc: $40

jr_052_4acd:
    push de                                       ; $4acd: $d5
    dec b                                         ; $4ace: $05
    db $fd                                        ; $4acf: $fd
    jr nz, jr_052_4ae7                            ; $4ad0: $20 $15

    ld sp, hl                                     ; $4ad2: $f9
    jr nz, jr_052_4b32                            ; $4ad3: $20 $5d

    xor c                                         ; $4ad5: $a9
    ld b, b                                       ; $4ad6: $40
    ld a, l                                       ; $4ad7: $7d
    rst $38                                       ; $4ad8: $ff
    push af                                       ; $4ad9: $f5
    cp a                                          ; $4ada: $bf
    ld a, a                                       ; $4adb: $7f
    ld b, b                                       ; $4adc: $40
    ei                                            ; $4add: $fb
    ld a, e                                       ; $4ade: $7b
    ld b, b                                       ; $4adf: $40
    xor d                                         ; $4ae0: $aa
    rst $18                                       ; $4ae1: $df
    jr nz, jr_052_4a93                            ; $4ae2: $20 $af

    rst $38                                       ; $4ae4: $ff
    ld d, b                                       ; $4ae5: $50
    dec de                                        ; $4ae6: $1b

jr_052_4ae7:
    db $e4                                        ; $4ae7: $e4
    xor a                                         ; $4ae8: $af
    ld d, b                                       ; $4ae9: $50
    dec d                                         ; $4aea: $15
    ld [$df8a], a                                 ; $4aeb: $ea $8a $df
    ld [hl], l                                    ; $4aee: $75
    ld bc, $10fe                                  ; $4aef: $01 $fe $10
    rst $28                                       ; $4af2: $ef
    ld d, e                                       ; $4af3: $53
    ld b, b                                       ; $4af4: $40
    db $10                                        ; $4af5: $10
    rst $38                                       ; $4af6: $ff
    ei                                            ; $4af7: $fb
    inc b                                         ; $4af8: $04
    rst $38                                       ; $4af9: $ff
    ld b, d                                       ; $4afa: $42
    nop                                           ; $4afb: $00

jr_052_4afc:
    ld a, [$5505]                                 ; $4afc: $fa $05 $55
    xor d                                         ; $4aff: $aa
    xor b                                         ; $4b00: $a8
    db $fd                                        ; $4b01: $fd
    ld d, a                                       ; $4b02: $57
    add a                                         ; $4b03: $87
    add b                                         ; $4b04: $80
    xor b                                         ; $4b05: $a8
    rst $38                                       ; $4b06: $ff
    ld d, c                                       ; $4b07: $51
    ei                                            ; $4b08: $fb
    and h                                         ; $4b09: $a4
    push af                                       ; $4b0a: $f5
    rst $38                                       ; $4b0b: $ff
    ld a, [bc]                                    ; $4b0c: $0a
    xor d                                         ; $4b0d: $aa
    ld d, l                                       ; $4b0e: $55
    ld d, c                                       ; $4b0f: $51
    xor [hl]                                      ; $4b10: $ae
    add d                                         ; $4b11: $82
    ld a, l                                       ; $4b12: $7d
    rlca                                          ; $4b13: $07
    rst $30                                       ; $4b14: $f7
    ld sp, hl                                     ; $4b15: $f9
    inc e                                         ; $4b16: $1c
    db $e3                                        ; $4b17: $e3
    ld b, h                                       ; $4b18: $44
    push hl                                       ; $4b19: $e5
    ld b, c                                       ; $4b1a: $41
    cp [hl]                                       ; $4b1b: $be
    ld c, b                                       ; $4b1c: $48
    or a                                          ; $4b1d: $b7
    rst $38                                       ; $4b1e: $ff
    ldh a, [$6f]                                  ; $4b1f: $f0 $6f
    inc a                                         ; $4b21: $3c
    bit 2, [hl]                                   ; $4b22: $cb $56
    xor l                                         ; $4b24: $ad
    xor [hl]                                      ; $4b25: $ae
    ld d, e                                       ; $4b26: $53
    rst $38                                       ; $4b27: $ff
    ld [hl], a                                    ; $4b28: $77
    adc d                                         ; $4b29: $8a
    cp a                                          ; $4b2a: $bf
    ld b, c                                       ; $4b2b: $41
    ld a, a                                       ; $4b2c: $7f
    sub e                                         ; $4b2d: $93
    rst $38                                       ; $4b2e: $ff
    add hl, hl                                    ; $4b2f: $29
    rst $38                                       ; $4b30: $ff
    ld l, c                                       ; $4b31: $69

jr_052_4b32:
    sbc $34                                       ; $4b32: $de $34
    or a                                          ; $4b34: $b7
    inc bc                                        ; $4b35: $03
    add e                                         ; $4b36: $83
    nop                                           ; $4b37: $00
    and b                                         ; $4b38: $a0
    rst $38                                       ; $4b39: $ff
    nop                                           ; $4b3a: $00
    adc b                                         ; $4b3b: $88
    ld bc, $00a1                                  ; $4b3c: $01 $a1 $00
    sub b                                         ; $4b3f: $90
    nop                                           ; $4b40: $00
    and h                                         ; $4b41: $a4
    cp $ec                                        ; $4b42: $fe $ec
    ldh [$3f], a                                  ; $4b44: $e0 $3f
    db $dd                                        ; $4b46: $dd
    db $dd                                        ; $4b47: $dd
    cp a                                          ; $4b48: $bf
    cp a                                          ; $4b49: $bf
    ld e, l                                       ; $4b4a: $5d
    ld e, l                                       ; $4b4b: $5d
    rst $38                                       ; $4b4c: $ff
    ld l, $2e                                     ; $4b4d: $2e $2e
    ld e, l                                       ; $4b4f: $5d
    ld e, l                                       ; $4b50: $5d
    ld a, [hl+]                                   ; $4b51: $2a
    ld a, [hl+]                                   ; $4b52: $2a
    nop                                           ; $4b53: $00
    ret nc                                        ; $4b54: $d0

    ld [$600b], a                                 ; $4b55: $ea $0b $60
    ld a, [c]                                     ; $4b58: $f2
    rlca                                          ; $4b59: $07
    ld h, b                                       ; $4b5a: $60
    db $f4                                        ; $4b5b: $f4
    rst $20                                       ; $4b5c: $e7
    ld b, b                                       ; $4b5d: $40
    db $fd                                        ; $4b5e: $fd
    nop                                           ; $4b5f: $00
    rst $30                                       ; $4b60: $f7
    rst $38                                       ; $4b61: $ff
    sbc l                                         ; $4b62: $9d
    sbc l                                         ; $4b63: $9d
    jr z, jr_052_4b8e                             ; $4b64: $28 $28

    dec d                                         ; $4b66: $15
    dec d                                         ; $4b67: $15
    ld c, b                                       ; $4b68: $48
    ld c, b                                       ; $4b69: $48
    ld a, d                                       ; $4b6a: $7a
    db $d3                                        ; $4b6b: $d3
    ld b, b                                       ; $4b6c: $40
    add d                                         ; $4b6d: $82
    db $d3                                        ; $4b6e: $d3
    ld b, b                                       ; $4b6f: $40
    xor d                                         ; $4b70: $aa
    ld a, [hl]                                    ; $4b71: $7e
    nop                                           ; $4b72: $00
    ld e, [hl]                                    ; $4b73: $5e
    or h                                          ; $4b74: $b4
    and b                                         ; $4b75: $a0
    rst $38                                       ; $4b76: $ff
    inc l                                         ; $4b77: $2c
    add c                                         ; $4b78: $81
    jr @-$3b                                      ; $4b79: $18 $c3

    sbc c                                         ; $4b7b: $99
    jp $e742                                      ; $4b7c: $c3 $42 $e7


    ld bc, $70a1                                  ; $4b7f: $01 $a1 $70
    sbc a                                         ; $4b82: $9f
    rst $38                                       ; $4b83: $ff
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

jr_052_4b8e:
    rst $38                                       ; $4b8e: $ff
    nop                                           ; $4b8f: $00
    rst $38                                       ; $4b90: $ff
    rst $38                                       ; $4b91: $ff
    rst $38                                       ; $4b92: $ff
    rst $38                                       ; $4b93: $ff
    rst $38                                       ; $4b94: $ff
    rst $38                                       ; $4b95: $ff
    ei                                            ; $4b96: $fb
    ld a, [$0000]                                 ; $4b97: $fa $00 $00
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

Call_052_4c51:
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

Jump_052_4d3f:
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
    nop                                           ; $4d50: $00
    nop                                           ; $4d51: $00
    nop                                           ; $4d52: $00
    nop                                           ; $4d53: $00
    nop                                           ; $4d54: $00
    nop                                           ; $4d55: $00
    nop                                           ; $4d56: $00
    nop                                           ; $4d57: $00
    nop                                           ; $4d58: $00
    nop                                           ; $4d59: $00
    nop                                           ; $4d5a: $00
    nop                                           ; $4d5b: $00
    nop                                           ; $4d5c: $00
    nop                                           ; $4d5d: $00
    nop                                           ; $4d5e: $00
    nop                                           ; $4d5f: $00
    nop                                           ; $4d60: $00
    nop                                           ; $4d61: $00
    nop                                           ; $4d62: $00
    nop                                           ; $4d63: $00
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
    nop                                           ; $4d6e: $00
    nop                                           ; $4d6f: $00
    nop                                           ; $4d70: $00
    nop                                           ; $4d71: $00
    nop                                           ; $4d72: $00
    nop                                           ; $4d73: $00
    nop                                           ; $4d74: $00
    nop                                           ; $4d75: $00
    nop                                           ; $4d76: $00
    nop                                           ; $4d77: $00
    nop                                           ; $4d78: $00
    nop                                           ; $4d79: $00
    nop                                           ; $4d7a: $00
    nop                                           ; $4d7b: $00
    nop                                           ; $4d7c: $00
    nop                                           ; $4d7d: $00
    nop                                           ; $4d7e: $00
    nop                                           ; $4d7f: $00
    nop                                           ; $4d80: $00
    nop                                           ; $4d81: $00
    nop                                           ; $4d82: $00
    nop                                           ; $4d83: $00
    nop                                           ; $4d84: $00
    nop                                           ; $4d85: $00
    nop                                           ; $4d86: $00
    nop                                           ; $4d87: $00
    nop                                           ; $4d88: $00
    nop                                           ; $4d89: $00
    nop                                           ; $4d8a: $00
    nop                                           ; $4d8b: $00
    nop                                           ; $4d8c: $00
    nop                                           ; $4d8d: $00
    nop                                           ; $4d8e: $00
    nop                                           ; $4d8f: $00
    nop                                           ; $4d90: $00
    nop                                           ; $4d91: $00
    nop                                           ; $4d92: $00
    nop                                           ; $4d93: $00
    nop                                           ; $4d94: $00
    nop                                           ; $4d95: $00
    nop                                           ; $4d96: $00
    nop                                           ; $4d97: $00
    nop                                           ; $4d98: $00
    nop                                           ; $4d99: $00
    nop                                           ; $4d9a: $00
    ld a, l                                       ; $4d9b: $7d
    inc sp                                        ; $4d9c: $33
    rst $38                                       ; $4d9d: $ff
    db $ec                                        ; $4d9e: $ec
    ld de, $1113                                  ; $4d9f: $11 $13 $11
    inc sp                                        ; $4da2: $33
    inc de                                        ; $4da3: $13
    ld hl, sp-$1f                                 ; $4da4: $f8 $e1
    ld b, [hl]                                    ; $4da6: $46
    rst $38                                       ; $4da7: $ff
    pop hl                                        ; $4da8: $e1
    inc de                                        ; $4da9: $13
    inc de                                        ; $4daa: $13
    ldh a, [$e0]                                  ; $4dab: $f0 $e0
    ld a, [c]                                     ; $4dad: $f2
    pop hl                                        ; $4dae: $e1
    ldh a, [$e1]                                  ; $4daf: $f0 $e1
    ld sp, $e0fe                                  ; $4db1: $31 $fe $e0
    dec [hl]                                      ; $4db4: $35
    inc sp                                        ; $4db5: $33
    cp $e1                                        ; $4db6: $fe $e1
    ld sp, $e0fe                                  ; $4db8: $31 $fe $e0
    inc sp                                        ; $4dbb: $33
    ld sp, $e3e9                                  ; $4dbc: $31 $e9 $e3
    pop bc                                        ; $4dbf: $c1
    ldh [rNR42], a                                ; $4dc0: $e0 $21
    inc de                                        ; $4dc2: $13
    ret nc                                        ; $4dc3: $d0

    and $c0                                       ; $4dc4: $e6 $c0
    ld [c], a                                     ; $4dc6: $e2
    cp $e5                                        ; $4dc7: $fe $e5
    cp a                                          ; $4dc9: $bf
    db $e3                                        ; $4dca: $e3
    ld sp, $e1ba                                  ; $4dcb: $31 $ba $e1
    xor h                                         ; $4dce: $ac
    ldh [rNR23], a                                ; $4dcf: $e0 $18
    db $e4                                        ; $4dd1: $e4
    ld [c], a                                     ; $4dd2: $e2
    db $fc                                        ; $4dd3: $fc
    ld sp, hl                                     ; $4dd4: $f9
    cp d                                          ; $4dd5: $ba
    ldh [$31], a                                  ; $4dd6: $e0 $31
    inc de                                        ; $4dd8: $13
    and [hl]                                      ; $4dd9: $a6
    ld [c], a                                     ; $4dda: $e2
    adc h                                         ; $4ddb: $8c
    ldh [$7a], a                                  ; $4ddc: $e0 $7a
    ldh [rP1], a                                  ; $4dde: $e0 $00
    sub h                                         ; $4de0: $94
    ldh [$72], a                                  ; $4de1: $e0 $72
    ld [c], a                                     ; $4de3: $e2
    ld l, b                                       ; $4de4: $68
    and $a1                                       ; $4de5: $e6 $a1
    ld [c], a                                     ; $4de7: $e2
    ld [hl], b                                    ; $4de8: $70
    ldh [$7b], a                                  ; $4de9: $e0 $7b
    ldh [$8e], a                                  ; $4deb: $e0 $8e
    pop hl                                        ; $4ded: $e1
    ld [hl], d                                    ; $4dee: $72
    db $e3                                        ; $4def: $e3
    and h                                         ; $4df0: $a4
    jp c, Jump_000_3ce3                           ; $4df1: $da $e3 $3c

    pop hl                                        ; $4df4: $e1
    rst $38                                       ; $4df5: $ff
    rst $38                                       ; $4df6: $ff
    rst $38                                       ; $4df7: $ff
    di                                            ; $4df8: $f3
    ld a, [c]                                     ; $4df9: $f2
    ld h, [hl]                                    ; $4dfa: $66
    rst $38                                       ; $4dfb: $ff
    db $e4                                        ; $4dfc: $e4
    nop                                           ; $4dfd: $00
    rrca                                          ; $4dfe: $0f
    ld b, $06                                     ; $4dff: $06 $06
    ld h, [hl]                                    ; $4e01: $66
    ld b, $f8                                     ; $4e02: $06 $f8
    pop hl                                        ; $4e04: $e1
    rst $38                                       ; $4e05: $ff
    pop hl                                        ; $4e06: $e1
    ldh a, [$e1]                                  ; $4e07: $f0 $e1
    rst $20                                       ; $4e09: $e7
    db $e4                                        ; $4e0a: $e4
    rst $28                                       ; $4e0b: $ef
    ld h, b                                       ; $4e0c: $60
    nop                                           ; $4e0d: $00
    ld h, b                                       ; $4e0e: $60
    nop                                           ; $4e0f: $00
    di                                            ; $4e10: $f3
    ldh [rP1], a                                  ; $4e11: $e0 $00
    ld h, [hl]                                    ; $4e13: $66
    ld h, b                                       ; $4e14: $60
    ldh [$fe], a                                  ; $4e15: $e0 $fe
    ldh [rIE], a                                  ; $4e17: $e0 $ff
    ldh a, [$d1]                                  ; $4e19: $f0 $d1
    db $e4                                        ; $4e1b: $e4
    db $dd                                        ; $4e1c: $dd
    ld [c], a                                     ; $4e1d: $e2
    rst $10                                       ; $4e1e: $d7
    pop hl                                        ; $4e1f: $e1
    sbc c                                         ; $4e20: $99
    sub [hl]                                      ; $4e21: $96
    sub [hl]                                      ; $4e22: $96
    dec de                                        ; $4e23: $1b
    ld h, [hl]                                    ; $4e24: $66
    sub [hl]                                      ; $4e25: $96
    xor e                                         ; $4e26: $ab
    ldh [rNR11], a                                ; $4e27: $e0 $11
    sbc c                                         ; $4e29: $99
    rst $38                                       ; $4e2a: $ff
    ldh [$a3], a                                  ; $4e2b: $e0 $a3
    ldh [$fc], a                                  ; $4e2d: $e0 $fc
    pop hl                                        ; $4e2f: $e1
    sbc $9c                                       ; $4e30: $de $9c
    pop hl                                        ; $4e32: $e1
    ld l, c                                       ; $4e33: $69
    sub c                                         ; $4e34: $91
    ld l, c                                       ; $4e35: $69
    sub c                                         ; $4e36: $91
    di                                            ; $4e37: $f3
    ldh [$99], a                                  ; $4e38: $e0 $99
    ld h, [hl]                                    ; $4e3a: $66
    ld bc, $fe69                                  ; $4e3b: $01 $69 $fe
    ldh [$f0], a                                  ; $4e3e: $e0 $f0
    pop hl                                        ; $4e40: $e1
    db $db                                        ; $4e41: $db
    pop hl                                        ; $4e42: $e1
    add e                                         ; $4e43: $83
    ld [c], a                                     ; $4e44: $e2
    ret nc                                        ; $4e45: $d0

    db $e3                                        ; $4e46: $e3
    pop de                                        ; $4e47: $d1
    db $e4                                        ; $4e48: $e4
    db $dd                                        ; $4e49: $dd
    ld [c], a                                     ; $4e4a: $e2
    call nc, $e2fc                                ; $4e4b: $d4 $fc $e2
    ret nz                                        ; $4e4e: $c0

    ldh [rNR24], a                                ; $4e4f: $e0 $19
    ld a, e                                       ; $4e51: $7b
    ret nz                                        ; $4e52: $c0

    sbc c                                         ; $4e53: $99
    cp $e1                                        ; $4e54: $fe $e1
    sub c                                         ; $4e56: $91
    sbc c                                         ; $4e57: $99
    ld sp, hl                                     ; $4e58: $f9
    ld de, $e268                                  ; $4e59: $11 $68 $e2
    ld h, e                                       ; $4e5c: $63
    ldh [$99], a                                  ; $4e5d: $e0 $99
    sub b                                         ; $4e5f: $90
    sub b                                         ; $4e60: $90
    nop                                           ; $4e61: $00
    sub b                                         ; $4e62: $90
    ldh a, [$5b]                                  ; $4e63: $f0 $5b
    ldh [$a0], a                                  ; $4e65: $e0 $a0
    ld [c], a                                     ; $4e67: $e2
    ldh a, [$e1]                                  ; $4e68: $f0 $e1
    rst $20                                       ; $4e6a: $e7
    db $e4                                        ; $4e6b: $e4
    add hl, bc                                    ; $4e6c: $09
    sub c                                         ; $4e6d: $91
    add hl, bc                                    ; $4e6e: $09
    sub c                                         ; $4e6f: $91
    ld c, $f3                                     ; $4e70: $0e $f3
    ldh [$99], a                                  ; $4e72: $e0 $99
    nop                                           ; $4e74: $00
    add hl, bc                                    ; $4e75: $09
    cp $e0                                        ; $4e76: $fe $e0
    ldh a, [$e1]                                  ; $4e78: $f0 $e1
    db $db                                        ; $4e7a: $db
    pop hl                                        ; $4e7b: $e1
    inc sp                                        ; $4e7c: $33
    ld [c], a                                     ; $4e7d: $e2
    or b                                          ; $4e7e: $b0
    ret nc                                        ; $4e7f: $d0

    db $e3                                        ; $4e80: $e3
    pop de                                        ; $4e81: $d1
    db $e4                                        ; $4e82: $e4
    db $dd                                        ; $4e83: $dd
    ld [c], a                                     ; $4e84: $e2
    reti                                          ; $4e85: $d9


    pop hl                                        ; $4e86: $e1
    sub b                                         ; $4e87: $90
    add hl, bc                                    ; $4e88: $09
    and b                                         ; $4e89: $a0
    ldh [$91], a                                  ; $4e8a: $e0 $91
    inc b                                         ; $4e8c: $04
    and b                                         ; $4e8d: $a0
    pop hl                                        ; $4e8e: $e1
    add $e1                                       ; $4e8f: $c6 $e1
    sbc c                                         ; $4e91: $99
    ld de, $4dc2                                  ; $4e92: $11 $c2 $4d
    pop hl                                        ; $4e95: $e1
    sub b                                         ; $4e96: $90
    ld [c], a                                     ; $4e97: $e2
    adc d                                         ; $4e98: $8a
    ldh [$f0], a                                  ; $4e99: $e0 $f0
    pop af                                        ; $4e9b: $f1
    reti                                          ; $4e9c: $d9


    sub c                                         ; $4e9d: $91
    add sp, -$1c                                  ; $4e9e: $e8 $e4
    call nc, Call_000_22e4                        ; $4ea0: $d4 $e4 $22

jr_052_4ea3:
    sub d                                         ; $4ea3: $92
    cp $e0                                        ; $4ea4: $fe $e0
    ld de, $3f19                                  ; $4ea6: $11 $19 $3f
    add hl, de                                    ; $4ea9: $19
    sbc c                                         ; $4eaa: $99
    sbc c                                         ; $4eab: $99
    sub d                                         ; $4eac: $92
    sub d                                         ; $4ead: $92
    ld [hl+], a                                   ; $4eae: $22
    db $fc                                        ; $4eaf: $fc
    pop hl                                        ; $4eb0: $e1
    rst $38                                       ; $4eb1: $ff
    pop hl                                        ; $4eb2: $e1
    rst $38                                       ; $4eb3: $ff
    ld de, $1999                                  ; $4eb4: $11 $99 $19
    sub d                                         ; $4eb7: $92
    add hl, de                                    ; $4eb8: $19
    sub d                                         ; $4eb9: $92
    sbc c                                         ; $4eba: $99
    ld [hl+], a                                   ; $4ebb: $22
    ld c, $e2                                     ; $4ebc: $0e $e2
    db $e3                                        ; $4ebe: $e3
    ld [hl+], a                                   ; $4ebf: $22
    ld [hl+], a                                   ; $4ec0: $22
    add hl, hl                                    ; $4ec1: $29
    jp hl                                         ; $4ec2: $e9


    db $e3                                        ; $4ec3: $e3
    db $e4                                        ; $4ec4: $e4
    ldh [$f0], a                                  ; $4ec5: $e0 $f0
    db $e3                                        ; $4ec7: $e3
    jp hl                                         ; $4ec8: $e9


    pop bc                                        ; $4ec9: $c1
    jr nz, jr_052_4ea3                            ; $4eca: $20 $d7

    pop hl                                        ; $4ecc: $e1
    sbc $e1                                       ; $4ecd: $de $e1
    jp c, $88e1                                   ; $4ecf: $da $e1 $88

    push hl                                       ; $4ed2: $e5
    adc c                                         ; $4ed3: $89
    db $e4                                        ; $4ed4: $e4
    sbc c                                         ; $4ed5: $99
    xor h                                         ; $4ed6: $ac
    pop hl                                        ; $4ed7: $e1
    jp nz, Jump_052_7ee0                          ; $4ed8: $c2 $e0 $7e

    ld hl, sp-$20                                 ; $4edb: $f8 $e0
    sbc c                                         ; $4edd: $99
    sub d                                         ; $4ede: $92
    add hl, de                                    ; $4edf: $19
    sbc c                                         ; $4ee0: $99

Jump_052_4ee1:
    ld de, $c619                                  ; $4ee1: $11 $19 $c6
    db $e3                                        ; $4ee4: $e3
    ld c, $f1                                     ; $4ee5: $0e $f1
    pop hl                                        ; $4ee7: $e1
    add hl, hl                                    ; $4ee8: $29
    sub c                                         ; $4ee9: $91
    add hl, hl                                    ; $4eea: $29
    ld hl, sp-$40                                 ; $4eeb: $f8 $c0
    xor l                                         ; $4eed: $ad
    pop hl                                        ; $4eee: $e1
    cp $e0                                        ; $4eef: $fe $e0
    cp h                                          ; $4ef1: $bc
    ld [c], a                                     ; $4ef2: $e2
    nop                                           ; $4ef3: $00
    and d                                         ; $4ef4: $a2
    db $e4                                        ; $4ef5: $e4
    ldh a, [$e1]                                  ; $4ef6: $f0 $e1
    add h                                         ; $4ef8: $84
    ld [c], a                                     ; $4ef9: $e2
    and h                                         ; $4efa: $a4
    ld [c], a                                     ; $4efb: $e2
    and a                                         ; $4efc: $a7
    db $e4                                        ; $4efd: $e4
    dec [hl]                                      ; $4efe: $35
    ld [c], a                                     ; $4eff: $e2
    ret nz                                        ; $4f00: $c0

    push bc                                       ; $4f01: $c5
    cp d                                          ; $4f02: $ba
    ret nz                                        ; $4f03: $c0

    nop                                           ; $4f04: $00
    ld a, d                                       ; $4f05: $7a
    push hl                                       ; $4f06: $e5
    cp $fd                                        ; $4f07: $fe $fd
    sbc b                                         ; $4f09: $98
    push bc                                       ; $4f0a: $c5
    rst $38                                       ; $4f0b: $ff
    rst $38                                       ; $4f0c: $ff
    rst $38                                       ; $4f0d: $ff
    rst $38                                       ; $4f0e: $ff
    rst $38                                       ; $4f0f: $ff
    rst $38                                       ; $4f10: $ff
    rst $38                                       ; $4f11: $ff
    rst $38                                       ; $4f12: $ff
    rst $38                                       ; $4f13: $ff
    rst $38                                       ; $4f14: $ff
    nop                                           ; $4f15: $00
    and $a3                                       ; $4f16: $e6 $a3
    ld h, a                                       ; $4f18: $67
    add $ff                                       ; $4f19: $c6 $ff
    rst $38                                       ; $4f1b: $ff
    rst $38                                       ; $4f1c: $ff
    rst $38                                       ; $4f1d: $ff
    rst $38                                       ; $4f1e: $ff
    rst $38                                       ; $4f1f: $ff
    rst $38                                       ; $4f20: $ff
    rst $38                                       ; $4f21: $ff
    rst $38                                       ; $4f22: $ff
    rst $38                                       ; $4f23: $ff
    sbc l                                         ; $4f24: $9d
    ld h, d                                       ; $4f25: $62
    dec a                                         ; $4f26: $3d
    ld d, l                                       ; $4f27: $55
    rst $38                                       ; $4f28: $ff
    rst $20                                       ; $4f29: $e7
    ld d, c                                       ; $4f2a: $51
    ld d, l                                       ; $4f2b: $55
    ld de, $1851                                  ; $4f2c: $11 $51 $18
    and [hl]                                      ; $4f2f: $a6
    ld c, $ed                                     ; $4f30: $0e $ed
    ld hl, sp-$40                                 ; $4f32: $f8 $c0
    ld a, l                                       ; $4f34: $7d
    and b                                         ; $4f35: $a0
    ld [hl], l                                    ; $4f36: $75
    jr c, jr_052_4f99                             ; $4f37: $38 $60

    rla                                           ; $4f39: $17
    ld de, $1777                                  ; $4f3a: $11 $77 $17
    ld [hl], a                                    ; $4f3d: $77
    rla                                           ; $4f3e: $17
    ld de, $7711                                  ; $4f3f: $11 $11 $77
    rst $38                                       ; $4f42: $ff
    db $e3                                        ; $4f43: $e3
    ld [hl], c                                    ; $4f44: $71
    cp $e4                                        ; $4f45: $fe $e4
    rst $38                                       ; $4f47: $ff
    db $fc                                        ; $4f48: $fc
    adc [hl]                                      ; $4f49: $8e
    rst $18                                       ; $4f4a: $df
    call nz, $ffff                                ; $4f4b: $c4 $ff $ff
    ld e, b                                       ; $4f4e: $58
    rst $18                                       ; $4f4f: $df
    ld de, $f610                                  ; $4f50: $11 $10 $f6
    or $f5                                        ; $4f53: $f6 $f5
    ret nc                                        ; $4f55: $d0

    ret nz                                        ; $4f56: $c0

    ld d, a                                       ; $4f57: $57
    ld d, l                                       ; $4f58: $55
    di                                            ; $4f59: $f3
    ld [hl], a                                    ; $4f5a: $77
    ld d, a                                       ; $4f5b: $57
    ld h, b                                       ; $4f5c: $60
    rst $38                                       ; $4f5d: $ff
    ld [$06e9], a                                 ; $4f5e: $ea $e9 $06
    nop                                           ; $4f61: $00
    ld h, [hl]                                    ; $4f62: $66
    ld de, $1955                                  ; $4f63: $11 $55 $19
    ld h, [hl]                                    ; $4f66: $66
    add b                                         ; $4f67: $80
    sub [hl]                                      ; $4f68: $96
    ld [hl], d                                    ; $4f69: $72
    ld h, h                                       ; $4f6a: $64
    ld l, c                                       ; $4f6b: $69
    ld l, c                                       ; $4f6c: $69
    ld h, h                                       ; $4f6d: $64
    ld h, b                                       ; $4f6e: $60
    ld de, $a263                                  ; $4f6f: $11 $63 $a2
    cp a                                          ; $4f72: $bf
    pop af                                        ; $4f73: $f1
    sub d                                         ; $4f74: $92
    xor h                                         ; $4f75: $ac
    add b                                         ; $4f76: $80
    db $fc                                        ; $4f77: $fc
    ld [c], a                                     ; $4f78: $e2
    cp $e3                                        ; $4f79: $fe $e3
    sbc c                                         ; $4f7b: $99
    adc d                                         ; $4f7c: $8a
    add d                                         ; $4f7d: $82
    add hl, hl                                    ; $4f7e: $29
    ld h, e                                       ; $4f7f: $63
    sbc c                                         ; $4f80: $99
    add hl, hl                                    ; $4f81: $29
    jr z, jr_052_4fe4                             ; $4f82: $28 $60

    ld [hl+], a                                   ; $4f84: $22
    add b                                         ; $4f85: $80
    jr c, @-$7e                                   ; $4f86: $38 $80

    ld de, $1b29                                  ; $4f88: $11 $29 $1b
    add c                                         ; $4f8b: $81
    xor b                                         ; $4f8c: $a8
    ldh [$ee], a                                  ; $4f8d: $e0 $ee
    sub a                                         ; $4f8f: $97
    ld h, b                                       ; $4f90: $60
    ldh [$e3], a                                  ; $4f91: $e0 $e3
    nop                                           ; $4f93: $00
    ldh [$e3], a                                  ; $4f94: $e0 $e3
    xor $ff                                       ; $4f96: $ee $ff
    db $f4                                        ; $4f98: $f4

jr_052_4f99:
    nop                                           ; $4f99: $00
    ld c, a                                       ; $4f9a: $4f
    ld c, $00                                     ; $4f9b: $0e $00
    xor $0e                                       ; $4f9d: $ee $0e
    db $e3                                        ; $4f9f: $e3
    ldh [$98], a                                  ; $4fa0: $e0 $98
    ld [hl+], a                                   ; $4fa2: $22
    ld [hl], a                                    ; $4fa3: $77
    cp $e0                                        ; $4fa4: $fe $e0
    add b                                         ; $4fa6: $80
    ld h, b                                       ; $4fa7: $60
    rst $18                                       ; $4fa8: $df
    rst $38                                       ; $4fa9: $ff
    rst $38                                       ; $4faa: $ff
    rst $38                                       ; $4fab: $ff
    rst $38                                       ; $4fac: $ff
    rst $38                                       ; $4fad: $ff
    rst $38                                       ; $4fae: $ff
    rst $38                                       ; $4faf: $ff
    rst $38                                       ; $4fb0: $ff
    push bc                                       ; $4fb1: $c5
    xor d                                         ; $4fb2: $aa
    jp c, $92c1                                   ; $4fb3: $da $c1 $92

    ld bc, $a429                                  ; $4fb6: $01 $29 $a4
    ld b, e                                       ; $4fb9: $43
    rst $38                                       ; $4fba: $ff
    rst $38                                       ; $4fbb: $ff
    rst $38                                       ; $4fbc: $ff
    rst $38                                       ; $4fbd: $ff
    rst $38                                       ; $4fbe: $ff
    rst $38                                       ; $4fbf: $ff
    rst $38                                       ; $4fc0: $ff
    rst $38                                       ; $4fc1: $ff
    rst $38                                       ; $4fc2: $ff
    rst $38                                       ; $4fc3: $ff
    xor b                                         ; $4fc4: $a8
    add a                                         ; $4fc5: $87
    nop                                           ; $4fc6: $00
    nop                                           ; $4fc7: $00
    nop                                           ; $4fc8: $00
    ld bc, $ff00                                  ; $4fc9: $01 $00 $ff
    rst $38                                       ; $4fcc: $ff
    rst $38                                       ; $4fcd: $ff
    rst $38                                       ; $4fce: $ff
    rst $38                                       ; $4fcf: $ff
    rst $38                                       ; $4fd0: $ff
    rst $38                                       ; $4fd1: $ff
    rst $38                                       ; $4fd2: $ff
    rst $38                                       ; $4fd3: $ff
    rst $38                                       ; $4fd4: $ff
    rst $38                                       ; $4fd5: $ff
    rst $38                                       ; $4fd6: $ff
    rst $38                                       ; $4fd7: $ff
    rst $38                                       ; $4fd8: $ff
    nop                                           ; $4fd9: $00
    rst $38                                       ; $4fda: $ff
    rst $38                                       ; $4fdb: $ff
    rst $38                                       ; $4fdc: $ff
    rst $38                                       ; $4fdd: $ff
    rst $38                                       ; $4fde: $ff
    rst $38                                       ; $4fdf: $ff
    rst $38                                       ; $4fe0: $ff
    rst $38                                       ; $4fe1: $ff
    rst $38                                       ; $4fe2: $ff
    rst $38                                       ; $4fe3: $ff

jr_052_4fe4:
    rst $38                                       ; $4fe4: $ff
    rst $38                                       ; $4fe5: $ff
    rst $38                                       ; $4fe6: $ff
    rst $38                                       ; $4fe7: $ff
    rst $38                                       ; $4fe8: $ff
    rst $38                                       ; $4fe9: $ff
    nop                                           ; $4fea: $00
    rst $38                                       ; $4feb: $ff
    rst $38                                       ; $4fec: $ff
    rst $38                                       ; $4fed: $ff
    rst $38                                       ; $4fee: $ff
    rst $38                                       ; $4fef: $ff
    rst $38                                       ; $4ff0: $ff
    rst $38                                       ; $4ff1: $ff
    rst $38                                       ; $4ff2: $ff
    rst $38                                       ; $4ff3: $ff
    rst $38                                       ; $4ff4: $ff
    rst $38                                       ; $4ff5: $ff
    rst $38                                       ; $4ff6: $ff
    rst $38                                       ; $4ff7: $ff
    rst $38                                       ; $4ff8: $ff
    rst $38                                       ; $4ff9: $ff
    rst $38                                       ; $4ffa: $ff
    rst $38                                       ; $4ffb: $ff
    nop                                           ; $4ffc: $00
    nop                                           ; $4ffd: $00
    dec c                                         ; $4ffe: $0d
    nop                                           ; $4fff: $00
    db $dd                                        ; $5000: $dd
    dec c                                         ; $5001: $0d
    db $dd                                        ; $5002: $dd
    db $dd                                        ; $5003: $dd
    ld a, e                                       ; $5004: $7b
    db $dd                                        ; $5005: $dd
    xor $ff                                       ; $5006: $ee $ff
    ldh [$de], a                                  ; $5008: $e0 $de
    xor $d0                                       ; $500a: $ee $d0
    nop                                           ; $500c: $00
    ld hl, sp-$1f                                 ; $500d: $f8 $e1
    rst $30                                       ; $500f: $f7
    xor $ee                                       ; $5010: $ee $ee
    nop                                           ; $5012: $00
    ld hl, sp-$1d                                 ; $5013: $f8 $e3
    rst $28                                       ; $5015: $ef
    nop                                           ; $5016: $00
    rrca                                          ; $5017: $0f
    ldh a, [$7f]                                  ; $5018: $f0 $7f
    nop                                           ; $501a: $00
    rst $38                                       ; $501b: $ff
    nop                                           ; $501c: $00
    rst $38                                       ; $501d: $ff
    ldh a, [rIE]                                  ; $501e: $f0 $ff
    rst $38                                       ; $5020: $ff
    db $dd                                        ; $5021: $dd
    ldh [rIE], a                                  ; $5022: $e0 $ff
    ret nc                                        ; $5024: $d0

    db $dd                                        ; $5025: $dd
    nop                                           ; $5026: $00
    ret nc                                        ; $5027: $d0

    nop                                           ; $5028: $00
    rst $38                                       ; $5029: $ff
    rst $38                                       ; $502a: $ff
    rrca                                          ; $502b: $0f
    ld l, $ef                                     ; $502c: $2e $ef
    ldh [rP1], a                                  ; $502e: $e0 $00
    rrca                                          ; $5030: $0f
    cp e                                          ; $5031: $bb
    rst $38                                       ; $5032: $ff
    db $e4                                        ; $5033: $e4
    sbc c                                         ; $5034: $99
    rst $38                                       ; $5035: $ff
    db $e4                                        ; $5036: $e4
    ldh a, [$e3]                                  ; $5037: $f0 $e3
    rst $38                                       ; $5039: $ff
    dec bc                                        ; $503a: $0b
    cp e                                          ; $503b: $bb
    nop                                           ; $503c: $00
    nop                                           ; $503d: $00
    or b                                          ; $503e: $b0
    nop                                           ; $503f: $00
    cp e                                          ; $5040: $bb
    nop                                           ; $5041: $00
    di                                            ; $5042: $f3
    cp e                                          ; $5043: $bb
    or b                                          ; $5044: $b0
    add sp, -$1b                                  ; $5045: $e8 $e5
    xor $e0                                       ; $5047: $ee $e0
    cp e                                          ; $5049: $bb
    nop                                           ; $504a: $00
    dec bc                                        ; $504b: $0b
    nop                                           ; $504c: $00
    ld a, l                                       ; $504d: $7d
    nop                                           ; $504e: $00
    ret nc                                        ; $504f: $d0

    push hl                                       ; $5050: $e5
    cp e                                          ; $5051: $bb
    xor d                                         ; $5052: $aa
    cp e                                          ; $5053: $bb
    xor d                                         ; $5054: $aa
    cp d                                          ; $5055: $ba
    cp $e0                                        ; $5056: $fe $e0
    jp z, $e5ff                                   ; $5058: $ca $ff $e5

    sbc d                                         ; $505b: $9a
    cp $e0                                        ; $505c: $fe $e0
    sbc c                                         ; $505e: $99
    cp $e1                                        ; $505f: $fe $e1
    cp b                                          ; $5061: $b8
    ld [$bbbb], a                                 ; $5062: $ea $bb $bb
    db $db                                        ; $5065: $db
    adc b                                         ; $5066: $88
    adc b                                         ; $5067: $88
    sbc b                                         ; $5068: $98
    db $e3                                        ; $5069: $e3
    call z, $88cc                                 ; $506a: $cc $cc $88
    db $e4                                        ; $506d: $e4
    cp $0f                                        ; $506e: $fe $0f
    ld a, e                                       ; $5070: $7b
    xor $00                                       ; $5071: $ee $00
    ld l, b                                       ; $5073: $68
    ldh [$ed], a                                  ; $5074: $e0 $ed
    db $dd                                        ; $5076: $dd
    xor $d0                                       ; $5077: $ee $d0
    ld h, c                                       ; $5079: $61
    ldh [rP1], a                                  ; $507a: $e0 $00
    ld c, b                                       ; $507c: $48
    rst $38                                       ; $507d: $ff
    ld c, b                                       ; $507e: $48
    rst $38                                       ; $507f: $ff
    sub b                                         ; $5080: $90
    ld [$ff48], a                                 ; $5081: $ea $48 $ff
    ld c, b                                       ; $5084: $48
    rst $38                                       ; $5085: $ff
    ld c, b                                       ; $5086: $48
    rst $38                                       ; $5087: $ff
    rst $38                                       ; $5088: $ff
    rst $38                                       ; $5089: $ff
    rst $38                                       ; $508a: $ff
    rst $38                                       ; $508b: $ff
    ld hl, sp-$01                                 ; $508c: $f8 $ff
    rst $38                                       ; $508e: $ff
    rst $38                                       ; $508f: $ff
    rst $38                                       ; $5090: $ff
    ld hl, sp-$09                                 ; $5091: $f8 $f7
    ld c, $ee                                     ; $5093: $0e $ee
    call $bcee                                    ; $5095: $cd $ee $bc
    rst $38                                       ; $5098: $ff
    ret nc                                        ; $5099: $d0

    cp e                                          ; $509a: $bb
    or b                                          ; $509b: $b0
    xor $e0                                       ; $509c: $ee $e0
    xor $f8                                       ; $509e: $ee $f8
    rrca                                          ; $50a0: $0f
    rst $30                                       ; $50a1: $f7
    adc c                                         ; $50a2: $89
    add hl, bc                                    ; $50a3: $09
    sbc c                                         ; $50a4: $99
    db $db                                        ; $50a5: $db
    and h                                         ; $50a6: $a4
    ldh [$dd], a                                  ; $50a7: $e0 $dd
    rst $28                                       ; $50a9: $ef
    db $dd                                        ; $50aa: $dd
    rst $10                                       ; $50ab: $d7
    rst $28                                       ; $50ac: $ef
    ret nc                                        ; $50ad: $d0

    rrca                                          ; $50ae: $0f
    ret nz                                        ; $50af: $c0

    ld [c], a                                     ; $50b0: $e2
    inc c                                         ; $50b1: $0c
    cp d                                          ; $50b2: $ba
    pop hl                                        ; $50b3: $e1
    db $dd                                        ; $50b4: $dd
    ret nc                                        ; $50b5: $d0

    or e                                          ; $50b6: $b3
    call z, Call_000_10cc                         ; $50b7: $cc $cc $10
    pop bc                                        ; $50ba: $c1
    ld a, [c]                                     ; $50bb: $f2
    and d                                         ; $50bc: $a2
    ld [$d800], sp                                ; $50bd: $08 $00 $d8
    ldh [$f0], a                                  ; $50c0: $e0 $f0
    rra                                           ; $50c2: $1f
    nop                                           ; $50c3: $00
    adc b                                         ; $50c4: $88
    nop                                           ; $50c5: $00
    sbc c                                         ; $50c6: $99
    sub b                                         ; $50c7: $90
    sbc [hl]                                      ; $50c8: $9e
    rst $38                                       ; $50c9: $ff
    rst $38                                       ; $50ca: $ff
    rst $38                                       ; $50cb: $ff
    ld a, [c]                                     ; $50cc: $f2
    pop af                                        ; $50cd: $f1
    ld b, e                                       ; $50ce: $43
    ld [$9688], sp                                ; $50cf: $08 $88 $96
    and d                                         ; $50d2: $a2
    and b                                         ; $50d3: $a0
    ldh [$9d], a                                  ; $50d4: $e0 $9d
    and $fe                                       ; $50d6: $e6 $fe
    and b                                         ; $50d8: $a0
    inc c                                         ; $50d9: $0c
    ld [c], a                                     ; $50da: $e2
    and h                                         ; $50db: $a4
    ld bc, $bfcc                                  ; $50dc: $01 $cc $bf
    rst $38                                       ; $50df: $ff
    rst $38                                       ; $50e0: $ff
    rst $38                                       ; $50e1: $ff
    rst $38                                       ; $50e2: $ff
    rst $38                                       ; $50e3: $ff
    rst $38                                       ; $50e4: $ff
    rst $38                                       ; $50e5: $ff
    rst $38                                       ; $50e6: $ff
    rst $38                                       ; $50e7: $ff
    rst $38                                       ; $50e8: $ff
    rst $38                                       ; $50e9: $ff
    rst $38                                       ; $50ea: $ff
    rst $38                                       ; $50eb: $ff
    nop                                           ; $50ec: $00
    rst $38                                       ; $50ed: $ff
    rst $38                                       ; $50ee: $ff
    rst $38                                       ; $50ef: $ff
    rst $38                                       ; $50f0: $ff
    rst $38                                       ; $50f1: $ff
    rst $38                                       ; $50f2: $ff
    rst $38                                       ; $50f3: $ff
    rst $38                                       ; $50f4: $ff
    rst $38                                       ; $50f5: $ff
    rst $38                                       ; $50f6: $ff
    rst $38                                       ; $50f7: $ff
    rst $38                                       ; $50f8: $ff
    rst $38                                       ; $50f9: $ff
    rst $38                                       ; $50fa: $ff
    rst $38                                       ; $50fb: $ff
    rst $38                                       ; $50fc: $ff
    nop                                           ; $50fd: $00
    rst $38                                       ; $50fe: $ff
    rst $38                                       ; $50ff: $ff
    rst $38                                       ; $5100: $ff
    and $00                                       ; $5101: $e6 $00
    nop                                           ; $5103: $00
    nop                                           ; $5104: $00
    db $10                                        ; $5105: $10
    ld d, c                                       ; $5106: $51
    db $10                                        ; $5107: $10
    ld e, c                                       ; $5108: $59
    nop                                           ; $5109: $00
    nop                                           ; $510a: $00
    nop                                           ; $510b: $00
    nop                                           ; $510c: $00
    nop                                           ; $510d: $00
    nop                                           ; $510e: $00
    nop                                           ; $510f: $00
    nop                                           ; $5110: $00
    nop                                           ; $5111: $00
    nop                                           ; $5112: $00
    nop                                           ; $5113: $00
    dec b                                         ; $5114: $05
    nop                                           ; $5115: $00
    nop                                           ; $5116: $00
    nop                                           ; $5117: $00
    dec bc                                        ; $5118: $0b
    nop                                           ; $5119: $00
    nop                                           ; $511a: $00
    nop                                           ; $511b: $00
    nop                                           ; $511c: $00
    nop                                           ; $511d: $00
    ld [bc], a                                    ; $511e: $02
    nop                                           ; $511f: $00
    jr z, jr_052_5122                             ; $5120: $28 $00

jr_052_5122:
    nop                                           ; $5122: $00
    nop                                           ; $5123: $00
    sub b                                         ; $5124: $90
    nop                                           ; $5125: $00
    nop                                           ; $5126: $00
    nop                                           ; $5127: $00
    push af                                       ; $5128: $f5
    nop                                           ; $5129: $00
    ret z                                         ; $512a: $c8

    nop                                           ; $512b: $00
    nop                                           ; $512c: $00
    nop                                           ; $512d: $00
    add b                                         ; $512e: $80
    nop                                           ; $512f: $00
    nop                                           ; $5130: $00
    nop                                           ; $5131: $00
    nop                                           ; $5132: $00
    nop                                           ; $5133: $00
    ld [bc], a                                    ; $5134: $02
    nop                                           ; $5135: $00
    nop                                           ; $5136: $00
    nop                                           ; $5137: $00
    rla                                           ; $5138: $17
    nop                                           ; $5139: $00
    ld bc, $0000                                  ; $513a: $01 $00 $00
    nop                                           ; $513d: $00
    dec b                                         ; $513e: $05
    nop                                           ; $513f: $00
    ld d, b                                       ; $5140: $50
    nop                                           ; $5141: $00
    nop                                           ; $5142: $00
    nop                                           ; $5143: $00
    ret z                                         ; $5144: $c8

    nop                                           ; $5145: $00
    nop                                           ; $5146: $00
    nop                                           ; $5147: $00
    ld [$9000], a                                 ; $5148: $ea $00 $90
    nop                                           ; $514b: $00
    nop                                           ; $514c: $00
    nop                                           ; $514d: $00
    nop                                           ; $514e: $00
    nop                                           ; $514f: $00
    nop                                           ; $5150: $00

Call_052_5151:
    nop                                           ; $5151: $00
    nop                                           ; $5152: $00
    nop                                           ; $5153: $00
    ld bc, $0000                                  ; $5154: $01 $00 $00
    nop                                           ; $5157: $00
    cpl                                           ; $5158: $2f
    nop                                           ; $5159: $00
    inc bc                                        ; $515a: $03
    nop                                           ; $515b: $00
    nop                                           ; $515c: $00
    nop                                           ; $515d: $00
    ld [bc], a                                    ; $515e: $02
    nop                                           ; $515f: $00
    and b                                         ; $5160: $a0
    nop                                           ; $5161: $00
    nop                                           ; $5162: $00
    nop                                           ; $5163: $00
    ld h, h                                       ; $5164: $64
    nop                                           ; $5165: $00
    nop                                           ; $5166: $00
    nop                                           ; $5167: $00
    call nc, Call_000_2000                        ; $5168: $d4 $00 $20
    nop                                           ; $516b: $00
    nop                                           ; $516c: $00
    nop                                           ; $516d: $00
    add b                                         ; $516e: $80
    nop                                           ; $516f: $00
    ld bc, $0000                                  ; $5170: $01 $00 $00
    nop                                           ; $5173: $00
    nop                                           ; $5174: $00
    nop                                           ; $5175: $00
    nop                                           ; $5176: $00
    nop                                           ; $5177: $00
    ld e, a                                       ; $5178: $5f
    nop                                           ; $5179: $00
    ld b, $00                                     ; $517a: $06 $00
    nop                                           ; $517c: $00
    nop                                           ; $517d: $00
    dec b                                         ; $517e: $05
    nop                                           ; $517f: $00
    ld b, b                                       ; $5180: $40
    nop                                           ; $5181: $00
    nop                                           ; $5182: $00
    nop                                           ; $5183: $00
    or d                                          ; $5184: $b2
    nop                                           ; $5185: $00
    nop                                           ; $5186: $00
    nop                                           ; $5187: $00
    xor b                                         ; $5188: $a8
    nop                                           ; $5189: $00
    ld b, b                                       ; $518a: $40
    nop                                           ; $518b: $00
    nop                                           ; $518c: $00
    nop                                           ; $518d: $00
    nop                                           ; $518e: $00
    nop                                           ; $518f: $00
    ld [bc], a                                    ; $5190: $02
    nop                                           ; $5191: $00
    nop                                           ; $5192: $00
    nop                                           ; $5193: $00
    nop                                           ; $5194: $00
    nop                                           ; $5195: $00
    nop                                           ; $5196: $00
    nop                                           ; $5197: $00
    cp a                                          ; $5198: $bf
    nop                                           ; $5199: $00
    inc c                                         ; $519a: $0c
    nop                                           ; $519b: $00
    nop                                           ; $519c: $00
    nop                                           ; $519d: $00
    ld [bc], a                                    ; $519e: $02
    nop                                           ; $519f: $00
    add b                                         ; $51a0: $80
    nop                                           ; $51a1: $00
    nop                                           ; $51a2: $00
    nop                                           ; $51a3: $00
    ld e, c                                       ; $51a4: $59
    nop                                           ; $51a5: $00
    nop                                           ; $51a6: $00
    nop                                           ; $51a7: $00
    ld d, b                                       ; $51a8: $50
    nop                                           ; $51a9: $00
    add b                                         ; $51aa: $80
    nop                                           ; $51ab: $00
    nop                                           ; $51ac: $00
    nop                                           ; $51ad: $00
    add b                                         ; $51ae: $80
    nop                                           ; $51af: $00
    db $ec                                        ; $51b0: $ec
    rst $38                                       ; $51b1: $ff
    ld hl, sp-$01                                 ; $51b2: $f8 $ff
    ldh [$fe], a                                  ; $51b4: $e0 $fe
    ld b, d                                       ; $51b6: $42
    ld hl, sp-$38                                 ; $51b7: $f8 $c8
    ldh a, [$80]                                  ; $51b9: $f0 $80
    ldh [rNR10], a                                ; $51bb: $e0 $10
    ldh [rP1], a                                  ; $51bd: $e0 $00
    ret nz                                        ; $51bf: $c0

    rst $38                                       ; $51c0: $ff
    rst $38                                       ; $51c1: $ff
    rst $38                                       ; $51c2: $ff
    rst $38                                       ; $51c3: $ff
    rst $38                                       ; $51c4: $ff
    rst $38                                       ; $51c5: $ff
    rst $30                                       ; $51c6: $f7
    rst $38                                       ; $51c7: $ff
    cp h                                          ; $51c8: $bc
    rst $38                                       ; $51c9: $ff
    add sp, -$01                                  ; $51ca: $e8 $ff
    add c                                         ; $51cc: $81
    cp $08                                        ; $51cd: $fe $08
    ldh a, [$bc]                                  ; $51cf: $f0 $bc
    rst $38                                       ; $51d1: $ff

jr_052_51d2:
    add sp, -$01                                  ; $51d2: $e8 $ff
    add c                                         ; $51d4: $81
    cp $08                                        ; $51d5: $fe $08
    ldh a, [rNR41]                                ; $51d7: $f0 $20
    ret nz                                        ; $51d9: $c0

    nop                                           ; $51da: $00
    nop                                           ; $51db: $00
    nop                                           ; $51dc: $00
    nop                                           ; $51dd: $00
    nop                                           ; $51de: $00
    nop                                           ; $51df: $00

jr_052_51e0:
    ld a, a                                       ; $51e0: $7f
    rst $38                                       ; $51e1: $ff
    cpl                                           ; $51e2: $2f
    rst $38                                       ; $51e3: $ff
    ccf                                           ; $51e4: $3f
    rst $38                                       ; $51e5: $ff
    rra                                           ; $51e6: $1f
    rst $38                                       ; $51e7: $ff
    or a                                          ; $51e8: $b7
    ld a, a                                       ; $51e9: $7f
    rra                                           ; $51ea: $1f
    ld a, a                                       ; $51eb: $7f
    rrca                                          ; $51ec: $0f
    ld a, a                                       ; $51ed: $7f
    ld c, a                                       ; $51ee: $4f
    ccf                                           ; $51ef: $3f
    rlca                                          ; $51f0: $07
    rra                                           ; $51f1: $1f
    ld [bc], a                                    ; $51f2: $02
    rra                                           ; $51f3: $1f
    inc de                                        ; $51f4: $13
    rrca                                          ; $51f5: $0f
    ld bc, $0b0f                                  ; $51f6: $01 $0f $0b
    rlca                                          ; $51f9: $07
    ld bc, $0007                                  ; $51fa: $01 $07 $00
    rlca                                          ; $51fd: $07
    inc b                                         ; $51fe: $04
    inc bc                                        ; $51ff: $03
    ld e, h                                       ; $5200: $5c
    rst $38                                       ; $5201: $ff
    nop                                           ; $5202: $00
    rst $38                                       ; $5203: $ff
    add c                                         ; $5204: $81
    inc a                                         ; $5205: $3c
    stop                                          ; $5206: $10 $00
    nop                                           ; $5208: $00
    nop                                           ; $5209: $00
    nop                                           ; $520a: $00
    nop                                           ; $520b: $00
    nop                                           ; $520c: $00
    nop                                           ; $520d: $00
    nop                                           ; $520e: $00
    nop                                           ; $520f: $00
    jr nz, jr_052_51d2                            ; $5210: $20 $c0

    add b                                         ; $5212: $80
    ret nz                                        ; $5213: $c0

    nop                                           ; $5214: $00
    ldh [$90], a                                  ; $5215: $e0 $90
    ldh [$80], a                                  ; $5217: $e0 $80
    ldh [$80], a                                  ; $5219: $e0 $80
    ldh [rP1], a                                  ; $521b: $e0 $00
    ret nz                                        ; $521d: $c0

    jr nz, jr_052_51e0                            ; $521e: $20 $c0

    rst $38                                       ; $5220: $ff
    rst $38                                       ; $5221: $ff

jr_052_5222:
    ld a, l                                       ; $5222: $7d
    rst $38                                       ; $5223: $ff
    rst $28                                       ; $5224: $ef
    rst $38                                       ; $5225: $ff
    ld a, [hl-]                                   ; $5226: $3a
    rst $38                                       ; $5227: $ff
    nop                                           ; $5228: $00
    rst $38                                       ; $5229: $ff
    add c                                         ; $522a: $81
    inc a                                         ; $522b: $3c
    ld [$0000], sp                                ; $522c: $08 $00 $00
    nop                                           ; $522f: $00
    and h                                         ; $5230: $a4
    ld hl, sp-$20                                 ; $5231: $f8 $e0
    ld hl, sp-$10                                 ; $5233: $f8 $f0
    db $fc                                        ; $5235: $fc
    ret nc                                        ; $5236: $d0

    db $fc                                        ; $5237: $fc
    ld a, [c]                                     ; $5238: $f2
    db $fc                                        ; $5239: $fc
    ldh [$fc], a                                  ; $523a: $e0 $fc
    or b                                          ; $523c: $b0
    ld hl, sp-$1c                                 ; $523d: $f8 $e4
    ld hl, sp-$01                                 ; $523f: $f8 $ff
    rst $38                                       ; $5241: $ff
    rst $38                                       ; $5242: $ff
    rst $38                                       ; $5243: $ff
    rst $38                                       ; $5244: $ff
    rst $38                                       ; $5245: $ff
    rst $30                                       ; $5246: $f7
    rst $38                                       ; $5247: $ff
    cp [hl]                                       ; $5248: $be
    rst $38                                       ; $5249: $ff
    db $e3                                        ; $524a: $e3
    rst $38                                       ; $524b: $ff
    ld b, b                                       ; $524c: $40
    rst $38                                       ; $524d: $ff
    nop                                           ; $524e: $00
    rst $20                                       ; $524f: $e7
    db $fc                                        ; $5250: $fc
    rst $38                                       ; $5251: $ff

jr_052_5252:
    or $ff                                        ; $5252: $f6 $ff
    db $fc                                        ; $5254: $fc
    rst $38                                       ; $5255: $ff
    ld hl, sp-$02                                 ; $5256: $f8 $fe
    add sp, -$02                                  ; $5258: $e8 $fe
    ld hl, sp-$01                                 ; $525a: $f8 $ff
    db $fc                                        ; $525c: $fc
    rst $38                                       ; $525d: $ff
    db $f4                                        ; $525e: $f4
    rst $38                                       ; $525f: $ff
    jr nz, jr_052_5222                            ; $5260: $20 $c0

    nop                                           ; $5262: $00
    add b                                         ; $5263: $80
    nop                                           ; $5264: $00
    nop                                           ; $5265: $00
    nop                                           ; $5266: $00
    nop                                           ; $5267: $00
    nop                                           ; $5268: $00
    nop                                           ; $5269: $00
    nop                                           ; $526a: $00
    nop                                           ; $526b: $00
    nop                                           ; $526c: $00
    nop                                           ; $526d: $00

jr_052_526e:
    nop                                           ; $526e: $00
    nop                                           ; $526f: $00
    nop                                           ; $5270: $00
    ret nz                                        ; $5271: $c0

    nop                                           ; $5272: $00
    add b                                         ; $5273: $80
    add b                                         ; $5274: $80
    nop                                           ; $5275: $00
    nop                                           ; $5276: $00
    nop                                           ; $5277: $00
    nop                                           ; $5278: $00
    nop                                           ; $5279: $00
    nop                                           ; $527a: $00
    nop                                           ; $527b: $00
    nop                                           ; $527c: $00
    nop                                           ; $527d: $00
    nop                                           ; $527e: $00
    nop                                           ; $527f: $00
    nop                                           ; $5280: $00
    ret nz                                        ; $5281: $c0

    ld b, b                                       ; $5282: $40
    add b                                         ; $5283: $80
    nop                                           ; $5284: $00
    nop                                           ; $5285: $00
    nop                                           ; $5286: $00
    nop                                           ; $5287: $00
    nop                                           ; $5288: $00
    nop                                           ; $5289: $00
    nop                                           ; $528a: $00
    nop                                           ; $528b: $00
    nop                                           ; $528c: $00
    nop                                           ; $528d: $00
    nop                                           ; $528e: $00
    nop                                           ; $528f: $00
    jr nz, jr_052_5252                            ; $5290: $20 $c0

    nop                                           ; $5292: $00
    add b                                         ; $5293: $80
    add b                                         ; $5294: $80
    nop                                           ; $5295: $00
    nop                                           ; $5296: $00
    nop                                           ; $5297: $00
    nop                                           ; $5298: $00
    nop                                           ; $5299: $00
    nop                                           ; $529a: $00
    nop                                           ; $529b: $00
    nop                                           ; $529c: $00
    nop                                           ; $529d: $00
    nop                                           ; $529e: $00
    nop                                           ; $529f: $00
    db $ec                                        ; $52a0: $ec
    rst $38                                       ; $52a1: $ff
    ld sp, hl                                     ; $52a2: $f9
    cp $e6                                        ; $52a3: $fe $e6
    ld hl, sp+$48                                 ; $52a5: $f8 $48
    ldh a, [$d0]                                  ; $52a7: $f0 $d0
    ldh [$a8], a                                  ; $52a9: $e0 $a8
    ret nz                                        ; $52ab: $c0

    jr nz, jr_052_526e                            ; $52ac: $20 $c0

    ld b, b                                       ; $52ae: $40
    add b                                         ; $52af: $80
    rst $38                                       ; $52b0: $ff
    rst $38                                       ; $52b1: $ff
    rst $38                                       ; $52b2: $ff
    rst $38                                       ; $52b3: $ff
    rst $38                                       ; $52b4: $ff
    rst $38                                       ; $52b5: $ff
    rst $30                                       ; $52b6: $f7
    rst $38                                       ; $52b7: $ff
    cp h                                          ; $52b8: $bc
    rst $38                                       ; $52b9: $ff
    jp hl                                         ; $52ba: $e9


    cp $8e                                        ; $52bb: $fe $8e
    ldh a, [$30]                                  ; $52bd: $f0 $30
    ret nz                                        ; $52bf: $c0

    cp h                                          ; $52c0: $bc
    rst $38                                       ; $52c1: $ff
    jp hl                                         ; $52c2: $e9


    cp $8e                                        ; $52c3: $fe $8e
    ldh a, [$30]                                  ; $52c5: $f0 $30
    ret nz                                        ; $52c7: $c0

    ret z                                         ; $52c8: $c8

    nop                                           ; $52c9: $00
    nop                                           ; $52ca: $00
    nop                                           ; $52cb: $00
    nop                                           ; $52cc: $00
    nop                                           ; $52cd: $00
    nop                                           ; $52ce: $00
    nop                                           ; $52cf: $00
    ld a, a                                       ; $52d0: $7f
    rst $38                                       ; $52d1: $ff
    cpl                                           ; $52d2: $2f
    rst $38                                       ; $52d3: $ff
    cp a                                          ; $52d4: $bf
    ld a, a                                       ; $52d5: $7f
    sbc a                                         ; $52d6: $9f
    ld a, a                                       ; $52d7: $7f
    ld [hl], a                                    ; $52d8: $77
    ccf                                           ; $52d9: $3f
    ld e, a                                       ; $52da: $5f
    ccf                                           ; $52db: $3f
    ld c, a                                       ; $52dc: $4f
    ccf                                           ; $52dd: $3f
    cpl                                           ; $52de: $2f
    rra                                           ; $52df: $1f
    rla                                           ; $52e0: $17
    rrca                                          ; $52e1: $0f
    ld [de], a                                    ; $52e2: $12
    rrca                                          ; $52e3: $0f
    dec bc                                        ; $52e4: $0b
    rlca                                          ; $52e5: $07
    add hl, bc                                    ; $52e6: $09
    rlca                                          ; $52e7: $07
    rla                                           ; $52e8: $17
    inc bc                                        ; $52e9: $03
    dec b                                         ; $52ea: $05
    inc bc                                        ; $52eb: $03
    inc b                                         ; $52ec: $04
    inc bc                                        ; $52ed: $03
    ld [bc], a                                    ; $52ee: $02
    ld bc, $ff5c                                  ; $52ef: $01 $5c $ff
    jp Jump_000_3c3c                              ; $52f2: $c3 $3c $3c


    nop                                           ; $52f5: $00
    ld [bc], a                                    ; $52f6: $02
    nop                                           ; $52f7: $00
    nop                                           ; $52f8: $00
    nop                                           ; $52f9: $00
    nop                                           ; $52fa: $00
    nop                                           ; $52fb: $00
    nop                                           ; $52fc: $00
    nop                                           ; $52fd: $00
    nop                                           ; $52fe: $00
    nop                                           ; $52ff: $00
    ld b, b                                       ; $5300: $40
    add b                                         ; $5301: $80
    ret nz                                        ; $5302: $c0

    add b                                         ; $5303: $80
    jr nz, @-$3e                                  ; $5304: $20 $c0

    and b                                         ; $5306: $a0
    ret nz                                        ; $5307: $c0

    and b                                         ; $5308: $a0
    ret nz                                        ; $5309: $c0

    and b                                         ; $530a: $a0
    ret nz                                        ; $530b: $c0

    ld d, b                                       ; $530c: $50
    add b                                         ; $530d: $80
    ld b, b                                       ; $530e: $40
    add b                                         ; $530f: $80
    rst $38                                       ; $5310: $ff
    rst $38                                       ; $5311: $ff
    ld a, l                                       ; $5312: $7d
    rst $38                                       ; $5313: $ff
    rst $28                                       ; $5314: $ef
    rst $38                                       ; $5315: $ff
    ld a, [hl-]                                   ; $5316: $3a
    rst $38                                       ; $5317: $ff
    jp Jump_000_3c3c                              ; $5318: $c3 $3c $3c


    nop                                           ; $531b: $00
    ld b, b                                       ; $531c: $40
    nop                                           ; $531d: $00
    nop                                           ; $531e: $00
    nop                                           ; $531f: $00
    xor b                                         ; $5320: $a8
    ldh a, [$ea]                                  ; $5321: $f0 $ea
    ldh a, [$f4]                                  ; $5323: $f0 $f4
    ld hl, sp-$2c                                 ; $5325: $f8 $d4
    ld hl, sp-$0c                                 ; $5327: $f8 $f4
    ld hl, sp-$1c                                 ; $5329: $f8 $e4
    ld hl, sp-$48                                 ; $532b: $f8 $b8
    ldh a, [$e8]                                  ; $532d: $f0 $e8
    ldh a, [rIE]                                  ; $532f: $f0 $ff
    rst $38                                       ; $5331: $ff
    rst $38                                       ; $5332: $ff
    rst $38                                       ; $5333: $ff
    rst $38                                       ; $5334: $ff
    rst $38                                       ; $5335: $ff
    rst $30                                       ; $5336: $f7
    rst $38                                       ; $5337: $ff
    cp [hl]                                       ; $5338: $be
    rst $38                                       ; $5339: $ff
    db $e3                                        ; $533a: $e3
    rst $38                                       ; $533b: $ff
    ld e, b                                       ; $533c: $58
    rst $20                                       ; $533d: $e7
    ld h, [hl]                                    ; $533e: $66
    add c                                         ; $533f: $81
    db $fc                                        ; $5340: $fc
    rst $38                                       ; $5341: $ff
    rst $30                                       ; $5342: $f7
    cp $fd                                        ; $5343: $fe $fd
    cp $fa                                        ; $5345: $fe $fa
    db $fc                                        ; $5347: $fc
    ld [$f9fc], a                                 ; $5348: $ea $fc $f9
    cp $fd                                        ; $534b: $fe $fd
    cp $f4                                        ; $534d: $fe $f4
    rst $38                                       ; $534f: $ff
    ld c, b                                       ; $5350: $48
    add b                                         ; $5351: $80
    add b                                         ; $5352: $80
    nop                                           ; $5353: $00
    nop                                           ; $5354: $00
    nop                                           ; $5355: $00
    nop                                           ; $5356: $00
    nop                                           ; $5357: $00
    nop                                           ; $5358: $00
    nop                                           ; $5359: $00
    nop                                           ; $535a: $00
    nop                                           ; $535b: $00
    nop                                           ; $535c: $00
    nop                                           ; $535d: $00
    nop                                           ; $535e: $00
    nop                                           ; $535f: $00
    ld b, b                                       ; $5360: $40
    add b                                         ; $5361: $80
    add b                                         ; $5362: $80
    nop                                           ; $5363: $00
    nop                                           ; $5364: $00
    nop                                           ; $5365: $00
    nop                                           ; $5366: $00
    nop                                           ; $5367: $00
    add b                                         ; $5368: $80
    nop                                           ; $5369: $00
    nop                                           ; $536a: $00
    nop                                           ; $536b: $00
    nop                                           ; $536c: $00
    nop                                           ; $536d: $00
    nop                                           ; $536e: $00
    nop                                           ; $536f: $00
    ret nz                                        ; $5370: $c0

    nop                                           ; $5371: $00
    add b                                         ; $5372: $80
    nop                                           ; $5373: $00
    nop                                           ; $5374: $00
    nop                                           ; $5375: $00
    nop                                           ; $5376: $00
    nop                                           ; $5377: $00
    nop                                           ; $5378: $00
    nop                                           ; $5379: $00
    nop                                           ; $537a: $00
    nop                                           ; $537b: $00
    nop                                           ; $537c: $00
    nop                                           ; $537d: $00
    nop                                           ; $537e: $00

Jump_052_537f:
    nop                                           ; $537f: $00
    add b                                         ; $5380: $80
    nop                                           ; $5381: $00
    nop                                           ; $5382: $00
    nop                                           ; $5383: $00
    nop                                           ; $5384: $00
    nop                                           ; $5385: $00
    nop                                           ; $5386: $00
    nop                                           ; $5387: $00
    nop                                           ; $5388: $00
    nop                                           ; $5389: $00
    nop                                           ; $538a: $00
    nop                                           ; $538b: $00
    nop                                           ; $538c: $00
    nop                                           ; $538d: $00
    nop                                           ; $538e: $00
    nop                                           ; $538f: $00
    db $ed                                        ; $5390: $ed
    cp $fe                                        ; $5391: $fe $fe
    ld hl, sp-$18                                 ; $5393: $f8 $e8
    ldh a, [rHDMA2]                               ; $5395: $f0 $52
    ldh [$e8], a                                  ; $5397: $e0 $e8
    ret nz                                        ; $5399: $c0

    ret nz                                        ; $539a: $c0

    add b                                         ; $539b: $80
    ld d, b                                       ; $539c: $50
    add b                                         ; $539d: $80
    add b                                         ; $539e: $80
    nop                                           ; $539f: $00
    rst $38                                       ; $53a0: $ff
    rst $38                                       ; $53a1: $ff
    rst $38                                       ; $53a2: $ff
    rst $38                                       ; $53a3: $ff
    rst $38                                       ; $53a4: $ff
    rst $38                                       ; $53a5: $ff
    rst $30                                       ; $53a6: $f7
    rst $38                                       ; $53a7: $ff
    cp l                                          ; $53a8: $bd
    cp $ee                                        ; $53a9: $fe $ee
    ldh a, [$b1]                                  ; $53ab: $f0 $b1
    ret nz                                        ; $53ad: $c0

    ret z                                         ; $53ae: $c8

    nop                                           ; $53af: $00
    cp l                                          ; $53b0: $bd
    cp $ee                                        ; $53b1: $fe $ee
    ldh a, [$b1]                                  ; $53b3: $f0 $b1
    ret nz                                        ; $53b5: $c0

    ret z                                         ; $53b6: $c8

    nop                                           ; $53b7: $00
    jr nz, jr_052_53ba                            ; $53b8: $20 $00

jr_052_53ba:
    nop                                           ; $53ba: $00
    nop                                           ; $53bb: $00
    nop                                           ; $53bc: $00
    nop                                           ; $53bd: $00
    nop                                           ; $53be: $00
    nop                                           ; $53bf: $00
    rst $38                                       ; $53c0: $ff
    ld a, a                                       ; $53c1: $7f
    xor a                                         ; $53c2: $af
    ld a, a                                       ; $53c3: $7f
    ld a, a                                       ; $53c4: $7f
    ccf                                           ; $53c5: $3f
    ld e, a                                       ; $53c6: $5f
    ccf                                           ; $53c7: $3f
    or a                                          ; $53c8: $b7
    rra                                           ; $53c9: $1f
    ccf                                           ; $53ca: $3f
    rra                                           ; $53cb: $1f
    cpl                                           ; $53cc: $2f
    rra                                           ; $53cd: $1f
    ld e, a                                       ; $53ce: $5f
    rrca                                          ; $53cf: $0f
    rrca                                          ; $53d0: $0f
    rlca                                          ; $53d1: $07
    ld a, [bc]                                    ; $53d2: $0a
    rlca                                          ; $53d3: $07
    rla                                           ; $53d4: $17
    inc bc                                        ; $53d5: $03
    dec b                                         ; $53d6: $05
    inc bc                                        ; $53d7: $03
    dec bc                                        ; $53d8: $0b
    ld bc, $0103                                  ; $53d9: $01 $03 $01
    ld [bc], a                                    ; $53dc: $02
    ld bc, $0005                                  ; $53dd: $01 $05 $00
    rst $18                                       ; $53e0: $df
    inc a                                         ; $53e1: $3c
    inc a                                         ; $53e2: $3c
    nop                                           ; $53e3: $00
    ld b, d                                       ; $53e4: $42
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
    add b                                         ; $53f0: $80
    nop                                           ; $53f1: $00
    and b                                         ; $53f2: $a0
    nop                                           ; $53f3: $00
    ld b, b                                       ; $53f4: $40
    add b                                         ; $53f5: $80
    ret nz                                        ; $53f6: $c0

    add b                                         ; $53f7: $80
    ret nz                                        ; $53f8: $c0

    add b                                         ; $53f9: $80
    ret nz                                        ; $53fa: $c0

    add b                                         ; $53fb: $80
    and b                                         ; $53fc: $a0
    nop                                           ; $53fd: $00
    add b                                         ; $53fe: $80
    nop                                           ; $53ff: $00
    rst $38                                       ; $5400: $ff
    rst $38                                       ; $5401: $ff
    ld a, l                                       ; $5402: $7d
    rst $38                                       ; $5403: $ff
    rst $28                                       ; $5404: $ef
    rst $38                                       ; $5405: $ff
    ei                                            ; $5406: $fb
    inc a                                         ; $5407: $3c
    inc a                                         ; $5408: $3c
    nop                                           ; $5409: $00
    ld b, d                                       ; $540a: $42
    nop                                           ; $540b: $00
    nop                                           ; $540c: $00
    nop                                           ; $540d: $00
    nop                                           ; $540e: $00
    nop                                           ; $540f: $00
    or b                                          ; $5410: $b0
    ldh [$f4], a                                  ; $5411: $e0 $f4
    ldh [$f8], a                                  ; $5413: $e0 $f8
    ldh a, [$d8]                                  ; $5415: $f0 $d8
    ldh a, [$f8]                                  ; $5417: $f0 $f8
    ldh a, [$e8]                                  ; $5419: $f0 $e8
    ldh a, [$b4]                                  ; $541b: $f0 $b4
    ldh [$f0], a                                  ; $541d: $e0 $f0
    ldh [rIE], a                                  ; $541f: $e0 $ff
    rst $38                                       ; $5421: $ff
    rst $38                                       ; $5422: $ff
    rst $38                                       ; $5423: $ff
    rst $38                                       ; $5424: $ff
    rst $38                                       ; $5425: $ff
    rst $30                                       ; $5426: $f7
    rst $38                                       ; $5427: $ff
    cp [hl]                                       ; $5428: $be
    rst $38                                       ; $5429: $ff
    ei                                            ; $542a: $fb
    rst $20                                       ; $542b: $e7
    ld h, [hl]                                    ; $542c: $66
    add c                                         ; $542d: $81
    sub c                                         ; $542e: $91
    nop                                           ; $542f: $00
    db $fd                                        ; $5430: $fd
    cp $f6                                        ; $5431: $fe $f6
    db $fc                                        ; $5433: $fc
    cp $fc                                        ; $5434: $fe $fc
    db $fd                                        ; $5436: $fd
    ld hl, sp-$14                                 ; $5437: $f8 $ec
    ld hl, sp-$06                                 ; $5439: $f8 $fa
    db $fc                                        ; $543b: $fc
    cp $fc                                        ; $543c: $fe $fc
    push af                                       ; $543e: $f5
    cp $20                                        ; $543f: $fe $20
    nop                                           ; $5441: $00
    nop                                           ; $5442: $00
    nop                                           ; $5443: $00
    nop                                           ; $5444: $00
    nop                                           ; $5445: $00
    nop                                           ; $5446: $00
    nop                                           ; $5447: $00
    nop                                           ; $5448: $00
    nop                                           ; $5449: $00
    nop                                           ; $544a: $00
    nop                                           ; $544b: $00
    nop                                           ; $544c: $00
    nop                                           ; $544d: $00
    nop                                           ; $544e: $00
    nop                                           ; $544f: $00
    nop                                           ; $5450: $00
    nop                                           ; $5451: $00
    nop                                           ; $5452: $00
    nop                                           ; $5453: $00
    add b                                         ; $5454: $80
    nop                                           ; $5455: $00
    nop                                           ; $5456: $00
    nop                                           ; $5457: $00
    nop                                           ; $5458: $00
    nop                                           ; $5459: $00
    nop                                           ; $545a: $00
    nop                                           ; $545b: $00
    nop                                           ; $545c: $00
    nop                                           ; $545d: $00
    nop                                           ; $545e: $00
    nop                                           ; $545f: $00
    and b                                         ; $5460: $a0
    nop                                           ; $5461: $00
    nop                                           ; $5462: $00
    nop                                           ; $5463: $00
    add b                                         ; $5464: $80
    nop                                           ; $5465: $00
    nop                                           ; $5466: $00
    nop                                           ; $5467: $00
    nop                                           ; $5468: $00
    nop                                           ; $5469: $00
    nop                                           ; $546a: $00
    nop                                           ; $546b: $00
    nop                                           ; $546c: $00
    nop                                           ; $546d: $00
    nop                                           ; $546e: $00
    nop                                           ; $546f: $00
    nop                                           ; $5470: $00
    nop                                           ; $5471: $00
    ld b, b                                       ; $5472: $40
    nop                                           ; $5473: $00
    nop                                           ; $5474: $00
    nop                                           ; $5475: $00
    nop                                           ; $5476: $00
    nop                                           ; $5477: $00
    nop                                           ; $5478: $00
    nop                                           ; $5479: $00
    nop                                           ; $547a: $00
    nop                                           ; $547b: $00
    nop                                           ; $547c: $00
    nop                                           ; $547d: $00
    nop                                           ; $547e: $00
    nop                                           ; $547f: $00
    ld [bc], a                                    ; $5480: $02
    add c                                         ; $5481: $81
    and b                                         ; $5482: $a0
    pop bc                                        ; $5483: $c1
    add b                                         ; $5484: $80
    pop bc                                        ; $5485: $c1
    add l                                         ; $5486: $85
    jp $c3a1                                      ; $5487: $c3 $a1 $c3


    nop                                           ; $548a: $00
    add e                                         ; $548b: $83
    dec b                                         ; $548c: $05
    add e                                         ; $548d: $83
    ld b, b                                       ; $548e: $40
    add c                                         ; $548f: $81
    ld b, c                                       ; $5490: $41
    add b                                         ; $5491: $80
    nop                                           ; $5492: $00
    add b                                         ; $5493: $80
    add b                                         ; $5494: $80
    ret nz                                        ; $5495: $c0

    and b                                         ; $5496: $a0
    ret nz                                        ; $5497: $c0

    ret nz                                        ; $5498: $c0

    ldh [rBCPS], a                                ; $5499: $e0 $68
    ldh a, [$f1]                                  ; $549b: $f0 $f1
    db $fc                                        ; $549d: $fc
    call c, Call_000_1eff                         ; $549e: $dc $ff $1e
    rst $38                                       ; $54a1: $ff
    add b                                         ; $54a2: $80
    ld e, $12                                     ; $54a3: $1e $12
    nop                                           ; $54a5: $00
    nop                                           ; $54a6: $00
    nop                                           ; $54a7: $00
    nop                                           ; $54a8: $00
    nop                                           ; $54a9: $00
    ld c, b                                       ; $54aa: $48
    nop                                           ; $54ab: $00
    ld bc, $5878                                  ; $54ac: $01 $78 $58
    rst $38                                       ; $54af: $ff
    ld b, b                                       ; $54b0: $40
    add c                                         ; $54b1: $81
    add d                                         ; $54b2: $82
    pop bc                                        ; $54b3: $c1
    and b                                         ; $54b4: $a0
    pop bc                                        ; $54b5: $c1
    and c                                         ; $54b6: $a1
    jp $c385                                      ; $54b7: $c3 $85 $c3


    inc b                                         ; $54ba: $04
    add e                                         ; $54bb: $83
    ld b, c                                       ; $54bc: $41
    add e                                         ; $54bd: $83
    ld [bc], a                                    ; $54be: $02
    add c                                         ; $54bf: $81
    nop                                           ; $54c0: $00
    add b                                         ; $54c1: $80
    nop                                           ; $54c2: $00
    add b                                         ; $54c3: $80
    and b                                         ; $54c4: $a0
    ret nz                                        ; $54c5: $c0

    add b                                         ; $54c6: $80
    ret nz                                        ; $54c7: $c0

    ret nc                                        ; $54c8: $d0

    ldh [$64], a                                  ; $54c9: $e0 $64
    ldh a, [$f0]                                  ; $54cb: $f0 $f0
    db $fc                                        ; $54cd: $fc
    call c, Call_000_1eff                         ; $54ce: $dc $ff $1e
    rst $38                                       ; $54d1: $ff
    ld b, c                                       ; $54d2: $41
    ld e, $0c                                     ; $54d3: $1e $0c
    nop                                           ; $54d5: $00
    nop                                           ; $54d6: $00
    nop                                           ; $54d7: $00
    nop                                           ; $54d8: $00
    nop                                           ; $54d9: $00
    jr nc, jr_052_54dc                            ; $54da: $30 $00

jr_052_54dc:
    add d                                         ; $54dc: $82
    ld a, b                                       ; $54dd: $78
    ld e, b                                       ; $54de: $58
    rst $38                                       ; $54df: $ff
    nop                                           ; $54e0: $00
    ret nz                                        ; $54e1: $c0

    ld b, b                                       ; $54e2: $40
    add b                                         ; $54e3: $80
    nop                                           ; $54e4: $00
    nop                                           ; $54e5: $00
    nop                                           ; $54e6: $00
    nop                                           ; $54e7: $00
    nop                                           ; $54e8: $00
    nop                                           ; $54e9: $00
    nop                                           ; $54ea: $00
    nop                                           ; $54eb: $00
    ld [bc], a                                    ; $54ec: $02
    ld bc, $0300                                  ; $54ed: $01 $00 $03
    or $ff                                        ; $54f0: $f6 $ff
    db $fc                                        ; $54f2: $fc
    rst $38                                       ; $54f3: $ff
    or b                                          ; $54f4: $b0
    rst $38                                       ; $54f5: $ff
    pop hl                                        ; $54f6: $e1
    cp $80                                        ; $54f7: $fe $80
    ld hl, sp+$08                                 ; $54f9: $f8 $08
    ldh a, [rSC]                                  ; $54fb: $f0 $02
    db $fc                                        ; $54fd: $fc
    and b                                         ; $54fe: $a0
    rst $38                                       ; $54ff: $ff
    ld sp, hl                                     ; $5500: $f9
    rst $38                                       ; $5501: $ff
    ret nc                                        ; $5502: $d0

    rst $38                                       ; $5503: $ff
    pop af                                        ; $5504: $f1
    rst $38                                       ; $5505: $ff
    ldh [rIE], a                                  ; $5506: $e0 $ff
    ld b, h                                       ; $5508: $44
    ei                                            ; $5509: $fb
    ret nz                                        ; $550a: $c0

    di                                            ; $550b: $f3
    add d                                         ; $550c: $82
    pop af                                        ; $550d: $f1
    db $10                                        ; $550e: $10
    pop hl                                        ; $550f: $e1
    cpl                                           ; $5510: $2f
    rst $38                                       ; $5511: $ff
    ccf                                           ; $5512: $3f
    rst $38                                       ; $5513: $ff
    rra                                           ; $5514: $1f
    rst $38                                       ; $5515: $ff
    sbc a                                         ; $5516: $9f
    ld a, a                                       ; $5517: $7f
    dec bc                                        ; $5518: $0b
    ld a, a                                       ; $5519: $7f
    rrca                                          ; $551a: $0f
    ccf                                           ; $551b: $3f
    rlca                                          ; $551c: $07
    rst $38                                       ; $551d: $ff
    ld e, a                                       ; $551e: $5f
    rst $38                                       ; $551f: $ff
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
    ld [bc], a                                    ; $552a: $02
    nop                                           ; $552b: $00
    ld [$0007], sp                                ; $552c: $08 $07 $00
    rra                                           ; $552f: $1f
    ret nz                                        ; $5530: $c0

    nop                                           ; $5531: $00
    add b                                         ; $5532: $80
    nop                                           ; $5533: $00
    nop                                           ; $5534: $00
    nop                                           ; $5535: $00
    nop                                           ; $5536: $00
    nop                                           ; $5537: $00
    nop                                           ; $5538: $00
    nop                                           ; $5539: $00
    nop                                           ; $553a: $00
    nop                                           ; $553b: $00
    ld bc, $0300                                  ; $553c: $01 $00 $03
    nop                                           ; $553f: $00
    or $ff                                        ; $5540: $f6 $ff
    db $fc                                        ; $5542: $fc
    rst $38                                       ; $5543: $ff
    or e                                          ; $5544: $b3
    db $fc                                        ; $5545: $fc
    db $e4                                        ; $5546: $e4
    ld hl, sp-$68                                 ; $5547: $f8 $98
    ldh [$30], a                                  ; $5549: $e0 $30
    ret nz                                        ; $554b: $c0

    ld c, $f0                                     ; $554c: $0e $f0
    and c                                         ; $554e: $a1
    cp $f9                                        ; $554f: $fe $f9
    rst $38                                       ; $5551: $ff
    ret nc                                        ; $5552: $d0

    rst $38                                       ; $5553: $ff
    push af                                       ; $5554: $f5
    ei                                            ; $5555: $fb
    db $ec                                        ; $5556: $ec
    di                                            ; $5557: $f3
    ld c, d                                       ; $5558: $4a
    pop af                                        ; $5559: $f1
    jp nc, $a2e1                                  ; $555a: $d2 $e1 $a2

    pop bc                                        ; $555d: $c1

jr_052_555e:
    ld hl, $2fc0                                  ; $555e: $21 $c0 $2f
    rst $38                                       ; $5561: $ff
    cp a                                          ; $5562: $bf
    ld a, a                                       ; $5563: $7f
    sbc a                                         ; $5564: $9f
    ld a, a                                       ; $5565: $7f
    ld e, a                                       ; $5566: $5f
    ccf                                           ; $5567: $3f
    ld c, e                                       ; $5568: $4b
    ccf                                           ; $5569: $3f
    rst $28                                       ; $556a: $ef
    rra                                           ; $556b: $1f
    rlca                                          ; $556c: $07
    rst $38                                       ; $556d: $ff
    ld e, a                                       ; $556e: $5f
    rst $38                                       ; $556f: $ff
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
    inc de                                        ; $557a: $13
    nop                                           ; $557b: $00
    inc c                                         ; $557c: $0c
    inc bc                                        ; $557d: $03
    db $10                                        ; $557e: $10
    rrca                                          ; $557f: $0f
    and b                                         ; $5580: $a0
    nop                                           ; $5581: $00
    nop                                           ; $5582: $00
    nop                                           ; $5583: $00
    add b                                         ; $5584: $80
    nop                                           ; $5585: $00
    nop                                           ; $5586: $00
    nop                                           ; $5587: $00
    nop                                           ; $5588: $00
    nop                                           ; $5589: $00
    ld bc, $0000                                  ; $558a: $01 $00 $00
    nop                                           ; $558d: $00
    dec b                                         ; $558e: $05
    nop                                           ; $558f: $00
    or $ff                                        ; $5590: $f6 $ff
    db $fd                                        ; $5592: $fd
    cp $b6                                        ; $5593: $fe $b6
    ld hl, sp-$17                                 ; $5595: $f8 $e9
    ldh a, [$b0]                                  ; $5597: $f0 $b0
    ret nz                                        ; $5599: $c0

    ld b, h                                       ; $559a: $44
    add b                                         ; $559b: $80
    jr c, jr_052_555e                             ; $559c: $38 $c0

    and a                                         ; $559e: $a7
    ld hl, sp-$07                                 ; $559f: $f8 $f9
    rst $38                                       ; $55a1: $ff
    call nc, $fbfb                                ; $55a2: $d4 $fb $fb
    pop af                                        ; $55a5: $f1
    ld [$52f1], a                                 ; $55a6: $ea $f1 $52
    pop hl                                        ; $55a9: $e1
    push hl                                       ; $55aa: $e5
    ret nz                                        ; $55ab: $c0

    and c                                         ; $55ac: $a1
    ret nz                                        ; $55ad: $c0

    ld d, c                                       ; $55ae: $51
    add b                                         ; $55af: $80
    xor a                                         ; $55b0: $af
    ld a, a                                       ; $55b1: $7f
    ld a, a                                       ; $55b2: $7f
    ccf                                           ; $55b3: $3f
    ld e, a                                       ; $55b4: $5f
    ccf                                           ; $55b5: $3f
    cp a                                          ; $55b6: $bf
    rra                                           ; $55b7: $1f
    dec hl                                        ; $55b8: $2b
    rra                                           ; $55b9: $1f
    rra                                           ; $55ba: $1f
    rrca                                          ; $55bb: $0f
    rst $30                                       ; $55bc: $f7
    rrca                                          ; $55bd: $0f
    ld e, a                                       ; $55be: $5f
    rst $38                                       ; $55bf: $ff
    nop                                           ; $55c0: $00
    nop                                           ; $55c1: $00
    nop                                           ; $55c2: $00
    nop                                           ; $55c3: $00
    nop                                           ; $55c4: $00
    nop                                           ; $55c5: $00
    nop                                           ; $55c6: $00
    nop                                           ; $55c7: $00
    ld [bc], a                                    ; $55c8: $02
    nop                                           ; $55c9: $00
    ld bc, $1600                                  ; $55ca: $01 $00 $16
    ld bc, $0708                                  ; $55cd: $01 $08 $07
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

Jump_052_5642:
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
    nop                                           ; $5891: $00
    nop                                           ; $5892: $00
    nop                                           ; $5893: $00
    nop                                           ; $5894: $00
    nop                                           ; $5895: $00
    nop                                           ; $5896: $00
    nop                                           ; $5897: $00
    nop                                           ; $5898: $00
    nop                                           ; $5899: $00
    nop                                           ; $589a: $00
    nop                                           ; $589b: $00
    nop                                           ; $589c: $00
    nop                                           ; $589d: $00
    nop                                           ; $589e: $00
    nop                                           ; $589f: $00
    nop                                           ; $58a0: $00
    nop                                           ; $58a1: $00
    nop                                           ; $58a2: $00
    nop                                           ; $58a3: $00
    nop                                           ; $58a4: $00
    nop                                           ; $58a5: $00
    nop                                           ; $58a6: $00
    nop                                           ; $58a7: $00
    nop                                           ; $58a8: $00
    nop                                           ; $58a9: $00
    nop                                           ; $58aa: $00
    nop                                           ; $58ab: $00
    nop                                           ; $58ac: $00
    nop                                           ; $58ad: $00
    nop                                           ; $58ae: $00
    nop                                           ; $58af: $00
    nop                                           ; $58b0: $00
    nop                                           ; $58b1: $00
    nop                                           ; $58b2: $00
    nop                                           ; $58b3: $00
    nop                                           ; $58b4: $00
    nop                                           ; $58b5: $00
    nop                                           ; $58b6: $00
    nop                                           ; $58b7: $00
    nop                                           ; $58b8: $00
    nop                                           ; $58b9: $00
    nop                                           ; $58ba: $00
    nop                                           ; $58bb: $00
    nop                                           ; $58bc: $00
    nop                                           ; $58bd: $00
    nop                                           ; $58be: $00
    nop                                           ; $58bf: $00
    nop                                           ; $58c0: $00
    nop                                           ; $58c1: $00
    nop                                           ; $58c2: $00
    nop                                           ; $58c3: $00
    nop                                           ; $58c4: $00
    nop                                           ; $58c5: $00
    nop                                           ; $58c6: $00
    nop                                           ; $58c7: $00
    nop                                           ; $58c8: $00
    nop                                           ; $58c9: $00
    nop                                           ; $58ca: $00
    nop                                           ; $58cb: $00
    nop                                           ; $58cc: $00
    nop                                           ; $58cd: $00
    nop                                           ; $58ce: $00
    nop                                           ; $58cf: $00
    nop                                           ; $58d0: $00
    nop                                           ; $58d1: $00
    nop                                           ; $58d2: $00
    nop                                           ; $58d3: $00
    nop                                           ; $58d4: $00
    nop                                           ; $58d5: $00
    nop                                           ; $58d6: $00
    nop                                           ; $58d7: $00
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
    nop                                           ; $58f8: $00
    nop                                           ; $58f9: $00
    nop                                           ; $58fa: $00
    nop                                           ; $58fb: $00
    nop                                           ; $58fc: $00
    nop                                           ; $58fd: $00
    nop                                           ; $58fe: $00
    nop                                           ; $58ff: $00
    nop                                           ; $5900: $00
    nop                                           ; $5901: $00
    nop                                           ; $5902: $00
    nop                                           ; $5903: $00
    nop                                           ; $5904: $00
    nop                                           ; $5905: $00
    nop                                           ; $5906: $00
    nop                                           ; $5907: $00
    nop                                           ; $5908: $00
    nop                                           ; $5909: $00
    nop                                           ; $590a: $00
    nop                                           ; $590b: $00
    nop                                           ; $590c: $00
    nop                                           ; $590d: $00
    nop                                           ; $590e: $00
    nop                                           ; $590f: $00
    nop                                           ; $5910: $00
    ld [bc], a                                    ; $5911: $02
    nop                                           ; $5912: $00
    rrca                                          ; $5913: $0f
    ld [bc], a                                    ; $5914: $02
    ld [bc], a                                    ; $5915: $02
    nop                                           ; $5916: $00
    rrca                                          ; $5917: $0f
    inc b                                         ; $5918: $04
    ld [bc], a                                    ; $5919: $02
    nop                                           ; $591a: $00
    rrca                                          ; $591b: $0f
    ld b, $02                                     ; $591c: $06 $02
    nop                                           ; $591e: $00
    rrca                                          ; $591f: $0f
    ld [$0002], sp                                ; $5920: $08 $02 $00
    rrca                                          ; $5923: $0f
    ld b, $02                                     ; $5924: $06 $02
    nop                                           ; $5926: $00
    rrca                                          ; $5927: $0f
    inc b                                         ; $5928: $04
    ld [bc], a                                    ; $5929: $02
    nop                                           ; $592a: $00
    rrca                                          ; $592b: $0f
    ld [bc], a                                    ; $592c: $02
    ld [bc], a                                    ; $592d: $02
    nop                                           ; $592e: $00
    rrca                                          ; $592f: $0f
    rst $38                                       ; $5930: $ff
    nop                                           ; $5931: $00
    ld a, [bc]                                    ; $5932: $0a
    rrca                                          ; $5933: $0f
    ld [bc], a                                    ; $5934: $02
    ld e, $19                                     ; $5935: $1e $19
    rrca                                          ; $5937: $0f
    ld [bc], a                                    ; $5938: $02
    ld e, $28                                     ; $5939: $1e $28
    rrca                                          ; $593b: $0f
    ld [bc], a                                    ; $593c: $02
    ld e, $19                                     ; $593d: $1e $19
    rrca                                          ; $593f: $0f
    ld [bc], a                                    ; $5940: $02
    ld e, $ff                                     ; $5941: $1e $ff
    ld bc, $0337                                  ; $5943: $01 $37 $03
    ld de, $3a1e                                  ; $5946: $11 $1e $3a
    inc bc                                        ; $5949: $03
    ld de, $ff1e                                  ; $594a: $11 $1e $ff
    ld [bc], a                                    ; $594d: $02
    dec a                                         ; $594e: $3d
    ld bc, $1e14                                  ; $594f: $01 $14 $1e
    ld a, $01                                     ; $5952: $3e $01
    inc d                                         ; $5954: $14
    ld e, $3f                                     ; $5955: $1e $3f
    ld bc, $1e14                                  ; $5957: $01 $14 $1e
    ld a, $01                                     ; $595a: $3e $01
    inc d                                         ; $595c: $14
    ld e, $ff                                     ; $595d: $1e $ff
    ld bc, $6bfe                                  ; $595f: $01 $fe $6b
    ld e, c                                       ; $5962: $59
    sbc e                                         ; $5963: $9b
    ld e, c                                       ; $5964: $59
    inc bc                                        ; $5965: $03
    ld h, h                                       ; $5966: $64
    inc bc                                        ; $5967: $03
    ld h, [hl]                                    ; $5968: $66
    db $eb                                        ; $5969: $eb
    ld h, a                                       ; $596a: $67
    sub h                                         ; $596b: $94
    ld bc, $029f                                  ; $596c: $01 $9f $02
    db $ec                                        ; $596f: $ec
    dec de                                        ; $5970: $1b
    add [hl]                                      ; $5971: $86
    ld [bc], a                                    ; $5972: $02
    rst $38                                       ; $5973: $ff
    ld a, a                                       ; $5974: $7f
    ld a, [c]                                     ; $5975: $f2
    inc sp                                        ; $5976: $33
    db $ec                                        ; $5977: $ec
    dec de                                        ; $5978: $1b
    add [hl]                                      ; $5979: $86
    ld [bc], a                                    ; $597a: $02
    ret nz                                        ; $597b: $c0

    ld a, l                                       ; $597c: $7d
    ldh [$7f], a                                  ; $597d: $e0 $7f
    ld [de], a                                    ; $597f: $12
    ld bc, $0286                                  ; $5980: $01 $86 $02
    rst $38                                       ; $5983: $ff
    ld a, a                                       ; $5984: $7f
    db $ec                                        ; $5985: $ec
    dec de                                        ; $5986: $1b
    add [hl]                                      ; $5987: $86
    ld [bc], a                                    ; $5988: $02
    add hl, hl                                    ; $5989: $29
    dec b                                         ; $598a: $05
    dec l                                         ; $598b: $2d
    ld [bc], a                                    ; $598c: $02
    ld d, d                                       ; $598d: $52
    inc bc                                        ; $598e: $03
    rst $18                                       ; $598f: $df
    nop                                           ; $5990: $00
    add hl, hl                                    ; $5991: $29
    dec b                                         ; $5992: $05
    ld [$0825], sp                                ; $5993: $08 $25 $08
    dec h                                         ; $5996: $25
    ld [$0825], sp                                ; $5997: $08 $25 $08

jr_052_599a:
    dec h                                         ; $599a: $25
    push de                                       ; $599b: $d5

jr_052_599c:
    nop                                           ; $599c: $00
    rst $38                                       ; $599d: $ff
    ldh [rTIMA], a                                ; $599e: $e0 $05
    ei                                            ; $59a0: $fb
    ldh [$0b], a                                  ; $59a1: $e0 $0b
    rst $30                                       ; $59a3: $f7
    pop hl                                        ; $59a4: $e1
    nop                                           ; $59a5: $00
    ld [bc], a                                    ; $59a6: $02
    db $eb                                        ; $59a7: $eb
    nop                                           ; $59a8: $00
    jr z, jr_052_599a                             ; $59a9: $28 $ef

    ldh [$90], a                                  ; $59ab: $e0 $90
    db $eb                                        ; $59ad: $eb
    ldh [$f5], a                                  ; $59ae: $e0 $f5
    nop                                           ; $59b0: $00
    ret z                                         ; $59b1: $c8

    cp $e5                                        ; $59b2: $fe $e5
    ldh [$80], a                                  ; $59b4: $e0 $80
    nop                                           ; $59b6: $00
    db $ec                                        ; $59b7: $ec
    rst $38                                       ; $59b8: $ff
    ld hl, sp-$01                                 ; $59b9: $f8 $ff
    ldh [rIE], a                                  ; $59bb: $e0 $ff
    cp $42                                        ; $59bd: $fe $42
    ld hl, sp-$38                                 ; $59bf: $f8 $c8
    ldh a, [$80]                                  ; $59c1: $f0 $80
    ldh [rNR10], a                                ; $59c3: $e0 $10
    rst $28                                       ; $59c5: $ef
    ldh [rP1], a                                  ; $59c6: $e0 $00
    ret nz                                        ; $59c8: $c0

    rst $38                                       ; $59c9: $ff
    rst $38                                       ; $59ca: $ff
    ld [c], a                                     ; $59cb: $e2
    rst $30                                       ; $59cc: $f7
    rst $38                                       ; $59cd: $ff
    cp h                                          ; $59ce: $bc
    ld a, a                                       ; $59cf: $7f
    rst $38                                       ; $59d0: $ff
    add sp, -$01                                  ; $59d1: $e8 $ff
    add c                                         ; $59d3: $81
    cp $08                                        ; $59d4: $fe $08
    ldh a, [$f8]                                  ; $59d6: $f0 $f8
    push hl                                       ; $59d8: $e5
    ei                                            ; $59d9: $fb
    jr nz, jr_052_599c                            ; $59da: $20 $c0

    cp a                                          ; $59dc: $bf
    ld [c], a                                     ; $59dd: $e2
    nop                                           ; $59de: $00
    ld a, a                                       ; $59df: $7f
    rst $38                                       ; $59e0: $ff
    cpl                                           ; $59e1: $2f
    rst $38                                       ; $59e2: $ff
    rst $38                                       ; $59e3: $ff
    ccf                                           ; $59e4: $3f
    rst $38                                       ; $59e5: $ff
    rra                                           ; $59e6: $1f
    rst $38                                       ; $59e7: $ff
    or a                                          ; $59e8: $b7
    ld a, a                                       ; $59e9: $7f
    rra                                           ; $59ea: $1f
    ld a, a                                       ; $59eb: $7f
    rst $38                                       ; $59ec: $ff
    rrca                                          ; $59ed: $0f
    ld a, a                                       ; $59ee: $7f
    ld c, a                                       ; $59ef: $4f
    ccf                                           ; $59f0: $3f
    rlca                                          ; $59f1: $07
    rra                                           ; $59f2: $1f
    ld [bc], a                                    ; $59f3: $02
    rra                                           ; $59f4: $1f
    rst $38                                       ; $59f5: $ff
    inc de                                        ; $59f6: $13
    rrca                                          ; $59f7: $0f
    ld bc, $0b0f                                  ; $59f8: $01 $0f $0b
    rlca                                          ; $59fb: $07
    ld bc, $ff07                                  ; $59fc: $01 $07 $ff
    nop                                           ; $59ff: $00
    rlca                                          ; $5a00: $07
    inc b                                         ; $5a01: $04
    inc bc                                        ; $5a02: $03
    ld e, h                                       ; $5a03: $5c
    rst $38                                       ; $5a04: $ff
    nop                                           ; $5a05: $00
    rst $38                                       ; $5a06: $ff
    rst $20                                       ; $5a07: $e7
    add c                                         ; $5a08: $81
    inc a                                         ; $5a09: $3c
    db $10                                        ; $5a0a: $10
    db $d3                                        ; $5a0b: $d3
    db $e3                                        ; $5a0c: $e3
    add e                                         ; $5a0d: $83
    ldh [rNR41], a                                ; $5a0e: $e0 $20
    ret nz                                        ; $5a10: $c0

    add b                                         ; $5a11: $80
    cp a                                          ; $5a12: $bf
    ret nz                                        ; $5a13: $c0

    nop                                           ; $5a14: $00
    ldh [$90], a                                  ; $5a15: $e0 $90
    ldh [$80], a                                  ; $5a17: $e0 $80
    cp $e0                                        ; $5a19: $fe $e0
    nop                                           ; $5a1b: $00
    ei                                            ; $5a1c: $fb
    ret nz                                        ; $5a1d: $c0

    jr nz, @-$5e                                  ; $5a1e: $20 $a0

    ldh [$7d], a                                  ; $5a20: $e0 $7d
    rst $38                                       ; $5a22: $ff
    rst $28                                       ; $5a23: $ef
    rst $38                                       ; $5a24: $ff
    ld a, [hl-]                                   ; $5a25: $3a
    ld a, [$e2da]                                 ; $5a26: $fa $da $e2
    ld [$e063], sp                                ; $5a29: $08 $63 $e0
    and h                                         ; $5a2c: $a4
    ld hl, sp-$20                                 ; $5a2d: $f8 $e0
    ld hl, sp-$10                                 ; $5a2f: $f8 $f0
    rst $38                                       ; $5a31: $ff
    db $fc                                        ; $5a32: $fc
    ret nc                                        ; $5a33: $d0

    db $fc                                        ; $5a34: $fc
    ld a, [c]                                     ; $5a35: $f2
    db $fc                                        ; $5a36: $fc
    ldh [$fc], a                                  ; $5a37: $e0 $fc
    or b                                          ; $5a39: $b0
    rst $30                                       ; $5a3a: $f7
    ld hl, sp-$1c                                 ; $5a3b: $f8 $e4
    ld hl, sp-$80                                 ; $5a3d: $f8 $80
    push hl                                       ; $5a3f: $e5
    cp [hl]                                       ; $5a40: $be
    rst $38                                       ; $5a41: $ff
    db $e3                                        ; $5a42: $e3
    rst $38                                       ; $5a43: $ff
    rst $38                                       ; $5a44: $ff
    ld b, b                                       ; $5a45: $40
    rst $38                                       ; $5a46: $ff
    nop                                           ; $5a47: $00
    rst $20                                       ; $5a48: $e7
    db $fc                                        ; $5a49: $fc
    rst $38                                       ; $5a4a: $ff
    or $ff                                        ; $5a4b: $f6 $ff
    ld a, a                                       ; $5a4d: $7f
    db $fc                                        ; $5a4e: $fc
    rst $38                                       ; $5a4f: $ff
    ld hl, sp-$02                                 ; $5a50: $f8 $fe
    add sp, -$02                                  ; $5a52: $e8 $fe
    ld hl, sp-$08                                 ; $5a54: $f8 $f8
    ldh [$0b], a                                  ; $5a56: $e0 $0b
    db $f4                                        ; $5a58: $f4
    rst $38                                       ; $5a59: $ff
    ld a, b                                       ; $5a5a: $78
    ldh [$80], a                                  ; $5a5b: $e0 $80
    and e                                         ; $5a5d: $a3
    and $23                                       ; $5a5e: $e6 $23
    pop hl                                        ; $5a60: $e1
    ldh a, [$e0]                                  ; $5a61: $f0 $e0
    rst $28                                       ; $5a63: $ef
    ld [$c0e3], a                                 ; $5a64: $ea $e3 $c0
    ld b, b                                       ; $5a67: $40
    ldh [$ea], a                                  ; $5a68: $e0 $ea
    ret nc                                        ; $5a6a: $d0

    pop hl                                        ; $5a6b: $e1
    rst $08                                       ; $5a6c: $cf
    jp hl                                         ; $5a6d: $e9


    ld [bc], a                                    ; $5a6e: $02
    add c                                         ; $5a6f: $81
    and b                                         ; $5a70: $a0
    rst $38                                       ; $5a71: $ff
    pop bc                                        ; $5a72: $c1
    add b                                         ; $5a73: $80
    pop bc                                        ; $5a74: $c1
    add l                                         ; $5a75: $85
    jp $c3a1                                      ; $5a76: $c3 $a1 $c3


    nop                                           ; $5a79: $00
    ld a, a                                       ; $5a7a: $7f
    add e                                         ; $5a7b: $83
    dec b                                         ; $5a7c: $05

Jump_052_5a7d:
    add e                                         ; $5a7d: $83
    ld b, b                                       ; $5a7e: $40
    add c                                         ; $5a7f: $81
    ld b, c                                       ; $5a80: $41
    add b                                         ; $5a81: $80
    ret nz                                        ; $5a82: $c0

    ldh [rIE], a                                  ; $5a83: $e0 $ff
    ret nz                                        ; $5a85: $c0

    and b                                         ; $5a86: $a0
    ret nz                                        ; $5a87: $c0

    ret nz                                        ; $5a88: $c0

    ldh [rBCPS], a                                ; $5a89: $e0 $68
    ldh a, [$f1]                                  ; $5a8b: $f0 $f1
    rst $38                                       ; $5a8d: $ff
    db $fc                                        ; $5a8e: $fc
    call c, Call_000_1eff                         ; $5a8f: $dc $ff $1e
    rst $38                                       ; $5a92: $ff
    add b                                         ; $5a93: $80
    ld e, $12                                     ; $5a94: $1e $12
    ld a, [hl]                                    ; $5a96: $7e
    call nc, Call_052_48c2                        ; $5a97: $d4 $c2 $48
    nop                                           ; $5a9a: $00
    ld bc, $5878                                  ; $5a9b: $01 $78 $58
    rst $38                                       ; $5a9e: $ff
    or b                                          ; $5a9f: $b0
    jp hl                                         ; $5aa0: $e9


    rst $38                                       ; $5aa1: $ff
    ld [bc], a                                    ; $5aa2: $02
    ld bc, $0300                                  ; $5aa3: $01 $00 $03
    nop                                           ; $5aa6: $00
    nop                                           ; $5aa7: $00
    ld b, b                                       ; $5aa8: $40
    ld b, b                                       ; $5aa9: $40
    ld a, a                                       ; $5aaa: $7f
    nop                                           ; $5aab: $00
    jr nz, jr_052_5aae                            ; $5aac: $20 $00

jr_052_5aae:
    db $10                                        ; $5aae: $10
    ld [$0400], sp                                ; $5aaf: $08 $00 $04
    or d                                          ; $5ab2: $b2
    ret nz                                        ; $5ab3: $c0

    ret nz                                        ; $5ab4: $c0

    and d                                         ; $5ab5: $a2
    pop bc                                        ; $5ab6: $c1
    ldh a, [rIE]                                  ; $5ab7: $f0 $ff
    ldh a, [rIE]                                  ; $5ab9: $f0 $ff
    ldh a, [rIE]                                  ; $5abb: $f0 $ff
    ldh a, [rIE]                                  ; $5abd: $f0 $ff
    ldh a, [$f3]                                  ; $5abf: $f0 $f3
    jp $e33c                                      ; $5ac1: $c3 $3c $e3


    jp $fd3c                                      ; $5ac4: $c3 $3c $fd


    ldh [$fe], a                                  ; $5ac7: $e0 $fe
    ld [c], a                                     ; $5ac9: $e2
    db $f4                                        ; $5aca: $f4
    pop hl                                        ; $5acb: $e1
    dec de                                        ; $5acc: $1b
    rst $20                                       ; $5acd: $e7
    cpl                                           ; $5ace: $2f
    rst $38                                       ; $5acf: $ff
    call c, $f11e                                 ; $5ad0: $dc $1e $f1
    inc a                                         ; $5ad3: $3c
    db $e3                                        ; $5ad4: $e3
    ld a, h                                       ; $5ad5: $7c
    jp Jump_052_7f7c                              ; $5ad6: $c3 $7c $7f


    jp $9ce3                                      ; $5ad9: $c3 $e3 $9c


    jp Jump_000_18bc                              ; $5adc: $c3 $bc $18


    rst $20                                       ; $5adf: $e7
    ld [c], a                                     ; $5ae0: $e2
    pop hl                                        ; $5ae1: $e1
    rst $38                                       ; $5ae2: $ff
    ld a, [de]                                    ; $5ae3: $1a
    push hl                                       ; $5ae4: $e5
    ld [de], a                                    ; $5ae5: $12
    rst $28                                       ; $5ae6: $ef
    ld e, a                                       ; $5ae7: $5f
    cp b                                          ; $5ae8: $b8
    ld a, a                                       ; $5ae9: $7f
    ldh [rIE], a                                  ; $5aea: $e0 $ff
    di                                            ; $5aec: $f3
    adc h                                         ; $5aed: $8c
    inc de                                        ; $5aee: $13
    rst $28                                       ; $5aef: $ef
    rra                                           ; $5af0: $1f
    ld hl, sp-$04                                 ; $5af1: $f8 $fc
    ld h, e                                       ; $5af3: $63
    cp a                                          ; $5af4: $bf
    db $fc                                        ; $5af5: $fc
    add e                                         ; $5af6: $83
    db $fc                                        ; $5af7: $fc
    inc bc                                        ; $5af8: $03
    cp h                                          ; $5af9: $bc
    ld b, e                                       ; $5afa: $43
    call nz, $98e1                                ; $5afb: $c4 $e1 $98
    rst $38                                       ; $5afe: $ff
    rst $20                                       ; $5aff: $e7
    db $fc                                        ; $5b00: $fc
    ld b, e                                       ; $5b01: $43
    call c, $f863                                 ; $5b02: $dc $63 $f8
    daa                                           ; $5b05: $27
    ld l, b                                       ; $5b06: $68
    rst $38                                       ; $5b07: $ff
    or a                                          ; $5b08: $b7
    ld l, h                                       ; $5b09: $6c
    sub e                                         ; $5b0a: $93
    db $fc                                        ; $5b0b: $fc
    inc de                                        ; $5b0c: $13
    add sp, $17                                   ; $5b0d: $e8 $17
    ld hl, sp-$01                                 ; $5b0f: $f8 $ff
    rrca                                          ; $5b11: $0f
    sbc $25                                       ; $5b12: $de $25
    inc a                                         ; $5b14: $3c
    rst $00                                       ; $5b15: $c7
    ld a, $c3                                     ; $5b16: $3e $c3
    ccf                                           ; $5b18: $3f
    rst $38                                       ; $5b19: $ff
    jp nz, $c13e                                  ; $5b1a: $c2 $3e $c1

    jp $c33d                                      ; $5b1d: $c3 $3d $c3


    dec a                                         ; $5b20: $3d
    cp e                                          ; $5b21: $bb
    rst $30                                       ; $5b22: $f7
    rst $10                                       ; $5b23: $d7
    rst $38                                       ; $5b24: $ff
    nop                                           ; $5b25: $00
    and b                                         ; $5b26: $a0
    jp hl                                         ; $5b27: $e9


    jp $c3bc                                      ; $5b28: $c3 $bc $c3


    cp h                                          ; $5b2b: $bc
    ret                                           ; $5b2c: $c9


    ld a, h                                       ; $5b2d: $7c
    jp nz, $bee0                                  ; $5b2e: $c2 $e0 $be

    pop hl                                        ; $5b31: $e1
    ld b, e                                       ; $5b32: $43
    db $f4                                        ; $5b33: $f4
    ldh [$a0], a                                  ; $5b34: $e0 $a0
    pop hl                                        ; $5b36: $e1
    nop                                           ; $5b37: $00
    rst $38                                       ; $5b38: $ff
    cp a                                          ; $5b39: $bf
    db $dd                                        ; $5b3a: $dd
    db $eb                                        ; $5b3b: $eb
    rst $38                                       ; $5b3c: $ff
    nop                                           ; $5b3d: $00
    ld a, [hl]                                    ; $5b3e: $7e
    add c                                         ; $5b3f: $81
    add b                                         ; $5b40: $80
    ld [c], a                                     ; $5b41: $e2
    db $f4                                        ; $5b42: $f4
    rst $38                                       ; $5b43: $ff
    rrca                                          ; $5b44: $0f
    ldh a, [rNR32]                                ; $5b45: $f0 $1c
    db $e3                                        ; $5b47: $e3
    inc e                                         ; $5b48: $1c
    di                                            ; $5b49: $f3
    inc e                                         ; $5b4a: $1c
    db $e3                                        ; $5b4b: $e3
    rst $38                                       ; $5b4c: $ff
    inc c                                         ; $5b4d: $0c
    di                                            ; $5b4e: $f3
    ccf                                           ; $5b4f: $3f
    ret nc                                        ; $5b50: $d0

    dec de                                        ; $5b51: $1b
    db $f4                                        ; $5b52: $f4
    ld d, a                                       ; $5b53: $57
    rst $38                                       ; $5b54: $ff
    ld e, a                                       ; $5b55: $5f
    xor a                                         ; $5b56: $af
    db $fc                                        ; $5b57: $fc
    ld a, [hl]                                    ; $5b58: $7e
    pop af                                        ; $5b59: $f1
    cp h                                          ; $5b5a: $bc
    ld [hl], b                                    ; $5b5b: $70
    ldh [$fc], a                                  ; $5b5c: $e0 $fc
    ld [hl], b                                    ; $5b5e: $70
    ld [c], a                                     ; $5b5f: $e2
    rst $38                                       ; $5b60: $ff
    ei                                            ; $5b61: $fb
    rst $38                                       ; $5b62: $ff
    sbc $ff                                       ; $5b63: $de $ff
    push af                                       ; $5b65: $f5
    rst $38                                       ; $5b66: $ff
    xor d                                         ; $5b67: $aa
    rst $38                                       ; $5b68: $ff
    or a                                          ; $5b69: $b7
    ld d, a                                       ; $5b6a: $57
    rst $38                                       ; $5b6b: $ff
    cp a                                          ; $5b6c: $bf
    ld h, a                                       ; $5b6d: $67
    and b                                         ; $5b6e: $a0
    di                                            ; $5b6f: $f3
    adc h                                         ; $5b70: $8c
    ld hl, sp-$1f                                 ; $5b71: $f8 $e1
    ld a, h                                       ; $5b73: $7c
    db $fd                                        ; $5b74: $fd
    db $e3                                        ; $5b75: $e3
    ld [hl], b                                    ; $5b76: $70
    rst $20                                       ; $5b77: $e7
    rst $28                                       ; $5b78: $ef
    rst $38                                       ; $5b79: $ff
    rst $10                                       ; $5b7a: $d7
    ld a, a                                       ; $5b7b: $7f
    db $ed                                        ; $5b7c: $ed
    ld a, a                                       ; $5b7d: $7f
    rst $38                                       ; $5b7e: $ff
    rst $30                                       ; $5b7f: $f7
    ccf                                           ; $5b80: $3f
    ld l, e                                       ; $5b81: $6b
    cp a                                          ; $5b82: $bf
    halt                                          ; $5b83: $76
    sbc a                                         ; $5b84: $9f
    ei                                            ; $5b85: $fb
    rra                                           ; $5b86: $1f
    rst $38                                       ; $5b87: $ff
    push af                                       ; $5b88: $f5
    rra                                           ; $5b89: $1f
    ld a, [$dd0f]                                 ; $5b8a: $fa $0f $dd
    daa                                           ; $5b8d: $27
    ld a, $c7                                     ; $5b8e: $3e $c7
    di                                            ; $5b90: $f3
    ccf                                           ; $5b91: $3f
    jp $e06e                                      ; $5b92: $c3 $6e $e0


    ld [hl], b                                    ; $5b95: $70
    ld [c], a                                     ; $5b96: $e2
    db $ed                                        ; $5b97: $ed
    rst $38                                       ; $5b98: $ff
    db $d3                                        ; $5b99: $d3
    inc a                                         ; $5b9a: $3c
    dec sp                                        ; $5b9b: $3b
    ld a, [hl]                                    ; $5b9c: $7e
    add c                                         ; $5b9d: $81
    ld [hl], b                                    ; $5b9e: $70
    jp hl                                         ; $5b9f: $e9


    db $e3                                        ; $5ba0: $e3
    sbc h                                         ; $5ba1: $9c
    cp h                                          ; $5ba2: $bc
    inc d                                         ; $5ba3: $14
    ldh [rBCPD], a                                ; $5ba4: $e0 $69
    ldh [$eb], a                                  ; $5ba6: $e0 $eb
    jp $1063                                      ; $5ba8: $c3 $63 $10


    ldh [$57], a                                  ; $5bab: $e0 $57
    and h                                         ; $5bad: $a4
    ldh [$7d], a                                  ; $5bae: $e0 $7d
    rst $38                                       ; $5bb0: $ff
    db $d3                                        ; $5bb1: $d3
    ld sp, hl                                     ; $5bb2: $f9
    rst $28                                       ; $5bb3: $ef
    ld c, d                                       ; $5bb4: $4a
    pop hl                                        ; $5bb5: $e1
    db $e4                                        ; $5bb6: $e4
    pop bc                                        ; $5bb7: $c1
    cp e                                          ; $5bb8: $bb
    db $f4                                        ; $5bb9: $f4
    ld e, e                                       ; $5bba: $5b
    db $f4                                        ; $5bbb: $f4
    xor h                                         ; $5bbc: $ac
    rst $38                                       ; $5bbd: $ff
    di                                            ; $5bbe: $f3
    ld l, h                                       ; $5bbf: $6c
    di                                            ; $5bc0: $f3
    cp h                                          ; $5bc1: $bc
    db $e3                                        ; $5bc2: $e3
    ld l, h                                       ; $5bc3: $6c
    di                                            ; $5bc4: $f3
    cp e                                          ; $5bc5: $bb
    rst $38                                       ; $5bc6: $ff
    db $f4                                        ; $5bc7: $f4
    db $db                                        ; $5bc8: $db
    db $f4                                        ; $5bc9: $f4
    cp l                                          ; $5bca: $bd
    jp $ffe7                                      ; $5bcb: $c3 $e7 $ff


    cp d                                          ; $5bce: $ba
    cp a                                          ; $5bcf: $bf
    rst $38                                       ; $5bd0: $ff
    ld d, l                                       ; $5bd1: $55
    rst $38                                       ; $5bd2: $ff
    xor e                                         ; $5bd3: $ab
    rst $38                                       ; $5bd4: $ff
    cp $58                                        ; $5bd5: $fe $58
    and b                                         ; $5bd7: $a0
    rst $38                                       ; $5bd8: $ff
    rst $28                                       ; $5bd9: $ef
    rst $38                                       ; $5bda: $ff
    db $db                                        ; $5bdb: $db
    rst $38                                       ; $5bdc: $ff
    ld l, a                                       ; $5bdd: $6f
    adc [hl]                                      ; $5bde: $8e
    ldh [$af], a                                  ; $5bdf: $e0 $af
    ld a, a                                       ; $5be1: $7f
    or l                                          ; $5be2: $b5
    rst $08                                       ; $5be3: $cf
    ld a, a                                       ; $5be4: $7f
    rst $28                                       ; $5be5: $ef
    ld a, a                                       ; $5be6: $7f
    ld d, a                                       ; $5be7: $57
    ld b, [hl]                                    ; $5be8: $46
    and b                                         ; $5be9: $a0
    ret nc                                        ; $5bea: $d0

    jp $e718                                      ; $5beb: $c3 $18 $e7


    cp $f8                                        ; $5bee: $fe $f8
    push hl                                       ; $5bf0: $e5
    ld d, a                                       ; $5bf1: $57
    rst $38                                       ; $5bf2: $ff
    xor h                                         ; $5bf3: $ac
    rst $38                                       ; $5bf4: $ff
    ld [hl], h                                    ; $5bf5: $74
    ei                                            ; $5bf6: $fb
    cp b                                          ; $5bf7: $b8
    ld l, a                                       ; $5bf8: $6f
    rst $20                                       ; $5bf9: $e7
    ld e, b                                       ; $5bfa: $58
    rst $20                                       ; $5bfb: $e7
    db $fc                                        ; $5bfc: $fc
    dec b                                         ; $5bfd: $05
    ldh [$98], a                                  ; $5bfe: $e0 $98
    rst $20                                       ; $5c00: $e7
    ld b, b                                       ; $5c01: $40
    rst $20                                       ; $5c02: $e7
    rst $18                                       ; $5c03: $df
    cp d                                          ; $5c04: $ba
    rst $38                                       ; $5c05: $ff
    db $ec                                        ; $5c06: $ec
    di                                            ; $5c07: $f3
    sbc b                                         ; $5c08: $98
    ldh [$e0], a                                  ; $5c09: $e0 $e0
    cp d                                          ; $5c0b: $ba
    rst $38                                       ; $5c0c: $ff
    jp hl                                         ; $5c0d: $e9


    ld l, h                                       ; $5c0e: $6c
    ld hl, sp-$20                                 ; $5c0f: $f8 $e0
    ret z                                         ; $5c11: $c8

    push hl                                       ; $5c12: $e5
    rst $28                                       ; $5c13: $ef
    ld h, $e0                                     ; $5c14: $26 $e0
    ld l, l                                       ; $5c16: $6d
    rst $38                                       ; $5c17: $ff
    scf                                           ; $5c18: $37
    rst $38                                       ; $5c19: $ff
    rst $38                                       ; $5c1a: $ff
    dec hl                                        ; $5c1b: $2b
    rst $38                                       ; $5c1c: $ff
    ld d, $ff                                     ; $5c1d: $16 $ff
    dec sp                                        ; $5c1f: $3b
    rst $38                                       ; $5c20: $ff
    dec d                                         ; $5c21: $15
    rst $38                                       ; $5c22: $ff
    rst $38                                       ; $5c23: $ff
    ld a, [de]                                    ; $5c24: $1a
    rst $28                                       ; $5c25: $ef
    dec [hl]                                      ; $5c26: $35
    rst $08                                       ; $5c27: $cf
    ld a, $c7                                     ; $5c28: $3e $c7
    dec de                                        ; $5c2a: $1b
    rst $38                                       ; $5c2b: $ff
    rst $20                                       ; $5c2c: $e7
    ld a, [de]                                    ; $5c2d: $1a
    rst $20                                       ; $5c2e: $e7
    dec a                                         ; $5c2f: $3d
    jp $c33f                                      ; $5c30: $c3 $3f $c3


    add hl, de                                    ; $5c33: $19
    db $db                                        ; $5c34: $db
    rst $20                                       ; $5c35: $e7
    rst $10                                       ; $5c36: $d7
    db $e4                                        ; $5c37: $e4
    add b                                         ; $5c38: $80
    inc l                                         ; $5c39: $2c
    db $d3                                        ; $5c3a: $d3
    and b                                         ; $5c3b: $a0
    rst $20                                       ; $5c3c: $e7
    sbc b                                         ; $5c3d: $98
    rst $20                                       ; $5c3e: $e7
    adc d                                         ; $5c3f: $8a
    ld b, d                                       ; $5c40: $42
    pop hl                                        ; $5c41: $e1
    ret c                                         ; $5c42: $d8

    and b                                         ; $5c43: $a0
    ldh [$bc], a                                  ; $5c44: $e0 $bc
    sbc $c0                                       ; $5c46: $de $c0
    or b                                          ; $5c48: $b0
    pop hl                                        ; $5c49: $e1
    ld b, b                                       ; $5c4a: $40
    pop hl                                        ; $5c4b: $e1
    set 7, [hl]                                   ; $5c4c: $cb $fe
    ld a, b                                       ; $5c4e: $78
    and $b0                                       ; $5c4f: $e6 $b0
    rst $38                                       ; $5c51: $ff
    ld d, h                                       ; $5c52: $54
    ei                                            ; $5c53: $fb
    and h                                         ; $5c54: $a4
    ei                                            ; $5c55: $fb
    ld a, b                                       ; $5c56: $78
    rst $38                                       ; $5c57: $ff
    rst $30                                       ; $5c58: $f7
    xor b                                         ; $5c59: $a8
    rst $30                                       ; $5c5a: $f7
    ld h, h                                       ; $5c5b: $64
    ei                                            ; $5c5c: $fb
    or h                                          ; $5c5d: $b4
    ei                                            ; $5c5e: $fb
    ret nc                                        ; $5c5f: $d0

    rst $38                                       ; $5c60: $ff
    rst $38                                       ; $5c61: $ff
    pop bc                                        ; $5c62: $c1
    rst $38                                       ; $5c63: $ff
    or a                                          ; $5c64: $b7
    rst $38                                       ; $5c65: $ff
    ld e, l                                       ; $5c66: $5d
    rst $38                                       ; $5c67: $ff
    ld [$3e54], a                                 ; $5c68: $ea $54 $3e
    ldh [$3a], a                                  ; $5c6b: $e0 $3a
    add c                                         ; $5c6d: $81
    rst $38                                       ; $5c6e: $ff
    sub h                                         ; $5c6f: $94
    add b                                         ; $5c70: $80
    ld d, a                                       ; $5c71: $57
    ld a, $e0                                     ; $5c72: $3e $e0
    dec [hl]                                      ; $5c74: $35
    ld a, [hl-]                                   ; $5c75: $3a
    ldh [$f6], a                                  ; $5c76: $e0 $f6
    xor [hl]                                      ; $5c78: $ae
    ret nz                                        ; $5c79: $c0

    rst $38                                       ; $5c7a: $ff
    rst $10                                       ; $5c7b: $d7
    ld hl, $ff83                                  ; $5c7c: $21 $83 $ff
    db $dd                                        ; $5c7f: $dd
    rst $38                                       ; $5c80: $ff
    ld [hl], a                                    ; $5c81: $77
    ld e, h                                       ; $5c82: $5c
    sbc h                                         ; $5c83: $9c
    ret nz                                        ; $5c84: $c0

    call c, $afe1                                 ; $5c85: $dc $e1 $af
    rst $38                                       ; $5c88: $ff
    rst $18                                       ; $5c89: $df
    adc $e0                                       ; $5c8a: $ce $e0
    rst $18                                       ; $5c8c: $df
    ld hl, sp-$1a                                 ; $5c8d: $f8 $e6
    inc d                                         ; $5c8f: $14
    rst $38                                       ; $5c90: $ff
    push hl                                       ; $5c91: $e5
    sbc $e5                                       ; $5c92: $de $e5
    ld e, a                                       ; $5c94: $5f
    jp z, Jump_052_6fe0                           ; $5c95: $ca $e0 $6f

    add $e0                                       ; $5c98: $c6 $e0
    ld hl, sp-$1b                                 ; $5c9a: $f8 $e5
    ldh [$63], a                                  ; $5c9c: $e0 $63
    jp z, $e1f8                                   ; $5c9e: $ca $f8 $e1

    ld e, a                                       ; $5ca1: $5f
    sub [hl]                                      ; $5ca2: $96
    ldh [$5f], a                                  ; $5ca3: $e0 $5f
    ret nc                                        ; $5ca5: $d0

    and $c7                                       ; $5ca6: $e6 $c7
    push hl                                       ; $5ca8: $e5
    ld l, c                                       ; $5ca9: $69
    rst $38                                       ; $5caa: $ff
    rst $38                                       ; $5cab: $ff
    call nc, $81fc                                ; $5cac: $d4 $fc $81
    ldh a, [rDMA]                                 ; $5caf: $f0 $46
    ldh [$8b], a                                  ; $5cb1: $e0 $8b
    ret nz                                        ; $5cb3: $c0

    ld a, a                                       ; $5cb4: $7f
    ld d, a                                       ; $5cb5: $57
    ret nz                                        ; $5cb6: $c0

    dec e                                         ; $5cb7: $1d
    add b                                         ; $5cb8: $80
    xor a                                         ; $5cb9: $af
    add b                                         ; $5cba: $80
    db $fd                                        ; $5cbb: $fd
    xor a                                         ; $5cbc: $af
    ld h, b                                       ; $5cbd: $60
    db $fd                                        ; $5cbe: $fd
    jp c, $8048                                   ; $5cbf: $da $48 $80

    and b                                         ; $5cc2: $a0
    db $fc                                        ; $5cc3: $fc
    ld b, c                                       ; $5cc4: $41
    ldh a, [$0b]                                  ; $5cc5: $f0 $0b
    ret nz                                        ; $5cc7: $c0

    ei                                            ; $5cc8: $fb
    ld d, $00                                     ; $5cc9: $16 $00
    ld hl, sp-$1f                                 ; $5ccb: $f8 $e1
    ld a, [bc]                                    ; $5ccd: $0a
    ret nz                                        ; $5cce: $c0

    rla                                           ; $5ccf: $17
    nop                                           ; $5cd0: $00
    cp l                                          ; $5cd1: $bd
    rst $30                                       ; $5cd2: $f7
    nop                                           ; $5cd3: $00
    ld l, a                                       ; $5cd4: $6f
    nop                                           ; $5cd5: $00
    push de                                       ; $5cd6: $d5
    ld h, b                                       ; $5cd7: $60
    nop                                           ; $5cd8: $00
    ld hl, sp-$02                                 ; $5cd9: $f8 $fe
    db $f4                                        ; $5cdb: $f4
    rst $38                                       ; $5cdc: $ff
    cp $d8                                        ; $5cdd: $fe $d8
    db $fc                                        ; $5cdf: $fc
    pop af                                        ; $5ce0: $f1
    db $fc                                        ; $5ce1: $fc
    ld [c], a                                     ; $5ce2: $e2
    ld hl, sp-$2f                                 ; $5ce3: $f8 $d1
    rst $38                                       ; $5ce5: $ff
    ld hl, sp+$63                                 ; $5ce6: $f8 $63
    ldh a, [$c6]                                  ; $5ce8: $f0 $c6
    ldh a, [$8b]                                  ; $5cea: $f0 $8b
    ldh [rBGP], a                                 ; $5cec: $e0 $47
    rst $38                                       ; $5cee: $ff
    ldh [$8f], a                                  ; $5cef: $e0 $8f
    ret nz                                        ; $5cf1: $c0

    dec de                                        ; $5cf2: $1b
    ret nz                                        ; $5cf3: $c0

    cpl                                           ; $5cf4: $2f
    add b                                         ; $5cf5: $80
    rra                                           ; $5cf6: $1f
    rst $38                                       ; $5cf7: $ff
    add b                                         ; $5cf8: $80
    scf                                           ; $5cf9: $37
    nop                                           ; $5cfa: $00
    ld e, a                                       ; $5cfb: $5f
    nop                                           ; $5cfc: $00
    inc h                                         ; $5cfd: $24
    inc a                                         ; $5cfe: $3c
    ld b, d                                       ; $5cff: $42
    cp a                                          ; $5d00: $bf
    nop                                           ; $5d01: $00
    xor l                                         ; $5d02: $ad
    nop                                           ; $5d03: $00
    rst $30                                       ; $5d04: $f7
    nop                                           ; $5d05: $00
    ld a, l                                       ; $5d06: $7d
    jp nc, $ffe2                                  ; $5d07: $d2 $e2 $ff

    push af                                       ; $5d0a: $f5
    nop                                           ; $5d0b: $00
    db $ec                                        ; $5d0c: $ec
    pop hl                                        ; $5d0d: $e1
    cp a                                          ; $5d0e: $bf
    db $e4                                        ; $5d0f: $e4
    ldh [$2f], a                                  ; $5d10: $e0 $2f
    add b                                         ; $5d12: $80
    cp a                                          ; $5d13: $bf
    add b                                         ; $5d14: $80
    rst $18                                       ; $5d15: $df
    ld d, a                                       ; $5d16: $57
    nop                                           ; $5d17: $00
    ccf                                           ; $5d18: $3f
    nop                                           ; $5d19: $00
    push af                                       ; $5d1a: $f5
    ld a, $e0                                     ; $5d1b: $3e $e0
    ld b, l                                       ; $5d1d: $45
    rst $38                                       ; $5d1e: $ff
    rst $38                                       ; $5d1f: $ff
    nop                                           ; $5d20: $00
    rst $00                                       ; $5d21: $c7
    stop                                          ; $5d22: $10 $00
    ld l, l                                       ; $5d24: $6d
    nop                                           ; $5d25: $00
    cp e                                          ; $5d26: $bb
    nop                                           ; $5d27: $00
    rst $38                                       ; $5d28: $ff
    rst $28                                       ; $5d29: $ef
    nop                                           ; $5d2a: $00
    rst $20                                       ; $5d2b: $e7
    ldh a, [rSCX]                                 ; $5d2c: $f0 $43
    ldh a, [$e5]                                  ; $5d2e: $f0 $e5
    ldh a, [rIE]                                  ; $5d30: $f0 $ff
    ld b, a                                       ; $5d32: $47
    ldh [$8a], a                                  ; $5d33: $e0 $8a
    ldh [$c7], a                                  ; $5d35: $e0 $c7
    ldh [$a5], a                                  ; $5d37: $e0 $a5
    ldh a, [$eb]                                  ; $5d39: $f0 $eb
    jp $30f0                                      ; $5d3b: $c3 $f0 $30


    ld h, e                                       ; $5d3e: $63
    rst $18                                       ; $5d3f: $df
    ld l, $60                                     ; $5d40: $2e $60
    xor l                                         ; $5d42: $ad
    rst $38                                       ; $5d43: $ff
    ld b, d                                       ; $5d44: $42
    rst $38                                       ; $5d45: $ff
    rst $38                                       ; $5d46: $ff
    nop                                           ; $5d47: $00
    jp $fffc                                      ; $5d48: $c3 $fc $ff


    ld a, [$fcff]                                 ; $5d4b: $fa $ff $fc
    sbc $8c                                       ; $5d4e: $de $8c
    ldh [$f8], a                                  ; $5d50: $e0 $f8
    cp $ec                                        ; $5d52: $fe $ec
    cp $f6                                        ; $5d54: $fe $f6
    ldh [rIE], a                                  ; $5d56: $e0 $ff
    rst $38                                       ; $5d58: $ff
    rst $38                                       ; $5d59: $ff
    add b                                         ; $5d5a: $80
    ccf                                           ; $5d5b: $3f
    add b                                         ; $5d5c: $80
    ld a, a                                       ; $5d5d: $7f
    ret nz                                        ; $5d5e: $c0

    sbc a                                         ; $5d5f: $9f
    ret nz                                        ; $5d60: $c0

    ld c, a                                       ; $5d61: $4f
    rst $38                                       ; $5d62: $ff
    ldh [$87], a                                  ; $5d63: $e0 $87
    ldh a, [$d5]                                  ; $5d65: $f0 $d5
    db $fc                                        ; $5d67: $fc
    ld l, c                                       ; $5d68: $69
    rst $38                                       ; $5d69: $ff
    ccf                                           ; $5d6a: $3f
    rst $38                                       ; $5d6b: $ff
    nop                                           ; $5d6c: $00
    rrca                                          ; $5d6d: $0f
    ret nz                                        ; $5d6e: $c0

    ld b, e                                       ; $5d6f: $43
    ldh a, [$a0]                                  ; $5d70: $f0 $a0
    db $fc                                        ; $5d72: $fc
    db $f4                                        ; $5d73: $f4
    add $4a                                       ; $5d74: $c6 $4a
    ldh [rIE], a                                  ; $5d76: $e0 $ff
    rst $38                                       ; $5d78: $ff
    ld b, d                                       ; $5d79: $42
    ldh [$88], a                                  ; $5d7a: $e0 $88
    db $e4                                        ; $5d7c: $e4
    add sp, -$1b                                  ; $5d7d: $e8 $e5
    db $e3                                        ; $5d7f: $e3
    rrca                                          ; $5d80: $0f
    rst $38                                       ; $5d81: $ff
    and $0f                                       ; $5d82: $e6 $0f
    rr a                                          ; $5d84: $cb $1f
    rst $00                                       ; $5d86: $c7
    rra                                           ; $5d87: $1f
    adc a                                         ; $5d88: $8f
    ccf                                           ; $5d89: $3f
    rst $30                                       ; $5d8a: $f7
    sbc e                                         ; $5d8b: $9b
    ccf                                           ; $5d8c: $3f
    cpl                                           ; $5d8d: $2f
    db $fc                                        ; $5d8e: $fc
    ld b, b                                       ; $5d8f: $40
    cp $00                                        ; $5d90: $fe $00
    cp $00                                        ; $5d92: $fe $00
    rst $38                                       ; $5d94: $ff
    db $fc                                        ; $5d95: $fc
    ld bc, $01fc                                  ; $5d96: $01 $fc $01
    ld hl, sp+$03                                 ; $5d99: $f8 $03

jr_052_5d9b:
    ld sp, hl                                     ; $5d9b: $f9
    inc bc                                        ; $5d9c: $03
    rst $08                                       ; $5d9d: $cf
    ld a, [c]                                     ; $5d9e: $f2
    rlca                                          ; $5d9f: $07
    pop af                                        ; $5da0: $f1
    rlca                                          ; $5da1: $07
    ret nc                                        ; $5da2: $d0

    push hl                                       ; $5da3: $e5
    inc h                                         ; $5da4: $24
    pop hl                                        ; $5da5: $e1
    db $d3                                        ; $5da6: $d3
    nop                                           ; $5da7: $00
    ld e, a                                       ; $5da8: $5f
    ld b, d                                       ; $5da9: $42
    ld a, [hl]                                    ; $5daa: $7e
    cp $00                                        ; $5dab: $fe $00
    rst $38                                       ; $5dad: $ff
    ld [c], a                                     ; $5dae: $e2
    ldh [$fe], a                                  ; $5daf: $e0 $fe
    sbc $e0                                       ; $5db1: $de $e0
    rst $08                                       ; $5db3: $cf
    db $fc                                        ; $5db4: $fc
    ld bc, $01ff                                  ; $5db5: $01 $ff $01
    ld a, [c]                                     ; $5db8: $f2
    ldh [$0a], a                                  ; $5db9: $e0 $0a
    ld [c], a                                     ; $5dbb: $e2
    inc a                                         ; $5dbc: $3c
    nop                                           ; $5dbd: $00
    rst $30                                       ; $5dbe: $f7
    nop                                           ; $5dbf: $00
    rst $00                                       ; $5dc0: $c7
    ld b, l                                       ; $5dc1: $45
    add h                                         ; $5dc2: $84
    ret nz                                        ; $5dc3: $c0

    push af                                       ; $5dc4: $f5
    rst $38                                       ; $5dc5: $ff
    rst $20                                       ; $5dc6: $e7
    rrca                                          ; $5dc7: $0f
    rst $28                                       ; $5dc8: $ef
    ld [c], a                                     ; $5dc9: $e2
    rrca                                          ; $5dca: $0f
    rst $30                                       ; $5dcb: $f7
    rrca                                          ; $5dcc: $0f
    add $e1                                       ; $5dcd: $c6 $e1
    di                                            ; $5dcf: $f3
    rlca                                          ; $5dd0: $07
    push hl                                       ; $5dd1: $e5
    cp a                                          ; $5dd2: $bf
    rrca                                          ; $5dd3: $0f
    db $e3                                        ; $5dd4: $e3
    rrca                                          ; $5dd5: $0f
    jr jr_052_5d9b                                ; $5dd6: $18 $c3

    ld b, d                                       ; $5dd8: $42
    ld d, [hl]                                    ; $5dd9: $56
    ldh [$f7], a                                  ; $5dda: $e0 $f7
    ld [$c676], a                                 ; $5ddc: $ea $76 $c6
    ccf                                           ; $5ddf: $3f
    ld a, [hl]                                    ; $5de0: $7e
    ret nz                                        ; $5de1: $c0

    ccf                                           ; $5de2: $3f
    add b                                         ; $5de3: $80
    and b                                         ; $5de4: $a0
    sbc a                                         ; $5de5: $9f
    ld a, a                                       ; $5de6: $7f
    scf                                           ; $5de7: $37
    db $fd                                        ; $5de8: $fd
    ld a, a                                       ; $5de9: $7f
    or $e0                                        ; $5dea: $f6 $e0
    rst $38                                       ; $5dec: $ff
    ld [$5500], sp                                ; $5ded: $08 $00 $55
    nop                                           ; $5df0: $00
    cp [hl]                                       ; $5df1: $be
    ld [hl], h                                    ; $5df2: $74
    ldh a, [$c0]                                  ; $5df3: $f0 $c0
    ld l, b                                       ; $5df5: $68
    push hl                                       ; $5df6: $e5
    ld e, a                                       ; $5df7: $5f
    db $fc                                        ; $5df8: $fc
    ret nz                                        ; $5df9: $c0

    ld a, a                                       ; $5dfa: $7f
    nop                                           ; $5dfb: $00
    xor a                                         ; $5dfc: $af
    db $fc                                        ; $5dfd: $fc
    ldh [$9d], a                                  ; $5dfe: $e0 $9d
    ccf                                           ; $5e00: $3f
    db $f4                                        ; $5e01: $f4
    ld [c], a                                     ; $5e02: $e2
    ld de, $2a80                                  ; $5e03: $11 $80 $2a
    call nc, $f0c0                                ; $5e06: $d4 $c0 $f0
    push hl                                       ; $5e09: $e5
    cp a                                          ; $5e0a: $bf
    ldh a, [$fa]                                  ; $5e0b: $f0 $fa
    db $e4                                        ; $5e0d: $e4
    ld l, d                                       ; $5e0e: $6a
    jp hl                                         ; $5e0f: $e9


    db $f4                                        ; $5e10: $f4
    db $eb                                        ; $5e11: $eb
    nop                                           ; $5e12: $00
    add e                                         ; $5e13: $83
    dec de                                        ; $5e14: $1b
    db $e4                                        ; $5e15: $e4
    dec d                                         ; $5e16: $15
    xor $ff                                       ; $5e17: $ee $ff
    dec l                                         ; $5e19: $2d
    ret nc                                        ; $5e1a: $d0

    dec b                                         ; $5e1b: $05
    ld a, [$c034]                                 ; $5e1c: $fa $34 $c0
    ld d, a                                       ; $5e1f: $57
    xor d                                         ; $5e20: $aa
    rst $18                                       ; $5e21: $df
    and h                                         ; $5e22: $a4
    ld a, [bc]                                    ; $5e23: $0a
    ld c, e                                       ; $5e24: $4b
    add b                                         ; $5e25: $80
    ld b, d                                       ; $5e26: $42
    ldh [rNR41], a                                ; $5e27: $e0 $20
    dec e                                         ; $5e29: $1d
    ld [bc], a                                    ; $5e2a: $02
    rst $38                                       ; $5e2b: $ff
    cp h                                          ; $5e2c: $bc
    inc bc                                        ; $5e2d: $03
    sbc b                                         ; $5e2e: $98
    ld h, a                                       ; $5e2f: $67
    rla                                           ; $5e30: $17
    xor d                                         ; $5e31: $aa
    db $e4                                        ; $5e32: $e4
    ld a, [bc]                                    ; $5e33: $0a
    rst $38                                       ; $5e34: $ff
    adc e                                         ; $5e35: $8b
    jr nz, @+$24                                  ; $5e36: $20 $22

    nop                                           ; $5e38: $00
    db $dd                                        ; $5e39: $dd
    nop                                           ; $5e3a: $00
    cp l                                          ; $5e3b: $bd
    ld b, d                                       ; $5e3c: $42
    cp $08                                        ; $5e3d: $fe $08
    and c                                         ; $5e3f: $a1
    ld d, $a9                                     ; $5e40: $16 $a9
    add sp, $03                                   ; $5e42: $e8 $03
    add l                                         ; $5e44: $85
    ld [hl+], a                                   ; $5e45: $22
    ld a, [hl+]                                   ; $5e46: $2a
    rst $38                                       ; $5e47: $ff
    rlca                                          ; $5e48: $07
    db $db                                        ; $5e49: $db
    nop                                           ; $5e4a: $00
    cp h                                          ; $5e4b: $bc
    ld b, e                                       ; $5e4c: $43
    ccf                                           ; $5e4d: $3f
    ret nz                                        ; $5e4e: $c0

    add hl, de                                    ; $5e4f: $19
    ei                                            ; $5e50: $fb

jr_052_5e51:
    and $18                                       ; $5e51: $e6 $18
    ld h, b                                       ; $5e53: $60
    and b                                         ; $5e54: $a0
    inc a                                         ; $5e55: $3c
    jp $e7b8                                      ; $5e56: $c3 $b8 $e7


    ld [$f7ff], sp                                ; $5e59: $08 $ff $f7
    call z, $90fb                                 ; $5e5c: $cc $fb $90
    ld l, a                                       ; $5e5f: $6f
    ld a, [hl+]                                   ; $5e60: $2a
    rst $38                                       ; $5e61: $ff
    rra                                           ; $5e62: $1f
    rst $38                                       ; $5e63: $ff
    ldh [$d0], a                                  ; $5e64: $e0 $d0
    ld bc, $a15a                                  ; $5e66: $01 $5a $a1
    ld c, b                                       ; $5e69: $48
    rlca                                          ; $5e6a: $07
    ld hl, sp-$09                                 ; $5e6b: $f8 $f7
    rlca                                          ; $5e6d: $07
    inc e                                         ; $5e6e: $1c
    inc bc                                        ; $5e6f: $03
    ret nz                                        ; $5e70: $c0

    pop hl                                        ; $5e71: $e1
    or b                                          ; $5e72: $b0
    rrca                                          ; $5e73: $0f
    call z, $ff3f                                 ; $5e74: $cc $3f $ff
    ld a, c                                       ; $5e77: $79
    add [hl]                                      ; $5e78: $86
    ld [de], a                                    ; $5e79: $12
    rst $28                                       ; $5e7a: $ef
    dec de                                        ; $5e7b: $1b
    ldh [$3c], a                                  ; $5e7c: $e0 $3c
    jp $d0fe                                      ; $5e7e: $c3 $fe $d0


    pop hl                                        ; $5e81: $e1
    dec a                                         ; $5e82: $3d
    ret nz                                        ; $5e83: $c0

    ld c, a                                       ; $5e84: $4f
    and b                                         ; $5e85: $a0
    jr nc, jr_052_5e51                            ; $5e86: $30 $c9

    ld d, d                                       ; $5e88: $52
    rst $38                                       ; $5e89: $ff
    and c                                         ; $5e8a: $a1
    ld l, l                                       ; $5e8b: $6d
    jp nz, $c934                                  ; $5e8c: $c2 $34 $c9

    ld c, b                                       ; $5e8f: $48
    or e                                          ; $5e90: $b3
    ld a, [de]                                    ; $5e91: $1a
    rst $38                                       ; $5e92: $ff
    push hl                                       ; $5e93: $e5
    dec d                                         ; $5e94: $15
    cp a                                          ; $5e95: $bf
    adc $3f                                       ; $5e96: $ce $3f
    ld d, [hl]                                    ; $5e98: $56
    cp a                                          ; $5e99: $bf
    ld l, l                                       ; $5e9a: $6d
    rst $38                                       ; $5e9b: $ff
    cp a                                          ; $5e9c: $bf
    sbc [hl]                                      ; $5e9d: $9e
    ld a, a                                       ; $5e9e: $7f
    ld l, d                                       ; $5e9f: $6a
    cp a                                          ; $5ea0: $bf
    dec e                                         ; $5ea1: $1d
    rst $38                                       ; $5ea2: $ff
    ld c, [hl]                                    ; $5ea3: $4e
    rst $38                                       ; $5ea4: $ff
    cp a                                          ; $5ea5: $bf
    dec [hl]                                      ; $5ea6: $35
    ret nz                                        ; $5ea7: $c0

    ld c, [hl]                                    ; $5ea8: $4e
    and c                                         ; $5ea9: $a1
    ld [hl-], a                                   ; $5eaa: $32
    ret                                           ; $5eab: $c9


    ld d, a                                       ; $5eac: $57
    rst $38                                       ; $5ead: $ff
    and d                                         ; $5eae: $a2
    ld a, a                                       ; $5eaf: $7f
    push bc                                       ; $5eb0: $c5
    ld [hl-], a                                   ; $5eb1: $32
    rst $08                                       ; $5eb2: $cf
    ld d, l                                       ; $5eb3: $55
    cp a                                          ; $5eb4: $bf
    dec hl                                        ; $5eb5: $2b
    sbc $90                                       ; $5eb6: $de $90
    add d                                         ; $5eb8: $82
    cp h                                          ; $5eb9: $bc
    ld b, e                                       ; $5eba: $43
    ld e, b                                       ; $5ebb: $58
    and a                                         ; $5ebc: $a7
    nop                                           ; $5ebd: $00
    and b                                         ; $5ebe: $a0
    db $e3                                        ; $5ebf: $e3
    call nz, $f3ff                                ; $5ec0: $c4 $ff $f3
    or h                                          ; $5ec3: $b4
    db $eb                                        ; $5ec4: $eb
    sbc d                                         ; $5ec5: $9a
    ld a, a                                       ; $5ec6: $7f
    rst $28                                       ; $5ec7: $ef
    ccf                                           ; $5ec8: $3f
    ld a, [hl-]                                   ; $5ec9: $3a
    rst $38                                       ; $5eca: $ff
    rst $18                                       ; $5ecb: $df
    ld c, l                                       ; $5ecc: $4d
    rst $38                                       ; $5ecd: $ff
    or h                                          ; $5ece: $b4
    rst $38                                       ; $5ecf: $ff
    ld a, d                                       ; $5ed0: $7a
    rst $38                                       ; $5ed1: $ff
    xor b                                         ; $5ed2: $a8
    ei                                            ; $5ed3: $fb
    rst $38                                       ; $5ed4: $ff
    ld [hl], h                                    ; $5ed5: $74
    cp [hl]                                       ; $5ed6: $be
    add b                                         ; $5ed7: $80
    inc hl                                        ; $5ed8: $23
    rst $18                                       ; $5ed9: $df
    dec b                                         ; $5eda: $05
    rst $38                                       ; $5edb: $ff
    ld a, [de]                                    ; $5edc: $1a
    cp $70                                        ; $5edd: $fe $70
    add [hl]                                      ; $5edf: $86
    call nc, $bbff                                ; $5ee0: $d4 $ff $bb
    cp $74                                        ; $5ee3: $fe $74
    rst $38                                       ; $5ee5: $ff
    xor [hl]                                      ; $5ee6: $ae
    ld a, [$209a]                                 ; $5ee7: $fa $9a $20
    xor [hl]                                      ; $5eea: $ae
    ld a, [hl-]                                   ; $5eeb: $3a
    add b                                         ; $5eec: $80
    inc bc                                        ; $5eed: $03
    rst $38                                       ; $5eee: $ff
    ld d, d                                       ; $5eef: $52
    db $fc                                        ; $5ef0: $fc
    xor d                                         ; $5ef1: $aa
    xor a                                         ; $5ef2: $af
    db $fd                                        ; $5ef3: $fd
    ld [hl], a                                    ; $5ef4: $77
    ei                                            ; $5ef5: $fb
    and d                                         ; $5ef6: $a2
    or b                                          ; $5ef7: $b0
    ld h, b                                       ; $5ef8: $60
    dec c                                         ; $5ef9: $0d
    xor h                                         ; $5efa: $ac
    ld h, b                                       ; $5efb: $60
    ld a, [bc]                                    ; $5efc: $0a
    rst $38                                       ; $5efd: $ff
    rst $38                                       ; $5efe: $ff
    ld h, a                                       ; $5eff: $67
    adc b                                         ; $5f00: $88
    call Call_000_32bb                            ; $5f01: $cd $bb $32
    rst $28                                       ; $5f04: $ef
    db $eb                                        ; $5f05: $eb
    ld a, [$e0de]                                 ; $5f06: $fa $de $e0
    cp $1c                                        ; $5f09: $fe $1c
    add b                                         ; $5f0b: $80
    cp d                                          ; $5f0c: $ba
    rst $38                                       ; $5f0d: $ff
    daa                                           ; $5f0e: $27
    ret z                                         ; $5f0f: $c8

    ld l, l                                       ; $5f10: $6d
    rst $38                                       ; $5f11: $ff
    sbc e                                         ; $5f12: $9b
    ld [hl+], a                                   ; $5f13: $22
    rst $38                                       ; $5f14: $ff

jr_052_5f15:
    ld a, e                                       ; $5f15: $7b
    rst $38                                       ; $5f16: $ff
    or [hl]                                       ; $5f17: $b6
    rst $38                                       ; $5f18: $ff
    ld e, [hl]                                    ; $5f19: $5e
    ei                                            ; $5f1a: $fb
    rst $38                                       ; $5f1b: $ff
    cp e                                          ; $5f1c: $bb
    add h                                         ; $5f1d: $84
    ld h, b                                       ; $5f1e: $60
    ld c, $bf                                     ; $5f1f: $0e $bf
    db $dd                                        ; $5f21: $dd
    ccf                                           ; $5f22: $3f
    ld l, [hl]                                    ; $5f23: $6e
    cp e                                          ; $5f24: $bb
    cp a                                          ; $5f25: $bf
    ld d, a                                       ; $5f26: $57
    ld [hl], b                                    ; $5f27: $70

jr_052_5f28:
    ldh [$6d], a                                  ; $5f28: $e0 $6d
    cp a                                          ; $5f2a: $bf
    ld e, $70                                     ; $5f2b: $1e $70
    ldh [rHDMA2], a                               ; $5f2d: $e0 $52
    rst $38                                       ; $5f2f: $ff
    db $fd                                        ; $5f30: $fd
    xor $f9                                       ; $5f31: $ee $f9
    ld c, c                                       ; $5f33: $49
    or $a7                                        ; $5f34: $f6 $a7
    ld hl, sp+$47                                 ; $5f36: $f8 $47
    rst $38                                       ; $5f38: $ff
    ldh a, [$b4]                                  ; $5f39: $f0 $b4
    ret                                           ; $5f3b: $c9


    ld c, d                                       ; $5f3c: $4a
    or c                                          ; $5f3d: $b1
    dec de                                        ; $5f3e: $1b
    db $e4                                        ; $5f3f: $e4
    rst $38                                       ; $5f40: $ff
    rst $38                                       ; $5f41: $ff
    rra                                           ; $5f42: $1f
    ld c, d                                       ; $5f43: $4a
    cp a                                          ; $5f44: $bf
    ld l, c                                       ; $5f45: $69
    sub a                                         ; $5f46: $97
    ld [de], a                                    ; $5f47: $12
    rst $28                                       ; $5f48: $ef
    add hl, de                                    ; $5f49: $19
    rst $30                                       ; $5f4a: $f7
    ld [c], a                                     ; $5f4b: $e2
    jr c, jr_052_5f15                             ; $5f4c: $38 $c7

    nop                                           ; $5f4e: $00
    pop hl                                        ; $5f4f: $e1
    dec hl                                        ; $5f50: $2b
    ret nc                                        ; $5f51: $d0

    xor d                                         ; $5f52: $aa
    ld b, c                                       ; $5f53: $41
    cp a                                          ; $5f54: $bf
    cp $01                                        ; $5f55: $fe $01
    xor b                                         ; $5f57: $a8
    rlca                                          ; $5f58: $07
    ld a, b                                       ; $5f59: $78
    add a                                         ; $5f5a: $87
    db $10                                        ; $5f5b: $10
    db $e3                                        ; $5f5c: $e3

jr_052_5f5d:
    and c                                         ; $5f5d: $a1
    rst $38                                       ; $5f5e: $ff
    ld e, $8c                                     ; $5f5f: $1e $8c
    ld a, d                                       ; $5f61: $7a
    ld d, a                                       ; $5f62: $57
    xor b                                         ; $5f63: $a8
    jr c, jr_052_5f28                             ; $5f64: $38 $c2

    dec c                                         ; $5f66: $0d
    rst $30                                       ; $5f67: $f7
    ldh a, [$3d]                                  ; $5f68: $f0 $3d
    jp nz, Jump_052_61d8                          ; $5f6a: $c2 $d8 $61

    cpl                                           ; $5f6d: $2f
    sub b                                         ; $5f6e: $90
    ld sp, hl                                     ; $5f6f: $f9
    nop                                           ; $5f70: $00
    rst $38                                       ; $5f71: $ff
    adc d                                         ; $5f72: $8a
    ld hl, $0728                                  ; $5f73: $21 $28 $07
    ret c                                         ; $5f76: $d8

    rlca                                          ; $5f77: $07
    cp h                                          ; $5f78: $bc
    ld b, e                                       ; $5f79: $43
    db $fc                                        ; $5f7a: $fc
    ret z                                         ; $5f7b: $c8

    ld h, c                                       ; $5f7c: $61
    add hl, sp                                    ; $5f7d: $39
    and e                                         ; $5f7e: $a3
    ld [bc], a                                    ; $5f7f: $02
    db $fd                                        ; $5f80: $fd
    ld bc, $0dfe                                  ; $5f81: $01 $fe $0d
    ldh a, [rIE]                                  ; $5f84: $f0 $ff
    ld [bc], a                                    ; $5f86: $02
    db $fd                                        ; $5f87: $fd
    ld a, [hl+]                                   ; $5f88: $2a
    ret nc                                        ; $5f89: $d0

    dec hl                                        ; $5f8a: $2b
    sub $f5                                       ; $5f8b: $d6 $f5
    ld a, [bc]                                    ; $5f8d: $0a
    rst $38                                       ; $5f8e: $ff
    ld e, a                                       ; $5f8f: $5f
    add b                                         ; $5f90: $80
    xor c                                         ; $5f91: $a9
    ld [bc], a                                    ; $5f92: $02
    ld a, a                                       ; $5f93: $7f
    add b                                         ; $5f94: $80
    db $10                                        ; $5f95: $10
    rrca                                          ; $5f96: $0f
    rst $38                                       ; $5f97: $ff
    ldh [$1f], a                                  ; $5f98: $e0 $1f
    add b                                         ; $5f9a: $80
    ld a, a                                       ; $5f9b: $7f
    ld d, a                                       ; $5f9c: $57
    xor d                                         ; $5f9d: $aa
    push af                                       ; $5f9e: $f5
    ld a, [bc]                                    ; $5f9f: $0a
    cp a                                          ; $5fa0: $bf
    sbc a                                         ; $5fa1: $9f
    jr nz, jr_052_5f5d                            ; $5fa2: $20 $b9

    ld [bc], a                                    ; $5fa4: $02
    ld h, a                                       ; $5fa5: $67
    sbc b                                         ; $5fa6: $98
    rrca                                          ; $5fa7: $0f
    and e                                         ; $5fa8: $a3
    ld c, d                                       ; $5fa9: $4a
    rst $38                                       ; $5faa: $ff
    or l                                          ; $5fab: $b5
    db $f4                                        ; $5fac: $f4
    dec bc                                        ; $5fad: $0b
    sbc l                                         ; $5fae: $9d
    ld [hl+], a                                   ; $5faf: $22
    cp d                                          ; $5fb0: $ba
    rlca                                          ; $5fb1: $07
    ld a, e                                       ; $5fb2: $7b
    ld e, a                                       ; $5fb3: $5f
    add b                                         ; $5fb4: $80
    inc c                                         ; $5fb5: $0c
    di                                            ; $5fb6: $f3
    rlca                                          ; $5fb7: $07
    ld hl, sp-$41                                 ; $5fb8: $f8 $bf
    and c                                         ; $5fba: $a1
    add b                                         ; $5fbb: $80
    sbc [hl]                                      ; $5fbc: $9e
    nop                                           ; $5fbd: $00
    db $ed                                        ; $5fbe: $ed
    and b                                         ; $5fbf: $a0
    sbc d                                         ; $5fc0: $9a
    nop                                           ; $5fc1: $00
    ld l, b                                       ; $5fc2: $68
    rst $38                                       ; $5fc3: $ff
    sub b                                         ; $5fc4: $90
    pop bc                                        ; $5fc5: $c1
    rla                                           ; $5fc6: $17
    add sp, -$2f                                  ; $5fc7: $e8 $d1
    rst $20                                       ; $5fc9: $e7
    nop                                           ; $5fca: $00
    ld l, $d1                                     ; $5fcb: $2e $d1
    add b                                         ; $5fcd: $80
    pop hl                                        ; $5fce: $e1
    ret nz                                        ; $5fcf: $c0

    db $e3                                        ; $5fd0: $e3
    or b                                          ; $5fd1: $b0
    rrca                                          ; $5fd2: $0f
    add $fc                                       ; $5fd3: $c6 $fc
    sub b                                         ; $5fd5: $90
    call nz, $e3d0                                ; $5fd6: $c4 $d0 $e3
    dec a                                         ; $5fd9: $3d
    ret nz                                        ; $5fda: $c0

    ld e, a                                       ; $5fdb: $5f
    and b                                         ; $5fdc: $a0
    inc [hl]                                      ; $5fdd: $34
    ret                                           ; $5fde: $c9


    rst $10                                       ; $5fdf: $d7
    ld e, d                                       ; $5fe0: $5a
    and c                                         ; $5fe1: $a1
    ld a, l                                       ; $5fe2: $7d
    sub b                                         ; $5fe3: $90
    ret nz                                        ; $5fe4: $c0

    ld c, h                                       ; $5fe5: $4c
    sub b                                         ; $5fe6: $90
    ret nz                                        ; $5fe7: $c0

    ld d, l                                       ; $5fe8: $55
    cp a                                          ; $5fe9: $bf
    ei                                            ; $5fea: $fb
    adc [hl]                                      ; $5feb: $8e
    ld a, a                                       ; $5fec: $7f
    sub b                                         ; $5fed: $90
    jp z, $5ac8                                   ; $5fee: $ca $c8 $5a

    and c                                         ; $5ff1: $a1
    inc a                                         ; $5ff2: $3c
    jp Jump_052_537f                              ; $5ff3: $c3 $7f $53


    xor [hl]                                      ; $5ff6: $ae
    ld [hl], a                                    ; $5ff7: $77
    call $bf42                                    ; $5ff8: $cd $42 $bf
    dec d                                         ; $5ffb: $15
    ld l, d                                       ; $5ffc: $6a
    ld h, b                                       ; $5ffd: $60
    cp $6b                                        ; $5ffe: $fe $6b
    add c                                         ; $6000: $81
    ret nz                                        ; $6001: $c0

    ccf                                           ; $6002: $3f
    ld b, b                                       ; $6003: $40
    cp a                                          ; $6004: $bf
    ld b, b                                       ; $6005: $40
    rst $38                                       ; $6006: $ff
    or b                                          ; $6007: $b0
    rst $18                                       ; $6008: $df
    rst $28                                       ; $6009: $ef
    call z, $a4f3                                 ; $600a: $cc $f3 $a4
    ei                                            ; $600d: $fb
    sub b                                         ; $600e: $90
    rst $08                                       ; $600f: $cf
    inc bc                                        ; $6010: $03
    rst $38                                       ; $6011: $ff
    and a                                         ; $6012: $a7
    dec b                                         ; $6013: $05
    rst $38                                       ; $6014: $ff
    ld [bc], a                                    ; $6015: $02
    add hl, de                                    ; $6016: $19
    and [hl]                                      ; $6017: $a6
    sub b                                         ; $6018: $90
    call $9053                                    ; $6019: $cd $53 $90
    ret nz                                        ; $601c: $c0

    ld [hl], l                                    ; $601d: $75
    xor [hl]                                      ; $601e: $ae
    sub b                                         ; $601f: $90
    ret z                                         ; $6020: $c8

    ld [hl], a                                    ; $6021: $77
    adc b                                         ; $6022: $88
    call z, $ca90                                 ; $6023: $cc $90 $ca
    scf                                           ; $6026: $37
    sub b                                         ; $6027: $90
    call z, Call_052_6e4e                         ; $6028: $cc $4e $6e
    sub b                                         ; $602b: $90
    adc $ae                                       ; $602c: $ce $ae
    ld sp, hl                                     ; $602e: $f9
    ld a, c                                       ; $602f: $79
    sub b                                         ; $6030: $90
    ret z                                         ; $6031: $c8

    cp a                                          ; $6032: $bf
    ld e, a                                       ; $6033: $5f
    sub b                                         ; $6034: $90
    jp Jump_000_1def                              ; $6035: $c3 $ef $1d


    ld [c], a                                     ; $6038: $e2
    ld [$00f7], sp                                ; $6039: $08 $f7 $00
    pop hl                                        ; $603c: $e1
    dec l                                         ; $603d: $2d
    ret nc                                        ; $603e: $d0

    sbc d                                         ; $603f: $9a
    rst $28                                       ; $6040: $ef
    ld h, c                                       ; $6041: $61
    ld a, [hl]                                    ; $6042: $7e
    add c                                         ; $6043: $81
    add sp, $10                                   ; $6044: $e8 $10
    and $61                                       ; $6046: $e6 $61
    ld e, $95                                     ; $6048: $1e $95
    sbc $90                                       ; $604a: $de $90
    ret nz                                        ; $604c: $c0

    add hl, sp                                    ; $604d: $39
    jp nz, $f00f                                  ; $604e: $c2 $0f $f0

    rst $18                                       ; $6051: $df
    ld h, e                                       ; $6052: $63
    ld d, a                                       ; $6053: $57
    xor b                                         ; $6054: $a8
    rst $38                                       ; $6055: $ff
    ei                                            ; $6056: $fb
    nop                                           ; $6057: $00
    sbc [hl]                                      ; $6058: $9e
    ld hl, $07a8                                  ; $6059: $21 $a8 $07
    ld [hl], b                                    ; $605c: $70
    adc a                                         ; $605d: $8f
    cp $cf                                        ; $605e: $fe $cf
    ld h, e                                       ; $6060: $63
    inc c                                         ; $6061: $0c
    rst $30                                       ; $6062: $f7
    reti                                          ; $6063: $d9


    ld l, a                                       ; $6064: $6f
    ld [$63ff], sp                                ; $6065: $08 $ff $63
    rst $38                                       ; $6068: $ff
    cp l                                          ; $6069: $bd
    sub $6b                                       ; $606a: $d6 $6b
    ld l, d                                       ; $606c: $6a
    rst $18                                       ; $606d: $df
    jr nc, @-$1f                                  ; $606e: $30 $df

    ld d, e                                       ; $6070: $53
    rst $38                                       ; $6071: $ff
    db $fd                                        ; $6072: $fd
    nop                                           ; $6073: $00
    rst $38                                       ; $6074: $ff
    ld e, l                                       ; $6075: $5d
    rst $20                                       ; $6076: $e7
    ld [$40ff], sp                                ; $6077: $08 $ff $40
    ld l, a                                       ; $607a: $6f
    cp a                                          ; $607b: $bf
    ld l, h                                       ; $607c: $6c
    or a                                          ; $607d: $b7
    ld c, b                                       ; $607e: $48
    cp h                                          ; $607f: $bc
    ret nz                                        ; $6080: $c0

    ld b, b                                       ; $6081: $40
    rst $38                                       ; $6082: $ff
    inc h                                         ; $6083: $24
    dec b                                         ; $6084: $05
    call c, $ffff                                 ; $6085: $dc $ff $ff
    db $e4                                        ; $6088: $e4
    db $e3                                        ; $6089: $e3
    ld d, l                                       ; $608a: $55
    nop                                           ; $608b: $00
    cp d                                          ; $608c: $ba
    ld a, [hl]                                    ; $608d: $7e
    add b                                         ; $608e: $80
    xor e                                         ; $608f: $ab
    nop                                           ; $6090: $00
    rst $10                                       ; $6091: $d7
    ld e, l                                       ; $6092: $5d
    nop                                           ; $6093: $00
    ld [$8076], a                                 ; $6094: $ea $76 $80
    xor [hl]                                      ; $6097: $ae
    ld [hl], d                                    ; $6098: $72
    add b                                         ; $6099: $80
    adc d                                         ; $609a: $8a
    nop                                           ; $609b: $00
    rst $30                                       ; $609c: $f7
    ld d, h                                       ; $609d: $54
    nop                                           ; $609e: $00
    xor d                                         ; $609f: $aa
    ldh a, [$e0]                                  ; $60a0: $f0 $e0
    xor d                                         ; $60a2: $aa
    nop                                           ; $60a3: $00
    dec d                                         ; $60a4: $15
    nop                                           ; $60a5: $00
    rst $38                                       ; $60a6: $ff
    xor b                                         ; $60a7: $a8
    nop                                           ; $60a8: $00
    ld d, c                                       ; $60a9: $51
    nop                                           ; $60aa: $00
    ld [$2200], sp                                ; $60ab: $08 $00 $22
    nop                                           ; $60ae: $00
    ld a, a                                       ; $60af: $7f
    sub h                                         ; $60b0: $94
    nop                                           ; $60b1: $00
    add hl, hl                                    ; $60b2: $29
    nop                                           ; $60b3: $00
    ld b, h                                       ; $60b4: $44
    nop                                           ; $60b5: $00
    db $10                                        ; $60b6: $10
    db $e4                                        ; $60b7: $e4
    ldh [$75], a                                  ; $60b8: $e0 $75
    nop                                           ; $60ba: $00
    ld d, e                                       ; $60bb: $53
    nop                                           ; $60bc: $00
    ld bc, $0074                                  ; $60bd: $01 $74 $00
    jr nz, jr_052_60c2                            ; $60c0: $20 $00

jr_052_60c2:
    add b                                         ; $60c2: $80
    ld l, [hl]                                    ; $60c3: $6e
    nop                                           ; $60c4: $00
    cp $a0                                        ; $60c5: $fe $a0
    ldh a, [rNR23]                                ; $60c7: $f0 $18
    inc a                                         ; $60c9: $3c
    ld a, [hl]                                    ; $60ca: $7e
    ld a, [hl]                                    ; $60cb: $7e
    rst $38                                       ; $60cc: $ff
    ld [hl], b                                    ; $60cd: $70
    rst $38                                       ; $60ce: $ff
    rst $38                                       ; $60cf: $ff
    ld a, b                                       ; $60d0: $78
    db $fc                                        ; $60d1: $fc
    inc a                                         ; $60d2: $3c
    cp $80                                        ; $60d3: $fe $80
    ld a, h                                       ; $60d5: $7c
    ld h, h                                       ; $60d6: $64
    nop                                           ; $60d7: $00
    rst $38                                       ; $60d8: $ff
    nop                                           ; $60d9: $00
    ld [$3e1c], sp                                ; $60da: $08 $1c $3e
    ld [hl], $7f                                  ; $60dd: $36 $7f
    and [hl]                                      ; $60df: $a6
    ld a, a                                       ; $60e0: $7f
    sbc a                                         ; $60e1: $9f
    add h                                         ; $60e2: $84
    ld l, a                                       ; $60e3: $6f
    ld b, b                                       ; $60e4: $40
    ld c, $08                                     ; $60e5: $0e $08
    jr nc, jr_052_60ea                            ; $60e7: $30 $01

    inc a                                         ; $60e9: $3c

jr_052_60ea:
    and b                                         ; $60ea: $a0
    ld b, $bf                                     ; $60eb: $06 $bf
    rst $38                                       ; $60ed: $ff
    inc b                                         ; $60ee: $04
    rst $38                                       ; $60ef: $ff
    rlca                                          ; $60f0: $07
    db $fc                                        ; $60f1: $fc
    dec sp                                        ; $60f2: $3b
    ld l, c                                       ; $60f3: $69
    nop                                           ; $60f4: $00
    ld c, h                                       ; $60f5: $4c
    rst $38                                       ; $60f6: $ff
    di                                            ; $60f7: $f3
    ld [hl], a                                    ; $60f8: $77
    rst $38                                       ; $60f9: $ff
    sbc c                                         ; $60fa: $99
    rst $38                                       ; $60fb: $ff
    ld b, [hl]                                    ; $60fc: $46
    cp c                                          ; $60fd: $b9
    rst $28                                       ; $60fe: $ef
    rst $38                                       ; $60ff: $ff
    db $10                                        ; $6100: $10
    rst $38                                       ; $6101: $ff
    nop                                           ; $6102: $00
    ld h, [hl]                                    ; $6103: $66
    sbc c                                         ; $6104: $99
    nop                                           ; $6105: $00
    rst $38                                       ; $6106: $ff
    ld h, [hl]                                    ; $6107: $66
    ld a, [hl]                                    ; $6108: $7e
    ld b, $a0                                     ; $6109: $06 $a0
    cp l                                          ; $610b: $bd
    jp $c7b9                                      ; $610c: $c3 $b9 $c7


    inc de                                        ; $610f: $13
    rst $28                                       ; $6110: $ef
    ld hl, sp-$1f                                 ; $6111: $f8 $e1
    rst $38                                       ; $6113: $ff
    cp l                                          ; $6114: $bd
    jp $e71b                                      ; $6115: $c3 $1b $e7


    db $fc                                        ; $6118: $fc
    rst $38                                       ; $6119: $ff
    db $fd                                        ; $611a: $fd
    cp $ff                                        ; $611b: $fe $ff
    pop af                                        ; $611d: $f1
    cp $f3                                        ; $611e: $fe $f3
    db $fc                                        ; $6120: $fc
    jp $dcfc                                      ; $6121: $c3 $fc $dc


    db $e3                                        ; $6124: $e3
    rst $28                                       ; $6125: $ef
    dec e                                         ; $6126: $1d
    db $e3                                        ; $6127: $e3
    ld a, $c3                                     ; $6128: $3e $c3
    ld e, a                                       ; $612a: $5f
    ld c, l                                       ; $612b: $4d
    reti                                          ; $612c: $d9


    sbc a                                         ; $612d: $9f
    sbc l                                         ; $612e: $9d
    rst $38                                       ; $612f: $ff
    ld c, a                                       ; $6130: $4f
    ld h, $17                                     ; $6131: $26 $17
    and e                                         ; $6133: $a3
    di                                            ; $6134: $f3
    db $db                                        ; $6135: $db
    pop hl                                        ; $6136: $e1
    ld l, [hl]                                    ; $6137: $6e
    rst $38                                       ; $6138: $ff
    pop af                                        ; $6139: $f1
    inc [hl]                                      ; $613a: $34
    ei                                            ; $613b: $fb
    cp c                                          ; $613c: $b9
    rst $18                                       ; $613d: $df
    reti                                          ; $613e: $d9


    sbc a                                         ; $613f: $9f
    sbc h                                         ; $6140: $9c
    rst $30                                       ; $6141: $f7
    ld c, a                                       ; $6142: $4f
    daa                                           ; $6143: $27
    ld d, $f0                                     ; $6144: $16 $f0
    push hl                                       ; $6146: $e5
    reti                                          ; $6147: $d9


    rst $38                                       ; $6148: $ff
    rst $20                                       ; $6149: $e7
    jr @+$01                                      ; $614a: $18 $ff

    jp $e724                                      ; $614c: $c3 $24 $e7


Jump_052_614f:
    inc h                                         ; $614f: $24
    rst $38                                       ; $6150: $ff
    inc a                                         ; $6151: $3c
    db $db                                        ; $6152: $db
    inc a                                         ; $6153: $3c
    ei                                            ; $6154: $fb
    rst $20                                       ; $6155: $e7
    jr jr_052_61b8                                ; $6156: $18 $60

    ld b, c                                       ; $6158: $41
    ld h, a                                       ; $6159: $67
    sbc d                                         ; $615a: $9a
    call nz, $0b8a                                ; $615b: $c4 $8a $0b
    rst $38                                       ; $615e: $ff
    ret nz                                        ; $615f: $c0

    ld b, d                                       ; $6160: $42
    and b                                         ; $6161: $a0
    db $10                                        ; $6162: $10
    ret nz                                        ; $6163: $c0

    jp hl                                         ; $6164: $e9


    add b                                         ; $6165: $80
    ld h, b                                       ; $6166: $60
    rst $38                                       ; $6167: $ff
    sub c                                         ; $6168: $91
    adc e                                         ; $6169: $8b
    ld h, b                                       ; $616a: $60
    ld d, $a9                                     ; $616b: $16 $a9
    pop hl                                        ; $616d: $e1

jr_052_616e:
    dec bc                                        ; $616e: $0b
    adc d                                         ; $616f: $8a
    rst $38                                       ; $6170: $ff
    daa                                           ; $6171: $27
    daa                                           ; $6172: $27
    rrca                                          ; $6173: $0f
    xor l                                         ; $6174: $ad
    rra                                           ; $6175: $1f
    sub $3f                                       ; $6176: $d6 $3f
    ld a, l                                       ; $6178: $7d
    db $fc                                        ; $6179: $fc
    ld b, [hl]                                    ; $617a: $46
    add b                                         ; $617b: $80
    ldh a, [rTAC]                                 ; $617c: $f0 $07
    inc h                                         ; $617e: $24

Jump_052_617f:
    db $db                                        ; $617f: $db
    inc c                                         ; $6180: $0c
    rst $30                                       ; $6181: $f7
    ld [hl], $cf                                  ; $6182: $36 $cf

jr_052_6184:
    rst $38                                       ; $6184: $ff
    jr jr_052_616e                                ; $6185: $18 $e7

    sub $0f                                       ; $6187: $d6 $0f
    ld e, c                                       ; $6189: $59
    and [hl]                                      ; $618a: $a6
    ld b, d                                       ; $618b: $42
    rrca                                          ; $618c: $0f
    rst $38                                       ; $618d: $ff
    ei                                            ; $618e: $fb
    nop                                           ; $618f: $00
    inc e                                         ; $6190: $1c
    inc bc                                        ; $6191: $03
    cp a                                          ; $6192: $bf

jr_052_6193:
    nop                                           ; $6193: $00
    sbc c                                         ; $6194: $99
    ld h, [hl]                                    ; $6195: $66
    ld a, $08                                     ; $6196: $3e $08
    ld hl, $c23d                                  ; $6198: $21 $3d $c2
    jr jr_052_6184                                ; $619b: $18 $e7

    add hl, de                                    ; $619d: $19
    nop                                           ; $619e: $00
    inc h                                         ; $619f: $24
    ldh [$61], a                                  ; $61a0: $e0 $61
    sbc a                                         ; $61a2: $9f
    ld d, [hl]                                    ; $61a3: $56
    xor c                                         ; $61a4: $a9
    ld [hl+], a                                   ; $61a5: $22
    rst $38                                       ; $61a6: $ff
    ld [hl], l                                    ; $61a7: $75
    ld h, b                                       ; $61a8: $60
    add h                                         ; $61a9: $84
    ld d, b                                       ; $61aa: $50
    and e                                         ; $61ab: $a3
    ld de, $efff                                  ; $61ac: $11 $ff $ef
    rra                                           ; $61af: $1f
    ldh [$3d], a                                  ; $61b0: $e0 $3d
    rst $00                                       ; $61b2: $c7
    inc sp                                        ; $61b3: $33
    rst $08                                       ; $61b4: $cf
    dec l                                         ; $61b5: $2d
    db $fd                                        ; $61b6: $fd
    rst $10                                       ; $61b7: $d7

jr_052_61b8:
    or b                                          ; $61b8: $b0
    ld h, l                                       ; $61b9: $65
    jr z, jr_052_6193                             ; $61ba: $28 $d7

    ld b, h                                       ; $61bc: $44
    ei                                            ; $61bd: $fb
    or h                                          ; $61be: $b4
    rst $38                                       ; $61bf: $ff
    rst $38                                       ; $61c0: $ff
    ret nc                                        ; $61c1: $d0

    rst $38                                       ; $61c2: $ff
    db $db                                        ; $61c3: $db
    inc a                                         ; $61c4: $3c
    rst $00                                       ; $61c5: $c7
    inc l                                         ; $61c6: $2c
    xor l                                         ; $61c7: $ad
    ld l, [hl]                                    ; $61c8: $6e
    rst $38                                       ; $61c9: $ff
    sub e                                         ; $61ca: $93
    ld c, [hl]                                    ; $61cb: $4e
    rst $08                                       ; $61cc: $cf
    ld b, [hl]                                    ; $61cd: $46
    ld a, [de]                                    ; $61ce: $1a
    rst $08                                       ; $61cf: $cf
    ld hl, $ff9f                                  ; $61d0: $21 $9f $ff
    adc a                                         ; $61d3: $8f
    add e                                         ; $61d4: $83
    rra                                           ; $61d5: $1f
    rst $00                                       ; $61d6: $c7
    db $d3                                        ; $61d7: $d3

Jump_052_61d8:
    ld l, [hl]                                    ; $61d8: $6e
    cp l                                          ; $61d9: $bd
    ld a, [hl]                                    ; $61da: $7e
    rst $38                                       ; $61db: $ff
    db $eb                                        ; $61dc: $eb
    inc a                                         ; $61dd: $3c
    rst $38                                       ; $61de: $ff
    ld l, $ef                                     ; $61df: $2e $ef
    cpl                                           ; $61e1: $2f
    rst $18                                       ; $61e2: $df
    ccf                                           ; $61e3: $3f
    rst $38                                       ; $61e4: $ff
    cp $0f                                        ; $61e5: $fe $0f
    jr @+$01                                      ; $61e7: $18 $ff

    inc b                                         ; $61e9: $04
    rst $28                                       ; $61ea: $ef
    inc l                                         ; $61eb: $2c
    rst $28                                       ; $61ec: $ef
    rst $28                                       ; $61ed: $ef
    ld [de], a                                    ; $61ee: $12
    rst $08                                       ; $61ef: $cf
    ld c, [hl]                                    ; $61f0: $4e
    rst $00                                       ; $61f1: $c7
    ldh [$e5], a                                  ; $61f2: $e0 $e5
    ld d, d                                       ; $61f4: $52
    rst $28                                       ; $61f5: $ef
    inc a                                         ; $61f6: $3c
    rst $38                                       ; $61f7: $ff
    rst $38                                       ; $61f8: $ff
    jr z, @+$01                                   ; $61f9: $28 $ff

    ld a, $ef                                     ; $61fb: $3e $ef
    cpl                                           ; $61fd: $2f
    rst $28                                       ; $61fe: $ef
    rra                                           ; $61ff: $1f
    db $e3                                        ; $6200: $e3
    rst $38                                       ; $6201: $ff
    ld c, $20                                     ; $6202: $0e $20
    rst $18                                       ; $6204: $df
    rst $38                                       ; $6205: $ff

jr_052_6206:
    rst $38                                       ; $6206: $ff
    ei                                            ; $6207: $fb
    ld a, [$ffab]                                 ; $6208: $fa $ab $ff
    dec b                                         ; $620b: $05
    rst $38                                       ; $620c: $ff
    cp $ab                                        ; $620d: $fe $ab
    db $fc                                        ; $620f: $fc
    dec c                                         ; $6210: $0d

jr_052_6211:
    ld a, [$fdb2]                                 ; $6211: $fa $b2 $fd
    ld d, l                                       ; $6214: $55
    rst $38                                       ; $6215: $ff
    ld [$d7a8], a                                 ; $6216: $ea $a8 $d7
    db $f4                                        ; $6219: $f4
    adc e                                         ; $621a: $8b
    or b                                          ; $621b: $b0
    rrca                                          ; $621c: $0f
    sbc $bf                                       ; $621d: $de $bf
    ld a, a                                       ; $621f: $7f
    add hl, hl                                    ; $6220: $29
    cp $55                                        ; $6221: $fe $55
    rst $38                                       ; $6223: $ff
    cp [hl]                                       ; $6224: $be
    ld e, $e0                                     ; $6225: $1e $e0
    xor d                                         ; $6227: $aa
    ld e, a                                       ; $6228: $5f
    rst $38                                       ; $6229: $ff
    ret nz                                        ; $622a: $c0

    rst $38                                       ; $622b: $ff
    sbc b                                         ; $622c: $98
    ld h, a                                       ; $622d: $67
    jr nc, jr_052_6211                            ; $622e: $30 $e1

    ld e, b                                       ; $6230: $58
    ld h, b                                       ; $6231: $60
    ld h, [hl]                                    ; $6232: $66
    ld a, [$4b90]                                 ; $6233: $fa $90 $4b
    dec hl                                        ; $6236: $2b
    ret nc                                        ; $6237: $d0

    ld c, b                                       ; $6238: $48
    inc a                                         ; $6239: $3c
    inc bc                                        ; $623a: $03
    add h                                         ; $623b: $84
    ld [hl], e                                    ; $623c: $73
    or h                                          ; $623d: $b4
    ld sp, hl                                     ; $623e: $f9
    db $eb                                        ; $623f: $eb
    pop hl                                        ; $6240: $e1
    xor [hl]                                      ; $6241: $ae
    jr z, jr_052_62a6                             ; $6242: $28 $62

    add hl, de                                    ; $6244: $19
    rst $20                                       ; $6245: $e7
    rla                                           ; $6246: $17
    xor $3f                                       ; $6247: $ee $3f
    cp a                                          ; $6249: $bf
    ret z                                         ; $624a: $c8

    cpl                                           ; $624b: $2f
    ret c                                         ; $624c: $d8

    rra                                           ; $624d: $1f
    ldh a, [$fd]                                  ; $624e: $f0 $fd
    ld a, [hl+]                                   ; $6250: $2a
    nop                                           ; $6251: $00
    jp c, $c8fe                                   ; $6252: $da $fe $c8

    jr nz, jr_052_6206                            ; $6255: $20 $af

    cp $df                                        ; $6257: $fe $df
    ld hl, sp+$6f                                 ; $6259: $f8 $6f
    ld hl, sp-$21                                 ; $625b: $f8 $df
    push af                                       ; $625d: $f5
    ldh a, [rSCX]                                 ; $625e: $f0 $43
    ld b, b                                       ; $6260: $40
    inc a                                         ; $6261: $3c
    and [hl]                                      ; $6262: $a6
    ld b, c                                       ; $6263: $41
    ccf                                           ; $6264: $3f
    jp $c73e                                      ; $6265: $c3 $3e $c7


    rst $28                                       ; $6268: $ef
    db $dd                                        ; $6269: $dd
    cpl                                           ; $626a: $2f
    jp c, $f02f                                   ; $626b: $da $2f $f0

    push hl                                       ; $626e: $e5
    dec a                                         ; $626f: $3d
    jp Jump_000_1f3c                              ; $6270: $c3 $3c $1f


    rst $00                                       ; $6273: $c7
    ret nc                                        ; $6274: $d0

    cpl                                           ; $6275: $2f
    ret c                                         ; $6276: $d8

    cpl                                           ; $6277: $2f
    ld a, $ff                                     ; $6278: $3e $ff
    rst $38                                       ; $627a: $ff
    rst $38                                       ; $627b: $ff
    rst $38                                       ; $627c: $ff
    rst $38                                       ; $627d: $ff
    cp $f8                                        ; $627e: $fe $f8
    rst $30                                       ; $6280: $f7
    rra                                           ; $6281: $1f
    and $39                                       ; $6282: $e6 $39
    ret                                           ; $6284: $c9


    cp c                                          ; $6285: $b9
    ld c, c                                       ; $6286: $49
    ld e, a                                       ; $6287: $5f
    rra                                           ; $6288: $1f
    xor a                                         ; $6289: $af
    ld d, [hl]                                    ; $628a: $56
    rst $28                                       ; $628b: $ef
    cp b                                          ; $628c: $b8
    rst $20                                       ; $628d: $e7
    ld b, b                                       ; $628e: $40
    ld b, c                                       ; $628f: $41
    adc $ff                                       ; $6290: $ce $ff
    rst $38                                       ; $6292: $ff
    rst $38                                       ; $6293: $ff
    db $fc                                        ; $6294: $fc
    rst $38                                       ; $6295: $ff
    rst $38                                       ; $6296: $ff
    add sp, -$19                                  ; $6297: $e8 $e7
    ld hl, sp-$08                                 ; $6299: $f8 $f8
    db $e3                                        ; $629b: $e3
    ldh [$cf], a                                  ; $629c: $e0 $cf
    ret nz                                        ; $629e: $c0

    rst $38                                       ; $629f: $ff
    sbc a                                         ; $62a0: $9f
    add b                                         ; $62a1: $80
    cp a                                          ; $62a2: $bf
    add b                                         ; $62a3: $80
    ld a, $00                                     ; $62a4: $3e $00

jr_052_62a6:
    ld l, e                                       ; $62a6: $6b
    nop                                           ; $62a7: $00
    rst $38                                       ; $62a8: $ff
    ld a, [hl]                                    ; $62a9: $7e
    nop                                           ; $62aa: $00
    rra                                           ; $62ab: $1f
    rra                                           ; $62ac: $1f
    rst $00                                       ; $62ad: $c7
    rlca                                          ; $62ae: $07
    di                                            ; $62af: $f3
    inc bc                                        ; $62b0: $03
    ld a, a                                       ; $62b1: $7f
    xor c                                         ; $62b2: $a9
    ld bc, $01f5                                  ; $62b3: $01 $f5 $01
    and b                                         ; $62b6: $a0
    nop                                           ; $62b7: $00
    jp nc, $806c                                  ; $62b8: $d2 $6c $80

    rst $38                                       ; $62bb: $ff
    ld d, l                                       ; $62bc: $55
    nop                                           ; $62bd: $00
    jr z, jr_052_62c0                             ; $62be: $28 $00

jr_052_62c0:
    add b                                         ; $62c0: $80
    add b                                         ; $62c1: $80
    jp hl                                         ; $62c2: $e9


    jp hl                                         ; $62c3: $e9


    rst $18                                       ; $62c4: $df
    rst $30                                       ; $62c5: $f7
    rst $38                                       ; $62c6: $ff
    ld [c], a                                     ; $62c7: $e2
    rst $38                                       ; $62c8: $ff
    db $fc                                        ; $62c9: $fc
    ld e, h                                       ; $62ca: $5c
    ld h, b                                       ; $62cb: $60
    nop                                           ; $62cc: $00
    nop                                           ; $62cd: $00
    rst $38                                       ; $62ce: $ff
    dec d                                         ; $62cf: $15
    dec d                                         ; $62d0: $15
    xor e                                         ; $62d1: $ab
    xor e                                         ; $62d2: $ab
    ld a, a                                       ; $62d3: $7f
    ld a, a                                       ; $62d4: $7f
    rst $18                                       ; $62d5: $df
    rst $38                                       ; $62d6: $ff
    rst $30                                       ; $62d7: $f7
    rst $28                                       ; $62d8: $ef
    rst $38                                       ; $62d9: $ff
    ld a, a                                       ; $62da: $7f
    call $fb82                                    ; $62db: $cd $82 $fb
    rst $30                                       ; $62de: $f7
    jp hl                                         ; $62df: $e9


    rst $30                                       ; $62e0: $f7
    rst $38                                       ; $62e1: $ff
    ld sp, hl                                     ; $62e2: $f9
    rst $20                                       ; $62e3: $e7
    jp z, $f1f7                                   ; $62e4: $ca $f7 $f1

    rst $08                                       ; $62e7: $cf
    xor b                                         ; $62e8: $a8
    rst $10                                       ; $62e9: $d7
    ei                                            ; $62ea: $fb
    ldh a, [$8f]                                  ; $62eb: $f0 $8f
    or c                                          ; $62ed: $b1
    adc e                                         ; $62ee: $8b
    rst $30                                       ; $62ef: $f7
    rst $28                                       ; $62f0: $ef
    xor c                                         ; $62f1: $a9
    rst $10                                       ; $62f2: $d7
    ldh [rIE], a                                  ; $62f3: $e0 $ff
    sbc a                                         ; $62f5: $9f
    ld d, d                                       ; $62f6: $52
    xor a                                         ; $62f7: $af
    pop hl                                        ; $62f8: $e1
    rra                                           ; $62f9: $1f
    dec hl                                        ; $62fa: $2b
    rst $10                                       ; $62fb: $d7
    pop af                                        ; $62fc: $f1
    rst $38                                       ; $62fd: $ff
    adc a                                         ; $62fe: $8f
    and e                                         ; $62ff: $a3
    rst $18                                       ; $6300: $df
    push de                                       ; $6301: $d5
    rst $28                                       ; $6302: $ef
    ld d, a                                       ; $6303: $57
    rst $28                                       ; $6304: $ef
    di                                            ; $6305: $f3
    rst $38                                       ; $6306: $ff
    rst $08                                       ; $6307: $cf
    sub a                                         ; $6308: $97
    rst $28                                       ; $6309: $ef
    db $e3                                        ; $630a: $e3
    sbc a                                         ; $630b: $9f
    pop de                                        ; $630c: $d1
    xor a                                         ; $630d: $af
    ld h, e                                       ; $630e: $63
    ccf                                           ; $630f: $3f
    sbc a                                         ; $6310: $9f
    push bc                                       ; $6311: $c5
    ccf                                           ; $6312: $3f
    ld h, e                                       ; $6313: $63
    sbc a                                         ; $6314: $9f
    rst $30                                       ; $6315: $f7
    jp c, Jump_052_4ee1                           ; $6316: $da $e1 $4e

    ret nz                                        ; $6319: $c0

    rst $18                                       ; $631a: $df
    rst $30                                       ; $631b: $f7
    rst $38                                       ; $631c: $ff
    ld d, d                                       ; $631d: $52
    rst $38                                       ; $631e: $ff
    db $ed                                        ; $631f: $ed
    ld a, l                                       ; $6320: $7d
    add b                                         ; $6321: $80
    add l                                         ; $6322: $85
    rst $38                                       ; $6323: $ff
    ld e, a                                       ; $6324: $5f
    xor e                                         ; $6325: $ab
    rst $18                                       ; $6326: $df
    rst $28                                       ; $6327: $ef
    rst $38                                       ; $6328: $ff
    ei                                            ; $6329: $fb
    ldh [rLCDC], a                                ; $632a: $e0 $40
    ld [bc], a                                    ; $632c: $02
    nop                                           ; $632d: $00
    and b                                         ; $632e: $a0
    db $fd                                        ; $632f: $fd
    xor a                                         ; $6330: $af
    ld l, d                                       ; $6331: $6a
    add h                                         ; $6332: $84
    cp $fe                                        ; $6333: $fe $fe
    db $fc                                        ; $6335: $fc
    db $fc                                        ; $6336: $fc
    ld sp, hl                                     ; $6337: $f9
    ld hl, sp-$01                                 ; $6338: $f8 $ff
    di                                            ; $633a: $f3
    ldh a, [$e7]                                  ; $633b: $f0 $e7
    ldh [rIE], a                                  ; $633d: $e0 $ff
    rst $38                                       ; $633f: $ff
    jp $c9c3                                      ; $6340: $c3 $c3 $c9


    jr jr_052_639d                                ; $6343: $18 $58

    ldh [$84], a                                  ; $6345: $e0 $84
    add c                                         ; $6347: $81
    xor $5e                                       ; $6348: $ee $5e
    ld bc, $8249                                  ; $634a: $01 $49 $82
    ld a, a                                       ; $634d: $7f
    ld a, a                                       ; $634e: $7f
    rst $38                                       ; $634f: $ff
    ccf                                           ; $6350: $3f
    ccf                                           ; $6351: $3f
    sbc a                                         ; $6352: $9f
    rra                                           ; $6353: $1f
    rst $08                                       ; $6354: $cf
    rrca                                          ; $6355: $0f
    ld h, a                                       ; $6356: $67
    rlca                                          ; $6357: $07
    cp [hl]                                       ; $6358: $be
    ret nc                                        ; $6359: $d0

    jp hl                                         ; $635a: $e9


    ld a, [c]                                     ; $635b: $f2
    ldh a, [$e0]                                  ; $635c: $f0 $e0
    ldh [$cb], a                                  ; $635e: $e0 $cb
    inc h                                         ; $6360: $24
    ldh [$2f], a                                  ; $6361: $e0 $2f
    rst $38                                       ; $6363: $ff
    nop                                           ; $6364: $00
    ld e, a                                       ; $6365: $5f
    nop                                           ; $6366: $00
    or a                                          ; $6367: $b7
    nop                                           ; $6368: $00
    ld e, [hl]                                    ; $6369: $5e
    nop                                           ; $636a: $00
    ccf                                           ; $636b: $3f
    rst $28                                       ; $636c: $ef
    nop                                           ; $636d: $00
    ld d, a                                       ; $636e: $57
    nop                                           ; $636f: $00
    rst $28                                       ; $6370: $ef
    ld d, [hl]                                    ; $6371: $56
    nop                                           ; $6372: $00
    ld l, d                                       ; $6373: $6a
    nop                                           ; $6374: $00
    call c, Call_052_6eee                         ; $6375: $dc $ee $6e
    ld h, b                                       ; $6378: $60
    call nc, $8800                                ; $6379: $d4 $00 $88
    ld h, [hl]                                    ; $637c: $66
    ld h, b                                       ; $637d: $60
    sub e                                         ; $637e: $93
    inc bc                                        ; $637f: $03
    ld c, c                                       ; $6380: $49
    cp $16                                        ; $6381: $fe $16
    ldh [rDIV], a                                 ; $6383: $e0 $04
    inc b                                         ; $6385: $04
    adc e                                         ; $6386: $8b
    dec bc                                        ; $6387: $0b
    daa                                           ; $6388: $27
    daa                                           ; $6389: $27
    ld a, [bc]                                    ; $638a: $0a
    rst $30                                       ; $638b: $f7
    ld a, [bc]                                    ; $638c: $0a
    ld d, a                                       ; $638d: $57
    ld d, a                                       ; $638e: $57
    rst $30                                       ; $638f: $f7
    ld h, l                                       ; $6390: $65
    ld a, a                                       ; $6391: $7f
    ld a, a                                       ; $6392: $7f
    cp a                                          ; $6393: $bf
    cp a                                          ; $6394: $bf
    rst $38                                       ; $6395: $ff
    rst $38                                       ; $6396: $ff
    rst $38                                       ; $6397: $ff
    rst $28                                       ; $6398: $ef
    rst $28                                       ; $6399: $ef
    ret nc                                        ; $639a: $d0

    ret nc                                        ; $639b: $d0

    and b                                         ; $639c: $a0

jr_052_639d:
    and b                                         ; $639d: $a0
    rst $38                                       ; $639e: $ff
    call nz, $aac4                                ; $639f: $c4 $c4 $aa
    xor d                                         ; $63a2: $aa
    push af                                       ; $63a3: $f5
    push af                                       ; $63a4: $f5
    sbc $de                                       ; $63a5: $de $de
    cp $de                                        ; $63a7: $fe $de
    ld h, c                                       ; $63a9: $61
    xor l                                         ; $63aa: $ad
    nop                                           ; $63ab: $00
    rlca                                          ; $63ac: $07
    nop                                           ; $63ad: $00
    ld a, [bc]                                    ; $63ae: $0a
    nop                                           ; $63af: $00
    add l                                         ; $63b0: $85
    rst $38                                       ; $63b1: $ff
    add b                                         ; $63b2: $80
    nop                                           ; $63b3: $00
    nop                                           ; $63b4: $00
    xor b                                         ; $63b5: $a8
    xor b                                         ; $63b6: $a8
    push de                                       ; $63b7: $d5
    push de                                       ; $63b8: $d5
    ld a, d                                       ; $63b9: $7a
    rst $28                                       ; $63ba: $ef
    ld a, d                                       ; $63bb: $7a
    adc b                                         ; $63bc: $88
    nop                                           ; $63bd: $00
    ld [bc], a                                    ; $63be: $02
    cp b                                          ; $63bf: $b8
    ldh [rNR42], a                                ; $63c0: $e0 $21
    ld hl, $7f0a                                  ; $63c2: $21 $0a $7f
    ld a, [bc]                                    ; $63c5: $0a
    and l                                         ; $63c6: $a5
    and l                                         ; $63c7: $a5
    ld e, e                                       ; $63c8: $5b
    ld e, e                                       ; $63c9: $5b
    push hl                                       ; $63ca: $e5
    push hl                                       ; $63cb: $e5
    db $e4                                        ; $63cc: $e4
    pop bc                                        ; $63cd: $c1
    ei                                            ; $63ce: $fb
    xor a                                         ; $63cf: $af
    xor a                                         ; $63d0: $af
    jp nz, $fbe3                                  ; $63d1: $c2 $e3 $fb

    ei                                            ; $63d4: $fb
    ld e, [hl]                                    ; $63d5: $5e
    ld e, [hl]                                    ; $63d6: $5e
    rst $30                                       ; $63d7: $f7
    rst $38                                       ; $63d8: $ff
    rst $30                                       ; $63d9: $f7
    db $fd                                        ; $63da: $fd
    db $fd                                        ; $63db: $fd
    db $eb                                        ; $63dc: $eb
    db $eb                                        ; $63dd: $eb
    ld a, l                                       ; $63de: $7d
    ld a, l                                       ; $63df: $7d
    xor a                                         ; $63e0: $af
    rlca                                          ; $63e1: $07
    xor a                                         ; $63e2: $af
    ld e, e                                       ; $63e3: $5b
    ld e, e                                       ; $63e4: $5b
    sbc [hl]                                      ; $63e5: $9e
    ld h, c                                       ; $63e6: $61
    ld l, [hl]                                    ; $63e7: $6e
    rst $18                                       ; $63e8: $df
    rst $38                                       ; $63e9: $ff
    rst $38                                       ; $63ea: $ff
    rst $38                                       ; $63eb: $ff
    rst $38                                       ; $63ec: $ff
    rst $38                                       ; $63ed: $ff
    rst $38                                       ; $63ee: $ff
    nop                                           ; $63ef: $00
    rst $38                                       ; $63f0: $ff
    rst $38                                       ; $63f1: $ff
    rst $38                                       ; $63f2: $ff
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
    ld hl, sp-$09                                 ; $63fe: $f8 $f7
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
    nop                                           ; $65ba: $00
    nop                                           ; $65bb: $00
    nop                                           ; $65bc: $00
    nop                                           ; $65bd: $00
    nop                                           ; $65be: $00
    nop                                           ; $65bf: $00
    nop                                           ; $65c0: $00
    nop                                           ; $65c1: $00
    nop                                           ; $65c2: $00
    nop                                           ; $65c3: $00
    nop                                           ; $65c4: $00
    nop                                           ; $65c5: $00
    nop                                           ; $65c6: $00
    nop                                           ; $65c7: $00
    nop                                           ; $65c8: $00
    nop                                           ; $65c9: $00
    nop                                           ; $65ca: $00
    nop                                           ; $65cb: $00
    nop                                           ; $65cc: $00
    nop                                           ; $65cd: $00
    nop                                           ; $65ce: $00
    nop                                           ; $65cf: $00
    nop                                           ; $65d0: $00
    nop                                           ; $65d1: $00
    nop                                           ; $65d2: $00
    nop                                           ; $65d3: $00
    nop                                           ; $65d4: $00
    nop                                           ; $65d5: $00
    nop                                           ; $65d6: $00
    nop                                           ; $65d7: $00
    nop                                           ; $65d8: $00
    nop                                           ; $65d9: $00
    nop                                           ; $65da: $00
    nop                                           ; $65db: $00
    nop                                           ; $65dc: $00
    nop                                           ; $65dd: $00
    nop                                           ; $65de: $00
    nop                                           ; $65df: $00
    nop                                           ; $65e0: $00
    nop                                           ; $65e1: $00
    nop                                           ; $65e2: $00
    nop                                           ; $65e3: $00
    nop                                           ; $65e4: $00
    nop                                           ; $65e5: $00
    nop                                           ; $65e6: $00
    nop                                           ; $65e7: $00
    nop                                           ; $65e8: $00
    nop                                           ; $65e9: $00
    nop                                           ; $65ea: $00
    nop                                           ; $65eb: $00
    nop                                           ; $65ec: $00
    nop                                           ; $65ed: $00
    nop                                           ; $65ee: $00
    nop                                           ; $65ef: $00
    nop                                           ; $65f0: $00
    nop                                           ; $65f1: $00
    nop                                           ; $65f2: $00
    nop                                           ; $65f3: $00
    nop                                           ; $65f4: $00
    nop                                           ; $65f5: $00
    nop                                           ; $65f6: $00
    nop                                           ; $65f7: $00
    nop                                           ; $65f8: $00
    nop                                           ; $65f9: $00
    nop                                           ; $65fa: $00
    nop                                           ; $65fb: $00
    nop                                           ; $65fc: $00
    nop                                           ; $65fd: $00
    nop                                           ; $65fe: $00
    nop                                           ; $65ff: $00
    nop                                           ; $6600: $00
    nop                                           ; $6601: $00
    nop                                           ; $6602: $00
    ld a, l                                       ; $6603: $7d
    inc sp                                        ; $6604: $33
    rst $38                                       ; $6605: $ff
    db $ec                                        ; $6606: $ec
    ld de, $1113                                  ; $6607: $11 $13 $11
    inc sp                                        ; $660a: $33
    inc de                                        ; $660b: $13
    ld hl, sp-$1f                                 ; $660c: $f8 $e1
    ld b, [hl]                                    ; $660e: $46
    rst $38                                       ; $660f: $ff
    pop hl                                        ; $6610: $e1
    inc de                                        ; $6611: $13
    inc de                                        ; $6612: $13
    ldh a, [$e0]                                  ; $6613: $f0 $e0
    ld a, [c]                                     ; $6615: $f2
    pop hl                                        ; $6616: $e1
    ldh a, [$e1]                                  ; $6617: $f0 $e1
    ld sp, $e0fe                                  ; $6619: $31 $fe $e0
    dec [hl]                                      ; $661c: $35
    inc sp                                        ; $661d: $33
    cp $e1                                        ; $661e: $fe $e1
    ld sp, $e0fe                                  ; $6620: $31 $fe $e0
    inc sp                                        ; $6623: $33
    ld sp, $e3e9                                  ; $6624: $31 $e9 $e3
    pop bc                                        ; $6627: $c1
    ldh [rNR42], a                                ; $6628: $e0 $21
    inc de                                        ; $662a: $13
    ret nc                                        ; $662b: $d0

    and $c0                                       ; $662c: $e6 $c0
    ld [c], a                                     ; $662e: $e2
    cp $e5                                        ; $662f: $fe $e5
    cp a                                          ; $6631: $bf
    db $e3                                        ; $6632: $e3
    ld sp, $e1ba                                  ; $6633: $31 $ba $e1
    xor h                                         ; $6636: $ac
    ldh [rNR23], a                                ; $6637: $e0 $18
    db $e4                                        ; $6639: $e4
    ld [c], a                                     ; $663a: $e2
    db $fc                                        ; $663b: $fc
    ld sp, hl                                     ; $663c: $f9
    cp d                                          ; $663d: $ba
    ldh [$31], a                                  ; $663e: $e0 $31
    inc de                                        ; $6640: $13
    and [hl]                                      ; $6641: $a6
    ld [c], a                                     ; $6642: $e2
    adc h                                         ; $6643: $8c
    ldh [$7a], a                                  ; $6644: $e0 $7a
    ldh [$88], a                                  ; $6646: $e0 $88
    sub h                                         ; $6648: $94
    ldh [$72], a                                  ; $6649: $e0 $72
    ld [c], a                                     ; $664b: $e2
    ld h, b                                       ; $664c: $60
    push hl                                       ; $664d: $e5
    rst $38                                       ; $664e: $ff
    rst $38                                       ; $664f: $ff
    rst $38                                       ; $6650: $ff
    rst $38                                       ; $6651: $ff
    rst $38                                       ; $6652: $ff
    pop af                                        ; $6653: $f1
    ldh a, [$66]                                  ; $6654: $f0 $66
    ld a, $ff                                     ; $6656: $3e $ff
    db $e4                                        ; $6658: $e4
    nop                                           ; $6659: $00
    ld b, $06                                     ; $665a: $06 $06
    ld h, [hl]                                    ; $665c: $66
    ld b, $f8                                     ; $665d: $06 $f8
    pop hl                                        ; $665f: $e1
    rst $38                                       ; $6660: $ff
    pop hl                                        ; $6661: $e1
    cp h                                          ; $6662: $bc
    ldh a, [$e1]                                  ; $6663: $f0 $e1
    rst $20                                       ; $6665: $e7
    db $e4                                        ; $6666: $e4
    ld h, b                                       ; $6667: $60
    nop                                           ; $6668: $00
    ld h, b                                       ; $6669: $60
    nop                                           ; $666a: $00
    di                                            ; $666b: $f3
    ldh [rP1], a                                  ; $666c: $e0 $00
    add e                                         ; $666e: $83
    ld h, [hl]                                    ; $666f: $66
    ld h, b                                       ; $6670: $60
    cp $e0                                        ; $6671: $fe $e0
    rst $38                                       ; $6673: $ff
    ldh a, [$d1]                                  ; $6674: $f0 $d1
    db $e4                                        ; $6676: $e4
    db $dd                                        ; $6677: $dd
    ld [c], a                                     ; $6678: $e2
    rst $10                                       ; $6679: $d7
    pop hl                                        ; $667a: $e1
    sbc c                                         ; $667b: $99
    ld l, a                                       ; $667c: $6f
    sub [hl]                                      ; $667d: $96
    sub [hl]                                      ; $667e: $96
    ld h, [hl]                                    ; $667f: $66
    sub [hl]                                      ; $6680: $96
    xor e                                         ; $6681: $ab
    ldh [rNR11], a                                ; $6682: $e0 $11
    sbc c                                         ; $6684: $99
    rst $38                                       ; $6685: $ff
    ldh [$78], a                                  ; $6686: $e0 $78
    and e                                         ; $6688: $a3
    ldh [$fc], a                                  ; $6689: $e0 $fc
    pop hl                                        ; $668b: $e1
    sbc h                                         ; $668c: $9c
    pop hl                                        ; $668d: $e1
    ld l, c                                       ; $668e: $69
    sub c                                         ; $668f: $91
    ld l, c                                       ; $6690: $69
    sub c                                         ; $6691: $91
    di                                            ; $6692: $f3
    ldh [rTAC], a                                 ; $6693: $e0 $07
    sbc c                                         ; $6695: $99
    ld h, [hl]                                    ; $6696: $66
    ld l, c                                       ; $6697: $69
    cp $e0                                        ; $6698: $fe $e0
    ldh a, [$e1]                                  ; $669a: $f0 $e1
    db $db                                        ; $669c: $db
    pop hl                                        ; $669d: $e1
    add e                                         ; $669e: $83
    ld [c], a                                     ; $669f: $e2
    ret nc                                        ; $66a0: $d0

    db $e3                                        ; $66a1: $e3
    ld d, b                                       ; $66a2: $50
    pop de                                        ; $66a3: $d1
    db $e4                                        ; $66a4: $e4
    db $dd                                        ; $66a5: $dd
    ld [c], a                                     ; $66a6: $e2
    db $fc                                        ; $66a7: $fc
    ld [c], a                                     ; $66a8: $e2
    ret nz                                        ; $66a9: $c0

    ldh [rNR24], a                                ; $66aa: $e0 $19
    ld a, e                                       ; $66ac: $7b
    ret nz                                        ; $66ad: $c0

    sbc c                                         ; $66ae: $99
    cp $e1                                        ; $66af: $fe $e1
    rst $20                                       ; $66b1: $e7
    sub c                                         ; $66b2: $91
    sbc c                                         ; $66b3: $99
    ld de, $e268                                  ; $66b4: $11 $68 $e2
    ld h, e                                       ; $66b7: $63
    ldh [$99], a                                  ; $66b8: $e0 $99
    sub b                                         ; $66ba: $90
    sub b                                         ; $66bb: $90
    jp $9000                                      ; $66bc: $c3 $00 $90


    ld e, e                                       ; $66bf: $5b
    ldh [$a0], a                                  ; $66c0: $e0 $a0
    ld [c], a                                     ; $66c2: $e2
    ldh a, [$e1]                                  ; $66c3: $f0 $e1
    rst $20                                       ; $66c5: $e7
    db $e4                                        ; $66c6: $e4
    add hl, bc                                    ; $66c7: $09
    sub c                                         ; $66c8: $91
    dec sp                                        ; $66c9: $3b
    add hl, bc                                    ; $66ca: $09
    sub c                                         ; $66cb: $91
    di                                            ; $66cc: $f3
    ldh [$99], a                                  ; $66cd: $e0 $99

Jump_052_66cf:
    nop                                           ; $66cf: $00
    add hl, bc                                    ; $66d0: $09
    cp $e0                                        ; $66d1: $fe $e0
    ldh a, [$e1]                                  ; $66d3: $f0 $e1
    ret nz                                        ; $66d5: $c0

    db $db                                        ; $66d6: $db
    pop hl                                        ; $66d7: $e1
    inc sp                                        ; $66d8: $33
    ld [c], a                                     ; $66d9: $e2
    ret nc                                        ; $66da: $d0

    db $e3                                        ; $66db: $e3
    pop de                                        ; $66dc: $d1
    db $e4                                        ; $66dd: $e4
    db $dd                                        ; $66de: $dd
    ld [c], a                                     ; $66df: $e2
    reti                                          ; $66e0: $d9


    pop hl                                        ; $66e1: $e1
    sub b                                         ; $66e2: $90
    add hl, bc                                    ; $66e3: $09
    ld [de], a                                    ; $66e4: $12
    and b                                         ; $66e5: $a0
    ldh [$91], a                                  ; $66e6: $e0 $91
    and b                                         ; $66e8: $a0
    pop hl                                        ; $66e9: $e1
    add $e1                                       ; $66ea: $c6 $e1
    sbc c                                         ; $66ec: $99
    ld de, $4dc2                                  ; $66ed: $11 $c2 $4d
    pop hl                                        ; $66f0: $e1
    sub b                                         ; $66f1: $90

Jump_052_66f2:
    ld [c], a                                     ; $66f2: $e2
    ld h, h                                       ; $66f3: $64
    adc d                                         ; $66f4: $8a
    ldh [$f0], a                                  ; $66f5: $e0 $f0
    pop af                                        ; $66f7: $f1
    sub c                                         ; $66f8: $91
    add sp, -$1c                                  ; $66f9: $e8 $e4
    call nc, Call_000_22e4                        ; $66fb: $d4 $e4 $22
    sub d                                         ; $66fe: $92
    cp $e0                                        ; $66ff: $fe $e0
    rst $38                                       ; $6701: $ff
    ld de, $1919                                  ; $6702: $11 $19 $19
    sbc c                                         ; $6705: $99
    sbc c                                         ; $6706: $99
    sub d                                         ; $6707: $92
    sub d                                         ; $6708: $92
    ld [hl+], a                                   ; $6709: $22
    db $fc                                        ; $670a: $fc
    db $fc                                        ; $670b: $fc
    pop hl                                        ; $670c: $e1
    rst $38                                       ; $670d: $ff
    pop hl                                        ; $670e: $e1
    ld de, $1999                                  ; $670f: $11 $99 $19
    sub d                                         ; $6712: $92
    add hl, de                                    ; $6713: $19
    sub d                                         ; $6714: $92
    dec sp                                        ; $6715: $3b
    sbc c                                         ; $6716: $99
    ld [hl+], a                                   ; $6717: $22
    ld [c], a                                     ; $6718: $e2
    db $e3                                        ; $6719: $e3
    ld [hl+], a                                   ; $671a: $22
    ld [hl+], a                                   ; $671b: $22
    add hl, hl                                    ; $671c: $29
    jp hl                                         ; $671d: $e9


    db $e3                                        ; $671e: $e3
    db $e4                                        ; $671f: $e4
    ldh [$80], a                                  ; $6720: $e0 $80
    ldh a, [$e3]                                  ; $6722: $f0 $e3
    jp hl                                         ; $6724: $e9


    pop bc                                        ; $6725: $c1
    rst $10                                       ; $6726: $d7
    pop hl                                        ; $6727: $e1
    sbc $e1                                       ; $6728: $de $e1
    jp c, $88e1                                   ; $672a: $da $e1 $88

    push hl                                       ; $672d: $e5
    adc c                                         ; $672e: $89
    db $e4                                        ; $672f: $e4
    sbc c                                         ; $6730: $99
    ld hl, sp-$54                                 ; $6731: $f8 $ac
    pop hl                                        ; $6733: $e1
    jp nz, $f8e0                                  ; $6734: $c2 $e0 $f8

    ldh [$99], a                                  ; $6737: $e0 $99
    sub d                                         ; $6739: $92
    add hl, de                                    ; $673a: $19
    sbc c                                         ; $673b: $99
    ld de, $1939                                  ; $673c: $11 $39 $19
    add $e3                                       ; $673f: $c6 $e3
    pop af                                        ; $6741: $f1
    pop hl                                        ; $6742: $e1
    add hl, hl                                    ; $6743: $29
    sub c                                         ; $6744: $91
    add hl, hl                                    ; $6745: $29
    ld hl, sp-$40                                 ; $6746: $f8 $c0
    xor l                                         ; $6748: $ad
    pop hl                                        ; $6749: $e1
    nop                                           ; $674a: $00
    cp $e0                                        ; $674b: $fe $e0
    cp h                                          ; $674d: $bc
    ld [c], a                                     ; $674e: $e2
    and d                                         ; $674f: $a2
    db $e4                                        ; $6750: $e4
    ldh a, [$e1]                                  ; $6751: $f0 $e1
    add h                                         ; $6753: $84
    ld [c], a                                     ; $6754: $e2
    and h                                         ; $6755: $a4
    ld [c], a                                     ; $6756: $e2
    and a                                         ; $6757: $a7
    db $e4                                        ; $6758: $e4
    dec [hl]                                      ; $6759: $35
    ld [c], a                                     ; $675a: $e2
    nop                                           ; $675b: $00
    ret nz                                        ; $675c: $c0

    push bc                                       ; $675d: $c5
    cp d                                          ; $675e: $ba
    ret nz                                        ; $675f: $c0

    ld a, d                                       ; $6760: $7a
    push hl                                       ; $6761: $e5
    cp $fd                                        ; $6762: $fe $fd
    sbc b                                         ; $6764: $98
    push bc                                       ; $6765: $c5
    rst $38                                       ; $6766: $ff
    rst $38                                       ; $6767: $ff
    rst $38                                       ; $6768: $ff
    rst $38                                       ; $6769: $ff
    rst $38                                       ; $676a: $ff
    rst $38                                       ; $676b: $ff

Jump_052_676c:
    nop                                           ; $676c: $00
    rst $38                                       ; $676d: $ff
    rst $38                                       ; $676e: $ff
    rst $38                                       ; $676f: $ff
    rst $38                                       ; $6770: $ff
    and $a3                                       ; $6771: $e6 $a3
    ld h, a                                       ; $6773: $67
    add $ff                                       ; $6774: $c6 $ff
    rst $38                                       ; $6776: $ff
    rst $38                                       ; $6777: $ff
    rst $38                                       ; $6778: $ff
    rst $38                                       ; $6779: $ff
    rst $38                                       ; $677a: $ff
    rst $38                                       ; $677b: $ff
    rst $38                                       ; $677c: $ff
    db $f4                                        ; $677d: $f4
    rst $38                                       ; $677e: $ff
    rst $38                                       ; $677f: $ff
    sbc l                                         ; $6780: $9d
    ld h, d                                       ; $6781: $62
    ld d, l                                       ; $6782: $55
    rst $38                                       ; $6783: $ff
    rst $20                                       ; $6784: $e7
    ld d, c                                       ; $6785: $51
    ld d, l                                       ; $6786: $55
    ld de, $e051                                  ; $6787: $11 $51 $e0
    jr @-$58                                      ; $678a: $18 $a6

    ld c, $ed                                     ; $678c: $0e $ed
    ret nz                                        ; $678e: $c0

    ld a, l                                       ; $678f: $7d
    and b                                         ; $6790: $a0
    ld [hl], l                                    ; $6791: $75
    jr c, jr_052_67f4                             ; $6792: $38 $60

    rla                                           ; $6794: $17
    ld de, $5f77                                  ; $6795: $11 $77 $5f
    rla                                           ; $6798: $17
    ld [hl], a                                    ; $6799: $77
    ld de, $7711                                  ; $679a: $11 $11 $77
    rst $38                                       ; $679d: $ff
    db $e3                                        ; $679e: $e3
    ld [hl], c                                    ; $679f: $71
    cp $e4                                        ; $67a0: $fe $e4
    db $10                                        ; $67a2: $10
    rst $38                                       ; $67a3: $ff
    db $fc                                        ; $67a4: $fc
    adc [hl]                                      ; $67a5: $8e
    rst $18                                       ; $67a6: $df
    rst $38                                       ; $67a7: $ff
    rst $38                                       ; $67a8: $ff
    ld e, b                                       ; $67a9: $58
    rst $18                                       ; $67aa: $df
    ld de, $f610                                  ; $67ab: $11 $10 $f6

Jump_052_67ae:
    rst $38                                       ; $67ae: $ff
    rst $38                                       ; $67af: $ff
    rst $38                                       ; $67b0: $ff
    rst $38                                       ; $67b1: $ff
    cp [hl]                                       ; $67b2: $be
    rst $20                                       ; $67b3: $e7
    and $06                                       ; $67b4: $e6 $06
    nop                                           ; $67b6: $00
    ld h, [hl]                                    ; $67b7: $66
    ld de, $6619                                  ; $67b8: $11 $19 $66
    add b                                         ; $67bb: $80
    sub [hl]                                      ; $67bc: $96
    ld a, [bc]                                    ; $67bd: $0a
    ld [hl], d                                    ; $67be: $72
    ld h, h                                       ; $67bf: $64
    ld l, c                                       ; $67c0: $69
    ld l, c                                       ; $67c1: $69
    ld h, h                                       ; $67c2: $64
    ld h, b                                       ; $67c3: $60
    ld de, $ff63                                  ; $67c4: $11 $63 $ff
    rst $38                                       ; $67c7: $ff
    rst $38                                       ; $67c8: $ff
    rst $38                                       ; $67c9: $ff
    rst $38                                       ; $67ca: $ff
    rst $38                                       ; $67cb: $ff
    nop                                           ; $67cc: $00
    db $f4                                        ; $67cd: $f4
    di                                            ; $67ce: $f3
    ld a, b                                       ; $67cf: $78
    db $dd                                        ; $67d0: $dd
    rst $38                                       ; $67d1: $ff
    rst $38                                       ; $67d2: $ff
    rst $38                                       ; $67d3: $ff
    rst $38                                       ; $67d4: $ff
    rst $38                                       ; $67d5: $ff
    rst $38                                       ; $67d6: $ff
    rst $38                                       ; $67d7: $ff
    rst $38                                       ; $67d8: $ff
    ldh [$bf], a                                  ; $67d9: $e0 $bf
    rst $38                                       ; $67db: $ff
    rst $38                                       ; $67dc: $ff
    nop                                           ; $67dd: $00
    rst $38                                       ; $67de: $ff
    rst $38                                       ; $67df: $ff
    rst $38                                       ; $67e0: $ff
    rst $38                                       ; $67e1: $ff
    rst $38                                       ; $67e2: $ff
    rst $38                                       ; $67e3: $ff
    rst $38                                       ; $67e4: $ff
    rst $38                                       ; $67e5: $ff
    xor b                                         ; $67e6: $a8
    adc c                                         ; $67e7: $89
    nop                                           ; $67e8: $00
    nop                                           ; $67e9: $00
    nop                                           ; $67ea: $00
    ld bc, $ff00                                  ; $67eb: $01 $00 $ff
    rst $38                                       ; $67ee: $ff
    rst $38                                       ; $67ef: $ff
    rst $38                                       ; $67f0: $ff
    rst $38                                       ; $67f1: $ff
    rst $38                                       ; $67f2: $ff
    rst $38                                       ; $67f3: $ff

jr_052_67f4:
    rst $38                                       ; $67f4: $ff
    rst $38                                       ; $67f5: $ff
    rst $38                                       ; $67f6: $ff
    rst $38                                       ; $67f7: $ff
    rst $38                                       ; $67f8: $ff
    rst $38                                       ; $67f9: $ff
    rst $38                                       ; $67fa: $ff
    nop                                           ; $67fb: $00
    rst $38                                       ; $67fc: $ff
    rst $38                                       ; $67fd: $ff
    rst $38                                       ; $67fe: $ff
    rst $38                                       ; $67ff: $ff
    rst $38                                       ; $6800: $ff
    rst $38                                       ; $6801: $ff
    rst $38                                       ; $6802: $ff
    rst $38                                       ; $6803: $ff
    rst $38                                       ; $6804: $ff
    rst $38                                       ; $6805: $ff
    rst $38                                       ; $6806: $ff
    rst $38                                       ; $6807: $ff
    rst $38                                       ; $6808: $ff
    rst $38                                       ; $6809: $ff
    rst $38                                       ; $680a: $ff
    rst $38                                       ; $680b: $ff
    nop                                           ; $680c: $00
    rst $38                                       ; $680d: $ff
    rst $38                                       ; $680e: $ff
    rst $38                                       ; $680f: $ff
    rst $38                                       ; $6810: $ff
    rst $38                                       ; $6811: $ff
    rst $38                                       ; $6812: $ff
    rst $38                                       ; $6813: $ff
    rst $38                                       ; $6814: $ff
    rst $38                                       ; $6815: $ff
    rst $38                                       ; $6816: $ff
    rst $38                                       ; $6817: $ff
    rst $38                                       ; $6818: $ff
    rst $38                                       ; $6819: $ff
    rst $38                                       ; $681a: $ff
    rst $38                                       ; $681b: $ff
    rst $38                                       ; $681c: $ff
    rst $38                                       ; $681d: $ff
    nop                                           ; $681e: $00
    nop                                           ; $681f: $00
    dec c                                         ; $6820: $0d
    nop                                           ; $6821: $00
    db $dd                                        ; $6822: $dd
    dec c                                         ; $6823: $0d
    db $dd                                        ; $6824: $dd
    db $dd                                        ; $6825: $dd
    ld a, e                                       ; $6826: $7b
    db $dd                                        ; $6827: $dd
    xor $ff                                       ; $6828: $ee $ff
    ldh [$de], a                                  ; $682a: $e0 $de
    xor $d0                                       ; $682c: $ee $d0
    nop                                           ; $682e: $00
    ld hl, sp-$1f                                 ; $682f: $f8 $e1
    rst $30                                       ; $6831: $f7
    xor $ee                                       ; $6832: $ee $ee
    nop                                           ; $6834: $00
    ld hl, sp-$1d                                 ; $6835: $f8 $e3
    rst $28                                       ; $6837: $ef
    nop                                           ; $6838: $00
    rrca                                          ; $6839: $0f
    ldh a, [$7f]                                  ; $683a: $f0 $7f
    nop                                           ; $683c: $00
    rst $38                                       ; $683d: $ff
    nop                                           ; $683e: $00
    rst $38                                       ; $683f: $ff
    ldh a, [rIE]                                  ; $6840: $f0 $ff
    rst $38                                       ; $6842: $ff
    db $dd                                        ; $6843: $dd
    ldh [rIE], a                                  ; $6844: $e0 $ff
    ret nc                                        ; $6846: $d0

    db $dd                                        ; $6847: $dd
    nop                                           ; $6848: $00
    ret nc                                        ; $6849: $d0

    nop                                           ; $684a: $00
    rst $38                                       ; $684b: $ff
    rst $38                                       ; $684c: $ff
    rrca                                          ; $684d: $0f
    ld l, $ef                                     ; $684e: $2e $ef
    ldh [rP1], a                                  ; $6850: $e0 $00
    rrca                                          ; $6852: $0f
    cp e                                          ; $6853: $bb
    rst $38                                       ; $6854: $ff
    db $e4                                        ; $6855: $e4
    sbc c                                         ; $6856: $99
    rst $38                                       ; $6857: $ff
    db $e4                                        ; $6858: $e4
    ldh a, [$e3]                                  ; $6859: $f0 $e3
    rst $38                                       ; $685b: $ff
    dec bc                                        ; $685c: $0b
    cp e                                          ; $685d: $bb
    nop                                           ; $685e: $00
    nop                                           ; $685f: $00
    or b                                          ; $6860: $b0
    nop                                           ; $6861: $00
    cp e                                          ; $6862: $bb
    nop                                           ; $6863: $00
    di                                            ; $6864: $f3
    cp e                                          ; $6865: $bb
    or b                                          ; $6866: $b0
    add sp, -$1b                                  ; $6867: $e8 $e5
    xor $e0                                       ; $6869: $ee $e0
    cp e                                          ; $686b: $bb
    nop                                           ; $686c: $00
    dec bc                                        ; $686d: $0b
    nop                                           ; $686e: $00
    ld a, l                                       ; $686f: $7d
    nop                                           ; $6870: $00
    ret nc                                        ; $6871: $d0

    push hl                                       ; $6872: $e5
    cp e                                          ; $6873: $bb
    xor d                                         ; $6874: $aa
    cp e                                          ; $6875: $bb
    xor d                                         ; $6876: $aa
    cp d                                          ; $6877: $ba
    cp $e0                                        ; $6878: $fe $e0
    jp z, $e5ff                                   ; $687a: $ca $ff $e5

    sbc d                                         ; $687d: $9a
    cp $e0                                        ; $687e: $fe $e0
    sbc c                                         ; $6880: $99
    cp $e1                                        ; $6881: $fe $e1
    cp b                                          ; $6883: $b8
    ld [$bbbb], a                                 ; $6884: $ea $bb $bb
    db $db                                        ; $6887: $db
    adc b                                         ; $6888: $88
    adc b                                         ; $6889: $88
    sbc b                                         ; $688a: $98
    db $e3                                        ; $688b: $e3
    call z, $88cc                                 ; $688c: $cc $cc $88
    db $e4                                        ; $688f: $e4
    cp $0f                                        ; $6890: $fe $0f
    ld a, e                                       ; $6892: $7b
    xor $00                                       ; $6893: $ee $00
    ld l, b                                       ; $6895: $68
    ldh [$ed], a                                  ; $6896: $e0 $ed
    db $dd                                        ; $6898: $dd
    xor $d0                                       ; $6899: $ee $d0
    ld h, c                                       ; $689b: $61
    ldh [rP1], a                                  ; $689c: $e0 $00
    ld c, b                                       ; $689e: $48
    rst $38                                       ; $689f: $ff
    ld c, b                                       ; $68a0: $48
    rst $38                                       ; $68a1: $ff
    sub b                                         ; $68a2: $90
    ld [$ff48], a                                 ; $68a3: $ea $48 $ff
    ld c, b                                       ; $68a6: $48
    rst $38                                       ; $68a7: $ff
    ld c, b                                       ; $68a8: $48
    rst $38                                       ; $68a9: $ff
    rst $38                                       ; $68aa: $ff
    rst $38                                       ; $68ab: $ff
    rst $38                                       ; $68ac: $ff
    rst $38                                       ; $68ad: $ff
    ld hl, sp-$01                                 ; $68ae: $f8 $ff
    rst $38                                       ; $68b0: $ff
    rst $38                                       ; $68b1: $ff
    rst $38                                       ; $68b2: $ff
    ld hl, sp-$09                                 ; $68b3: $f8 $f7
    ld c, $ee                                     ; $68b5: $0e $ee
    call $bcee                                    ; $68b7: $cd $ee $bc
    rst $38                                       ; $68ba: $ff
    ret nc                                        ; $68bb: $d0

    cp e                                          ; $68bc: $bb
    or b                                          ; $68bd: $b0
    xor $e0                                       ; $68be: $ee $e0
    xor $f8                                       ; $68c0: $ee $f8
    rrca                                          ; $68c2: $0f
    rst $30                                       ; $68c3: $f7
    adc c                                         ; $68c4: $89
    add hl, bc                                    ; $68c5: $09
    sbc c                                         ; $68c6: $99
    db $db                                        ; $68c7: $db
    and h                                         ; $68c8: $a4
    ldh [$dd], a                                  ; $68c9: $e0 $dd
    rst $28                                       ; $68cb: $ef
    db $dd                                        ; $68cc: $dd
    rst $10                                       ; $68cd: $d7
    rst $28                                       ; $68ce: $ef
    ret nc                                        ; $68cf: $d0

    rrca                                          ; $68d0: $0f
    ret nz                                        ; $68d1: $c0

    ld [c], a                                     ; $68d2: $e2
    inc c                                         ; $68d3: $0c
    cp d                                          ; $68d4: $ba
    pop hl                                        ; $68d5: $e1
    db $dd                                        ; $68d6: $dd
    ret nc                                        ; $68d7: $d0

    or e                                          ; $68d8: $b3
    call z, Call_000_10cc                         ; $68d9: $cc $cc $10
    pop bc                                        ; $68dc: $c1
    ld a, [c]                                     ; $68dd: $f2
    and d                                         ; $68de: $a2
    ld [$d800], sp                                ; $68df: $08 $00 $d8
    ldh [$f0], a                                  ; $68e2: $e0 $f0
    rra                                           ; $68e4: $1f
    nop                                           ; $68e5: $00
    adc b                                         ; $68e6: $88
    nop                                           ; $68e7: $00
    sbc c                                         ; $68e8: $99
    sub b                                         ; $68e9: $90
    sbc [hl]                                      ; $68ea: $9e
    rst $38                                       ; $68eb: $ff
    rst $38                                       ; $68ec: $ff
    rst $38                                       ; $68ed: $ff
    ld a, [c]                                     ; $68ee: $f2
    pop af                                        ; $68ef: $f1
    ld b, e                                       ; $68f0: $43
    ld [$9688], sp                                ; $68f1: $08 $88 $96
    and d                                         ; $68f4: $a2
    and b                                         ; $68f5: $a0
    ldh [$9d], a                                  ; $68f6: $e0 $9d
    and $fe                                       ; $68f8: $e6 $fe
    and b                                         ; $68fa: $a0
    inc c                                         ; $68fb: $0c
    ld [c], a                                     ; $68fc: $e2
    and h                                         ; $68fd: $a4
    ld bc, $bfcc                                  ; $68fe: $01 $cc $bf
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
    nop                                           ; $690e: $00
    rst $38                                       ; $690f: $ff
    rst $38                                       ; $6910: $ff
    rst $38                                       ; $6911: $ff
    rst $38                                       ; $6912: $ff
    rst $38                                       ; $6913: $ff
    rst $38                                       ; $6914: $ff
    rst $38                                       ; $6915: $ff
    rst $38                                       ; $6916: $ff
    rst $38                                       ; $6917: $ff
    rst $38                                       ; $6918: $ff
    rst $38                                       ; $6919: $ff
    rst $38                                       ; $691a: $ff
    rst $38                                       ; $691b: $ff
    rst $38                                       ; $691c: $ff
    rst $38                                       ; $691d: $ff
    rst $38                                       ; $691e: $ff
    nop                                           ; $691f: $00
    rst $38                                       ; $6920: $ff
    rst $38                                       ; $6921: $ff
    rst $38                                       ; $6922: $ff
    and $00                                       ; $6923: $e6 $00
    nop                                           ; $6925: $00
    nop                                           ; $6926: $00
    jr nc, @+$6b                                  ; $6927: $30 $69

    jr nc, jr_052_699c                            ; $6929: $30 $71

    nop                                           ; $692b: $00
    nop                                           ; $692c: $00
    nop                                           ; $692d: $00
    nop                                           ; $692e: $00
    nop                                           ; $692f: $00
    nop                                           ; $6930: $00
    nop                                           ; $6931: $00
    nop                                           ; $6932: $00
    nop                                           ; $6933: $00
    dec b                                         ; $6934: $05
    nop                                           ; $6935: $00
    nop                                           ; $6936: $00
    nop                                           ; $6937: $00
    dec bc                                        ; $6938: $0b
    nop                                           ; $6939: $00
    nop                                           ; $693a: $00
    nop                                           ; $693b: $00
    nop                                           ; $693c: $00
    nop                                           ; $693d: $00
    ld [bc], a                                    ; $693e: $02
    nop                                           ; $693f: $00
    jr z, jr_052_6942                             ; $6940: $28 $00

jr_052_6942:
    nop                                           ; $6942: $00
    nop                                           ; $6943: $00
    sub b                                         ; $6944: $90
    nop                                           ; $6945: $00
    nop                                           ; $6946: $00
    nop                                           ; $6947: $00
    push af                                       ; $6948: $f5
    nop                                           ; $6949: $00
    ret z                                         ; $694a: $c8

    nop                                           ; $694b: $00
    nop                                           ; $694c: $00
    nop                                           ; $694d: $00
    add b                                         ; $694e: $80
    nop                                           ; $694f: $00
    nop                                           ; $6950: $00
    nop                                           ; $6951: $00
    nop                                           ; $6952: $00
    nop                                           ; $6953: $00
    ld [bc], a                                    ; $6954: $02
    nop                                           ; $6955: $00
    nop                                           ; $6956: $00
    nop                                           ; $6957: $00
    rla                                           ; $6958: $17
    nop                                           ; $6959: $00
    ld bc, $0000                                  ; $695a: $01 $00 $00
    nop                                           ; $695d: $00
    dec b                                         ; $695e: $05
    nop                                           ; $695f: $00
    ld d, b                                       ; $6960: $50
    nop                                           ; $6961: $00
    nop                                           ; $6962: $00
    nop                                           ; $6963: $00
    ret z                                         ; $6964: $c8

    nop                                           ; $6965: $00
    nop                                           ; $6966: $00
    nop                                           ; $6967: $00
    ld [$9000], a                                 ; $6968: $ea $00 $90
    nop                                           ; $696b: $00
    nop                                           ; $696c: $00
    nop                                           ; $696d: $00
    nop                                           ; $696e: $00
    nop                                           ; $696f: $00
    nop                                           ; $6970: $00
    nop                                           ; $6971: $00
    nop                                           ; $6972: $00
    nop                                           ; $6973: $00
    ld bc, $0000                                  ; $6974: $01 $00 $00
    nop                                           ; $6977: $00
    cpl                                           ; $6978: $2f
    nop                                           ; $6979: $00
    inc bc                                        ; $697a: $03
    nop                                           ; $697b: $00
    nop                                           ; $697c: $00
    nop                                           ; $697d: $00
    ld [bc], a                                    ; $697e: $02
    nop                                           ; $697f: $00
    and b                                         ; $6980: $a0
    nop                                           ; $6981: $00
    nop                                           ; $6982: $00
    nop                                           ; $6983: $00
    ld h, h                                       ; $6984: $64
    nop                                           ; $6985: $00
    nop                                           ; $6986: $00
    nop                                           ; $6987: $00
    call nc, Call_000_2000                        ; $6988: $d4 $00 $20
    nop                                           ; $698b: $00
    nop                                           ; $698c: $00
    nop                                           ; $698d: $00
    add b                                         ; $698e: $80
    nop                                           ; $698f: $00
    ld bc, $0000                                  ; $6990: $01 $00 $00
    nop                                           ; $6993: $00
    nop                                           ; $6994: $00
    nop                                           ; $6995: $00
    nop                                           ; $6996: $00
    nop                                           ; $6997: $00
    ld e, a                                       ; $6998: $5f
    nop                                           ; $6999: $00
    ld b, $00                                     ; $699a: $06 $00

jr_052_699c:
    nop                                           ; $699c: $00
    nop                                           ; $699d: $00
    dec b                                         ; $699e: $05
    nop                                           ; $699f: $00
    ld b, b                                       ; $69a0: $40
    nop                                           ; $69a1: $00
    nop                                           ; $69a2: $00
    nop                                           ; $69a3: $00
    or d                                          ; $69a4: $b2
    nop                                           ; $69a5: $00
    nop                                           ; $69a6: $00
    nop                                           ; $69a7: $00
    xor b                                         ; $69a8: $a8
    nop                                           ; $69a9: $00
    ld b, b                                       ; $69aa: $40
    nop                                           ; $69ab: $00
    nop                                           ; $69ac: $00
    nop                                           ; $69ad: $00
    nop                                           ; $69ae: $00
    nop                                           ; $69af: $00
    ld [bc], a                                    ; $69b0: $02
    nop                                           ; $69b1: $00
    nop                                           ; $69b2: $00
    nop                                           ; $69b3: $00
    nop                                           ; $69b4: $00
    nop                                           ; $69b5: $00
    nop                                           ; $69b6: $00
    nop                                           ; $69b7: $00
    cp a                                          ; $69b8: $bf
    nop                                           ; $69b9: $00
    inc c                                         ; $69ba: $0c
    nop                                           ; $69bb: $00
    nop                                           ; $69bc: $00
    nop                                           ; $69bd: $00
    ld [bc], a                                    ; $69be: $02
    nop                                           ; $69bf: $00
    add b                                         ; $69c0: $80
    nop                                           ; $69c1: $00
    nop                                           ; $69c2: $00
    nop                                           ; $69c3: $00
    ld e, c                                       ; $69c4: $59
    nop                                           ; $69c5: $00
    nop                                           ; $69c6: $00
    nop                                           ; $69c7: $00
    ld d, b                                       ; $69c8: $50
    nop                                           ; $69c9: $00
    add b                                         ; $69ca: $80
    nop                                           ; $69cb: $00
    nop                                           ; $69cc: $00
    nop                                           ; $69cd: $00
    add b                                         ; $69ce: $80
    nop                                           ; $69cf: $00
    db $ec                                        ; $69d0: $ec
    rst $38                                       ; $69d1: $ff
    ld hl, sp-$01                                 ; $69d2: $f8 $ff
    ldh [$fe], a                                  ; $69d4: $e0 $fe
    ld b, d                                       ; $69d6: $42
    ld hl, sp-$38                                 ; $69d7: $f8 $c8
    ldh a, [$80]                                  ; $69d9: $f0 $80
    ldh [rNR10], a                                ; $69db: $e0 $10
    ldh [rP1], a                                  ; $69dd: $e0 $00
    ret nz                                        ; $69df: $c0

    rst $38                                       ; $69e0: $ff
    rst $38                                       ; $69e1: $ff
    rst $38                                       ; $69e2: $ff
    rst $38                                       ; $69e3: $ff
    rst $38                                       ; $69e4: $ff
    rst $38                                       ; $69e5: $ff
    rst $30                                       ; $69e6: $f7
    rst $38                                       ; $69e7: $ff
    cp h                                          ; $69e8: $bc
    rst $38                                       ; $69e9: $ff
    add sp, -$01                                  ; $69ea: $e8 $ff
    add c                                         ; $69ec: $81
    cp $08                                        ; $69ed: $fe $08
    ldh a, [$bc]                                  ; $69ef: $f0 $bc
    rst $38                                       ; $69f1: $ff

jr_052_69f2:
    add sp, -$01                                  ; $69f2: $e8 $ff
    add c                                         ; $69f4: $81
    cp $08                                        ; $69f5: $fe $08
    ldh a, [rNR41]                                ; $69f7: $f0 $20
    ret nz                                        ; $69f9: $c0

    nop                                           ; $69fa: $00
    nop                                           ; $69fb: $00
    nop                                           ; $69fc: $00
    nop                                           ; $69fd: $00
    nop                                           ; $69fe: $00
    nop                                           ; $69ff: $00

jr_052_6a00:
    ld a, a                                       ; $6a00: $7f
    rst $38                                       ; $6a01: $ff
    cpl                                           ; $6a02: $2f
    rst $38                                       ; $6a03: $ff
    ccf                                           ; $6a04: $3f
    rst $38                                       ; $6a05: $ff
    rra                                           ; $6a06: $1f
    rst $38                                       ; $6a07: $ff
    or a                                          ; $6a08: $b7
    ld a, a                                       ; $6a09: $7f
    rra                                           ; $6a0a: $1f
    ld a, a                                       ; $6a0b: $7f
    rrca                                          ; $6a0c: $0f
    ld a, a                                       ; $6a0d: $7f
    ld c, a                                       ; $6a0e: $4f
    ccf                                           ; $6a0f: $3f
    rlca                                          ; $6a10: $07
    rra                                           ; $6a11: $1f
    ld [bc], a                                    ; $6a12: $02
    rra                                           ; $6a13: $1f
    inc de                                        ; $6a14: $13
    rrca                                          ; $6a15: $0f
    ld bc, $0b0f                                  ; $6a16: $01 $0f $0b
    rlca                                          ; $6a19: $07
    ld bc, $0007                                  ; $6a1a: $01 $07 $00
    rlca                                          ; $6a1d: $07
    inc b                                         ; $6a1e: $04
    inc bc                                        ; $6a1f: $03
    ld e, h                                       ; $6a20: $5c
    rst $38                                       ; $6a21: $ff
    nop                                           ; $6a22: $00
    rst $38                                       ; $6a23: $ff
    add c                                         ; $6a24: $81
    inc a                                         ; $6a25: $3c
    stop                                          ; $6a26: $10 $00
    nop                                           ; $6a28: $00
    nop                                           ; $6a29: $00
    nop                                           ; $6a2a: $00
    nop                                           ; $6a2b: $00
    nop                                           ; $6a2c: $00
    nop                                           ; $6a2d: $00
    nop                                           ; $6a2e: $00
    nop                                           ; $6a2f: $00
    jr nz, jr_052_69f2                            ; $6a30: $20 $c0

    add b                                         ; $6a32: $80
    ret nz                                        ; $6a33: $c0

    nop                                           ; $6a34: $00
    ldh [$90], a                                  ; $6a35: $e0 $90
    ldh [$80], a                                  ; $6a37: $e0 $80
    ldh [$80], a                                  ; $6a39: $e0 $80
    ldh [rP1], a                                  ; $6a3b: $e0 $00
    ret nz                                        ; $6a3d: $c0

    jr nz, jr_052_6a00                            ; $6a3e: $20 $c0

    rst $38                                       ; $6a40: $ff
    rst $38                                       ; $6a41: $ff

jr_052_6a42:
    ld a, l                                       ; $6a42: $7d
    rst $38                                       ; $6a43: $ff
    rst $28                                       ; $6a44: $ef
    rst $38                                       ; $6a45: $ff
    ld a, [hl-]                                   ; $6a46: $3a
    rst $38                                       ; $6a47: $ff
    nop                                           ; $6a48: $00
    rst $38                                       ; $6a49: $ff
    add c                                         ; $6a4a: $81
    inc a                                         ; $6a4b: $3c
    ld [$0000], sp                                ; $6a4c: $08 $00 $00
    nop                                           ; $6a4f: $00
    and h                                         ; $6a50: $a4
    ld hl, sp-$20                                 ; $6a51: $f8 $e0
    ld hl, sp-$10                                 ; $6a53: $f8 $f0
    db $fc                                        ; $6a55: $fc
    ret nc                                        ; $6a56: $d0

    db $fc                                        ; $6a57: $fc
    ld a, [c]                                     ; $6a58: $f2
    db $fc                                        ; $6a59: $fc
    ldh [$fc], a                                  ; $6a5a: $e0 $fc
    or b                                          ; $6a5c: $b0
    ld hl, sp-$1c                                 ; $6a5d: $f8 $e4
    ld hl, sp-$01                                 ; $6a5f: $f8 $ff
    rst $38                                       ; $6a61: $ff
    rst $38                                       ; $6a62: $ff
    rst $38                                       ; $6a63: $ff
    rst $38                                       ; $6a64: $ff
    rst $38                                       ; $6a65: $ff
    rst $30                                       ; $6a66: $f7
    rst $38                                       ; $6a67: $ff
    cp [hl]                                       ; $6a68: $be
    rst $38                                       ; $6a69: $ff
    db $e3                                        ; $6a6a: $e3
    rst $38                                       ; $6a6b: $ff
    ld b, b                                       ; $6a6c: $40
    rst $38                                       ; $6a6d: $ff
    nop                                           ; $6a6e: $00
    rst $20                                       ; $6a6f: $e7
    db $fc                                        ; $6a70: $fc
    rst $38                                       ; $6a71: $ff

jr_052_6a72:
    or $ff                                        ; $6a72: $f6 $ff
    db $fc                                        ; $6a74: $fc
    rst $38                                       ; $6a75: $ff
    ld hl, sp-$02                                 ; $6a76: $f8 $fe
    add sp, -$02                                  ; $6a78: $e8 $fe
    ld hl, sp-$01                                 ; $6a7a: $f8 $ff
    db $fc                                        ; $6a7c: $fc
    rst $38                                       ; $6a7d: $ff
    db $f4                                        ; $6a7e: $f4
    rst $38                                       ; $6a7f: $ff
    jr nz, jr_052_6a42                            ; $6a80: $20 $c0

    nop                                           ; $6a82: $00
    add b                                         ; $6a83: $80
    nop                                           ; $6a84: $00
    nop                                           ; $6a85: $00
    nop                                           ; $6a86: $00
    nop                                           ; $6a87: $00
    nop                                           ; $6a88: $00
    nop                                           ; $6a89: $00
    nop                                           ; $6a8a: $00
    nop                                           ; $6a8b: $00
    nop                                           ; $6a8c: $00
    nop                                           ; $6a8d: $00

jr_052_6a8e:
    nop                                           ; $6a8e: $00
    nop                                           ; $6a8f: $00
    nop                                           ; $6a90: $00
    ret nz                                        ; $6a91: $c0

    nop                                           ; $6a92: $00
    add b                                         ; $6a93: $80
    add b                                         ; $6a94: $80
    nop                                           ; $6a95: $00
    nop                                           ; $6a96: $00
    nop                                           ; $6a97: $00
    nop                                           ; $6a98: $00
    nop                                           ; $6a99: $00
    nop                                           ; $6a9a: $00
    nop                                           ; $6a9b: $00
    nop                                           ; $6a9c: $00
    nop                                           ; $6a9d: $00
    nop                                           ; $6a9e: $00
    nop                                           ; $6a9f: $00
    nop                                           ; $6aa0: $00
    ret nz                                        ; $6aa1: $c0

    ld b, b                                       ; $6aa2: $40
    add b                                         ; $6aa3: $80
    nop                                           ; $6aa4: $00
    nop                                           ; $6aa5: $00
    nop                                           ; $6aa6: $00
    nop                                           ; $6aa7: $00
    nop                                           ; $6aa8: $00
    nop                                           ; $6aa9: $00
    nop                                           ; $6aaa: $00
    nop                                           ; $6aab: $00
    nop                                           ; $6aac: $00
    nop                                           ; $6aad: $00
    nop                                           ; $6aae: $00
    nop                                           ; $6aaf: $00
    jr nz, jr_052_6a72                            ; $6ab0: $20 $c0

    nop                                           ; $6ab2: $00
    add b                                         ; $6ab3: $80
    add b                                         ; $6ab4: $80
    nop                                           ; $6ab5: $00
    nop                                           ; $6ab6: $00
    nop                                           ; $6ab7: $00
    nop                                           ; $6ab8: $00
    nop                                           ; $6ab9: $00
    nop                                           ; $6aba: $00
    nop                                           ; $6abb: $00
    nop                                           ; $6abc: $00
    nop                                           ; $6abd: $00
    nop                                           ; $6abe: $00
    nop                                           ; $6abf: $00
    db $ec                                        ; $6ac0: $ec
    rst $38                                       ; $6ac1: $ff
    ld sp, hl                                     ; $6ac2: $f9
    cp $e6                                        ; $6ac3: $fe $e6
    ld hl, sp+$48                                 ; $6ac5: $f8 $48
    ldh a, [$d0]                                  ; $6ac7: $f0 $d0
    ldh [$a8], a                                  ; $6ac9: $e0 $a8
    ret nz                                        ; $6acb: $c0

    jr nz, jr_052_6a8e                            ; $6acc: $20 $c0

    ld b, b                                       ; $6ace: $40
    add b                                         ; $6acf: $80
    rst $38                                       ; $6ad0: $ff
    rst $38                                       ; $6ad1: $ff
    rst $38                                       ; $6ad2: $ff
    rst $38                                       ; $6ad3: $ff
    rst $38                                       ; $6ad4: $ff
    rst $38                                       ; $6ad5: $ff
    rst $30                                       ; $6ad6: $f7
    rst $38                                       ; $6ad7: $ff
    cp h                                          ; $6ad8: $bc
    rst $38                                       ; $6ad9: $ff
    jp hl                                         ; $6ada: $e9


    cp $8e                                        ; $6adb: $fe $8e
    ldh a, [$30]                                  ; $6add: $f0 $30
    ret nz                                        ; $6adf: $c0

    cp h                                          ; $6ae0: $bc
    rst $38                                       ; $6ae1: $ff
    jp hl                                         ; $6ae2: $e9


    cp $8e                                        ; $6ae3: $fe $8e
    ldh a, [$30]                                  ; $6ae5: $f0 $30
    ret nz                                        ; $6ae7: $c0

    ret z                                         ; $6ae8: $c8

    nop                                           ; $6ae9: $00
    nop                                           ; $6aea: $00
    nop                                           ; $6aeb: $00
    nop                                           ; $6aec: $00
    nop                                           ; $6aed: $00
    nop                                           ; $6aee: $00
    nop                                           ; $6aef: $00
    ld a, a                                       ; $6af0: $7f
    rst $38                                       ; $6af1: $ff
    cpl                                           ; $6af2: $2f
    rst $38                                       ; $6af3: $ff
    cp a                                          ; $6af4: $bf
    ld a, a                                       ; $6af5: $7f
    sbc a                                         ; $6af6: $9f
    ld a, a                                       ; $6af7: $7f
    ld [hl], a                                    ; $6af8: $77
    ccf                                           ; $6af9: $3f
    ld e, a                                       ; $6afa: $5f
    ccf                                           ; $6afb: $3f
    ld c, a                                       ; $6afc: $4f
    ccf                                           ; $6afd: $3f
    cpl                                           ; $6afe: $2f
    rra                                           ; $6aff: $1f
    rla                                           ; $6b00: $17

Jump_052_6b01:
    rrca                                          ; $6b01: $0f
    ld [de], a                                    ; $6b02: $12
    rrca                                          ; $6b03: $0f
    dec bc                                        ; $6b04: $0b
    rlca                                          ; $6b05: $07
    add hl, bc                                    ; $6b06: $09
    rlca                                          ; $6b07: $07
    rla                                           ; $6b08: $17
    inc bc                                        ; $6b09: $03
    dec b                                         ; $6b0a: $05
    inc bc                                        ; $6b0b: $03
    inc b                                         ; $6b0c: $04
    inc bc                                        ; $6b0d: $03
    ld [bc], a                                    ; $6b0e: $02
    ld bc, $ff5c                                  ; $6b0f: $01 $5c $ff
    jp Jump_000_3c3c                              ; $6b12: $c3 $3c $3c


    nop                                           ; $6b15: $00
    ld [bc], a                                    ; $6b16: $02
    nop                                           ; $6b17: $00
    nop                                           ; $6b18: $00
    nop                                           ; $6b19: $00
    nop                                           ; $6b1a: $00
    nop                                           ; $6b1b: $00
    nop                                           ; $6b1c: $00
    nop                                           ; $6b1d: $00
    nop                                           ; $6b1e: $00
    nop                                           ; $6b1f: $00
    ld b, b                                       ; $6b20: $40
    add b                                         ; $6b21: $80
    ret nz                                        ; $6b22: $c0

    add b                                         ; $6b23: $80
    jr nz, @-$3e                                  ; $6b24: $20 $c0

    and b                                         ; $6b26: $a0
    ret nz                                        ; $6b27: $c0

    and b                                         ; $6b28: $a0
    ret nz                                        ; $6b29: $c0

    and b                                         ; $6b2a: $a0
    ret nz                                        ; $6b2b: $c0

    ld d, b                                       ; $6b2c: $50
    add b                                         ; $6b2d: $80
    ld b, b                                       ; $6b2e: $40
    add b                                         ; $6b2f: $80
    rst $38                                       ; $6b30: $ff
    rst $38                                       ; $6b31: $ff
    ld a, l                                       ; $6b32: $7d
    rst $38                                       ; $6b33: $ff
    rst $28                                       ; $6b34: $ef
    rst $38                                       ; $6b35: $ff
    ld a, [hl-]                                   ; $6b36: $3a
    rst $38                                       ; $6b37: $ff
    jp Jump_000_3c3c                              ; $6b38: $c3 $3c $3c


    nop                                           ; $6b3b: $00
    ld b, b                                       ; $6b3c: $40
    nop                                           ; $6b3d: $00
    nop                                           ; $6b3e: $00
    nop                                           ; $6b3f: $00
    xor b                                         ; $6b40: $a8
    ldh a, [$ea]                                  ; $6b41: $f0 $ea
    ldh a, [$f4]                                  ; $6b43: $f0 $f4
    ld hl, sp-$2c                                 ; $6b45: $f8 $d4
    ld hl, sp-$0c                                 ; $6b47: $f8 $f4
    ld hl, sp-$1c                                 ; $6b49: $f8 $e4
    ld hl, sp-$48                                 ; $6b4b: $f8 $b8
    ldh a, [$e8]                                  ; $6b4d: $f0 $e8
    ldh a, [rIE]                                  ; $6b4f: $f0 $ff
    rst $38                                       ; $6b51: $ff
    rst $38                                       ; $6b52: $ff
    rst $38                                       ; $6b53: $ff
    rst $38                                       ; $6b54: $ff
    rst $38                                       ; $6b55: $ff
    rst $30                                       ; $6b56: $f7
    rst $38                                       ; $6b57: $ff
    cp [hl]                                       ; $6b58: $be
    rst $38                                       ; $6b59: $ff
    db $e3                                        ; $6b5a: $e3
    rst $38                                       ; $6b5b: $ff
    ld e, b                                       ; $6b5c: $58
    rst $20                                       ; $6b5d: $e7
    ld h, [hl]                                    ; $6b5e: $66
    add c                                         ; $6b5f: $81
    db $fc                                        ; $6b60: $fc
    rst $38                                       ; $6b61: $ff
    rst $30                                       ; $6b62: $f7
    cp $fd                                        ; $6b63: $fe $fd
    cp $fa                                        ; $6b65: $fe $fa
    db $fc                                        ; $6b67: $fc
    ld [$f9fc], a                                 ; $6b68: $ea $fc $f9
    cp $fd                                        ; $6b6b: $fe $fd
    cp $f4                                        ; $6b6d: $fe $f4
    rst $38                                       ; $6b6f: $ff
    ld c, b                                       ; $6b70: $48
    add b                                         ; $6b71: $80
    add b                                         ; $6b72: $80
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
    ld b, b                                       ; $6b80: $40
    add b                                         ; $6b81: $80
    add b                                         ; $6b82: $80
    nop                                           ; $6b83: $00
    nop                                           ; $6b84: $00
    nop                                           ; $6b85: $00
    nop                                           ; $6b86: $00
    nop                                           ; $6b87: $00
    add b                                         ; $6b88: $80
    nop                                           ; $6b89: $00
    nop                                           ; $6b8a: $00
    nop                                           ; $6b8b: $00
    nop                                           ; $6b8c: $00
    nop                                           ; $6b8d: $00
    nop                                           ; $6b8e: $00
    nop                                           ; $6b8f: $00
    ret nz                                        ; $6b90: $c0

    nop                                           ; $6b91: $00
    add b                                         ; $6b92: $80
    nop                                           ; $6b93: $00
    nop                                           ; $6b94: $00
    nop                                           ; $6b95: $00
    nop                                           ; $6b96: $00
    nop                                           ; $6b97: $00
    nop                                           ; $6b98: $00
    nop                                           ; $6b99: $00
    nop                                           ; $6b9a: $00
    nop                                           ; $6b9b: $00
    nop                                           ; $6b9c: $00
    nop                                           ; $6b9d: $00
    nop                                           ; $6b9e: $00
    nop                                           ; $6b9f: $00
    add b                                         ; $6ba0: $80
    nop                                           ; $6ba1: $00
    nop                                           ; $6ba2: $00
    nop                                           ; $6ba3: $00
    nop                                           ; $6ba4: $00
    nop                                           ; $6ba5: $00
    nop                                           ; $6ba6: $00
    nop                                           ; $6ba7: $00
    nop                                           ; $6ba8: $00
    nop                                           ; $6ba9: $00
    nop                                           ; $6baa: $00
    nop                                           ; $6bab: $00
    nop                                           ; $6bac: $00
    nop                                           ; $6bad: $00
    nop                                           ; $6bae: $00
    nop                                           ; $6baf: $00
    db $ed                                        ; $6bb0: $ed
    cp $fe                                        ; $6bb1: $fe $fe
    ld hl, sp-$18                                 ; $6bb3: $f8 $e8
    ldh a, [rHDMA2]                               ; $6bb5: $f0 $52
    ldh [$e8], a                                  ; $6bb7: $e0 $e8
    ret nz                                        ; $6bb9: $c0

    ret nz                                        ; $6bba: $c0

    add b                                         ; $6bbb: $80
    ld d, b                                       ; $6bbc: $50
    add b                                         ; $6bbd: $80
    add b                                         ; $6bbe: $80
    nop                                           ; $6bbf: $00
    rst $38                                       ; $6bc0: $ff
    rst $38                                       ; $6bc1: $ff
    rst $38                                       ; $6bc2: $ff
    rst $38                                       ; $6bc3: $ff
    rst $38                                       ; $6bc4: $ff
    rst $38                                       ; $6bc5: $ff
    rst $30                                       ; $6bc6: $f7
    rst $38                                       ; $6bc7: $ff
    cp l                                          ; $6bc8: $bd
    cp $ee                                        ; $6bc9: $fe $ee
    ldh a, [$b1]                                  ; $6bcb: $f0 $b1
    ret nz                                        ; $6bcd: $c0

    ret z                                         ; $6bce: $c8

    nop                                           ; $6bcf: $00
    cp l                                          ; $6bd0: $bd
    cp $ee                                        ; $6bd1: $fe $ee
    ldh a, [$b1]                                  ; $6bd3: $f0 $b1
    ret nz                                        ; $6bd5: $c0

    ret z                                         ; $6bd6: $c8

    nop                                           ; $6bd7: $00
    jr nz, jr_052_6bda                            ; $6bd8: $20 $00

jr_052_6bda:
    nop                                           ; $6bda: $00
    nop                                           ; $6bdb: $00
    nop                                           ; $6bdc: $00
    nop                                           ; $6bdd: $00
    nop                                           ; $6bde: $00
    nop                                           ; $6bdf: $00
    rst $38                                       ; $6be0: $ff
    ld a, a                                       ; $6be1: $7f
    xor a                                         ; $6be2: $af
    ld a, a                                       ; $6be3: $7f
    ld a, a                                       ; $6be4: $7f
    ccf                                           ; $6be5: $3f
    ld e, a                                       ; $6be6: $5f
    ccf                                           ; $6be7: $3f
    or a                                          ; $6be8: $b7
    rra                                           ; $6be9: $1f
    ccf                                           ; $6bea: $3f
    rra                                           ; $6beb: $1f
    cpl                                           ; $6bec: $2f
    rra                                           ; $6bed: $1f
    ld e, a                                       ; $6bee: $5f
    rrca                                          ; $6bef: $0f
    rrca                                          ; $6bf0: $0f
    rlca                                          ; $6bf1: $07
    ld a, [bc]                                    ; $6bf2: $0a
    rlca                                          ; $6bf3: $07
    rla                                           ; $6bf4: $17
    inc bc                                        ; $6bf5: $03
    dec b                                         ; $6bf6: $05
    inc bc                                        ; $6bf7: $03
    dec bc                                        ; $6bf8: $0b
    ld bc, $0103                                  ; $6bf9: $01 $03 $01
    ld [bc], a                                    ; $6bfc: $02
    ld bc, $0005                                  ; $6bfd: $01 $05 $00
    rst $18                                       ; $6c00: $df
    inc a                                         ; $6c01: $3c
    inc a                                         ; $6c02: $3c
    nop                                           ; $6c03: $00
    ld b, d                                       ; $6c04: $42
    nop                                           ; $6c05: $00
    nop                                           ; $6c06: $00
    nop                                           ; $6c07: $00
    nop                                           ; $6c08: $00
    nop                                           ; $6c09: $00
    nop                                           ; $6c0a: $00
    nop                                           ; $6c0b: $00
    nop                                           ; $6c0c: $00
    nop                                           ; $6c0d: $00
    nop                                           ; $6c0e: $00
    nop                                           ; $6c0f: $00
    add b                                         ; $6c10: $80
    nop                                           ; $6c11: $00
    and b                                         ; $6c12: $a0
    nop                                           ; $6c13: $00
    ld b, b                                       ; $6c14: $40
    add b                                         ; $6c15: $80
    ret nz                                        ; $6c16: $c0

    add b                                         ; $6c17: $80
    ret nz                                        ; $6c18: $c0

    add b                                         ; $6c19: $80
    ret nz                                        ; $6c1a: $c0

    add b                                         ; $6c1b: $80
    and b                                         ; $6c1c: $a0
    nop                                           ; $6c1d: $00
    add b                                         ; $6c1e: $80
    nop                                           ; $6c1f: $00
    rst $38                                       ; $6c20: $ff
    rst $38                                       ; $6c21: $ff
    ld a, l                                       ; $6c22: $7d
    rst $38                                       ; $6c23: $ff
    rst $28                                       ; $6c24: $ef
    rst $38                                       ; $6c25: $ff
    ei                                            ; $6c26: $fb
    inc a                                         ; $6c27: $3c
    inc a                                         ; $6c28: $3c
    nop                                           ; $6c29: $00
    ld b, d                                       ; $6c2a: $42
    nop                                           ; $6c2b: $00
    nop                                           ; $6c2c: $00
    nop                                           ; $6c2d: $00
    nop                                           ; $6c2e: $00
    nop                                           ; $6c2f: $00
    or b                                          ; $6c30: $b0
    ldh [$f4], a                                  ; $6c31: $e0 $f4
    ldh [$f8], a                                  ; $6c33: $e0 $f8
    ldh a, [$d8]                                  ; $6c35: $f0 $d8
    ldh a, [$f8]                                  ; $6c37: $f0 $f8
    ldh a, [$e8]                                  ; $6c39: $f0 $e8
    ldh a, [$b4]                                  ; $6c3b: $f0 $b4
    ldh [$f0], a                                  ; $6c3d: $e0 $f0
    ldh [rIE], a                                  ; $6c3f: $e0 $ff
    rst $38                                       ; $6c41: $ff
    rst $38                                       ; $6c42: $ff
    rst $38                                       ; $6c43: $ff
    rst $38                                       ; $6c44: $ff
    rst $38                                       ; $6c45: $ff
    rst $30                                       ; $6c46: $f7
    rst $38                                       ; $6c47: $ff
    cp [hl]                                       ; $6c48: $be
    rst $38                                       ; $6c49: $ff
    ei                                            ; $6c4a: $fb
    rst $20                                       ; $6c4b: $e7
    ld h, [hl]                                    ; $6c4c: $66
    add c                                         ; $6c4d: $81
    sub c                                         ; $6c4e: $91
    nop                                           ; $6c4f: $00
    db $fd                                        ; $6c50: $fd
    cp $f6                                        ; $6c51: $fe $f6
    db $fc                                        ; $6c53: $fc
    cp $fc                                        ; $6c54: $fe $fc
    db $fd                                        ; $6c56: $fd
    ld hl, sp-$14                                 ; $6c57: $f8 $ec
    ld hl, sp-$06                                 ; $6c59: $f8 $fa
    db $fc                                        ; $6c5b: $fc
    cp $fc                                        ; $6c5c: $fe $fc
    push af                                       ; $6c5e: $f5
    cp $20                                        ; $6c5f: $fe $20
    nop                                           ; $6c61: $00
    nop                                           ; $6c62: $00
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
    nop                                           ; $6c70: $00
    nop                                           ; $6c71: $00
    nop                                           ; $6c72: $00
    nop                                           ; $6c73: $00
    add b                                         ; $6c74: $80
    nop                                           ; $6c75: $00
    nop                                           ; $6c76: $00
    nop                                           ; $6c77: $00
    nop                                           ; $6c78: $00
    nop                                           ; $6c79: $00
    nop                                           ; $6c7a: $00
    nop                                           ; $6c7b: $00
    nop                                           ; $6c7c: $00
    nop                                           ; $6c7d: $00
    nop                                           ; $6c7e: $00
    nop                                           ; $6c7f: $00
    and b                                         ; $6c80: $a0
    nop                                           ; $6c81: $00
    nop                                           ; $6c82: $00
    nop                                           ; $6c83: $00
    add b                                         ; $6c84: $80
    nop                                           ; $6c85: $00
    nop                                           ; $6c86: $00
    nop                                           ; $6c87: $00
    nop                                           ; $6c88: $00
    nop                                           ; $6c89: $00
    nop                                           ; $6c8a: $00
    nop                                           ; $6c8b: $00
    nop                                           ; $6c8c: $00
    nop                                           ; $6c8d: $00
    nop                                           ; $6c8e: $00
    nop                                           ; $6c8f: $00
    nop                                           ; $6c90: $00
    nop                                           ; $6c91: $00
    ld b, b                                       ; $6c92: $40
    nop                                           ; $6c93: $00
    nop                                           ; $6c94: $00
    nop                                           ; $6c95: $00
    nop                                           ; $6c96: $00
    nop                                           ; $6c97: $00
    nop                                           ; $6c98: $00
    nop                                           ; $6c99: $00
    nop                                           ; $6c9a: $00
    nop                                           ; $6c9b: $00
    nop                                           ; $6c9c: $00
    nop                                           ; $6c9d: $00
    nop                                           ; $6c9e: $00
    nop                                           ; $6c9f: $00
    ld [bc], a                                    ; $6ca0: $02
    add c                                         ; $6ca1: $81
    and b                                         ; $6ca2: $a0
    pop bc                                        ; $6ca3: $c1
    add b                                         ; $6ca4: $80
    pop bc                                        ; $6ca5: $c1
    add l                                         ; $6ca6: $85
    jp $c3a1                                      ; $6ca7: $c3 $a1 $c3


    nop                                           ; $6caa: $00
    add e                                         ; $6cab: $83
    dec b                                         ; $6cac: $05
    add e                                         ; $6cad: $83
    ld b, b                                       ; $6cae: $40
    add c                                         ; $6caf: $81
    ld b, c                                       ; $6cb0: $41
    add b                                         ; $6cb1: $80
    nop                                           ; $6cb2: $00
    add b                                         ; $6cb3: $80
    add b                                         ; $6cb4: $80
    ret nz                                        ; $6cb5: $c0

    and b                                         ; $6cb6: $a0
    ret nz                                        ; $6cb7: $c0

    ret nz                                        ; $6cb8: $c0

    ldh [rBCPS], a                                ; $6cb9: $e0 $68
    ldh a, [$f1]                                  ; $6cbb: $f0 $f1
    db $fc                                        ; $6cbd: $fc
    call c, Call_000_1eff                         ; $6cbe: $dc $ff $1e
    rst $38                                       ; $6cc1: $ff
    add b                                         ; $6cc2: $80
    ld e, $12                                     ; $6cc3: $1e $12
    nop                                           ; $6cc5: $00
    nop                                           ; $6cc6: $00
    nop                                           ; $6cc7: $00
    nop                                           ; $6cc8: $00
    nop                                           ; $6cc9: $00
    ld c, b                                       ; $6cca: $48
    nop                                           ; $6ccb: $00
    ld bc, $5878                                  ; $6ccc: $01 $78 $58
    rst $38                                       ; $6ccf: $ff
    ld b, b                                       ; $6cd0: $40
    add c                                         ; $6cd1: $81
    add d                                         ; $6cd2: $82
    pop bc                                        ; $6cd3: $c1
    and b                                         ; $6cd4: $a0
    pop bc                                        ; $6cd5: $c1
    and c                                         ; $6cd6: $a1
    jp $c385                                      ; $6cd7: $c3 $85 $c3


    inc b                                         ; $6cda: $04
    add e                                         ; $6cdb: $83
    ld b, c                                       ; $6cdc: $41
    add e                                         ; $6cdd: $83
    ld [bc], a                                    ; $6cde: $02
    add c                                         ; $6cdf: $81
    nop                                           ; $6ce0: $00
    add b                                         ; $6ce1: $80
    nop                                           ; $6ce2: $00
    add b                                         ; $6ce3: $80
    and b                                         ; $6ce4: $a0
    ret nz                                        ; $6ce5: $c0

    add b                                         ; $6ce6: $80
    ret nz                                        ; $6ce7: $c0

    ret nc                                        ; $6ce8: $d0

    ldh [$64], a                                  ; $6ce9: $e0 $64
    ldh a, [$f0]                                  ; $6ceb: $f0 $f0
    db $fc                                        ; $6ced: $fc
    call c, Call_000_1eff                         ; $6cee: $dc $ff $1e
    rst $38                                       ; $6cf1: $ff
    ld b, c                                       ; $6cf2: $41
    ld e, $0c                                     ; $6cf3: $1e $0c
    nop                                           ; $6cf5: $00
    nop                                           ; $6cf6: $00
    nop                                           ; $6cf7: $00
    nop                                           ; $6cf8: $00
    nop                                           ; $6cf9: $00
    jr nc, jr_052_6cfc                            ; $6cfa: $30 $00

jr_052_6cfc:
    add d                                         ; $6cfc: $82
    ld a, b                                       ; $6cfd: $78
    ld e, b                                       ; $6cfe: $58
    rst $38                                       ; $6cff: $ff
    nop                                           ; $6d00: $00
    ret nz                                        ; $6d01: $c0

    ld b, b                                       ; $6d02: $40
    add b                                         ; $6d03: $80
    nop                                           ; $6d04: $00
    nop                                           ; $6d05: $00
    nop                                           ; $6d06: $00
    nop                                           ; $6d07: $00
    nop                                           ; $6d08: $00
    nop                                           ; $6d09: $00
    nop                                           ; $6d0a: $00
    nop                                           ; $6d0b: $00
    ld [bc], a                                    ; $6d0c: $02
    ld bc, $0300                                  ; $6d0d: $01 $00 $03
    ret nz                                        ; $6d10: $c0

    nop                                           ; $6d11: $00
    add b                                         ; $6d12: $80
    nop                                           ; $6d13: $00
    nop                                           ; $6d14: $00
    nop                                           ; $6d15: $00
    nop                                           ; $6d16: $00
    nop                                           ; $6d17: $00
    nop                                           ; $6d18: $00
    nop                                           ; $6d19: $00
    nop                                           ; $6d1a: $00
    nop                                           ; $6d1b: $00
    ld bc, $0300                                  ; $6d1c: $01 $00 $03
    nop                                           ; $6d1f: $00
    and b                                         ; $6d20: $a0
    nop                                           ; $6d21: $00
    nop                                           ; $6d22: $00
    nop                                           ; $6d23: $00
    add b                                         ; $6d24: $80
    nop                                           ; $6d25: $00
    nop                                           ; $6d26: $00
    nop                                           ; $6d27: $00
    nop                                           ; $6d28: $00
    nop                                           ; $6d29: $00
    ld bc, $0000                                  ; $6d2a: $01 $00 $00
    nop                                           ; $6d2d: $00
    dec b                                         ; $6d2e: $05
    nop                                           ; $6d2f: $00
    nop                                           ; $6d30: $00
    nop                                           ; $6d31: $00
    nop                                           ; $6d32: $00
    nop                                           ; $6d33: $00
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

Call_052_6e4e:
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

Call_052_6eee:
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

Jump_052_6fe0:
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
    nop                                           ; $7101: $00
    nop                                           ; $7102: $00
    nop                                           ; $7103: $00
    nop                                           ; $7104: $00
    nop                                           ; $7105: $00
    nop                                           ; $7106: $00
    nop                                           ; $7107: $00
    nop                                           ; $7108: $00
    nop                                           ; $7109: $00
    nop                                           ; $710a: $00
    nop                                           ; $710b: $00
    nop                                           ; $710c: $00
    nop                                           ; $710d: $00
    nop                                           ; $710e: $00
    nop                                           ; $710f: $00
    nop                                           ; $7110: $00
    nop                                           ; $7111: $00
    nop                                           ; $7112: $00
    nop                                           ; $7113: $00
    nop                                           ; $7114: $00
    nop                                           ; $7115: $00
    nop                                           ; $7116: $00
    nop                                           ; $7117: $00
    nop                                           ; $7118: $00
    nop                                           ; $7119: $00
    nop                                           ; $711a: $00
    nop                                           ; $711b: $00
    nop                                           ; $711c: $00
    nop                                           ; $711d: $00
    nop                                           ; $711e: $00
    nop                                           ; $711f: $00
    nop                                           ; $7120: $00
    nop                                           ; $7121: $00
    nop                                           ; $7122: $00
    nop                                           ; $7123: $00
    nop                                           ; $7124: $00
    nop                                           ; $7125: $00
    nop                                           ; $7126: $00
    nop                                           ; $7127: $00
    nop                                           ; $7128: $00
    nop                                           ; $7129: $00
    nop                                           ; $712a: $00
    nop                                           ; $712b: $00
    nop                                           ; $712c: $00
    nop                                           ; $712d: $00
    nop                                           ; $712e: $00
    nop                                           ; $712f: $00
    nop                                           ; $7130: $00
    ld [bc], a                                    ; $7131: $02
    nop                                           ; $7132: $00
    rrca                                          ; $7133: $0f
    ld [bc], a                                    ; $7134: $02
    ld [bc], a                                    ; $7135: $02
    nop                                           ; $7136: $00
    rrca                                          ; $7137: $0f
    inc b                                         ; $7138: $04
    ld [bc], a                                    ; $7139: $02
    nop                                           ; $713a: $00
    rrca                                          ; $713b: $0f
    ld b, $02                                     ; $713c: $06 $02
    nop                                           ; $713e: $00
    rrca                                          ; $713f: $0f
    ld [$0002], sp                                ; $7140: $08 $02 $00
    rrca                                          ; $7143: $0f
    ld b, $02                                     ; $7144: $06 $02
    nop                                           ; $7146: $00
    rrca                                          ; $7147: $0f
    inc b                                         ; $7148: $04
    ld [bc], a                                    ; $7149: $02
    nop                                           ; $714a: $00
    rrca                                          ; $714b: $0f
    ld [bc], a                                    ; $714c: $02
    ld [bc], a                                    ; $714d: $02
    nop                                           ; $714e: $00
    rrca                                          ; $714f: $0f
    rst $38                                       ; $7150: $ff
    nop                                           ; $7151: $00
    ld a, [bc]                                    ; $7152: $0a
    rrca                                          ; $7153: $0f
    ld [bc], a                                    ; $7154: $02
    ld e, $19                                     ; $7155: $1e $19
    rrca                                          ; $7157: $0f
    ld [bc], a                                    ; $7158: $02
    ld e, $28                                     ; $7159: $1e $28
    rrca                                          ; $715b: $0f
    ld [bc], a                                    ; $715c: $02
    ld e, $19                                     ; $715d: $1e $19
    rrca                                          ; $715f: $0f
    ld [bc], a                                    ; $7160: $02
    ld e, $ff                                     ; $7161: $1e $ff
    ld bc, $0337                                  ; $7163: $01 $37 $03
    ld de, $3a1e                                  ; $7166: $11 $1e $3a
    inc bc                                        ; $7169: $03
    ld de, $ff1e                                  ; $716a: $11 $1e $ff
    ld [bc], a                                    ; $716d: $02
    dec a                                         ; $716e: $3d
    ld bc, $1e14                                  ; $716f: $01 $14 $1e
    ld a, $01                                     ; $7172: $3e $01
    inc d                                         ; $7174: $14
    ld e, $3f                                     ; $7175: $1e $3f
    ld bc, $1e14                                  ; $7177: $01 $14 $1e
    ld a, $01                                     ; $717a: $3e $01
    inc d                                         ; $717c: $14
    ld e, $ff                                     ; $717d: $1e $ff
    ld bc, $f5fe                                  ; $717f: $01 $fe $f5
    push bc                                       ; $7182: $c5
    push de                                       ; $7183: $d5
    push hl                                       ; $7184: $e5
    ld a, $ff                                     ; $7185: $3e $ff
    ld b, $01                                     ; $7187: $06 $01
    ld hl, $c330                                  ; $7189: $21 $30 $c3
    ld [hl+], a                                   ; $718c: $22
    ld [hl], b                                    ; $718d: $70
    inc hl                                        ; $718e: $23
    ld [hl+], a                                   ; $718f: $22
    ld [hl], b                                    ; $7190: $70
    inc hl                                        ; $7191: $23
    ld [hl+], a                                   ; $7192: $22
    ld [hl], b                                    ; $7193: $70
    inc hl                                        ; $7194: $23
    ld [hl+], a                                   ; $7195: $22
    ld [hl], b                                    ; $7196: $70
    inc hl                                        ; $7197: $23
    ld [hl+], a                                   ; $7198: $22
    ld [hl+], a                                   ; $7199: $22
    ld [hl+], a                                   ; $719a: $22
    ld [hl+], a                                   ; $719b: $22
    ld hl, $0401                                  ; $719c: $21 $01 $04
    rst $18                                       ; $719f: $df
    ld a, [bc]                                    ; $71a0: $0a
    inc de                                        ; $71a1: $13
    ld de, $4000                                  ; $71a2: $11 $00 $40
    ld h, $00                                     ; $71a5: $26 $00
    add hl, de                                    ; $71a7: $19
    ld e, a                                       ; $71a8: $5f
    ld d, $00                                     ; $71a9: $16 $00
    ld a, [hl+]                                   ; $71ab: $2a
    ld h, [hl]                                    ; $71ac: $66
    ld l, a                                       ; $71ad: $6f
    add hl, de                                    ; $71ae: $19
    add hl, de                                    ; $71af: $19
    ld a, [hl+]                                   ; $71b0: $2a
    ld h, [hl]                                    ; $71b1: $66
    ld l, a                                       ; $71b2: $6f
    ld a, [hl]                                    ; $71b3: $7e
    cp $fe                                        ; $71b4: $fe $fe
    jr nz, jr_052_71bb                            ; $71b6: $20 $03

    jp Jump_052_722f                              ; $71b8: $c3 $2f $72


jr_052_71bb:
    add sp, -$02                                  ; $71bb: $e8 $fe
    ld de, $c332                                  ; $71bd: $11 $32 $c3
    push hl                                       ; $71c0: $e5
    ld hl, sp+$02                                 ; $71c1: $f8 $02
    ld [hl], e                                    ; $71c3: $73
    inc hl                                        ; $71c4: $23
    ld [hl], d                                    ; $71c5: $72
    pop hl                                        ; $71c6: $e1
    ld d, h                                       ; $71c7: $54
    ld e, l                                       ; $71c8: $5d
    ld b, $ff                                     ; $71c9: $06 $ff
    ld c, $03                                     ; $71cb: $0e $03
    xor a                                         ; $71cd: $af
    ld hl, $c330                                  ; $71ce: $21 $30 $c3
    ld [hl], a                                    ; $71d1: $77
    ld hl, $c338                                  ; $71d2: $21 $38 $c3
    ld [hl], a                                    ; $71d5: $77
    inc hl                                        ; $71d6: $23

jr_052_71d7:
    inc b                                         ; $71d7: $04
    ld a, [de]                                    ; $71d8: $1a
    inc de                                        ; $71d9: $13
    cp $fe                                        ; $71da: $fe $fe
    jr z, jr_052_7213                             ; $71dc: $28 $35

    cp $ff                                        ; $71de: $fe $ff
    jr nz, jr_052_71d7                            ; $71e0: $20 $f5

    inc b                                         ; $71e2: $04
    ld a, b                                       ; $71e3: $78
    inc a                                         ; $71e4: $3c
    ld [hl], a                                    ; $71e5: $77
    push de                                       ; $71e6: $d5
    push hl                                       ; $71e7: $e5
    ld hl, sp+$04                                 ; $71e8: $f8 $04
    ld e, [hl]                                    ; $71ea: $5e
    inc hl                                        ; $71eb: $23
    ld d, [hl]                                    ; $71ec: $56
    pop hl                                        ; $71ed: $e1
    ld [de], a                                    ; $71ee: $12
    inc de                                        ; $71ef: $13
    inc de                                        ; $71f0: $13
    push hl                                       ; $71f1: $e5
    ld hl, sp+$04                                 ; $71f2: $f8 $04
    ld [hl], e                                    ; $71f4: $73
    inc hl                                        ; $71f5: $23
    ld [hl], d                                    ; $71f6: $72
    pop hl                                        ; $71f7: $e1
    pop de                                        ; $71f8: $d1
    ld a, [de]                                    ; $71f9: $1a
    inc a                                         ; $71fa: $3c
    inc de                                        ; $71fb: $13
    push hl                                       ; $71fc: $e5
    push de                                       ; $71fd: $d5
    ld d, a                                       ; $71fe: $57
    ld a, $04                                     ; $71ff: $3e $04
    sub c                                         ; $7201: $91
    ld hl, $c330                                  ; $7202: $21 $30 $c3
    ld e, a                                       ; $7205: $5f
    ld a, d                                       ; $7206: $7a
    ld d, $00                                     ; $7207: $16 $00
    add hl, de                                    ; $7209: $19
    add hl, de                                    ; $720a: $19
    inc hl                                        ; $720b: $23
    ld [hl], a                                    ; $720c: $77
    pop de                                        ; $720d: $d1
    pop hl                                        ; $720e: $e1
    inc hl                                        ; $720f: $23
    dec c                                         ; $7210: $0d
    jr nz, jr_052_71d7                            ; $7211: $20 $c4

jr_052_7213:
    ld a, c                                       ; $7213: $79
    or a                                          ; $7214: $b7
    jr z, jr_052_7225                             ; $7215: $28 $0e

    ld a, $ff                                     ; $7217: $3e $ff
    dec hl                                        ; $7219: $2b
    ld [hl], a                                    ; $721a: $77
    push hl                                       ; $721b: $e5
    ld hl, sp+$02                                 ; $721c: $f8 $02
    ld e, [hl]                                    ; $721e: $5e
    inc hl                                        ; $721f: $23
    ld d, [hl]                                    ; $7220: $56
    pop hl                                        ; $7221: $e1
    dec de                                        ; $7222: $1b
    dec de                                        ; $7223: $1b
    ld [de], a                                    ; $7224: $12

jr_052_7225:
    ld a, $01                                     ; $7225: $3e $01
    ld hl, $7243                                  ; $7227: $21 $43 $72
    call Call_000_23e8                            ; $722a: $cd $e8 $23
    add sp, $02                                   ; $722d: $e8 $02

Jump_052_722f:
    pop hl                                        ; $722f: $e1
    pop de                                        ; $7230: $d1
    pop bc                                        ; $7231: $c1
    pop af                                        ; $7232: $f1
    ret                                           ; $7233: $c9


    push af                                       ; $7234: $f5
    push bc                                       ; $7235: $c5
    push de                                       ; $7236: $d5
    push hl                                       ; $7237: $e5
    ld hl, $7243                                  ; $7238: $21 $43 $72
    call Call_000_2449                            ; $723b: $cd $49 $24
    pop hl                                        ; $723e: $e1
    pop de                                        ; $723f: $d1
    pop bc                                        ; $7240: $c1
    pop af                                        ; $7241: $f1
    ret                                           ; $7242: $c9


    rst $30                                       ; $7243: $f7
    add b                                         ; $7244: $80
    inc bc                                        ; $7245: $03
    jr nz, jr_052_724c                            ; $7246: $20 $04

    rst $30                                       ; $7248: $f7
    nop                                           ; $7249: $00
    inc bc                                        ; $724a: $03
    ret nz                                        ; $724b: $c0

jr_052_724c:
    push af                                       ; $724c: $f5
    push bc                                       ; $724d: $c5
    push de                                       ; $724e: $d5
    push hl                                       ; $724f: $e5
    ldh a, [$96]                                  ; $7250: $f0 $96
    push af                                       ; $7252: $f5
    ld a, $06                                     ; $7253: $3e $06
    ldh [$96], a                                  ; $7255: $e0 $96
    ldh [rSVBK], a                                ; $7257: $e0 $70
    ld c, $00                                     ; $7259: $0e $00
    ld hl, $c338                                  ; $725b: $21 $38 $c3

jr_052_725e:
    ld a, [hl]                                    ; $725e: $7e
    cp $ff                                        ; $725f: $fe $ff
    jr z, jr_052_7287                             ; $7261: $28 $24

    push hl                                       ; $7263: $e5
    ld l, c                                       ; $7264: $69
    ld h, $00                                     ; $7265: $26 $00
    add hl, hl                                    ; $7267: $29
    ld de, $c330                                  ; $7268: $11 $30 $c3
    add hl, de                                    ; $726b: $19
    inc hl                                        ; $726c: $23
    ld a, [hl]                                    ; $726d: $7e
    dec a                                         ; $726e: $3d
    ld [hl], a                                    ; $726f: $77
    pop hl                                        ; $7270: $e1
    inc hl                                        ; $7271: $23
    ld b, c                                       ; $7272: $41
    inc c                                         ; $7273: $0c
    ld d, a                                       ; $7274: $57
    ld a, c                                       ; $7275: $79
    cp $04                                        ; $7276: $fe $04
    jr z, jr_052_7287                             ; $7278: $28 $0d

    ld a, d                                       ; $727a: $7a
    or a                                          ; $727b: $b7
    jr nz, jr_052_725e                            ; $727c: $20 $e0

    ld a, b                                       ; $727e: $78
    call Call_052_7291                            ; $727f: $cd $91 $72
    ld a, c                                       ; $7282: $79
    cp $04                                        ; $7283: $fe $04
    jr nz, jr_052_725e                            ; $7285: $20 $d7

jr_052_7287:
    pop af                                        ; $7287: $f1
    ldh [$96], a                                  ; $7288: $e0 $96
    ldh [rSVBK], a                                ; $728a: $e0 $70
    pop hl                                        ; $728c: $e1
    pop de                                        ; $728d: $d1
    pop bc                                        ; $728e: $c1
    pop af                                        ; $728f: $f1
    ret                                           ; $7290: $c9


Call_052_7291:
    push af                                       ; $7291: $f5
    push bc                                       ; $7292: $c5
    push de                                       ; $7293: $d5
    push hl                                       ; $7294: $e5
    push af                                       ; $7295: $f5
    add sp, -$01                                  ; $7296: $e8 $ff
    ld hl, sp+$00                                 ; $7298: $f8 $00
    ld [hl], a                                    ; $729a: $77
    ld h, $00                                     ; $729b: $26 $00
    ld l, a                                       ; $729d: $6f
    add hl, hl                                    ; $729e: $29
    ld bc, $c330                                  ; $729f: $01 $30 $c3
    add hl, bc                                    ; $72a2: $09
    ld a, [hl]                                    ; $72a3: $7e
    ld [$c33c], a                                 ; $72a4: $ea $3c $c3

jr_052_72a7:
    ld hl, $0401                                  ; $72a7: $21 $01 $04
    rst $18                                       ; $72aa: $df
    ld a, [bc]                                    ; $72ab: $0a
    inc de                                        ; $72ac: $13
    ld de, $4000                                  ; $72ad: $11 $00 $40
    ld h, $00                                     ; $72b0: $26 $00
    add hl, de                                    ; $72b2: $19
    ld e, a                                       ; $72b3: $5f
    ld d, $00                                     ; $72b4: $16 $00
    ld a, [hl+]                                   ; $72b6: $2a
    ld h, [hl]                                    ; $72b7: $66
    ld l, a                                       ; $72b8: $6f
    add hl, de                                    ; $72b9: $19
    add hl, de                                    ; $72ba: $19
    ld a, [hl+]                                   ; $72bb: $2a
    ld h, [hl]                                    ; $72bc: $66
    ld l, a                                       ; $72bd: $6f
    ld a, [$c33c]                                 ; $72be: $fa $3c $c3
    ld c, a                                       ; $72c1: $4f
    ld b, $00                                     ; $72c2: $06 $00
    add hl, bc                                    ; $72c4: $09
    ld a, [hl]                                    ; $72c5: $7e
    cp $ff                                        ; $72c6: $fe $ff
    jr nz, jr_052_72d9                            ; $72c8: $20 $0f

    ld hl, sp+$00                                 ; $72ca: $f8 $00
    ld c, [hl]                                    ; $72cc: $4e
    ld b, $00                                     ; $72cd: $06 $00
    ld hl, $c338                                  ; $72cf: $21 $38 $c3
    add hl, bc                                    ; $72d2: $09
    ld a, [hl]                                    ; $72d3: $7e
    ld [$c33c], a                                 ; $72d4: $ea $3c $c3
    jr jr_052_72a7                                ; $72d7: $18 $ce

jr_052_72d9:
    ld b, a                                       ; $72d9: $47
    inc hl                                        ; $72da: $23
    ld c, [hl]                                    ; $72db: $4e
    inc hl                                        ; $72dc: $23
    ld e, [hl]                                    ; $72dd: $5e
    inc hl                                        ; $72de: $23
    ld a, [hl]                                    ; $72df: $7e
    push af                                       ; $72e0: $f5
    push bc                                       ; $72e1: $c5
    ld l, e                                       ; $72e2: $6b
    ld h, $00                                     ; $72e3: $26 $00
    add hl, hl                                    ; $72e5: $29
    add hl, hl                                    ; $72e6: $29
    add hl, hl                                    ; $72e7: $29
    add hl, hl                                    ; $72e8: $29
    ld de, $b000                                  ; $72e9: $11 $00 $b0
    add hl, de                                    ; $72ec: $19
    push hl                                       ; $72ed: $e5
    ld l, b                                       ; $72ee: $68
    ld h, $00                                     ; $72ef: $26 $00
    add hl, hl                                    ; $72f1: $29
    add hl, hl                                    ; $72f2: $29
    add hl, hl                                    ; $72f3: $29
    add hl, hl                                    ; $72f4: $29
    ld b, h                                       ; $72f5: $44
    ld c, l                                       ; $72f6: $4d
    ld hl, $0400                                  ; $72f7: $21 $00 $04
    rst $18                                       ; $72fa: $df
    ld a, [bc]                                    ; $72fb: $0a
    inc de                                        ; $72fc: $13
    ld de, $4000                                  ; $72fd: $11 $00 $40
    ld h, $00                                     ; $7300: $26 $00
    add hl, de                                    ; $7302: $19
    ld e, a                                       ; $7303: $5f
    ld d, $00                                     ; $7304: $16 $00
    ld a, [hl+]                                   ; $7306: $2a
    ld h, [hl]                                    ; $7307: $66
    ld l, a                                       ; $7308: $6f
    add hl, de                                    ; $7309: $19
    add hl, de                                    ; $730a: $19
    ld a, [hl+]                                   ; $730b: $2a
    ld h, [hl]                                    ; $730c: $66
    ld l, a                                       ; $730d: $6f
    add hl, bc                                    ; $730e: $09
    pop de                                        ; $730f: $d1
    pop bc                                        ; $7310: $c1
    call Call_000_0468                            ; $7311: $cd $68 $04
    ld a, [$c33c]                                 ; $7314: $fa $3c $c3
    add $04                                       ; $7317: $c6 $04
    ld [$c33c], a                                 ; $7319: $ea $3c $c3
    pop af                                        ; $731c: $f1
    ld d, a                                       ; $731d: $57
    add sp, $01                                   ; $731e: $e8 $01
    pop af                                        ; $7320: $f1
    ld h, $00                                     ; $7321: $26 $00
    ld l, a                                       ; $7323: $6f
    add hl, hl                                    ; $7324: $29
    ld bc, $c330                                  ; $7325: $01 $30 $c3
    add hl, bc                                    ; $7328: $09
    ld a, [$c33c]                                 ; $7329: $fa $3c $c3
    ld [hl+], a                                   ; $732c: $22
    ld [hl], d                                    ; $732d: $72
    pop hl                                        ; $732e: $e1
    pop de                                        ; $732f: $d1
    pop bc                                        ; $7330: $c1
    pop af                                        ; $7331: $f1
    ret                                           ; $7332: $c9


    dec sp                                        ; $7333: $3b
    ld [hl], e                                    ; $7334: $73
    ld l, e                                       ; $7335: $6b
    ld [hl], e                                    ; $7336: $73
    dec sp                                        ; $7337: $3b
    halt                                          ; $7338: $76
    and $77                                       ; $7339: $e6 $77
    ret nz                                        ; $733b: $c0

    rra                                           ; $733c: $1f
    adc d                                         ; $733d: $8a
    inc bc                                        ; $733e: $03
    add b                                         ; $733f: $80
    ld [bc], a                                    ; $7340: $02
    ld h, b                                       ; $7341: $60
    ld bc, $03ef                                  ; $7342: $01 $ef $03
    db $f4                                        ; $7345: $f4
    inc bc                                        ; $7346: $03
    adc d                                         ; $7347: $8a
    inc bc                                        ; $7348: $03
    add b                                         ; $7349: $80
    ld [bc], a                                    ; $734a: $02

Jump_052_734b:
    rra                                           ; $734b: $1f
    ld [bc], a                                    ; $734c: $02
    ld c, e                                       ; $734d: $4b
    ld c, $38                                     ; $734e: $0e $38
    ld bc, $038a                                  ; $7350: $01 $8a $03
    ld [$0825], sp                                ; $7353: $08 $25 $08
    dec h                                         ; $7356: $25
    ld [$0825], sp                                ; $7357: $08 $25 $08
    dec h                                         ; $735a: $25
    ld [$0825], sp                                ; $735b: $08 $25 $08
    dec h                                         ; $735e: $25
    ld [$0825], sp                                ; $735f: $08 $25 $08
    dec h                                         ; $7362: $25
    ld [$0825], sp                                ; $7363: $08 $25 $08
    dec h                                         ; $7366: $25
    ld [$0825], sp                                ; $7367: $08 $25 $08
    dec h                                         ; $736a: $25
    rst $38                                       ; $736b: $ff
    ld c, e                                       ; $736c: $4b
    ld a, [bc]                                    ; $736d: $0a
    dec bc                                        ; $736e: $0b
    ld c, e                                       ; $736f: $4b
    dec bc                                        ; $7370: $0b
    ld l, e                                       ; $7371: $6b
    ld l, e                                       ; $7372: $6b
    ld c, e                                       ; $7373: $4b
    cp $ff                                        ; $7374: $fe $ff
    ldh [$0b], a                                  ; $7376: $e0 $0b
    inc l                                         ; $7378: $2c
    inc c                                         ; $7379: $0c
    inc c                                         ; $737a: $0c
    inc l                                         ; $737b: $2c
    inc l                                         ; $737c: $2c
    inc c                                         ; $737d: $0c
    inc l                                         ; $737e: $2c
    ld a, [$fee0]                                 ; $737f: $fa $e0 $fe
    ld [c], a                                     ; $7382: $e2
    ld c, h                                       ; $7383: $4c
    ld c, h                                       ; $7384: $4c
    ld sp, hl                                     ; $7385: $f9
    push hl                                       ; $7386: $e5
    ld c, h                                       ; $7387: $4c
    db $ec                                        ; $7388: $ec
    and $f9                                       ; $7389: $e6 $f9
    rst $28                                       ; $738b: $ef
    ld b, $c7                                     ; $738c: $06 $c7
    ldh [rOCPD], a                                ; $738e: $e0 $6b
    dec bc                                        ; $7390: $0b
    pop bc                                        ; $7391: $c1
    ld [c], a                                     ; $7392: $e2
    ret nz                                        ; $7393: $c0

    pop hl                                        ; $7394: $e1
    call $bfe0                                    ; $7395: $cd $e0 $bf
    and $c0                                       ; $7398: $e6 $c0
    add sp, $23                                   ; $739a: $e8 $23
    inc l                                         ; $739c: $2c
    inc l                                         ; $739d: $2c
    cp e                                          ; $739e: $bb
    or $c0                                        ; $739f: $f6 $c0
    pop hl                                        ; $73a1: $e1
    add c                                         ; $73a2: $81
    ld [c], a                                     ; $73a3: $e2
    dec hl                                        ; $73a4: $2b
    ld a, a                                       ; $73a5: $7f
    db $e4                                        ; $73a6: $e4
    pop bc                                        ; $73a7: $c1
    and $a2                                       ; $73a8: $e6 $a2
    ld sp, hl                                     ; $73aa: $f9
    and $4c                                       ; $73ab: $e6 $4c
    ret nz                                        ; $73ad: $c0

    db $e3                                        ; $73ae: $e3
    ld h, l                                       ; $73af: $65
    ldh [$7a], a                                  ; $73b0: $e0 $7a
    ldh a, [$0a]                                  ; $73b2: $f0 $0a
    add c                                         ; $73b4: $81
    db $e4                                        ; $73b5: $e4
    dec bc                                        ; $73b6: $0b
    add e                                         ; $73b7: $83
    dec hl                                        ; $73b8: $2b
    dec hl                                        ; $73b9: $2b
    ccf                                           ; $73ba: $3f
    ld [c], a                                     ; $73bb: $e2
    add b                                         ; $73bc: $80
    ld a, [c]                                     ; $73bd: $f2
    ld [hl-], a                                   ; $73be: $32
    ld [c], a                                     ; $73bf: $e2
    ret nz                                        ; $73c0: $c0

    di                                            ; $73c1: $f3
    ld b, c                                       ; $73c2: $41
    pop hl                                        ; $73c3: $e1
    dec bc                                        ; $73c4: $0b
    cp $c1                                        ; $73c5: $fe $c1
    ld [c], a                                     ; $73c7: $e2
    dec hl                                        ; $73c8: $2b
    dec hl                                        ; $73c9: $2b
    dec bc                                        ; $73ca: $0b
    dec bc                                        ; $73cb: $0b
    ld c, h                                       ; $73cc: $4c
    ld c, h                                       ; $73cd: $4c
    ld l, h                                       ; $73ce: $6c
    nop                                           ; $73cf: $00
    add b                                         ; $73d0: $80
    ldh a, [$fe]                                  ; $73d1: $f0 $fe
    db $e4                                        ; $73d3: $e4
    db $fc                                        ; $73d4: $fc
    push bc                                       ; $73d5: $c5
    rst $18                                       ; $73d6: $df
    call nz, $c3d8                                ; $73d7: $c4 $d8 $c3
    ld b, a                                       ; $73da: $47
    ldh [$c0], a                                  ; $73db: $e0 $c0
    ldh [$c1], a                                  ; $73dd: $e0 $c1
    pop hl                                        ; $73df: $e1
    dec e                                         ; $73e0: $1d
    ld l, e                                       ; $73e1: $6b
    ret nz                                        ; $73e2: $c0

    ldh [$0c], a                                  ; $73e3: $e0 $0c
    ld c, h                                       ; $73e5: $4c
    ld l, h                                       ; $73e6: $6c
    nop                                           ; $73e7: $00
    pop af                                        ; $73e8: $f1
    cp e                                          ; $73e9: $bb
    db $e4                                        ; $73ea: $e4
    ret nz                                        ; $73eb: $c0

    db $d3                                        ; $73ec: $d3
    nop                                           ; $73ed: $00
    adc c                                         ; $73ee: $89
    ldh [$82], a                                  ; $73ef: $e0 $82
    ld [c], a                                     ; $73f1: $e2
    add b                                         ; $73f2: $80
    pop hl                                        ; $73f3: $e1
    pop bc                                        ; $73f4: $c1
    ret z                                         ; $73f5: $c8

    ret nz                                        ; $73f6: $c0

    db $eb                                        ; $73f7: $eb
    cp e                                          ; $73f8: $bb
    db $e3                                        ; $73f9: $e3
    add b                                         ; $73fa: $80
    pop de                                        ; $73fb: $d1
    jp nz, Jump_000_0be0                          ; $73fc: $c2 $e0 $0b

    dec bc                                        ; $73ff: $0b
    ld c, e                                       ; $7400: $4b
    ld b, e                                       ; $7401: $43
    pop hl                                        ; $7402: $e1
    dec hl                                        ; $7403: $2b
    scf                                           ; $7404: $37
    ldh [$c0], a                                  ; $7405: $e0 $c0
    rst $28                                       ; $7407: $ef
    ret nz                                        ; $7408: $c0

    jp nz, $e23c                                  ; $7409: $c2 $3c $e2

    inc [hl]                                      ; $740c: $34
    add b                                         ; $740d: $80
    di                                            ; $740e: $f3
    pop bc                                        ; $740f: $c1
    pop hl                                        ; $7410: $e1
    dec bc                                        ; $7411: $0b
    ld a, $c0                                     ; $7412: $3e $c0
    ld l, e                                       ; $7414: $6b
    ld l, e                                       ; $7415: $6b
    add b                                         ; $7416: $80
    db $ec                                        ; $7417: $ec
    db $10                                        ; $7418: $10
    push hl                                       ; $7419: $e5
    nop                                           ; $741a: $00
    ret nz                                        ; $741b: $c0

    add $fd                                       ; $741c: $c6 $fd
    or e                                          ; $741e: $b3
    add c                                         ; $741f: $81
    ld [c], a                                     ; $7420: $e2
    ret nz                                        ; $7421: $c0

    and b                                         ; $7422: $a0
    dec sp                                        ; $7423: $3b
    ret nz                                        ; $7424: $c0

    add b                                         ; $7425: $80
    ld [c], a                                     ; $7426: $e2
    nop                                           ; $7427: $00
    pop de                                        ; $7428: $d1
    ret nz                                        ; $7429: $c0

    call z, $c000                                 ; $742a: $cc $00 $c0
    pop af                                        ; $742d: $f1
    cp a                                          ; $742e: $bf
    ld [c], a                                     ; $742f: $e2
    add b                                         ; $7430: $80
    pop af                                        ; $7431: $f1
    nop                                           ; $7432: $00
    jp nz, $c23d                                  ; $7433: $c2 $3d $c2

    ld a, a                                       ; $7436: $7f
    push bc                                       ; $7437: $c5
    ld h, b                                       ; $7438: $60
    and d                                         ; $7439: $a2
    ld l, a                                       ; $743a: $6f
    and [hl]                                      ; $743b: $a6
    ld bc, $812c                                  ; $743c: $01 $2c $81
    jp nz, $e182                                  ; $743f: $c2 $82 $e1

    ret nz                                        ; $7442: $c0

    db $ec                                        ; $7443: $ec
    ret                                           ; $7444: $c9


    pop hl                                        ; $7445: $e1
    ld b, a                                       ; $7446: $47
    push hl                                       ; $7447: $e5
    cp e                                          ; $7448: $bb
    db $e4                                        ; $7449: $e4
    ld [hl-], a                                   ; $744a: $32
    or c                                          ; $744b: $b1
    inc hl                                        ; $744c: $23
    inc l                                         ; $744d: $2c
    ld c, h                                       ; $744e: $4c
    add d                                         ; $744f: $82
    ret nz                                        ; $7450: $c0

    ld a, h                                       ; $7451: $7c
    and d                                         ; $7452: $a2
    ld hl, sp-$60                                 ; $7453: $f8 $a0
    ld l, h                                       ; $7455: $6c
    ld d, l                                       ; $7456: $55
    and b                                         ; $7457: $a0
    ret nz                                        ; $7458: $c0

    ld [$4420], a                                 ; $7459: $ea $20 $44
    pop bc                                        ; $745c: $c1
    ld sp, hl                                     ; $745d: $f9
    db $e3                                        ; $745e: $e3
    ld l, a                                       ; $745f: $6f
    and h                                         ; $7460: $a4
    ld [hl-], a                                   ; $7461: $32
    and e                                         ; $7462: $a3
    ret nz                                        ; $7463: $c0

    jp hl                                         ; $7464: $e9


    inc l                                         ; $7465: $2c
    ld b, d                                       ; $7466: $42
    pop bc                                        ; $7467: $c1
    ld b, c                                       ; $7468: $41
    and b                                         ; $7469: $a0
    nop                                           ; $746a: $00
    add hl, sp                                    ; $746b: $39
    pop bc                                        ; $746c: $c1
    ld [c], a                                     ; $746d: $e2
    and e                                         ; $746e: $a3
    cp a                                          ; $746f: $bf
    add e                                         ; $7470: $83
    add a                                         ; $7471: $87
    call nz, $8bbc                                ; $7472: $c4 $bc $8b
    ld [hl-], a                                   ; $7475: $32
    and h                                         ; $7476: $a4
    sbc c                                         ; $7477: $99
    add b                                         ; $7478: $80
    ld [hl-], a                                   ; $7479: $32
    and a                                         ; $747a: $a7
    nop                                           ; $747b: $00
    ld bc, $c0c1                                  ; $747c: $01 $c1 $c0
    db $e3                                        ; $747f: $e3
    add h                                         ; $7480: $84
    and b                                         ; $7481: $a0
    add b                                         ; $7482: $80
    adc e                                         ; $7483: $8b
    ld a, h                                       ; $7484: $7c
    ret                                           ; $7485: $c9


    ld bc, $32a3                                  ; $7486: $01 $a3 $32
    and h                                         ; $7489: $a4
    ret nz                                        ; $748a: $c0

    db $ed                                        ; $748b: $ed
    nop                                           ; $748c: $00
    cp h                                          ; $748d: $bc
    and c                                         ; $748e: $a1
    jp nz, $80a3                                  ; $748f: $c2 $a3 $80

    adc e                                         ; $7492: $8b
    dec a                                         ; $7493: $3d
    add h                                         ; $7494: $84
    ld bc, $32a6                                  ; $7495: $01 $a6 $32
    and h                                         ; $7498: $a4
    add c                                         ; $7499: $81
    add sp, $1d                                   ; $749a: $e8 $1d
    db $e4                                        ; $749c: $e4
    nop                                           ; $749d: $00
    ldh [$c3], a                                  ; $749e: $e0 $c3
    di                                            ; $74a0: $f3
    push hl                                       ; $74a1: $e5
    ld c, d                                       ; $74a2: $4a
    db $ec                                        ; $74a3: $ec
    ld [hl], l                                    ; $74a4: $75
    add sp, $32                                   ; $74a5: $e8 $32
    and e                                         ; $74a7: $a3
    ld b, c                                       ; $74a8: $41
    jp hl                                         ; $74a9: $e9


    and $66                                       ; $74aa: $e6 $66
    rst $10                                       ; $74ac: $d7
    ld h, l                                       ; $74ad: $65
    nop                                           ; $74ae: $00
    rst $08                                       ; $74af: $cf
    ld h, h                                       ; $74b0: $64
    or a                                          ; $74b1: $b7
    ld h, b                                       ; $74b2: $60
    ld c, e                                       ; $74b3: $4b
    add l                                         ; $74b4: $85
    ld bc, $f2a8                                  ; $74b5: $01 $a8 $f2
    add h                                         ; $74b8: $84
    or c                                          ; $74b9: $b1
    ld [hl], c                                    ; $74ba: $71
    and l                                         ; $74bb: $a5
    push bc                                       ; $74bc: $c5
    rst $08                                       ; $74bd: $cf
    ld h, e                                       ; $74be: $63
    nop                                           ; $74bf: $00
    sbc $c2                                       ; $74c0: $de $c2
    ld c, e                                       ; $74c2: $4b
    add l                                         ; $74c3: $85
    jp z, Jump_000_32e6                           ; $74c4: $ca $e6 $32

    and h                                         ; $74c7: $a4
    pop bc                                        ; $74c8: $c1
    jp nz, Jump_052_676c                          ; $74c9: $c2 $6c $67

    rla                                           ; $74cc: $17
    and a                                         ; $74cd: $a7
    call z, Call_000_00e1                         ; $74ce: $cc $e1 $00
    rst $08                                       ; $74d1: $cf
    ld h, e                                       ; $74d2: $63
    sbc [hl]                                      ; $74d3: $9e
    pop bc                                        ; $74d4: $c1
    ld c, d                                       ; $74d5: $4a
    db $ec                                        ; $74d6: $ec
    ld a, [c]                                     ; $74d7: $f2
    ld h, a                                       ; $74d8: $67
    ret nz                                        ; $74d9: $c0

    db $ec                                        ; $74da: $ec
    sub b                                         ; $74db: $90
    res 1, b                                      ; $74dc: $cb $88
    ret                                           ; $74de: $c9


    and l                                         ; $74df: $a5
    add sp, $00                                   ; $74e0: $e8 $00
    xor e                                         ; $74e2: $ab
    jp z, $cbff                                   ; $74e3: $ca $ff $cb

    sub a                                         ; $74e6: $97
    add [hl]                                      ; $74e7: $86
    ld e, c                                       ; $74e8: $59
    and h                                         ; $74e9: $a4
    rst $08                                       ; $74ea: $cf
    ld h, l                                       ; $74eb: $65
    adc d                                         ; $74ec: $8a
    db $ec                                        ; $74ed: $ec
    ld [hl-], a                                   ; $74ee: $32
    and a                                         ; $74ef: $a7
    cp a                                          ; $74f0: $bf
    jp nc, $e500                                  ; $74f1: $d2 $00 $e5

    push bc                                       ; $74f4: $c5
    rrca                                          ; $74f5: $0f
    add [hl]                                      ; $74f6: $86
    ret nz                                        ; $74f7: $c0

    db $ec                                        ; $74f8: $ec
    cp h                                          ; $74f9: $bc
    ld b, b                                       ; $74fa: $40
    dec hl                                        ; $74fb: $2b
    ret                                           ; $74fc: $c9


    add b                                         ; $74fd: $80
    jp nc, $ebc0                                  ; $74fe: $d2 $c0 $eb

    ld c, d                                       ; $7501: $4a
    jp hl                                         ; $7502: $e9


    nop                                           ; $7503: $00
    ld a, h                                       ; $7504: $7c
    ld b, c                                       ; $7505: $41
    ld [hl-], a                                   ; $7506: $32
    and [hl]                                      ; $7507: $a6
    ld b, b                                       ; $7508: $40
    push af                                       ; $7509: $f5
    ld c, $4c                                     ; $750a: $0e $4c
    ld c, d                                       ; $750c: $4a
    ld [$b680], a                                 ; $750d: $ea $80 $b6
    ret nz                                        ; $7510: $c0

    call $87dc                                    ; $7511: $cd $dc $87
    nop                                           ; $7514: $00
    ld a, a                                       ; $7515: $7f
    and a                                         ; $7516: $a7
    ret nz                                        ; $7517: $c0

    xor c                                         ; $7518: $a9
    add b                                         ; $7519: $80
    and d                                         ; $751a: $a2
    nop                                           ; $751b: $00
    db $d3                                        ; $751c: $d3
    ld d, [hl]                                    ; $751d: $56
    ld b, e                                       ; $751e: $43
    scf                                           ; $751f: $37
    ret                                           ; $7520: $c9


    and l                                         ; $7521: $a5
    jp z, Jump_052_66f2                           ; $7522: $ca $f2 $66

    nop                                           ; $7525: $00
    push af                                       ; $7526: $f5
    inc l                                         ; $7527: $2c
    push hl                                       ; $7528: $e5
    jp hl                                         ; $7529: $e9


    ld c, $48                                     ; $752a: $0e $48
    add b                                         ; $752c: $80
    db $eb                                        ; $752d: $eb
    add hl, sp                                    ; $752e: $39
    ld h, a                                       ; $752f: $67
    ld sp, $dc2a                                  ; $7530: $31 $2a $dc
    ld h, [hl]                                    ; $7533: $66
    add b                                         ; $7534: $80
    ld [$0900], a                                 ; $7535: $ea $00 $09
    ld b, h                                       ; $7538: $44
    db $f4                                        ; $7539: $f4
    add l                                         ; $753a: $85
    ld a, h                                       ; $753b: $7c
    ld b, h                                       ; $753c: $44
    ld a, [c]                                     ; $753d: $f2
    ld h, [hl]                                    ; $753e: $66
    ret nz                                        ; $753f: $c0

    ld [$87bf], a                                 ; $7540: $ea $bf $87
    sbc h                                         ; $7543: $9c
    ld l, b                                       ; $7544: $68
    adc e                                         ; $7545: $8b
    ld l, e                                       ; $7546: $6b
    nop                                           ; $7547: $00
    sbc c                                         ; $7548: $99
    rst $20                                       ; $7549: $e7
    ei                                            ; $754a: $fb
    ld [hl-], a                                   ; $754b: $32
    ldh [$e8], a                                  ; $754c: $e0 $e8
    rst $30                                       ; $754e: $f7
    xor h                                         ; $754f: $ac
    ret nz                                        ; $7550: $c0

    jp z, Jump_052_67ae                           ; $7551: $ca $ae $67

    ld b, l                                       ; $7554: $45
    or e                                          ; $7555: $b3
    ld c, a                                       ; $7556: $4f
    dec b                                         ; $7557: $05
    nop                                           ; $7558: $00
    dec hl                                        ; $7559: $2b
    and $40                                       ; $755a: $e6 $40
    jp hl                                         ; $755c: $e9


    rst $30                                       ; $755d: $f7
    inc h                                         ; $755e: $24
    add h                                         ; $755f: $84
    jp Jump_052_617f                              ; $7560: $c3 $7f $61


    add l                                         ; $7563: $85
    ret nc                                        ; $7564: $d0

    inc e                                         ; $7565: $1c
    adc b                                         ; $7566: $88
    ld a, [bc]                                    ; $7567: $0a
    adc a                                         ; $7568: $8f
    nop                                           ; $7569: $00
    adc l                                         ; $756a: $8d
    ld b, b                                       ; $756b: $40
    ld h, [hl]                                    ; $756c: $66
    add h                                         ; $756d: $84
    ld b, c                                       ; $756e: $41
    xor [hl]                                      ; $756f: $ae
    and c                                         ; $7570: $a1
    ld b, [hl]                                    ; $7571: $46
    sub d                                         ; $7572: $92
    db $eb                                        ; $7573: $eb
    ld a, [bc]                                    ; $7574: $0a
    adc e                                         ; $7575: $8b
    ld [hl], c                                    ; $7576: $71
    add c                                         ; $7577: $81
    ld a, d                                       ; $7578: $7a
    dec b                                         ; $7579: $05
    nop                                           ; $757a: $00
    ld [bc], a                                    ; $757b: $02
    ld l, b                                       ; $757c: $68
    ld e, h                                       ; $757d: $5c
    ld c, b                                       ; $757e: $48
    jp nc, $f7c9                                  ; $757f: $d2 $c9 $f7

    add a                                         ; $7582: $87
    xor $a9                                       ; $7583: $ee $a9
    ld a, d                                       ; $7585: $7a
    inc b                                         ; $7586: $04
    jp nz, $8549                                  ; $7587: $c2 $49 $85

    jp z, $1c00                                   ; $758a: $ca $00 $1c

    ret                                           ; $758d: $c9


    ld a, [bc]                                    ; $758e: $0a
    adc a                                         ; $758f: $8f
    ld a, d                                       ; $7590: $7a
    ld d, $18                                     ; $7591: $16 $18
    ld c, c                                       ; $7593: $49
    call c, $ae87                                 ; $7594: $dc $87 $ae
    set 0, b                                      ; $7597: $cb $c0
    push bc                                       ; $7599: $c5
    ld [bc], a                                    ; $759a: $02
    or l                                          ; $759b: $b5
    nop                                           ; $759c: $00
    add hl, bc                                    ; $759d: $09
    jp z, Jump_052_4d3f                           ; $759e: $ca $3f $4d

    xor $a5                                       ; $75a1: $ee $a5
    ret nz                                        ; $75a3: $c0

    db $fd                                        ; $75a4: $fd
    sbc c                                         ; $75a5: $99
    dec bc                                        ; $75a6: $0b
    nop                                           ; $75a7: $00
    sra a                                         ; $75a8: $cb $2f
    adc d                                         ; $75aa: $8a
    nop                                           ; $75ab: $00
    sub e                                         ; $75ac: $93
    nop                                           ; $75ad: $00
    add hl, sp                                    ; $75ae: $39
    ld b, h                                       ; $75af: $44
    ld hl, sp-$57                                 ; $75b0: $f8 $a9
    add b                                         ; $75b2: $80
    cp a                                          ; $75b3: $bf
    add b                                         ; $75b4: $80
    adc e                                         ; $75b5: $8b
    ei                                            ; $75b6: $fb
    ld h, $80                                     ; $75b7: $26 $80
    or b                                          ; $75b9: $b0
    add e                                         ; $75ba: $83
    ld a, c                                       ; $75bb: $79
    ret nz                                        ; $75bc: $c0

    xor $00                                       ; $75bd: $ee $00
    rst $28                                       ; $75bf: $ef
    adc c                                         ; $75c0: $89
    jr nz, @-$39                                  ; $75c1: $20 $c5

    ld a, d                                       ; $75c3: $7a
    ld b, $3b                                     ; $75c4: $06 $3b
    rst $30                                       ; $75c6: $f7
    ld h, $43                                     ; $75c7: $26 $43
    ld [hl+], a                                   ; $75c9: $22
    ld [bc], a                                    ; $75ca: $02
    call c, Call_052_4107                         ; $75cb: $dc $07 $41
    dec b                                         ; $75ce: $05
    nop                                           ; $75cf: $00
    inc bc                                        ; $75d0: $03
    ld [hl], d                                    ; $75d1: $72
    xor [hl]                                      ; $75d2: $ae
    db $fc                                        ; $75d3: $fc
    and b                                         ; $75d4: $a0
    xor e                                         ; $75d5: $ab
    add b                                         ; $75d6: $80
    rst $28                                       ; $75d7: $ef
    rst $08                                       ; $75d8: $cf
    ld hl, $40e6                                  ; $75d9: $21 $e6 $40
    xor b                                         ; $75dc: $a8
    sub $36                                       ; $75dd: $d6 $36
    ldh a, [rP1]                                  ; $75df: $f0 $00
    call nz, Call_000_29ae                        ; $75e1: $c4 $ae $29
    db $fd                                        ; $75e4: $fd
    ld c, d                                       ; $75e5: $4a
    ld h, h                                       ; $75e6: $64
    add d                                         ; $75e7: $82
    ldh a, [$b0]                                  ; $75e8: $f0 $b0
    reti                                          ; $75ea: $d9


    pop hl                                        ; $75eb: $e1
    add sp, $2f                                   ; $75ec: $e8 $2f
    inc hl                                        ; $75ee: $23
    ld h, b                                       ; $75ef: $60
    or $00                                        ; $75f0: $f6 $00
    ret nz                                        ; $75f2: $c0

    cp $e0                                        ; $75f3: $fe $e0
    jp c, $da6d                                   ; $75f5: $da $6d $da

    ret nz                                        ; $75f8: $c0

    rst $38                                       ; $75f9: $ff
    sbc $fe                                       ; $75fa: $de $fe
    ret nz                                        ; $75fc: $c0

    rst $38                                       ; $75fd: $ff
    rst $38                                       ; $75fe: $ff
    rst $38                                       ; $75ff: $ff
    rst $38                                       ; $7600: $ff
    rst $38                                       ; $7601: $ff
    nop                                           ; $7602: $00
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
    nop                                           ; $7613: $00
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
    nop                                           ; $7624: $00
    rst $38                                       ; $7625: $ff
    rst $38                                       ; $7626: $ff
    rst $38                                       ; $7627: $ff
    rst $38                                       ; $7628: $ff
    ld c, [hl]                                    ; $7629: $4e
    ld [hl], e                                    ; $762a: $73
    db $dd                                        ; $762b: $dd
    rst $38                                       ; $762c: $ff
    rst $38                                       ; $762d: $ff
    rst $38                                       ; $762e: $ff
    rst $38                                       ; $762f: $ff
    rst $38                                       ; $7630: $ff
    rst $38                                       ; $7631: $ff
    rst $38                                       ; $7632: $ff
    rst $38                                       ; $7633: $ff
    rst $38                                       ; $7634: $ff
    nop                                           ; $7635: $00
    ld b, l                                       ; $7636: $45
    ld d, c                                       ; $7637: $51
    nop                                           ; $7638: $00
    nop                                           ; $7639: $00
    nop                                           ; $763a: $00
    rst $38                                       ; $763b: $ff
    ld e, e                                       ; $763c: $5b
    ld e, d                                       ; $763d: $5a
    ld e, e                                       ; $763e: $5b
    ld e, e                                       ; $763f: $5b
    ld h, b                                       ; $7640: $60
    ld c, l                                       ; $7641: $4d
    ld b, l                                       ; $7642: $45
    ld d, h                                       ; $7643: $54
    cp a                                          ; $7644: $bf
    ld d, l                                       ; $7645: $55
    ld b, l                                       ; $7646: $45
    ld c, l                                       ; $7647: $4d
    ld sp, $2008                                  ; $7648: $31 $08 $20
    rst $38                                       ; $764b: $ff
    db $e3                                        ; $764c: $e3
    nop                                           ; $764d: $00
    db $fc                                        ; $764e: $fc
    rst $38                                       ; $764f: $ff
    rst $38                                       ; $7650: $ff
    rst $20                                       ; $7651: $e7
    and $5b                                       ; $7652: $e6 $5b
    ld e, e                                       ; $7654: $5b
    ld e, e                                       ; $7655: $5b
    ld e, a                                       ; $7656: $5f
    ld sp, $7f39                                  ; $7657: $31 $39 $7f
    ld l, d                                       ; $765a: $6a
    ld l, d                                       ; $765b: $6a
    ld l, d                                       ; $765c: $6a
    ld l, l                                       ; $765d: $6d
    add hl, sp                                    ; $765e: $39
    ld sp, $c00d                                  ; $765f: $31 $0d $c0
    rst $38                                       ; $7662: $ff
    xor $c0                                       ; $7663: $ee $c0
    pop af                                        ; $7665: $f1
    ld e, [hl]                                    ; $7666: $5e
    ld c, c                                       ; $7667: $49
    ld c, b                                       ; $7668: $48
    pop bc                                        ; $7669: $c1
    ldh [$30], a                                  ; $766a: $e0 $30
    ld c, b                                       ; $766c: $48
    ld c, c                                       ; $766d: $49

jr_052_766e:
    db $d3                                        ; $766e: $d3
    ld sp, $c00c                                  ; $766f: $31 $0c $c0
    rst $38                                       ; $7672: $ff
    xor $ed                                       ; $7673: $ee $ed
    ld e, d                                       ; $7675: $5a
    add c                                         ; $7676: $81
    db $e3                                        ; $7677: $e3
    ld l, l                                       ; $7678: $6d
    jr nc, jr_052_76ba                            ; $7679: $30 $3f

    ld l, l                                       ; $767b: $6d
    ld l, d                                       ; $767c: $6a
    add hl, sp                                    ; $767d: $39
    ld sp, $2c15                                  ; $767e: $31 $15 $2c
    ret nz                                        ; $7681: $c0

    rst $38                                       ; $7682: $ff
    ld b, b                                       ; $7683: $40
    xor $f7                                       ; $7684: $ee $f7
    ld e, [hl]                                    ; $7686: $5e
    ld sp, $c152                                  ; $7687: $31 $52 $c1
    ld [c], a                                     ; $768a: $e2
    ld l, d                                       ; $768b: $6a
    ld d, d                                       ; $768c: $52
    ld sp, $7331                                  ; $768d: $31 $31 $73
    rla                                           ; $7690: $17
    jr z, @-$3e                                   ; $7691: $28 $c0

    rst $38                                       ; $7693: $ff
    nop                                           ; $7694: $00
    db $ed                                        ; $7695: $ed
    ld h, c                                       ; $7696: $61
    ld sp, $c153                                  ; $7697: $31 $53 $c1
    ld [c], a                                     ; $769a: $e2
    rra                                           ; $769b: $1f
    jr nc, jr_052_76f1                            ; $769c: $30 $53

    ld sp, $2a31                                  ; $769e: $31 $31 $2a

jr_052_76a1:
    ld a, a                                       ; $76a1: $7f
    ld [c], a                                     ; $76a2: $e2
    jp z, $c0ff                                   ; $76a3: $ca $ff $c0

    db $ec                                        ; $76a6: $ec
    sbc a                                         ; $76a7: $9f
    jr nc, jr_052_7715                            ; $76a8: $30 $6b

    ld l, c                                       ; $76aa: $69
    ld l, c                                       ; $76ab: $69
    jr nc, jr_052_766e                            ; $76ac: $30 $c0

    rst $38                                       ; $76ae: $ff
    add b                                         ; $76af: $80

jr_052_76b0:
    jp nc, Jump_000_0760                          ; $76b0: $d2 $60 $07

    ld sp, $5231                                  ; $76b3: $31 $31 $52
    ret nz                                        ; $76b6: $c0

    db $e3                                        ; $76b7: $e3
    ld b, b                                       ; $76b8: $40
    pop hl                                        ; $76b9: $e1

jr_052_76ba:
    ret nz                                        ; $76ba: $c0

    rst $38                                       ; $76bb: $ff
    db $ed                                        ; $76bc: $ed
    db $ec                                        ; $76bd: $ec
    pop bc                                        ; $76be: $c1
    ldh [$8b], a                                  ; $76bf: $e0 $8b
    ld sp, $4052                                  ; $76c1: $31 $52 $40
    and $2b                                       ; $76c4: $e6 $2b
    ret nz                                        ; $76c6: $c0

    rst $38                                       ; $76c7: $ff
    db $ed                                        ; $76c8: $ed
    db $ec                                        ; $76c9: $ec
    pop bc                                        ; $76ca: $c1
    ldh [$31], a                                  ; $76cb: $e0 $31
    ld de, $c053                                  ; $76cd: $11 $53 $c0
    jp $ffc0                                      ; $76d0: $c3 $c0 $ff


    ret nz                                        ; $76d3: $c0

    push af                                       ; $76d4: $f5
    ld h, a                                       ; $76d5: $67
    ld b, b                                       ; $76d6: $40
    jp nz, $ffc0                                  ; $76d7: $c2 $c0 $ff

    pop af                                        ; $76da: $f1
    ldh a, [$85]                                  ; $76db: $f0 $85
    ld de, $e140                                  ; $76dd: $11 $40 $e1
    jr nc, jr_052_76a1                            ; $76e0: $30 $bf

    ld [c], a                                     ; $76e2: $e2
    ld b, b                                       ; $76e3: $40
    ret nz                                        ; $76e4: $c0

    ret nz                                        ; $76e5: $c0

    rst $38                                       ; $76e6: $ff
    xor $ed                                       ; $76e7: $ee $ed
    ld d, $9f                                     ; $76e9: $16 $9f
    dec d                                         ; $76eb: $15
    ld sp, $3931                                  ; $76ec: $31 $31 $39
    jr nc, jr_052_76b0                            ; $76ef: $30 $bf

jr_052_76f1:
    ld [c], a                                     ; $76f1: $e2
    ret nz                                        ; $76f2: $c0

    and b                                         ; $76f3: $a0
    ld d, $fc                                     ; $76f4: $16 $fc
    nop                                           ; $76f6: $00
    rst $18                                       ; $76f7: $df
    db $ed                                        ; $76f8: $ed
    db $ec                                        ; $76f9: $ec
    jr z, @+$19                                   ; $76fa: $28 $17

    ld sp, $4931                                  ; $76fc: $31 $31 $49
    ld c, b                                       ; $76ff: $48
    rrca                                          ; $7700: $0f
    jr nc, jr_052_7733                            ; $7701: $30 $30

    ld h, [hl]                                    ; $7703: $66
    ld l, c                                       ; $7704: $69
    ld b, b                                       ; $7705: $40
    and b                                         ; $7706: $a0
    pop bc                                        ; $7707: $c1
    and e                                         ; $7708: $a3
    ret nz                                        ; $7709: $c0

    rst $38                                       ; $770a: $ff
    jp hl                                         ; $770b: $e9


    add sp, $19                                   ; $770c: $e8 $19
    jr nz, @-$40                                  ; $770e: $20 $be

    pop bc                                        ; $7710: $c1
    ld a, a                                       ; $7711: $7f
    ldh [$66], a                                  ; $7712: $e0 $66
    ld l, c                                       ; $7714: $69

jr_052_7715:
    add c                                         ; $7715: $81
    pop hl                                        ; $7716: $e1
    nop                                           ; $7717: $00
    cp a                                          ; $7718: $bf
    ret nz                                        ; $7719: $c0

    ld a, [c]                                     ; $771a: $f2
    nop                                           ; $771b: $00
    ld b, b                                       ; $771c: $40
    add h                                         ; $771d: $84
    add c                                         ; $771e: $81
    db $e4                                        ; $771f: $e4
    ret nz                                        ; $7720: $c0

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
    nop                                           ; $772c: $00
    rst $38                                       ; $772d: $ff
    rst $38                                       ; $772e: $ff
    rst $38                                       ; $772f: $ff
    rst $38                                       ; $7730: $ff
    rst $38                                       ; $7731: $ff
    rst $38                                       ; $7732: $ff

jr_052_7733:
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
    nop                                           ; $773d: $00
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
    nop                                           ; $774e: $00
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
    nop                                           ; $775f: $00
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
    nop                                           ; $7770: $00
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
    nop                                           ; $7781: $00
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
    nop                                           ; $7792: $00
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
    nop                                           ; $77a3: $00
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
    nop                                           ; $77b4: $00
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
    nop                                           ; $77c5: $00
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
    nop                                           ; $77d6: $00
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
    db $f4                                        ; $77e2: $f4
    nop                                           ; $77e3: $00
    nop                                           ; $77e4: $00
    nop                                           ; $77e5: $00
    and l                                         ; $77e6: $a5
    nop                                           ; $77e7: $00
    rst $38                                       ; $77e8: $ff
    push hl                                       ; $77e9: $e5
    ld [hl-], a                                   ; $77ea: $32
    or $e6                                        ; $77eb: $f6 $e6
    rst $30                                       ; $77ed: $f7
    rst $20                                       ; $77ee: $e7
    dec [hl]                                      ; $77ef: $35
    db $ec                                        ; $77f0: $ec
    xor $37                                       ; $77f1: $ee $37
    db $ec                                        ; $77f3: $ec
    jp c, $c7f0                                   ; $77f4: $da $f0 $c7

    add sp, $33                                   ; $77f7: $e8 $33
    ld sp, $f2e0                                  ; $77f9: $31 $e0 $f2
    ld [hl], $30                                  ; $77fc: $36 $30
    scf                                           ; $77fe: $37
    cp a                                          ; $77ff: $bf
    ld h, $20                                     ; $7800: $26 $20
    daa                                           ; $7802: $27
    db $10                                        ; $7803: $10
    ld d, $17                                     ; $7804: $16 $17
    jp nz, Jump_000_34f6                          ; $7806: $c2 $f6 $34

    rst $38                                       ; $7809: $ff
    ld [hl], $32                                  ; $780a: $36 $32
    jr nc, jr_052_7845                            ; $780c: $30 $37

    ld sp, $3133                                  ; $780e: $31 $33 $31
    inc sp                                        ; $7811: $33
    nop                                           ; $7812: $00
    and b                                         ; $7813: $a0
    ei                                            ; $7814: $fb
    rst $38                                       ; $7815: $ff
    rst $28                                       ; $7816: $ef
    nop                                           ; $7817: $00
    nop                                           ; $7818: $00
    nop                                           ; $7819: $00
    ld [hl+], a                                   ; $781a: $22
    ld a, b                                       ; $781b: $78
    ld d, d                                       ; $781c: $52
    ld a, b                                       ; $781d: $78
    db $f4                                        ; $781e: $f4
    ld a, d                                       ; $781f: $7a
    cp l                                          ; $7820: $bd
    ld a, h                                       ; $7821: $7c
    ld hl, sp+$03                                 ; $7822: $f8 $03
    ld c, h                                       ; $7824: $4c
    inc bc                                        ; $7825: $03
    ld d, e                                       ; $7826: $53
    ld bc, $008a                                  ; $7827: $01 $8a $00
    ldh a, [$03]                                  ; $782a: $f0 $03
    ld hl, sp+$03                                 ; $782c: $f8 $03
    ld c, h                                       ; $782e: $4c
    inc bc                                        ; $782f: $03
    ld d, e                                       ; $7830: $53
    ld bc, $47ff                                  ; $7831: $01 $ff $47
    ldh a, [rP1]                                  ; $7834: $f0 $00
    ld e, l                                       ; $7836: $5d
    add hl, de                                    ; $7837: $19
    ld c, h                                       ; $7838: $4c
    inc bc                                        ; $7839: $03
    ld [$0825], sp                                ; $783a: $08 $25 $08
    dec h                                         ; $783d: $25
    ld [$0825], sp                                ; $783e: $08 $25 $08
    dec h                                         ; $7841: $25
    ld [$0825], sp                                ; $7842: $08 $25 $08

jr_052_7845:
    dec h                                         ; $7845: $25
    ld [$0825], sp                                ; $7846: $08 $25 $08
    dec h                                         ; $7849: $25
    ld [$0825], sp                                ; $784a: $08 $25 $08
    dec h                                         ; $784d: $25
    ld [$0825], sp                                ; $784e: $08 $25 $08
    dec h                                         ; $7851: $25
    rst $38                                       ; $7852: $ff
    ld c, d                                       ; $7853: $4a
    ld c, d                                       ; $7854: $4a
    ld c, d                                       ; $7855: $4a
    ld l, d                                       ; $7856: $6a
    dec bc                                        ; $7857: $0b
    dec bc                                        ; $7858: $0b
    dec bc                                        ; $7859: $0b
    ld l, e                                       ; $785a: $6b
    db $fd                                        ; $785b: $fd
    ld c, e                                       ; $785c: $4b
    rst $38                                       ; $785d: $ff
    pop hl                                        ; $785e: $e1
    dec bc                                        ; $785f: $0b
    dec bc                                        ; $7860: $0b
    dec hl                                        ; $7861: $2b
    ld c, d                                       ; $7862: $4a
    ld l, d                                       ; $7863: $6a
    ld l, d                                       ; $7864: $6a
    sbc a                                         ; $7865: $9f
    ld l, d                                       ; $7866: $6a
    inc c                                         ; $7867: $0c
    ld c, h                                       ; $7868: $4c
    inc c                                         ; $7869: $0c
    ld c, h                                       ; $786a: $4c
    db $fd                                        ; $786b: $fd
    db $e4                                        ; $786c: $e4
    ld hl, sp-$20                                 ; $786d: $f8 $e0
    inc c                                         ; $786f: $0c
    ld h, d                                       ; $7870: $62
    di                                            ; $7871: $f3
    pop hl                                        ; $7872: $e1
    inc l                                         ; $7873: $2c
    ld sp, hl                                     ; $7874: $f9
    rst $20                                       ; $7875: $e7
    db $fd                                        ; $7876: $fd
    db $eb                                        ; $7877: $eb
    pop bc                                        ; $7878: $c1
    db $e4                                        ; $7879: $e4
    dec bc                                        ; $787a: $0b
    dec hl                                        ; $787b: $2b
    cp e                                          ; $787c: $bb
    ldh [$e1], a                                  ; $787d: $e0 $e1
    dec hl                                        ; $787f: $2b
    cp a                                          ; $7880: $bf
    db $e4                                        ; $7881: $e4
    ret nz                                        ; $7882: $c0

    push hl                                       ; $7883: $e5
    cp c                                          ; $7884: $b9
    ldh [$c2], a                                  ; $7885: $e0 $c2
    db $e3                                        ; $7887: $e3
    ld c, h                                       ; $7888: $4c
    inc l                                         ; $7889: $2c
    inc l                                         ; $788a: $2c
    ld h, b                                       ; $788b: $60
    ld sp, hl                                     ; $788c: $f9
    push hl                                       ; $788d: $e5
    ret nz                                        ; $788e: $c0

    xor $c1                                       ; $788f: $ee $c1
    db $e4                                        ; $7891: $e4
    ret nz                                        ; $7892: $c0

    pop hl                                        ; $7893: $e1
    cp a                                          ; $7894: $bf
    db $e3                                        ; $7895: $e3
    dec bc                                        ; $7896: $0b
    dec bc                                        ; $7897: $0b
    call z, $98e3                                 ; $7898: $cc $e3 $98
    add [hl]                                      ; $789b: $86
    ldh [$fc], a                                  ; $789c: $e0 $fc
    ld [c], a                                     ; $789e: $e2
    add b                                         ; $789f: $80
    pop hl                                        ; $78a0: $e1
    inc l                                         ; $78a1: $2c
    inc l                                         ; $78a2: $2c
    ld sp, hl                                     ; $78a3: $f9
    db $e4                                        ; $78a4: $e4
    ld a, [hl]                                    ; $78a5: $7e
    xor $6a                                       ; $78a6: $ee $6a
    inc bc                                        ; $78a8: $03
    ld a, [bc]                                    ; $78a9: $0a
    ld l, e                                       ; $78aa: $6b
    pop bc                                        ; $78ab: $c1
    ld [c], a                                     ; $78ac: $e2
    ret nz                                        ; $78ad: $c0

    ld [c], a                                     ; $78ae: $e2
    ld a, [hl]                                    ; $78af: $7e
    ld [c], a                                     ; $78b0: $e2
    ret nz                                        ; $78b1: $c0

    ldh [$82], a                                  ; $78b2: $e0 $82
    db $e4                                        ; $78b4: $e4
    ld b, b                                       ; $78b5: $40
    add sp, -$50                                  ; $78b6: $e8 $b0
    ld c, b                                       ; $78b8: $48
    pop hl                                        ; $78b9: $e1
    inc [hl]                                      ; $78ba: $34
    pop hl                                        ; $78bb: $e1
    ld a, [hl]                                    ; $78bc: $7e
    xor $8f                                       ; $78bd: $ee $8f
    pop hl                                        ; $78bf: $e1
    dec hl                                        ; $78c0: $2b
    ld c, e                                       ; $78c1: $4b
    ret nz                                        ; $78c2: $c0

    push hl                                       ; $78c3: $e5
    ld l, e                                       ; $78c4: $6b
    ld [bc], a                                    ; $78c5: $02
    ld a, d                                       ; $78c6: $7a
    pop hl                                        ; $78c7: $e1
    ld l, h                                       ; $78c8: $6c
    dec de                                        ; $78c9: $1b
    db $e3                                        ; $78ca: $e3
    set 4, e                                      ; $78cb: $cb $e3
    ccf                                           ; $78cd: $3f
    db $e4                                        ; $78ce: $e4
    ld sp, hl                                     ; $78cf: $f9
    push hl                                       ; $78d0: $e5
    ld a, $e1                                     ; $78d1: $3e $e1
    ei                                            ; $78d3: $fb

jr_052_78d4:
    call nz, $f43a                                ; $78d4: $c4 $3a $f4
    jp Jump_000_060a                              ; $78d7: $c3 $0a $06


    pop hl                                        ; $78da: $e1
    dec hl                                        ; $78db: $2b
    dec bc                                        ; $78dc: $0b
    ld l, e                                       ; $78dd: $6b
    cp a                                          ; $78de: $bf
    jp nz, $e27c                                  ; $78df: $c2 $7c $e2

    add b                                         ; $78e2: $80
    ld b, c                                       ; $78e3: $41
    ldh [$c1], a                                  ; $78e4: $e0 $c1
    push hl                                       ; $78e6: $e5
    adc b                                         ; $78e7: $88
    ld [c], a                                     ; $78e8: $e2
    jr c, jr_052_78d4                             ; $78e9: $38 $e9

    ret                                           ; $78eb: $c9


    and $80                                       ; $78ec: $e6 $80
    add sp, $7f                                   ; $78ee: $e8 $7f
    pop hl                                        ; $78f0: $e1
    dec hl                                        ; $78f1: $2b
    ld b, b                                       ; $78f2: $40
    ret nz                                        ; $78f3: $c0

    add sp, -$7f                                  ; $78f4: $e8 $81
    ldh [$c0], a                                  ; $78f6: $e0 $c0
    rst $00                                       ; $78f8: $c7
    ld a, a                                       ; $78f9: $7f
    add $7e                                       ; $78fa: $c6 $7e
    rst $20                                       ; $78fc: $e7
    ld b, b                                       ; $78fd: $40
    db $ed                                        ; $78fe: $ed
    ld a, [bc]                                    ; $78ff: $0a
    ld a, a                                       ; $7900: $7f
    pop hl                                        ; $7901: $e1
    nop                                           ; $7902: $00
    ld b, b                                       ; $7903: $40
    push bc                                       ; $7904: $c5
    add c                                         ; $7905: $81
    db $e4                                        ; $7906: $e4
    add c                                         ; $7907: $81
    add $38                                       ; $7908: $c6 $38
    call nz, $e63a                                ; $790a: $c4 $3a $e6
    ret nz                                        ; $790d: $c0

    ldh a, [$08]                                  ; $790e: $f0 $08
    ld [c], a                                     ; $7910: $e2
    ld bc, $40c2                                  ; $7911: $01 $c2 $40
    ccf                                           ; $7914: $3f
    db $e3                                        ; $7915: $e3
    adc [hl]                                      ; $7916: $8e
    jp $e4fe                                      ; $7917: $c3 $fe $e4


    ld [hl], l                                    ; $791a: $75
    ret                                           ; $791b: $c9


    ld [hl], d                                    ; $791c: $72
    call nz, $abfd                                ; $791d: $c4 $fd $ab
    ld a, [bc]                                    ; $7920: $0a
    ret                                           ; $7921: $c9


    jp nz, Jump_052_6b01                          ; $7922: $c2 $01 $6b

    ld b, b                                       ; $7925: $40
    jp $c2fe                                      ; $7926: $c3 $fe $c2


    jp nz, $bea4                                  ; $7929: $c2 $a4 $be

    rst $00                                       ; $792c: $c7
    ld a, a                                       ; $792d: $7f
    ld [$adbf], a                                 ; $792e: $ea $bf $ad
    ret                                           ; $7931: $c9


    ld [c], a                                     ; $7932: $e2
    nop                                           ; $7933: $00
    pop bc                                        ; $7934: $c1
    ldh [rLCDC], a                                ; $7935: $e0 $40
    jp $e4c0                                      ; $7937: $c3 $c0 $e4


    ld b, $c6                                     ; $793a: $06 $c6
    ld c, l                                       ; $793c: $4d
    db $e3                                        ; $793d: $e3
    ret nz                                        ; $793e: $c0

Call_052_793f:
    jp z, $a37c                                   ; $793f: $ca $7c $a3

    ld [hl], a                                    ; $7942: $77
    and [hl]                                      ; $7943: $a6
    ret nz                                        ; $7944: $c0

    ld c, d                                       ; $7945: $4a
    jp $c900                                      ; $7946: $c3 $00 $c9


    adc e                                         ; $7949: $8b
    and h                                         ; $794a: $a4
    ret nz                                        ; $794b: $c0

    and l                                         ; $794c: $a5
    ld b, b                                       ; $794d: $40
    bit 0, b                                      ; $794e: $cb $40
    xor $2c                                       ; $7950: $ee $2c
    inc l                                         ; $7952: $2c
    nop                                           ; $7953: $00
    nop                                           ; $7954: $00
    call $a642                                    ; $7955: $cd $42 $a6
    ld a, l                                       ; $7958: $7d
    push bc                                       ; $7959: $c5
    db $fc                                        ; $795a: $fc
    jp z, $cd3e                                   ; $795b: $ca $3e $cd

    ld h, [hl]                                    ; $795e: $66
    and b                                         ; $795f: $a0
    rlca                                          ; $7960: $07
    and c                                         ; $7961: $a1
    nop                                           ; $7962: $00
    jp $c100                                      ; $7963: $c3 $00 $c1


    and d                                         ; $7966: $a2
    ld b, [hl]                                    ; $7967: $46
    and h                                         ; $7968: $a4
    ld b, c                                       ; $7969: $41
    and l                                         ; $796a: $a5
    ld b, b                                       ; $796b: $40
    call $a3bd                                    ; $796c: $cd $bd $a3
    rst $38                                       ; $796f: $ff
    ldh [$7f], a                                  ; $7970: $e0 $7f
    and $c7                                       ; $7972: $e6 $c7
    jp nz, Jump_052_7fc0                          ; $7974: $c2 $c0 $7f

    add c                                         ; $7977: $81
    cp c                                          ; $7978: $b9
    ret nz                                        ; $7979: $c0

    nop                                           ; $797a: $00
    push hl                                       ; $797b: $e5
    add l                                         ; $797c: $85
    xor b                                         ; $797d: $a8
    ld [hl], a                                    ; $797e: $77
    db $ec                                        ; $797f: $ec
    ret nz                                        ; $7980: $c0

    db $ed                                        ; $7981: $ed
    inc c                                         ; $7982: $0c
    inc l                                         ; $7983: $2c
    ld bc, $4a4c                                  ; $7984: $01 $4c $4a
    and b                                         ; $7987: $a0
    ld [$7aa2], sp                                ; $7988: $08 $a2 $7a
    ret nz                                        ; $798b: $c0

    nop                                           ; $798c: $00
    push hl                                       ; $798d: $e5
    cp h                                          ; $798e: $bc
    and h                                         ; $798f: $a4
    ld [hl], a                                    ; $7990: $77
    ldh a, [$0b]                                  ; $7991: $f0 $0b
    db $e3                                        ; $7993: $e3
    nop                                           ; $7994: $00
    halt                                          ; $7995: $76
    add [hl]                                      ; $7996: $86
    dec d                                         ; $7997: $15
    rst $20                                       ; $7998: $e7
    dec c                                         ; $7999: $0d
    and $c4                                       ; $799a: $e6 $c4
    xor c                                         ; $799c: $a9
    or [hl]                                       ; $799d: $b6
    ret nc                                        ; $799e: $d0

    cp d                                          ; $799f: $ba
    add d                                         ; $79a0: $82
    ret nz                                        ; $79a1: $c0

    rst $20                                       ; $79a2: $e7
    push de                                       ; $79a3: $d5
    ld l, a                                       ; $79a4: $6f
    nop                                           ; $79a5: $00
    di                                            ; $79a6: $f3
    pop af                                        ; $79a7: $f1
    or [hl]                                       ; $79a8: $b6
    ret                                           ; $79a9: $c9


    cp h                                          ; $79aa: $bc
    ld l, d                                       ; $79ab: $6a
    push de                                       ; $79ac: $d5
    ld [hl], b                                    ; $79ad: $70
    ret z                                         ; $79ae: $c8

    ld l, l                                       ; $79af: $6d
    or [hl]                                       ; $79b0: $b6
    adc $c2                                       ; $79b1: $ce $c2
    pop bc                                        ; $79b3: $c1
    or $66                                        ; $79b4: $f6 $66
    nop                                           ; $79b6: $00
    push de                                       ; $79b7: $d5
    ld l, a                                       ; $79b8: $6f
    di                                            ; $79b9: $f3
    rst $28                                       ; $79ba: $ef
    db $f4                                        ; $79bb: $f4
    adc h                                         ; $79bc: $8c
    ret nz                                        ; $79bd: $c0

    jp hl                                         ; $79be: $e9


    push de                                       ; $79bf: $d5
    ld [hl], d                                    ; $79c0: $72
    di                                            ; $79c1: $f3
    xor $f4                                       ; $79c2: $ee $f4
    adc e                                         ; $79c4: $8b
    ld a, d                                       ; $79c5: $7a
    ld h, b                                       ; $79c6: $60
    nop                                           ; $79c7: $00
    add b                                         ; $79c8: $80
    ret z                                         ; $79c9: $c8

    push de                                       ; $79ca: $d5
    ld [hl], b                                    ; $79cb: $70
    ret z                                         ; $79cc: $c8

    ld l, c                                       ; $79cd: $69
    jp $b445                                      ; $79ce: $c3 $45 $b4


    ld l, d                                       ; $79d1: $6a
    ret nz                                        ; $79d2: $c0

    db $eb                                        ; $79d3: $eb
    push de                                       ; $79d4: $d5
    ld l, l                                       ; $79d5: $6d
    ret z                                         ; $79d6: $c8

    ld l, c                                       ; $79d7: $69
    nop                                           ; $79d8: $00
    jp z, $f444                                   ; $79d9: $ca $44 $f4

    adc e                                         ; $79dc: $8b
    ret nz                                        ; $79dd: $c0

    call z, $d17c                                 ; $79de: $cc $7c $d1
    rlca                                          ; $79e1: $07
    ld h, [hl]                                    ; $79e2: $66
    jp $f442                                      ; $79e3: $c3 $42 $f4


    adc l                                         ; $79e6: $8d
    add b                                         ; $79e7: $80
    and a                                         ; $79e8: $a7
    nop                                           ; $79e9: $00
    ret nz                                        ; $79ea: $c0

    add sp, $7c                                   ; $79eb: $e8 $7c
    call $4641                                    ; $79ed: $cd $41 $46
    ld [hl], l                                    ; $79f0: $75
    ld h, l                                       ; $79f1: $65
    cpl                                           ; $79f2: $2f
    and a                                         ; $79f3: $a7
    cp a                                          ; $79f4: $bf
    xor e                                         ; $79f5: $ab
    ld a, h                                       ; $79f6: $7c
    push de                                       ; $79f7: $d5
    call z, Call_000_0086                         ; $79f8: $cc $86 $00
    ld a, l                                       ; $79fb: $7d
    xor l                                         ; $79fc: $ad
    ld hl, sp+$28                                 ; $79fd: $f8 $28
    rla                                           ; $79ff: $17
    ld h, a                                       ; $7a00: $67
    ld d, c                                       ; $7a01: $51
    ld c, l                                       ; $7a02: $4d
    adc b                                         ; $7a03: $88
    ld c, c                                       ; $7a04: $49
    ld a, a                                       ; $7a05: $7f
    call Call_000_2f78                            ; $7a06: $cd $78 $2f
    ld d, c                                       ; $7a09: $51
    ld c, h                                       ; $7a0a: $4c
    nop                                           ; $7a0b: $00
    adc a                                         ; $7a0c: $8f
    ld c, b                                       ; $7a0d: $48
    ld [hl], e                                    ; $7a0e: $73
    ld [hl], b                                    ; $7a0f: $70
    pop bc                                        ; $7a10: $c1
    db $f4                                        ; $7a11: $f4
    ld a, h                                       ; $7a12: $7c
    jp z, Jump_052_66cf                           ; $7a13: $ca $cf $66

    ld a, h                                       ; $7a16: $7c
    inc h                                         ; $7a17: $24
    ld [hl], e                                    ; $7a18: $73
    ld l, c                                       ; $7a19: $69
    ld b, h                                       ; $7a1a: $44
    jp z, $c000                                   ; $7a1b: $ca $00 $c0

    ret                                           ; $7a1e: $c9


    ld d, c                                       ; $7a1f: $51
    ld c, b                                       ; $7a20: $48
    rst $38                                       ; $7a21: $ff
    ld l, c                                       ; $7a22: $69
    ld [hl], e                                    ; $7a23: $73
    ld l, a                                       ; $7a24: $6f
    dec e                                         ; $7a25: $1d
    adc d                                         ; $7a26: $8a
    ld d, c                                       ; $7a27: $51
    ld d, h                                       ; $7a28: $54
    ld sp, hl                                     ; $7a29: $f9
    dec b                                         ; $7a2a: $05
    ld [hl], e                                    ; $7a2b: $73
    ld l, a                                       ; $7a2c: $6f
    nop                                           ; $7a2d: $00
    add h                                         ; $7a2e: $84
    xor d                                         ; $7a2f: $aa
    ldh [$c7], a                                  ; $7a30: $e0 $c7
    ld d, c                                       ; $7a32: $51
    ld c, b                                       ; $7a33: $48
    jp Jump_052_734b                              ; $7a34: $c3 $4b $73


    ld l, l                                       ; $7a37: $6d
    ccf                                           ; $7a38: $3f
    and c                                         ; $7a39: $a1
    add b                                         ; $7a3a: $80
    call z, Call_052_4c51                         ; $7a3b: $cc $51 $4c
    nop                                           ; $7a3e: $00
    dec c                                         ; $7a3f: $0d
    adc h                                         ; $7a40: $8c
    ld [hl], $09                                  ; $7a41: $36 $09
    add c                                         ; $7a43: $81
    ld l, h                                       ; $7a44: $6c
    ld d, a                                       ; $7a45: $57
    add hl, bc                                    ; $7a46: $09
    adc [hl]                                      ; $7a47: $8e
    ld [$aacf], a                                 ; $7a48: $ea $cf $aa
    ld h, c                                       ; $7a4b: $61
    adc d                                         ; $7a4c: $8a
    ld bc, $0061                                  ; $7a4d: $01 $61 $00
    rst $38                                       ; $7a50: $ff
    call Call_052_5151                            ; $7a51: $cd $51 $51
    ld c, h                                       ; $7a54: $4c
    ld l, b                                       ; $7a55: $68
    ld l, [hl]                                    ; $7a56: $6e
    adc d                                         ; $7a57: $8a

jr_052_7a58:
    ld [bc], a                                    ; $7a58: $02
    ld l, c                                       ; $7a59: $69
    add [hl]                                      ; $7a5a: $86
    ret                                           ; $7a5b: $c9


    ld e, l                                       ; $7a5c: $5d
    xor d                                         ; $7a5d: $aa
    inc a                                         ; $7a5e: $3c
    ld [$6100], sp                                ; $7a5f: $08 $00 $61
    sub e                                         ; $7a62: $93
    add b                                         ; $7a63: $80
    db $ec                                        ; $7a64: $ec
    jp c, Jump_052_614f                           ; $7a65: $da $4f $61

    sub [hl]                                      ; $7a68: $96
    ld b, d                                       ; $7a69: $42
    adc h                                         ; $7a6a: $8c
    ld a, [hl+]                                   ; $7a6b: $2a
    jr nc, jr_052_7a58                            ; $7a6c: $30 $ea

    ld h, l                                       ; $7a6e: $65
    push hl                                       ; $7a6f: $e5
    or c                                          ; $7a70: $b1
    nop                                           ; $7a71: $00
    ld [bc], a                                    ; $7a72: $02
    adc l                                         ; $7a73: $8d
    rst $30                                       ; $7a74: $f7
    or $c1                                        ; $7a75: $f6 $c1
    ld h, l                                       ; $7a77: $65
    ld [hl], $0d                                  ; $7a78: $36 $0d
    rst $38                                       ; $7a7a: $ff
    rst $38                                       ; $7a7b: $ff
    xor b                                         ; $7a7c: $a8
    ld l, c                                       ; $7a7d: $69
    push hl                                       ; $7a7e: $e5
    xor a                                         ; $7a7f: $af
    rst $38                                       ; $7a80: $ff
    rst $38                                       ; $7a81: $ff
    nop                                           ; $7a82: $00
    xor b                                         ; $7a83: $a8
    inc hl                                        ; $7a84: $23
    ld b, h                                       ; $7a85: $44
    add hl, bc                                    ; $7a86: $09
    ret nz                                        ; $7a87: $c0

    ret c                                         ; $7a88: $d8

    ld a, [hl]                                    ; $7a89: $7e
    db $fc                                        ; $7a8a: $fc
    ld [hl], $0f                                  ; $7a8b: $36 $0f
    rst $38                                       ; $7a8d: $ff
    rst $38                                       ; $7a8e: $ff
    add b                                         ; $7a8f: $80
    db $e4                                        ; $7a90: $e4
    ld b, $c8                                     ; $7a91: $06 $c8
    nop                                           ; $7a93: $00
    jp Jump_052_4094                              ; $7a94: $c3 $94 $40


    rst $38                                       ; $7a97: $ff
    push hl                                       ; $7a98: $e5
    or [hl]                                       ; $7a99: $b6
    rst $38                                       ; $7a9a: $ff
    rst $38                                       ; $7a9b: $ff
    ld l, a                                       ; $7a9c: $6f
    ld b, l                                       ; $7a9d: $45
    push hl                                       ; $7a9e: $e5
    cp b                                          ; $7a9f: $b8
    ccf                                           ; $7aa0: $3f
    call c, $0f7f                                 ; $7aa1: $dc $7f $0f
    nop                                           ; $7aa4: $00
    rst $38                                       ; $7aa5: $ff
    rst $38                                       ; $7aa6: $ff
    ld [hl], e                                    ; $7aa7: $73
    call nc, $bfcd                                ; $7aa8: $d4 $cd $bf
    rst $38                                       ; $7aab: $ff
    rst $38                                       ; $7aac: $ff
    rst $38                                       ; $7aad: $ff
    rst $38                                       ; $7aae: $ff
    sub [hl]                                      ; $7aaf: $96
    rst $38                                       ; $7ab0: $ff
    reti                                          ; $7ab1: $d9


    or e                                          ; $7ab2: $b3
    rst $38                                       ; $7ab3: $ff
    rst $38                                       ; $7ab4: $ff
    nop                                           ; $7ab5: $00
    rst $38                                       ; $7ab6: $ff
    rst $38                                       ; $7ab7: $ff
    rst $38                                       ; $7ab8: $ff
    rst $38                                       ; $7ab9: $ff
    rst $38                                       ; $7aba: $ff
    rst $38                                       ; $7abb: $ff
    scf                                           ; $7abc: $37
    db $eb                                        ; $7abd: $eb
    call c, $ffff                                 ; $7abe: $dc $ff $ff
    rst $38                                       ; $7ac1: $ff
    rst $38                                       ; $7ac2: $ff
    rst $38                                       ; $7ac3: $ff
    rst $38                                       ; $7ac4: $ff
    rst $38                                       ; $7ac5: $ff
    nop                                           ; $7ac6: $00
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
    nop                                           ; $7ad7: $00
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
    nop                                           ; $7ae4: $00
    cp a                                          ; $7ae5: $bf
    rst $38                                       ; $7ae6: $ff
    rst $38                                       ; $7ae7: $ff
    nop                                           ; $7ae8: $00
    rst $38                                       ; $7ae9: $ff
    rst $38                                       ; $7aea: $ff
    rst $38                                       ; $7aeb: $ff
    rst $38                                       ; $7aec: $ff
    rst $38                                       ; $7aed: $ff
    rst $38                                       ; $7aee: $ff
    ld e, h                                       ; $7aef: $5c
    ld [hl], e                                    ; $7af0: $73
    nop                                           ; $7af1: $00
    nop                                           ; $7af2: $00
    nop                                           ; $7af3: $00
    rst $38                                       ; $7af4: $ff
    ld c, [hl]                                    ; $7af5: $4e
    ld c, [hl]                                    ; $7af6: $4e
    ld c, [hl]                                    ; $7af7: $4e
    adc h                                         ; $7af8: $8c
    ld e, e                                       ; $7af9: $5b
    ld h, b                                       ; $7afa: $60
    ld sp, $ff3c                                  ; $7afb: $31 $3c $ff
    ld d, h                                       ; $7afe: $54
    ld d, l                                       ; $7aff: $55
    ld d, l                                       ; $7b00: $55
    ld d, h                                       ; $7b01: $54
    inc a                                         ; $7b02: $3c
    ld sp, $6031                                  ; $7b03: $31 $31 $60
    push bc                                       ; $7b06: $c5
    adc h                                         ; $7b07: $8c
    rst $28                                       ; $7b08: $ef
    ldh [rP1], a                                  ; $7b09: $e0 $00
    rst $38                                       ; $7b0b: $ff
    rst $38                                       ; $7b0c: $ff
    rst $20                                       ; $7b0d: $e7
    and $c1                                       ; $7b0e: $e6 $c1
    db $e4                                        ; $7b10: $e4
    ld b, d                                       ; $7b11: $42
    ld l, d                                       ; $7b12: $6a
    rrca                                          ; $7b13: $0f
    ld l, b                                       ; $7b14: $68
    ld l, b                                       ; $7b15: $68
    ld l, d                                       ; $7b16: $6a
    ld b, d                                       ; $7b17: $42
    cp a                                          ; $7b18: $bf
    db $e4                                        ; $7b19: $e4
    jp z, $c0ff                                   ; $7b1a: $ca $ff $c0

    add sp, -$3f                                  ; $7b1d: $e8 $c1
    db $e4                                        ; $7b1f: $e4
    ld l, a                                       ; $7b20: $6f
    ld l, d                                       ; $7b21: $6a
    ld l, h                                       ; $7b22: $6c
    ld l, h                                       ; $7b23: $6c
    ld l, d                                       ; $7b24: $6a
    cp a                                          ; $7b25: $bf
    db $e3                                        ; $7b26: $e3
    ld e, h                                       ; $7b27: $5c
    ld e, l                                       ; $7b28: $5d
    jp z, $eeff                                   ; $7b29: $ca $ff $ee

    add sp, -$19                                  ; $7b2c: $e8 $e7
    adc h                                         ; $7b2e: $8c
    ld e, d                                       ; $7b2f: $5a
    ld e, a                                       ; $7b30: $5f
    add d                                         ; $7b31: $82
    ldh [rBCPD], a                                ; $7b32: $e0 $69
    ld l, c                                       ; $7b34: $69
    ld l, e                                       ; $7b35: $6b
    rst $18                                       ; $7b36: $df
    jr nc, jr_052_7b69                            ; $7b37: $30 $30

    ld l, e                                       ; $7b39: $6b
    ld l, c                                       ; $7b3a: $69
    ld l, c                                       ; $7b3b: $69
    ld a, [hl]                                    ; $7b3c: $7e
    pop hl                                        ; $7b3d: $e1
    ld sp, $5c31                                  ; $7b3e: $31 $31 $5c
    jp z, $e8ff                                   ; $7b41: $ca $ff $e8

    rst $20                                       ; $7b44: $e7
    ld e, e                                       ; $7b45: $5b
    ld e, e                                       ; $7b46: $5b
    ld e, [hl]                                    ; $7b47: $5e
    ret nz                                        ; $7b48: $c0

    db $ed                                        ; $7b49: $ed
    dec d                                         ; $7b4a: $15
    jp z, $feff                                   ; $7b4b: $ca $ff $fe

jr_052_7b4e:
    add sp, -$19                                  ; $7b4e: $e8 $e7
    ld e, d                                       ; $7b50: $5a
    ld e, e                                       ; $7b51: $5b
    ld e, a                                       ; $7b52: $5f
    ld sp, $3931                                  ; $7b53: $31 $31 $39
    jr nc, jr_052_7b6e                            ; $7b56: $30 $16

    ld b, b                                       ; $7b58: $40
    db $e3                                        ; $7b59: $e3
    ld l, c                                       ; $7b5a: $69
    add hl, sp                                    ; $7b5b: $39
    add c                                         ; $7b5c: $81
    pop hl                                        ; $7b5d: $e1
    rla                                           ; $7b5e: $17
    jp z, $80ff                                   ; $7b5f: $ca $ff $80

    jp hl                                         ; $7b62: $e9


    ld a, a                                       ; $7b63: $7f
    ldh [rPCM34], a                               ; $7b64: $e0 $77
    ld c, c                                       ; $7b66: $49
    ld c, b                                       ; $7b67: $48
    ld l, d                                       ; $7b68: $6a

jr_052_7b69:
    ret nz                                        ; $7b69: $c0

    pop bc                                        ; $7b6a: $c1
    ld l, d                                       ; $7b6b: $6a
    ld c, b                                       ; $7b6c: $48
    ld c, c                                       ; $7b6d: $49

jr_052_7b6e:
    add c                                         ; $7b6e: $81
    pop hl                                        ; $7b6f: $e1
    pop af                                        ; $7b70: $f1
    ld d, $ca                                     ; $7b71: $16 $ca
    rst $38                                       ; $7b73: $ff
    ld b, b                                       ; $7b74: $40
    jp hl                                         ; $7b75: $e9


    rst $38                                       ; $7b76: $ff
    ret nz                                        ; $7b77: $c0

    ld sp, $6739                                  ; $7b78: $31 $39 $67
    ld l, b                                       ; $7b7b: $68
    ld c, d                                       ; $7b7c: $4a
    rst $38                                       ; $7b7d: $ff
    ldh [$67], a                                  ; $7b7e: $e0 $67
    add c                                         ; $7b80: $81
    db $e3                                        ; $7b81: $e3
    jr z, jr_052_7b4e                             ; $7b82: $28 $ca

    rst $38                                       ; $7b84: $ff
    add b                                         ; $7b85: $80
    ld [$3f60], a                                 ; $7b86: $ea $60 $3f
    ldh [$99], a                                  ; $7b89: $e0 $99
    ld h, l                                       ; $7b8b: $65
    rst $38                                       ; $7b8c: $ff
    ld [c], a                                     ; $7b8d: $e2
    ld b, c                                       ; $7b8e: $41
    ld [c], a                                     ; $7b8f: $e2

jr_052_7b90:
    dec hl                                        ; $7b90: $2b
    db $10                                        ; $7b91: $10
    jp z, Jump_000_00ff                           ; $7b92: $ca $ff $00

    add sp, $5c                                   ; $7b95: $e8 $5c
    dec hl                                        ; $7b97: $2b
    ld e, l                                       ; $7b98: $5d
    ld sp, $e040                                  ; $7b99: $31 $40 $e0
    ld l, l                                       ; $7b9c: $6d
    nop                                           ; $7b9d: $00
    pop bc                                        ; $7b9e: $c1
    ld l, l                                       ; $7b9f: $6d
    ld b, b                                       ; $7ba0: $40
    ld [c], a                                     ; $7ba1: $e2
    ret nz                                        ; $7ba2: $c0

    rst $38                                       ; $7ba3: $ff
    jr z, jr_052_7b90                             ; $7ba4: $28 $ea

    jp hl                                         ; $7ba6: $e9


    jp nz, $c0e0                                  ; $7ba7: $c2 $e0 $c0

    ret nz                                        ; $7baa: $c0

    ld l, l                                       ; $7bab: $6d
    nop                                           ; $7bac: $00
    jp $c06d                                      ; $7bad: $c3 $6d $c0


    pop bc                                        ; $7bb0: $c1
    ret nz                                        ; $7bb1: $c0

    rst $38                                       ; $7bb2: $ff
    ld e, h                                       ; $7bb3: $5c
    ld [$10e9], a                                 ; $7bb4: $ea $e9 $10
    pop bc                                        ; $7bb7: $c1
    inc a                                         ; $7bb8: $3c
    ld b, d                                       ; $7bb9: $42
    ld l, e                                       ; $7bba: $6b
    nop                                           ; $7bbb: $00
    jp Jump_052_7e6b                              ; $7bbc: $c3 $6b $7e


    and c                                         ; $7bbf: $a1
    call z, $ffc0                                 ; $7bc0: $cc $c0 $ff
    ld [$12e9], a                                 ; $7bc3: $ea $e9 $12
    ld de, $ffc0                                  ; $7bc6: $11 $c0 $ff
    ld a, [$20f9]                                 ; $7bc9: $fa $f9 $20
    ld d, $e1                                     ; $7bcc: $16 $e1
    dec d                                         ; $7bce: $15
    cp a                                          ; $7bcf: $bf
    pop hl                                        ; $7bd0: $e1
    ld b, b                                       ; $7bd1: $40
    and a                                         ; $7bd2: $a7
    ret nz                                        ; $7bd3: $c0

    rst $38                                       ; $7bd4: $ff
    ret nz                                        ; $7bd5: $c0

    db $eb                                        ; $7bd6: $eb
    jr z, jr_052_7bf0                             ; $7bd7: $28 $17

    ld sp, $3137                                  ; $7bd9: $31 $37 $31
    add c                                         ; $7bdc: $81
    ld [hl], d                                    ; $7bdd: $72
    ret nz                                        ; $7bde: $c0

    add e                                         ; $7bdf: $83
    ld [hl], d                                    ; $7be0: $72
    add c                                         ; $7be1: $81
    ret nz                                        ; $7be2: $c0

    rst $38                                       ; $7be3: $ff
    add b                                         ; $7be4: $80
    db $ed                                        ; $7be5: $ed
    cp $7f                                        ; $7be6: $fe $7f
    ldh [$ac], a                                  ; $7be8: $e0 $ac
    xor c                                         ; $7bea: $a9
    add b                                         ; $7beb: $80
    ld [hl], d                                    ; $7bec: $72
    ld d, l                                       ; $7bed: $55
    ld d, h                                       ; $7bee: $54
    ld d, h                                       ; $7bef: $54

jr_052_7bf0:
    rra                                           ; $7bf0: $1f
    ld d, l                                       ; $7bf1: $55
    ld [hl], d                                    ; $7bf2: $72
    add b                                         ; $7bf3: $80
    xor c                                         ; $7bf4: $a9
    xor h                                         ; $7bf5: $ac
    ret nz                                        ; $7bf6: $c0

    rst $38                                       ; $7bf7: $ff
    rst $38                                       ; $7bf8: $ff
    rst $38                                       ; $7bf9: $ff
    rst $38                                       ; $7bfa: $ff
    rst $38                                       ; $7bfb: $ff
    nop                                           ; $7bfc: $00
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
    nop                                           ; $7c0d: $00
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
    nop                                           ; $7c1e: $00
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
    nop                                           ; $7c2f: $00
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
    nop                                           ; $7c40: $00
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
    nop                                           ; $7c51: $00
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
    nop                                           ; $7c62: $00
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
    nop                                           ; $7c73: $00
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
    nop                                           ; $7c84: $00
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
    nop                                           ; $7c95: $00
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
    nop                                           ; $7ca6: $00
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
    nop                                           ; $7cb7: $00
    rst $38                                       ; $7cb8: $ff
    rst $30                                       ; $7cb9: $f7
    nop                                           ; $7cba: $00
    nop                                           ; $7cbb: $00
    nop                                           ; $7cbc: $00
    and l                                         ; $7cbd: $a5
    nop                                           ; $7cbe: $00
    rst $38                                       ; $7cbf: $ff
    push hl                                       ; $7cc0: $e5
    ld [hl-], a                                   ; $7cc1: $32
    or $e6                                        ; $7cc2: $f6 $e6
    rst $30                                       ; $7cc4: $f7
    rst $20                                       ; $7cc5: $e7
    dec [hl]                                      ; $7cc6: $35
    db $ec                                        ; $7cc7: $ec
    xor $37                                       ; $7cc8: $ee $37
    db $ec                                        ; $7cca: $ec
    jp c, $c7f0                                   ; $7ccb: $da $f0 $c7

    add sp, $33                                   ; $7cce: $e8 $33
    ld sp, $f2e0                                  ; $7cd0: $31 $e0 $f2
    ld [hl], $30                                  ; $7cd3: $36 $30
    scf                                           ; $7cd5: $37
    cp a                                          ; $7cd6: $bf
    ld h, $20                                     ; $7cd7: $26 $20
    daa                                           ; $7cd9: $27
    db $10                                        ; $7cda: $10
    ld d, $17                                     ; $7cdb: $16 $17
    jp nz, Jump_000_34f6                          ; $7cdd: $c2 $f6 $34

    rst $38                                       ; $7ce0: $ff
    ld [hl], $32                                  ; $7ce1: $36 $32
    jr nc, jr_052_7d1c                            ; $7ce3: $30 $37

    ld sp, $3133                                  ; $7ce5: $31 $33 $31
    inc sp                                        ; $7ce8: $33
    nop                                           ; $7ce9: $00
    and b                                         ; $7cea: $a0
    ei                                            ; $7ceb: $fb
    rst $38                                       ; $7cec: $ff
    rst $28                                       ; $7ced: $ef
    nop                                           ; $7cee: $00
    nop                                           ; $7cef: $00
    nop                                           ; $7cf0: $00
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

jr_052_7d1c:
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

Jump_052_7e6b:
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

Jump_052_7ee0:
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

Jump_052_7f7c:
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

Jump_052_7f9f:
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

Jump_052_7fc0:
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
