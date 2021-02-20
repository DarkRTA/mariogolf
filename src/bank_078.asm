; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $078", ROMX[$4000], BANK[$78]

    inc c                                         ; $4000: $0c
    ld b, b                                       ; $4001: $40
    ld [hl], a                                    ; $4002: $77
    ld c, c                                       ; $4003: $49

    db $df, $53, $5a, $5e

    db $dd                                        ; $4008: $dd
    ld h, [hl]                                    ; $4009: $66
    ld h, [hl]                                    ; $400a: $66
    ld [hl], c                                    ; $400b: $71
    inc d                                         ; $400c: $14
    ld b, b                                       ; $400d: $40
    ld d, h                                       ; $400e: $54
    ld b, b                                       ; $400f: $40
    pop bc                                        ; $4010: $c1
    ld b, a                                       ; $4011: $47
    ld d, c                                       ; $4012: $51
    ld c, b                                       ; $4013: $48
    rst $38                                       ; $4014: $ff
    ld a, a                                       ; $4015: $7f
    ld l, c                                       ; $4016: $69
    dec [hl]                                      ; $4017: $35
    call nz, RST_20                               ; $4018: $c4 $20 $00
    nop                                           ; $401b: $00
    rra                                           ; $401c: $1f
    nop                                           ; $401d: $00
    inc c                                         ; $401e: $0c
    nop                                           ; $401f: $00
    sbc c                                         ; $4020: $99
    dec d                                         ; $4021: $15
    nop                                           ; $4022: $00
    nop                                           ; $4023: $00
    rra                                           ; $4024: $1f
    nop                                           ; $4025: $00
    rst $38                                       ; $4026: $ff
    ld b, [hl]                                    ; $4027: $46
    sbc c                                         ; $4028: $99
    dec d                                         ; $4029: $15
    nop                                           ; $402a: $00
    nop                                           ; $402b: $00
    rst $38                                       ; $402c: $ff
    ld b, [hl]                                    ; $402d: $46
    sbc c                                         ; $402e: $99
    dec d                                         ; $402f: $15
    sbc a                                         ; $4030: $9f
    ld sp, $0000                                  ; $4031: $31 $00 $00
    rst $38                                       ; $4034: $ff
    ld b, [hl]                                    ; $4035: $46
    sbc a                                         ; $4036: $9f
    ld sp, $7fff                                  ; $4037: $31 $ff $7f
    nop                                           ; $403a: $00
    nop                                           ; $403b: $00
    rst $38                                       ; $403c: $ff
    ld a, a                                       ; $403d: $7f
    ld l, c                                       ; $403e: $69
    dec [hl]                                      ; $403f: $35
    rst $38                                       ; $4040: $ff
    ld b, [hl]                                    ; $4041: $46
    nop                                           ; $4042: $00
    nop                                           ; $4043: $00
    rst $38                                       ; $4044: $ff
    ld a, a                                       ; $4045: $7f
    ld l, c                                       ; $4046: $69
    dec [hl]                                      ; $4047: $35
    sbc c                                         ; $4048: $99
    dec d                                         ; $4049: $15
    nop                                           ; $404a: $00
    nop                                           ; $404b: $00
    ld l, c                                       ; $404c: $69
    dec [hl]                                      ; $404d: $35
    call nz, $ff20                                ; $404e: $c4 $20 $ff
    ld b, [hl]                                    ; $4051: $46
    sbc c                                         ; $4052: $99
    dec d                                         ; $4053: $15
    push af                                       ; $4054: $f5
    nop                                           ; $4055: $00
    rst $38                                       ; $4056: $ff
    db $ec                                        ; $4057: $ec
    rst $38                                       ; $4058: $ff
    rst $38                                       ; $4059: $ff
    di                                            ; $405a: $f3
    cp $ff                                        ; $405b: $fe $ff
    cp $fe                                        ; $405d: $fe $fe
    ei                                            ; $405f: $fb
    db $fd                                        ; $4060: $fd
    rst $38                                       ; $4061: $ff
    cp $e1                                        ; $4062: $fe $e1
    db $e3                                        ; $4064: $e3
    rst $28                                       ; $4065: $ef
    sbc a                                         ; $4066: $9f
    add b                                         ; $4067: $80
    ld a, a                                       ; $4068: $7f
    rst $38                                       ; $4069: $ff
    ld c, a                                       ; $406a: $4f
    ldh a, [$d9]                                  ; $406b: $f0 $d9
    ldh [$90], a                                  ; $406d: $e0 $90
    ldh [$95], a                                  ; $406f: $e0 $95
    ldh [rIE], a                                  ; $4071: $e0 $ff
    sbc d                                         ; $4073: $9a
    ldh [rIE], a                                  ; $4074: $e0 $ff
    ld hl, sp-$01                                 ; $4076: $f8 $ff
    rst $38                                       ; $4078: $ff
    rrca                                          ; $4079: $0f
    rst $38                                       ; $407a: $ff
    rst $38                                       ; $407b: $ff
    add e                                         ; $407c: $83
    ld a, a                                       ; $407d: $7f
    ld h, c                                       ; $407e: $61
    rra                                           ; $407f: $1f
    jp hl                                         ; $4080: $e9


    rla                                           ; $4081: $17
    ld d, b                                       ; $4082: $50
    cpl                                           ; $4083: $2f
    ei                                            ; $4084: $fb
    pop hl                                        ; $4085: $e1
    rra                                           ; $4086: $1f
    ret nz                                        ; $4087: $c0

    ldh [$1f], a                                  ; $4088: $e0 $1f
    rst $38                                       ; $408a: $ff
    rst $20                                       ; $408b: $e7
    rst $38                                       ; $408c: $ff
    ld sp, hl                                     ; $408d: $f9
    rst $10                                       ; $408e: $d7
    rst $38                                       ; $408f: $ff
    cp $7f                                        ; $4090: $fe $7f
    or l                                          ; $4092: $b5
    ldh [$5f], a                                  ; $4093: $e0 $5f
    or c                                          ; $4095: $b1
    jp hl                                         ; $4096: $e9


    ld a, a                                       ; $4097: $7f
    rst $38                                       ; $4098: $ff
    sub a                                         ; $4099: $97
    cp a                                          ; $409a: $bf
    rst $38                                       ; $409b: $ff
    rst $18                                       ; $409c: $df
    cp h                                          ; $409d: $bc
    ld [c], a                                     ; $409e: $e2
    db $fd                                        ; $409f: $fd
    or b                                          ; $40a0: $b0
    pop hl                                        ; $40a1: $e1
    sub [hl]                                      ; $40a2: $96
    db $e3                                        ; $40a3: $e3
    sbc a                                         ; $40a4: $9f
    rst $38                                       ; $40a5: $ff
    ldh [$ca], a                                  ; $40a6: $e0 $ca
    push af                                       ; $40a8: $f5
    pop hl                                        ; $40a9: $e1
    cp $f4                                        ; $40aa: $fe $f4
    rst $38                                       ; $40ac: $ff
    ld a, [$e0fc]                                 ; $40ad: $fa $fc $e0
    ldh [$df], a                                  ; $40b0: $e0 $df
    pop hl                                        ; $40b2: $e1
    jp nc, $a12f                                  ; $40b3: $d2 $2f $a1

    ld e, a                                       ; $40b6: $5f
    ld b, d                                       ; $40b7: $42
    cp a                                          ; $40b8: $bf
    rst $38                                       ; $40b9: $ff
    dec b                                         ; $40ba: $05
    rst $38                                       ; $40bb: $ff
    ld a, [bc]                                    ; $40bc: $0a
    rst $38                                       ; $40bd: $ff
    ld d, l                                       ; $40be: $55
    rst $38                                       ; $40bf: $ff
    rst $28                                       ; $40c0: $ef
    rst $38                                       ; $40c1: $ff
    pop hl                                        ; $40c2: $e1
    push de                                       ; $40c3: $d5
    cp h                                          ; $40c4: $bc
    db $e4                                        ; $40c5: $e4
    cp b                                          ; $40c6: $b8
    pop hl                                        ; $40c7: $e1
    or b                                          ; $40c8: $b0
    pop hl                                        ; $40c9: $e1
    ld h, d                                       ; $40ca: $62
    ldh [$ef], a                                  ; $40cb: $e0 $ef
    rst $38                                       ; $40cd: $ff
    rst $30                                       ; $40ce: $f7
    rst $20                                       ; $40cf: $e7
    rst $30                                       ; $40d0: $f7
    rst $38                                       ; $40d1: $ff
    ei                                            ; $40d2: $fb
    cp e                                          ; $40d3: $bb
    db $eb                                        ; $40d4: $eb
    ld c, e                                       ; $40d5: $4b
    and $83                                       ; $40d6: $e6 $83
    inc bc                                        ; $40d8: $03
    rst $08                                       ; $40d9: $cf
    rst $28                                       ; $40da: $ef
    rst $38                                       ; $40db: $ff
    di                                            ; $40dc: $f3
    rst $38                                       ; $40dd: $ff
    db $fc                                        ; $40de: $fc
    dec sp                                        ; $40df: $3b
    ld [c], a                                     ; $40e0: $e2
    ei                                            ; $40e1: $fb
    db $fc                                        ; $40e2: $fc
    jp hl                                         ; $40e3: $e9


    ei                                            ; $40e4: $fb
    rst $30                                       ; $40e5: $f7
    jp c, $e431                                   ; $40e6: $da $31 $e4

    ccf                                           ; $40e9: $3f
    rst $38                                       ; $40ea: $ff
    rst $08                                       ; $40eb: $cf
    rst $38                                       ; $40ec: $ff
    cp a                                          ; $40ed: $bf
    sbc $bf                                       ; $40ee: $de $bf
    ld [c], a                                     ; $40f0: $e2
    db $fc                                        ; $40f1: $fc
    nop                                           ; $40f2: $00
    rst $38                                       ; $40f3: $ff
    add b                                         ; $40f4: $80
    cp $e1                                        ; $40f5: $fe $e1
    db $fd                                        ; $40f7: $fd
    ret nz                                        ; $40f8: $c0

    ei                                            ; $40f9: $fb
    cp $c0                                        ; $40fa: $fe $c0
    db $fc                                        ; $40fc: $fc
    pop hl                                        ; $40fd: $e1
    ccf                                           ; $40fe: $3f
    ccf                                           ; $40ff: $3f
    rst $08                                       ; $4100: $cf
    rrca                                          ; $4101: $0f
    di                                            ; $4102: $f3
    rst $38                                       ; $4103: $ff
    inc bc                                        ; $4104: $03
    db $fd                                        ; $4105: $fd
    ld bc, $00fe                                  ; $4106: $01 $fe $00
    rst $38                                       ; $4109: $ff
    nop                                           ; $410a: $00
    ld e, a                                       ; $410b: $5f
    ei                                            ; $410c: $fb
    nop                                           ; $410d: $00
    cp a                                          ; $410e: $bf
    nop                                           ; $410f: $00
    and $7f                                       ; $4110: $e6 $7f
    ld a, a                                       ; $4112: $7f
    cp a                                          ; $4113: $bf
    ccf                                           ; $4114: $3f
    rst $18                                       ; $4115: $df
    rst $30                                       ; $4116: $f7
    rra                                           ; $4117: $1f
    rst $28                                       ; $4118: $ef
    rrca                                          ; $4119: $0f
    ld [bc], a                                    ; $411a: $02
    db $e3                                        ; $411b: $e3
    cp $fc                                        ; $411c: $fe $fc
    db $fc                                        ; $411e: $fc
    ld hl, sp-$01                                 ; $411f: $f8 $ff
    db $fc                                        ; $4121: $fc
    ld hl, sp-$08                                 ; $4122: $f8 $f8
    ldh a, [$f0]                                  ; $4124: $f0 $f0
    ldh [rIE], a                                  ; $4126: $e0 $ff
    cp a                                          ; $4128: $bf
    db $eb                                        ; $4129: $eb
    cp a                                          ; $412a: $bf
    ccf                                           ; $412b: $3f
    rst $38                                       ; $412c: $ff
    ldh [$1f], a                                  ; $412d: $e0 $1f
    rst $38                                       ; $412f: $ff
    ldh [rIF], a                                  ; $4130: $e0 $0f
    rrca                                          ; $4132: $0f
    rlca                                          ; $4133: $07
    ld d, e                                       ; $4134: $53
    rlca                                          ; $4135: $07
    inc bc                                        ; $4136: $03
    ret c                                         ; $4137: $d8

    call $e1a8                                    ; $4138: $cd $a8 $e1
    db $fc                                        ; $413b: $fc
    cp $e1                                        ; $413c: $fe $e1
    add b                                         ; $413e: $80
    cp $e0                                        ; $413f: $fe $e0
    rst $28                                       ; $4141: $ef
    nop                                           ; $4142: $00
    ld hl, sp+$00                                 ; $4143: $f8 $00
    ld d, a                                       ; $4145: $57
    xor h                                         ; $4146: $ac
    ldh [rHDMA5], a                               ; $4147: $e0 $55
    nop                                           ; $4149: $00
    xor a                                         ; $414a: $af
    ei                                            ; $414b: $fb
    nop                                           ; $414c: $00
    dec d                                         ; $414d: $15
    db $fc                                        ; $414e: $fc
    ldh [rTIMA], a                                ; $414f: $e0 $05
    nop                                           ; $4151: $00
    dec hl                                        ; $4152: $2b
    nop                                           ; $4153: $00
    rst $30                                       ; $4154: $f7
    dec sp                                        ; $4155: $3b
    rlca                                          ; $4156: $07
    ei                                            ; $4157: $fb
    sub d                                         ; $4158: $92
    db $e4                                        ; $4159: $e4
    rst $38                                       ; $415a: $ff
    nop                                           ; $415b: $00
    ld a, a                                       ; $415c: $7f
    ld a, [$90e1]                                 ; $415d: $fa $e1 $90

jr_078_4160:
    and $fb                                       ; $4160: $e6 $fb
    rst $38                                       ; $4162: $ff
    ccf                                           ; $4163: $3f
    adc [hl]                                      ; $4164: $8e
    pop hl                                        ; $4165: $e1
    ldh a, [$e0]                                  ; $4166: $f0 $e0
    ldh [$c0], a                                  ; $4168: $e0 $c0
    ldh [$f5], a                                  ; $416a: $e0 $f5
    ret nz                                        ; $416c: $c0

    rst $38                                       ; $416d: $ff
    ldh [$80], a                                  ; $416e: $e0 $80
    rst $38                                       ; $4170: $ff
    ldh [rP1], a                                  ; $4171: $e0 $00
    add b                                         ; $4173: $80
    nop                                           ; $4174: $00
    inc bc                                        ; $4175: $03
    dec a                                         ; $4176: $3d
    ld bc, $ce60                                  ; $4177: $01 $60 $ce
    ld a, a                                       ; $417a: $7f
    ccf                                           ; $417b: $3f
    rra                                           ; $417c: $1f
    rlca                                          ; $417d: $07
    ld [$60e6], a                                 ; $417e: $ea $e6 $60
    push bc                                       ; $4181: $c5
    db $fd                                        ; $4182: $fd
    rlca                                          ; $4183: $07
    ld b, b                                       ; $4184: $40
    push bc                                       ; $4185: $c5
    db $fc                                        ; $4186: $fc
    rst $38                                       ; $4187: $ff
    ldh a, [rIE]                                  ; $4188: $f0 $ff
    ret nz                                        ; $418a: $c0

    rst $38                                       ; $418b: $ff
    ld a, h                                       ; $418c: $7c
    add [hl]                                      ; $418d: $86
    ldh [rNR52], a                                ; $418e: $e0 $26
    jp Jump_000_00f8                              ; $4190: $c3 $f8 $00


    ldh a, [rP1]                                  ; $4193: $f0 $00
    ldh [$b8], a                                  ; $4195: $e0 $b8
    ldh [$be], a                                  ; $4197: $e0 $be
    jr jr_078_4160                                ; $4199: $18 $c5

    dec b                                         ; $419b: $05
    nop                                           ; $419c: $00
    ld a, [bc]                                    ; $419d: $0a
    nop                                           ; $419e: $00
    ld bc, $e6fc                                  ; $419f: $01 $fc $e6
    ld [bc], a                                    ; $41a2: $02
    ld b, h                                       ; $41a3: $44
    inc c                                         ; $41a4: $0c

jr_078_41a5:
    ldh [$08], a                                  ; $41a5: $e0 $08
    pop hl                                        ; $41a7: $e1
    rst $38                                       ; $41a8: $ff
    ld e, b                                       ; $41a9: $58
    ldh [$fc], a                                  ; $41aa: $e0 $fc
    pop hl                                        ; $41ac: $e1
    nop                                           ; $41ad: $00
    ldh [rIF], a                                  ; $41ae: $e0 $0f
    inc c                                         ; $41b0: $0c
    ldh [rIE], a                                  ; $41b1: $e0 $ff
    rlca                                          ; $41b3: $07
    rst $30                                       ; $41b4: $f7
    rlca                                          ; $41b5: $07
    rst $38                                       ; $41b6: $ff
    rlca                                          ; $41b7: $07
    rst $38                                       ; $41b8: $ff
    inc bc                                        ; $41b9: $03
    ei                                            ; $41ba: $fb
    inc de                                        ; $41bb: $13
    inc bc                                        ; $41bc: $03
    rst $38                                       ; $41bd: $ff
    jr nz, jr_078_41a5                            ; $41be: $20 $e5

    ld d, b                                       ; $41c0: $50
    pop bc                                        ; $41c1: $c1
    cp $ff                                        ; $41c2: $fe $ff
    pop hl                                        ; $41c4: $e1
    or [hl]                                       ; $41c5: $b6
    rst $20                                       ; $41c6: $e7
    add $a9                                       ; $41c7: $c6 $a9
    rst $38                                       ; $41c9: $ff
    ld bc, $0701                                  ; $41ca: $01 $01 $07
    rlca                                          ; $41cd: $07
    ld c, $0f                                     ; $41ce: $0e $0f
    dec sp                                        ; $41d0: $3b
    inc a                                         ; $41d1: $3c
    rst $38                                       ; $41d2: $ff
    ld [hl], a                                    ; $41d3: $77
    ld a, b                                       ; $41d4: $78
    nop                                           ; $41d5: $00
    nop                                           ; $41d6: $00
    rlca                                          ; $41d7: $07
    rlca                                          ; $41d8: $07
    dec sp                                        ; $41d9: $3b
    inc a                                         ; $41da: $3c
    sbc $23                                       ; $41db: $de $23
    pop bc                                        ; $41dd: $c1
    rst $28                                       ; $41de: $ef
    rra                                           ; $41df: $1f
    db $fd                                        ; $41e0: $fd
    inc bc                                        ; $41e1: $03
    inc e                                         ; $41e2: $1c
    ldh [$7f], a                                  ; $41e3: $e0 $7f
    cp a                                          ; $41e5: $bf
    db $fc                                        ; $41e6: $fc
    ld [hl], d                                    ; $41e7: $72
    ldh [rNR14], a                                ; $41e8: $e0 $14
    ldh [$80], a                                  ; $41ea: $e0 $80
    cp a                                          ; $41ec: $bf
    ret nz                                        ; $41ed: $c0

    rst $18                                       ; $41ee: $df
    ldh [$1f], a                                  ; $41ef: $e0 $1f
    ld sp, hl                                     ; $41f1: $f9
    ldh [$a0], a                                  ; $41f2: $e0 $a0
    and b                                         ; $41f4: $a0
    inc b                                         ; $41f5: $04
    ld [c], a                                     ; $41f6: $e2
    cp $01                                        ; $41f7: $fe $01
    rst $38                                       ; $41f9: $ff
    ld bc, $fbfd                                  ; $41fa: $01 $fd $fb
    inc bc                                        ; $41fd: $03
    db $fc                                        ; $41fe: $fc
    ret nz                                        ; $41ff: $c0

    ret nz                                        ; $4200: $c0

    rst $28                                       ; $4201: $ef
    rra                                           ; $4202: $1f
    cp a                                          ; $4203: $bf
    ld a, a                                       ; $4204: $7f
    ld a, e                                       ; $4205: $7b
    rst $38                                       ; $4206: $ff
    db $fc                                        ; $4207: $fc
    rst $28                                       ; $4208: $ef
    ldh a, [$bf]                                  ; $4209: $f0 $bf
    ret nz                                        ; $420b: $c0

    ld a, a                                       ; $420c: $7f
    add b                                         ; $420d: $80
    rst $38                                       ; $420e: $ff
    rst $38                                       ; $420f: $ff
    nop                                           ; $4210: $00
    add b                                         ; $4211: $80
    add b                                         ; $4212: $80
    ldh a, [$f0]                                  ; $4213: $f0 $f0
    cp $fe                                        ; $4215: $fe $fe
    rst $18                                       ; $4217: $df
    rra                                           ; $4218: $1f
    ccf                                           ; $4219: $3f
    rst $30                                       ; $421a: $f7
    rrca                                          ; $421b: $0f
    db $fd                                        ; $421c: $fd
    inc bc                                        ; $421d: $03
    call c, $c4e0                                 ; $421e: $dc $e0 $c4
    ret nz                                        ; $4221: $c0

    ret nz                                        ; $4222: $c0

    pop bc                                        ; $4223: $c1
    rst $38                                       ; $4224: $ff
    rst $38                                       ; $4225: $ff
    add b                                         ; $4226: $80
    push af                                       ; $4227: $f5
    ldh [$9f], a                                  ; $4228: $e0 $9f
    ld hl, sp-$39                                 ; $422a: $f8 $c7
    cp $07                                        ; $422c: $fe $07
    ld b, e                                       ; $422e: $43
    rst $38                                       ; $422f: $ff
    rst $38                                       ; $4230: $ff
    ret z                                         ; $4231: $c8

    pop hl                                        ; $4232: $e1
    call nz, $bce0                                ; $4233: $c4 $e0 $bc
    ld [c], a                                     ; $4236: $e2
    cp b                                          ; $4237: $b8
    pop hl                                        ; $4238: $e1
    ld h, h                                       ; $4239: $64
    ret nz                                        ; $423a: $c0

    db $fc                                        ; $423b: $fc
    cp $e9                                        ; $423c: $fe $e9
    ld [hl], h                                    ; $423e: $74
    pop hl                                        ; $423f: $e1
    ld [bc], a                                    ; $4240: $02
    inc bc                                        ; $4241: $03
    dec b                                         ; $4242: $05
    ld b, $0b                                     ; $4243: $06 $0b
    inc c                                         ; $4245: $0c
    ccf                                           ; $4246: $3f
    rra                                           ; $4247: $1f
    jr jr_078_4289                                ; $4248: $18 $3f

    jr c, jr_078_42cb                             ; $424a: $38 $7f

    ld a, b                                       ; $424c: $78
    or c                                          ; $424d: $b1
    ret nz                                        ; $424e: $c0

    or e                                          ; $424f: $b3
    call nz, $e876                                ; $4250: $c4 $76 $e8
    pop hl                                        ; $4253: $e1
    ld [bc], a                                    ; $4254: $02
    inc bc                                        ; $4255: $03
    db $10                                        ; $4256: $10
    and e                                         ; $4257: $a3
    inc a                                         ; $4258: $3c
    inc a                                         ; $4259: $3c
    rst $00                                       ; $425a: $c7
    ld e, c                                       ; $425b: $59
    and b                                         ; $425c: $a0
    reti                                          ; $425d: $d9


    ccf                                           ; $425e: $3f
    ld l, l                                       ; $425f: $6d
    and b                                         ; $4260: $a0
    nop                                           ; $4261: $00
    and a                                         ; $4262: $a7
    add b                                         ; $4263: $80
    add b                                         ; $4264: $80
    adc c                                         ; $4265: $89
    pop bc                                        ; $4266: $c1
    nop                                           ; $4267: $00
    nop                                           ; $4268: $00
    rra                                           ; $4269: $1f
    rrca                                          ; $426a: $0f
    rrca                                          ; $426b: $0f
    inc a                                         ; $426c: $3c
    ccf                                           ; $426d: $3f
    ld a, a                                       ; $426e: $7f
    rst $38                                       ; $426f: $ff
    ldh [$f6], a                                  ; $4270: $e0 $f6
    add e                                         ; $4272: $83
    add sp, -$1f                                  ; $4273: $e8 $e1
    rst $38                                       ; $4275: $ff
    ld h, b                                       ; $4276: $60
    ldh [rNR10], a                                ; $4277: $e0 $10
    ldh a, [$88]                                  ; $4279: $f0 $88
    ld hl, sp-$3c                                 ; $427b: $f8 $c4
    db $fc                                        ; $427d: $fc
    rst $38                                       ; $427e: $ff
    call nz, $e2fc                                ; $427f: $c4 $fc $e2
    cp $c1                                        ; $4282: $fe $c1
    ld a, a                                       ; $4284: $7f
    add c                                         ; $4285: $81
    ld a, a                                       ; $4286: $7f
    rst $38                                       ; $4287: $ff
    pop hl                                        ; $4288: $e1

jr_078_4289:
    rra                                           ; $4289: $1f
    ret nz                                        ; $428a: $c0

    ccf                                           ; $428b: $3f
    ldh [$1f], a                                  ; $428c: $e0 $1f
    ret nc                                        ; $428e: $d0

    cpl                                           ; $428f: $2f
    sub h                                         ; $4290: $94
    db $fc                                        ; $4291: $fc
    pop hl                                        ; $4292: $e1
    or d                                          ; $4293: $b2
    and b                                         ; $4294: $a0
    ldh [$8e], a                                  ; $4295: $e0 $8e
    ret nz                                        ; $4297: $c0

    ld hl, sp-$75                                 ; $4298: $f8 $8b
    and b                                         ; $429a: $a0
    ld [hl], e                                    ; $429b: $73
    and a                                         ; $429c: $a7
    ld a, a                                       ; $429d: $7f

jr_078_429e:
    jr nc, jr_078_429e                            ; $429e: $30 $fe

    rst $20                                       ; $42a0: $e7
    ld h, d                                       ; $42a1: $62
    db $e3                                        ; $42a2: $e3
    ld a, [bc]                                    ; $42a3: $0a
    and e                                         ; $42a4: $a3
    dec bc                                        ; $42a5: $0b
    and c                                         ; $42a6: $a1
    ld a, a                                       ; $42a7: $7f
    ld a, b                                       ; $42a8: $78
    adc $80                                       ; $42a9: $ce $80
    cp $e0                                        ; $42ab: $fe $e0
    or e                                          ; $42ad: $b3
    ei                                            ; $42ae: $fb
    db $fc                                        ; $42af: $fc
    ld e, c                                       ; $42b0: $59
    and b                                         ; $42b1: $a0
    db $fc                                        ; $42b2: $fc
    ldh [rDIV], a                                 ; $42b3: $e0 $04
    rlca                                          ; $42b5: $07
    cp $e1                                        ; $42b6: $fe $e1
    ld [$0ff9], sp                                ; $42b8: $08 $f9 $0f
    cp $e5                                        ; $42bb: $fe $e5
    adc b                                         ; $42bd: $88
    db $e3                                        ; $42be: $e3
    ld sp, hl                                     ; $42bf: $f9
    rst $38                                       ; $42c0: $ff
    or $f9                                        ; $42c1: $f6 $f9
    ld sp, hl                                     ; $42c3: $f9
    ld d, l                                       ; $42c4: $55
    ldh a, [$fe]                                  ; $42c5: $f0 $fe
    pop hl                                        ; $42c7: $e1
    ldh [rIE], a                                  ; $42c8: $e0 $ff
    ld [c], a                                     ; $42ca: $e2

jr_078_42cb:
    ldh a, [rIE]                                  ; $42cb: $f0 $ff
    and $01                                       ; $42cd: $e6 $01
    rst $38                                       ; $42cf: $ff
    db $ec                                        ; $42d0: $ec
    dec a                                         ; $42d1: $3d
    rst $38                                       ; $42d2: $ff
    sub e                                         ; $42d3: $93
    add b                                         ; $42d4: $80
    db $db                                        ; $42d5: $db
    rst $20                                       ; $42d6: $e7
    rst $20                                       ; $42d7: $e7
    jp $e1fe                                      ; $42d8: $c3 $fe $e1


    ld hl, sp-$20                                 ; $42db: $f8 $e0
    rst $38                                       ; $42dd: $ff
    rst $38                                       ; $42de: $ff
    ld [c], a                                     ; $42df: $e2
    cp $e1                                        ; $42e0: $fe $e1
    rst $38                                       ; $42e2: $ff
    pop hl                                        ; $42e3: $e1
    rst $38                                       ; $42e4: $ff
    pop af                                        ; $42e5: $f1
    cp $fe                                        ; $42e6: $fe $fe
    and $e8                                       ; $42e8: $e6 $e8
    rla                                           ; $42ea: $17
    ret nz                                        ; $42eb: $c0

    ccf                                           ; $42ec: $3f
    and b                                         ; $42ed: $a0
    ld e, a                                       ; $42ee: $5f
    ld b, b                                       ; $42ef: $40
    ld [$a027], sp                                ; $42f0: $08 $27 $a0
    cp $e3                                        ; $42f3: $fe $e3
    ld h, l                                       ; $42f5: $65
    rst $20                                       ; $42f6: $e7
    ld a, [hl]                                    ; $42f7: $7e
    cp $e2                                        ; $42f8: $fe $e2
    ld d, l                                       ; $42fa: $55
    rst $20                                       ; $42fb: $e7
    rla                                           ; $42fc: $17
    ret z                                         ; $42fd: $c8

    ei                                            ; $42fe: $fb
    ld l, c                                       ; $42ff: $69
    ld h, l                                       ; $4300: $65
    db $fc                                        ; $4301: $fc
    ld c, c                                       ; $4302: $49
    pop hl                                        ; $4303: $e1
    ld a, a                                       ; $4304: $7f
    cp $e0                                        ; $4305: $fe $e0
    call nc, $bfe1                                ; $4307: $d4 $e1 $bf
    rst $38                                       ; $430a: $ff
    ld d, [hl]                                    ; $430b: $56
    push hl                                       ; $430c: $e5
    and $48                                       ; $430d: $e6 $48
    db $e3                                        ; $430f: $e3
    ld [bc], a                                    ; $4310: $02
    inc bc                                        ; $4311: $03
    ld e, b                                       ; $4312: $58
    ldh [$ce], a                                  ; $4313: $e0 $ce
    add [hl]                                      ; $4315: $86
    ld a, a                                       ; $4316: $7f
    ld a, a                                       ; $4317: $7f
    ccf                                           ; $4318: $3f
    db $fd                                        ; $4319: $fd
    ccf                                           ; $431a: $3f
    ld d, [hl]                                    ; $431b: $56
    rst $20                                       ; $431c: $e7
    db $e3                                        ; $431d: $e3
    pop hl                                        ; $431e: $e1
    rst $20                                       ; $431f: $e7
    ld [c], a                                     ; $4320: $e2
    add $c4                                       ; $4321: $c6 $c4
    db $fd                                        ; $4323: $fd
    ld bc, $a640                                  ; $4324: $01 $40 $a6
    ld hl, sp-$10                                 ; $4327: $f8 $f0
    ld e, $0c                                     ; $4329: $1e $0c
    rrca                                          ; $432b: $0f
    ld [bc], a                                    ; $432c: $02
    cp b                                          ; $432d: $b8
    call nc, $bde9                                ; $432e: $d4 $e9 $bd
    add c                                         ; $4331: $81
    ld d, [hl]                                    ; $4332: $56
    pop hl                                        ; $4333: $e1
    ld a, [c]                                     ; $4334: $f2
    cp $e2                                        ; $4335: $fe $e2
    cp $e0                                        ; $4337: $fe $e0
    db $e4                                        ; $4339: $e4
    or $a0                                        ; $433a: $f6 $a0
    ret nz                                        ; $433c: $c0

    adc b                                         ; $433d: $88
    ld hl, sp+$58                                 ; $433e: $f8 $58
    push hl                                       ; $4340: $e5
    add b                                         ; $4341: $80
    ld a, a                                       ; $4342: $7f
    ld bc, $21ff                                  ; $4343: $01 $ff $21
    and c                                         ; $4346: $a1
    ld c, b                                       ; $4347: $48
    ldh [$5a], a                                  ; $4348: $e0 $5a
    pop hl                                        ; $434a: $e1
    add a                                         ; $434b: $87
    ld h, e                                       ; $434c: $63
    pop bc                                        ; $434d: $c1
    ret nz                                        ; $434e: $c0

    ld hl, sp+$24                                 ; $434f: $f8 $24
    and b                                         ; $4351: $a0
    ld e, a                                       ; $4352: $5f
    ld h, l                                       ; $4353: $65
    sbc a                                         ; $4354: $9f
    add a                                         ; $4355: $87
    rst $38                                       ; $4356: $ff
    inc bc                                        ; $4357: $03
    db $fd                                        ; $4358: $fd
    inc bc                                        ; $4359: $03
    ld bc, $4fe0                                  ; $435a: $01 $e0 $4f
    ld h, d                                       ; $435d: $62
    ld hl, sp-$01                                 ; $435e: $f8 $ff
    rst $38                                       ; $4360: $ff
    rst $30                                       ; $4361: $f7
    ld hl, sp-$11                                 ; $4362: $f8 $ef
    ldh a, [$ef]                                  ; $4364: $f0 $ef
    ldh a, [$dc]                                  ; $4366: $f0 $dc
    push de                                       ; $4368: $d5
    db $e3                                        ; $4369: $e3
    sbc l                                         ; $436a: $9d
    ld h, c                                       ; $436b: $61
    rst $18                                       ; $436c: $df
    ld a, l                                       ; $436d: $7d
    ld h, b                                       ; $436e: $60
    rst $08                                       ; $436f: $cf
    cp [hl]                                       ; $4370: $be
    and b                                         ; $4371: $a0
    ei                                            ; $4372: $fb
    rlca                                          ; $4373: $07
    cpl                                           ; $4374: $2f
    ld a, h                                       ; $4375: $7c
    add e                                         ; $4376: $83
    ld a, a                                       ; $4377: $7f
    add c                                         ; $4378: $81
    db $10                                        ; $4379: $10
    add c                                         ; $437a: $81
    ld a, a                                       ; $437b: $7f
    cp $e0                                        ; $437c: $fe $e0
    adc b                                         ; $437e: $88
    and e                                         ; $437f: $a3
    rst $28                                       ; $4380: $ef
    rra                                           ; $4381: $1f
    rst $38                                       ; $4382: $ff
    adc [hl]                                      ; $4383: $8e
    cp $0c                                        ; $4384: $fe $0c
    ld l, c                                       ; $4386: $69
    adc h                                         ; $4387: $8c
    add h                                         ; $4388: $84
    inc c                                         ; $4389: $0c
    xor c                                         ; $438a: $a9
    ld [$e2ff], sp                                ; $438b: $08 $ff $e2
    rst $30                                       ; $438e: $f7
    ld b, h                                       ; $438f: $44
    rlca                                          ; $4390: $07
    cp $e0                                        ; $4391: $fe $e0
    ld [bc], a                                    ; $4393: $02
    db $eb                                        ; $4394: $eb
    ld c, b                                       ; $4395: $48
    add b                                         ; $4396: $80
    ei                                            ; $4397: $fb
    nop                                           ; $4398: $00
    ld b, b                                       ; $4399: $40
    jp nz, Jump_000_0088                          ; $439a: $c2 $88 $00

    nop                                           ; $439d: $00
    xor b                                         ; $439e: $a8
    ld d, a                                       ; $439f: $57
    ldh a, [$ed]                                  ; $43a0: $f0 $ed
    rrca                                          ; $43a2: $0f
    db $fc                                        ; $43a3: $fc
    pop hl                                        ; $43a4: $e1
    ld [$fc15], a                                 ; $43a5: $ea $15 $fc
    db $e3                                        ; $43a8: $e3
    db $fc                                        ; $43a9: $fc
    db $e3                                        ; $43aa: $e3
    ld c, b                                       ; $43ab: $48
    ei                                            ; $43ac: $fb
    rst $30                                       ; $43ad: $f7
    ld b, c                                       ; $43ae: $41
    reti                                          ; $43af: $d9


    add b                                         ; $43b0: $80
    inc bc                                        ; $43b1: $03
    rst $38                                       ; $43b2: $ff
    ld b, $ff                                     ; $43b3: $06 $ff
    inc b                                         ; $43b5: $04
    ld [$e0fe], a                                 ; $43b6: $ea $fe $e0
    ld a, b                                       ; $43b9: $78
    add e                                         ; $43ba: $83
    add b                                         ; $43bb: $80
    add b                                         ; $43bc: $80
    ret                                           ; $43bd: $c9


    add b                                         ; $43be: $80
    add $fc                                       ; $43bf: $c6 $fc
    ld l, h                                       ; $43c1: $6c
    adc a                                         ; $43c2: $8f
    ld hl, sp+$38                                 ; $43c3: $f8 $38
    ldh a, [rNR23]                                ; $43c5: $f0 $18
    ld d, b                                       ; $43c7: $50
    and $4b                                       ; $43c8: $e6 $4b
    add b                                         ; $43ca: $80
    ret nc                                        ; $43cb: $d0

    ld h, d                                       ; $43cc: $62
    rst $18                                       ; $43cd: $df
    jp hl                                         ; $43ce: $e9


    ldh [$fe], a                                  ; $43cf: $e0 $fe
    db $e3                                        ; $43d1: $e3
    ld d, d                                       ; $43d2: $52
    pop hl                                        ; $43d3: $e1
    rst $30                                       ; $43d4: $f7
    ld a, [$9ea0]                                 ; $43d5: $fa $a0 $9e
    ld h, c                                       ; $43d8: $61
    xor $ff                                       ; $43d9: $ee $ff
    ld de, $39c6                                  ; $43db: $11 $c6 $39
    sbc d                                         ; $43de: $9a
    ld h, l                                       ; $43df: $65
    cp l                                          ; $43e0: $bd
    ld b, d                                       ; $43e1: $42
    cp l                                          ; $43e2: $bd
    rra                                           ; $43e3: $1f
    ld b, d                                       ; $43e4: $42
    sbc a                                         ; $43e5: $9f
    ld h, b                                       ; $43e6: $60
    rst $08                                       ; $43e7: $cf
    jr nc, @+$5b                                  ; $43e8: $30 $59

    call nz, $80d0                                ; $43ea: $c4 $d0 $80
    ld c, h                                       ; $43ed: $4c
    pop hl                                        ; $43ee: $e1
    ei                                            ; $43ef: $fb
    cp a                                          ; $43f0: $bf
    ld b, b                                       ; $43f1: $40
    ld h, b                                       ; $43f2: $60
    ld b, l                                       ; $43f3: $45
    rrca                                          ; $43f4: $0f
    rrca                                          ; $43f5: $0f
    db $10                                        ; $43f6: $10
    rra                                           ; $43f7: $1f
    jr nz, jr_078_4431                            ; $43f8: $20 $37

    ccf                                           ; $43fa: $3f
    jr nz, @+$41                                  ; $43fb: $20 $3f

    ld d, b                                       ; $43fd: $50
    ld b, e                                       ; $43fe: $43
    ccf                                           ; $43ff: $3f
    ccf                                           ; $4400: $3f
    xor e                                         ; $4401: $ab
    add d                                         ; $4402: $82
    cp e                                          ; $4403: $bb
    ld h, c                                       ; $4404: $61
    adc $3f                                       ; $4405: $ce $3f
    ld b, b                                       ; $4407: $40

jr_078_4408:
    ld a, $3e                                     ; $4408: $3e $3e
    pop bc                                        ; $440a: $c1
    jp hl                                         ; $440b: $e9


    add c                                         ; $440c: $81
    push hl                                       ; $440d: $e5
    add b                                         ; $440e: $80
    ccf                                           ; $440f: $3f
    rst $38                                       ; $4410: $ff
    or $68                                        ; $4411: $f6 $68
    pop hl                                        ; $4413: $e1
    xor d                                         ; $4414: $aa
    ld d, l                                       ; $4415: $55
    ld e, h                                       ; $4416: $5c
    pop hl                                        ; $4417: $e1
    ret nc                                        ; $4418: $d0

    cpl                                           ; $4419: $2f
    xor b                                         ; $441a: $a8
    ld d, a                                       ; $441b: $57
    rst $30                                       ; $441c: $f7
    ret nz                                        ; $441d: $c0

    ccf                                           ; $441e: $3f
    inc b                                         ; $441f: $04
    sub a                                         ; $4420: $97
    ld h, b                                       ; $4421: $60
    ld bc, $03ff                                  ; $4422: $01 $ff $03
    cp $7f                                        ; $4425: $fe $7f
    inc bc                                        ; $4427: $03

jr_078_4428:
    cp $07                                        ; $4428: $fe $07
    rst $38                                       ; $442a: $ff
    ld c, $fc                                     ; $442b: $0e $fc
    inc c                                         ; $442d: $0c
    ld a, [hl-]                                   ; $442e: $3a

jr_078_442f:
    ld h, b                                       ; $442f: $60
    rst $30                                       ; $4430: $f7

jr_078_4431:
    rst $08                                       ; $4431: $cf

jr_078_4432:
    add [hl]                                      ; $4432: $86
    add e                                         ; $4433: $83
    xor h                                         ; $4434: $ac
    ld h, d                                       ; $4435: $62
    ld hl, sp-$10                                 ; $4436: $f8 $f0
    rra                                           ; $4438: $1f
    rrca                                          ; $4439: $0f
    db $fd                                        ; $443a: $fd
    ld bc, $60a0                                  ; $443b: $01 $a0 $60
    ld bc, $c000                                  ; $443e: $01 $00 $c0
    add b                                         ; $4441: $80
    ldh a, [$60]                                  ; $4442: $f0 $60
    ccf                                           ; $4444: $3f
    inc a                                         ; $4445: $3c
    jr jr_078_4456                                ; $4446: $18 $0e

    inc b                                         ; $4448: $04
    add e                                         ; $4449: $83
    nop                                           ; $444a: $00
    jr nz, jr_078_44ad                            ; $444b: $20 $60

    inc bc                                        ; $444d: $03

jr_078_444e:
    ld h, e                                       ; $444e: $63
    adc $1e                                       ; $444f: $ce $1e
    ld h, l                                       ; $4451: $65
    rrca                                          ; $4452: $0f
    db $fd                                        ; $4453: $fd
    cp $9c                                        ; $4454: $fe $9c

jr_078_4456:
    ld c, h                                       ; $4456: $4c
    ld [hl], $80                                  ; $4457: $36 $80
    adc a                                         ; $4459: $8f
    ldh a, [$fe]                                  ; $445a: $f0 $fe
    ld a, c                                       ; $445c: $79
    rst $00                                       ; $445d: $c7
    cp a                                          ; $445e: $bf
    ld b, b                                       ; $445f: $40

jr_078_4460:
    rst $18                                       ; $4460: $df
    jr nz, jr_078_4432                            ; $4461: $20 $cf

    jr nc, jr_078_446c                            ; $4463: $30 $07

    and h                                         ; $4465: $a4
    jr nc, jr_078_4408                            ; $4466: $30 $a0

    sub $e3                                       ; $4468: $d6 $e3
    jr nz, jr_078_444e                            ; $446a: $20 $e2

jr_078_446c:
    ld b, c                                       ; $446c: $41
    pop hl                                        ; $446d: $e1
    ld b, h                                       ; $446e: $44
    inc bc                                        ; $446f: $03
    sub d                                         ; $4470: $92
    add b                                         ; $4471: $80
    ccf                                           ; $4472: $3f
    ldh a, [$af]                                  ; $4473: $f0 $af
    ld a, [hl+]                                   ; $4475: $2a
    xor d                                         ; $4476: $aa
    add e                                         ; $4477: $83
    or a                                          ; $4478: $b7
    ld h, c                                       ; $4479: $61
    xor a                                         ; $447a: $af
    ld b, b                                       ; $447b: $40
    ld hl, sp-$1c                                 ; $447c: $f8 $e4
    ldh [$8a], a                                  ; $447e: $e0 $8a
    push de                                       ; $4480: $d5
    add b                                         ; $4481: $80
    ld hl, $0561                                  ; $4482: $21 $61 $05
    ld l, b                                       ; $4485: $68
    ld h, d                                       ; $4486: $62
    dec bc                                        ; $4487: $0b
    call nc, $a042                                ; $4488: $d4 $42 $a0
    ld e, a                                       ; $448b: $5f
    rst $38                                       ; $448c: $ff
    ld b, c                                       ; $448d: $41
    cp a                                          ; $448e: $bf
    add e                                         ; $448f: $83
    ld a, l                                       ; $4490: $7d
    inc bc                                        ; $4491: $03
    rst $38                                       ; $4492: $ff
    rrca                                          ; $4493: $0f
    rst $30                                       ; $4494: $f7
    ccf                                           ; $4495: $3f
    rra                                           ; $4496: $1f
    rst $28                                       ; $4497: $ef
    ccf                                           ; $4498: $3f
    rst $18                                       ; $4499: $df
    cp a                                          ; $449a: $bf
    ld a, a                                       ; $449b: $7f
    adc b                                         ; $449c: $88
    ld b, c                                       ; $449d: $41
    jr nz, jr_078_4460                            ; $449e: $20 $c0

    jr jr_078_4428                                ; $44a0: $18 $86

    ld b, b                                       ; $44a2: $40
    or $83                                        ; $44a3: $f6 $83
    ld e, h                                       ; $44a5: $5c
    ld [hl+], a                                   ; $44a6: $22
    cp $07                                        ; $44a7: $fe $07
    jr c, jr_078_442f                             ; $44a9: $38 $84

    ld [hl], $80                                  ; $44ab: $36 $80

jr_078_44ad:
    ld b, a                                       ; $44ad: $47
    jp nz, $81dd                                  ; $44ae: $c2 $dd $81

    ld [hl], $60                                  ; $44b1: $36 $60
    rla                                           ; $44b3: $17
    nop                                           ; $44b4: $00
    cpl                                           ; $44b5: $2f
    ld a, $40                                     ; $44b6: $3e $40
    rrca                                          ; $44b8: $0f
    rrca                                          ; $44b9: $0f
    sbc a                                         ; $44ba: $9f
    rra                                           ; $44bb: $1f
    rlca                                          ; $44bc: $07
    cp a                                          ; $44bd: $bf
    rlca                                          ; $44be: $07
    ld a, a                                       ; $44bf: $7f
    ld b, b                                       ; $44c0: $40
    ld h, c                                       ; $44c1: $61
    inc a                                         ; $44c2: $3c
    ld h, c                                       ; $44c3: $61
    rrca                                          ; $44c4: $0f
    ld [hl], c                                    ; $44c5: $71
    ret nz                                        ; $44c6: $c0

    ld h, c                                       ; $44c7: $61
    add b                                         ; $44c8: $80
    ld h, e                                       ; $44c9: $63
    add c                                         ; $44ca: $81
    xor e                                         ; $44cb: $ab
    add c                                         ; $44cc: $81
    rst $30                                       ; $44cd: $f7
    ldh [$cb], a                                  ; $44ce: $e0 $cb
    ld b, c                                       ; $44d0: $41
    ld l, b                                       ; $44d1: $68
    cp a                                          ; $44d2: $bf
    ldh [$c0], a                                  ; $44d3: $e0 $c0
    cp $f8                                        ; $44d5: $fe $f8
    rst $38                                       ; $44d7: $ff
    rst $28                                       ; $44d8: $ef
    nop                                           ; $44d9: $00
    ld hl, $aa57                                  ; $44da: $21 $57 $aa
    ld l, b                                       ; $44dd: $68
    ld b, b                                       ; $44de: $40
    dec d                                         ; $44df: $15
    db $f4                                        ; $44e0: $f4
    ld b, b                                       ; $44e1: $40
    dec b                                         ; $44e2: $05
    db $e4                                        ; $44e3: $e4
    jr nz, jr_078_4525                            ; $44e4: $20 $3f

    ld h, [hl]                                    ; $44e6: $66
    ld b, d                                       ; $44e7: $42
    xor a                                         ; $44e8: $af
    db $f4                                        ; $44e9: $f4
    add sp, $42                                   ; $44ea: $e8 $42
    sub h                                         ; $44ec: $94
    ld h, b                                       ; $44ed: $60
    rlca                                          ; $44ee: $07
    ei                                            ; $44ef: $fb
    ld [c], a                                     ; $44f0: $e2
    cp $0f                                        ; $44f1: $fe $0f
    ld hl, sp+$3f                                 ; $44f3: $f8 $3f
    ccf                                           ; $44f5: $3f
    ldh a, [$6f]                                  ; $44f6: $f0 $6f
    ret nz                                        ; $44f8: $c0

    rst $10                                       ; $44f9: $d7
    add b                                         ; $44fa: $80
    xor e                                         ; $44fb: $ab
    ldh [$03], a                                  ; $44fc: $e0 $03
    ld d, h                                       ; $44fe: $54
    ld b, b                                       ; $44ff: $40
    rst $38                                       ; $4500: $ff
    rst $38                                       ; $4501: $ff
    rra                                           ; $4502: $1f
    ei                                            ; $4503: $fb
    inc c                                         ; $4504: $0c
    db $fc                                        ; $4505: $fc
    rlca                                          ; $4506: $07
    cp $03                                        ; $4507: $fe $03
    ld a, a                                       ; $4509: $7f
    db $e3                                        ; $450a: $e3
    ldh [$e3], a                                  ; $450b: $e0 $e3
    pop hl                                        ; $450d: $e1
    pop af                                        ; $450e: $f1
    ldh [$f9], a                                  ; $450f: $e0 $f9
    cp $61                                        ; $4511: $fe $61
    rst $38                                       ; $4513: $ff
    ccf                                           ; $4514: $3f
    ld a, a                                       ; $4515: $7f
    add a                                         ; $4516: $87
    rra                                           ; $4517: $1f
    pop hl                                        ; $4518: $e1
    add b                                         ; $4519: $80
    nop                                           ; $451a: $00
    add c                                         ; $451b: $81
    cp a                                          ; $451c: $bf
    add b                                         ; $451d: $80
    ret nz                                        ; $451e: $c0

    add b                                         ; $451f: $80
    jp nz, $c180                                  ; $4520: $c2 $80 $c1

    ld b, b                                       ; $4523: $40
    ld b, b                                       ; $4524: $40

jr_078_4525:
    add c                                         ; $4525: $81
    db $fc                                        ; $4526: $fc
    or b                                          ; $4527: $b0
    ld bc, $401a                                  ; $4528: $01 $1a $40
    cp a                                          ; $452b: $bf
    ld bc, $0eff                                  ; $452c: $01 $ff $0e
    ld a, h                                       ; $452f: $7c
    ld [$fcff], sp                                ; $4530: $08 $ff $fc
    ld [$087d], sp                                ; $4533: $08 $7d $08
    cp [hl]                                       ; $4536: $be
    ld [$17ff], sp                                ; $4537: $08 $ff $17
    ld c, a                                       ; $453a: $4f
    rst $38                                       ; $453b: $ff
    ld h, a                                       ; $453c: $67
    rst $38                                       ; $453d: $ff
    add a                                         ; $453e: $87
    ld e, [hl]                                    ; $453f: $5e
    pop hl                                        ; $4540: $e1
    ld e, d                                       ; $4541: $5a
    ldh [rIF], a                                  ; $4542: $e0 $0f
    call nc, $ce00                                ; $4544: $d4 $00 $ce
    adc a                                         ; $4547: $8f
    ld [$fefd], sp                                ; $4548: $08 $fd $fe
    rst $30                                       ; $454b: $f7
    or d                                          ; $454c: $b2
    nop                                           ; $454d: $00
    sub d                                         ; $454e: $92
    inc hl                                        ; $454f: $23
    ld hl, sp-$10                                 ; $4550: $f8 $f0
    ld a, a                                       ; $4552: $7f
    sub b                                         ; $4553: $90
    ldh a, [$f3]                                  ; $4554: $f0 $f3
    inc hl                                        ; $4556: $23
    rst $28                                       ; $4557: $ef
    inc l                                         ; $4558: $2c
    sub a                                         ; $4559: $97
    ld d, b                                       ; $455a: $50
    ld b, b                                       ; $455b: $40
    db $fd                                        ; $455c: $fd
    dec d                                         ; $455d: $15
    ld l, b                                       ; $455e: $68
    and c                                         ; $455f: $a1
    rlca                                          ; $4560: $07

jr_078_4561:
    ld a, d                                       ; $4561: $7a
    ld a, l                                       ; $4562: $7d
    add l                                         ; $4563: $85
    ld a, [$bfaa]                                 ; $4564: $fa $aa $bf
    ld d, l                                       ; $4567: $55
    ldh [$7f], a                                  ; $4568: $e0 $7f
    ld hl, sp+$1f                                 ; $456a: $f8 $1f
    ld a, h                                       ; $456c: $7c
    adc b                                         ; $456d: $88
    jr nz, jr_078_4561                            ; $456e: $20 $f1

    rst $20                                       ; $4570: $e7
    ldh [rIE], a                                  ; $4571: $e0 $ff
    ld e, $fa                                     ; $4573: $1e $fa
    ld b, d                                       ; $4575: $42
    ret nc                                        ; $4576: $d0

    add l                                         ; $4577: $85
    rst $38                                       ; $4578: $ff
    ret nz                                        ; $4579: $c0

    ld a, a                                       ; $457a: $7f
    cp $a3                                        ; $457b: $fe $a3
    ld b, b                                       ; $457d: $40
    cp a                                          ; $457e: $bf
    rst $38                                       ; $457f: $ff
    cp $ae                                        ; $4580: $fe $ae
    db $fc                                        ; $4582: $fc
    ld e, l                                       ; $4583: $5d
    ld hl, sp+$3f                                 ; $4584: $f8 $3f
    ccf                                           ; $4586: $3f
    pop af                                        ; $4587: $f1
    ccf                                           ; $4588: $3f
    and $7f                                       ; $4589: $e6 $7f
    ld hl, sp-$08                                 ; $458b: $f8 $f8
    ld hl, $c1a4                                  ; $458d: $21 $a4 $c1
    db $fd                                        ; $4590: $fd
    ld a, a                                       ; $4591: $7f
    and a                                         ; $4592: $a7
    ld b, b                                       ; $4593: $40
    and b                                         ; $4594: $a0
    ld e, a                                       ; $4595: $5f
    ret nc                                        ; $4596: $d0

    cpl                                           ; $4597: $2f
    add sp, $17                                   ; $4598: $e8 $17

jr_078_459a:
    ld e, a                                       ; $459a: $5f
    ldh a, [rIF]                                  ; $459b: $f0 $0f
    ld a, a                                       ; $459d: $7f
    ld bc, $7603                                  ; $459e: $01 $03 $76
    add b                                         ; $45a1: $80
    rrca                                          ; $45a2: $0f
    and l                                         ; $45a3: $a5
    ld b, c                                       ; $45a4: $41
    cp $77                                        ; $45a5: $fe $77
    ld b, d                                       ; $45a7: $42
    dec c                                         ; $45a8: $0d
    di                                            ; $45a9: $f3
    add c                                         ; $45aa: $81
    rst $38                                       ; $45ab: $ff
    add e                                         ; $45ac: $83
    db $fd                                        ; $45ad: $fd
    ld b, a                                       ; $45ae: $47
    rst $38                                       ; $45af: $ff
    ld a, c                                       ; $45b0: $79
    xor a                                         ; $45b1: $af
    or b                                          ; $45b2: $b0
    ld l, a                                       ; $45b3: $6f
    ldh a, [rNR33]                                ; $45b4: $f0 $1d
    ld [c], a                                     ; $45b6: $e2
    dec sp                                        ; $45b7: $3b
    ld sp, hl                                     ; $45b8: $f9
    call nz, $a30c                                ; $45b9: $c4 $0c $a3
    db $f4                                        ; $45bc: $f4
    ld b, b                                       ; $45bd: $40
    add b                                         ; $45be: $80
    ldh [$c0], a                                  ; $45bf: $e0 $c0
    ldh a, [$60]                                  ; $45c1: $f0 $60
    rst $38                                       ; $45c3: $ff
    db $fc                                        ; $45c4: $fc
    jr c, jr_078_4644                             ; $45c5: $38 $7d

    ld [$08bf], sp                                ; $45c7: $08 $bf $08
    ld e, a                                       ; $45ca: $5f
    add hl, bc                                    ; $45cb: $09
    rst $30                                       ; $45cc: $f7
    ccf                                           ; $45cd: $3f
    ld c, $5f                                     ; $45ce: $0e $5f
    and d                                         ; $45d0: $a2
    ret nz                                        ; $45d1: $c0

    rra                                           ; $45d2: $1f
    nop                                           ; $45d3: $00
    rrca                                          ; $45d4: $0f
    ld bc, $ff3f                                  ; $45d5: $01 $3f $ff
    cpl                                           ; $45d8: $2f
    rst $38                                       ; $45d9: $ff
    ld c, a                                       ; $45da: $4f
    rst $38                                       ; $45db: $ff
    sbc a                                         ; $45dc: $9f
    sbc a                                         ; $45dd: $9f
    add b                                         ; $45de: $80
    pop bc                                        ; $45df: $c1
    ld b, c                                       ; $45e0: $41
    pop af                                        ; $45e1: $f1
    ld e, a                                       ; $45e2: $5f
    or $e0                                        ; $45e3: $f6 $e0
    dec b                                         ; $45e5: $05
    daa                                           ; $45e6: $27
    dec l                                         ; $45e7: $2d
    ld bc, $effe                                  ; $45e8: $01 $fe $ef
    ldh a, [$d7]                                  ; $45eb: $f0 $d7
    ld e, a                                       ; $45ed: $5f
    add sp, -$51                                  ; $45ee: $e8 $af
    ret nc                                        ; $45f0: $d0

    ld [hl], a                                    ; $45f1: $77
    adc b                                         ; $45f2: $88
    jr c, jr_078_459a                             ; $45f3: $38 $a5

    rst $38                                       ; $45f5: $ff
    ld l, $a4                                     ; $45f6: $2e $a4
    rst $38                                       ; $45f8: $ff
    cp $01                                        ; $45f9: $fe $01
    db $fc                                        ; $45fb: $fc
    inc bc                                        ; $45fc: $03
    ld a, [hl]                                    ; $45fd: $7e
    add e                                         ; $45fe: $83
    ld a, e                                       ; $45ff: $7b
    add [hl]                                      ; $4600: $86
    jp $0af5                                      ; $4601: $c3 $f5 $0a


    add l                                         ; $4604: $85
    and $18                                       ; $4605: $e6 $18
    and h                                         ; $4607: $a4
    db $fc                                        ; $4608: $fc
    db $e3                                        ; $4609: $e3
    ld [$afa5], sp                                ; $460a: $08 $a5 $af

jr_078_460d:
    ld d, b                                       ; $460d: $50
    ccf                                           ; $460e: $3f
    rst $10                                       ; $460f: $d7
    jr z, jr_078_460d                             ; $4610: $28 $fb

    inc b                                         ; $4612: $04
    db $fd                                        ; $4613: $fd
    ld [bc], a                                    ; $4614: $02
    call c, $d0e9                                 ; $4615: $dc $e9 $d0
    jp hl                                         ; $4618: $e9


    rst $38                                       ; $4619: $ff
    add sp, $17                                   ; $461a: $e8 $17
    db $f4                                        ; $461c: $f4
    dec bc                                        ; $461d: $0b
    ld a, [$d405]                                 ; $461e: $fa $05 $d4
    dec hl                                        ; $4621: $2b
    sbc $fc                                       ; $4622: $de $fc
    pop hl                                        ; $4624: $e1
    cp $01                                        ; $4625: $fe $01
    call nc, $b52b                                ; $4627: $d4 $2b $b5
    rst $20                                       ; $462a: $e7
    ld [bc], a                                    ; $462b: $02
    rst $38                                       ; $462c: $ff
    rst $38                                       ; $462d: $ff
    add d                                         ; $462e: $82
    ld a, a                                       ; $462f: $7f
    ld [bc], a                                    ; $4630: $02
    rst $38                                       ; $4631: $ff
    scf                                           ; $4632: $37
    ret z                                         ; $4633: $c8

    ld h, a                                       ; $4634: $67
    sbc b                                         ; $4635: $98
    rst $38                                       ; $4636: $ff
    ld h, a                                       ; $4637: $67
    sbc b                                         ; $4638: $98
    rst $08                                       ; $4639: $cf
    jr nc, @-$2f                                  ; $463a: $30 $cf

    jr nc, @-$73                                  ; $463c: $30 $8b

jr_078_463e:
    ld [hl], h                                    ; $463e: $74
    rst $38                                       ; $463f: $ff
    add a                                         ; $4640: $87
    ld a, b                                       ; $4641: $78
    adc e                                         ; $4642: $8b
    ld [hl], h                                    ; $4643: $74

jr_078_4644:
    rst $28                                       ; $4644: $ef
    ld h, $e0                                     ; $4645: $26 $e0

jr_078_4647:
    jr nz, jr_078_4647                            ; $4647: $20 $fe

    cp $e5                                        ; $4649: $fe $e5
    ldh a, [rNR10]                                ; $464b: $f0 $10
    rst $38                                       ; $464d: $ff
    rra                                           ; $464e: $1f
    rra                                           ; $464f: $1f
    ld [bc], a                                    ; $4650: $02
    rrca                                          ; $4651: $0f
    ret z                                         ; $4652: $c8

    ld [hl], b                                    ; $4653: $70
    nop                                           ; $4654: $00
    db $fc                                        ; $4655: $fc
    push hl                                       ; $4656: $e5
    ld b, e                                       ; $4657: $43
    nop                                           ; $4658: $00
    rrca                                          ; $4659: $0f
    cp $e2                                        ; $465a: $fe $e2
    jr nc, jr_078_463e                            ; $465c: $30 $e0

    rst $28                                       ; $465e: $ef
    ccf                                           ; $465f: $3f
    pop bc                                        ; $4660: $c1
    rst $08                                       ; $4661: $cf
    di                                            ; $4662: $f3
    ldh [$3e], a                                  ; $4663: $e0 $3e
    nop                                           ; $4665: $00
    cp $e0                                        ; $4666: $fe $e0
    ld a, [bc]                                    ; $4668: $0a
    ld h, c                                       ; $4669: $61
    ld l, $a0                                     ; $466a: $2e $a0
    ld a, [$e5f3]                                 ; $466c: $fa $f3 $e5
    db $fc                                        ; $466f: $fc
    ld e, b                                       ; $4670: $58
    ld bc, $bbfb                                  ; $4671: $01 $fb $bb
    add b                                         ; $4674: $80
    ld l, h                                       ; $4675: $6c
    pop hl                                        ; $4676: $e1
    ld a, [$fc05]                                 ; $4677: $fa $05 $fc
    rst $38                                       ; $467a: $ff
    inc bc                                        ; $467b: $03
    dec a                                         ; $467c: $3d
    add $3f                                       ; $467d: $c6 $3f
    call nz, $ec17                                ; $467f: $c4 $17 $ec
    cp e                                          ; $4682: $bb
    rst $38                                       ; $4683: $ff
    ld l, h                                       ; $4684: $6c
    xor a                                         ; $4685: $af
    ld a, b                                       ; $4686: $78
    cp a                                          ; $4687: $bf
    ld a, b                                       ; $4688: $78
    rst $18                                       ; $4689: $df
    jr c, @-$1f                                   ; $468a: $38 $df

    add a                                         ; $468c: $87

jr_078_468d:
    jr c, jr_078_468d                             ; $468d: $38 $fe

    ld bc, $e12e                                  ; $468f: $01 $2e $e1
    db $fc                                        ; $4692: $fc
    rst $20                                       ; $4693: $e7
    ld a, h                                       ; $4694: $7c
    pop hl                                        ; $4695: $e1
    ld a, b                                       ; $4696: $78
    pop hl                                        ; $4697: $e1
    add e                                         ; $4698: $83
    cp $40                                        ; $4699: $fe $40
    ld h, d                                       ; $469b: $62
    nop                                           ; $469c: $00
    rst $38                                       ; $469d: $ff
    dec b                                         ; $469e: $05
    ld a, [$fd02]                                 ; $469f: $fa $02 $fd
    ld b, c                                       ; $46a2: $41
    db $eb                                        ; $46a3: $eb
    cp $42                                        ; $46a4: $fe $42
    db $fc                                        ; $46a6: $fc
    ldh [rLCDC], a                                ; $46a7: $e0 $40
    ld l, c                                       ; $46a9: $69
    nop                                           ; $46aa: $00
    ret nz                                        ; $46ab: $c0

    rst $38                                       ; $46ac: $ff
    db $10                                        ; $46ad: $10
    db $fd                                        ; $46ae: $fd
    rra                                           ; $46af: $1f
    cp $e3                                        ; $46b0: $fe $e3
    sub b                                         ; $46b2: $90
    rra                                           ; $46b3: $1f
    ld d, b                                       ; $46b4: $50
    rra                                           ; $46b5: $1f
    or b                                          ; $46b6: $b0
    rra                                           ; $46b7: $1f
    cp a                                          ; $46b8: $bf
    ldh a, [$1f]                                  ; $46b9: $f0 $1f
    ld hl, sp+$07                                 ; $46bb: $f8 $07
    ld a, [$a605]                                 ; $46bd: $fa $05 $a6
    pop hl                                        ; $46c0: $e1
    rst $38                                       ; $46c1: $ff
    add hl, hl                                    ; $46c2: $29
    nop                                           ; $46c3: $00
    db $fc                                        ; $46c4: $fc
    db $e3                                        ; $46c5: $e3
    ld b, a                                       ; $46c6: $47
    and l                                         ; $46c7: $a5
    rlca                                          ; $46c8: $07
    cp [hl]                                       ; $46c9: $be
    ldh [$03], a                                  ; $46ca: $e0 $03
    cp d                                          ; $46cc: $ba
    ldh [$c1], a                                  ; $46cd: $e0 $c1
    adc c                                         ; $46cf: $89
    and $69                                       ; $46d0: $e6 $69
    ldh [rIE], a                                  ; $46d2: $e0 $ff
    rst $20                                       ; $46d4: $e7
    jr jr_078_4737                                ; $46d5: $18 $60

    sbc [hl]                                      ; $46d7: $9e
    pop bc                                        ; $46d8: $c1
    ld e, a                                       ; $46d9: $5f
    and b                                         ; $46da: $a0
    cp a                                          ; $46db: $bf
    reti                                          ; $46dc: $d9


    ld b, b                                       ; $46dd: $40
    ret nc                                        ; $46de: $d0

    ld bc, $e16c                                  ; $46df: $01 $6c $e1
    ld a, [$ec05]                                 ; $46e2: $fa $05 $ec
    pop bc                                        ; $46e5: $c1
    db $f4                                        ; $46e6: $f4
    dec bc                                        ; $46e7: $0b
    cp $e4                                        ; $46e8: $fe $e4
    pop bc                                        ; $46ea: $c1
    ld d, a                                       ; $46eb: $57
    cp b                                          ; $46ec: $b8
    ld d, l                                       ; $46ed: $55
    cp d                                          ; $46ee: $ba
    rra                                           ; $46ef: $1f
    ldh a, [$15]                                  ; $46f0: $f0 $15
    db $fd                                        ; $46f2: $fd
    ld a, [$e1fc]                                 ; $46f3: $fa $fc $e1
    dec hl                                        ; $46f6: $2b
    db $f4                                        ; $46f7: $f4
    dec h                                         ; $46f8: $25
    ld a, [$00ff]                                 ; $46f9: $fa $ff $00
    rst $38                                       ; $46fc: $ff
    rst $18                                       ; $46fd: $df
    jr nz, @+$01                                  ; $46fe: $20 $ff

    nop                                           ; $4700: $00
    rst $10                                       ; $4701: $d7
    jr z, @+$01                                   ; $4702: $28 $ff

    nop                                           ; $4704: $00
    or e                                          ; $4705: $b3
    push de                                       ; $4706: $d5
    ld a, [hl+]                                   ; $4707: $2a
    db $fc                                        ; $4708: $fc
    pop hl                                        ; $4709: $e1
    ld d, b                                       ; $470a: $50
    push hl                                       ; $470b: $e5
    rst $38                                       ; $470c: $ff
    nop                                           ; $470d: $00
    db $fc                                        ; $470e: $fc
    pop hl                                        ; $470f: $e1
    ld e, l                                       ; $4710: $5d
    db $e3                                        ; $4711: $e3
    and d                                         ; $4712: $a2
    and b                                         ; $4713: $a0
    rla                                           ; $4714: $17
    and b                                         ; $4715: $a0
    ldh [rNR42], a                                ; $4716: $e0 $21
    call c, $a821                                 ; $4718: $dc $21 $a8
    ld d, a                                       ; $471b: $57
    ld b, b                                       ; $471c: $40
    rst $28                                       ; $471d: $ef
    cp a                                          ; $471e: $bf
    ld h, b                                       ; $471f: $60
    rst $38                                       ; $4720: $ff

jr_078_4721:
    jr nz, jr_078_4721                            ; $4721: $20 $fe

    ldh [$30], a                                  ; $4723: $e0 $30
    rst $38                                       ; $4725: $ff
    db $10                                        ; $4726: $10
    cp [hl]                                       ; $4727: $be
    cp $e0                                        ; $4728: $fe $e0
    jr @+$01                                      ; $472a: $18 $ff

    ld [$f0ff], sp                                ; $472c: $08 $ff $f0
    ld e, h                                       ; $472f: $5c
    pop hl                                        ; $4730: $e1
    rrca                                          ; $4731: $0f
    ldh [$fe], a                                  ; $4732: $e0 $fe
    rst $20                                       ; $4734: $e7
    ld e, b                                       ; $4735: $58
    db $e3                                        ; $4736: $e3

jr_078_4737:
    ld h, [hl]                                    ; $4737: $66
    ld bc, $e3fc                                  ; $4738: $01 $fc $e3
    ld e, h                                       ; $473b: $5c
    pop hl                                        ; $473c: $e1
    ld bc, $81ff                                  ; $473d: $01 $ff $81
    db $fc                                        ; $4740: $fc
    ld d, d                                       ; $4741: $52
    ld b, d                                       ; $4742: $42
    ld c, [hl]                                    ; $4743: $4e
    ld b, c                                       ; $4744: $41
    db $fd                                        ; $4745: $fd
    cp $fa                                        ; $4746: $fe $fa
    db $fd                                        ; $4748: $fd
    push af                                       ; $4749: $f5
    ld a, [$fbe3]                                 ; $474a: $fa $e3 $fb
    db $f4                                        ; $474d: $f4
    jr nz, jr_078_47b5                            ; $474e: $20 $65

    inc h                                         ; $4750: $24
    ret                                           ; $4751: $c9


    add b                                         ; $4752: $80
    ld b, c                                       ; $4753: $41
    ldh [$1f], a                                  ; $4754: $e0 $1f
    call nc, Call_000_2b6d                        ; $4756: $d4 $6d $2b
    db $fc                                        ; $4759: $fc
    pop hl                                        ; $475a: $e1
    add b                                         ; $475b: $80
    ld a, a                                       ; $475c: $7f
    db $fc                                        ; $475d: $fc
    pop hl                                        ; $475e: $e1
    ld b, b                                       ; $475f: $40
    cp a                                          ; $4760: $bf
    ld e, h                                       ; $4761: $5c
    pop hl                                        ; $4762: $e1
    rst $38                                       ; $4763: $ff
    ld a, [hl+]                                   ; $4764: $2a
    push af                                       ; $4765: $f5
    ld hl, $2afe                                  ; $4766: $21 $fe $2a
    push af                                       ; $4769: $f5
    ld b, b                                       ; $476a: $40
    rst $38                                       ; $476b: $ff
    db $fd                                        ; $476c: $fd
    ld c, d                                       ; $476d: $4a
    db $fc                                        ; $476e: $fc
    ldh [rIE], a                                  ; $476f: $e0 $ff
    nop                                           ; $4771: $00
    ld e, a                                       ; $4772: $5f
    and b                                         ; $4773: $a0
    rst $38                                       ; $4774: $ff
    nop                                           ; $4775: $00
    rst $38                                       ; $4776: $ff
    ld d, a                                       ; $4777: $57
    xor b                                         ; $4778: $a8
    rst $38                                       ; $4779: $ff
    nop                                           ; $477a: $00
    ld d, l                                       ; $477b: $55
    xor d                                         ; $477c: $aa
    cp a                                          ; $477d: $bf
    ld b, b                                       ; $477e: $40
    rst $38                                       ; $477f: $ff
    ld d, l                                       ; $4780: $55
    xor d                                         ; $4781: $aa
    ld a, [$d505]                                 ; $4782: $fa $05 $d5
    ld a, [hl+]                                   ; $4785: $2a
    ld hl, sp+$07                                 ; $4786: $f8 $07
    db $e3                                        ; $4788: $e3
    push af                                       ; $4789: $f5
    ld a, [bc]                                    ; $478a: $0a
    inc e                                         ; $478b: $1c
    db $e3                                        ; $478c: $e3
    ld c, h                                       ; $478d: $4c
    db $e3                                        ; $478e: $e3
    add sp, -$1f                                  ; $478f: $e8 $e1
    dec hl                                        ; $4791: $2b
    call nc, $9f55                                ; $4792: $d4 $55 $9f
    xor d                                         ; $4795: $aa

jr_078_4796:
    dec bc                                        ; $4796: $0b
    db $f4                                        ; $4797: $f4
    dec d                                         ; $4798: $15
    ld [$e14c], a                                 ; $4799: $ea $4c $e1
    db $fc                                        ; $479c: $fc
    push hl                                       ; $479d: $e5
    xor d                                         ; $479e: $aa
    xor a                                         ; $479f: $af
    ld d, l                                       ; $47a0: $55
    ld d, b                                       ; $47a1: $50
    xor a                                         ; $47a2: $af
    inc c                                         ; $47a3: $0c
    ld a, d                                       ; $47a4: $7a
    ld b, d                                       ; $47a5: $42
    ld b, $f2                                     ; $47a6: $06 $f2
    and b                                         ; $47a8: $a0
    inc bc                                        ; $47a9: $03
    ret nz                                        ; $47aa: $c0

    db $ec                                        ; $47ab: $ec
    ld b, d                                       ; $47ac: $42
    ld b, h                                       ; $47ad: $44
    jp hl                                         ; $47ae: $e9


    ld b, b                                       ; $47af: $40
    db $e3                                        ; $47b0: $e3
    ld b, h                                       ; $47b1: $44
    rst $20                                       ; $47b2: $e7
    jr c, jr_078_4796                             ; $47b3: $38 $e1

jr_078_47b5:
    ld b, $e1                                     ; $47b5: $06 $e1
    ret nz                                        ; $47b7: $c0

    ccf                                           ; $47b8: $3f
    nop                                           ; $47b9: $00
    sub $41                                       ; $47ba: $d6 $41
    db $fc                                        ; $47bc: $fc
    db $e3                                        ; $47bd: $e3
    nop                                           ; $47be: $00
    nop                                           ; $47bf: $00
    nop                                           ; $47c0: $00
    add hl, hl                                    ; $47c1: $29
    ld [$ffff], sp                                ; $47c2: $08 $ff $ff
    pop af                                        ; $47c5: $f1
    ldh a, [$09]                                  ; $47c6: $f0 $09
    ldh [$fd], a                                  ; $47c8: $e0 $fd
    add hl, bc                                    ; $47ca: $09
    sbc $f6                                       ; $47cb: $de $f6
    and $e1                                       ; $47cd: $e6 $e1
    ld [hl], b                                    ; $47cf: $70
    pop hl                                        ; $47d0: $e1
    ldh [$df], a                                  ; $47d1: $e0 $df
    or $e4                                        ; $47d3: $f6 $e4
    ld [c], a                                     ; $47d5: $e2
    ldh [$f7], a                                  ; $47d6: $e0 $f7
    add hl, bc                                    ; $47d8: $09
    add hl, bc                                    ; $47d9: $09
    ld a, [bc]                                    ; $47da: $0a
    rst $38                                       ; $47db: $ff
    ld [c], a                                     ; $47dc: $e2
    cp $e0                                        ; $47dd: $fe $e0
    or $0a                                        ; $47df: $f6 $0a
    inc c                                         ; $47e1: $0c
    inc c                                         ; $47e2: $0c
    dec bc                                        ; $47e3: $0b
    dec bc                                        ; $47e4: $0b
    inc c                                         ; $47e5: $0c
    inc c                                         ; $47e6: $0c
    ld a, h                                       ; $47e7: $7c
    rst $18                                       ; $47e8: $df
    push af                                       ; $47e9: $f5
    ldh [$e0], a                                  ; $47ea: $e0 $e0
    ld [$0b0b], sp                                ; $47ec: $08 $0b $0b
    ld [$ba0c], sp                                ; $47ef: $08 $0c $ba
    ldh [$a2], a                                  ; $47f2: $e0 $a2
    add hl, de                                    ; $47f4: $19
    ld a, [c]                                     ; $47f5: $f2
    ld a, [bc]                                    ; $47f6: $0a
    ldh [$e2], a                                  ; $47f7: $e0 $e2
    ret nz                                        ; $47f9: $c0

    ldh [$e0], a                                  ; $47fa: $e0 $e0
    or $0a                                        ; $47fc: $f6 $0a
    and b                                         ; $47fe: $a0
    ldh [$0b], a                                  ; $47ff: $e0 $0b
    rst $08                                       ; $4801: $cf
    dec bc                                        ; $4802: $0b
    ld a, [bc]                                    ; $4803: $0a
    ld a, [bc]                                    ; $4804: $0a
    ld c, $e0                                     ; $4805: $0e $e0
    push af                                       ; $4807: $f5
    add d                                         ; $4808: $82
    ldh [$0c], a                                  ; $4809: $e0 $0c
    dec bc                                        ; $480b: $0b
    ld b, h                                       ; $480c: $44
    pop hl                                        ; $480d: $e1
    db $f4                                        ; $480e: $f4
    ret nz                                        ; $480f: $c0

    pop hl                                        ; $4810: $e1
    ld c, e                                       ; $4811: $4b
    ld e, [hl]                                    ; $4812: $5e
    pop hl                                        ; $4813: $e1
    add d                                         ; $4814: $82
    di                                            ; $4815: $f3
    add [hl]                                      ; $4816: $86
    jp nz, $a00d                                  ; $4817: $c2 $0d $a0

    ldh [$8c], a                                  ; $481a: $e0 $8c
    jp nz, Jump_078_66f4                          ; $481c: $c2 $f4 $66

    jp Jump_000_0e0e                              ; $481f: $c3 $0e $0e


    pop hl                                        ; $4822: $e1
    ld a, [$e7d8]                                 ; $4823: $fa $d8 $e7
    db $dd                                        ; $4826: $dd
    ld a, [$060f]                                 ; $4827: $fa $0f $06
    cp $d4                                        ; $482a: $fe $d4
    ld [$e048], sp                                ; $482c: $08 $48 $e0
    db $fc                                        ; $482f: $fc
    ret nz                                        ; $4830: $c0

    db $fd                                        ; $4831: $fd
    rst $38                                       ; $4832: $ff
    rst $38                                       ; $4833: $ff
    rst $38                                       ; $4834: $ff
    rst $38                                       ; $4835: $ff
    rst $38                                       ; $4836: $ff
    rst $38                                       ; $4837: $ff
    nop                                           ; $4838: $00
    rst $38                                       ; $4839: $ff
    rst $38                                       ; $483a: $ff
    rst $38                                       ; $483b: $ff
    rst $38                                       ; $483c: $ff
    rst $38                                       ; $483d: $ff
    rst $38                                       ; $483e: $ff
    rst $38                                       ; $483f: $ff
    rst $38                                       ; $4840: $ff
    rst $38                                       ; $4841: $ff
    rst $38                                       ; $4842: $ff
    rst $38                                       ; $4843: $ff
    rst $38                                       ; $4844: $ff
    rst $38                                       ; $4845: $ff
    rst $38                                       ; $4846: $ff
    rst $38                                       ; $4847: $ff
    rst $38                                       ; $4848: $ff
    nop                                           ; $4849: $00
    rst $38                                       ; $484a: $ff
    rst $38                                       ; $484b: $ff
    di                                            ; $484c: $f3
    ld a, [c]                                     ; $484d: $f2
    nop                                           ; $484e: $00
    nop                                           ; $484f: $00
    nop                                           ; $4850: $00
    ld a, l                                       ; $4851: $7d
    ld bc, $edff                                  ; $4852: $01 $ff $ed
    ld [bc], a                                    ; $4855: $02
    inc bc                                        ; $4856: $03
    inc b                                         ; $4857: $04
    dec b                                         ; $4858: $05
    ld b, $ea                                     ; $4859: $06 $ea
    xor $7e                                       ; $485b: $ee $7e
    reti                                          ; $485d: $d9


    rst $20                                       ; $485e: $e7
    rlca                                          ; $485f: $07
    ld [$0a09], sp                                ; $4860: $08 $09 $0a
    dec bc                                        ; $4863: $0b
    inc c                                         ; $4864: $0c
    rst $18                                       ; $4865: $df
    ld hl, sp+$7f                                 ; $4866: $f8 $7f
    dec c                                         ; $4868: $0d
    ld c, $01                                     ; $4869: $0e $01
    ld bc, $100f                                  ; $486b: $01 $0f $10
    ld de, $f5bd                                  ; $486e: $11 $bd $f5
    rst $38                                       ; $4871: $ff
    ld [de], a                                    ; $4872: $12
    inc de                                        ; $4873: $13
    ld bc, $1401                                  ; $4874: $01 $01 $14
    dec d                                         ; $4877: $15
    ld d, $17                                     ; $4878: $16 $17
    db $fd                                        ; $487a: $fd
    jr @-$62                                      ; $487b: $18 $9c

    db $f4                                        ; $487d: $f4
    add hl, de                                    ; $487e: $19
    ld a, [de]                                    ; $487f: $1a
    dec de                                        ; $4880: $1b
    inc e                                         ; $4881: $1c
    dec e                                         ; $4882: $1d
    ld e, $f7                                     ; $4883: $1e $f7
    rra                                           ; $4885: $1f
    jr nz, @+$23                                  ; $4886: $20 $21

    ld a, h                                       ; $4888: $7c
    di                                            ; $4889: $f3
    ld [hl+], a                                   ; $488a: $22
    inc hl                                        ; $488b: $23
    inc h                                         ; $488c: $24
    dec h                                         ; $488d: $25
    cp a                                          ; $488e: $bf
    ld h, $27                                     ; $488f: $26 $27
    jr z, jr_078_48bc                             ; $4891: $28 $29

    ld a, [hl+]                                   ; $4893: $2a
    dec hl                                        ; $4894: $2b
    ld e, h                                       ; $4895: $5c
    di                                            ; $4896: $f3
    inc l                                         ; $4897: $2c
    rst $38                                       ; $4898: $ff
    dec l                                         ; $4899: $2d
    ld l, $2f                                     ; $489a: $2e $2f
    jr nc, jr_078_489e                            ; $489c: $30 $00

jr_078_489e:
    ld sp, $3332                                  ; $489e: $31 $32 $33
    ei                                            ; $48a1: $fb
    inc [hl]                                      ; $48a2: $34
    dec [hl]                                      ; $48a3: $35
    dec sp                                        ; $48a4: $3b
    ld a, [c]                                     ; $48a5: $f2
    ld [hl], $37                                  ; $48a6: $36 $37
    jr c, jr_078_48e3                             ; $48a8: $38 $39

    ld a, [hl-]                                   ; $48aa: $3a
    cp a                                          ; $48ab: $bf
    dec sp                                        ; $48ac: $3b
    inc a                                         ; $48ad: $3c
    dec a                                         ; $48ae: $3d
    ld a, $3f                                     ; $48af: $3e $3f
    ld b, b                                       ; $48b1: $40
    dec de                                        ; $48b2: $1b
    ld a, [c]                                     ; $48b3: $f2
    ld b, c                                       ; $48b4: $41
    rst $38                                       ; $48b5: $ff
    ld b, d                                       ; $48b6: $42
    ld b, e                                       ; $48b7: $43
    ld b, h                                       ; $48b8: $44
    ld b, l                                       ; $48b9: $45
    ld b, [hl]                                    ; $48ba: $46
    ld b, a                                       ; $48bb: $47

jr_078_48bc:
    ld c, b                                       ; $48bc: $48
    ld c, c                                       ; $48bd: $49
    ei                                            ; $48be: $fb
    ld c, d                                       ; $48bf: $4a
    ld c, e                                       ; $48c0: $4b
    ei                                            ; $48c1: $fb
    jp nc, Jump_078_4d4c                          ; $48c2: $d2 $4c $4d

    ld c, [hl]                                    ; $48c5: $4e
    ld c, a                                       ; $48c6: $4f
    ld d, b                                       ; $48c7: $50
    ld a, a                                       ; $48c8: $7f
    ld d, c                                       ; $48c9: $51
    ld d, d                                       ; $48ca: $52
    nop                                           ; $48cb: $00
    ld d, e                                       ; $48cc: $53
    ld d, h                                       ; $48cd: $54
    ld d, l                                       ; $48ce: $55
    ld d, [hl]                                    ; $48cf: $56
    jp c, $ffd1                                   ; $48d0: $da $d1 $ff

    ld d, a                                       ; $48d3: $57
    ld e, b                                       ; $48d4: $58
    ld e, c                                       ; $48d5: $59
    nop                                           ; $48d6: $00
    ld e, d                                       ; $48d7: $5a
    ld e, e                                       ; $48d8: $5b
    ld e, h                                       ; $48d9: $5c
    nop                                           ; $48da: $00
    rst $18                                       ; $48db: $df
    ld e, l                                       ; $48dc: $5d
    ld e, [hl]                                    ; $48dd: $5e
    ld e, a                                       ; $48de: $5f
    ld h, b                                       ; $48df: $60
    ld h, c                                       ; $48e0: $61
    cp c                                          ; $48e1: $b9
    ret nc                                        ; $48e2: $d0

jr_078_48e3:
    ld h, d                                       ; $48e3: $62
    ld h, e                                       ; $48e4: $63
    rst $38                                       ; $48e5: $ff
    ld h, h                                       ; $48e6: $64
    inc hl                                        ; $48e7: $23
    ld h, l                                       ; $48e8: $65
    ld h, [hl]                                    ; $48e9: $66
    ld h, a                                       ; $48ea: $67
    ld l, b                                       ; $48eb: $68
    ld l, c                                       ; $48ec: $69
    ld l, d                                       ; $48ed: $6a
    rst $30                                       ; $48ee: $f7
    ld l, e                                       ; $48ef: $6b
    ld l, h                                       ; $48f0: $6c
    ld l, l                                       ; $48f1: $6d
    sbc c                                         ; $48f2: $99
    db $d3                                        ; $48f3: $d3
    ld l, [hl]                                    ; $48f4: $6e
    ld l, a                                       ; $48f5: $6f
    ld [hl], b                                    ; $48f6: $70
    ld [hl], c                                    ; $48f7: $71
    cp a                                          ; $48f8: $bf
    ld [hl], d                                    ; $48f9: $72
    ld [hl], e                                    ; $48fa: $73
    ld [hl], h                                    ; $48fb: $74
    ld [hl], l                                    ; $48fc: $75
    halt                                          ; $48fd: $76
    ld [hl], a                                    ; $48fe: $77
    ld a, c                                       ; $48ff: $79
    pop de                                        ; $4900: $d1
    ld a, b                                       ; $4901: $78
    rst $38                                       ; $4902: $ff
    ld a, c                                       ; $4903: $79
    ld a, d                                       ; $4904: $7a
    ld a, e                                       ; $4905: $7b
    ld a, h                                       ; $4906: $7c
    ld a, l                                       ; $4907: $7d
    ld a, [hl]                                    ; $4908: $7e
    ld a, a                                       ; $4909: $7f
    add b                                         ; $490a: $80
    rst $30                                       ; $490b: $f7
    add c                                         ; $490c: $81
    add d                                         ; $490d: $82
    add e                                         ; $490e: $83
    ld e, c                                       ; $490f: $59
    ret nc                                        ; $4910: $d0

    add h                                         ; $4911: $84
    add l                                         ; $4912: $85
    add [hl]                                      ; $4913: $86
    add a                                         ; $4914: $87
    rst $38                                       ; $4915: $ff
    adc b                                         ; $4916: $88
    adc c                                         ; $4917: $89
    adc d                                         ; $4918: $8a
    adc e                                         ; $4919: $8b
    adc h                                         ; $491a: $8c
    adc l                                         ; $491b: $8d
    adc [hl]                                      ; $491c: $8e
    adc a                                         ; $491d: $8f
    cp l                                          ; $491e: $bd
    sub b                                         ; $491f: $90
    add hl, sp                                    ; $4920: $39
    ret nc                                        ; $4921: $d0

    sub c                                         ; $4922: $91
    sub d                                         ; $4923: $92
    sub e                                         ; $4924: $93
    adc d                                         ; $4925: $8a
    rst $38                                       ; $4926: $ff
    ldh [$94], a                                  ; $4927: $e0 $94
    rst $18                                       ; $4929: $df
    sub l                                         ; $492a: $95
    sub [hl]                                      ; $492b: $96
    sub a                                         ; $492c: $97
    sbc b                                         ; $492d: $98
    sbc c                                         ; $492e: $99
    add hl, de                                    ; $492f: $19
    rst $08                                       ; $4930: $cf
    sbc d                                         ; $4931: $9a
    sbc e                                         ; $4932: $9b
    rst $38                                       ; $4933: $ff
    sbc h                                         ; $4934: $9c
    sbc l                                         ; $4935: $9d
    adc b                                         ; $4936: $88
    adc d                                         ; $4937: $8a
    adc d                                         ; $4938: $8a
    sbc [hl]                                      ; $4939: $9e
    sbc a                                         ; $493a: $9f
    and b                                         ; $493b: $a0
    rst $28                                       ; $493c: $ef
    and c                                         ; $493d: $a1
    and d                                         ; $493e: $a2
    and e                                         ; $493f: $a3
    and h                                         ; $4940: $a4
    ld sp, hl                                     ; $4941: $f9
    xor a                                         ; $4942: $af
    and l                                         ; $4943: $a5
    and [hl]                                      ; $4944: $a6
    and a                                         ; $4945: $a7
    rst $38                                       ; $4946: $ff
    xor b                                         ; $4947: $a8
    xor c                                         ; $4948: $a9
    adc d                                         ; $4949: $8a
    adc d                                         ; $494a: $8a
    xor d                                         ; $494b: $aa
    xor e                                         ; $494c: $ab
    xor h                                         ; $494d: $ac
    xor l                                         ; $494e: $ad
    rla                                           ; $494f: $17
    xor [hl]                                      ; $4950: $ae
    xor a                                         ; $4951: $af
    or b                                          ; $4952: $b0
    jp Jump_000_00a0                              ; $4953: $c3 $a0 $00


    rst $38                                       ; $4956: $ff
    rst $38                                       ; $4957: $ff
    rst $38                                       ; $4958: $ff
    rst $38                                       ; $4959: $ff
    rst $38                                       ; $495a: $ff
    rst $38                                       ; $495b: $ff
    nop                                           ; $495c: $00
    rst $38                                       ; $495d: $ff
    rst $38                                       ; $495e: $ff
    rst $38                                       ; $495f: $ff
    rst $38                                       ; $4960: $ff
    rst $38                                       ; $4961: $ff
    rst $38                                       ; $4962: $ff
    rst $38                                       ; $4963: $ff
    rst $38                                       ; $4964: $ff
    rst $38                                       ; $4965: $ff
    rst $38                                       ; $4966: $ff
    rst $38                                       ; $4967: $ff
    rst $38                                       ; $4968: $ff
    rst $38                                       ; $4969: $ff
    rst $38                                       ; $496a: $ff
    rst $38                                       ; $496b: $ff
    rst $38                                       ; $496c: $ff
    nop                                           ; $496d: $00
    rst $38                                       ; $496e: $ff
    rst $38                                       ; $496f: $ff
    rst $38                                       ; $4970: $ff
    rst $38                                       ; $4971: $ff
    rst $38                                       ; $4972: $ff
    ld [c], a                                     ; $4973: $e2
    nop                                           ; $4974: $00
    nop                                           ; $4975: $00
    nop                                           ; $4976: $00
    ld a, a                                       ; $4977: $7f
    ld c, c                                       ; $4978: $49
    cp a                                          ; $4979: $bf
    ld c, c                                       ; $497a: $49
    ld [bc], a                                    ; $497b: $02
    ld d, d                                       ; $497c: $52
    sub h                                         ; $497d: $94
    ld d, d                                       ; $497e: $52
    rra                                           ; $497f: $1f
    nop                                           ; $4980: $00
    nop                                           ; $4981: $00
    nop                                           ; $4982: $00
    rst $38                                       ; $4983: $ff
    ld b, [hl]                                    ; $4984: $46
    rst $38                                       ; $4985: $ff
    ld a, a                                       ; $4986: $7f
    rst $38                                       ; $4987: $ff
    ld a, a                                       ; $4988: $7f
    sbc c                                         ; $4989: $99
    dec d                                         ; $498a: $15
    ld b, $29                                     ; $498b: $06 $29
    nop                                           ; $498d: $00
    nop                                           ; $498e: $00
    sbc a                                         ; $498f: $9f
    ld sp, $46ff                                  ; $4990: $31 $ff $46
    sbc c                                         ; $4993: $99
    dec d                                         ; $4994: $15
    nop                                           ; $4995: $00
    nop                                           ; $4996: $00
    rst $38                                       ; $4997: $ff
    ld b, [hl]                                    ; $4998: $46
    sbc c                                         ; $4999: $99
    dec d                                         ; $499a: $15
    rrca                                          ; $499b: $0f
    nop                                           ; $499c: $00
    nop                                           ; $499d: $00
    nop                                           ; $499e: $00
    rst $38                                       ; $499f: $ff
    ld a, a                                       ; $49a0: $7f
    sbc c                                         ; $49a1: $99
    dec d                                         ; $49a2: $15
    nop                                           ; $49a3: $00
    nop                                           ; $49a4: $00
    ldh [$2b], a                                  ; $49a5: $e0 $2b
    rst $38                                       ; $49a7: $ff
    ld b, [hl]                                    ; $49a8: $46
    sbc c                                         ; $49a9: $99
    dec d                                         ; $49aa: $15
    nop                                           ; $49ab: $00
    nop                                           ; $49ac: $00
    ldh [$2b], a                                  ; $49ad: $e0 $2b
    rst $38                                       ; $49af: $ff
    ld a, a                                       ; $49b0: $7f
    ld b, $29                                     ; $49b1: $06 $29
    nop                                           ; $49b3: $00
    nop                                           ; $49b4: $00
    ldh [$2b], a                                  ; $49b5: $e0 $2b
    rra                                           ; $49b7: $1f
    nop                                           ; $49b8: $00
    rrca                                          ; $49b9: $0f
    nop                                           ; $49ba: $00
    nop                                           ; $49bb: $00
    nop                                           ; $49bc: $00
    ldh [$2b], a                                  ; $49bd: $e0 $2b
    push af                                       ; $49bf: $f5
    nop                                           ; $49c0: $00
    rst $38                                       ; $49c1: $ff
    db $ec                                        ; $49c2: $ec
    rst $38                                       ; $49c3: $ff
    rst $38                                       ; $49c4: $ff
    db $ec                                        ; $49c5: $ec
    pop hl                                        ; $49c6: $e1
    cp $e0                                        ; $49c7: $fe $e0
    rst $38                                       ; $49c9: $ff
    db $fd                                        ; $49ca: $fd
    ldh a, [$fe]                                  ; $49cb: $f0 $fe
    ld [c], a                                     ; $49cd: $e2
    ld hl, sp-$01                                 ; $49ce: $f8 $ff
    db $fc                                        ; $49d0: $fc
    rst $38                                       ; $49d1: $ff
    cp $ff                                        ; $49d2: $fe $ff
    rst $38                                       ; $49d4: $ff
    ld d, h                                       ; $49d5: $54
    xor e                                         ; $49d6: $ab
    xor d                                         ; $49d7: $aa
    ld d, l                                       ; $49d8: $55
    nop                                           ; $49d9: $00
    rst $38                                       ; $49da: $ff
    ld a, [hl+]                                   ; $49db: $2a
    push de                                       ; $49dc: $d5
    sbc e                                         ; $49dd: $9b
    nop                                           ; $49de: $00
    rst $38                                       ; $49df: $ff
    cp $e5                                        ; $49e0: $fe $e5
    add b                                         ; $49e2: $80
    ld a, a                                       ; $49e3: $7f
    db $f4                                        ; $49e4: $f4
    rst $20                                       ; $49e5: $e7
    pop bc                                        ; $49e6: $c1
    pop hl                                        ; $49e7: $e1
    ld a, a                                       ; $49e8: $7f
    db $eb                                        ; $49e9: $eb
    rst $38                                       ; $49ea: $ff
    ccf                                           ; $49eb: $3f
    cp $e0                                        ; $49ec: $fe $e0
    rra                                           ; $49ee: $1f
    cp $e0                                        ; $49ef: $fe $e0
    rrca                                          ; $49f1: $0f
    rst $38                                       ; $49f2: $ff
    ld c, $f4                                     ; $49f3: $0e $f4
    or c                                          ; $49f5: $b1
    db $ec                                        ; $49f6: $ec
    and c                                         ; $49f7: $a1
    db $ed                                        ; $49f8: $ed
    rrca                                          ; $49f9: $0f
    and h                                         ; $49fa: $a4
    ldh [$c8], a                                  ; $49fb: $e0 $c8
    rst $30                                       ; $49fd: $f7
    sub h                                         ; $49fe: $94
    db $eb                                        ; $49ff: $eb
    rst $38                                       ; $4a00: $ff
    cp b                                          ; $4a01: $b8
    rst $00                                       ; $4a02: $c7
    sub h                                         ; $4a03: $94
    db $eb                                        ; $4a04: $eb
    add d                                         ; $4a05: $82
    db $fd                                        ; $4a06: $fd
    ret nz                                        ; $4a07: $c0

    rst $38                                       ; $4a08: $ff
    cp c                                          ; $4a09: $b9
    ret nz                                        ; $4a0a: $c0

    db $dd                                        ; $4a0b: $dd
    pop hl                                        ; $4a0c: $e1
    cp $ea                                        ; $4a0d: $fe $ea
    cp $00                                        ; $4a0f: $fe $00
    ld hl, sp-$02                                 ; $4a11: $f8 $fe
    ld [$fe03], a                                 ; $4a13: $ea $03 $fe
    ld c, a                                       ; $4a16: $4f
    db $ec                                        ; $4a17: $ec
    ldh a, [rIF]                                  ; $4a18: $f0 $0f
    cp a                                          ; $4a1a: $bf
    nop                                           ; $4a1b: $00
    ld d, a                                       ; $4a1c: $57
    nop                                           ; $4a1d: $00

jr_078_4a1e:
    ld a, [bc]                                    ; $4a1e: $0a
    db $d3                                        ; $4a1f: $d3
    nop                                           ; $4a20: $00
    ld bc, $e037                                  ; $4a21: $01 $37 $e0
    db $fc                                        ; $4a24: $fc
    pop hl                                        ; $4a25: $e1
    rst $38                                       ; $4a26: $ff
    add [hl]                                      ; $4a27: $86
    ldh [$e3], a                                  ; $4a28: $e0 $e3
    rra                                           ; $4a2a: $1f
    rst $38                                       ; $4a2b: $ff
    db $fc                                        ; $4a2c: $fc
    inc bc                                        ; $4a2d: $03
    ld a, a                                       ; $4a2e: $7f
    nop                                           ; $4a2f: $00
    xor a                                         ; $4a30: $af
    nop                                           ; $4a31: $00
    ld a, a                                       ; $4a32: $7f
    nop                                           ; $4a33: $00
    db $fd                                        ; $4a34: $fd
    xor e                                         ; $4a35: $ab
    jr nc, jr_078_4a1e                            ; $4a36: $30 $e6

    ccf                                           ; $4a38: $3f
    rst $38                                       ; $4a39: $ff
    rst $08                                       ; $4a3a: $cf
    ccf                                           ; $4a3b: $3f
    rst $30                                       ; $4a3c: $f7
    rrca                                          ; $4a3d: $0f
    set 7, c                                      ; $4a3e: $cb $f9
    rlca                                          ; $4a40: $07
    ld [hl-], a                                   ; $4a41: $32
    pop hl                                        ; $4a42: $e1
    db $fc                                        ; $4a43: $fc
    ld l, [hl]                                    ; $4a44: $6e
    ld [$e336], a                                 ; $4a45: $ea $36 $e3
    ret nz                                        ; $4a48: $c0

    pop hl                                        ; $4a49: $e1
    ccf                                           ; $4a4a: $3f
    ret nz                                        ; $4a4b: $c0

    ldh [$80], a                                  ; $4a4c: $e0 $80
    ret nz                                        ; $4a4e: $c0

    add b                                         ; $4a4f: $80
    ret nz                                        ; $4a50: $c0

    adc b                                         ; $4a51: $88
    rst $20                                       ; $4a52: $e7
    and b                                         ; $4a53: $a0
    db $e4                                        ; $4a54: $e4
    ld l, $fe                                     ; $4a55: $2e $fe
    ldh [$e0], a                                  ; $4a57: $e0 $e0
    nop                                           ; $4a59: $00
    add b                                         ; $4a5a: $80
    reti                                          ; $4a5b: $d9


    jp nz, $ae01                                  ; $4a5c: $c2 $01 $ae

    ldh [$d4], a                                  ; $4a5f: $e0 $d4
    jp z, Jump_000_00f7                           ; $4a61: $ca $f7 $00

    rrca                                          ; $4a64: $0f
    ldh a, [$f0]                                  ; $4a65: $f0 $f0
    db $eb                                        ; $4a67: $eb
    pop bc                                        ; $4a68: $c1
    ld a, $5f                                     ; $4a69: $3e $5f
    nop                                           ; $4a6b: $00
    ld [hl], l                                    ; $4a6c: $75
    ld a, [hl+]                                   ; $4a6d: $2a
    ld [hl], b                                    ; $4a6e: $70
    ld [c], a                                     ; $4a6f: $e2
    rla                                           ; $4a70: $17
    db $fc                                        ; $4a71: $fc
    db $e3                                        ; $4a72: $e3
    ldh [$fe], a                                  ; $4a73: $e0 $fe
    ld bc, $c5d7                                  ; $4a75: $01 $d7 $c5
    ld sp, hl                                     ; $4a78: $f9
    cp a                                          ; $4a79: $bf
    db $fc                                        ; $4a7a: $fc
    db $e3                                        ; $4a7b: $e3
    ldh [$c0], a                                  ; $4a7c: $e0 $c0
    cp a                                          ; $4a7e: $bf
    ld a, a                                       ; $4a7f: $7f
    rst $18                                       ; $4a80: $df
    ccf                                           ; $4a81: $3f
    rst $28                                       ; $4a82: $ef
    ld a, a                                       ; $4a83: $7f
    rra                                           ; $4a84: $1f
    rst $30                                       ; $4a85: $f7
    rrca                                          ; $4a86: $0f
    rst $30                                       ; $4a87: $f7
    rrca                                          ; $4a88: $0f
    ei                                            ; $4a89: $fb
    rlca                                          ; $4a8a: $07
    sub b                                         ; $4a8b: $90
    rst $00                                       ; $4a8c: $c7
    and l                                         ; $4a8d: $a5
    cp $fe                                        ; $4a8e: $fe $fe
    ld [c], a                                     ; $4a90: $e2
    add b                                         ; $4a91: $80
    sub h                                         ; $4a92: $94
    ldh [$fc], a                                  ; $4a93: $e0 $fc
    db $e3                                        ; $4a95: $e3
    ld bc, $e014                                  ; $4a96: $01 $14 $e0
    ld b, $ff                                     ; $4a99: $06 $ff

jr_078_4a9b:
    ld bc, $0003                                  ; $4a9b: $01 $03 $00
    ld c, $01                                     ; $4a9e: $0e $01
    jr @+$09                                      ; $4aa0: $18 $07

    jr nc, jr_078_4a9b                            ; $4aa2: $30 $f7

    rrca                                          ; $4aa4: $0f
    ldh [$1f], a                                  ; $4aa5: $e0 $1f
    sbc b                                         ; $4aa7: $98
    jp Jump_000_3fc0                              ; $4aa8: $c3 $c0 $3f


    nop                                           ; $4aab: $00
    rst $38                                       ; $4aac: $ff
    rst $38                                       ; $4aad: $ff
    ld bc, $03fe                                  ; $4aae: $01 $fe $03
    db $fc                                        ; $4ab1: $fc
    inc bc                                        ; $4ab2: $03
    db $fc                                        ; $4ab3: $fc
    ld b, $f9                                     ; $4ab4: $06 $f9
    rst $18                                       ; $4ab6: $df
    inc b                                         ; $4ab7: $04
    ei                                            ; $4ab8: $fb
    nop                                           ; $4ab9: $00
    rst $38                                       ; $4aba: $ff
    ccf                                           ; $4abb: $3f
    ld c, [hl]                                    ; $4abc: $4e
    ldh [$f0], a                                  ; $4abd: $e0 $f0
    rrca                                          ; $4abf: $0f
    cp $ea                                        ; $4ac0: $fe $ea
    pop hl                                        ; $4ac2: $e1
    ld e, $e1                                     ; $4ac3: $1e $e1
    ld a, a                                       ; $4ac5: $7f
    add b                                         ; $4ac6: $80
    rst $38                                       ; $4ac7: $ff
    ld bc, $f7e0                                  ; $4ac8: $01 $e0 $f7
    rra                                           ; $4acb: $1f
    ldh a, [rIF]                                  ; $4acc: $f0 $0f
    ld h, [hl]                                    ; $4ace: $66
    rst $00                                       ; $4acf: $c7
    ret nz                                        ; $4ad0: $c0

    cp a                                          ; $4ad1: $bf
    ld a, b                                       ; $4ad2: $78
    ld a, a                                       ; $4ad3: $7f
    rst $38                                       ; $4ad4: $ff
    cp h                                          ; $4ad5: $bc
    rra                                           ; $4ad6: $1f
    ld e, a                                       ; $4ad7: $5f
    rrca                                          ; $4ad8: $0f
    cp a                                          ; $4ad9: $bf
    rlca                                          ; $4ada: $07
    ld e, a                                       ; $4adb: $5f
    inc bc                                        ; $4adc: $03
    ld e, a                                       ; $4add: $5f
    cpl                                           ; $4ade: $2f
    ld bc, $005f                                  ; $4adf: $01 $5f $00
    cpl                                           ; $4ae2: $2f
    ld c, c                                       ; $4ae3: $49
    ret nz                                        ; $4ae4: $c0

    xor a                                         ; $4ae5: $af
    ld b, l                                       ; $4ae6: $45
    ret nz                                        ; $4ae7: $c0

    rst $38                                       ; $4ae8: $ff
    cpl                                           ; $4ae9: $2f
    ret nz                                        ; $4aea: $c0

    rra                                           ; $4aeb: $1f
    ldh [rTAC], a                                 ; $4aec: $e0 $07
    ld hl, sp+$03                                 ; $4aee: $f8 $03
    db $fc                                        ; $4af0: $fc
    rst $38                                       ; $4af1: $ff
    ld bc, $fbfe                                  ; $4af2: $01 $fe $fb
    rlca                                          ; $4af5: $07
    db $fd                                        ; $4af6: $fd
    inc bc                                        ; $4af7: $03
    db $fd                                        ; $4af8: $fd
    inc bc                                        ; $4af9: $03
    inc hl                                        ; $4afa: $23
    cp $01                                        ; $4afb: $fe $01
    cp $e1                                        ; $4afd: $fe $e1
    ccf                                           ; $4aff: $3f
    call nz, $a6fd                                ; $4b00: $c4 $fd $a6
    ld a, a                                       ; $4b03: $7f
    inc [hl]                                      ; $4b04: $34
    ret nz                                        ; $4b05: $c0

    ldh a, [$ab]                                  ; $4b06: $f0 $ab
    ld sp, hl                                     ; $4b08: $f9
    add b                                         ; $4b09: $80
    ld e, d                                       ; $4b0a: $5a
    db $e4                                        ; $4b0b: $e4
    ld a, [$0ce7]                                 ; $4b0c: $fa $e7 $0c
    inc bc                                        ; $4b0f: $03
    jr jr_078_4b19                                ; $4b10: $18 $07

    rla                                           ; $4b12: $17
    rst $38                                       ; $4b13: $ff
    ld [$003f], sp                                ; $4b14: $08 $3f $00
    ld a, $01                                     ; $4b17: $3e $01

jr_078_4b19:
    jr c, jr_078_4b22                             ; $4b19: $38 $07

    ld h, b                                       ; $4b1b: $60
    or a                                          ; $4b1c: $b7
    rra                                           ; $4b1d: $1f
    ld b, c                                       ; $4b1e: $41
    ld a, $ee                                     ; $4b1f: $3e $ee
    and e                                         ; $4b21: $a3

jr_078_4b22:
    ldh [$1f], a                                  ; $4b22: $e0 $1f
    ldh [$a1], a                                  ; $4b24: $e0 $a1
    ldh a, [$87]                                  ; $4b26: $f0 $87
    rrca                                          ; $4b28: $0f
    ld hl, sp+$07                                 ; $4b29: $f8 $07
    ld d, d                                       ; $4b2b: $52
    pop hl                                        ; $4b2c: $e1
    cp $e3                                        ; $4b2d: $fe $e3
    ldh [$a4], a                                  ; $4b2f: $e0 $a4
    rst $00                                       ; $4b31: $c7
    and c                                         ; $4b32: $a1
    ld h, b                                       ; $4b33: $60
    db $fc                                        ; $4b34: $fc
    cp $e2                                        ; $4b35: $fe $e2
    cp l                                          ; $4b37: $bd
    and d                                         ; $4b38: $a2
    ldh [$df], a                                  ; $4b39: $e0 $df
    ldh a, [$6f]                                  ; $4b3b: $f0 $6f
    ldh a, [$6f]                                  ; $4b3d: $f0 $6f
    cp a                                          ; $4b3f: $bf
    ld hl, sp+$37                                 ; $4b40: $f8 $37
    ld hl, sp+$37                                 ; $4b42: $f8 $37
    db $fc                                        ; $4b44: $fc
    dec de                                        ; $4b45: $1b
    cp $e1                                        ; $4b46: $fe $e1
    rla                                           ; $4b48: $17
    ld c, $5c                                     ; $4b49: $0e $5c
    ldh [rNR22], a                                ; $4b4b: $e0 $17
    nop                                           ; $4b4d: $00
    dec bc                                        ; $4b4e: $0b
    db $fc                                        ; $4b4f: $fc
    and $7b                                       ; $4b50: $e6 $7b
    ld [c], a                                     ; $4b52: $e2
    xor a                                         ; $4b53: $af
    and c                                         ; $4b54: $a1
    xor l                                         ; $4b55: $ad
    and e                                         ; $4b56: $a3
    jp nz, $e0a8                                  ; $4b57: $c2 $a8 $e0

    add b                                         ; $4b5a: $80
    jp c, Jump_078_6ca0                           ; $4b5b: $da $a0 $6c

    and c                                         ; $4b5e: $a1
    ld [hl], b                                    ; $4b5f: $70
    and e                                         ; $4b60: $a3
    ld e, h                                       ; $4b61: $5c
    pop hl                                        ; $4b62: $e1
    cp a                                          ; $4b63: $bf
    ld a, a                                       ; $4b64: $7f
    ld a, [$e7fe]                                 ; $4b65: $fa $fe $e7
    cp $58                                        ; $4b68: $fe $58
    and b                                         ; $4b6a: $a0
    di                                            ; $4b6b: $f3
    db $fc                                        ; $4b6c: $fc
    and $f8                                       ; $4b6d: $e6 $f8
    call $f07f                                    ; $4b6f: $cd $7f $f0
    set 6, b                                      ; $4b72: $cb $f0
    sbc a                                         ; $4b74: $9f
    ldh [$9d], a                                  ; $4b75: $e0 $9d
    ld [c], a                                     ; $4b77: $e2
    ld a, d                                       ; $4b78: $7a
    pop hl                                        ; $4b79: $e1
    rst $38                                       ; $4b7a: $ff
    ld a, [hl-]                                   ; $4b7b: $3a

jr_078_4b7c:
    dec b                                         ; $4b7c: $05
    ld [hl], h                                    ; $4b7d: $74
    dec bc                                        ; $4b7e: $0b
    ld hl, sp+$07                                 ; $4b7f: $f8 $07
    db $f4                                        ; $4b81: $f4
    dec bc                                        ; $4b82: $0b
    rst $28                                       ; $4b83: $ef
    xor b                                         ; $4b84: $a8
    ld d, a                                       ; $4b85: $57
    ld b, b                                       ; $4b86: $40
    cp a                                          ; $4b87: $bf
    ld h, [hl]                                    ; $4b88: $66
    and c                                         ; $4b89: $a1
    rrca                                          ; $4b8a: $0f
    rst $38                                       ; $4b8b: $ff
    rlca                                          ; $4b8c: $07
    add a                                         ; $4b8d: $87
    rst $38                                       ; $4b8e: $ff
    inc bc                                        ; $4b8f: $03
    rst $38                                       ; $4b90: $ff
    ld de, $44ee                                  ; $4b91: $11 $ee $44
    and d                                         ; $4b94: $a2
    jr nz, jr_078_4b7c                            ; $4b95: $20 $e5

    ld hl, sp-$7b                                 ; $4b97: $f8 $85
    pop bc                                        ; $4b99: $c1
    rst $30                                       ; $4b9a: $f7
    ld a, $c3                                     ; $4b9b: $3e $c3
    inc a                                         ; $4b9d: $3c
    cp $e5                                        ; $4b9e: $fe $e5
    db $e3                                        ; $4ba0: $e3
    inc e                                         ; $4ba1: $1c
    db $e3                                        ; $4ba2: $e3
    inc e                                         ; $4ba3: $1c
    rst $38                                       ; $4ba4: $ff
    db $fc                                        ; $4ba5: $fc
    dec bc                                        ; $4ba6: $0b
    cp $05                                        ; $4ba7: $fe $05
    cp $c5                                        ; $4ba9: $fe $c5
    rst $38                                       ; $4bab: $ff
    jp nz, $feea                                  ; $4bac: $c2 $ea $fe

    ldh [rSC], a                                  ; $4baf: $e0 $02
    cp l                                          ; $4bb1: $bd
    ldh [rSB], a                                  ; $4bb2: $e0 $01
    inc b                                         ; $4bb4: $04
    xor c                                         ; $4bb5: $a9
    add b                                         ; $4bb6: $80
    ld a, a                                       ; $4bb7: $7f
    cp [hl]                                       ; $4bb8: $be
    rst $30                                       ; $4bb9: $f7
    ld b, c                                       ; $4bba: $41
    ld a, a                                       ; $4bbb: $7f
    add b                                         ; $4bbc: $80
    cp $e1                                        ; $4bbd: $fe $e1
    ccf                                           ; $4bbf: $3f
    ret nz                                        ; $4bc0: $c0

    ccf                                           ; $4bc1: $3f
    ret nz                                        ; $4bc2: $c0

jr_078_4bc3:
    cp a                                          ; $4bc3: $bf
    rra                                           ; $4bc4: $1f
    add sp, $0f                                   ; $4bc5: $e8 $0f
    rst $30                                       ; $4bc7: $f7
    rlca                                          ; $4bc8: $07
    ei                                            ; $4bc9: $fb
    ld a, [hl+]                                   ; $4bca: $2a
    ld [c], a                                     ; $4bcb: $e2
    dec sp                                        ; $4bcc: $3b
    rst $38                                       ; $4bcd: $ff
    db $fc                                        ; $4bce: $fc
    dec sp                                        ; $4bcf: $3b
    ld hl, sp+$77                                 ; $4bd0: $f8 $77
    ld hl, sp-$09                                 ; $4bd2: $f8 $f7
    ldh a, [$ef]                                  ; $4bd4: $f0 $ef
    rra                                           ; $4bd6: $1f
    ldh [$df], a                                  ; $4bd7: $e0 $df
    rla                                           ; $4bd9: $17
    nop                                           ; $4bda: $00
    rrca                                          ; $4bdb: $0f
    db $e4                                        ; $4bdc: $e4
    and b                                         ; $4bdd: $a0
    db $fc                                        ; $4bde: $fc
    pop hl                                        ; $4bdf: $e1
    jr jr_078_4bc3                                ; $4be0: $18 $e1

    jp Jump_000_002b                              ; $4be2: $c3 $2b $00


    ld a, [hl+]                                   ; $4be5: $2a
    db $e3                                        ; $4be6: $e3
    pop de                                        ; $4be7: $d1
    add d                                         ; $4be8: $82
    ld a, [de]                                    ; $4be9: $1a
    ld [c], a                                     ; $4bea: $e2
    inc [hl]                                      ; $4beb: $34
    pop hl                                        ; $4bec: $e1
    rra                                           ; $4bed: $1f
    rst $38                                       ; $4bee: $ff
    cp a                                          ; $4bef: $bf
    cpl                                           ; $4bf0: $2f
    rst $18                                       ; $4bf1: $df
    ld [hl], a                                    ; $4bf2: $77
    adc a                                         ; $4bf3: $8f
    ld a, e                                       ; $4bf4: $7b
    add a                                         ; $4bf5: $87
    ld h, [hl]                                    ; $4bf6: $66
    pop bc                                        ; $4bf7: $c1
    ld a, [de]                                    ; $4bf8: $1a
    rra                                           ; $4bf9: $1f
    push hl                                       ; $4bfa: $e5
    inc d                                         ; $4bfb: $14
    db $eb                                        ; $4bfc: $eb
    ld [$94f7], sp                                ; $4bfd: $08 $f7 $94
    add [hl]                                      ; $4c00: $86
    pop hl                                        ; $4c01: $e1
    adc l                                         ; $4c02: $8d
    sub h                                         ; $4c03: $94
    adc b                                         ; $4c04: $88
    ld hl, sp+$2a                                 ; $4c05: $f8 $2a
    pop hl                                        ; $4c07: $e1
    or c                                          ; $4c08: $b1
    and e                                         ; $4c09: $a3
    db $fc                                        ; $4c0a: $fc
    pop bc                                        ; $4c0b: $c1
    pop af                                        ; $4c0c: $f1
    cp $f2                                        ; $4c0d: $fe $f2
    db $fc                                        ; $4c0f: $fc
    push hl                                       ; $4c10: $e5
    rst $20                                       ; $4c11: $e7
    ld a, [$fde2]                                 ; $4c12: $fa $e2 $fd
    jr nc, @-$7d                                  ; $4c15: $30 $81

    ld a, l                                       ; $4c17: $7d
    and c                                         ; $4c18: $a1
    ret nc                                        ; $4c19: $d0

    cpl                                           ; $4c1a: $2f
    ld l, d                                       ; $4c1b: $6a
    ld e, a                                       ; $4c1c: $5f
    dec d                                         ; $4c1d: $15
    db $f4                                        ; $4c1e: $f4
    dec bc                                        ; $4c1f: $0b
    xor d                                         ; $4c20: $aa
    ld d, l                                       ; $4c21: $55
    ld h, $c5                                     ; $4c22: $26 $c5
    rra                                           ; $4c24: $1f
    db $fc                                        ; $4c25: $fc
    jp nz, $81ff                                  ; $4c26: $c2 $ff $81

    ld a, a                                       ; $4c29: $7f
    sub b                                         ; $4c2a: $90
    db $e3                                        ; $4c2b: $e3
    add b                                         ; $4c2c: $80
    pop af                                        ; $4c2d: $f1
    ret nz                                        ; $4c2e: $c0

    pop af                                        ; $4c2f: $f1
    rst $38                                       ; $4c30: $ff
    ret z                                         ; $4c31: $c8

    ldh a, [$e0]                                  ; $4c32: $f0 $e0
    ld hl, sp-$1c                                 ; $4c34: $f8 $e4
    ld hl, sp-$10                                 ; $4c36: $f8 $f0
    db $fc                                        ; $4c38: $fc
    di                                            ; $4c39: $f3
    ld a, [$2cfc]                                 ; $4c3a: $fa $fc $2c
    pop hl                                        ; $4c3d: $e1
    db $e3                                        ; $4c3e: $e3
    ret nz                                        ; $4c3f: $c0

    inc bc                                        ; $4c40: $03
    rst $38                                       ; $4c41: $ff
    ld b, a                                       ; $4c42: $47
    ld a, a                                       ; $4c43: $7f
    rst $10                                       ; $4c44: $d7
    cp [hl]                                       ; $4c45: $be
    ld a, $d9                                     ; $4c46: $3e $d9
    pop af                                        ; $4c48: $f1
    ld h, b                                       ; $4c49: $60
    pop bc                                        ; $4c4a: $c1
    dec bc                                        ; $4c4b: $0b
    ret nz                                        ; $4c4c: $c0

    add b                                         ; $4c4d: $80
    xor e                                         ; $4c4e: $ab
    rst $38                                       ; $4c4f: $ff
    call nc, $e897                                ; $4c50: $d4 $97 $e8
    adc a                                         ; $4c53: $8f
    ldh a, [$df]                                  ; $4c54: $f0 $df
    jr nz, @+$01                                  ; $4c56: $20 $ff

    ld c, d                                       ; $4c58: $4a
    ld h, h                                       ; $4c59: $64
    jp nz, $fc05                                  ; $4c5a: $c2 $05 $fc

    ld [c], a                                     ; $4c5d: $e2
    ld [bc], a                                    ; $4c5e: $02
    db $fc                                        ; $4c5f: $fc
    ld [c], a                                     ; $4c60: $e2
    or c                                          ; $4c61: $b1
    call nz, $f207                                ; $4c62: $c4 $07 $f2
    ret nz                                        ; $4c65: $c0

    cp $ff                                        ; $4c66: $fe $ff
    ld h, l                                       ; $4c68: $65
    ldh [$f1], a                                  ; $4c69: $e0 $f1

jr_078_4c6b:
    add b                                         ; $4c6b: $80
    db $fc                                        ; $4c6c: $fc
    nop                                           ; $4c6d: $00
    cp $0e                                        ; $4c6e: $fe $0e
    rst $38                                       ; $4c70: $ff
    rst $38                                       ; $4c71: $ff
    jr nc, @+$01                                  ; $4c72: $30 $ff

    ld l, b                                       ; $4c74: $68
    rst $38                                       ; $4c75: $ff
    call nz, $ff01                                ; $4c76: $c4 $01 $ff
    rst $38                                       ; $4c79: $ff
    add c                                         ; $4c7a: $81
    rst $38                                       ; $4c7b: $ff
    ret nz                                        ; $4c7c: $c0

    ld a, a                                       ; $4c7d: $7f
    ret nz                                        ; $4c7e: $c0

    ld a, a                                       ; $4c7f: $7f
    ld h, b                                       ; $4c80: $60
    ccf                                           ; $4c81: $3f
    and $fe                                       ; $4c82: $e6 $fe
    pop hl                                        ; $4c84: $e1
    ldh [$3f], a                                  ; $4c85: $e0 $3f
    xor b                                         ; $4c87: $a8
    and l                                         ; $4c88: $a5
    ld c, h                                       ; $4c89: $4c
    pop bc                                        ; $4c8a: $c1
    rst $18                                       ; $4c8b: $df
    ccf                                           ; $4c8c: $3f
    rst $18                                       ; $4c8d: $df
    pop de                                        ; $4c8e: $d1
    ccf                                           ; $4c8f: $3f
    and e                                         ; $4c90: $a3
    ldh [$0a], a                                  ; $4c91: $e0 $0a
    add b                                         ; $4c93: $80
    ld b, $81                                     ; $4c94: $06 $81
    ldh [$2a], a                                  ; $4c96: $e0 $2a
    ret nz                                        ; $4c98: $c0

    ld a, [c]                                     ; $4c99: $f2
    db $fd                                        ; $4c9a: $fd
    ld e, h                                       ; $4c9b: $5c
    inc a                                         ; $4c9c: $3c
    pop hl                                        ; $4c9d: $e1
    db $fc                                        ; $4c9e: $fc
    jp hl                                         ; $4c9f: $e9


    ld hl, sp-$02                                 ; $4ca0: $f8 $fe
    db $fc                                        ; $4ca2: $fc
    cp $e4                                        ; $4ca3: $fe $e4

jr_078_4ca5:
    db $fd                                        ; $4ca5: $fd
    cp $e0                                        ; $4ca6: $fe $e0
    ld [hl], h                                    ; $4ca8: $74
    ld l, b                                       ; $4ca9: $68
    ret nz                                        ; $4caa: $c0

    add a                                         ; $4cab: $87
    ld h, e                                       ; $4cac: $63
    rrca                                          ; $4cad: $0f
    add c                                         ; $4cae: $81
    ld h, [hl]                                    ; $4caf: $66
    inc b                                         ; $4cb0: $04
    rst $38                                       ; $4cb1: $ff
    jr jr_078_4ca5                                ; $4cb2: $18 $f1

    and b                                         ; $4cb4: $a0

jr_078_4cb5:
    rst $38                                       ; $4cb5: $ff
    nop                                           ; $4cb6: $00
    ei                                            ; $4cb7: $fb
    inc b                                         ; $4cb8: $04
    rst $10                                       ; $4cb9: $d7
    jr z, jr_078_4c6b                             ; $4cba: $28 $af

    ld d, b                                       ; $4cbc: $50
    rst $38                                       ; $4cbd: $ff
    adc [hl]                                      ; $4cbe: $8e
    ld l, b                                       ; $4cbf: $68
    db $e4                                        ; $4cc0: $e4
    dec bc                                        ; $4cc1: $0b
    nop                                           ; $4cc2: $00
    dec d                                         ; $4cc3: $15
    cp h                                          ; $4cc4: $bc
    and d                                         ; $4cc5: $a2
    db $10                                        ; $4cc6: $10
    and c                                         ; $4cc7: $a1
    sub $e8                                       ; $4cc8: $d6 $e8
    inc bc                                        ; $4cca: $03
    ld a, a                                       ; $4ccb: $7f
    db $fc                                        ; $4ccc: $fc
    rlca                                          ; $4ccd: $07
    rst $38                                       ; $4cce: $ff
    add h                                         ; $4ccf: $84
    rst $38                                       ; $4cd0: $ff
    sbc b                                         ; $4cd1: $98
    rst $38                                       ; $4cd2: $ff
    jr c, jr_078_4cb5                             ; $4cd3: $38 $e0

    ld a, [hl]                                    ; $4cd5: $7e
    ld b, c                                       ; $4cd6: $41
    ld h, b                                       ; $4cd7: $60
    inc bc                                        ; $4cd8: $03
    db $fc                                        ; $4cd9: $fc
    rrca                                          ; $4cda: $0f
    ldh a, [rIE]                                  ; $4cdb: $f0 $ff
    ldh [$6c], a                                  ; $4cdd: $e0 $6c
    ldh [$8c], a                                  ; $4cdf: $e0 $8c
    ld h, b                                       ; $4ce1: $60
    pop hl                                        ; $4ce2: $e1
    and [hl]                                      ; $4ce3: $a6
    push bc                                       ; $4ce4: $c5
    rst $28                                       ; $4ce5: $ef
    rra                                           ; $4ce6: $1f
    cp $e1                                        ; $4ce7: $fe $e1
    ld h, h                                       ; $4ce9: $64
    add c                                         ; $4cea: $81
    db $fc                                        ; $4ceb: $fc
    db $e3                                        ; $4cec: $e3
    ei                                            ; $4ced: $fb
    ld sp, hl                                     ; $4cee: $f9
    db $fc                                        ; $4cef: $fc
    adc d                                         ; $4cf0: $8a
    ld [c], a                                     ; $4cf1: $e2
    ld a, $68                                     ; $4cf2: $3e $68
    ret nz                                        ; $4cf4: $c0

    ccf                                           ; $4cf5: $3f
    ldh [$1f], a                                  ; $4cf6: $e0 $1f
    ld [hl], b                                    ; $4cf8: $70
    rst $38                                       ; $4cf9: $ff
    adc a                                         ; $4cfa: $8f
    cp h                                          ; $4cfb: $bc
    jp $e1de                                      ; $4cfc: $c3 $de $e1


    rst $20                                       ; $4cff: $e7
    ld hl, sp-$07                                 ; $4d00: $f8 $f9
    sbc h                                         ; $4d02: $9c
    ld a, [hl+]                                   ; $4d03: $2a
    and h                                         ; $4d04: $a4
    or $45                                        ; $4d05: $f6 $45
    ldh [$1f], a                                  ; $4d07: $e0 $1f
    rlca                                          ; $4d09: $07
    halt                                          ; $4d0a: $76
    jp nz, $c531                                  ; $4d0b: $c2 $31 $c5

    ld a, a                                       ; $4d0e: $7f
    cp $30                                        ; $4d0f: $fe $30
    add b                                         ; $4d11: $80
    nop                                           ; $4d12: $00
    add b                                         ; $4d13: $80
    ld b, b                                       ; $4d14: $40
    add b                                         ; $4d15: $80
    and b                                         ; $4d16: $a0
    ret nz                                        ; $4d17: $c0

    ret nc                                        ; $4d18: $d0

    rst $08                                       ; $4d19: $cf
    ldh [$e4], a                                  ; $4d1a: $e0 $e4
    ld hl, sp-$08                                 ; $4d1c: $f8 $f8
    xor b                                         ; $4d1e: $a8
    and c                                         ; $4d1f: $a1
    db $d3                                        ; $4d20: $d3
    ld c, b                                       ; $4d21: $48
    ccf                                           ; $4d22: $3f
    ret nz                                        ; $4d23: $c0

    ld a, e                                       ; $4d24: $7b
    rst $28                                       ; $4d25: $ef
    ldh a, [rNR10]                                ; $4d26: $f0 $10
    ld l, c                                       ; $4d28: $69
    ld a, [$d405]                                 ; $4d29: $fa $05 $d4
    dec hl                                        ; $4d2c: $2b
    ld hl, sp-$1d                                 ; $4d2d: $f8 $e3
    cp a                                          ; $4d2f: $bf
    push af                                       ; $4d30: $f5
    ld a, [bc]                                    ; $4d31: $0a
    ld [$5015], a                                 ; $4d32: $ea $15 $50
    xor a                                         ; $4d35: $af
    and [hl]                                      ; $4d36: $a6
    ld b, c                                       ; $4d37: $41
    ld e, a                                       ; $4d38: $5f
    ld hl, sp-$38                                 ; $4d39: $f8 $c8
    ld h, b                                       ; $4d3b: $60
    sbc a                                         ; $4d3c: $9f
    ld b, h                                       ; $4d3d: $44
    ld d, b                                       ; $4d3e: $50
    ldh [$f8], a                                  ; $4d3f: $e0 $f8
    ccf                                           ; $4d41: $3f
    ld hl, sp+$0f                                 ; $4d42: $f8 $0f
    ldh a, [$d1]                                  ; $4d44: $f0 $d1
    rra                                           ; $4d46: $1f
    ld c, [hl]                                    ; $4d47: $4e
    pop hl                                        ; $4d48: $e1
    or $af                                        ; $4d49: $f6 $af
    ld l, [hl]                                    ; $4d4b: $6e

Jump_078_4d4c:
    ld b, c                                       ; $4d4c: $41
    ld bc, $48c0                                  ; $4d4d: $01 $c0 $48
    db $fc                                        ; $4d50: $fc
    inc bc                                        ; $4d51: $03
    rla                                           ; $4d52: $17
    db $e3                                        ; $4d53: $e3
    rra                                           ; $4d54: $1f
    rra                                           ; $4d55: $1f
    jr nc, @-$1c                                  ; $4d56: $30 $e2

    rst $18                                       ; $4d58: $df
    xor d                                         ; $4d59: $aa
    and b                                         ; $4d5a: $a0
    ld [hl], $85                                  ; $4d5b: $36 $85
    ld b, b                                       ; $4d5d: $40
    add l                                         ; $4d5e: $85
    pop af                                        ; $4d5f: $f1
    db $fc                                        ; $4d60: $fc
    jr nc, jr_078_4da3                            ; $4d61: $30 $40

    jr z, jr_078_4da6                             ; $4d63: $28 $41

    jr c, jr_078_4da8                             ; $4d65: $38 $41

    dec b                                         ; $4d67: $05
    ei                                            ; $4d68: $fb
    dec bc                                        ; $4d69: $0b
    rst $30                                       ; $4d6a: $f7
    ccf                                           ; $4d6b: $3f
    scf                                           ; $4d6c: $37
    rst $08                                       ; $4d6d: $cf
    ld l, a                                       ; $4d6e: $6f
    sbc a                                         ; $4d6f: $9f
    rst $18                                       ; $4d70: $df
    ccf                                           ; $4d71: $3f
    ld h, c                                       ; $4d72: $61
    jp nz, Jump_000_28fd                          ; $4d73: $c2 $fd $28

    ld a, [$47d6]                                 ; $4d76: $fa $d6 $47
    db $fc                                        ; $4d79: $fc
    adc h                                         ; $4d7a: $8c
    add b                                         ; $4d7b: $80
    adc d                                         ; $4d7c: $8a
    push af                                       ; $4d7d: $f5
    ld h, l                                       ; $4d7e: $65
    sbc d                                         ; $4d7f: $9a
    ret nz                                        ; $4d80: $c0

    rst $18                                       ; $4d81: $df
    rst $38                                       ; $4d82: $ff
    add b                                         ; $4d83: $80
    jp $c080                                      ; $4d84: $c3 $80 $c0


    ld e, e                                       ; $4d87: $5b
    ld h, c                                       ; $4d88: $61
    add b                                         ; $4d89: $80
    ld b, b                                       ; $4d8a: $40
    rst $30                                       ; $4d8b: $f7
    ret nz                                        ; $4d8c: $c0

    jr nz, @-$3e                                  ; $4d8d: $20 $c0

    or [hl]                                       ; $4d8f: $b6
    pop bc                                        ; $4d90: $c1
    rst $38                                       ; $4d91: $ff
    ld a, a                                       ; $4d92: $7f
    ld [hl], b                                    ; $4d93: $70
    rra                                           ; $4d94: $1f
    ld c, a                                       ; $4d95: $4f
    jr @+$09                                      ; $4d96: $18 $07

    ld b, $01                                     ; $4d98: $06 $01
    ld a, l                                       ; $4d9a: $7d
    ld b, c                                       ; $4d9b: $41
    jp hl                                         ; $4d9c: $e9


    ld hl, $aba0                                  ; $4d9d: $21 $a0 $ab
    ld b, a                                       ; $4da0: $47
    rst $38                                       ; $4da1: $ff
    ccf                                           ; $4da2: $3f

jr_078_4da3:
    jr nz, @+$01                                  ; $4da3: $20 $ff

    rrca                                          ; $4da5: $0f

jr_078_4da6:
    ld sp, hl                                     ; $4da6: $f9
    add hl, bc                                    ; $4da7: $09

jr_078_4da8:
    ld hl, sp+$08                                 ; $4da8: $f8 $08
    dec sp                                        ; $4daa: $3b
    db $fc                                        ; $4dab: $fc
    inc b                                         ; $4dac: $04
    cp $e1                                        ; $4dad: $fe $e1
    cp $02                                        ; $4daf: $fe $02
    cp $cf                                        ; $4db1: $fe $cf
    and b                                         ; $4db3: $a0
    ldh [rNR41], a                                ; $4db4: $e0 $20
    rst $38                                       ; $4db6: $ff
    ld a, a                                       ; $4db7: $7f
    rra                                           ; $4db8: $1f
    ccf                                           ; $4db9: $3f
    rrca                                          ; $4dba: $0f
    rra                                           ; $4dbb: $1f
    rlca                                          ; $4dbc: $07
    rrca                                          ; $4dbd: $0f
    inc bc                                        ; $4dbe: $03
    and a                                         ; $4dbf: $a7
    rlca                                          ; $4dc0: $07
    nop                                           ; $4dc1: $00
    inc bc                                        ; $4dc2: $03
    ld c, [hl]                                    ; $4dc3: $4e
    ldh [$8d], a                                  ; $4dc4: $e0 $8d
    jr z, @+$21                                   ; $4dc6: $28 $1f

    adc b                                         ; $4dc8: $88
    and $f8                                       ; $4dc9: $e6 $f8
    rst $38                                       ; $4dcb: $ff
    db $fc                                        ; $4dcc: $fc
    ldh a, [$f9]                                  ; $4dcd: $f0 $f9
    pop bc                                        ; $4dcf: $c1
    di                                            ; $4dd0: $f3
    add e                                         ; $4dd1: $83
    rst $08                                       ; $4dd2: $cf
    ldh [rIE], a                                  ; $4dd3: $e0 $ff
    rst $30                                       ; $4dd5: $f7
    add e                                         ; $4dd6: $83
    rst $20                                       ; $4dd7: $e7
    rlca                                          ; $4dd8: $07
    sbc a                                         ; $4dd9: $9f
    rra                                           ; $4dda: $1f
    ccf                                           ; $4ddb: $3f
    ccf                                           ; $4ddc: $3f

jr_078_4ddd:
    db $fc                                        ; $4ddd: $fc
    ld a, $e6                                     ; $4dde: $3e $e6
    ret nc                                        ; $4de0: $d0

    ld b, a                                       ; $4de1: $47
    db $fd                                        ; $4de2: $fd
    cp $fa                                        ; $4de3: $fe $fa
    db $fd                                        ; $4de5: $fd
    ld hl, sp-$01                                 ; $4de6: $f8 $ff
    rst $38                                       ; $4de8: $ff
    db $e3                                        ; $4de9: $e3
    db $fc                                        ; $4dea: $fc
    rst $10                                       ; $4deb: $d7
    add sp, -$51                                  ; $4dec: $e8 $af
    ret nc                                        ; $4dee: $d0

    ld e, a                                       ; $4def: $5f
    and b                                         ; $4df0: $a0
    res 7, a                                      ; $4df1: $cb $bf
    ld b, b                                       ; $4df3: $40
    add h                                         ; $4df4: $84
    add c                                         ; $4df5: $81
    dec b                                         ; $4df6: $05
    ld l, c                                       ; $4df7: $69
    add d                                         ; $4df8: $82
    ld h, d                                       ; $4df9: $62
    daa                                           ; $4dfa: $27
    jr nz, jr_078_4ddd                            ; $4dfb: $20 $e0

    rst $38                                       ; $4dfd: $ff
    sub b                                         ; $4dfe: $90
    ldh a, [rNR10]                                ; $4dff: $f0 $10
    ldh a, [$90]                                  ; $4e01: $f0 $90
    ldh a, [rOBP1]                                ; $4e03: $f0 $49
    ld sp, hl                                     ; $4e05: $f9
    rst $20                                       ; $4e06: $e7
    adc d                                         ; $4e07: $8a
    ei                                            ; $4e08: $fb
    ld b, h                                       ; $4e09: $44
    ld c, h                                       ; $4e0a: $4c
    ld hl, $200f                                  ; $4e0b: $21 $0f $20
    rra                                           ; $4e0e: $1f
    rra                                           ; $4e0f: $1f
    ld a, d                                       ; $4e10: $7a
    rst $28                                       ; $4e11: $ef
    ld a, a                                       ; $4e12: $7f
    push af                                       ; $4e13: $f5
    rst $38                                       ; $4e14: $ff
    xor d                                         ; $4e15: $aa
    cp $62                                        ; $4e16: $fe $62
    rra                                           ; $4e18: $1f
    db $10                                        ; $4e19: $10
    rrca                                          ; $4e1a: $0f
    rst $38                                       ; $4e1b: $ff
    ld [$0407], sp                                ; $4e1c: $08 $07 $04
    ei                                            ; $4e1f: $fb
    ld a, [$ff37]                                 ; $4e20: $fa $37 $ff
    sbc c                                         ; $4e23: $99
    sbc a                                         ; $4e24: $9f
    rst $38                                       ; $4e25: $ff
    inc c                                         ; $4e26: $0c
    rst $38                                       ; $4e27: $ff
    ld b, $ff                                     ; $4e28: $06 $ff
    ld e, h                                       ; $4e2a: $5c
    pop hl                                        ; $4e2b: $e1
    ld e, b                                       ; $4e2c: $58
    pop hl                                        ; $4e2d: $e1
    db $fd                                        ; $4e2e: $fd
    ld a, a                                       ; $4e2f: $7f
    rlca                                          ; $4e30: $07
    db $fd                                        ; $4e31: $fd
    add a                                         ; $4e32: $87
    ei                                            ; $4e33: $fb
    rst $08                                       ; $4e34: $cf
    ld a, e                                       ; $4e35: $7b
    rst $38                                       ; $4e36: $ff
    ld a, [hl+]                                   ; $4e37: $2a
    db $e3                                        ; $4e38: $e3
    rst $38                                       ; $4e39: $ff
    jr c, jr_078_4e74                             ; $4e3a: $38 $38

    rst $38                                       ; $4e3c: $ff
    rst $38                                       ; $4e3d: $ff
    db $fd                                        ; $4e3e: $fd
    rst $38                                       ; $4e3f: $ff
    ld [$ffff], a                                 ; $4e40: $ea $ff $ff
    ld d, b                                       ; $4e43: $50
    rst $38                                       ; $4e44: $ff
    ld h, e                                       ; $4e45: $63
    sbc a                                         ; $4e46: $9f
    ld a, c                                       ; $4e47: $79
    add a                                         ; $4e48: $87
    ld a, $41                                     ; $4e49: $3e $41
    ccf                                           ; $4e4b: $3f
    rra                                           ; $4e4c: $1f
    jr nz, @+$11                                  ; $4e4d: $20 $0f

    db $10                                        ; $4e4f: $10
    rrca                                          ; $4e50: $0f
    ret nc                                        ; $4e51: $d0

    ldh a, [$81]                                  ; $4e52: $f0 $81
    ret c                                         ; $4e54: $d8

    ld b, e                                       ; $4e55: $43
    ld a, [hl]                                    ; $4e56: $7e
    and d                                         ; $4e57: $a2
    ld hl, $1fe7                                  ; $4e58: $21 $e7 $1f
    ld a, [c]                                     ; $4e5b: $f2
    rrca                                          ; $4e5c: $0f
    ld hl, sp+$06                                 ; $4e5d: $f8 $06
    and [hl]                                      ; $4e5f: $a6
    ret nz                                        ; $4e60: $c0

    rst $38                                       ; $4e61: $ff
    cp $f0                                        ; $4e62: $fe $f0
    db $fc                                        ; $4e64: $fc
    ldh [$f1], a                                  ; $4e65: $e0 $f1
    pop bc                                        ; $4e67: $c1
    db $e3                                        ; $4e68: $e3
    inc bc                                        ; $4e69: $03
    ccf                                           ; $4e6a: $3f
    rst $08                                       ; $4e6b: $cf
    rrca                                          ; $4e6c: $0f
    rra                                           ; $4e6d: $1f
    rra                                           ; $4e6e: $1f
    ld a, a                                       ; $4e6f: $7f
    rrca                                          ; $4e70: $0f
    ld b, h                                       ; $4e71: $44
    pop hl                                        ; $4e72: $e1
    xor e                                         ; $4e73: $ab

jr_078_4e74:
    ld [$f4ff], sp                                ; $4e74: $08 $ff $f4
    ei                                            ; $4e77: $fb
    ld [$d5f5], a                                 ; $4e78: $ea $f5 $d5
    ld [$d4ab], a                                 ; $4e7b: $ea $ab $d4
    rst $38                                       ; $4e7e: $ff
    ld e, l                                       ; $4e7f: $5d
    and d                                         ; $4e80: $a2
    cp e                                          ; $4e81: $bb
    ld b, h                                       ; $4e82: $44
    ld [hl], a                                    ; $4e83: $77
    adc b                                         ; $4e84: $88
    rst $38                                       ; $4e85: $ff
    nop                                           ; $4e86: $00
    ld [hl], a                                    ; $4e87: $77
    scf                                           ; $4e88: $37
    rst $38                                       ; $4e89: $ff
    adc d                                         ; $4e8a: $8a
    dec a                                         ; $4e8b: $3d
    and b                                         ; $4e8c: $a0
    ld [$10ff], sp                                ; $4e8d: $08 $ff $10
    cp h                                          ; $4e90: $bc
    ld [$18fd], sp                                ; $4e91: $08 $fd $18

jr_078_4e94:
    halt                                          ; $4e94: $76
    ldh [rTAC], a                                 ; $4e95: $e0 $07
    rst $38                                       ; $4e97: $ff
    ld b, $fe                                     ; $4e98: $06 $fe
    jr jr_078_4e94                                ; $4e9a: $18 $f8

    rst $38                                       ; $4e9c: $ff
    inc hl                                        ; $4e9d: $23
    db $e3                                        ; $4e9e: $e3
    ld [$31f8], sp                                ; $4e9f: $08 $f8 $31
    pop af                                        ; $4ea2: $f1
    ld b, [hl]                                    ; $4ea3: $46
    rst $00                                       ; $4ea4: $c7
    rst $38                                       ; $4ea5: $ff
    adc b                                         ; $4ea6: $88
    adc a                                         ; $4ea7: $8f
    jr nc, jr_078_4ee9                            ; $4ea8: $30 $3f

    ld a, b                                       ; $4eaa: $78
    ld a, a                                       ; $4eab: $7f
    ld hl, sp-$01                                 ; $4eac: $f8 $ff
    jp hl                                         ; $4eae: $e9


    db $f4                                        ; $4eaf: $f4
    pop af                                        ; $4eb0: $f1
    ld b, h                                       ; $4eb1: $44
    cp [hl]                                       ; $4eb2: $be
    inc hl                                        ; $4eb3: $23
    di                                            ; $4eb4: $f3
    jr nc, @+$22                                  ; $4eb5: $30 $20

    push af                                       ; $4eb7: $f5
    ld a, [$7fef]                                 ; $4eb8: $fa $ef $7f
    ldh a, [$df]                                  ; $4ebb: $f0 $df
    ldh [$bf], a                                  ; $4ebd: $e0 $bf
    ret nz                                        ; $4ebf: $c0

    and b                                         ; $4ec0: $a0
    rst $18                                       ; $4ec1: $df
    and b                                         ; $4ec2: $a0
    ld c, b                                       ; $4ec3: $48
    sbc [hl]                                      ; $4ec4: $9e
    ld h, e                                       ; $4ec5: $63
    nop                                           ; $4ec6: $00
    ld a, a                                       ; $4ec7: $7f
    add b                                         ; $4ec8: $80
    rrca                                          ; $4ec9: $0f
    ldh a, [rNR41]                                ; $4eca: $f0 $20
    ld b, c                                       ; $4ecc: $41
    ld h, h                                       ; $4ecd: $64
    add hl, bc                                    ; $4ece: $09
    db $10                                        ; $4ecf: $10
    jp nc, $e098                                  ; $4ed0: $d2 $98 $e0

    ld [$0048], sp                                ; $4ed3: $08 $48 $00
    ld a, [$18e1]                                 ; $4ed6: $fa $e1 $18
    ret                                           ; $4ed9: $c9


    add b                                         ; $4eda: $80
    db $10                                        ; $4edb: $10
    rst $38                                       ; $4edc: $ff
    and l                                         ; $4edd: $a5
    or b                                          ; $4ede: $b0
    pop hl                                        ; $4edf: $e1
    adc d                                         ; $4ee0: $8a
    inc c                                         ; $4ee1: $0c
    ld [c], a                                     ; $4ee2: $e2
    ld [c], a                                     ; $4ee3: $e2
    ld [hl-], a                                   ; $4ee4: $32
    add hl, bc                                    ; $4ee5: $09
    inc bc                                        ; $4ee6: $03
    xor h                                         ; $4ee7: $ac
    and d                                         ; $4ee8: $a2

jr_078_4ee9:
    ld [bc], a                                    ; $4ee9: $02
    rst $38                                       ; $4eea: $ff
    cp $0c                                        ; $4eeb: $fe $0c
    db $fc                                        ; $4eed: $fc
    ld de, $62f1                                  ; $4eee: $11 $f1 $62
    db $e3                                        ; $4ef1: $e3
    add h                                         ; $4ef2: $84
    rst $38                                       ; $4ef3: $ff
    add a                                         ; $4ef4: $87
    add hl, de                                    ; $4ef5: $19
    rra                                           ; $4ef6: $1f
    call nz, $1cc7                                ; $4ef7: $c4 $c7 $1c
    rra                                           ; $4efa: $1f
    ld a, $cf                                     ; $4efb: $3e $cf
    ccf                                           ; $4efd: $3f
    ld e, a                                       ; $4efe: $5f
    ld a, a                                       ; $4eff: $7f
    adc a                                         ; $4f00: $8f
    sub b                                         ; $4f01: $90
    ld h, h                                       ; $4f02: $64
    ld l, h                                       ; $4f03: $6c
    pop hl                                        ; $4f04: $e1
    ld a, b                                       ; $4f05: $78
    rst $38                                       ; $4f06: $ff
    rst $38                                       ; $4f07: $ff
    ld a, h                                       ; $4f08: $7c
    rst $38                                       ; $4f09: $ff
    ld a, [hl-]                                   ; $4f0a: $3a
    rst $38                                       ; $4f0b: $ff
    sbc h                                         ; $4f0c: $9c
    rst $38                                       ; $4f0d: $ff
    sbc $ff                                       ; $4f0e: $de $ff
    db $fd                                        ; $4f10: $fd
    rst $08                                       ; $4f11: $cf
    xor b                                         ; $4f12: $a8
    ld b, d                                       ; $4f13: $42
    ld [hl+], a                                   ; $4f14: $22
    rst $38                                       ; $4f15: $ff
    ld de, $28ff                                  ; $4f16: $11 $ff $28
    rst $38                                       ; $4f19: $ff
    push bc                                       ; $4f1a: $c5
    ld d, c                                       ; $4f1b: $51
    db $fc                                        ; $4f1c: $fc
    ldh [rSVBK], a                                ; $4f1d: $e0 $70
    ld [de], a                                    ; $4f1f: $12
    adc d                                         ; $4f20: $8a
    and h                                         ; $4f21: $a4
    add c                                         ; $4f22: $81
    ld e, d                                       ; $4f23: $5a
    and d                                         ; $4f24: $a2
    cp $82                                        ; $4f25: $fe $82
    rst $38                                       ; $4f27: $ff
    db $fc                                        ; $4f28: $fc
    add h                                         ; $4f29: $84
    ld hl, sp-$40                                 ; $4f2a: $f8 $c0
    ld hl, sp-$18                                 ; $4f2c: $f8 $e8
    ldh a, [$e0]                                  ; $4f2e: $f0 $e0
    xor a                                         ; $4f30: $af
    ldh a, [rOBP0]                                ; $4f31: $f0 $48
    add a                                         ; $4f33: $87
    add [hl]                                      ; $4f34: $86
    inc e                                         ; $4f35: $1c
    jr nz, jr_078_4f3d                            ; $4f36: $20 $05

    jr z, jr_078_4f3a                             ; $4f38: $28 $00

jr_078_4f3a:
    dec b                                         ; $4f3a: $05
    ld a, [c]                                     ; $4f3b: $f2
    ld a, [hl-]                                   ; $4f3c: $3a

jr_078_4f3d:
    nop                                           ; $4f3d: $00
    rlca                                          ; $4f3e: $07
    ccf                                           ; $4f3f: $3f
    nop                                           ; $4f40: $00
    jr nz, jr_078_4f85                            ; $4f41: $20 $42

    ld a, a                                       ; $4f43: $7f
    ldh a, [$3f]                                  ; $4f44: $f0 $3f
    ld hl, sp-$41                                 ; $4f46: $f8 $bf
    rra                                           ; $4f48: $1f
    db $fc                                        ; $4f49: $fc
    rrca                                          ; $4f4a: $0f
    cp $07                                        ; $4f4b: $fe $07
    inc d                                         ; $4f4d: $14
    db $e4                                        ; $4f4e: $e4
    ret nz                                        ; $4f4f: $c0

    inc b                                         ; $4f50: $04
    xor e                                         ; $4f51: $ab
    rst $38                                       ; $4f52: $ff
    ld a, [bc]                                    ; $4f53: $0a
    ld c, [hl]                                    ; $4f54: $4e
    ld b, b                                       ; $4f55: $40
    dec bc                                        ; $4f56: $0b
    ld c, d                                       ; $4f57: $4a
    ld b, b                                       ; $4f58: $40
    adc e                                         ; $4f59: $8b
    ld c, h                                       ; $4f5a: $4c
    ld [c], a                                     ; $4f5b: $e2
    ld [hl], d                                    ; $4f5c: $72
    rst $38                                       ; $4f5d: $ff
    rst $38                                       ; $4f5e: $ff

jr_078_4f5f:
    and h                                         ; $4f5f: $a4
    rst $38                                       ; $4f60: $ff
    ld h, d                                       ; $4f61: $62
    rst $38                                       ; $4f62: $ff
    db $e4                                        ; $4f63: $e4
    rst $38                                       ; $4f64: $ff
    ld l, d                                       ; $4f65: $6a
    cp e                                          ; $4f66: $bb
    rst $38                                       ; $4f67: $ff
    call nz, $e04c                                ; $4f68: $c4 $4c $e0
    jr @+$01                                      ; $4f6b: $18 $ff

    inc d                                         ; $4f6d: $14
    db $fd                                        ; $4f6e: $fd
    ld h, b                                       ; $4f6f: $60
    dec [hl]                                      ; $4f70: $35
    rst $38                                       ; $4f71: $ff
    rst $38                                       ; $4f72: $ff
    ld a, [hl-]                                   ; $4f73: $3a
    cp $7c                                        ; $4f74: $fe $7c
    db $fc                                        ; $4f76: $fc
    ld [hl], b                                    ; $4f77: $70
    ldh a, [rDIV]                                 ; $4f78: $f0 $04
    db $fd                                        ; $4f7a: $fd
    db $fc                                        ; $4f7b: $fc
    adc $c1                                       ; $4f7c: $ce $c1
    ld b, d                                       ; $4f7e: $42
    jp $8f8d                                      ; $4f7f: $c3 $8d $8f


    ld [de], a                                    ; $4f82: $12
    rra                                           ; $4f83: $1f
    ld a, a                                       ; $4f84: $7f

jr_078_4f85:
    ld h, l                                       ; $4f85: $65
    ld a, a                                       ; $4f86: $7f
    add a                                         ; $4f87: $87
    rst $38                                       ; $4f88: $ff
    ld [hl+], a                                   ; $4f89: $22
    ccf                                           ; $4f8a: $3f
    pop bc                                        ; $4f8b: $c1
    ld a, $e1                                     ; $4f8c: $3e $e1
    ccf                                           ; $4f8e: $3f
    rst $38                                       ; $4f8f: $ff
    ld b, c                                       ; $4f90: $41
    rst $38                                       ; $4f91: $ff
    add e                                         ; $4f92: $83
    rst $38                                       ; $4f93: $ff
    ld b, l                                       ; $4f94: $45
    db $fc                                        ; $4f95: $fc
    ldh [$fa], a                                  ; $4f96: $e0 $fa
    pop hl                                        ; $4f98: $e1
    rst $30                                       ; $4f99: $f7
    and e                                         ; $4f9a: $a3
    rst $38                                       ; $4f9b: $ff
    pop de                                        ; $4f9c: $d1
    sub h                                         ; $4f9d: $94
    ld h, b                                       ; $4f9e: $60
    pop de                                        ; $4f9f: $d1
    rst $38                                       ; $4fa0: $ff
    add sp, -$01                                  ; $4fa1: $e8 $ff
    rst $10                                       ; $4fa3: $d7
    push af                                       ; $4fa4: $f5
    rst $38                                       ; $4fa5: $ff
    rst $28                                       ; $4fa6: $ef
    cp $e0                                        ; $4fa7: $fe $e0
    rst $30                                       ; $4fa9: $f7
    cp $e2                                        ; $4faa: $fe $e2
    ld a, e                                       ; $4fac: $7b
    rst $38                                       ; $4fad: $ff
    push af                                       ; $4fae: $f5
    ei                                            ; $4faf: $fb
    db $fc                                        ; $4fb0: $fc
    ldh [$e8], a                                  ; $4fb1: $e0 $e8
    ld [$e080], a                                 ; $4fb3: $ea $80 $e0
    rst $38                                       ; $4fb6: $ff
    ret nc                                        ; $4fb7: $d0

    rst $38                                       ; $4fb8: $ff
    rst $38                                       ; $4fb9: $ff
    pop hl                                        ; $4fba: $e1
    rst $38                                       ; $4fbb: $ff
    db $d3                                        ; $4fbc: $d3
    rst $38                                       ; $4fbd: $ff
    rst $20                                       ; $4fbe: $e7
    rst $38                                       ; $4fbf: $ff
    rst $18                                       ; $4fc0: $df
    db $fc                                        ; $4fc1: $fc
    ccf                                           ; $4fc2: $3f
    rst $28                                       ; $4fc3: $ef
    rra                                           ; $4fc4: $1f
    rst $08                                       ; $4fc5: $cf
    ccf                                           ; $4fc6: $3f
    sbc a                                         ; $4fc7: $9f
    ld a, a                                       ; $4fc8: $7f
    ld [hl], $81                                  ; $4fc9: $36 $81
    xor $03                                       ; $4fcb: $ee $03
    cp $82                                        ; $4fcd: $fe $82
    xor c                                         ; $4fcf: $a9
    db $fc                                        ; $4fd0: $fc
    cp $fa                                        ; $4fd1: $fe $fa
    db $fc                                        ; $4fd3: $fc
    ret nc                                        ; $4fd4: $d0

    ldh [$c0], a                                  ; $4fd5: $e0 $c0
    sbc a                                         ; $4fd7: $9f
    ldh [$a0], a                                  ; $4fd8: $e0 $a0
    ret nz                                        ; $4fda: $c0

    ld b, b                                       ; $4fdb: $40
    add b                                         ; $4fdc: $80
    jr jr_078_4f5f                                ; $4fdd: $18 $80

    cp $e2                                        ; $4fdf: $fe $e2
    ld a, [hl+]                                   ; $4fe1: $2a
    rst $28                                       ; $4fe2: $ef
    nop                                           ; $4fe3: $00
    ld d, a                                       ; $4fe4: $57
    nop                                           ; $4fe5: $00
    xor e                                         ; $4fe6: $ab
    ld c, [hl]                                    ; $4fe7: $4e
    add b                                         ; $4fe8: $80
    ccf                                           ; $4fe9: $3f
    nop                                           ; $4fea: $00
    rra                                           ; $4feb: $1f
    ld a, [c]                                     ; $4fec: $f2
    ld [hl], $22                                  ; $4fed: $36 $22
    db $fc                                        ; $4fef: $fc
    and h                                         ; $4ff0: $a4
    ld [bc], a                                    ; $4ff1: $02
    ld d, c                                       ; $4ff2: $51
    ld b, e                                       ; $4ff3: $43
    cp $01                                        ; $4ff4: $fe $01
    db $fc                                        ; $4ff6: $fc
    inc bc                                        ; $4ff7: $03
    ld a, a                                       ; $4ff8: $7f
    rla                                           ; $4ff9: $17
    rst $38                                       ; $4ffa: $ff
    xor e                                         ; $4ffb: $ab
    rst $38                                       ; $4ffc: $ff
    rst $10                                       ; $4ffd: $d7
    rst $38                                       ; $4ffe: $ff
    cp a                                          ; $4fff: $bf
    db $fc                                        ; $5000: $fc
    ldh [$85], a                                  ; $5001: $e0 $85
    rst $38                                       ; $5003: $ff
    db $fc                                        ; $5004: $fc
    ld [c], a                                     ; $5005: $e2
    ret z                                         ; $5006: $c8

    sub h                                         ; $5007: $94
    ldh [$8e], a                                  ; $5008: $e0 $8e
    pop hl                                        ; $500a: $e1
    xor b                                         ; $500b: $a8
    add b                                         ; $500c: $80
    ld a, [hl-]                                   ; $500d: $3a
    adc b                                         ; $500e: $88
    ld b, $ff                                     ; $500f: $06 $ff
    cp $08                                        ; $5011: $fe $08
    ld hl, sp+$30                                 ; $5013: $f8 $30
    ldh a, [rSCX]                                 ; $5015: $f0 $43
    jp $ff85                                      ; $5017: $c3 $85 $ff


    add a                                         ; $501a: $87
    pop hl                                        ; $501b: $e1
    pop hl                                        ; $501c: $e1
    add $c7                                       ; $501d: $c6 $c7
    ld [$140f], sp                                ; $501f: $08 $0f $14
    xor a                                         ; $5022: $af
    rra                                           ; $5023: $1f
    ld a, h                                       ; $5024: $7c
    ld a, a                                       ; $5025: $7f
    ld a, [$804c]                                 ; $5026: $fa $4c $80
    ld a, [$2046]                                 ; $5029: $fa $46 $20
    ld c, $aa                                     ; $502c: $0e $aa
    db $fc                                        ; $502e: $fc
    ld [c], a                                     ; $502f: $e2
    rla                                           ; $5030: $17
    sbc d                                         ; $5031: $9a
    ld h, d                                       ; $5032: $62
    cpl                                           ; $5033: $2f
    ld h, c                                       ; $5034: $61
    ld b, b                                       ; $5035: $40
    and d                                         ; $5036: $a2
    ld e, l                                       ; $5037: $5d
    ld b, b                                       ; $5038: $40
    and b                                         ; $5039: $a0
    xor d                                         ; $503a: $aa
    ld l, $e0                                     ; $503b: $2e $e0
    and b                                         ; $503d: $a0
    ld c, d                                       ; $503e: $4a
    ldh [$a8], a                                  ; $503f: $e0 $a8

jr_078_5041:
    ld [bc], a                                    ; $5041: $02
    jr nz, jr_078_5041                            ; $5042: $20 $fd

    jp c, $ffe0                                   ; $5044: $da $e0 $ff

    xor e                                         ; $5047: $ab
    rst $38                                       ; $5048: $ff
    ld a, [hl]                                    ; $5049: $7e
    ld d, d                                       ; $504a: $52
    db $e4                                        ; $504b: $e4
    cp c                                          ; $504c: $b9
    ld c, b                                       ; $504d: $48
    and b                                         ; $504e: $a0
    cp l                                          ; $504f: $bd
    ld e, b                                       ; $5050: $58
    nop                                           ; $5051: $00
    cp [hl]                                       ; $5052: $be
    adc $fc                                       ; $5053: $ce $fc
    ld [c], a                                     ; $5055: $e2
    rst $38                                       ; $5056: $ff
    rst $38                                       ; $5057: $ff
    cp a                                          ; $5058: $bf
    sub e                                         ; $5059: $93
    push hl                                       ; $505a: $e5
    cp $e2                                        ; $505b: $fe $e2
    ld a, a                                       ; $505d: $7f
    ret nz                                        ; $505e: $c0

    db $ec                                        ; $505f: $ec
    or [hl]                                       ; $5060: $b6
    and e                                         ; $5061: $a3

jr_078_5062:
    jr jr_078_50c4                                ; $5062: $18 $60

    rlca                                          ; $5064: $07
    db $fd                                        ; $5065: $fd
    ld d, [hl]                                    ; $5066: $56
    ld [c], a                                     ; $5067: $e2
    ld hl, sp-$04                                 ; $5068: $f8 $fc
    ld hl, sp+$0f                                 ; $506a: $f8 $0f
    db $fc                                        ; $506c: $fc
    db $f4                                        ; $506d: $f4
    ld hl, sp-$10                                 ; $506e: $f8 $f0
    cp $e6                                        ; $5070: $fe $e6
    add hl, hl                                    ; $5072: $29
    db $e4                                        ; $5073: $e4
    dec h                                         ; $5074: $25
    add b                                         ; $5075: $80
    ld hl, $9581                                  ; $5076: $21 $81 $95
    ld bc, $2246                                  ; $5079: $01 $46 $22
    dec bc                                        ; $507c: $0b
    inc e                                         ; $507d: $1c
    ldh [$2f], a                                  ; $507e: $e0 $2f
    jr jr_078_5062                                ; $5080: $18 $e0

    ld h, [hl]                                    ; $5082: $66
    ld h, c                                       ; $5083: $61
    ld hl, sp-$03                                 ; $5084: $f8 $fd
    rlca                                          ; $5086: $07
    cp $e1                                        ; $5087: $fe $e1
    ldh a, [rIF]                                  ; $5089: $f0 $0f
    ldh a, [rIF]                                  ; $508b: $f0 $0f
    or $0f                                        ; $508d: $f6 $0f
    db $fd                                        ; $508f: $fd
    rst $20                                       ; $5090: $e7
    add $40                                       ; $5091: $c6 $40
    ld hl, $01de                                  ; $5093: $21 $de $01
    cp $03                                        ; $5096: $fe $03
    db $fc                                        ; $5098: $fc
    cp $97                                        ; $5099: $fe $97
    ld b, b                                       ; $509b: $40
    ld hl, sp+$06                                 ; $509c: $f8 $06
    ld sp, hl                                     ; $509e: $f9
    adc h                                         ; $509f: $8c
    di                                            ; $50a0: $f3
    or b                                          ; $50a1: $b0

jr_078_50a2:
    rst $08                                       ; $50a2: $cf
    rst $38                                       ; $50a3: $ff
    inc bc                                        ; $50a4: $03
    rst $38                                       ; $50a5: $ff
    inc b                                         ; $50a6: $04
    db $fc                                        ; $50a7: $fc
    jr jr_078_50a2                                ; $50a8: $18 $f8

    ld hl, $dfe1                                  ; $50aa: $21 $e1 $df
    jp nz, $e4c3                                  ; $50ad: $c2 $c3 $e4

    rst $20                                       ; $50b0: $e7
    ld hl, sp+$1e                                 ; $50b1: $f8 $1e
    ld b, b                                       ; $50b3: $40
    dec bc                                        ; $50b4: $0b
    rrca                                          ; $50b5: $0f
    ld e, a                                       ; $50b6: $5f
    scf                                           ; $50b7: $37
    ccf                                           ; $50b8: $3f

jr_078_50b9:
    ld c, a                                       ; $50b9: $4f
    ld a, a                                       ; $50ba: $7f
    adc e                                         ; $50bb: $8b
    ld b, b                                       ; $50bc: $40
    ld [c], a                                     ; $50bd: $e2
    rla                                           ; $50be: $17
    ld b, b                                       ; $50bf: $40
    ldh [$39], a                                  ; $50c0: $e0 $39
    db $ec                                        ; $50c2: $ec
    inc l                                         ; $50c3: $2c

jr_078_50c4:
    ldh [$fc], a                                  ; $50c4: $e0 $fc
    db $e3                                        ; $50c6: $e3
    ld hl, sp-$01                                 ; $50c7: $f8 $ff
    call nc, Call_000_0044                        ; $50c9: $d4 $44 $00
    inc l                                         ; $50cc: $2c
    pop hl                                        ; $50cd: $e1
    xor d                                         ; $50ce: $aa
    call nz, $5f41                                ; $50cf: $c4 $41 $5f
    jp nz, $bf42                                  ; $50d2: $c2 $42 $bf

    ld e, h                                       ; $50d5: $5c
    ld h, b                                       ; $50d6: $60
    xor b                                         ; $50d7: $a8
    ld a, [bc]                                    ; $50d8: $0a
    and b                                         ; $50d9: $a0
    add sp, -$3e                                  ; $50da: $e8 $c2
    ld d, b                                       ; $50dc: $50
    ld h, b                                       ; $50dd: $60
    ld [$e200], a                                 ; $50de: $ea $00 $e2
    ld a, [hl]                                    ; $50e1: $7e
    pop bc                                        ; $50e2: $c1
    db $fc                                        ; $50e3: $fc
    ld [$4143], a                                 ; $50e4: $ea $43 $41
    ret nz                                        ; $50e7: $c0

    cp a                                          ; $50e8: $bf
    dec a                                         ; $50e9: $3d
    ldh [$fe], a                                  ; $50ea: $e0 $fe
    pop hl                                        ; $50ec: $e1
    rst $18                                       ; $50ed: $df
    ldh a, [$df]                                  ; $50ee: $f0 $df
    ldh a, [$a6]                                  ; $50f0: $f0 $a6
    daa                                           ; $50f2: $27
    ld a, [hl-]                                   ; $50f3: $3a
    ld b, e                                       ; $50f4: $43
    or $36                                        ; $50f5: $f6 $36
    ld [c], a                                     ; $50f7: $e2
    ei                                            ; $50f8: $fb
    ld a, [c]                                     ; $50f9: $f2
    inc l                                         ; $50fa: $2c
    ld [c], a                                     ; $50fb: $e2
    add sp, -$10                                  ; $50fc: $e8 $f0
    ret nc                                        ; $50fe: $d0

    ldh [$f1], a                                  ; $50ff: $e0 $f1
    inc bc                                        ; $5101: $03
    sbc [hl]                                      ; $5102: $9e
    and c                                         ; $5103: $a1
    dec hl                                        ; $5104: $2b
    rst $20                                       ; $5105: $e7
    ld a, d                                       ; $5106: $7a
    ld b, d                                       ; $5107: $42
    adc a                                         ; $5108: $8f
    ld [hl], b                                    ; $5109: $70
    ld hl, $ff1e                                  ; $510a: $21 $1e $ff
    inc e                                         ; $510d: $1c
    inc bc                                        ; $510e: $03
    rrca                                          ; $510f: $0f
    db $10                                        ; $5110: $10
    rlca                                          ; $5111: $07
    ld [$050a], sp                                ; $5112: $08 $0a $05
    ld e, l                                       ; $5115: $5d
    rst $08                                       ; $5116: $cf
    ld l, h                                       ; $5117: $6c
    jr nz, jr_078_50b9                            ; $5118: $20 $9f

    ld a, a                                       ; $511a: $7f
    inc a                                         ; $511b: $3c
    inc l                                         ; $511c: $2c
    and b                                         ; $511d: $a0
    jr nz, jr_078_5150                            ; $511e: $20 $30

    nop                                           ; $5120: $00
    ld b, [hl]                                    ; $5121: $46
    inc sp                                        ; $5122: $33
    ld h, b                                       ; $5123: $60
    rst $18                                       ; $5124: $df
    add b                                         ; $5125: $80
    ld d, b                                       ; $5126: $50
    and b                                         ; $5127: $a0
    push de                                       ; $5128: $d5
    ld hl, $4389                                  ; $5129: $21 $89 $43
    ret nz                                        ; $512c: $c0

    add [hl]                                      ; $512d: $86

jr_078_512e:
    ld [bc], a                                    ; $512e: $02
    ld a, l                                       ; $512f: $7d
    ld [$60f6], sp                                ; $5130: $08 $f6 $60
    and d                                         ; $5133: $a2
    rst $38                                       ; $5134: $ff
    ld [hl], l                                    ; $5135: $75
    rst $38                                       ; $5136: $ff
    ld [c], a                                     ; $5137: $e2
    jr jr_078_517c                                ; $5138: $18 $42

    xor b                                         ; $513a: $a8
    ld e, b                                       ; $513b: $58
    pop hl                                        ; $513c: $e1
    and $a5                                       ; $513d: $e6 $a5
    ld d, h                                       ; $513f: $54
    pop hl                                        ; $5140: $e1
    pop af                                        ; $5141: $f1
    db $fc                                        ; $5142: $fc
    ld [c], a                                     ; $5143: $e2
    xor d                                         ; $5144: $aa
    ld hl, sp-$20                                 ; $5145: $f8 $e0
    xor e                                         ; $5147: $ab
    jr nz, jr_078_512e                            ; $5148: $20 $e4

    ld [$6340], a                                 ; $514a: $ea $40 $63
    ld h, d                                       ; $514d: $62
    pop bc                                        ; $514e: $c1
    xor [hl]                                      ; $514f: $ae

jr_078_5150:
    daa                                           ; $5150: $27
    xor [hl]                                      ; $5151: $ae
    and e                                         ; $5152: $a3
    cp a                                          ; $5153: $bf
    db $fc                                        ; $5154: $fc
    and $3c                                       ; $5155: $e6 $3c
    pop hl                                        ; $5157: $e1
    sbc e                                         ; $5158: $9b
    rst $28                                       ; $5159: $ef
    ld hl, sp-$02                                 ; $515a: $f8 $fe
    pop hl                                        ; $515c: $e1
    rst $30                                       ; $515d: $f7
    db $fc                                        ; $515e: $fc
    cp $e1                                        ; $515f: $fe $e1
    and c                                         ; $5161: $a1
    daa                                           ; $5162: $27
    cp $7f                                        ; $5163: $fe $7f
    ld bc, $0ef0                                  ; $5165: $01 $f0 $0e
    ret nz                                        ; $5168: $c0

    jr nc, @-$03                                  ; $5169: $30 $fb

    rlca                                          ; $516b: $07
    ld d, [hl]                                    ; $516c: $56
    pop bc                                        ; $516d: $c1
    ccf                                           ; $516e: $3f
    db $fd                                        ; $516f: $fd
    inc bc                                        ; $5170: $03
    ldh a, [rIF]                                  ; $5171: $f0 $0f
    nop                                           ; $5173: $00
    ldh a, [$90]                                  ; $5174: $f0 $90
    ld b, d                                       ; $5176: $42
    db $eb                                        ; $5177: $eb
    ld b, h                                       ; $5178: $44
    adc e                                         ; $5179: $8b
    ccf                                           ; $517a: $3f
    rst $38                                       ; $517b: $ff

jr_078_517c:
    xor h                                         ; $517c: $ac
    ld b, c                                       ; $517d: $41
    rrca                                          ; $517e: $0f
    cp a                                          ; $517f: $bf
    ld b, h                                       ; $5180: $44
    ld e, $41                                     ; $5181: $1e $41
    ld h, b                                       ; $5183: $60
    and e                                         ; $5184: $a3
    and b                                         ; $5185: $a0
    di                                            ; $5186: $f3
    ret nz                                        ; $5187: $c0

    add b                                         ; $5188: $80
    ld h, d                                       ; $5189: $62
    xor b                                         ; $518a: $a8
    ld e, l                                       ; $518b: $5d
    ld b, d                                       ; $518c: $42
    nop                                           ; $518d: $00
    jr nc, jr_078_5190                            ; $518e: $30 $00

jr_078_5190:
    inc h                                         ; $5190: $24
    cp a                                          ; $5191: $bf
    jr jr_078_51a7                                ; $5192: $18 $13

    inc c                                         ; $5194: $0c
    add hl, sp                                    ; $5195: $39
    ld b, $7c                                     ; $5196: $06 $7c
    ld h, h                                       ; $5198: $64
    and b                                         ; $5199: $a0
    ld [$07bf], sp                                ; $519a: $08 $bf $07
    inc c                                         ; $519d: $0c
    inc bc                                        ; $519e: $03
    inc e                                         ; $519f: $1c
    inc bc                                        ; $51a0: $03
    ld a, $5c                                     ; $51a1: $3e $5c
    and h                                         ; $51a3: $a4
    ld a, a                                       ; $51a4: $7f
    ei                                            ; $51a5: $fb
    add b                                         ; $51a6: $80

jr_078_51a7:
    ld bc, $40c2                                  ; $51a7: $01 $c2 $40
    inc bc                                        ; $51aa: $03
    rst $38                                       ; $51ab: $ff
    ld a, [bc]                                    ; $51ac: $0a
    rst $30                                       ; $51ad: $f7
    ld a, [hl-]                                   ; $51ae: $3a
    rst $38                                       ; $51af: $ff
    rst $00                                       ; $51b0: $c7
    ld a, d                                       ; $51b1: $7a
    add a                                         ; $51b2: $87
    ld [hl], d                                    ; $51b3: $72
    adc a                                         ; $51b4: $8f
    ld h, [hl]                                    ; $51b5: $66
    sbc a                                         ; $51b6: $9f
    add c                                         ; $51b7: $81
    db $eb                                        ; $51b8: $eb
    rst $38                                       ; $51b9: $ff
    add d                                         ; $51ba: $82
    ld a, $00                                     ; $51bb: $3e $00
    add e                                         ; $51bd: $83
    sub b                                         ; $51be: $90
    and b                                         ; $51bf: $a0
    dec hl                                        ; $51c0: $2b
    rst $38                                       ; $51c1: $ff
    ld d, a                                       ; $51c2: $57
    xor $18                                       ; $51c3: $ee $18
    ld h, b                                       ; $51c5: $60
    push af                                       ; $51c6: $f5
    rst $38                                       ; $51c7: $ff
    db $e3                                        ; $51c8: $e3
    ret nc                                        ; $51c9: $d0

    add b                                         ; $51ca: $80
    rst $28                                       ; $51cb: $ef
    rst $38                                       ; $51cc: $ff
    rst $18                                       ; $51cd: $df
    sbc h                                         ; $51ce: $9c
    ld a, b                                       ; $51cf: $78
    ld c, b                                       ; $51d0: $48
    jr nc, @-$15                                  ; $51d1: $30 $e9

    rst $30                                       ; $51d3: $f7
    rst $38                                       ; $51d4: $ff
    xor a                                         ; $51d5: $af
    jr nc, @-$1a                                  ; $51d6: $30 $e4

    ldh a, [$e4]                                  ; $51d8: $f0 $e4
    db $fc                                        ; $51da: $fc
    cpl                                           ; $51db: $2f
    ei                                            ; $51dc: $fb
    rst $38                                       ; $51dd: $ff
    ld a, [$fefe]                                 ; $51de: $fa $fe $fe
    db $e3                                        ; $51e1: $e3
    db $fd                                        ; $51e2: $fd
    cp h                                          ; $51e3: $bc
    ld b, b                                       ; $51e4: $40
    push de                                       ; $51e5: $d5
    ld b, b                                       ; $51e6: $40
    ld [$edff], a                                 ; $51e7: $ea $ff $ed
    ldh a, [$c9]                                  ; $51ea: $f0 $c9
    ld h, b                                       ; $51ec: $60
    cp a                                          ; $51ed: $bf
    cp $e2                                        ; $51ee: $fe $e2
    rst $18                                       ; $51f0: $df
    rst $38                                       ; $51f1: $ff
    rst $18                                       ; $51f2: $df
    ld l, [hl]                                    ; $51f3: $6e
    add sp, $20                                   ; $51f4: $e8 $20
    rst $38                                       ; $51f6: $ff
    inc bc                                        ; $51f7: $03
    rlca                                          ; $51f8: $07
    cp $e1                                        ; $51f9: $fe $e1
    ld bc, $fe03                                  ; $51fb: $01 $03 $fe
    pop hl                                        ; $51fe: $e1
    nop                                           ; $51ff: $00
    nop                                           ; $5200: $00
    nop                                           ; $5201: $00
    ld bc, $ff0f                                  ; $5202: $01 $0f $ff
    rst $38                                       ; $5205: $ff
    rst $38                                       ; $5206: $ff
    rst $38                                       ; $5207: $ff
    rst $38                                       ; $5208: $ff
    rst $38                                       ; $5209: $ff
    rst $38                                       ; $520a: $ff
    rst $38                                       ; $520b: $ff
    rst $38                                       ; $520c: $ff
    rst $38                                       ; $520d: $ff
    rst $38                                       ; $520e: $ff
    rst $38                                       ; $520f: $ff
    rst $38                                       ; $5210: $ff
    rst $38                                       ; $5211: $ff
    ret nz                                        ; $5212: $c0

    rst $38                                       ; $5213: $ff
    rst $38                                       ; $5214: $ff
    rst $38                                       ; $5215: $ff
    rst $38                                       ; $5216: $ff
    rst $38                                       ; $5217: $ff
    rst $38                                       ; $5218: $ff
    rst $38                                       ; $5219: $ff
    rst $38                                       ; $521a: $ff
    rst $38                                       ; $521b: $ff
    rst $38                                       ; $521c: $ff
    or $f5                                        ; $521d: $f6 $f5
    ld c, $0e                                     ; $521f: $0e $0e
    ld a, c                                       ; $5221: $79
    ld c, $e0                                     ; $5222: $0e $e0
    db $fd                                        ; $5224: $fd
    rst $18                                       ; $5225: $df
    ld a, [$080e]                                 ; $5226: $fa $0e $08
    ld [$9a08], sp                                ; $5229: $08 $08 $9a
    ei                                            ; $522c: $fb
    inc [hl]                                      ; $522d: $34
    rst $18                                       ; $522e: $df
    ldh [$de], a                                  ; $522f: $e0 $de
    ld hl, sp+$0d                                 ; $5231: $f8 $0d
    pop hl                                        ; $5233: $e1
    pop hl                                        ; $5234: $e1
    ld [$740b], sp                                ; $5235: $08 $0b $74
    db $e3                                        ; $5238: $e3
    ldh [$f7], a                                  ; $5239: $e0 $f7
    pop hl                                        ; $523b: $e1
    dec bc                                        ; $523c: $0b
    sbc $e0                                       ; $523d: $de $e0
    ld [hl], l                                    ; $523f: $75
    ld a, [c]                                     ; $5240: $f2
    ldh [$fd], a                                  ; $5241: $e0 $fd
    sbc a                                         ; $5243: $9f
    ldh [$0a], a                                  ; $5244: $e0 $0a
    ld a, [bc]                                    ; $5246: $0a
    ld a, [bc]                                    ; $5247: $0a
    ld [hl-], a                                   ; $5248: $32
    ret nz                                        ; $5249: $c0

    ldh [$0b], a                                  ; $524a: $e0 $0b
    ldh [rIE], a                                  ; $524c: $e0 $ff
    db $f4                                        ; $524e: $f4
    jp nc, $0d6d                                  ; $524f: $d2 $6d $0d

    ret nz                                        ; $5252: $c0

    db $e3                                        ; $5253: $e3
    call nc, $1dc2                                ; $5254: $d4 $c2 $1d
    ld c, [hl]                                    ; $5257: $4e
    cp a                                          ; $5258: $bf
    jp nc, $0909                                  ; $5259: $d2 $09 $09

    add hl, bc                                    ; $525c: $09
    cp d                                          ; $525d: $ba
    pop bc                                        ; $525e: $c1
    or [hl]                                       ; $525f: $b6
    jp nc, $e2e2                                  ; $5260: $d2 $e2 $e2

    add h                                         ; $5263: $84
    rst $18                                       ; $5264: $df
    ld [c], a                                     ; $5265: $e2
    pop hl                                        ; $5266: $e1
    ld hl, sp+$49                                 ; $5267: $f8 $49
    sbc $e2                                       ; $5269: $de $e2
    ld h, c                                       ; $526b: $61
    db $d3                                        ; $526c: $d3
    pop bc                                        ; $526d: $c1
    db $e3                                        ; $526e: $e3
    rst $18                                       ; $526f: $df
    push af                                       ; $5270: $f5
    dec c                                         ; $5271: $0d
    ld h, l                                       ; $5272: $65
    dec c                                         ; $5273: $0d
    ldh [$fa], a                                  ; $5274: $e0 $fa
    dec c                                         ; $5276: $0d
    rst $38                                       ; $5277: $ff
    ldh [$bf], a                                  ; $5278: $e0 $bf
    and $0d                                       ; $527a: $e6 $0d
    dec c                                         ; $527c: $0d
    ldh [$f2], a                                  ; $527d: $e0 $f2
    adc d                                         ; $527f: $8a
    sbc [hl]                                      ; $5280: $9e
    and $0c                                       ; $5281: $e6 $0c
    ldh [$fd], a                                  ; $5283: $e0 $fd
    inc c                                         ; $5285: $0c
    push de                                       ; $5286: $d5
    xor l                                         ; $5287: $ad
    and c                                         ; $5288: $a1
    pop hl                                        ; $5289: $e1
    ld a, a                                       ; $528a: $7f
    rst $20                                       ; $528b: $e7
    ld [$0807], sp                                ; $528c: $08 $07 $08
    ld c, $0f                                     ; $528f: $0e $0f
    nop                                           ; $5291: $00
    nop                                           ; $5292: $00
    nop                                           ; $5293: $00
    ld bc, $ff01                                  ; $5294: $01 $01 $ff
    rst $38                                       ; $5297: $ff
    rst $38                                       ; $5298: $ff
    rst $38                                       ; $5299: $ff
    rst $38                                       ; $529a: $ff
    rst $38                                       ; $529b: $ff
    rst $38                                       ; $529c: $ff
    rst $38                                       ; $529d: $ff
    rst $38                                       ; $529e: $ff
    rst $38                                       ; $529f: $ff
    rst $38                                       ; $52a0: $ff
    rst $38                                       ; $52a1: $ff
    rst $38                                       ; $52a2: $ff
    rst $38                                       ; $52a3: $ff
    ret nz                                        ; $52a4: $c0

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
    or $f5                                        ; $52af: $f6 $f5
    dec a                                         ; $52b1: $3d
    ld a, $fd                                     ; $52b2: $3e $fd
    ccf                                           ; $52b4: $3f
    db $db                                        ; $52b5: $db
    ld a, [$0302]                                 ; $52b6: $fa $02 $03
    inc b                                         ; $52b9: $04
    dec b                                         ; $52ba: $05
    ld b, $07                                     ; $52bb: $06 $07
    cp $b8                                        ; $52bd: $fe $b8
    rst $30                                       ; $52bf: $f7
    ld [$0909], sp                                ; $52c0: $08 $09 $09
    ld a, [bc]                                    ; $52c3: $0a
    dec bc                                        ; $52c4: $0b
    inc c                                         ; $52c5: $0c
    dec c                                         ; $52c6: $0d
    db $fd                                        ; $52c7: $fd
    ld c, $96                                     ; $52c8: $0e $96
    push af                                       ; $52ca: $f5
    rrca                                          ; $52cb: $0f
    db $10                                        ; $52cc: $10
    ld de, $1312                                  ; $52cd: $11 $12 $13
    inc d                                         ; $52d0: $14
    rst $30                                       ; $52d1: $f7
    dec d                                         ; $52d2: $15
    ld d, $17                                     ; $52d3: $16 $17
    ld [hl], l                                    ; $52d5: $75
    db $f4                                        ; $52d6: $f4
    jr jr_078_52f2                                ; $52d7: $18 $19

    ld a, [de]                                    ; $52d9: $1a
    dec de                                        ; $52da: $1b
    rst $38                                       ; $52db: $ff
    inc e                                         ; $52dc: $1c
    dec e                                         ; $52dd: $1d
    ld e, $1f                                     ; $52de: $1e $1f
    jr nz, jr_078_5303                            ; $52e0: $20 $21

    ld bc, $fd01                                  ; $52e2: $01 $01 $fd
    ld [hl+], a                                   ; $52e5: $22
    ld d, c                                       ; $52e6: $51
    ldh a, [rNR44]                                ; $52e7: $f0 $23
    inc h                                         ; $52e9: $24
    dec h                                         ; $52ea: $25
    ld h, $27                                     ; $52eb: $26 $27
    jr z, @+$01                                   ; $52ed: $28 $ff

    add hl, hl                                    ; $52ef: $29
    ld a, [hl+]                                   ; $52f0: $2a
    dec hl                                        ; $52f1: $2b

jr_078_52f2:
    inc l                                         ; $52f2: $2c
    ld bc, $2e2d                                  ; $52f3: $01 $2d $2e
    cpl                                           ; $52f6: $2f
    db $fd                                        ; $52f7: $fd
    jr nc, jr_078_5329                            ; $52f8: $30 $2f

    xor $31                                       ; $52fa: $ee $31
    ld [hl-], a                                   ; $52fc: $32
    inc sp                                        ; $52fd: $33
    inc [hl]                                      ; $52fe: $34
    dec [hl]                                      ; $52ff: $35
    ld [hl], $ff                                  ; $5300: $36 $ff
    scf                                           ; $5302: $37

jr_078_5303:
    jr c, jr_078_5306                             ; $5303: $38 $01

    add hl, sp                                    ; $5305: $39

jr_078_5306:
    ld bc, $3b3a                                  ; $5306: $01 $3a $3b
    dec sp                                        ; $5309: $3b
    db $fd                                        ; $530a: $fd
    inc a                                         ; $530b: $3c
    rrca                                          ; $530c: $0f
    rst $28                                       ; $530d: $ef
    ld b, b                                       ; $530e: $40
    ld b, c                                       ; $530f: $41
    ld b, d                                       ; $5310: $42
    add hl, bc                                    ; $5311: $09
    add hl, bc                                    ; $5312: $09
    ld b, e                                       ; $5313: $43
    rst $38                                       ; $5314: $ff
    ld b, h                                       ; $5315: $44
    ld b, l                                       ; $5316: $45
    ld b, [hl]                                    ; $5317: $46
    ld b, a                                       ; $5318: $47
    ld c, b                                       ; $5319: $48
    dec sp                                        ; $531a: $3b
    dec sp                                        ; $531b: $3b
    ld c, c                                       ; $531c: $49
    cp $ef                                        ; $531d: $fe $ef
    rst $08                                       ; $531f: $cf
    ld c, d                                       ; $5320: $4a
    dec sp                                        ; $5321: $3b
    ld c, e                                       ; $5322: $4b
    ld c, h                                       ; $5323: $4c
    add hl, bc                                    ; $5324: $09
    ld c, l                                       ; $5325: $4d
    ld c, [hl]                                    ; $5326: $4e
    ld a, a                                       ; $5327: $7f
    ld c, a                                       ; $5328: $4f

jr_078_5329:
    ld d, b                                       ; $5329: $50
    ld d, c                                       ; $532a: $51
    ld d, d                                       ; $532b: $52
    ld d, e                                       ; $532c: $53
    ld d, h                                       ; $532d: $54
    ld d, l                                       ; $532e: $55
    rst $08                                       ; $532f: $cf
    rst $08                                       ; $5330: $cf
    rst $38                                       ; $5331: $ff
    jr nc, jr_078_538a                            ; $5332: $30 $56

    ld d, a                                       ; $5334: $57
    ld e, b                                       ; $5335: $58
    ld e, c                                       ; $5336: $59
    ld e, d                                       ; $5337: $5a
    ld e, e                                       ; $5338: $5b
    ld e, h                                       ; $5339: $5c
    rst $18                                       ; $533a: $df
    ld e, l                                       ; $533b: $5d
    ld e, [hl]                                    ; $533c: $5e
    ld bc, $605f                                  ; $533d: $01 $5f $60
    add b                                         ; $5340: $80
    rst $28                                       ; $5341: $ef
    ld bc, $ff61                                  ; $5342: $01 $61 $ff
    ld h, d                                       ; $5345: $62
    ld h, e                                       ; $5346: $63
    ld h, h                                       ; $5347: $64
    ld h, l                                       ; $5348: $65
    ld h, [hl]                                    ; $5349: $66
    ld h, a                                       ; $534a: $67
    ld l, b                                       ; $534b: $68
    ld bc, $01f7                                  ; $534c: $01 $f7 $01
    ld l, c                                       ; $534f: $69
    ld l, d                                       ; $5350: $6a
    sub c                                         ; $5351: $91
    ret nc                                        ; $5352: $d0

    ld l, e                                       ; $5353: $6b
    ld l, h                                       ; $5354: $6c
    ld l, l                                       ; $5355: $6d
    ld l, [hl]                                    ; $5356: $6e
    rst $38                                       ; $5357: $ff
    ld l, a                                       ; $5358: $6f
    ld [hl], b                                    ; $5359: $70
    ld [hl], c                                    ; $535a: $71
    ld [hl], d                                    ; $535b: $72
    ld [hl], e                                    ; $535c: $73
    ld [hl], h                                    ; $535d: $74
    ld [hl], l                                    ; $535e: $75
    halt                                          ; $535f: $76
    or $e1                                        ; $5360: $f6 $e1
    pop af                                        ; $5362: $f1
    ld [hl], a                                    ; $5363: $77
    dec sp                                        ; $5364: $3b
    rst $38                                       ; $5365: $ff
    ldh [$5c], a                                  ; $5366: $e0 $5c
    ld a, b                                       ; $5368: $78
    dec sp                                        ; $5369: $3b
    ld a, c                                       ; $536a: $79
    ei                                            ; $536b: $fb
    ld a, d                                       ; $536c: $7a
    ld a, e                                       ; $536d: $7b
    ld d, e                                       ; $536e: $53
    pop de                                        ; $536f: $d1
    ld a, h                                       ; $5370: $7c
    ld a, l                                       ; $5371: $7d
    dec sp                                        ; $5372: $3b
    ld a, [hl]                                    ; $5373: $7e
    ld a, a                                       ; $5374: $7f
    rst $38                                       ; $5375: $ff
    dec sp                                        ; $5376: $3b
    add b                                         ; $5377: $80
    add c                                         ; $5378: $81
    add d                                         ; $5379: $82
    add e                                         ; $537a: $83
    add h                                         ; $537b: $84
    add l                                         ; $537c: $85
    add [hl]                                      ; $537d: $86
    cp $32                                        ; $537e: $fe $32
    ret nc                                        ; $5380: $d0

    add a                                         ; $5381: $87
    adc b                                         ; $5382: $88
    adc c                                         ; $5383: $89
    adc d                                         ; $5384: $8a
    adc e                                         ; $5385: $8b
    dec sp                                        ; $5386: $3b
    adc h                                         ; $5387: $8c
    cp a                                          ; $5388: $bf
    adc l                                         ; $5389: $8d

jr_078_538a:
    adc [hl]                                      ; $538a: $8e
    adc a                                         ; $538b: $8f
    sub b                                         ; $538c: $90
    sub c                                         ; $538d: $91
    sub d                                         ; $538e: $92
    ld [de], a                                    ; $538f: $12
    rst $08                                       ; $5390: $cf
    sub e                                         ; $5391: $93
    rst $38                                       ; $5392: $ff
    sub h                                         ; $5393: $94
    sub l                                         ; $5394: $95
    sub [hl]                                      ; $5395: $96
    sub a                                         ; $5396: $97
    sbc b                                         ; $5397: $98
    sbc c                                         ; $5398: $99
    sbc d                                         ; $5399: $9a
    sbc e                                         ; $539a: $9b
    rst $18                                       ; $539b: $df
    sbc h                                         ; $539c: $9c
    sbc l                                         ; $539d: $9d
    sbc [hl]                                      ; $539e: $9e
    sbc a                                         ; $539f: $9f
    and b                                         ; $53a0: $a0
    ld a, [c]                                     ; $53a1: $f2
    xor a                                         ; $53a2: $af
    and c                                         ; $53a3: $a1
    and d                                         ; $53a4: $a2
    rst $38                                       ; $53a5: $ff
    and e                                         ; $53a6: $a3
    and h                                         ; $53a7: $a4
    and l                                         ; $53a8: $a5
    and [hl]                                      ; $53a9: $a6
    and a                                         ; $53aa: $a7
    xor b                                         ; $53ab: $a8
    xor c                                         ; $53ac: $a9
    xor d                                         ; $53ad: $aa
    rst $18                                       ; $53ae: $df
    xor e                                         ; $53af: $ab
    ld bc, $09ac                                  ; $53b0: $01 $ac $09
    xor l                                         ; $53b3: $ad
    pop de                                        ; $53b4: $d1
    xor [hl]                                      ; $53b5: $ae
    xor [hl]                                      ; $53b6: $ae
    xor a                                         ; $53b7: $af
    rst $38                                       ; $53b8: $ff
    or b                                          ; $53b9: $b0
    or c                                          ; $53ba: $b1
    or d                                          ; $53bb: $b2
    or e                                          ; $53bc: $b3
    or h                                          ; $53bd: $b4
    or l                                          ; $53be: $b5
    or [hl]                                       ; $53bf: $b6
    or a                                          ; $53c0: $b7
    cp a                                          ; $53c1: $bf
    cp b                                          ; $53c2: $b8
    ld bc, $bab9                                  ; $53c3: $01 $b9 $ba
    cp e                                          ; $53c6: $bb
    cp h                                          ; $53c7: $bc
    or b                                          ; $53c8: $b0
    xor h                                         ; $53c9: $ac
    cp l                                          ; $53ca: $bd
    rst $38                                       ; $53cb: $ff
    cp [hl]                                       ; $53cc: $be
    cp a                                          ; $53cd: $bf
    ret nz                                        ; $53ce: $c0

    pop bc                                        ; $53cf: $c1
    jp nz, $c4c3                                  ; $53d0: $c2 $c3 $c4

    push bc                                       ; $53d3: $c5
    ld a, $98                                     ; $53d4: $3e $98
    and c                                         ; $53d6: $a1
    add $c7                                       ; $53d7: $c6 $c7
    ret z                                         ; $53d9: $c8

    ret                                           ; $53da: $c9


    ld bc, $0000                                  ; $53db: $01 $00 $00
    nop                                           ; $53de: $00

    db $e7, $53, $27, $54, $76, $5c, $1f, $5d, $00, $00, $00, $00, $ff, $7f, $ff, $4e
    db $ff, $7f, $00, $00, $a0, $02, $ff, $4e, $9a, $21, $00, $00, $1f, $00, $ff, $4e
    db $9a, $21, $ff, $4e, $0f, $00, $00, $00, $00, $00, $00, $00, $9a, $21, $ff, $4e
    db $ff, $7f, $00, $00, $9a, $21, $ff, $4e, $ff, $7f, $ff, $03, $fd, $01, $00, $00
    db $48, $69, $1f, $00, $0f, $00, $00, $00, $95, $00, $ff, $ec, $ff, $ff, $ea, $e7
    db $f1, $eb, $e3, $e8, $fe, $7f, $ff, $fd, $f2, $7f, $80, $bf, $40, $f2, $e5, $ff
    db $1c, $ff, $40, $bf, $aa, $55, $f5, $0a, $ff, $eb, $d7, $f5, $8b, $7a, $85, $fc
    db $03, $ff, $3e, $c1, $5d, $a2, $2e, $d1, $57, $a8, $ba, $b0, $e3, $7f, $fe, $e0
    db $3f, $ff, $1f, $fe, $e0, $5f, $ff, $a0, $2f, $d0, $97, $e8, $8f, $f0, $d7, $ff
    db $e8, $cb, $f4, $c5, $fa, $e2, $fd, $fe, $f7, $01, $ff, $00, $fe, $e9, $af, $50
    db $17, $e8, $ff, $8f, $70, $47, $b8, $a3, $5c, $c1, $3e, $ff, $a0, $5f, $d3, $2f
    db $9f, $7f, $4f, $bf, $fd, $8f, $fc, $e0, $86, $7f, $d9, $3e, $e2, $7d, $fb, $95
    db $ea, $84, $e3, $c0, $ff, $11, $ee, $aa, $a7, $55, $fd, $02, $c2, $e0, $4f, $e0
    db $03, $bd, $e0, $53, $7f, $af, $ac, $5f, $d1, $3e, $a6, $79, $40, $e3, $bd, $e0
    db $ab, $e2, $05, $fa, $aa, $55, $30, $e5, $1f, $b8, $99, $e0, $5e, $e1, $20, $e9
    db $3f, $ff, $0f, $32, $e6, $f8, $ff, $ff, $f3, $fc, $e7, $f8, $cf, $f0, $fb, $7f
    db $fc, $ef, $f0, $bf, $c0, $7f, $80, $6a, $e3, $be, $62, $e0, $3f, $bf, $7f, $5f
    db $bf, $7a, $e3, $0f, $bf, $ff, $8f, $7f, $e1, $fe, $e0, $a2, $e0, $e0, $ff, $ff
    db $f8, $e7, $fc, $e3, $fe, $c1, $fb, $ff, $c4, $7f, $80, $af, $50, $57, $a8, $2b
    db $ff, $d4, $05, $fa, $02, $fd, $00, $ff, $01, $ff, $ff, $fd, $0d, $f2, $13, $e5
    db $26, $c9, $ff, $4e, $d6, $59, $af, $b0, $d7, $e8, $7f, $ff, $40, $2e, $d1, $d7
    db $28, $eb, $14, $fd, $fd, $02, $1a, $e7, $fe, $01, $fe, $01, $fc, $03, $ff, $fd
    db $02, $f8, $07, $f9, $06, $f3, $0c, $ff, $5d, $e2, $3a, $c5, $77, $88, $ff, $00
    db $b6, $8e, $e5, $5f, $a0, $f0, $cb, $d5, $2a, $de, $c1, $fe, $f5, $01, $a6, $c0
    db $14, $d6, $c1, $03, $ff, $a1, $5f, $ff, $d0, $2f, $a8, $57, $50, $af, $ea, $15
    db $ee, $00, $e5, $7f, $ff, $3e, $80, $c0, $1c, $ff, $0c, $ff, $ff, $86, $7f, $9f
    db $e0, $2f, $d0, $5d, $df, $a2, $bb, $44, $77, $88, $68, $e1, $af, $50, $fe, $3c
    db $e1, $fd, $02, $fa, $05, $f5, $0a, $ea, $ff, $15, $d5, $2a, $af, $50, $07, $ff
    db $83, $ff, $7f, $04, $fb, $2a, $d5, $55, $aa, $af, $81, $50, $1a, $e2, $62, $c2
    db $f7, $c0, $bb, $c1, $76, $c1, $df, $ca, $bf, $ed, $5f, $12, $c6, $fe, $fc, $0c
    db $c0, $ff, $ff, $fd, $f7, $82, $fe, $01, $08, $c1, $57, $a8, $2a, $d5, $ff, $01
    db $fe, $c0, $ff, $81, $7f, $40, $bf, $ff, $21, $df, $81, $7f, $c3, $3e, $e3, $1e
    db $ff, $53, $ae, $27, $dc, $80, $7f, $80, $7f, $ff, $00, $ff, $04, $fb, $0e, $f5
    db $1f, $ee, $ef, $3f, $df, $3f, $df, $23, $c7, $10, $ef, $c8, $7f, $37, $ec, $d3
    db $fb, $04, $f7, $08, $fc, $e1, $f3, $ef, $10, $08, $cb, $fa, $ab, $fa, $05, $d4
    db $2b, $fc, $44, $c0, $e6, $a0, $45, $bd, $84, $7c, $4c, $bc, $ff, $a4, $5c, $02
    db $fe, $82, $7e, $52, $ae, $ff, $e9, $17, $9f, $e0, $4f, $70, $2f, $30, $ff, $1f
    db $10, $17, $18, $0f, $08, $0b, $0c, $63, $0b, $0c, $d0, $cb, $dc, $c3, $44, $c5
    db $f5, $0a, $bc, $e1, $fe, $04, $e1, $e8, $17, $50, $af, $a1, $5f, $43, $ff, $bf
    db $07, $ff, $5f, $bf, $bf, $7f, $3f, $74, $0e, $e1, $17, $a4, $fc, $1e, $ac, $07
    db $fc, $fb, $fe, $e0, $ff, $f9, $fe, $fa, $fd, $f8, $ff, $fb, $fd, $ef, $f9, $ff
    db $7f, $bf, $fe, $e1, $fc, $7f, $ff, $bd, $78, $cb, $e3, $fe, $e5, $ff, $f6, $30
    db $a1, $bf, $e7, $7f, $ff, $9f, $d4, $81, $43, $a1, $87, $78, $ff, $fd, $87, $c8
    db $85, $04, $fb, $78, $87, $f0, $4f, $cf, $c7, $b8, $ff, $07, $b6, $83, $23, $a3
    db $fe, $01, $e3, $f8, $f7, $6b, $a0, $f0, $e6, $0d, $a1, $c0, $3f, $f0, $c7, $cf
    db $fc, $f3, $98, $a5, $34, $a2, $10, $c1, $2b, $e9, $fc, $54, $e0, $bc, $c1, $a8
    db $57, $d0, $2f, $80, $7f, $ff, $05, $06, $06, $05, $95, $96, $ae, $ad, $ff, $d4
    db $d7, $68, $ef, $78, $ff, $38, $ff, $3f, $d5, $2a, $aa, $55, $54, $ab, $9c, $c1
    db $c9, $81, $73, $15, $ea, $d4, $e3, $bd, $85, $54, $ab, $0f, $2c, $a0, $f1, $0f
    db $96, $82, $fc, $e3, $20, $89, $03, $00, $07, $07, $3e, $10, $8b, $80, $00, $f9
    db $ff, $fd, $fe, $e0, $19, $90, $7f, $f8, $fc, $e3, $f0, $cf, $e3, $dc, $f0, $66
    db $7f, $7f, $ff, $1f, $3f, $cf, $df, $2f, $04, $83, $be, $cc, $cc, $ff, $f3, $8f
    db $ff, $f1, $e8, $64, $fd, $84, $fe, $e3, $b9, $c2, $fb, $0a, $e0, $34, $c0, $b4
    db $86, $16, $80, $40, $ff, $bf, $88, $77, $d0, $2f, $a0, $5f, $40, $ff, $bf, $a0
    db $5f, $c0, $3f, $80, $7f, $30, $2f, $ff, $20, $ff, $30, $28, $e0, $3c, $3c, $a0
    db $68, $c1, $ff, $ab, $54, $55, $aa, $0a, $f5, $05, $fa, $82, $eb, $61, $80, $38
    db $80, $1a, $a1, $e2, $81, $e8, $e1, $d7, $61, $af, $f7, $5f, $5f, $af, $1d, $e2
    db $0f, $7f, $8f, $af, $ff, $5f, $0f, $ff, $07, $0f, $07, $0f, $03, $ff, $0f, $0b
    db $07, $03, $07, $01, $07, $05, $ff, $03, $00, $03, $c0, $80, $c0, $80, $e0, $dd
    db $c0, $fe, $e1, $d0, $e0, $f0, $fe, $e0, $03, $01, $f2, $fe, $e4, $00, $df, $e0
    db $fe, $e0, $e7, $80, $cf, $80, $ff, $cd, $82, $cb, $84, $d7, $08, $d3, $0c, $7f
    db $d3, $8c, $d3, $cc, $ff, $07, $1f, $fe, $e2, $ff, $ff, $07, $ef, $17, $df, $27
    db $ef, $17, $17, $ff, $ff, $df, $fd, $40, $bf, $4c, $64, $e6, $80, $62, $60, $df
    db $bf, $00, $df, $00, $ef, $fe, $e0, $ff, $00, $ff, $f7, $00, $f8, $f7, $f0, $ef
    db $f0, $ef, $8f, $f8, $f7, $f8, $f7, $1e, $e3, $a4, $83, $9c, $81, $e8, $ff, $17
    db $d4, $2b, $f8, $07, $00, $ff, $a0, $09, $5f, $46, $e0, $fc, $80, $01, $fe, $e2
    db $bc, $e2, $ab, $48, $13, $63, $a1, $e0, $bc, $c6, $50, $c7, $d0, $a4, $6f, $48
    db $01, $4c, $e0, $02, $fe, $46, $e0, $0f, $03, $1f, $0f, $3f, $07, $ff, $fd, $3b
    db $55, $c0, $fe, $e8, $f0, $78, $f0, $f8, $ff, $30, $f8, $d0, $f8, $e0, $f8, $f0
    db $fc, $f7, $f8, $fc, $f8, $40, $49, $3f, $00, $ff, $3f, $ff, $03, $03, $0c, $03
    db $0d, $07, $08, $07, $fd, $09, $fc, $e2, $0c, $07, $d1, $ce, $f0, $ef, $3f, $7c
    db $73, $ff, $fc, $7f, $7f, $07, $a0, $fc, $e0, $bf, $9f, $6f, $1f, $ef, $3f, $df
    db $73, $40, $ff, $7f, $ff, $e3, $ef, $cd, $ff, $df, $fe, $36, $40, $5c, $fc, $e3
    db $27, $c3, $ef, $ff, $d7, $fc, $e0, $c7, $bd, $45, $f3, $ff, $f7, $0c, $e0, $fc
    db $e1, $b7, $80, $f7, $f0, $f6, $d9, $41, $fc, $fb, $1e, $c5, $fa, $f9, $f5, $f4
    db $ff, $f8, $f8, $07, $f8, $0b, $f3, $1f, $ef, $ff, $3e, $de, $7b, $b8, $b4, $30
    db $68, $60, $f7, $50, $40, $e3, $95, $41, $07, $3f, $03, $ff, $ff, $e3, $1f, $11
    db $2f, $09, $1f, $09, $0f, $d7, $06, $1f, $0f, $42, $e0, $1f, $fe, $e0, $17, $3f
    db $df, $19, $3d, $1a, $ff, $7e, $a3, $c0, $df, $fe, $ff, $ef, $fe, $ef, $da, $ef
    db $d4, $ef, $d9, $fd, $ee, $b7, $c0, $7b, $d7, $7b, $a7, $7b, $cb, $cf, $77, $97
    db $6f, $e7, $79, $c0, $85, $a2, $ff, $e3, $ff, $fc, $cc, $f0, $90, $e0, $a0, $c0
    db $20, $af, $c0, $c0, $80, $40, $fe, $e0, $80, $59, $26, $04, $df, $03, $04, $03
    db $06, $03, $ea, $c0, $01, $01, $a6, $e0, $c0, $00, $00, $76, $80, $a4, $22, $5f
    db $a0, $20, $9f, $f3, $7f, $cf, $28, $e1, $3d, $21, $df, $ff, $e0, $fc, $39, $f3
    db $5a, $c1, $30, $26, $0f, $1f, $ef, $06, $e2, $70, $cc, $e7, $ff, $fb, $af, $ad
    db $a0, $0a, $27, $f4, $f4, $e8, $ff, $e8, $f0, $f0, $e8, $e8, $d0, $d0, $a0, $ff
    db $a0, $40, $40, $a1, $a1, $de, $c0, $a1, $ef, $80, $21, $00, $21, $74, $c0, $02
    db $00, $cd, $ff, $c1, $ff, $ff, $2f, $f6, $57, $fe, $2e, $ff, $fc, $3a, $fc, $7c
    db $f8, $f4, $f8, $e8, $ff, $f0, $d0, $e0, $1f, $0b, $1e, $0b, $13, $af, $0c, $0c
    db $07, $0b, $82, $a0, $05, $68, $e0, $5e, $ff, $e1, $bc, $c3, $c4, $3b, $02, $fd
    db $0f, $d4, $a7, $c0, $64, $e1, $0f, $64, $40, $7e, $9a, $60, $fd, $fe, $3f, $f9
    db $fe, $c2, $fc, $fc, $e0, $32, $e3, $30, $e7, $be, $80, $0b, $03, $00, $2f, $1f
    db $17, $32, $a0, $05, $7b, $03, $03, $32, $c0, $c1, $3e, $03, $fc, $96, $a0, $18
    db $5c, $65, $7e, $80, $a6, $c0, $df, $7f, $0f, $e1, $af, $ad, $bc, $02, $e7, $fd
    db $00, $ea, $4c, $21, $f8, $e0, $fa, $00, $d4, $ff, $00, $a9, $01, $46, $07, $3f
    db $3f, $44, $ff, $04, $8a, $0e, $11, $1f, $23, $3f, $47, $fb, $7f, $9f, $0a, $64
    db $7c, $ff, $81, $7e, $7e, $76, $87, $e6, $20, $c0, $a2, $c9, $00, $00, $14, $2e
    db $40, $ff, $71, $0f, $23, $1f, $25, $1f, $13, $0f, $ff, $15, $0f, $13, $0f, $f2
    db $fc, $fa, $fc, $78, $05, $42, $dd, $a4, $4e, $e9, $83, $00, $8c, $03, $a6, $65
    db $ef, $1c, $03, $e0, $1f, $37, $01, $0c, $03, $30, $f3, $0f, $c0, $77, $a0, $2b
    db $05, $06, $05, $06, $05, $ff, $0f, $09, $1f, $11, $1e, $12, $3e, $22, $ff, $3e
    db $22, $7c, $44, $8f, $71, $83, $7c, $ff, $03, $fd, $03, $fc, $04, $fb, $08, $f7
    db $67, $10, $ef, $20, $93, $81, $f1, $80, $e0, $1f, $c8, $21, $f2, $c4, $21, $ff
    db $ad, $a0, $2d, $e7, $01, $fe, $d3, $df, $ff, $10, $1f, $10, $1f, $21, $3e, $42
    db $7d, $bf, $45, $7a, $8b, $f5, $17, $e9, $86, $61, $bf, $7f, $7f, $47, $c7, $83
    db $83, $81, $81, $bb, $d0, $bb, $80, $15, $f4, $60, $09, $07, $0a, $00, $a2, $05
    db $fe, $d4, $a0, $90, $0f, $d6, $89, $d7, $88, $d7, $77, $88, $ef, $c1, $2b, $a0
    db $ef, $ff, $ef, $08, $65, $1f, $c0, $00, $c0, $80, $a0, $d8, $60, $96, $84, $ff
    db $e2, $ff, $03, $02, $03, $02, $7c, $44, $fc, $84, $3f, $fd, $85, $fe, $03, $fc
    db $03, $50, $64, $83, $a0, $be, $fe, $e5, $c0, $40, $c1, $41, $40, $ff, $e2, $20
    db $fe, $ff, $e0, $31, $31, $7e, $4f, $ff, $80, $02, $ff, $03, $05, $06, $0a, $0d
    db $35, $3a, $cf, $ff, $f0, $5f, $a0, $bf, $40, $ff, $00, $2f, $df, $d1, $5e, $a2
    db $fe, $02, $fe, $e1, $fc, $04, $fc, $fe, $e1, $1b, $2e, $c0, $00, $e0, $00, $f0
    db $00, $47, $f8, $00, $fc, $57, $c0, $43, $c0, $5c, $e1, $06, $1a, $80, $20, $fe
    db $e1, $2e, $a1, $66, $21, $2c, $a7, $91, $40, $ef, $94, $45, $7c, $00, $ff, $ff
    db $ea, $ff, $d0, $e0, $d0, $e0, $e8, $fd, $f0, $fe, $e1, $c4, $f8, $04, $f8, $1c
    db $e0, $9b, $07, $04, $fe, $e1, $0f, $08, $fe, $e1, $d7, $c0, $10, $f3, $c7, $46
    db $db, $20, $ec, $a8, $fc, $04, $f8, $08, $9e, $fe, $e5, $f9, $09, $f9, $09, $d1
    db $a5, $58, $03, $00, $ff, $ff, $20, $c0, $18, $e0, $0c, $f0, $06, $e3, $f8, $01
    db $72, $e2, $ae, $20, $44, $60, $c0, $3f, $70, $fb, $0f, $1f, $65, $a4, $50, $ff
    db $03, $fc, $0d, $eb, $f0, $71, $7e, $86, $fc, $e6, $c0, $1c, $e3, $0c, $ff, $f3
    db $84, $7b, $84, $7b, $44, $3b, $48, $df, $37, $1f, $10, $3f, $20, $fe, $e3, $7f
    db $40, $fe, $fe, $e1, $f9, $09, $fa, $0a, $f6, $0e, $f6, $ff, $0e, $fa, $06, $f1
    db $0f, $e9, $17, $d0, $f1, $2f, $23, $0b, $e8, $40, $26, $65, $00, $1b, $04, $63
    db $ff, $1e, $8f, $7f, $10, $e0, $08, $f0, $68, $ff, $90, $e8, $10, $d0, $20, $d0
    db $20, $a0, $bf, $40, $c0, $00, $23, $1c, $1c, $eb, $8a, $ff, $81, $c0, $f9, $20
    db $fe, $e5, $b3, $ce, $8e, $c1, $a6, $23, $be, $01, $fa, $37, $05, $f4, $0b, $a6
    db $21, $80, $7f, $fc, $e1, $18, $e4, $ff, $80, $40, $c0, $40, $c0, $60, $e0, $70
    db $ff, $f0, $30, $f0, $38, $f8, $3c, $fc, $02, $bf, $01, $04, $03, $08, $07, $18
    db $fe, $e0, $3c, $1f, $03, $7e, $01, $79, $00, $8c, $21, $8e, $c9, $12, $c1, $ff
    db $d0, $c0, $d0, $c0, $e8, $e0, $e0, $e0, $4f, $f0, $f0, $f4, $f0, $83, $c6, $d7
    db $43, $fc, $50, $07, $f3, $ea, $15, $38, $21, $20, $21, $d5, $2a, $ab, $54, $fe
    db $f8, $40, $f4, $17, $e8, $2f, $d0, $fa, $05, $9b, $f7, $08, $70, $e7, $fd, $02
    db $70, $e9, $ea, $21, $3c, $ff, $fc, $1e, $fe, $3e, $de, $1f, $ff, $3f, $ef, $df
    db $1f, $ef, $2f, $fc, $e0, $e1, $1e, $82, $df, $7c, $0c, $f0, $30, $c0, $77, $a4
    db $00, $2f, $ff, $ff, $97, $7f, $4f, $3f, $47, $3f, $2b, $fe, $7e, $82, $11, $0f
    db $fe, $f8, $fe, $f8, $fd, $8f, $fc, $fd, $fc, $fe, $ff, $e0, $e0, $29, $ee, $41
    db $40, $00, $fe, $e0, $00, $00

    nop                                           ; $5c75: $00

    db $09, $08, $ff, $ff, $e2, $e1, $0f, $e3, $fa, $ff, $e1, $f4, $e6, $df, $f5, $60
    db $db, $e2, $d7, $e7, $e0, $f2, $da, $e4, $a0, $ef, $0a, $0a, $e0, $f8, $32, $7f
    db $e0, $0a, $ff, $e2, $c1, $f2, $0c, $0c, $41, $e3, $e0, $f9, $bf, $08, $09, $09
    db $0c, $0c, $0b, $9c, $e1, $6f, $f2, $3f, $ed, $0c, $ff, $e1, $e0, $e1, $08, $0b
    db $0a, $0a, $01, $0b, $d6, $cf, $e0, $e3, $a2, $e0, $9f, $e1, $b5, $e1, $e0, $f0
    db $82, $e2, $a7, $0b, $0b, $0b, $95, $e2, $93, $cc, $6c, $80, $e2, $0e, $38, $fc
    db $e1, $fb, $e1, $9f, $f1, $08, $0d, $0e, $ff, $e2, $59, $d3, $64, $5f, $e0, $e0
    db $e7, $48, $9f, $f3, $c0, $e4, $28, $0d, $16, $d4, $26, $a0, $e3, $0e, $0d, $5f
    db $f1, $e1, $e4, $2e, $7f, $e1, $34, $e3, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $f0, $ef, $00, $00

    nop                                           ; $5d1e: $00

    db $e9, $00, $ff, $ff, $e2, $e1, $01, $dd, $f9, $02, $03, $04, $eb, $05, $06, $f4
    db $e5, $02, $b3, $f0, $07, $08, $09, $ff, $0a, $0b, $0c, $0d, $0e, $0f, $00, $10
    db $fb, $11, $12, $93, $f0, $13, $14, $15, $16, $17, $ff, $18, $19, $1a, $1b, $1c
    db $1d, $1e, $1f, $fb, $20, $21, $71, $ed, $22, $23, $24, $25, $26, $ff, $27, $28
    db $28, $28, $29, $2a, $2b, $2c, $f7, $2d, $2e, $2f, $51, $ee, $30, $31, $32, $33
    db $ff, $34, $35, $36, $37, $38, $39, $3a, $3b, $fb, $3c, $3d, $32, $ec, $3e, $3f
    db $00, $00, $40, $ff, $41, $42, $02, $43, $44, $45, $46, $47, $ef, $48, $49, $4a
    db $4b, $12, $ec, $4c, $4d, $00, $ff, $00, $4e, $4f, $50, $02, $51, $52, $53, $bf
    db $54, $55, $56, $0f, $57, $58, $f2, $cb, $59, $ff, $5a, $5b, $5c, $3f, $5d, $5e
    db $5f, $60, $df, $61, $62, $63, $64, $65, $d6, $cf, $66, $67, $ff, $68, $69, $6a
    db $6b, $6c, $6d, $6e, $6f, $ef, $70, $71, $72, $73, $b6, $cf, $74, $75, $76, $ff
    db $77, $00, $78, $79, $7a, $7b, $7c, $7d, $f7, $7e, $7f, $80, $96, $cf, $3f, $81
    db $82, $83, $ff, $84, $85, $86, $87, $88, $89, $8a, $8b, $fd, $8c, $77, $d1, $8d
    db $02, $8e, $8f, $90, $91, $bf, $92, $93, $94, $95, $96, $97, $df, $f1, $98, $ff
    db $99, $9a, $9b, $9c, $28, $9d, $28, $28, $ef, $9e, $9f, $96, $a0, $9f, $f1, $a1
    db $a2, $a3, $fd, $a4, $c3, $c0, $28, $a5, $a6, $a6, $a7, $a8, $fe, $15, $d2, $a9
    db $aa, $28, $28, $ab, $ac, $ad, $ef, $ae, $af, $b0, $b1, $f5, $b2, $b2, $28, $b3
    db $ff, $b4, $08, $b5, $b6, $b7, $b8, $b9, $ba, $01, $bb, $d4, $bf, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $f2, $00, $00

    nop                                           ; $5e59: $00

    db $62, $5e, $a2, $5e, $54, $65, $d1, $65, $e7, $7e, $10, $56, $be, $02, $00, $00
    db $00, $00, $b8, $18, $4a, $10, $e7, $7e, $00, $00, $1f, $43, $4a, $10, $3a, $2e
    db $00, $00, $1f, $43, $ff, $7f, $a0, $01, $00, $00, $1f, $43, $3a, $2e, $e7, $7e
    db $00, $00, $10, $56, $be, $02, $3a, $2e, $00, $00, $a5, $38, $4a, $10, $3a, $2e
    db $00, $00, $10, $56, $ff, $7f, $e7, $7e, $bd, $ff, $ff, $f8, $e7, $e7, $e9, $e1
    db $e0, $e7, $f7, $ff, $f7, $eb, $e3, $db, $c3, $c6, $d8, $cb, $ff, $d4, $85, $ba
    db $83, $bc, $85, $ba, $02, $ff, $7d, $01, $7e, $00, $3f, $7f, $7f, $9f, $ff, $1f
    db $e6, $06, $f0, $09, $7c, $83, $fe, $ff, $01, $7e, $81, $bf, $40, $bb, $83, $3d
    db $6f, $41, $7d, $81, $bd, $fc, $e4, $79, $85, $a0, $e7, $c7, $f8, $f8, $fb, $fe
    db $e0, $90, $e7, $c6, $e1, $e7, $07, $7e, $e6, $e3, $f9, $fa, $fc, $fd, $fe, $fe
    db $74, $e1, $fd, $fe, $ff, $e0, $00, $00, $7f, $80, $2f, $d0, $ff, $55, $aa, $02
    db $7d, $81, $be, $01, $5e, $ff, $00, $bf, $01, $5e, $c0, $3f, $e0, $1f, $ff, $50
    db $af, $aa, $55, $40, $bf, $7f, $80, $ff, $bf, $40, $7f, $80, $af, $50, $1f, $e0
    db $ff, $2e, $d1, $1c, $e3, $0e, $f1, $7d, $81, $ff, $f9, $05, $75, $89, $f9, $05
    db $71, $8d, $bf, $39, $c5, $73, $8b, $2b, $d3, $30, $e5, $fc, $ff, $fc, $80, $83
    db $bf, $80, $8b, $b4, $f9, $ff, $fa, $f2, $f5, $f0, $f7, $f0, $f7, $00, $ff, $07
    db $fe, $01, $ff, $00, $ff, $00, $7b, $ff, $83, $bd, $41, $56, $a8, $2a, $d5, $15
    db $7f, $ea, $02, $fd, $c0, $3e, $f9, $04, $8e, $e1, $ff, $fc, $fd, $60, $63, $03
    db $14, $67, $08, $ff, $cf, $10, $9e, $41, $00, $1f, $00, $ef, $ff, $30, $c7, $f8
    db $03, $fc, $01, $e8, $16, $bf, $d4, $2b, $00, $ff, $2a, $d5, $cb, $e0, $ff, $ff
    db $00, $ef, $00, $f7, $00, $fb, $00, $7d, $ff, $00, $9e, $14, $eb, $08, $f7, $04
    db $fb, $ff, $08, $f7, $00, $fe, $00, $fd, $00, $7e, $ff, $00, $bd, $53, $ab, $23
    db $db, $10, $e8, $ff, $26, $d1, $03, $f4, $00, $ef, $08, $e7, $fb, $04, $db, $b0
    db $c3, $3f, $3f, $cf, $0f, $a7, $ff, $57, $53, $ab, $09, $f5, $c5, $da, $c0, $7f
    db $df, $e0, $ef, $f0, $f7, $f8, $fb, $1e, $e3, $ef, $55, $aa, $aa, $55, $26, $e0
    db $fd, $05, $fa, $fe, $a8, $e2, $5f, $f3, $08, $e6, $11, $4d, $a2, $ff, $06, $d9
    db $12, $ad, $18, $a6, $0c, $72, $ff, $20, $5e, $98, $27, $31, $8e, $27, $58, $ff
    db $0e, $71, $1d, $62, $3a, $c5, $54, $ab, $fb, $20, $df, $0a, $e1, $d0, $2f, $a8
    db $57, $40, $ff, $be, $00, $ff, $02, $fd, $a8, $57, $00, $ff, $e7, $00, $d1, $00
    db $e8, $00, $50, $00, $df, $aa, $00, $f5, $00, $eb, $6a, $e0, $59, $00, $5f, $a0
    db $00, $02, $00, $55, $5e, $e0, $77, $5a, $e0, $ff, $ff, $00, $0f, $00, $5d, $00
    db $bc, $01, $b9, $fd, $fe, $e1, $5c, $e0, $fe, $00, $fc, $56, $e0, $de, $0f, $20
    db $0f, $d0, $07, $2c, $e0, $4b, $e0, $84, $c5, $fe, $e3, $fc, $02, $c3, $fe, $c1
    db $f8, $fb, $f0, $f7, $e0, $ef, $bf, $c0, $c0, $80, $ab, $00, $74, $ca, $e2, $ea
    db $fe, $ac, $e0, $a9, $00, $fd, $10, $6e, $28, $d5, $ff, $10, $ed, $08, $f5, $40
    db $bd, $20, $dd, $ff, $50, $ad, $00, $fd, $45, $ba, $9a, $65, $ff, $35, $ca, $60
    db $9f, $50, $af, $80, $7d, $3f, $02, $f5, $05, $ea, $40, $bf, $e0, $c2, $fc, $e2
    db $8b, $80, $7f, $d6, $c2, $df, $ee, $e7, $f6, $f0, $6c, $e1, $fe, $ff, $01, $fc
    db $03, $fa, $07, $f6, $0f, $ec, $ff, $0f, $ea, $fe, $00, $c6, $30, $9f, $40, $e2
    db $bd, $e5, $e3, $60, $e2, $62, $e5, $5a, $e1, $00, $01, $fc, $cb, $fd, $fc, $ff
    db $e1, $fd, $fe, $e1, $e4, $a0, $f1, $50, $f7, $ad, $28, $d5, $84, $c0, $7d, $00
    db $e9, $00, $7f, $f4, $00, $fe, $50, $af, $a0, $5f, $5e, $c4, $63, $5f, $00, $74
    db $e8, $9c, $e0, $fc, $c0, $03, $fb, $42, $c2, $ff, $87, $78, $43, $fc, $b1, $fe
    db $f8, $ce, $ff, $cc, $b7, $b6, $1f, $dc, $1f, $da, $3f, $ff, $bd, $3f, $ba, $7f
    db $7d, $7f, $7a, $7e, $ff, $7c, $7f, $7a, $c1, $08, $c0, $10, $80, $ff, $34, $89
    db $2c, $89, $28, $89, $28, $09, $c0, $fe, $e0, $84, $e9, $da, $c1, $70, $a1, $dc
    db $89, $08, $c0, $7a, $00, $fd, $3d, $5f, $a0, $ab, $80, $b5, $c0, $de, $e0, $fa
    db $8e, $c1, $ff, $ee, $e0, $55, $00, $2f, $00, $17, $ef, $00, $8f, $00, $d7, $04
    db $ec, $df, $03, $fb, $fc, $fe, $e7, $6a, $c1, $bb, $bb, $7b, $7b, $7d, $7d, $ff
    db $f1, $f1, $6d, $6d, $ed, $ed, $fd, $fd, $bf, $fb, $fb, $ff, $f4, $ff, $ea, $fc
    db $e0, $e8, $fb, $ff, $d0, $fc, $e3, $8d, $2c, $85, $34, $c1, $f3, $18, $f3, $ab
    db $c6, $56, $c1, $1f, $1f, $6f, $0f, $ff, $2f, $cf, $8f, $6f, $9f, $5f, $df, $1f
    db $e7, $f0, $f5, $f8, $d4, $86, $70, $e2, $ca, $00, $a5, $ff, $00, $f2, $00, $a8
    db $00, $14, $c0, $ce, $4f, $e0, $e5, $f8, $f8, $fc, $c0, $f8, $c1, $7f, $f4, $c0
    db $7f, $5e, $00, $2d, $00, $16, $01, $f9, $fe, $a0, $fd, $fa, $54, $a0, $f2, $00
    db $d8, $03, $eb, $01, $fd, $c5, $84, $85, $1e, $9e, $61, $61, $f3, $f3, $ba, $80
    db $e0, $f0, $84, $e0, $f4, $ff, $f8, $78, $e0, $fa, $8f, $ff, $fd, $ff, $fe, $33
    db $c3, $c5, $a1, $53, $c3, $df, $7d, $1f, $fe, $e1, $9f, $5f, $bf, $3f, $3f, $14
    db $80, $fe, $a8, $80, $fe, $f8, $fc, $f3, $fb, $f7, $f7, $6e, $56, $83, $fc, $fc
    db $00, $ff, $e0, $8f, $20, $8f, $e1, $ff, $f0, $00, $80, $0f, $00, $7f, $38, $38
    db $87, $7f, $7f, $80, $cd, $82, $e6, $e0, $8f, $80, $a0, $63, $1f, $ff, $1f, $e3
    db $03, $3c, $00, $01, $c0, $03, $ee, $00, $88, $08, $08, $f3, $bd, $80, $f8, $06
    db $51, $7f, $ad, $03, $fb, $07, $e7, $1f, $1f, $76, $71, $ff, $fe, $fe, $02, $03
    db $04, $07, $08, $0f, $ff, $18, $1f, $30, $3f, $70, $5f, $f0, $9f, $6f, $e0, $3f
    db $07, $f0, $fe, $e1, $0f, $e0, $fe, $e1, $ef, $1f, $c0, $1f, $c0, $79, $80, $02
    db $fe, $01, $cf, $f5, $0a, $fa, $05, $fc, $e3, $a8, $61, $3f, $bf, $7b, $3f, $bf
    db $49, $e1, $8f, $6f, $4f, $af, $b4, $e9, $e7, $f8, $f9, $f0, $48, $e0, $0e, $65
    db $01, $01, $00, $67, $fe, $04, $03, $00, $69, $c6, $e1, $fe, $fe, $97, $a1, $ff
    db $fb, $f8, $f7, $f0, $f3, $f4, $ef, $e0, $f3, $ef, $e0, $9d, $e0, $fe, $e6, $80
    db $3f, $80, $3f, $80, $34, $ad, $e1, $e8, $d5, $e2, $74, $e1, $85, $a0, $6c, $e0
    db $fc, $e3, $87, $ff, $77, $47, $b7, $8b, $73, $43, $bb, $83, $ff, $7b, $45, $b9
    db $81, $7d, $41, $bd, $e0, $ff, $ec, $e3, $e8, $c2, $d9, $c5, $d2, $c2, $ff, $d5
    db $cd, $d2, $e7, $e8, $e7, $e8, $ff, $fd, $00, $ee, $63, $bf, $40, $75, $8a, $ff
    db $00, $ff, $bb, $00, $9f, $5f, $ef, $0f, $af, $4f, $ff, $77, $87, $b7, $47, $57
    db $a7, $f7, $07, $ff, $57, $a7, $df, $c0, $cf, $d0, $bf, $80, $df, $9f, $a0, $7f
    db $00, $3f, $da, $80, $7f, $80, $e0, $7c, $e1, $fc, $e9, $57, $c4, $7c, $86, $ec
    db $c0, $40, $0f, $60, $7e, $fe, $e0, $a0, $0f, $80, $0f, $c0, $0f, $70, $e0, $f4
    db $f5, $81, $fc, $e3, $ff, $5c, $c0, $a2, $5c, $40, $be, $ff, $a0, $5e, $55, $aa
    db $a0, $5f, $d4, $2b, $ef, $f8, $07, $00, $01, $f0, $6b, $7f, $7f, $e7, $c7, $e8
    db $f7, $f0, $58, $41, $91, $81, $74, $41, $bd, $00, $9f, $dd, $00, $de, $00, $ee
    db $ff, $42, $fd, $41, $eb, $ff, $13, $db, $23, $eb, $13, $fb, $03, $6b, $7f, $13
    db $7b, $03, $b7, $07, $b7, $07, $5c, $a2, $7f, $00, $3f, $00, $4f, $40, $70, $70
    db $aa, $61, $fc, $66, $e8, $fe, $e2, $0f, $e0, $0e, $e0, $0c, $e0, $fa, $e3, $a0
    db $f8, $d8, $63, $c0, $00, $03, $03, $1f, $b5, $1f, $b3, $a0, $3f, $5a, $c1, $3f
    db $bf, $c9, $a0, $f0, $ff, $11, $e9, $2b, $d3, $13, $eb, $3b, $c3, $6f, $1b, $e3
    db $2d, $d1, $70, $2b, $fc, $fc, $32, $45, $ff, $f0, $f3, $c2, $cc, $09, $31, $27
    db $c7, $fd, $7b, $7b, $40, $3c, $00, $c1, $01, $9f, $1f, $4e, $42, $63, $cf, $0f
    db $df, $b2, $e0, $60, $88, $7f, $fe, $e2, $3d, $7e, $fe, $e1, $80, $be, $80, $be
    db $f0, $e4, $ea, $e1, $45, $ff, $f4, $40, $c0, $64, $6a, $5c, $a4, $3e, $66, $05
    db $f0, $ec, $d8, $3b, $a0, $01, $a2, $fb, $82, $0f, $ef, $fe, $e0, $0f, $1d, $ff
    db $e1, $2d, $d1, $15, $e9, $2d, $d1, $16, $7f, $e8, $0e, $f0, $06, $f8, $0a, $f4
    db $52, $ab, $fb, $f0, $f1, $96, $a5, $e1, $e6, $86, $98, $19, $ff, $61, $67, $87
    db $f0, $f3, $82, $8c, $09, $87, $71, $67, $87, $50, $e5, $48, $e5, $88, $05, $5c
    db $e0, $bf, $ee, $fe, $e9, $15, $00, $0b, $b7, $60, $2a, $00, $1d, $62, $af, $60
    db $5f, $a8, $c0, $23, $63, $d7, $20, $00, $ab, $97, $46, $a9, $fd, $63, $40, $b3
    db $45, $f0, $f7, $20, $55, $07, $62, $eb, $6b, $00, $57, $ff, $40, $07, $6c, $c0
    db $f7, $07, $8b, $63, $fe, $fb, $21, $05, $fa, $0b, $f4, $05, $fa, $02, $97, $fd
    db $01, $fe, $fc, $e1, $00, $06, $44, $32, $80, $bf, $bf, $9f, $5f, $4f, $af, $80
    db $40, $8b, $8b, $1c, $7d, $1c, $c0, $07, $f0, $f3, $80, $8f, $00, $de, $20, $3f
    db $fe, $fe, $e0, $e0, $00, $1c, $b6, $21, $b0, $40, $ff, $f3, $c1, $ce, $0e, $30
    db $39, $c1, $e7, $ad, $07, $38, $e5, $c0, $df, $fe, $e0, $de, $fe, $e3, $80, $27
    db $9e, $00, $4c, $97, $c3, $ff, $37, $fd, $f0, $ed, $6b, $e0, $f0, $3d, $aa, $76
    db $85, $92, $60, $fa, $e1, $5f, $a0, $2b, $d4, $ff, $17, $e8, $0a, $f5, $15, $ea
    db $0a, $f5, $fe, $76, $01, $e0, $03, $f0, $03, $f8, $01, $fc, $ff, $01, $fc, $80
    db $fe, $50, $ee, $c8, $ee, $7d, $c8, $62, $02, $fc, $03, $f3, $0f, $8f, $fa, $a3
    db $bb, $0f, $cf, $f2, $a9, $ff, $ff, $f0, $57, $00, $7c, $4a, $41, $e0, $60, $fa
    db $e0, $3c, $c6, $a0, $53, $25, $ea, $c1, $00, $5c, $7d, $03, $41, $23, $3f, $00
    db $40, $b7, $00, $d0, $b5, $22, $15, $fb, $9b, $00, $0a, $ad, $00, $ab, $82, $c6
    db $a6, $c1, $2b, $2d, $ff, $fc, $00, $f0, $03, $e0, $0f, $9f, $1f, $ff, $8f, $0f
    db $81, $01, $00, $0e, $00, $3e, $f4, $cd, $43, $3b, $61, $f7, $ff, $e2, $73, $73
    db $70, $70, $ff, $00, $00, $22, $c4, $10, $66, $20, $56, $ff, $10, $64, $01, $71
    db $03, $23, $07, $07, $03, $ff, $ff, $00, $00

    nop                                           ; $6553: $00

    db $61, $09, $ff, $ff, $ff, $ff, $ff, $ff, $fe, $fd, $0a, $0a, $e0, $fd, $4d, $0c
    db $c2, $fa, $0a, $0b, $e0, $ff, $e0, $fa, $0c, $c0, $f8, $69, $0d, $ff, $e0, $a1
    db $f8, $08, $e0, $e0, $0f, $0f, $1c, $e4, $49, $0f, $f6, $e6, $0b, $e5, $0f, $c1
    db $e1, $e0, $f7, $49, $e0, $fc, $24, $82, $e2, $80, $e0, $69, $a1, $e5, $a0, $ed
    db $0c, $e0, $e3, $00, $e1, $84, $e2, $f0, $e0, $e0, $0e, $ff, $e1, $e0, $e4, $76
    db $d0, $e0, $e3, $0e, $15, $0c, $7e, $d5, $0f, $e0, $e3, $0e, $9f, $d9, $ff, $ff
    db $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $00, $00

    nop                                           ; $65d0: $00

    db $9d, $00, $ff, $e1, $01, $00, $02, $f8, $e2, $fb, $f5, $03, $fb, $04, $05, $e0
    db $f6, $06, $07, $08, $09, $0a, $fb, $0b, $0c, $c0, $f5, $0d, $0e, $0f, $10, $11
    db $ef, $12, $13, $14, $15, $9f, $f4, $16, $17, $18, $7f, $19, $1a, $1b, $1c, $1d
    db $1e, $1f, $7e, $f3, $ff, $20, $21, $22, $23, $24, $25, $26, $27, $fb, $28, $29
    db $5e, $f4, $2a, $2b, $2c, $26, $2d, $ef, $2e, $2f, $30, $31, $3e, $f4, $32, $33
    db $34, $bf, $35, $36, $37, $38, $39, $3a, $1e, $f5, $3b, $7f, $3c, $3d, $3e, $3f
    db $40, $41, $42, $fe, $d6, $bf, $43, $44, $45, $46, $47, $48, $df, $d6, $49, $bf
    db $4a, $26, $26, $4b, $4c, $4d, $bf, $c4, $4e, $fb, $4f, $50, $b5, $cc, $51, $52
    db $26, $53, $54, $bb, $55, $56, $9f, $c4, $57, $58, $59, $60, $ec, $5a, $7f, $5b
    db $26, $5c, $5d, $5e, $5f, $60, $7e, $c3, $f7, $61, $62, $63, $40, $ec, $64, $65
    db $26, $26, $ef, $66, $67, $68, $49, $56, $c2, $69, $6a, $6b, $fd, $6c, $55, $cc
    db $6d, $6e, $6f, $70, $71, $72, $bd, $73, $37, $c1, $74, $75, $76, $77, $37, $ce
    db $78, $ff, $79, $7a, $7b, $7c, $7d, $7e, $7f, $80, $f7, $81, $82, $83, $e2, $ef
    db $00, $00, $84, $85, $ff, $86, $87, $86, $88, $89, $8a, $8b, $8c, $fd, $8d, $c0
    db $d2, $8e, $8f, $90, $91, $92, $93, $07, $94, $95, $96, $dd, $ba, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $fd, $00, $00

    nop                                           ; $66dc: $00
    push hl                                       ; $66dd: $e5
    ld h, [hl]                                    ; $66de: $66
    dec h                                         ; $66df: $25
    ld h, a                                       ; $66e0: $67
    and l                                         ; $66e1: $a5
    ld l, a                                       ; $66e2: $6f
    ld b, b                                       ; $66e3: $40
    ld [hl], b                                    ; $66e4: $70
    ld a, a                                       ; $66e5: $7f
    ld e, a                                       ; $66e6: $5f
    ld e, l                                       ; $66e7: $5d
    ld [hl-], a                                   ; $66e8: $32
    nop                                           ; $66e9: $00
    nop                                           ; $66ea: $00
    ld b, a                                       ; $66eb: $47
    nop                                           ; $66ec: $00
    ld e, a                                       ; $66ed: $5f
    ld bc, $08ad                                  ; $66ee: $01 $ad $08
    ld e, l                                       ; $66f1: $5d
    ld [hl-], a                                   ; $66f2: $32
    nop                                           ; $66f3: $00

Jump_078_66f4:
    nop                                           ; $66f4: $00
    xor l                                         ; $66f5: $ad
    ld [$0047], sp                                ; $66f6: $08 $47 $00
    ld e, l                                       ; $66f9: $5d
    ld [hl-], a                                   ; $66fa: $32
    nop                                           ; $66fb: $00
    nop                                           ; $66fc: $00
    ld a, a                                       ; $66fd: $7f
    ld e, a                                       ; $66fe: $5f
    ld e, l                                       ; $66ff: $5d
    ld [hl-], a                                   ; $6700: $32
    xor l                                         ; $6701: $ad
    ld [$0000], sp                                ; $6702: $08 $00 $00
    rst $38                                       ; $6705: $ff
    ld a, a                                       ; $6706: $7f
    ld e, l                                       ; $6707: $5d
    ld [hl-], a                                   ; $6708: $32
    xor l                                         ; $6709: $ad
    ld [$0000], sp                                ; $670a: $08 $00 $00
    rst $38                                       ; $670d: $ff
    ld a, a                                       ; $670e: $7f
    dec hl                                        ; $670f: $2b
    ld l, l                                       ; $6710: $6d
    ld a, a                                       ; $6711: $7f
    ld e, a                                       ; $6712: $5f
    nop                                           ; $6713: $00
    nop                                           ; $6714: $00
    xor l                                         ; $6715: $ad
    nop                                           ; $6716: $00
    ld e, a                                       ; $6717: $5f
    ld bc, $7fff                                  ; $6718: $01 $ff $7f
    nop                                           ; $671b: $00
    nop                                           ; $671c: $00
    rst $38                                       ; $671d: $ff
    ld a, a                                       ; $671e: $7f
    ld a, a                                       ; $671f: $7f
    ld e, a                                       ; $6720: $5f
    ld e, l                                       ; $6721: $5d
    ld [hl-], a                                   ; $6722: $32
    nop                                           ; $6723: $00
    nop                                           ; $6724: $00
    db $d3                                        ; $6725: $d3
    nop                                           ; $6726: $00
    rst $38                                       ; $6727: $ff
    cp $eb                                        ; $6728: $fe $eb
    rst $38                                       ; $672a: $ff
    db $ec                                        ; $672b: $ec
    cp $f4                                        ; $672c: $fe $f4
    ld [$fec0], a                                 ; $672e: $ea $c0 $fe
    sub $df                                       ; $6731: $d6 $df
    rst $20                                       ; $6733: $e7
    ldh a, [$fa]                                  ; $6734: $f0 $fa
    push bc                                       ; $6736: $c5
    ldh [$bf], a                                  ; $6737: $e0 $bf
    rst $08                                       ; $6739: $cf
    rst $20                                       ; $673a: $e7
    ld a, a                                       ; $673b: $7f
    ccf                                           ; $673c: $3f
    rst $18                                       ; $673d: $df
    rlca                                          ; $673e: $07
    ld b, e                                       ; $673f: $43
    nop                                           ; $6740: $00
    and b                                         ; $6741: $a0
    ld bc, $eabf                                  ; $6742: $01 $bf $ea
    ld a, a                                       ; $6745: $7f
    ld a, a                                       ; $6746: $7f
    db $fd                                        ; $6747: $fd
    rra                                           ; $6748: $1f
    xor a                                         ; $6749: $af
    db $e4                                        ; $674a: $e4
    db $fc                                        ; $674b: $fc
    rst $38                                       ; $674c: $ff
    ldh a, [$ee]                                  ; $674d: $f0 $ee
    ret nz                                        ; $674f: $c0

    call nc, $80ff                                ; $6750: $d4 $ff $80
    and b                                         ; $6753: $a0
    nop                                           ; $6754: $00
    rst $38                                       ; $6755: $ff
    ld hl, sp-$02                                 ; $6756: $f8 $fe
    ldh [$fd], a                                  ; $6758: $e0 $fd
    ld a, a                                       ; $675a: $7f
    add b                                         ; $675b: $80
    ld [$5400], a                                 ; $675c: $ea $00 $54
    nop                                           ; $675f: $00
    and b                                         ; $6760: $a0
    nop                                           ; $6761: $00
    rst $38                                       ; $6762: $ff
    pop hl                                        ; $6763: $e1
    ld a, a                                       ; $6764: $7f
    rst $38                                       ; $6765: $ff
    nop                                           ; $6766: $00
    rst $28                                       ; $6767: $ef
    nop                                           ; $6768: $00
    ld d, l                                       ; $6769: $55
    nop                                           ; $676a: $00
    and d                                         ; $676b: $a2
    db $f4                                        ; $676c: $f4
    ld [c], a                                     ; $676d: $e2
    cp $ef                                        ; $676e: $fe $ef
    ldh [$71], a                                  ; $6770: $e0 $71
    push de                                       ; $6772: $d5
    nop                                           ; $6773: $00
    ld a, [$d500]                                 ; $6774: $fa $00 $d5
    nop                                           ; $6777: $00
    db $fd                                        ; $6778: $fd
    add b                                         ; $6779: $80
    db $e4                                        ; $677a: $e4
    pop hl                                        ; $677b: $e1
    inc b                                         ; $677c: $04
    nop                                           ; $677d: $00
    ld d, e                                       ; $677e: $53
    nop                                           ; $677f: $00
    cp c                                          ; $6780: $b9
    ld d, b                                       ; $6781: $50
    cp $d8                                        ; $6782: $fe $d8
    db $e3                                        ; $6784: $e3
    ld a, [bc]                                    ; $6785: $0a
    nop                                           ; $6786: $00
    daa                                           ; $6787: $27
    nop                                           ; $6788: $00
    ld [de], a                                    ; $6789: $12
    ld [bc], a                                    ; $678a: $02
    add hl, sp                                    ; $678b: $39
    rst $38                                       ; $678c: $ff
    ld bc, $0ff4                                  ; $678d: $01 $f4 $0f
    rst $00                                       ; $6790: $c7
    rlca                                          ; $6791: $07
    ld [hl], e                                    ; $6792: $73
    inc bc                                        ; $6793: $03
    cp c                                          ; $6794: $b9
    rst $38                                       ; $6795: $ff
    ld bc, $0054                                  ; $6796: $01 $54 $00
    ld [bc], a                                    ; $6799: $02
    ld e, h                                       ; $679a: $5c
    nop                                           ; $679b: $00
    ccf                                           ; $679c: $3f
    ld bc, $1ffd                                  ; $679d: $01 $fd $1f
    add b                                         ; $67a0: $80
    add sp, $7f                                   ; $67a1: $e8 $7f
    ccf                                           ; $67a3: $3f
    ccf                                           ; $67a4: $3f
    rra                                           ; $67a5: $1f
    rst $18                                       ; $67a6: $df
    rrca                                          ; $67a7: $0f
    db $f4                                        ; $67a8: $f4
    ccf                                           ; $67a9: $3f
    db $ed                                        ; $67aa: $ed
    dec a                                         ; $67ab: $3d
    pop hl                                        ; $67ac: $e1
    db $fc                                        ; $67ad: $fc
    add c                                         ; $67ae: $81
    ldh [$f9], a                                  ; $67af: $e0 $f9
    rst $38                                       ; $67b1: $ff
    cp $fe                                        ; $67b2: $fe $fe
    rst $38                                       ; $67b4: $ff
    ld hl, sp-$08                                 ; $67b5: $f8 $f8
    ldh [$e0], a                                  ; $67b7: $e0 $e0
    nop                                           ; $67b9: $00

jr_078_67ba:
    rst $38                                       ; $67ba: $ff
    rlca                                          ; $67bb: $07
    rst $38                                       ; $67bc: $ff
    sbc a                                         ; $67bd: $9f
    jr @-$06                                      ; $67be: $18 $f8

    ld h, b                                       ; $67c0: $60
    ldh [$80], a                                  ; $67c1: $e0 $80
    sbc l                                         ; $67c3: $9d
    ld [c], a                                     ; $67c4: $e2
    add b                                         ; $67c5: $80
    ldh [rIE], a                                  ; $67c6: $e0 $ff
    ld sp, hl                                     ; $67c8: $f9
    inc bc                                        ; $67c9: $03
    add h                                         ; $67ca: $84
    push hl                                       ; $67cb: $e5
    ld [hl], b                                    ; $67cc: $70
    ld [c], a                                     ; $67cd: $e2
    rra                                           ; $67ce: $1f
    ldh [$e6], a                                  ; $67cf: $e0 $e6
    ld hl, sp+$3d                                 ; $67d1: $f8 $3d
    rst $28                                       ; $67d3: $ef
    ld e, $07                                     ; $67d4: $1e $07
    inc bc                                        ; $67d6: $03
    ld bc, $e46e                                  ; $67d7: $01 $6e $e4
    call nc, $ae23                                ; $67da: $d4 $23 $ae
    rst $38                                       ; $67dd: $ff
    ld de, $0857                                  ; $67de: $11 $57 $08
    xor c                                         ; $67e1: $a9
    ld d, $f4                                     ; $67e2: $16 $f4
    adc e                                         ; $67e4: $8b
    ret nc                                        ; $67e5: $d0

    rst $38                                       ; $67e6: $ff
    ld l, a                                       ; $67e7: $6f
    ld h, c                                       ; $67e8: $61
    ccf                                           ; $67e9: $3f
    ld [hl-], a                                   ; $67ea: $32
    rra                                           ; $67eb: $1f
    ldh a, [rIF]                                  ; $67ec: $f0 $0f
    ld [hl], b                                    ; $67ee: $70
    rst $38                                       ; $67ef: $ff
    adc a                                         ; $67f0: $8f
    jr c, jr_078_67ba                             ; $67f1: $38 $c7

    adc h                                         ; $67f3: $8c
    ld [hl], e                                    ; $67f4: $73
    add d                                         ; $67f5: $82
    ld a, l                                       ; $67f6: $7d
    ld d, b                                       ; $67f7: $50
    rst $38                                       ; $67f8: $ff
    cp a                                          ; $67f9: $bf
    ld c, h                                       ; $67fa: $4c
    rst $38                                       ; $67fb: $ff
    and a                                         ; $67fc: $a7
    rst $38                                       ; $67fd: $ff
    ld a, [bc]                                    ; $67fe: $0a
    rst $38                                       ; $67ff: $ff
    ld b, l                                       ; $6800: $45
    rst $38                                       ; $6801: $ff
    rst $38                                       ; $6802: $ff
    ld [hl+], a                                   ; $6803: $22
    rst $38                                       ; $6804: $ff
    ld sp, $1aff                                  ; $6805: $31 $ff $1a
    rst $38                                       ; $6808: $ff
    dec e                                         ; $6809: $1d
    ei                                            ; $680a: $fb
    rst $38                                       ; $680b: $ff
    ld l, [hl]                                    ; $680c: $6e
    jp nz, $87c0                                  ; $680d: $c2 $c0 $87

    rst $38                                       ; $6810: $ff
    ld d, a                                       ; $6811: $57
    rst $28                                       ; $6812: $ef
    xor e                                         ; $6813: $ab
    cp a                                          ; $6814: $bf
    rst $30                                       ; $6815: $f7
    ld d, e                                       ; $6816: $53
    rst $38                                       ; $6817: $ff
    db $fd                                        ; $6818: $fd
    ei                                            ; $6819: $fb
    ld a, c                                       ; $681a: $79
    or h                                          ; $681b: $b4
    pop bc                                        ; $681c: $c1
    dec b                                         ; $681d: $05
    cp $b9                                        ; $681e: $fe $b9
    call nz, $fcfe                                ; $6820: $c4 $fe $fc
    db $fc                                        ; $6823: $fc
    db $fc                                        ; $6824: $fc
    ld hl, sp-$08                                 ; $6825: $f8 $f8
    ldh a, [$ef]                                  ; $6827: $f0 $ef
    pop af                                        ; $6829: $f1
    ldh a, [$c0]                                  ; $682a: $f0 $c0
    ret nz                                        ; $682c: $c0

    add [hl]                                      ; $682d: $86
    push hl                                       ; $682e: $e5
    nop                                           ; $682f: $00
    inc bc                                        ; $6830: $03
    ld a, [bc]                                    ; $6831: $0a
    sub a                                         ; $6832: $97
    dec b                                         ; $6833: $05
    rlca                                          ; $6834: $07
    ld [$cc80], sp                                ; $6835: $08 $80 $cc
    ld a, a                                       ; $6838: $7f
    ld [hl], e                                    ; $6839: $73
    ld [$c0de], a                                 ; $683a: $ea $de $c0
    add hl, de                                    ; $683d: $19
    rst $38                                       ; $683e: $ff
    rrca                                          ; $683f: $0f
    inc c                                         ; $6840: $0c
    rlca                                          ; $6841: $07
    rlca                                          ; $6842: $07
    inc bc                                        ; $6843: $03
    inc bc                                        ; $6844: $03
    ld bc, $bd01                                  ; $6845: $01 $01 $bd
    nop                                           ; $6848: $00
    ld l, [hl]                                    ; $6849: $6e
    db $e3                                        ; $684a: $e3
    ld a, a                                       ; $684b: $7f
    rst $38                                       ; $684c: $ff
    ld hl, sp-$20                                 ; $684d: $f8 $e0
    ld [c], a                                     ; $684f: $e2
    pop bc                                        ; $6850: $c1
    add b                                         ; $6851: $80
    cp [hl]                                       ; $6852: $be
    rst $38                                       ; $6853: $ff
    ldh [$c3], a                                  ; $6854: $e0 $c3
    ld b, b                                       ; $6856: $40
    rst $18                                       ; $6857: $df
    ld e, a                                       ; $6858: $5f
    pop bc                                        ; $6859: $c1
    ld b, [hl]                                    ; $685a: $46
    rst $20                                       ; $685b: $e7
    rlca                                          ; $685c: $07
    rst $38                                       ; $685d: $ff
    db $fd                                        ; $685e: $fd
    rst $38                                       ; $685f: $ff
    ld a, [$5fff]                                 ; $6860: $fa $ff $5f
    ld [bc], a                                    ; $6863: $02
    xor a                                         ; $6864: $af
    ld bc, $57df                                  ; $6865: $01 $df $57
    nop                                           ; $6868: $00
    dec hl                                        ; $6869: $2b
    ld bc, $3517                                  ; $686a: $01 $17 $35
    ret nz                                        ; $686d: $c0

    ld e, a                                       ; $686e: $5f
    rst $38                                       ; $686f: $ff
    adc c                                         ; $6870: $89
    db $eb                                        ; $6871: $eb
    ld h, [hl]                                    ; $6872: $66
    jp nz, $e2fc                                  ; $6873: $c2 $fc $e2

    cp a                                          ; $6876: $bf
    dec h                                         ; $6877: $25
    pop bc                                        ; $6878: $c1
    ei                                            ; $6879: $fb
    ld [c], a                                     ; $687a: $e2
    inc e                                         ; $687b: $1c
    jp $bff7                                      ; $687c: $c3 $f7 $bf


    rst $38                                       ; $687f: $ff
    rst $30                                       ; $6880: $f7
    rst $30                                       ; $6881: $f7
    rst $20                                       ; $6882: $e7
    rst $30                                       ; $6883: $f7
    rst $20                                       ; $6884: $e7
    ld d, $c8                                     ; $6885: $16 $c8
    cp $fa                                        ; $6887: $fe $fa
    rst $38                                       ; $6889: $ff
    ldh [$fc], a                                  ; $688a: $e0 $fc
    rst $38                                       ; $688c: $ff
    xor e                                         ; $688d: $ab
    ld a, a                                       ; $688e: $7f
    ld a, a                                       ; $688f: $7f

jr_078_6890:
    ld a, [c]                                     ; $6890: $f2
    ldh [$e5], a                                  ; $6891: $e0 $e5
    rst $38                                       ; $6893: $ff
    ldh [$ee], a                                  ; $6894: $e0 $ee
    pop bc                                        ; $6896: $c1
    call z, $dac1                                 ; $6897: $cc $c1 $da
    ret nz                                        ; $689a: $c0

    call c, $c0ff                                 ; $689b: $dc $ff $c0
    jp c, $9480                                   ; $689e: $da $80 $94

    add b                                         ; $68a1: $80
    rlca                                          ; $68a2: $07
    or b                                          ; $68a3: $b0
    ld b, e                                       ; $68a4: $43
    rst $38                                       ; $68a5: $ff
    jr @-$3b                                      ; $68a6: $18 $c3

    ld [$04e1], sp                                ; $68a8: $08 $e1 $04
    ld a, c                                       ; $68ab: $79
    nop                                           ; $68ac: $00
    ld a, [hl]                                    ; $68ad: $7e
    rst $38                                       ; $68ae: $ff
    nop                                           ; $68af: $00
    ccf                                           ; $68b0: $3f
    add b                                         ; $68b1: $80
    add hl, de                                    ; $68b2: $19
    add b                                         ; $68b3: $80
    nop                                           ; $68b4: $00
    ld a, a                                       ; $68b5: $7f
    add b                                         ; $68b6: $80
    rst $38                                       ; $68b7: $ff
    ccf                                           ; $68b8: $3f
    add b                                         ; $68b9: $80
    ccf                                           ; $68ba: $3f
    ret nz                                        ; $68bb: $c0

    rra                                           ; $68bc: $1f
    ret nz                                        ; $68bd: $c0

    rra                                           ; $68be: $1f
    ldh [$df], a                                  ; $68bf: $e0 $df
    rrca                                          ; $68c1: $0f
    ldh a, [rTAC]                                 ; $68c2: $f0 $07
    pop hl                                        ; $68c4: $e1
    ld b, $b0                                     ; $68c5: $06 $b0
    and l                                         ; $68c7: $a5
    inc bc                                        ; $68c8: $03
    db $fc                                        ; $68c9: $fc
    rst $18                                       ; $68ca: $df
    rra                                           ; $68cb: $1f
    ldh [$3f], a                                  ; $68cc: $e0 $3f
    ret nz                                        ; $68ce: $c0

    rst $38                                       ; $68cf: $ff
    rra                                           ; $68d0: $1f
    pop bc                                        ; $68d1: $c1
    rst $38                                       ; $68d2: $ff
    rrca                                          ; $68d3: $0f
    rst $38                                       ; $68d4: $ff
    ldh a, [$7f]                                  ; $68d5: $f0 $7f
    add b                                         ; $68d7: $80
    cp $00                                        ; $68d8: $fe $00
    db $fd                                        ; $68da: $fd
    nop                                           ; $68db: $00
    ld a, [$01ff]                                 ; $68dc: $fa $ff $01
    push af                                       ; $68df: $f5
    ld [bc], a                                    ; $68e0: $02
    ld b, $f0                                     ; $68e1: $06 $f0
    rlc h                                         ; $68e3: $cb $04
    xor a                                         ; $68e5: $af
    rst $38                                       ; $68e6: $ff
    ld de, $225a                                  ; $68e7: $11 $5a $22
    or l                                          ; $68ea: $b5
    ld b, l                                       ; $68eb: $45
    ld l, d                                       ; $68ec: $6a
    adc d                                         ; $68ed: $8a
    or l                                          ; $68ee: $b5
    rst $38                                       ; $68ef: $ff
    dec [hl]                                      ; $68f0: $35
    ld l, b                                       ; $68f1: $68
    ld l, b                                       ; $68f2: $68
    ld h, b                                       ; $68f3: $60
    rst $38                                       ; $68f4: $ff
    ld b, b                                       ; $68f5: $40
    rst $38                                       ; $68f6: $ff
    call z, $f3ff                                 ; $68f7: $cc $ff $f3
    sub $a9                                       ; $68fa: $d6 $a9
    dec hl                                        ; $68fc: $2b
    call nc, $ea95                                ; $68fd: $d4 $95 $ea
    ld d, d                                       ; $6900: $52
    rst $38                                       ; $6901: $ff
    db $fd                                        ; $6902: $fd
    jr z, @+$01                                   ; $6903: $28 $ff

    ld e, $0c                                     ; $6905: $1e $0c
    adc a                                         ; $6907: $8f
    ld b, d                                       ; $6908: $42
    jp $207f                                      ; $6909: $c3 $7f $20


    ld h, b                                       ; $690c: $60
    nop                                           ; $690d: $00
    jr jr_078_6890                                ; $690e: $18 $80

    ld [bc], a                                    ; $6910: $02
    ldh [rNR30], a                                ; $6911: $e0 $1a
    ret nz                                        ; $6913: $c0

    rst $38                                       ; $6914: $ff
    nop                                           ; $6915: $00
    ld a, a                                       ; $6916: $7f
    dec d                                         ; $6917: $15
    rra                                           ; $6918: $1f
    dec bc                                        ; $6919: $0b
    rst $08                                       ; $691a: $cf
    add c                                         ; $691b: $81
    rst $30                                       ; $691c: $f7
    cp a                                          ; $691d: $bf
    jr nz, jr_078_699f                            ; $691e: $20 $7f

    nop                                           ; $6920: $00
    rra                                           ; $6921: $1f
    nop                                           ; $6922: $00
    ld c, e                                       ; $6923: $4b
    ld d, e                                       ; $6924: $53
    and b                                         ; $6925: $a0
    rst $18                                       ; $6926: $df
    rst $38                                       ; $6927: $ff
    rrca                                          ; $6928: $0f
    rst $18                                       ; $6929: $df
    adc a                                         ; $692a: $8f
    rst $28                                       ; $692b: $ef
    rst $00                                       ; $692c: $c7
    rst $28                                       ; $692d: $ef
    add a                                         ; $692e: $87
    rst $30                                       ; $692f: $f7
    rst $38                                       ; $6930: $ff
    ld b, a                                       ; $6931: $47
    rst $30                                       ; $6932: $f7
    inc hl                                        ; $6933: $23
    rst $30                                       ; $6934: $f7
    inc bc                                        ; $6935: $03
    ei                                            ; $6936: $fb
    ld bc, $ffe7                                  ; $6937: $01 $e7 $ff
    db $e3                                        ; $693a: $e3
    rst $20                                       ; $693b: $e7
    jp $c3c3                                      ; $693c: $c3 $c3 $c3


    res 0, e                                      ; $693f: $cb $83
    sub e                                         ; $6941: $93
    ld a, a                                       ; $6942: $7f
    add c                                         ; $6943: $81
    adc e                                         ; $6944: $8b
    ld bc, $0113                                  ; $6945: $01 $13 $01
    dec hl                                        ; $6948: $2b
    ld bc, $c098                                  ; $6949: $01 $98 $c0
    cp $96                                        ; $694c: $fe $96
    pop bc                                        ; $694e: $c1
    ld hl, sp-$08                                 ; $694f: $f8 $f8
    ld a, [c]                                     ; $6951: $f2
    ldh a, [$e2]                                  ; $6952: $f0 $e2
    ldh a, [$e4]                                  ; $6954: $f0 $e4
    sub a                                         ; $6956: $97
    ldh [$c6], a                                  ; $6957: $e0 $c6
    ld a, a                                       ; $6959: $7f
    rst $38                                       ; $695a: $ff
    pop hl                                        ; $695b: $e1
    ccf                                           ; $695c: $3f
    db $e4                                        ; $695d: $e4
    and b                                         ; $695e: $a0
    cp $e1                                        ; $695f: $fe $e1
    rra                                           ; $6961: $1f
    rst $20                                       ; $6962: $e7
    ccf                                           ; $6963: $3f
    rra                                           ; $6964: $1f
    sbc d                                         ; $6965: $9a
    inc a                                         ; $6966: $3c
    ldh [$fc], a                                  ; $6967: $e0 $fc
    db $e3                                        ; $6969: $e3
    db $dd                                        ; $696a: $dd
    ret nz                                        ; $696b: $c0

    jp z, $c0ff                                   ; $696c: $ca $ff $c0

    call Call_000_18c0                            ; $696f: $cd $c0 $18
    jp nz, $c10c                                  ; $6972: $c2 $0c $c1

    ld c, $ff                                     ; $6975: $0e $ff
    ldh [rDIV], a                                 ; $6977: $e0 $04
    pop af                                        ; $6979: $f1
    ld bc, $07f2                                  ; $697a: $01 $f2 $07
    ld hl, sp+$0f                                 ; $697d: $f8 $0f
    rst $18                                       ; $697f: $df

jr_078_6980:
    ldh a, [$3f]                                  ; $6980: $f0 $3f
    ret nz                                        ; $6982: $c0

    rlca                                          ; $6983: $07
    jr jr_078_6980                                ; $6984: $18 $fa

    pop hl                                        ; $6986: $e1
    ld a, a                                       ; $6987: $7f
    add b                                         ; $6988: $80
    db $fc                                        ; $6989: $fc
    jp hl                                         ; $698a: $e9


    add l                                         ; $698b: $85
    ld h, a                                       ; $698c: $67
    and l                                         ; $698d: $a5
    ld bc, $0200                                  ; $698e: $01 $00 $02
    ld bc, $0304                                  ; $6991: $01 $04 $03
    rst $38                                       ; $6994: $ff
    ld [$1106], sp                                ; $6995: $08 $06 $11
    inc c                                         ; $6998: $0c
    ld [hl+], a                                   ; $6999: $22
    add hl, de                                    ; $699a: $19
    ld b, h                                       ; $699b: $44
    inc sp                                        ; $699c: $33
    rst $38                                       ; $699d: $ff
    adc b                                         ; $699e: $88

jr_078_699f:
    ld h, a                                       ; $699f: $67
    db $10                                        ; $69a0: $10
    rst $08                                       ; $69a1: $cf
    cpl                                           ; $69a2: $2f
    sub [hl]                                      ; $69a3: $96
    ld a, b                                       ; $69a4: $78
    rla                                           ; $69a5: $17
    rst $38                                       ; $69a6: $ff
    ldh [$5f], a                                  ; $69a7: $e0 $5f
    db $f4                                        ; $69a9: $f4
    rst $38                                       ; $69aa: $ff
    jp c, $f73f                                   ; $69ab: $da $3f $f7

    rlca                                          ; $69ae: $07
    ld e, a                                       ; $69af: $5f
    pop de                                        ; $69b0: $d1
    ld bc, $00e0                                  ; $69b1: $01 $e0 $00
    ret nz                                        ; $69b4: $c0

    ld l, $a0                                     ; $69b5: $2e $a0
    ld b, b                                       ; $69b7: $40
    cpl                                           ; $69b8: $2f
    and b                                         ; $69b9: $a0
    rst $38                                       ; $69ba: $ff
    ld a, [bc]                                    ; $69bb: $0a
    push af                                       ; $69bc: $f5
    dec b                                         ; $69bd: $05
    ld a, [$fd82]                                 ; $69be: $fa $82 $fd
    ld b, b                                       ; $69c1: $40
    ld a, a                                       ; $69c2: $7f
    rst $38                                       ; $69c3: $ff
    jr nz, jr_078_6a05                            ; $69c4: $20 $3f

    jr @+$21                                      ; $69c6: $18 $1f

jr_078_69c8:
    inc b                                         ; $69c8: $04
    rlca                                          ; $69c9: $07
    nop                                           ; $69ca: $00
    rst $38                                       ; $69cb: $ff
    rst $38                                       ; $69cc: $ff
    jr z, @+$01                                   ; $69cd: $28 $ff

    rla                                           ; $69cf: $17

Jump_078_69d0:
    rst $38                                       ; $69d0: $ff
    adc [hl]                                      ; $69d1: $8e
    ld e, h                                       ; $69d2: $5c
    ld e, h                                       ; $69d3: $5c
    sbc b                                         ; $69d4: $98
    ld a, a                                       ; $69d5: $7f
    jr jr_078_69c8                                ; $69d6: $18 $f0

    db $10                                        ; $69d8: $10
    ldh a, [$33]                                  ; $69d9: $f0 $33
    ldh [$15], a                                  ; $69db: $e0 $15
    sub b                                         ; $69dd: $90
    add b                                         ; $69de: $80
    rst $38                                       ; $69df: $ff
    ldh [rIE], a                                  ; $69e0: $e0 $ff
    jr c, jr_078_6a03                             ; $69e2: $38 $1f

    inc c                                         ; $69e4: $0c
    rlca                                          ; $69e5: $07
    ld b, $03                                     ; $69e6: $06 $03
    ld a, a                                       ; $69e8: $7f
    db $e3                                        ; $69e9: $e3
    ld bc, $c1f1                                  ; $69ea: $01 $f1 $c1
    ei                                            ; $69ed: $fb
    ld bc, $f4bd                                  ; $69ee: $01 $bd $f4
    add b                                         ; $69f1: $80
    db $fd                                        ; $69f2: $fd
    cp d                                          ; $69f3: $ba
    db $fc                                        ; $69f4: $fc
    add b                                         ; $69f5: $80
    xor d                                         ; $69f6: $aa
    nop                                           ; $69f7: $00
    ld d, c                                       ; $69f8: $51
    nop                                           ; $69f9: $00
    jr z, jr_078_69fc                             ; $69fa: $28 $00

jr_078_69fc:
    cp a                                          ; $69fc: $bf
    rst $38                                       ; $69fd: $ff
    db $fc                                        ; $69fe: $fc
    cp $f8                                        ; $69ff: $fe $f8
    db $fd                                        ; $6a01: $fd
    ld h, b                                       ; $6a02: $60

jr_078_6a03:
    and h                                         ; $6a03: $a4
    ret nz                                        ; $6a04: $c0

jr_078_6a05:
    nop                                           ; $6a05: $00
    db $fd                                        ; $6a06: $fd
    adc a                                         ; $6a07: $8f
    ld bc, $28a0                                  ; $6a08: $01 $a0 $28
    nop                                           ; $6a0b: $00
    dec de                                        ; $6a0c: $1b
    inc bc                                        ; $6a0d: $03
    dec sp                                        ; $6a0e: $3b
    inc bc                                        ; $6a0f: $03
    rst $38                                       ; $6a10: $ff
    ld e, a                                       ; $6a11: $5f
    inc bc                                        ; $6a12: $03
    or a                                          ; $6a13: $b7
    rlca                                          ; $6a14: $07
    ld a, a                                       ; $6a15: $7f
    rlca                                          ; $6a16: $07
    rst $38                                       ; $6a17: $ff
    rlca                                          ; $6a18: $07
    rst $20                                       ; $6a19: $e7
    cp $08                                        ; $6a1a: $fe $08
    jr nc, @+$61                                  ; $6a1c: $30 $5f

    add e                                         ; $6a1e: $83
    or c                                          ; $6a1f: $b1
    and b                                         ; $6a20: $a0
    ld hl, sp-$10                                 ; $6a21: $f8 $f0
    ldh [rIE], a                                  ; $6a23: $e0 $ff
    add c                                         ; $6a25: $81
    nop                                           ; $6a26: $00
    inc bc                                        ; $6a27: $03
    nop                                           ; $6a28: $00
    cpl                                           ; $6a29: $2f
    ret nz                                        ; $6a2a: $c0

    adc h                                         ; $6a2b: $8c
    add c                                         ; $6a2c: $81
    rst $38                                       ; $6a2d: $ff
    jr jr_078_6a30                                ; $6a2e: $18 $00

jr_078_6a30:
    inc [hl]                                      ; $6a30: $34
    ld bc, $0068                                  ; $6a31: $01 $68 $00
    ret nc                                        ; $6a34: $d0

    ld bc, $a8ff                                  ; $6a35: $01 $ff $a8
    ld [bc], a                                    ; $6a38: $02
    ret nc                                        ; $6a39: $d0

    ld bc, $3fa0                                  ; $6a3a: $01 $a0 $3f
    rra                                           ; $6a3d: $1f
    rra                                           ; $6a3e: $1f
    rst $18                                       ; $6a3f: $df
    rra                                           ; $6a40: $1f
    sbc a                                         ; $6a41: $9f
    rrca                                          ; $6a42: $0f
    rra                                           ; $6a43: $1f
    rrca                                          ; $6a44: $0f
    db $fc                                        ; $6a45: $fc
    push hl                                       ; $6a46: $e5
    ldh [$f5], a                                  ; $6a47: $e0 $f5
    rst $38                                       ; $6a49: $ff
    ldh [$fa], a                                  ; $6a4a: $e0 $fa
    pop hl                                        ; $6a4c: $e1
    db $fc                                        ; $6a4d: $fc
    ld a, [c]                                     ; $6a4e: $f2
    ld hl, sp-$03                                 ; $6a4f: $f8 $fd
    ld hl, sp+$3f                                 ; $6a51: $f8 $3f
    ld a, [$f5f8]                                 ; $6a53: $fa $f8 $f5
    ldh a, [$fa]                                  ; $6a56: $f0 $fa
    ldh a, [$59]                                  ; $6a58: $f0 $59
    ldh [rTMA], a                                 ; $6a5a: $e0 $06
    and h                                         ; $6a5c: $a4
    cp a                                          ; $6a5d: $bf
    ld bc, $0600                                  ; $6a5e: $01 $00 $06
    ld bc, $0718                                  ; $6a61: $01 $18 $07
    ld [hl], a                                    ; $6a64: $77
    and d                                         ; $6a65: $a2
    nop                                           ; $6a66: $00
    rst $38                                       ; $6a67: $ff
    inc e                                         ; $6a68: $1c
    inc bc                                        ; $6a69: $03
    ld h, b                                       ; $6a6a: $60
    ld e, $83                                     ; $6a6b: $1e $83
    ld [hl], b                                    ; $6a6d: $70
    inc e                                         ; $6a6e: $1c
    jp $60ff                                      ; $6a6f: $c3 $ff $60


    rra                                           ; $6a72: $1f
    ld sp, $c30c                                  ; $6a73: $31 $0c $c3
    add hl, sp                                    ; $6a76: $39
    ld c, $e3                                     ; $6a77: $0e $e3
    cp a                                          ; $6a79: $bf
    ld [hl], $8d                                  ; $6a7a: $36 $8d
    call nz, Call_000_043f                        ; $6a7c: $c4 $3f $04
    ei                                            ; $6a7f: $fb
    db $e4                                        ; $6a80: $e4
    ld h, c                                       ; $6a81: $61
    add c                                         ; $6a82: $81
    rst $38                                       ; $6a83: $ff
    cp $03                                        ; $6a84: $fe $03
    rst $38                                       ; $6a86: $ff
    rrca                                          ; $6a87: $0f
    rst $38                                       ; $6a88: $ff
    ld e, $fe                                     ; $6a89: $1e $fe
    add hl, sp                                    ; $6a8b: $39
    ld a, a                                       ; $6a8c: $7f
    ld sp, hl                                     ; $6a8d: $f9
    inc sp                                        ; $6a8e: $33
    di                                            ; $6a8f: $f3
    ld h, e                                       ; $6a90: $63
    db $e3                                        ; $6a91: $e3

jr_078_6a92:
    db $e3                                        ; $6a92: $e3
    ld h, e                                       ; $6a93: $63
    ld b, d                                       ; $6a94: $42
    pop hl                                        ; $6a95: $e1
    rst $38                                       ; $6a96: $ff
    ld hl, sp-$01                                 ; $6a97: $f8 $ff
    ld c, $0f                                     ; $6a99: $0e $0f
    di                                            ; $6a9b: $f3
    di                                            ; $6a9c: $f3
    adc l                                         ; $6a9d: $8d
    adc l                                         ; $6a9e: $8d
    rst $18                                       ; $6a9f: $df
    adc [hl]                                      ; $6aa0: $8e
    adc [hl]                                      ; $6aa1: $8e
    adc a                                         ; $6aa2: $8f
    adc l                                         ; $6aa3: $8d
    ld [bc], a                                    ; $6aa4: $02
    ld h, l                                       ; $6aa5: $65
    and c                                         ; $6aa6: $a1
    ld [$ff18], sp                                ; $6aa7: $08 $18 $ff
    db $10                                        ; $6aaa: $10
    ld [hl], b                                    ; $6aab: $70
    jr nz, jr_078_6a92                            ; $6aac: $20 $e4

    ret nz                                        ; $6aae: $c0

    ld hl, sp-$34                                 ; $6aaf: $f8 $cc
    ld [hl], b                                    ; $6ab1: $70
    rst $38                                       ; $6ab2: $ff
    ld a, b                                       ; $6ab3: $78
    inc sp                                        ; $6ab4: $33
    pop hl                                        ; $6ab5: $e1
    daa                                           ; $6ab6: $27
    ld [c], a                                     ; $6ab7: $e2
    rst $20                                       ; $6ab8: $e7
    push bc                                       ; $6ab9: $c5
    ld b, a                                       ; $6aba: $47
    rst $30                                       ; $6abb: $f7
    ld b, $07                                     ; $6abc: $06 $07
    inc b                                         ; $6abe: $04
    cp $e2                                        ; $6abf: $fe $e2
    ld [bc], a                                    ; $6ac1: $02
    pop af                                        ; $6ac2: $f1
    nop                                           ; $6ac3: $00
    add sp, $7f                                   ; $6ac4: $e8 $7f
    nop                                           ; $6ac6: $00
    ldh a, [$80]                                  ; $6ac7: $f0 $80
    ld hl, sp+$40                                 ; $6ac9: $f8 $40
    ldh a, [rNR41]                                ; $6acb: $f0 $20
    ld hl, sp-$20                                 ; $6acd: $f8 $e0
    rst $38                                       ; $6acf: $ff
    nop                                           ; $6ad0: $00
    and c                                         ; $6ad1: $a1
    nop                                           ; $6ad2: $00
    add b                                         ; $6ad3: $80
    rst $38                                       ; $6ad4: $ff
    ret nz                                        ; $6ad5: $c0

    rst $38                                       ; $6ad6: $ff
    and b                                         ; $6ad7: $a0
    rst $38                                       ; $6ad8: $ff
    rst $38                                       ; $6ad9: $ff
    ret nc                                        ; $6ada: $d0

    rst $38                                       ; $6adb: $ff
    xor b                                         ; $6adc: $a8
    rst $38                                       ; $6add: $ff
    call nc, $aaff                                ; $6ade: $d4 $ff $aa
    ld e, a                                       ; $6ae1: $5f
    rst $38                                       ; $6ae2: $ff
    push bc                                       ; $6ae3: $c5
    rst $38                                       ; $6ae4: $ff
    nop                                           ; $6ae5: $00
    ld d, b                                       ; $6ae6: $50
    ld sp, hl                                     ; $6ae7: $f9
    ld h, b                                       ; $6ae8: $60
    dec d                                         ; $6ae9: $15
    jr nz, @-$7e                                  ; $6aea: $20 $80

    ld [hl], a                                    ; $6aec: $77
    nop                                           ; $6aed: $00
    nop                                           ; $6aee: $00
    ld [bc], a                                    ; $6aef: $02
    sub a                                         ; $6af0: $97
    call nz, $002a                                ; $6af1: $c4 $2a $00
    ld e, a                                       ; $6af4: $5f
    ld l, d                                       ; $6af5: $6a
    ld h, b                                       ; $6af6: $60
    ld a, [$c1ef]                                 ; $6af7: $fa $ef $c1
    nop                                           ; $6afa: $00
    db $f4                                        ; $6afb: $f4
    ld [c], a                                     ; $6afc: $e2
    cp $00                                        ; $6afd: $fe $00
    db $fc                                        ; $6aff: $fc
    nop                                           ; $6b00: $00
    ld [$a5fc], a                                 ; $6b01: $ea $fc $a5
    ret nz                                        ; $6b04: $c0

    ldh a, [$e1]                                  ; $6b05: $f0 $e1
    add b                                         ; $6b07: $80
    ld [bc], a                                    ; $6b08: $02
    nop                                           ; $6b09: $00
    dec b                                         ; $6b0a: $05
    and b                                         ; $6b0b: $a0
    ld a, [bc]                                    ; $6b0c: $0a
    rst $38                                       ; $6b0d: $ff
    nop                                           ; $6b0e: $00
    rlca                                          ; $6b0f: $07
    add b                                         ; $6b10: $80
    ld a, [bc]                                    ; $6b11: $0a
    nop                                           ; $6b12: $00
    rla                                           ; $6b13: $17
    nop                                           ; $6b14: $00
    dec hl                                        ; $6b15: $2b
    cp [hl]                                       ; $6b16: $be
    rst $10                                       ; $6b17: $d7
    ldh [$9f], a                                  ; $6b18: $e0 $9f
    rra                                           ; $6b1a: $1f
    sbc a                                         ; $6b1b: $9f
    rra                                           ; $6b1c: $1f
    cp a                                          ; $6b1d: $bf
    cp $e3                                        ; $6b1e: $fe $e3
    ccf                                           ; $6b20: $3f
    cp $fe                                        ; $6b21: $fe $fe
    pop hl                                        ; $6b23: $e1
    ld a, [$f5e0]                                 ; $6b24: $fa $e0 $f5
    ret nz                                        ; $6b27: $c0

    db $eb                                        ; $6b28: $eb
    ret nz                                        ; $6b29: $c0

    call nc, $81ff                                ; $6b2a: $d4 $ff $81
    xor b                                         ; $6b2d: $a8
    add e                                         ; $6b2e: $83
    pop de                                        ; $6b2f: $d1
    inc b                                         ; $6b30: $04
    and e                                         ; $6b31: $a3
    add hl, bc                                    ; $6b32: $09
    ld c, a                                       ; $6b33: $4f
    rst $38                                       ; $6b34: $ff
    inc de                                        ; $6b35: $13
    ld hl, $c21c                                  ; $6b36: $21 $1c $c2
    ld sp, $e30c                                  ; $6b39: $31 $0c $e3
    inc sp                                        ; $6b3c: $33
    rst $38                                       ; $6b3d: $ff
    adc h                                         ; $6b3e: $8c
    ld h, [hl]                                    ; $6b3f: $66
    dec sp                                        ; $6b40: $3b
    call nz, $e47f                                ; $6b41: $c4 $7f $e4
    cp e                                          ; $6b44: $bb
    ldh a, [$ad]                                  ; $6b45: $f0 $ad
    rst $18                                       ; $6b47: $df
    ld h, $c3                                     ; $6b48: $26 $c3
    rst $18                                       ; $6b4a: $df
    ldh [$09], a                                  ; $6b4b: $e0 $09
    ld h, h                                       ; $6b4d: $64
    inc a                                         ; $6b4e: $3c
    and e                                         ; $6b4f: $a3
    pop hl                                        ; $6b50: $e1
    ld a, [$00bb]                                 ; $6b51: $fa $bb $00
    db $f4                                        ; $6b54: $f4
    ld e, d                                       ; $6b55: $5a
    ldh [$d0], a                                  ; $6b56: $e0 $d0
    nop                                           ; $6b58: $00
    xor b                                         ; $6b59: $a8
    db $fc                                        ; $6b5a: $fc
    ldh [$63], a                                  ; $6b5b: $e0 $63
    cp a                                          ; $6b5d: $bf
    db $e3                                        ; $6b5e: $e3
    ld h, c                                       ; $6b5f: $61
    pop hl                                        ; $6b60: $e1
    ld hl, $30e1                                  ; $6b61: $21 $e1 $30
    ld d, h                                       ; $6b64: $54
    ret nz                                        ; $6b65: $c0

    ld [$f8ef], sp                                ; $6b66: $08 $ef $f8
    inc b                                         ; $6b69: $04
    db $fc                                        ; $6b6a: $fc
    ld [bc], a                                    ; $6b6b: $02
    jp $fe61                                      ; $6b6c: $c3 $61 $fe


    rst $38                                       ; $6b6f: $ff
    sbc $ff                                       ; $6b70: $de $ff
    rst $38                                       ; $6b72: $ff
    xor h                                         ; $6b73: $ac
    ld a, a                                       ; $6b74: $7f
    ld b, b                                       ; $6b75: $40
    ccf                                           ; $6b76: $3f
    jr nc, jr_078_6b88                            ; $6b77: $30 $0f

    rrca                                          ; $6b79: $0f
    rst $38                                       ; $6b7a: $ff
    inc bc                                        ; $6b7b: $03
    inc bc                                        ; $6b7c: $03
    and b                                         ; $6b7d: $a0
    cp a                                          ; $6b7e: $bf
    add b                                         ; $6b7f: $80
    cp a                                          ; $6b80: $bf
    ret nz                                        ; $6b81: $c0

    ld a, a                                       ; $6b82: $7f
    rst $38                                       ; $6b83: $ff
    ldh [$7f], a                                  ; $6b84: $e0 $7f
    ret nz                                        ; $6b86: $c0

    ld [hl], l                                    ; $6b87: $75

jr_078_6b88:
    ret nz                                        ; $6b88: $c0

    db $eb                                        ; $6b89: $eb
    add b                                         ; $6b8a: $80
    pop de                                        ; $6b8b: $d1
    rst $20                                       ; $6b8c: $e7
    nop                                           ; $6b8d: $00
    db $e3                                        ; $6b8e: $e3
    rlca                                          ; $6b8f: $07
    rst $38                                       ; $6b90: $ff
    jp nz, $a5dc                                  ; $6b91: $c2 $dc $a5

    nop                                           ; $6b94: $00
    nop                                           ; $6b95: $00
    ld b, c                                       ; $6b96: $41
    rst $38                                       ; $6b97: $ff
    nop                                           ; $6b98: $00
    add b                                         ; $6b99: $80
    ld bc, $0103                                  ; $6b9a: $01 $03 $01
    dec b                                         ; $6b9d: $05
    inc bc                                        ; $6b9e: $03
    ld a, [bc]                                    ; $6b9f: $0a
    ld a, a                                       ; $6ba0: $7f
    rlca                                          ; $6ba1: $07
    inc d                                         ; $6ba2: $14
    rrca                                          ; $6ba3: $0f
    ld e, d                                       ; $6ba4: $5a
    ccf                                           ; $6ba5: $3f
    cp l                                          ; $6ba6: $bd
    ld a, a                                       ; $6ba7: $7f
    ld [de], a                                    ; $6ba8: $12
    push hl                                       ; $6ba9: $e5
    ld a, a                                       ; $6baa: $7f
    ld d, l                                       ; $6bab: $55
    rst $38                                       ; $6bac: $ff
    ld a, [hl+]                                   ; $6bad: $2a
    rst $38                                       ; $6bae: $ff
    dec d                                         ; $6baf: $15
    rst $38                                       ; $6bb0: $ff
    ld [bc], a                                    ; $6bb1: $02
    xor a                                         ; $6bb2: $af
    and [hl]                                      ; $6bb3: $a6
    ld d, l                                       ; $6bb4: $55
    ld b, c                                       ; $6bb5: $41
    db $10                                        ; $6bb6: $10
    ret nz                                        ; $6bb7: $c0

    ld d, h                                       ; $6bb8: $54
    ld [hl], l                                    ; $6bb9: $75
    call nz, $1501                                ; $6bba: $c4 $01 $15
    ld h, b                                       ; $6bbd: $60
    ld d, b                                       ; $6bbe: $50
    inc c                                         ; $6bbf: $0c
    ld h, b                                       ; $6bc0: $60
    ld d, b                                       ; $6bc1: $50
    inc h                                         ; $6bc2: $24
    ldh [$96], a                                  ; $6bc3: $e0 $96
    and e                                         ; $6bc5: $a3
    rst $28                                       ; $6bc6: $ef
    ret nz                                        ; $6bc7: $c0

    ei                                            ; $6bc8: $fb
    pop bc                                        ; $6bc9: $c1
    xor d                                         ; $6bca: $aa
    pop af                                        ; $6bcb: $f1
    ld h, b                                       ; $6bcc: $60
    xor e                                         ; $6bcd: $ab
    db $ed                                        ; $6bce: $ed
    ld h, b                                       ; $6bcf: $60
    push af                                       ; $6bd0: $f5
    xor a                                         ; $6bd1: $af
    db $fd                                        ; $6bd2: $fd
    ret nz                                        ; $6bd3: $c0

    cp [hl]                                       ; $6bd4: $be
    ret nz                                        ; $6bd5: $c0

    add b                                         ; $6bd6: $80

jr_078_6bd7:
    db $fd                                        ; $6bd7: $fd
    nop                                           ; $6bd8: $00
    ei                                            ; $6bd9: $fb
    ld bc, $ff83                                  ; $6bda: $01 $83 $ff
    ccf                                           ; $6bdd: $3f
    ld l, $a1                                     ; $6bde: $2e $a1
    inc l                                         ; $6be0: $2c
    add d                                         ; $6be1: $82
    and l                                         ; $6be2: $a5
    ld h, [hl]                                    ; $6be3: $66
    ld c, d                                       ; $6be4: $4a
    add b                                         ; $6be5: $80
    ld e, b                                       ; $6be6: $58
    ld b, [hl]                                    ; $6be7: $46
    sbc a                                         ; $6be8: $9f
    ld e, a                                       ; $6be9: $5f
    cpl                                           ; $6bea: $2f
    ccf                                           ; $6beb: $3f
    ld e, a                                       ; $6bec: $5f
    ld a, a                                       ; $6bed: $7f
    cp a                                          ; $6bee: $bf
    ldh [$e7], a                                  ; $6bef: $e0 $e7
    ld hl, sp+$3f                                 ; $6bf1: $f8 $3f
    ld [c], a                                     ; $6bf3: $e2
    cp $29                                        ; $6bf4: $fe $29
    ld b, a                                       ; $6bf6: $47
    add b                                         ; $6bf7: $80
    ld h, a                                       ; $6bf8: $67
    add b                                         ; $6bf9: $80
    ld c, a                                       ; $6bfa: $4f
    add b                                         ; $6bfb: $80
    ld c, [hl]                                    ; $6bfc: $4e
    add b                                         ; $6bfd: $80
    rst $38                                       ; $6bfe: $ff
    ld h, [hl]                                    ; $6bff: $66
    ld b, b                                       ; $6c00: $40
    and a                                         ; $6c01: $a7
    jr nz, jr_078_6bd7                            ; $6c02: $20 $d3

jr_078_6c04:
    nop                                           ; $6c04: $00
    ld sp, hl                                     ; $6c05: $f9
    jr z, @+$01                                   ; $6c06: $28 $ff

    db $f4                                        ; $6c08: $f4
    nop                                           ; $6c09: $00
    rst $38                                       ; $6c0a: $ff
    add b                                         ; $6c0b: $80
    rst $38                                       ; $6c0c: $ff

jr_078_6c0d:
    ld b, b                                       ; $6c0d: $40
    ld a, a                                       ; $6c0e: $7f
    ld h, b                                       ; $6c0f: $60
    rst $38                                       ; $6c10: $ff
    ld a, a                                       ; $6c11: $7f
    ldh a, [rIE]                                  ; $6c12: $f0 $ff
    ldh a, [rIE]                                  ; $6c14: $f0 $ff
    ld hl, sp+$6f                                 ; $6c16: $f8 $6f
    ld hl, sp-$11                                 ; $6c18: $f8 $ef
    adc a                                         ; $6c1a: $8f
    inc c                                         ; $6c1b: $0c
    rrca                                          ; $6c1c: $0f
    jr nc, jr_078_6c0d                            ; $6c1d: $30 $ee

    dec hl                                        ; $6c1f: $2b
    push de                                       ; $6c20: $d5
    nop                                           ; $6c21: $00
    db $eb                                        ; $6c22: $eb
    and e                                         ; $6c23: $a3
    nop                                           ; $6c24: $00
    rst $30                                       ; $6c25: $f7
    jp c, Jump_078_7827                           ; $6c26: $da $27 $78

    ld h, c                                       ; $6c29: $61
    db $e4                                        ; $6c2a: $e4
    ld b, c                                       ; $6c2b: $41
    ld [bc], a                                    ; $6c2c: $02
    ld d, c                                       ; $6c2d: $51
    ret nz                                        ; $6c2e: $c0

    inc b                                         ; $6c2f: $04
    cp $5d                                        ; $6c30: $fe $5d
    ld b, b                                       ; $6c32: $40
    rst $38                                       ; $6c33: $ff
    ld a, a                                       ; $6c34: $7f
    ld a, d                                       ; $6c35: $7a
    rst $38                                       ; $6c36: $ff
    ld [hl], h                                    ; $6c37: $74
    rst $38                                       ; $6c38: $ff
    ld l, b                                       ; $6c39: $68
    rst $38                                       ; $6c3a: $ff
    rst $38                                       ; $6c3b: $ff
    call nc, $e87f                                ; $6c3c: $d4 $7f $e8
    ld a, a                                       ; $6c3f: $7f
    inc [hl]                                      ; $6c40: $34

jr_078_6c41:
    ld a, a                                       ; $6c41: $7f
    ld a, [hl+]                                   ; $6c42: $2a
    ld l, d                                       ; $6c43: $6a
    ld b, b                                       ; $6c44: $40
    ld h, d                                       ; $6c45: $62
    xor b                                         ; $6c46: $a8
    ld l, $40                                     ; $6c47: $2e $40
    ld a, [hl+]                                   ; $6c49: $2a
    ld d, b                                       ; $6c4a: $50
    add b                                         ; $6c4b: $80
    rrca                                          ; $6c4c: $0f
    nop                                           ; $6c4d: $00
    and c                                         ; $6c4e: $a1
    and c                                         ; $6c4f: $a1
    ld [hl], h                                    ; $6c50: $74
    cpl                                           ; $6c51: $2f
    pop bc                                        ; $6c52: $c1
    ld [hl+], a                                   ; $6c53: $22
    and c                                         ; $6c54: $a1
    rst $38                                       ; $6c55: $ff
    db $fc                                        ; $6c56: $fc
    ld [c], a                                     ; $6c57: $e2
    ld a, [hl+]                                   ; $6c58: $2a
    nop                                           ; $6c59: $00
    ld d, a                                       ; $6c5a: $57
    jr z, jr_078_6c41                             ; $6c5b: $28 $e4

    or b                                          ; $6c5d: $b0
    add a                                         ; $6c5e: $87
    inc hl                                        ; $6c5f: $23
    ld hl, sp-$1f                                 ; $6c60: $f8 $e1
    cp d                                          ; $6c62: $ba
    jr nz, jr_078_6c04                            ; $6c63: $20 $9f

    add sp, -$01                                  ; $6c65: $e8 $ff
    inc bc                                        ; $6c67: $03
    cp $e0                                        ; $6c68: $fe $e0

jr_078_6c6a:
    rlca                                          ; $6c6a: $07
    xor $8b                                       ; $6c6b: $ee $8b
    and b                                         ; $6c6d: $a0
    rra                                           ; $6c6e: $1f
    rst $38                                       ; $6c6f: $ff
    ccf                                           ; $6c70: $3f
    ld b, h                                       ; $6c71: $44
    ld h, d                                       ; $6c72: $62
    cp a                                          ; $6c73: $bf
    rst $38                                       ; $6c74: $ff
    sbc h                                         ; $6c75: $9c
    rst $38                                       ; $6c76: $ff
    adc $80                                       ; $6c77: $ce $80
    ldh [$c0], a                                  ; $6c79: $e0 $c0
    ldh a, [$c0]                                  ; $6c7b: $f0 $c0
    db $fd                                        ; $6c7d: $fd
    ldh [rIE], a                                  ; $6c7e: $e0 $ff
    cp $f0                                        ; $6c80: $fe $f0
    cp $af                                        ; $6c82: $fe $af
    cp l                                          ; $6c84: $bd
    rra                                           ; $6c85: $1f
    ld d, $07                                     ; $6c86: $16 $07
    db $dd                                        ; $6c88: $dd
    ld c, $ec                                     ; $6c89: $0e $ec
    ld b, b                                       ; $6c8b: $40
    dec bc                                        ; $6c8c: $0b
    ld bc, $e255                                  ; $6c8d: $01 $55 $e2
    ret nz                                        ; $6c90: $c0

    ld bc, $ff78                                  ; $6c91: $01 $78 $ff
    ld bc, $8b11                                  ; $6c94: $01 $11 $8b
    ld h, c                                       ; $6c97: $61
    rst $30                                       ; $6c98: $f7
    nop                                           ; $6c99: $00
    db $eb                                        ; $6c9a: $eb
    ld bc, $f5bf                                  ; $6c9b: $01 $bf $f5
    nop                                           ; $6c9e: $00
    ld a, d                                       ; $6c9f: $7a

Jump_078_6ca0:
    add b                                         ; $6ca0: $80
    cp l                                          ; $6ca1: $bd
    ret nz                                        ; $6ca2: $c0

    or a                                          ; $6ca3: $b7
    dec h                                         ; $6ca4: $25
    add b                                         ; $6ca5: $80
    cp a                                          ; $6ca6: $bf
    nop                                           ; $6ca7: $00
    jr nz, jr_078_6c6a                            ; $6ca8: $20 $c0

    and c                                         ; $6caa: $a1
    nop                                           ; $6cab: $00
    ld b, l                                       ; $6cac: $45
    xor h                                         ; $6cad: $ac
    and e                                         ; $6cae: $a3
    jr nc, @+$81                                  ; $6caf: $30 $7f

    db $10                                        ; $6cb1: $10
    jr nz, jr_078_6cf4                            ; $6cb2: $20 $40

    jr nz, jr_078_6cd6                            ; $6cb4: $20 $20

jr_078_6cb6:
    ld b, b                                       ; $6cb6: $40
    ld b, b                                       ; $6cb7: $40
    xor c                                         ; $6cb8: $a9
    jr nz, jr_078_6cb6                            ; $6cb9: $20 $fb

    inc c                                         ; $6cbb: $0c
    nop                                           ; $6cbc: $00
    ld d, d                                       ; $6cbd: $52
    and b                                         ; $6cbe: $a0
    nop                                           ; $6cbf: $00
    ld [$1010], sp                                ; $6cc0: $08 $10 $10
    jr nz, @-$01                                  ; $6cc3: $20 $fd

    ld d, b                                       ; $6cc5: $50
    xor $e0                                       ; $6cc6: $ee $e0
    ld h, b                                       ; $6cc8: $60
    add b                                         ; $6cc9: $80
    ld c, e                                       ; $6cca: $4b

jr_078_6ccb:
    ccf                                           ; $6ccb: $3f
    ld d, a                                       ; $6ccc: $57
    ccf                                           ; $6ccd: $3f
    rst $38                                       ; $6cce: $ff
    ld l, e                                       ; $6ccf: $6b
    ccf                                           ; $6cd0: $3f
    dec h                                         ; $6cd1: $25
    rra                                           ; $6cd2: $1f
    dec hl                                        ; $6cd3: $2b
    rra                                           ; $6cd4: $1f
    dec [hl]                                      ; $6cd5: $35

jr_078_6cd6:
    rra                                           ; $6cd6: $1f
    ld e, a                                       ; $6cd7: $5f
    ld [hl-], a                                   ; $6cd8: $32
    rrca                                          ; $6cd9: $0f
    ld de, $a30f                                  ; $6cda: $11 $0f $a3
    ld [hl], d                                    ; $6cdd: $72
    jr nz, jr_078_6ccb                            ; $6cde: $20 $eb

    ld a, d                                       ; $6ce0: $7a
    pop hl                                        ; $6ce1: $e1
    ld d, d                                       ; $6ce2: $52
    rst $20                                       ; $6ce3: $e7
    ld bc, $5d55                                  ; $6ce4: $01 $55 $5d
    and b                                         ; $6ce7: $a0
    rst $18                                       ; $6ce8: $df
    dec b                                         ; $6ce9: $05
    and b                                         ; $6cea: $a0
    dec a                                         ; $6ceb: $3d
    ret nz                                        ; $6cec: $c0

    ld a, d                                       ; $6ced: $7a
    pop hl                                        ; $6cee: $e1
    nop                                           ; $6cef: $00
    ld [de], a                                    ; $6cf0: $12
    rst $08                                       ; $6cf1: $cf
    rlca                                          ; $6cf2: $07
    ld d, e                                       ; $6cf3: $53

jr_078_6cf4:
    xor h                                         ; $6cf4: $ac
    ld b, d                                       ; $6cf5: $42
    ld c, [hl]                                    ; $6cf6: $4e
    pop hl                                        ; $6cf7: $e1
    rlca                                          ; $6cf8: $07
    ld d, h                                       ; $6cf9: $54
    ldh [$6e], a                                  ; $6cfa: $e0 $6e
    push bc                                       ; $6cfc: $c5
    adc a                                         ; $6cfd: $8f
    call z, $dfe5                                 ; $6cfe: $cc $e5 $df
    ld d, $e5                                     ; $6d01: $16 $e5
    ret nz                                        ; $6d03: $c0

    sbc a                                         ; $6d04: $9f
    ret nz                                        ; $6d05: $c0

    and d                                         ; $6d06: $a2
    ld b, b                                       ; $6d07: $40
    sbc $e0                                       ; $6d08: $de $e0
    rst $20                                       ; $6d0a: $e7
    db $eb                                        ; $6d0b: $eb
    ld hl, sp-$0d                                 ; $6d0c: $f8 $f3
    sbc c                                         ; $6d0e: $99
    ld b, d                                       ; $6d0f: $42
    cp $ec                                        ; $6d10: $fe $ec
    and b                                         ; $6d12: $a0
    ld a, [bc]                                    ; $6d13: $0a
    rst $38                                       ; $6d14: $ff
    xor b                                         ; $6d15: $a8
    ei                                            ; $6d16: $fb
    nop                                           ; $6d17: $00
    call nc, Call_000_200e                        ; $6d18: $d4 $0e $20
    ld a, a                                       ; $6d1b: $7f
    ret nz                                        ; $6d1c: $c0

    rlca                                          ; $6d1d: $07
    cp $a0                                        ; $6d1e: $fe $a0
    ld d, e                                       ; $6d20: $53
    rst $38                                       ; $6d21: $ff
    ld d, h                                       ; $6d22: $54
    sub c                                         ; $6d23: $91
    pop hl                                        ; $6d24: $e1
    ld b, h                                       ; $6d25: $44
    ld [c], a                                     ; $6d26: $e2
    ld d, b                                       ; $6d27: $50
    rrca                                          ; $6d28: $0f
    and b                                         ; $6d29: $a0
    ld hl, sp+$74                                 ; $6d2a: $f8 $74
    ld [bc], a                                    ; $6d2c: $02
    rst $38                                       ; $6d2d: $ff
    nop                                           ; $6d2e: $00
    ld bc, $0301                                  ; $6d2f: $01 $01 $03
    inc bc                                        ; $6d32: $03
    ld b, $05                                     ; $6d33: $06 $05
    ld c, $ff                                     ; $6d35: $0e $ff
    dec hl                                        ; $6d37: $2b
    inc e                                         ; $6d38: $1c
    ld a, [$f5fc]                                 ; $6d39: $fa $fc $f5
    ld hl, sp-$09                                 ; $6d3c: $f8 $f7
    ld hl, sp-$11                                 ; $6d3e: $f8 $ef
    ccf                                           ; $6d40: $3f
    ret nz                                        ; $6d41: $c0

    ld d, a                                       ; $6d42: $57
    xor b                                         ; $6d43: $a8
    db $fc                                        ; $6d44: $fc
    pop hl                                        ; $6d45: $e1
    cp h                                          ; $6d46: $bc
    ld b, e                                       ; $6d47: $43
    ld d, e                                       ; $6d48: $53
    rst $38                                       ; $6d49: $ff
    xor a                                         ; $6d4a: $af
    sbc h                                         ; $6d4b: $9c
    ld a, [hl]                                    ; $6d4c: $7e
    ld h, b                                       ; $6d4d: $60
    push af                                       ; $6d4e: $f5
    rst $20                                       ; $6d4f: $e7
    rra                                           ; $6d50: $1f
    rst $20                                       ; $6d51: $e7
    ld a, a                                       ; $6d52: $7f
    dec e                                         ; $6d53: $1d
    jp hl                                         ; $6d54: $e9


    ld a, [de]                                    ; $6d55: $1a
    or b                                          ; $6d56: $b0
    ld [hl], l                                    ; $6d57: $75
    ret nz                                        ; $6d58: $c0

    ld [$62bd], a                                 ; $6d59: $ea $bd $62
    db $fd                                        ; $6d5c: $fd
    ld d, l                                       ; $6d5d: $55
    ld [hl], e                                    ; $6d5e: $73
    inc b                                         ; $6d5f: $04
    rst $38                                       ; $6d60: $ff
    cp a                                          ; $6d61: $bf
    ld a, a                                       ; $6d62: $7f
    ld a, a                                       ; $6d63: $7f
    cp a                                          ; $6d64: $bf
    rst $18                                       ; $6d65: $df
    rst $30                                       ; $6d66: $f7
    ld e, a                                       ; $6d67: $5f
    adc a                                         ; $6d68: $8f
    adc a                                         ; $6d69: $8f
    inc [hl]                                      ; $6d6a: $34
    add hl, bc                                    ; $6d6b: $09
    cp $fc                                        ; $6d6c: $fe $fc
    db $fd                                        ; $6d6e: $fd
    ld hl, sp-$01                                 ; $6d6f: $f8 $ff
    rst $28                                       ; $6d71: $ef
    set 5, l                                      ; $6d72: $cb $ed
    call nz, $8cde                                ; $6d74: $c4 $de $8c
    db $dd                                        ; $6d77: $dd
    sbc h                                         ; $6d78: $9c
    rst $38                                       ; $6d79: $ff
    cp [hl]                                       ; $6d7a: $be
    inc e                                         ; $6d7b: $1c
    ld a, l                                       ; $6d7c: $7d
    inc [hl]                                      ; $6d7d: $34
    cp $64                                        ; $6d7e: $fe $64
    rst $38                                       ; $6d80: $ff
    call nz, $aabf                                ; $6d81: $c4 $bf $aa
    push de                                       ; $6d84: $d5
    ld d, l                                       ; $6d85: $55
    xor d                                         ; $6d86: $aa
    xor d                                         ; $6d87: $aa
    ld d, l                                       ; $6d88: $55
    db $fc                                        ; $6d89: $fc
    and $ab                                       ; $6d8a: $e6 $ab
    rst $38                                       ; $6d8c: $ff
    xor e                                         ; $6d8d: $ab
    ld d, a                                       ; $6d8e: $57
    ld d, a                                       ; $6d8f: $57
    xor h                                         ; $6d90: $ac
    xor a                                         ; $6d91: $af
    ld e, b                                       ; $6d92: $58
    ld e, a                                       ; $6d93: $5f
    or b                                          ; $6d94: $b0
    rst $38                                       ; $6d95: $ff
    cp a                                          ; $6d96: $bf
    ld h, b                                       ; $6d97: $60
    ld a, a                                       ; $6d98: $7f
    ret nz                                        ; $6d99: $c0

    cp a                                          ; $6d9a: $bf
    add b                                         ; $6d9b: $80
    ld a, a                                       ; $6d9c: $7f
    nop                                           ; $6d9d: $00
    rst $30                                       ; $6d9e: $f7
    push af                                       ; $6d9f: $f5
    ld bc, $5dfe                                  ; $6da0: $01 $fe $5d
    inc h                                         ; $6da3: $24
    db $fd                                        ; $6da4: $fd
    ld bc, $05f6                                  ; $6da5: $01 $f6 $05
    cp l                                          ; $6da8: $bd
    add sp, -$60                                  ; $6da9: $e8 $a0
    ld [bc], a                                    ; $6dab: $02
    cp a                                          ; $6dac: $bf
    ld a, a                                       ; $6dad: $7f
    rst $28                                       ; $6dae: $ef
    rra                                           ; $6daf: $1f
    xor e                                         ; $6db0: $ab
    jr nz, jr_078_6dc2                            ; $6db1: $20 $0f

    cp $68                                        ; $6db3: $fe $68
    ld hl, $f1fb                                  ; $6db5: $21 $fb $f1
    rst $30                                       ; $6db8: $f7
    db $e3                                        ; $6db9: $e3
    rst $28                                       ; $6dba: $ef
    add $df                                       ; $6dbb: $c6 $df
    rst $30                                       ; $6dbd: $f7
    adc h                                         ; $6dbe: $8c
    cp $9c                                        ; $6dbf: $fe $9c
    adc d                                         ; $6dc1: $8a

jr_078_6dc2:
    ld b, c                                       ; $6dc2: $41
    ldh a, [$f0]                                  ; $6dc3: $f0 $f0
    xor $84                                       ; $6dc5: $ee $84
    rst $38                                       ; $6dc7: $ff
    rst $18                                       ; $6dc8: $df
    ld [bc], a                                    ; $6dc9: $02
    xor d                                         ; $6dca: $aa
    ld [bc], a                                    ; $6dcb: $02
    ld b, a                                       ; $6dcc: $47
    ld [bc], a                                    ; $6dcd: $02
    adc e                                         ; $6dce: $8b
    ld [bc], a                                    ; $6dcf: $02
    cp $e6                                        ; $6dd0: $fe $e6
    add b                                         ; $6dd2: $80
    inc bc                                        ; $6dd3: $03
    inc b                                         ; $6dd4: $04
    rlca                                          ; $6dd5: $07
    xor d                                         ; $6dd6: $aa
    ld d, [hl]                                    ; $6dd7: $56
    ld d, l                                       ; $6dd8: $55
    xor h                                         ; $6dd9: $ac
    rst $38                                       ; $6dda: $ff
    xor [hl]                                      ; $6ddb: $ae
    ld d, h                                       ; $6ddc: $54
    ld e, c                                       ; $6ddd: $59
    xor b                                         ; $6dde: $a8
    or e                                          ; $6ddf: $b3
    ld d, b                                       ; $6de0: $50
    ld h, a                                       ; $6de1: $67
    and b                                         ; $6de2: $a0
    add a                                         ; $6de3: $87
    rst $28                                       ; $6de4: $ef
    ret nz                                        ; $6de5: $c0

    ld e, a                                       ; $6de6: $5f
    sbc $40                                       ; $6de7: $de $40
    ld bc, $ac25                                  ; $6de9: $01 $25 $ac
    ld b, b                                       ; $6dec: $40
    sub $80                                       ; $6ded: $d6 $80
    ret nc                                        ; $6def: $d0

    dec bc                                        ; $6df0: $0b
    rra                                           ; $6df1: $1f
    and b                                         ; $6df2: $a0
    sub c                                         ; $6df3: $91
    ld b, b                                       ; $6df4: $40
    ld b, b                                       ; $6df5: $40
    adc a                                         ; $6df6: $8f
    ld b, b                                       ; $6df7: $40
    adc l                                         ; $6df8: $8d
    ld b, e                                       ; $6df9: $43
    jr jr_078_6e21                                ; $6dfa: $18 $25

    ret c                                         ; $6dfc: $d8

    add l                                         ; $6dfd: $85
    inc a                                         ; $6dfe: $3c
    ld sp, $3ce4                                  ; $6dff: $31 $e4 $3c
    ld b, d                                       ; $6e02: $42
    ld a, a                                       ; $6e03: $7f
    rra                                           ; $6e04: $1f
    ld a, a                                       ; $6e05: $7f
    rra                                           ; $6e06: $1f
    ld [$aea9], sp                                ; $6e07: $08 $a9 $ae
    ld bc, $d0ff                                  ; $6e0a: $01 $ff $d0
    rst $18                                       ; $6e0d: $df
    and b                                         ; $6e0e: $a0
    cp a                                          ; $6e0f: $bf
    ldh [$bf], a                                  ; $6e10: $e0 $bf
    ld h, b                                       ; $6e12: $60
    ccf                                           ; $6e13: $3f
    rst $28                                       ; $6e14: $ef
    db $e3                                        ; $6e15: $e3
    ccf                                           ; $6e16: $3f
    reti                                          ; $6e17: $d9


    jr jr_078_6e61                                ; $6e18: $18 $47

    and c                                         ; $6e1a: $a1
    ld [$11f8], sp                                ; $6e1b: $08 $f8 $11
    ld c, a                                       ; $6e1e: $4f
    ldh a, [rNR44]                                ; $6e1f: $f0 $23

jr_078_6e21:
    ldh [$97], a                                  ; $6e21: $e0 $97
    ld b, [hl]                                    ; $6e23: $46
    ldh [$39], a                                  ; $6e24: $e0 $39
    and e                                         ; $6e26: $a3
    dec b                                         ; $6e27: $05
    ld [hl], d                                    ; $6e28: $72
    add b                                         ; $6e29: $80
    xor $98                                       ; $6e2a: $ee $98
    pop hl                                        ; $6e2c: $e1
    inc bc                                        ; $6e2d: $03
    ld bc, $e207                                  ; $6e2e: $01 $07 $e2
    jr nz, jr_078_6e4a                            ; $6e31: $20 $17

    ld bc, $bba0                                  ; $6e33: $01 $a0 $bb
    nop                                           ; $6e36: $00
    db $10                                        ; $6e37: $10
    ld e, b                                       ; $6e38: $58
    ld b, b                                       ; $6e39: $40
    ret nc                                        ; $6e3a: $d0

    nop                                           ; $6e3b: $00
    adc b                                         ; $6e3c: $88
    ld d, b                                       ; $6e3d: $50
    ld b, b                                       ; $6e3e: $40
    ldh [$fe], a                                  ; $6e3f: $e0 $fe
    inc c                                         ; $6e41: $0c
    add b                                         ; $6e42: $80
    ccf                                           ; $6e43: $3f
    rra                                           ; $6e44: $1f
    ld e, a                                       ; $6e45: $5f
    rra                                           ; $6e46: $1f
    ccf                                           ; $6e47: $3f
    rrca                                          ; $6e48: $0f
    ld e, a                                       ; $6e49: $5f

jr_078_6e4a:
    rst $38                                       ; $6e4a: $ff
    rrca                                          ; $6e4b: $0f
    cpl                                           ; $6e4c: $2f
    rlca                                          ; $6e4d: $07
    rra                                           ; $6e4e: $1f
    rlca                                          ; $6e4f: $07
    cpl                                           ; $6e50: $2f
    inc bc                                        ; $6e51: $03
    rla                                           ; $6e52: $17
    dec a                                         ; $6e53: $3d
    inc bc                                        ; $6e54: $03
    dec a                                         ; $6e55: $3d
    ldh [$e0], a                                  ; $6e56: $e0 $e0
    ldh [$c0], a                                  ; $6e58: $e0 $c0
    ldh [$59], a                                  ; $6e5a: $e0 $59
    nop                                           ; $6e5c: $00
    ld [hl-], a                                   ; $6e5d: $32
    ld b, c                                       ; $6e5e: $41
    db $fc                                        ; $6e5f: $fc
    ld d, h                                       ; $6e60: $54

jr_078_6e61:
    add sp, $20                                   ; $6e61: $e8 $20
    add h                                         ; $6e63: $84
    dec bc                                        ; $6e64: $0b
    ld bc, $011d                                  ; $6e65: $01 $1d $01
    adc a                                         ; $6e68: $8f
    ld bc, $4fff                                  ; $6e69: $01 $ff $4f
    dec b                                         ; $6e6c: $05
    xor a                                         ; $6e6d: $af
    dec b                                         ; $6e6e: $05
    rst $10                                       ; $6e6f: $d7
    inc bc                                        ; $6e70: $03
    rst $28                                       ; $6e71: $ef
    inc bc                                        ; $6e72: $03
    ld h, a                                       ; $6e73: $67
    rst $30                                       ; $6e74: $f7
    inc bc                                        ; $6e75: $03
    ldh [$2a], a                                  ; $6e76: $e0 $2a
    ld h, b                                       ; $6e78: $60
    ld h, $61                                     ; $6e79: $26 $61
    ld hl, sp-$80                                 ; $6e7b: $f8 $80
    cp b                                          ; $6e7d: $b8
    ld h, b                                       ; $6e7e: $60
    ld [hl], a                                    ; $6e7f: $77
    add b                                         ; $6e80: $80
    db $fc                                        ; $6e81: $fc
    and b                                         ; $6e82: $a0
    sbc h                                         ; $6e83: $9c
    pop hl                                        ; $6e84: $e1
    inc hl                                        ; $6e85: $23
    ld bc, $6515                                  ; $6e86: $01 $15 $65
    ld b, b                                       ; $6e89: $40
    pop af                                        ; $6e8a: $f1
    ld de, $602f                                  ; $6e8b: $11 $2f $60
    and $60                                       ; $6e8e: $e6 $60
    or d                                          ; $6e90: $b2
    adc b                                         ; $6e91: $88
    add b                                         ; $6e92: $80
    ld a, a                                       ; $6e93: $7f
    add b                                         ; $6e94: $80
    ld a, a                                       ; $6e95: $7f
    sbc b                                         ; $6e96: $98
    ld c, b                                       ; $6e97: $48
    pop hl                                        ; $6e98: $e1
    inc e                                         ; $6e99: $1c
    ld b, b                                       ; $6e9a: $40
    db $fc                                        ; $6e9b: $fc

jr_078_6e9c:
    db $e4                                        ; $6e9c: $e4
    rst $38                                       ; $6e9d: $ff
    db $fc                                        ; $6e9e: $fc
    ldh a, [$c1]                                  ; $6e9f: $f0 $c1
    db $ec                                        ; $6ea1: $ec
    pop bc                                        ; $6ea2: $c1
    ld d, b                                       ; $6ea3: $50
    ld b, d                                       ; $6ea4: $42
    jp nz, $5020                                  ; $6ea5: $c2 $20 $50

    dec c                                         ; $6ea8: $0d
    ld h, d                                       ; $6ea9: $62
    ld bc, $f2e7                                  ; $6eaa: $01 $e7 $f2
    ld h, e                                       ; $6ead: $63
    pop hl                                        ; $6eae: $e1
    ld b, c                                       ; $6eaf: $41
    nop                                           ; $6eb0: $00
    xor [hl]                                      ; $6eb1: $ae
    add b                                         ; $6eb2: $80
    db $fd                                        ; $6eb3: $fd
    ld [bc], a                                    ; $6eb4: $02
    db $fc                                        ; $6eb5: $fc
    ld [c], a                                     ; $6eb6: $e2
    ld a, a                                       ; $6eb7: $7f
    inc hl                                        ; $6eb8: $23
    rst $38                                       ; $6eb9: $ff
    ld de, $0b7f                                  ; $6eba: $11 $7f $0b
    rst $38                                       ; $6ebd: $ff
    rst $38                                       ; $6ebe: $ff
    dec b                                         ; $6ebf: $05
    ld a, a                                       ; $6ec0: $7f
    ld a, [bc]                                    ; $6ec1: $0a
    cp a                                          ; $6ec2: $bf
    rlca                                          ; $6ec3: $07
    ld a, a                                       ; $6ec4: $7f
    inc bc                                        ; $6ec5: $03
    ld l, a                                       ; $6ec6: $6f
    xor a                                         ; $6ec7: $af
    dec b                                         ; $6ec8: $05
    ld a, [$eaa0]                                 ; $6ec9: $fa $a0 $ea
    add b                                         ; $6ecc: $80
    ldh [rIE], a                                  ; $6ecd: $e0 $ff
    db $fc                                        ; $6ecf: $fc

jr_078_6ed0:
    ld [c], a                                     ; $6ed0: $e2

jr_078_6ed1:
    jr z, jr_078_6ed1                             ; $6ed1: $28 $fe

    pop hl                                        ; $6ed3: $e1
    inc b                                         ; $6ed4: $04
    and e                                         ; $6ed5: $a3
    nop                                           ; $6ed6: $00
    and c                                         ; $6ed7: $a1
    ld b, b                                       ; $6ed8: $40

jr_078_6ed9:
    ld [hl], b                                    ; $6ed9: $70
    jr nz, jr_078_6e9c                            ; $6eda: $20 $c0

    ld h, b                                       ; $6edc: $60
    add b                                         ; $6edd: $80
    nop                                           ; $6ede: $00
    ld h, $c6                                     ; $6edf: $26 $c6
    ld [bc], a                                    ; $6ee1: $02
    jr nz, @+$21                                  ; $6ee2: $20 $1f

    rra                                           ; $6ee4: $1f
    jr nc, jr_078_6f49                            ; $6ee5: $30 $62

    cp $e1                                        ; $6ee7: $fe $e1
    rst $20                                       ; $6ee9: $e7
    and h                                         ; $6eea: $a4
    db $dd                                        ; $6eeb: $dd
    nop                                           ; $6eec: $00
    and c                                         ; $6eed: $a1
    xor [hl]                                      ; $6eee: $ae
    ld de, $0e80                                  ; $6eef: $11 $80 $0e
    and b                                         ; $6ef2: $a0
    ld a, d                                       ; $6ef3: $7a
    and b                                         ; $6ef4: $a0
    rlca                                          ; $6ef5: $07
    add c                                         ; $6ef6: $81
    ld b, l                                       ; $6ef7: $45
    ld a, b                                       ; $6ef8: $78
    jr nz, jr_078_6ed0                            ; $6ef9: $20 $d5

    ld d, h                                       ; $6efb: $54
    db $f4                                        ; $6efc: $f4
    db $e4                                        ; $6efd: $e4
    rst $30                                       ; $6efe: $f7
    ld h, c                                       ; $6eff: $61
    ld d, l                                       ; $6f00: $55
    ld a, [hl+]                                   ; $6f01: $2a
    jr nz, jr_078_6ed9                            ; $6f02: $20 $d5

jr_078_6f04:
    ld h, h                                       ; $6f04: $64
    jr nz, jr_078_6f04                            ; $6f05: $20 $fd

    ld a, $82                                     ; $6f07: $3e $82
    sub l                                         ; $6f09: $95
    ld a, [$8026]                                 ; $6f0a: $fa $26 $80
    ld a, [bc]                                    ; $6f0d: $0a
    ld [hl+], a                                   ; $6f0e: $22
    add b                                         ; $6f0f: $80
    dec bc                                        ; $6f10: $0b
    sub e                                         ; $6f11: $93
    and e                                         ; $6f12: $a3
    ld a, [hl+]                                   ; $6f13: $2a
    add c                                         ; $6f14: $81
    ld [bc], a                                    ; $6f15: $02
    pop af                                        ; $6f16: $f1
    xor a                                         ; $6f17: $af
    call nc, $5a82                                ; $6f18: $d4 $82 $5a
    ld h, c                                       ; $6f1b: $61
    ld d, [hl]                                    ; $6f1c: $56
    ld h, c                                       ; $6f1d: $61
    rst $38                                       ; $6f1e: $ff
    ldh [$7f], a                                  ; $6f1f: $e0 $7f
    ldh [$7f], a                                  ; $6f21: $e0 $7f
    rst $38                                       ; $6f23: $ff
    ldh a, [$7d]                                  ; $6f24: $f0 $7d
    ldh a, [$3e]                                  ; $6f26: $f0 $3e
    ldh a, [$7f]                                  ; $6f28: $f0 $7f
    db $fc                                        ; $6f2a: $fc
    ld [c], a                                     ; $6f2b: $e2
    inc e                                         ; $6f2c: $1c
    sub h                                         ; $6f2d: $94
    pop bc                                        ; $6f2e: $c1
    and h                                         ; $6f2f: $a4
    ld b, c                                       ; $6f30: $41
    add sp, $00                                   ; $6f31: $e8 $00
    ld [hl], h                                    ; $6f33: $74
    and b                                         ; $6f34: $a0
    ld b, b                                       ; $6f35: $40
    cpl                                           ; $6f36: $2f
    nop                                           ; $6f37: $00
    ld [hl+], a                                   ; $6f38: $22
    ret z                                         ; $6f39: $c8

    and e                                         ; $6f3a: $a3
    rrca                                          ; $6f3b: $0f
    rrca                                          ; $6f3c: $0f
    ld l, l                                       ; $6f3d: $6d
    nop                                           ; $6f3e: $00
    ld d, h                                       ; $6f3f: $54
    jr nz, @+$01                                  ; $6f40: $20 $ff

    ldh [rTAC], a                                 ; $6f42: $e0 $07
    rst $38                                       ; $6f44: $ff
    ldh [$03], a                                  ; $6f45: $e0 $03
    rrca                                          ; $6f47: $0f
    db $e3                                        ; $6f48: $e3

jr_078_6f49:
    db $e3                                        ; $6f49: $e3
    rst $38                                       ; $6f4a: $ff
    ei                                            ; $6f4b: $fb
    ld [hl], c                                    ; $6f4c: $71
    ld h, b                                       ; $6f4d: $60
    db $dd                                        ; $6f4e: $dd
    ld hl, $e7fe                                  ; $6f4f: $21 $fe $e7
    ld [hl], e                                    ; $6f52: $73
    ld h, [hl]                                    ; $6f53: $66
    and h                                         ; $6f54: $a4
    ld a, b                                       ; $6f55: $78
    and c                                         ; $6f56: $a1
    db $fc                                        ; $6f57: $fc
    push hl                                       ; $6f58: $e5
    ld [$e270], a                                 ; $6f59: $ea $70 $e2
    ld l, h                                       ; $6f5c: $6c
    pop hl                                        ; $6f5d: $e1
    pop de                                        ; $6f5e: $d1
    ret z                                         ; $6f5f: $c8

    nop                                           ; $6f60: $00
    ld b, c                                       ; $6f61: $41
    db $e3                                        ; $6f62: $e3
    nop                                           ; $6f63: $00
    and d                                         ; $6f64: $a2
    add $40                                       ; $6f65: $c6 $40
    db $fc                                        ; $6f67: $fc
    db $e3                                        ; $6f68: $e3
    jp nc, $0140                                  ; $6f69: $d2 $40 $01

    rst $38                                       ; $6f6c: $ff
    ld [bc], a                                    ; $6f6d: $02
    ld a, l                                       ; $6f6e: $7d
    cp a                                          ; $6f6f: $bf
    db $fc                                        ; $6f70: $fc
    and $bf                                       ; $6f71: $e6 $bf
    ldh a, [$7f]                                  ; $6f73: $f0 $7f
    ld hl, sp-$02                                 ; $6f75: $f8 $fe
    dec h                                         ; $6f77: $25
    ld h, b                                       ; $6f78: $60
    rst $30                                       ; $6f79: $f7
    cp $f0                                        ; $6f7a: $fe $f0
    db $fd                                        ; $6f7c: $fd
    db $fc                                        ; $6f7d: $fc
    ld [c], a                                     ; $6f7e: $e2
    xor b                                         ; $6f7f: $a8
    nop                                           ; $6f80: $00
    ld d, c                                       ; $6f81: $51
    ld bc, $83ff                                  ; $6f82: $01 $ff $83
    inc bc                                        ; $6f85: $03
    rrca                                          ; $6f86: $0f
    ld c, $bf                                     ; $6f87: $0e $bf
    inc a                                         ; $6f89: $3c
    ld a, [hl]                                    ; $6f8a: $7e
    ld a, b                                       ; $6f8b: $78
    call z, $e1fc                                 ; $6f8c: $cc $fc $e1
    ld sp, $8020                                  ; $6f8f: $31 $20 $80
    push af                                       ; $6f92: $f5
    inc [hl]                                      ; $6f93: $34
    db $e4                                        ; $6f94: $e4
    ld e, d                                       ; $6f95: $5a
    ld h, d                                       ; $6f96: $62
    ei                                            ; $6f97: $fb
    rst $38                                       ; $6f98: $ff
    rla                                           ; $6f99: $17
    ld [hl], a                                    ; $6f9a: $77
    rst $38                                       ; $6f9b: $ff
    ld l, a                                       ; $6f9c: $6f
    cp a                                          ; $6f9d: $bf
    add b                                         ; $6f9e: $80
    ccf                                           ; $6f9f: $3f
    cp $e3                                        ; $6fa0: $fe $e3
    nop                                           ; $6fa2: $00
    nop                                           ; $6fa3: $00
    nop                                           ; $6fa4: $00
    dec b                                         ; $6fa5: $05
    ld [$e4ff], sp                                ; $6fa6: $08 $ff $e4
    ld a, [bc]                                    ; $6fa9: $0a
    rst $38                                       ; $6faa: $ff
    pop hl                                        ; $6fab: $e1
    di                                            ; $6fac: $f3
    push hl                                       ; $6fad: $e5
    ld hl, sp-$11                                 ; $6fae: $f8 $ef
    pop hl                                        ; $6fb0: $e1
    ld [c], a                                     ; $6fb1: $e2
    rst $18                                       ; $6fb2: $df
    or $b9                                        ; $6fb3: $f6 $b9
    inc c                                         ; $6fb5: $0c
    rst $38                                       ; $6fb6: $ff
    push hl                                       ; $6fb7: $e5
    cp [hl]                                       ; $6fb8: $be
    db $f4                                        ; $6fb9: $f4
    inc c                                         ; $6fba: $0c
    inc c                                         ; $6fbb: $0c
    ld c, $dd                                     ; $6fbc: $0e $dd
    db $e4                                        ; $6fbe: $e4
    ld [$0a29], sp                                ; $6fbf: $08 $29 $0a
    sub [hl]                                      ; $6fc2: $96
    ldh [$c0], a                                  ; $6fc3: $e0 $c0
    rst $28                                       ; $6fc5: $ef
    ld c, $ff                                     ; $6fc6: $0e $ff
    pop hl                                        ; $6fc8: $e1
    inc c                                         ; $6fc9: $0c
    ld a, h                                       ; $6fca: $7c
    db $e3                                        ; $6fcb: $e3
    ldh [$f3], a                                  ; $6fcc: $e0 $f3
    rst $00                                       ; $6fce: $c7
    add hl, bc                                    ; $6fcf: $09
    add hl, bc                                    ; $6fd0: $09
    dec bc                                        ; $6fd1: $0b
    rst $38                                       ; $6fd2: $ff
    ldh [$7a], a                                  ; $6fd3: $e0 $7a
    db $f4                                        ; $6fd5: $f4
    ld [c], a                                     ; $6fd6: $e2
    ldh [$09], a                                  ; $6fd7: $e0 $09
    rrca                                          ; $6fd9: $0f
    pop af                                        ; $6fda: $f1
    dec c                                         ; $6fdb: $0d
    rst $18                                       ; $6fdc: $df
    and $39                                       ; $6fdd: $e6 $39
    db $ed                                        ; $6fdf: $ed
    ld [c], a                                     ; $6fe0: $e2
    ldh [$0b], a                                  ; $6fe1: $e0 $0b
    dec bc                                        ; $6fe3: $0b
    dec c                                         ; $6fe4: $0d
    dec c                                         ; $6fe5: $0d
    inc e                                         ; $6fe6: $1c
    rst $18                                       ; $6fe7: $df
    pop hl                                        ; $6fe8: $e1
    ldh [$f4], a                                  ; $6fe9: $e0 $f4
    ld a, [bc]                                    ; $6feb: $0a
    ld [$df0d], sp                                ; $6fec: $08 $0d $df
    ldh [$a0], a                                  ; $6fef: $e0 $a0
    or $4c                                        ; $6ff1: $f6 $4c
    pop hl                                        ; $6ff3: $e1
    add sp, -$7f                                  ; $6ff4: $e8 $81
    pop hl                                        ; $6ff6: $e1
    jp c, $e1c2                                   ; $6ff7: $da $c2 $e1

    db $d3                                        ; $6ffa: $d3
    ld [$e0df], sp                                ; $6ffb: $08 $df $e0
    rrca                                          ; $6ffe: $0f
    rrca                                          ; $6fff: $0f
    ld c, $90                                     ; $7000: $0e $90
    cp [hl]                                       ; $7002: $be
    rst $10                                       ; $7003: $d7
    ei                                            ; $7004: $fb
    pop bc                                        ; $7005: $c1
    inc e                                         ; $7006: $1c
    ldh [$e0], a                                  ; $7007: $e0 $e0
    ld a, [$d909]                                 ; $7009: $fa $09 $d9
    ret nz                                        ; $700c: $c0

    ld a, h                                       ; $700d: $7c
    push de                                       ; $700e: $d5
    add hl, bc                                    ; $700f: $09
    nop                                           ; $7010: $00
    db $fc                                        ; $7011: $fc
    pop bc                                        ; $7012: $c1
    cp [hl]                                       ; $7013: $be
    pop bc                                        ; $7014: $c1
    pop hl                                        ; $7015: $e1
    db $f4                                        ; $7016: $f4
    rst $38                                       ; $7017: $ff
    ld [c], a                                     ; $7018: $e2
    ldh [rIE], a                                  ; $7019: $e0 $ff
    sbc a                                         ; $701b: $9f
    push af                                       ; $701c: $f5
    ldh [rIE], a                                  ; $701d: $e0 $ff
    ldh [$fb], a                                  ; $701f: $e0 $fb
    nop                                           ; $7021: $00
    rst $38                                       ; $7022: $ff
    rst $38                                       ; $7023: $ff
    rst $38                                       ; $7024: $ff
    rst $38                                       ; $7025: $ff
    rst $38                                       ; $7026: $ff
    rst $38                                       ; $7027: $ff
    rst $38                                       ; $7028: $ff
    rst $38                                       ; $7029: $ff
    rst $38                                       ; $702a: $ff
    rst $38                                       ; $702b: $ff
    rst $38                                       ; $702c: $ff
    rst $38                                       ; $702d: $ff
    rst $38                                       ; $702e: $ff
    rst $38                                       ; $702f: $ff
    rst $38                                       ; $7030: $ff
    rst $38                                       ; $7031: $ff
    nop                                           ; $7032: $00
    rst $38                                       ; $7033: $ff
    rst $38                                       ; $7034: $ff
    rst $38                                       ; $7035: $ff
    rst $38                                       ; $7036: $ff
    rst $38                                       ; $7037: $ff
    rst $38                                       ; $7038: $ff
    rst $38                                       ; $7039: $ff
    rst $38                                       ; $703a: $ff
    cp $fd                                        ; $703b: $fe $fd
    nop                                           ; $703d: $00
    nop                                           ; $703e: $00
    nop                                           ; $703f: $00
    ld a, l                                       ; $7040: $7d
    nop                                           ; $7041: $00
    rst $38                                       ; $7042: $ff
    db $e4                                        ; $7043: $e4
    ld bc, $0302                                  ; $7044: $01 $02 $03
    inc b                                         ; $7047: $04
    dec b                                         ; $7048: $05
    di                                            ; $7049: $f3
    push hl                                       ; $704a: $e5
    cp $f8                                        ; $704b: $fe $f8
    rst $28                                       ; $704d: $ef
    ld b, $07                                     ; $704e: $06 $07
    ld [$0a09], sp                                ; $7050: $08 $09 $0a
    dec bc                                        ; $7053: $0b
    inc c                                         ; $7054: $0c
    cp $df                                        ; $7055: $fe $df
    db $f4                                        ; $7057: $f4
    dec c                                         ; $7058: $0d
    ld c, $0f                                     ; $7059: $0e $0f
    db $10                                        ; $705b: $10
    ld de, $1312                                  ; $705c: $11 $12 $13
    rst $30                                       ; $705f: $f7
    inc d                                         ; $7060: $14
    dec d                                         ; $7061: $15
    dec c                                         ; $7062: $0d
    cp [hl]                                       ; $7063: $be
    di                                            ; $7064: $f3
    ld d, $17                                     ; $7065: $16 $17
    jr jr_078_7082                                ; $7067: $18 $19

    rst $38                                       ; $7069: $ff
    add hl, de                                    ; $706a: $19
    ld a, [de]                                    ; $706b: $1a
    dec de                                        ; $706c: $1b
    inc e                                         ; $706d: $1c
    dec e                                         ; $706e: $1d
    ld e, $00                                     ; $706f: $1e $00
    rra                                           ; $7071: $1f
    rst $30                                       ; $7072: $f7
    nop                                           ; $7073: $00
    jr nz, jr_078_7097                            ; $7074: $20 $21

    sbc c                                         ; $7076: $99
    xor $22                                       ; $7077: $ee $22
    inc hl                                        ; $7079: $23
    inc h                                         ; $707a: $24
    dec h                                         ; $707b: $25
    rst $38                                       ; $707c: $ff
    ld h, $27                                     ; $707d: $26 $27
    jr z, jr_078_70aa                             ; $707f: $28 $29

    ld a, [hl+]                                   ; $7081: $2a

jr_078_7082:
    dec hl                                        ; $7082: $2b
    ld bc, $f72c                                  ; $7083: $01 $2c $f7
    nop                                           ; $7086: $00
    dec l                                         ; $7087: $2d
    ld l, $79                                     ; $7088: $2e $79
    xor $2f                                       ; $708a: $ee $2f
    jr nc, jr_078_70bf                            ; $708c: $30 $31

    ld [hl-], a                                   ; $708e: $32
    rst $38                                       ; $708f: $ff
    inc sp                                        ; $7090: $33
    inc [hl]                                      ; $7091: $34
    dec [hl]                                      ; $7092: $35
    ld [hl], $37                                  ; $7093: $36 $37
    jr c, jr_078_70d0                             ; $7095: $38 $39

jr_078_7097:
    ld a, [hl-]                                   ; $7097: $3a
    rst $30                                       ; $7098: $f7
    dec sp                                        ; $7099: $3b
    inc a                                         ; $709a: $3c
    dec a                                         ; $709b: $3d
    ld e, c                                       ; $709c: $59
    xor $3e                                       ; $709d: $ee $3e
    ccf                                           ; $709f: $3f
    ld b, b                                       ; $70a0: $40
    ld b, c                                       ; $70a1: $41
    rst $38                                       ; $70a2: $ff
    ld b, d                                       ; $70a3: $42
    ld b, e                                       ; $70a4: $43
    ld b, h                                       ; $70a5: $44
    ld b, l                                       ; $70a6: $45
    ld b, [hl]                                    ; $70a7: $46
    ld b, a                                       ; $70a8: $47
    ld c, b                                       ; $70a9: $48

jr_078_70aa:
    ld c, c                                       ; $70aa: $49
    rst $30                                       ; $70ab: $f7
    ld c, d                                       ; $70ac: $4a
    ld c, e                                       ; $70ad: $4b
    ld c, h                                       ; $70ae: $4c
    add hl, sp                                    ; $70af: $39
    db $ed                                        ; $70b0: $ed
    ld bc, $4e4d                                  ; $70b1: $01 $4d $4e
    ld c, a                                       ; $70b4: $4f
    rst $38                                       ; $70b5: $ff
    ld d, b                                       ; $70b6: $50
    ld d, c                                       ; $70b7: $51
    ld d, d                                       ; $70b8: $52
    ld d, e                                       ; $70b9: $53
    ld d, h                                       ; $70ba: $54
    ld d, l                                       ; $70bb: $55
    ld d, [hl]                                    ; $70bc: $56
    ld d, a                                       ; $70bd: $57
    rst $28                                       ; $70be: $ef

jr_078_70bf:
    ld e, b                                       ; $70bf: $58
    ld e, c                                       ; $70c0: $59
    ld e, d                                       ; $70c1: $5a
    ld e, e                                       ; $70c2: $5b
    add hl, de                                    ; $70c3: $19
    db $ed                                        ; $70c4: $ed
    ld e, h                                       ; $70c5: $5c
    ld e, l                                       ; $70c6: $5d
    ld e, [hl]                                    ; $70c7: $5e
    rst $38                                       ; $70c8: $ff
    ld e, a                                       ; $70c9: $5f
    ld h, b                                       ; $70ca: $60
    add hl, de                                    ; $70cb: $19
    ld h, c                                       ; $70cc: $61
    ld h, d                                       ; $70cd: $62
    ld h, e                                       ; $70ce: $63
    ld h, h                                       ; $70cf: $64

jr_078_70d0:
    ld h, l                                       ; $70d0: $65
    rst $28                                       ; $70d1: $ef
    ld h, [hl]                                    ; $70d2: $66
    ld h, a                                       ; $70d3: $67
    ld l, b                                       ; $70d4: $68
    ld l, c                                       ; $70d5: $69
    dec sp                                        ; $70d6: $3b
    ldh a, [rOCPS]                                ; $70d7: $f0 $6a
    ld l, e                                       ; $70d9: $6b
    ld l, h                                       ; $70da: $6c
    rst $38                                       ; $70db: $ff
    ld l, l                                       ; $70dc: $6d
    ld l, [hl]                                    ; $70dd: $6e
    add hl, de                                    ; $70de: $19
    ld l, a                                       ; $70df: $6f
    ld [hl], b                                    ; $70e0: $70
    ld [hl], c                                    ; $70e1: $71
    ld [hl], d                                    ; $70e2: $72
    ld [hl], e                                    ; $70e3: $73
    db $fd                                        ; $70e4: $fd
    ld [hl], h                                    ; $70e5: $74
    db $db                                        ; $70e6: $db
    pop de                                        ; $70e7: $d1
    ld [hl], l                                    ; $70e8: $75
    halt                                          ; $70e9: $76
    ld [hl], a                                    ; $70ea: $77
    ld a, b                                       ; $70eb: $78
    ld a, c                                       ; $70ec: $79
    ld a, d                                       ; $70ed: $7a
    rst $30                                       ; $70ee: $f7
    ld a, e                                       ; $70ef: $7b
    ld a, h                                       ; $70f0: $7c
    ld a, l                                       ; $70f1: $7d
    cp [hl]                                       ; $70f2: $be
    rst $10                                       ; $70f3: $d7
    nop                                           ; $70f4: $00
    ld a, [hl]                                    ; $70f5: $7e
    ld a, a                                       ; $70f6: $7f
    add b                                         ; $70f7: $80
    rst $30                                       ; $70f8: $f7
    add c                                         ; $70f9: $81
    add d                                         ; $70fa: $82
    add e                                         ; $70fb: $83
    sbc l                                         ; $70fc: $9d
    rst $10                                       ; $70fd: $d7
    add h                                         ; $70fe: $84
    add l                                         ; $70ff: $85
    add [hl]                                      ; $7100: $86
    add a                                         ; $7101: $87
    rst $30                                       ; $7102: $f7
    adc b                                         ; $7103: $88
    adc c                                         ; $7104: $89
    adc d                                         ; $7105: $8a
    ld a, h                                       ; $7106: $7c
    push de                                       ; $7107: $d5
    adc e                                         ; $7108: $8b
    adc h                                         ; $7109: $8c
    adc l                                         ; $710a: $8d
    add hl, de                                    ; $710b: $19
    rst $28                                       ; $710c: $ef
    adc [hl]                                      ; $710d: $8e
    adc a                                         ; $710e: $8f
    add hl, de                                    ; $710f: $19
    sub b                                         ; $7110: $90
    ld e, h                                       ; $7111: $5c
    call nc, $9101                                ; $7112: $d4 $01 $91
    add hl, de                                    ; $7115: $19
    ld a, a                                       ; $7116: $7f
    add hl, de                                    ; $7117: $19
    sub d                                         ; $7118: $92
    sub e                                         ; $7119: $93
    sub h                                         ; $711a: $94
    add hl, de                                    ; $711b: $19
    sub l                                         ; $711c: $95
    sub [hl]                                      ; $711d: $96
    dec sp                                        ; $711e: $3b
    db $d3                                        ; $711f: $d3
    rst $38                                       ; $7120: $ff
    sub a                                         ; $7121: $97
    sbc b                                         ; $7122: $98
    add hl, de                                    ; $7123: $19
    sbc c                                         ; $7124: $99
    sbc d                                         ; $7125: $9a
    sbc e                                         ; $7126: $9b
    sbc h                                         ; $7127: $9c
    sbc l                                         ; $7128: $9d
    ei                                            ; $7129: $fb
    add hl, de                                    ; $712a: $19
    sbc [hl]                                      ; $712b: $9e
    dec de                                        ; $712c: $1b
    db $d3                                        ; $712d: $d3
    sbc a                                         ; $712e: $9f
    and b                                         ; $712f: $a0
    and c                                         ; $7130: $a1
    and d                                         ; $7131: $a2
    and e                                         ; $7132: $a3
    rst $18                                       ; $7133: $df
    and h                                         ; $7134: $a4
    and l                                         ; $7135: $a5
    and [hl]                                      ; $7136: $a6
    and a                                         ; $7137: $a7
    xor b                                         ; $7138: $a8
    dec e                                         ; $7139: $1d
    call nc, $aaa9                                ; $713a: $d4 $a9 $aa
    ld a, a                                       ; $713d: $7f
    xor e                                         ; $713e: $ab
    xor h                                         ; $713f: $ac
    xor l                                         ; $7140: $ad
    xor [hl]                                      ; $7141: $ae
    xor a                                         ; $7142: $af
    or b                                          ; $7143: $b0
    or c                                          ; $7144: $b1
    dec e                                         ; $7145: $1d
    ld hl, sp+$00                                 ; $7146: $f8 $00
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
    nop                                           ; $7158: $00
    rst $38                                       ; $7159: $ff
    rst $38                                       ; $715a: $ff
    rst $38                                       ; $715b: $ff
    rst $38                                       ; $715c: $ff
    rst $38                                       ; $715d: $ff
    rst $38                                       ; $715e: $ff
    rst $38                                       ; $715f: $ff
    rst $38                                       ; $7160: $ff
    rst $38                                       ; $7161: $ff
    ld hl, sp+$00                                 ; $7162: $f8 $00
    nop                                           ; $7164: $00
    nop                                           ; $7165: $00
    ld l, [hl]                                    ; $7166: $6e
    ld [hl], c                                    ; $7167: $71
    xor [hl]                                      ; $7168: $ae
    ld [hl], c                                    ; $7169: $71
    ld l, d                                       ; $716a: $6a
    ld a, d                                       ; $716b: $7a
    ld d, $7b                                     ; $716c: $16 $7b
    nop                                           ; $716e: $00
    nop                                           ; $716f: $00
    adc d                                         ; $7170: $8a
    ld [$152f], sp                                ; $7171: $08 $2f $15
    jr nc, jr_078_71f4                            ; $7174: $30 $7e

    nop                                           ; $7176: $00
    nop                                           ; $7177: $00
    adc d                                         ; $7178: $8a
    ld [$7f5b], sp                                ; $7179: $08 $5b $7f
    jr nc, jr_078_71fc                            ; $717c: $30 $7e

    nop                                           ; $717e: $00
    nop                                           ; $717f: $00
    inc a                                         ; $7180: $3c
    ld bc, $7f5b                                  ; $7181: $01 $5b $7f
    jr nc, jr_078_7204                            ; $7184: $30 $7e

    nop                                           ; $7186: $00
    nop                                           ; $7187: $00
    inc a                                         ; $7188: $3c
    ld bc, $4b1c                                  ; $7189: $01 $1c $4b
    adc d                                         ; $718c: $8a
    ld [$0000], sp                                ; $718d: $08 $00 $00
    adc d                                         ; $7190: $8a
    ld [$013c], sp                                ; $7191: $08 $3c $01
    jr nc, jr_078_7214                            ; $7194: $30 $7e

    nop                                           ; $7196: $00
    nop                                           ; $7197: $00
    inc a                                         ; $7198: $3c
    ld bc, $4b1c                                  ; $7199: $01 $1c $4b
    jr nc, jr_078_721c                            ; $719c: $30 $7e

    nop                                           ; $719e: $00
    nop                                           ; $719f: $00
    adc d                                         ; $71a0: $8a
    ld [$4b1c], sp                                ; $71a1: $08 $1c $4b
    dec hl                                        ; $71a4: $2b
    ld l, l                                       ; $71a5: $6d
    nop                                           ; $71a6: $00
    nop                                           ; $71a7: $00
    inc a                                         ; $71a8: $3c
    ld bc, $4b1c                                  ; $71a9: $01 $1c $4b
    dec hl                                        ; $71ac: $2b
    ld l, l                                       ; $71ad: $6d
    db $ed                                        ; $71ae: $ed
    rst $38                                       ; $71af: $ff
    rst $38                                       ; $71b0: $ff
    ld a, [$fefe]                                 ; $71b1: $fa $fe $fe
    or $e7                                        ; $71b4: $f6 $e7
    pop af                                        ; $71b6: $f1
    ldh a, [$88]                                  ; $71b7: $f0 $88
    rst $30                                       ; $71b9: $f7
    add a                                         ; $71ba: $87
    ld d, l                                       ; $71bb: $55
    ld a, [hl+]                                   ; $71bc: $2a
    ret nc                                        ; $71bd: $d0

    db $e3                                        ; $71be: $e3
    ldh [$e0], a                                  ; $71bf: $e0 $e0
    ld [de], a                                    ; $71c1: $12

jr_078_71c2:
    dec c                                         ; $71c2: $0d
    cp a                                          ; $71c3: $bf
    dec b                                         ; $71c4: $05
    ld a, [$54ab]                                 ; $71c5: $fa $ab $54
    ld e, a                                       ; $71c8: $5f
    and b                                         ; $71c9: $a0
    ret nz                                        ; $71ca: $c0

    db $e3                                        ; $71cb: $e3
    nop                                           ; $71cc: $00
    ld a, e                                       ; $71cd: $7b
    nop                                           ; $71ce: $00
    rst $38                                       ; $71cf: $ff
    cp $e0                                        ; $71d0: $fe $e0
    db $fc                                        ; $71d2: $fc
    nop                                           ; $71d3: $00
    ldh a, [$03]                                  ; $71d4: $f0 $03
    or b                                          ; $71d6: $b0
    push hl                                       ; $71d7: $e5
    sbc a                                         ; $71d8: $9f
    rrca                                          ; $71d9: $0f
    rrca                                          ; $71da: $0f
    pop af                                        ; $71db: $f1
    ld bc, $e900                                  ; $71dc: $01 $00 $e9
    ldh [$a0], a                                  ; $71df: $e0 $a0
    jp hl                                         ; $71e1: $e9


    ccf                                           ; $71e2: $3f
    rst $38                                       ; $71e3: $ff
    ccf                                           ; $71e4: $3f
    rlca                                          ; $71e5: $07
    rst $00                                       ; $71e6: $c7
    db $fd                                        ; $71e7: $fd
    db $fc                                        ; $71e8: $fc
    ei                                            ; $71e9: $fb
    ld hl, sp-$0a                                 ; $71ea: $f8 $f6
    rst $38                                       ; $71ec: $ff
    pop af                                        ; $71ed: $f1
    db $ed                                        ; $71ee: $ed
    ld [c], a                                     ; $71ef: $e2
    rst $18                                       ; $71f0: $df
    ret nz                                        ; $71f1: $c0

    xor a                                         ; $71f2: $af
    sub b                                         ; $71f3: $90

jr_078_71f4:
    ld a, a                                       ; $71f4: $7f
    rst $38                                       ; $71f5: $ff
    nop                                           ; $71f6: $00
    rst $28                                       ; $71f7: $ef
    nop                                           ; $71f8: $00
    xor e                                         ; $71f9: $ab
    ld d, h                                       ; $71fa: $54
    ld d, a                                       ; $71fb: $57

jr_078_71fc:
    xor b                                         ; $71fc: $a8
    rst $28                                       ; $71fd: $ef
    rra                                           ; $71fe: $1f
    db $10                                        ; $71ff: $10
    rst $18                                       ; $7200: $df
    jr nz, jr_078_71c2                            ; $7201: $20 $bf

    ld b, b                                       ; $7203: $40

jr_078_7204:
    db $fc                                        ; $7204: $fc
    pop hl                                        ; $7205: $e1
    cp d                                          ; $7206: $ba
    pop hl                                        ; $7207: $e1
    or [hl]                                       ; $7208: $b6
    pop hl                                        ; $7209: $e1
    rst $38                                       ; $720a: $ff
    cp $00                                        ; $720b: $fe $00
    db $fc                                        ; $720d: $fc
    ld bc, $03fa                                  ; $720e: $01 $fa $03
    db $f4                                        ; $7211: $f4
    rlca                                          ; $7212: $07
    rst $38                                       ; $7213: $ff

jr_078_7214:
    add sp, $0f                                   ; $7214: $e8 $0f
    ret nz                                        ; $7216: $c0

    rrca                                          ; $7217: $0f
    add b                                         ; $7218: $80
    ccf                                           ; $7219: $3f
    nop                                           ; $721a: $00
    ld a, a                                       ; $721b: $7f

jr_078_721c:
    db $ec                                        ; $721c: $ec
    jp hl                                         ; $721d: $e9


    db $e4                                        ; $721e: $e4
    ld a, [$01f0]                                 ; $721f: $fa $f0 $01
    ld sp, hl                                     ; $7222: $f9
    db $d3                                        ; $7223: $d3
    ldh [rIE], a                                  ; $7224: $e0 $ff
    ldh [$1f], a                                  ; $7226: $e0 $1f
    rst $38                                       ; $7228: $ff
    db $e3                                        ; $7229: $e3
    inc e                                         ; $722a: $1c
    di                                            ; $722b: $f3
    inc c                                         ; $722c: $0c
    di                                            ; $722d: $f3
    inc c                                         ; $722e: $0c
    ei                                            ; $722f: $fb
    inc b                                         ; $7230: $04
    rst $38                                       ; $7231: $ff
    rst $38                                       ; $7232: $ff
    rst $38                                       ; $7233: $ff
    ld a, a                                       ; $7234: $7f
    ld a, a                                       ; $7235: $7f
    rra                                           ; $7236: $1f
    sbc a                                         ; $7237: $9f
    rlca                                          ; $7238: $07
    rst $20                                       ; $7239: $e7
    rst $38                                       ; $723a: $ff
    dec bc                                        ; $723b: $0b
    ei                                            ; $723c: $fb
    add l                                         ; $723d: $85
    ld a, l                                       ; $723e: $7d
    adc d                                         ; $723f: $8a
    ld a, [hl]                                    ; $7240: $7e
    add h                                         ; $7241: $84
    ld a, [hl]                                    ; $7242: $7e
    rst $28                                       ; $7243: $ef
    cp $fe                                        ; $7244: $fe $fe
    db $fd                                        ; $7246: $fd
    db $fc                                        ; $7247: $fc
    adc h                                         ; $7248: $8c
    pop hl                                        ; $7249: $e1
    ei                                            ; $724a: $fb
    ld hl, sp-$06                                 ; $724b: $f8 $fa
    rst $38                                       ; $724d: $ff
    ld hl, sp-$0b                                 ; $724e: $f8 $f5
    ldh a, [$f4]                                  ; $7250: $f0 $f4
    ldh a, [$df]                                  ; $7252: $f0 $df
    nop                                           ; $7254: $00
    xor a                                         ; $7255: $af
    db $fd                                        ; $7256: $fd
    nop                                           ; $7257: $00
    db $fc                                        ; $7258: $fc
    pop hl                                        ; $7259: $e1
    ld e, l                                       ; $725a: $5d
    nop                                           ; $725b: $00
    cp e                                          ; $725c: $bb
    nop                                           ; $725d: $00
    ld d, l                                       ; $725e: $55
    nop                                           ; $725f: $00
    db $fd                                        ; $7260: $fd
    jr z, jr_078_72ab                             ; $7261: $28 $48

    ld [c], a                                     ; $7263: $e2
    rst $30                                       ; $7264: $f7
    nop                                           ; $7265: $00
    db $eb                                        ; $7266: $eb
    nop                                           ; $7267: $00
    call nc, $ff00                                ; $7268: $d4 $00 $ff
    ldh [rSB], a                                  ; $726b: $e0 $01
    nop                                           ; $726d: $00
    rra                                           ; $726e: $1f
    nop                                           ; $726f: $00
    rst $38                                       ; $7270: $ff
    db $e4                                        ; $7271: $e4
    rrca                                          ; $7272: $0f
    rst $38                                       ; $7273: $ff
    ret z                                         ; $7274: $c8

    rra                                           ; $7275: $1f
    call nc, $881f                                ; $7276: $d4 $1f $88

jr_078_7279:
    ccf                                           ; $7279: $3f
    dec d                                         ; $727a: $15
    ccf                                           ; $727b: $3f
    ld c, a                                       ; $727c: $4f
    jr z, jr_078_72fe                             ; $727d: $28 $7f

    dec [hl]                                      ; $727f: $35
    ld a, a                                       ; $7280: $7f
    add [hl]                                      ; $7281: $86
    db $eb                                        ; $7282: $eb
    ld h, c                                       ; $7283: $61
    ldh [$e0], a                                  ; $7284: $e0 $e0
    halt                                          ; $7286: $76
    db $ec                                        ; $7287: $ec
    db $fd                                        ; $7288: $fd
    nop                                           ; $7289: $00
    adc [hl]                                      ; $728a: $8e
    ldh [rP1], a                                  ; $728b: $e0 $00
    rst $28                                       ; $728d: $ef
    db $10                                        ; $728e: $10
    rst $20                                       ; $728f: $e7
    jr jr_078_7279                                ; $7290: $18 $e7

    rst $30                                       ; $7292: $f7
    jr jr_078_7298                                ; $7293: $18 $03

    db $fc                                        ; $7295: $fc
    ei                                            ; $7296: $fb
    ret nz                                        ; $7297: $c0

jr_078_7298:
    rra                                           ; $7298: $1f
    adc d                                         ; $7299: $8a
    ld a, a                                       ; $729a: $7f
    add c                                         ; $729b: $81
    db $dd                                        ; $729c: $dd
    ld a, a                                       ; $729d: $7f
    db $fc                                        ; $729e: $fc
    push hl                                       ; $729f: $e5
    xor d                                         ; $72a0: $aa
    ld a, a                                       ; $72a1: $7f
    ld bc, $e072                                  ; $72a2: $01 $72 $e0
    ld a, a                                       ; $72a5: $7f
    ld a, a                                       ; $72a6: $7f
    ld l, a                                       ; $72a7: $6f
    cp a                                          ; $72a8: $bf
    cp a                                          ; $72a9: $bf
    ccf                                           ; $72aa: $3f

jr_078_72ab:
    cp a                                          ; $72ab: $bf
    db $fc                                        ; $72ac: $fc
    db $e3                                        ; $72ad: $e3
    ld e, a                                       ; $72ae: $5f
    rst $18                                       ; $72af: $df
    and h                                         ; $72b0: $a4
    ret                                           ; $72b1: $c9


    rst $28                                       ; $72b2: $ef
    db $fd                                        ; $72b3: $fd
    db $fc                                        ; $72b4: $fc
    db $fc                                        ; $72b5: $fc
    db $fc                                        ; $72b6: $fc
    add b                                         ; $72b7: $80
    pop bc                                        ; $72b8: $c1
    ldh a, [$f0]                                  ; $72b9: $f0 $f0
    rst $08                                       ; $72bb: $cf
    rst $38                                       ; $72bc: $ff
    ret nz                                        ; $72bd: $c0

    jr c, jr_078_72c7                             ; $72be: $38 $07

    or l                                          ; $72c0: $b5
    ld a, [bc]                                    ; $72c1: $0a
    ld a, [hl]                                    ; $72c2: $7e
    ld bc, $fcbf                                  ; $72c3: $01 $bf $fc
    rst $08                                       ; $72c6: $cf

jr_078_72c7:
    jp nz, $e0ce                                  ; $72c7: $c2 $ce $e0

    ccf                                           ; $72ca: $3f
    ld e, a                                       ; $72cb: $5f
    sbc a                                         ; $72cc: $9f
    cpl                                           ; $72cd: $2f
    rst $08                                       ; $72ce: $cf
    sub a                                         ; $72cf: $97
    cp a                                          ; $72d0: $bf
    ld h, a                                       ; $72d1: $67
    ld c, e                                       ; $72d2: $4b
    or e                                          ; $72d3: $b3
    rst $38                                       ; $72d4: $ff
    rst $38                                       ; $72d5: $ff
    rst $18                                       ; $72d6: $df
    rst $38                                       ; $72d7: $ff
    ldh [$8f], a                                  ; $72d8: $e0 $8f
    rst $38                                       ; $72da: $ff
    xor a                                         ; $72db: $af
    adc a                                         ; $72dc: $8f
    xor a                                         ; $72dd: $af
    add a                                         ; $72de: $87
    or a                                          ; $72df: $b7
    and a                                         ; $72e0: $a7
    sub a                                         ; $72e1: $97
    ld l, e                                       ; $72e2: $6b
    db $fd                                        ; $72e3: $fd
    inc de                                        ; $72e4: $13
    ld h, h                                       ; $72e5: $64
    ret                                           ; $72e6: $c9


    db $fc                                        ; $72e7: $fc
    db $fc                                        ; $72e8: $fc
    ld a, [$f4f8]                                 ; $72e9: $fa $f8 $f4
    ldh a, [rIE]                                  ; $72ec: $f0 $ff
    ld [$ece0], a                                 ; $72ee: $ea $e0 $ec
    ldh [$eb], a                                  ; $72f1: $e0 $eb
    db $e3                                        ; $72f3: $e3
    ld [c], a                                     ; $72f4: $e2
    rst $20                                       ; $72f5: $e7
    rst $38                                       ; $72f6: $ff
    rst $28                                       ; $72f7: $ef
    rst $28                                       ; $72f8: $ef
    ld [$ecef], a                                 ; $72f9: $ea $ef $ec
    db $ec                                        ; $72fc: $ec
    ld b, b                                       ; $72fd: $40

jr_078_72fe:
    rlca                                          ; $72fe: $07
    rst $38                                       ; $72ff: $ff
    db $10                                        ; $7300: $10
    ccf                                           ; $7301: $3f
    add b                                         ; $7302: $80
    rst $38                                       ; $7303: $ff
    ld d, b                                       ; $7304: $50
    db $fc                                        ; $7305: $fc
    add e                                         ; $7306: $83
    ldh a, [$df]                                  ; $7307: $f0 $df
    ld c, a                                       ; $7309: $4f
    ret nz                                        ; $730a: $c0

    rra                                           ; $730b: $1f
    nop                                           ; $730c: $00
    ccf                                           ; $730d: $3f
    ld h, a                                       ; $730e: $67
    pop bc                                        ; $730f: $c1
    db $fc                                        ; $7310: $fc
    ld bc, $c0ef                                  ; $7311: $01 $ef $c0
    dec bc                                        ; $7314: $0b
    nop                                           ; $7315: $00
    rst $10                                       ; $7316: $d7
    ld [$00e4], sp                                ; $7317: $08 $e4 $00
    nop                                           ; $731a: $00
    ld bc, $0eff                                  ; $731b: $01 $ff $0e
    ret nz                                        ; $731e: $c0

    rst $00                                       ; $731f: $c7

jr_078_7320:
    add sp, -$18                                  ; $7320: $e8 $e8
    push de                                       ; $7322: $d5
    push de                                       ; $7323: $d5
    ld [$eadf], a                                 ; $7324: $ea $df $ea
    push af                                       ; $7327: $f5
    push af                                       ; $7328: $f5
    ld [$0dea], a                                 ; $7329: $ea $ea $0d
    ldh [rP1], a                                  ; $732c: $e0 $00
    ccf                                           ; $732e: $3f
    rst $38                                       ; $732f: $ff
    ret nz                                        ; $7330: $c0

    rlca                                          ; $7331: $07
    ld hl, sp+$00                                 ; $7332: $f8 $00
    rra                                           ; $7334: $1f
    add b                                         ; $7335: $80
    and b                                         ; $7336: $a0
    jr z, jr_078_7320                             ; $7337: $28 $e7

    ld d, b                                       ; $7339: $50
    ld b, l                                       ; $733a: $45
    and d                                         ; $733b: $a2
    daa                                           ; $733c: $27
    and $2c                                       ; $733d: $e6 $2c
    ret nz                                        ; $733f: $c0

    ld a, [bc]                                    ; $7340: $0a
    dec b                                         ; $7341: $05
    ld h, l                                       ; $7342: $65
    rst $38                                       ; $7343: $ff
    add d                                         ; $7344: $82
    and b                                         ; $7345: $a0
    ld b, b                                       ; $7346: $40
    ld e, a                                       ; $7347: $5f
    and b                                         ; $7348: $a0
    xor a                                         ; $7349: $af
    ld d, b                                       ; $734a: $50
    ld d, l                                       ; $734b: $55
    push af                                       ; $734c: $f5
    xor d                                         ; $734d: $aa
    inc d                                         ; $734e: $14
    pop hl                                        ; $734f: $e1
    xor b                                         ; $7350: $a8
    ld hl, sp-$20                                 ; $7351: $f8 $e0
    ld a, [hl+]                                   ; $7353: $2a
    rst $38                                       ; $7354: $ff
    ld bc, $bf1f                                  ; $7355: $01 $1f $bf
    ld [c], a                                     ; $7358: $e2
    rlca                                          ; $7359: $07
    ld sp, hl                                     ; $735a: $f9
    ld bc, $807e                                  ; $735b: $01 $7e $80
    call z, $0fe0                                 ; $735e: $cc $e0 $0f
    rst $18                                       ; $7361: $df
    nop                                           ; $7362: $00
    ld bc, $dfdf                                  ; $7363: $01 $df $df
    ld e, a                                       ; $7366: $5f
    ld e, a                                       ; $7367: $5f
    pop hl                                        ; $7368: $e1
    rst $18                                       ; $7369: $df
    ld e, a                                       ; $736a: $5f
    ld a, a                                       ; $736b: $7f
    ld e, a                                       ; $736c: $5f
    sbc a                                         ; $736d: $9f
    rra                                           ; $736e: $1f
    rst $20                                       ; $736f: $e7
    rlca                                          ; $7370: $07
    add hl, sp                                    ; $7371: $39
    pop bc                                        ; $7372: $c1
    dec l                                         ; $7373: $2d
    ldh [$73], a                                  ; $7374: $e0 $73
    db $fc                                        ; $7376: $fc
    cp $ff                                        ; $7377: $fe $ff
    ldh [$a8], a                                  ; $7379: $e0 $a8
    and l                                         ; $737b: $a5
    ld a, [hl]                                    ; $737c: $7e
    ld bc, $7a7f                                  ; $737d: $01 $7f $7a
    ldh [rIE], a                                  ; $7380: $e0 $ff
    ld e, a                                       ; $7382: $5f
    nop                                           ; $7383: $00
    cpl                                           ; $7384: $2f
    nop                                           ; $7385: $00
    sub a                                         ; $7386: $97
    add b                                         ; $7387: $80
    set 0, b                                      ; $7388: $cb $c0
    rst $38                                       ; $738a: $ff
    push hl                                       ; $738b: $e5
    ldh [$8d], a                                  ; $738c: $e0 $8d
    ld [hl], c                                    ; $738e: $71
    ld b, l                                       ; $738f: $45
    cp c                                          ; $7390: $b9
    and d                                         ; $7391: $a2
    ld e, h                                       ; $7392: $5c
    rst $38                                       ; $7393: $ff
    jp nz, $a13c                                  ; $7394: $c2 $3c $a1

    ld e, [hl]                                    ; $7397: $5e
    pop de                                        ; $7398: $d1
    ld l, $e8                                     ; $7399: $2e $e8
    rla                                           ; $739b: $17
    di                                            ; $739c: $f3
    ret nc                                        ; $739d: $d0

    cpl                                           ; $739e: $2f
    add b                                         ; $739f: $80
    and l                                         ; $73a0: $a5
    ret c                                         ; $73a1: $d8

    jp nz, $bf3f                                  ; $73a2: $c2 $3f $bf

    ccf                                           ; $73a5: $3f
    ld [hl], e                                    ; $73a6: $73
    rst $38                                       ; $73a7: $ff
    dec bc                                        ; $73a8: $0b
    ld h, c                                       ; $73a9: $61
    dec e                                         ; $73aa: $1d
    ld [hl], c                                    ; $73ab: $71
    dec c                                         ; $73ac: $0d
    ld h, b                                       ; $73ad: $60
    ld e, $74                                     ; $73ae: $1e $74
    rst $38                                       ; $73b0: $ff
    dec bc                                        ; $73b1: $0b
    ld l, b                                       ; $73b2: $68
    rla                                           ; $73b3: $17
    ld [hl], h                                    ; $73b4: $74
    dec bc                                        ; $73b5: $0b
    ld a, [hl-]                                   ; $73b6: $3a
    dec b                                         ; $73b7: $05
    db $f4                                        ; $73b8: $f4
    rst $38                                       ; $73b9: $ff
    ld a, [c]                                     ; $73ba: $f2
    db $f4                                        ; $73bb: $f4
    di                                            ; $73bc: $f3
    or $f1                                        ; $73bd: $f6 $f1
    xor $e1                                       ; $73bf: $ee $e1
    ld l, a                                       ; $73c1: $6f
    ld a, a                                       ; $73c2: $7f
    ld h, b                                       ; $73c3: $60
    ld l, a                                       ; $73c4: $6f
    ld h, b                                       ; $73c5: $60
    cpl                                           ; $73c6: $2f
    and b                                         ; $73c7: $a0
    rrca                                          ; $73c8: $0f
    ret nz                                        ; $73c9: $c0

    sub $e3                                       ; $73ca: $d6 $e3
    rst $38                                       ; $73cc: $ff
    rra                                           ; $73cd: $1f
    sbc a                                         ; $73ce: $9f
    ld h, $c6                                     ; $73cf: $26 $c6
    add hl, bc                                    ; $73d1: $09
    ldh a, [$80]                                  ; $73d2: $f0 $80
    ld a, a                                       ; $73d4: $7f
    rst $38                                       ; $73d5: $ff
    push de                                       ; $73d6: $d5
    ld a, [hl+]                                   ; $73d7: $2a
    ldh [$e0], a                                  ; $73d8: $e0 $e0
    ld [$d5e0], a                                 ; $73da: $ea $e0 $d5
    ret nz                                        ; $73dd: $c0

    rst $38                                       ; $73de: $ff
    cp e                                          ; $73df: $bb
    add b                                         ; $73e0: $80
    ld [hl], a                                    ; $73e1: $77
    nop                                           ; $73e2: $00
    xor $01                                       ; $73e3: $ee $01
    db $fd                                        ; $73e5: $fd
    ld [bc], a                                    ; $73e6: $02
    rst $28                                       ; $73e7: $ef
    ld a, [$7705]                                 ; $73e8: $fa $05 $77
    ld [$a1b2], sp                                ; $73eb: $08 $b2 $a1
    rst $28                                       ; $73ee: $ef
    db $10                                        ; $73ef: $10
    ld e, a                                       ; $73f0: $5f
    cp a                                          ; $73f1: $bf
    and b                                         ; $73f2: $a0
    cp a                                          ; $73f3: $bf
    ld b, b                                       ; $73f4: $40
    ld a, a                                       ; $73f5: $7f
    add b                                         ; $73f6: $80
    cp $14                                        ; $73f7: $fe $14
    ret nz                                        ; $73f9: $c0

    cp l                                          ; $73fa: $bd
    ei                                            ; $73fb: $fb
    nop                                           ; $73fc: $00
    ei                                            ; $73fd: $fb
    ld e, $c2                                     ; $73fe: $1e $c2
    rst $10                                       ; $7400: $d7
    nop                                           ; $7401: $00
    xor l                                         ; $7402: $ad
    nop                                           ; $7403: $00
    ld a, [bc]                                    ; $7404: $0a
    rst $38                                       ; $7405: $ff
    nop                                           ; $7406: $00
    push af                                       ; $7407: $f5
    db $f4                                        ; $7408: $f4
    jp hl                                         ; $7409: $e9


    add sp, -$2e                                  ; $740a: $e8 $d2
    pop de                                        ; $740c: $d1
    and l                                         ; $740d: $a5
    rst $38                                       ; $740e: $ff
    and d                                         ; $740f: $a2
    jp nc, $a5d5                                  ; $7410: $d2 $d5 $a5

    xor d                                         ; $7413: $aa
    ld c, d                                       ; $7414: $4a
    ld b, l                                       ; $7415: $45
    sub c                                         ; $7416: $91
    rst $38                                       ; $7417: $ff
    adc b                                         ; $7418: $88
    adc d                                         ; $7419: $8a
    ld d, l                                       ; $741a: $55
    ld d, l                                       ; $741b: $55
    xor d                                         ; $741c: $aa
    xor b                                         ; $741d: $a8
    ld d, h                                       ; $741e: $54
    ld d, b                                       ; $741f: $50
    rst $38                                       ; $7420: $ff
    and b                                         ; $7421: $a0
    and b                                         ; $7422: $a0
    ld b, e                                       ; $7423: $43
    ld b, b                                       ; $7424: $40
    adc [hl]                                      ; $7425: $8e
    add b                                         ; $7426: $80
    inc e                                         ; $7427: $1c
    ld bc, $bdf7                                  ; $7428: $01 $f7 $bd
    xor d                                         ; $742b: $aa
    ld d, c                                       ; $742c: $51
    inc e                                         ; $742d: $1c
    ldh [$15], a                                  ; $742e: $e0 $15
    dec b                                         ; $7430: $05
    ld a, [bc]                                    ; $7431: $0a
    ld [bc], a                                    ; $7432: $02
    rst $38                                       ; $7433: $ff
    push hl                                       ; $7434: $e5
    dec b                                         ; $7435: $05
    ld [de], a                                    ; $7436: $12
    nop                                           ; $7437: $00
    inc bc                                        ; $7438: $03
    add b                                         ; $7439: $80
    or e                                          ; $743a: $b3
    xor d                                         ; $743b: $aa
    ld hl, sp-$20                                 ; $743c: $f8 $e0
    ldh [$fc], a                                  ; $743e: $e0 $fc
    push hl                                       ; $7440: $e5
    dec de                                        ; $7441: $1b
    and c                                         ; $7442: $a1
    and b                                         ; $7443: $a0
    ld b, b                                       ; $7444: $40
    ld d, h                                       ; $7445: $54
    xor b                                         ; $7446: $a8
    xor d                                         ; $7447: $aa
    cp a                                          ; $7448: $bf
    ld d, h                                       ; $7449: $54
    dec b                                         ; $744a: $05
    adc d                                         ; $744b: $8a
    and d                                         ; $744c: $a2
    ld d, l                                       ; $744d: $55
    ld d, c                                       ; $744e: $51
    add sp, -$20                                  ; $744f: $e8 $e0
    inc d                                         ; $7451: $14
    rst $38                                       ; $7452: $ff
    ld [$3e38], a                                 ; $7453: $ea $38 $3e
    ld c, $0f                                     ; $7456: $0e $0f
    inc bc                                        ; $7458: $03
    inc bc                                        ; $7459: $03
    nop                                           ; $745a: $00
    ld a, a                                       ; $745b: $7f
    nop                                           ; $745c: $00
    ld b, b                                       ; $745d: $40
    ld b, b                                       ; $745e: $40
    ld a, b                                       ; $745f: $78
    ld a, b                                       ; $7460: $78
    ld a, a                                       ; $7461: $7f
    ld a, a                                       ; $7462: $7f
    add d                                         ; $7463: $82
    and c                                         ; $7464: $a1
    rst $38                                       ; $7465: $ff
    ccf                                           ; $7466: $3f
    cp a                                          ; $7467: $bf
    sbc a                                         ; $7468: $9f
    rst $18                                       ; $7469: $df
    rst $08                                       ; $746a: $cf
    rst $28                                       ; $746b: $ef
    daa                                           ; $746c: $27
    scf                                           ; $746d: $37
    rst $38                                       ; $746e: $ff
    inc de                                        ; $746f: $13
    dec de                                        ; $7470: $1b
    add hl, bc                                    ; $7471: $09
    dec c                                         ; $7472: $0d
    db $e4                                        ; $7473: $e4
    and $f2                                       ; $7474: $e6 $f2
    ldh a, [$f3]                                  ; $7476: $f0 $f3
    ld sp, hl                                     ; $7478: $f9
    ld hl, sp-$12                                 ; $7479: $f8 $ee
    pop bc                                        ; $747b: $c1
    sbc b                                         ; $747c: $98
    add l                                         ; $747d: $85
    jp hl                                         ; $747e: $e9


    ld d, $75                                     ; $747f: $16 $75
    ld a, [bc]                                    ; $7481: $0a
    rst $38                                       ; $7482: $ff
    cp e                                          ; $7483: $bb
    inc b                                         ; $7484: $04
    ld e, a                                       ; $7485: $5f
    nop                                           ; $7486: $00
    ld a, [hl+]                                   ; $7487: $2a
    nop                                           ; $7488: $00
    add h                                         ; $7489: $84
    add b                                         ; $748a: $80
    rrca                                          ; $748b: $0f
    ret                                           ; $748c: $c9


    pop bc                                        ; $748d: $c1
    push de                                       ; $748e: $d5
    pop bc                                        ; $748f: $c1
    inc c                                         ; $7490: $0c
    pop hl                                        ; $7491: $e1
    ld [$c4e1], sp                                ; $7492: $08 $e1 $c4
    pop hl                                        ; $7495: $e1
    ld [hl], h                                    ; $7496: $74
    add c                                         ; $7497: $81
    rst $38                                       ; $7498: $ff
    ld a, l                                       ; $7499: $7d
    ld [bc], a                                    ; $749a: $02
    ld a, $01                                     ; $749b: $3e $01
    ld e, l                                       ; $749d: $5d
    ld [bc], a                                    ; $749e: $02
    ccf                                           ; $749f: $3f
    nop                                           ; $74a0: $00
    rst $38                                       ; $74a1: $ff
    sbc a                                         ; $74a2: $9f
    add b                                         ; $74a3: $80
    xor a                                         ; $74a4: $af
    add b                                         ; $74a5: $80
    sub a                                         ; $74a6: $97
    add b                                         ; $74a7: $80
    rst $08                                       ; $74a8: $cf
    ret nz                                        ; $74a9: $c0

    rst $38                                       ; $74aa: $ff
    inc de                                        ; $74ab: $13
    ldh [$84], a                                  ; $74ac: $e0 $84
    ld a, b                                       ; $74ae: $78
    ld b, c                                       ; $74af: $41
    cp [hl]                                       ; $74b0: $be
    and b                                         ; $74b1: $a0
    ld e, a                                       ; $74b2: $5f
    rst $38                                       ; $74b3: $ff
    ret nc                                        ; $74b4: $d0

    cpl                                           ; $74b5: $2f
    add sp, $17                                   ; $74b6: $e8 $17
    call nc, $fa2b                                ; $74b8: $d4 $2b $fa
    dec b                                         ; $74bb: $05
    cp a                                          ; $74bc: $bf
    ld [$7914], a                                 ; $74bd: $ea $14 $79
    nop                                           ; $74c0: $00
    add h                                         ; $74c1: $84
    inc bc                                        ; $74c2: $03
    ldh a, [$85]                                  ; $74c3: $f0 $85
    and d                                         ; $74c5: $a2
    rst $38                                       ; $74c6: $ff
    ld e, l                                       ; $74c7: $5d
    push hl                                       ; $74c8: $e5
    ld a, [de]                                    ; $74c9: $1a
    adc e                                         ; $74ca: $8b
    ld [hl], h                                    ; $74cb: $74
    dec b                                         ; $74cc: $05
    ld a, [$df0b]                                 ; $74cd: $fa $0b $df
    db $f4                                        ; $74d0: $f4
    rla                                           ; $74d1: $17
    add sp, $2f                                   ; $74d2: $e8 $2f
    ret nc                                        ; $74d4: $d0

    inc c                                         ; $74d5: $0c
    pop hl                                        ; $74d6: $e1
    db $fc                                        ; $74d7: $fc
    db $fd                                        ; $74d8: $fd
    rst $38                                       ; $74d9: $ff
    ld hl, sp-$05                                 ; $74da: $f8 $fb
    ldh a, [$f7]                                  ; $74dc: $f0 $f7
    ldh a, [$f6]                                  ; $74de: $f0 $f6
    pop hl                                        ; $74e0: $e1
    xor $fe                                       ; $74e1: $ee $fe
    cp $e3                                        ; $74e3: $fe $e3
    dec b                                         ; $74e5: $05
    push bc                                       ; $74e6: $c5
    ld [bc], a                                    ; $74e7: $02
    ld a, [c]                                     ; $74e8: $f2
    jr nz, jr_078_7503                            ; $74e9: $20 $18

    ret nc                                        ; $74eb: $d0

    rst $38                                       ; $74ec: $ff
    inc c                                         ; $74ed: $0c
    jp hl                                         ; $74ee: $e9


    inc b                                         ; $74ef: $04
    db $e3                                        ; $74f0: $e3
    inc c                                         ; $74f1: $0c
    jp nz, $b105                                  ; $74f2: $c2 $05 $b1

    rst $18                                       ; $74f5: $df
    ld b, $2a                                     ; $74f6: $06 $2a
    inc d                                         ; $74f8: $14
    ld d, l                                       ; $74f9: $55
    ld a, [hl+]                                   ; $74fa: $2a
    jr c, @-$3d                                   ; $74fb: $38 $c1

    xor d                                         ; $74fd: $aa
    ld d, l                                       ; $74fe: $55
    rst $38                                       ; $74ff: $ff
    ld d, h                                       ; $7500: $54
    xor e                                         ; $7501: $ab
    xor b                                         ; $7502: $a8

jr_078_7503:
    ld d, a                                       ; $7503: $57
    ld d, h                                       ; $7504: $54
    xor e                                         ; $7505: $ab
    inc bc                                        ; $7506: $03
    dec sp                                        ; $7507: $3b
    rst $28                                       ; $7508: $ef
    inc bc                                        ; $7509: $03
    ld a, e                                       ; $750a: $7b
    rlca                                          ; $750b: $07
    ld [hl], a                                    ; $750c: $77
    cp $e0                                        ; $750d: $fe $e0
    rst $30                                       ; $750f: $f7
    rlca                                          ; $7510: $07
    rst $10                                       ; $7511: $d7
    rst $38                                       ; $7512: $ff
    inc bc                                        ; $7513: $03
    db $eb                                        ; $7514: $eb
    ld bc, $80f1                                  ; $7515: $01 $f1 $80
    or e                                          ; $7518: $b3
    nop                                           ; $7519: $00
    inc bc                                        ; $751a: $03
    rst $38                                       ; $751b: $ff
    ld [$000b], sp                                ; $751c: $08 $0b $00
    rlca                                          ; $751f: $07
    sub b                                         ; $7520: $90
    sub a                                         ; $7521: $97
    ldh a, [$f7]                                  ; $7522: $f0 $f7
    xor a                                         ; $7524: $af
    ldh [$ef], a                                  ; $7525: $e0 $ef
    ldh [$ef], a                                  ; $7527: $e0 $ef
    add [hl]                                      ; $7529: $86
    add [hl]                                      ; $752a: $86
    cp $fe                                        ; $752b: $fe $fe
    pop hl                                        ; $752d: $e1
    ld bc, $fdff                                  ; $752e: $01 $ff $fd
    nop                                           ; $7531: $00
    adc $00                                       ; $7532: $ce $00
    add [hl]                                      ; $7534: $86
    nop                                           ; $7535: $00
    inc h                                         ; $7536: $24
    nop                                           ; $7537: $00
    rst $38                                       ; $7538: $ff
    ld d, h                                       ; $7539: $54
    nop                                           ; $753a: $00
    ld d, h                                       ; $753b: $54
    ld [bc], a                                    ; $753c: $02
    db $10                                        ; $753d: $10
    ld [bc], a                                    ; $753e: $02
    db $10                                        ; $753f: $10
    ld bc, $10f7                                  ; $7540: $01 $f7 $10
    ld sp, hl                                     ; $7543: $f9
    ld sp, hl                                     ; $7544: $f9
    cp [hl]                                       ; $7545: $be
    ld l, e                                       ; $7546: $6b
    db $db                                        ; $7547: $db
    jp $c7d7                                      ; $7548: $c3 $d7 $c7


    ld hl, sp-$02                                 ; $754b: $f8 $fe
    pop hl                                        ; $754d: $e1
    ld c, a                                       ; $754e: $4f
    and b                                         ; $754f: $a0
    ld c, e                                       ; $7550: $4b
    and b                                         ; $7551: $a0
    ld e, a                                       ; $7552: $5f
    rra                                           ; $7553: $1f
    push de                                       ; $7554: $d5
    ret nz                                        ; $7555: $c0

    db $eb                                        ; $7556: $eb
    rst $28                                       ; $7557: $ef
    ldh [$e5], a                                  ; $7558: $e0 $e5
    ldh [$f3], a                                  ; $755a: $e0 $f3
    ld a, [$fac0]                                 ; $755c: $fa $c0 $fa
    ld hl, sp-$03                                 ; $755f: $f8 $fd
    add sp, -$08                                  ; $7561: $e8 $f8
    pop bc                                        ; $7563: $c1
    sub $60                                       ; $7564: $d6 $60
    ld sp, $5f81                                  ; $7566: $31 $81 $5f
    adc $60                                       ; $7569: $ce $60
    ld d, a                                       ; $756b: $57
    nop                                           ; $756c: $00
    cp a                                          ; $756d: $bf
    rst $18                                       ; $756e: $df
    nop                                           ; $756f: $00
    ld d, l                                       ; $7570: $55
    xor d                                         ; $7571: $aa
    db $eb                                        ; $7572: $eb
    inc d                                         ; $7573: $14
    inc hl                                        ; $7574: $23
    adc c                                         ; $7575: $89
    ld a, a                                       ; $7576: $7f
    add b                                         ; $7577: $80
    cp $15                                        ; $7578: $fe $15
    adc e                                         ; $757a: $8b
    ldh [$ef], a                                  ; $757b: $e0 $ef
    add sp, -$19                                  ; $757d: $e8 $e7
    ldh a, [$f7]                                  ; $757f: $f0 $f7
    db $f4                                        ; $7581: $f4

jr_078_7582:
    rst $30                                       ; $7582: $f7
    di                                            ; $7583: $f3
    ld a, [$c2f9]                                 ; $7584: $fa $f9 $c2
    pop hl                                        ; $7587: $e1
    rst $18                                       ; $7588: $df
    rst $18                                       ; $7589: $df
    ld d, b                                       ; $758a: $50
    daa                                           ; $758b: $27
    rst $38                                       ; $758c: $ff
    ld sp, $1846                                  ; $758d: $31 $46 $18
    rst $20                                       ; $7590: $e7
    add hl, bc                                    ; $7591: $09
    or $02                                        ; $7592: $f6 $02
    db $fd                                        ; $7594: $fd
    rst $38                                       ; $7595: $ff
    ld bc, $80fe                                  ; $7596: $01 $fe $80
    ld a, a                                       ; $7599: $7f
    ld [hl+], a                                   ; $759a: $22
    inc e                                         ; $759b: $1c
    xor b                                         ; $759c: $a8
    ld d, a                                       ; $759d: $57
    dec de                                        ; $759e: $1b
    ld d, b                                       ; $759f: $50
    xor a                                         ; $75a0: $af
    db $fc                                        ; $75a1: $fc
    rst $20                                       ; $75a2: $e7
    ret nc                                        ; $75a3: $d0

    cpl                                           ; $75a4: $2f
    ld a, e                                       ; $75a5: $7b
    ld h, b                                       ; $75a6: $60
    call nc, $1f6b                                ; $75a7: $d4 $6b $1f
    and c                                         ; $75aa: $a1
    jp c, Jump_078_69d0                           ; $75ab: $da $d0 $69

    db $fd                                        ; $75ae: $fd
    cp $e1                                        ; $75af: $fe $e1
    nop                                           ; $75b1: $00
    or $0b                                        ; $75b2: $f6 $0b
    add b                                         ; $75b4: $80
    rst $38                                       ; $75b5: $ff
    nop                                           ; $75b6: $00
    rst $38                                       ; $75b7: $ff
    ei                                            ; $75b8: $fb
    db $10                                        ; $75b9: $10
    rst $20                                       ; $75ba: $e7
    add a                                         ; $75bb: $87
    and b                                         ; $75bc: $a0
    add e                                         ; $75bd: $83
    and b                                         ; $75be: $a0
    rlca                                          ; $75bf: $07
    ld a, a                                       ; $75c0: $7f
    ld [hl], b                                    ; $75c1: $70
    rrca                                          ; $75c2: $0f
    jr nz, jr_078_75d4                            ; $75c3: $20 $0f

    ldh [$1f], a                                  ; $75c5: $e0 $1f
    ret nz                                        ; $75c7: $c0

    cp $e1                                        ; $75c8: $fe $e1
    rst $38                                       ; $75ca: $ff
    ld a, a                                       ; $75cb: $7f
    ld a, a                                       ; $75cc: $7f
    cp [hl]                                       ; $75cd: $be
    ld a, $5c                                     ; $75ce: $3e $5c
    sbc h                                         ; $75d0: $9c
    and d                                         ; $75d1: $a2
    ld b, b                                       ; $75d2: $40
    rst $38                                       ; $75d3: $ff

jr_078_75d4:
    ld a, [hl]                                    ; $75d4: $7e
    add b                                         ; $75d5: $80
    xor d                                         ; $75d6: $aa
    ld d, h                                       ; $75d7: $54
    sub $28                                       ; $75d8: $d6 $28
    and d                                         ; $75da: $a2
    ld e, h                                       ; $75db: $5c
    ldh a, [$fc]                                  ; $75dc: $f0 $fc
    ld b, c                                       ; $75de: $41
    jr nc, jr_078_7582                            ; $75df: $30 $a1

    cp e                                          ; $75e1: $bb
    ld h, b                                       ; $75e2: $60
    and [hl]                                      ; $75e3: $a6
    ret nz                                        ; $75e4: $c0

    ld hl, sp-$06                                 ; $75e5: $f8 $fa
    rra                                           ; $75e7: $1f
    rra                                           ; $75e8: $1f
    ld hl, sp+$4f                                 ; $75e9: $f8 $4f
    jp $8128                                      ; $75eb: $c3 $28 $81


    db $10                                        ; $75ee: $10
    pop bc                                        ; $75ef: $c1
    ld d, l                                       ; $75f0: $55
    nop                                           ; $75f1: $00
    xor a                                         ; $75f2: $af
    add b                                         ; $75f3: $80
    push de                                       ; $75f4: $d5
    sbc a                                         ; $75f5: $9f
    ret nz                                        ; $75f6: $c0

    ld [$f1e0], a                                 ; $75f7: $ea $e0 $f1
    ldh a, [$34]                                  ; $75fa: $f0 $34
    add e                                         ; $75fc: $83
    ld d, l                                       ; $75fd: $55
    ld h, c                                       ; $75fe: $61
    ld d, l                                       ; $75ff: $55
    ld a, [hl]                                    ; $7600: $7e
    db $fc                                        ; $7601: $fc

jr_078_7602:
    ld [c], a                                     ; $7602: $e2
    xor e                                         ; $7603: $ab
    nop                                           ; $7604: $00
    dec d                                         ; $7605: $15
    nop                                           ; $7606: $00
    jp z, $e8c0                                   ; $7607: $ca $c0 $e8

    ld b, c                                       ; $760a: $41
    push de                                       ; $760b: $d5
    push af                                       ; $760c: $f5
    db $ec                                        ; $760d: $ec
    and $aa                                       ; $760e: $e6 $aa
    db $f4                                        ; $7610: $f4
    db $e4                                        ; $7611: $e4
    cp $f4                                        ; $7612: $fe $f4
    ld [c], a                                     ; $7614: $e2
    ld d, c                                       ; $7615: $51
    nop                                           ; $7616: $00
    ld a, a                                       ; $7617: $7f
    and d                                         ; $7618: $a2
    nop                                           ; $7619: $00
    ld b, b                                       ; $761a: $40
    nop                                           ; $761b: $00

jr_078_761c:
    ld [$7400], a                                 ; $761c: $ea $00 $74
    db $fc                                        ; $761f: $fc
    ldh [$fd], a                                  ; $7620: $e0 $fd
    ld d, h                                       ; $7622: $54
    db $fc                                        ; $7623: $fc
    ld [c], a                                     ; $7624: $e2
    xor b                                         ; $7625: $a8
    nop                                           ; $7626: $00
    xor b                                         ; $7627: $a8
    rst $10                                       ; $7628: $d7
    call nc, $ffab                                ; $7629: $d4 $ab $ff
    add sp, $57                                   ; $762c: $e8 $57
    db $f4                                        ; $762e: $f4
    dec bc                                        ; $762f: $0b
    cp d                                          ; $7630: $ba
    ld d, l                                       ; $7631: $55
    push de                                       ; $7632: $d5
    ld [hl+], a                                   ; $7633: $22
    rst $38                                       ; $7634: $ff
    xor d                                         ; $7635: $aa
    ld d, c                                       ; $7636: $51
    ld b, l                                       ; $7637: $45
    cp b                                          ; $7638: $b8
    nop                                           ; $7639: $00
    rst $00                                       ; $763a: $c7
    nop                                           ; $763b: $00
    ret c                                         ; $763c: $d8

    rst $38                                       ; $763d: $ff
    nop                                           ; $763e: $00
    rst $00                                       ; $763f: $c7
    jr jr_078_7602                                ; $7640: $18 $c0

    inc e                                         ; $7642: $1c
    ret nz                                        ; $7643: $c0

    inc e                                         ; $7644: $1c
    pop bc                                        ; $7645: $c1
    cp a                                          ; $7646: $bf
    nop                                           ; $7647: $00
    db $e3                                        ; $7648: $e3
    nop                                           ; $7649: $00
    rst $38                                       ; $764a: $ff
    jr nz, jr_078_761c                            ; $764b: $20 $cf

    ld c, a                                       ; $764d: $4f
    add c                                         ; $764e: $81
    nop                                           ; $764f: $00
    rst $38                                       ; $7650: $ff
    ld a, a                                       ; $7651: $7f
    ld bc, $02fe                                  ; $7652: $01 $fe $02
    db $fc                                        ; $7655: $fc
    dec b                                         ; $7656: $05
    db $fd                                        ; $7657: $fd
    dec de                                        ; $7658: $1b
    rst $00                                       ; $7659: $c7
    db $eb                                        ; $765a: $eb
    ld e, a                                       ; $765b: $5f
    sbc a                                         ; $765c: $9f
    and h                                         ; $765d: $a4
    ld h, b                                       ; $765e: $60
    jp nz, $c0a0                                  ; $765f: $c2 $a0 $c0

    and l                                         ; $7662: $a5
    sub $28                                       ; $7663: $d6 $28
    rst $38                                       ; $7665: $ff
    push hl                                       ; $7666: $e5
    add hl, de                                    ; $7667: $19
    push bc                                       ; $7668: $c5
    add hl, sp                                    ; $7669: $39
    xor e                                         ; $766a: $ab
    ld d, e                                       ; $766b: $53
    swap e                                        ; $766c: $cb $33
    rst $38                                       ; $766e: $ff
    sub a                                         ; $766f: $97
    ld h, a                                       ; $7670: $67
    cpl                                           ; $7671: $2f
    rst $08                                       ; $7672: $cf
    sbc a                                         ; $7673: $9f
    ld e, a                                       ; $7674: $5f
    ld hl, sp-$06                                 ; $7675: $f8 $fa
    rst $38                                       ; $7677: $ff
    ldh a, [$f6]                                  ; $7678: $f0 $f6
    pop af                                        ; $767a: $f1
    push af                                       ; $767b: $f5
    pop hl                                        ; $767c: $e1
    db $ed                                        ; $767d: $ed
    db $e3                                        ; $767e: $e3
    db $eb                                        ; $767f: $eb
    rst $38                                       ; $7680: $ff
    db $e3                                        ; $7681: $e3
    db $eb                                        ; $7682: $eb
    jp $c7db                                      ; $7683: $c3 $db $c7


    rst $10                                       ; $7686: $d7
    pop af                                        ; $7687: $f1
    ldh a, [$94]                                  ; $7688: $f0 $94
    inc l                                         ; $768a: $2c
    ld b, a                                       ; $768b: $47
    inc b                                         ; $768c: $04
    ld b, c                                       ; $768d: $41
    ld d, l                                       ; $768e: $55
    halt                                          ; $768f: $76
    and b                                         ; $7690: $a0
    ret nz                                        ; $7691: $c0

    xor d                                         ; $7692: $aa

jr_078_7693:
    add b                                         ; $7693: $80
    ldh a, [$e9]                                  ; $7694: $f0 $e9
    ld d, l                                       ; $7696: $55
    rst $38                                       ; $7697: $ff
    nop                                           ; $7698: $00
    add d                                         ; $7699: $82
    add b                                         ; $769a: $80
    ld hl, sp-$08                                 ; $769b: $f8 $f8
    rst $38                                       ; $769d: $ff
    rst $38                                       ; $769e: $ff
    db $fc                                        ; $769f: $fc
    rst $38                                       ; $76a0: $ff
    db $fc                                        ; $76a1: $fc
    ld a, [c]                                     ; $76a2: $f2
    pop af                                        ; $76a3: $f1
    ld d, h                                       ; $76a4: $54
    ld d, h                                       ; $76a5: $54
    xor b                                         ; $76a6: $a8
    xor b                                         ; $76a7: $a8
    ld d, d                                       ; $76a8: $52
    rst $30                                       ; $76a9: $f7
    ld d, b                                       ; $76aa: $50
    add l                                         ; $76ab: $85
    add d                                         ; $76ac: $82
    db $f4                                        ; $76ad: $f4
    ld h, b                                       ; $76ae: $60
    ld a, [hl+]                                   ; $76af: $2a
    ldh a, [rBGP]                                 ; $76b0: $f0 $47
    ld hl, sp-$41                                 ; $76b2: $f8 $bf
    add e                                         ; $76b4: $83

jr_078_76b5:
    add d                                         ; $76b5: $82
    ld a, h                                       ; $76b6: $7c
    ld b, c                                       ; $76b7: $41
    cp [hl]                                       ; $76b8: $be
    add b                                         ; $76b9: $80
    add sp, $40                                   ; $76ba: $e8 $40
    add b                                         ; $76bc: $80
    rst $38                                       ; $76bd: $ff
    ccf                                           ; $76be: $3f
    ld b, b                                       ; $76bf: $40
    adc a                                         ; $76c0: $8f
    and b                                         ; $76c1: $a0
    ld d, e                                       ; $76c2: $53
    ld d, h                                       ; $76c3: $54
    xor b                                         ; $76c4: $a8
    add b                                         ; $76c5: $80
    rst $38                                       ; $76c6: $ff
    ld a, a                                       ; $76c7: $7f
    ld b, b                                       ; $76c8: $40
    ccf                                           ; $76c9: $3f
    add b                                         ; $76ca: $80
    rra                                           ; $76cb: $1f
    ld c, b                                       ; $76cc: $48
    add a                                         ; $76cd: $87
    ld h, d                                       ; $76ce: $62
    ld a, a                                       ; $76cf: $7f
    add c                                         ; $76d0: $81
    jr nc, jr_078_7693                            ; $76d1: $30 $c0

    jr jr_078_76b5                                ; $76d3: $18 $e0

    inc c                                         ; $76d5: $0c
    ldh a, [$f7]                                  ; $76d6: $f0 $f7
    ld hl, $02ff                                  ; $76d8: $21 $ff $02
    db $fc                                        ; $76db: $fc
    add hl, bc                                    ; $76dc: $09
    pop af                                        ; $76dd: $f1
    ld [hl+], a                                   ; $76de: $22
    jp nz, Jump_000_1515                          ; $76df: $c2 $15 $15

    xor a                                         ; $76e2: $af
    ld a, [hl+]                                   ; $76e3: $2a
    ld a, [hl+]                                   ; $76e4: $2a
    nop                                           ; $76e5: $00
    nop                                           ; $76e6: $00
    ld a, h                                       ; $76e7: $7c
    ldh [$1f], a                                  ; $76e8: $e0 $1f
    add sp, -$7f                                  ; $76ea: $e8 $81
    xor a                                         ; $76ec: $af
    reti                                          ; $76ed: $d9


    xor a                                         ; $76ee: $af
    or a                                          ; $76ef: $b7
    add c                                         ; $76f0: $81
    ret c                                         ; $76f1: $d8

    ld hl, $01fe                                  ; $76f2: $21 $fe $01
    jr nz, @+$43                                  ; $76f5: $20 $41

    db $fd                                        ; $76f7: $fd
    ld bc, $f3ff                                  ; $76f8: $01 $ff $f3

jr_078_76fb:
    inc bc                                        ; $76fb: $03
    adc a                                         ; $76fc: $8f
    rrca                                          ; $76fd: $0f
    ld a, a                                       ; $76fe: $7f
    ld a, a                                       ; $76ff: $7f
    ld e, a                                       ; $7700: $5f
    sbc a                                         ; $7701: $9f
    db $fc                                        ; $7702: $fc
    inc b                                         ; $7703: $04
    and a                                         ; $7704: $a7
    add d                                         ; $7705: $82
    cpl                                           ; $7706: $2f
    cp $fe                                        ; $7707: $fe $fe
    rst $00                                       ; $7709: $c7
    rst $10                                       ; $770a: $d7
    add a                                         ; $770b: $87
    or a                                          ; $770c: $b7
    cp a                                          ; $770d: $bf
    adc a                                         ; $770e: $8f
    xor a                                         ; $770f: $af
    rrca                                          ; $7710: $0f
    ld l, a                                       ; $7711: $6f
    rra                                           ; $7712: $1f
    ld e, a                                       ; $7713: $5f
    cp $e0                                        ; $7714: $fe $e0
    rst $18                                       ; $7716: $df
    db $eb                                        ; $7717: $eb
    ccf                                           ; $7718: $3f
    cp a                                          ; $7719: $bf
    add sp, -$1b                                  ; $771a: $e8 $e5
    db $fd                                        ; $771c: $fd
    add hl, hl                                    ; $771d: $29
    ld b, b                                       ; $771e: $40
    ei                                            ; $771f: $fb
    ei                                            ; $7720: $fb
    ld a, [$fbff]                                 ; $7721: $fa $ff $fb
    rst $18                                       ; $7724: $df
    ret nz                                        ; $7725: $c0

    rlca                                          ; $7726: $07
    nop                                           ; $7727: $00
    pop de                                        ; $7728: $d1
    ld hl, sp-$58                                 ; $7729: $f8 $a8
    rst $28                                       ; $772b: $ef
    cp $04                                        ; $772c: $fe $04
    rst $38                                       ; $772e: $ff
    add b                                         ; $772f: $80
    ld h, b                                       ; $7730: $60
    ld b, b                                       ; $7731: $40
    add b                                         ; $7732: $80
    rst $38                                       ; $7733: $ff
    db $fc                                        ; $7734: $fc
    ld sp, hl                                     ; $7735: $f9

jr_078_7736:
    ld bc, $20f1                                  ; $7736: $01 $f1 $20
    rst $08                                       ; $7739: $cf
    jr nz, jr_078_76fb                            ; $773a: $20 $bf

    add b                                         ; $773c: $80
    ld e, a                                       ; $773d: $5f
    ret nz                                        ; $773e: $c0

    cpl                                           ; $773f: $2f
    rst $38                                       ; $7740: $ff
    ldh [$57], a                                  ; $7741: $e0 $57

jr_078_7743:
    ldh a, [$2a]                                  ; $7743: $f0 $2a
    push de                                       ; $7745: $d5
    dec d                                         ; $7746: $15
    ld [$ff0a], a                                 ; $7747: $ea $0a $ff
    ld [hl], l                                    ; $774a: $75
    add l                                         ; $774b: $85
    ld a, [hl-]                                   ; $774c: $3a
    jp nz, $e01d                                  ; $774d: $c2 $1d $e0

    rrca                                          ; $7750: $0f
    ldh a, [rIE]                                  ; $7751: $f0 $ff
    rlca                                          ; $7753: $07
    ld hl, sp+$03                                 ; $7754: $f8 $03
    nop                                           ; $7756: $00
    inc a                                         ; $7757: $3c
    ld c, b                                       ; $7758: $48
    add l                                         ; $7759: $85
    and l                                         ; $775a: $a5
    rst $38                                       ; $775b: $ff
    ld d, b                                       ; $775c: $50
    ld b, d                                       ; $775d: $42
    or b                                          ; $775e: $b0
    ld [$09e6], sp                                ; $775f: $08 $e6 $09
    and $10                                       ; $7762: $e6 $10
    rst $20                                       ; $7764: $e7
    rst $08                                       ; $7765: $cf
    ld d, b                                       ; $7766: $50
    adc a                                         ; $7767: $8f
    ld c, [hl]                                    ; $7768: $4e
    add e                                         ; $7769: $83
    sub b                                         ; $776a: $90
    ld b, c                                       ; $776b: $41
    rra                                           ; $776c: $1f
    ld e, a                                       ; $776d: $5f
    ld c, a                                       ; $776e: $4f
    rst $00                                       ; $776f: $c7
    cpl                                           ; $7770: $2f
    xor a                                         ; $7771: $af
    rrca                                          ; $7772: $0f
    jr jr_078_7736                                ; $7773: $18 $c1

    ld d, $c3                                     ; $7775: $16 $c3
    ret z                                         ; $7777: $c8

    pop bc                                        ; $7778: $c1
    pop af                                        ; $7779: $f1
    push af                                       ; $777a: $f5
    db $fc                                        ; $777b: $fc
    ld d, $c7                                     ; $777c: $16 $c7
    sub $03                                       ; $777e: $d6 $03
    ei                                            ; $7780: $fb
    ei                                            ; $7781: $fb
    or $f7                                        ; $7782: $f6 $f7
    push af                                       ; $7784: $f5
    rst $30                                       ; $7785: $f7
    jp z, $e3fc                                   ; $7786: $ca $fc $e3

    rst $30                                       ; $7789: $f7
    ld hl, sp-$20                                 ; $778a: $f8 $e0
    nop                                           ; $778c: $00
    adc b                                         ; $778d: $88
    ldh [$fc], a                                  ; $778e: $e0 $fc
    jp hl                                         ; $7790: $e9


    daa                                           ; $7791: $27
    ldh a, [rIE]                                  ; $7792: $f0 $ff
    inc de                                        ; $7794: $13
    ld hl, sp+$0b                                 ; $7795: $f8 $0b
    ld hl, sp+$13                                 ; $7797: $f8 $13
    ld hl, sp-$75                                 ; $7799: $f8 $8b
    ld hl, sp+$3f                                 ; $779b: $f8 $3f
    ld b, l                                       ; $779d: $45
    db $fc                                        ; $779e: $fc
    add hl, hl                                    ; $779f: $29
    db $fc                                        ; $77a0: $fc
    dec d                                         ; $77a1: $15
    db $fc                                        ; $77a2: $fc
    ld [hl], b                                    ; $77a3: $70
    db $e3                                        ; $77a4: $e3
    ld b, c                                       ; $77a5: $41
    daa                                           ; $77a6: $27
    rst $00                                       ; $77a7: $c7
    and b                                         ; $77a8: $a0
    rra                                           ; $77a9: $1f
    jr nz, jr_078_7743                            ; $77aa: $20 $97

    and b                                         ; $77ac: $a0
    ld [hl], h                                    ; $77ad: $74
    ldh [$d1], a                                  ; $77ae: $e0 $d1
    ld [hl+], a                                   ; $77b0: $22
    rst $38                                       ; $77b1: $ff
    nop                                           ; $77b2: $00
    rst $38                                       ; $77b3: $ff
    rla                                           ; $77b4: $17
    and a                                         ; $77b5: $a7
    dec bc                                        ; $77b6: $0b
    db $d3                                        ; $77b7: $d3
    inc hl                                        ; $77b8: $23
    rlc e                                         ; $77b9: $cb $03
    db $e3                                        ; $77bb: $e3
    ccf                                           ; $77bc: $3f
    dec d                                         ; $77bd: $15
    pop hl                                        ; $77be: $e1
    ld b, $f0                                     ; $77bf: $06 $f0
    rlca                                          ; $77c1: $07
    jr nc, @+$25                                  ; $77c2: $30 $23

    ret nz                                        ; $77c4: $c0

    ld l, a                                       ; $77c5: $6f
    ld [$f898], sp                                ; $77c6: $08 $98 $f8
    ld hl, $c746                                  ; $77c9: $21 $46 $c7
    ld hl, sp-$3f                                 ; $77cc: $f8 $c1
    adc a                                         ; $77ce: $8f
    xor a                                         ; $77cf: $af
    adc e                                         ; $77d0: $8b
    ldh [$fd], a                                  ; $77d1: $e0 $fd
    db $e4                                        ; $77d3: $e4
    ld a, [$fbd1]                                 ; $77d4: $fa $d1 $fb
    nop                                           ; $77d7: $00
    pop hl                                        ; $77d8: $e1
    inc c                                         ; $77d9: $0c
    pop hl                                        ; $77da: $e1
    db $fc                                        ; $77db: $fc
    db $e3                                        ; $77dc: $e3
    and b                                         ; $77dd: $a0
    ld h, b                                       ; $77de: $60
    jr nz, @+$22                                  ; $77df: $20 $20

    rst $38                                       ; $77e1: $ff
    rst $38                                       ; $77e2: $ff
    ld hl, $16f4                                  ; $77e3: $21 $f4 $16
    or $0a                                        ; $77e6: $f6 $0a
    ld a, [$fa12]                                 ; $77e8: $fa $12 $fa
    rst $38                                       ; $77eb: $ff
    ld [$04fc], sp                                ; $77ec: $08 $fc $04
    cp $02                                        ; $77ef: $fe $02
    cp $05                                        ; $77f1: $fe $05
    rst $38                                       ; $77f3: $ff
    inc h                                         ; $77f4: $24
    db $ed                                        ; $77f5: $ed
    ldh [$e5], a                                  ; $77f6: $e0 $e5
    pop hl                                        ; $77f8: $e1
    ret nz                                        ; $77f9: $c0

    pop hl                                        ; $77fa: $e1
    ret nz                                        ; $77fb: $c0

    db $fc                                        ; $77fc: $fc
    ldh [$7f], a                                  ; $77fd: $e0 $7f
    sbc [hl]                                      ; $77ff: $9e
    ld b, $e1                                     ; $7800: $06 $e1
    add [hl]                                      ; $7802: $86
    rst $18                                       ; $7803: $df
    rst $18                                       ; $7804: $df
    rrca                                          ; $7805: $0f
    rst $28                                       ; $7806: $ef
    rrca                                          ; $7807: $0f
    rst $28                                       ; $7808: $ef
    ld [bc], a                                    ; $7809: $02
    add b                                         ; $780a: $80
    rst $30                                       ; $780b: $f7
    inc bc                                        ; $780c: $03
    ld sp, $fefb                                  ; $780d: $31 $fb $fe
    pop hl                                        ; $7810: $e1
    and b                                         ; $7811: $a0
    push bc                                       ; $7812: $c5
    ld c, $a3                                     ; $7813: $0e $a3
    db $fc                                        ; $7815: $fc
    db $fd                                        ; $7816: $fd
    add [hl]                                      ; $7817: $86
    jp nz, $c088                                  ; $7818: $c2 $88 $c0

    ret nz                                        ; $781b: $c0

    inc c                                         ; $781c: $0c
    and l                                         ; $781d: $a5
    adc h                                         ; $781e: $8c
    pop bc                                        ; $781f: $c1
    db $fc                                        ; $7820: $fc
    push hl                                       ; $7821: $e5
    ld a, h                                       ; $7822: $7c
    pop bc                                        ; $7823: $c1
    ld l, [hl]                                    ; $7824: $6e
    and b                                         ; $7825: $a0
    nop                                           ; $7826: $00

Jump_078_7827:
    add sp, -$78                                  ; $7827: $e8 $88
    rst $38                                       ; $7829: $ff
    db $d3                                        ; $782a: $d3
    ld [bc], a                                    ; $782b: $02
    rst $38                                       ; $782c: $ff
    ld hl, $39c0                                  ; $782d: $21 $c0 $39
    rlca                                          ; $7830: $07
    ldh [$78], a                                  ; $7831: $e0 $78
    pop bc                                        ; $7833: $c1
    sbc a                                         ; $7834: $9f
    ret nz                                        ; $7835: $c0

    rst $38                                       ; $7836: $ff
    ld c, a                                       ; $7837: $4f
    ldh [$27], a                                  ; $7838: $e0 $27
    ldh a, [$03]                                  ; $783a: $f0 $03
    ld hl, sp+$03                                 ; $783c: $f8 $03
    ld [$01e9], sp                                ; $783e: $08 $e9 $01
    jp nc, Jump_000_3500                          ; $7841: $d2 $00 $35

    ld a, [bc]                                    ; $7844: $0a
    add b                                         ; $7845: $80
    adc d                                         ; $7846: $8a
    db $e3                                        ; $7847: $e3
    inc bc                                        ; $7848: $03
    ei                                            ; $7849: $fb
    inc de                                        ; $784a: $13
    ld a, a                                       ; $784b: $7f
    db $eb                                        ; $784c: $eb
    dec bc                                        ; $784d: $0b
    di                                            ; $784e: $f3
    ld d, a                                       ; $784f: $57
    and a                                         ; $7850: $a7
    daa                                           ; $7851: $27
    rst $10                                       ; $7852: $d7
    add [hl]                                      ; $7853: $86
    rst $00                                       ; $7854: $c7
    add $4c                                       ; $7855: $c6 $4c
    and c                                         ; $7857: $a1
    jp $18db                                      ; $7858: $c3 $db $18


    pop bc                                        ; $785b: $c1
    rst $38                                       ; $785c: $ff
    db $e3                                        ; $785d: $e3
    ld a, b                                       ; $785e: $78
    add e                                         ; $785f: $83
    ld d, b                                       ; $7860: $50
    rst $38                                       ; $7861: $ff
    rst $38                                       ; $7862: $ff
    adc b                                         ; $7863: $88
    cp $50                                        ; $7864: $fe $50
    db $fc                                        ; $7866: $fc
    and c                                         ; $7867: $a1
    ld hl, sp-$3f                                 ; $7868: $f8 $c1
    ldh a, [$9f]                                  ; $786a: $f0 $9f
    and b                                         ; $786c: $a0
    ldh a, [$c0]                                  ; $786d: $f0 $c0
    ldh [$80], a                                  ; $786f: $e0 $80
    inc e                                         ; $7871: $1c
    jr nz, jr_078_78df                            ; $7872: $20 $6b

    ld h, b                                       ; $7874: $60
    ld [bc], a                                    ; $7875: $02
    rst $28                                       ; $7876: $ef
    ld [$d415], a                                 ; $7877: $ea $15 $d4
    dec hl                                        ; $787a: $2b
    ld [bc], a                                    ; $787b: $02
    add c                                         ; $787c: $81
    ld l, b                                       ; $787d: $68
    rla                                           ; $787e: $17
    pop bc                                        ; $787f: $c1
    rst $38                                       ; $7880: $ff
    dec b                                         ; $7881: $05
    add c                                         ; $7882: $81
    ld c, b                                       ; $7883: $48
    ld b, e                                       ; $7884: $43
    and e                                         ; $7885: $a3
    and a                                         ; $7886: $a7
    ld d, a                                       ; $7887: $57
    rlca                                          ; $7888: $07
    or a                                          ; $7889: $b7
    push af                                       ; $788a: $f5
    inc bc                                        ; $788b: $03
    ei                                            ; $788c: $fb
    inc d                                         ; $788d: $14
    add c                                         ; $788e: $81
    rst $38                                       ; $788f: $ff
    ld d, l                                       ; $7890: $55
    rst $20                                       ; $7891: $e7
    ret nz                                        ; $7892: $c0

    ld d, l                                       ; $7893: $55
    xor e                                         ; $7894: $ab
    rst $38                                       ; $7895: $ff
    ld a, [$e0f8]                                 ; $7896: $fa $f8 $e0
    ld [$e0f4], a                                 ; $7899: $ea $f4 $e0
    xor b                                         ; $789c: $a8
    ldh a, [$e0]                                  ; $789d: $f0 $e0
    nop                                           ; $789f: $00
    ld a, [$e0ec]                                 ; $78a0: $fa $ec $e0
    add d                                         ; $78a3: $82
    add sp, -$20                                  ; $78a4: $e8 $e0
    ld [bc], a                                    ; $78a6: $02
    rst $38                                       ; $78a7: $ff
    ld b, l                                       ; $78a8: $45
    rst $38                                       ; $78a9: $ff
    ld [bc], a                                    ; $78aa: $02
    cp a                                          ; $78ab: $bf
    ld d, a                                       ; $78ac: $57
    and a                                         ; $78ad: $a7
    or a                                          ; $78ae: $b7
    ld b, a                                       ; $78af: $47
    ld l, a                                       ; $78b0: $6f
    adc a                                         ; $78b1: $8f
    db $fd                                        ; $78b2: $fd
    ret nz                                        ; $78b3: $c0

    rrca                                          ; $78b4: $0f
    rst $38                                       ; $78b5: $ff
    adc a                                         ; $78b6: $8f
    ld c, a                                       ; $78b7: $4f
    ld c, a                                       ; $78b8: $4f
    adc a                                         ; $78b9: $8f
    add a                                         ; $78ba: $87
    ld d, a                                       ; $78bb: $57
    db $d3                                        ; $78bc: $d3
    jp $bb6f                                      ; $78bd: $c3 $6f $bb


    add e                                         ; $78c0: $83
    cp e                                          ; $78c1: $bb
    add e                                         ; $78c2: $83
    rst $28                                       ; $78c3: $ef
    ld b, c                                       ; $78c4: $41
    ld [hl], a                                    ; $78c5: $77
    rlca                                          ; $78c6: $07
    ld [$bfe1], a                                 ; $78c7: $ea $e1 $bf
    inc bc                                        ; $78ca: $03
    ld b, e                                       ; $78cb: $43
    inc [hl]                                      ; $78cc: $34
    inc a                                         ; $78cd: $3c
    ret nz                                        ; $78ce: $c0

    ret nz                                        ; $78cf: $c0

    ld a, $47                                     ; $78d0: $3e $47
    jr nc, @+$01                                  ; $78d2: $30 $ff

    rrca                                          ; $78d4: $0f
    jr z, jr_078_78ee                             ; $78d5: $28 $17

    inc d                                         ; $78d7: $14
    dec bc                                        ; $78d8: $0b
    ld l, d                                       ; $78d9: $6a
    ld h, l                                       ; $78da: $65
    push af                                       ; $78db: $f5
    ld a, a                                       ; $78dc: $7f
    ld a, [c]                                     ; $78dd: $f2
    ld a, d                                       ; $78de: $7a

jr_078_78df:
    ld a, c                                       ; $78df: $79
    ld a, l                                       ; $78e0: $7d
    ld e, h                                       ; $78e1: $5c
    ld a, [hl]                                    ; $78e2: $7e
    ld l, [hl]                                    ; $78e3: $6e
    inc e                                         ; $78e4: $1c
    ldh [$fe], a                                  ; $78e5: $e0 $fe
    dec [hl]                                      ; $78e7: $35
    push hl                                       ; $78e8: $e5
    ld a, a                                       ; $78e9: $7f
    ld b, b                                       ; $78ea: $40
    cp a                                          ; $78eb: $bf
    and b                                         ; $78ec: $a0
    ld e, a                                       ; $78ed: $5f

jr_078_78ee:
    rst $38                                       ; $78ee: $ff
    ld d, l                                       ; $78ef: $55
    rst $38                                       ; $78f0: $ff
    ld a, a                                       ; $78f1: $7f
    jr nz, jr_078_7933                            ; $78f2: $20 $3f

    sub h                                         ; $78f4: $94
    rra                                           ; $78f5: $1f
    ret z                                         ; $78f6: $c8

    rrca                                          ; $78f7: $0f
    push hl                                       ; $78f8: $e5
    db $d3                                        ; $78f9: $d3
    ld bc, $e4f0                                  ; $78fa: $01 $f0 $e4
    pop hl                                        ; $78fd: $e1
    pop af                                        ; $78fe: $f1
    jp nz, $7a01                                  ; $78ff: $c2 $01 $7a

    jp nz, Jump_000_3f80                          ; $7902: $c2 $80 $3f

    rst $38                                       ; $7905: $ff
    nop                                           ; $7906: $00
    inc bc                                        ; $7907: $03
    ret nz                                        ; $7908: $c0

    sub e                                         ; $7909: $93
    dec bc                                        ; $790a: $0b
    ld c, c                                       ; $790b: $49
    dec d                                         ; $790c: $15
    sub h                                         ; $790d: $94
    rst $38                                       ; $790e: $ff
    ld a, [bc]                                    ; $790f: $0a
    ld c, b                                       ; $7910: $48
    ld d, $94                                     ; $7911: $16 $94
    dec bc                                        ; $7913: $0b
    ld c, b                                       ; $7914: $48
    rla                                           ; $7915: $17
    sub b                                         ; $7916: $90
    scf                                           ; $7917: $37
    rrca                                          ; $7918: $0f
    ld c, b                                       ; $7919: $48
    rla                                           ; $791a: $17
    nop                                           ; $791b: $00
    daa                                           ; $791c: $27
    ccf                                           ; $791d: $3f
    cp a                                          ; $791e: $bf
    ld [hl], h                                    ; $791f: $74
    pop bc                                        ; $7920: $c1
    ld b, $a7                                     ; $7921: $06 $a7
    ld a, $90                                     ; $7923: $3e $90
    ld h, d                                       ; $7925: $62
    ei                                            ; $7926: $fb
    ldh [$e0], a                                  ; $7927: $e0 $e0
    add b                                         ; $7929: $80
    sbc a                                         ; $792a: $9f
    rst $08                                       ; $792b: $cf
    ld b, d                                       ; $792c: $42
    or d                                          ; $792d: $b2
    pop bc                                        ; $792e: $c1
    and $b3                                       ; $792f: $e6 $b3
    ld h, b                                       ; $7931: $60
    rrca                                          ; $7932: $0f

jr_078_7933:
    rrca                                          ; $7933: $0f
    ld d, [hl]                                    ; $7934: $56
    pop bc                                        ; $7935: $c1
    ld a, [hl-]                                   ; $7936: $3a
    ld h, d                                       ; $7937: $62
    dec a                                         ; $7938: $3d
    inc bc                                        ; $7939: $03
    jp Jump_000_03ff                              ; $793a: $c3 $ff $03


    di                                            ; $793d: $f3
    sub a                                         ; $793e: $97
    xor b                                         ; $793f: $a8
    xor e                                         ; $7940: $ab
    sub h                                         ; $7941: $94
    push de                                       ; $7942: $d5
    jp z, $caff                                   ; $7943: $ca $ff $ca

    push de                                       ; $7946: $d5
    push hl                                       ; $7947: $e5
    ld [$e5ea], a                                 ; $7948: $ea $ea $e5
    db $e4                                        ; $794b: $e4
    ld [$e8ff], a                                 ; $794c: $ea $ff $e8
    push hl                                       ; $794f: $e5
    ld d, b                                       ; $7950: $50
    cpl                                           ; $7951: $2f
    xor b                                         ; $7952: $a8
    sub a                                         ; $7953: $97
    push de                                       ; $7954: $d5
    jp z, $eaff                                   ; $7955: $ca $ff $ea

    push hl                                       ; $7958: $e5
    push af                                       ; $7959: $f5
    ld [hl], d                                    ; $795a: $72
    ldh [$a1], a                                  ; $795b: $e0 $a1
    inc e                                         ; $795d: $1c
    nop                                           ; $795e: $00
    ld a, e                                       ; $795f: $7b
    xor e                                         ; $7960: $ab
    ld d, h                                       ; $7961: $54
    ld h, h                                       ; $7962: $64
    jp hl                                         ; $7963: $e9


    ld d, h                                       ; $7964: $54
    xor e                                         ; $7965: $ab
    ld a, [hl+]                                   ; $7966: $2a
    dec d                                         ; $7967: $15
    ldh [rWX], a                                  ; $7968: $e0 $4b
    cp a                                          ; $796a: $bf
    xor d                                         ; $796b: $aa
    ld d, l                                       ; $796c: $55
    dec b                                         ; $796d: $05
    ld [bc], a                                    ; $796e: $02
    nop                                           ; $796f: $00
    ld hl, sp-$13                                 ; $7970: $f8 $ed
    xor c                                         ; $7972: $a9
    rlca                                          ; $7973: $07
    di                                            ; $7974: $f3
    rst $30                                       ; $7975: $f7
    nop                                           ; $7976: $00
    ld e, e                                       ; $7977: $5b
    add c                                         ; $7978: $81
    reti                                          ; $7979: $d9


    and [hl]                                      ; $797a: $a6
    db $f4                                        ; $797b: $f4
    di                                            ; $797c: $f3
    ld [bc], a                                    ; $797d: $02
    dec b                                         ; $797e: $05
    or a                                          ; $797f: $b7
    inc [hl]                                      ; $7980: $34
    jp Jump_000_3d0a                              ; $7981: $c3 $0a $3d


    ld h, c                                       ; $7984: $61
    rst $38                                       ; $7985: $ff
    db $10                                        ; $7986: $10
    ld a, [c]                                     ; $7987: $f2
    jr nz, jr_078_798c                            ; $7988: $20 $02

    ld [hl], a                                    ; $798a: $77
    db $fd                                        ; $798b: $fd

jr_078_798c:
    dec b                                         ; $798c: $05
    ld a, [$c322]                                 ; $798d: $fa $22 $c3
    dec b                                         ; $7990: $05
    ld a, [$9402]                                 ; $7991: $fa $02 $94
    ld b, b                                       ; $7994: $40
    cp a                                          ; $7995: $bf
    inc bc                                        ; $7996: $03
    ei                                            ; $7997: $fb
    jp $0b3b                                      ; $7998: $c3 $3b $0b


    inc bc                                        ; $799b: $03
    ret nz                                        ; $799c: $c0

    and c                                         ; $799d: $a1
    ld l, a                                       ; $799e: $6f
    cp a                                          ; $799f: $bf
    adc a                                         ; $79a0: $8f
    rra                                           ; $79a1: $1f
    rra                                           ; $79a2: $1f
    rra                                           ; $79a3: $1f
    rst $18                                       ; $79a4: $df
    db $e3                                        ; $79a5: $e3
    sla c                                         ; $79a6: $cb $21
    ldh [$df], a                                  ; $79a8: $e0 $df
    xor $e0                                       ; $79aa: $ee $e0
    pop hl                                        ; $79ac: $e1
    ldh [$e7], a                                  ; $79ad: $e0 $e7
    ld hl, sp-$1f                                 ; $79af: $f8 $e1
    pop hl                                        ; $79b1: $e1
    ld d, [hl]                                    ; $79b2: $56
    rst $38                                       ; $79b3: $ff
    xor b                                         ; $79b4: $a8
    and c                                         ; $79b5: $a1
    ld b, b                                       ; $79b6: $40
    sbc a                                         ; $79b7: $9f
    nop                                           ; $79b8: $00
    ld l, d                                       ; $79b9: $6a
    dec d                                         ; $79ba: $15
    push de                                       ; $79bb: $d5
    ld [hl], l                                    ; $79bc: $75
    ld a, [hl+]                                   ; $79bd: $2a
    or [hl]                                       ; $79be: $b6
    inc bc                                        ; $79bf: $03
    ld bc, $e1cb                                  ; $79c0: $01 $cb $e1
    nop                                           ; $79c3: $00
    cp a                                          ; $79c4: $bf
    ld b, b                                       ; $79c5: $40
    xor d                                         ; $79c6: $aa
    ld [$62fe], sp                                ; $79c7: $08 $fe $62
    nop                                           ; $79ca: $00
    rst $30                                       ; $79cb: $f7
    nop                                           ; $79cc: $00
    ld d, a                                       ; $79cd: $57
    and b                                         ; $79ce: $a0
    and d                                         ; $79cf: $a2
    ld d, l                                       ; $79d0: $55
    ld d, l                                       ; $79d1: $55
    ei                                            ; $79d2: $fb
    and d                                         ; $79d3: $a2
    and [hl]                                      ; $79d4: $a6
    add d                                         ; $79d5: $82
    nop                                           ; $79d6: $00
    xor d                                         ; $79d7: $aa
    ld d, l                                       ; $79d8: $55
    nop                                           ; $79d9: $00
    nop                                           ; $79da: $00
    or a                                          ; $79db: $b7
    rst $38                                       ; $79dc: $ff
    rlca                                          ; $79dd: $07
    or a                                          ; $79de: $b7
    rlca                                          ; $79df: $07
    rst $10                                       ; $79e0: $d7
    rlca                                          ; $79e1: $07
    ld e, e                                       ; $79e2: $5b
    add e                                         ; $79e3: $83
    adc e                                         ; $79e4: $8b
    ld a, l                                       ; $79e5: $7d
    ld d, e                                       ; $79e6: $53
    ldh a, [$e3]                                  ; $79e7: $f0 $e3
    sbc [hl]                                      ; $79e9: $9e
    add b                                         ; $79ea: $80
    jp hl                                         ; $79eb: $e9


    db $e4                                        ; $79ec: $e4
    push af                                       ; $79ed: $f5
    or [hl]                                       ; $79ee: $b6
    nop                                           ; $79ef: $00
    rst $18                                       ; $79f0: $df
    db $fd                                        ; $79f1: $fd
    db $fc                                        ; $79f2: $fc
    ld d, b                                       ; $79f3: $50
    xor a                                         ; $79f4: $af
    adc d                                         ; $79f5: $8a
    ldh [$e0], a                                  ; $79f6: $e0 $e0
    rst $18                                       ; $79f8: $df
    nop                                           ; $79f9: $00
    sbc a                                         ; $79fa: $9f
    or l                                          ; $79fb: $b5
    nop                                           ; $79fc: $00
    or c                                          ; $79fd: $b1
    nop                                           ; $79fe: $00
    ld h, l                                       ; $79ff: $65
    cp $e0                                        ; $7a00: $fe $e0
    inc a                                         ; $7a02: $3c
    ldh [rHDMA4], a                               ; $7a03: $e0 $54
    rst $18                                       ; $7a05: $df
    nop                                           ; $7a06: $00
    nop                                           ; $7a07: $00
    add $00                                       ; $7a08: $c6 $00
    xor $fe                                       ; $7a0a: $ee $fe
    ldh [$ce], a                                  ; $7a0c: $e0 $ce
    nop                                           ; $7a0e: $00
    cp a                                          ; $7a0f: $bf
    pop bc                                        ; $7a10: $c1
    ld bc, $1fdf                                  ; $7a11: $01 $df $1f
    ccf                                           ; $7a14: $3f
    ccf                                           ; $7a15: $3f
    or e                                          ; $7a16: $b3
    ld l, c                                       ; $7a17: $69
    rst $18                                       ; $7a18: $df
    rst $38                                       ; $7a19: $ff
    ret nz                                        ; $7a1a: $c0

    sbc $c1                                       ; $7a1b: $de $c1
    rst $18                                       ; $7a1d: $df
    ret nz                                        ; $7a1e: $c0

    cp d                                          ; $7a1f: $ba
    add l                                         ; $7a20: $85
    cp a                                          ; $7a21: $bf
    ld a, a                                       ; $7a22: $7f
    add b                                         ; $7a23: $80
    cp d                                          ; $7a24: $ba
    add l                                         ; $7a25: $85
    ld a, a                                       ; $7a26: $7f
    nop                                           ; $7a27: $00
    ld a, d                                       ; $7a28: $7a
    dec b                                         ; $7a29: $05
    ld [hl-], a                                   ; $7a2a: $32
    rlca                                          ; $7a2b: $07
    call c, Call_000_0426                         ; $7a2c: $dc $26 $04
    adc h                                         ; $7a2f: $8c
    ldh [rHDMA3], a                               ; $7a30: $e0 $53
    xor b                                         ; $7a32: $a8
    xor d                                         ; $7a33: $aa
    db $fc                                        ; $7a34: $fc
    rst $20                                       ; $7a35: $e7
    adc e                                         ; $7a36: $8b
    adc l                                         ; $7a37: $8d
    rst $38                                       ; $7a38: $ff
    ld d, c                                       ; $7a39: $51
    ld d, l                                       ; $7a3a: $55
    adc c                                         ; $7a3b: $89
    xor l                                         ; $7a3c: $ad
    ld b, c                                       ; $7a3d: $41
    ld h, [hl]                                    ; $7a3e: $66
    adc b                                         ; $7a3f: $88
    xor d                                         ; $7a40: $aa
    sbc a                                         ; $7a41: $9f
    ld b, h                                       ; $7a42: $44
    ld h, [hl]                                    ; $7a43: $66
    adc b                                         ; $7a44: $88
    xor e                                         ; $7a45: $ab
    ld b, h                                       ; $7a46: $44
    ld c, h                                       ; $7a47: $4c
    ld [hl+], a                                   ; $7a48: $22
    ld l, [hl]                                    ; $7a49: $6e
    adc b                                         ; $7a4a: $88
    ld b, [hl]                                    ; $7a4b: $46
    rst $38                                       ; $7a4c: $ff
    nop                                           ; $7a4d: $00
    ld b, e                                       ; $7a4e: $43
    nop                                           ; $7a4f: $00
    ld c, c                                       ; $7a50: $49
    nop                                           ; $7a51: $00
    inc c                                         ; $7a52: $0c
    nop                                           ; $7a53: $00
    daa                                           ; $7a54: $27
    xor a                                         ; $7a55: $af
    nop                                           ; $7a56: $00
    ld sp, $1c00                                  ; $7a57: $31 $00 $1c
    push de                                       ; $7a5a: $d5
    ret nz                                        ; $7a5b: $c0

    dec sp                                        ; $7a5c: $3b
    ret                                           ; $7a5d: $c9


    add b                                         ; $7a5e: $80
    di                                            ; $7a5f: $f3
    inc bc                                        ; $7a60: $03
    inc bc                                        ; $7a61: $03
    rrca                                          ; $7a62: $0f
    cp e                                          ; $7a63: $bb
    add b                                         ; $7a64: $80
    add [hl]                                      ; $7a65: $86
    db $e3                                        ; $7a66: $e3
    nop                                           ; $7a67: $00
    nop                                           ; $7a68: $00
    nop                                           ; $7a69: $00
    ld c, l                                       ; $7a6a: $4d
    add hl, bc                                    ; $7a6b: $09
    rst $38                                       ; $7a6c: $ff
    ld [c], a                                     ; $7a6d: $e2
    ld [$f808], sp                                ; $7a6e: $08 $08 $f8
    db $e3                                        ; $7a71: $e3
    ld a, [c]                                     ; $7a72: $f2
    db $e3                                        ; $7a73: $e3
    add hl, hl                                    ; $7a74: $29
    di                                            ; $7a75: $f3
    jp hl                                         ; $7a76: $e9


    inc e                                         ; $7a77: $1c
    ld [c], a                                     ; $7a78: $e2
    ld [c], a                                     ; $7a79: $e2
    pop hl                                        ; $7a7a: $e1
    ldh [$0a], a                                  ; $7a7b: $e0 $0a
    ld a, [bc]                                    ; $7a7d: $0a
    ld a, [bc]                                    ; $7a7e: $0a
    ldh [$f7], a                                  ; $7a7f: $e0 $f7
    pop hl                                        ; $7a81: $e1
    ld [c], a                                     ; $7a82: $e2
    rst $18                                       ; $7a83: $df
    pop hl                                        ; $7a84: $e1
    ld c, b                                       ; $7a85: $48
    push de                                       ; $7a86: $d5
    ld [c], a                                     ; $7a87: $e2
    ret nz                                        ; $7a88: $c0

    ld [$e3a5], a                                 ; $7a89: $ea $a5 $e3
    dec bc                                        ; $7a8c: $0b
    rst $38                                       ; $7a8d: $ff
    ldh [$e0], a                                  ; $7a8e: $e0 $e0
    db $e4                                        ; $7a90: $e4
    ld [$ede0], sp                                ; $7a91: $08 $e0 $ed
    ld [hl], $a1                                  ; $7a94: $36 $a1
    pop hl                                        ; $7a96: $e1
    dec bc                                        ; $7a97: $0b
    rrca                                          ; $7a98: $0f
    rst $38                                       ; $7a99: $ff
    ldh [$0c], a                                  ; $7a9a: $e0 $0c
    inc c                                         ; $7a9c: $0c
    sub h                                         ; $7a9d: $94
    db $e3                                        ; $7a9e: $e3
    ldh [$ee], a                                  ; $7a9f: $e0 $ee
    adc h                                         ; $7aa1: $8c
    jp nz, $e0e0                                  ; $7aa2: $c2 $e0 $e0

    ldh [$0e], a                                  ; $7aa5: $e0 $0e
    jr z, jr_078_7b09                             ; $7aa7: $28 $60

    pop af                                        ; $7aa9: $f1
    ldh [$e4], a                                  ; $7aaa: $e0 $e4
    sbc $e0                                       ; $7aac: $de $e0
    ld c, $40                                     ; $7aae: $0e $40
    dec sp                                        ; $7ab0: $3b
    push hl                                       ; $7ab1: $e5
    ld b, b                                       ; $7ab2: $40
    db $eb                                        ; $7ab3: $eb
    ld b, d                                       ; $7ab4: $42
    ld [c], a                                     ; $7ab5: $e2
    sbc $e2                                       ; $7ab6: $de $e2
    ldh [$f3], a                                  ; $7ab8: $e0 $f3
    inc bc                                        ; $7aba: $03
    ldh [$0c], a                                  ; $7abb: $e0 $0c
    pop hl                                        ; $7abd: $e1
    db $e3                                        ; $7abe: $e3
    inc e                                         ; $7abf: $1c
    ldh [$f4], a                                  ; $7ac0: $e0 $f4
    dec b                                         ; $7ac2: $05
    pop hl                                        ; $7ac3: $e1
    dec bc                                        ; $7ac4: $0b
    dec bc                                        ; $7ac5: $0b
    dec c                                         ; $7ac6: $0d
    ldh [$d7], a                                  ; $7ac7: $e0 $d7
    ldh [$e3], a                                  ; $7ac9: $e0 $e3
    rst $18                                       ; $7acb: $df
    rst $20                                       ; $7acc: $e7
    ld b, d                                       ; $7acd: $42
    ret nz                                        ; $7ace: $c0

    ld a, [c]                                     ; $7acf: $f2
    dec bc                                        ; $7ad0: $0b
    inc hl                                        ; $7ad1: $23
    ldh [$a0], a                                  ; $7ad2: $e0 $a0
    rst $30                                       ; $7ad4: $f7
    sbc a                                         ; $7ad5: $9f
    ldh [$e0], a                                  ; $7ad6: $e0 $e0
    ld [c], a                                     ; $7ad8: $e2
    ld l, c                                       ; $7ad9: $69
    add b                                         ; $7ada: $80
    di                                            ; $7adb: $f3
    sub h                                         ; $7adc: $94
    pop bc                                        ; $7add: $c1
    pop bc                                        ; $7ade: $c1
    ret nz                                        ; $7adf: $c0

    rst $30                                       ; $7ae0: $f7
    add hl, bc                                    ; $7ae1: $09
    ldh [$e2], a                                  ; $7ae2: $e0 $e2
    dec c                                         ; $7ae4: $0d
    rst $38                                       ; $7ae5: $ff
    pop hl                                        ; $7ae6: $e1
    ldh [$f3], a                                  ; $7ae7: $e0 $f3
    add hl, bc                                    ; $7ae9: $09
    inc c                                         ; $7aea: $0c
    rra                                           ; $7aeb: $1f
    ld [c], a                                     ; $7aec: $e2
    ldh [$f8], a                                  ; $7aed: $e0 $f8

jr_078_7aef:
    dec c                                         ; $7aef: $0d
    dec c                                         ; $7af0: $0d
    ret nz                                        ; $7af1: $c0

    ei                                            ; $7af2: $fb
    ldh [$fd], a                                  ; $7af3: $e0 $fd
    rst $08                                       ; $7af5: $cf
    xor e                                         ; $7af6: $ab
    ldh [$fd], a                                  ; $7af7: $e0 $fd
    nop                                           ; $7af9: $00
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

jr_078_7b09:
    rst $38                                       ; $7b09: $ff
    nop                                           ; $7b0a: $00
    rst $38                                       ; $7b0b: $ff
    rst $38                                       ; $7b0c: $ff
    rst $38                                       ; $7b0d: $ff
    rst $38                                       ; $7b0e: $ff
    rst $38                                       ; $7b0f: $ff
    rst $38                                       ; $7b10: $ff
    ld c, e                                       ; $7b11: $4b
    db $d3                                        ; $7b12: $d3
    nop                                           ; $7b13: $00
    nop                                           ; $7b14: $00
    nop                                           ; $7b15: $00
    db $fd                                        ; $7b16: $fd
    nop                                           ; $7b17: $00
    rst $38                                       ; $7b18: $ff
    pop hl                                        ; $7b19: $e1
    ld bc, $0302                                  ; $7b1a: $01 $02 $03
    inc b                                         ; $7b1d: $04
    dec b                                         ; $7b1e: $05
    ld b, $fc                                     ; $7b1f: $06 $fc
    push af                                       ; $7b21: $f5
    ld [c], a                                     ; $7b22: $e2
    ei                                            ; $7b23: $fb
    pop af                                        ; $7b24: $f1
    ld bc, $0807                                  ; $7b25: $01 $07 $08
    add hl, bc                                    ; $7b28: $09
    ld a, [bc]                                    ; $7b29: $0a
    dec bc                                        ; $7b2a: $0b
    ei                                            ; $7b2b: $fb
    inc c                                         ; $7b2c: $0c
    dec c                                         ; $7b2d: $0d
    rst $18                                       ; $7b2e: $df
    push af                                       ; $7b2f: $f5
    ld c, $0f                                     ; $7b30: $0e $0f
    db $10                                        ; $7b32: $10
    ld de, $ff12                                  ; $7b33: $11 $12 $ff
    inc de                                        ; $7b36: $13
    inc d                                         ; $7b37: $14
    dec d                                         ; $7b38: $15
    ld d, $00                                     ; $7b39: $16 $00
    nop                                           ; $7b3b: $00

jr_078_7b3c:
    rla                                           ; $7b3c: $17
    jr jr_078_7b3c                                ; $7b3d: $18 $fd

    add hl, de                                    ; $7b3f: $19
    cp c                                          ; $7b40: $b9
    db $ec                                        ; $7b41: $ec
    ld a, [de]                                    ; $7b42: $1a
    dec de                                        ; $7b43: $1b
    nop                                           ; $7b44: $00
    inc e                                         ; $7b45: $1c
    dec e                                         ; $7b46: $1d
    ld e, $ff                                     ; $7b47: $1e $ff
    rra                                           ; $7b49: $1f
    jr nz, jr_078_7b6d                            ; $7b4a: $20 $21

    ld [hl+], a                                   ; $7b4c: $22
    inc hl                                        ; $7b4d: $23
    inc h                                         ; $7b4e: $24
    nop                                           ; $7b4f: $00
    nop                                           ; $7b50: $00
    rst $28                                       ; $7b51: $ef
    dec h                                         ; $7b52: $25
    ld h, $27                                     ; $7b53: $26 $27
    jr z, jr_078_7aef                             ; $7b55: $28 $98

    db $eb                                        ; $7b57: $eb
    add hl, hl                                    ; $7b58: $29
    ld a, [hl+]                                   ; $7b59: $2a
    dec hl                                        ; $7b5a: $2b
    rst $38                                       ; $7b5b: $ff
    inc l                                         ; $7b5c: $2c
    dec l                                         ; $7b5d: $2d
    ld l, $2f                                     ; $7b5e: $2e $2f
    jr nc, jr_078_7b93                            ; $7b60: $30 $31

    ld [hl-], a                                   ; $7b62: $32
    inc sp                                        ; $7b63: $33
    ld a, a                                       ; $7b64: $7f
    inc [hl]                                      ; $7b65: $34
    dec [hl]                                      ; $7b66: $35
    nop                                           ; $7b67: $00
    nop                                           ; $7b68: $00
    ld [hl], $37                                  ; $7b69: $36 $37
    jr c, jr_078_7be5                             ; $7b6b: $38 $78

jr_078_7b6d:
    db $eb                                        ; $7b6d: $eb
    rst $38                                       ; $7b6e: $ff
    add hl, sp                                    ; $7b6f: $39
    ld a, [hl-]                                   ; $7b70: $3a
    dec sp                                        ; $7b71: $3b
    inc a                                         ; $7b72: $3c
    dec a                                         ; $7b73: $3d
    ld a, $3f                                     ; $7b74: $3e $3f
    ld b, b                                       ; $7b76: $40
    ld e, a                                       ; $7b77: $5f
    ld b, c                                       ; $7b78: $41
    ld b, d                                       ; $7b79: $42
    ld b, e                                       ; $7b7a: $43
    ld bc, $5244                                  ; $7b7b: $01 $44 $52
    ldh [rLYC], a                                 ; $7b7e: $e0 $45
    ld e, c                                       ; $7b80: $59
    db $ec                                        ; $7b81: $ec
    rst $38                                       ; $7b82: $ff
    ld b, [hl]                                    ; $7b83: $46
    ld b, a                                       ; $7b84: $47
    ld c, b                                       ; $7b85: $48
    ld c, c                                       ; $7b86: $49
    ld c, d                                       ; $7b87: $4a
    ld c, e                                       ; $7b88: $4b
    ld c, h                                       ; $7b89: $4c
    ld c, l                                       ; $7b8a: $4d
    ld l, a                                       ; $7b8b: $6f
    ld c, [hl]                                    ; $7b8c: $4e
    ld c, a                                       ; $7b8d: $4f
    ld d, b                                       ; $7b8e: $50
    ld d, c                                       ; $7b8f: $51
    inc sp                                        ; $7b90: $33
    ldh [rHDMA2], a                               ; $7b91: $e0 $52

jr_078_7b93:
    ld d, e                                       ; $7b93: $53
    add hl, sp                                    ; $7b94: $39
    db $ed                                        ; $7b95: $ed
    rst $38                                       ; $7b96: $ff
    ld d, h                                       ; $7b97: $54
    ld d, l                                       ; $7b98: $55
    ld d, [hl]                                    ; $7b99: $56
    ld d, a                                       ; $7b9a: $57
    ld e, b                                       ; $7b9b: $58
    ld e, c                                       ; $7b9c: $59
    dec bc                                        ; $7b9d: $0b
    ld e, d                                       ; $7b9e: $5a
    rst $10                                       ; $7b9f: $d7
    ld e, e                                       ; $7ba0: $5b
    ld e, h                                       ; $7ba1: $5c
    ld e, l                                       ; $7ba2: $5d
    inc de                                        ; $7ba3: $13
    ldh [$5e], a                                  ; $7ba4: $e0 $5e
    ld a, [de]                                    ; $7ba6: $1a
    rst $28                                       ; $7ba7: $ef
    ld e, a                                       ; $7ba8: $5f
    ld h, b                                       ; $7ba9: $60
    rst $38                                       ; $7baa: $ff
    ld h, c                                       ; $7bab: $61
    ld h, d                                       ; $7bac: $62
    ld h, e                                       ; $7bad: $63
    ld h, h                                       ; $7bae: $64
    ld h, l                                       ; $7baf: $65
    ld h, [hl]                                    ; $7bb0: $66
    ld h, a                                       ; $7bb1: $67
    ld l, b                                       ; $7bb2: $68
    rst $28                                       ; $7bb3: $ef
    nop                                           ; $7bb4: $00
    nop                                           ; $7bb5: $00
    ld l, c                                       ; $7bb6: $69
    ld l, d                                       ; $7bb7: $6a
    ld a, [$6bd0]                                 ; $7bb8: $fa $d0 $6b
    ld l, h                                       ; $7bbb: $6c
    ld l, l                                       ; $7bbc: $6d
    or a                                          ; $7bbd: $b7
    ld l, [hl]                                    ; $7bbe: $6e
    ld l, a                                       ; $7bbf: $6f
    ld [hl], b                                    ; $7bc0: $70
    sub $c2                                       ; $7bc1: $d6 $c2
    ld [hl], c                                    ; $7bc3: $71
    ld [hl], d                                    ; $7bc4: $72
    jp c, $73d0                                   ; $7bc5: $da $d0 $73

    cp a                                          ; $7bc8: $bf
    ld [hl], h                                    ; $7bc9: $74
    ld [hl], l                                    ; $7bca: $75
    halt                                          ; $7bcb: $76
    ld [hl], a                                    ; $7bcc: $77
    ld a, b                                       ; $7bcd: $78
    ld a, c                                       ; $7bce: $79
    or l                                          ; $7bcf: $b5
    pop bc                                        ; $7bd0: $c1
    ld a, d                                       ; $7bd1: $7a
    cp $bb                                        ; $7bd2: $fe $bb
    pop de                                        ; $7bd4: $d1
    ld a, e                                       ; $7bd5: $7b
    ld a, h                                       ; $7bd6: $7c
    ld a, l                                       ; $7bd7: $7d
    ld a, [hl]                                    ; $7bd8: $7e
    ld a, a                                       ; $7bd9: $7f
    ld a, a                                       ; $7bda: $7f
    add b                                         ; $7bdb: $80
    or $95                                        ; $7bdc: $f6 $95
    ret nz                                        ; $7bde: $c0

    add c                                         ; $7bdf: $81
    add d                                         ; $7be0: $82
    sbc e                                         ; $7be1: $9b
    pop de                                        ; $7be2: $d1
    add e                                         ; $7be3: $83
    add h                                         ; $7be4: $84

jr_078_7be5:
    add l                                         ; $7be5: $85
    add [hl]                                      ; $7be6: $86
    or a                                          ; $7be7: $b7
    add a                                         ; $7be8: $87
    ld a, a                                       ; $7be9: $7f
    adc b                                         ; $7bea: $88
    ld [hl], l                                    ; $7beb: $75
    ret nz                                        ; $7bec: $c0

    adc c                                         ; $7bed: $89
    ld bc, $d17b                                  ; $7bee: $01 $7b $d1
    adc d                                         ; $7bf1: $8a
    cp a                                          ; $7bf2: $bf
    adc e                                         ; $7bf3: $8b
    adc h                                         ; $7bf4: $8c
    adc l                                         ; $7bf5: $8d
    adc [hl]                                      ; $7bf6: $8e
    adc a                                         ; $7bf7: $8f
    sub b                                         ; $7bf8: $90
    ld h, d                                       ; $7bf9: $62
    ldh [$91], a                                  ; $7bfa: $e0 $91
    cp $5c                                        ; $7bfc: $fe $5c
    db $d3                                        ; $7bfe: $d3
    sub d                                         ; $7bff: $92
    sub e                                         ; $7c00: $93
    sub h                                         ; $7c01: $94
    sub l                                         ; $7c02: $95
    sub [hl]                                      ; $7c03: $96
    sub a                                         ; $7c04: $97
    sbc b                                         ; $7c05: $98
    rst $30                                       ; $7c06: $f7
    sbc c                                         ; $7c07: $99
    sbc d                                         ; $7c08: $9a
    sbc e                                         ; $7c09: $9b
    inc a                                         ; $7c0a: $3c
    call nc, $9d9c                                ; $7c0b: $d4 $9c $9d
    sbc [hl]                                      ; $7c0e: $9e
    sbc a                                         ; $7c0f: $9f
    rst $18                                       ; $7c10: $df
    and b                                         ; $7c11: $a0
    and c                                         ; $7c12: $a1
    and d                                         ; $7c13: $a2
    and e                                         ; $7c14: $a3
    and h                                         ; $7c15: $a4
    inc e                                         ; $7c16: $1c
    call nc, $a6a5                                ; $7c17: $d4 $a5 $a6
    ld a, a                                       ; $7c1a: $7f
    and a                                         ; $7c1b: $a7
    xor b                                         ; $7c1c: $a8
    xor c                                         ; $7c1d: $a9
    xor d                                         ; $7c1e: $aa
    xor e                                         ; $7c1f: $ab
    xor h                                         ; $7c20: $ac
    xor l                                         ; $7c21: $ad
    db $fc                                        ; $7c22: $fc
    or h                                          ; $7c23: $b4
    rst $38                                       ; $7c24: $ff
    xor [hl]                                      ; $7c25: $ae
    xor a                                         ; $7c26: $af
    xor a                                         ; $7c27: $af
    or b                                          ; $7c28: $b0
    or c                                          ; $7c29: $b1
    or d                                          ; $7c2a: $b2
    or e                                          ; $7c2b: $b3
    or h                                          ; $7c2c: $b4
    nop                                           ; $7c2d: $00
    db $dd                                        ; $7c2e: $dd
    or [hl]                                       ; $7c2f: $b6
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
    nop                                           ; $7c3e: $00
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
    cp $00                                        ; $7c4a: $fe $00
    nop                                           ; $7c4c: $00
    nop                                           ; $7c4d: $00
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
