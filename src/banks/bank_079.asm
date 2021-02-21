; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $079", ROMX[$4000], BANK[$79]

    inc c                                         ; $4000: $0c
    ld b, b                                       ; $4001: $40
    ld e, b                                       ; $4002: $58
    ld c, c                                       ; $4003: $49
    or $51                                        ; $4004: $f6 $51
    ld [hl], l                                    ; $4006: $75
    ld e, e                                       ; $4007: $5b
    adc h                                         ; $4008: $8c
    ld l, b                                       ; $4009: $68
    or c                                          ; $400a: $b1
    ld l, b                                       ; $400b: $68
    inc d                                         ; $400c: $14
    ld b, b                                       ; $400d: $40
    ld d, h                                       ; $400e: $54
    ld b, b                                       ; $400f: $40
    sbc a                                         ; $4010: $9f
    ld b, a                                       ; $4011: $47
    ld b, d                                       ; $4012: $42
    ld c, b                                       ; $4013: $48
    nop                                           ; $4014: $00
    nop                                           ; $4015: $00
    rst $38                                       ; $4016: $ff
    ld bc, $7fff                                  ; $4017: $01 $ff $7f
    rst $28                                       ; $401a: $ef
    ld b, l                                       ; $401b: $45
    nop                                           ; $401c: $00
    nop                                           ; $401d: $00
    adc $00                                       ; $401e: $ce $00
    ccf                                           ; $4020: $3f
    ld b, a                                       ; $4021: $47
    rst $38                                       ; $4022: $ff
    ld bc, $0000                                  ; $4023: $01 $00 $00
    rst $38                                       ; $4026: $ff
    ld bc, $473f                                  ; $4027: $01 $3f $47
    rst $38                                       ; $402a: $ff
    ld a, a                                       ; $402b: $7f
    nop                                           ; $402c: $00
    nop                                           ; $402d: $00
    adc $00                                       ; $402e: $ce $00
    rst $38                                       ; $4030: $ff
    ld bc, $13ff                                  ; $4031: $01 $ff $13
    nop                                           ; $4034: $00
    nop                                           ; $4035: $00
    ccf                                           ; $4036: $3f
    ld b, a                                       ; $4037: $47
    rst $38                                       ; $4038: $ff
    ld bc, $00b9                                  ; $4039: $01 $b9 $00
    nop                                           ; $403c: $00
    nop                                           ; $403d: $00
    ccf                                           ; $403e: $3f
    ld b, a                                       ; $403f: $47
    rst $38                                       ; $4040: $ff
    ld bc, $13ff                                  ; $4041: $01 $ff $13
    nop                                           ; $4044: $00
    nop                                           ; $4045: $00
    rst $38                                       ; $4046: $ff
    inc de                                        ; $4047: $13
    rst $38                                       ; $4048: $ff
    ld bc, $00b9                                  ; $4049: $01 $b9 $00
    nop                                           ; $404c: $00
    nop                                           ; $404d: $00
    adc $00                                       ; $404e: $ce $00
    rst $38                                       ; $4050: $ff
    ld bc, $00b9                                  ; $4051: $01 $b9 $00
    db $fd                                        ; $4054: $fd
    nop                                           ; $4055: $00
    rst $38                                       ; $4056: $ff
    ei                                            ; $4057: $fb
    ld bc, $0300                                  ; $4058: $01 $00 $03
    inc bc                                        ; $405b: $03
    rlca                                          ; $405c: $07
    inc b                                         ; $405d: $04
    rst $38                                       ; $405e: $ff
    rrca                                          ; $405f: $0f
    ld [$111e], sp                                ; $4060: $08 $1e $11
    ccf                                           ; $4063: $3f
    nop                                           ; $4064: $00
    ld a, e                                       ; $4065: $7b
    ld b, h                                       ; $4066: $44
    rst $38                                       ; $4067: $ff
    db $fd                                        ; $4068: $fd
    ld [bc], a                                    ; $4069: $02
    xor $00                                       ; $406a: $ee $00
    ret nz                                        ; $406c: $c0

    ret nz                                        ; $406d: $c0

    ldh [$60], a                                  ; $406e: $e0 $60
    rst $38                                       ; $4070: $ff
    ldh a, [$30]                                  ; $4071: $f0 $30
    ld hl, sp+$18                                 ; $4073: $f8 $18
    ld a, h                                       ; $4075: $7c
    adc h                                         ; $4076: $8c
    cp [hl]                                       ; $4077: $be
    ld b, h                                       ; $4078: $44
    rst $20                                       ; $4079: $e7
    sbc $20                                       ; $407a: $de $20
    xor $d1                                       ; $407c: $ee $d1
    db $ed                                        ; $407e: $ed
    or b                                          ; $407f: $b0
    push hl                                       ; $4080: $e5
    ld e, $00                                     ; $4081: $1e $00
    ld a, a                                       ; $4083: $7f
    rst $38                                       ; $4084: $ff
    nop                                           ; $4085: $00
    rst $38                                       ; $4086: $ff
    nop                                           ; $4087: $00
    db $e3                                        ; $4088: $e3
    inc e                                         ; $4089: $1c
    nop                                           ; $408a: $00
    inc bc                                        ; $408b: $03
    nop                                           ; $408c: $00
    rst $20                                       ; $408d: $e7
    rlca                                          ; $408e: $07
    nop                                           ; $408f: $00

jr_079_4090:
    rrca                                          ; $4090: $0f
    pop af                                        ; $4091: $f1
    ldh [$c0], a                                  ; $4092: $e0 $c0
    ldh [$80], a                                  ; $4094: $e0 $80
    dec a                                         ; $4096: $3d
    ret nz                                        ; $4097: $c0

    rst $38                                       ; $4098: $ff
    ld e, $11                                     ; $4099: $1e $11
    rst $30                                       ; $409b: $f7
    ld [$04bb], sp                                ; $409c: $08 $bb $04

Call_079_409f:
    db $dd                                        ; $409f: $dd
    ld [hl+], a                                   ; $40a0: $22
    rst $30                                       ; $40a1: $f7
    xor $11                                       ; $40a2: $ee $11
    ld [hl], a                                    ; $40a4: $77
    ld hl, sp-$1d                                 ; $40a5: $f8 $e3
    db $10                                        ; $40a7: $10
    halt                                          ; $40a8: $76
    adc b                                         ; $40a9: $88
    cp b                                          ; $40aa: $b8
    rst $38                                       ; $40ab: $ff
    ld b, b                                       ; $40ac: $40
    ret c                                         ; $40ad: $d8

    jr nz, jr_079_4090                            ; $40ae: $20 $e0

    nop                                           ; $40b0: $00
    ld h, b                                       ; $40b1: $60
    add b                                         ; $40b2: $80
    add b                                         ; $40b3: $80
    ld d, a                                       ; $40b4: $57
    nop                                           ; $40b5: $00
    add b                                         ; $40b6: $80
    rla                                           ; $40b7: $17
    ld [hl], c                                    ; $40b8: $71
    db $ec                                        ; $40b9: $ec
    rst $38                                       ; $40ba: $ff
    ld h, c                                       ; $40bb: $61
    db $ec                                        ; $40bc: $ec
    pop bc                                        ; $40bd: $c1
    ld d, c                                       ; $40be: $51
    ld [$7cd7], a                                 ; $40bf: $ea $d7 $7c
    nop                                           ; $40c2: $00
    cp $41                                        ; $40c3: $fe $41
    db $ec                                        ; $40c5: $ec
    ld a, $91                                     ; $40c6: $3e $91
    db $e4                                        ; $40c8: $e4
    rrca                                          ; $40c9: $0f
    db $10                                        ; $40ca: $10
    rst $38                                       ; $40cb: $ff
    rra                                           ; $40cc: $1f
    jr nz, jr_079_40fe                            ; $40cd: $20 $2f

    db $10                                        ; $40cf: $10
    rra                                           ; $40d0: $1f
    ld h, b                                       ; $40d1: $60
    cpl                                           ; $40d2: $2f
    ld d, b                                       ; $40d3: $50
    ld a, a                                       ; $40d4: $7f
    add b                                         ; $40d5: $80
    ld a, a                                       ; $40d6: $7f
    nop                                           ; $40d7: $00
    ret nz                                        ; $40d8: $c0

    rra                                           ; $40d9: $1f
    jr nz, @+$01                                  ; $40da: $20 $ff

    ld [hl], h                                    ; $40dc: $74
    ldh [$fe], a                                  ; $40dd: $e0 $fe
    db $fc                                        ; $40df: $fc
    db $e3                                        ; $40e0: $e3
    ldh [rTAC], a                                 ; $40e1: $e0 $07
    nop                                           ; $40e3: $00
    dec bc                                        ; $40e4: $0b
    ret nz                                        ; $40e5: $c0

    dec l                                         ; $40e6: $2d
    ldh [rIE], a                                  ; $40e7: $e0 $ff
    ld d, $f0                                     ; $40e9: $16 $f0
    rlca                                          ; $40eb: $07
    ldh a, [$0b]                                  ; $40ec: $f0 $0b
    jr jr_079_40f1                                ; $40ee: $18 $01

    ret nz                                        ; $40f0: $c0

jr_079_40f1:
    rst $38                                       ; $40f1: $ff
    ld [hl+], a                                   ; $40f2: $22
    db $10                                        ; $40f3: $10
    halt                                          ; $40f4: $76
    ld bc, $42b8                                  ; $40f5: $01 $b8 $42
    ret c                                         ; $40f8: $d8

    dec b                                         ; $40f9: $05
    rst $38                                       ; $40fa: $ff
    ldh [$0a], a                                  ; $40fb: $e0 $0a
    ld h, b                                       ; $40fd: $60

jr_079_40fe:
    ld de, $2680                                  ; $40fe: $11 $80 $26
    adc [hl]                                      ; $4101: $8e
    ld c, l                                       ; $4102: $4d
    rst $38                                       ; $4103: $ff
    dec e                                         ; $4104: $1d
    xor e                                         ; $4105: $ab
    nop                                           ; $4106: $00
    ld d, l                                       ; $4107: $55
    nop                                           ; $4108: $00
    rst $28                                       ; $4109: $ef
    nop                                           ; $410a: $00
    ld [hl], a                                    ; $410b: $77
    rst $38                                       ; $410c: $ff
    nop                                           ; $410d: $00
    cp e                                          ; $410e: $bb
    nop                                           ; $410f: $00
    dec e                                         ; $4110: $1d
    nop                                           ; $4111: $00
    rst $28                                       ; $4112: $ef
    ldh [$61], a                                  ; $4113: $e0 $61
    ld sp, hl                                     ; $4115: $f9
    ldh [$c6], a                                  ; $4116: $e0 $c6
    rst $20                                       ; $4118: $e7
    or $eb                                        ; $4119: $f6 $eb
    rst $28                                       ; $411b: $ef
    db $10                                        ; $411c: $10
    rst $30                                       ; $411d: $f7
    ld [$f7eb], sp                                ; $411e: $08 $eb $f7
    inc d                                         ; $4121: $14
    push af                                       ; $4122: $f5
    ld a, [bc]                                    ; $4123: $0a
    and [hl]                                      ; $4124: $a6
    db $e3                                        ; $4125: $e3
    ei                                            ; $4126: $fb
    inc b                                         ; $4127: $04
    db $fd                                        ; $4128: $fd
    ld [bc], a                                    ; $4129: $02
    cp $fc                                        ; $412a: $fe $fc
    pop hl                                        ; $412c: $e1
    ld a, [$8005]                                 ; $412d: $fa $05 $80
    nop                                           ; $4130: $00
    ret nz                                        ; $4131: $c0

    nop                                           ; $4132: $00
    ldh [$af], a                                  ; $4133: $e0 $af
    nop                                           ; $4135: $00
    ldh a, [rP1]                                  ; $4136: $f0 $00
    ld hl, sp-$02                                 ; $4138: $f8 $fe
    ldh [$fc], a                                  ; $413a: $e0 $fc
    cp $e0                                        ; $413c: $fe $e0
    rla                                           ; $413e: $17
    ld a, a                                       ; $413f: $7f
    ld l, b                                       ; $4140: $68
    rrca                                          ; $4141: $0f
    ld [hl], b                                    ; $4142: $70
    rla                                           ; $4143: $17
    ld l, b                                       ; $4144: $68
    dec bc                                        ; $4145: $0b
    ld [hl], h                                    ; $4146: $74
    db $fc                                        ; $4147: $fc
    pop hl                                        ; $4148: $e1
    rst $28                                       ; $4149: $ef
    dec b                                         ; $414a: $05
    ld a, d                                       ; $414b: $7a
    dec bc                                        ; $414c: $0b
    ld [hl], h                                    ; $414d: $74
    or b                                          ; $414e: $b0
    db $eb                                        ; $414f: $eb
    db $fd                                        ; $4150: $fd
    nop                                           ; $4151: $00
    ld a, [bc]                                    ; $4152: $0a
    rst $38                                       ; $4153: $ff
    ld a, [$f8c1]                                 ; $4154: $fa $c1 $f8
    ld [hl+], a                                   ; $4157: $22
    jr c, jr_079_416b                             ; $4158: $38 $11

    reti                                          ; $415a: $d9


    inc bc                                        ; $415b: $03
    rst $38                                       ; $415c: $ff
    db $e3                                        ; $415d: $e3
    rlca                                          ; $415e: $07
    rst $20                                       ; $415f: $e7
    rrca                                          ; $4160: $0f
    rst $08                                       ; $4161: $cf
    rra                                           ; $4162: $1f
    rst $18                                       ; $4163: $df
    ld a, [bc]                                    ; $4164: $0a
    rst $38                                       ; $4165: $ff
    dec sp                                        ; $4166: $3b
    dec d                                         ; $4167: $15
    ld [hl], a                                    ; $4168: $77
    dec bc                                        ; $4169: $0b
    rst $28                                       ; $416a: $ef

jr_079_416b:
    ld d, $df                                     ; $416b: $16 $df
    inc l                                         ; $416d: $2c
    rst $38                                       ; $416e: $ff
    cp [hl]                                       ; $416f: $be
    ld e, c                                       ; $4170: $59
    ld a, l                                       ; $4171: $7d
    or e                                          ; $4172: $b3
    ei                                            ; $4173: $fb
    ld h, a                                       ; $4174: $67
    rst $38                                       ; $4175: $ff
    xor $ff                                       ; $4176: $ee $ff
    xor $9e                                       ; $4178: $ee $9e
    sbc $3e                                       ; $417a: $de $3e
    cp [hl]                                       ; $417c: $be
    ld a, [hl]                                    ; $417d: $7e
    ld a, [hl]                                    ; $417e: $7e
    db $fd                                        ; $417f: $fd
    ld a, a                                       ; $4180: $7f
    db $fc                                        ; $4181: $fc
    db $fd                                        ; $4182: $fd
    db $fc                                        ; $4183: $fc
    ei                                            ; $4184: $fb
    ld hl, sp-$05                                 ; $4185: $f8 $fb
    ld hl, sp+$70                                 ; $4187: $f8 $70
    jp hl                                         ; $4189: $e9


    rst $28                                       ; $418a: $ef
    db $fc                                        ; $418b: $fc
    nop                                           ; $418c: $00
    di                                            ; $418d: $f3
    inc bc                                        ; $418e: $03
    ld h, $e5                                     ; $418f: $26 $e5
    jp Jump_000_3b00                              ; $4191: $c3 $00 $3b


    rst $38                                       ; $4194: $ff
    jr c, @-$29                                   ; $4195: $38 $d5

    db $fc                                        ; $4197: $fc
    xor c                                         ; $4198: $a9
    db $fc                                        ; $4199: $fc
    ld a, [$f105]                                 ; $419a: $fa $05 $f1
    rst $30                                       ; $419d: $f7
    ld c, $fa                                     ; $419e: $0e $fa
    dec b                                         ; $41a0: $05
    halt                                          ; $41a1: $76
    pop hl                                        ; $41a2: $e1
    db $fd                                        ; $41a3: $fd
    ld [bc], a                                    ; $41a4: $02
    cp $01                                        ; $41a5: $fe $01
    db $fc                                        ; $41a7: $fc
    sbc [hl]                                      ; $41a8: $9e
    ldh [$f6], a                                  ; $41a9: $e0 $f6
    ld [c], a                                     ; $41ab: $e2
    ld a, d                                       ; $41ac: $7a
    add l                                         ; $41ad: $85
    db $fc                                        ; $41ae: $fc
    inc bc                                        ; $41af: $03
    ld a, d                                       ; $41b0: $7a
    add l                                         ; $41b1: $85
    cp $f8                                        ; $41b2: $fe $f8
    pop hl                                        ; $41b4: $e1
    ld a, h                                       ; $41b5: $7c
    add b                                         ; $41b6: $80
    cp $00                                        ; $41b7: $fe $00
    ld a, [hl]                                    ; $41b9: $7e
    add b                                         ; $41ba: $80
    cp [hl]                                       ; $41bb: $be
    ccf                                           ; $41bc: $3f
    ld b, b                                       ; $41bd: $40
    ld a, [hl]                                    ; $41be: $7e
    add b                                         ; $41bf: $80
    ccf                                           ; $41c0: $3f
    ret nz                                        ; $41c1: $c0

    ld a, a                                       ; $41c2: $7f
    db $fc                                        ; $41c3: $fc
    ldh [rNR23], a                                ; $41c4: $e0 $18
    push bc                                       ; $41c6: $c5
    rst $08                                       ; $41c7: $cf
    dec b                                         ; $41c8: $05
    ld [bc], a                                    ; $41c9: $02
    ld a, [bc]                                    ; $41ca: $0a
    dec d                                         ; $41cb: $15
    ld c, [hl]                                    ; $41cc: $4e
    pop bc                                        ; $41cd: $c1
    ld e, h                                       ; $41ce: $5c
    pop hl                                        ; $41cf: $e1
    dec b                                         ; $41d0: $05
    ld a, d                                       ; $41d1: $7a
    cp a                                          ; $41d2: $bf
    inc bc                                        ; $41d3: $03
    sbc h                                         ; $41d4: $9c
    ld b, a                                       ; $41d5: $47
    xor b                                         ; $41d6: $a8
    xor a                                         ; $41d7: $af
    ld d, b                                       ; $41d8: $50
    jp z, $fec1                                   ; $41d9: $ca $c1 $fe

    cp $fe                                        ; $41dc: $fe $fe
    and $fc                                       ; $41de: $e6 $fc
    ld bc, $01fc                                  ; $41e0: $01 $fc $01
    ld hl, sp+$03                                 ; $41e3: $f8 $03
    nop                                           ; $41e5: $00
    rst $38                                       ; $41e6: $ff
    ccf                                           ; $41e7: $3f
    ld bc, $027f                                  ; $41e8: $01 $7f $02
    ld a, a                                       ; $41eb: $7f
    dec b                                         ; $41ec: $05
    rst $38                                       ; $41ed: $ff
    dec bc                                        ; $41ee: $0b
    rst $28                                       ; $41ef: $ef
    rst $38                                       ; $41f0: $ff
    rla                                           ; $41f1: $17
    rst $38                                       ; $41f2: $ff
    dec hl                                        ; $41f3: $2b
    db $fc                                        ; $41f4: $fc
    ldh [$cf], a                                  ; $41f5: $e0 $cf
    rst $38                                       ; $41f7: $ff
    ld e, a                                       ; $41f8: $5f
    rst $10                                       ; $41f9: $d7
    rst $38                                       ; $41fa: $ff
    rst $18                                       ; $41fb: $df

Jump_079_41fc:
    rst $38                                       ; $41fc: $ff
    rst $38                                       ; $41fd: $ff
    db $e3                                        ; $41fe: $e3
    cp $f8                                        ; $41ff: $fe $f8
    ldh [$f7], a                                  ; $4201: $e0 $f7
    ldh a, [rIE]                                  ; $4203: $f0 $ff
    db $ec                                        ; $4205: $ec
    ldh [$eb], a                                  ; $4206: $e0 $eb
    db $e3                                        ; $4208: $e3
    rst $10                                       ; $4209: $d7
    rst $00                                       ; $420a: $c7
    adc a                                         ; $420b: $8f
    rst $08                                       ; $420c: $cf
    rst $38                                       ; $420d: $ff
    sbc a                                         ; $420e: $9f
    rst $18                                       ; $420f: $df
    ccf                                           ; $4210: $3f
    cp a                                          ; $4211: $bf
    cp $fe                                        ; $4212: $fe $fe
    rst $28                                       ; $4214: $ef
    rrca                                          ; $4215: $0f
    rst $38                                       ; $4216: $ff
    sbc $1f                                       ; $4217: $de $1f
    dec a                                         ; $4219: $3d
    ccf                                           ; $421a: $3f
    ld a, d                                       ; $421b: $7a
    ld a, a                                       ; $421c: $7f
    ld [hl], l                                    ; $421d: $75
    ld a, a                                       ; $421e: $7f
    rst $38                                       ; $421f: $ff
    ld l, d                                       ; $4220: $6a
    ld a, a                                       ; $4221: $7f
    ld [hl], h                                    ; $4222: $74
    ld a, a                                       ; $4223: $7f
    add sp, -$01                                  ; $4224: $e8 $ff
    ld d, b                                       ; $4226: $50
    cp $5f                                        ; $4227: $fe $5f
    and b                                         ; $4229: $a0
    rst $38                                       ; $422a: $ff
    ld b, b                                       ; $422b: $40
    rst $38                                       ; $422c: $ff
    add b                                         ; $422d: $80
    ld l, a                                       ; $422e: $6f
    add $ff                                       ; $422f: $c6 $ff
    ret c                                         ; $4231: $d8

    and b                                         ; $4232: $a0
    rst $38                                       ; $4233: $ff
    ld a, a                                       ; $4234: $7f
    nop                                           ; $4235: $00
    ccf                                           ; $4236: $3f
    add b                                         ; $4237: $80
    rra                                           ; $4238: $1f
    ret nz                                        ; $4239: $c0

    rra                                           ; $423a: $1f
    ret nz                                        ; $423b: $c0

    adc a                                         ; $423c: $8f
    rrca                                          ; $423d: $0f
    ldh [rTAC], a                                 ; $423e: $e0 $07
    ldh a, [rWY]                                  ; $4240: $f0 $4a
    pop hl                                        ; $4242: $e1
    db $fc                                        ; $4243: $fc
    push hl                                       ; $4244: $e5
    add d                                         ; $4245: $82
    ldh [rSB], a                                  ; $4246: $e0 $01
    rst $38                                       ; $4248: $ff
    ld e, a                                       ; $4249: $5f
    and b                                         ; $424a: $a0
    ccf                                           ; $424b: $3f
    ret nz                                        ; $424c: $c0

    ld e, a                                       ; $424d: $5f
    and b                                         ; $424e: $a0
    cp a                                          ; $424f: $bf
    ld b, b                                       ; $4250: $40
    or e                                          ; $4251: $b3
    ld a, a                                       ; $4252: $7f
    add b                                         ; $4253: $80
    db $fc                                        ; $4254: $fc
    pop hl                                        ; $4255: $e1
    ldh a, [$ad]                                  ; $4256: $f0 $ad
    ld bc, $4002                                  ; $4258: $01 $02 $40
    and e                                         ; $425b: $a3
    inc bc                                        ; $425c: $03
    halt                                          ; $425d: $76
    sbc l                                         ; $425e: $9d
    and b                                         ; $425f: $a0
    ccf                                           ; $4260: $3f
    nop                                           ; $4261: $00
    ldh [$e1], a                                  ; $4262: $e0 $e1
    rlca                                          ; $4264: $07
    ld [$4e3f], sp                                ; $4265: $08 $3f $4e
    jp z, Jump_079_41fc                           ; $4268: $ca $fc $41

    ret z                                         ; $426b: $c8

    and a                                         ; $426c: $a7
    pop hl                                        ; $426d: $e1
    ei                                            ; $426e: $fb
    inc bc                                        ; $426f: $03
    ei                                            ; $4270: $fb
    rlca                                          ; $4271: $07
    rst $30                                       ; $4272: $f7
    rlca                                          ; $4273: $07
    rst $38                                       ; $4274: $ff
    rst $30                                       ; $4275: $f7
    rrca                                          ; $4276: $0f
    rst $28                                       ; $4277: $ef
    rrca                                          ; $4278: $0f
    rst $08                                       ; $4279: $cf
    cpl                                           ; $427a: $2f
    cpl                                           ; $427b: $2f
    rst $28                                       ; $427c: $ef
    sub d                                         ; $427d: $92
    rst $38                                       ; $427e: $ff
    ldh [$2f], a                                  ; $427f: $e0 $2f
    ld b, b                                       ; $4281: $40
    ldh [$fc], a                                  ; $4282: $e0 $fc
    pop hl                                        ; $4284: $e1
    cp a                                          ; $4285: $bf
    db $fc                                        ; $4286: $fc
    db $e4                                        ; $4287: $e4
    rst $38                                       ; $4288: $ff
    db $ed                                        ; $4289: $ed
    cp $e5                                        ; $428a: $fe $e5
    cp $87                                        ; $428c: $fe $87
    ret nz                                        ; $428e: $c0

    db $fd                                        ; $428f: $fd
    add a                                         ; $4290: $87
    ret nz                                        ; $4291: $c0

    add e                                         ; $4292: $83
    ret nz                                        ; $4293: $c0

    ldh a, [$f7]                                  ; $4294: $f0 $f7
    pop hl                                        ; $4296: $e1
    rst $18                                       ; $4297: $df
    or $d0                                        ; $4298: $f6 $d0
    rst $38                                       ; $429a: $ff
    and b                                         ; $429b: $a0
    rst $38                                       ; $429c: $ff
    db $fc                                        ; $429d: $fc
    pop hl                                        ; $429e: $e1
    ld b, b                                       ; $429f: $40
    rst $38                                       ; $42a0: $ff
    ei                                            ; $42a1: $fb
    and b                                         ; $42a2: $a0
    cp $38                                        ; $42a3: $fe $38
    jp hl                                         ; $42a5: $e9


    ldh a, [rIF]                                  ; $42a6: $f0 $0f
    inc c                                         ; $42a8: $0c
    inc bc                                        ; $42a9: $03
    nop                                           ; $42aa: $00
    adc a                                         ; $42ab: $8f
    pop af                                        ; $42ac: $f1
    nop                                           ; $42ad: $00
    cp $03                                        ; $42ae: $fe $03
    add hl, bc                                    ; $42b0: $09
    pop bc                                        ; $42b1: $c1
    res 5, b                                      ; $42b2: $cb $a8
    inc a                                         ; $42b4: $3c
    pop hl                                        ; $42b5: $e1
    ccf                                           ; $42b6: $3f
    sbc a                                         ; $42b7: $9f
    nop                                           ; $42b8: $00
    rrca                                          ; $42b9: $0f
    ret nz                                        ; $42ba: $c0

    ld bc, $53f0                                  ; $42bb: $01 $f0 $53
    and b                                         ; $42be: $a0
    ld a, c                                       ; $42bf: $79
    and b                                         ; $42c0: $a0
    ld a, [hl]                                    ; $42c1: $7e
    adc d                                         ; $42c2: $8a
    add b                                         ; $42c3: $80
    ret nz                                        ; $42c4: $c0

    db $fc                                        ; $42c5: $fc
    ld [c], a                                     ; $42c6: $e2
    and b                                         ; $42c7: $a0
    ldh a, [$87]                                  ; $42c8: $f0 $87
    add c                                         ; $42ca: $81
    db $db                                        ; $42cb: $db
    and c                                         ; $42cc: $a1

jr_079_42cd:
    sub d                                         ; $42cd: $92
    adc e                                         ; $42ce: $8b
    ld bc, $03ff                                  ; $42cf: $01 $ff $03
    inc b                                         ; $42d2: $04
    rlca                                          ; $42d3: $07
    ld [$140b], sp                                ; $42d4: $08 $0b $14
    rla                                           ; $42d7: $17
    jr z, @+$01                                   ; $42d8: $28 $ff

    cpl                                           ; $42da: $2f
    ld d, b                                       ; $42db: $50
    ld e, a                                       ; $42dc: $5f
    and b                                         ; $42dd: $a0
    cpl                                           ; $42de: $2f
    ret nc                                        ; $42df: $d0

    ld e, a                                       ; $42e0: $5f
    and b                                         ; $42e1: $a0
    sbc $43                                       ; $42e2: $de $43
    and $00                                       ; $42e4: $e6 $00

jr_079_42e6:
    ld hl, sp+$04                                 ; $42e6: $f8 $04
    ldh a, [$a6]                                  ; $42e8: $f0 $a6
    and b                                         ; $42ea: $a0
    nop                                           ; $42eb: $00
    rst $30                                       ; $42ec: $f7
    rst $38                                       ; $42ed: $ff
    ld hl, $02ef                                  ; $42ee: $21 $ef $02
    adc a                                         ; $42f1: $8f
    ld bc, $0a0f                                  ; $42f2: $01 $0f $0a
    ld c, $fd                                     ; $42f5: $0e $fd
    ld [$e0fe], sp                                ; $42f7: $08 $fe $e0
    inc b                                         ; $42fa: $04
    rlca                                          ; $42fb: $07
    jr nz, jr_079_42cd                            ; $42fc: $20 $cf

    ld b, b                                       ; $42fe: $40
    sbc a                                         ; $42ff: $9f
    ld a, a                                       ; $4300: $7f
    ld [bc], a                                    ; $4301: $02
    cp a                                          ; $4302: $bf
    dec b                                         ; $4303: $05
    ld a, a                                       ; $4304: $7f
    dec bc                                        ; $4305: $0b
    rst $38                                       ; $4306: $ff
    dec b                                         ; $4307: $05
    inc hl                                        ; $4308: $23
    and b                                         ; $4309: $a0
    rst $38                                       ; $430a: $ff
    nop                                           ; $430b: $00
    ld e, a                                       ; $430c: $5f
    cpl                                           ; $430d: $2f
    rst $38                                       ; $430e: $ff
    ld d, a                                       ; $430f: $57
    rst $38                                       ; $4310: $ff
    xor e                                         ; $4311: $ab
    rst $38                                       ; $4312: $ff
    db $fd                                        ; $4313: $fd
    push af                                       ; $4314: $f5
    ld l, [hl]                                    ; $4315: $6e
    jp nz, Jump_000_0f0f                          ; $4316: $c2 $0f $0f

    ld bc, $fef1                                  ; $4319: $01 $f1 $fe
    rst $38                                       ; $431c: $ff
    rst $38                                       ; $431d: $ff
    db $fd                                        ; $431e: $fd
    rst $38                                       ; $431f: $ff
    ld a, [$f4ff]                                 ; $4320: $fa $ff $f4
    rst $38                                       ; $4323: $ff
    ld hl, sp-$02                                 ; $4324: $f8 $fe
    rst $38                                       ; $4326: $ff
    ldh a, [$f8]                                  ; $4327: $f0 $f8
    ld hl, sp-$04                                 ; $4329: $f8 $fc
    db $f4                                        ; $432b: $f4
    db $fc                                        ; $432c: $fc
    jp nz, Jump_000_3fed                          ; $432d: $c2 $ed $3f

    dec b                                         ; $4330: $05
    ld [$c182], a                                 ; $4331: $ea $82 $c1
    nop                                           ; $4334: $00
    add b                                         ; $4335: $80
    sbc l                                         ; $4336: $9d
    adc b                                         ; $4337: $88
    db $e3                                        ; $4338: $e3
    add e                                         ; $4339: $83
    ld b, b                                       ; $433a: $40
    ld e, e                                       ; $433b: $5b
    ldh [rHDMA4], a                               ; $433c: $e0 $54
    add b                                         ; $433e: $80
    ret nc                                        ; $433f: $d0

    ret                                           ; $4340: $c9


    res 0, d                                      ; $4341: $cb $82
    jr c, jr_079_42e6                             ; $4343: $38 $a1

    db $fc                                        ; $4345: $fc
    db $e3                                        ; $4346: $e3
    ldh a, [$fe]                                  ; $4347: $f0 $fe
    ld [c], a                                     ; $4349: $e2
    ret c                                         ; $434a: $d8

    jr nc, jr_079_42cd                            ; $434b: $30 $80

    cp $e5                                        ; $434d: $fe $e5
    ld d, d                                       ; $434f: $52
    ldh [rP1], a                                  ; $4350: $e0 $00
    nop                                           ; $4352: $00
    ld e, h                                       ; $4353: $5c
    pop hl                                        ; $4354: $e1
    cpl                                           ; $4355: $2f
    ret nc                                        ; $4356: $d0

    rst $38                                       ; $4357: $ff
    ld d, a                                       ; $4358: $57
    xor b                                         ; $4359: $a8

Call_079_435a:
    dec hl                                        ; $435a: $2b
    call nc, $ea15                                ; $435b: $d4 $15 $ea
    ld a, [bc]                                    ; $435e: $0a
    push af                                       ; $435f: $f5
    ld b, e                                       ; $4360: $43
    dec b                                         ; $4361: $05
    ld a, [$8bd0]                                 ; $4362: $fa $d0 $8b
    ld c, [hl]                                    ; $4365: $4e
    pop bc                                        ; $4366: $c1
    cp h                                          ; $4367: $bc
    and c                                         ; $4368: $a1
    ld c, $e1                                     ; $4369: $0e $e1
    db $f4                                        ; $436b: $f4
    or h                                          ; $436c: $b4
    and d                                         ; $436d: $a2
    di                                            ; $436e: $f3
    add b                                         ; $436f: $80
    ld b, b                                       ; $4370: $40
    adc [hl]                                      ; $4371: $8e
    ld h, d                                       ; $4372: $62
    reti                                          ; $4373: $d9


    add h                                         ; $4374: $84
    inc b                                         ; $4375: $04
    db $f4                                        ; $4376: $f4
    inc b                                         ; $4377: $04
    rlca                                          ; $4378: $07
    rst $38                                       ; $4379: $ff
    ld [bc], a                                    ; $437a: $02
    inc bc                                        ; $437b: $03
    ld [bc], a                                    ; $437c: $02
    inc bc                                        ; $437d: $03
    ld bc, $0a01                                  ; $437e: $01 $01 $0a
    nop                                           ; $4381: $00
    rst $38                                       ; $4382: $ff
    rla                                           ; $4383: $17
    nop                                           ; $4384: $00
    cpl                                           ; $4385: $2f
    nop                                           ; $4386: $00
    ld e, a                                       ; $4387: $5f
    nop                                           ; $4388: $00
    sbc a                                         ; $4389: $9f
    sbc a                                         ; $438a: $9f
    rst $38                                       ; $438b: $ff
    ld e, d                                       ; $438c: $5a
    rst $18                                       ; $438d: $df
    dec d                                         ; $438e: $15
    rst $18                                       ; $438f: $df
    xor d                                         ; $4390: $aa
    cp a                                          ; $4391: $bf
    sub b                                         ; $4392: $90
    cp a                                          ; $4393: $bf
    rst $30                                       ; $4394: $f7
    jr nz, jr_079_43d6                            ; $4395: $20 $3f

    ld b, b                                       ; $4397: $40
    push hl                                       ; $4398: $e5
    and b                                         ; $4399: $a0
    ld a, [bc]                                    ; $439a: $0a
    db $f4                                        ; $439b: $f4
    ld d, l                                       ; $439c: $55
    xor d                                         ; $439d: $aa
    ei                                            ; $439e: $fb
    cp a                                          ; $439f: $bf
    ld b, b                                       ; $43a0: $40
    ld b, b                                       ; $43a1: $40
    add a                                         ; $43a2: $87
    inc a                                         ; $43a3: $3c
    inc a                                         ; $43a4: $3c
    ld e, h                                       ; $43a5: $5c
    sbc h                                         ; $43a6: $9c
    ret z                                         ; $43a7: $c8

    rst $38                                       ; $43a8: $ff
    ld a, [hl+]                                   ; $43a9: $2a
    ret nz                                        ; $43aa: $c0

    ld [hl+], a                                   ; $43ab: $22
    ret nz                                        ; $43ac: $c0

    rlca                                          ; $43ad: $07
    pop bc                                        ; $43ae: $c1
    ld e, $c2                                     ; $43af: $1e $c2
    rst $30                                       ; $43b1: $f7
    dec e                                         ; $43b2: $1d
    push bc                                       ; $43b3: $c5
    ld a, [de]                                    ; $43b4: $1a
    ld d, e                                       ; $43b5: $53
    ld l, d                                       ; $43b6: $6a
    add c                                         ; $43b7: $81

jr_079_43b8:
    add e                                         ; $43b8: $83
    inc bc                                        ; $43b9: $03
    ld b, $ff                                     ; $43ba: $06 $ff
    ld b, $0f                                     ; $43bc: $06 $0f
    rrca                                          ; $43be: $0f
    rra                                           ; $43bf: $1f
    rra                                           ; $43c0: $1f
    ccf                                           ; $43c1: $3f
    ccf                                           ; $43c2: $3f
    ld a, a                                       ; $43c3: $7f
    ld sp, hl                                     ; $43c4: $f9
    ld a, a                                       ; $43c5: $7f
    ld l, e                                       ; $43c6: $6b
    and e                                         ; $43c7: $a3
    and e                                         ; $43c8: $a3
    and d                                         ; $43c9: $a2
    sbc a                                         ; $43ca: $9f
    ret nz                                        ; $43cb: $c0

    rst $08                                       ; $43cc: $cf
    ldh [$e7], a                                  ; $43cd: $e0 $e7
    rst $38                                       ; $43cf: $ff
    ret nz                                        ; $43d0: $c0

    jp $8180                                      ; $43d1: $c3 $80 $81


    nop                                           ; $43d4: $00
    nop                                           ; $43d5: $00

jr_079_43d6:
    ld [hl], b                                    ; $43d6: $70
    add b                                         ; $43d7: $80
    cpl                                           ; $43d8: $2f
    jr jr_079_43db                                ; $43d9: $18 $00

jr_079_43db:
    ld [$5de0], sp                                ; $43db: $08 $e0 $5d
    add b                                         ; $43de: $80

jr_079_43df:
    ldh [$57], a                                  ; $43df: $e0 $57
    add b                                         ; $43e1: $80
    cp $e0                                        ; $43e2: $fe $e0
    rst $28                                       ; $43e4: $ef
    ld [bc], a                                    ; $43e5: $02
    db $fd                                        ; $43e6: $fd
    ld bc, $647e                                  ; $43e7: $01 $7e $64
    ld h, b                                       ; $43ea: $60
    ccf                                           ; $43eb: $3f
    nop                                           ; $43ec: $00
    rra                                           ; $43ed: $1f
    cp $c9                                        ; $43ee: $fe $c9
    ld h, c                                       ; $43f0: $61
    nop                                           ; $43f1: $00
    rlca                                          ; $43f2: $07
    cp a                                          ; $43f3: $bf
    ld b, b                                       ; $43f4: $40
    ld e, a                                       ; $43f5: $5f
    and b                                         ; $43f6: $a0
    xor a                                         ; $43f7: $af
    ret                                           ; $43f8: $c9


    ld d, b                                       ; $43f9: $50
    jr nc, jr_079_43df                            ; $43fa: $30 $e3

    db $e4                                        ; $43fc: $e4
    ldh [$fe], a                                  ; $43fd: $e0 $fe
    ld a, [bc]                                    ; $43ff: $0a
    and c                                         ; $4400: $a1
    ld [$f8a1], sp                                ; $4401: $08 $a1 $f8
    inc bc                                        ; $4404: $03
    rst $38                                       ; $4405: $ff
    ld [hl], b                                    ; $4406: $70
    add a                                         ; $4407: $87
    or b                                          ; $4408: $b0
    ld b, a                                       ; $4409: $47
    ld b, b                                       ; $440a: $40
    xor a                                         ; $440b: $af
    ld b, $f6                                     ; $440c: $06 $f6
    call c, $a0c4                                 ; $440e: $dc $c4 $a0
    cp $e0                                        ; $4411: $fe $e0
    rra                                           ; $4413: $1f
    rst $18                                       ; $4414: $df
    rra                                           ; $4415: $1f
    jr nz, jr_079_43b8                            ; $4416: $20 $a0

    ccf                                           ; $4418: $3f
    cp a                                          ; $4419: $bf
    db $fd                                        ; $441a: $fd
    xor a                                         ; $441b: $af
    ld c, h                                       ; $441c: $4c
    ldh [$8c], a                                  ; $441d: $e0 $8c
    add b                                         ; $441f: $80
    ld [bc], a                                    ; $4420: $02
    ldh [$88], a                                  ; $4421: $e0 $88
    db $fc                                        ; $4423: $fc
    ccf                                           ; $4424: $3f
    ld d, $fe                                     ; $4425: $16 $fe
    xor [hl]                                      ; $4427: $ae
    cp $5e                                        ; $4428: $fe $5e
    cp $32                                        ; $442a: $fe $32
    and c                                         ; $442c: $a1
    ld a, [bc]                                    ; $442d: $0a
    db $e3                                        ; $442e: $e3
    cp $8c                                        ; $442f: $fe $8c
    ld h, e                                       ; $4431: $63
    add d                                         ; $4432: $82
    ld e, l                                       ; $4433: $5d
    add l                                         ; $4434: $85
    ld a, [hl-]                                   ; $4435: $3a
    adc d                                         ; $4436: $8a
    dec [hl]                                      ; $4437: $35
    add l                                         ; $4438: $85
    rst $18                                       ; $4439: $df
    ld a, [hl-]                                   ; $443a: $3a
    dec bc                                        ; $443b: $0b
    or h                                          ; $443c: $b4
    dec d                                         ; $443d: $15
    ld l, d                                       ; $443e: $6a
    ld a, [$0761]                                 ; $443f: $fa $61 $07
    rst $00                                       ; $4442: $c7
    ld c, a                                       ; $4443: $4f
    rlca                                          ; $4444: $07
    rst $20                                       ; $4445: $e7
    inc bc                                        ; $4446: $03
    di                                            ; $4447: $f3
    pop hl                                        ; $4448: $e1
    ld h, b                                       ; $4449: $60
    ld a, [c]                                     ; $444a: $f2
    and d                                         ; $444b: $a2
    nop                                           ; $444c: $00
    and b                                         ; $444d: $a0
    and c                                         ; $444e: $a1
    ld a, a                                       ; $444f: $7f
    db $fc                                        ; $4450: $fc
    ld hl, sp-$08                                 ; $4451: $f8 $f8
    ldh a, [$f0]                                  ; $4453: $f0 $f0
    jr nz, jr_079_4477                            ; $4455: $20 $20

    ld l, h                                       ; $4457: $6c
    ret nz                                        ; $4458: $c0

    ld de, $cde0                                  ; $4459: $11 $e0 $cd
    ld h, b                                       ; $445c: $60
    ld l, a                                       ; $445d: $6f
    ld c, b                                       ; $445e: $48
    ld d, l                                       ; $445f: $55
    ld h, b                                       ; $4460: $60
    inc d                                         ; $4461: $14
    db $e3                                        ; $4462: $e3
    add c                                         ; $4463: $81
    ret nz                                        ; $4464: $c0

    ld b, b                                       ; $4465: $40
    ld e, c                                       ; $4466: $59
    ld b, h                                       ; $4467: $44
    ld hl, sp+$49                                 ; $4468: $f8 $49
    ret nz                                        ; $446a: $c0

    and a                                         ; $446b: $a7
    call nz, Call_079_409f                        ; $446c: $c4 $9f $40
    inc b                                         ; $446f: $04
    ld [hl], b                                    ; $4470: $70
    ld [hl], b                                    ; $4471: $70
    ld hl, sp-$08                                 ; $4472: $f8 $f8
    db $fc                                        ; $4474: $fc
    bit 0, b                                      ; $4475: $cb $40

jr_079_4477:
    dec a                                         ; $4477: $3d
    ld c, d                                       ; $4478: $4a
    jr jr_079_448e                                ; $4479: $18 $13

    inc e                                         ; $447b: $1c
    add hl, de                                    ; $447c: $19
    ld a, $34                                     ; $447d: $3e $34
    rst $38                                       ; $447f: $ff
    ccf                                           ; $4480: $3f
    ld a, [hl-]                                   ; $4481: $3a
    ccf                                           ; $4482: $3f
    inc a                                         ; $4483: $3c
    ld a, a                                       ; $4484: $7f
    ld a, d                                       ; $4485: $7a
    ld a, a                                       ; $4486: $7f
    ld a, l                                       ; $4487: $7d
    ei                                            ; $4488: $fb
    ld a, a                                       ; $4489: $7f

jr_079_448a:
    ld a, [hl]                                    ; $448a: $7e
    rlca                                          ; $448b: $07
    ld h, h                                       ; $448c: $64
    ld a, [hl]                                    ; $448d: $7e

jr_079_448e:
    add b                                         ; $448e: $80
    dec a                                         ; $448f: $3d
    jp nz, $ff03                                  ; $4490: $c2 $03 $ff

    call nc, Call_000_2a1f                        ; $4493: $d4 $1f $2a
    ccf                                           ; $4496: $3f
    add b                                         ; $4497: $80
    ld e, a                                       ; $4498: $5f
    nop                                           ; $4499: $00
    cp a                                          ; $449a: $bf
    ld c, a                                       ; $449b: $4f
    nop                                           ; $449c: $00
    ld a, [hl]                                    ; $449d: $7e
    ld bc, $f8fd                                  ; $449e: $01 $fd $f8
    add c                                         ; $44a1: $81
    ld a, [hl-]                                   ; $44a2: $3a
    pop hl                                        ; $44a3: $e1
    ld a, a                                       ; $44a4: $7f
    rst $38                                       ; $44a5: $ff
    ldh [$7e], a                                  ; $44a6: $e0 $7e
    dec bc                                        ; $44a8: $0b
    xor c                                         ; $44a9: $a9
    cp h                                          ; $44aa: $bc
    cp $7d                                        ; $44ab: $fe $7d
    db $fc                                        ; $44ad: $fc
    db $fc                                        ; $44ae: $fc
    db $fd                                        ; $44af: $fd
    db $fc                                        ; $44b0: $fc
    pop hl                                        ; $44b1: $e1
    ld sp, $fcfd                                  ; $44b2: $31 $fd $fc
    ld [c], a                                     ; $44b5: $e2
    inc a                                         ; $44b6: $3c
    jp $e7fc                                      ; $44b7: $c3 $fc $e7


    cp $01                                        ; $44ba: $fe $01
    xor $67                                       ; $44bc: $ee $67
    db $e4                                        ; $44be: $e4
    ld h, b                                       ; $44bf: $60
    ld a, a                                       ; $44c0: $7f
    ld bc, $542b                                  ; $44c1: $01 $2b $54

jr_079_44c4:
    rla                                           ; $44c4: $17
    add sp, $2b                                   ; $44c5: $e8 $2b
    call nc, $e6fc                                ; $44c7: $d4 $fc $e6
    db $fd                                        ; $44ca: $fd
    ld l, b                                       ; $44cb: $68
    sub [hl]                                      ; $44cc: $96
    ld b, a                                       ; $44cd: $47
    rst $18                                       ; $44ce: $df
    nop                                           ; $44cf: $00
    xor a                                         ; $44d0: $af
    jr nz, jr_079_448a                            ; $44d1: $20 $b7

    jr nc, jr_079_44c4                            ; $44d3: $30 $ef

    ld hl, sp+$07                                 ; $44d5: $f8 $07
    db $fc                                        ; $44d7: $fc
    inc bc                                        ; $44d8: $03
    rst $28                                       ; $44d9: $ef
    add l                                         ; $44da: $85
    di                                            ; $44db: $f3
    inc c                                         ; $44dc: $0c
    ldh [rIE], a                                  ; $44dd: $e0 $ff
    rra                                           ; $44df: $1f
    pop bc                                        ; $44e0: $c1
    ld bc, $03c3                                  ; $44e1: $01 $c3 $03
    rlca                                          ; $44e4: $07
    rlca                                          ; $44e5: $07
    rrca                                          ; $44e6: $0f
    rst $18                                       ; $44e7: $df
    rst $08                                       ; $44e8: $cf
    rrca                                          ; $44e9: $0f
    rst $28                                       ; $44ea: $ef
    ld b, $e6                                     ; $44eb: $06 $e6
    push de                                       ; $44ed: $d5
    ld b, b                                       ; $44ee: $40
    sbc b                                         ; $44ef: $98
    ldh a, [$9f]                                  ; $44f0: $f0 $9f
    ldh a, [$e0]                                  ; $44f2: $f0 $e0
    ldh [$c0], a                                  ; $44f4: $e0 $c0
    ret nz                                        ; $44f6: $c0

    inc b                                         ; $44f7: $04
    ld b, b                                       ; $44f8: $40
    inc l                                         ; $44f9: $2c
    ld b, l                                       ; $44fa: $45
    ld a, h                                       ; $44fb: $7c
    rst $38                                       ; $44fc: $ff
    inc bc                                        ; $44fd: $03
    inc bc                                        ; $44fe: $03
    ld a, a                                       ; $44ff: $7f
    ld a, a                                       ; $4500: $7f
    ccf                                           ; $4501: $3f
    ccf                                           ; $4502: $3f
    rra                                           ; $4503: $1f
    rra                                           ; $4504: $1f
    ld a, a                                       ; $4505: $7f
    rrca                                          ; $4506: $0f
    rrca                                          ; $4507: $0f
    rlca                                          ; $4508: $07
    rlca                                          ; $4509: $07

jr_079_450a:
    nop                                           ; $450a: $00
    ld [$42f5], sp                                ; $450b: $08 $f5 $42
    and c                                         ; $450e: $a1
    rst $38                                       ; $450f: $ff
    cp $f9                                        ; $4510: $fe $f9
    ld hl, sp-$0e                                 ; $4512: $f8 $f2
    push af                                       ; $4514: $f5
    push bc                                       ; $4515: $c5
    jp z, Jump_000_0f02                           ; $4516: $ca $02 $0f

    dec a                                         ; $4519: $3d
    dec b                                         ; $451a: $05
    ld a, [$2fbf]                                 ; $451b: $fa $bf $2f
    ld b, b                                       ; $451e: $40
    or $63                                        ; $451f: $f6 $63
    and h                                         ; $4521: $a4
    and e                                         ; $4522: $a3
    ld e, b                                       ; $4523: $58
    db $e3                                        ; $4524: $e3
    rst $38                                       ; $4525: $ff

jr_079_4526:
    ld sp, hl                                     ; $4526: $f9
    db $fc                                        ; $4527: $fc

jr_079_4528:
    ld hl, sp-$07                                 ; $4528: $f8 $f9
    pop af                                        ; $452a: $f1
    ld hl, sp-$0c                                 ; $452b: $f8 $f4
    push af                                       ; $452d: $f5
    db $e3                                        ; $452e: $e3
    db $e4                                        ; $452f: $e4
    push af                                       ; $4530: $f5
    adc h                                         ; $4531: $8c
    and c                                         ; $4532: $a1
    jp nc, $ca63                                  ; $4533: $d2 $63 $ca

    ld h, c                                       ; $4536: $61
    ld e, a                                       ; $4537: $5f
    and b                                         ; $4538: $a0
    dec hl                                        ; $4539: $2b
    rst $38                                       ; $453a: $ff
    ld d, h                                       ; $453b: $54
    sub a                                         ; $453c: $97
    jr z, jr_079_450a                             ; $453d: $28 $cb

    inc d                                         ; $453f: $14
    rst $20                                       ; $4540: $e7
    ld [$fcf3], sp                                ; $4541: $08 $f3 $fc
    sub h                                         ; $4544: $94
    ld b, b                                       ; $4545: $40

jr_079_4546:
    ld a, a                                       ; $4546: $7f
    add c                                         ; $4547: $81
    or a                                          ; $4548: $b7
    jr nc, jr_079_4526                            ; $4549: $30 $db

    jr jr_079_4528                                ; $454b: $18 $db

    jr jr_079_4546                                ; $454d: $18 $f7

    db $ed                                        ; $454f: $ed
    inc c                                         ; $4550: $0c
    pop af                                        ; $4551: $f1
    cp e                                          ; $4552: $bb
    jp nz, Jump_000_00a7                          ; $4553: $c2 $a7 $00

    ldh a, [$08]                                  ; $4556: $f0 $08
    db $10                                        ; $4558: $10
    ld c, [hl]                                    ; $4559: $4e
    xor h                                         ; $455a: $ac
    ld d, d                                       ; $455b: $52
    and h                                         ; $455c: $a4
    sub h                                         ; $455d: $94
    add c                                         ; $455e: $81
    db $e3                                        ; $455f: $e3
    ld b, d                                       ; $4560: $42
    rlca                                          ; $4561: $07
    ld b, b                                       ; $4562: $40
    jr nz, jr_079_4579                            ; $4563: $20 $14

    and h                                         ; $4565: $a4
    sub [hl]                                      ; $4566: $96
    ld h, d                                       ; $4567: $62
    ld a, [$8098]                                 ; $4568: $fa $98 $80
    ld [bc], a                                    ; $456b: $02
    db $fc                                        ; $456c: $fc
    ld [c], a                                     ; $456d: $e2
    ld bc, $02ff                                  ; $456e: $01 $ff $02
    ld a, a                                       ; $4571: $7f
    ld bc, $3f7d                                  ; $4572: $01 $7d $3f
    dec b                                         ; $4575: $05
    ld h, c                                       ; $4576: $61
    ei                                            ; $4577: $fb
    rst $38                                       ; $4578: $ff

jr_079_4579:
    rst $30                                       ; $4579: $f7
    rst $38                                       ; $457a: $ff
    db $eb                                        ; $457b: $eb
    adc b                                         ; $457c: $88
    add d                                         ; $457d: $82
    ld sp, hl                                     ; $457e: $f9
    dec b                                         ; $457f: $05
    ret nz                                        ; $4580: $c0

    ld h, [hl]                                    ; $4581: $66
    ld c, d                                       ; $4582: $4a
    pop hl                                        ; $4583: $e1
    jp hl                                         ; $4584: $e9


    db $fd                                        ; $4585: $fd
    db $d3                                        ; $4586: $d3
    ei                                            ; $4587: $fb
    db $ec                                        ; $4588: $ec
    ld a, a                                       ; $4589: $7f
    db $ed                                        ; $458a: $ed
    sbc $de                                       ; $458b: $de $de
    sbc [hl]                                      ; $458d: $9e
    sbc $3f                                       ; $458e: $de $3f
    cp a                                          ; $4590: $bf
    ld [hl], b                                    ; $4591: $70
    and l                                         ; $4592: $a5
    cp $d4                                        ; $4593: $fe $d4

jr_079_4595:
    add h                                         ; $4595: $84
    ld l, d                                       ; $4596: $6a
    adc d                                         ; $4597: $8a
    or l                                          ; $4598: $b5
    pop bc                                        ; $4599: $c1
    sbc $e0                                       ; $459a: $de $e0
    rst $28                                       ; $459c: $ef
    di                                            ; $459d: $f3
    ldh a, [$f7]                                  ; $459e: $f0 $f7
    ret c                                         ; $45a0: $d8

    add l                                         ; $45a1: $85
    adc b                                         ; $45a2: $88
    and l                                         ; $45a3: $a5
    jp $e018                                      ; $45a4: $c3 $18 $e0


    inc c                                         ; $45a7: $0c
    adc a                                         ; $45a8: $8f
    ldh [$0e], a                                  ; $45a9: $e0 $0e
    ldh a, [rTMA]                                 ; $45ab: $f0 $06
    ld h, b                                       ; $45ad: $60

jr_079_45ae:
    jr nz, jr_079_45ae                            ; $45ae: $20 $fe

    ld [c], a                                     ; $45b0: $e2
    inc de                                        ; $45b1: $13
    jp $ff9f                                      ; $45b2: $c3 $9f $ff


    add b                                         ; $45b5: $80
    ld h, b                                       ; $45b6: $60
    ld h, b                                       ; $45b7: $60
    ld a, b                                       ; $45b8: $78
    ld a, b                                       ; $45b9: $78
    ld a, h                                       ; $45ba: $7c
    ld a, h                                       ; $45bb: $7c
    ld a, [hl]                                    ; $45bc: $7e
    add c                                         ; $45bd: $81
    ld a, [hl]                                    ; $45be: $7e
    ld hl, sp+$60                                 ; $45bf: $f8 $60
    ld a, [$4961]                                 ; $45c1: $fa $61 $49
    rlca                                          ; $45c4: $07
    ld c, b                                       ; $45c5: $48
    and c                                         ; $45c6: $a1
    ld e, [hl]                                    ; $45c7: $5e
    pop hl                                        ; $45c8: $e1
    ld [hl], b                                    ; $45c9: $70
    add h                                         ; $45ca: $84
    ld a, [bc]                                    ; $45cb: $0a
    and $68                                       ; $45cc: $e6 $68
    pop hl                                        ; $45ce: $e1
    rst $38                                       ; $45cf: $ff
    inc b                                         ; $45d0: $04
    and e                                         ; $45d1: $a3
    inc hl                                        ; $45d2: $23
    ld e, h                                       ; $45d3: $5c
    ldh [$a7], a                                  ; $45d4: $e0 $a7
    rst $30                                       ; $45d6: $f7
    ld c, a                                       ; $45d7: $4f
    rst $18                                       ; $45d8: $df
    rst $28                                       ; $45d9: $ef
    sbc a                                         ; $45da: $9f
    rst $18                                       ; $45db: $df
    rra                                           ; $45dc: $1f
    cp a                                          ; $45dd: $bf
    rst $28                                       ; $45de: $ef
    add c                                         ; $45df: $81
    cp a                                          ; $45e0: $bf
    rst $38                                       ; $45e1: $ff
    ld a, a                                       ; $45e2: $7f
    ld a, a                                       ; $45e3: $7f
    rst $38                                       ; $45e4: $ff
    ld hl, sp-$05                                 ; $45e5: $f8 $fb
    db $fc                                        ; $45e7: $fc
    db $fd                                        ; $45e8: $fd
    cp $57                                        ; $45e9: $fe $57
    ld b, c                                       ; $45eb: $41
    db $fc                                        ; $45ec: $fc
    ld c, h                                       ; $45ed: $4c
    ld b, h                                       ; $45ee: $44
    jr jr_079_4595                                ; $45ef: $18 $a4

    ld a, [hl]                                    ; $45f1: $7e
    add b                                         ; $45f2: $80
    cp a                                          ; $45f3: $bf
    ret nz                                        ; $45f4: $c0

    rst $08                                       ; $45f5: $cf
    ldh a, [$f7]                                  ; $45f6: $f0 $f7
    rst $30                                       ; $45f8: $f7
    ld hl, sp-$07                                 ; $45f9: $f8 $f9
    ret nz                                        ; $45fb: $c0

    jp $a857                                      ; $45fc: $c3 $57 $a8


    xor d                                         ; $45ff: $aa
    ld d, l                                       ; $4600: $55
    ld hl, sp+$00                                 ; $4601: $f8 $00
    and c                                         ; $4603: $a1
    jr z, @+$62                                   ; $4604: $28 $60

    ld a, b                                       ; $4606: $78
    db $e4                                        ; $4607: $e4
    ldh [rIF], a                                  ; $4608: $e0 $0f
    ld b, b                                       ; $460a: $40
    xor a                                         ; $460b: $af
    and b                                         ; $460c: $a0
    rst $00                                       ; $460d: $c7
    ld c, [hl]                                    ; $460e: $4e
    ld b, b                                       ; $460f: $40
    sbc [hl]                                      ; $4610: $9e
    ret nc                                        ; $4611: $d0

    and c                                         ; $4612: $a1
    db $fc                                        ; $4613: $fc
    push hl                                       ; $4614: $e5
    and b                                         ; $4615: $a0
    add d                                         ; $4616: $82
    nop                                           ; $4617: $00
    add b                                         ; $4618: $80
    ld e, a                                       ; $4619: $5f
    add b                                         ; $461a: $80
    ret nz                                        ; $461b: $c0

    ret nz                                        ; $461c: $c0

    ret nz                                        ; $461d: $c0

    ldh [rIE], a                                  ; $461e: $e0 $ff
    ldh [$f0], a                                  ; $4620: $e0 $f0
    rst $38                                       ; $4622: $ff
    pop hl                                        ; $4623: $e1
    inc l                                         ; $4624: $2c
    db $e4                                        ; $4625: $e4
    ret nz                                        ; $4626: $c0

    ldh [rNR42], a                                ; $4627: $e0 $21
    ld a, a                                       ; $4629: $7f
    inc bc                                        ; $462a: $03
    db $fc                                        ; $462b: $fc
    ldh [$0b], a                                  ; $462c: $e0 $0b
    ld hl, sp-$20                                 ; $462e: $f8 $e0
    xor a                                         ; $4630: $af
    ld b, a                                       ; $4631: $47
    rst $30                                       ; $4632: $f7
    rst $18                                       ; $4633: $df
    rst $38                                       ; $4634: $ff
    rst $28                                       ; $4635: $ef
    sub $20                                       ; $4636: $d6 $20
    ld hl, sp+$04                                 ; $4638: $f8 $04
    push af                                       ; $463a: $f5
    add hl, bc                                    ; $463b: $09
    rst $38                                       ; $463c: $ff
    ld sp, hl                                     ; $463d: $f9
    dec b                                         ; $463e: $05
    push af                                       ; $463f: $f5
    add hl, bc                                    ; $4640: $09
    jp hl                                         ; $4641: $e9


    dec d                                         ; $4642: $15
    pop af                                        ; $4643: $f1
    dec c                                         ; $4644: $0d
    db $fc                                        ; $4645: $fc
    db $fc                                        ; $4646: $fc
    pop hl                                        ; $4647: $e1
    ld c, e                                       ; $4648: $4b
    ld b, b                                       ; $4649: $40
    sbc a                                         ; $464a: $9f
    ldh [$c7], a                                  ; $464b: $e0 $c7
    ld hl, sp-$5f                                 ; $464d: $f8 $a1
    cp $ff                                        ; $464f: $fe $ff
    ret nc                                        ; $4651: $d0

    cp $e8                                        ; $4652: $fe $e8
    cp $f4                                        ; $4654: $fe $f4
    db $fd                                        ; $4656: $fd
    ld sp, hl                                     ; $4657: $f9
    nop                                           ; $4658: $00
    rst $38                                       ; $4659: $ff
    sbc $15                                       ; $465a: $de $15
    call c, $bc29                                 ; $465c: $dc $29 $bc
    inc de                                        ; $465f: $13
    cp b                                          ; $4660: $b8
    ld l, e                                       ; $4661: $6b
    ld a, a                                       ; $4662: $7f
    ld a, b                                       ; $4663: $78
    rst $30                                       ; $4664: $f7
    ldh a, [$f7]                                  ; $4665: $f0 $f7
    ldh a, [$e7]                                  ; $4667: $f0 $e7
    add sp, -$40                                  ; $4669: $e8 $c0
    db $eb                                        ; $466b: $eb
    rst $38                                       ; $466c: $ff
    rst $30                                       ; $466d: $f7
    rst $38                                       ; $466e: $ff
    ldh a, [$f8]                                  ; $466f: $f0 $f8
    cp b                                          ; $4671: $b8

jr_079_4672:
    ld hl, sp-$28                                 ; $4672: $f8 $d8
    db $fc                                        ; $4674: $fc
    rst $38                                       ; $4675: $ff
    db $ec                                        ; $4676: $ec
    db $fc                                        ; $4677: $fc
    call c, $eefe                                 ; $4678: $dc $fe $ee
    cp $f4                                        ; $467b: $fe $f4
    cp $a3                                        ; $467d: $fe $a3
    add sp, -$04                                  ; $467f: $e8 $fc
    sbc h                                         ; $4681: $9c
    pop hl                                        ; $4682: $e1
    db $fc                                        ; $4683: $fc
    push hl                                       ; $4684: $e5
    adc h                                         ; $4685: $8c
    pop hl                                        ; $4686: $e1
    rst $28                                       ; $4687: $ef
    ld l, [hl]                                    ; $4688: $6e
    jr nz, jr_079_4672                            ; $4689: $20 $e7

    cp a                                          ; $468b: $bf
    rst $38                                       ; $468c: $ff
    rst $10                                       ; $468d: $d7
    rst $38                                       ; $468e: $ff

jr_079_468f:
    db $e3                                        ; $468f: $e3
    rst $38                                       ; $4690: $ff
    db $d3                                        ; $4691: $d3
    ld l, h                                       ; $4692: $6c
    ret nz                                        ; $4693: $c0

    pop af                                        ; $4694: $f1
    rst $38                                       ; $4695: $ff
    rst $38                                       ; $4696: $ff
    jp hl                                         ; $4697: $e9


    dec d                                         ; $4698: $15
    ret nc                                        ; $4699: $d0

    ld l, $e8                                     ; $469a: $2e $e8
    ld d, $f4                                     ; $469c: $16 $f4
    rst $38                                       ; $469e: $ff
    dec bc                                        ; $469f: $0b
    add sp, $17                                   ; $46a0: $e8 $17
    db $f4                                        ; $46a2: $f4
    dec bc                                        ; $46a3: $0b
    ld [$f515], a                                 ; $46a4: $ea $15 $f5
    rst $38                                       ; $46a7: $ff
    ld a, [bc]                                    ; $46a8: $0a
    ei                                            ; $46a9: $fb
    ei                                            ; $46aa: $fb
    rst $30                                       ; $46ab: $f7
    rst $30                                       ; $46ac: $f7
    adc a                                         ; $46ad: $8f
    adc a                                         ; $46ae: $8f
    ld a, a                                       ; $46af: $7f
    rst $38                                       ; $46b0: $ff
    ld a, a                                       ; $46b1: $7f
    ld a, $be                                     ; $46b2: $3e $be
    jr jr_079_468f                                ; $46b4: $18 $d9

    nop                                           ; $46b6: $00
    rst $20                                       ; $46b7: $e7
    nop                                           ; $46b8: $00
    rst $38                                       ; $46b9: $ff
    ld sp, hl                                     ; $46ba: $f9
    adc $d1                                       ; $46bb: $ce $d1
    rst $10                                       ; $46bd: $d7
    ret z                                         ; $46be: $c8

    adc d                                         ; $46bf: $8a
    or l                                          ; $46c0: $b5
    rlca                                          ; $46c1: $07
    pop af                                        ; $46c2: $f1
    ld a, b                                       ; $46c3: $78
    ld b, h                                       ; $46c4: $44
    ld h, c                                       ; $46c5: $61
    db $10                                        ; $46c6: $10
    add c                                         ; $46c7: $81
    sbc h                                         ; $46c8: $9c
    pop hl                                        ; $46c9: $e1
    db $eb                                        ; $46ca: $eb
    rst $38                                       ; $46cb: $ff
    ld [hl], a                                    ; $46cc: $77
    rst $38                                       ; $46cd: $ff
    rst $38                                       ; $46ce: $ff
    di                                            ; $46cf: $f3
    rst $38                                       ; $46d0: $ff
    ld a, c                                       ; $46d1: $79
    rst $38                                       ; $46d2: $ff
    ld a, [hl-]                                   ; $46d3: $3a
    rst $38                                       ; $46d4: $ff
    ld e, c                                       ; $46d5: $59
    rst $38                                       ; $46d6: $ff
    set 6, h                                      ; $46d7: $cb $f4
    db $fc                                        ; $46d9: $fc
    jp z, $f841                                   ; $46da: $ca $41 $f8

    ld e, h                                       ; $46dd: $5c
    add b                                         ; $46de: $80
    cp $e1                                        ; $46df: $fe $e1
    ld a, b                                       ; $46e1: $78
    ld hl, sp+$2f                                 ; $46e2: $f8 $2f
    ld [bc], a                                    ; $46e4: $02
    ccf                                           ; $46e5: $3f
    dec b                                         ; $46e6: $05
    ccf                                           ; $46e7: $3f
    db $fc                                        ; $46e8: $fc
    db $e3                                        ; $46e9: $e3
    ld bc, $e2fc                                  ; $46ea: $01 $fc $e2
    dec b                                         ; $46ed: $05
    inc hl                                        ; $46ee: $23
    and h                                         ; $46ef: $a4
    sub e                                         ; $46f0: $93
    ld h, c                                       ; $46f1: $61
    and b                                         ; $46f2: $a0
    jp $94e9                                      ; $46f3: $c3 $e9 $94


    ld b, c                                       ; $46f6: $41
    sub b                                         ; $46f7: $90
    ld b, b                                       ; $46f8: $40
    ld a, [$4288]                                 ; $46f9: $fa $88 $42
    db $fd                                        ; $46fc: $fd
    xor $e6                                       ; $46fd: $ee $e6
    inc b                                         ; $46ff: $04
    ld a, a                                       ; $4700: $7f
    rst $38                                       ; $4701: $ff
    ccf                                           ; $4702: $3f
    cp $e0                                        ; $4703: $fe $e0
    rra                                           ; $4705: $1f
    rst $38                                       ; $4706: $ff
    rrca                                          ; $4707: $0f
    cp b                                          ; $4708: $b8
    ld [hl], h                                    ; $4709: $74
    ld b, b                                       ; $470a: $40
    ld l, $a1                                     ; $470b: $2e $a1
    add sp, -$1b                                  ; $470d: $e8 $e5
    rst $38                                       ; $470f: $ff
    rst $38                                       ; $4710: $ff
    add b                                         ; $4711: $80
    cp d                                          ; $4712: $ba
    jr nz, @-$5e                                  ; $4713: $20 $a0

    ccf                                           ; $4715: $3f
    rst $38                                       ; $4716: $ff
    ld d, b                                       ; $4717: $50
    rst $38                                       ; $4718: $ff
    xor b                                         ; $4719: $a8
    rst $38                                       ; $471a: $ff
    call nc, $e2cc                                ; $471b: $d4 $cc $e2
    inc h                                         ; $471e: $24
    add d                                         ; $471f: $82
    rst $38                                       ; $4720: $ff
    cp a                                          ; $4721: $bf
    nop                                           ; $4722: $00
    rst $08                                       ; $4723: $cf
    nop                                           ; $4724: $00
    di                                            ; $4725: $f3
    nop                                           ; $4726: $00
    db $fc                                        ; $4727: $fc
    add b                                         ; $4728: $80
    cp a                                          ; $4729: $bf
    rst $38                                       ; $472a: $ff
    ld d, h                                       ; $472b: $54
    rst $38                                       ; $472c: $ff
    inc l                                         ; $472d: $2c
    rst $38                                       ; $472e: $ff
    dec d                                         ; $472f: $15
    db $fc                                        ; $4730: $fc
    ldh [rNR14], a                                ; $4731: $e0 $14
    ei                                            ; $4733: $fb
    rst $38                                       ; $4734: $ff
    ld a, [bc]                                    ; $4735: $0a
    inc l                                         ; $4736: $2c
    ret nz                                        ; $4737: $c0

    ld [bc], a                                    ; $4738: $02
    rra                                           ; $4739: $1f
    dec b                                         ; $473a: $05
    rst $20                                       ; $473b: $e7
    ldh a, [rIE]                                  ; $473c: $f0 $ff
    ldh a, [rSVBK]                                ; $473e: $f0 $70
    ldh a, [$b0]                                  ; $4740: $f0 $b0
    ldh a, [rLCDC]                                ; $4742: $f0 $40
    ldh [rNR41], a                                ; $4744: $e0 $20
    ld h, d                                       ; $4746: $62
    ld b, b                                       ; $4747: $40
    ld h, e                                       ; $4748: $63
    add b                                         ; $4749: $80
    ld a, b                                       ; $474a: $78
    pop hl                                        ; $474b: $e1
    ld l, h                                       ; $474c: $6c
    nop                                           ; $474d: $00
    ld b, b                                       ; $474e: $40
    ld h, b                                       ; $474f: $60
    ld bc, $3c1f                                  ; $4750: $01 $1f $3c
    ld h, b                                       ; $4753: $60
    ld [hl], l                                    ; $4754: $75
    rra                                           ; $4755: $1f
    jr c, @+$25                                   ; $4756: $38 $23

    ld d, a                                       ; $4758: $57
    jr nc, @+$22                                  ; $4759: $30 $20

    ld d, l                                       ; $475b: $55
    rst $38                                       ; $475c: $ff
    xor a                                         ; $475d: $af
    db $fc                                        ; $475e: $fc
    ldh [$f8], a                                  ; $475f: $e0 $f8
    nop                                           ; $4761: $00
    ld b, c                                       ; $4762: $41
    db $fc                                        ; $4763: $fc
    db $e3                                        ; $4764: $e3
    db $ec                                        ; $4765: $ec
    ld hl, $ff55                                  ; $4766: $21 $55 $ff
    add a                                         ; $4769: $87
    rst $38                                       ; $476a: $ff
    ld b, e                                       ; $476b: $43
    sub e                                         ; $476c: $93
    rst $38                                       ; $476d: $ff
    and c                                         ; $476e: $a1
    ld b, d                                       ; $476f: $42
    ld hl, $e28c                                  ; $4770: $21 $8c $e2
    ld d, h                                       ; $4773: $54
    db $10                                        ; $4774: $10
    ld h, $5e                                     ; $4775: $26 $5e
    pop hl                                        ; $4777: $e1
    rrca                                          ; $4778: $0f
    jp z, $a02c                                   ; $4779: $ca $2c $a0

    db $eb                                        ; $477c: $eb
    inc [hl]                                      ; $477d: $34
    and b                                         ; $477e: $a0
    ei                                            ; $477f: $fb
    ld e, h                                       ; $4780: $5c
    db $e4                                        ; $4781: $e4
    inc a                                         ; $4782: $3c
    pop hl                                        ; $4783: $e1
    ld a, [bc]                                    ; $4784: $0a
    rst $38                                       ; $4785: $ff
    push hl                                       ; $4786: $e5
    push bc                                       ; $4787: $c5
    or h                                          ; $4788: $b4
    ret nz                                        ; $4789: $c0

    ld sp, hl                                     ; $478a: $f9
    inc h                                         ; $478b: $24
    nop                                           ; $478c: $00
    inc a                                         ; $478d: $3c
    pop hl                                        ; $478e: $e1
    rra                                           ; $478f: $1f
    rst $38                                       ; $4790: $ff
    ld b, b                                       ; $4791: $40
    ld sp, $1240                                  ; $4792: $31 $40 $12
    pop bc                                        ; $4795: $c1
    db $10                                        ; $4796: $10
    jp nz, $c00e                                  ; $4797: $c2 $0e $c0

    ldh [$f0], a                                  ; $479a: $e0 $f0
    nop                                           ; $479c: $00
    nop                                           ; $479d: $00
    nop                                           ; $479e: $00
    sbc l                                         ; $479f: $9d
    ld [$fdff], sp                                ; $47a0: $08 $ff $fd

jr_079_47a3:
    jr z, jr_079_47cd                             ; $47a3: $28 $28

    jr z, jr_079_47a3                             ; $47a5: $28 $fc

    and $d3                                       ; $47a7: $e6 $d3
    db $e4                                        ; $47a9: $e4
    dec c                                         ; $47aa: $0d
    ld [hl], e                                    ; $47ab: $73
    dec c                                         ; $47ac: $0d
    dec c                                         ; $47ad: $0d
    ldh [$f8], a                                  ; $47ae: $e0 $f8
    ld [c], a                                     ; $47b0: $e2
    ldh [$0d], a                                  ; $47b1: $e0 $0d
    dec bc                                        ; $47b3: $0b
    add hl, bc                                    ; $47b4: $09
    rst $38                                       ; $47b5: $ff
    ldh [rSCY], a                                 ; $47b6: $e0 $42
    ldh [$f7], a                                  ; $47b8: $e0 $f7
    dec bc                                        ; $47ba: $0b
    ldh [$e2], a                                  ; $47bb: $e0 $e2
    rst $18                                       ; $47bd: $df
    db $e3                                        ; $47be: $e3
    and b                                         ; $47bf: $a0
    db $ed                                        ; $47c0: $ed
    and e                                         ; $47c1: $a3
    ldh [$09], a                                  ; $47c2: $e0 $09
    ret nz                                        ; $47c4: $c0

    db $e3                                        ; $47c5: $e3
    ld h, b                                       ; $47c6: $60
    ldh [$f2], a                                  ; $47c7: $e0 $f2
    and d                                         ; $47c9: $a2
    pop hl                                        ; $47ca: $e1
    and b                                         ; $47cb: $a0
    db $e4                                        ; $47cc: $e4

jr_079_47cd:
    ret nz                                        ; $47cd: $c0

    ldh a, [$84]                                  ; $47ce: $f0 $84
    pop hl                                        ; $47d0: $e1
    add hl, bc                                    ; $47d1: $09
    add hl, bc                                    ; $47d2: $09
    ei                                            ; $47d3: $fb
    ld [c], a                                     ; $47d4: $e2
    inc l                                         ; $47d5: $2c
    and b                                         ; $47d6: $a0
    pop af                                        ; $47d7: $f1
    jp Jump_000_09e2                              ; $47d8: $c3 $e2 $09


    dec bc                                        ; $47db: $0b
    ld b, b                                       ; $47dc: $40
    ldh [$0a], a                                  ; $47dd: $e0 $0a
    db $db                                        ; $47df: $db
    pop hl                                        ; $47e0: $e1
    ldh [$f4], a                                  ; $47e1: $e0 $f4
    ld c, $c0                                     ; $47e3: $0e $c0
    ldh [$0a], a                                  ; $47e5: $e0 $0a
    ld a, [bc]                                    ; $47e7: $0a
    ld a, [bc]                                    ; $47e8: $0a
    cp b                                          ; $47e9: $b8
    ldh [$c0], a                                  ; $47ea: $e0 $c0
    di                                            ; $47ec: $f3
    pop bc                                        ; $47ed: $c1
    ld [c], a                                     ; $47ee: $e2
    rst $38                                       ; $47ef: $ff
    pop hl                                        ; $47f0: $e1
    ld l, $c0                                     ; $47f1: $2e $c0
    rst $28                                       ; $47f3: $ef
    ld [$0f0f], sp                                ; $47f4: $08 $0f $0f
    ld h, b                                       ; $47f7: $60
    db $e3                                        ; $47f8: $e3
    inc c                                         ; $47f9: $0c
    cp l                                          ; $47fa: $bd
    pop hl                                        ; $47fb: $e1
    ret nz                                        ; $47fc: $c0

    ret nc                                        ; $47fd: $d0

    rlca                                          ; $47fe: $07
    rrca                                          ; $47ff: $0f
    ld c, $0e                                     ; $4800: $0e $0e
    ldh [$e5], a                                  ; $4802: $e0 $e5
    cp l                                          ; $4804: $bd
    push bc                                       ; $4805: $c5
    ld b, b                                       ; $4806: $40
    xor $fc                                       ; $4807: $ee $fc
    db $e4                                        ; $4809: $e4
    add b                                         ; $480a: $80
    db $d3                                        ; $480b: $d3
    inc c                                         ; $480c: $0c
    ldh [rIE], a                                  ; $480d: $e0 $ff
    ld h, e                                       ; $480f: $63
    ret nz                                        ; $4810: $c0

    ld c, $0f                                     ; $4811: $0e $0f
    sbc d                                         ; $4813: $9a
    ldh [$e0], a                                  ; $4814: $e0 $e0
    rst $38                                       ; $4816: $ff
    and b                                         ; $4817: $a0
    rst $38                                       ; $4818: $ff
    add b                                         ; $4819: $80
    sub $1c                                       ; $481a: $d6 $1c
    cp $aa                                        ; $481c: $fe $aa
    rst $38                                       ; $481e: $ff
    rst $38                                       ; $481f: $ff
    ld [$4808], sp                                ; $4820: $08 $08 $48
    rst $38                                       ; $4823: $ff
    ldh [$da], a                                  ; $4824: $e0 $da
    rst $38                                       ; $4826: $ff
    rst $38                                       ; $4827: $ff
    rst $38                                       ; $4828: $ff
    nop                                           ; $4829: $00
    rst $38                                       ; $482a: $ff
    rst $38                                       ; $482b: $ff
    rst $38                                       ; $482c: $ff
    rst $38                                       ; $482d: $ff
    rst $38                                       ; $482e: $ff
    rst $38                                       ; $482f: $ff
    rst $38                                       ; $4830: $ff
    rst $38                                       ; $4831: $ff
    rst $38                                       ; $4832: $ff
    rst $38                                       ; $4833: $ff
    rst $38                                       ; $4834: $ff
    rst $38                                       ; $4835: $ff
    rst $38                                       ; $4836: $ff
    rst $38                                       ; $4837: $ff
    rst $38                                       ; $4838: $ff
    rst $38                                       ; $4839: $ff
    nop                                           ; $483a: $00
    rst $38                                       ; $483b: $ff
    rst $38                                       ; $483c: $ff
    rra                                           ; $483d: $1f
    sbc h                                         ; $483e: $9c
    nop                                           ; $483f: $00
    nop                                           ; $4840: $00
    nop                                           ; $4841: $00
    cp c                                          ; $4842: $b9
    nop                                           ; $4843: $00
    rst $38                                       ; $4844: $ff
    rst $38                                       ; $4845: $ff
    rst $28                                       ; $4846: $ef
    xor $01                                       ; $4847: $ee $01
    ld [bc], a                                    ; $4849: $02
    inc bc                                        ; $484a: $03
    db $db                                        ; $484b: $db
    ld hl, sp+$04                                 ; $484c: $f8 $04
    rst $38                                       ; $484e: $ff
    dec b                                         ; $484f: $05
    ld b, $07                                     ; $4850: $06 $07
    ld [$0a09], sp                                ; $4852: $08 $09 $0a
    dec bc                                        ; $4855: $0b
    inc c                                         ; $4856: $0c
    cp $b7                                        ; $4857: $fe $b7
    db $f4                                        ; $4859: $f4
    dec c                                         ; $485a: $0d
    ld c, $0f                                     ; $485b: $0e $0f
    db $10                                        ; $485d: $10
    ld de, $1212                                  ; $485e: $11 $12 $12
    rst $30                                       ; $4861: $f7
    inc de                                        ; $4862: $13
    inc d                                         ; $4863: $14
    dec d                                         ; $4864: $15
    sub [hl]                                      ; $4865: $96
    di                                            ; $4866: $f3
    ld d, $17                                     ; $4867: $16 $17
    jr jr_079_4884                                ; $4869: $18 $19

    cp a                                          ; $486b: $bf
    ld a, [de]                                    ; $486c: $1a
    dec de                                        ; $486d: $1b
    inc e                                         ; $486e: $1c
    dec e                                         ; $486f: $1d
    ld e, $1f                                     ; $4870: $1e $1f
    and d                                         ; $4872: $a2
    ld a, [c]                                     ; $4873: $f2
    jr nz, @+$01                                  ; $4874: $20 $ff

    ld hl, $2322                                  ; $4876: $21 $22 $23
    inc h                                         ; $4879: $24

jr_079_487a:
    dec h                                         ; $487a: $25
    ld h, $27                                     ; $487b: $26 $27
    jr z, jr_079_487a                             ; $487d: $28 $fb

    add hl, hl                                    ; $487f: $29
    ld a, [hl+]                                   ; $4880: $2a
    ld d, [hl]                                    ; $4881: $56
    rst $28                                       ; $4882: $ef
    dec hl                                        ; $4883: $2b

jr_079_4884:
    inc l                                         ; $4884: $2c
    dec l                                         ; $4885: $2d
    ld [de], a                                    ; $4886: $12
    ld l, $ff                                     ; $4887: $2e $ff
    cpl                                           ; $4889: $2f
    jr nc, jr_079_48bd                            ; $488a: $30 $31

    ld [hl-], a                                   ; $488c: $32
    inc sp                                        ; $488d: $33
    inc [hl]                                      ; $488e: $34
    dec [hl]                                      ; $488f: $35
    ld [hl], $fd                                  ; $4890: $36 $fd
    scf                                           ; $4892: $37
    ld [hl], $ee                                  ; $4893: $36 $ee
    jr c, jr_079_48d0                             ; $4895: $38 $39

    ld [de], a                                    ; $4897: $12
    ld [de], a                                    ; $4898: $12
    ld a, [hl-]                                   ; $4899: $3a
    dec sp                                        ; $489a: $3b
    rst $38                                       ; $489b: $ff
    inc a                                         ; $489c: $3c
    dec a                                         ; $489d: $3d
    ld a, $3f                                     ; $489e: $3e $3f
    ld b, b                                       ; $48a0: $40
    ld b, c                                       ; $48a1: $41
    ld [de], a                                    ; $48a2: $12
    ld [de], a                                    ; $48a3: $12
    db $fd                                        ; $48a4: $fd
    ld b, d                                       ; $48a5: $42
    ld d, $ee                                     ; $48a6: $16 $ee
    ld b, e                                       ; $48a8: $43
    ld b, h                                       ; $48a9: $44
    ld b, l                                       ; $48aa: $45
    ld b, [hl]                                    ; $48ab: $46
    ld b, a                                       ; $48ac: $47
    ld c, b                                       ; $48ad: $48
    rst $38                                       ; $48ae: $ff
    ld c, c                                       ; $48af: $49
    ld c, d                                       ; $48b0: $4a
    ld c, e                                       ; $48b1: $4b
    ld c, h                                       ; $48b2: $4c
    ld c, l                                       ; $48b3: $4d
    ld c, [hl]                                    ; $48b4: $4e
    ld [de], a                                    ; $48b5: $12
    ld b, c                                       ; $48b6: $41
    db $fd                                        ; $48b7: $fd
    ld c, a                                       ; $48b8: $4f
    or $cf                                        ; $48b9: $f6 $cf
    ld d, b                                       ; $48bb: $50
    ld d, c                                       ; $48bc: $51

jr_079_48bd:
    ld d, d                                       ; $48bd: $52
    ld d, e                                       ; $48be: $53
    ld d, h                                       ; $48bf: $54
    ld d, l                                       ; $48c0: $55
    rst $38                                       ; $48c1: $ff
    ld [de], a                                    ; $48c2: $12
    ld d, [hl]                                    ; $48c3: $56
    ld d, a                                       ; $48c4: $57
    ld e, b                                       ; $48c5: $58
    ld e, c                                       ; $48c6: $59
    ld e, d                                       ; $48c7: $5a
    ld e, e                                       ; $48c8: $5b
    ld e, h                                       ; $48c9: $5c
    cp $d6                                        ; $48ca: $fe $d6
    rst $08                                       ; $48cc: $cf
    ld e, l                                       ; $48cd: $5d
    ld e, [hl]                                    ; $48ce: $5e
    ld e, a                                       ; $48cf: $5f

jr_079_48d0:
    ld h, b                                       ; $48d0: $60
    ld h, c                                       ; $48d1: $61
    ld h, d                                       ; $48d2: $62
    ld h, e                                       ; $48d3: $63
    cp a                                          ; $48d4: $bf
    ld h, h                                       ; $48d5: $64
    ld h, l                                       ; $48d6: $65
    ld [de], a                                    ; $48d7: $12
    ld h, [hl]                                    ; $48d8: $66
    ld h, a                                       ; $48d9: $67
    ld l, b                                       ; $48da: $68
    or a                                          ; $48db: $b7
    ret nc                                        ; $48dc: $d0

    ld l, c                                       ; $48dd: $69
    rst $38                                       ; $48de: $ff
    ld l, d                                       ; $48df: $6a
    ld l, e                                       ; $48e0: $6b
    ld sp, $6d6c                                  ; $48e1: $31 $6c $6d
    ld [de], a                                    ; $48e4: $12
    ld l, [hl]                                    ; $48e5: $6e
    ld l, a                                       ; $48e6: $6f
    rst $30                                       ; $48e7: $f7
    ld [de], a                                    ; $48e8: $12
    ld [hl], b                                    ; $48e9: $70
    ld [hl], c                                    ; $48ea: $71
    sbc b                                         ; $48eb: $98
    pop de                                        ; $48ec: $d1
    ld [hl], d                                    ; $48ed: $72
    ld [hl], e                                    ; $48ee: $73
    ld [hl], h                                    ; $48ef: $74
    ld [hl], l                                    ; $48f0: $75
    ld a, a                                       ; $48f1: $7f
    halt                                          ; $48f2: $76
    ld [hl], a                                    ; $48f3: $77
    ld a, b                                       ; $48f4: $78
    ld [de], a                                    ; $48f5: $12
    ld a, c                                       ; $48f6: $79
    ld a, d                                       ; $48f7: $7a
    ld a, e                                       ; $48f8: $7b
    ld a, c                                       ; $48f9: $79
    db $d3                                        ; $48fa: $d3
    rst $38                                       ; $48fb: $ff
    ld a, h                                       ; $48fc: $7c
    ld a, l                                       ; $48fd: $7d
    ld a, [hl]                                    ; $48fe: $7e
    ld sp, $807f                                  ; $48ff: $31 $7f $80
    add c                                         ; $4902: $81
    add d                                         ; $4903: $82
    ei                                            ; $4904: $fb
    add e                                         ; $4905: $83
    add h                                         ; $4906: $84
    ld e, c                                       ; $4907: $59
    call nc, Call_000_3185                        ; $4908: $d4 $85 $31
    add [hl]                                      ; $490b: $86
    ld sp, $ef87                                  ; $490c: $31 $87 $ef
    adc b                                         ; $490f: $88
    adc c                                         ; $4910: $89
    adc d                                         ; $4911: $8a
    adc e                                         ; $4912: $8b
    add hl, sp                                    ; $4913: $39
    call nc, Call_000_318c                        ; $4914: $d4 $8c $31
    adc l                                         ; $4917: $8d
    cp a                                          ; $4918: $bf
    ld sp, $8f8e                                  ; $4919: $31 $8e $8f
    sub b                                         ; $491c: $90
    sub c                                         ; $491d: $91
    sub d                                         ; $491e: $92
    add hl, de                                    ; $491f: $19
    call nc, $ff93                                ; $4920: $d4 $93 $ff
    sub h                                         ; $4923: $94
    sub l                                         ; $4924: $95
    sub [hl]                                      ; $4925: $96
    sub a                                         ; $4926: $97
    sbc b                                         ; $4927: $98
    sbc c                                         ; $4928: $99
    sbc d                                         ; $4929: $9a
    sbc e                                         ; $492a: $9b
    cp $f9                                        ; $492b: $fe $f9
    or h                                          ; $492d: $b4
    sbc h                                         ; $492e: $9c
    sbc l                                         ; $492f: $9d
    sbc [hl]                                      ; $4930: $9e
    sbc a                                         ; $4931: $9f
    and b                                         ; $4932: $a0
    ld sp, $03a1                                  ; $4933: $31 $a1 $03
    and d                                         ; $4936: $a2
    and e                                         ; $4937: $a3
    reti                                          ; $4938: $d9


    cp a                                          ; $4939: $bf
    rst $38                                       ; $493a: $ff
    rst $38                                       ; $493b: $ff
    rst $38                                       ; $493c: $ff
    rst $38                                       ; $493d: $ff
    rst $38                                       ; $493e: $ff
    rst $38                                       ; $493f: $ff
    rst $38                                       ; $4940: $ff
    rst $38                                       ; $4941: $ff
    rst $38                                       ; $4942: $ff
    rst $38                                       ; $4943: $ff
    nop                                           ; $4944: $00
    rst $38                                       ; $4945: $ff
    rst $38                                       ; $4946: $ff
    rst $38                                       ; $4947: $ff
    rst $38                                       ; $4948: $ff
    rst $38                                       ; $4949: $ff
    rst $38                                       ; $494a: $ff
    rst $38                                       ; $494b: $ff
    rst $38                                       ; $494c: $ff
    rst $38                                       ; $494d: $ff
    rst $38                                       ; $494e: $ff
    rst $38                                       ; $494f: $ff
    rst $38                                       ; $4950: $ff
    rst $38                                       ; $4951: $ff
    rst $38                                       ; $4952: $ff
    rst $38                                       ; $4953: $ff
    ld [$0000], a                                 ; $4954: $ea $00 $00
    nop                                           ; $4957: $00
    ld h, b                                       ; $4958: $60
    ld c, c                                       ; $4959: $49
    and b                                         ; $495a: $a0
    ld c, c                                       ; $495b: $49
    jr c, @+$52                                   ; $495c: $38 $50

    call z, TimerOverflowInterrupt                ; $495e: $cc $50 $00
    nop                                           ; $4961: $00
    rst $28                                       ; $4962: $ef
    ld b, l                                       ; $4963: $45
    rst $38                                       ; $4964: $ff
    ld a, a                                       ; $4965: $7f
    rst $38                                       ; $4966: $ff
    ld bc, $0000                                  ; $4967: $01 $00 $00
    ccf                                           ; $496a: $3f
    ld b, a                                       ; $496b: $47
    nop                                           ; $496c: $00
    ld c, e                                       ; $496d: $4b
    rst $38                                       ; $496e: $ff
    ld a, a                                       ; $496f: $7f
    nop                                           ; $4970: $00
    nop                                           ; $4971: $00
    rst $38                                       ; $4972: $ff
    inc de                                        ; $4973: $13
    nop                                           ; $4974: $00
    ld c, e                                       ; $4975: $4b
    rst $38                                       ; $4976: $ff
    ld bc, $0000                                  ; $4977: $01 $00 $00
    adc $00                                       ; $497a: $ce $00
    ccf                                           ; $497c: $3f
    ld b, a                                       ; $497d: $47
    nop                                           ; $497e: $00
    ld c, e                                       ; $497f: $4b
    nop                                           ; $4980: $00
    nop                                           ; $4981: $00
    rst $38                                       ; $4982: $ff
    ld a, a                                       ; $4983: $7f
    adc $00                                       ; $4984: $ce $00
    rst $38                                       ; $4986: $ff
    inc de                                        ; $4987: $13
    nop                                           ; $4988: $00
    nop                                           ; $4989: $00
    ccf                                           ; $498a: $3f
    ld b, a                                       ; $498b: $47
    rst $38                                       ; $498c: $ff
    ld bc, $13ff                                  ; $498d: $01 $ff $13
    nop                                           ; $4990: $00
    nop                                           ; $4991: $00
    ccf                                           ; $4992: $3f
    ld b, a                                       ; $4993: $47
    rst $38                                       ; $4994: $ff
    ld bc, $4b00                                  ; $4995: $01 $00 $4b
    nop                                           ; $4998: $00
    nop                                           ; $4999: $00
    rst $38                                       ; $499a: $ff
    ld bc, $00ce                                  ; $499b: $01 $ce $00
    nop                                           ; $499e: $00
    ld c, e                                       ; $499f: $4b
    ei                                            ; $49a0: $fb
    nop                                           ; $49a1: $00
    rst $38                                       ; $49a2: $ff
    cp $f4                                        ; $49a3: $fe $f4
    ldh a, [rIF]                                  ; $49a5: $f0 $0f
    rst $28                                       ; $49a7: $ef
    dec e                                         ; $49a8: $1d
    db $dd                                        ; $49a9: $dd
    ei                                            ; $49aa: $fb
    dec sp                                        ; $49ab: $3b
    cp e                                          ; $49ac: $bb
    ldh [$e6], a                                  ; $49ad: $e0 $e6
    ld a, a                                       ; $49af: $7f
    add b                                         ; $49b0: $80
    cp a                                          ; $49b1: $bf

jr_079_49b2:
    ret nz                                        ; $49b2: $c0

    rst $18                                       ; $49b3: $df
    rst $30                                       ; $49b4: $f7
    ldh [$ef], a                                  ; $49b5: $e0 $ef
    rst $38                                       ; $49b7: $ff
    rst $38                                       ; $49b8: $ff
    ld [c], a                                     ; $49b9: $e2
    cp $fe                                        ; $49ba: $fe $fe
    db $fd                                        ; $49bc: $fd
    db $fc                                        ; $49bd: $fc
    rst $38                                       ; $49be: $ff
    ei                                            ; $49bf: $fb
    ld hl, sp-$09                                 ; $49c0: $f8 $f7
    ldh a, [$f6]                                  ; $49c2: $f0 $f6
    pop af                                        ; $49c4: $f1
    rst $38                                       ; $49c5: $ff
    rst $38                                       ; $49c6: $ff
    or a                                          ; $49c7: $b7
    pop bc                                        ; $49c8: $c1
    pop bc                                        ; $49c9: $c1
    ld a, $bb                                     ; $49ca: $3e $bb
    ld [c], a                                     ; $49cc: $e2
    cp a                                          ; $49cd: $bf
    ld b, b                                       ; $49ce: $40
    db $dd                                        ; $49cf: $dd
    ldh [rLCDC], a                                ; $49d0: $e0 $40
    cp [hl]                                       ; $49d2: $be
    ldh [$e1], a                                  ; $49d3: $e0 $e1
    ld a, a                                       ; $49d5: $7f
    ld a, a                                       ; $49d6: $7f
    and c                                         ; $49d7: $a1
    ld hl, $a7de                                  ; $49d8: $21 $de $a7
    ldh [$ef], a                                  ; $49db: $e0 $ef
    rst $20                                       ; $49dd: $e7
    db $10                                        ; $49de: $10
    rst $18                                       ; $49df: $df
    jr nz, jr_079_49b2                            ; $49e0: $20 $d0

    db $e3                                        ; $49e2: $e3
    ld [$bfe3], a                                 ; $49e3: $ea $e3 $bf
    ccf                                           ; $49e6: $3f
    rst $18                                       ; $49e7: $df
    pop af                                        ; $49e8: $f1
    rra                                           ; $49e9: $1f
    ldh a, [$e7]                                  ; $49ea: $f0 $e7
    or [hl]                                       ; $49ec: $b6
    db $e3                                        ; $49ed: $e3
    add b                                         ; $49ee: $80
    ldh [$fe], a                                  ; $49ef: $e0 $fe
    ld bc, $01fd                                  ; $49f1: $01 $fd $01
    rst $30                                       ; $49f4: $f7
    db $fd                                        ; $49f5: $fd
    inc bc                                        ; $49f6: $03
    ei                                            ; $49f7: $fb
    cp $e3                                        ; $49f8: $fe $e3
    ld b, $71                                     ; $49fa: $06 $71
    dec c                                         ; $49fc: $0d
    ld [c], a                                     ; $49fd: $e2
    rst $38                                       ; $49fe: $ff
    ld e, $c1                                     ; $49ff: $1e $c1
    dec a                                         ; $4a01: $3d
    add d                                         ; $4a02: $82
    ld a, [hl-]                                   ; $4a03: $3a
    add l                                         ; $4a04: $85
    ld [hl], l                                    ; $4a05: $75
    ld a, [bc]                                    ; $4a06: $0a
    rst $38                                       ; $4a07: $ff
    ld l, d                                       ; $4a08: $6a
    dec d                                         ; $4a09: $15
    ld d, h                                       ; $4a0a: $54
    dec hl                                        ; $4a0b: $2b
    ldh [$ef], a                                  ; $4a0c: $e0 $ef
    ldh a, [$f7]                                  ; $4a0e: $f0 $f7
    cp $fe                                        ; $4a10: $fe $fe
    push hl                                       ; $4a12: $e5
    ldh [$ef], a                                  ; $4a13: $e0 $ef
    ldh [$ef], a                                  ; $4a15: $e0 $ef
    db $ec                                        ; $4a17: $ec
    db $e3                                        ; $4a18: $e3
    db $ec                                        ; $4a19: $ec
    rst $38                                       ; $4a1a: $ff
    db $e3                                        ; $4a1b: $e3
    jp hl                                         ; $4a1c: $e9


    and $d8                                       ; $4a1d: $e6 $d8
    rst $00                                       ; $4a1f: $c7
    reti                                          ; $4a20: $d9


    add $db                                       ; $4a21: $c6 $db
    ld a, a                                       ; $4a23: $7f
    call nz, $c0de                                ; $4a24: $c4 $de $c0
    ldh [$e1], a                                  ; $4a27: $e0 $e1
    ld a, a                                       ; $4a29: $7f
    add b                                         ; $4a2a: $80
    ld h, l                                       ; $4a2b: $65
    pop hl                                        ; $4a2c: $e1
    cp $51                                        ; $4a2d: $fe $51
    ldh [rP1], a                                  ; $4a2f: $e0 $00
    ret nz                                        ; $4a31: $c0

    rrca                                          ; $4a32: $0f
    nop                                           ; $4a33: $00
    ccf                                           ; $4a34: $3f
    nop                                           ; $4a35: $00
    rst $38                                       ; $4a36: $ff
    rst $38                                       ; $4a37: $ff
    xor l                                         ; $4a38: $ad
    ld d, d                                       ; $4a39: $52
    dec de                                        ; $4a3a: $1b
    db $e4                                        ; $4a3b: $e4
    ccf                                           ; $4a3c: $3f
    ret nz                                        ; $4a3d: $c0

    nop                                           ; $4a3e: $00
    nop                                           ; $4a3f: $00
    xor $28                                       ; $4a40: $ee $28
    push hl                                       ; $4a42: $e5
    pop hl                                        ; $4a43: $e1
    ld bc, $1dfe                                  ; $4a44: $01 $fe $1d
    ld [c], a                                     ; $4a47: $e2
    ccf                                           ; $4a48: $3f
    nop                                           ; $4a49: $00
    rra                                           ; $4a4a: $1f
    rst $38                                       ; $4a4b: $ff
    ret nz                                        ; $4a4c: $c0

    rrca                                          ; $4a4d: $0f
    ldh [rTAC], a                                 ; $4a4e: $e0 $07
    ldh a, [rIE]                                  ; $4a50: $f0 $ff
    rst $38                                       ; $4a52: $ff
    ccf                                           ; $4a53: $3f
    ccf                                           ; $4a54: $3f
    ccf                                           ; $4a55: $3f
    rst $08                                       ; $4a56: $cf
    rrca                                          ; $4a57: $0f
    rst $30                                       ; $4a58: $f7
    rlca                                          ; $4a59: $07
    ld sp, hl                                     ; $4a5a: $f9
    add sp, -$1c                                  ; $4a5b: $e8 $e4
    ld [hl], b                                    ; $4a5d: $70
    jp hl                                         ; $4a5e: $e9


    ld a, b                                       ; $4a5f: $78
    ld e, [hl]                                    ; $4a60: $5e
    pop hl                                        ; $4a61: $e1
    ld a, b                                       ; $4a62: $78
    pop hl                                        ; $4a63: $e1
    ld [hl], b                                    ; $4a64: $70
    pop hl                                        ; $4a65: $e1
    ld bc, $00fd                                  ; $4a66: $01 $fd $00

jr_079_4a69:
    cp $fe                                        ; $4a69: $fe $fe
    pop hl                                        ; $4a6b: $e1
    rst $38                                       ; $4a6c: $ff
    ld a, a                                       ; $4a6d: $7f
    ld a, a                                       ; $4a6e: $7f
    rst $38                                       ; $4a6f: $ff
    rst $38                                       ; $4a70: $ff
    ld hl, sp-$08                                 ; $4a71: $f8 $f8
    ldh [$e7], a                                  ; $4a73: $e0 $e7
    dec sp                                        ; $4a75: $3b
    ret nz                                        ; $4a76: $c0

jr_079_4a77:
    rst $18                                       ; $4a77: $df
    and d                                         ; $4a78: $a2
    ldh [$3f], a                                  ; $4a79: $e0 $3f
    ret nz                                        ; $4a7b: $c0

    rst $18                                       ; $4a7c: $df
    ld hl, sp-$1e                                 ; $4a7d: $f8 $e2
    call z, Call_079_7ac8                         ; $4a7f: $cc $c8 $7a
    jr nz, jr_079_4a69                            ; $4a82: $20 $e5

    cp $ff                                        ; $4a84: $fe $ff
    ldh [$fc], a                                  ; $4a86: $e0 $fc
    db $fd                                        ; $4a88: $fd
    db $fc                                        ; $4a89: $fc
    db $fd                                        ; $4a8a: $fd
    or b                                          ; $4a8b: $b0
    ret nz                                        ; $4a8c: $c0

    rla                                           ; $4a8d: $17
    ld hl, sp+$00                                 ; $4a8e: $f8 $00
    or $aa                                        ; $4a90: $f6 $aa
    call nz, $69fe                                ; $4a92: $c4 $fe $69
    ldh [$c4], a                                  ; $4a95: $e0 $c4
    jp nz, $c29a                                  ; $4a97: $c2 $9a $c2

    cp $6a                                        ; $4a9a: $fe $6a
    pop hl                                        ; $4a9c: $e1
    nop                                           ; $4a9d: $00
    inc bc                                        ; $4a9e: $03
    ld hl, sp+$01                                 ; $4a9f: $f8 $01
    db $fc                                        ; $4aa1: $fc
    ld bc, $fbfc                                  ; $4aa2: $01 $fc $fb
    inc bc                                        ; $4aa5: $03
    ld hl, sp-$02                                 ; $4aa6: $f8 $fe
    ldh [$78], a                                  ; $4aa8: $e0 $78
    inc bc                                        ; $4aaa: $03
    jr c, jr_079_4aae                             ; $4aab: $38 $01

    inc c                                         ; $4aad: $0c

jr_079_4aae:
    ld l, [hl]                                    ; $4aae: $6e
    add c                                         ; $4aaf: $81
    call Call_000_1fdf                            ; $4ab0: $cd $df $1f
    rst $28                                       ; $4ab3: $ef
    ld h, d                                       ; $4ab4: $62
    ldh [$fb], a                                  ; $4ab5: $e0 $fb
    inc bc                                        ; $4ab7: $03
    ld a, l                                       ; $4ab8: $7d
    pop hl                                        ; $4ab9: $e1
    cp $7f                                        ; $4aba: $fe $7f
    pop hl                                        ; $4abc: $e1
    ld b, b                                       ; $4abd: $40
    ld e, a                                       ; $4abe: $5f
    ld b, b                                       ; $4abf: $40
    ld e, a                                       ; $4ac0: $5f
    ld h, b                                       ; $4ac1: $60
    ld l, a                                       ; $4ac2: $6f
    jr nz, @+$01                                  ; $4ac3: $20 $ff

    xor a                                         ; $4ac5: $af
    jr nz, jr_079_4a77                            ; $4ac6: $20 $af

    jr nc, @-$47                                  ; $4ac8: $30 $b7

    db $10                                        ; $4aca: $10
    rst $10                                       ; $4acb: $d7
    db $10                                        ; $4acc: $10
    db $db                                        ; $4acd: $db
    rst $10                                       ; $4ace: $d7
    nop                                           ; $4acf: $00
    add $e1                                       ; $4ad0: $c6 $e1
    ldh a, [rTAC]                                 ; $4ad2: $f0 $07
    cp $e2                                        ; $4ad4: $fe $e2
    ld bc, $8bf0                                  ; $4ad6: $01 $f0 $8b
    nop                                           ; $4ad9: $00
    ldh [rSTAT], a                                ; $4ada: $e0 $41
    pop bc                                        ; $4adc: $c1
    db $fc                                        ; $4add: $fc
    adc l                                         ; $4ade: $8d
    ldh [$f5], a                                  ; $4adf: $e0 $f5
    ldh [$9f], a                                  ; $4ae1: $e0 $9f
    ld [c], a                                     ; $4ae3: $e2
    ret nz                                        ; $4ae4: $c0

    adc a                                         ; $4ae5: $8f

jr_079_4ae6:
    nop                                           ; $4ae6: $00
    jr nc, jr_079_4b19                            ; $4ae7: $30 $30

    ldh a, [rIE]                                  ; $4ae9: $f0 $ff
    add sp, -$74                                  ; $4aeb: $e8 $8c
    pop hl                                        ; $4aed: $e1

jr_079_4aee:
    db $fc                                        ; $4aee: $fc
    rst $20                                       ; $4aef: $e7
    ld bc, $fe9c                                  ; $4af0: $01 $9c $fe

jr_079_4af3:
    ldh [$ee], a                                  ; $4af3: $e0 $ee
    db $e4                                        ; $4af5: $e4
    jr c, jr_079_4af8                             ; $4af6: $38 $00

jr_079_4af8:
    ld a, [hl]                                    ; $4af8: $7e
    ld bc, $e4e2                                  ; $4af9: $01 $e2 $e4
    jp $dd00                                      ; $4afc: $c3 $00 $dd


    rlca                                          ; $4aff: $07
    and $e1                                       ; $4b00: $e6 $e1
    add b                                         ; $4b02: $80
    nop                                           ; $4b03: $00

jr_079_4b04:
    ret nz                                        ; $4b04: $c0

    pop af                                        ; $4b05: $f1
    xor e                                         ; $4b06: $ab
    ccf                                           ; $4b07: $3f
    nop                                           ; $4b08: $00
    db $ed                                        ; $4b09: $ed
    ld a, a                                       ; $4b0a: $7f
    rst $38                                       ; $4b0b: $ff
    ld [c], a                                     ; $4b0c: $e2
    cp a                                          ; $4b0d: $bf
    ccf                                           ; $4b0e: $3f
    cp $e5                                        ; $4b0f: $fe $e5
    jr jr_079_4aee                                ; $4b11: $18 $db

    jr @+$01                                      ; $4b13: $18 $ff

    db $db                                        ; $4b15: $db
    ld [$0ceb], sp                                ; $4b16: $08 $eb $0c

jr_079_4b19:
    db $ed                                        ; $4b19: $ed
    inc c                                         ; $4b1a: $0c
    db $ed                                        ; $4b1b: $ed
    inc b                                         ; $4b1c: $04
    cpl                                           ; $4b1d: $2f
    push af                                       ; $4b1e: $f5

jr_079_4b1f:
    ld b, $f6                                     ; $4b1f: $06 $f6
    ld b, $16                                     ; $4b21: $06 $16
    rst $20                                       ; $4b23: $e7
    cp $79                                        ; $4b24: $fe $79
    ldh [$fe], a                                  ; $4b26: $e0 $fe
    ldh [$df], a                                  ; $4b28: $e0 $df
    jr jr_079_4b04                                ; $4b2a: $18 $d8

    jr c, jr_079_4ae6                             ; $4b2c: $38 $b8

    jr c, @+$01                                   ; $4b2e: $38 $ff

    ldh [$39], a                                  ; $4b30: $e0 $39
    jr c, jr_079_4af3                             ; $4b32: $38 $bf

    inc sp                                        ; $4b34: $33
    ld sp, $3033                                  ; $4b35: $31 $33 $30
    inc sp                                        ; $4b38: $33
    jr nc, jr_079_4b47                            ; $4b39: $30 $0c

    pop hl                                        ; $4b3b: $e1
    ldh [$3f], a                                  ; $4b3c: $e0 $3f
    nop                                           ; $4b3e: $00
    inc a                                         ; $4b3f: $3c
    nop                                           ; $4b40: $00
    rst $18                                       ; $4b41: $df
    nop                                           ; $4b42: $00
    rst $38                                       ; $4b43: $ff
    ld d, [hl]                                    ; $4b44: $56
    ret nz                                        ; $4b45: $c0

    xor c                                         ; $4b46: $a9

jr_079_4b47:
    and b                                         ; $4b47: $a0
    xor [hl]                                      ; $4b48: $ae
    ld h, e                                       ; $4b49: $63
    ld [c], a                                     ; $4b4a: $e2
    ld [hl], b                                    ; $4b4b: $70
    ld [hl], b                                    ; $4b4c: $70
    add c                                         ; $4b4d: $81
    add a                                         ; $4b4e: $87
    and h                                         ; $4b4f: $a4
    inc bc                                        ; $4b50: $03
    add [hl]                                      ; $4b51: $86
    ldh [rIF], a                                  ; $4b52: $e0 $0f
    ldh a, [$df]                                  ; $4b54: $f0 $df
    call nz, $a975                                ; $4b56: $c4 $75 $a9
    add e                                         ; $4b59: $83
    jp nz, $a063                                  ; $4b5a: $c2 $63 $a0

    jr jr_079_4b1f                                ; $4b5d: $18 $c0

    ld e, $c0                                     ; $4b5f: $1e $c0
    ei                                            ; $4b61: $fb
    ccf                                           ; $4b62: $3f
    add b                                         ; $4b63: $80
    cp a                                          ; $4b64: $bf
    pop bc                                        ; $4b65: $c1
    cp $00                                        ; $4b66: $fe $00
    ld sp, hl                                     ; $4b68: $f9
    nop                                           ; $4b69: $00
    ld [bc], a                                    ; $4b6a: $02
    rst $28                                       ; $4b6b: $ef
    dec b                                         ; $4b6c: $05
    nop                                           ; $4b6d: $00
    ld de, $520e                                  ; $4b6e: $11 $0e $52
    ldh [$3c], a                                  ; $4b71: $e0 $3c
    add b                                         ; $4b73: $80
    ld a, e                                       ; $4b74: $7b
    dec de                                        ; $4b75: $1b
    nop                                           ; $4b76: $00
    rst $30                                       ; $4b77: $f7
    cp $e0                                        ; $4b78: $fe $e0
    add sp, $00                                   ; $4b7a: $e8 $00
    ld h, a                                       ; $4b7c: $67
    ldh [$64], a                                  ; $4b7d: $e0 $64
    ldh [$ca], a                                  ; $4b7f: $e0 $ca
    pop bc                                        ; $4b81: $c1
    ld e, $c8                                     ; $4b82: $1e $c8
    pop bc                                        ; $4b84: $c1
    rst $30                                       ; $4b85: $f7
    rlca                                          ; $4b86: $07
    ld [bc], a                                    ; $4b87: $02
    ld a, [$cc3e]                                 ; $4b88: $fa $3e $cc
    add d                                         ; $4b8b: $82
    pop bc                                        ; $4b8c: $c1
    cp $e0                                        ; $4b8d: $fe $e0
    sub e                                         ; $4b8f: $93
    add b                                         ; $4b90: $80
    cp a                                          ; $4b91: $bf
    cp $e1                                        ; $4b92: $fe $e1
    ld a, [hl-]                                   ; $4b94: $3a
    ret nz                                        ; $4b95: $c0

    db $fc                                        ; $4b96: $fc
    xor c                                         ; $4b97: $a9
    ld [c], a                                     ; $4b98: $e2
    ld a, [bc]                                    ; $4b99: $0a
    and [hl]                                      ; $4b9a: $a6
    ld sp, $307f                                  ; $4b9b: $31 $7f $30
    ld hl, $0220                                  ; $4b9e: $21 $20 $02
    nop                                           ; $4ba1: $00
    rlca                                          ; $4ba2: $07
    ret nz                                        ; $4ba3: $c0

    xor [hl]                                      ; $4ba4: $ae
    jp $e0bc                                      ; $4ba5: $c3 $bc $e0


    and b                                         ; $4ba8: $a0
    dec de                                        ; $4ba9: $1b
    ret nz                                        ; $4baa: $c0

    rra                                           ; $4bab: $1f
    ldh [$1f], a                                  ; $4bac: $e0 $1f
    ld h, b                                       ; $4bae: $60
    jp hl                                         ; $4baf: $e9


    add e                                         ; $4bb0: $83
    ld hl, sp+$3e                                 ; $4bb1: $f8 $3e
    add hl, sp                                    ; $4bb3: $39
    call nz, Call_000_00fd                        ; $4bb4: $c4 $fd $00
    ei                                            ; $4bb7: $fb
    nop                                           ; $4bb8: $00
    rst $20                                       ; $4bb9: $e7

jr_079_4bba:
    jp c, $b6c0                                   ; $4bba: $da $c0 $b6

    and e                                         ; $4bbd: $a3
    ld a, [hl]                                    ; $4bbe: $7e
    call $fa89                                    ; $4bbf: $cd $89 $fa
    dec b                                         ; $4bc2: $05
    push af                                       ; $4bc3: $f5
    ld a, [bc]                                    ; $4bc4: $0a
    ld [$fc15], a                                 ; $4bc5: $ea $15 $fc
    pop hl                                        ; $4bc8: $e1
    rst $38                                       ; $4bc9: $ff
    push de                                       ; $4bca: $d5
    ld a, [hl+]                                   ; $4bcb: $2a
    ld [$d415], a                                 ; $4bcc: $ea $15 $d4
    dec hl                                        ; $4bcf: $2b
    rst $20                                       ; $4bd0: $e7
    rst $20                                       ; $4bd1: $e7
    rst $38                                       ; $4bd2: $ff
    rst $28                                       ; $4bd3: $ef
    rst $28                                       ; $4bd4: $ef
    xor $ee                                       ; $4bd5: $ee $ee
    rst $38                                       ; $4bd7: $ff
    rst $38                                       ; $4bd8: $ff
    ld sp, hl                                     ; $4bd9: $f9
    ld sp, hl                                     ; $4bda: $f9
    rst $38                                       ; $4bdb: $ff
    ldh a, [$f6]                                  ; $4bdc: $f0 $f6
    ret nz                                        ; $4bde: $c0

    rst $08                                       ; $4bdf: $cf
    jp hl                                         ; $4be0: $e9


    rst $28                                       ; $4be1: $ef
    ld [hl], a                                    ; $4be2: $77
    rlca                                          ; $4be3: $07
    ld sp, hl                                     ; $4be4: $f9
    ld [hl], a                                    ; $4be5: $77
    ld l, d                                       ; $4be6: $6a
    ldh [$62], a                                  ; $4be7: $e0 $62
    pop hl                                        ; $4be9: $e1
    rst $18                                       ; $4bea: $df
    rra                                           ; $4beb: $1f
    ccf                                           ; $4bec: $3f
    ccf                                           ; $4bed: $3f
    ld a, a                                       ; $4bee: $7f
    dec a                                         ; $4bef: $3d
    ld a, a                                       ; $4bf0: $7f
    add d                                         ; $4bf1: $82
    db $eb                                        ; $4bf2: $eb
    nop                                           ; $4bf3: $00
    rst $38                                       ; $4bf4: $ff
    ret nz                                        ; $4bf5: $c0

    rst $18                                       ; $4bf6: $df
    jr nz, jr_079_4bba                            ; $4bf7: $20 $c1

    ld e, $c1                                     ; $4bf9: $1e $c1
    add e                                         ; $4bfb: $83
    jr nc, @-$47                                  ; $4bfc: $30 $b7

    ld e, $c1                                     ; $4bfe: $1e $c1
    and $a1                                       ; $4c00: $e6 $a1
    sbc $a1                                       ; $4c02: $de $a1
    ld e, d                                       ; $4c04: $5a
    push hl                                       ; $4c05: $e5
    ld h, c                                       ; $4c06: $61

jr_079_4c07:
    add a                                         ; $4c07: $87
    ld a, a                                       ; $4c08: $7f
    ld l, a                                       ; $4c09: $6f
    nop                                           ; $4c0a: $00
    ccf                                           ; $4c0b: $3f
    add b                                         ; $4c0c: $80
    rra                                           ; $4c0d: $1f
    ld h, b                                       ; $4c0e: $60
    jp nz, Jump_000_01fe                          ; $4c0f: $c2 $fe $01

    res 0, d                                      ; $4c12: $cb $82
    db $fd                                        ; $4c14: $fd
    ld [bc], a                                    ; $4c15: $02
    add h                                         ; $4c16: $84
    pop hl                                        ; $4c17: $e1
    xor d                                         ; $4c18: $aa
    ld d, l                                       ; $4c19: $55
    ld d, h                                       ; $4c1a: $54
    xor e                                         ; $4c1b: $ab
    xor b                                         ; $4c1c: $a8
    ld d, a                                       ; $4c1d: $57
    ei                                            ; $4c1e: $fb
    ld d, b                                       ; $4c1f: $50
    xor a                                         ; $4c20: $af
    db $fc                                        ; $4c21: $fc
    pop hl                                        ; $4c22: $e1

jr_079_4c23:
    and b                                         ; $4c23: $a0
    ld e, a                                       ; $4c24: $5f
    ld b, b                                       ; $4c25: $40
    cp a                                          ; $4c26: $bf
    or $ff                                        ; $4c27: $f6 $ff
    nop                                           ; $4c29: $00
    ldh [$09], a                                  ; $4c2a: $e0 $09
    ret nz                                        ; $4c2c: $c0

    rra                                           ; $4c2d: $1f
    ret nz                                        ; $4c2e: $c0

    rra                                           ; $4c2f: $1f
    add b                                         ; $4c30: $80
    ei                                            ; $4c31: $fb
    ccf                                           ; $4c32: $3f
    add b                                         ; $4c33: $80
    ld b, e                                       ; $4c34: $43
    ret nz                                        ; $4c35: $c0

    nop                                           ; $4c36: $00
    ld a, a                                       ; $4c37: $7f
    ccf                                           ; $4c38: $3f
    ccf                                           ; $4c39: $3f
    rst $00                                       ; $4c3a: $c7
    ret c                                         ; $4c3b: $d8

    inc d                                         ; $4c3c: $14
    and a                                         ; $4c3d: $a7
    db $10                                        ; $4c3e: $10
    xor b                                         ; $4c3f: $a8
    ld [hl], d                                    ; $4c40: $72
    add e                                         ; $4c41: $83
    rst $28                                       ; $4c42: $ef
    rrca                                          ; $4c43: $0f
    jr nc, jr_079_4c07                            ; $4c44: $30 $c1

    jr jr_079_4c23                                ; $4c46: $18 $db

    add $30                                       ; $4c48: $c6 $30
    pop bc                                        ; $4c4a: $c1
    ld c, $ee                                     ; $4c4b: $0e $ee
    jr nc, @-$3d                                  ; $4c4d: $30 $c1

    jp c, $d881                                   ; $4c4f: $da $81 $d8

    add c                                         ; $4c52: $81
    rlca                                          ; $4c53: $07
    ldh a, [$f6]                                  ; $4c54: $f0 $f6
    ld d, [hl]                                    ; $4c56: $56
    and c                                         ; $4c57: $a1
    nop                                           ; $4c58: $00
    cp $80                                        ; $4c59: $fe $80
    add sp, -$80                                  ; $4c5b: $e8 $80
    adc d                                         ; $4c5d: $8a
    ld [hl], l                                    ; $4c5e: $75
    pop bc                                        ; $4c5f: $c1
    push bc                                       ; $4c60: $c5
    ld a, $60                                     ; $4c61: $3e $60
    add $01                                       ; $4c63: $c6 $01
    add h                                         ; $4c65: $84
    db $e3                                        ; $4c66: $e3
    ld [$7ce1], sp                                ; $4c67: $08 $e1 $7c
    db $e3                                        ; $4c6a: $e3
    ld b, b                                       ; $4c6b: $40
    cp a                                          ; $4c6c: $bf
    xor $59                                       ; $4c6d: $ee $59
    ret nz                                        ; $4c6f: $c0

    cp $80                                        ; $4c70: $fe $80
    ld a, [hl]                                    ; $4c72: $7e
    ld [hl-], a                                   ; $4c73: $32
    add e                                         ; $4c74: $83
    ld bc, $00f9                                  ; $4c75: $01 $f9 $00
    rst $18                                       ; $4c78: $df
    and $00                                       ; $4c79: $e6 $00
    sbc a                                         ; $4c7b: $9f
    nop                                           ; $4c7c: $00
    ld a, b                                       ; $4c7d: $78
    ret z                                         ; $4c7e: $c8

jr_079_4c7f:
    ld h, l                                       ; $4c7f: $65
    ldh a, [$f7]                                  ; $4c80: $f0 $f7
    db $e3                                        ; $4c82: $e3
    ld hl, sp-$05                                 ; $4c83: $f8 $fb
    ld l, e                                       ; $4c85: $6b
    add e                                         ; $4c86: $83
    or d                                          ; $4c87: $b2
    ret nz                                        ; $4c88: $c0

    ld [hl], b                                    ; $4c89: $70
    and $07                                       ; $4c8a: $e6 $07
    nop                                           ; $4c8c: $00
    sbc a                                         ; $4c8d: $9f
    ld a, c                                       ; $4c8e: $79
    rra                                           ; $4c8f: $1f
    sbc [hl]                                      ; $4c90: $9e
    add c                                         ; $4c91: $81
    ld [c], a                                     ; $4c92: $e2
    ld h, l                                       ; $4c93: $65
    rrca                                          ; $4c94: $0f
    rrca                                          ; $4c95: $0f
    rlca                                          ; $4c96: $07
    rst $30                                       ; $4c97: $f7
    or $63                                        ; $4c98: $f6 $63
    ld a, [hl]                                    ; $4c9a: $7e
    ld a, h                                       ; $4c9b: $7c
    add l                                         ; $4c9c: $85
    jr c, jr_079_4ca6                             ; $4c9d: $38 $07

    ret nz                                        ; $4c9f: $c0

    ret nz                                        ; $4ca0: $c0

    cp $fe                                        ; $4ca1: $fe $fe
    cp d                                          ; $4ca3: $ba
    ld h, a                                       ; $4ca4: $67
    rst $38                                       ; $4ca5: $ff

jr_079_4ca6:
    jr z, jr_079_4c7f                             ; $4ca6: $28 $d7

    inc d                                         ; $4ca8: $14
    ld l, e                                       ; $4ca9: $6b
    ld a, [hl+]                                   ; $4caa: $2a
    push de                                       ; $4cab: $d5
    inc d                                         ; $4cac: $14
    ld l, e                                       ; $4cad: $6b
    cp a                                          ; $4cae: $bf
    jr z, jr_079_4d05                             ; $4caf: $28 $54

    sub b                                         ; $4cb1: $90
    xor e                                         ; $4cb2: $ab
    add b                                         ; $4cb3: $80
    and a                                         ; $4cb4: $a7
    ld b, a                                       ; $4cb5: $47
    and b                                         ; $4cb6: $a0

jr_079_4cb7:
    db $fd                                        ; $4cb7: $fd
    rst $08                                       ; $4cb8: $cf
    nop                                           ; $4cb9: $00
    di                                            ; $4cba: $f3
    nop                                           ; $4cbb: $00
    rst $08                                       ; $4cbc: $cf
    ld b, $80                                     ; $4cbd: $06 $80
    xor c                                         ; $4cbf: $a9

jr_079_4cc0:
    pop hl                                        ; $4cc0: $e1
    ei                                            ; $4cc1: $fb
    ld [bc], a                                    ; $4cc2: $02
    rst $38                                       ; $4cc3: $ff
    rst $30                                       ; $4cc4: $f7
    rst $20                                       ; $4cc5: $e7
    rst $20                                       ; $4cc6: $e7
    rst $18                                       ; $4cc7: $df
    db $dd                                        ; $4cc8: $dd
    cp a                                          ; $4cc9: $bf
    cp d                                          ; $4cca: $ba
    ld a, a                                       ; $4ccb: $7f
    rst $18                                       ; $4ccc: $df
    ld d, h                                       ; $4ccd: $54
    rst $38                                       ; $4cce: $ff
    xor b                                         ; $4ccf: $a8
    rst $38                                       ; $4cd0: $ff
    ld d, b                                       ; $4cd1: $50
    adc [hl]                                      ; $4cd2: $8e
    and d                                         ; $4cd3: $a2
    and c                                         ; $4cd4: $a1
    rst $38                                       ; $4cd5: $ff
    ld sp, hl                                     ; $4cd6: $f9
    ld b, b                                       ; $4cd7: $40
    add [hl]                                      ; $4cd8: $86
    and e                                         ; $4cd9: $a3
    ld l, $c4                                     ; $4cda: $2e $c4
    ld a, b                                       ; $4cdc: $78
    cp $ae                                        ; $4cdd: $fe $ae
    rst $38                                       ; $4cdf: $ff
    rla                                           ; $4ce0: $17
    rst $00                                       ; $4ce1: $c7
    rst $38                                       ; $4ce2: $ff
    dec bc                                        ; $4ce3: $0b
    rst $38                                       ; $4ce4: $ff
    cp h                                          ; $4ce5: $bc
    ret nz                                        ; $4ce6: $c0

    dec b                                         ; $4ce7: $05
    ld h, c                                       ; $4ce8: $61
    inc h                                         ; $4ce9: $24
    ld l, b                                       ; $4cea: $68
    xor a                                         ; $4ceb: $af
    ldh a, [$e7]                                  ; $4cec: $f0 $e7
    ld d, a                                       ; $4cee: $57
    ld hl, sp+$2b                                 ; $4cef: $f8 $2b
    adc c                                         ; $4cf1: $89
    and h                                         ; $4cf2: $a4
    ld h, b                                       ; $4cf3: $60
    ret z                                         ; $4cf4: $c8

    ldh [$ef], a                                  ; $4cf5: $e0 $ef
    ld h, b                                       ; $4cf7: $60
    rst $38                                       ; $4cf8: $ff
    ld l, a                                       ; $4cf9: $6f
    ld [hl], b                                    ; $4cfa: $70
    ld [hl], a                                    ; $4cfb: $77
    ld [hl], b                                    ; $4cfc: $70
    ld [hl], a                                    ; $4cfd: $77
    jr nc, jr_079_4cb7                            ; $4cfe: $30 $b7

    jr c, @+$69                                   ; $4d00: $38 $67

    cp e                                          ; $4d02: $bb
    jr c, jr_079_4cc0                             ; $4d03: $38 $bb

jr_079_4d05:
    ld d, d                                       ; $4d05: $52
    ld h, e                                       ; $4d06: $63
    ld c, [hl]                                    ; $4d07: $4e
    ld h, c                                       ; $4d08: $61
    ld [bc], a                                    ; $4d09: $02
    ld a, [$e1fe]                                 ; $4d0a: $fa $fe $e1
    db $fd                                        ; $4d0d: $fd
    cp a                                          ; $4d0e: $bf
    rst $38                                       ; $4d0f: $ff
    ld [c], a                                     ; $4d10: $e2
    ld e, a                                       ; $4d11: $5f
    rra                                           ; $4d12: $1f
    ld e, a                                       ; $4d13: $5f
    rra                                           ; $4d14: $1f
    sbc $1e                                       ; $4d15: $de $1e
    rst $38                                       ; $4d17: $ff
    ld l, l                                       ; $4d18: $6d
    inc c                                         ; $4d19: $0c
    xor e                                         ; $4d1a: $ab
    adc b                                         ; $4d1b: $88
    rst $28                                       ; $4d1c: $ef
    ld [$e4ef], a                                 ; $4d1d: $ea $ef $e4
    di                                            ; $4d20: $f3
    rst $18                                       ; $4d21: $df
    ret nz                                        ; $4d22: $c0

    push af                                       ; $4d23: $f5

jr_079_4d24:
    pop bc                                        ; $4d24: $c1
    and a                                         ; $4d25: $a7
    ld c, h                                       ; $4d26: $4c
    db $10                                        ; $4d27: $10
    rst $38                                       ; $4d28: $ff
    ld [$ffef], sp                                ; $4d29: $08 $ef $ff
    inc b                                         ; $4d2c: $04
    rst $28                                       ; $4d2d: $ef
    ld a, [bc]                                    ; $4d2e: $0a
    db $fc                                        ; $4d2f: $fc
    dec b                                         ; $4d30: $05
    cp $02                                        ; $4d31: $fe $02
    rst $38                                       ; $4d33: $ff
    db $fd                                        ; $4d34: $fd
    inc bc                                        ; $4d35: $03
    inc [hl]                                      ; $4d36: $34
    and b                                         ; $4d37: $a0
    ld bc, $07e7                                  ; $4d38: $01 $e7 $07
    rst $18                                       ; $4d3b: $df
    rra                                           ; $4d3c: $1f
    cp a                                          ; $4d3d: $bf
    ld hl, sp-$4c                                 ; $4d3e: $f8 $b4
    ld h, e                                       ; $4d40: $63
    dec h                                         ; $4d41: $25
    ret nz                                        ; $4d42: $c0

    call c, $80c3                                 ; $4d43: $dc $c3 $80
    add a                                         ; $4d46: $87
    jr jr_079_4d24                                ; $4d47: $18 $db

    inc e                                         ; $4d49: $1c
    rst $20                                       ; $4d4a: $e7
    db $dd                                        ; $4d4b: $dd
    inc e                                         ; $4d4c: $1c
    db $dd                                        ; $4d4d: $dd
    ld [hl], d                                    ; $4d4e: $72
    pop bc                                        ; $4d4f: $c1
    ld [hl], b                                    ; $4d50: $70
    pop bc                                        ; $4d51: $c1
    rlca                                          ; $4d52: $07
    rst $30                                       ; $4d53: $f7
    ld [bc], a                                    ; $4d54: $02
    ei                                            ; $4d55: $fb
    ld a, [$d401]                                 ; $4d56: $fa $01 $d4
    ld h, b                                       ; $4d59: $60
    rlca                                          ; $4d5a: $07
    ldh a, [rTIMA]                                ; $4d5b: $f0 $05
    ldh a, [$0a]                                  ; $4d5d: $f0 $0a
    rst $38                                       ; $4d5f: $ff
    ld [c], a                                     ; $4d60: $e2
    ld a, [bc]                                    ; $4d61: $0a
    ld [c], a                                     ; $4d62: $e2
    dec e                                         ; $4d63: $1d
    ret nz                                        ; $4d64: $c0

    and a                                         ; $4d65: $a7
    add b                                         ; $4d66: $80
    ld e, a                                       ; $4d67: $5f
    xor $b4                                       ; $4d68: $ee $b4
    add b                                         ; $4d6a: $80
    rst $18                                       ; $4d6b: $df
    nop                                           ; $4d6c: $00
    cp a                                          ; $4d6d: $bf
    cp $e4                                        ; $4d6e: $fe $e4
    rst $30                                       ; $4d70: $f7
    dec b                                         ; $4d71: $05
    rst $30                                       ; $4d72: $f7
    ld e, a                                       ; $4d73: $5f
    ld [bc], a                                    ; $4d74: $02
    rst $30                                       ; $4d75: $f7
    dec b                                         ; $4d76: $05
    ei                                            ; $4d77: $fb
    ld [bc], a                                    ; $4d78: $02
    adc $60                                       ; $4d79: $ce $60
    dec b                                         ; $4d7b: $05
    adc $60                                       ; $4d7c: $ce $60
    push af                                       ; $4d7e: $f5
    ld [bc], a                                    ; $4d7f: $02
    ld sp, $8040                                  ; $4d80: $31 $40 $80
    ld b, $e0                                     ; $4d83: $06 $e0
    xor b                                         ; $4d85: $a8
    rst $38                                       ; $4d86: $ff
    ld d, h                                       ; $4d87: $54
    rst $38                                       ; $4d88: $ff
    rra                                           ; $4d89: $1f
    cp d                                          ; $4d8a: $ba
    rst $38                                       ; $4d8b: $ff
    db $dd                                        ; $4d8c: $dd
    rst $38                                       ; $4d8d: $ff
    ld a, [$c58e]                                 ; $4d8e: $fa $8e $c5
    db $e3                                        ; $4d91: $e3
    ret nz                                        ; $4d92: $c0

    sbc l                                         ; $4d93: $9d
    ld b, b                                       ; $4d94: $40
    cp a                                          ; $4d95: $bf
    rst $30                                       ; $4d96: $f7
    add a                                         ; $4d97: $87
    nop                                           ; $4d98: $00
    ld a, [hl]                                    ; $4d99: $7e
    ld bc, $b07c                                  ; $4d9a: $01 $7c $b0
    pop hl                                        ; $4d9d: $e1
    rrca                                          ; $4d9e: $0f
    ld sp, hl                                     ; $4d9f: $f9
    ldh [$db], a                                  ; $4da0: $e0 $db
    and b                                         ; $4da2: $a0
    and [hl]                                      ; $4da3: $a6
    add b                                         ; $4da4: $80

jr_079_4da5:
    rlca                                          ; $4da5: $07
    ld [hl], a                                    ; $4da6: $77
    di                                            ; $4da7: $f3
    dec bc                                        ; $4da8: $0b
    ld sp, hl                                     ; $4da9: $f9
    rst $20                                       ; $4daa: $e7
    dec b                                         ; $4dab: $05
    db $fc                                        ; $4dac: $fc
    ld [bc], a                                    ; $4dad: $02
    xor h                                         ; $4dae: $ac
    and e                                         ; $4daf: $a3
    ldh [$a9], a                                  ; $4db0: $e0 $a9
    ccf                                           ; $4db2: $3f
    cp a                                          ; $4db3: $bf
    sbc a                                         ; $4db4: $9f
    rst $00                                       ; $4db5: $c7
    ld e, a                                       ; $4db6: $5f
    rra                                           ; $4db7: $1f
    rst $18                                       ; $4db8: $df
    call nz, Call_000_0289                        ; $4db9: $c4 $89 $02
    ld h, c                                       ; $4dbc: $61
    call z, Call_000_3ce1                         ; $4dbd: $cc $e1 $3c
    add b                                         ; $4dc0: $80
    ld bc, $6e33                                  ; $4dc1: $01 $33 $6e
    add b                                         ; $4dc4: $80
    xor c                                         ; $4dc5: $a9
    add c                                         ; $4dc6: $81
    and e                                         ; $4dc7: $a3
    add h                                         ; $4dc8: $84
    cp e                                          ; $4dc9: $bb
    add hl, hl                                    ; $4dca: $29
    xor b                                         ; $4dcb: $a8
    pop bc                                        ; $4dcc: $c1
    and h                                         ; $4dcd: $a4
    call nz, $e10c                                ; $4dce: $c4 $0c $e1
    rst $38                                       ; $4dd1: $ff
    ld a, a                                       ; $4dd2: $7f
    ld a, l                                       ; $4dd3: $7d
    cp a                                          ; $4dd4: $bf
    cp [hl]                                       ; $4dd5: $be
    rst $18                                       ; $4dd6: $df
    ld e, a                                       ; $4dd7: $5f
    rst $28                                       ; $4dd8: $ef
    xor a                                         ; $4dd9: $af
    rst $38                                       ; $4dda: $ff
    rst $30                                       ; $4ddb: $f7
    ld [hl], a                                    ; $4ddc: $77
    ei                                            ; $4ddd: $fb
    cp e                                          ; $4dde: $bb
    db $fc                                        ; $4ddf: $fc
    ld e, h                                       ; $4de0: $5c
    rst $38                                       ; $4de1: $ff
    ccf                                           ; $4de2: $3f
    rst $38                                       ; $4de3: $ff
    and b                                         ; $4de4: $a0
    rst $30                                       ; $4de5: $f7
    ld b, b                                       ; $4de6: $40
    rst $28                                       ; $4de7: $ef
    and b                                         ; $4de8: $a0
    xor $40                                       ; $4de9: $ee $40
    xor $ff                                       ; $4deb: $ee $ff
    add b                                         ; $4ded: $80
    db $dd                                        ; $4dee: $dd
    nop                                           ; $4def: $00
    db $dd                                        ; $4df0: $dd
    nop                                           ; $4df1: $00

jr_079_4df2:
    ret c                                         ; $4df2: $d8

    nop                                           ; $4df3: $00
    jr jr_079_4df2                                ; $4df4: $18 $fc

    cp d                                          ; $4df6: $ba
    db $e4                                        ; $4df7: $e4
    add $20                                       ; $4df8: $c6 $20
    ld e, a                                       ; $4dfa: $5f
    and b                                         ; $4dfb: $a0
    cpl                                           ; $4dfc: $2f
    ret nc                                        ; $4dfd: $d0

    rrca                                          ; $4dfe: $0f
    ld b, b                                       ; $4dff: $40
    db $fc                                        ; $4e00: $fc
    db $fc                                        ; $4e01: $fc
    ld l, d                                       ; $4e02: $6a
    jr jr_079_4da5                                ; $4e03: $18 $a0

    adc a                                         ; $4e05: $8f
    ld l, a                                       ; $4e06: $6f
    ld c, a                                       ; $4e07: $4f
    xor a                                         ; $4e08: $af
    adc a                                         ; $4e09: $8f
    ld l, a                                       ; $4e0a: $6f
    adc a                                         ; $4e0b: $8f
    ld b, a                                       ; $4e0c: $47
    or a                                          ; $4e0d: $b7
    add a                                         ; $4e0e: $87
    ld [hl], a                                    ; $4e0f: $77
    db $fc                                        ; $4e10: $fc
    db $e3                                        ; $4e11: $e3
    db $fc                                        ; $4e12: $fc
    ld hl, $c770                                  ; $4e13: $21 $70 $c7
    jr nc, @-$1d                                  ; $4e16: $30 $e1

    or e                                          ; $4e18: $b3
    jp nz, $b020                                  ; $4e19: $c2 $20 $b0

    ld b, b                                       ; $4e1c: $40
    xor [hl]                                      ; $4e1d: $ae
    ld b, h                                       ; $4e1e: $44
    ret c                                         ; $4e1f: $d8

    ret nz                                        ; $4e20: $c0

    rst $38                                       ; $4e21: $ff
    inc d                                         ; $4e22: $14
    rst $38                                       ; $4e23: $ff
    ld [hl], a                                    ; $4e24: $77
    ld a, [bc]                                    ; $4e25: $0a
    rst $38                                       ; $4e26: $ff
    rlca                                          ; $4e27: $07
    jr nz, @-$3e                                  ; $4e28: $20 $c0

    dec b                                         ; $4e2a: $05
    rst $38                                       ; $4e2b: $ff
    inc bc                                        ; $4e2c: $03
    db $fc                                        ; $4e2d: $fc
    ldh [rIE], a                                  ; $4e2e: $e0 $ff
    ld [bc], a                                    ; $4e30: $02
    cp $5e                                        ; $4e31: $fe $5e
    rst $38                                       ; $4e33: $ff
    cpl                                           ; $4e34: $2f
    rst $38                                       ; $4e35: $ff
    ld e, a                                       ; $4e36: $5f
    rst $38                                       ; $4e37: $ff
    rst $38                                       ; $4e38: $ff
    xor a                                         ; $4e39: $af
    rst $38                                       ; $4e3a: $ff
    rst $18                                       ; $4e3b: $df
    rst $38                                       ; $4e3c: $ff

jr_079_4e3d:
    rst $38                                       ; $4e3d: $ff
    db $fc                                        ; $4e3e: $fc

jr_079_4e3f:
    db $fc                                        ; $4e3f: $fc
    di                                            ; $4e40: $f3
    rst $38                                       ; $4e41: $ff
    ldh a, [rP1]                                  ; $4e42: $f0 $00
    adc h                                         ; $4e44: $8c
    nop                                           ; $4e45: $00
    ld b, b                                       ; $4e46: $40
    nop                                           ; $4e47: $00
    and b                                         ; $4e48: $a0
    ld bc, $c083                                  ; $4e49: $01 $83 $c0
    inc bc                                        ; $4e4c: $03
    ld a, [de]                                    ; $4e4d: $1a
    and b                                         ; $4e4e: $a0
    nop                                           ; $4e4f: $00
    ldh [rNR34], a                                ; $4e50: $e0 $1e
    ld h, c                                       ; $4e52: $61
    adc b                                         ; $4e53: $88
    ld l, e                                       ; $4e54: $6b
    xor b                                         ; $4e55: $a8
    add d                                         ; $4e56: $82
    db $f4                                        ; $4e57: $f4
    ret                                           ; $4e58: $c9


    dec bc                                        ; $4e59: $0b
    inc [hl]                                      ; $4e5a: $34
    add c                                         ; $4e5b: $81
    xor b                                         ; $4e5c: $a8
    add c                                         ; $4e5d: $81
    add a                                         ; $4e5e: $87
    ld b, c                                       ; $4e5f: $41
    add b                                         ; $4e60: $80
    and l                                         ; $4e61: $a5
    ld h, b                                       ; $4e62: $60
    rst $28                                       ; $4e63: $ef
    rra                                           ; $4e64: $1f

jr_079_4e65:
    rst $38                                       ; $4e65: $ff
    rst $18                                       ; $4e66: $df
    rra                                           ; $4e67: $1f
    rst $18                                       ; $4e68: $df
    ccf                                           ; $4e69: $3f
    cp a                                          ; $4e6a: $bf
    ld a, a                                       ; $4e6b: $7f
    ld a, a                                       ; $4e6c: $7f
    set 7, a                                      ; $4e6d: $cb $ff
    jp $c1dd                                      ; $4e6f: $c3 $dd $c1


    db $dd                                        ; $4e72: $dd
    pop bc                                        ; $4e73: $c1
    sbc $c0                                       ; $4e74: $de $c0
    sbc $03                                       ; $4e76: $de $03
    ret nz                                        ; $4e78: $c0

    xor $71                                       ; $4e79: $ee $71
    ld hl, $82d6                                  ; $4e7b: $21 $d6 $82
    adc $81                                       ; $4e7e: $ce $81
    jp z, $ae81                                   ; $4e80: $ca $81 $ae

    pop bc                                        ; $4e83: $c1
    ld hl, sp-$38                                 ; $4e84: $f8 $c8
    ld a, l                                       ; $4e86: $7d
    ld [bc], a                                    ; $4e87: $02
    ld a, h                                       ; $4e88: $7c
    ldh [$0b], a                                  ; $4e89: $e0 $0b
    rst $38                                       ; $4e8b: $ff
    inc b                                         ; $4e8c: $04
    rst $38                                       ; $4e8d: $ff
    ld [$c004], sp                                ; $4e8e: $08 $04 $c0
    cp [hl]                                       ; $4e91: $be
    ld [hl], d                                    ; $4e92: $72
    and c                                         ; $4e93: $a1
    and b                                         ; $4e94: $a0
    rst $38                                       ; $4e95: $ff
    ret nc                                        ; $4e96: $d0

    db $fc                                        ; $4e97: $fc
    ldh [$e0], a                                  ; $4e98: $e0 $e0
    add $01                                       ; $4e9a: $c6 $01
    cp $fa                                        ; $4e9c: $fe $fa
    and b                                         ; $4e9e: $a0
    ld [bc], a                                    ; $4e9f: $02
    nop                                           ; $4ea0: $00
    nop                                           ; $4ea1: $00
    rst $28                                       ; $4ea2: $ef
    ld h, b                                       ; $4ea3: $60
    sbc $c0                                       ; $4ea4: $de $c0
    sbc a                                         ; $4ea6: $9f
    cp [hl]                                       ; $4ea7: $be
    nop                                           ; $4ea8: $00
    cp [hl]                                       ; $4ea9: $be
    add b                                         ; $4eaa: $80
    ld a, [hl]                                    ; $4eab: $7e
    db $db                                        ; $4eac: $db
    inc h                                         ; $4ead: $24
    or $47                                        ; $4eae: $f6 $47
    ld a, a                                       ; $4eb0: $7f
    and $55                                       ; $4eb1: $e6 $55
    ret nz                                        ; $4eb3: $c0

    or l                                          ; $4eb4: $b5
    adc d                                         ; $4eb5: $8a
    jr jr_079_4e3f                                ; $4eb6: $18 $87

    jr nz, jr_079_4e3d                            ; $4eb8: $20 $83

    and b                                         ; $4eba: $a0
    ld e, [hl]                                    ; $4ebb: $5e
    ld b, c                                       ; $4ebc: $41
    rst $00                                       ; $4ebd: $c7
    cp l                                          ; $4ebe: $bd
    add e                                         ; $4ebf: $83
    ld a, e                                       ; $4ec0: $7b
    ld l, h                                       ; $4ec1: $6c
    pop hl                                        ; $4ec2: $e1
    ld [hl], b                                    ; $4ec3: $70
    db $e3                                        ; $4ec4: $e3
    db $e3                                        ; $4ec5: $e3
    inc bc                                        ; $4ec6: $03
    ei                                            ; $4ec7: $fb
    ld hl, sp-$1c                                 ; $4ec8: $f8 $e4
    cp $e1                                        ; $4eca: $fe $e1
    add c                                         ; $4ecc: $81
    jr nz, @-$02                                  ; $4ecd: $20 $fc

    ld d, h                                       ; $4ecf: $54
    ld b, l                                       ; $4ed0: $45
    ld d, c                                       ; $4ed1: $51
    ldh [$1f], a                                  ; $4ed2: $e0 $1f
    ret z                                         ; $4ed4: $c8

    ld [$c0eb], sp                                ; $4ed5: $08 $eb $c0
    rlca                                          ; $4ed8: $07
    ld [hl+], a                                   ; $4ed9: $22
    inc c                                         ; $4eda: $0c
    rra                                           ; $4edb: $1f
    ld a, [bc]                                    ; $4edc: $0a
    jp $803f                                      ; $4edd: $c3 $3f $80


    ld a, $e7                                     ; $4ee0: $3e $e7
    add b                                         ; $4ee2: $80
    jr nc, jr_079_4e65                            ; $4ee3: $30 $80

    db $10                                        ; $4ee5: $10
    ld b, b                                       ; $4ee6: $40
    nop                                           ; $4ee7: $00
    ld [hl+], a                                   ; $4ee8: $22
    cp $fe                                        ; $4ee9: $fe $fe
    ldh a, [$f5]                                  ; $4eeb: $f0 $f5
    pop af                                        ; $4eed: $f1
    ld a, e                                       ; $4eee: $7b
    ld b, b                                       ; $4eef: $40
    rra                                           ; $4ef0: $1f
    ld sp, hl                                     ; $4ef1: $f9
    jr nz, jr_079_4f10                            ; $4ef2: $20 $1c

    ld hl, sp-$08                                 ; $4ef4: $f8 $f8
    ret nz                                        ; $4ef6: $c0

    or a                                          ; $4ef7: $b7
    add $00                                       ; $4ef8: $c6 $00
    ld a, $04                                     ; $4efa: $3e $04
    ld [hl+], a                                   ; $4efc: $22
    ldh a, [rIF]                                  ; $4efd: $f0 $0f
    adc b                                         ; $4eff: $88
    ld b, b                                       ; $4f00: $40
    nop                                           ; $4f01: $00
    ldh a, [$d7]                                  ; $4f02: $f0 $d7
    pop bc                                        ; $4f04: $c1
    db $ed                                        ; $4f05: $ed
    ld h, c                                       ; $4f06: $61
    ld e, [hl]                                    ; $4f07: $5e
    ld b, h                                       ; $4f08: $44
    ld b, d                                       ; $4f09: $42
    inc h                                         ; $4f0a: $24
    ld sp, hl                                     ; $4f0b: $f9
    rlca                                          ; $4f0c: $07
    ld bc, $5ff7                                  ; $4f0d: $01 $f7 $5f

jr_079_4f10:
    ld bc, $03f7                                  ; $4f10: $01 $f7 $03
    rst $30                                       ; $4f13: $f7
    inc bc                                        ; $4f14: $03
    ld c, b                                       ; $4f15: $48
    ld b, b                                       ; $4f16: $40
    ld [bc], a                                    ; $4f17: $02
    or h                                          ; $4f18: $b4
    add b                                         ; $4f19: $80
    cp $0e                                        ; $4f1a: $fe $0e
    push bc                                       ; $4f1c: $c5
    nop                                           ; $4f1d: $00
    adc d                                         ; $4f1e: $8a
    push de                                       ; $4f1f: $d5
    call nz, $c0eb                                ; $4f20: $c4 $eb $c0
    rst $30                                       ; $4f23: $f7
    ld e, a                                       ; $4f24: $5f

jr_079_4f25:
    ld h, b                                       ; $4f25: $60
    ei                                            ; $4f26: $fb
    jr nc, jr_079_4f25                            ; $4f27: $30 $fc

    jr jr_079_4fa0                                ; $4f29: $18 $75

    and c                                         ; $4f2b: $a1
    rst $08                                       ; $4f2c: $cf
    ldh a, [$61]                                  ; $4f2d: $f0 $61
    rst $38                                       ; $4f2f: $ff
    inc bc                                        ; $4f30: $03
    ei                                            ; $4f31: $fb
    rlca                                          ; $4f32: $07
    rst $20                                       ; $4f33: $e7
    rrca                                          ; $4f34: $0f
    rst $08                                       ; $4f35: $cf
    rrca                                          ; $4f36: $0f
    rrca                                          ; $4f37: $0f
    rst $38                                       ; $4f38: $ff
    rrca                                          ; $4f39: $0f
    rst $08                                       ; $4f3a: $cf
    rra                                           ; $4f3b: $1f
    sbc a                                         ; $4f3c: $9f
    ld hl, sp-$08                                 ; $4f3d: $f8 $f8
    rst $30                                       ; $4f3f: $f7
    ldh a, [$fe]                                  ; $4f40: $f0 $fe
    ret z                                         ; $4f42: $c8

    pop bc                                        ; $4f43: $c1
    rst $28                                       ; $4f44: $ef
    ldh [$f3], a                                  ; $4f45: $e0 $f3
    db $f4                                        ; $4f47: $f4
    ld hl, sp-$07                                 ; $4f48: $f8 $f9
    ld a, [$f8f3]                                 ; $4f4a: $fa $f3 $f8
    rra                                           ; $4f4d: $1f
    ld c, e                                       ; $4f4e: $4b
    nop                                           ; $4f4f: $00
    inc [hl]                                      ; $4f50: $34
    and c                                         ; $4f51: $a1
    cp h                                          ; $4f52: $bc
    ld [bc], a                                    ; $4f53: $02
    cp h                                          ; $4f54: $bc
    ld [bc], a                                    ; $4f55: $02
    rst $28                                       ; $4f56: $ef
    jr c, @-$79                                   ; $4f57: $38 $85

    jr c, jr_079_4f60                             ; $4f59: $38 $05

    ld [bc], a                                    ; $4f5b: $02
    inc hl                                        ; $4f5c: $23
    db $fc                                        ; $4f5d: $fc
    nop                                           ; $4f5e: $00
    ld a, l                                       ; $4f5f: $7d

jr_079_4f60:
    rst $38                                       ; $4f60: $ff
    nop                                           ; $4f61: $00
    dec l                                         ; $4f62: $2d
    ret nc                                        ; $4f63: $d0

    ld d, a                                       ; $4f64: $57
    xor b                                         ; $4f65: $a8
    dec hl                                        ; $4f66: $2b
    call nc, $c7f9                                ; $4f67: $d4 $f9 $c7
    ld hl, sp-$19                                 ; $4f6a: $f8 $e7
    ldh [$88], a                                  ; $4f6c: $e0 $88
    ld b, e                                       ; $4f6e: $43
    adc [hl]                                      ; $4f6f: $8e
    ld h, e                                       ; $4f70: $63
    jr nc, jr_079_4f99                            ; $4f71: $30 $26

    ld b, e                                       ; $4f73: $43
    nop                                           ; $4f74: $00
    db $fd                                        ; $4f75: $fd
    ld a, e                                       ; $4f76: $7b
    cp $e2                                        ; $4f77: $fe $e2
    inc bc                                        ; $4f79: $03
    db $10                                        ; $4f7a: $10
    rrca                                          ; $4f7b: $0f
    db $10                                        ; $4f7c: $10
    cpl                                           ; $4f7d: $2f
    db $10                                        ; $4f7e: $10
    or c                                          ; $4f7f: $b1
    rst $28                                       ; $4f80: $ef
    cp $e5                                        ; $4f81: $fe $e5
    ld l, h                                       ; $4f83: $6c
    pop hl                                        ; $4f84: $e1
    db $fc                                        ; $4f85: $fc

Call_079_4f86:
    ld [c], a                                     ; $4f86: $e2
    ld bc, $fefb                                  ; $4f87: $01 $fb $fe
    ldh [$fd], a                                  ; $4f8a: $e0 $fd
    db $f4                                        ; $4f8c: $f4
    ld l, b                                       ; $4f8d: $68
    and $a0                                       ; $4f8e: $e6 $a0
    jr nz, jr_079_4f97                            ; $4f90: $20 $05

    and $a0                                       ; $4f92: $e6 $a0

jr_079_4f94:
    rla                                           ; $4f94: $17
    ldh a, [$30]                                  ; $4f95: $f0 $30

jr_079_4f97:
    cp $ff                                        ; $4f97: $fe $ff

jr_079_4f99:
    ld e, [hl]                                    ; $4f99: $5e
    cp $3e                                        ; $4f9a: $fe $3e
    db $fc                                        ; $4f9c: $fc
    ld e, h                                       ; $4f9d: $5c
    db $fc                                        ; $4f9e: $fc
    cp h                                          ; $4f9f: $bc

jr_079_4fa0:
    ld a, [$7a5f]                                 ; $4fa0: $fa $5f $7a
    or $f6                                        ; $4fa3: $f6 $f6
    ret nz                                        ; $4fa5: $c0

    pop bc                                        ; $4fa6: $c1
    ld sp, $ff4c                                  ; $4fa7: $31 $4c $ff
    cp b                                          ; $4faa: $b8
    jp $fcfb                                      ; $4fab: $c3 $fb $fc


    db $fd                                        ; $4fae: $fd
    adc h                                         ; $4faf: $8c
    ld h, l                                       ; $4fb0: $65
    ret nz                                        ; $4fb1: $c0

    jr jr_079_4f94                                ; $4fb2: $18 $e0

    ld b, $f0                                     ; $4fb4: $06 $f0
    rst $38                                       ; $4fb6: $ff
    ld c, $01                                     ; $4fb7: $0e $01
    ld hl, sp+$07                                 ; $4fb9: $f8 $07
    nop                                           ; $4fbb: $00
    ld a, h                                       ; $4fbc: $7c
    inc bc                                        ; $4fbd: $03
    ld a, b                                       ; $4fbe: $78
    rst $38                                       ; $4fbf: $ff
    rlca                                          ; $4fc0: $07
    and b                                         ; $4fc1: $a0
    sbc h                                         ; $4fc2: $9c
    dec d                                         ; $4fc3: $15
    ld [$750a], a                                 ; $4fc4: $ea $0a $75
    dec b                                         ; $4fc7: $05
    rst $30                                       ; $4fc8: $f7
    ld a, [bc]                                    ; $4fc9: $0a
    ld [bc], a                                    ; $4fca: $02
    cp l                                          ; $4fcb: $bd
    add l                                         ; $4fcc: $85
    add b                                         ; $4fcd: $80
    cp [hl]                                       ; $4fce: $be
    nop                                           ; $4fcf: $00
    inc e                                         ; $4fd0: $1c
    inc bc                                        ; $4fd1: $03
    add a                                         ; $4fd2: $87
    db $db                                        ; $4fd3: $db
    ld d, l                                       ; $4fd4: $55
    xor d                                         ; $4fd5: $aa
    ld b, $61                                     ; $4fd6: $06 $61
    ld b, c                                       ; $4fd8: $41
    inc h                                         ; $4fd9: $24
    or c                                          ; $4fda: $b1
    ld bc, $e06a                                  ; $4fdb: $01 $6a $e0
    inc bc                                        ; $4fde: $03
    ld a, a                                       ; $4fdf: $7f
    ld a, b                                       ; $4fe0: $78
    inc e                                         ; $4fe1: $1c
    ld h, c                                       ; $4fe2: $61
    ld sp, $004c                                  ; $4fe3: $31 $4c $00
    ld a, l                                       ; $4fe6: $7d
    sub [hl]                                      ; $4fe7: $96
    add b                                         ; $4fe8: $80
    rst $38                                       ; $4fe9: $ff
    ld a, b                                       ; $4fea: $78
    db $10                                        ; $4feb: $10
    rst $28                                       ; $4fec: $ef
    add hl, bc                                    ; $4fed: $09
    or $0b                                        ; $4fee: $f6 $0b
    db $f4                                        ; $4ff0: $f4
    ld c, $ff                                     ; $4ff1: $0e $ff
    pop af                                        ; $4ff3: $f1
    ld c, h                                       ; $4ff4: $4c
    or e                                          ; $4ff5: $b3
    sbc h                                         ; $4ff6: $9c
    ld h, e                                       ; $4ff7: $63
    ld e, l                                       ; $4ff8: $5d
    and d                                         ; $4ff9: $a2
    dec sp                                        ; $4ffa: $3b
    db $fd                                        ; $4ffb: $fd
    call nz, Call_079_435a                        ; $4ffc: $c4 $5a $43
    add b                                         ; $4fff: $80
    ld a, a                                       ; $5000: $7f
    dec c                                         ; $5001: $0d
    ld a, [c]                                     ; $5002: $f2
    ld a, d                                       ; $5003: $7a
    add l                                         ; $5004: $85
    rrca                                          ; $5005: $0f
    db $f4                                        ; $5006: $f4
    dec bc                                        ; $5007: $0b
    add sp, $17                                   ; $5008: $e8 $17
    rlca                                          ; $500a: $07
    inc hl                                        ; $500b: $23
    ld b, [hl]                                    ; $500c: $46
    ld b, c                                       ; $500d: $41
    db $fd                                        ; $500e: $fd
    inc bc                                        ; $500f: $03
    db $e4                                        ; $5010: $e4
    ld b, a                                       ; $5011: $47
    cp $50                                        ; $5012: $fe $50
    ld b, l                                       ; $5014: $45
    cp $fe                                        ; $5015: $fe $fe
    ld a, a                                       ; $5017: $7f
    ld a, a                                       ; $5018: $7f
    sbc a                                         ; $5019: $9f
    rra                                           ; $501a: $1f
    ld b, a                                       ; $501b: $47
    rst $38                                       ; $501c: $ff
    and a                                         ; $501d: $a7
    xor b                                         ; $501e: $a8
    ld d, b                                       ; $501f: $50
    ld e, a                                       ; $5020: $5f
    and b                                         ; $5021: $a0
    xor a                                         ; $5022: $af
    ld d, b                                       ; $5023: $50
    sbc h                                         ; $5024: $9c
    ld e, a                                       ; $5025: $5f
    sbc h                                         ; $5026: $9c
    ld a, [hl]                                    ; $5027: $7e
    ld a, [hl]                                    ; $5028: $7e
    cp $fe                                        ; $5029: $fe $fe
    ld [hl], $a1                                  ; $502b: $36 $a1
    rrca                                          ; $502d: $0f
    ld b, b                                       ; $502e: $40
    ld h, a                                       ; $502f: $67
    nop                                           ; $5030: $00
    pop de                                        ; $5031: $d1
    and e                                         ; $5032: $a3
    jr @+$24                                      ; $5033: $18 $22

    nop                                           ; $5035: $00
    nop                                           ; $5036: $00
    nop                                           ; $5037: $00
    ld c, c                                       ; $5038: $49
    add hl, bc                                    ; $5039: $09
    rst $38                                       ; $503a: $ff
    rst $38                                       ; $503b: $ff
    push hl                                       ; $503c: $e5
    db $e4                                        ; $503d: $e4
    dec bc                                        ; $503e: $0b
    rst $38                                       ; $503f: $ff
    ld [c], a                                     ; $5040: $e2
    ret c                                         ; $5041: $d8

    ldh a, [$08]                                  ; $5042: $f0 $08
    ldh [$fc], a                                  ; $5044: $e0 $fc
    ld [c], a                                     ; $5046: $e2
    pop bc                                        ; $5047: $c1
    db $e4                                        ; $5048: $e4
    ld c, e                                       ; $5049: $4b
    rst $18                                       ; $504a: $df
    db $fc                                        ; $504b: $fc
    sbc l                                         ; $504c: $9d
    db $e4                                        ; $504d: $e4
    ld [hl], a                                    ; $504e: $77
    ld sp, hl                                     ; $504f: $f9
    ld c, $0b                                     ; $5050: $0e $0b
    rrca                                          ; $5052: $0f
    db $fd                                        ; $5053: $fd
    rrca                                          ; $5054: $0f
    ld d, a                                       ; $5055: $57
    or $0d                                        ; $5056: $f6 $0d
    add hl, bc                                    ; $5058: $09
    ld c, $0e                                     ; $5059: $0e $0e
    ld c, $08                                     ; $505b: $0e $08
    inc e                                         ; $505d: $1c
    ldh [$f7], a                                  ; $505e: $e0 $f7
    pop bc                                        ; $5060: $c1
    ldh [$0e], a                                  ; $5061: $e0 $0e
    ld c, $0f                                     ; $5063: $0e $0f
    ld e, l                                       ; $5065: $5d
    ld hl, sp-$3f                                 ; $5066: $f8 $c1
    ldh [$e0], a                                  ; $5068: $e0 $e0
    pop hl                                        ; $506a: $e1
    ld a, [de]                                    ; $506b: $1a
    or $d0                                        ; $506c: $f6 $d0
    ld l, c                                       ; $506e: $69
    pop bc                                        ; $506f: $c1
    db $e4                                        ; $5070: $e4
    dec c                                         ; $5071: $0d
    ld a, [bc]                                    ; $5072: $0a
    rst $38                                       ; $5073: $ff
    ldh [$d6], a                                  ; $5074: $e0 $d6
    sub $e3                                       ; $5076: $d6 $e3
    pop hl                                        ; $5078: $e1
    and b                                         ; $5079: $a0
    rst $18                                       ; $507a: $df
    db $f4                                        ; $507b: $f4
    cp a                                          ; $507c: $bf
    ld [c], a                                     ; $507d: $e2
    ldh [$e3], a                                  ; $507e: $e0 $e3

Jump_079_5080:
    ld e, e                                       ; $5080: $5b
    ldh [$94], a                                  ; $5081: $e0 $94
    db $d3                                        ; $5083: $d3
    ld c, c                                       ; $5084: $49
    ret nz                                        ; $5085: $c0

    ld [c], a                                     ; $5086: $e2
    dec c                                         ; $5087: $0d
    ld c, b                                       ; $5088: $48
    ldh [$f6], a                                  ; $5089: $e0 $f6
    and c                                         ; $508b: $a1
    db $e3                                        ; $508c: $e3
    ldh [$f3], a                                  ; $508d: $e0 $f3
    dec bc                                        ; $508f: $0b
    ld e, [hl]                                    ; $5090: $5e
    ldh [$e0], a                                  ; $5091: $e0 $e0
    ld a, [$a10b]                                 ; $5093: $fa $0b $a1
    ldh [rHDMA1], a                               ; $5096: $e0 $51
    inc c                                         ; $5098: $0c
    rst $38                                       ; $5099: $ff
    ldh [$a0], a                                  ; $509a: $e0 $a0
    pop hl                                        ; $509c: $e1
    dec b                                         ; $509d: $05
    db $f4                                        ; $509e: $f4
    ld [$e0ff], sp                                ; $509f: $08 $ff $e0
    inc c                                         ; $50a2: $0c
    ld hl, $02f4                                  ; $50a3: $21 $f4 $02
    ldh [$e6], a                                  ; $50a6: $e0 $e6
    ld [$c413], sp                                ; $50a8: $08 $13 $c4
    rst $38                                       ; $50ab: $ff
    rst $38                                       ; $50ac: $ff
    rst $38                                       ; $50ad: $ff
    rst $38                                       ; $50ae: $ff
    rst $38                                       ; $50af: $ff
    rst $38                                       ; $50b0: $ff
    rst $38                                       ; $50b1: $ff
    rst $38                                       ; $50b2: $ff
    rst $38                                       ; $50b3: $ff
    rst $38                                       ; $50b4: $ff
    nop                                           ; $50b5: $00
    rst $38                                       ; $50b6: $ff
    rst $38                                       ; $50b7: $ff
    rst $38                                       ; $50b8: $ff
    rst $38                                       ; $50b9: $ff
    rst $38                                       ; $50ba: $ff
    rst $38                                       ; $50bb: $ff
    rst $38                                       ; $50bc: $ff
    rst $38                                       ; $50bd: $ff
    rst $38                                       ; $50be: $ff
    rst $38                                       ; $50bf: $ff
    rst $38                                       ; $50c0: $ff
    rst $38                                       ; $50c1: $ff
    rst $38                                       ; $50c2: $ff
    rst $38                                       ; $50c3: $ff
    rst $38                                       ; $50c4: $ff
    rst $38                                       ; $50c5: $ff
    nop                                           ; $50c6: $00
    db $ed                                        ; $50c7: $ed
    db $ec                                        ; $50c8: $ec
    nop                                           ; $50c9: $00
    nop                                           ; $50ca: $00
    nop                                           ; $50cb: $00
    db $ed                                        ; $50cc: $ed
    nop                                           ; $50cd: $00
    rst $38                                       ; $50ce: $ff
    rst $38                                       ; $50cf: $ff
    ld bc, $dc02                                  ; $50d0: $01 $02 $dc
    ld [c], a                                     ; $50d3: $e2
    inc bc                                        ; $50d4: $03
    inc b                                         ; $50d5: $04
    dec b                                         ; $50d6: $05
    ld [hl], a                                    ; $50d7: $77
    ld b, $07                                     ; $50d8: $06 $07
    rlca                                          ; $50da: $07
    pop de                                        ; $50db: $d1
    rst $28                                       ; $50dc: $ef
    ld [$0a09], sp                                ; $50dd: $08 $09 $0a
    cp h                                          ; $50e0: $bc
    ld [c], a                                     ; $50e1: $e2
    cp a                                          ; $50e2: $bf
    dec bc                                        ; $50e3: $0b
    inc c                                         ; $50e4: $0c
    dec c                                         ; $50e5: $0d
    ld c, $0f                                     ; $50e6: $0e $0f
    db $10                                        ; $50e8: $10
    or c                                          ; $50e9: $b1
    rst $28                                       ; $50ea: $ef
    ld de, $12fb                                  ; $50eb: $11 $fb $12
    inc de                                        ; $50ee: $13
    sbc h                                         ; $50ef: $9c
    pop hl                                        ; $50f0: $e1
    inc d                                         ; $50f1: $14
    ld [bc], a                                    ; $50f2: $02
    dec d                                         ; $50f3: $15
    ld d, $17                                     ; $50f4: $16 $17
    db $eb                                        ; $50f6: $eb
    jr @+$1b                                      ; $50f7: $18 $19

    cp a                                          ; $50f9: $bf
    ldh a, [rNR30]                                ; $50fa: $f0 $1a
    ld a, l                                       ; $50fc: $7d
    ld [c], a                                     ; $50fd: $e2
    dec de                                        ; $50fe: $1b
    inc e                                         ; $50ff: $1c
    dec e                                         ; $5100: $1d
    ld e, a                                       ; $5101: $5f
    ld e, $1f                                     ; $5102: $1e $1f
    jr nz, @+$23                                  ; $5104: $20 $21

    ld [hl+], a                                   ; $5106: $22
    ld [hl], b                                    ; $5107: $70
    rst $28                                       ; $5108: $ef
    inc hl                                        ; $5109: $23
    ld e, l                                       ; $510a: $5d
    pop hl                                        ; $510b: $e1
    rst $38                                       ; $510c: $ff
    inc h                                         ; $510d: $24
    dec h                                         ; $510e: $25
    ld h, $27                                     ; $510f: $26 $27
    jr z, jr_079_513c                             ; $5111: $28 $29

    ld a, [hl+]                                   ; $5113: $2a
    dec hl                                        ; $5114: $2b
    db $ed                                        ; $5115: $ed
    inc l                                         ; $5116: $2c
    ld d, b                                       ; $5117: $50
    rst $28                                       ; $5118: $ef
    dec l                                         ; $5119: $2d
    ld l, $3c                                     ; $511a: $2e $3c
    ldh [$2f], a                                  ; $511c: $e0 $2f
    jr nc, jr_079_5151                            ; $511e: $30 $31

    cp a                                          ; $5120: $bf
    ld [hl-], a                                   ; $5121: $32
    inc sp                                        ; $5122: $33
    jr jr_079_5159                                ; $5123: $18 $34

    dec [hl]                                      ; $5125: $35
    ld [hl], $30                                  ; $5126: $36 $30
    rst $28                                       ; $5128: $ef
    scf                                           ; $5129: $37
    db $fd                                        ; $512a: $fd
    jr c, jr_079_5149                             ; $512b: $38 $1c

    pop hl                                        ; $512d: $e1
    add hl, sp                                    ; $512e: $39
    ld a, [hl-]                                   ; $512f: $3a
    jr jr_079_514a                                ; $5130: $18 $18

    dec sp                                        ; $5132: $3b
    inc a                                         ; $5133: $3c
    rst $10                                       ; $5134: $d7
    dec a                                         ; $5135: $3d
    ld a, $3f                                     ; $5136: $3e $3f
    dec a                                         ; $5138: $3d
    rst $28                                       ; $5139: $ef
    ld b, b                                       ; $513a: $40
    db $fc                                        ; $513b: $fc

jr_079_513c:
    jp nz, $4241                                  ; $513c: $c2 $41 $42

    cp a                                          ; $513f: $bf
    ld b, e                                       ; $5140: $43
    ld b, h                                       ; $5141: $44
    ld b, l                                       ; $5142: $45
    ld b, [hl]                                    ; $5143: $46
    ld b, a                                       ; $5144: $47
    ld c, b                                       ; $5145: $48
    rst $28                                       ; $5146: $ef
    rst $08                                       ; $5147: $cf
    ld c, c                                       ; $5148: $49

jr_079_5149:
    db $fd                                        ; $5149: $fd

jr_079_514a:
    ld de, $c2db                                  ; $514a: $11 $db $c2
    ld c, d                                       ; $514d: $4a
    ld c, e                                       ; $514e: $4b
    ld c, h                                       ; $514f: $4c
    ld c, l                                       ; $5150: $4d

jr_079_5151:
    ld c, [hl]                                    ; $5151: $4e
    ld c, a                                       ; $5152: $4f
    db $ed                                        ; $5153: $ed
    ld d, b                                       ; $5154: $50
    rst $08                                       ; $5155: $cf
    rst $08                                       ; $5156: $cf
    ld d, c                                       ; $5157: $51
    ld d, d                                       ; $5158: $52

jr_079_5159:
    cp e                                          ; $5159: $bb
    jp nz, Jump_079_5453                          ; $515a: $c2 $53 $54

    ld d, l                                       ; $515d: $55
    rst $18                                       ; $515e: $df
    ld d, [hl]                                    ; $515f: $56
    jr jr_079_517a                                ; $5160: $18 $18

    ld d, a                                       ; $5162: $57
    ld e, b                                       ; $5163: $58
    xor [hl]                                      ; $5164: $ae
    rst $08                                       ; $5165: $cf
    ld e, c                                       ; $5166: $59
    scf                                           ; $5167: $37
    cp $9a                                        ; $5168: $fe $9a
    pop bc                                        ; $516a: $c1
    ld e, d                                       ; $516b: $5a
    ld e, e                                       ; $516c: $5b
    jr jr_079_51cb                                ; $516d: $18 $5c

    ld e, l                                       ; $516f: $5d
    ld e, [hl]                                    ; $5170: $5e
    ld e, a                                       ; $5171: $5f
    db $eb                                        ; $5172: $eb
    ld h, b                                       ; $5173: $60
    ld h, c                                       ; $5174: $61
    sbc a                                         ; $5175: $9f
    rst $28                                       ; $5176: $ef
    ld h, d                                       ; $5177: $62
    ld e, c                                       ; $5178: $59
    pop hl                                        ; $5179: $e1

jr_079_517a:
    ld h, e                                       ; $517a: $63
    ld h, h                                       ; $517b: $64
    jr @-$3f                                      ; $517c: $18 $bf

    ld h, l                                       ; $517e: $65
    ld h, [hl]                                    ; $517f: $66
    ld h, a                                       ; $5180: $67
    ld l, b                                       ; $5181: $68
    ld l, c                                       ; $5182: $69
    ld l, d                                       ; $5183: $6a
    sbc a                                         ; $5184: $9f
    rst $28                                       ; $5185: $ef
    ld l, e                                       ; $5186: $6b
    cp $5a                                        ; $5187: $fe $5a
    ret nz                                        ; $5189: $c0

    ld l, h                                       ; $518a: $6c
    jr jr_079_51a5                                ; $518b: $18 $18

    jr jr_079_51fc                                ; $518d: $18 $6d

    ld l, [hl]                                    ; $518f: $6e
    ld l, a                                       ; $5190: $6f
    rst $30                                       ; $5191: $f7
    ld [hl], b                                    ; $5192: $70
    ld [hl], c                                    ; $5193: $71
    ld [hl], d                                    ; $5194: $72
    ld c, l                                       ; $5195: $4d
    rst $08                                       ; $5196: $cf
    ld [hl], e                                    ; $5197: $73
    ld d, c                                       ; $5198: $51
    nop                                           ; $5199: $00
    nop                                           ; $519a: $00
    rst $38                                       ; $519b: $ff
    ld [hl], h                                    ; $519c: $74
    jr jr_079_5214                                ; $519d: $18 $75

    halt                                          ; $519f: $76
    ld [hl], a                                    ; $51a0: $77
    ld a, b                                       ; $51a1: $78
    ld a, c                                       ; $51a2: $79
    ld a, d                                       ; $51a3: $7a
    db $fd                                        ; $51a4: $fd

jr_079_51a5:
    ld a, e                                       ; $51a5: $7b
    ld e, h                                       ; $51a6: $5c
    ret nc                                        ; $51a7: $d0

    ld a, h                                       ; $51a8: $7c
    ld a, l                                       ; $51a9: $7d
    ld a, [hl]                                    ; $51aa: $7e
    scf                                           ; $51ab: $37
    ld a, a                                       ; $51ac: $7f
    add b                                         ; $51ad: $80
    cp a                                          ; $51ae: $bf
    add c                                         ; $51af: $81
    add d                                         ; $51b0: $82
    add e                                         ; $51b1: $83
    add h                                         ; $51b2: $84
    add l                                         ; $51b3: $85
    add [hl]                                      ; $51b4: $86
    dec a                                         ; $51b5: $3d
    ret nc                                        ; $51b6: $d0

    nop                                           ; $51b7: $00
    rst $38                                       ; $51b8: $ff
    add a                                         ; $51b9: $87
    adc b                                         ; $51ba: $88
    adc c                                         ; $51bb: $89
    adc d                                         ; $51bc: $8a
    adc e                                         ; $51bd: $8b
    adc h                                         ; $51be: $8c
    nop                                           ; $51bf: $00
    nop                                           ; $51c0: $00
    rst $28                                       ; $51c1: $ef
    adc l                                         ; $51c2: $8d
    adc [hl]                                      ; $51c3: $8e
    adc a                                         ; $51c4: $8f
    sub b                                         ; $51c5: $90
    rst $28                                       ; $51c6: $ef
    or c                                          ; $51c7: $b1
    sub c                                         ; $51c8: $91
    sub d                                         ; $51c9: $92
    sub e                                         ; $51ca: $93

jr_079_51cb:
    rst $38                                       ; $51cb: $ff
    sub h                                         ; $51cc: $94
    sub l                                         ; $51cd: $95
    sub [hl]                                      ; $51ce: $96
    sub a                                         ; $51cf: $97
    sbc b                                         ; $51d0: $98
    sbc c                                         ; $51d1: $99
    sbc d                                         ; $51d2: $9a
    sbc e                                         ; $51d3: $9b
    ld bc, $cf9c                                  ; $51d4: $01 $9c $cf
    cp a                                          ; $51d7: $bf
    rst $38                                       ; $51d8: $ff
    rst $38                                       ; $51d9: $ff
    rst $38                                       ; $51da: $ff
    rst $38                                       ; $51db: $ff
    rst $38                                       ; $51dc: $ff
    rst $38                                       ; $51dd: $ff
    rst $38                                       ; $51de: $ff
    rst $38                                       ; $51df: $ff
    rst $38                                       ; $51e0: $ff
    rst $38                                       ; $51e1: $ff
    rst $38                                       ; $51e2: $ff
    rst $38                                       ; $51e3: $ff
    nop                                           ; $51e4: $00
    rst $38                                       ; $51e5: $ff
    rst $38                                       ; $51e6: $ff
    rst $38                                       ; $51e7: $ff
    rst $38                                       ; $51e8: $ff
    rst $38                                       ; $51e9: $ff
    rst $38                                       ; $51ea: $ff
    rst $38                                       ; $51eb: $ff
    rst $38                                       ; $51ec: $ff
    rst $38                                       ; $51ed: $ff
    rst $38                                       ; $51ee: $ff
    rst $38                                       ; $51ef: $ff
    rst $38                                       ; $51f0: $ff
    rst $38                                       ; $51f1: $ff
    pop af                                        ; $51f2: $f1
    nop                                           ; $51f3: $00
    nop                                           ; $51f4: $00
    nop                                           ; $51f5: $00
    cp $51                                        ; $51f6: $fe $51
    ld a, $52                                     ; $51f8: $3e $52
    pop de                                        ; $51fa: $d1
    ld e, c                                       ; $51fb: $59

jr_079_51fc:
    ld l, e                                       ; $51fc: $6b
    ld e, d                                       ; $51fd: $5a
    nop                                           ; $51fe: $00
    nop                                           ; $51ff: $00
    rst $38                                       ; $5200: $ff
    ld a, $9c                                     ; $5201: $3e $9c
    ld bc, $7dc0                                  ; $5203: $01 $c0 $7d
    ret nz                                        ; $5206: $c0

    ld a, l                                       ; $5207: $7d
    rst $38                                       ; $5208: $ff
    ld a, a                                       ; $5209: $7f
    rra                                           ; $520a: $1f
    nop                                           ; $520b: $00
    nop                                           ; $520c: $00
    nop                                           ; $520d: $00
    ret nz                                        ; $520e: $c0

    ld a, l                                       ; $520f: $7d
    xor [hl]                                      ; $5210: $ae
    nop                                           ; $5211: $00
    rra                                           ; $5212: $1f
    nop                                           ; $5213: $00

jr_079_5214:
    nop                                           ; $5214: $00
    nop                                           ; $5215: $00
    rst $38                                       ; $5216: $ff
    ld a, $ae                                     ; $5217: $3e $ae
    nop                                           ; $5219: $00
    sbc h                                         ; $521a: $9c
    ld bc, $0000                                  ; $521b: $01 $00 $00
    rst $38                                       ; $521e: $ff
    ld a, $9c                                     ; $521f: $3e $9c
    ld bc, $001f                                  ; $5221: $01 $1f $00
    nop                                           ; $5224: $00
    nop                                           ; $5225: $00
    rst $38                                       ; $5226: $ff
    ld a, $c0                                     ; $5227: $3e $c0
    ld a, l                                       ; $5229: $7d
    rst $38                                       ; $522a: $ff
    ld a, a                                       ; $522b: $7f
    nop                                           ; $522c: $00
    nop                                           ; $522d: $00
    rst $38                                       ; $522e: $ff
    ld a, $9c                                     ; $522f: $3e $9c
    ld bc, $7fff                                  ; $5231: $01 $ff $7f
    nop                                           ; $5234: $00
    nop                                           ; $5235: $00
    rst $38                                       ; $5236: $ff
    ld a, $ae                                     ; $5237: $3e $ae
    nop                                           ; $5239: $00
    ret nz                                        ; $523a: $c0

    ld a, l                                       ; $523b: $7d
    nop                                           ; $523c: $00
    nop                                           ; $523d: $00
    db $fd                                        ; $523e: $fd
    nop                                           ; $523f: $00
    rst $38                                       ; $5240: $ff
    db $f4                                        ; $5241: $f4
    rlca                                          ; $5242: $07
    rlca                                          ; $5243: $07
    jr @+$21                                      ; $5244: $18 $1f

    ld [hl+], a                                   ; $5246: $22
    dec a                                         ; $5247: $3d
    ei                                            ; $5248: $fb
    ld b, c                                       ; $5249: $41
    ld a, [hl]                                    ; $524a: $7e
    ldh [$e1], a                                  ; $524b: $e0 $e1
    inc bc                                        ; $524d: $03
    inc bc                                        ; $524e: $03
    ld a, l                                       ; $524f: $7d
    ld a, [hl]                                    ; $5250: $7e
    adc a                                         ; $5251: $8f
    ld a, a                                       ; $5252: $7f
    rst $30                                       ; $5253: $f7
    ld e, a                                       ; $5254: $5f
    cp b                                          ; $5255: $b8
    cp a                                          ; $5256: $bf
    ld h, b                                       ; $5257: $60
    ld a, c                                       ; $5258: $79
    add $e6                                       ; $5259: $c6 $e6
    pop hl                                        ; $525b: $e1
    rst $38                                       ; $525c: $ff
    ld hl, sp-$01                                 ; $525d: $f8 $ff
    ld d, h                                       ; $525f: $54
    xor e                                         ; $5260: $ab
    ld a, [$fdf5]                                 ; $5261: $fa $f5 $fd
    ld c, $ff                                     ; $5264: $0e $ff
    rst $38                                       ; $5266: $ff
    inc bc                                        ; $5267: $03
    rst $00                                       ; $5268: $c7
    jr c, jr_079_526b                             ; $5269: $38 $00

jr_079_526b:
    nop                                           ; $526b: $00
    rst $38                                       ; $526c: $ff
    rst $38                                       ; $526d: $ff
    db $fd                                        ; $526e: $fd
    nop                                           ; $526f: $00
    cp $e0                                        ; $5270: $fe $e0
    and b                                         ; $5272: $a0
    ld e, a                                       ; $5273: $5f
    nop                                           ; $5274: $00
    rst $38                                       ; $5275: $ff
    xor b                                         ; $5276: $a8
    ld d, a                                       ; $5277: $57
    rst $38                                       ; $5278: $ff
    ret nc                                        ; $5279: $d0

    xor a                                         ; $527a: $af
    nop                                           ; $527b: $00
    nop                                           ; $527c: $00
    add b                                         ; $527d: $80
    add b                                         ; $527e: $80
    ld a, b                                       ; $527f: $78
    ld hl, sp-$0f                                 ; $5280: $f8 $f1
    rlca                                          ; $5282: $07
    db $ec                                        ; $5283: $ec
    ld [c], a                                     ; $5284: $e2
    db $fc                                        ; $5285: $fc
    ld [c], a                                     ; $5286: $e2
    sbc a                                         ; $5287: $9f
    db $e4                                        ; $5288: $e4
    ldh [$e0], a                                  ; $5289: $e0 $e0
    inc e                                         ; $528b: $1c
    db $fc                                        ; $528c: $fc
    reti                                          ; $528d: $d9


    inc bc                                        ; $528e: $03
    ldh a, [$e8]                                  ; $528f: $f0 $e8
    adc b                                         ; $5291: $88
    db $e3                                        ; $5292: $e3
    ret nz                                        ; $5293: $c0

    ret nz                                        ; $5294: $c0

    add b                                         ; $5295: $80
    rst $20                                       ; $5296: $e7
    rra                                           ; $5297: $1f
    rra                                           ; $5298: $1f
    rst $38                                       ; $5299: $ff
    ldh [rIE], a                                  ; $529a: $e0 $ff
    dec bc                                        ; $529c: $0b
    db $f4                                        ; $529d: $f4
    ld c, d                                       ; $529e: $4a
    ld [hl], l                                    ; $529f: $75
    add c                                         ; $52a0: $81
    cp $bf                                        ; $52a1: $fe $bf
    adc e                                         ; $52a3: $8b
    push af                                       ; $52a4: $f5
    add c                                         ; $52a5: $81
    rst $38                                       ; $52a6: $ff
    ld b, e                                       ; $52a7: $43

jr_079_52a8:
    ld a, l                                       ; $52a8: $7d
    xor b                                         ; $52a9: $a8
    pop hl                                        ; $52aa: $e1
    db $fd                                        ; $52ab: $fd
    rst $38                                       ; $52ac: $ff
    ld [bc], a                                    ; $52ad: $02
    ldh a, [$8f]                                  ; $52ae: $f0 $8f
    db $e4                                        ; $52b0: $e4
    sbc e                                         ; $52b1: $9b
    db $e4                                        ; $52b2: $e4
    dec de                                        ; $52b3: $1b
    adc $f7                                       ; $52b4: $ce $f7
    ld sp, $708f                                  ; $52b6: $31 $8f $70
    sbc b                                         ; $52b9: $98
    pop hl                                        ; $52ba: $e1
    ld b, b                                       ; $52bb: $40
    cp a                                          ; $52bc: $bf
    add a                                         ; $52bd: $87
    ld a, b                                       ; $52be: $78
    rst $38                                       ; $52bf: $ff
    daa                                           ; $52c0: $27
    ret c                                         ; $52c1: $d8

    ld h, e                                       ; $52c2: $63
    sbc h                                         ; $52c3: $9c
    di                                            ; $52c4: $f3
    inc c                                         ; $52c5: $0c
    pop af                                        ; $52c6: $f1
    ld c, $ff                                     ; $52c7: $0e $ff
    pop af                                        ; $52c9: $f1
    ld c, $f9                                     ; $52ca: $0e $f9
    or $0f                                        ; $52cc: $f6 $0f
    db $fc                                        ; $52ce: $fc
    ld [$bf55], a                                 ; $52cf: $ea $55 $bf
    ret nc                                        ; $52d2: $d0

    ld l, a                                       ; $52d3: $6f
    ld [$f435], a                                 ; $52d4: $ea $35 $f4
    dec hl                                        ; $52d7: $2b

jr_079_52d8:
    db $fc                                        ; $52d8: $fc
    db $e3                                        ; $52d9: $e3
    call nc, $6b8d                                ; $52da: $d4 $8d $6b
    ld [hl], h                                    ; $52dd: $74
    pop hl                                        ; $52de: $e1
    add b                                         ; $52df: $80
    ld a, a                                       ; $52e0: $7f
    db $fc                                        ; $52e1: $fc
    db $e3                                        ; $52e2: $e3
    ld l, h                                       ; $52e3: $6c
    pop hl                                        ; $52e4: $e1
    cp $ed                                        ; $52e5: $fe $ed
    jr nz, jr_079_52a8                            ; $52e7: $20 $bf

    ldh [rNR23], a                                ; $52e9: $e0 $18
    ld hl, sp+$06                                 ; $52eb: $f8 $06
    cp $01                                        ; $52ed: $fe $01
    ld h, b                                       ; $52ef: $60
    xor $80                                       ; $52f0: $ee $80
    rst $38                                       ; $52f2: $ff
    add b                                         ; $52f3: $80
    ld b, b                                       ; $52f4: $40
    ret nz                                        ; $52f5: $c0

    jr nz, jr_079_52d8                            ; $52f6: $20 $e0

    db $10                                        ; $52f8: $10
    ldh a, [rDIV]                                 ; $52f9: $f0 $04
    rst $38                                       ; $52fb: $ff
    rlca                                          ; $52fc: $07
    ld [$100f], sp                                ; $52fd: $08 $0f $10
    rra                                           ; $5300: $1f
    inc de                                        ; $5301: $13
    rra                                           ; $5302: $1f
    rla                                           ; $5303: $17
    ld a, a                                       ; $5304: $7f
    jr jr_079_5312                                ; $5305: $18 $0b

    inc c                                         ; $5307: $0c
    rrca                                          ; $5308: $0f
    ld [$0407], sp                                ; $5309: $08 $07 $04
    inc h                                         ; $530c: $24
    pop hl                                        ; $530d: $e1
    add sp, -$01                                  ; $530e: $e8 $ff
    ldh [$31], a                                  ; $5310: $e0 $31

jr_079_5312:
    rst $20                                       ; $5312: $e7
    ldh a, [$eb]                                  ; $5313: $f0 $eb
    dec e                                         ; $5315: $1d
    sub b                                         ; $5316: $90
    ld [c], a                                     ; $5317: $e2
    rst $38                                       ; $5318: $ff
    db $fc                                        ; $5319: $fc
    ld a, a                                       ; $531a: $7f
    push hl                                       ; $531b: $e5
    rst $38                                       ; $531c: $ff
    inc hl                                        ; $531d: $23
    ld [c], a                                     ; $531e: $e2
    rst $38                                       ; $531f: $ff
    ld sp, hl                                     ; $5320: $f9
    db $e4                                        ; $5321: $e4
    db $ec                                        ; $5322: $ec
    pop hl                                        ; $5323: $e1
    ldh a, [$7f]                                  ; $5324: $f0 $7f
    db $fc                                        ; $5326: $fc
    rst $38                                       ; $5327: $ff
    rrca                                          ; $5328: $0f
    rst $38                                       ; $5329: $ff
    jp $f58a                                      ; $532a: $c3 $8a $f5


    ld [hl], b                                    ; $532d: $70
    rst $38                                       ; $532e: $ff
    ld c, $e5                                     ; $532f: $0e $e5
    db $fd                                        ; $5331: $fd
    ld [$f0e5], a                                 ; $5332: $ea $e5 $f0
    ret c                                         ; $5335: $d8

    jp nz, $e260                                  ; $5336: $c2 $60 $e2

    rst $38                                       ; $5339: $ff
    ld h, b                                       ; $533a: $60
    rst $38                                       ; $533b: $ff
    rst $38                                       ; $533c: $ff
    db $10                                        ; $533d: $10
    rst $38                                       ; $533e: $ff
    ld [$08ff], sp                                ; $533f: $08 $ff $08
    ld hl, sp+$08                                 ; $5342: $f8 $08
    ld hl, sp-$01                                 ; $5344: $f8 $ff
    inc d                                         ; $5346: $14
    db $ec                                        ; $5347: $ec
    inc b                                         ; $5348: $04
    db $fc                                        ; $5349: $fc
    ld [de], a                                    ; $534a: $12
    xor $0a                                       ; $534b: $ee $0a
    or $ff                                        ; $534d: $f6 $ff
    dec d                                         ; $534f: $15
    db $eb                                        ; $5350: $eb
    dec bc                                        ; $5351: $0b
    push af                                       ; $5352: $f5
    inc bc                                        ; $5353: $03
    ld [bc], a                                    ; $5354: $02
    ld bc, $fc01                                  ; $5355: $01 $01 $fc
    ld l, h                                       ; $5358: $6c
    ret                                           ; $5359: $c9


    ld sp, $40e2                                  ; $535a: $31 $e2 $40
    ccf                                           ; $535d: $3f
    jr nz, jr_079_537f                            ; $535e: $20 $1f

    jr jr_079_5369                                ; $5360: $18 $07

    rst $38                                       ; $5362: $ff
    inc b                                         ; $5363: $04
    inc bc                                        ; $5364: $03
    inc bc                                        ; $5365: $03
    ld bc, $fe01                                  ; $5366: $01 $01 $fe

jr_079_5369:
    ccf                                           ; $5369: $3f
    cp $ff                                        ; $536a: $fe $ff
    ld a, a                                       ; $536c: $7f
    rst $38                                       ; $536d: $ff
    ld a, a                                       ; $536e: $7f
    rst $38                                       ; $536f: $ff
    rst $38                                       ; $5370: $ff
    rst $00                                       ; $5371: $c7
    rst $38                                       ; $5372: $ff
    add e                                         ; $5373: $83
    ld e, a                                       ; $5374: $5f
    di                                            ; $5375: $f3
    inc bc                                        ; $5376: $03
    jp $9d1d                                      ; $5377: $c3 $1d $9d


    sub a                                         ; $537a: $97
    jp $d080                                      ; $537b: $c3 $80 $d0


    rst $20                                       ; $537e: $e7

jr_079_537f:
    rst $38                                       ; $537f: $ff
    ccf                                           ; $5380: $3f
    rst $38                                       ; $5381: $ff
    rlca                                          ; $5382: $07
    rst $38                                       ; $5383: $ff
    rrca                                          ; $5384: $0f
    rra                                           ; $5385: $1f
    rra                                           ; $5386: $1f
    ccf                                           ; $5387: $3f
    rst $38                                       ; $5388: $ff
    ccf                                           ; $5389: $3f
    ld a, h                                       ; $538a: $7c
    ld a, h                                       ; $538b: $7c
    ld [hl], b                                    ; $538c: $70
    ld [hl], b                                    ; $538d: $70
    rst $20                                       ; $538e: $e7
    rst $20                                       ; $538f: $e7
    db $fc                                        ; $5390: $fc
    di                                            ; $5391: $f3
    rst $38                                       ; $5392: $ff
    cp $40                                        ; $5393: $fe $40
    pop hl                                        ; $5395: $e1
    inc a                                         ; $5396: $3c
    ldh [rIF], a                                  ; $5397: $e0 $0f
    rrca                                          ; $5399: $0f
    rlca                                          ; $539a: $07
    rlca                                          ; $539b: $07
    cp a                                          ; $539c: $bf
    jp Jump_000_04c3                              ; $539d: $c3 $c3 $04


    rst $38                                       ; $53a0: $ff
    ld [bc], a                                    ; $53a1: $02
    rst $38                                       ; $53a2: $ff
    ld [bc], a                                    ; $53a3: $02
    pop hl                                        ; $53a4: $e1
    add b                                         ; $53a5: $80
    xor [hl]                                      ; $53a6: $ae
    ld c, d                                       ; $53a7: $4a
    ldh [$c0], a                                  ; $53a8: $e0 $c0
    rst $38                                       ; $53aa: $ff
    ldh [rHDMA2], a                               ; $53ab: $e0 $52
    and $40                                       ; $53ad: $e6 $40
    cp $e0                                        ; $53af: $fe $e0

jr_079_53b1:
    jr nz, jr_079_53b1                            ; $53b1: $20 $fe

    cp $e0                                        ; $53b3: $fe $e0
    dec d                                         ; $53b5: $15
    ld [$f40b], a                                 ; $53b6: $ea $0b $f4
    ld d, l                                       ; $53b9: $55
    xor d                                         ; $53ba: $aa
    rrca                                          ; $53bb: $0f
    push af                                       ; $53bc: $f5
    ldh a, [$fc]                                  ; $53bd: $f0 $fc
    push hl                                       ; $53bf: $e5
    add b                                         ; $53c0: $80
    rst $38                                       ; $53c1: $ff
    ldh [$c0], a                                  ; $53c2: $e0 $c0
    ld b, b                                       ; $53c4: $40
    ret nz                                        ; $53c5: $c0

    ld b, b                                       ; $53c6: $40
    ld e, e                                       ; $53c7: $5b
    ldh [rNR41], a                                ; $53c8: $e0 $20
    cp $e1                                        ; $53ca: $fe $e1
    ldh a, [rNR10]                                ; $53cc: $f0 $10
    xor a                                         ; $53ce: $af
    call z, $fe01                                 ; $53cf: $cc $01 $fe
    pop hl                                        ; $53d2: $e1
    ei                                            ; $53d3: $fb
    cp $02                                        ; $53d4: $fe $02
    cp $e1                                        ; $53d6: $fe $e1
    db $fc                                        ; $53d8: $fc
    inc b                                         ; $53d9: $04
    db $fc                                        ; $53da: $fc
    ld a, h                                       ; $53db: $7c
    add e                                         ; $53dc: $83
    rst $38                                       ; $53dd: $ff
    add e                                         ; $53de: $83
    ld [hl+], a                                   ; $53df: $22
    ld a, $41                                     ; $53e0: $3e $41
    ld a, a                                       ; $53e2: $7f
    ld c, l                                       ; $53e3: $4d
    ld a, a                                       ; $53e4: $7f
    sbc a                                         ; $53e5: $9f
    rst $38                                       ; $53e6: $ff
    di                                            ; $53e7: $f3
    sbc a                                         ; $53e8: $9f
    pop af                                        ; $53e9: $f1
    cp a                                          ; $53ea: $bf
    rst $20                                       ; $53eb: $e7
    cp a                                          ; $53ec: $bf
    rst $28                                       ; $53ed: $ef
    cp a                                          ; $53ee: $bf
    push af                                       ; $53ef: $f5
    rst $28                                       ; $53f0: $ef
    and b                                         ; $53f1: $a0
    and a                                         ; $53f2: $a7
    ld bc, $e2ff                                  ; $53f3: $01 $ff $e2
    ret c                                         ; $53f6: $d8

    rst $18                                       ; $53f7: $df
    and b                                         ; $53f8: $a0
    cp a                                          ; $53f9: $bf
    rst $38                                       ; $53fa: $ff
    ld b, b                                       ; $53fb: $40
    ld a, a                                       ; $53fc: $7f
    add c                                         ; $53fd: $81
    rst $38                                       ; $53fe: $ff
    add a                                         ; $53ff: $87
    cp $0f                                        ; $5400: $fe $0f
    ld hl, sp-$01                                 ; $5402: $f8 $ff
    rra                                           ; $5404: $1f
    pop af                                        ; $5405: $f1
    rra                                           ; $5406: $1f
    di                                            ; $5407: $f3
    ld hl, $11e1                                  ; $5408: $21 $e1 $11
    pop af                                        ; $540b: $f1

jr_079_540c:
    ld a, a                                       ; $540c: $7f
    db $10                                        ; $540d: $10
    ldh a, [$e8]                                  ; $540e: $f0 $e8
    ld hl, sp-$08                                 ; $5410: $f8 $f8
    jr jr_079_540c                                ; $5412: $18 $f8

    ei                                            ; $5414: $fb
    ldh [rIE], a                                  ; $5415: $e0 $ff
    ld hl, sp-$08                                 ; $5417: $f8 $f8
    ldh a, [$df]                                  ; $5419: $f0 $df
    db $fc                                        ; $541b: $fc
    rst $08                                       ; $541c: $cf
    rst $18                                       ; $541d: $df
    jp $87f5                                      ; $541e: $c3 $f5 $87


    cpl                                           ; $5421: $2f
    and $20                                       ; $5422: $e6 $20
    ld h, [hl]                                    ; $5424: $66
    ldh [$e0], a                                  ; $5425: $e0 $e0
    cp a                                          ; $5427: $bf
    sub b                                         ; $5428: $90
    rra                                           ; $5429: $1f
    cp a                                          ; $542a: $bf
    ld [$040f], sp                                ; $542b: $08 $0f $04
    rlca                                          ; $542e: $07
    ld [bc], a                                    ; $542f: $02
    inc bc                                        ; $5430: $03
    cp $c0                                        ; $5431: $fe $c0
    cp $fc                                        ; $5433: $fe $fc
    adc e                                         ; $5435: $8b
    ldh [$fc], a                                  ; $5436: $e0 $fc
    ldh [rTIMA], a                                ; $5438: $e0 $05
    ld a, [$ff00]                                 ; $543a: $fa $00 $ff
    ld d, l                                       ; $543d: $55
    xor d                                         ; $543e: $aa
    rst $38                                       ; $543f: $ff
    ld [bc], a                                    ; $5440: $02
    db $fd                                        ; $5441: $fd
    ld d, l                                       ; $5442: $55
    xor d                                         ; $5443: $aa
    cpl                                           ; $5444: $2f
    ret nc                                        ; $5445: $d0

    ld d, l                                       ; $5446: $55
    xor d                                         ; $5447: $aa
    rst $38                                       ; $5448: $ff
    ccf                                           ; $5449: $3f
    ret nz                                        ; $544a: $c0

    ld d, a                                       ; $544b: $57
    xor b                                         ; $544c: $a8
    cp a                                          ; $544d: $bf
    ld b, b                                       ; $544e: $40
    ld d, a                                       ; $544f: $57
    xor b                                         ; $5450: $a8
    ccf                                           ; $5451: $3f
    rst $38                                       ; $5452: $ff

Jump_079_5453:
    nop                                           ; $5453: $00
    ldh a, [rNR10]                                ; $5454: $f0 $10
    ldh a, [rNR10]                                ; $5456: $f0 $10
    xor l                                         ; $5458: $ad
    ret nz                                        ; $5459: $c0

    xor c                                         ; $545a: $a9
    ret nz                                        ; $545b: $c0

    db $fc                                        ; $545c: $fc
    ld [hl], b                                    ; $545d: $70
    ldh [$fe], a                                  ; $545e: $e0 $fe
    ldh [$fe], a                                  ; $5460: $e0 $fe
    ld b, $f8                                     ; $5462: $06 $f8
    add hl, bc                                    ; $5464: $09
    ldh a, [rNR13]                                ; $5465: $f0 $13
    ccf                                           ; $5467: $3f
    ldh a, [rNR13]                                ; $5468: $f0 $13
    ldh [rNR43], a                                ; $546a: $e0 $22
    ldh [rNR42], a                                ; $546c: $e0 $21
    inc a                                         ; $546e: $3c
    pop hl                                        ; $546f: $e1
    db $10                                        ; $5470: $10
    and b                                         ; $5471: $a0
    ld a, a                                       ; $5472: $7f
    ld d, b                                       ; $5473: $50
    nop                                           ; $5474: $00
    add sp, $00                                   ; $5475: $e8 $00
    ret nc                                        ; $5477: $d0

    nop                                           ; $5478: $00
    xor b                                         ; $5479: $a8
    ld hl, sp-$20                                 ; $547a: $f8 $e0
    cp $03                                        ; $547c: $fe $03
    and b                                         ; $547e: $a0
    add l                                         ; $547f: $85
    nop                                           ; $5480: $00
    pop hl                                        ; $5481: $e1
    nop                                           ; $5482: $00
    pop af                                        ; $5483: $f1
    nop                                           ; $5484: $00
    ld sp, hl                                     ; $5485: $f9
    ld h, a                                       ; $5486: $67
    nop                                           ; $5487: $00
    db $fd                                        ; $5488: $fd
    nop                                           ; $5489: $00
    and a                                         ; $548a: $a7
    ldh [$37], a                                  ; $548b: $e0 $37
    and b                                         ; $548d: $a0
    ld [bc], a                                    ; $548e: $02
    inc bc                                        ; $548f: $03
    cp $e9                                        ; $5490: $fe $e9
    cp a                                          ; $5492: $bf
    ld bc, $3f01                                  ; $5493: $01 $01 $3f
    db $e3                                        ; $5496: $e3
    ccf                                           ; $5497: $3f
    rst $20                                       ; $5498: $e7
    cp $e6                                        ; $5499: $fe $e6
    db $e3                                        ; $549b: $e3
    rst $18                                       ; $549c: $df
    rra                                           ; $549d: $1f
    di                                            ; $549e: $f3
    ld hl, sp-$08                                 ; $549f: $f8 $f8
    cp b                                          ; $54a1: $b8
    ld e, c                                       ; $54a2: $59
    pop hl                                        ; $54a3: $e1
    ld hl, sp-$10                                 ; $54a4: $f8 $f0
    ld a, [c]                                     ; $54a6: $f2
    rst $38                                       ; $54a7: $ff
    ldh [$e0], a                                  ; $54a8: $e0 $e0
    rst $38                                       ; $54aa: $ff
    ldh [$c0], a                                  ; $54ab: $e0 $c0
    adc c                                         ; $54ad: $89
    ld bc, $0601                                  ; $54ae: $01 $01 $06
    rlca                                          ; $54b1: $07
    rst $38                                       ; $54b2: $ff
    inc bc                                        ; $54b3: $03
    ld [bc], a                                    ; $54b4: $02
    rlca                                          ; $54b5: $07
    inc b                                         ; $54b6: $04
    rlca                                          ; $54b7: $07
    inc b                                         ; $54b8: $04
    rrca                                          ; $54b9: $0f
    ld [$17ff], sp                                ; $54ba: $08 $ff $17
    jr jr_079_552e                                ; $54bd: $18 $6f

    ld [hl], b                                    ; $54bf: $70
    sbc a                                         ; $54c0: $9f
    ldh [$3f], a                                  ; $54c1: $e0 $3f
    ret nz                                        ; $54c3: $c0

    rst $38                                       ; $54c4: $ff
    push de                                       ; $54c5: $d5
    xor d                                         ; $54c6: $aa
    db $eb                                        ; $54c7: $eb
    ld d, h                                       ; $54c8: $54

jr_079_54c9:
    push af                                       ; $54c9: $f5
    ld c, d                                       ; $54ca: $4a
    rst $38                                       ; $54cb: $ff
    jr nz, jr_079_54c9                            ; $54cc: $20 $fb

    push af                                       ; $54ce: $f5
    ld a, [de]                                    ; $54cf: $1a
    ld de, $5fc3                                  ; $54d0: $11 $c3 $5f
    and b                                         ; $54d3: $a0
    rst $38                                       ; $54d4: $ff
    nop                                           ; $54d5: $00
    ld a, a                                       ; $54d6: $7f
    pop hl                                        ; $54d7: $e1
    add b                                         ; $54d8: $80
    pop hl                                        ; $54d9: $e1
    add a                                         ; $54da: $87
    ld e, d                                       ; $54db: $5a
    db $e3                                        ; $54dc: $e3
    ld d, h                                       ; $54dd: $54
    pop hl                                        ; $54de: $e1
    ld c, d                                       ; $54df: $4a
    pop hl                                        ; $54e0: $e1
    ldh a, [rNR10]                                ; $54e1: $f0 $10
    rst $18                                       ; $54e3: $df
    db $fd                                        ; $54e4: $fd
    ret nz                                        ; $54e5: $c0

    cp $e1                                        ; $54e6: $fe $e1
    rst $28                                       ; $54e8: $ef
    ldh [$eb], a                                  ; $54e9: $e0 $eb
    db $e4                                        ; $54eb: $e4
    push af                                       ; $54ec: $f5
    ld a, [c]                                     ; $54ed: $f2
    rst $28                                       ; $54ee: $ef
    ld a, [$f8f9]                                 ; $54ef: $fa $f9 $f8
    ld hl, sp+$60                                 ; $54f2: $f8 $60
    add a                                         ; $54f4: $87
    add d                                         ; $54f5: $82
    nop                                           ; $54f6: $00
    ld d, l                                       ; $54f7: $55
    rst $38                                       ; $54f8: $ff
    nop                                           ; $54f9: $00
    xor a                                         ; $54fa: $af
    nop                                           ; $54fb: $00
    ld bc, $0200                                  ; $54fc: $01 $00 $02
    nop                                           ; $54ff: $00
    dec b                                         ; $5500: $05
    rst $38                                       ; $5501: $ff
    nop                                           ; $5502: $00
    dec hl                                        ; $5503: $2b
    nop                                           ; $5504: $00
    ld d, a                                       ; $5505: $57
    nop                                           ; $5506: $00
    cp a                                          ; $5507: $bf
    nop                                           ; $5508: $00
    ld a, a                                       ; $5509: $7f

jr_079_550a:
    rst $38                                       ; $550a: $ff
    ld bc, $03ff                                  ; $550b: $01 $ff $03
    add c                                         ; $550e: $81
    ld bc, $0183                                  ; $550f: $01 $83 $01
    rst $00                                       ; $5512: $c7
    rst $38                                       ; $5513: $ff
    nop                                           ; $5514: $00
    ret nz                                        ; $5515: $c0

    ld bc, $42e0                                  ; $5516: $01 $e0 $42
    ldh [$80], a                                  ; $5519: $e0 $80
    ldh a, [$df]                                  ; $551b: $f0 $df
    ldh [rIE], a                                  ; $551d: $e0 $ff
    rst $38                                       ; $551f: $ff
    rra                                           ; $5520: $1f
    rst $30                                       ; $5521: $f7
    call z, $28e0                                 ; $5522: $cc $e0 $28
    nop                                           ; $5525: $00
    ld a, l                                       ; $5526: $7d
    ld [hl], h                                    ; $5527: $74
    jr nz, jr_079_550a                            ; $5528: $20 $e0

    nop                                           ; $552a: $00
    rrca                                          ; $552b: $0f
    rrca                                          ; $552c: $0f
    rst $38                                       ; $552d: $ff

jr_079_552e:
    rst $38                                       ; $552e: $ff
    sbc [hl]                                      ; $552f: $9e
    add e                                         ; $5530: $83
    rst $28                                       ; $5531: $ef
    db $10                                        ; $5532: $10
    db $10                                        ; $5533: $10
    jr nc, @+$32                                  ; $5534: $30 $30

    ld c, c                                       ; $5536: $49
    ld [c], a                                     ; $5537: $e2
    ld hl, sp+$1c                                 ; $5538: $f8 $1c
    dec de                                        ; $553a: $1b
    rst $38                                       ; $553b: $ff
    ld [hl-], a                                   ; $553c: $32
    dec l                                         ; $553d: $2d
    dec h                                         ; $553e: $25
    ld a, [hl-]                                   ; $553f: $3a
    dec hl                                        ; $5540: $2b
    inc [hl]                                      ; $5541: $34
    rra                                           ; $5542: $1f
    db $10                                        ; $5543: $10
    ld a, a                                       ; $5544: $7f
    rrca                                          ; $5545: $0f
    ld c, $06                                     ; $5546: $0e $06
    dec b                                         ; $5548: $05
    inc c                                         ; $5549: $0c
    dec bc                                        ; $554a: $0b
    ld e, a                                       ; $554b: $5f
    ld [hl], c                                    ; $554c: $71
    pop bc                                        ; $554d: $c1
    cp $70                                        ; $554e: $fe $70
    pop hl                                        ; $5550: $e1
    ld bc, $827e                                  ; $5551: $01 $7e $82
    ld a, h                                       ; $5554: $7c
    add h                                         ; $5555: $84
    ld hl, sp+$08                                 ; $5556: $f8 $08
    ld a, a                                       ; $5558: $7f
    rst $38                                       ; $5559: $ff
    rrca                                          ; $555a: $0f
    ld hl, sp+$18                                 ; $555b: $f8 $18
    ldh [$60], a                                  ; $555d: $e0 $60
    add b                                         ; $555f: $80
    xor a                                         ; $5560: $af
    and e                                         ; $5561: $a3
    ld a, a                                       ; $5562: $7f
    inc bc                                        ; $5563: $03
    ld bc, $ff0f                                  ; $5564: $01 $0f $ff
    ret nz                                        ; $5567: $c0

    ccf                                           ; $5568: $3f
    jr c, @-$78                                   ; $5569: $38 $86

    and b                                         ; $556b: $a0
    db $fc                                        ; $556c: $fc
    ld l, d                                       ; $556d: $6a
    and b                                         ; $556e: $a0
    ld l, b                                       ; $556f: $68
    and b                                         ; $5570: $a0
    ldh [$e0], a                                  ; $5571: $e0 $e0
    ldh a, [$f0]                                  ; $5573: $f0 $f0
    rra                                           ; $5575: $1f
    ldh [$b1], a                                  ; $5576: $e0 $b1
    ccf                                           ; $5578: $3f
    add hl, hl                                    ; $5579: $29
    ldh [$3d], a                                  ; $557a: $e0 $3d
    ldh [$fe], a                                  ; $557c: $e0 $fe
    db $e3                                        ; $557e: $e3
    rst $38                                       ; $557f: $ff
    rrca                                          ; $5580: $0f
    cp $e4                                        ; $5581: $fe $e4
    rlca                                          ; $5583: $07
    ld [c], a                                     ; $5584: $e2
    adc b                                         ; $5585: $88
    and b                                         ; $5586: $a0
    inc bc                                        ; $5587: $03
    and l                                         ; $5588: $a5
    and b                                         ; $5589: $a0
    ld a, h                                       ; $558a: $7c
    ldh [$fe], a                                  ; $558b: $e0 $fe
    add sp, -$21                                  ; $558d: $e8 $df
    rst $38                                       ; $558f: $ff
    rra                                           ; $5590: $1f
    ld a, h                                       ; $5591: $7c
    ldh a, [$ea]                                  ; $5592: $f0 $ea
    ld a, [$fef9]                                 ; $5594: $fa $f9 $fe
    rst $38                                       ; $5597: $ff
    cp $fe                                        ; $5598: $fe $fe
    db $fc                                        ; $559a: $fc
    cp $a0                                        ; $559b: $fe $a0
    cp $fe                                        ; $559d: $fe $fe
    ldh [$e0], a                                  ; $559f: $e0 $e0
    ldh a, [$c0]                                  ; $55a1: $f0 $c0
    ldh a, [rP1]                                  ; $55a3: $f0 $00
    ldh [rP1], a                                  ; $55a5: $e0 $00
    cp $e2                                        ; $55a7: $fe $e2
    ld h, b                                       ; $55a9: $60
    add hl, bc                                    ; $55aa: $09
    ld c, $12                                     ; $55ab: $0e $12
    dec e                                         ; $55ad: $1d
    dec d                                         ; $55ae: $15
    ld a, [de]                                    ; $55af: $1a
    dec de                                        ; $55b0: $1b
    push bc                                       ; $55b1: $c5
    inc d                                         ; $55b2: $14
    ld [hl], h                                    ; $55b3: $74
    add b                                         ; $55b4: $80
    rlca                                          ; $55b5: $07
    ld d, h                                       ; $55b6: $54
    ld h, c                                       ; $55b7: $61
    jr nz, @-$3d                                  ; $55b8: $20 $c1

    ld [hl], h                                    ; $55ba: $74
    and c                                         ; $55bb: $a1
    ret nz                                        ; $55bc: $c0

    ld b, b                                       ; $55bd: $40
    cp $5c                                        ; $55be: $fe $5c
    db $e3                                        ; $55c0: $e3
    ld b, $1f                                     ; $55c1: $06 $1f
    ld [$103f], sp                                ; $55c3: $08 $3f $10
    ld a, a                                       ; $55c6: $7f
    inc a                                         ; $55c7: $3c
    ei                                            ; $55c8: $fb
    ld a, a                                       ; $55c9: $7f
    ld [hl+], a                                   ; $55ca: $22
    ld a, $a3                                     ; $55cb: $3e $a3
    cp $0f                                        ; $55cd: $fe $0f
    ldh [rTAC], a                                 ; $55cf: $e0 $07
    ldh a, [rIE]                                  ; $55d1: $f0 $ff
    xor a                                         ; $55d3: $af
    ld d, b                                       ; $55d4: $50
    ld d, [hl]                                    ; $55d5: $56
    xor c                                         ; $55d6: $a9
    xor [hl]                                      ; $55d7: $ae
    ld d, c                                       ; $55d8: $51
    ld e, [hl]                                    ; $55d9: $5e

jr_079_55da:
    and b                                         ; $55da: $a0
    adc a                                         ; $55db: $8f
    cp h                                          ; $55dc: $bc
    ld b, d                                       ; $55dd: $42
    ld a, l                                       ; $55de: $7d
    add c                                         ; $55df: $81
    ld e, c                                       ; $55e0: $59
    db $e4                                        ; $55e1: $e4
    ld de, $6da1                                  ; $55e2: $11 $a1 $6d
    ld h, d                                       ; $55e5: $62
    ld [hl], b                                    ; $55e6: $70
    rst $38                                       ; $55e7: $ff
    nop                                           ; $55e8: $00
    ld a, b                                       ; $55e9: $78
    nop                                           ; $55ea: $00
    inc a                                         ; $55eb: $3c
    ld b, e                                       ; $55ec: $43
    cp [hl]                                       ; $55ed: $be
    add b                                         ; $55ee: $80
    cp a                                          ; $55ef: $bf
    ld a, a                                       ; $55f0: $7f
    add b                                         ; $55f1: $80
    sbc a                                         ; $55f2: $9f
    and b                                         ; $55f3: $a0
    rst $18                                       ; $55f4: $df
    ret nz                                        ; $55f5: $c0

    rst $08                                       ; $55f6: $cf
    ret nc                                        ; $55f7: $d0

    ld e, [hl]                                    ; $55f8: $5e
    ldh [$a7], a                                  ; $55f9: $e0 $a7
    adc a                                         ; $55fb: $8f
    sbc a                                         ; $55fc: $9f
    inc bc                                        ; $55fd: $03
    ret c                                         ; $55fe: $d8

    ret nz                                        ; $55ff: $c0

    db $f4                                        ; $5600: $f4
    add b                                         ; $5601: $80
    ld a, a                                       ; $5602: $7f
    rst $38                                       ; $5603: $ff
    ldh [rIE], a                                  ; $5604: $e0 $ff
    rst $28                                       ; $5606: $ef
    di                                            ; $5607: $f3
    rst $38                                       ; $5608: $ff
    call c, Call_000_35e7                         ; $5609: $dc $e7 $35
    and b                                         ; $560c: $a0
    inc c                                         ; $560d: $0c
    db $f4                                        ; $560e: $f4
    ld hl, sp+$7d                                 ; $560f: $f8 $7d
    ld a, b                                       ; $5611: $78
    ld [hl], b                                    ; $5612: $70
    and b                                         ; $5613: $a0
    ld [$fcf8], sp                                ; $5614: $08 $f8 $fc
    ldh [$f8], a                                  ; $5617: $e0 $f8
    halt                                          ; $5619: $76
    ldh [$fa], a                                  ; $561a: $e0 $fa
    reti                                          ; $561c: $d9


    ld d, e                                       ; $561d: $53
    ld [bc], a                                    ; $561e: $02
    jp nz, Jump_000_0a48                          ; $561f: $c2 $48 $0a

    inc bc                                        ; $5622: $03
    rla                                           ; $5623: $17
    nop                                           ; $5624: $00
    xor e                                         ; $5625: $ab
    cp a                                          ; $5626: $bf
    ld bc, $105f                                  ; $5627: $01 $5f $10
    ld [hl], h                                    ; $562a: $74
    nop                                           ; $562b: $00
    jr jr_079_55da                                ; $562c: $18 $ac

    ld b, h                                       ; $562e: $44

jr_079_562f:
    jp $c7fe                                      ; $562f: $c3 $fe $c7


    ld h, b                                       ; $5632: $60
    add e                                         ; $5633: $83
    ld sp, hl                                     ; $5634: $f9
    dec b                                         ; $5635: $05
    di                                            ; $5636: $f3
    dec bc                                        ; $5637: $0b
    rst $20                                       ; $5638: $e7
    rla                                           ; $5639: $17
    ccf                                           ; $563a: $3f
    rst $08                                       ; $563b: $cf
    cpl                                           ; $563c: $2f
    rra                                           ; $563d: $1f
    rst $18                                       ; $563e: $df
    ccf                                           ; $563f: $3f
    ccf                                           ; $5640: $3f
    and d                                         ; $5641: $a2
    ldh [$b6], a                                  ; $5642: $e0 $b6
    ld l, b                                       ; $5644: $68
    jr @-$1d                                      ; $5645: $18 $e1

    ld c, d                                       ; $5647: $4a
    call c, Call_079_4f86                         ; $5648: $dc $86 $4f
    ld l, b                                       ; $564b: $68
    rrca                                          ; $564c: $0f
    ldh a, [$d7]                                  ; $564d: $f0 $d7
    and b                                         ; $564f: $a0
    ld [hl-], a                                   ; $5650: $32
    and c                                         ; $5651: $a1
    ld a, [hl-]                                   ; $5652: $3a
    and b                                         ; $5653: $a0
    ld a, [$809e]                                 ; $5654: $fa $9e $80
    rst $38                                       ; $5657: $ff
    cp d                                          ; $5658: $ba
    ld h, b                                       ; $5659: $60
    cp b                                          ; $565a: $b8
    rst $38                                       ; $565b: $ff
    ld a, b                                       ; $565c: $78
    ld a, a                                       ; $565d: $7f
    jr nc, jr_079_562f                            ; $565e: $30 $cf

    ccf                                           ; $5660: $3f
    jr nc, jr_079_56a2                            ; $5661: $30 $3f

    db $10                                        ; $5663: $10
    ldh a, [$80]                                  ; $5664: $f0 $80
    sub [hl]                                      ; $5666: $96
    ld b, b                                       ; $5667: $40
    nop                                           ; $5668: $00
    ret nz                                        ; $5669: $c0

    push af                                       ; $566a: $f5
    add b                                         ; $566b: $80
    ld de, $f0a0                                  ; $566c: $11 $a0 $f0
    ld h, l                                       ; $566f: $65
    add c                                         ; $5670: $81
    ld b, b                                       ; $5671: $40
    ret nz                                        ; $5672: $c0

    inc bc                                        ; $5673: $03
    ld bc, $07ef                                  ; $5674: $01 $ef $07
    ld [bc], a                                    ; $5677: $02
    ld e, $0c                                     ; $5678: $1e $0c
    ld b, [hl]                                    ; $567a: $46
    ld b, c                                       ; $567b: $41
    inc e                                         ; $567c: $1c
    jr jr_079_56af                                ; $567d: $18 $30

    ld a, a                                       ; $567f: $7f
    ld hl, $4060                                  ; $5680: $21 $60 $40
    db $fc                                        ; $5683: $fc
    db $fc                                        ; $5684: $fc
    add e                                         ; $5685: $83
    inc bc                                        ; $5686: $03
    push de                                       ; $5687: $d5
    and b                                         ; $5688: $a0
    cp $9c                                        ; $5689: $fe $9c
    ld b, b                                       ; $568b: $40
    ld [hl-], a                                   ; $568c: $32
    jr nc, jr_079_569b                            ; $568d: $30 $0c

    ld l, h                                       ; $568f: $6c
    ld [bc], a                                    ; $5690: $02
    cp d                                          ; $5691: $ba
    ld bc, $55d7                                  ; $5692: $01 $d7 $55
    nop                                           ; $5695: $00
    ld a, [bc]                                    ; $5696: $0a
    sub b                                         ; $5697: $90
    ld b, b                                       ; $5698: $40
    ld a, [bc]                                    ; $5699: $0a
    cp l                                          ; $569a: $bd

jr_079_569b:
    and b                                         ; $569b: $a0
    xor d                                         ; $569c: $aa
    nop                                           ; $569d: $00
    rst $38                                       ; $569e: $ff
    dec d                                         ; $569f: $15
    nop                                           ; $56a0: $00
    xor a                                         ; $56a1: $af

jr_079_56a2:
    ld bc, $875f                                  ; $56a2: $01 $5f $87
    cp $7f                                        ; $56a5: $fe $7f
    rst $38                                       ; $56a7: $ff
    ld a, b                                       ; $56a8: $78
    inc bc                                        ; $56a9: $03
    xor [hl]                                      ; $56aa: $ae
    rlca                                          ; $56ab: $07
    ld a, h                                       ; $56ac: $7c
    rrca                                          ; $56ad: $0f
    cp b                                          ; $56ae: $b8

jr_079_56af:
    rra                                           ; $56af: $1f

jr_079_56b0:
    rst $30                                       ; $56b0: $f7
    ldh a, [$7f]                                  ; $56b1: $f0 $7f
    ldh [$39], a                                  ; $56b3: $e0 $39
    ld h, b                                       ; $56b5: $60
    rlca                                          ; $56b6: $07
    rst $38                                       ; $56b7: $ff
    ld b, e                                       ; $56b8: $43
    db $fc                                        ; $56b9: $fc
    or a                                          ; $56ba: $b7
    inc c                                         ; $56bb: $0c
    ld hl, sp+$18                                 ; $56bc: $f8 $18
    ld [hl], d                                    ; $56be: $72
    and e                                         ; $56bf: $a3
    ldh a, [$30]                                  ; $56c0: $f0 $30
    ld h, d                                       ; $56c2: $62
    ld b, c                                       ; $56c3: $41
    cp $c7                                        ; $56c4: $fe $c7
    rlca                                          ; $56c6: $07
    ld hl, sp+$0f                                 ; $56c7: $f8 $0f
    inc c                                         ; $56c9: $0c
    pop bc                                        ; $56ca: $c1
    ld c, $c3                                     ; $56cb: $0e $c3
    inc bc                                        ; $56cd: $03
    adc l                                         ; $56ce: $8d
    ld b, $fe                                     ; $56cf: $06 $fe
    cp $16                                        ; $56d1: $fe $16
    ld b, a                                       ; $56d3: $47
    ld a, b                                       ; $56d4: $78
    rst $38                                       ; $56d5: $ff
    add a                                         ; $56d6: $87
    add a                                         ; $56d7: $87
    nop                                           ; $56d8: $00
    inc d                                         ; $56d9: $14
    ld h, b                                       ; $56da: $60
    rst $38                                       ; $56db: $ff
    ret nz                                        ; $56dc: $c0

    ldh a, [$e0]                                  ; $56dd: $f0 $e0
    ld a, a                                       ; $56df: $7f
    ldh a, [$3f]                                  ; $56e0: $f0 $3f
    rst $38                                       ; $56e2: $ff
    ld e, $6f                                     ; $56e3: $1e $6f
    db $fc                                        ; $56e5: $fc
    inc e                                         ; $56e6: $1c
    ld hl, sp+$18                                 ; $56e7: $f8 $18
    dec [hl]                                      ; $56e9: $35
    ret nz                                        ; $56ea: $c0

    ld [hl], e                                    ; $56eb: $73
    inc sp                                        ; $56ec: $33
    ld h, l                                       ; $56ed: $65
    ldh [rIE], a                                  ; $56ee: $e0 $ff
    add c                                         ; $56f0: $81
    ldh [$c2], a                                  ; $56f1: $e0 $c2
    jr nc, jr_079_5726                            ; $56f3: $30 $31

    ld [$0408], sp                                ; $56f5: $08 $08 $04
    rst $38                                       ; $56f8: $ff
    ld b, h                                       ; $56f9: $44
    ld [bc], a                                    ; $56fa: $02
    or d                                          ; $56fb: $b2
    add b                                         ; $56fc: $80

jr_079_56fd:
    add e                                         ; $56fd: $83
    ld h, b                                       ; $56fe: $60
    ld h, l                                       ; $56ff: $65
    db $10                                        ; $5700: $10

jr_079_5701:
    rst $38                                       ; $5701: $ff
    ld d, d                                       ; $5702: $52
    ld [$0ce9], sp                                ; $5703: $08 $e9 $0c
    ld h, h                                       ; $5706: $64
    inc b                                         ; $5707: $04
    or h                                          ; $5708: $b4
    ld b, $ff                                     ; $5709: $06 $ff
    ld d, d                                       ; $570b: $52
    inc bc                                        ; $570c: $03
    ld [hl+], a                                   ; $570d: $22
    jr nc, jr_079_56b0                            ; $570e: $30 $a0

    add hl, de                                    ; $5710: $19
    ret nc                                        ; $5711: $d0

    rra                                           ; $5712: $1f
    rst $38                                       ; $5713: $ff
    add sp, $0f                                   ; $5714: $e8 $0f
    ld h, a                                       ; $5716: $67
    rrca                                          ; $5717: $0f
    and [hl]                                      ; $5718: $a6
    rrca                                          ; $5719: $0f
    ld b, [hl]                                    ; $571a: $46
    rrca                                          ; $571b: $0f

jr_079_571c:
    xor [hl]                                      ; $571c: $ae
    ret z                                         ; $571d: $c8

    add b                                         ; $571e: $80
    rst $00                                       ; $571f: $c7
    ld a, a                                       ; $5720: $7f
    pop bc                                        ; $5721: $c1
    pop hl                                        ; $5722: $e1
    add l                                         ; $5723: $85
    rst $18                                       ; $5724: $df
    xor b                                         ; $5725: $a8

jr_079_5726:
    jr nz, jr_079_56fd                            ; $5726: $20 $d5

    rst $38                                       ; $5728: $ff
    db $fc                                        ; $5729: $fc
    inc a                                         ; $572a: $3c
    ret nz                                        ; $572b: $c0

    ret nz                                        ; $572c: $c0

    ld h, b                                       ; $572d: $60
    and b                                         ; $572e: $a0
    jr nc, jr_079_5701                            ; $572f: $30 $d0

    rst $38                                       ; $5731: $ff
    jr jr_079_571c                                ; $5732: $18 $e8

    inc c                                         ; $5734: $0c
    db $f4                                        ; $5735: $f4
    inc b                                         ; $5736: $04
    db $fc                                        ; $5737: $fc
    ld b, $fa                                     ; $5738: $06 $fa
    ld a, [$6092]                                 ; $573a: $fa $92 $60
    inc bc                                        ; $573d: $03
    cp $e4                                        ; $573e: $fe $e4
    rlca                                          ; $5740: $07
    cp $07                                        ; $5741: $fe $07
    ld a, [$750b]                                 ; $5743: $fa $0b $75

jr_079_5746:
    ld [$40ba], sp                                ; $5746: $08 $ba $40
    db $10                                        ; $5749: $10
    ld b, [hl]                                    ; $574a: $46
    ld h, d                                       ; $574b: $62
    ld b, b                                       ; $574c: $40
    rst $38                                       ; $574d: $ff
    ld b, c                                       ; $574e: $41
    cp $e0                                        ; $574f: $fe $e0
    ld e, e                                       ; $5751: $5b
    ld [$f0f8], sp                                ; $5752: $08 $f8 $f0
    pop bc                                        ; $5755: $c1
    ld b, b                                       ; $5756: $40
    pop bc                                        ; $5757: $c1
    ld c, b                                       ; $5758: $48
    ld h, b                                       ; $5759: $60
    add l                                         ; $575a: $85
    inc h                                         ; $575b: $24
    jr nz, jr_079_5746                            ; $575c: $20 $e8

    nop                                           ; $575e: $00
    ldh [$c9], a                                  ; $575f: $e0 $c9
    add b                                         ; $5761: $80
    db $fc                                        ; $5762: $fc
    pop hl                                        ; $5763: $e1
    ld a, [hl+]                                   ; $5764: $2a
    pop bc                                        ; $5765: $c1
    add b                                         ; $5766: $80
    cp d                                          ; $5767: $ba
    nop                                           ; $5768: $00
    ld e, l                                       ; $5769: $5d
    rst $38                                       ; $576a: $ff
    inc e                                         ; $576b: $1c
    jr jr_079_577a                                ; $576c: $18 $0c

    inc b                                         ; $576e: $04
    ld b, $04                                     ; $576f: $06 $04
    rlca                                          ; $5771: $07
    ld b, d                                       ; $5772: $42
    ld a, [$40b5]                                 ; $5773: $fa $b5 $40
    ld d, b                                       ; $5776: $50
    ret                                           ; $5777: $c9


    ld b, b                                       ; $5778: $40
    ld d, b                                       ; $5779: $50

jr_079_577a:
    ld bc, $0159                                  ; $577a: $01 $59 $01
    add hl, hl                                    ; $577d: $29
    rst $38                                       ; $577e: $ff
    nop                                           ; $577f: $00
    db $10                                        ; $5780: $10
    ld bc, $8300                                  ; $5781: $01 $00 $83
    nop                                           ; $5784: $00
    rst $38                                       ; $5785: $ff
    pop bc                                        ; $5786: $c1
    rst $30                                       ; $5787: $f7
    ld a, a                                       ; $5788: $7f
    ccf                                           ; $5789: $3f
    ccf                                           ; $578a: $3f
    ld d, $a0                                     ; $578b: $16 $a0
    add e                                         ; $578d: $83
    inc bc                                        ; $578e: $03
    jp $ff83                                      ; $578f: $c3 $83 $ff


    xor $83                                       ; $5792: $ee $83
    db $fc                                        ; $5794: $fc
    rst $00                                       ; $5795: $c7
    cp b                                          ; $5796: $b8
    rst $38                                       ; $5797: $ff
    nop                                           ; $5798: $00
    cp e                                          ; $5799: $bb
    ld d, a                                       ; $579a: $57
    nop                                           ; $579b: $00
    push de                                       ; $579c: $d5
    sbc b                                         ; $579d: $98
    ld [bc], a                                    ; $579e: $02
    pop hl                                        ; $579f: $e1
    cp $e1                                        ; $57a0: $fe $e1
    ld h, b                                       ; $57a2: $60
    ld [$82ac], a                                 ; $57a3: $ea $ac $82
    and a                                         ; $57a6: $a7
    push de                                       ; $57a7: $d5

jr_079_57a8:
    nop                                           ; $57a8: $00
    and e                                         ; $57a9: $a3
    ld a, c                                       ; $57aa: $79
    add d                                         ; $57ab: $82
    ld [hl], l                                    ; $57ac: $75
    add c                                         ; $57ad: $81
    dec d                                         ; $57ae: $15
    ld a, l                                       ; $57af: $7d
    add b                                         ; $57b0: $80
    ld d, a                                       ; $57b1: $57
    rst $38                                       ; $57b2: $ff
    ld [bc], a                                    ; $57b3: $02
    cp $06                                        ; $57b4: $fe $06
    ld a, [$fd03]                                 ; $57b6: $fa $03 $fd
    inc bc                                        ; $57b9: $03
    db $fd                                        ; $57ba: $fd
    db $e3                                        ; $57bb: $e3
    rlca                                          ; $57bc: $07
    ld sp, hl                                     ; $57bd: $f9
    db $fc                                        ; $57be: $fc
    db $e3                                        ; $57bf: $e3
    ld sp, $ffa8                                  ; $57c0: $31 $a8 $ff
    ldh [$fc], a                                  ; $57c3: $e0 $fc
    db $fd                                        ; $57c5: $fd
    pop af                                        ; $57c6: $f1
    ld d, a                                       ; $57c7: $57
    ld de, $21e1                                  ; $57c8: $11 $e1 $21
    ld d, h                                       ; $57cb: $54
    and b                                         ; $57cc: $a0
    adc b                                         ; $57cd: $88
    xor [hl]                                      ; $57ce: $ae
    add b                                         ; $57cf: $80
    ld a, [hl+]                                   ; $57d0: $2a
    adc d                                         ; $57d1: $8a
    ret nz                                        ; $57d2: $c0

    db $fd                                        ; $57d3: $fd
    ld a, [hl+]                                   ; $57d4: $2a
    ld e, h                                       ; $57d5: $5c
    pop hl                                        ; $57d6: $e1
    pop bc                                        ; $57d7: $c1
    rst $38                                       ; $57d8: $ff
    ld b, c                                       ; $57d9: $41
    ld a, a                                       ; $57da: $7f
    ld hl, $b53f                                  ; $57db: $21 $3f $b5
    ld hl, $c03a                                  ; $57de: $21 $3a $c0
    inc c                                         ; $57e1: $0c
    ld a, [hl-]                                   ; $57e2: $3a
    ret nz                                        ; $57e3: $c0

    nop                                           ; $57e4: $00
    dec b                                         ; $57e5: $05
    jr c, jr_079_57a8                             ; $57e6: $38 $c0

    ld bc, $80bd                                  ; $57e8: $01 $bd $80
    ld l, l                                       ; $57eb: $6d
    ld h, b                                       ; $57ec: $60
    ldh [$80], a                                  ; $57ed: $e0 $80
    call nc, Call_000_2980                        ; $57ef: $d4 $80 $29
    add b                                         ; $57f2: $80
    ld e, a                                       ; $57f3: $5f
    ld a, [c]                                     ; $57f4: $f2
    add hl, de                                    ; $57f5: $19
    add b                                         ; $57f6: $80
    ld d, a                                       ; $57f7: $57
    ld e, b                                       ; $57f8: $58
    ret nz                                        ; $57f9: $c0

    ld c, b                                       ; $57fa: $48
    pop hl                                        ; $57fb: $e1
    dec d                                         ; $57fc: $15
    nop                                           ; $57fd: $00
    and b                                         ; $57fe: $a0
    nop                                           ; $57ff: $00
    push de                                       ; $5800: $d5
    call nc, Call_079_6050                        ; $5801: $d4 $50 $60
    push de                                       ; $5804: $d5
    ld hl, sp-$20                                 ; $5805: $f8 $e0
    ld d, h                                       ; $5807: $54
    ld b, h                                       ; $5808: $44
    ld h, c                                       ; $5809: $61
    ld b, $03                                     ; $580a: $06 $03
    pop de                                        ; $580c: $d1
    ld b, $f9                                     ; $580d: $06 $f9
    ld hl, $43b3                                  ; $580f: $21 $b3 $43
    ld b, e                                       ; $5812: $43
    ld bc, $e8ba                                  ; $5813: $01 $ba $e8
    ldh [$aa], a                                  ; $5816: $e0 $aa
    nop                                           ; $5818: $00
    db $fd                                        ; $5819: $fd
    sbc l                                         ; $581a: $9d
    push hl                                       ; $581b: $e5
    ld h, b                                       ; $581c: $60
    rst $18                                       ; $581d: $df
    add b                                         ; $581e: $80
    rst $08                                       ; $581f: $cf
    add b                                         ; $5820: $80
    rst $18                                       ; $5821: $df
    nop                                           ; $5822: $00
    ld e, a                                       ; $5823: $5f
    db $eb                                        ; $5824: $eb
    nop                                           ; $5825: $00
    ld a, l                                       ; $5826: $7d
    nop                                           ; $5827: $00
    ccf                                           ; $5828: $3f
    pop hl                                        ; $5829: $e1
    ld h, b                                       ; $582a: $60
    db $eb                                        ; $582b: $eb
    dec l                                         ; $582c: $2d
    ld h, b                                       ; $582d: $60
    cp h                                          ; $582e: $bc
    ld a, d                                       ; $582f: $7a
    inc bc                                        ; $5830: $03
    ld a, [$070a]                                 ; $5831: $fa $0a $07
    ld sp, hl                                     ; $5834: $f9
    dec bc                                        ; $5835: $0b
    push af                                       ; $5836: $f5
    db $fc                                        ; $5837: $fc
    push hl                                       ; $5838: $e5
    rla                                           ; $5839: $17
    rst $38                                       ; $583a: $ff
    jp hl                                         ; $583b: $e9


    cpl                                           ; $583c: $2f
    pop de                                        ; $583d: $d1
    db $fc                                        ; $583e: $fc
    db $fd                                        ; $583f: $fd
    db $fd                                        ; $5840: $fd
    db $fc                                        ; $5841: $fc
    db $fd                                        ; $5842: $fd
    rst $30                                       ; $5843: $f7
    db $fc                                        ; $5844: $fc
    ld sp, hl                                     ; $5845: $f9
    ld a, [$e1fe]                                 ; $5846: $fa $fe $e1
    ld hl, sp-$05                                 ; $5849: $f8 $fb
    ld sp, hl                                     ; $584b: $f9
    ld a, [$16ea]                                 ; $584c: $fa $ea $16
    and b                                         ; $584f: $a0
    ld a, [hl+]                                   ; $5850: $2a
    ld [de], a                                    ; $5851: $12
    and b                                         ; $5852: $a0
    ld [$a30e], sp                                ; $5853: $08 $0e $a3
    xor d                                         ; $5856: $aa
    nop                                           ; $5857: $00
    inc bc                                        ; $5858: $03
    jp hl                                         ; $5859: $e9


jr_079_585a:
    inc bc                                        ; $585a: $03
    inc hl                                        ; $585b: $23
    and d                                         ; $585c: $a2
    res 4, d                                      ; $585d: $cb $a2
    dec b                                         ; $585f: $05
    rst $00                                       ; $5860: $c7
    and b                                         ; $5861: $a0
    add sp, -$80                                  ; $5862: $e8 $80
    push af                                       ; $5864: $f5
    rst $38                                       ; $5865: $ff
    ld b, b                                       ; $5866: $40
    ld a, d                                       ; $5867: $7a
    ld b, b                                       ; $5868: $40
    db $fd                                        ; $5869: $fd
    jr nz, jr_079_58e6                            ; $586a: $20 $7a

    jr nz, @-$01                                  ; $586c: $20 $fd

    ld d, e                                       ; $586e: $53
    db $10                                        ; $586f: $10
    ld a, [hl]                                    ; $5870: $7e
    ccf                                           ; $5871: $3f
    jr nz, jr_079_585a                            ; $5872: $20 $e6

    add e                                         ; $5874: $83
    ld b, b                                       ; $5875: $40

jr_079_5876:
    ld a, [hl]                                    ; $5876: $7e
    jr nz, jr_079_58ce                            ; $5877: $20 $55

    xor l                                         ; $5879: $ad
    ld b, b                                       ; $587a: $40
    or b                                          ; $587b: $b0
    sub l                                         ; $587c: $95
    pop bc                                        ; $587d: $c1
    call nc, $8985                                ; $587e: $d4 $85 $89
    jp Jump_000_0797                              ; $5881: $c3 $97 $07


    xor d                                         ; $5884: $aa
    ld d, l                                       ; $5885: $55
    db $fc                                        ; $5886: $fc
    pop hl                                        ; $5887: $e1
    add b                                         ; $5888: $80
    add a                                         ; $5889: $87
    rst $28                                       ; $588a: $ef
    add b                                         ; $588b: $80

jr_079_588c:
    rst $18                                       ; $588c: $df

jr_079_588d:
    add h                                         ; $588d: $84
    jr nz, jr_079_588c                            ; $588e: $20 $fc

    pop hl                                        ; $5890: $e1
    ld l, e                                       ; $5891: $6b
    add a                                         ; $5892: $87
    ld h, $02                                     ; $5893: $26 $02
    jr nz, jr_079_5876                            ; $5895: $20 $df

    rst $18                                       ; $5897: $df
    inc d                                         ; $5898: $14
    db $eb                                        ; $5899: $eb
    dec bc                                        ; $589a: $0b
    db $f4                                        ; $589b: $f4
    ld l, b                                       ; $589c: $68
    dec b                                         ; $589d: $05
    ld d, b                                       ; $589e: $50
    xor a                                         ; $589f: $af
    rst $38                                       ; $58a0: $ff
    ld a, [hl+]                                   ; $58a1: $2a
    push de                                       ; $58a2: $d5
    dec d                                         ; $58a3: $15
    ld [$f10e], a                                 ; $58a4: $ea $0e $f1
    ld d, $ea                                     ; $58a7: $16 $ea
    rst $38                                       ; $58a9: $ff
    ld l, $d2                                     ; $58aa: $2e $d2
    ld e, [hl]                                    ; $58ac: $5e
    and d                                         ; $58ad: $a2

jr_079_58ae:
    ld a, [hl]                                    ; $58ae: $7e
    add d                                         ; $58af: $82
    ld e, [hl]                                    ; $58b0: $5e
    and d                                         ; $58b1: $a2
    rst $38                                       ; $58b2: $ff
    cp [hl]                                       ; $58b3: $be
    ld b, d                                       ; $58b4: $42
    ld a, [hl]                                    ; $58b5: $7e
    add d                                         ; $58b6: $82
    cp [hl]                                       ; $58b7: $be
    ld b, d                                       ; $58b8: $42
    ld hl, sp-$05                                 ; $58b9: $f8 $fb
    or $51                                        ; $58bb: $f6 $51
    ldh [$fd], a                                  ; $58bd: $e0 $fd
    cp $2b                                        ; $58bf: $fe $2b
    dec h                                         ; $58c1: $25
    rst $38                                       ; $58c2: $ff
    cp a                                          ; $58c3: $bf
    ld b, b                                       ; $58c4: $40
    ld d, l                                       ; $58c5: $55
    rst $30                                       ; $58c6: $f7
    xor d                                         ; $58c7: $aa
    ld a, [hl+]                                   ; $58c8: $2a
    push de                                       ; $58c9: $d5
    ld a, d                                       ; $58ca: $7a
    nop                                           ; $58cb: $00
    ld a, a                                       ; $58cc: $7f
    add b                                         ; $58cd: $80

jr_079_58ce:
    sbc a                                         ; $58ce: $9f
    ldh [$78], a                                  ; $58cf: $e0 $78
    nop                                           ; $58d1: $00
    ld h, b                                       ; $58d2: $60
    db $db                                        ; $58d3: $db
    ld b, d                                       ; $58d4: $42
    and b                                         ; $58d5: $a0
    nop                                           ; $58d6: $00
    inc bc                                        ; $58d7: $03
    rst $38                                       ; $58d8: $ff
    rra                                           ; $58d9: $1f
    cp $21                                        ; $58da: $fe $21
    jr nz, jr_079_595d                            ; $58dc: $20 $7f

    add b                                         ; $58de: $80
    inc e                                         ; $58df: $1c
    rst $38                                       ; $58e0: $ff
    ld a, $e3                                     ; $58e1: $3e $e3
    ld a, a                                       ; $58e3: $7f
    pop hl                                        ; $58e4: $e1
    rla                                           ; $58e5: $17

jr_079_58e6:
    jr nz, jr_079_588d                            ; $58e6: $20 $a5

jr_079_58e8:
    and b                                         ; $58e8: $a0
    dec e                                         ; $58e9: $1d
    ld [hl+], a                                   ; $58ea: $22
    ld b, b                                       ; $58eb: $40
    jr c, jr_079_58ae                             ; $58ec: $38 $c0

    add sp, -$40                                  ; $58ee: $e8 $c0
    ret nz                                        ; $58f0: $c0

    ld h, d                                       ; $58f1: $62
    nop                                           ; $58f2: $00
    rst $38                                       ; $58f3: $ff
    sub l                                         ; $58f4: $95
    ld c, a                                       ; $58f5: $4f
    ldh a, [$e2]                                  ; $58f6: $f0 $e2
    xor d                                         ; $58f8: $aa
    ld e, e                                       ; $58f9: $5b
    push hl                                       ; $58fa: $e5
    ldh a, [$34]                                  ; $58fb: $f0 $34
    ld h, c                                       ; $58fd: $61
    adc a                                         ; $58fe: $8f
    ld bc, $785f                                  ; $58ff: $01 $5f $78
    dec hl                                        ; $5902: $2b
    ld [hl+], a                                   ; $5903: $22
    cp c                                          ; $5904: $b9
    nop                                           ; $5905: $00
    ld l, h                                       ; $5906: $6c
    ld h, b                                       ; $5907: $60
    add hl, bc                                    ; $5908: $09
    ret nc                                        ; $5909: $d0

    xor a                                         ; $590a: $af
    and b                                         ; $590b: $a0
    ld l, b                                       ; $590c: $68
    ldh [$db], a                                  ; $590d: $e0 $db
    jr z, jr_079_58e8                             ; $590f: $28 $d7

    sbc d                                         ; $5911: $9a
    pop hl                                        ; $5912: $e1
    ld a, a                                       ; $5913: $7f
    add b                                         ; $5914: $80
    sub d                                         ; $5915: $92
    pop hl                                        ; $5916: $e1
    ld a, [bc]                                    ; $5917: $0a
    push af                                       ; $5918: $f5
    rst $08                                       ; $5919: $cf
    dec b                                         ; $591a: $05
    ld a, [$d42b]                                 ; $591b: $fa $2b $d4
    jr c, @+$43                                   ; $591e: $38 $41

    sub [hl]                                      ; $5920: $96
    nop                                           ; $5921: $00
    ld hl, sp-$55                                 ; $5922: $f8 $ab
    rst $38                                       ; $5924: $ff
    ld d, h                                       ; $5925: $54
    push de                                       ; $5926: $d5
    ld a, [hl+]                                   ; $5927: $2a
    ld a, d                                       ; $5928: $7a
    add l                                         ; $5929: $85
    cp l                                          ; $592a: $bd
    ld b, d                                       ; $592b: $42
    cp $c1                                        ; $592c: $fe $c1
    ld bc, $002f                                  ; $592e: $01 $2f $00
    jr z, @+$42                                   ; $5931: $28 $40

    ld hl, sp+$02                                 ; $5933: $f8 $02
    cp $e8                                        ; $5935: $fe $e8
    ld [$0125], sp                                ; $5937: $08 $25 $01
    ld bc, $a7fc                                  ; $593a: $01 $fc $a7
    inc hl                                        ; $593d: $23
    ld a, b                                       ; $593e: $78
    ld h, e                                       ; $593f: $63
    db $fd                                        ; $5940: $fd
    ld [bc], a                                    ; $5941: $02
    ld [$d415], a                                 ; $5942: $ea $15 $d4
    dec hl                                        ; $5945: $2b
    rst $18                                       ; $5946: $df
    and b                                         ; $5947: $a0
    ld e, a                                       ; $5948: $5f
    ld b, b                                       ; $5949: $40
    cp a                                          ; $594a: $bf
    ret nz                                        ; $594b: $c0

    ld [hl-], a                                   ; $594c: $32
    nop                                           ; $594d: $00
    xor d                                         ; $594e: $aa
    ld d, l                                       ; $594f: $55
    ld [hl], e                                    ; $5950: $73
    ld d, b                                       ; $5951: $50
    xor a                                         ; $5952: $af
    rst $28                                       ; $5953: $ef
    ld h, l                                       ; $5954: $65
    ld [hl], a                                    ; $5955: $77
    nop                                           ; $5956: $00

jr_079_5957:
    ret nz                                        ; $5957: $c0

    xor a                                         ; $5958: $af
    ld d, b                                       ; $5959: $50
    ld h, $21                                     ; $595a: $26 $21
    inc e                                         ; $595c: $1c

jr_079_595d:
    ldh a, [$e4]                                  ; $595d: $f0 $e4

jr_079_595f:
    dec a                                         ; $595f: $3d
    jp $aaa0                                      ; $5960: $c3 $a0 $aa


jr_079_5963:
    ld d, l                                       ; $5963: $55
    ld c, $21                                     ; $5964: $0e $21
    ldh [$e0], a                                  ; $5966: $e0 $e0
    sbc d                                         ; $5968: $9a
    ld b, c                                       ; $5969: $41
    inc a                                         ; $596a: $3c
    ld c, l                                       ; $596b: $4d
    nop                                           ; $596c: $00
    ld [de], a                                    ; $596d: $12
    ld hl, $f50a                                  ; $596e: $21 $0a $f5
    ld bc, $a0fe                                  ; $5971: $01 $fe $a0
    ld b, b                                       ; $5974: $40
    dec sp                                        ; $5975: $3b
    dec b                                         ; $5976: $05
    or [hl]                                       ; $5977: $b6
    db $ec                                        ; $5978: $ec
    ldh [$15], a                                  ; $5979: $e0 $15
    ld [$67a6], a                                 ; $597b: $ea $a6 $67
    push de                                       ; $597e: $d5
    ld a, [hl+]                                   ; $597f: $2a
    di                                            ; $5980: $f3
    ret nz                                        ; $5981: $c0

    xor d                                         ; $5982: $aa
    rst $28                                       ; $5983: $ef
    rst $38                                       ; $5984: $ff
    nop                                           ; $5985: $00
    push af                                       ; $5986: $f5
    ld a, [bc]                                    ; $5987: $0a
    ld hl, sp-$1f                                 ; $5988: $f8 $e1
    ld a, [$5405]                                 ; $598a: $fa $05 $54
    di                                            ; $598d: $f3
    xor e                                         ; $598e: $ab
    and b                                         ; $598f: $a0
    or $a0                                        ; $5990: $f6 $a0
    ld [$7c03], a                                 ; $5992: $ea $03 $7c
    add h                                         ; $5995: $84
    cp h                                          ; $5996: $bc
    ld b, h                                       ; $5997: $44
    adc [hl]                                      ; $5998: $8e
    db $fc                                        ; $5999: $fc
    db $e3                                        ; $599a: $e3
    inc bc                                        ; $599b: $03
    ld [bc], a                                    ; $599c: $02
    ld [bc], a                                    ; $599d: $02
    dec c                                         ; $599e: $0d
    jr nz, jr_079_5957                            ; $599f: $20 $b6

    and d                                         ; $59a1: $a2
    dec de                                        ; $59a2: $1b
    ld h, d                                       ; $59a3: $62
    add b                                         ; $59a4: $80
    rst $30                                       ; $59a5: $f7
    dec sp                                        ; $59a6: $3b
    nop                                           ; $59a7: $00
    xor $08                                       ; $59a8: $ee $08
    and b                                         ; $59aa: $a0
    ld d, l                                       ; $59ab: $55
    add b                                         ; $59ac: $80
    ld a, [hl+]                                   ; $59ad: $2a
    nop                                           ; $59ae: $00
    rla                                           ; $59af: $17
    ld de, $4400                                  ; $59b0: $11 $00 $44
    ld [$bb60], sp                                ; $59b3: $08 $60 $bb
    ldh a, [$e3]                                  ; $59b6: $f0 $e3
    call z, $f060                                 ; $59b8: $cc $60 $f0
    ld [c], a                                     ; $59bb: $e2
    rst $38                                       ; $59bc: $ff
    jr jr_079_595f                                ; $59bd: $18 $a0

    inc c                                         ; $59bf: $0c
    db $e4                                        ; $59c0: $e4
    jr jr_079_5963                                ; $59c1: $18 $a0

    inc d                                         ; $59c3: $14
    ld b, h                                       ; $59c4: $44
    rst $38                                       ; $59c5: $ff
    ld [$10a0], sp                                ; $59c6: $08 $a0 $10
    nop                                           ; $59c9: $00
    ld [$0040], sp                                ; $59ca: $08 $40 $00
    nop                                           ; $59cd: $00
    nop                                           ; $59ce: $00
    nop                                           ; $59cf: $00
    nop                                           ; $59d0: $00
    ld e, c                                       ; $59d1: $59
    add hl, bc                                    ; $59d2: $09
    rst $38                                       ; $59d3: $ff
    rst $38                                       ; $59d4: $ff
    rst $38                                       ; $59d5: $ff
    rst $38                                       ; $59d6: $ff
    add hl, bc                                    ; $59d7: $09
    add hl, hl                                    ; $59d8: $29
    db $dd                                        ; $59d9: $dd
    db $fc                                        ; $59da: $fc
    ld a, [bc]                                    ; $59db: $0a
    rst $38                                       ; $59dc: $ff
    pop hl                                        ; $59dd: $e1
    adc h                                         ; $59de: $8c
    rst $30                                       ; $59df: $f7
    db $e3                                        ; $59e0: $e3
    ldh [$f4], a                                  ; $59e1: $e0 $f4
    dec bc                                        ; $59e3: $0b
    inc c                                         ; $59e4: $0c
    rst $38                                       ; $59e5: $ff
    ldh [$d8], a                                  ; $59e6: $e0 $d8
    pop hl                                        ; $59e8: $e1
    sub e                                         ; $59e9: $93
    ld a, [c]                                     ; $59ea: $f2
    dec c                                         ; $59eb: $0d
    or $ff                                        ; $59ec: $f6 $ff
    ld [c], a                                     ; $59ee: $e2
    inc c                                         ; $59ef: $0c
    inc c                                         ; $59f0: $0c
    ldh [$f7], a                                  ; $59f1: $e0 $f7
    ld [$0d0e], sp                                ; $59f3: $08 $0e $0d
    dec c                                         ; $59f6: $0d
    ld a, e                                       ; $59f7: $7b
    dec bc                                        ; $59f8: $0b
    dec bc                                        ; $59f9: $0b
    ret nz                                        ; $59fa: $c0

    push af                                       ; $59fb: $f5
    ld [$0e0e], sp                                ; $59fc: $08 $0e $0e
    ld c, $e1                                     ; $59ff: $0e $e1
    ldh [$d2], a                                  ; $5a01: $e0 $d2
    cp $e0                                        ; $5a03: $fe $e0
    rrca                                          ; $5a05: $0f
    and b                                         ; $5a06: $a0
    di                                            ; $5a07: $f3
    ldh [$e0], a                                  ; $5a08: $e0 $e0
    ld c, $e0                                     ; $5a0a: $0e $e0
    pop hl                                        ; $5a0c: $e1
    ld [$000d], sp                                ; $5a0d: $08 $0d $00
    inc de                                        ; $5a10: $13
    di                                            ; $5a11: $f3
    cp a                                          ; $5a12: $bf
    ldh [$c1], a                                  ; $5a13: $e0 $c1
    ld [c], a                                     ; $5a15: $e2
    ldh [$f4], a                                  ; $5a16: $e0 $f4
    ld h, h                                       ; $5a18: $64
    pop hl                                        ; $5a19: $e1
    cp a                                          ; $5a1a: $bf
    pop hl                                        ; $5a1b: $e1
    ld [hl+], a                                   ; $5a1c: $22
    di                                            ; $5a1d: $f3
    and c                                         ; $5a1e: $a1
    db $e3                                        ; $5a1f: $e3
    ld b, e                                       ; $5a20: $43
    ld c, $0e                                     ; $5a21: $0e $0e
    ld b, c                                       ; $5a23: $41
    ldh [$e1], a                                  ; $5a24: $e0 $e1
    ld hl, sp-$01                                 ; $5a26: $f8 $ff
    ret nz                                        ; $5a28: $c0

    ld [c], a                                     ; $5a29: $e2
    db $d3                                        ; $5a2a: $d3
    ld [$e262], sp                                ; $5a2b: $08 $62 $e2
    ld c, b                                       ; $5a2e: $48
    ldh [$c1], a                                  ; $5a2f: $e0 $c1
    ldh [$f4], a                                  ; $5a31: $e0 $f4
    and d                                         ; $5a33: $a2
    ld [c], a                                     ; $5a34: $e2
    ld [$c1e3], sp                                ; $5a35: $08 $e3 $c1
    ret nz                                        ; $5a38: $c0

    di                                            ; $5a39: $f3
    ld [$e206], sp                                ; $5a3a: $08 $06 $e2
    nop                                           ; $5a3d: $00
    ld a, h                                       ; $5a3e: $7c
    add $e3                                       ; $5a3f: $c6 $e3
    adc $62                                       ; $5a41: $ce $62
    jp nz, $e3fb                                  ; $5a43: $c2 $fb $e3

    ld b, d                                       ; $5a46: $42
    rst $10                                       ; $5a47: $d7
    ldh [$f8], a                                  ; $5a48: $e0 $f8
    rst $38                                       ; $5a4a: $ff
    rst $38                                       ; $5a4b: $ff
    rst $38                                       ; $5a4c: $ff
    rst $38                                       ; $5a4d: $ff
    nop                                           ; $5a4e: $00
    rst $38                                       ; $5a4f: $ff
    rst $38                                       ; $5a50: $ff
    rst $38                                       ; $5a51: $ff
    rst $38                                       ; $5a52: $ff
    rst $38                                       ; $5a53: $ff
    rst $38                                       ; $5a54: $ff
    rst $38                                       ; $5a55: $ff
    rst $38                                       ; $5a56: $ff
    rst $38                                       ; $5a57: $ff
    rst $38                                       ; $5a58: $ff
    rst $38                                       ; $5a59: $ff
    rst $38                                       ; $5a5a: $ff
    rst $38                                       ; $5a5b: $ff
    rst $38                                       ; $5a5c: $ff
    rst $38                                       ; $5a5d: $ff
    rst $38                                       ; $5a5e: $ff
    jr @+$01                                      ; $5a5f: $18 $ff

    rst $38                                       ; $5a61: $ff
    rst $38                                       ; $5a62: $ff
    rst $38                                       ; $5a63: $ff
    rst $38                                       ; $5a64: $ff
    rst $38                                       ; $5a65: $ff
    add hl, bc                                    ; $5a66: $09
    add hl, bc                                    ; $5a67: $09
    nop                                           ; $5a68: $00
    nop                                           ; $5a69: $00
    nop                                           ; $5a6a: $00
    ld sp, hl                                     ; $5a6b: $f9
    nop                                           ; $5a6c: $00
    rst $38                                       ; $5a6d: $ff
    rst $38                                       ; $5a6e: $ff
    db $e3                                        ; $5a6f: $e3
    ld [c], a                                     ; $5a70: $e2
    ld bc, $0302                                  ; $5a71: $01 $02 $03
    inc b                                         ; $5a74: $04
    dec b                                         ; $5a75: $05
    ei                                            ; $5a76: $fb
    ld b, $07                                     ; $5a77: $06 $07
    rst $10                                       ; $5a79: $d7
    db $f4                                        ; $5a7a: $f4
    rlca                                          ; $5a7b: $07
    ld [$0a09], sp                                ; $5a7c: $08 $09 $0a
    dec bc                                        ; $5a7f: $0b
    rst $18                                       ; $5a80: $df
    inc c                                         ; $5a81: $0c
    dec c                                         ; $5a82: $0d
    ld c, $0f                                     ; $5a83: $0e $0f
    db $10                                        ; $5a85: $10
    or [hl]                                       ; $5a86: $b6
    di                                            ; $5a87: $f3
    ld de, $ff12                                  ; $5a88: $11 $12 $ff
    inc de                                        ; $5a8b: $13
    inc d                                         ; $5a8c: $14
    dec d                                         ; $5a8d: $15
    ld d, $17                                     ; $5a8e: $16 $17
    ld c, $0e                                     ; $5a90: $0e $0e

jr_079_5a92:
    jr jr_079_5a92                                ; $5a92: $18 $fe

    sub [hl]                                      ; $5a94: $96
    di                                            ; $5a95: $f3
    add hl, de                                    ; $5a96: $19
    ld a, [de]                                    ; $5a97: $1a
    dec de                                        ; $5a98: $1b
    inc e                                         ; $5a99: $1c
    dec e                                         ; $5a9a: $1d
    ld e, $1f                                     ; $5a9b: $1e $1f
    rst $28                                       ; $5a9d: $ef
    jr nz, jr_079_5aae                            ; $5a9e: $20 $0e

    ld hl, $7522                                  ; $5aa0: $21 $22 $75
    ld a, [c]                                     ; $5aa3: $f2
    inc hl                                        ; $5aa4: $23
    inc h                                         ; $5aa5: $24
    dec h                                         ; $5aa6: $25
    rst $38                                       ; $5aa7: $ff
    ld h, $27                                     ; $5aa8: $26 $27
    jr z, jr_079_5ad5                             ; $5aaa: $28 $29

    ld a, [hl+]                                   ; $5aac: $2a
    dec hl                                        ; $5aad: $2b

jr_079_5aae:
    inc l                                         ; $5aae: $2c
    dec l                                         ; $5aaf: $2d
    cp $55                                        ; $5ab0: $fe $55
    ld a, [c]                                     ; $5ab2: $f2
    ld l, $2f                                     ; $5ab3: $2e $2f
    jr nc, jr_079_5ae8                            ; $5ab5: $30 $31

    ld [hl-], a                                   ; $5ab7: $32
    inc sp                                        ; $5ab8: $33
    inc [hl]                                      ; $5ab9: $34
    rst $28                                       ; $5aba: $ef
    dec [hl]                                      ; $5abb: $35
    ld [hl], $37                                  ; $5abc: $36 $37
    jr c, jr_079_5af5                             ; $5abe: $38 $35

    ld a, [c]                                     ; $5ac0: $f2
    add hl, sp                                    ; $5ac1: $39
    ld a, [hl-]                                   ; $5ac2: $3a
    dec sp                                        ; $5ac3: $3b
    rst $38                                       ; $5ac4: $ff
    inc a                                         ; $5ac5: $3c
    dec a                                         ; $5ac6: $3d
    ld a, $3f                                     ; $5ac7: $3e $3f
    ld b, b                                       ; $5ac9: $40
    ld b, c                                       ; $5aca: $41
    ld b, d                                       ; $5acb: $42
    ld b, e                                       ; $5acc: $43
    cp $15                                        ; $5acd: $fe $15
    ld a, [c]                                     ; $5acf: $f2
    ld b, h                                       ; $5ad0: $44
    ld b, l                                       ; $5ad1: $45
    ld b, [hl]                                    ; $5ad2: $46
    ld b, a                                       ; $5ad3: $47
    ld c, b                                       ; $5ad4: $48

jr_079_5ad5:
    ld c, c                                       ; $5ad5: $49
    ld c, d                                       ; $5ad6: $4a
    rst $28                                       ; $5ad7: $ef
    ld c, e                                       ; $5ad8: $4b
    ld c, h                                       ; $5ad9: $4c
    ld c, l                                       ; $5ada: $4d
    ld c, [hl]                                    ; $5adb: $4e
    push af                                       ; $5adc: $f5
    db $d3                                        ; $5add: $d3
    ld c, a                                       ; $5ade: $4f
    ld d, b                                       ; $5adf: $50
    ld d, c                                       ; $5ae0: $51
    ld a, a                                       ; $5ae1: $7f
    ld d, d                                       ; $5ae2: $52
    nop                                           ; $5ae3: $00
    ld d, e                                       ; $5ae4: $53
    ld d, h                                       ; $5ae5: $54
    ld d, l                                       ; $5ae6: $55
    ld d, [hl]                                    ; $5ae7: $56

jr_079_5ae8:
    ld d, a                                       ; $5ae8: $57
    push de                                       ; $5ae9: $d5
    pop de                                        ; $5aea: $d1
    rst $38                                       ; $5aeb: $ff
    ld e, b                                       ; $5aec: $58
    ld e, c                                       ; $5aed: $59
    ld e, d                                       ; $5aee: $5a
    ld e, e                                       ; $5aef: $5b
    ld e, h                                       ; $5af0: $5c
    ld e, l                                       ; $5af1: $5d
    ld e, [hl]                                    ; $5af2: $5e
    ld e, a                                       ; $5af3: $5f
    ei                                            ; $5af4: $fb

jr_079_5af5:
    ld h, b                                       ; $5af5: $60
    ld h, c                                       ; $5af6: $61
    or a                                          ; $5af7: $b7
    jp nc, Jump_079_6258                          ; $5af8: $d2 $58 $62

    ld h, e                                       ; $5afb: $63
    ld h, h                                       ; $5afc: $64
    ld h, l                                       ; $5afd: $65
    rst $18                                       ; $5afe: $df
    ld h, [hl]                                    ; $5aff: $66
    ld h, a                                       ; $5b00: $67
    ld l, b                                       ; $5b01: $68
    ld l, c                                       ; $5b02: $69
    ld l, d                                       ; $5b03: $6a
    sbc b                                         ; $5b04: $98
    db $d3                                        ; $5b05: $d3
    ld l, e                                       ; $5b06: $6b
    ld l, h                                       ; $5b07: $6c
    rst $38                                       ; $5b08: $ff
    ld l, l                                       ; $5b09: $6d
    ld l, [hl]                                    ; $5b0a: $6e
    ld l, a                                       ; $5b0b: $6f
    ld [hl], b                                    ; $5b0c: $70
    ld [hl], c                                    ; $5b0d: $71
    ld [hl], d                                    ; $5b0e: $72
    ld [hl], e                                    ; $5b0f: $73
    ld [hl], h                                    ; $5b10: $74

jr_079_5b11:
    cp $78                                        ; $5b11: $fe $78
    jp nc, Jump_079_7675                          ; $5b13: $d2 $75 $76

    ld [hl], a                                    ; $5b16: $77
    ld a, b                                       ; $5b17: $78
    ld a, c                                       ; $5b18: $79
    ld a, d                                       ; $5b19: $7a
    ld a, e                                       ; $5b1a: $7b
    rst $28                                       ; $5b1b: $ef
    ld a, h                                       ; $5b1c: $7c
    ld a, l                                       ; $5b1d: $7d
    ld a, [hl]                                    ; $5b1e: $7e
    ld a, a                                       ; $5b1f: $7f
    ld e, b                                       ; $5b20: $58
    jp nc, $8180                                  ; $5b21: $d2 $80 $81

    add d                                         ; $5b24: $82
    rst $38                                       ; $5b25: $ff
    add e                                         ; $5b26: $83
    add h                                         ; $5b27: $84
    add l                                         ; $5b28: $85
    add [hl]                                      ; $5b29: $86
    add a                                         ; $5b2a: $87
    adc b                                         ; $5b2b: $88
    adc c                                         ; $5b2c: $89
    adc d                                         ; $5b2d: $8a
    cp $38                                        ; $5b2e: $fe $38
    jp nc, $8c8b                                  ; $5b30: $d2 $8b $8c

    adc l                                         ; $5b33: $8d
    adc [hl]                                      ; $5b34: $8e
    adc a                                         ; $5b35: $8f
    sub b                                         ; $5b36: $90
    sub c                                         ; $5b37: $91
    rst $28                                       ; $5b38: $ef
    sub d                                         ; $5b39: $92
    sub e                                         ; $5b3a: $93
    sub h                                         ; $5b3b: $94
    sub l                                         ; $5b3c: $95
    jr jr_079_5b11                                ; $5b3d: $18 $d2

    ld b, a                                       ; $5b3f: $47
    sub [hl]                                      ; $5b40: $96
    sub a                                         ; $5b41: $97
    rst $38                                       ; $5b42: $ff
    sbc b                                         ; $5b43: $98
    sbc c                                         ; $5b44: $99
    sbc d                                         ; $5b45: $9a
    sbc e                                         ; $5b46: $9b
    sbc h                                         ; $5b47: $9c
    sbc l                                         ; $5b48: $9d
    sbc [hl]                                      ; $5b49: $9e
    sbc a                                         ; $5b4a: $9f
    ld l, $f8                                     ; $5b4b: $2e $f8
    or e                                          ; $5b4d: $b3
    and b                                         ; $5b4e: $a0
    and c                                         ; $5b4f: $a1
    and d                                         ; $5b50: $a2
    rst $38                                       ; $5b51: $ff
    db $e3                                        ; $5b52: $e3
    and e                                         ; $5b53: $a3
    ret c                                         ; $5b54: $d8

    cp a                                          ; $5b55: $bf
    rst $38                                       ; $5b56: $ff
    rst $38                                       ; $5b57: $ff
    nop                                           ; $5b58: $00
    rst $38                                       ; $5b59: $ff
    rst $38                                       ; $5b5a: $ff
    rst $38                                       ; $5b5b: $ff
    rst $38                                       ; $5b5c: $ff
    rst $38                                       ; $5b5d: $ff
    rst $38                                       ; $5b5e: $ff
    rst $38                                       ; $5b5f: $ff
    rst $38                                       ; $5b60: $ff
    rst $38                                       ; $5b61: $ff
    rst $38                                       ; $5b62: $ff
    rst $38                                       ; $5b63: $ff
    rst $38                                       ; $5b64: $ff
    rst $38                                       ; $5b65: $ff
    rst $38                                       ; $5b66: $ff
    rst $38                                       ; $5b67: $ff
    rst $38                                       ; $5b68: $ff
    nop                                           ; $5b69: $00
    rst $38                                       ; $5b6a: $ff
    rst $38                                       ; $5b6b: $ff
    rst $38                                       ; $5b6c: $ff
    rst $38                                       ; $5b6d: $ff
    rst $38                                       ; $5b6e: $ff
    rst $38                                       ; $5b6f: $ff
    rst $38                                       ; $5b70: $ff
    push af                                       ; $5b71: $f5
    nop                                           ; $5b72: $00
    nop                                           ; $5b73: $00
    nop                                           ; $5b74: $00
    ld a, l                                       ; $5b75: $7d
    ld e, e                                       ; $5b76: $5b
    cp l                                          ; $5b77: $bd
    ld e, e                                       ; $5b78: $5b
    and e                                         ; $5b79: $a3
    ld h, l                                       ; $5b7a: $65
    and d                                         ; $5b7b: $a2
    ld h, [hl]                                    ; $5b7c: $66
    nop                                           ; $5b7d: $00
    nop                                           ; $5b7e: $00
    ccf                                           ; $5b7f: $3f
    ccf                                           ; $5b80: $3f
    rst $38                                       ; $5b81: $ff
    ld a, a                                       ; $5b82: $7f
    rra                                           ; $5b83: $1f
    nop                                           ; $5b84: $00
    nop                                           ; $5b85: $00
    nop                                           ; $5b86: $00
    db $ec                                        ; $5b87: $ec
    nop                                           ; $5b88: $00
    daa                                           ; $5b89: $27
    ld [bc], a                                    ; $5b8a: $02
    rst $38                                       ; $5b8b: $ff
    ld a, a                                       ; $5b8c: $7f
    daa                                           ; $5b8d: $27
    ld [bc], a                                    ; $5b8e: $02
    add b                                         ; $5b8f: $80
    ld a, [hl]                                    ; $5b90: $7e
    cpl                                           ; $5b91: $2f
    ld a, a                                       ; $5b92: $7f
    ld h, b                                       ; $5b93: $60
    ld bc, $0000                                  ; $5b94: $01 $00 $00
    cpl                                           ; $5b97: $2f
    ld a, a                                       ; $5b98: $7f
    db $ec                                        ; $5b99: $ec
    nop                                           ; $5b9a: $00
    rra                                           ; $5b9b: $1f
    nop                                           ; $5b9c: $00
    nop                                           ; $5b9d: $00
    nop                                           ; $5b9e: $00
    cpl                                           ; $5b9f: $2f
    ld a, a                                       ; $5ba0: $7f
    ccf                                           ; $5ba1: $3f
    ccf                                           ; $5ba2: $3f
    rra                                           ; $5ba3: $1f
    nop                                           ; $5ba4: $00
    nop                                           ; $5ba5: $00
    nop                                           ; $5ba6: $00
    rra                                           ; $5ba7: $1f
    nop                                           ; $5ba8: $00
    ccf                                           ; $5ba9: $3f
    ccf                                           ; $5baa: $3f
    db $ec                                        ; $5bab: $ec
    nop                                           ; $5bac: $00
    nop                                           ; $5bad: $00
    nop                                           ; $5bae: $00
    daa                                           ; $5baf: $27
    ld [bc], a                                    ; $5bb0: $02
    ccf                                           ; $5bb1: $3f
    ccf                                           ; $5bb2: $3f
    rst $38                                       ; $5bb3: $ff
    ld a, a                                       ; $5bb4: $7f
    rst $30                                       ; $5bb5: $f7
    dec sp                                        ; $5bb6: $3b
    sub c                                         ; $5bb7: $91
    dec bc                                        ; $5bb8: $0b
    ld h, b                                       ; $5bb9: $60
    ld bc, $0227                                  ; $5bba: $01 $27 $02
    push de                                       ; $5bbd: $d5
    nop                                           ; $5bbe: $00
    rst $38                                       ; $5bbf: $ff
    db $ec                                        ; $5bc0: $ec
    rst $38                                       ; $5bc1: $ff
    rst $38                                       ; $5bc2: $ff
    db $ec                                        ; $5bc3: $ec
    ldh [$fe], a                                  ; $5bc4: $e0 $fe
    and $f0                                       ; $5bc6: $e6 $f0
    rst $38                                       ; $5bc8: $ff
    rst $18                                       ; $5bc9: $df
    db $fc                                        ; $5bca: $fc
    rst $38                                       ; $5bcb: $ff
    cp $ff                                        ; $5bcc: $fe $ff
    nop                                           ; $5bce: $00
    cp $ec                                        ; $5bcf: $fe $ec
    rrca                                          ; $5bd1: $0f
    rst $38                                       ; $5bd2: $ff
    push de                                       ; $5bd3: $d5
    rra                                           ; $5bd4: $1f
    cp $e0                                        ; $5bd5: $fe $e0
    ccf                                           ; $5bd7: $3f
    cp $e0                                        ; $5bd8: $fe $e0
    ld a, a                                       ; $5bda: $7f
    cp $e2                                        ; $5bdb: $fe $e2
    nop                                           ; $5bdd: $00
    rst $38                                       ; $5bde: $ff
    add l                                         ; $5bdf: $85
    add b                                         ; $5be0: $80
    cp $e0                                        ; $5be1: $fe $e0
    ret nz                                        ; $5be3: $c0

    cp $e2                                        ; $5be4: $fe $e2
    call nz, $cfe1                                ; $5be6: $c4 $e1 $cf
    db $ed                                        ; $5be9: $ed
    ret nz                                        ; $5bea: $c0

    db $eb                                        ; $5beb: $eb
    ld bc, $b0ce                                  ; $5bec: $01 $ce $b0
    ld [$ffa3], a                                 ; $5bef: $ea $a3 $ff
    ld d, a                                       ; $5bf2: $57
    cp d                                          ; $5bf3: $ba
    ldh [$7e], a                                  ; $5bf4: $e0 $7e
    db $eb                                        ; $5bf6: $eb
    rrca                                          ; $5bf7: $0f
    rrca                                          ; $5bf8: $0f
    rst $38                                       ; $5bf9: $ff
    and e                                         ; $5bfa: $a3
    and e                                         ; $5bfb: $a3
    ld d, c                                       ; $5bfc: $51
    ld d, c                                       ; $5bfd: $51
    xor b                                         ; $5bfe: $a8
    xor b                                         ; $5bff: $a8
    call nc, $afd4                                ; $5c00: $d4 $d4 $af
    ld a, [$fdfa]                                 ; $5c03: $fa $fa $fd
    db $fd                                        ; $5c06: $fd
    ld h, d                                       ; $5c07: $62
    rst $20                                       ; $5c08: $e7
    ld a, a                                       ; $5c09: $7f
    rst $38                                       ; $5c0a: $ff
    ldh [$3f], a                                  ; $5c0b: $e0 $3f
    ld a, l                                       ; $5c0d: $7d
    ccf                                           ; $5c0e: $3f
    ld h, b                                       ; $5c0f: $60
    pop hl                                        ; $5c10: $e1
    ldh a, [rIE]                                  ; $5c11: $f0 $ff
    ld hl, sp-$01                                 ; $5c13: $f8 $ff
    db $f4                                        ; $5c15: $f4
    db $fc                                        ; $5c16: $fc
    db $e4                                        ; $5c17: $e4
    ld a, l                                       ; $5c18: $7d
    db $fd                                        ; $5c19: $fd
    ld h, b                                       ; $5c1a: $60
    add sp, $0a                                   ; $5c1b: $e8 $0a
    rst $38                                       ; $5c1d: $ff
    dec d                                         ; $5c1e: $15
    rst $38                                       ; $5c1f: $ff
    ld a, [$e250]                                 ; $5c20: $fa $50 $e2
    db $dd                                        ; $5c23: $dd
    ld c, $5e                                     ; $5c24: $0e $5e
    add sp, $02                                   ; $5c26: $e8 $02
    rst $38                                       ; $5c28: $ff
    dec b                                         ; $5c29: $05
    db $fc                                        ; $5c2a: $fc
    ld [c], a                                     ; $5c2b: $e2
    adc d                                         ; $5c2c: $8a
    rst $38                                       ; $5c2d: $ff
    ld a, a                                       ; $5c2e: $7f
    push bc                                       ; $5c2f: $c5
    rst $38                                       ; $5c30: $ff
    jp z, $f5ff                                   ; $5c31: $ca $ff $f5

    rst $38                                       ; $5c34: $ff
    xor a                                         ; $5c35: $af
    adc h                                         ; $5c36: $8c
    ldh [$27], a                                  ; $5c37: $e0 $27
    xor a                                         ; $5c39: $af
    rst $38                                       ; $5c3a: $ff
    ld e, a                                       ; $5c3b: $5f
    db $fc                                        ; $5c3c: $fc
    and $00                                       ; $5c3d: $e6 $00
    push hl                                       ; $5c3f: $e5
    cp $ff                                        ; $5c40: $fe $ff
    ldh [$90], a                                  ; $5c42: $e0 $90
    pop hl                                        ; $5c44: $e1
    rst $38                                       ; $5c45: $ff
    ldh a, [$f0]                                  ; $5c46: $f0 $f0
    pop bc                                        ; $5c48: $c1
    pop bc                                        ; $5c49: $c1
    adc d                                         ; $5c4a: $8a
    adc d                                         ; $5c4b: $8a
    dec d                                         ; $5c4c: $15
    dec d                                         ; $5c4d: $15
    cp a                                          ; $5c4e: $bf
    dec hl                                        ; $5c4f: $2b
    dec hl                                        ; $5c50: $2b
    ld e, a                                       ; $5c51: $5f
    ld e, a                                       ; $5c52: $5f
    cp a                                          ; $5c53: $bf
    cp a                                          ; $5c54: $bf
    add sp, -$1f                                  ; $5c55: $e8 $e1
    ld hl, sp-$09                                 ; $5c57: $f8 $f7
    ld hl, sp-$0b                                 ; $5c59: $f8 $f5
    push af                                       ; $5c5b: $f5
    jp c, $c7c3                                   ; $5c5c: $da $c3 $c7

    rst $00                                       ; $5c5f: $c7
    and e                                         ; $5c60: $a3
    and e                                         ; $5c61: $a3
    rst $38                                       ; $5c62: $ff
    rra                                           ; $5c63: $1f
    rra                                           ; $5c64: $1f
    rlca                                          ; $5c65: $07
    rlca                                          ; $5c66: $07
    ld b, e                                       ; $5c67: $43
    ld b, e                                       ; $5c68: $43
    xor c                                         ; $5c69: $a9
    xor c                                         ; $5c6a: $a9
    rst $38                                       ; $5c6b: $ff
    push de                                       ; $5c6c: $d5
    push de                                       ; $5c6d: $d5
    ld hl, sp-$08                                 ; $5c6e: $f8 $f8
    db $fc                                        ; $5c70: $fc
    db $fc                                        ; $5c71: $fc
    ld a, [$7dfa]                                 ; $5c72: $fa $fa $7d
    ei                                            ; $5c75: $fb
    cp a                                          ; $5c76: $bf
    ret z                                         ; $5c77: $c8

    jp $a1c3                                      ; $5c78: $c3 $c3 $a1


    and c                                         ; $5c7b: $a1
    db $fd                                        ; $5c7c: $fd
    call z, Call_079_74c0                         ; $5c7d: $cc $c0 $74
    or d                                          ; $5c80: $b2
    ldh [$a9], a                                  ; $5c81: $e0 $a9
    add $40                                       ; $5c83: $c6 $40
    ldh [$c0], a                                  ; $5c85: $e0 $c0
    ld b, b                                       ; $5c87: $40
    rst $38                                       ; $5c88: $ff
    and b                                         ; $5c89: $a0
    ld c, d                                       ; $5c8a: $4a
    ld [c], a                                     ; $5c8b: $e2
    cp c                                          ; $5c8c: $b9
    db $fc                                        ; $5c8d: $fc
    xor [hl]                                      ; $5c8e: $ae
    ret nz                                        ; $5c8f: $c0

    or b                                          ; $5c90: $b0
    jp $ff03                                      ; $5c91: $c3 $03 $ff


    rlca                                          ; $5c94: $07
    cp $e4                                        ; $5c95: $fe $e4
    rst $28                                       ; $5c97: $ef
    xor $7f                                       ; $5c98: $ee $7f
    call z, $ffaf                                 ; $5c9a: $cc $af $ff
    rst $18                                       ; $5c9d: $df
    db $ec                                        ; $5c9e: $ec
    add sp, $37                                   ; $5c9f: $e8 $37
    scf                                           ; $5ca1: $37
    rst $38                                       ; $5ca2: $ff
    rst $18                                       ; $5ca3: $df
    rst $38                                       ; $5ca4: $ff
    ld e, a                                       ; $5ca5: $5f
    ld e, a                                       ; $5ca6: $5f
    xor a                                         ; $5ca7: $af
    xor a                                         ; $5ca8: $af
    ld e, d                                       ; $5ca9: $5a
    jp $e3e3                                      ; $5caa: $c3 $e3 $e3


    rst $38                                       ; $5cad: $ff
    push bc                                       ; $5cae: $c5
    push bc                                       ; $5caf: $c5
    push de                                       ; $5cb0: $d5
    push de                                       ; $5cb1: $d5
    ld [$fdea], a                                 ; $5cb2: $ea $ea $fd
    db $fd                                        ; $5cb5: $fd
    or c                                          ; $5cb6: $b1
    cp $9b                                        ; $5cb7: $fe $9b
    ldh [rLCDC], a                                ; $5cb9: $e0 $40
    rst $00                                       ; $5cbb: $c7
    ldh a, [$e3]                                  ; $5cbc: $f0 $e3
    dec d                                         ; $5cbe: $15
    dec d                                         ; $5cbf: $15
    inc h                                         ; $5cc0: $24
    pop bc                                        ; $5cc1: $c1
    call nc, $d4ff                                ; $5cc2: $d4 $ff $d4
    ld [$3dea], a                                 ; $5cc5: $ea $ea $3d
    dec a                                         ; $5cc8: $3d
    sbc a                                         ; $5cc9: $9f
    sbc a                                         ; $5cca: $9f
    ld e, a                                       ; $5ccb: $5f
    ld hl, sp+$25                                 ; $5ccc: $f8 $25
    ldh [$ee], a                                  ; $5cce: $e0 $ee
    pop hl                                        ; $5cd0: $e1
    jr nz, @-$3b                                  ; $5cd1: $20 $c3

    adc a                                         ; $5cd3: $8f
    adc a                                         ; $5cd4: $8f
    ld d, [hl]                                    ; $5cd5: $56
    ld d, [hl]                                    ; $5cd6: $56
    db $eb                                        ; $5cd7: $eb
    cp a                                          ; $5cd8: $bf
    db $eb                                        ; $5cd9: $eb
    rst $38                                       ; $5cda: $ff
    rst $38                                       ; $5cdb: $ff
    dec b                                         ; $5cdc: $05
    dec b                                         ; $5cdd: $05
    cp $64                                        ; $5cde: $fe $64
    db $e4                                        ; $5ce0: $e4
    cp a                                          ; $5ce1: $bf
    rst $28                                       ; $5ce2: $ef
    cp a                                          ; $5ce3: $bf
    ld d, a                                       ; $5ce4: $57
    ld d, a                                       ; $5ce5: $57
    ei                                            ; $5ce6: $fb
    ld b, e                                       ; $5ce7: $43
    ldh [rNR41], a                                ; $5ce8: $e0 $20
    rst $38                                       ; $5cea: $ff
    ld d, b                                       ; $5ceb: $50
    cp [hl]                                       ; $5cec: $be
    ld h, d                                       ; $5ced: $62
    ldh [$d4], a                                  ; $5cee: $e0 $d4
    rst $38                                       ; $5cf0: $ff
    ld [$f7ff], a                                 ; $5cf1: $ea $ff $f7
    ld [hl], h                                    ; $5cf4: $74
    ldh [$f7], a                                  ; $5cf5: $e0 $f7
    adc $10                                       ; $5cf7: $ce $10
    ret z                                         ; $5cf9: $c8

    ld d, b                                       ; $5cfa: $50
    rst $38                                       ; $5cfb: $ff
    xor b                                         ; $5cfc: $a8
    add sp, -$20                                  ; $5cfd: $e8 $e0
    db $10                                        ; $5cff: $10
    jp $ff5f                                      ; $5d00: $c3 $5f $ff


    ld sp, hl                                     ; $5d03: $f9
    cp a                                          ; $5d04: $bf
    db $fc                                        ; $5d05: $fc
    db $e4                                        ; $5d06: $e4
    ret nc                                        ; $5d07: $d0

    and l                                         ; $5d08: $a5
    rst $30                                       ; $5d09: $f7
    rst $30                                       ; $5d0a: $f7
    db $eb                                        ; $5d0b: $eb
    db $eb                                        ; $5d0c: $eb
    or a                                          ; $5d0d: $b7
    ld h, a                                       ; $5d0e: $67
    or a                                          ; $5d0f: $b7
    rst $38                                       ; $5d10: $ff
    rst $38                                       ; $5d11: $ff
    db $fc                                        ; $5d12: $fc
    pop bc                                        ; $5d13: $c1
    ld b, $e1                                     ; $5d14: $06 $e1
    add l                                         ; $5d16: $85
    add l                                         ; $5d17: $85
    adc $c1                                       ; $5d18: $ce $c1
    rst $28                                       ; $5d1a: $ef
    rst $38                                       ; $5d1b: $ff
    rst $38                                       ; $5d1c: $ff
    ld e, [hl]                                    ; $5d1d: $5e
    ld e, [hl]                                    ; $5d1e: $5e
    jp z, $f1c1                                   ; $5d1f: $ca $c1 $f1

    pop af                                        ; $5d22: $f1
    ld l, e                                       ; $5d23: $6b
    rst $38                                       ; $5d24: $ff
    ld l, e                                       ; $5d25: $6b
    rst $10                                       ; $5d26: $d7
    rst $10                                       ; $5d27: $d7
    rst $38                                       ; $5d28: $ff
    rst $38                                       ; $5d29: $ff
    and b                                         ; $5d2a: $a0
    and b                                         ; $5d2b: $a0
    cp a                                          ; $5d2c: $bf
    ld a, a                                       ; $5d2d: $7f
    cp a                                          ; $5d2e: $bf
    ldh a, [$f0]                                  ; $5d2f: $f0 $f0
    pop hl                                        ; $5d31: $e1
    pop hl                                        ; $5d32: $e1
    jp z, $f2ca                                   ; $5d33: $ca $ca $f2

    pop hl                                        ; $5d36: $e1
    rst $38                                       ; $5d37: $ff
    db $f4                                        ; $5d38: $f4
    db $f4                                        ; $5d39: $f4
    nop                                           ; $5d3a: $00
    nop                                           ; $5d3b: $00
    xor a                                         ; $5d3c: $af
    xor a                                         ; $5d3d: $af
    rst $18                                       ; $5d3e: $df
    rst $18                                       ; $5d3f: $df
    cp l                                          ; $5d40: $bd
    ld a, a                                       ; $5d41: $7f
    dec bc                                        ; $5d42: $0b
    ret nz                                        ; $5d43: $c0

    db $f4                                        ; $5d44: $f4
    db $f4                                        ; $5d45: $f4
    xor b                                         ; $5d46: $a8
    xor b                                         ; $5d47: $a8
    add b                                         ; $5d48: $80
    and d                                         ; $5d49: $a2
    ld d, a                                       ; $5d4a: $57
    adc d                                         ; $5d4b: $8a
    ld c, e                                       ; $5d4c: $4b
    ret nz                                        ; $5d4d: $c0

    rst $18                                       ; $5d4e: $df
    ld a, d                                       ; $5d4f: $7a
    xor d                                         ; $5d50: $aa
    xor [hl]                                      ; $5d51: $ae
    ld e, c                                       ; $5d52: $59
    ret nz                                        ; $5d53: $c0

    ld e, a                                       ; $5d54: $5f
    ldh [$66], a                                  ; $5d55: $e0 $66
    xor b                                         ; $5d57: $a8
    ld [hl], l                                    ; $5d58: $75
    dec e                                         ; $5d59: $1d
    rst $38                                       ; $5d5a: $ff
    sbc c                                         ; $5d5b: $99
    jp $fffd                                      ; $5d5c: $c3 $fd $ff


    xor d                                         ; $5d5f: $aa
    di                                            ; $5d60: $f3
    and e                                         ; $5d61: $a3
    sbc $e2                                       ; $5d62: $de $e2
    ld hl, sp-$1f                                 ; $5d64: $f8 $e1
    ld b, c                                       ; $5d66: $41
    xor l                                         ; $5d67: $ad
    ld b, b                                       ; $5d68: $40
    xor b                                         ; $5d69: $a8
    inc sp                                        ; $5d6a: $33
    rst $00                                       ; $5d6b: $c7
    cp h                                          ; $5d6c: $bc
    pop hl                                        ; $5d6d: $e1
    daa                                           ; $5d6e: $27
    xor e                                         ; $5d6f: $ab
    sbc c                                         ; $5d70: $99
    ret                                           ; $5d71: $c9


    db $eb                                        ; $5d72: $eb
    add hl, bc                                    ; $5d73: $09
    jp nz, $f755                                  ; $5d74: $c2 $55 $f7

    ld b, $a8                                     ; $5d77: $06 $a8
    ld e, [hl]                                    ; $5d79: $5e
    ld a, [$bf88]                                 ; $5d7a: $fa $88 $bf
    xor e                                         ; $5d7d: $ab
    and b                                         ; $5d7e: $a0
    xor e                                         ; $5d7f: $ab
    ld [$ba84], a                                 ; $5d80: $ea $84 $ba
    sub b                                         ; $5d83: $90
    pop hl                                        ; $5d84: $e1
    or a                                          ; $5d85: $b7
    db $db                                        ; $5d86: $db
    and [hl]                                      ; $5d87: $a6
    cp $ff                                        ; $5d88: $fe $ff
    ld d, l                                       ; $5d8a: $55
    inc de                                        ; $5d8b: $13
    and b                                         ; $5d8c: $a0
    ld d, a                                       ; $5d8d: $57
    adc d                                         ; $5d8e: $8a
    ld a, h                                       ; $5d8f: $7c
    ldh [rP1], a                                  ; $5d90: $e0 $00
    cpl                                           ; $5d92: $2f
    ret nz                                        ; $5d93: $c0

    push de                                       ; $5d94: $d5
    sub e                                         ; $5d95: $93
    and b                                         ; $5d96: $a0
    cp c                                          ; $5d97: $b9
    and c                                         ; $5d98: $a1
    ld d, [hl]                                    ; $5d99: $56
    pop hl                                        ; $5d9a: $e1
    ld d, l                                       ; $5d9b: $55
    and d                                         ; $5d9c: $a2
    add e                                         ; $5d9d: $83
    and b                                         ; $5d9e: $a0

jr_079_5d9f:
    ld d, l                                       ; $5d9f: $55
    call $f4c2                                    ; $5da0: $cd $c2 $f4
    ret nz                                        ; $5da3: $c0

    ld h, b                                       ; $5da4: $60
    ld [c], a                                     ; $5da5: $e2
    xor d                                         ; $5da6: $aa
    sbc l                                         ; $5da7: $9d
    and b                                         ; $5da8: $a0
    ld a, [bc]                                    ; $5da9: $0a
    ld c, b                                       ; $5daa: $48
    jp Jump_079_5080                              ; $5dab: $c3 $80 $50


    db $e3                                        ; $5dae: $e3
    dec h                                         ; $5daf: $25
    push bc                                       ; $5db0: $c5
    dec d                                         ; $5db1: $15
    and [hl]                                      ; $5db2: $a6
    and $89                                       ; $5db3: $e6 $89
    add e                                         ; $5db5: $83
    ld d, a                                       ; $5db6: $57
    add d                                         ; $5db7: $82
    adc b                                         ; $5db8: $88
    ld c, c                                       ; $5db9: $49
    ld d, l                                       ; $5dba: $55
    jr nz, jr_079_5d9f                            ; $5dbb: $20 $e2

    sbc b                                         ; $5dbd: $98
    push hl                                       ; $5dbe: $e5
    db $eb                                        ; $5dbf: $eb
    ldh a, [$e2]                                  ; $5dc0: $f0 $e2
    db $ec                                        ; $5dc2: $ec
    pop hl                                        ; $5dc3: $e1
    rst $38                                       ; $5dc4: $ff
    inc c                                         ; $5dc5: $0c
    ldh [rHDMA1], a                               ; $5dc6: $e0 $51
    ld d, l                                       ; $5dc8: $55
    cp a                                          ; $5dc9: $bf
    and b                                         ; $5dca: $a0
    db $f4                                        ; $5dcb: $f4
    db $e3                                        ; $5dcc: $e3
    ret c                                         ; $5dcd: $d8

    pop hl                                        ; $5dce: $e1
    xor b                                         ; $5dcf: $a8
    add b                                         ; $5dd0: $80
    ld [c], a                                     ; $5dd1: $e2
    ld d, l                                       ; $5dd2: $55
    ld [hl], b                                    ; $5dd3: $70
    ld [c], a                                     ; $5dd4: $e2
    rla                                           ; $5dd5: $17
    ld a, [$54ff]                                 ; $5dd6: $fa $ff $54
    ld e, l                                       ; $5dd9: $5d
    add h                                         ; $5dda: $84
    dec b                                         ; $5ddb: $05
    db $e4                                        ; $5ddc: $e4
    ret nz                                        ; $5ddd: $c0

    ld h, h                                       ; $5dde: $64
    db $e3                                        ; $5ddf: $e3
    sbc c                                         ; $5de0: $99
    add c                                         ; $5de1: $81
    add c                                         ; $5de2: $81
    ld a, [hl+]                                   ; $5de3: $2a
    ld d, h                                       ; $5de4: $54
    ldh [$64], a                                  ; $5de5: $e0 $64
    db $e3                                        ; $5de7: $e3
    ret nc                                        ; $5de8: $d0

    jp $c004                                      ; $5de9: $c3 $04 $c0


    call nz, $b8c4                                ; $5dec: $c4 $c4 $b8
    push hl                                       ; $5def: $e5
    rst $38                                       ; $5df0: $ff
    ld b, d                                       ; $5df1: $42
    ld a, [de]                                    ; $5df2: $1a
    ld [c], a                                     ; $5df3: $e2
    ld [$e2bc], a                                 ; $5df4: $ea $bc $e2
    ei                                            ; $5df7: $fb
    ld h, l                                       ; $5df8: $65
    ld c, [hl]                                    ; $5df9: $4e
    ret nz                                        ; $5dfa: $c0

    inc e                                         ; $5dfb: $1c
    ldh [$bf], a                                  ; $5dfc: $e0 $bf
    ld l, b                                       ; $5dfe: $68
    xor $10                                       ; $5dff: $ee $10
    db $db                                        ; $5e01: $db
    ld l, c                                       ; $5e02: $69
    sbc d                                         ; $5e03: $9a
    ret                                           ; $5e04: $c9


    jp Jump_079_6c63                              ; $5e05: $c3 $63 $6c


    pop bc                                        ; $5e08: $c1
    ld [$eeea], a                                 ; $5e09: $ea $ea $ee
    and a                                         ; $5e0c: $a7
    ld h, c                                       ; $5e0d: $61
    ldh [$a0], a                                  ; $5e0e: $e0 $a0
    ld a, [$6bbf]                                 ; $5e10: $fa $bf $6b
    db $fc                                        ; $5e13: $fc
    or c                                          ; $5e14: $b1
    ld h, [hl]                                    ; $5e15: $66
    ld hl, sp+$00                                 ; $5e16: $f8 $00
    jp nz, Jump_000_3507                          ; $5e18: $c2 $07 $35

    add hl, de                                    ; $5e1b: $19
    ccf                                           ; $5e1c: $3f
    ret                                           ; $5e1d: $c9


    ldh [$da], a                                  ; $5e1e: $e0 $da
    ld h, e                                       ; $5e20: $63
    nop                                           ; $5e21: $00
    ld d, a                                       ; $5e22: $57
    adc e                                         ; $5e23: $8b
    ret nz                                        ; $5e24: $c0

    ld [hl], d                                    ; $5e25: $72
    add d                                         ; $5e26: $82
    adc a                                         ; $5e27: $8f
    ld h, d                                       ; $5e28: $62
    rst $38                                       ; $5e29: $ff
    rra                                           ; $5e2a: $1f
    nop                                           ; $5e2b: $00
    rst $20                                       ; $5e2c: $e7
    ldh [$fb], a                                  ; $5e2d: $e0 $fb
    ld hl, sp-$03                                 ; $5e2f: $f8 $fd
    db $fc                                        ; $5e31: $fc
    rst $38                                       ; $5e32: $ff
    cp $fe                                        ; $5e33: $fe $fe
    ei                                            ; $5e35: $fb
    inc bc                                        ; $5e36: $03
    rst $30                                       ; $5e37: $f7
    rlca                                          ; $5e38: $07
    rst $28                                       ; $5e39: $ef
    rrca                                          ; $5e3a: $0f
    rst $38                                       ; $5e3b: $ff
    db $e3                                        ; $5e3c: $e3
    inc bc                                        ; $5e3d: $03
    pop bc                                        ; $5e3e: $c1
    dec e                                         ; $5e3f: $1d
    ret z                                         ; $5e40: $c8

    ld e, $ec                                     ; $5e41: $1e $ec
    ld c, $ff                                     ; $5e43: $0e $ff
    pop af                                        ; $5e45: $f1
    ld bc, $28d7                                  ; $5e46: $01 $d7 $28
    cp a                                          ; $5e49: $bf
    ld b, b                                       ; $5e4a: $40
    ld a, a                                       ; $5e4b: $7f
    add b                                         ; $5e4c: $80
    ld a, e                                       ; $5e4d: $7b
    rst $38                                       ; $5e4e: $ff
    inc b                                         ; $5e4f: $04
    ld e, $e0                                     ; $5e50: $1e $e0
    ld d, h                                       ; $5e52: $54
    nop                                           ; $5e53: $00
    nop                                           ; $5e54: $00
    ld hl, sp-$51                                 ; $5e55: $f8 $af
    ld h, a                                       ; $5e57: $67
    rst $38                                       ; $5e58: $ff
    ld bc, $00c0                                  ; $5e59: $01 $c0 $00
    ccf                                           ; $5e5c: $3f
    ccf                                           ; $5e5d: $3f
    ld e, $de                                     ; $5e5e: $1e $de
    cp $ed                                        ; $5e60: $fe $ed
    inc b                                         ; $5e62: $04
    ld [hl], h                                    ; $5e63: $74
    jp nz, $feaa                                  ; $5e64: $c2 $aa $fe

    ld [c], a                                     ; $5e67: $e2
    ldh [rIF], a                                  ; $5e68: $e0 $0f
    ld l, a                                       ; $5e6a: $6f
    rlca                                          ; $5e6b: $07
    ld [c], a                                     ; $5e6c: $e2
    cpl                                           ; $5e6d: $2f
    and b                                         ; $5e6e: $a0
    ld a, a                                       ; $5e6f: $7f
    cp $e2                                        ; $5e70: $fe $e2
    scf                                           ; $5e72: $37
    ld h, c                                       ; $5e73: $61
    or $e1                                        ; $5e74: $f6 $e1
    rst $30                                       ; $5e76: $f7
    rlca                                          ; $5e77: $07
    xor $bf                                       ; $5e78: $ee $bf
    rrca                                          ; $5e7a: $0f
    add sp, $0e                                   ; $5e7b: $e8 $0e
    ldh a, [rSB]                                  ; $5e7d: $f0 $01
    cp $70                                        ; $5e7f: $fe $70
    db $e4                                        ; $5e81: $e4
    and a                                         ; $5e82: $a7
    rst $38                                       ; $5e83: $ff
    and b                                         ; $5e84: $a0
    rrca                                          ; $5e85: $0f
    nop                                           ; $5e86: $00
    ccf                                           ; $5e87: $3f
    nop                                           ; $5e88: $00
    ld b, a                                       ; $5e89: $47
    nop                                           ; $5e8a: $00
    add e                                         ; $5e8b: $83
    rst $38                                       ; $5e8c: $ff
    jr c, jr_079_5e92                             ; $5e8d: $38 $03

    inc c                                         ; $5e8f: $0c
    ld b, e                                       ; $5e90: $43
    inc b                                         ; $5e91: $04

jr_079_5e92:
    ld h, d                                       ; $5e92: $62
    ld [$ff0c], sp                                ; $5e93: $08 $0c $ff
    db $ed                                        ; $5e96: $ed
    inc c                                         ; $5e97: $0c
    db $ed                                        ; $5e98: $ed
    inc e                                         ; $5e99: $1c
    db $dd                                        ; $5e9a: $dd
    inc a                                         ; $5e9b: $3c
    cp l                                          ; $5e9c: $bd
    inc l                                         ; $5e9d: $2c
    rst $18                                       ; $5e9e: $df
    xor l                                         ; $5e9f: $ad
    inc c                                         ; $5ea0: $0c
    call $f300                                    ; $5ea1: $cd $00 $f3
    ld d, [hl]                                    ; $5ea4: $56
    add b                                         ; $5ea5: $80
    sbc e                                         ; $5ea6: $9b
    ld h, e                                       ; $5ea7: $63
    rst $38                                       ; $5ea8: $ff
    dec de                                        ; $5ea9: $1b
    ld h, e                                       ; $5eaa: $63
    dec de                                        ; $5eab: $1b
    inc bc                                        ; $5eac: $03
    dec sp                                        ; $5ead: $3b
    rlca                                          ; $5eae: $07
    ld [hl], a                                    ; $5eaf: $77
    dec c                                         ; $5eb0: $0d
    sbc a                                         ; $5eb1: $9f
    db $ed                                        ; $5eb2: $ed
    ld e, $9e                                     ; $5eb3: $1e $9e
    ld l, $ce                                     ; $5eb5: $2e $ce
    or d                                          ; $5eb7: $b2
    db $e3                                        ; $5eb8: $e3
    xor h                                         ; $5eb9: $ac
    pop hl                                        ; $5eba: $e1
    ccf                                           ; $5ebb: $3f
    rst $38                                       ; $5ebc: $ff
    add b                                         ; $5ebd: $80
    ccf                                           ; $5ebe: $3f
    add b                                         ; $5ebf: $80
    ld a, a                                       ; $5ec0: $7f
    nop                                           ; $5ec1: $00
    ld hl, sp+$03                                 ; $5ec2: $f8 $03
    ldh a, [$6d]                                  ; $5ec4: $f0 $6d
    rlca                                          ; $5ec6: $07
    cp $e1                                        ; $5ec7: $fe $e1
    ld a, [$2403]                                 ; $5ec9: $fa $03 $24
    db $e3                                        ; $5ecc: $e3
    nop                                           ; $5ecd: $00
    or $1b                                        ; $5ece: $f6 $1b
    ldh [rIE], a                                  ; $5ed0: $e0 $ff
    add sp, $20                                   ; $5ed2: $e8 $20
    ldh [rSTAT], a                                ; $5ed4: $e0 $41
    pop bc                                        ; $5ed6: $c1
    nop                                           ; $5ed7: $00
    ld bc, $f782                                  ; $5ed8: $01 $82 $f7
    inc bc                                        ; $5edb: $03
    pop bc                                        ; $5edc: $c1
    inc bc                                        ; $5edd: $03
    pop de                                        ; $5ede: $d1
    and $ff                                       ; $5edf: $e6 $ff
    ld [bc], a                                    ; $5ee1: $02
    cp $05                                        ; $5ee2: $fe $05
    rst $38                                       ; $5ee4: $ff
    db $fd                                        ; $5ee5: $fd
    dec e                                         ; $5ee6: $1d
    db $fd                                        ; $5ee7: $fd
    db $10                                        ; $5ee8: $10
    ldh [$2f], a                                  ; $5ee9: $e0 $2f
    jp z, Jump_000_3d1f                           ; $5eeb: $ca $1f $3d

    pop bc                                        ; $5eee: $c1
    add $e1                                       ; $5eef: $c6 $e1
    cp a                                          ; $5ef1: $bf
    ld b, b                                       ; $5ef2: $40
    ld e, a                                       ; $5ef3: $5f
    and b                                         ; $5ef4: $a0
    inc [hl]                                      ; $5ef5: $34
    ldh [$82], a                                  ; $5ef6: $e0 $82
    ldh [rIE], a                                  ; $5ef8: $e0 $ff
    adc a                                         ; $5efa: $8f
    ret nz                                        ; $5efb: $c0

    rst $10                                       ; $5efc: $d7
    ldh a, [$eb]                                  ; $5efd: $f0 $eb
    ld hl, sp-$0b                                 ; $5eff: $f8 $f5
    db $fc                                        ; $5f01: $fc
    or e                                          ; $5f02: $b3
    ld a, [$0ffe]                                 ; $5f03: $fa $fe $0f
    ld h, b                                       ; $5f06: $60
    adc a                                         ; $5f07: $8f
    ld c, d                                       ; $5f08: $4a
    ld a, a                                       ; $5f09: $7f
    nop                                           ; $5f0a: $00
    ret nz                                        ; $5f0b: $c0

    db $eb                                        ; $5f0c: $eb
    dec de                                        ; $5f0d: $1b
    ld a, a                                       ; $5f0e: $7f
    ei                                            ; $5f0f: $fb
    inc d                                         ; $5f10: $14
    db $e4                                        ; $5f11: $e4
    inc sp                                        ; $5f12: $33
    jp nz, $c50f                                  ; $5f13: $c2 $0f $c5

    add [hl]                                      ; $5f16: $86
    pop hl                                        ; $5f17: $e1
    db $fd                                        ; $5f18: $fd
    rst $38                                       ; $5f19: $ff
    cp [hl]                                       ; $5f1a: $be
    ldh [$7f], a                                  ; $5f1b: $e0 $7f
    add b                                         ; $5f1d: $80
    ccf                                           ; $5f1e: $3f
    nop                                           ; $5f1f: $00
    ld c, a                                       ; $5f20: $4f
    ret nz                                        ; $5f21: $c0

    cp a                                          ; $5f22: $bf
    and a                                         ; $5f23: $a7
    ldh a, [$d3]                                  ; $5f24: $f0 $d3
    ld hl, sp-$17                                 ; $5f26: $f8 $e9
    db $fc                                        ; $5f28: $fc
    ret nz                                        ; $5f29: $c0

    pop hl                                        ; $5f2a: $e1
    push af                                       ; $5f2b: $f5
    cp $50                                        ; $5f2c: $fe $50
    ld c, d                                       ; $5f2e: $4a
    ld b, d                                       ; $5f2f: $42
    rst $38                                       ; $5f30: $ff
    xor c                                         ; $5f31: $a9
    rst $38                                       ; $5f32: $ff
    inc bc                                        ; $5f33: $03
    inc bc                                        ; $5f34: $03
    or $ff                                        ; $5f35: $f6 $ff
    rlca                                          ; $5f37: $07

jr_079_5f38:
    db $ed                                        ; $5f38: $ed
    rrca                                          ; $5f39: $0f
    ld [c], a                                     ; $5f3a: $e2
    rlca                                          ; $5f3b: $07
    pop hl                                        ; $5f3c: $e1
    dec bc                                        ; $5f3d: $0b
    pop bc                                        ; $5f3e: $c1
    rra                                           ; $5f3f: $1f
    dec e                                         ; $5f40: $1d
    add b                                         ; $5f41: $80
    ld e, $00                                     ; $5f42: $1e $00
    ld e, a                                       ; $5f44: $5f
    sub b                                         ; $5f45: $90
    ld b, c                                       ; $5f46: $41
    adc h                                         ; $5f47: $8c
    ld b, c                                       ; $5f48: $41
    ld [de], a                                    ; $5f49: $12

jr_079_5f4a:
    ld h, c                                       ; $5f4a: $61
    ld e, a                                       ; $5f4b: $5f
    ld a, e                                       ; $5f4c: $7b
    ld a, e                                       ; $5f4d: $7b
    rlca                                          ; $5f4e: $07
    add a                                         ; $5f4f: $87
    ld a, [$40bc]                                 ; $5f50: $fa $bc $40
    cp $a2                                        ; $5f53: $fe $a2
    ld b, b                                       ; $5f55: $40
    cp $01                                        ; $5f56: $fe $01
    and [hl]                                      ; $5f58: $a6
    add b                                         ; $5f59: $80
    cp a                                          ; $5f5a: $bf
    add b                                         ; $5f5b: $80
    rst $18                                       ; $5f5c: $df
    ret nz                                        ; $5f5d: $c0

    rst $28                                       ; $5f5e: $ef
    ldh [rIE], a                                  ; $5f5f: $e0 $ff
    rst $28                                       ; $5f61: $ef
    ldh [$f7], a                                  ; $5f62: $e0 $f7
    ldh a, [$db]                                  ; $5f64: $f0 $db
    ld hl, sp-$59                                 ; $5f66: $f8 $a7
    ldh a, [$fd]                                  ; $5f68: $f0 $fd
    ld b, $c2                                     ; $5f6a: $06 $c2
    ldh [$da], a                                  ; $5f6c: $e0 $da
    rra                                           ; $5f6e: $1f
    push de                                       ; $5f6f: $d5
    rra                                           ; $5f70: $1f
    rrc a                                         ; $5f71: $cb $0f
    cp a                                          ; $5f73: $bf
    rst $00                                       ; $5f74: $c7
    rla                                           ; $5f75: $17
    pop bc                                        ; $5f76: $c1
    add hl, de                                    ; $5f77: $19
    ldh [$0e], a                                  ; $5f78: $e0 $0e
    ret nc                                        ; $5f7a: $d0

    ld b, a                                       ; $5f7b: $47
    db $fd                                        ; $5f7c: $fd
    rra                                           ; $5f7d: $1f
    db $fd                                        ; $5f7e: $fd
    di                                            ; $5f7f: $f3
    di                                            ; $5f80: $f3
    rrca                                          ; $5f81: $0f
    rrca                                          ; $5f82: $0f
    ret nz                                        ; $5f83: $c0

    db $e3                                        ; $5f84: $e3
    pop bc                                        ; $5f85: $c1
    adc b                                         ; $5f86: $88
    ret nz                                        ; $5f87: $c0

    ld [c], a                                     ; $5f88: $e2
    sbc $be                                       ; $5f89: $de $be
    db $e3                                        ; $5f8b: $e3
    rst $10                                       ; $5f8c: $d7
    ldh a, [$b7]                                  ; $5f8d: $f0 $b7
    ldh a, [$c0]                                  ; $5f8f: $f0 $c0
    ld h, $e1                                     ; $5f91: $26 $e1
    nop                                           ; $5f93: $00
    rst $38                                       ; $5f94: $ff
    ret nz                                        ; $5f95: $c0

    jr nz, jr_079_5f38                            ; $5f96: $20 $a0

    jr nc, jr_079_5f4a                            ; $5f98: $30 $b0

    rst $38                                       ; $5f9a: $ff
    nop                                           ; $5f9b: $00
    cp $fa                                        ; $5f9c: $fe $fa
    cp $e6                                        ; $5f9e: $fe $e6
    ld a, b                                       ; $5fa0: $78
    ld [hl], e                                    ; $5fa1: $73
    jr nz, jr_079_5fc3                            ; $5fa2: $20 $1f

    ld b, b                                       ; $5fa4: $40

jr_079_5fa5:
    rra                                           ; $5fa5: $1f
    ld b, b                                       ; $5fa6: $40
    rrca                                          ; $5fa7: $0f
    rst $38                                       ; $5fa8: $ff
    and b                                         ; $5fa9: $a0
    nop                                           ; $5faa: $00
    sub b                                         ; $5fab: $90
    nop                                           ; $5fac: $00
    xor a                                         ; $5fad: $af
    nop                                           ; $5fae: $00
    ret nc                                        ; $5faf: $d0

    nop                                           ; $5fb0: $00
    rst $38                                       ; $5fb1: $ff
    ld h, [hl]                                    ; $5fb2: $66
    nop                                           ; $5fb3: $00
    jr c, jr_079_5fa5                             ; $5fb4: $38 $ef

    xor a                                         ; $5fb6: $af
    rst $18                                       ; $5fb7: $df
    ld e, a                                       ; $5fb8: $5f
    ccf                                           ; $5fb9: $3f
    ld a, a                                       ; $5fba: $7f
    ccf                                           ; $5fbb: $3f
    ld a, a                                       ; $5fbc: $7f
    ld a, a                                       ; $5fbd: $7f
    ld a, h                                       ; $5fbe: $7c
    ld a, h                                       ; $5fbf: $7c
    nop                                           ; $5fc0: $00
    inc bc                                        ; $5fc1: $03
    add h                                         ; $5fc2: $84

jr_079_5fc3:
    ld hl, $1d3e                                  ; $5fc3: $21 $3e $1d
    ld b, b                                       ; $5fc6: $40
    ld [$54fc], a                                 ; $5fc7: $ea $fc $54
    ldh [$e3], a                                  ; $5fca: $e0 $e3
    db $ed                                        ; $5fcc: $ed
    and b                                         ; $5fcd: $a0
    add b                                         ; $5fce: $80
    inc hl                                        ; $5fcf: $23
    or a                                          ; $5fd0: $b7
    ret nz                                        ; $5fd1: $c0

    cpl                                           ; $5fd2: $2f
    jr nz, jr_079_6037                            ; $5fd3: $20 $62

    pop hl                                        ; $5fd5: $e1
    rst $28                                       ; $5fd6: $ef
    ldh [$9a], a                                  ; $5fd7: $e0 $9a
    pop hl                                        ; $5fd9: $e1
    rst $18                                       ; $5fda: $df
    rst $38                                       ; $5fdb: $ff
    ret nz                                        ; $5fdc: $c0

    ldh a, [rTAC]                                 ; $5fdd: $f0 $07
    ld hl, sp+$00                                 ; $5fdf: $f8 $00

jr_079_5fe1:
    ld hl, sp+$02                                 ; $5fe1: $f8 $02
    ld hl, sp+$4f                                 ; $5fe3: $f8 $4f
    ld bc, $02f8                                  ; $5fe5: $01 $f8 $02
    db $fc                                        ; $5fe8: $fc
    and [hl]                                      ; $5fe9: $a6
    ldh [$ec], a                                  ; $5fea: $e0 $ec
    ret nz                                        ; $5fec: $c0

    cp a                                          ; $5fed: $bf
    inc [hl]                                      ; $5fee: $34
    db $e3                                        ; $5fef: $e3
    rst $28                                       ; $5ff0: $ef
    ld hl, sp-$08                                 ; $5ff1: $f8 $f8
    nop                                           ; $5ff3: $00
    rlca                                          ; $5ff4: $07
    dec c                                         ; $5ff5: $0d
    pop bc                                        ; $5ff6: $c1
    rst $38                                       ; $5ff7: $ff
    db $fd                                        ; $5ff8: $fd
    cp $1f                                        ; $5ff9: $fe $1f
    ld [$51f8], a                                 ; $5ffb: $ea $f8 $51
    ret nz                                        ; $5ffe: $c0

    rst $00                                       ; $5fff: $c7
    dec de                                        ; $6000: $1b
    ret nz                                        ; $6001: $c0

    ret nz                                        ; $6002: $c0

    db $ec                                        ; $6003: $ec
    cp [hl]                                       ; $6004: $be
    db $e3                                        ; $6005: $e3
    ccf                                           ; $6006: $3f
    jr jr_079_5fe1                                ; $6007: $18 $d8

    inc c                                         ; $6009: $0c
    db $ec                                        ; $600a: $ec
    nop                                           ; $600b: $00
    pop af                                        ; $600c: $f1
    jr nz, jr_079_6037                            ; $600d: $20 $28

    call nc, $faa4                                ; $600f: $d4 $a4 $fa
    ld b, b                                       ; $6012: $40
    ld h, $c7                                     ; $6013: $26 $c7
    cp $0b                                        ; $6015: $fe $0b
    ccf                                           ; $6017: $3f
    ccf                                           ; $6018: $3f
    rlca                                          ; $6019: $07
    rst $00                                       ; $601a: $c7
    add hl, bc                                    ; $601b: $09
    rst $00                                       ; $601c: $c7
    jp hl                                         ; $601d: $e9


    dec c                                         ; $601e: $0d
    db $ed                                        ; $601f: $ed
    cp $e5                                        ; $6020: $fe $e5
    ret nc                                        ; $6022: $d0

jr_079_6023:
    pop bc                                        ; $6023: $c1
    db $fc                                        ; $6024: $fc
    jp hl                                         ; $6025: $e9


    ccf                                           ; $6026: $3f
    cp a                                          ; $6027: $bf
    ld l, a                                       ; $6028: $6f
    rrca                                          ; $6029: $0f
    rst $08                                       ; $602a: $cf
    inc bc                                        ; $602b: $03
    db $e3                                        ; $602c: $e3
    ldh [$e9], a                                  ; $602d: $e0 $e9
    ccf                                           ; $602f: $3f
    nop                                           ; $6030: $00
    call c, $eee9                                 ; $6031: $dc $e9 $ee
    or b                                          ; $6034: $b0
    ld b, $fe                                     ; $6035: $06 $fe

jr_079_6037:
    ld bc, $fefc                                  ; $6037: $01 $fc $fe
    pop hl                                        ; $603a: $e1
    dec c                                         ; $603b: $0d
    db $ed                                        ; $603c: $ed
    dec e                                         ; $603d: $1d
    rst $38                                       ; $603e: $ff
    db $dd                                        ; $603f: $dd
    dec de                                        ; $6040: $1b
    db $db                                        ; $6041: $db
    rlca                                          ; $6042: $07
    rlca                                          ; $6043: $07
    reti                                          ; $6044: $d9


    add c                                         ; $6045: $81
    cp [hl]                                       ; $6046: $be
    rra                                           ; $6047: $1f
    jr jr_079_60c9                                ; $6048: $18 $7f

    inc [hl]                                      ; $604a: $34
    ld a, a                                       ; $604b: $7f
    ld [$290e], sp                                ; $604c: $08 $0e $29
    db $d3                                        ; $604f: $d3

Call_079_6050:
    pop hl                                        ; $6050: $e1
    and c                                         ; $6051: $a1
    pop hl                                        ; $6052: $e1
    db $fc                                        ; $6053: $fc
    rla                                           ; $6054: $17
    ld [c], a                                     ; $6055: $e2
    xor e                                         ; $6056: $ab
    ret nz                                        ; $6057: $c0

    nop                                           ; $6058: $00
    ccf                                           ; $6059: $3f
    jp z, Jump_000_0015                           ; $605a: $ca $15 $00

    pop af                                        ; $605d: $f1
    rst $38                                       ; $605e: $ff
    ld c, $ee                                     ; $605f: $0e $ee
    rra                                           ; $6061: $1f

jr_079_6062:
    rst $18                                       ; $6062: $df
    rra                                           ; $6063: $1f
    rst $18                                       ; $6064: $df
    ld c, $ee                                     ; $6065: $0e $ee
    ld a, c                                       ; $6067: $79
    ld bc, $c7a4                                  ; $6068: $01 $a4 $c7
    dec e                                         ; $606b: $1d

jr_079_606c:
    and b                                         ; $606c: $a0
    and b                                         ; $606d: $a0
    ld e, a                                       ; $606e: $5f
    ld b, b                                       ; $606f: $40
    cp a                                          ; $6070: $bf
    ld d, h                                       ; $6071: $54
    ld bc, $14ff                                  ; $6072: $01 $ff $14
    ld [$d42a], a                                 ; $6075: $ea $2a $d4
    dec d                                         ; $6078: $15
    ld [$fd02], a                                 ; $6079: $ea $02 $fd
    ld a, b                                       ; $607c: $78
    ld c, b                                       ; $607d: $48
    dec b                                         ; $607e: $05

jr_079_607f:
    sbc b                                         ; $607f: $98
    and b                                         ; $6080: $a0
    rst $10                                       ; $6081: $d7
    jr nz, jr_079_6023                            ; $6082: $20 $9f

    ld b, b                                       ; $6084: $40
    nop                                           ; $6085: $00
    ldh [$36], a                                  ; $6086: $e0 $36
    inc bc                                        ; $6088: $03
    sbc $92                                       ; $6089: $de $92
    add e                                         ; $608b: $83
    rst $28                                       ; $608c: $ef
    nop                                           ; $608d: $00
    nop                                           ; $608e: $00
    db $10                                        ; $608f: $10
    ld h, $03                                     ; $6090: $26 $03
    push de                                       ; $6092: $d5
    ld a, [bc]                                    ; $6093: $0a
    cp a                                          ; $6094: $bf
    jp z, Jump_000_1515                           ; $6095: $ca $15 $15

    ld a, [hl+]                                   ; $6098: $2a
    xor b                                         ; $6099: $a8
    rla                                           ; $609a: $17
    add hl, bc                                    ; $609b: $09
    push hl                                       ; $609c: $e5
    pop af                                        ; $609d: $f1
    ld e, a                                       ; $609e: $5f
    nop                                           ; $609f: $00
    ldh [$08], a                                  ; $60a0: $e0 $08
    ret nz                                        ; $60a2: $c0

    db $10                                        ; $60a3: $10
    cp $e0                                        ; $60a4: $fe $e0
    nop                                           ; $60a6: $00
    db $fc                                        ; $60a7: $fc
    pop hl                                        ; $60a8: $e1
    xor c                                         ; $60a9: $a9
    pop bc                                        ; $60aa: $c1
    ld d, e                                       ; $60ab: $53
    push hl                                       ; $60ac: $e5
    ld b, [hl]                                    ; $60ad: $46
    add b                                         ; $60ae: $80
    ld sp, hl                                     ; $60af: $f9
    pop af                                        ; $60b0: $f1
    add b                                         ; $60b1: $80
    rst $20                                       ; $60b2: $e7
    pop af                                        ; $60b3: $f1
    ret nz                                        ; $60b4: $c0

    sbc a                                         ; $60b5: $9f
    ld hl, sp-$30                                 ; $60b6: $f8 $d0
    add b                                         ; $60b8: $80
    call c, $e0c7                                 ; $60b9: $dc $c7 $e0
    add a                                         ; $60bc: $87
    rrca                                          ; $60bd: $0f
    rst $28                                       ; $60be: $ef
    dec e                                         ; $60bf: $1d
    sbc l                                         ; $60c0: $9d
    ld e, $fd                                     ; $60c1: $1e $fd
    sbc $92                                       ; $60c3: $de $92
    add e                                         ; $60c5: $83
    ld h, [hl]                                    ; $60c6: $66

jr_079_60c7:
    nop                                           ; $60c7: $00
    ld b, b                                       ; $60c8: $40

jr_079_60c9:
    jr @+$2a                                      ; $60c9: $18 $28

    jr c, jr_079_606c                             ; $60cb: $38 $9f

    ld b, c                                       ; $60cd: $41
    ld [hl], b                                    ; $60ce: $70
    ld b, l                                       ; $60cf: $45
    ld a, h                                       ; $60d0: $7c
    rst $08                                       ; $60d1: $cf
    ret nc                                        ; $60d2: $d0

    db $ec                                        ; $60d3: $ec
    ldh a, [$8b]                                  ; $60d4: $f0 $8b
    ld a, [de]                                    ; $60d6: $1a
    sub a                                         ; $60d7: $97
    ei                                            ; $60d8: $fb
    inc c                                         ; $60d9: $0c
    db $ec                                        ; $60da: $ec
    jr nc, jr_079_607f                            ; $60db: $30 $a2

    adc d                                         ; $60dd: $8a
    ld e, [hl]                                    ; $60de: $5e
    add c                                         ; $60df: $81
    jr z, jr_079_6062                             ; $60e0: $28 $80

    nop                                           ; $60e2: $00
    rst $38                                       ; $60e3: $ff
    dec e                                         ; $60e4: $1d
    inc e                                         ; $60e5: $1c
    ld h, e                                       ; $60e6: $63
    ldh [$ab], a                                  ; $60e7: $e0 $ab
    ld hl, sp+$55                                 ; $60e9: $f8 $55
    db $fc                                        ; $60eb: $fc
    sbc a                                         ; $60ec: $9f
    xor c                                         ; $60ed: $a9
    ld hl, sp-$2c                                 ; $60ee: $f8 $d4
    db $fc                                        ; $60f0: $fc
    ld [$a130], a                                 ; $60f1: $ea $30 $a1
    adc a                                         ; $60f4: $8f
    add h                                         ; $60f5: $84
    ld bc, $ccde                                  ; $60f6: $01 $de $cc
    nop                                           ; $60f9: $00
    ld b, $fe                                     ; $60fa: $06 $fe
    ld e, $fe                                     ; $60fc: $1e $fe
    ret nz                                        ; $60fe: $c0

    add c                                         ; $60ff: $81
    ld e, l                                       ; $6100: $5d
    add d                                         ; $6101: $82
    rst $38                                       ; $6102: $ff
    jp z, $9515                                   ; $6103: $ca $15 $95

jr_079_6106:
    ld a, [hl+]                                   ; $6106: $2a
    ld l, d                                       ; $6107: $6a
    dec d                                         ; $6108: $15
    rst $18                                       ; $6109: $df
    jr nz, jr_079_60c7                            ; $610a: $20 $bb

    cp a                                          ; $610c: $bf
    ld b, b                                       ; $610d: $40
    nop                                           ; $610e: $00
    and b                                         ; $610f: $a0
    ld b, b                                       ; $6110: $40
    rst $30                                       ; $6111: $f7
    ldh a, [$d4]                                  ; $6112: $f0 $d4
    ld h, c                                       ; $6114: $61
    or $fd                                        ; $6115: $f6 $fd
    cp $c0                                        ; $6117: $fe $c0
    add c                                         ; $6119: $81
    dec b                                         ; $611a: $05
    rlca                                          ; $611b: $07
    rrc a                                         ; $611c: $cb $0f
    push de                                       ; $611e: $d5
    rra                                           ; $611f: $1f
    ld a, a                                       ; $6120: $7f
    db $db                                        ; $6121: $db
    rra                                           ; $6122: $1f
    rst $28                                       ; $6123: $ef
    rrca                                          ; $6124: $0f
    rst $28                                       ; $6125: $ef
    rrca                                          ; $6126: $0f
    rst $30                                       ; $6127: $f7
    db $e4                                        ; $6128: $e4
    and b                                         ; $6129: $a0
    ldh a, [$6d]                                  ; $612a: $f0 $6d
    ld l, c                                       ; $612c: $69
    db $e4                                        ; $612d: $e4
    and c                                         ; $612e: $a1
    adc b                                         ; $612f: $88
    add b                                         ; $6130: $80
    ld h, b                                       ; $6131: $60
    and [hl]                                      ; $6132: $a6
    rst $30                                       ; $6133: $f7
    ldh a, [$d7]                                  ; $6134: $f0 $d7
    ldh a, [rIE]                                  ; $6136: $f0 $ff
    ld bc, $dd01                                  ; $6138: $01 $01 $dd
    dec e                                         ; $613b: $1d
    db $db                                        ; $613c: $db
    dec de                                        ; $613d: $1b
    db $db                                        ; $613e: $db
    dec de                                        ; $613f: $1b
    rst $38                                       ; $6140: $ff
    ret nc                                        ; $6141: $d0

    db $10                                        ; $6142: $10
    ret nc                                        ; $6143: $d0

    rla                                           ; $6144: $17
    ret nz                                        ; $6145: $c0

    rla                                           ; $6146: $17
    add b                                         ; $6147: $80
    cpl                                           ; $6148: $2f
    ld d, [hl]                                    ; $6149: $56
    dec a                                         ; $614a: $3d
    ld h, a                                       ; $614b: $67
    ccf                                           ; $614c: $3f
    ccf                                           ; $614d: $3f
    sbc d                                         ; $614e: $9a
    pop bc                                        ; $614f: $c1
    cp $e0                                        ; $6150: $fe $e0
    add d                                         ; $6152: $82
    rst $18                                       ; $6153: $df
    rst $38                                       ; $6154: $ff
    ldh [$0c], a                                  ; $6155: $e0 $0c
    and [hl]                                      ; $6157: $a6
    and e                                         ; $6158: $a3
    jr nz, jr_079_6106                            ; $6159: $20 $ab

    and a                                         ; $615b: $a7
    ldh a, [$82]                                  ; $615c: $f0 $82
    and b                                         ; $615e: $a0
    add h                                         ; $615f: $84
    and b                                         ; $6160: $a0
    add b                                         ; $6161: $80
    and a                                         ; $6162: $a7
    ld e, b                                       ; $6163: $58
    inc h                                         ; $6164: $24
    rst $18                                       ; $6165: $df
    rst $38                                       ; $6166: $ff
    ldh a, [$f0]                                  ; $6167: $f0 $f0
    nop                                           ; $6169: $00
    rrca                                          ; $616a: $0f
    add b                                         ; $616b: $80
    and e                                         ; $616c: $a3
    rst $38                                       ; $616d: $ff
    ld [$f80f], a                                 ; $616e: $ea $0f $f8
    ld d, b                                       ; $6171: $50
    add b                                         ; $6172: $80
    add a                                         ; $6173: $87
    xor c                                         ; $6174: $a9
    and l                                         ; $6175: $a5
    or d                                          ; $6176: $b2
    jp $c0b0                                      ; $6177: $c3 $b0 $c0


    jp z, $fae1                                   ; $617a: $ca $e1 $fa

    cp $e0                                        ; $617d: $fe $e0
    ld l, a                                       ; $617f: $6f

jr_079_6180:
    reti                                          ; $6180: $d9


    ldh [$83], a                                  ; $6181: $e0 $83
    jr nc, @-$7e                                  ; $6183: $30 $80

    inc e                                         ; $6185: $1c
    nop                                           ; $6186: $00
    db $fd                                        ; $6187: $fd
    ld l, a                                       ; $6188: $6f
    db $e3                                        ; $6189: $e3
    ld b, b                                       ; $618a: $40
    rst $08                                       ; $618b: $cf
    nop                                           ; $618c: $00
    or c                                          ; $618d: $b1
    pop af                                        ; $618e: $f1
    and c                                         ; $618f: $a1
    db $eb                                        ; $6190: $eb
    rst $38                                       ; $6191: $ff
    ld c, e                                       ; $6192: $4b
    rst $10                                       ; $6193: $d7
    sub a                                         ; $6194: $97
    ccf                                           ; $6195: $3f
    ccf                                           ; $6196: $3f
    ld a, $be                                     ; $6197: $3e $be
    jr nz, jr_079_6180                            ; $6199: $20 $e5

    ld hl, $40f9                                  ; $619b: $21 $f9 $40
    ld a, a                                       ; $619e: $7f
    ld d, b                                       ; $619f: $50
    xor c                                         ; $61a0: $a9
    inc c                                         ; $61a1: $0c
    and c                                         ; $61a2: $a1
    ccf                                           ; $61a3: $3f
    cp a                                          ; $61a4: $bf
    rra                                           ; $61a5: $1f
    rra                                           ; $61a6: $1f
    rst $18                                       ; $61a7: $df
    rlca                                          ; $61a8: $07
    rst $20                                       ; $61a9: $e7
    dec bc                                        ; $61aa: $0b
    db $eb                                        ; $61ab: $eb
    cp $e3                                        ; $61ac: $fe $e3
    add b                                         ; $61ae: $80
    and e                                         ; $61af: $a3
    ld l, h                                       ; $61b0: $6c
    ld h, l                                       ; $61b1: $65
    ret nc                                        ; $61b2: $d0

    ld b, h                                       ; $61b3: $44
    add c                                         ; $61b4: $81
    ld hl, sp-$80                                 ; $61b5: $f8 $80

jr_079_61b7:
    inc h                                         ; $61b7: $24

jr_079_61b8:
    ld h, b                                       ; $61b8: $60
    ld d, b                                       ; $61b9: $50
    pop bc                                        ; $61ba: $c1
    ld hl, sp+$29                                 ; $61bb: $f8 $29
    and b                                         ; $61bd: $a0
    db $e3                                        ; $61be: $e3
    nop                                           ; $61bf: $00
    rst $38                                       ; $61c0: $ff
    db $dd                                        ; $61c1: $dd
    db $dd                                        ; $61c2: $dd
    ld h, d                                       ; $61c3: $62
    ld h, d                                       ; $61c4: $62
    inc a                                         ; $61c5: $3c

jr_079_61c6:
    dec a                                         ; $61c6: $3d
    ret nz                                        ; $61c7: $c0

    inc bc                                        ; $61c8: $03
    ld sp, hl                                     ; $61c9: $f9
    ld b, b                                       ; $61ca: $40
    or h                                          ; $61cb: $b4
    ldh [rLCDC], a                                ; $61cc: $e0 $40
    and e                                         ; $61ce: $a3
    ccf                                           ; $61cf: $3f
    cp a                                          ; $61d0: $bf
    inc a                                         ; $61d1: $3c
    cp h                                          ; $61d2: $bc
    inc sp                                        ; $61d3: $33
    scf                                           ; $61d4: $37
    or e                                          ; $61d5: $b3
    dec sp                                        ; $61d6: $3b
    cp e                                          ; $61d7: $bb
    cp $e1                                        ; $61d8: $fe $e1
    dec de                                        ; $61da: $1b
    db $db                                        ; $61db: $db
    and l                                         ; $61dc: $a5
    and h                                         ; $61dd: $a4
    or h                                          ; $61de: $b4
    add d                                         ; $61df: $82
    ldh a, [rDIV]                                 ; $61e0: $f0 $04
    add c                                         ; $61e2: $81
    ld sp, $90a3                                  ; $61e3: $31 $a3 $90
    xor b                                         ; $61e6: $a8
    ccf                                           ; $61e7: $3f
    ld b, a                                       ; $61e8: $47
    ret nz                                        ; $61e9: $c0

    nop                                           ; $61ea: $00
    add b                                         ; $61eb: $80
    ccf                                           ; $61ec: $3f
    db $fc                                        ; $61ed: $fc
    cp d                                          ; $61ee: $ba
    add h                                         ; $61ef: $84
    rst $28                                       ; $61f0: $ef
    and d                                         ; $61f1: $a2
    jr jr_079_61f4                                ; $61f2: $18 $00

jr_079_61f4:
    ld bc, $c3c0                                  ; $61f4: $01 $c0 $c3
    rst $00                                       ; $61f7: $c7
    db $e3                                        ; $61f8: $e3
    nop                                           ; $61f9: $00
    adc a                                         ; $61fa: $8f
    ld d, d                                       ; $61fb: $52
    ld b, b                                       ; $61fc: $40
    xor $a7                                       ; $61fd: $ee $a7
    or l                                          ; $61ff: $b5
    ret nz                                        ; $6200: $c0

    db $db                                        ; $6201: $db
    scf                                           ; $6202: $37
    or a                                          ; $6203: $b7
    rst $18                                       ; $6204: $df
    rlca                                          ; $6205: $07
    rlca                                          ; $6206: $07
    ret c                                         ; $6207: $d8

    add b                                         ; $6208: $80
    cp a                                          ; $6209: $bf
    jr nc, jr_079_61b8                            ; $620a: $30 $ac

    ccf                                           ; $620c: $3f
    ccf                                           ; $620d: $3f
    pop af                                        ; $620e: $f1
    ret nz                                        ; $620f: $c0

    jr nc, @-$5a                                  ; $6210: $30 $a4

    sbc h                                         ; $6212: $9c
    push hl                                       ; $6213: $e5
    jr nc, jr_079_61b7                            ; $6214: $30 $a1

    ld [hl], c                                    ; $6216: $71
    ld [hl], c                                    ; $6217: $71
    ld l, [hl]                                    ; $6218: $6e
    ld l, [hl]                                    ; $6219: $6e
    rst $28                                       ; $621a: $ef
    ld e, a                                       ; $621b: $5f
    ld e, a                                       ; $621c: $5f
    rra                                           ; $621d: $1f
    sbc a                                         ; $621e: $9f
    jr nc, jr_079_61c6                            ; $621f: $30 $a5

    ldh [$e7], a                                  ; $6221: $e0 $e7
    ldh [rIE], a                                  ; $6223: $e0 $ff
    rst $20                                       ; $6225: $e7
    ld b, b                                       ; $6226: $40
    ld c, a                                       ; $6227: $4f
    inc d                                         ; $6228: $14
    dec hl                                        ; $6229: $2b
    xor b                                         ; $622a: $a8
    ld d, a                                       ; $622b: $57
    ld d, b                                       ; $622c: $50
    db $fd                                        ; $622d: $fd
    xor a                                         ; $622e: $af
    ld d, b                                       ; $622f: $50
    and l                                         ; $6230: $a5
    db $fc                                        ; $6231: $fc
    nop                                           ; $6232: $00
    ld a, [c]                                     ; $6233: $f2
    inc bc                                        ; $6234: $03
    call $bf0f                                    ; $6235: $cd $0f $bf
    and d                                         ; $6238: $a2
    ld [hl+], a                                   ; $6239: $22
    ld b, c                                       ; $623a: $41
    ld e, c                                       ; $623b: $59

jr_079_623c:
    add [hl]                                      ; $623c: $86
    and a                                         ; $623d: $a7
    or b                                          ; $623e: $b0
    ld hl, $ff07                                  ; $623f: $21 $07 $ff
    nop                                           ; $6242: $00
    cp b                                          ; $6243: $b8
    ld hl, sp+$5f                                 ; $6244: $f8 $5f
    rst $38                                       ; $6246: $ff
    rra                                           ; $6247: $1f
    rra                                           ; $6248: $1f
    ld b, e                                       ; $6249: $43
    scf                                           ; $624a: $37
    db $e3                                        ; $624b: $e3
    xor h                                         ; $624c: $ac
    db $fc                                        ; $624d: $fc
    ret c                                         ; $624e: $d8

    ld b, l                                       ; $624f: $45
    sbc a                                         ; $6250: $9f
    add b                                         ; $6251: $80
    adc $23                                       ; $6252: $ce $23
    sub b                                         ; $6254: $90
    add hl, hl                                    ; $6255: $29
    db $fc                                        ; $6256: $fc
    sbc d                                         ; $6257: $9a

Jump_079_6258:
    pop bc                                        ; $6258: $c1
    add b                                         ; $6259: $80
    inc hl                                        ; $625a: $23
    ldh a, [rP1]                                  ; $625b: $f0 $00
    push bc                                       ; $625d: $c5
    rrca                                          ; $625e: $0f
    dec hl                                        ; $625f: $2b
    ccf                                           ; $6260: $3f
    rst $28                                       ; $6261: $ef
    jr jr_079_623c                                ; $6262: $18 $d8

    add $e7                                       ; $6264: $c6 $e7
    ld [hl], b                                    ; $6266: $70
    inc hl                                        ; $6267: $23
    ld bc, $fe00                                  ; $6268: $01 $00 $fe
    sbc $4b                                       ; $626b: $de $4b
    ld h, b                                       ; $626d: $60
    ccf                                           ; $626e: $3f
    ccf                                           ; $626f: $3f
    adc a                                         ; $6270: $8f
    rst $08                                       ; $6271: $cf
    ld h, b                                       ; $6272: $60
    dec h                                         ; $6273: $25
    ccf                                           ; $6274: $3f
    nop                                           ; $6275: $00
    xor a                                         ; $6276: $af
    rst $08                                       ; $6277: $cf
    ret nz                                        ; $6278: $c0

    di                                            ; $6279: $f3
    ldh a, [$c0]                                  ; $627a: $f0 $c0
    db $eb                                        ; $627c: $eb
    add a                                         ; $627d: $87
    ld a, l                                       ; $627e: $7d
    ld h, b                                       ; $627f: $60
    db $fd                                        ; $6280: $fd
    ld l, a                                       ; $6281: $6f
    ld bc, $01fd                                  ; $6282: $01 $fd $01
    db $fc                                        ; $6285: $fc
    ld a, [$fbe0]                                 ; $6286: $fa $e0 $fb
    inc bc                                        ; $6289: $03
    cp $e1                                        ; $628a: $fe $e1
    rst $38                                       ; $628c: $ff
    ld a, [$9f02]                                 ; $628d: $fa $02 $9f
    sbc c                                         ; $6290: $99
    ld a, [hl]                                    ; $6291: $7e
    halt                                          ; $6292: $76
    ld sp, hl                                     ; $6293: $f9
    ld sp, hl                                     ; $6294: $f9
    rst $18                                       ; $6295: $df
    and $e4                                       ; $6296: $e6 $e4
    sbc $d0                                       ; $6298: $de $d0
    cp a                                          ; $629a: $bf
    add $20                                       ; $629b: $c6 $20
    daa                                           ; $629d: $27
    nop                                           ; $629e: $00
    db $eb                                        ; $629f: $eb
    sbc a                                         ; $62a0: $9f
    sbc a                                         ; $62a1: $9f
    inc a                                         ; $62a2: $3c
    ld h, b                                       ; $62a3: $60
    db $10                                        ; $62a4: $10
    ret nz                                        ; $62a5: $c0

    jr nz, @+$2a                                  ; $62a6: $20 $28

    add c                                         ; $62a8: $81
    inc h                                         ; $62a9: $24
    rst $38                                       ; $62aa: $ff
    add c                                         ; $62ab: $81
    ld b, $c1                                     ; $62ac: $06 $c1
    inc c                                         ; $62ae: $0c
    ld a, [hl]                                    ; $62af: $7e
    ld a, [hl]                                    ; $62b0: $7e
    ld a, $3e                                     ; $62b1: $3e $3e
    cp a                                          ; $62b3: $bf
    ld c, a                                       ; $62b4: $4f
    rst $08                                       ; $62b5: $cf
    rlca                                          ; $62b6: $07
    rst $20                                       ; $62b7: $e7
    inc bc                                        ; $62b8: $03
    di                                            ; $62b9: $f3
    adc [hl]                                      ; $62ba: $8e
    add b                                         ; $62bb: $80
    pop hl                                        ; $62bc: $e1
    ei                                            ; $62bd: $fb
    nop                                           ; $62be: $00
    and c                                         ; $62bf: $a1
    adc b                                         ; $62c0: $88
    dec h                                         ; $62c1: $25
    rra                                           ; $62c2: $1f
    nop                                           ; $62c3: $00
    rrca                                          ; $62c4: $0f
    ldh [rIF], a                                  ; $62c5: $e0 $0f
    sub a                                         ; $62c7: $97
    and b                                         ; $62c8: $a0
    ld b, d                                       ; $62c9: $42
    ld [hl], b                                    ; $62ca: $70
    ldh a, [$0b]                                  ; $62cb: $f0 $0b
    rra                                           ; $62cd: $1f
    and b                                         ; $62ce: $a0
    ldh [rLY], a                                  ; $62cf: $e0 $44
    ld h, b                                       ; $62d1: $60
    nop                                           ; $62d2: $00
    db $ed                                        ; $62d3: $ed
    ld sp, hl                                     ; $62d4: $f9
    and b                                         ; $62d5: $a0
    ldh [$f7], a                                  ; $62d6: $e0 $f7
    rlca                                          ; $62d8: $07
    ld h, h                                       ; $62d9: $64
    jr nz, jr_079_62ea                            ; $62da: $20 $0e

    rst $18                                       ; $62dc: $df
    ld d, l                                       ; $62dd: $55
    rst $38                                       ; $62de: $ff
    ccf                                           ; $62df: $3f
    dec hl                                        ; $62e0: $2b
    rst $38                                       ; $62e1: $ff
    rst $10                                       ; $62e2: $d7
    ld hl, sp-$08                                 ; $62e3: $f8 $f8
    pop hl                                        ; $62e5: $e1
    ldh [rIE], a                                  ; $62e6: $e0 $ff
    sub d                                         ; $62e8: $92
    sub b                                         ; $62e9: $90

jr_079_62ea:
    ld [hl], h                                    ; $62ea: $74
    ld b, b                                       ; $62eb: $40
    db $fc                                        ; $62ec: $fc
    add c                                         ; $62ed: $81
    di                                            ; $62ee: $f3
    di                                            ; $62ef: $f3
    ei                                            ; $62f0: $fb
    ret nz                                        ; $62f1: $c0

    ret nz                                        ; $62f2: $c0

    ld b, l                                       ; $62f3: $45
    jp Jump_000_003f                              ; $62f4: $c3 $3f $00


    rra                                           ; $62f7: $1f
    ret nz                                        ; $62f8: $c0

    rrca                                          ; $62f9: $0f
    rst $38                                       ; $62fa: $ff
    ld h, b                                       ; $62fb: $60
    cp $fe                                        ; $62fc: $fe $fe
    ld a, h                                       ; $62fe: $7c
    ld a, h                                       ; $62ff: $7c
    ld e, $1e                                     ; $6300: $1e $1e
    dec b                                         ; $6302: $05
    ld [hl], a                                    ; $6303: $77
    add l                                         ; $6304: $85
    ld [bc], a                                    ; $6305: $02
    jp nz, $8063                                  ; $6306: $c2 $63 $80

    inc bc                                        ; $6309: $03
    nop                                           ; $630a: $00
    ld [bc], a                                    ; $630b: $02
    jr z, jr_079_6333                             ; $630c: $28 $25

    cp [hl]                                       ; $630e: $be
    ld [c], a                                     ; $630f: $e2
    pop hl                                        ; $6310: $e1
    rra                                           ; $6311: $1f
    ld b, b                                       ; $6312: $40
    adc a                                         ; $6313: $8f
    ldh [rSB], a                                  ; $6314: $e0 $01
    inc h                                         ; $6316: $24
    ldh [$81], a                                  ; $6317: $e0 $81
    call nz, $c008                                ; $6319: $c4 $08 $c0
    adc b                                         ; $631c: $88
    add e                                         ; $631d: $83
    ccf                                           ; $631e: $3f
    ld b, b                                       ; $631f: $40
    ld [c], a                                     ; $6320: $e2
    adc [hl]                                      ; $6321: $8e
    ld b, c                                       ; $6322: $41
    ld a, b                                       ; $6323: $78
    dec b                                         ; $6324: $05

jr_079_6325:
    ld b, d                                       ; $6325: $42
    ld a, [bc]                                    ; $6326: $0a
    rst $38                                       ; $6327: $ff
    ld bc, $4208                                  ; $6328: $01 $08 $42
    ld bc, $1344                                  ; $632b: $01 $44 $13
    ld h, [hl]                                    ; $632e: $66
    ld b, c                                       ; $632f: $41
    rst $38                                       ; $6330: $ff
    scf                                           ; $6331: $37
    inc b                                         ; $6332: $04

jr_079_6333:
    dec sp                                        ; $6333: $3b
    inc hl                                        ; $6334: $23
    inc e                                         ; $6335: $1c
    inc b                                         ; $6336: $04
    ld h, e                                       ; $6337: $63
    ld b, b                                       ; $6338: $40
    cp $24                                        ; $6339: $fe $24
    add b                                         ; $633b: $80
    ld [$8070], sp                                ; $633c: $08 $70 $80
    ldh a, [rNR10]                                ; $633f: $f0 $10
    ldh [rNR41], a                                ; $6341: $e0 $20
    rst $38                                       ; $6343: $ff
    pop bc                                        ; $6344: $c1
    pop bc                                        ; $6345: $c1
    ld bc, $0400                                  ; $6346: $01 $00 $04
    dec [hl]                                      ; $6349: $35
    nop                                           ; $634a: $00
    dec de                                        ; $634b: $1b
    rst $38                                       ; $634c: $ff
    nop                                           ; $634d: $00
    rra                                           ; $634e: $1f
    jr nz, jr_079_6370                            ; $634f: $20 $1f

    ld bc, $413e                                  ; $6351: $01 $3e $41
    ld a, $fe                                     ; $6354: $3e $fe
    ld d, l                                       ; $6356: $55
    ld b, c                                       ; $6357: $41
    ld [hl], h                                    ; $6358: $74
    ld h, l                                       ; $6359: $65
    ld [hl], $22                                  ; $635a: $36 $22
    or $44                                        ; $635c: $f6 $44
    rst $28                                       ; $635e: $ef
    rst $38                                       ; $635f: $ff

jr_079_6360:
    ld [$10df], sp                                ; $6360: $08 $df $10
    ccf                                           ; $6363: $3f
    jr nz, jr_079_6360                            ; $6364: $20 $fa

    ret nz                                        ; $6366: $c0

    ld sp, hl                                     ; $6367: $f9
    rst $38                                       ; $6368: $ff
    nop                                           ; $6369: $00
    ld c, a                                       ; $636a: $4f
    and b                                         ; $636b: $a0
    and a                                         ; $636c: $a7
    ld d, b                                       ; $636d: $50
    ld d, e                                       ; $636e: $53
    xor b                                         ; $636f: $a8

jr_079_6370:
    dec hl                                        ; $6370: $2b
    rst $38                                       ; $6371: $ff
    ld d, b                                       ; $6372: $50
    ld b, e                                       ; $6373: $43
    jr z, @+$0d                                   ; $6374: $28 $0b

    ld d, b                                       ; $6376: $50
    rla                                           ; $6377: $17
    jr nz, jr_079_6325                            ; $6378: $20 $ab

    ccf                                           ; $637a: $3f
    ld d, b                                       ; $637b: $50
    db $ec                                        ; $637c: $ec
    inc c                                         ; $637d: $0c
    add sp, $08                                   ; $637e: $e8 $08
    ldh a, [$35]                                  ; $6380: $f0 $35
    ld h, b                                       ; $6382: $60
    sbc h                                         ; $6383: $9c
    push hl                                       ; $6384: $e5
    rst $28                                       ; $6385: $ef
    ld a, h                                       ; $6386: $7c
    nop                                           ; $6387: $00
    sbc [hl]                                      ; $6388: $9e
    nop                                           ; $6389: $00
    sub e                                         ; $638a: $93
    and c                                         ; $638b: $a1
    or e                                          ; $638c: $b3
    inc c                                         ; $638d: $0c
    and e                                         ; $638e: $a3
    db $fd                                        ; $638f: $fd
    inc e                                         ; $6390: $1c
    add b                                         ; $6391: $80
    ldh [rNR42], a                                ; $6392: $e0 $21
    rrca                                          ; $6394: $0f
    jr nz, jr_079_63b4                            ; $6395: $20 $1d

    jr nz, @+$1e                                  ; $6397: $20 $1c

    xor $74                                       ; $6399: $ee $74
    and b                                         ; $639b: $a0
    or b                                          ; $639c: $b0
    db $10                                        ; $639d: $10
    add b                                         ; $639e: $80
    ld l, b                                       ; $639f: $68
    ldh [$83], a                                  ; $63a0: $e0 $83
    add b                                         ; $63a2: $80
    nop                                           ; $63a3: $00
    rst $30                                       ; $63a4: $f7
    jp nz, $c600                                  ; $63a5: $c2 $00 $c6

    ld d, c                                       ; $63a8: $51
    ld [bc], a                                    ; $63a9: $02
    cp $01                                        ; $63aa: $fe $01
    cp $02                                        ; $63ac: $fe $02
    rst $38                                       ; $63ae: $ff
    db $fc                                        ; $63af: $fc
    ld [bc], a                                    ; $63b0: $02
    db $fc                                        ; $63b1: $fc
    ldh [$ce], a                                  ; $63b2: $e0 $ce

jr_079_63b4:
    ldh [$cc], a                                  ; $63b4: $e0 $cc
    add b                                         ; $63b6: $80
    rst $38                                       ; $63b7: $ff
    nop                                           ; $63b8: $00
    cp b                                          ; $63b9: $b8
    ld bc, $017c                                  ; $63ba: $01 $7c $01
    inc a                                         ; $63bd: $3c
    ld bc, $ef0e                                  ; $63be: $01 $0e $ef
    ld b, b                                       ; $63c1: $40
    ld b, $f0                                     ; $63c2: $06 $f0
    ld b, b                                       ; $63c4: $40
    rst $38                                       ; $63c5: $ff
    ldh [rNR10], a                                ; $63c6: $e0 $10
    ld d, b                                       ; $63c8: $50
    adc c                                         ; $63c9: $89
    di                                            ; $63ca: $f3
    add hl, hl                                    ; $63cb: $29
    call nz, Call_000_04ae                        ; $63cc: $c4 $ae $04
    ld a, [$1f20]                                 ; $63cf: $fa $20 $1f
    jr nz, jr_079_6413                            ; $63d2: $20 $3f

    ld bc, $ffff                                  ; $63d4: $01 $ff $ff
    inc b                                         ; $63d7: $04
    db $fc                                        ; $63d8: $fc
    ld [bc], a                                    ; $63d9: $02
    di                                            ; $63da: $f3
    ld l, l                                       ; $63db: $6d
    ld l, a                                       ; $63dc: $6f
    sbc b                                         ; $63dd: $98
    cp $cf                                        ; $63de: $fe $cf
    ret nz                                        ; $63e0: $c0

    ld [$20fb], sp                                ; $63e1: $08 $fb $20
    rst $20                                       ; $63e4: $e7
    db $10                                        ; $63e5: $10
    rla                                           ; $63e6: $17
    db $f4                                        ; $63e7: $f4
    rst $38                                       ; $63e8: $ff
    rst $30                                       ; $63e9: $f7
    cp b                                          ; $63ea: $b8
    ei                                            ; $63eb: $fb
    ld a, c                                       ; $63ec: $79
    ei                                            ; $63ed: $fb
    cp d                                          ; $63ee: $ba
    ei                                            ; $63ef: $fb
    ld a, [$01ff]                                 ; $63f0: $fa $ff $01
    ld hl, sp+$03                                 ; $63f3: $f8 $03
    ld hl, sp+$00                                 ; $63f5: $f8 $00
    ei                                            ; $63f7: $fb
    ld [bc], a                                    ; $63f8: $02
    ei                                            ; $63f9: $fb
    rst $38                                       ; $63fa: $ff
    add hl, bc                                    ; $63fb: $09
    rst $30                                       ; $63fc: $f7
    ld h, $e7                                     ; $63fd: $26 $e7
    ld b, l                                       ; $63ff: $45
    db $db                                        ; $6400: $db
    sbc d                                         ; $6401: $9a
    ld d, e                                       ; $6402: $53
    rst $38                                       ; $6403: $ff
    xor b                                         ; $6404: $a8
    add a                                         ; $6405: $87
    ld b, b                                       ; $6406: $40
    scf                                           ; $6407: $37
    jr nc, jr_079_6421                            ; $6408: $30 $17

    ldh a, [rNR22]                                ; $640a: $f0 $17
    rst $38                                       ; $640c: $ff
    ldh a, [$2f]                                  ; $640d: $f0 $2f
    ldh [rVBK], a                                 ; $640f: $e0 $4f
    ldh [$9f], a                                  ; $6411: $e0 $9f

jr_079_6413:
    ret nz                                        ; $6413: $c0

    ld e, [hl]                                    ; $6414: $5e
    db $fd                                        ; $6415: $fd
    ld e, [hl]                                    ; $6416: $5e
    ld de, $0060                                  ; $6417: $11 $60 $00
    add b                                         ; $641a: $80
    nop                                           ; $641b: $00
    ret z                                         ; $641c: $c8

    add hl, bc                                    ; $641d: $09
    db $f4                                        ; $641e: $f4
    ld l, [hl]                                    ; $641f: $6e
    ld a, [c]                                     ; $6420: $f2

jr_079_6421:
    ld h, c                                       ; $6421: $61
    nop                                           ; $6422: $00
    ld [$680f], sp                                ; $6423: $08 $0f $68
    add b                                         ; $6426: $80
    rra                                           ; $6427: $1f
    add c                                         ; $6428: $81
    xor e                                         ; $6429: $ab
    and b                                         ; $642a: $a0
    rst $38                                       ; $642b: $ff
    ld [bc], a                                    ; $642c: $02
    di                                            ; $642d: $f3
    ld c, b                                       ; $642e: $48
    ld c, a                                       ; $642f: $4f
    or c                                          ; $6430: $b1
    ccf                                           ; $6431: $3f
    inc b                                         ; $6432: $04
    db $fc                                        ; $6433: $fc
    rst $38                                       ; $6434: $ff
    ld [$20fa], sp                                ; $6435: $08 $fa $20
    and $00                                       ; $6438: $e6 $00
    ld c, $c0                                     ; $643a: $0e $c0
    rst $18                                       ; $643c: $df
    ei                                            ; $643d: $fb
    add b                                         ; $643e: $80
    cp a                                          ; $643f: $bf
    cp c                                          ; $6440: $b9
    add d                                         ; $6441: $82
    ld hl, sp+$00                                 ; $6442: $f8 $00
    db $f4                                        ; $6444: $f4
    nop                                           ; $6445: $00
    ld [$00ff], a                                 ; $6446: $ea $ff $00
    db $e4                                        ; $6449: $e4
    nop                                           ; $644a: $00
    ld a, d                                       ; $644b: $7a
    add c                                         ; $644c: $81
    inc c                                         ; $644d: $0c
    add e                                         ; $644e: $83
    jr c, @-$7a                                   ; $644f: $38 $84

    inc bc                                        ; $6451: $03
    ld b, l                                       ; $6452: $45
    ld e, d                                       ; $6453: $5a
    nop                                           ; $6454: $00
    add b                                         ; $6455: $80
    cp $e1                                        ; $6456: $fe $e1
    db $e4                                        ; $6458: $e4
    dec h                                         ; $6459: $25
    and d                                         ; $645a: $a2
    add e                                         ; $645b: $83
    inc b                                         ; $645c: $04
    and c                                         ; $645d: $a1
    push de                                       ; $645e: $d5
    rst $08                                       ; $645f: $cf
    rra                                           ; $6460: $1f
    cp d                                          ; $6461: $ba
    ccf                                           ; $6462: $3f
    dec [hl]                                      ; $6463: $35
    xor e                                         ; $6464: $ab
    add c                                         ; $6465: $81
    cp $e4                                        ; $6466: $fe $e4
    ld a, l                                       ; $6468: $7d
    db $fd                                        ; $6469: $fd
    ei                                            ; $646a: $fb
    db $fc                                        ; $646b: $fc
    db $fd                                        ; $646c: $fd
    and h                                         ; $646d: $a4
    and c                                         ; $646e: $a1
    db $fc                                        ; $646f: $fc
    db $fc                                        ; $6470: $fc
    di                                            ; $6471: $f3
    di                                            ; $6472: $f3
    adc a                                         ; $6473: $8f
    rst $38                                       ; $6474: $ff
    adc a                                         ; $6475: $8f
    rst $38                                       ; $6476: $ff
    rst $38                                       ; $6477: $ff
    inc e                                         ; $6478: $1c
    sbc h                                         ; $6479: $9c
    ld l, d                                       ; $647a: $6a
    ld l, d                                       ; $647b: $6a
    ld [hl], a                                    ; $647c: $77
    ld h, c                                       ; $647d: $61
    ld [hl], a                                    ; $647e: $77
    and b                                         ; $647f: $a0
    rlca                                          ; $6480: $07
    ld a, c                                       ; $6481: $79
    ld hl, $8356                                  ; $6482: $21 $56 $83
    ld b, b                                       ; $6485: $40
    inc hl                                        ; $6486: $23
    ld l, e                                       ; $6487: $6b
    ld a, a                                       ; $6488: $7f
    db $e3                                        ; $6489: $e3
    ldh [$f8], a                                  ; $648a: $e0 $f8
    cp $e4                                        ; $648c: $fe $e4
    cp h                                          ; $648e: $bc
    pop hl                                        ; $648f: $e1
    ld d, $60                                     ; $6490: $16 $60
    ld a, a                                       ; $6492: $7f
    ld [bc], a                                    ; $6493: $02
    ld a, a                                       ; $6494: $7f
    sub h                                         ; $6495: $94
    cp [hl]                                       ; $6496: $be
    rst $38                                       ; $6497: $ff
    xor c                                         ; $6498: $a9
    cp c                                          ; $6499: $b9
    rst $00                                       ; $649a: $c7
    rst $00                                       ; $649b: $c7
    rra                                           ; $649c: $1f
    rra                                           ; $649d: $1f
    rst $38                                       ; $649e: $ff
    rst $38                                       ; $649f: $ff
    rst $38                                       ; $64a0: $ff
    sub l                                         ; $64a1: $95
    rst $18                                       ; $64a2: $df
    ld a, [bc]                                    ; $64a3: $0a
    adc [hl]                                      ; $64a4: $8e
    ld d, c                                       ; $64a5: $51
    ld d, c                                       ; $64a6: $51
    sbc a                                         ; $64a7: $9f
    sbc a                                         ; $64a8: $9f
    ret c                                         ; $64a9: $d8

    ld e, [hl]                                    ; $64aa: $5e
    inc bc                                        ; $64ab: $03
    ld d, [hl]                                    ; $64ac: $56
    nop                                           ; $64ad: $00
    jp nz, $cfea                                  ; $64ae: $c2 $ea $cf

    ret nz                                        ; $64b1: $c0

    ld h, l                                       ; $64b2: $65
    ld b, d                                       ; $64b3: $42
    pop af                                        ; $64b4: $f1
    nop                                           ; $64b5: $00
    ld e, a                                       ; $64b6: $5f
    jp $9310                                      ; $64b7: $c3 $10 $93


    jr nz, jr_079_64dd                            ; $64ba: $20 $21

    adc $60                                       ; $64bc: $ce $60
    ld bc, $4a63                                  ; $64be: $01 $63 $4a
    xor $00                                       ; $64c1: $ee $00
    ld b, c                                       ; $64c3: $41
    jr nz, jr_079_6545                            ; $64c4: $20 $7f

    ld b, b                                       ; $64c6: $40
    db $fc                                        ; $64c7: $fc
    ldh [rSTAT], a                                ; $64c8: $e0 $41
    ld a, a                                       ; $64ca: $7f
    ld [hl+], a                                   ; $64cb: $22
    cp a                                          ; $64cc: $bf
    ld a, a                                       ; $64cd: $7f
    ld d, h                                       ; $64ce: $54
    ld a, a                                       ; $64cf: $7f
    ld a, [hl+]                                   ; $64d0: $2a
    ld a, h                                       ; $64d1: $7c
    ld d, h                                       ; $64d2: $54
    ld b, c                                       ; $64d3: $41
    dec b                                         ; $64d4: $05
    rst $38                                       ; $64d5: $ff
    ld a, a                                       ; $64d6: $7f
    db $fd                                        ; $64d7: $fd
    ldh a, [$f0]                                  ; $64d8: $f0 $f0
    adc b                                         ; $64da: $88
    add a                                         ; $64db: $87
    ld b, b                                       ; $64dc: $40

jr_079_64dd:
    ccf                                           ; $64dd: $3f
    ldh [$03], a                                  ; $64de: $e0 $03
    rst $28                                       ; $64e0: $ef
    ldh [$a7], a                                  ; $64e1: $e0 $a7
    nop                                           ; $64e3: $00
    rra                                           ; $64e4: $1f
    inc hl                                        ; $64e5: $23
    ld [c], a                                     ; $64e6: $e2
    cp $20                                        ; $64e7: $fe $20
    cpl                                           ; $64e9: $2f
    db $db                                        ; $64ea: $db
    ld h, b                                       ; $64eb: $60
    ld l, a                                       ; $64ec: $6f
    pop hl                                        ; $64ed: $e1
    inc bc                                        ; $64ee: $03
    and b                                         ; $64ef: $a0
    xor a                                         ; $64f0: $af
    or $e1                                        ; $64f1: $f6 $e1
    ccf                                           ; $64f3: $3f
    ld a, a                                       ; $64f4: $7f
    rst $38                                       ; $64f5: $ff
    rra                                           ; $64f6: $1f
    ld a, a                                       ; $64f7: $7f
    cpl                                           ; $64f8: $2f
    ld a, a                                       ; $64f9: $7f
    rla                                           ; $64fa: $17
    ld a, a                                       ; $64fb: $7f
    rrca                                          ; $64fc: $0f
    ld a, a                                       ; $64fd: $7f
    cp a                                          ; $64fe: $bf
    dec d                                         ; $64ff: $15
    ld a, a                                       ; $6500: $7f
    ld a, [bc]                                    ; $6501: $0a
    ccf                                           ; $6502: $3f
    nop                                           ; $6503: $00
    inc a                                         ; $6504: $3c
    or c                                          ; $6505: $b1
    ld b, a                                       ; $6506: $47
    ldh a, [$57]                                  ; $6507: $f0 $57
    ldh a, [$80]                                  ; $6509: $f0 $80
    adc a                                         ; $650b: $8f
    ret nz                                        ; $650c: $c0

    ldh [$f5], a                                  ; $650d: $e0 $f5
    and b                                         ; $650f: $a0
    nop                                           ; $6510: $00
    pop de                                        ; $6511: $d1
    ret nz                                        ; $6512: $c0

    pop hl                                        ; $6513: $e1
    ld [hl], b                                    ; $6514: $70
    daa                                           ; $6515: $27
    and e                                         ; $6516: $a3
    ret nz                                        ; $6517: $c0

    rst $20                                       ; $6518: $e7
    sbc e                                         ; $6519: $9b
    inc bc                                        ; $651a: $03
    ld [hl], c                                    ; $651b: $71
    and d                                         ; $651c: $a2
    add c                                         ; $651d: $81
    nop                                           ; $651e: $00
    jp $a509                                      ; $651f: $c3 $09 $a5


    db $d3                                        ; $6522: $d3
    inc bc                                        ; $6523: $03
    add e                                         ; $6524: $83
    or a                                          ; $6525: $b7
    add c                                         ; $6526: $81
    xor e                                         ; $6527: $ab
    add b                                         ; $6528: $80
    db $fd                                        ; $6529: $fd
    ld sp, hl                                     ; $652a: $f9
    ld b, d                                       ; $652b: $42
    cp $f9                                        ; $652c: $fe $f9
    rra                                           ; $652e: $1f
    ld sp, hl                                     ; $652f: $f9
    rst $20                                       ; $6530: $e7
    rst $20                                       ; $6531: $e7
    adc a                                         ; $6532: $8f
    adc a                                         ; $6533: $8f
    and b                                         ; $6534: $a0
    ld b, e                                       ; $6535: $43
    ld b, h                                       ; $6536: $44
    ld bc, $e9c4                                  ; $6537: $01 $c4 $e9
    ccf                                           ; $653a: $3f
    ldh [$ef], a                                  ; $653b: $e0 $ef
    ret nz                                        ; $653d: $c0

    rst $18                                       ; $653e: $df
    ld bc, $d4c1                                  ; $653f: $01 $c1 $d4
    pop hl                                        ; $6542: $e1
    ret nc                                        ; $6543: $d0

    rst $20                                       ; $6544: $e7

jr_079_6545:
    or $31                                        ; $6545: $f6 $31
    ld b, e                                       ; $6547: $43
    db $fc                                        ; $6548: $fc
    db $fc                                        ; $6549: $fc
    add hl, sp                                    ; $654a: $39
    db $e4                                        ; $654b: $e4
    cp $fb                                        ; $654c: $fe $fb
    ei                                            ; $654e: $fb
    rst $20                                       ; $654f: $e7
    scf                                           ; $6550: $37
    rst $20                                       ; $6551: $e7
    rra                                           ; $6552: $1f
    rra                                           ; $6553: $1f
    cp l                                          ; $6554: $bd
    push bc                                       ; $6555: $c5
    rst $38                                       ; $6556: $ff
    rst $38                                       ; $6557: $ff
    add $e7                                       ; $6558: $c6 $e7
    call z, $fc04                                 ; $655a: $cc $04 $fc
    sbc d                                         ; $655d: $9a
    ld [c], a                                     ; $655e: $e2
    ld a, [$ffe7]                                 ; $655f: $fa $e7 $ff
    ld a, [$547e]                                 ; $6562: $fa $7e $54
    ld a, b                                       ; $6565: $78
    jr z, @+$01                                   ; $6566: $28 $ff

    add l                                         ; $6568: $85
    ld bc, $00c0                                  ; $6569: $01 $c0 $00
    cp a                                          ; $656c: $bf
    inc c                                         ; $656d: $0c
    ld a, a                                       ; $656e: $7f
    ld a, [de]                                    ; $656f: $1a
    dec sp                                        ; $6570: $3b
    ld a, a                                       ; $6571: $7f
    inc b                                         ; $6572: $04
    ld h, [hl]                                    ; $6573: $66
    push bc                                       ; $6574: $c5
    ccf                                           ; $6575: $3f
    ccf                                           ; $6576: $3f
    rst $00                                       ; $6577: $c7
    ldh [$a2], a                                  ; $6578: $e0 $a2
    pop af                                        ; $657a: $f1
    ld b, a                                       ; $657b: $47
    rrca                                          ; $657c: $0f
    ldh [$ef], a                                  ; $657d: $e0 $ef
    db $10                                        ; $657f: $10
    rrca                                          ; $6580: $0f
    sub b                                         ; $6581: $90
    nop                                           ; $6582: $00
    jp $ba83                                      ; $6583: $c3 $83 $ba


    and $ff                                       ; $6586: $e6 $ff
    pop hl                                        ; $6588: $e1
    rra                                           ; $6589: $1f
    ld a, l                                       ; $658a: $7d
    ld e, l                                       ; $658b: $5d
    ld a, l                                       ; $658c: $7d
    add hl, hl                                    ; $658d: $29
    add b                                         ; $658e: $80
    ret nz                                        ; $658f: $c0

    db $e4                                        ; $6590: $e4
    ld [hl+], a                                   ; $6591: $22
    ld h, a                                       ; $6592: $67
    ret nz                                        ; $6593: $c0

    db $e3                                        ; $6594: $e3
    ld a, [bc]                                    ; $6595: $0a
    add b                                         ; $6596: $80
    nop                                           ; $6597: $00
    push de                                       ; $6598: $d5
    add b                                         ; $6599: $80
    dec bc                                        ; $659a: $0b
    ccf                                           ; $659b: $3f
    add c                                         ; $659c: $81
    and b                                         ; $659d: $a0
    add b                                         ; $659e: $80
    rlca                                          ; $659f: $07
    nop                                           ; $65a0: $00
    nop                                           ; $65a1: $00
    nop                                           ; $65a2: $00
    dec h                                         ; $65a3: $25
    ld [bc], a                                    ; $65a4: $02
    rst $38                                       ; $65a5: $ff
    db $e4                                        ; $65a6: $e4
    inc b                                         ; $65a7: $04
    rst $38                                       ; $65a8: $ff
    ldh [$f4], a                                  ; $65a9: $e0 $f4
    push hl                                       ; $65ab: $e5
    nop                                           ; $65ac: $00
    rst $38                                       ; $65ad: $ff
    add sp, -$20                                  ; $65ae: $e8 $e0
    and $57                                       ; $65b0: $e6 $57
    dec b                                         ; $65b2: $05
    dec b                                         ; $65b3: $05
    dec b                                         ; $65b4: $05
    rst $18                                       ; $65b5: $df
    ldh [$03], a                                  ; $65b6: $e0 $03
    ldh [$f1], a                                  ; $65b8: $e0 $f1
    ld [hl+], a                                   ; $65ba: $22
    ret nz                                        ; $65bb: $c0

    pop hl                                        ; $65bc: $e1
    rst $20                                       ; $65bd: $e7
    nop                                           ; $65be: $00
    dec b                                         ; $65bf: $05
    dec b                                         ; $65c0: $05
    db $e3                                        ; $65c1: $e3
    ld [c], a                                     ; $65c2: $e2
    ret nz                                        ; $65c3: $c0

    push af                                       ; $65c4: $f5
    inc b                                         ; $65c5: $04
    inc b                                         ; $65c6: $04
    dec b                                         ; $65c7: $05
    push af                                       ; $65c8: $f5
    inc bc                                        ; $65c9: $03
    jp nz, Jump_000_22e2                          ; $65ca: $c2 $e2 $22

    and b                                         ; $65cd: $a0
    ld a, [c]                                     ; $65ce: $f2
    ld [bc], a                                    ; $65cf: $02
    ld b, h                                       ; $65d0: $44
    inc b                                         ; $65d1: $04
    inc b                                         ; $65d2: $04
    xor c                                         ; $65d3: $a9
    inc bc                                        ; $65d4: $03
    ld a, [hl]                                    ; $65d5: $7e
    db $e4                                        ; $65d6: $e4
    add b                                         ; $65d7: $80
    jp hl                                         ; $65d8: $e9


    rlca                                          ; $65d9: $07
    rst $38                                       ; $65da: $ff
    pop hl                                        ; $65db: $e1
    ld bc, $e0ff                                  ; $65dc: $01 $ff $e0
    ld b, $6a                                     ; $65df: $06 $6a
    ld l, d                                       ; $65e1: $6a
    ldh [rTMA], a                                 ; $65e2: $e0 $06
    ld a, [c]                                     ; $65e4: $f2
    ld [c], a                                     ; $65e5: $e2
    rlca                                          ; $65e6: $07
    ldh [$f3], a                                  ; $65e7: $e0 $f3
    ld bc, $e001                                  ; $65e9: $01 $01 $e0
    or $88                                        ; $65ec: $f6 $88
    cp a                                          ; $65ee: $bf
    pop hl                                        ; $65ef: $e1
    ldh [$e0], a                                  ; $65f0: $e0 $e0
    cp $e3                                        ; $65f2: $fe $e3
    ld h, a                                       ; $65f4: $67
    ret nz                                        ; $65f5: $c0

    db $eb                                        ; $65f6: $eb
    jp hl                                         ; $65f7: $e9


    push hl                                       ; $65f8: $e5
    ld hl, sp-$19                                 ; $65f9: $f8 $e7
    daa                                           ; $65fb: $27
    sub b                                         ; $65fc: $90
    ld b, b                                       ; $65fd: $40
    db $f4                                        ; $65fe: $f4
    ldh [$c0], a                                  ; $65ff: $e0 $c0
    db $dd                                        ; $6601: $dd
    jp $d6e0                                      ; $6602: $c3 $e0 $d6


    inc bc                                        ; $6605: $03
    ld e, $e3                                     ; $6606: $1e $e3
    ldh [$d5], a                                  ; $6608: $e0 $d5
    inc b                                         ; $660a: $04
    ld [$c4df], sp                                ; $660b: $08 $df $c4
    ldh [$df], a                                  ; $660e: $e0 $df
    ldh [$d3], a                                  ; $6610: $e0 $d3
    inc hl                                        ; $6612: $23
    ldh [$da], a                                  ; $6613: $e0 $da
    rst $18                                       ; $6615: $df
    ret nz                                        ; $6616: $c0

    ldh [$df], a                                  ; $6617: $e0 $df
    ldh [$df], a                                  ; $6619: $e0 $df
    nop                                           ; $661b: $00
    ldh [$df], a                                  ; $661c: $e0 $df
    ldh [$d8], a                                  ; $661e: $e0 $d8
    ret nz                                        ; $6620: $c0

    cp a                                          ; $6621: $bf
    ret nz                                        ; $6622: $c0

    cp a                                          ; $6623: $bf
    ldh [$df], a                                  ; $6624: $e0 $df
    ret nz                                        ; $6626: $c0

    cp a                                          ; $6627: $bf
    ldh [$df], a                                  ; $6628: $e0 $df
    ldh [$df], a                                  ; $662a: $e0 $df
    nop                                           ; $662c: $00
    ldh [$df], a                                  ; $662d: $e0 $df
    ldh [$df], a                                  ; $662f: $e0 $df
    ldh [$df], a                                  ; $6631: $e0 $df
    ldh [$df], a                                  ; $6633: $e0 $df
    ldh [$df], a                                  ; $6635: $e0 $df

jr_079_6637:
    ldh [$df], a                                  ; $6637: $e0 $df
    ldh [$df], a                                  ; $6639: $e0 $df
    and b                                         ; $663b: $a0
    sbc a                                         ; $663c: $9f
    ld l, b                                       ; $663d: $68
    ldh [$df], a                                  ; $663e: $e0 $df
    ldh [$df], a                                  ; $6640: $e0 $df
    and b                                         ; $6642: $a0

jr_079_6643:
    sub a                                         ; $6643: $97
    inc h                                         ; $6644: $24
    ldh [$dd], a                                  ; $6645: $e0 $dd
    nop                                           ; $6647: $00
    nop                                           ; $6648: $00
    ccf                                           ; $6649: $3f
    ldh [$0e], a                                  ; $664a: $e0 $0e
    ldh [$d9], a                                  ; $664c: $e0 $d9
    nop                                           ; $664e: $00
    dec b                                         ; $664f: $05
    nop                                           ; $6650: $00
    jr nz, jr_079_6643                            ; $6651: $20 $f0

    add b                                         ; $6653: $80
    ret                                           ; $6654: $c9


    ldh [$e3], a                                  ; $6655: $e0 $e3
    ldh [$d3], a                                  ; $6657: $e0 $d3
    ld hl, sp-$1d                                 ; $6659: $f8 $e3
    ret nz                                        ; $665b: $c0

    and b                                         ; $665c: $a0
    pop hl                                        ; $665d: $e1
    ldh [$d7], a                                  ; $665e: $e0 $d7
    ld bc, $0005                                  ; $6660: $01 $05 $00
    nop                                           ; $6663: $00
    ld bc, $e000                                  ; $6664: $01 $00 $e0
    ret c                                         ; $6667: $d8

    ld bc, $e0e2                                  ; $6668: $01 $e2 $e0
    ret c                                         ; $666b: $d8

    ld hl, sp-$3a                                 ; $666c: $f8 $c6
    ldh [$df], a                                  ; $666e: $e0 $df
    add b                                         ; $6670: $80
    ld [hl], l                                    ; $6671: $75
    jr nz, jr_079_6637                            ; $6672: $20 $c3

    ldh [$df], a                                  ; $6674: $e0 $df
    ld [hl+], a                                   ; $6676: $22
    ldh [$d6], a                                  ; $6677: $e0 $d6
    ld b, h                                       ; $6679: $44
    ldh [$df], a                                  ; $667a: $e0 $df
    ldh [$df], a                                  ; $667c: $e0 $df
    ldh [$d5], a                                  ; $667e: $e0 $d5
    inc bc                                        ; $6680: $03
    ldh [$df], a                                  ; $6681: $e0 $df
    ldh [$df], a                                  ; $6683: $e0 $df
    nop                                           ; $6685: $00
    ldh [$df], a                                  ; $6686: $e0 $df
    ld h, b                                       ; $6688: $60
    ld c, h                                       ; $6689: $4c
    rst $38                                       ; $668a: $ff
    rst $38                                       ; $668b: $ff
    rst $38                                       ; $668c: $ff
    rst $38                                       ; $668d: $ff

jr_079_668e:
    rst $38                                       ; $668e: $ff
    rst $38                                       ; $668f: $ff
    rst $38                                       ; $6690: $ff
    rst $38                                       ; $6691: $ff
    rst $38                                       ; $6692: $ff
    rst $38                                       ; $6693: $ff
    rst $38                                       ; $6694: $ff
    rst $38                                       ; $6695: $ff
    nop                                           ; $6696: $00
    rst $38                                       ; $6697: $ff
    rst $38                                       ; $6698: $ff
    rst $38                                       ; $6699: $ff
    rst $38                                       ; $669a: $ff
    rst $38                                       ; $669b: $ff
    rst $38                                       ; $669c: $ff
    db $ec                                        ; $669d: $ec
    db $eb                                        ; $669e: $eb
    nop                                           ; $669f: $00
    nop                                           ; $66a0: $00
    nop                                           ; $66a1: $00
    rst $30                                       ; $66a2: $f7
    ld bc, $0302                                  ; $66a3: $01 $02 $03
    rst $38                                       ; $66a6: $ff
    ld [c], a                                     ; $66a7: $e2
    ld b, a                                       ; $66a8: $47
    ld c, b                                       ; $66a9: $48
    ld c, c                                       ; $66aa: $49
    ld c, d                                       ; $66ab: $4a
    xor $f6                                       ; $66ac: $ee $f6
    db $e3                                        ; $66ae: $e3
    inc b                                         ; $66af: $04
    ld bc, $ff00                                  ; $66b0: $01 $00 $ff
    add sp, $01                                   ; $66b3: $e8 $01
    ld bc, $fe05                                  ; $66b5: $01 $05 $fe
    rst $18                                       ; $66b8: $df
    ld [c], a                                     ; $66b9: $e2
    ld c, e                                       ; $66ba: $4b
    ld c, h                                       ; $66bb: $4c
    ld c, l                                       ; $66bc: $4d
    ld c, [hl]                                    ; $66bd: $4e
    ld c, a                                       ; $66be: $4f
    inc bc                                        ; $66bf: $03
    inc bc                                        ; $66c0: $03
    rst $28                                       ; $66c1: $ef
    ld b, $07                                     ; $66c2: $06 $07
    ld [$e009], sp                                ; $66c4: $08 $09 $e0
    ld [$0b0a], a                                 ; $66c7: $ea $0a $0b
    inc c                                         ; $66ca: $0c
    ei                                            ; $66cb: $fb
    dec c                                         ; $66cc: $0d
    rlca                                          ; $66cd: $07
    cp l                                          ; $66ce: $bd
    ldh [$50], a                                  ; $66cf: $e0 $50
    ld d, c                                       ; $66d1: $51
    ld d, d                                       ; $66d2: $52
    ld d, e                                       ; $66d3: $53
    ld d, h                                       ; $66d4: $54
    ld a, a                                       ; $66d5: $7f
    inc bc                                        ; $66d6: $03
    inc bc                                        ; $66d7: $03
    ld c, $0f                                     ; $66d8: $0e $0f
    db $10                                        ; $66da: $10
    ld de, $c012                                  ; $66db: $11 $12 $c0
    jp hl                                         ; $66de: $e9


    rst $18                                       ; $66df: $df
    inc de                                        ; $66e0: $13
    inc d                                         ; $66e1: $14
    dec d                                         ; $66e2: $15
    ld d, $17                                     ; $66e3: $16 $17
    sbc l                                         ; $66e5: $9d
    ldh [rHDMA5], a                               ; $66e6: $e0 $55
    ld d, [hl]                                    ; $66e8: $56
    rst $38                                       ; $66e9: $ff
    ld d, a                                       ; $66ea: $57
    ld e, b                                       ; $66eb: $58
    ld e, c                                       ; $66ec: $59
    ld e, d                                       ; $66ed: $5a
    jr jr_079_66f1                                ; $66ee: $18 $01

    add hl, de                                    ; $66f0: $19

jr_079_66f1:
    ld a, [de]                                    ; $66f1: $1a
    ei                                            ; $66f2: $fb
    inc d                                         ; $66f3: $14
    dec de                                        ; $66f4: $1b
    and b                                         ; $66f5: $a0
    jp hl                                         ; $66f6: $e9


    inc e                                         ; $66f7: $1c
    dec e                                         ; $66f8: $1d
    ld e, $1f                                     ; $66f9: $1e $1f
    jr nz, @+$01                                  ; $66fb: $20 $ff

    ld hl, $5e22                                  ; $66fd: $21 $22 $5e
    inc bc                                        ; $6700: $03
    ld b, a                                       ; $6701: $47
    ld e, a                                       ; $6702: $5f
    ld h, b                                       ; $6703: $60
    ld h, c                                       ; $6704: $61
    ld a, a                                       ; $6705: $7f
    ld h, d                                       ; $6706: $62
    inc hl                                        ; $6707: $23
    inc h                                         ; $6708: $24
    dec h                                         ; $6709: $25
    ld h, $27                                     ; $670a: $26 $27
    jr z, jr_079_668e                             ; $670c: $28 $80

    jp hl                                         ; $670e: $e9


    rst $18                                       ; $670f: $df
    add hl, hl                                    ; $6710: $29
    ld a, [hl+]                                   ; $6711: $2a
    dec hl                                        ; $6712: $2b
    inc l                                         ; $6713: $2c
    dec l                                         ; $6714: $2d
    ld e, l                                       ; $6715: $5d
    ldh [$67], a                                  ; $6716: $e0 $67
    ld l, b                                       ; $6718: $68
    rst $38                                       ; $6719: $ff
    ld l, c                                       ; $671a: $69
    ld l, d                                       ; $671b: $6a
    ld l, e                                       ; $671c: $6b
    ld l, h                                       ; $671d: $6c
    ld l, $2f                                     ; $671e: $2e $2f
    jr nc, jr_079_6753                            ; $6720: $30 $31

    ei                                            ; $6722: $fb
    ld [hl-], a                                   ; $6723: $32
    inc sp                                        ; $6724: $33
    ld h, b                                       ; $6725: $60
    jp hl                                         ; $6726: $e9


    inc [hl]                                      ; $6727: $34
    dec [hl]                                      ; $6728: $35
    ld [hl], $37                                  ; $6729: $36 $37

jr_079_672b:
    jr c, jr_079_672b                             ; $672b: $38 $fe

    dec a                                         ; $672d: $3d
    ldh [$71], a                                  ; $672e: $e0 $71
    ld [hl], d                                    ; $6730: $72
    ld [hl], e                                    ; $6731: $73
    ld [hl], h                                    ; $6732: $74
    inc bc                                        ; $6733: $03
    ld [hl], l                                    ; $6734: $75
    add hl, sp                                    ; $6735: $39
    rst $18                                       ; $6736: $df
    ld a, [hl-]                                   ; $6737: $3a
    dec sp                                        ; $6738: $3b
    inc a                                         ; $6739: $3c
    dec a                                         ; $673a: $3d
    ld a, $40                                     ; $673b: $3e $40
    jp hl                                         ; $673d: $e9


    ccf                                           ; $673e: $3f
    ld b, b                                       ; $673f: $40
    rst $28                                       ; $6740: $ef
    ld b, c                                       ; $6741: $41
    ld b, d                                       ; $6742: $42
    ld b, e                                       ; $6743: $43
    ld b, h                                       ; $6744: $44
    inc e                                         ; $6745: $1c
    ldh [rTMA], a                                 ; $6746: $e0 $06
    ld a, b                                       ; $6748: $78
    ld a, c                                       ; $6749: $79
    ld e, e                                       ; $674a: $5b
    ld a, d                                       ; $674b: $7a
    ld a, e                                       ; $674c: $7b
    inc d                                         ; $674d: $14
    pop hl                                        ; $674e: $e1
    jr c, jr_079_6796                             ; $674f: $38 $45

    jr nz, @-$15                                  ; $6751: $20 $e9

jr_079_6753:
    ld b, [hl]                                    ; $6753: $46
    ld bc, $7fe3                                  ; $6754: $01 $e3 $7f
    ld a, h                                       ; $6757: $7c
    ld a, l                                       ; $6758: $7d
    inc bc                                        ; $6759: $03
    ld a, [hl]                                    ; $675a: $7e
    ld a, a                                       ; $675b: $7f
    add b                                         ; $675c: $80
    add c                                         ; $675d: $81
    db $f4                                        ; $675e: $f4
    jp nz, Jump_000_3869                          ; $675f: $c2 $69 $38

    nop                                           ; $6762: $00
    ld [$cae0], a                                 ; $6763: $ea $e0 $ca
    add d                                         ; $6766: $82
    ldh [$db], a                                  ; $6767: $e0 $db
    add e                                         ; $6769: $83
    add h                                         ; $676a: $84
    ldh [$d9], a                                  ; $676b: $e0 $d9
    ld [hl], a                                    ; $676d: $77
    add l                                         ; $676e: $85
    add [hl]                                      ; $676f: $86
    add a                                         ; $6770: $87
    ldh [$d9], a                                  ; $6771: $e0 $d9
    adc b                                         ; $6773: $88
    adc c                                         ; $6774: $89
    adc d                                         ; $6775: $8a
    ldh [$da], a                                  ; $6776: $e0 $da
    rst $28                                       ; $6778: $ef
    adc [hl]                                      ; $6779: $8e
    adc a                                         ; $677a: $8f
    add hl, bc                                    ; $677b: $09
    sub b                                         ; $677c: $90
    ldh [$d7], a                                  ; $677d: $e0 $d7
    inc bc                                        ; $677f: $03
    ld b, $95                                     ; $6780: $06 $95
    ei                                            ; $6782: $fb
    sub [hl]                                      ; $6783: $96
    sub a                                         ; $6784: $97
    ldh [$d8], a                                  ; $6785: $e0 $d8
    inc bc                                        ; $6787: $03
    ld b, $03                                     ; $6788: $06 $03
    sbc h                                         ; $678a: $9c
    inc bc                                        ; $678b: $03
    dec b                                         ; $678c: $05
    sbc l                                         ; $678d: $9d
    ldh [$dc], a                                  ; $678e: $e0 $dc
    and d                                         ; $6790: $a2
    ldh [$df], a                                  ; $6791: $e0 $df
    ldh [$db], a                                  ; $6793: $e0 $db
    ret nz                                        ; $6795: $c0

jr_079_6796:
    cp a                                          ; $6796: $bf
    ret nz                                        ; $6797: $c0

    cp a                                          ; $6798: $bf
    ret nz                                        ; $6799: $c0

    or l                                          ; $679a: $b5
    rst $30                                       ; $679b: $f7
    ld e, e                                       ; $679c: $5b
    ld e, h                                       ; $679d: $5c
    ld e, l                                       ; $679e: $5d
    ret nz                                        ; $679f: $c0

    cp d                                          ; $67a0: $ba
    ld h, e                                       ; $67a1: $63
    ld h, h                                       ; $67a2: $64
    ld h, l                                       ; $67a3: $65
    ld h, [hl]                                    ; $67a4: $66
    sbc $e0                                       ; $67a5: $de $e0
    reti                                          ; $67a7: $d9


    ld l, l                                       ; $67a8: $6d
    ld l, [hl]                                    ; $67a9: $6e
    ld l, a                                       ; $67aa: $6f
    ld [hl], b                                    ; $67ab: $70
    ldh [$da], a                                  ; $67ac: $e0 $da
    halt                                          ; $67ae: $76
    inc bc                                        ; $67af: $03
    add c                                         ; $67b0: $81
    ld [hl], a                                    ; $67b1: $77
    ret nz                                        ; $67b2: $c0

    cp a                                          ; $67b3: $bf
    ldh [$df], a                                  ; $67b4: $e0 $df
    ldh [$df], a                                  ; $67b6: $e0 $df
    ldh [$df], a                                  ; $67b8: $e0 $df
    ldh [$df], a                                  ; $67ba: $e0 $df
    and b                                         ; $67bc: $a0
    adc a                                         ; $67bd: $8f
    adc e                                         ; $67be: $8b
    ld a, e                                       ; $67bf: $7b
    adc h                                         ; $67c0: $8c
    adc l                                         ; $67c1: $8d
    and b                                         ; $67c2: $a0
    sbc d                                         ; $67c3: $9a
    sub c                                         ; $67c4: $91
    sub d                                         ; $67c5: $92
    sub e                                         ; $67c6: $93
    sub h                                         ; $67c7: $94
    ret nz                                        ; $67c8: $c0

    cp b                                          ; $67c9: $b8
    rst $18                                       ; $67ca: $df
    sbc b                                         ; $67cb: $98
    sbc c                                         ; $67cc: $99
    sbc d                                         ; $67cd: $9a
    ld l, a                                       ; $67ce: $6f
    sbc e                                         ; $67cf: $9b
    ret nz                                        ; $67d0: $c0

    cp b                                          ; $67d1: $b8
    sbc [hl]                                      ; $67d2: $9e
    sbc a                                         ; $67d3: $9f
    rst $30                                       ; $67d4: $f7
    and b                                         ; $67d5: $a0
    inc bc                                        ; $67d6: $03
    and c                                         ; $67d7: $a1
    ldh [$d6], a                                  ; $67d8: $e0 $d6
    and e                                         ; $67da: $a3
    and h                                         ; $67db: $a4
    and l                                         ; $67dc: $a5
    ld a, b                                       ; $67dd: $78
    or a                                          ; $67de: $b7
    and [hl]                                      ; $67df: $a6
    and a                                         ; $67e0: $a7
    xor b                                         ; $67e1: $a8
    ldh [$d6], a                                  ; $67e2: $e0 $d6
    xor c                                         ; $67e4: $a9
    xor d                                         ; $67e5: $aa
    ldh [$dc], a                                  ; $67e6: $e0 $dc
    ld e, d                                       ; $67e8: $5a
    rst $30                                       ; $67e9: $f7
    xor e                                         ; $67ea: $ab
    xor h                                         ; $67eb: $ac
    xor l                                         ; $67ec: $ad
    ldh [$d9], a                                  ; $67ed: $e0 $d9
    or e                                          ; $67ef: $b3
    or h                                          ; $67f0: $b4
    or l                                          ; $67f1: $b5
    or [hl]                                       ; $67f2: $b6
    ei                                            ; $67f3: $fb
    or a                                          ; $67f4: $b7
    cp b                                          ; $67f5: $b8
    ldh [$d7], a                                  ; $67f6: $e0 $d7
    cp a                                          ; $67f8: $bf
    ret nz                                        ; $67f9: $c0

    pop bc                                        ; $67fa: $c1
    jp nz, $fdc3                                  ; $67fb: $c2 $c3 $fd

    call nz, Call_079_7780                        ; $67fe: $c4 $80 $77
    ld b, $ca                                     ; $6801: $06 $ca
    set 1, h                                      ; $6803: $cb $cc
    call Call_079_7ece                            ; $6805: $cd $ce $7e
    add b                                         ; $6808: $80
    ld [hl], a                                    ; $6809: $77
    ld b, $d4                                     ; $680a: $06 $d4
    push de                                       ; $680c: $d5
    sub $d7                                       ; $680d: $d6 $d7
    ret c                                         ; $680f: $d8

    add b                                         ; $6810: $80
    ld [hl], a                                    ; $6811: $77
    cp a                                          ; $6812: $bf
    db $dd                                        ; $6813: $dd
    sbc $df                                       ; $6814: $de $df
    ldh [$e1], a                                  ; $6816: $e0 $e1
    ld [c], a                                     ; $6818: $e2
    add b                                         ; $6819: $80
    ld [hl], a                                    ; $681a: $77
    rst $20                                       ; $681b: $e7
    rst $18                                       ; $681c: $df
    inc bc                                        ; $681d: $03
    add sp, $01                                   ; $681e: $e8 $01
    jp hl                                         ; $6820: $e9


    ld [$b8c0], a                                 ; $6821: $ea $c0 $b8
    inc bc                                        ; $6824: $03
    rst $28                                       ; $6825: $ef
    ld h, a                                       ; $6826: $67
    ldh a, [$f1]                                  ; $6827: $f0 $f1
    ld a, [c]                                     ; $6829: $f2
    ret nz                                        ; $682a: $c0

    or [hl]                                       ; $682b: $b6
    db $db                                        ; $682c: $db
    and b                                         ; $682d: $a0
    or $f7                                        ; $682e: $f6 $f7
    ret nz                                        ; $6830: $c0

    cp c                                          ; $6831: $b9
    cp a                                          ; $6832: $bf
    xor [hl]                                      ; $6833: $ae
    xor a                                         ; $6834: $af
    or b                                          ; $6835: $b0
    or c                                          ; $6836: $b1
    ld b, $b2                                     ; $6837: $06 $b2
    ret nz                                        ; $6839: $c0

    or a                                          ; $683a: $b7
    cp c                                          ; $683b: $b9
    rst $18                                       ; $683c: $df
    cp d                                          ; $683d: $ba
    cp e                                          ; $683e: $bb
    cp h                                          ; $683f: $bc
    cp l                                          ; $6840: $bd
    cp [hl]                                       ; $6841: $be
    ret nz                                        ; $6842: $c0

    or a                                          ; $6843: $b7
    push bc                                       ; $6844: $c5
    add $ef                                       ; $6845: $c6 $ef
    rst $00                                       ; $6847: $c7
    ret z                                         ; $6848: $c8

    ret                                           ; $6849: $c9


    ld e, d                                       ; $684a: $5a
    ldh [$d8], a                                  ; $684b: $e0 $d8
    rst $08                                       ; $684d: $cf
    ret nc                                        ; $684e: $d0

    pop de                                        ; $684f: $d1
    ei                                            ; $6850: $fb
    jp nc, $e0d3                                  ; $6851: $d2 $d3 $e0

    ret c                                         ; $6854: $d8

    ld b, $d9                                     ; $6855: $06 $d9
    jp c, $dcdb                                   ; $6857: $da $db $dc

    cp [hl]                                       ; $685a: $be
    add b                                         ; $685b: $80
    ld a, b                                       ; $685c: $78
    inc bc                                        ; $685d: $03
    db $e3                                        ; $685e: $e3
    db $e4                                        ; $685f: $e4
    push hl                                       ; $6860: $e5
    and $80                                       ; $6861: $e6 $80
    ld a, b                                       ; $6863: $78
    inc bc                                        ; $6864: $03
    rst $28                                       ; $6865: $ef
    db $eb                                        ; $6866: $eb
    db $ec                                        ; $6867: $ec
    db $ed                                        ; $6868: $ed
    xor $e0                                       ; $6869: $ee $e0
    reti                                          ; $686b: $d9


    di                                            ; $686c: $f3
    db $f4                                        ; $686d: $f4
    push af                                       ; $686e: $f5
    nop                                           ; $686f: $00
    ldh [$df], a                                  ; $6870: $e0 $df
    ld h, b                                       ; $6872: $60
    ld c, [hl]                                    ; $6873: $4e
    rst $38                                       ; $6874: $ff
    rst $38                                       ; $6875: $ff
    rst $38                                       ; $6876: $ff
    rst $38                                       ; $6877: $ff
    rst $38                                       ; $6878: $ff
    rst $38                                       ; $6879: $ff
    rst $38                                       ; $687a: $ff
    rst $38                                       ; $687b: $ff
    rst $38                                       ; $687c: $ff
    rst $38                                       ; $687d: $ff
    rst $38                                       ; $687e: $ff
    rst $38                                       ; $687f: $ff
    nop                                           ; $6880: $00
    rst $38                                       ; $6881: $ff
    rst $38                                       ; $6882: $ff
    rst $38                                       ; $6883: $ff
    rst $38                                       ; $6884: $ff
    rst $38                                       ; $6885: $ff
    rst $38                                       ; $6886: $ff
    db $ec                                        ; $6887: $ec
    db $eb                                        ; $6888: $eb
    nop                                           ; $6889: $00
    nop                                           ; $688a: $00
    nop                                           ; $688b: $00
    ldh a, [$96]                                  ; $688c: $f0 $96
    push af                                       ; $688e: $f5
    ld a, $06                                     ; $688f: $3e $06
    ldh [$96], a                                  ; $6891: $e0 $96
    ldh [rSVBK], a                                ; $6893: $e0 $70
    xor a                                         ; $6895: $af
    ld [$d400], a                                 ; $6896: $ea $00 $d4
    ld hl, $7329                                  ; $6899: $21 $29 $73
    ld de, $0a01                                  ; $689c: $11 $01 $0a
    call Call_000_0595                            ; $689f: $cd $95 $05
    ld hl, $7331                                  ; $68a2: $21 $31 $73
    ld de, $0b01                                  ; $68a5: $11 $01 $0b
    call Call_000_0595                            ; $68a8: $cd $95 $05
    pop af                                        ; $68ab: $f1
    ldh [$96], a                                  ; $68ac: $e0 $96
    ldh [rSVBK], a                                ; $68ae: $e0 $70
    ret                                           ; $68b0: $c9


    ldh a, [$96]                                  ; $68b1: $f0 $96
    push af                                       ; $68b3: $f5
    ld a, $06                                     ; $68b4: $3e $06
    ldh [$96], a                                  ; $68b6: $e0 $96
    ldh [rSVBK], a                                ; $68b8: $e0 $70
    ld a, [$d400]                                 ; $68ba: $fa $00 $d4
    ld de, $030f                                  ; $68bd: $11 $0f $03
    call Call_000_22d2                            ; $68c0: $cd $d2 $22
    call Call_079_68f6                            ; $68c3: $cd $f6 $68
    call Call_079_6aa5                            ; $68c6: $cd $a5 $6a
    call Call_079_6c59                            ; $68c9: $cd $59 $6c
    call Call_079_6e0d                            ; $68cc: $cd $0d $6e
    call Call_079_6fc1                            ; $68cf: $cd $c1 $6f
    call Call_079_7175                            ; $68d2: $cd $75 $71
    ld a, $06                                     ; $68d5: $3e $06
    ldh [$96], a                                  ; $68d7: $e0 $96
    ldh [rSVBK], a                                ; $68d9: $e0 $70
    ld a, [$c4b2]                                 ; $68db: $fa $b2 $c4
    and $03                                       ; $68de: $e6 $03
    jr nz, jr_079_68f0                            ; $68e0: $20 $0e

    ld a, [$d400]                                 ; $68e2: $fa $00 $d4
    ld b, a                                       ; $68e5: $47
    sub $36                                       ; $68e6: $d6 $36
    jp nc, Jump_079_68f0                          ; $68e8: $d2 $f0 $68

    ld a, b                                       ; $68eb: $78
    inc a                                         ; $68ec: $3c
    ld [$d400], a                                 ; $68ed: $ea $00 $d4

Jump_079_68f0:
jr_079_68f0:
    pop af                                        ; $68f0: $f1
    ldh [$96], a                                  ; $68f1: $e0 $96
    ldh [rSVBK], a                                ; $68f3: $e0 $70
    ret                                           ; $68f5: $c9


Call_079_68f6:
    ld a, $06                                     ; $68f6: $3e $06
    ldh [$96], a                                  ; $68f8: $e0 $96
    ldh [rSVBK], a                                ; $68fa: $e0 $70
    ld a, [$d400]                                 ; $68fc: $fa $00 $d4
    cp $00                                        ; $68ff: $fe $00
    jp z, Jump_079_692f                           ; $6901: $ca $2f $69

    cp $01                                        ; $6904: $fe $01
    jp z, Jump_079_6957                           ; $6906: $ca $57 $69

    cp $02                                        ; $6909: $fe $02
    jp z, Jump_079_697f                           ; $690b: $ca $7f $69

    cp $03                                        ; $690e: $fe $03
    jp z, Jump_079_69a7                           ; $6910: $ca $a7 $69

    cp $04                                        ; $6913: $fe $04
    jp z, Jump_079_69cf                           ; $6915: $ca $cf $69

    cp $05                                        ; $6918: $fe $05
    jp z, Jump_079_69f7                           ; $691a: $ca $f7 $69

    cp $06                                        ; $691d: $fe $06
    jp z, Jump_079_6a1f                           ; $691f: $ca $1f $6a

    cp $07                                        ; $6922: $fe $07
    jp z, Jump_079_6a47                           ; $6924: $ca $47 $6a

    cp $08                                        ; $6927: $fe $08
    jp z, Jump_079_6a6f                           ; $6929: $ca $6f $6a

    jp Jump_079_6a97                              ; $692c: $c3 $97 $6a


Jump_079_692f:
    ld a, $01                                     ; $692f: $3e $01
    ldh [$96], a                                  ; $6931: $e0 $96
    ldh [rSVBK], a                                ; $6933: $e0 $70
    ld hl, $7340                                  ; $6935: $21 $40 $73
    ld de, $d000                                  ; $6938: $11 $00 $d0
    call Call_000_1f2f                            ; $693b: $cd $2f $1f
    ld hl, $d000                                  ; $693e: $21 $00 $d0
    ld de, $8000                                  ; $6941: $11 $00 $80
    ld c, $04                                     ; $6944: $0e $04
    call Call_000_0468                            ; $6946: $cd $68 $04
    ld hl, $7be5                                  ; $6949: $21 $e5 $7b
    ld d, $fe                                     ; $694c: $16 $fe
    ld e, $80                                     ; $694e: $1e $80
    ld bc, $0300                                  ; $6950: $01 $00 $03
    call Call_000_26ea                            ; $6953: $cd $ea $26
    ret                                           ; $6956: $c9


Jump_079_6957:
    ld a, $01                                     ; $6957: $3e $01
    ldh [$96], a                                  ; $6959: $e0 $96
    ldh [rSVBK], a                                ; $695b: $e0 $70
    ld hl, $736a                                  ; $695d: $21 $6a $73
    ld de, $d000                                  ; $6960: $11 $00 $d0
    call Call_000_1f2f                            ; $6963: $cd $2f $1f
    ld hl, $d000                                  ; $6966: $21 $00 $d0
    ld de, $8000                                  ; $6969: $11 $00 $80
    ld c, $04                                     ; $696c: $0e $04
    call Call_000_0468                            ; $696e: $cd $68 $04
    ld hl, $7bee                                  ; $6971: $21 $ee $7b
    ld d, $fe                                     ; $6974: $16 $fe
    ld e, $80                                     ; $6976: $1e $80
    ld bc, $0300                                  ; $6978: $01 $00 $03
    call Call_000_26ea                            ; $697b: $cd $ea $26
    ret                                           ; $697e: $c9


Jump_079_697f:
    ld a, $01                                     ; $697f: $3e $01
    ldh [$96], a                                  ; $6981: $e0 $96
    ldh [rSVBK], a                                ; $6983: $e0 $70
    ld hl, $7398                                  ; $6985: $21 $98 $73
    ld de, $d000                                  ; $6988: $11 $00 $d0
    call Call_000_1f2f                            ; $698b: $cd $2f $1f
    ld hl, $d000                                  ; $698e: $21 $00 $d0
    ld de, $8000                                  ; $6991: $11 $00 $80
    ld c, $04                                     ; $6994: $0e $04
    call Call_000_0468                            ; $6996: $cd $68 $04
    ld hl, $7bf7                                  ; $6999: $21 $f7 $7b
    ld d, $fe                                     ; $699c: $16 $fe
    ld e, $80                                     ; $699e: $1e $80
    ld bc, $0300                                  ; $69a0: $01 $00 $03
    call Call_000_26ea                            ; $69a3: $cd $ea $26
    ret                                           ; $69a6: $c9


Jump_079_69a7:
    ld a, $01                                     ; $69a7: $3e $01
    ldh [$96], a                                  ; $69a9: $e0 $96
    ldh [rSVBK], a                                ; $69ab: $e0 $70
    ld hl, $73c8                                  ; $69ad: $21 $c8 $73
    ld de, $d000                                  ; $69b0: $11 $00 $d0
    call Call_000_1f2f                            ; $69b3: $cd $2f $1f
    ld hl, $d000                                  ; $69b6: $21 $00 $d0
    ld de, $8000                                  ; $69b9: $11 $00 $80
    ld c, $04                                     ; $69bc: $0e $04
    call Call_000_0468                            ; $69be: $cd $68 $04
    ld hl, $7c00                                  ; $69c1: $21 $00 $7c
    ld d, $fe                                     ; $69c4: $16 $fe
    ld e, $80                                     ; $69c6: $1e $80
    ld bc, $0300                                  ; $69c8: $01 $00 $03
    call Call_000_26ea                            ; $69cb: $cd $ea $26
    ret                                           ; $69ce: $c9


Jump_079_69cf:
    ld a, $01                                     ; $69cf: $3e $01
    ldh [$96], a                                  ; $69d1: $e0 $96
    ldh [rSVBK], a                                ; $69d3: $e0 $70
    ld hl, $7409                                  ; $69d5: $21 $09 $74
    ld de, $d000                                  ; $69d8: $11 $00 $d0
    call Call_000_1f2f                            ; $69db: $cd $2f $1f
    ld hl, $d000                                  ; $69de: $21 $00 $d0
    ld de, $8000                                  ; $69e1: $11 $00 $80
    ld c, $04                                     ; $69e4: $0e $04
    call Call_000_0468                            ; $69e6: $cd $68 $04
    ld hl, $7c09                                  ; $69e9: $21 $09 $7c
    ld d, $fe                                     ; $69ec: $16 $fe
    ld e, $80                                     ; $69ee: $1e $80
    ld bc, $0300                                  ; $69f0: $01 $00 $03
    call Call_000_26ea                            ; $69f3: $cd $ea $26
    ret                                           ; $69f6: $c9


Jump_079_69f7:
    ld a, $01                                     ; $69f7: $3e $01
    ldh [$96], a                                  ; $69f9: $e0 $96
    ldh [rSVBK], a                                ; $69fb: $e0 $70
    ld hl, $744b                                  ; $69fd: $21 $4b $74
    ld de, $d000                                  ; $6a00: $11 $00 $d0
    call Call_000_1f2f                            ; $6a03: $cd $2f $1f
    ld hl, $d000                                  ; $6a06: $21 $00 $d0
    ld de, $8000                                  ; $6a09: $11 $00 $80
    ld c, $04                                     ; $6a0c: $0e $04
    call Call_000_0468                            ; $6a0e: $cd $68 $04
    ld hl, $7c12                                  ; $6a11: $21 $12 $7c
    ld d, $fe                                     ; $6a14: $16 $fe
    ld e, $80                                     ; $6a16: $1e $80
    ld bc, $0300                                  ; $6a18: $01 $00 $03
    call Call_000_26ea                            ; $6a1b: $cd $ea $26
    ret                                           ; $6a1e: $c9


Jump_079_6a1f:
    ld a, $01                                     ; $6a1f: $3e $01
    ldh [$96], a                                  ; $6a21: $e0 $96
    ldh [rSVBK], a                                ; $6a23: $e0 $70
    ld hl, $7493                                  ; $6a25: $21 $93 $74
    ld de, $d000                                  ; $6a28: $11 $00 $d0
    call Call_000_1f2f                            ; $6a2b: $cd $2f $1f
    ld hl, $d000                                  ; $6a2e: $21 $00 $d0
    ld de, $8000                                  ; $6a31: $11 $00 $80
    ld c, $04                                     ; $6a34: $0e $04
    call Call_000_0468                            ; $6a36: $cd $68 $04
    ld hl, $7c1b                                  ; $6a39: $21 $1b $7c
    ld d, $fe                                     ; $6a3c: $16 $fe
    ld e, $80                                     ; $6a3e: $1e $80
    ld bc, $0300                                  ; $6a40: $01 $00 $03
    call Call_000_26ea                            ; $6a43: $cd $ea $26
    ret                                           ; $6a46: $c9


Jump_079_6a47:
    ld a, $01                                     ; $6a47: $3e $01
    ldh [$96], a                                  ; $6a49: $e0 $96
    ldh [rSVBK], a                                ; $6a4b: $e0 $70
    ld hl, $74dc                                  ; $6a4d: $21 $dc $74
    ld de, $d000                                  ; $6a50: $11 $00 $d0
    call Call_000_1f2f                            ; $6a53: $cd $2f $1f
    ld hl, $d000                                  ; $6a56: $21 $00 $d0
    ld de, $8000                                  ; $6a59: $11 $00 $80
    ld c, $04                                     ; $6a5c: $0e $04
    call Call_000_0468                            ; $6a5e: $cd $68 $04
    ld hl, $7c24                                  ; $6a61: $21 $24 $7c
    ld d, $fe                                     ; $6a64: $16 $fe
    ld e, $80                                     ; $6a66: $1e $80
    ld bc, $0300                                  ; $6a68: $01 $00 $03
    call Call_000_26ea                            ; $6a6b: $cd $ea $26
    ret                                           ; $6a6e: $c9


Jump_079_6a6f:
    ld a, $01                                     ; $6a6f: $3e $01
    ldh [$96], a                                  ; $6a71: $e0 $96
    ldh [rSVBK], a                                ; $6a73: $e0 $70
    ld hl, $7525                                  ; $6a75: $21 $25 $75
    ld de, $d000                                  ; $6a78: $11 $00 $d0
    call Call_000_1f2f                            ; $6a7b: $cd $2f $1f
    ld hl, $d000                                  ; $6a7e: $21 $00 $d0
    ld de, $8000                                  ; $6a81: $11 $00 $80
    ld c, $04                                     ; $6a84: $0e $04
    call Call_000_0468                            ; $6a86: $cd $68 $04
    ld hl, $7c2d                                  ; $6a89: $21 $2d $7c
    ld d, $fe                                     ; $6a8c: $16 $fe
    ld e, $80                                     ; $6a8e: $1e $80
    ld bc, $0300                                  ; $6a90: $01 $00 $03
    call Call_000_26ea                            ; $6a93: $cd $ea $26
    ret                                           ; $6a96: $c9


Jump_079_6a97:
    ld hl, $7c2d                                  ; $6a97: $21 $2d $7c
    ld d, $fe                                     ; $6a9a: $16 $fe
    ld e, $80                                     ; $6a9c: $1e $80
    ld bc, $0300                                  ; $6a9e: $01 $00 $03
    call Call_000_26ea                            ; $6aa1: $cd $ea $26
    ret                                           ; $6aa4: $c9


Call_079_6aa5:
    ld a, $06                                     ; $6aa5: $3e $06
    ldh [$96], a                                  ; $6aa7: $e0 $96
    ldh [rSVBK], a                                ; $6aa9: $e0 $70
    ld a, [$d400]                                 ; $6aab: $fa $00 $d4
    ld b, a                                       ; $6aae: $47
    sub $09                                       ; $6aaf: $d6 $09
    ret c                                         ; $6ab1: $d8

    ld a, b                                       ; $6ab2: $78
    cp $09                                        ; $6ab3: $fe $09
    jp z, Jump_079_6ae3                           ; $6ab5: $ca $e3 $6a

    cp $0a                                        ; $6ab8: $fe $0a
    jp z, Jump_079_6b0b                           ; $6aba: $ca $0b $6b

    cp $0b                                        ; $6abd: $fe $0b
    jp z, Jump_079_6b33                           ; $6abf: $ca $33 $6b

    cp $0c                                        ; $6ac2: $fe $0c
    jp z, Jump_079_6b5b                           ; $6ac4: $ca $5b $6b

    cp $0d                                        ; $6ac7: $fe $0d
    jp z, Jump_079_6b83                           ; $6ac9: $ca $83 $6b

    cp $0e                                        ; $6acc: $fe $0e
    jp z, Jump_079_6bab                           ; $6ace: $ca $ab $6b

    cp $0f                                        ; $6ad1: $fe $0f
    jp z, Jump_079_6bd3                           ; $6ad3: $ca $d3 $6b

    cp $10                                        ; $6ad6: $fe $10
    jp z, Jump_079_6bfb                           ; $6ad8: $ca $fb $6b

    cp $11                                        ; $6adb: $fe $11
    jp z, Jump_079_6c23                           ; $6add: $ca $23 $6c

    jp Jump_079_6c4b                              ; $6ae0: $c3 $4b $6c


Jump_079_6ae3:
    ld a, $01                                     ; $6ae3: $3e $01
    ldh [$96], a                                  ; $6ae5: $e0 $96
    ldh [rSVBK], a                                ; $6ae7: $e0 $70
    ld hl, $756c                                  ; $6ae9: $21 $6c $75
    ld de, $d040                                  ; $6aec: $11 $40 $d0
    call Call_000_1f2f                            ; $6aef: $cd $2f $1f
    ld hl, $d040                                  ; $6af2: $21 $40 $d0
    ld de, $8040                                  ; $6af5: $11 $40 $80
    ld c, $04                                     ; $6af8: $0e $04
    call Call_000_0468                            ; $6afa: $cd $68 $04
    ld hl, $7c36                                  ; $6afd: $21 $36 $7c
    ld d, $0e                                     ; $6b00: $16 $0e
    ld e, $80                                     ; $6b02: $1e $80
    ld bc, $0204                                  ; $6b04: $01 $04 $02
    call Call_000_26ea                            ; $6b07: $cd $ea $26
    ret                                           ; $6b0a: $c9


Jump_079_6b0b:
    ld a, $01                                     ; $6b0b: $3e $01
    ldh [$96], a                                  ; $6b0d: $e0 $96
    ldh [rSVBK], a                                ; $6b0f: $e0 $70
    ld hl, $7592                                  ; $6b11: $21 $92 $75
    ld de, $d040                                  ; $6b14: $11 $40 $d0
    call Call_000_1f2f                            ; $6b17: $cd $2f $1f
    ld hl, $d040                                  ; $6b1a: $21 $40 $d0
    ld de, $8040                                  ; $6b1d: $11 $40 $80
    ld c, $04                                     ; $6b20: $0e $04
    call Call_000_0468                            ; $6b22: $cd $68 $04
    ld hl, $7c3f                                  ; $6b25: $21 $3f $7c
    ld d, $0e                                     ; $6b28: $16 $0e
    ld e, $80                                     ; $6b2a: $1e $80
    ld bc, $0204                                  ; $6b2c: $01 $04 $02
    call Call_000_26ea                            ; $6b2f: $cd $ea $26
    ret                                           ; $6b32: $c9


Jump_079_6b33:
    ld a, $01                                     ; $6b33: $3e $01
    ldh [$96], a                                  ; $6b35: $e0 $96
    ldh [rSVBK], a                                ; $6b37: $e0 $70
    ld hl, $75c0                                  ; $6b39: $21 $c0 $75
    ld de, $d040                                  ; $6b3c: $11 $40 $d0
    call Call_000_1f2f                            ; $6b3f: $cd $2f $1f
    ld hl, $d040                                  ; $6b42: $21 $40 $d0
    ld de, $8040                                  ; $6b45: $11 $40 $80
    ld c, $04                                     ; $6b48: $0e $04
    call Call_000_0468                            ; $6b4a: $cd $68 $04
    ld hl, $7c48                                  ; $6b4d: $21 $48 $7c
    ld d, $0e                                     ; $6b50: $16 $0e
    ld e, $80                                     ; $6b52: $1e $80
    ld bc, $0204                                  ; $6b54: $01 $04 $02
    call Call_000_26ea                            ; $6b57: $cd $ea $26
    ret                                           ; $6b5a: $c9


Jump_079_6b5b:
    ld a, $01                                     ; $6b5b: $3e $01
    ldh [$96], a                                  ; $6b5d: $e0 $96
    ldh [rSVBK], a                                ; $6b5f: $e0 $70
    ld hl, $75ee                                  ; $6b61: $21 $ee $75
    ld de, $d040                                  ; $6b64: $11 $40 $d0
    call Call_000_1f2f                            ; $6b67: $cd $2f $1f
    ld hl, $d040                                  ; $6b6a: $21 $40 $d0
    ld de, $8040                                  ; $6b6d: $11 $40 $80
    ld c, $04                                     ; $6b70: $0e $04
    call Call_000_0468                            ; $6b72: $cd $68 $04
    ld hl, $7c51                                  ; $6b75: $21 $51 $7c
    ld d, $0e                                     ; $6b78: $16 $0e
    ld e, $80                                     ; $6b7a: $1e $80
    ld bc, $0204                                  ; $6b7c: $01 $04 $02
    call Call_000_26ea                            ; $6b7f: $cd $ea $26
    ret                                           ; $6b82: $c9


Jump_079_6b83:
    ld a, $01                                     ; $6b83: $3e $01
    ldh [$96], a                                  ; $6b85: $e0 $96
    ldh [rSVBK], a                                ; $6b87: $e0 $70
    ld hl, $7631                                  ; $6b89: $21 $31 $76
    ld de, $d040                                  ; $6b8c: $11 $40 $d0
    call Call_000_1f2f                            ; $6b8f: $cd $2f $1f
    ld hl, $d040                                  ; $6b92: $21 $40 $d0
    ld de, $8040                                  ; $6b95: $11 $40 $80
    ld c, $04                                     ; $6b98: $0e $04
    call Call_000_0468                            ; $6b9a: $cd $68 $04
    ld hl, $7c5a                                  ; $6b9d: $21 $5a $7c
    ld d, $0e                                     ; $6ba0: $16 $0e
    ld e, $80                                     ; $6ba2: $1e $80
    ld bc, $0204                                  ; $6ba4: $01 $04 $02
    call Call_000_26ea                            ; $6ba7: $cd $ea $26
    ret                                           ; $6baa: $c9


Jump_079_6bab:
    ld a, $01                                     ; $6bab: $3e $01
    ldh [$96], a                                  ; $6bad: $e0 $96
    ldh [rSVBK], a                                ; $6baf: $e0 $70
    ld hl, $767c                                  ; $6bb1: $21 $7c $76
    ld de, $d040                                  ; $6bb4: $11 $40 $d0
    call Call_000_1f2f                            ; $6bb7: $cd $2f $1f
    ld hl, $d040                                  ; $6bba: $21 $40 $d0
    ld de, $8040                                  ; $6bbd: $11 $40 $80
    ld c, $04                                     ; $6bc0: $0e $04
    call Call_000_0468                            ; $6bc2: $cd $68 $04
    ld hl, $7c63                                  ; $6bc5: $21 $63 $7c
    ld d, $0e                                     ; $6bc8: $16 $0e
    ld e, $80                                     ; $6bca: $1e $80
    ld bc, $0204                                  ; $6bcc: $01 $04 $02
    call Call_000_26ea                            ; $6bcf: $cd $ea $26
    ret                                           ; $6bd2: $c9


Jump_079_6bd3:
    ld a, $01                                     ; $6bd3: $3e $01
    ldh [$96], a                                  ; $6bd5: $e0 $96
    ldh [rSVBK], a                                ; $6bd7: $e0 $70
    ld hl, $76c7                                  ; $6bd9: $21 $c7 $76
    ld de, $d040                                  ; $6bdc: $11 $40 $d0
    call Call_000_1f2f                            ; $6bdf: $cd $2f $1f
    ld hl, $d040                                  ; $6be2: $21 $40 $d0
    ld de, $8040                                  ; $6be5: $11 $40 $80
    ld c, $04                                     ; $6be8: $0e $04
    call Call_000_0468                            ; $6bea: $cd $68 $04
    ld hl, $7c6c                                  ; $6bed: $21 $6c $7c
    ld d, $0e                                     ; $6bf0: $16 $0e
    ld e, $80                                     ; $6bf2: $1e $80
    ld bc, $0204                                  ; $6bf4: $01 $04 $02
    call Call_000_26ea                            ; $6bf7: $cd $ea $26
    ret                                           ; $6bfa: $c9


Jump_079_6bfb:
    ld a, $01                                     ; $6bfb: $3e $01
    ldh [$96], a                                  ; $6bfd: $e0 $96
    ldh [rSVBK], a                                ; $6bff: $e0 $70
    ld hl, $7712                                  ; $6c01: $21 $12 $77
    ld de, $d040                                  ; $6c04: $11 $40 $d0
    call Call_000_1f2f                            ; $6c07: $cd $2f $1f
    ld hl, $d040                                  ; $6c0a: $21 $40 $d0
    ld de, $8040                                  ; $6c0d: $11 $40 $80
    ld c, $04                                     ; $6c10: $0e $04
    call Call_000_0468                            ; $6c12: $cd $68 $04
    ld hl, $7c75                                  ; $6c15: $21 $75 $7c
    ld d, $0e                                     ; $6c18: $16 $0e
    ld e, $80                                     ; $6c1a: $1e $80
    ld bc, $0204                                  ; $6c1c: $01 $04 $02
    call Call_000_26ea                            ; $6c1f: $cd $ea $26
    ret                                           ; $6c22: $c9


Jump_079_6c23:
    ld a, $01                                     ; $6c23: $3e $01
    ldh [$96], a                                  ; $6c25: $e0 $96
    ldh [rSVBK], a                                ; $6c27: $e0 $70
    ld hl, $775c                                  ; $6c29: $21 $5c $77
    ld de, $d040                                  ; $6c2c: $11 $40 $d0
    call Call_000_1f2f                            ; $6c2f: $cd $2f $1f
    ld hl, $d040                                  ; $6c32: $21 $40 $d0
    ld de, $8040                                  ; $6c35: $11 $40 $80
    ld c, $04                                     ; $6c38: $0e $04
    call Call_000_0468                            ; $6c3a: $cd $68 $04
    ld hl, $7c7e                                  ; $6c3d: $21 $7e $7c
    ld d, $0e                                     ; $6c40: $16 $0e
    ld e, $80                                     ; $6c42: $1e $80
    ld bc, $0204                                  ; $6c44: $01 $04 $02
    call Call_000_26ea                            ; $6c47: $cd $ea $26
    ret                                           ; $6c4a: $c9


Jump_079_6c4b:
    ld hl, $7c7e                                  ; $6c4b: $21 $7e $7c
    ld d, $0e                                     ; $6c4e: $16 $0e
    ld e, $80                                     ; $6c50: $1e $80
    ld bc, $0204                                  ; $6c52: $01 $04 $02
    call Call_000_26ea                            ; $6c55: $cd $ea $26
    ret                                           ; $6c58: $c9


Call_079_6c59:
    ld a, $06                                     ; $6c59: $3e $06
    ldh [$96], a                                  ; $6c5b: $e0 $96
    ldh [rSVBK], a                                ; $6c5d: $e0 $70
    ld a, [$d400]                                 ; $6c5f: $fa $00 $d4
    ld b, a                                       ; $6c62: $47

Jump_079_6c63:
    sub $12                                       ; $6c63: $d6 $12
    ret c                                         ; $6c65: $d8

    ld a, b                                       ; $6c66: $78
    cp $12                                        ; $6c67: $fe $12
    jp z, Jump_079_6c97                           ; $6c69: $ca $97 $6c

    cp $13                                        ; $6c6c: $fe $13
    jp z, Jump_079_6cbf                           ; $6c6e: $ca $bf $6c

    cp $14                                        ; $6c71: $fe $14
    jp z, Jump_079_6ce7                           ; $6c73: $ca $e7 $6c

    cp $15                                        ; $6c76: $fe $15
    jp z, Jump_079_6d0f                           ; $6c78: $ca $0f $6d

    cp $16                                        ; $6c7b: $fe $16
    jp z, Jump_079_6d37                           ; $6c7d: $ca $37 $6d

    cp $17                                        ; $6c80: $fe $17
    jp z, Jump_079_6d5f                           ; $6c82: $ca $5f $6d

    cp $18                                        ; $6c85: $fe $18
    jp z, Jump_079_6d87                           ; $6c87: $ca $87 $6d

    cp $19                                        ; $6c8a: $fe $19
    jp z, Jump_079_6daf                           ; $6c8c: $ca $af $6d

    cp $1a                                        ; $6c8f: $fe $1a
    jp z, Jump_079_6dd7                           ; $6c91: $ca $d7 $6d

    jp Jump_079_6dff                              ; $6c94: $c3 $ff $6d


Jump_079_6c97:
    ld a, $01                                     ; $6c97: $3e $01
    ldh [$96], a                                  ; $6c99: $e0 $96
    ldh [rSVBK], a                                ; $6c9b: $e0 $70
    ld hl, $77a5                                  ; $6c9d: $21 $a5 $77
    ld de, $d080                                  ; $6ca0: $11 $80 $d0
    call Call_000_1f2f                            ; $6ca3: $cd $2f $1f
    ld hl, $d080                                  ; $6ca6: $21 $80 $d0
    ld de, $8080                                  ; $6ca9: $11 $80 $80
    ld c, $04                                     ; $6cac: $0e $04
    call Call_000_0468                            ; $6cae: $cd $68 $04
    ld hl, $7c87                                  ; $6cb1: $21 $87 $7c
    ld d, $1e                                     ; $6cb4: $16 $1e
    ld e, $80                                     ; $6cb6: $1e $80
    ld bc, $0308                                  ; $6cb8: $01 $08 $03
    call Call_000_26ea                            ; $6cbb: $cd $ea $26
    ret                                           ; $6cbe: $c9


Jump_079_6cbf:
    ld a, $01                                     ; $6cbf: $3e $01
    ldh [$96], a                                  ; $6cc1: $e0 $96
    ldh [rSVBK], a                                ; $6cc3: $e0 $70
    ld hl, $77cc                                  ; $6cc5: $21 $cc $77
    ld de, $d080                                  ; $6cc8: $11 $80 $d0
    call Call_000_1f2f                            ; $6ccb: $cd $2f $1f
    ld hl, $d080                                  ; $6cce: $21 $80 $d0
    ld de, $8080                                  ; $6cd1: $11 $80 $80
    ld c, $04                                     ; $6cd4: $0e $04
    call Call_000_0468                            ; $6cd6: $cd $68 $04
    ld hl, $7c90                                  ; $6cd9: $21 $90 $7c
    ld d, $1e                                     ; $6cdc: $16 $1e
    ld e, $80                                     ; $6cde: $1e $80
    ld bc, $0308                                  ; $6ce0: $01 $08 $03
    call Call_000_26ea                            ; $6ce3: $cd $ea $26
    ret                                           ; $6ce6: $c9


Jump_079_6ce7:
    ld a, $01                                     ; $6ce7: $3e $01
    ldh [$96], a                                  ; $6ce9: $e0 $96
    ldh [rSVBK], a                                ; $6ceb: $e0 $70
    ld hl, $77fd                                  ; $6ced: $21 $fd $77
    ld de, $d080                                  ; $6cf0: $11 $80 $d0
    call Call_000_1f2f                            ; $6cf3: $cd $2f $1f
    ld hl, $d080                                  ; $6cf6: $21 $80 $d0
    ld de, $8080                                  ; $6cf9: $11 $80 $80
    ld c, $04                                     ; $6cfc: $0e $04
    call Call_000_0468                            ; $6cfe: $cd $68 $04
    ld hl, $7c99                                  ; $6d01: $21 $99 $7c
    ld d, $1e                                     ; $6d04: $16 $1e
    ld e, $80                                     ; $6d06: $1e $80
    ld bc, $0308                                  ; $6d08: $01 $08 $03
    call Call_000_26ea                            ; $6d0b: $cd $ea $26
    ret                                           ; $6d0e: $c9


Jump_079_6d0f:
    ld a, $01                                     ; $6d0f: $3e $01
    ldh [$96], a                                  ; $6d11: $e0 $96
    ldh [rSVBK], a                                ; $6d13: $e0 $70
    ld hl, $7832                                  ; $6d15: $21 $32 $78
    ld de, $d080                                  ; $6d18: $11 $80 $d0
    call Call_000_1f2f                            ; $6d1b: $cd $2f $1f
    ld hl, $d080                                  ; $6d1e: $21 $80 $d0
    ld de, $8080                                  ; $6d21: $11 $80 $80
    ld c, $04                                     ; $6d24: $0e $04
    call Call_000_0468                            ; $6d26: $cd $68 $04
    ld hl, $7ca2                                  ; $6d29: $21 $a2 $7c
    ld d, $1e                                     ; $6d2c: $16 $1e
    ld e, $80                                     ; $6d2e: $1e $80
    ld bc, $0308                                  ; $6d30: $01 $08 $03
    call Call_000_26ea                            ; $6d33: $cd $ea $26
    ret                                           ; $6d36: $c9


Jump_079_6d37:
    ld a, $01                                     ; $6d37: $3e $01
    ldh [$96], a                                  ; $6d39: $e0 $96
    ldh [rSVBK], a                                ; $6d3b: $e0 $70
    ld hl, $7874                                  ; $6d3d: $21 $74 $78
    ld de, $d080                                  ; $6d40: $11 $80 $d0
    call Call_000_1f2f                            ; $6d43: $cd $2f $1f
    ld hl, $d080                                  ; $6d46: $21 $80 $d0
    ld de, $8080                                  ; $6d49: $11 $80 $80
    ld c, $04                                     ; $6d4c: $0e $04
    call Call_000_0468                            ; $6d4e: $cd $68 $04
    ld hl, $7cab                                  ; $6d51: $21 $ab $7c
    ld d, $1e                                     ; $6d54: $16 $1e
    ld e, $80                                     ; $6d56: $1e $80
    ld bc, $0308                                  ; $6d58: $01 $08 $03
    call Call_000_26ea                            ; $6d5b: $cd $ea $26
    ret                                           ; $6d5e: $c9


Jump_079_6d5f:
    ld a, $01                                     ; $6d5f: $3e $01
    ldh [$96], a                                  ; $6d61: $e0 $96
    ldh [rSVBK], a                                ; $6d63: $e0 $70
    ld hl, $78b9                                  ; $6d65: $21 $b9 $78
    ld de, $d080                                  ; $6d68: $11 $80 $d0
    call Call_000_1f2f                            ; $6d6b: $cd $2f $1f
    ld hl, $d080                                  ; $6d6e: $21 $80 $d0
    ld de, $8080                                  ; $6d71: $11 $80 $80
    ld c, $04                                     ; $6d74: $0e $04
    call Call_000_0468                            ; $6d76: $cd $68 $04
    ld hl, $7cb4                                  ; $6d79: $21 $b4 $7c
    ld d, $1e                                     ; $6d7c: $16 $1e
    ld e, $80                                     ; $6d7e: $1e $80
    ld bc, $0308                                  ; $6d80: $01 $08 $03
    call Call_000_26ea                            ; $6d83: $cd $ea $26
    ret                                           ; $6d86: $c9


Jump_079_6d87:
    ld a, $01                                     ; $6d87: $3e $01
    ldh [$96], a                                  ; $6d89: $e0 $96
    ldh [rSVBK], a                                ; $6d8b: $e0 $70
    ld hl, $7902                                  ; $6d8d: $21 $02 $79
    ld de, $d080                                  ; $6d90: $11 $80 $d0
    call Call_000_1f2f                            ; $6d93: $cd $2f $1f
    ld hl, $d080                                  ; $6d96: $21 $80 $d0
    ld de, $8080                                  ; $6d99: $11 $80 $80
    ld c, $04                                     ; $6d9c: $0e $04
    call Call_000_0468                            ; $6d9e: $cd $68 $04
    ld hl, $7cbd                                  ; $6da1: $21 $bd $7c
    ld d, $1e                                     ; $6da4: $16 $1e
    ld e, $80                                     ; $6da6: $1e $80
    ld bc, $0308                                  ; $6da8: $01 $08 $03
    call Call_000_26ea                            ; $6dab: $cd $ea $26
    ret                                           ; $6dae: $c9


Jump_079_6daf:
    ld a, $01                                     ; $6daf: $3e $01
    ldh [$96], a                                  ; $6db1: $e0 $96
    ldh [rSVBK], a                                ; $6db3: $e0 $70
    ld hl, $794c                                  ; $6db5: $21 $4c $79
    ld de, $d080                                  ; $6db8: $11 $80 $d0
    call Call_000_1f2f                            ; $6dbb: $cd $2f $1f
    ld hl, $d080                                  ; $6dbe: $21 $80 $d0
    ld de, $8080                                  ; $6dc1: $11 $80 $80
    ld c, $04                                     ; $6dc4: $0e $04
    call Call_000_0468                            ; $6dc6: $cd $68 $04
    ld hl, $7cc6                                  ; $6dc9: $21 $c6 $7c
    ld d, $1e                                     ; $6dcc: $16 $1e
    ld e, $80                                     ; $6dce: $1e $80
    ld bc, $0308                                  ; $6dd0: $01 $08 $03
    call Call_000_26ea                            ; $6dd3: $cd $ea $26
    ret                                           ; $6dd6: $c9


Jump_079_6dd7:
    ld a, $01                                     ; $6dd7: $3e $01
    ldh [$96], a                                  ; $6dd9: $e0 $96
    ldh [rSVBK], a                                ; $6ddb: $e0 $70
    ld hl, $7996                                  ; $6ddd: $21 $96 $79
    ld de, $d080                                  ; $6de0: $11 $80 $d0
    call Call_000_1f2f                            ; $6de3: $cd $2f $1f
    ld hl, $d080                                  ; $6de6: $21 $80 $d0
    ld de, $8080                                  ; $6de9: $11 $80 $80
    ld c, $04                                     ; $6dec: $0e $04
    call Call_000_0468                            ; $6dee: $cd $68 $04
    ld hl, $7ccf                                  ; $6df1: $21 $cf $7c
    ld d, $1e                                     ; $6df4: $16 $1e
    ld e, $80                                     ; $6df6: $1e $80
    ld bc, $0308                                  ; $6df8: $01 $08 $03
    call Call_000_26ea                            ; $6dfb: $cd $ea $26
    ret                                           ; $6dfe: $c9


Jump_079_6dff:
    ld hl, $7ccf                                  ; $6dff: $21 $cf $7c
    ld d, $1e                                     ; $6e02: $16 $1e
    ld e, $80                                     ; $6e04: $1e $80
    ld bc, $0308                                  ; $6e06: $01 $08 $03
    call Call_000_26ea                            ; $6e09: $cd $ea $26
    ret                                           ; $6e0c: $c9


Call_079_6e0d:
    ld a, $06                                     ; $6e0d: $3e $06
    ldh [$96], a                                  ; $6e0f: $e0 $96
    ldh [rSVBK], a                                ; $6e11: $e0 $70
    ld a, [$d400]                                 ; $6e13: $fa $00 $d4
    ld b, a                                       ; $6e16: $47
    sub $1b                                       ; $6e17: $d6 $1b
    ret c                                         ; $6e19: $d8

    ld a, b                                       ; $6e1a: $78
    cp $1b                                        ; $6e1b: $fe $1b
    jp z, Jump_079_6e4b                           ; $6e1d: $ca $4b $6e

    cp $1c                                        ; $6e20: $fe $1c
    jp z, Jump_079_6e73                           ; $6e22: $ca $73 $6e

    cp $1d                                        ; $6e25: $fe $1d
    jp z, Jump_079_6e9b                           ; $6e27: $ca $9b $6e

    cp $1e                                        ; $6e2a: $fe $1e
    jp z, Jump_079_6ec3                           ; $6e2c: $ca $c3 $6e

    cp $1f                                        ; $6e2f: $fe $1f
    jp z, Jump_079_6eeb                           ; $6e31: $ca $eb $6e

    cp $20                                        ; $6e34: $fe $20
    jp z, Jump_079_6f13                           ; $6e36: $ca $13 $6f

    cp $21                                        ; $6e39: $fe $21
    jp z, Jump_079_6f3b                           ; $6e3b: $ca $3b $6f

    cp $22                                        ; $6e3e: $fe $22
    jp z, Jump_079_6f63                           ; $6e40: $ca $63 $6f

    cp $23                                        ; $6e43: $fe $23
    jp z, Jump_079_6f8b                           ; $6e45: $ca $8b $6f

    jp Jump_079_6fb3                              ; $6e48: $c3 $b3 $6f


Jump_079_6e4b:
    ld a, $01                                     ; $6e4b: $3e $01
    ldh [$96], a                                  ; $6e4d: $e0 $96
    ldh [rSVBK], a                                ; $6e4f: $e0 $70
    ld hl, $79db                                  ; $6e51: $21 $db $79
    ld de, $d0c0                                  ; $6e54: $11 $c0 $d0
    call Call_000_1f2f                            ; $6e57: $cd $2f $1f
    ld hl, $d0c0                                  ; $6e5a: $21 $c0 $d0
    ld de, $80c0                                  ; $6e5d: $11 $c0 $80
    ld c, $02                                     ; $6e60: $0e $02
    call Call_000_0468                            ; $6e62: $cd $68 $04
    ld hl, $7cd8                                  ; $6e65: $21 $d8 $7c
    ld d, $2e                                     ; $6e68: $16 $2e
    ld e, $80                                     ; $6e6a: $1e $80
    ld bc, $030c                                  ; $6e6c: $01 $0c $03
    call Call_000_26ea                            ; $6e6f: $cd $ea $26
    ret                                           ; $6e72: $c9


Jump_079_6e73:
    ld a, $01                                     ; $6e73: $3e $01
    ldh [$96], a                                  ; $6e75: $e0 $96
    ldh [rSVBK], a                                ; $6e77: $e0 $70
    ld hl, $79ea                                  ; $6e79: $21 $ea $79
    ld de, $d0c0                                  ; $6e7c: $11 $c0 $d0
    call Call_000_1f2f                            ; $6e7f: $cd $2f $1f
    ld hl, $d0c0                                  ; $6e82: $21 $c0 $d0
    ld de, $80c0                                  ; $6e85: $11 $c0 $80
    ld c, $02                                     ; $6e88: $0e $02
    call Call_000_0468                            ; $6e8a: $cd $68 $04
    ld hl, $7cdd                                  ; $6e8d: $21 $dd $7c
    ld d, $2e                                     ; $6e90: $16 $2e
    ld e, $80                                     ; $6e92: $1e $80
    ld bc, $030c                                  ; $6e94: $01 $0c $03
    call Call_000_26ea                            ; $6e97: $cd $ea $26
    ret                                           ; $6e9a: $c9


Jump_079_6e9b:
    ld a, $01                                     ; $6e9b: $3e $01
    ldh [$96], a                                  ; $6e9d: $e0 $96
    ldh [rSVBK], a                                ; $6e9f: $e0 $70
    ld hl, $79f9                                  ; $6ea1: $21 $f9 $79
    ld de, $d0c0                                  ; $6ea4: $11 $c0 $d0
    call Call_000_1f2f                            ; $6ea7: $cd $2f $1f
    ld hl, $d0c0                                  ; $6eaa: $21 $c0 $d0
    ld de, $80c0                                  ; $6ead: $11 $c0 $80
    ld c, $02                                     ; $6eb0: $0e $02
    call Call_000_0468                            ; $6eb2: $cd $68 $04
    ld hl, $7ce2                                  ; $6eb5: $21 $e2 $7c
    ld d, $2e                                     ; $6eb8: $16 $2e
    ld e, $80                                     ; $6eba: $1e $80
    ld bc, $030c                                  ; $6ebc: $01 $0c $03
    call Call_000_26ea                            ; $6ebf: $cd $ea $26
    ret                                           ; $6ec2: $c9


Jump_079_6ec3:
    ld a, $01                                     ; $6ec3: $3e $01
    ldh [$96], a                                  ; $6ec5: $e0 $96
    ldh [rSVBK], a                                ; $6ec7: $e0 $70
    ld hl, $7a08                                  ; $6ec9: $21 $08 $7a
    ld de, $d0c0                                  ; $6ecc: $11 $c0 $d0
    call Call_000_1f2f                            ; $6ecf: $cd $2f $1f
    ld hl, $d0c0                                  ; $6ed2: $21 $c0 $d0
    ld de, $80c0                                  ; $6ed5: $11 $c0 $80
    ld c, $02                                     ; $6ed8: $0e $02
    call Call_000_0468                            ; $6eda: $cd $68 $04
    ld hl, $7ce7                                  ; $6edd: $21 $e7 $7c
    ld d, $2e                                     ; $6ee0: $16 $2e
    ld e, $80                                     ; $6ee2: $1e $80
    ld bc, $030c                                  ; $6ee4: $01 $0c $03
    call Call_000_26ea                            ; $6ee7: $cd $ea $26
    ret                                           ; $6eea: $c9


Jump_079_6eeb:
    ld a, $01                                     ; $6eeb: $3e $01
    ldh [$96], a                                  ; $6eed: $e0 $96
    ldh [rSVBK], a                                ; $6eef: $e0 $70
    ld hl, $7a1b                                  ; $6ef1: $21 $1b $7a
    ld de, $d0c0                                  ; $6ef4: $11 $c0 $d0
    call Call_000_1f2f                            ; $6ef7: $cd $2f $1f
    ld hl, $d0c0                                  ; $6efa: $21 $c0 $d0
    ld de, $80c0                                  ; $6efd: $11 $c0 $80
    ld c, $02                                     ; $6f00: $0e $02
    call Call_000_0468                            ; $6f02: $cd $68 $04
    ld hl, $7cec                                  ; $6f05: $21 $ec $7c
    ld d, $2e                                     ; $6f08: $16 $2e
    ld e, $80                                     ; $6f0a: $1e $80
    ld bc, $030c                                  ; $6f0c: $01 $0c $03
    call Call_000_26ea                            ; $6f0f: $cd $ea $26
    ret                                           ; $6f12: $c9


Jump_079_6f13:
    ld a, $01                                     ; $6f13: $3e $01
    ldh [$96], a                                  ; $6f15: $e0 $96
    ldh [rSVBK], a                                ; $6f17: $e0 $70
    ld hl, $7a31                                  ; $6f19: $21 $31 $7a
    ld de, $d0c0                                  ; $6f1c: $11 $c0 $d0
    call Call_000_1f2f                            ; $6f1f: $cd $2f $1f
    ld hl, $d0c0                                  ; $6f22: $21 $c0 $d0
    ld de, $80c0                                  ; $6f25: $11 $c0 $80
    ld c, $02                                     ; $6f28: $0e $02
    call Call_000_0468                            ; $6f2a: $cd $68 $04
    ld hl, $7cf1                                  ; $6f2d: $21 $f1 $7c
    ld d, $2e                                     ; $6f30: $16 $2e
    ld e, $80                                     ; $6f32: $1e $80
    ld bc, $030c                                  ; $6f34: $01 $0c $03
    call Call_000_26ea                            ; $6f37: $cd $ea $26
    ret                                           ; $6f3a: $c9


Jump_079_6f3b:
    ld a, $01                                     ; $6f3b: $3e $01
    ldh [$96], a                                  ; $6f3d: $e0 $96
    ldh [rSVBK], a                                ; $6f3f: $e0 $70
    ld hl, $7a47                                  ; $6f41: $21 $47 $7a
    ld de, $d0c0                                  ; $6f44: $11 $c0 $d0
    call Call_000_1f2f                            ; $6f47: $cd $2f $1f
    ld hl, $d0c0                                  ; $6f4a: $21 $c0 $d0
    ld de, $80c0                                  ; $6f4d: $11 $c0 $80
    ld c, $02                                     ; $6f50: $0e $02
    call Call_000_0468                            ; $6f52: $cd $68 $04
    ld hl, $7cf6                                  ; $6f55: $21 $f6 $7c
    ld d, $2e                                     ; $6f58: $16 $2e
    ld e, $80                                     ; $6f5a: $1e $80
    ld bc, $030c                                  ; $6f5c: $01 $0c $03
    call Call_000_26ea                            ; $6f5f: $cd $ea $26
    ret                                           ; $6f62: $c9


Jump_079_6f63:
    ld a, $01                                     ; $6f63: $3e $01
    ldh [$96], a                                  ; $6f65: $e0 $96
    ldh [rSVBK], a                                ; $6f67: $e0 $70
    ld hl, $7a5d                                  ; $6f69: $21 $5d $7a
    ld de, $d0c0                                  ; $6f6c: $11 $c0 $d0
    call Call_000_1f2f                            ; $6f6f: $cd $2f $1f
    ld hl, $d0c0                                  ; $6f72: $21 $c0 $d0
    ld de, $80c0                                  ; $6f75: $11 $c0 $80
    ld c, $02                                     ; $6f78: $0e $02
    call Call_000_0468                            ; $6f7a: $cd $68 $04
    ld hl, $7cfb                                  ; $6f7d: $21 $fb $7c
    ld d, $2e                                     ; $6f80: $16 $2e
    ld e, $80                                     ; $6f82: $1e $80
    ld bc, $030c                                  ; $6f84: $01 $0c $03
    call Call_000_26ea                            ; $6f87: $cd $ea $26
    ret                                           ; $6f8a: $c9


Jump_079_6f8b:
    ld a, $01                                     ; $6f8b: $3e $01
    ldh [$96], a                                  ; $6f8d: $e0 $96
    ldh [rSVBK], a                                ; $6f8f: $e0 $70
    ld hl, $7a73                                  ; $6f91: $21 $73 $7a
    ld de, $d0c0                                  ; $6f94: $11 $c0 $d0
    call Call_000_1f2f                            ; $6f97: $cd $2f $1f
    ld hl, $d0c0                                  ; $6f9a: $21 $c0 $d0
    ld de, $80c0                                  ; $6f9d: $11 $c0 $80
    ld c, $02                                     ; $6fa0: $0e $02
    call Call_000_0468                            ; $6fa2: $cd $68 $04
    ld hl, $7d00                                  ; $6fa5: $21 $00 $7d
    ld d, $2e                                     ; $6fa8: $16 $2e
    ld e, $80                                     ; $6faa: $1e $80
    ld bc, $030c                                  ; $6fac: $01 $0c $03
    call Call_000_26ea                            ; $6faf: $cd $ea $26
    ret                                           ; $6fb2: $c9


Jump_079_6fb3:
    ld hl, $7d00                                  ; $6fb3: $21 $00 $7d
    ld d, $2e                                     ; $6fb6: $16 $2e
    ld e, $80                                     ; $6fb8: $1e $80
    ld bc, $030c                                  ; $6fba: $01 $0c $03
    call Call_000_26ea                            ; $6fbd: $cd $ea $26
    ret                                           ; $6fc0: $c9


Call_079_6fc1:
    ld a, $06                                     ; $6fc1: $3e $06
    ldh [$96], a                                  ; $6fc3: $e0 $96
    ldh [rSVBK], a                                ; $6fc5: $e0 $70
    ld a, [$d400]                                 ; $6fc7: $fa $00 $d4
    ld b, a                                       ; $6fca: $47
    sub $24                                       ; $6fcb: $d6 $24
    ret c                                         ; $6fcd: $d8

    ld a, b                                       ; $6fce: $78
    cp $24                                        ; $6fcf: $fe $24
    jp z, Jump_079_6fff                           ; $6fd1: $ca $ff $6f

    cp $25                                        ; $6fd4: $fe $25
    jp z, Jump_079_7027                           ; $6fd6: $ca $27 $70

    cp $26                                        ; $6fd9: $fe $26
    jp z, Jump_079_704f                           ; $6fdb: $ca $4f $70

    cp $27                                        ; $6fde: $fe $27
    jp z, Jump_079_7077                           ; $6fe0: $ca $77 $70

    cp $28                                        ; $6fe3: $fe $28
    jp z, Jump_079_709f                           ; $6fe5: $ca $9f $70

    cp $29                                        ; $6fe8: $fe $29
    jp z, Jump_079_70c7                           ; $6fea: $ca $c7 $70

    cp $2a                                        ; $6fed: $fe $2a
    jp z, Jump_079_70ef                           ; $6fef: $ca $ef $70

    cp $2b                                        ; $6ff2: $fe $2b
    jp z, Jump_079_7117                           ; $6ff4: $ca $17 $71

    cp $2c                                        ; $6ff7: $fe $2c
    jp z, Jump_079_713f                           ; $6ff9: $ca $3f $71

    jp Jump_079_7167                              ; $6ffc: $c3 $67 $71


Jump_079_6fff:
    ld a, $01                                     ; $6fff: $3e $01
    ldh [$96], a                                  ; $7001: $e0 $96
    ldh [rSVBK], a                                ; $7003: $e0 $70
    ld hl, $7a89                                  ; $7005: $21 $89 $7a
    ld de, $d0e0                                  ; $7008: $11 $e0 $d0
    call Call_000_1f2f                            ; $700b: $cd $2f $1f
    ld hl, $d0e0                                  ; $700e: $21 $e0 $d0
    ld de, $80e0                                  ; $7011: $11 $e0 $80
    ld c, $02                                     ; $7014: $0e $02
    call Call_000_0468                            ; $7016: $cd $68 $04
    ld hl, $7d05                                  ; $7019: $21 $05 $7d
    ld d, $36                                     ; $701c: $16 $36
    ld e, $80                                     ; $701e: $1e $80
    ld bc, $020e                                  ; $7020: $01 $0e $02
    call Call_000_26ea                            ; $7023: $cd $ea $26
    ret                                           ; $7026: $c9


Jump_079_7027:
    ld a, $01                                     ; $7027: $3e $01
    ldh [$96], a                                  ; $7029: $e0 $96
    ldh [rSVBK], a                                ; $702b: $e0 $70
    ld hl, $7a98                                  ; $702d: $21 $98 $7a
    ld de, $d0e0                                  ; $7030: $11 $e0 $d0
    call Call_000_1f2f                            ; $7033: $cd $2f $1f
    ld hl, $d0e0                                  ; $7036: $21 $e0 $d0
    ld de, $80e0                                  ; $7039: $11 $e0 $80
    ld c, $02                                     ; $703c: $0e $02
    call Call_000_0468                            ; $703e: $cd $68 $04
    ld hl, $7d0a                                  ; $7041: $21 $0a $7d
    ld d, $36                                     ; $7044: $16 $36
    ld e, $80                                     ; $7046: $1e $80
    ld bc, $020e                                  ; $7048: $01 $0e $02
    call Call_000_26ea                            ; $704b: $cd $ea $26
    ret                                           ; $704e: $c9


Jump_079_704f:
    ld a, $01                                     ; $704f: $3e $01
    ldh [$96], a                                  ; $7051: $e0 $96
    ldh [rSVBK], a                                ; $7053: $e0 $70
    ld hl, $7aa7                                  ; $7055: $21 $a7 $7a
    ld de, $d0e0                                  ; $7058: $11 $e0 $d0
    call Call_000_1f2f                            ; $705b: $cd $2f $1f
    ld hl, $d0e0                                  ; $705e: $21 $e0 $d0
    ld de, $80e0                                  ; $7061: $11 $e0 $80
    ld c, $02                                     ; $7064: $0e $02
    call Call_000_0468                            ; $7066: $cd $68 $04
    ld hl, $7d0f                                  ; $7069: $21 $0f $7d
    ld d, $36                                     ; $706c: $16 $36
    ld e, $80                                     ; $706e: $1e $80
    ld bc, $020e                                  ; $7070: $01 $0e $02
    call Call_000_26ea                            ; $7073: $cd $ea $26
    ret                                           ; $7076: $c9


Jump_079_7077:
    ld a, $01                                     ; $7077: $3e $01
    ldh [$96], a                                  ; $7079: $e0 $96
    ldh [rSVBK], a                                ; $707b: $e0 $70
    ld hl, $7ab6                                  ; $707d: $21 $b6 $7a
    ld de, $d0e0                                  ; $7080: $11 $e0 $d0
    call Call_000_1f2f                            ; $7083: $cd $2f $1f
    ld hl, $d0e0                                  ; $7086: $21 $e0 $d0
    ld de, $80e0                                  ; $7089: $11 $e0 $80
    ld c, $02                                     ; $708c: $0e $02
    call Call_000_0468                            ; $708e: $cd $68 $04
    ld hl, $7d14                                  ; $7091: $21 $14 $7d
    ld d, $36                                     ; $7094: $16 $36
    ld e, $80                                     ; $7096: $1e $80
    ld bc, $020e                                  ; $7098: $01 $0e $02
    call Call_000_26ea                            ; $709b: $cd $ea $26
    ret                                           ; $709e: $c9


Jump_079_709f:
    ld a, $01                                     ; $709f: $3e $01
    ldh [$96], a                                  ; $70a1: $e0 $96
    ldh [rSVBK], a                                ; $70a3: $e0 $70
    ld hl, $7aca                                  ; $70a5: $21 $ca $7a
    ld de, $d0e0                                  ; $70a8: $11 $e0 $d0
    call Call_000_1f2f                            ; $70ab: $cd $2f $1f
    ld hl, $d0e0                                  ; $70ae: $21 $e0 $d0
    ld de, $80e0                                  ; $70b1: $11 $e0 $80
    ld c, $02                                     ; $70b4: $0e $02
    call Call_000_0468                            ; $70b6: $cd $68 $04
    ld hl, $7d19                                  ; $70b9: $21 $19 $7d
    ld d, $36                                     ; $70bc: $16 $36
    ld e, $80                                     ; $70be: $1e $80
    ld bc, $020e                                  ; $70c0: $01 $0e $02
    call Call_000_26ea                            ; $70c3: $cd $ea $26
    ret                                           ; $70c6: $c9


Jump_079_70c7:
    ld a, $01                                     ; $70c7: $3e $01
    ldh [$96], a                                  ; $70c9: $e0 $96
    ldh [rSVBK], a                                ; $70cb: $e0 $70
    ld hl, $7adf                                  ; $70cd: $21 $df $7a
    ld de, $d0e0                                  ; $70d0: $11 $e0 $d0
    call Call_000_1f2f                            ; $70d3: $cd $2f $1f
    ld hl, $d0e0                                  ; $70d6: $21 $e0 $d0
    ld de, $80e0                                  ; $70d9: $11 $e0 $80
    ld c, $02                                     ; $70dc: $0e $02
    call Call_000_0468                            ; $70de: $cd $68 $04
    ld hl, $7d1e                                  ; $70e1: $21 $1e $7d
    ld d, $36                                     ; $70e4: $16 $36
    ld e, $80                                     ; $70e6: $1e $80
    ld bc, $020e                                  ; $70e8: $01 $0e $02
    call Call_000_26ea                            ; $70eb: $cd $ea $26
    ret                                           ; $70ee: $c9


Jump_079_70ef:
    ld a, $01                                     ; $70ef: $3e $01
    ldh [$96], a                                  ; $70f1: $e0 $96
    ldh [rSVBK], a                                ; $70f3: $e0 $70
    ld hl, $7af5                                  ; $70f5: $21 $f5 $7a
    ld de, $d0e0                                  ; $70f8: $11 $e0 $d0
    call Call_000_1f2f                            ; $70fb: $cd $2f $1f
    ld hl, $d0e0                                  ; $70fe: $21 $e0 $d0
    ld de, $80e0                                  ; $7101: $11 $e0 $80
    ld c, $02                                     ; $7104: $0e $02
    call Call_000_0468                            ; $7106: $cd $68 $04
    ld hl, $7d23                                  ; $7109: $21 $23 $7d
    ld d, $36                                     ; $710c: $16 $36
    ld e, $80                                     ; $710e: $1e $80
    ld bc, $020e                                  ; $7110: $01 $0e $02
    call Call_000_26ea                            ; $7113: $cd $ea $26
    ret                                           ; $7116: $c9


Jump_079_7117:
    ld a, $01                                     ; $7117: $3e $01
    ldh [$96], a                                  ; $7119: $e0 $96
    ldh [rSVBK], a                                ; $711b: $e0 $70
    ld hl, $7b0b                                  ; $711d: $21 $0b $7b
    ld de, $d0e0                                  ; $7120: $11 $e0 $d0
    call Call_000_1f2f                            ; $7123: $cd $2f $1f
    ld hl, $d0e0                                  ; $7126: $21 $e0 $d0
    ld de, $80e0                                  ; $7129: $11 $e0 $80
    ld c, $02                                     ; $712c: $0e $02
    call Call_000_0468                            ; $712e: $cd $68 $04
    ld hl, $7d28                                  ; $7131: $21 $28 $7d
    ld d, $36                                     ; $7134: $16 $36
    ld e, $80                                     ; $7136: $1e $80
    ld bc, $020e                                  ; $7138: $01 $0e $02
    call Call_000_26ea                            ; $713b: $cd $ea $26
    ret                                           ; $713e: $c9


Jump_079_713f:
    ld a, $01                                     ; $713f: $3e $01
    ldh [$96], a                                  ; $7141: $e0 $96
    ldh [rSVBK], a                                ; $7143: $e0 $70
    ld hl, $7b21                                  ; $7145: $21 $21 $7b
    ld de, $d0e0                                  ; $7148: $11 $e0 $d0
    call Call_000_1f2f                            ; $714b: $cd $2f $1f
    ld hl, $d0e0                                  ; $714e: $21 $e0 $d0
    ld de, $80e0                                  ; $7151: $11 $e0 $80
    ld c, $02                                     ; $7154: $0e $02
    call Call_000_0468                            ; $7156: $cd $68 $04
    ld hl, $7d2d                                  ; $7159: $21 $2d $7d
    ld d, $36                                     ; $715c: $16 $36
    ld e, $80                                     ; $715e: $1e $80
    ld bc, $020e                                  ; $7160: $01 $0e $02
    call Call_000_26ea                            ; $7163: $cd $ea $26
    ret                                           ; $7166: $c9


Jump_079_7167:
    ld hl, $7d2d                                  ; $7167: $21 $2d $7d
    ld d, $36                                     ; $716a: $16 $36
    ld e, $80                                     ; $716c: $1e $80
    ld bc, $020e                                  ; $716e: $01 $0e $02
    call Call_000_26ea                            ; $7171: $cd $ea $26
    ret                                           ; $7174: $c9


Call_079_7175:
    ld a, $06                                     ; $7175: $3e $06
    ldh [$96], a                                  ; $7177: $e0 $96
    ldh [rSVBK], a                                ; $7179: $e0 $70
    ld a, [$d400]                                 ; $717b: $fa $00 $d4
    ld b, a                                       ; $717e: $47
    sub $2d                                       ; $717f: $d6 $2d
    ret c                                         ; $7181: $d8

    ld a, b                                       ; $7182: $78
    cp $2d                                        ; $7183: $fe $2d
    jp z, Jump_079_71b3                           ; $7185: $ca $b3 $71

    cp $2e                                        ; $7188: $fe $2e
    jp z, Jump_079_71db                           ; $718a: $ca $db $71

    cp $2f                                        ; $718d: $fe $2f
    jp z, Jump_079_7203                           ; $718f: $ca $03 $72

    cp $30                                        ; $7192: $fe $30
    jp z, Jump_079_722b                           ; $7194: $ca $2b $72

    cp $31                                        ; $7197: $fe $31
    jp z, Jump_079_7253                           ; $7199: $ca $53 $72

    cp $32                                        ; $719c: $fe $32
    jp z, Jump_079_727b                           ; $719e: $ca $7b $72

    cp $33                                        ; $71a1: $fe $33
    jp z, Jump_079_72a3                           ; $71a3: $ca $a3 $72

    cp $34                                        ; $71a6: $fe $34
    jp z, Jump_079_72cb                           ; $71a8: $ca $cb $72

    cp $35                                        ; $71ab: $fe $35
    jp z, Jump_079_72f3                           ; $71ad: $ca $f3 $72

    jp Jump_079_731b                              ; $71b0: $c3 $1b $73


Jump_079_71b3:
    ld a, $01                                     ; $71b3: $3e $01
    ldh [$96], a                                  ; $71b5: $e0 $96
    ldh [rSVBK], a                                ; $71b7: $e0 $70
    ld hl, $7b37                                  ; $71b9: $21 $37 $7b
    ld de, $d100                                  ; $71bc: $11 $00 $d1
    call Call_000_1f2f                            ; $71bf: $cd $2f $1f
    ld hl, $d100                                  ; $71c2: $21 $00 $d1
    ld de, $8100                                  ; $71c5: $11 $00 $81
    ld c, $02                                     ; $71c8: $0e $02
    call Call_000_0468                            ; $71ca: $cd $68 $04
    ld hl, $7d32                                  ; $71cd: $21 $32 $7d
    ld d, $3e                                     ; $71d0: $16 $3e
    ld e, $80                                     ; $71d2: $1e $80
    ld bc, $0310                                  ; $71d4: $01 $10 $03
    call Call_000_26ea                            ; $71d7: $cd $ea $26
    ret                                           ; $71da: $c9


Jump_079_71db:
    ld a, $01                                     ; $71db: $3e $01
    ldh [$96], a                                  ; $71dd: $e0 $96
    ldh [rSVBK], a                                ; $71df: $e0 $70
    ld hl, $7b46                                  ; $71e1: $21 $46 $7b
    ld de, $d100                                  ; $71e4: $11 $00 $d1
    call Call_000_1f2f                            ; $71e7: $cd $2f $1f
    ld hl, $d100                                  ; $71ea: $21 $00 $d1
    ld de, $8100                                  ; $71ed: $11 $00 $81
    ld c, $02                                     ; $71f0: $0e $02
    call Call_000_0468                            ; $71f2: $cd $68 $04
    ld hl, $7d37                                  ; $71f5: $21 $37 $7d
    ld d, $3e                                     ; $71f8: $16 $3e
    ld e, $80                                     ; $71fa: $1e $80
    ld bc, $0310                                  ; $71fc: $01 $10 $03
    call Call_000_26ea                            ; $71ff: $cd $ea $26
    ret                                           ; $7202: $c9


Jump_079_7203:
    ld a, $01                                     ; $7203: $3e $01
    ldh [$96], a                                  ; $7205: $e0 $96
    ldh [rSVBK], a                                ; $7207: $e0 $70
    ld hl, $7b55                                  ; $7209: $21 $55 $7b
    ld de, $d100                                  ; $720c: $11 $00 $d1
    call Call_000_1f2f                            ; $720f: $cd $2f $1f
    ld hl, $d100                                  ; $7212: $21 $00 $d1
    ld de, $8100                                  ; $7215: $11 $00 $81
    ld c, $02                                     ; $7218: $0e $02
    call Call_000_0468                            ; $721a: $cd $68 $04
    ld hl, $7d3c                                  ; $721d: $21 $3c $7d
    ld d, $3e                                     ; $7220: $16 $3e
    ld e, $80                                     ; $7222: $1e $80
    ld bc, $0310                                  ; $7224: $01 $10 $03
    call Call_000_26ea                            ; $7227: $cd $ea $26
    ret                                           ; $722a: $c9


Jump_079_722b:
    ld a, $01                                     ; $722b: $3e $01
    ldh [$96], a                                  ; $722d: $e0 $96
    ldh [rSVBK], a                                ; $722f: $e0 $70
    ld hl, $7b64                                  ; $7231: $21 $64 $7b
    ld de, $d100                                  ; $7234: $11 $00 $d1
    call Call_000_1f2f                            ; $7237: $cd $2f $1f
    ld hl, $d100                                  ; $723a: $21 $00 $d1
    ld de, $8100                                  ; $723d: $11 $00 $81
    ld c, $02                                     ; $7240: $0e $02
    call Call_000_0468                            ; $7242: $cd $68 $04
    ld hl, $7d41                                  ; $7245: $21 $41 $7d
    ld d, $3e                                     ; $7248: $16 $3e
    ld e, $80                                     ; $724a: $1e $80
    ld bc, $0310                                  ; $724c: $01 $10 $03
    call Call_000_26ea                            ; $724f: $cd $ea $26
    ret                                           ; $7252: $c9


Jump_079_7253:
    ld a, $01                                     ; $7253: $3e $01
    ldh [$96], a                                  ; $7255: $e0 $96
    ldh [rSVBK], a                                ; $7257: $e0 $70
    ld hl, $7b77                                  ; $7259: $21 $77 $7b
    ld de, $d100                                  ; $725c: $11 $00 $d1
    call Call_000_1f2f                            ; $725f: $cd $2f $1f
    ld hl, $d100                                  ; $7262: $21 $00 $d1
    ld de, $8100                                  ; $7265: $11 $00 $81
    ld c, $02                                     ; $7268: $0e $02
    call Call_000_0468                            ; $726a: $cd $68 $04
    ld hl, $7d46                                  ; $726d: $21 $46 $7d
    ld d, $3e                                     ; $7270: $16 $3e
    ld e, $80                                     ; $7272: $1e $80
    ld bc, $0310                                  ; $7274: $01 $10 $03
    call Call_000_26ea                            ; $7277: $cd $ea $26
    ret                                           ; $727a: $c9


Jump_079_727b:
    ld a, $01                                     ; $727b: $3e $01
    ldh [$96], a                                  ; $727d: $e0 $96
    ldh [rSVBK], a                                ; $727f: $e0 $70
    ld hl, $7b8d                                  ; $7281: $21 $8d $7b
    ld de, $d100                                  ; $7284: $11 $00 $d1
    call Call_000_1f2f                            ; $7287: $cd $2f $1f
    ld hl, $d100                                  ; $728a: $21 $00 $d1
    ld de, $8100                                  ; $728d: $11 $00 $81
    ld c, $02                                     ; $7290: $0e $02
    call Call_000_0468                            ; $7292: $cd $68 $04
    ld hl, $7d4b                                  ; $7295: $21 $4b $7d
    ld d, $3e                                     ; $7298: $16 $3e
    ld e, $80                                     ; $729a: $1e $80
    ld bc, $0310                                  ; $729c: $01 $10 $03
    call Call_000_26ea                            ; $729f: $cd $ea $26
    ret                                           ; $72a2: $c9


Jump_079_72a3:
    ld a, $01                                     ; $72a3: $3e $01
    ldh [$96], a                                  ; $72a5: $e0 $96
    ldh [rSVBK], a                                ; $72a7: $e0 $70
    ld hl, $7ba3                                  ; $72a9: $21 $a3 $7b
    ld de, $d100                                  ; $72ac: $11 $00 $d1
    call Call_000_1f2f                            ; $72af: $cd $2f $1f
    ld hl, $d100                                  ; $72b2: $21 $00 $d1
    ld de, $8100                                  ; $72b5: $11 $00 $81
    ld c, $02                                     ; $72b8: $0e $02
    call Call_000_0468                            ; $72ba: $cd $68 $04
    ld hl, $7d50                                  ; $72bd: $21 $50 $7d
    ld d, $3e                                     ; $72c0: $16 $3e
    ld e, $80                                     ; $72c2: $1e $80
    ld bc, $0310                                  ; $72c4: $01 $10 $03
    call Call_000_26ea                            ; $72c7: $cd $ea $26
    ret                                           ; $72ca: $c9


Jump_079_72cb:
    ld a, $01                                     ; $72cb: $3e $01
    ldh [$96], a                                  ; $72cd: $e0 $96
    ldh [rSVBK], a                                ; $72cf: $e0 $70
    ld hl, $7bb9                                  ; $72d1: $21 $b9 $7b
    ld de, $d100                                  ; $72d4: $11 $00 $d1
    call Call_000_1f2f                            ; $72d7: $cd $2f $1f
    ld hl, $d100                                  ; $72da: $21 $00 $d1
    ld de, $8100                                  ; $72dd: $11 $00 $81
    ld c, $02                                     ; $72e0: $0e $02
    call Call_000_0468                            ; $72e2: $cd $68 $04
    ld hl, $7d55                                  ; $72e5: $21 $55 $7d
    ld d, $3e                                     ; $72e8: $16 $3e
    ld e, $80                                     ; $72ea: $1e $80
    ld bc, $0310                                  ; $72ec: $01 $10 $03
    call Call_000_26ea                            ; $72ef: $cd $ea $26
    ret                                           ; $72f2: $c9


Jump_079_72f3:
    ld a, $01                                     ; $72f3: $3e $01
    ldh [$96], a                                  ; $72f5: $e0 $96
    ldh [rSVBK], a                                ; $72f7: $e0 $70
    ld hl, $7bcf                                  ; $72f9: $21 $cf $7b
    ld de, $d100                                  ; $72fc: $11 $00 $d1
    call Call_000_1f2f                            ; $72ff: $cd $2f $1f
    ld hl, $d100                                  ; $7302: $21 $00 $d1
    ld de, $8100                                  ; $7305: $11 $00 $81
    ld c, $02                                     ; $7308: $0e $02
    call Call_000_0468                            ; $730a: $cd $68 $04
    ld hl, $7d5a                                  ; $730d: $21 $5a $7d
    ld d, $3e                                     ; $7310: $16 $3e
    ld e, $80                                     ; $7312: $1e $80
    ld bc, $0310                                  ; $7314: $01 $10 $03
    call Call_000_26ea                            ; $7317: $cd $ea $26
    ret                                           ; $731a: $c9


Jump_079_731b:
    ld hl, $7d5a                                  ; $731b: $21 $5a $7d
    ld d, $3e                                     ; $731e: $16 $3e
    ld e, $80                                     ; $7320: $1e $80
    ld bc, $0310                                  ; $7322: $01 $10 $03
    call Call_000_26ea                            ; $7325: $cd $ea $26
    ret                                           ; $7328: $c9


    rst $38                                       ; $7329: $ff
    ld a, a                                       ; $732a: $7f
    cp $03                                        ; $732b: $fe $03
    db $dd                                        ; $732d: $dd
    ld bc, $0046                                  ; $732e: $01 $46 $00
    rst $38                                       ; $7331: $ff
    ld a, a                                       ; $7332: $7f
    nop                                           ; $7333: $00
    ld [bc], a                                    ; $7334: $02
    and $03                                       ; $7335: $e6 $03
    ld b, [hl]                                    ; $7337: $46

jr_079_7338:
    nop                                           ; $7338: $00
    nop                                           ; $7339: $00
    nop                                           ; $733a: $00
    nop                                           ; $733b: $00
    nop                                           ; $733c: $00
    nop                                           ; $733d: $00
    nop                                           ; $733e: $00
    nop                                           ; $733f: $00
    ld h, a                                       ; $7340: $67
    inc b                                         ; $7341: $04
    inc b                                         ; $7342: $04
    nop                                           ; $7343: $00
    rst $38                                       ; $7344: $ff
    pop hl                                        ; $7345: $e1
    ld a, [$20e8]                                 ; $7346: $fa $e8 $20
    inc h                                         ; $7349: $24
    xor $e1                                       ; $734a: $ee $e1
    dec sp                                        ; $734c: $3b
    inc h                                         ; $734d: $24
    jr nz, jr_079_7338                            ; $734e: $20 $e8

    ld [c], a                                     ; $7350: $e2
    nop                                           ; $7351: $00
    sub d                                         ; $7352: $92
    sub d                                         ; $7353: $92
    ld a, [$dbe2]                                 ; $7354: $fa $e2 $db
    ld [c], a                                     ; $7357: $e2
    ld e, e                                       ; $7358: $5b
    db $10                                        ; $7359: $10
    add b                                         ; $735a: $80
    call nc, $90e1                                ; $735b: $d4 $e1 $90
    sub b                                         ; $735e: $90
    adc $e1                                       ; $735f: $ce $e1
    ld [bc], a                                    ; $7361: $02
    add sp, -$1e                                  ; $7362: $e8 $e2
    inc bc                                        ; $7364: $03
    sub b                                         ; $7365: $90
    sub b                                         ; $7366: $90
    nop                                           ; $7367: $00
    nop                                           ; $7368: $00
    nop                                           ; $7369: $00
    rst $10                                       ; $736a: $d7
    dec b                                         ; $736b: $05
    dec b                                         ; $736c: $05
    nop                                           ; $736d: $00
    rst $38                                       ; $736e: $ff
    pop hl                                        ; $736f: $e1
    dec c                                         ; $7370: $0d
    ld a, [$21e7]                                 ; $7371: $fa $e7 $21
    inc l                                         ; $7374: $2c
    or $ee                                        ; $7375: $f6 $ee
    pop hl                                        ; $7377: $e1
    inc l                                         ; $7378: $2c
    ld hl, $e1e8                                  ; $7379: $21 $e8 $e1
    ld bc, $b601                                  ; $737c: $01 $01 $b6
    or [hl]                                       ; $737f: $b6
    call c, $e1e0                                 ; $7380: $dc $e0 $e1
    ei                                            ; $7383: $fb
    ld [c], a                                     ; $7384: $e2
    nop                                           ; $7385: $00
    db $10                                        ; $7386: $10
    and b                                         ; $7387: $a0
    call nc, $b4e1                                ; $7388: $d4 $e1 $b4
    or h                                          ; $738b: $b4
    ld [hl], $ce                                  ; $738c: $36 $ce
    pop hl                                        ; $738e: $e1
    ld b, $b2                                     ; $738f: $06 $b2
    ret z                                         ; $7391: $c8

    pop hl                                        ; $7392: $e1
    or b                                          ; $7393: $b0
    or b                                          ; $7394: $b0
    nop                                           ; $7395: $00
    nop                                           ; $7396: $00
    nop                                           ; $7397: $00
    or a                                          ; $7398: $b7
    rlca                                          ; $7399: $07
    rlca                                          ; $739a: $07
    nop                                           ; $739b: $00
    rst $38                                       ; $739c: $ff
    ldh [rNR10], a                                ; $739d: $e0 $10
    rra                                           ; $739f: $1f

jr_079_73a0:
    ld a, [$31e7]                                 ; $73a0: $fa $e7 $31
    db $ed                                        ; $73a3: $ed
    ld l, $ee                                     ; $73a4: $2e $ee
    pop hl                                        ; $73a6: $e1
    inc a                                         ; $73a7: $3c
    inc sp                                        ; $73a8: $33
    add sp, -$1f                                  ; $73a9: $e8 $e1
    inc bc                                        ; $73ab: $03
    inc bc                                        ; $73ac: $03
    cp $6d                                        ; $73ad: $fe $6d
    cp $e0                                        ; $73af: $fe $e0
    pop hl                                        ; $73b1: $e1
    rst $38                                       ; $73b2: $ff
    ld bc, $e1da                                  ; $73b3: $01 $da $e1
    jr jr_079_73a0                                ; $73b6: $18 $e8

    call nc, $dbe1                                ; $73b8: $d4 $e1 $db
    db $fc                                        ; $73bb: $fc
    db $fc                                        ; $73bc: $fc
    adc $e1                                       ; $73bd: $ce $e1
    ld c, $f2                                     ; $73bf: $0e $f2
    ret z                                         ; $73c1: $c8

    pop hl                                        ; $73c2: $e1
    ld hl, sp-$08                                 ; $73c3: $f8 $f8
    nop                                           ; $73c5: $00
    nop                                           ; $73c6: $00
    nop                                           ; $73c7: $00
    rst $38                                       ; $73c8: $ff
    rlca                                          ; $73c9: $07
    rlca                                          ; $73ca: $07
    nop                                           ; $73cb: $00
    ld [bc], a                                    ; $73cc: $02
    nop                                           ; $73cd: $00
    nop                                           ; $73ce: $00
    db $10                                        ; $73cf: $10
    rra                                           ; $73d0: $1f
    cp e                                          ; $73d1: $bb
    db $10                                        ; $73d2: $10
    ld [de], a                                    ; $73d3: $12
    ld a, [$31e5]                                 ; $73d4: $fa $e5 $31
    ld l, $00                                     ; $73d7: $2e $00
    db $f4                                        ; $73d9: $f4
    ldh [$3c], a                                  ; $73da: $e0 $3c
    rst $38                                       ; $73dc: $ff
    inc sp                                        ; $73dd: $33
    ld [de], a                                    ; $73de: $12
    stop                                          ; $73df: $10 $00
    nop                                           ; $73e1: $00
    inc bc                                        ; $73e2: $03
    inc bc                                        ; $73e3: $03
    cp $ff                                        ; $73e4: $fe $ff
    cp $01                                        ; $73e6: $fe $01
    ld c, c                                       ; $73e8: $49
    nop                                           ; $73e9: $00
    nop                                           ; $73ea: $00
    rst $38                                       ; $73eb: $ff
    ld bc, $fe49                                  ; $73ec: $01 $49 $fe
    ld a, [$18e0]                                 ; $73ef: $fa $e0 $18
    add sp, $48                                   ; $73f2: $e8 $48
    ld [$0000], sp                                ; $73f4: $08 $00 $00
    db $fc                                        ; $73f7: $fc
    ld a, a                                       ; $73f8: $7f
    db $fc                                        ; $73f9: $fc
    nop                                           ; $73fa: $00
    ld c, b                                       ; $73fb: $48
    nop                                           ; $73fc: $00
    nop                                           ; $73fd: $00
    ld c, $f2                                     ; $73fe: $0e $f2
    ei                                            ; $7400: $fb
    ldh [rTAC], a                                 ; $7401: $e0 $07
    nop                                           ; $7403: $00
    ld hl, sp-$08                                 ; $7404: $f8 $f8
    nop                                           ; $7406: $00
    nop                                           ; $7407: $00
    nop                                           ; $7408: $00
    rst $38                                       ; $7409: $ff
    rlca                                          ; $740a: $07
    rlca                                          ; $740b: $07
    nop                                           ; $740c: $00
    ld [bc], a                                    ; $740d: $02
    db $10                                        ; $740e: $10
    ld [de], a                                    ; $740f: $12
    db $10                                        ; $7410: $10
    rra                                           ; $7411: $1f
    db $fc                                        ; $7412: $fc
    db $fc                                        ; $7413: $fc
    ldh [$fa], a                                  ; $7414: $e0 $fa
    db $e4                                        ; $7416: $e4
    ld sp, $002e                                  ; $7417: $31 $2e $00
    ld [de], a                                    ; $741a: $12
    db $10                                        ; $741b: $10
    ld [bc], a                                    ; $741c: $02
    ei                                            ; $741d: $fb
    inc a                                         ; $741e: $3c
    inc sp                                        ; $741f: $33
    ei                                            ; $7420: $fb
    ldh [rSC], a                                  ; $7421: $e0 $02
    inc bc                                        ; $7423: $03
    inc bc                                        ; $7424: $03
    cp $fe                                        ; $7425: $fe $fe
    rst $38                                       ; $7427: $ff
    ld bc, HeaderRAMSize                          ; $7428: $01 $49 $01
    ld c, c                                       ; $742b: $49
    rst $38                                       ; $742c: $ff
    ld bc, $4949                                  ; $742d: $01 $49 $49
    rst $38                                       ; $7430: $ff
    ld [$1848], sp                                ; $7431: $08 $48 $18
    add sp, $48                                   ; $7434: $e8 $48
    ld [$4848], sp                                ; $7436: $08 $48 $48
    rst $38                                       ; $7439: $ff
    db $fc                                        ; $743a: $fc
    db $fc                                        ; $743b: $fc
    nop                                           ; $743c: $00
    ld c, b                                       ; $743d: $48
    nop                                           ; $743e: $00
    ld c, b                                       ; $743f: $48
    ld c, $f2                                     ; $7440: $0e $f2
    ld c, $fb                                     ; $7442: $0e $fb
    ldh [rOBP0], a                                ; $7444: $e0 $48
    ld hl, sp-$08                                 ; $7446: $f8 $f8
    nop                                           ; $7448: $00
    nop                                           ; $7449: $00
    nop                                           ; $744a: $00
    rst $38                                       ; $744b: $ff
    rlca                                          ; $744c: $07
    rlca                                          ; $744d: $07
    nop                                           ; $744e: $00
    ld [bc], a                                    ; $744f: $02
    jr jr_079_7465                                ; $7450: $18 $13

    db $10                                        ; $7452: $10
    rra                                           ; $7453: $1f
    rst $28                                       ; $7454: $ef
    db $10                                        ; $7455: $10
    ld [de], a                                    ; $7456: $12
    db $10                                        ; $7457: $10
    dec de                                        ; $7458: $1b
    ld a, [$11e1]                                 ; $7459: $fa $e1 $11
    ld a, [de]                                    ; $745c: $1a
    ld sp, $2e7f                                  ; $745d: $31 $7f $2e
    nop                                           ; $7460: $00
    ld [de], a                                    ; $7461: $12
    db $10                                        ; $7462: $10
    dec bc                                        ; $7463: $0b
    inc a                                         ; $7464: $3c

jr_079_7465:
    inc sp                                        ; $7465: $33
    ei                                            ; $7466: $fb
    ldh [rIE], a                                  ; $7467: $e0 $ff
    dec bc                                        ; $7469: $0b
    inc bc                                        ; $746a: $03
    inc bc                                        ; $746b: $03
    cp $fe                                        ; $746c: $fe $fe
    ld bc, HeaderRAMSize                          ; $746e: $01 $49 $01
    rst $38                                       ; $7471: $ff
    ld l, l                                       ; $7472: $6d
    rst $38                                       ; $7473: $ff
    ld bc, $4949                                  ; $7474: $01 $49 $49
    inc l                                         ; $7477: $2c
    ld c, h                                       ; $7478: $4c
    jr @+$01                                      ; $7479: $18 $ff

    add sp, $48                                   ; $747b: $e8 $48
    ld [$6868], sp                                ; $747d: $08 $68 $68
    db $fc                                        ; $7480: $fc
    db $fc                                        ; $7481: $fc
    nop                                           ; $7482: $00
    rst $38                                       ; $7483: $ff
    ld c, b                                       ; $7484: $48
    inc b                                         ; $7485: $04
    ld l, b                                       ; $7486: $68
    ld c, $f2                                     ; $7487: $0e $f2
    ld c, b                                       ; $7489: $48
    nop                                           ; $748a: $00
    ld l, h                                       ; $748b: $6c
    rlca                                          ; $748c: $07
    ld l, h                                       ; $748d: $6c
    ld hl, sp-$08                                 ; $748e: $f8 $f8
    nop                                           ; $7490: $00
    nop                                           ; $7491: $00
    nop                                           ; $7492: $00
    rst $38                                       ; $7493: $ff
    rlca                                          ; $7494: $07
    rlca                                          ; $7495: $07
    nop                                           ; $7496: $00
    ld [bc], a                                    ; $7497: $02
    jr jr_079_74b1                                ; $7498: $18 $17

    db $10                                        ; $749a: $10
    rra                                           ; $749b: $1f
    di                                            ; $749c: $f3
    db $10                                        ; $749d: $10
    ld [de], a                                    ; $749e: $12
    db $fc                                        ; $749f: $fc
    ldh [$fa], a                                  ; $74a0: $e0 $fa
    ldh [rNR11], a                                ; $74a2: $e0 $11
    ld e, $31                                     ; $74a4: $1e $31
    ld l, $ff                                     ; $74a6: $2e $ff
    nop                                           ; $74a8: $00
    ld [de], a                                    ; $74a9: $12
    jr nc, jr_079_74db                            ; $74aa: $30 $2f

    inc a                                         ; $74ac: $3c

jr_079_74ad:
    inc sp                                        ; $74ad: $33
    ld [de], a                                    ; $74ae: $12
    db $10                                        ; $74af: $10
    rst $38                                       ; $74b0: $ff

jr_079_74b1:
    rrca                                          ; $74b1: $0f
    rrca                                          ; $74b2: $0f
    inc bc                                        ; $74b3: $03
    inc bc                                        ; $74b4: $03
    cp $fe                                        ; $74b5: $fe $fe
    ld bc, $ff49                                  ; $74b7: $01 $49 $ff
    inc bc                                        ; $74ba: $03
    db $fd                                        ; $74bb: $fd
    rst $38                                       ; $74bc: $ff
    ld bc, $4949                                  ; $74bd: $01 $49 $49

Call_079_74c0:
    ld a, $de                                     ; $74c0: $3e $de
    rst $38                                       ; $74c2: $ff
    jr jr_079_74ad                                ; $74c3: $18 $e8

    ld c, b                                       ; $74c5: $48
    ld [$f8f8], sp                                ; $74c6: $08 $f8 $f8
    db $fc                                        ; $74c9: $fc
    db $fc                                        ; $74ca: $fc
    rst $38                                       ; $74cb: $ff
    nop                                           ; $74cc: $00
    ld c, b                                       ; $74cd: $48
    ld b, $fa                                     ; $74ce: $06 $fa
    ld c, $f2                                     ; $74d0: $0e $f2
    ld c, b                                       ; $74d2: $48
    nop                                           ; $74d3: $00
    rrca                                          ; $74d4: $0f
    db $fc                                        ; $74d5: $fc
    db $fc                                        ; $74d6: $fc
    ld hl, sp-$08                                 ; $74d7: $f8 $f8
    nop                                           ; $74d9: $00
    nop                                           ; $74da: $00

jr_079_74db:
    nop                                           ; $74db: $00
    rst $38                                       ; $74dc: $ff
    rlca                                          ; $74dd: $07
    rlca                                          ; $74de: $07
    inc b                                         ; $74df: $04
    ld [bc], a                                    ; $74e0: $02
    jr jr_079_74fa                                ; $74e1: $18 $17

    db $10                                        ; $74e3: $10
    rra                                           ; $74e4: $1f
    di                                            ; $74e5: $f3
    db $10                                        ; $74e6: $10
    ld d, $fc                                     ; $74e7: $16 $fc
    ldh [$fa], a                                  ; $74e9: $e0 $fa
    ldh [rNR11], a                                ; $74eb: $e0 $11
    ld e, $31                                     ; $74ed: $1e $31
    ld l, $ff                                     ; $74ef: $2e $ff
    jr nz, jr_079_7529                            ; $74f1: $20 $36

    jr nc, jr_079_7524                            ; $74f3: $30 $2f

    inc a                                         ; $74f5: $3c

jr_079_74f6:
    inc sp                                        ; $74f6: $33
    ld d, $14                                     ; $74f7: $16 $14
    rst $38                                       ; $74f9: $ff

jr_079_74fa:
    rrca                                          ; $74fa: $0f
    rrca                                          ; $74fb: $0f
    inc bc                                        ; $74fc: $03
    inc bc                                        ; $74fd: $03
    cp $fe                                        ; $74fe: $fe $fe
    inc bc                                        ; $7500: $03
    reti                                          ; $7501: $d9


    rst $38                                       ; $7502: $ff
    inc bc                                        ; $7503: $03
    db $fd                                        ; $7504: $fd
    rst $38                                       ; $7505: $ff
    ld bc, $5bdb                                  ; $7506: $01 $db $5b
    ld a, $de                                     ; $7509: $3e $de
    rst $38                                       ; $750b: $ff
    jr jr_079_74f6                                ; $750c: $18 $e8

    ret c                                         ; $750e: $d8

    ld [$f8f8], sp                                ; $750f: $08 $f8 $f8
    db $fc                                        ; $7512: $fc
    db $fc                                        ; $7513: $fc
    rst $38                                       ; $7514: $ff
    ld [bc], a                                    ; $7515: $02
    jp c, $fa06                                   ; $7516: $da $06 $fa

    ld c, $f2                                     ; $7519: $0e $f2
    jp c, Jump_000_0f02                           ; $751b: $da $02 $0f

    db $fc                                        ; $751e: $fc
    db $fc                                        ; $751f: $fc
    ld hl, sp-$08                                 ; $7520: $f8 $f8
    nop                                           ; $7522: $00
    nop                                           ; $7523: $00

jr_079_7524:
    nop                                           ; $7524: $00
    rst $38                                       ; $7525: $ff
    rlca                                          ; $7526: $07
    rlca                                          ; $7527: $07
    inc c                                         ; $7528: $0c

jr_079_7529:
    dec bc                                        ; $7529: $0b
    jr jr_079_7543                                ; $752a: $18 $17

    db $10                                        ; $752c: $10
    rra                                           ; $752d: $1f
    cp $fe                                        ; $752e: $fe $fe
    db $e3                                        ; $7530: $e3
    ld de, $111e                                  ; $7531: $11 $1e $11
    ld e, $31                                     ; $7534: $1e $31
    ld l, $20                                     ; $7536: $2e $20
    rst $38                                       ; $7538: $ff
    ccf                                           ; $7539: $3f
    jr nc, jr_079_756b                            ; $753a: $30 $2f

    inc a                                         ; $753c: $3c
    inc sp                                        ; $753d: $33
    rra                                           ; $753e: $1f
    inc e                                         ; $753f: $1c
    rrca                                          ; $7540: $0f
    rst $38                                       ; $7541: $ff
    rrca                                          ; $7542: $0f

jr_079_7543:
    inc bc                                        ; $7543: $03
    inc bc                                        ; $7544: $03
    cp $fe                                        ; $7545: $fe $fe
    inc bc                                        ; $7547: $03
    db $fd                                        ; $7548: $fd
    inc bc                                        ; $7549: $03
    rst $38                                       ; $754a: $ff
    db $fd                                        ; $754b: $fd
    rst $38                                       ; $754c: $ff
    ld bc, $7fff                                  ; $754d: $01 $ff $7f
    ld a, $de                                     ; $7550: $3e $de
    jr @+$01                                      ; $7552: $18 $ff

    add sp, -$08                                  ; $7554: $e8 $f8
    ld [$f8f8], sp                                ; $7556: $08 $f8 $f8
    db $fc                                        ; $7559: $fc
    db $fc                                        ; $755a: $fc
    ld b, $ff                                     ; $755b: $06 $ff
    ld a, [$fa06]                                 ; $755d: $fa $06 $fa
    ld c, $f2                                     ; $7560: $0e $f2
    cp $06                                        ; $7562: $fe $06
    db $fc                                        ; $7564: $fc
    rlca                                          ; $7565: $07
    db $fc                                        ; $7566: $fc
    ld hl, sp-$08                                 ; $7567: $f8 $f8
    nop                                           ; $7569: $00
    nop                                           ; $756a: $00

jr_079_756b:
    nop                                           ; $756b: $00
    call $ff00                                    ; $756c: $cd $00 $ff
    ld [c], a                                     ; $756f: $e2
    inc h                                         ; $7570: $24
    jr nz, @-$04                                  ; $7571: $20 $fa

    ld [c], a                                     ; $7573: $e2
    di                                            ; $7574: $f3
    ld [c], a                                     ; $7575: $e2
    jr nz, @+$06                                  ; $7576: $20 $04

    cp h                                          ; $7578: $bc
    xor $e2                                       ; $7579: $ee $e2
    ld a, [$20e2]                                 ; $757b: $fa $e2 $20
    jr nz, jr_079_7592                            ; $757e: $20 $12

    ld [de], a                                    ; $7580: $12
    sbc $e1                                       ; $7581: $de $e1
    db $10                                        ; $7583: $10
    ld d, l                                       ; $7584: $55
    ld [bc], a                                    ; $7585: $02
    ret c                                         ; $7586: $d8

    pop hl                                        ; $7587: $e1
    sub b                                         ; $7588: $90
    ld a, [$82e9]                                 ; $7589: $fa $e9 $82
    add sp, -$1e                                  ; $758c: $e8 $e2
    stop                                          ; $758e: $10 $00
    nop                                           ; $7590: $00
    nop                                           ; $7591: $00

jr_079_7592:
    ld l, l                                       ; $7592: $6d
    nop                                           ; $7593: $00
    rst $38                                       ; $7594: $ff
    ld [c], a                                     ; $7595: $e2
    dec l                                         ; $7596: $2d
    ld hl, $e1f8                                  ; $7597: $21 $f8 $e1
    ld l, l                                       ; $759a: $6d
    ld b, b                                       ; $759b: $40
    ld a, [c]                                     ; $759c: $f2
    pop hl                                        ; $759d: $e1
    db $db                                        ; $759e: $db
    jr z, jr_079_75e6                             ; $759f: $28 $45

    db $ec                                        ; $75a1: $ec
    pop hl                                        ; $75a2: $e1
    ld h, h                                       ; $75a3: $64
    inc c                                         ; $75a4: $0c
    and $e1                                       ; $75a5: $e6 $e1
    ld l, b                                       ; $75a7: $68
    ld l, b                                       ; $75a8: $68
    db $db                                        ; $75a9: $db
    ld d, $16                                     ; $75aa: $16 $16
    sbc $e1                                       ; $75ac: $de $e1
    inc [hl]                                      ; $75ae: $34
    ld [hl+], a                                   ; $75af: $22
    ret c                                         ; $75b0: $d8

    pop hl                                        ; $75b1: $e1
    or h                                          ; $75b2: $b4
    ld [bc], a                                    ; $75b3: $02
    ld [hl], $fa                                  ; $75b4: $36 $fa
    rst $20                                       ; $75b6: $e7
    sub b                                         ; $75b7: $90
    and [hl]                                      ; $75b8: $a6
    add $e1                                       ; $75b9: $c6 $e1
    inc d                                         ; $75bb: $14
    inc d                                         ; $75bc: $14
    nop                                           ; $75bd: $00
    nop                                           ; $75be: $00
    nop                                           ; $75bf: $00
    ld l, l                                       ; $75c0: $6d
    nop                                           ; $75c1: $00
    rst $38                                       ; $75c2: $ff
    ld [c], a                                     ; $75c3: $e2
    dec a                                         ; $75c4: $3d
    inc hl                                        ; $75c5: $23
    ld hl, sp-$1f                                 ; $75c6: $f8 $e1
    ld a, a                                       ; $75c8: $7f
    ld b, b                                       ; $75c9: $40
    ld a, [c]                                     ; $75ca: $f2
    pop hl                                        ; $75cb: $e1
    db $db                                        ; $75cc: $db
    cp d                                          ; $75cd: $ba
    rst $00                                       ; $75ce: $c7
    db $ec                                        ; $75cf: $ec
    pop hl                                        ; $75d0: $e1
    or $8e                                        ; $75d1: $f6 $8e
    and $e1                                       ; $75d3: $e6 $e1
    ld a, b                                       ; $75d5: $78
    ld a, b                                       ; $75d6: $78
    db $db                                        ; $75d7: $db
    ld e, $1e                                     ; $75d8: $1e $1e
    ldh [$e7], a                                  ; $75da: $e0 $e7
    cp l                                          ; $75dc: $bd
    ld b, e                                       ; $75dd: $43
    jp nc, $fde1                                  ; $75de: $d2 $e1 $fd

    inc bc                                        ; $75e1: $03
    ld [hl], $cc                                  ; $75e2: $36 $cc
    pop hl                                        ; $75e4: $e1
    reti                                          ; $75e5: $d9


jr_079_75e6:
    rst $20                                       ; $75e6: $e7
    add $e1                                       ; $75e7: $c6 $e1
    inc e                                         ; $75e9: $1c
    inc e                                         ; $75ea: $1c
    nop                                           ; $75eb: $00
    nop                                           ; $75ec: $00
    nop                                           ; $75ed: $00
    rst $38                                       ; $75ee: $ff
    nop                                           ; $75ef: $00
    nop                                           ; $75f0: $00
    db $10                                        ; $75f1: $10
    stop                                          ; $75f2: $10 $00
    nop                                           ; $75f4: $00
    dec a                                         ; $75f5: $3d
    inc hl                                        ; $75f6: $23
    cp a                                          ; $75f7: $bf
    ld [de], a                                    ; $75f8: $12
    nop                                           ; $75f9: $00
    nop                                           ; $75fa: $00
    nop                                           ; $75fb: $00
    ld a, a                                       ; $75fc: $7f
    ld b, b                                       ; $75fd: $40
    ld a, [$bae1]                                 ; $75fe: $fa $e1 $ba
    rst $38                                       ; $7601: $ff
    rst $00                                       ; $7602: $c7
    sub d                                         ; $7603: $92
    add d                                         ; $7604: $82
    nop                                           ; $7605: $00
    nop                                           ; $7606: $00
    or $8e                                        ; $7607: $f6 $8e
    add b                                         ; $7609: $80
    rst $38                                       ; $760a: $ff
    sub b                                         ; $760b: $90
    nop                                           ; $760c: $00
    nop                                           ; $760d: $00
    ld a, b                                       ; $760e: $78
    ld a, b                                       ; $760f: $78
    ld e, $1e                                     ; $7610: $1e $1e
    add hl, bc                                    ; $7612: $09
    db $fd                                        ; $7613: $fd
    ld bc, $e1e0                                  ; $7614: $01 $e0 $e1
    ld c, c                                       ; $7617: $49
    ld b, c                                       ; $7618: $41
    nop                                           ; $7619: $00
    nop                                           ; $761a: $00
    cp l                                          ; $761b: $bd
    ld b, e                                       ; $761c: $43
    db $ed                                        ; $761d: $ed
    ld c, c                                       ; $761e: $49
    db $f4                                        ; $761f: $f4
    ldh [$fd], a                                  ; $7620: $e0 $fd
    inc bc                                        ; $7622: $03
    ld a, [$d9e1]                                 ; $7623: $fa $e1 $d9
    rst $20                                       ; $7626: $e7
    ld b, c                                       ; $7627: $41
    rra                                           ; $7628: $1f
    ld c, c                                       ; $7629: $49
    nop                                           ; $762a: $00
    nop                                           ; $762b: $00
    inc e                                         ; $762c: $1c
    inc e                                         ; $762d: $1c
    nop                                           ; $762e: $00
    nop                                           ; $762f: $00
    nop                                           ; $7630: $00
    rst $38                                       ; $7631: $ff
    nop                                           ; $7632: $00
    nop                                           ; $7633: $00
    db $10                                        ; $7634: $10
    db $10                                        ; $7635: $10
    ld [bc], a                                    ; $7636: $02
    ld [de], a                                    ; $7637: $12
    dec a                                         ; $7638: $3d
    inc hl                                        ; $7639: $23
    rst $38                                       ; $763a: $ff
    ld [de], a                                    ; $763b: $12
    nop                                           ; $763c: $00
    ld [de], a                                    ; $763d: $12
    nop                                           ; $763e: $00
    ld a, a                                       ; $763f: $7f
    ld b, b                                       ; $7640: $40
    ld [de], a                                    ; $7641: $12
    nop                                           ; $7642: $00
    rst $38                                       ; $7643: $ff
    db $10                                        ; $7644: $10
    ld [bc], a                                    ; $7645: $02
    cp d                                          ; $7646: $ba
    rst $00                                       ; $7647: $c7
    sub d                                         ; $7648: $92
    add d                                         ; $7649: $82
    sub d                                         ; $764a: $92
    add d                                         ; $764b: $82
    rst $38                                       ; $764c: $ff
    or $8e                                        ; $764d: $f6 $8e
    add b                                         ; $764f: $80
    sub b                                         ; $7650: $90
    sub b                                         ; $7651: $90
    sub b                                         ; $7652: $90
    ld a, b                                       ; $7653: $78
    ld a, b                                       ; $7654: $78
    rst $38                                       ; $7655: $ff
    ld e, $1e                                     ; $7656: $1e $1e
    add hl, bc                                    ; $7658: $09
    ld bc, $0109                                  ; $7659: $01 $09 $01
    dec a                                         ; $765c: $3d
    inc hl                                        ; $765d: $23
    rst $38                                       ; $765e: $ff
    ld c, c                                       ; $765f: $49
    ld b, c                                       ; $7660: $41
    ld c, c                                       ; $7661: $49
    ld b, c                                       ; $7662: $41
    cp l                                          ; $7663: $bd
    ld b, e                                       ; $7664: $43
    ld c, c                                       ; $7665: $49
    ld bc, $49ff                                  ; $7666: $01 $ff $49
    ld bc, $03fd                                  ; $7669: $01 $fd $03
    ld c, c                                       ; $766c: $49
    ld bc, $4109                                  ; $766d: $01 $09 $41
    rst $38                                       ; $7670: $ff
    reti                                          ; $7671: $d9


    rst $20                                       ; $7672: $e7
    ld b, c                                       ; $7673: $41
    ld c, c                                       ; $7674: $49

Jump_079_7675:
    ld [$1c08], sp                                ; $7675: $08 $08 $1c
    inc e                                         ; $7678: $1c
    nop                                           ; $7679: $00
    nop                                           ; $767a: $00
    nop                                           ; $767b: $00
    rst $38                                       ; $767c: $ff
    nop                                           ; $767d: $00
    nop                                           ; $767e: $00
    db $10                                        ; $767f: $10
    db $10                                        ; $7680: $10
    ld a, [bc]                                    ; $7681: $0a
    ld [de], a                                    ; $7682: $12
    dec a                                         ; $7683: $3d
    inc hl                                        ; $7684: $23
    rst $38                                       ; $7685: $ff
    ld [de], a                                    ; $7686: $12
    nop                                           ; $7687: $00
    ld e, e                                       ; $7688: $5b
    ld b, b                                       ; $7689: $40
    ld a, a                                       ; $768a: $7f
    ld b, b                                       ; $768b: $40
    ld [de], a                                    ; $768c: $12
    nop                                           ; $768d: $00
    rst $38                                       ; $768e: $ff
    ld e, c                                       ; $768f: $59
    ld b, d                                       ; $7690: $42
    cp d                                          ; $7691: $ba
    rst $00                                       ; $7692: $c7
    sub d                                         ; $7693: $92
    add d                                         ; $7694: $82
    db $d3                                        ; $7695: $d3
    adc e                                         ; $7696: $8b
    rst $38                                       ; $7697: $ff
    or $8e                                        ; $7698: $f6 $8e
    add b                                         ; $769a: $80
    sub b                                         ; $769b: $90
    ret c                                         ; $769c: $d8

    ret c                                         ; $769d: $d8

    ld a, b                                       ; $769e: $78
    ld a, b                                       ; $769f: $78
    rst $38                                       ; $76a0: $ff
    ld e, $1e                                     ; $76a1: $1e $1e
    add hl, bc                                    ; $76a3: $09
    ld bc, $212d                                  ; $76a4: $01 $2d $21
    dec a                                         ; $76a7: $3d
    inc hl                                        ; $76a8: $23
    rst $38                                       ; $76a9: $ff
    ld c, c                                       ; $76aa: $49
    ld b, c                                       ; $76ab: $41
    ld l, l                                       ; $76ac: $6d
    ld b, c                                       ; $76ad: $41
    cp l                                          ; $76ae: $bd
    ld b, e                                       ; $76af: $43
    ld c, c                                       ; $76b0: $49
    ld bc, $6dff                                  ; $76b1: $01 $ff $6d
    ld bc, $03fd                                  ; $76b4: $01 $fd $03
    ld c, c                                       ; $76b7: $49
    ld bc, $412d                                  ; $76b8: $01 $2d $41
    rst $38                                       ; $76bb: $ff
    reti                                          ; $76bc: $d9


    rst $20                                       ; $76bd: $e7
    ld b, c                                       ; $76be: $41
    ld c, c                                       ; $76bf: $49
    inc l                                         ; $76c0: $2c
    inc l                                         ; $76c1: $2c
    inc e                                         ; $76c2: $1c
    inc e                                         ; $76c3: $1c
    nop                                           ; $76c4: $00
    nop                                           ; $76c5: $00
    nop                                           ; $76c6: $00
    rst $38                                       ; $76c7: $ff
    nop                                           ; $76c8: $00
    nop                                           ; $76c9: $00
    db $10                                        ; $76ca: $10
    db $10                                        ; $76cb: $10
    ld a, [hl+]                                   ; $76cc: $2a
    ld [hl], $3d                                  ; $76cd: $36 $3d
    inc hl                                        ; $76cf: $23
    rst $38                                       ; $76d0: $ff
    ld [de], a                                    ; $76d1: $12
    nop                                           ; $76d2: $00
    ld e, a                                       ; $76d3: $5f
    ld h, b                                       ; $76d4: $60
    ld a, a                                       ; $76d5: $7f
    ld b, b                                       ; $76d6: $40
    ld [de], a                                    ; $76d7: $12
    nop                                           ; $76d8: $00
    rst $38                                       ; $76d9: $ff
    ld a, c                                       ; $76da: $79
    ld b, [hl]                                    ; $76db: $46
    cp d                                          ; $76dc: $ba
    rst $00                                       ; $76dd: $c7
    sub d                                         ; $76de: $92
    add d                                         ; $76df: $82
    di                                            ; $76e0: $f3
    adc a                                         ; $76e1: $8f
    rst $38                                       ; $76e2: $ff
    or $8e                                        ; $76e3: $f6 $8e
    add b                                         ; $76e5: $80
    sub b                                         ; $76e6: $90
    db $fc                                        ; $76e7: $fc
    db $fc                                        ; $76e8: $fc
    ld a, b                                       ; $76e9: $78
    ld a, b                                       ; $76ea: $78
    rst $38                                       ; $76eb: $ff
    ld e, $1e                                     ; $76ec: $1e $1e
    add hl, bc                                    ; $76ee: $09
    ld bc, $233d                                  ; $76ef: $01 $3d $23
    dec a                                         ; $76f2: $3d
    inc hl                                        ; $76f3: $23
    rst $38                                       ; $76f4: $ff
    ld c, c                                       ; $76f5: $49
    ld b, c                                       ; $76f6: $41
    ld a, l                                       ; $76f7: $7d
    jp $43bd                                      ; $76f8: $c3 $bd $43


    ld c, c                                       ; $76fb: $49
    ld bc, $fdff                                  ; $76fc: $01 $ff $fd
    inc bc                                        ; $76ff: $03
    db $fd                                        ; $7700: $fd
    inc bc                                        ; $7701: $03
    ld c, c                                       ; $7702: $49
    ld bc, $c3bd                                  ; $7703: $01 $bd $c3
    rst $38                                       ; $7706: $ff
    reti                                          ; $7707: $d9


    rst $20                                       ; $7708: $e7
    ld b, c                                       ; $7709: $41
    ld c, c                                       ; $770a: $49
    ld a, $3e                                     ; $770b: $3e $3e
    inc e                                         ; $770d: $1c
    inc e                                         ; $770e: $1c
    nop                                           ; $770f: $00
    nop                                           ; $7710: $00
    nop                                           ; $7711: $00
    rst $38                                       ; $7712: $ff
    nop                                           ; $7713: $00
    nop                                           ; $7714: $00
    inc d                                         ; $7715: $14
    inc d                                         ; $7716: $14
    ld a, [hl+]                                   ; $7717: $2a
    ld [hl], $3d                                  ; $7718: $36 $3d
    inc hl                                        ; $771a: $23
    rst $38                                       ; $771b: $ff
    ld [hl], $20                                  ; $771c: $36 $20
    ld e, a                                       ; $771e: $5f
    ld h, b                                       ; $771f: $60
    ld a, a                                       ; $7720: $7f
    ld b, b                                       ; $7721: $40
    ld [hl], $00                                  ; $7722: $36 $00
    rst $38                                       ; $7724: $ff
    ld a, c                                       ; $7725: $79
    ld b, [hl]                                    ; $7726: $46
    cp d                                          ; $7727: $ba
    rst $00                                       ; $7728: $c7
    or d                                          ; $7729: $b2
    add [hl]                                      ; $772a: $86
    di                                            ; $772b: $f3
    adc a                                         ; $772c: $8f
    rst $38                                       ; $772d: $ff
    or $8e                                        ; $772e: $f6 $8e
    add h                                         ; $7730: $84
    or h                                          ; $7731: $b4
    db $fc                                        ; $7732: $fc
    db $fc                                        ; $7733: $fc
    ld a, b                                       ; $7734: $78
    ld a, b                                       ; $7735: $78
    rst $38                                       ; $7736: $ff
    ld e, $1e                                     ; $7737: $1e $1e
    add hl, bc                                    ; $7739: $09
    inc de                                        ; $773a: $13
    dec a                                         ; $773b: $3d
    inc hl                                        ; $773c: $23
    dec a                                         ; $773d: $3d
    inc hl                                        ; $773e: $23
    rst $38                                       ; $773f: $ff
    reti                                          ; $7740: $d9


    jp $c37d                                      ; $7741: $c3 $7d $c3


    cp l                                          ; $7744: $bd
    ld b, e                                       ; $7745: $43
    reti                                          ; $7746: $d9


    inc bc                                        ; $7747: $03
    db $fd                                        ; $7748: $fd
    db $fd                                        ; $7749: $fd
    cp $e0                                        ; $774a: $fe $e0
    ld e, c                                       ; $774c: $59
    add e                                         ; $774d: $83
    cp l                                          ; $774e: $bd
    jp $e7d9                                      ; $774f: $c3 $d9 $e7


    ccf                                           ; $7752: $3f
    ld b, e                                       ; $7753: $43
    ld e, e                                       ; $7754: $5b
    ld a, $3e                                     ; $7755: $3e $3e
    inc e                                         ; $7757: $1c
    inc e                                         ; $7758: $1c
    nop                                           ; $7759: $00
    nop                                           ; $775a: $00
    nop                                           ; $775b: $00
    rst $38                                       ; $775c: $ff
    nop                                           ; $775d: $00
    nop                                           ; $775e: $00
    inc e                                         ; $775f: $1c
    inc e                                         ; $7760: $1c
    ld a, [hl+]                                   ; $7761: $2a
    ld [hl], $3d                                  ; $7762: $36 $3d
    inc hl                                        ; $7764: $23
    rst $38                                       ; $7765: $ff
    ld a, $21                                     ; $7766: $3e $21
    ld e, a                                       ; $7768: $5f
    ld h, b                                       ; $7769: $60
    ld a, a                                       ; $776a: $7f
    ld b, b                                       ; $776b: $40
    ld a, a                                       ; $776c: $7f
    ld b, b                                       ; $776d: $40
    rst $38                                       ; $776e: $ff
    ld a, c                                       ; $776f: $79
    ld b, [hl]                                    ; $7770: $46
    cp d                                          ; $7771: $ba
    rst $00                                       ; $7772: $c7
    ei                                            ; $7773: $fb
    add a                                         ; $7774: $87
    di                                            ; $7775: $f3
    adc a                                         ; $7776: $8f
    rst $38                                       ; $7777: $ff
    or $8e                                        ; $7778: $f6 $8e
    add h                                         ; $777a: $84
    db $fc                                        ; $777b: $fc
    db $fc                                        ; $777c: $fc
    db $fc                                        ; $777d: $fc
    ld a, b                                       ; $777e: $78
    ld a, b                                       ; $777f: $78

Call_079_7780:
    rst $38                                       ; $7780: $ff
    ld e, $1e                                     ; $7781: $1e $1e
    dec l                                         ; $7783: $2d
    inc sp                                        ; $7784: $33
    dec a                                         ; $7785: $3d
    inc hl                                        ; $7786: $23
    dec a                                         ; $7787: $3d
    inc hl                                        ; $7788: $23
    rst $38                                       ; $7789: $ff
    db $dd                                        ; $778a: $dd
    db $e3                                        ; $778b: $e3
    ld a, l                                       ; $778c: $7d
    jp $43bd                                      ; $778d: $c3 $bd $43


    db $fd                                        ; $7790: $fd
    inc bc                                        ; $7791: $03
    cp $fe                                        ; $7792: $fe $fe
    pop hl                                        ; $7794: $e1
    ld a, l                                       ; $7795: $7d
    add e                                         ; $7796: $83
    cp l                                          ; $7797: $bd
    jp $e7d9                                      ; $7798: $c3 $d9 $e7


    ld h, e                                       ; $779b: $63
    rra                                           ; $779c: $1f
    ld a, a                                       ; $779d: $7f
    ld a, $3e                                     ; $779e: $3e $3e
    inc e                                         ; $77a0: $1c
    inc e                                         ; $77a1: $1c
    nop                                           ; $77a2: $00
    nop                                           ; $77a3: $00
    nop                                           ; $77a4: $00
    ld h, a                                       ; $77a5: $67
    inc b                                         ; $77a6: $04
    inc b                                         ; $77a7: $04
    nop                                           ; $77a8: $00
    rst $38                                       ; $77a9: $ff
    pop hl                                        ; $77aa: $e1
    ld a, [$20e2]                                 ; $77ab: $fa $e2 $20
    inc h                                         ; $77ae: $24
    ld a, [$bce2]                                 ; $77af: $fa $e2 $bc
    xor $e3                                       ; $77b2: $ee $e3
    db $f4                                        ; $77b4: $f4
    ld [c], a                                     ; $77b5: $e2
    inc h                                         ; $77b6: $24
    inc h                                         ; $77b7: $24
    add b                                         ; $77b8: $80
    add b                                         ; $77b9: $80
    ldh [$e1], a                                  ; $77ba: $e0 $e1
    db $10                                        ; $77bc: $10
    or [hl]                                       ; $77bd: $b6
    ld a, [$80e2]                                 ; $77be: $fa $e2 $80
    sub b                                         ; $77c1: $90
    db $f4                                        ; $77c2: $f4
    rst $20                                       ; $77c3: $e7
    sub b                                         ; $77c4: $90
    db $10                                        ; $77c5: $10
    xor $e2                                       ; $77c6: $ee $e2
    add b                                         ; $77c8: $80
    nop                                           ; $77c9: $00
    nop                                           ; $77ca: $00
    nop                                           ; $77cb: $00
    ld h, a                                       ; $77cc: $67
    dec c                                         ; $77cd: $0d
    dec c                                         ; $77ce: $0d
    nop                                           ; $77cf: $00
    rst $38                                       ; $77d0: $ff
    pop hl                                        ; $77d1: $e1
    ld a, [$21e2]                                 ; $77d2: $fa $e2 $21
    dec l                                         ; $77d5: $2d
    db $f4                                        ; $77d6: $f4
    pop hl                                        ; $77d7: $e1
    db $db                                        ; $77d8: $db
    ld h, b                                       ; $77d9: $60
    ld c, l                                       ; $77da: $4d
    xor $e1                                       ; $77db: $ee $e1
    ld b, b                                       ; $77dd: $40
    ld l, l                                       ; $77de: $6d
    add sp, -$1f                                  ; $77df: $e8 $e1
    dec l                                         ; $77e1: $2d
    dec l                                         ; $77e2: $2d
    ld l, e                                       ; $77e3: $6b
    and b                                         ; $77e4: $a0
    and b                                         ; $77e5: $a0
    ldh [$e1], a                                  ; $77e6: $e0 $e1
    db $10                                        ; $77e8: $10
    ld a, [$84e2]                                 ; $77e9: $fa $e2 $84
    or h                                          ; $77ec: $b4
    call nc, $dbe1                                ; $77ed: $d4 $e1 $db
    inc d                                         ; $77f0: $14
    and h                                         ; $77f1: $a4
    adc $e1                                       ; $77f2: $ce $e1
    or b                                          ; $77f4: $b0
    db $10                                        ; $77f5: $10
    ret z                                         ; $77f6: $c8

    pop hl                                        ; $77f7: $e1
    add b                                         ; $77f8: $80
    add b                                         ; $77f9: $80
    nop                                           ; $77fa: $00
    nop                                           ; $77fb: $00
    nop                                           ; $77fc: $00
    or a                                          ; $77fd: $b7
    rrca                                          ; $77fe: $0f
    rrca                                          ; $77ff: $0f
    nop                                           ; $7800: $00
    rst $38                                       ; $7801: $ff
    ldh [rNR10], a                                ; $7802: $e0 $10
    rra                                           ; $7804: $1f

jr_079_7805:
    ld a, [$23e1]                                 ; $7805: $fa $e1 $23
    ld l, l                                       ; $7808: $6d
    dec a                                         ; $7809: $3d
    db $f4                                        ; $780a: $f4
    pop hl                                        ; $780b: $e1
    ld h, b                                       ; $780c: $60
    ld e, a                                       ; $780d: $5f
    xor $e1                                       ; $780e: $ee $e1
    ld b, b                                       ; $7810: $40
    ld a, a                                       ; $7811: $7f
    add sp, -$1f                                  ; $7812: $e8 $e1
    ld l, a                                       ; $7814: $6f
    ccf                                           ; $7815: $3f
    ccf                                           ; $7816: $3f
    ldh [$e0], a                                  ; $7817: $e0 $e0
    ldh [$e1], a                                  ; $7819: $e0 $e1
    jr jr_079_7805                                ; $781b: $18 $e8

    jp c, $dbe1                                   ; $781d: $da $e1 $db

    adc h                                         ; $7820: $8c
    db $f4                                        ; $7821: $f4
    call nc, $1ce1                                ; $7822: $d4 $e1 $1c
    db $e4                                        ; $7825: $e4
    adc $e1                                       ; $7826: $ce $e1
    ld hl, sp+$18                                 ; $7828: $f8 $18
    ld b, $c8                                     ; $782a: $06 $c8
    pop hl                                        ; $782c: $e1
    add b                                         ; $782d: $80
    add b                                         ; $782e: $80
    nop                                           ; $782f: $00
    nop                                           ; $7830: $00
    nop                                           ; $7831: $00
    rst $38                                       ; $7832: $ff
    rrca                                          ; $7833: $0f
    rrca                                          ; $7834: $0f

jr_079_7835:
    db $10                                        ; $7835: $10
    ld [de], a                                    ; $7836: $12
    nop                                           ; $7837: $00
    nop                                           ; $7838: $00
    db $10                                        ; $7839: $10
    rra                                           ; $783a: $1f
    cp $fa                                        ; $783b: $fe $fa
    pop hl                                        ; $783d: $e1
    inc hl                                        ; $783e: $23
    dec a                                         ; $783f: $3d
    ld [bc], a                                    ; $7840: $02
    stop                                          ; $7841: $10 $00
    nop                                           ; $7843: $00
    ld h, b                                       ; $7844: $60
    db $db                                        ; $7845: $db
    ld e, a                                       ; $7846: $5f
    nop                                           ; $7847: $00
    xor $e0                                       ; $7848: $ee $e0
    ld b, b                                       ; $784a: $40
    ld a, a                                       ; $784b: $7f
    jp hl                                         ; $784c: $e9


    ldh [rP1], a                                  ; $784d: $e0 $00
    ccf                                           ; $784f: $3f
    rst $38                                       ; $7850: $ff
    ccf                                           ; $7851: $3f
    ldh [$e0], a                                  ; $7852: $e0 $e0
    nop                                           ; $7854: $00
    ld b, b                                       ; $7855: $40
    nop                                           ; $7856: $00
    nop                                           ; $7857: $00
    jr jr_079_7835                                ; $7858: $18 $db

    add sp, $08                                   ; $785a: $e8 $08
    ld a, [$8ce0]                                 ; $785c: $fa $e0 $8c
    db $f4                                        ; $785f: $f4
    ld a, [$1ce1]                                 ; $7860: $fa $e1 $1c
    db $e4                                        ; $7863: $e4
    ld a, a                                       ; $7864: $7f
    ld [$0048], sp                                ; $7865: $08 $48 $00
    nop                                           ; $7868: $00
    ld hl, sp+$18                                 ; $7869: $f8 $18
    ld b, b                                       ; $786b: $40
    add sp, -$20                                  ; $786c: $e8 $e0
    inc bc                                        ; $786e: $03
    add b                                         ; $786f: $80
    add b                                         ; $7870: $80
    nop                                           ; $7871: $00
    nop                                           ; $7872: $00
    nop                                           ; $7873: $00
    rst $28                                       ; $7874: $ef
    rrca                                          ; $7875: $0f
    rrca                                          ; $7876: $0f
    db $10                                        ; $7877: $10

Call_079_7878:
    ld [de], a                                    ; $7878: $12
    cp $e0                                        ; $7879: $fe $e0
    rra                                           ; $787b: $1f
    db $10                                        ; $787c: $10
    ld [de], a                                    ; $787d: $12
    rst $38                                       ; $787e: $ff
    ld [de], a                                    ; $787f: $12
    nop                                           ; $7880: $00
    inc hl                                        ; $7881: $23
    dec a                                         ; $7882: $3d
    ld [bc], a                                    ; $7883: $02
    stop                                          ; $7884: $10 $00
    ld [de], a                                    ; $7886: $12
    rst $38                                       ; $7887: $ff
    ld h, b                                       ; $7888: $60
    ld e, a                                       ; $7889: $5f
    nop                                           ; $788a: $00
    ld [de], a                                    ; $788b: $12
    nop                                           ; $788c: $00
    ld [de], a                                    ; $788d: $12
    ld b, b                                       ; $788e: $40
    ld a, a                                       ; $788f: $7f
    cp $fb                                        ; $7890: $fe $fb
    ldh [rNR12], a                                ; $7892: $e0 $12
    ccf                                           ; $7894: $3f
    ccf                                           ; $7895: $3f
    ldh [$e0], a                                  ; $7896: $e0 $e0
    nop                                           ; $7898: $00
    ld b, b                                       ; $7899: $40
    rst $38                                       ; $789a: $ff
    ld [$1848], sp                                ; $789b: $08 $48 $18
    add sp, $08                                   ; $789e: $e8 $08
    ld b, b                                       ; $78a0: $40
    ld [$fb40], sp                                ; $78a1: $08 $40 $fb
    adc h                                         ; $78a4: $8c
    db $f4                                        ; $78a5: $f4
    ld a, [$1ce1]                                 ; $78a6: $fa $e1 $1c
    db $e4                                        ; $78a9: $e4
    ld [$0848], sp                                ; $78aa: $08 $48 $08
    ld l, a                                       ; $78ad: $6f
    ld c, b                                       ; $78ae: $48
    ld hl, sp+$18                                 ; $78af: $f8 $18
    ld b, b                                       ; $78b1: $40
    rst $38                                       ; $78b2: $ff
    ldh [$80], a                                  ; $78b3: $e0 $80
    add b                                         ; $78b5: $80
    nop                                           ; $78b6: $00
    nop                                           ; $78b7: $00
    nop                                           ; $78b8: $00
    rst $38                                       ; $78b9: $ff
    rrca                                          ; $78ba: $0f
    rrca                                          ; $78bb: $0f
    db $10                                        ; $78bc: $10
    ld [de], a                                    ; $78bd: $12
    db $10                                        ; $78be: $10
    dec de                                        ; $78bf: $1b
    db $10                                        ; $78c0: $10
    rra                                           ; $78c1: $1f
    rst $38                                       ; $78c2: $ff
    db $10                                        ; $78c3: $10
    ld [de], a                                    ; $78c4: $12
    inc de                                        ; $78c5: $13
    add hl, bc                                    ; $78c6: $09
    inc hl                                        ; $78c7: $23
    dec a                                         ; $78c8: $3d
    ld [bc], a                                    ; $78c9: $02
    db $10                                        ; $78ca: $10
    rst $38                                       ; $78cb: $ff
    nop                                           ; $78cc: $00
    dec de                                        ; $78cd: $1b
    ld h, b                                       ; $78ce: $60
    ld e, a                                       ; $78cf: $5f
    nop                                           ; $78d0: $00
    ld [de], a                                    ; $78d1: $12
    ld b, b                                       ; $78d2: $40
    ld e, e                                       ; $78d3: $5b
    rst $38                                       ; $78d4: $ff
    ld b, b                                       ; $78d5: $40
    ld a, a                                       ; $78d6: $7f
    ld [de], a                                    ; $78d7: $12
    nop                                           ; $78d8: $00
    ld e, e                                       ; $78d9: $5b
    ld e, e                                       ; $78da: $5b
    ccf                                           ; $78db: $3f
    ccf                                           ; $78dc: $3f
    rst $38                                       ; $78dd: $ff
    ldh [$e0], a                                  ; $78de: $e0 $e0
    nop                                           ; $78e0: $00
    ld b, b                                       ; $78e1: $40
    ld [$1868], sp                                ; $78e2: $08 $68 $18
    add sp, -$41                                  ; $78e5: $e8 $bf
    ld [$0c40], sp                                ; $78e7: $08 $40 $0c
    ld h, h                                       ; $78ea: $64
    adc h                                         ; $78eb: $8c
    db $f4                                        ; $78ec: $f4
    ld a, [$1ce1]                                 ; $78ed: $fa $e1 $1c
    rst $38                                       ; $78f0: $ff
    db $e4                                        ; $78f1: $e4
    ld [$2c48], sp                                ; $78f2: $08 $48 $2c
    ld c, h                                       ; $78f5: $4c
    ld hl, sp+$18                                 ; $78f6: $f8 $18
    ld b, b                                       ; $78f8: $40
    rra                                           ; $78f9: $1f
    ld b, b                                       ; $78fa: $40
    ld h, b                                       ; $78fb: $60
    ld h, b                                       ; $78fc: $60
    add b                                         ; $78fd: $80
    add b                                         ; $78fe: $80
    nop                                           ; $78ff: $00
    nop                                           ; $7900: $00
    nop                                           ; $7901: $00
    cp a                                          ; $7902: $bf
    rrca                                          ; $7903: $0f
    rrca                                          ; $7904: $0f
    db $10                                        ; $7905: $10
    ld [de], a                                    ; $7906: $12
    db $10                                        ; $7907: $10
    rra                                           ; $7908: $1f
    cp $e0                                        ; $7909: $fe $e0
    ld [de], a                                    ; $790b: $12
    rst $38                                       ; $790c: $ff
    inc sp                                        ; $790d: $33
    dec l                                         ; $790e: $2d
    inc hl                                        ; $790f: $23
    dec a                                         ; $7910: $3d
    ld [bc], a                                    ; $7911: $02
    db $10                                        ; $7912: $10
    jr nz, @+$41                                  ; $7913: $20 $3f

    rst $38                                       ; $7915: $ff

jr_079_7916:
    ld h, b                                       ; $7916: $60
    ld e, a                                       ; $7917: $5f
    nop                                           ; $7918: $00
    ld [de], a                                    ; $7919: $12
    ld b, b                                       ; $791a: $40
    ld a, a                                       ; $791b: $7f
    ld b, b                                       ; $791c: $40
    ld a, a                                       ; $791d: $7f
    rst $38                                       ; $791e: $ff
    ld [de], a                                    ; $791f: $12
    nop                                           ; $7920: $00
    ld a, a                                       ; $7921: $7f
    ld a, a                                       ; $7922: $7f
    ccf                                           ; $7923: $3f
    ccf                                           ; $7924: $3f
    ldh [$e0], a                                  ; $7925: $e0 $e0
    rst $38                                       ; $7927: $ff
    nop                                           ; $7928: $00
    ld b, b                                       ; $7929: $40
    jr @-$16                                      ; $792a: $18 $e8

    jr jr_079_7916                                ; $792c: $18 $e8

    ld [$ff40], sp                                ; $792e: $08 $40 $ff
    adc h                                         ; $7931: $8c
    db $f4                                        ; $7932: $f4
    adc h                                         ; $7933: $8c
    db $f4                                        ; $7934: $f4
    ld [$0c40], sp                                ; $7935: $08 $40 $0c
    db $f4                                        ; $7938: $f4
    rst $38                                       ; $7939: $ff
    inc e                                         ; $793a: $1c
    db $e4                                        ; $793b: $e4
    ld [$3c48], sp                                ; $793c: $08 $48 $3c
    call z, $18f8                                 ; $793f: $cc $f8 $18
    ccf                                           ; $7942: $3f
    ld b, b                                       ; $7943: $40
    ld b, b                                       ; $7944: $40
    ldh [$e0], a                                  ; $7945: $e0 $e0
    add b                                         ; $7947: $80
    add b                                         ; $7948: $80
    nop                                           ; $7949: $00
    nop                                           ; $794a: $00
    nop                                           ; $794b: $00
    cp a                                          ; $794c: $bf
    rrca                                          ; $794d: $0f
    rrca                                          ; $794e: $0f
    db $10                                        ; $794f: $10

jr_079_7950:
    ld d, $10                                     ; $7950: $16 $10
    rra                                           ; $7952: $1f
    cp $e0                                        ; $7953: $fe $e0
    ld d, $ff                                     ; $7955: $16 $ff
    inc sp                                        ; $7957: $33
    dec l                                         ; $7958: $2d
    inc hl                                        ; $7959: $23
    dec a                                         ; $795a: $3d
    ld [hl+], a                                   ; $795b: $22
    inc [hl]                                      ; $795c: $34
    jr nz, jr_079_799e                            ; $795d: $20 $3f

    rst $38                                       ; $795f: $ff

jr_079_7960:
    ld h, b                                       ; $7960: $60
    ld e, a                                       ; $7961: $5f
    nop                                           ; $7962: $00
    ld [hl], $40                                  ; $7963: $36 $40
    ld a, a                                       ; $7965: $7f
    ld b, b                                       ; $7966: $40
    ld a, a                                       ; $7967: $7f
    rst $38                                       ; $7968: $ff
    ld [hl], $00                                  ; $7969: $36 $00
    ld a, a                                       ; $796b: $7f
    ld a, a                                       ; $796c: $7f
    ccf                                           ; $796d: $3f
    ccf                                           ; $796e: $3f
    ldh [$e0], a                                  ; $796f: $e0 $e0
    rst $38                                       ; $7971: $ff
    db $10                                        ; $7972: $10
    ret nc                                        ; $7973: $d0

    jr @-$16                                      ; $7974: $18 $e8

    jr jr_079_7960                                ; $7976: $18 $e8

    adc b                                         ; $7978: $88
    ld d, b                                       ; $7979: $50
    rst $38                                       ; $797a: $ff
    adc h                                         ; $797b: $8c
    db $f4                                        ; $797c: $f4
    adc h                                         ; $797d: $8c
    db $f4                                        ; $797e: $f4
    ld [$0cd0], sp                                ; $797f: $08 $d0 $0c
    db $f4                                        ; $7982: $f4
    rst $38                                       ; $7983: $ff
    inc e                                         ; $7984: $1c
    db $e4                                        ; $7985: $e4
    jr jr_079_7950                                ; $7986: $18 $c8

    inc a                                         ; $7988: $3c
    call z, $18f8                                 ; $7989: $cc $f8 $18
    ccf                                           ; $798c: $3f
    ret nc                                        ; $798d: $d0

    ld d, b                                       ; $798e: $50
    ldh [$e0], a                                  ; $798f: $e0 $e0
    add b                                         ; $7991: $80
    add b                                         ; $7992: $80
    nop                                           ; $7993: $00
    nop                                           ; $7994: $00
    nop                                           ; $7995: $00
    rst $38                                       ; $7996: $ff
    rrca                                          ; $7997: $0f
    rrca                                          ; $7998: $0f
    jr jr_079_79b2                                ; $7999: $18 $17

    db $10                                        ; $799b: $10
    rra                                           ; $799c: $1f
    db $10                                        ; $799d: $10

jr_079_799e:
    rra                                           ; $799e: $1f
    rst $38                                       ; $799f: $ff
    ld de, $331e                                  ; $79a0: $11 $1e $33
    dec l                                         ; $79a3: $2d

jr_079_79a4:
    inc hl                                        ; $79a4: $23
    dec a                                         ; $79a5: $3d
    inc hl                                        ; $79a6: $23

jr_079_79a7:
    dec a                                         ; $79a7: $3d
    ccf                                           ; $79a8: $3f
    jr nz, jr_079_79ea                            ; $79a9: $20 $3f

    ld h, b                                       ; $79ab: $60
    ld e, a                                       ; $79ac: $5f
    ld b, b                                       ; $79ad: $40
    ld a, a                                       ; $79ae: $7f
    cp $e1                                        ; $79af: $fe $e1
    db $fd                                        ; $79b1: $fd

jr_079_79b2:
    pop hl                                        ; $79b2: $e1
    rst $38                                       ; $79b3: $ff
    ccf                                           ; $79b4: $3f
    ccf                                           ; $79b5: $3f
    ldh [$e0], a                                  ; $79b6: $e0 $e0
    jr nc, @-$2e                                  ; $79b8: $30 $d0

    jr jr_079_79a4                                ; $79ba: $18 $e8

    rst $38                                       ; $79bc: $ff
    jr jr_079_79a7                                ; $79bd: $18 $e8

    adc h                                         ; $79bf: $8c
    ld [hl], h                                    ; $79c0: $74
    adc h                                         ; $79c1: $8c
    db $f4                                        ; $79c2: $f4

jr_079_79c3:
    adc h                                         ; $79c3: $8c
    db $f4                                        ; $79c4: $f4
    db $fd                                        ; $79c5: $fd
    inc c                                         ; $79c6: $0c
    cp $e0                                        ; $79c7: $fe $e0
    inc e                                         ; $79c9: $1c
    db $e4                                        ; $79ca: $e4
    inc e                                         ; $79cb: $1c
    db $ec                                        ; $79cc: $ec
    inc a                                         ; $79cd: $3c

jr_079_79ce:
    call z, $f8ff                                 ; $79ce: $cc $ff $f8
    jr jr_079_79c3                                ; $79d1: $18 $f0

    ld [hl], b                                    ; $79d3: $70
    ldh [$e0], a                                  ; $79d4: $e0 $e0
    add b                                         ; $79d6: $80
    add b                                         ; $79d7: $80
    nop                                           ; $79d8: $00
    nop                                           ; $79d9: $00
    nop                                           ; $79da: $00
    ld l, l                                       ; $79db: $6d
    nop                                           ; $79dc: $00

jr_079_79dd:
    rst $38                                       ; $79dd: $ff
    xor $20                                       ; $79de: $ee $20
    jr nz, jr_079_79ce                            ; $79e0: $20 $ec

    pop hl                                        ; $79e2: $e1
    inc b                                         ; $79e3: $04
    inc h                                         ; $79e4: $24
    db $f4                                        ; $79e5: $f4
    db $e3                                        ; $79e6: $e3
    nop                                           ; $79e7: $00
    nop                                           ; $79e8: $00
    nop                                           ; $79e9: $00

jr_079_79ea:
    ld l, l                                       ; $79ea: $6d
    nop                                           ; $79eb: $00

jr_079_79ec:
    rst $38                                       ; $79ec: $ff
    xor $20                                       ; $79ed: $ee $20
    jr nz, jr_079_79dd                            ; $79ef: $20 $ec

    pop hl                                        ; $79f1: $e1

jr_079_79f2:
    ld c, h                                       ; $79f2: $4c
    inc h                                         ; $79f3: $24
    db $f4                                        ; $79f4: $f4
    db $e3                                        ; $79f5: $e3
    nop                                           ; $79f6: $00
    nop                                           ; $79f7: $00
    nop                                           ; $79f8: $00
    ld l, l                                       ; $79f9: $6d
    nop                                           ; $79fa: $00
    rst $38                                       ; $79fb: $ff
    xor $30                                       ; $79fc: $ee $30
    jr nc, jr_079_79ec                            ; $79fe: $30 $ec

    pop hl                                        ; $7a00: $e1
    call c, $f4a4                                 ; $7a01: $dc $a4 $f4
    db $e3                                        ; $7a04: $e3
    nop                                           ; $7a05: $00
    nop                                           ; $7a06: $00
    nop                                           ; $7a07: $00
    db $dd                                        ; $7a08: $dd
    nop                                           ; $7a09: $00
    rst $38                                       ; $7a0a: $ff
    xor $30                                       ; $7a0b: $ee $30
    jr nc, @+$12                                  ; $7a0d: $30 $10

    db $eb                                        ; $7a0f: $eb
    ldh [$dc], a                                  ; $7a10: $e0 $dc
    and h                                         ; $7a12: $a4
    inc bc                                        ; $7a13: $03
    sub b                                         ; $7a14: $90
    add b                                         ; $7a15: $80
    db $f4                                        ; $7a16: $f4
    pop hl                                        ; $7a17: $e1
    nop                                           ; $7a18: $00
    nop                                           ; $7a19: $00
    nop                                           ; $7a1a: $00
    db $fd                                        ; $7a1b: $fd
    nop                                           ; $7a1c: $00
    rst $38                                       ; $7a1d: $ff
    xor $30                                       ; $7a1e: $ee $30
    jr nc, jr_079_7a32                            ; $7a20: $30 $10

    nop                                           ; $7a22: $00
    add b                                         ; $7a23: $80
    sub b                                         ; $7a24: $90
    rst $38                                       ; $7a25: $ff
    call c, $90a4                                 ; $7a26: $dc $a4 $90
    add b                                         ; $7a29: $80
    db $10                                        ; $7a2a: $10
    db $10                                        ; $7a2b: $10
    jr nc, jr_079_7a5e                            ; $7a2c: $30 $30

    nop                                           ; $7a2e: $00
    nop                                           ; $7a2f: $00
    nop                                           ; $7a30: $00
    db $fd                                        ; $7a31: $fd

jr_079_7a32:
    nop                                           ; $7a32: $00
    rst $38                                       ; $7a33: $ff
    xor $30                                       ; $7a34: $ee $30
    jr nc, jr_079_7a48                            ; $7a36: $30 $10

    nop                                           ; $7a38: $00
    adc b                                         ; $7a39: $88
    ret nc                                        ; $7a3a: $d0

    rst $38                                       ; $7a3b: $ff
    call c, $90a4                                 ; $7a3c: $dc $a4 $90
    add b                                         ; $7a3f: $80
    ld e, b                                       ; $7a40: $58
    ld e, b                                       ; $7a41: $58
    jr nc, jr_079_7a74                            ; $7a42: $30 $30

    nop                                           ; $7a44: $00
    nop                                           ; $7a45: $00
    nop                                           ; $7a46: $00
    db $fd                                        ; $7a47: $fd

jr_079_7a48:
    nop                                           ; $7a48: $00
    rst $38                                       ; $7a49: $ff
    xor $30                                       ; $7a4a: $ee $30
    jr nc, jr_079_7a5e                            ; $7a4c: $30 $10

    nop                                           ; $7a4e: $00
    adc h                                         ; $7a4f: $8c
    db $f4                                        ; $7a50: $f4
    rst $38                                       ; $7a51: $ff
    call c, $90a4                                 ; $7a52: $dc $a4 $90
    add b                                         ; $7a55: $80
    ld a, b                                       ; $7a56: $78
    ld a, b                                       ; $7a57: $78
    jr nc, jr_079_7a8a                            ; $7a58: $30 $30

    nop                                           ; $7a5a: $00
    nop                                           ; $7a5b: $00
    nop                                           ; $7a5c: $00
    db $fd                                        ; $7a5d: $fd

jr_079_7a5e:
    nop                                           ; $7a5e: $00
    rst $38                                       ; $7a5f: $ff
    xor $30                                       ; $7a60: $ee $30
    jr nc, jr_079_7a74                            ; $7a62: $30 $10

    jr nz, jr_079_79f2                            ; $7a64: $20 $8c

    db $f4                                        ; $7a66: $f4
    rst $38                                       ; $7a67: $ff
    call c, $b4a4                                 ; $7a68: $dc $a4 $b4
    add h                                         ; $7a6b: $84
    ld a, b                                       ; $7a6c: $78
    ld a, b                                       ; $7a6d: $78
    jr nc, jr_079_7aa0                            ; $7a6e: $30 $30

    nop                                           ; $7a70: $00
    nop                                           ; $7a71: $00
    nop                                           ; $7a72: $00
    db $fd                                        ; $7a73: $fd

jr_079_7a74:
    nop                                           ; $7a74: $00
    rst $38                                       ; $7a75: $ff
    xor $30                                       ; $7a76: $ee $30
    jr nc, jr_079_7ad2                            ; $7a78: $30 $58

    ld l, b                                       ; $7a7a: $68
    adc h                                         ; $7a7b: $8c
    db $f4                                        ; $7a7c: $f4
    rst $38                                       ; $7a7d: $ff
    call c, $fca4                                 ; $7a7e: $dc $a4 $fc
    call z, Call_079_7878                         ; $7a81: $cc $78 $78
    jr nc, jr_079_7ab6                            ; $7a84: $30 $30

    nop                                           ; $7a86: $00
    nop                                           ; $7a87: $00
    nop                                           ; $7a88: $00
    ld l, l                                       ; $7a89: $6d

jr_079_7a8a:
    nop                                           ; $7a8a: $00

jr_079_7a8b:
    rst $38                                       ; $7a8b: $ff
    xor $10                                       ; $7a8c: $ee $10
    db $10                                        ; $7a8e: $10
    db $ec                                        ; $7a8f: $ec
    pop hl                                        ; $7a90: $e1
    add b                                         ; $7a91: $80
    sub b                                         ; $7a92: $90
    db $f4                                        ; $7a93: $f4
    db $e3                                        ; $7a94: $e3
    nop                                           ; $7a95: $00
    nop                                           ; $7a96: $00
    nop                                           ; $7a97: $00
    ld l, l                                       ; $7a98: $6d
    nop                                           ; $7a99: $00

jr_079_7a9a:
    rst $38                                       ; $7a9a: $ff
    xor $30                                       ; $7a9b: $ee $30
    jr nc, jr_079_7a8b                            ; $7a9d: $30 $ec

    pop hl                                        ; $7a9f: $e1

jr_079_7aa0:
    and h                                         ; $7aa0: $a4
    sub h                                         ; $7aa1: $94
    db $f4                                        ; $7aa2: $f4
    db $e3                                        ; $7aa3: $e3
    nop                                           ; $7aa4: $00
    nop                                           ; $7aa5: $00
    nop                                           ; $7aa6: $00
    ld l, l                                       ; $7aa7: $6d
    nop                                           ; $7aa8: $00
    rst $38                                       ; $7aa9: $ff
    xor $30                                       ; $7aaa: $ee $30
    jr nc, jr_079_7a9a                            ; $7aac: $30 $ec

    pop hl                                        ; $7aae: $e1
    and h                                         ; $7aaf: $a4
    call c, $e3f4                                 ; $7ab0: $dc $f4 $e3
    nop                                           ; $7ab3: $00
    nop                                           ; $7ab4: $00
    nop                                           ; $7ab5: $00

jr_079_7ab6:
    db $fd                                        ; $7ab6: $fd
    nop                                           ; $7ab7: $00
    rst $38                                       ; $7ab8: $ff
    xor $30                                       ; $7ab9: $ee $30
    jr nc, jr_079_7b05                            ; $7abb: $30 $48

    ld c, b                                       ; $7abd: $48
    nop                                           ; $7abe: $00
    nop                                           ; $7abf: $00
    dec de                                        ; $7ac0: $1b
    and h                                         ; $7ac1: $a4
    call c, $e1fa                                 ; $7ac2: $dc $fa $e1
    jr nc, jr_079_7af7                            ; $7ac5: $30 $30

    nop                                           ; $7ac7: $00

Call_079_7ac8:
    nop                                           ; $7ac8: $00
    nop                                           ; $7ac9: $00
    db $fd                                        ; $7aca: $fd
    nop                                           ; $7acb: $00
    rst $38                                       ; $7acc: $ff
    xor $30                                       ; $7acd: $ee $30
    jr nc, @+$4a                                  ; $7acf: $30 $48

    ld c, b                                       ; $7ad1: $48

jr_079_7ad2:
    ld b, b                                       ; $7ad2: $40
    ld [$a437], sp                                ; $7ad3: $08 $37 $a4
    call c, $ff48                                 ; $7ad6: $dc $48 $ff
    ldh [$30], a                                  ; $7ad9: $e0 $30
    jr nc, jr_079_7add                            ; $7adb: $30 $00

jr_079_7add:
    nop                                           ; $7add: $00
    nop                                           ; $7ade: $00
    db $fd                                        ; $7adf: $fd
    nop                                           ; $7ae0: $00
    rst $38                                       ; $7ae1: $ff
    xor $30                                       ; $7ae2: $ee $30
    jr nc, @+$4a                                  ; $7ae4: $30 $48

    ld c, b                                       ; $7ae6: $48
    ld h, h                                       ; $7ae7: $64
    inc c                                         ; $7ae8: $0c
    rst $38                                       ; $7ae9: $ff
    and h                                         ; $7aea: $a4
    call c, $4848                                 ; $7aeb: $dc $48 $48
    ld l, b                                       ; $7aee: $68
    ld l, b                                       ; $7aef: $68
    jr nc, jr_079_7b22                            ; $7af0: $30 $30

    nop                                           ; $7af2: $00
    nop                                           ; $7af3: $00
    nop                                           ; $7af4: $00
    db $fd                                        ; $7af5: $fd
    nop                                           ; $7af6: $00

jr_079_7af7:
    rst $38                                       ; $7af7: $ff
    xor $30                                       ; $7af8: $ee $30
    jr nc, jr_079_7b44                            ; $7afa: $30 $48

    ld c, b                                       ; $7afc: $48
    db $f4                                        ; $7afd: $f4
    adc h                                         ; $7afe: $8c
    rst $38                                       ; $7aff: $ff
    and h                                         ; $7b00: $a4
    call c, $4848                                 ; $7b01: $dc $48 $48
    ld a, b                                       ; $7b04: $78

jr_079_7b05:
    ld a, b                                       ; $7b05: $78
    jr nc, jr_079_7b38                            ; $7b06: $30 $30

    nop                                           ; $7b08: $00
    nop                                           ; $7b09: $00
    nop                                           ; $7b0a: $00
    db $fd                                        ; $7b0b: $fd
    nop                                           ; $7b0c: $00
    rst $38                                       ; $7b0d: $ff
    xor $30                                       ; $7b0e: $ee $30
    jr nc, jr_079_7b5a                            ; $7b10: $30 $48

    ld e, b                                       ; $7b12: $58
    db $f4                                        ; $7b13: $f4
    adc h                                         ; $7b14: $8c
    rst $38                                       ; $7b15: $ff
    and h                                         ; $7b16: $a4
    call c, $d8c8                                 ; $7b17: $dc $c8 $d8
    ld a, b                                       ; $7b1a: $78
    ld a, b                                       ; $7b1b: $78
    jr nc, jr_079_7b4e                            ; $7b1c: $30 $30

    nop                                           ; $7b1e: $00
    nop                                           ; $7b1f: $00
    nop                                           ; $7b20: $00
    db $fd                                        ; $7b21: $fd

jr_079_7b22:
    nop                                           ; $7b22: $00
    rst $38                                       ; $7b23: $ff
    xor $30                                       ; $7b24: $ee $30
    jr nc, jr_079_7b90                            ; $7b26: $30 $68

    ld e, b                                       ; $7b28: $58
    db $f4                                        ; $7b29: $f4

jr_079_7b2a:
    adc h                                         ; $7b2a: $8c
    rst $38                                       ; $7b2b: $ff
    and h                                         ; $7b2c: $a4
    call c, $fccc                                 ; $7b2d: $dc $cc $fc
    ld a, b                                       ; $7b30: $78
    ld a, b                                       ; $7b31: $78
    jr nc, jr_079_7b64                            ; $7b32: $30 $30

    nop                                           ; $7b34: $00
    nop                                           ; $7b35: $00
    nop                                           ; $7b36: $00
    ld l, l                                       ; $7b37: $6d

jr_079_7b38:
    nop                                           ; $7b38: $00

jr_079_7b39:
    rst $38                                       ; $7b39: $ff
    xor $20                                       ; $7b3a: $ee $20
    jr nz, jr_079_7b2a                            ; $7b3c: $20 $ec

    pop hl                                        ; $7b3e: $e1
    inc b                                         ; $7b3f: $04
    inc h                                         ; $7b40: $24
    db $f4                                        ; $7b41: $f4
    db $e3                                        ; $7b42: $e3
    nop                                           ; $7b43: $00

jr_079_7b44:
    nop                                           ; $7b44: $00
    nop                                           ; $7b45: $00
    ld l, l                                       ; $7b46: $6d
    nop                                           ; $7b47: $00

jr_079_7b48:
    rst $38                                       ; $7b48: $ff
    xor $20                                       ; $7b49: $ee $20
    jr nz, jr_079_7b39                            ; $7b4b: $20 $ec

    pop hl                                        ; $7b4d: $e1

jr_079_7b4e:
    ld c, h                                       ; $7b4e: $4c
    inc h                                         ; $7b4f: $24
    db $f4                                        ; $7b50: $f4
    db $e3                                        ; $7b51: $e3
    nop                                           ; $7b52: $00
    nop                                           ; $7b53: $00
    nop                                           ; $7b54: $00
    ld l, l                                       ; $7b55: $6d
    nop                                           ; $7b56: $00
    rst $38                                       ; $7b57: $ff
    xor $30                                       ; $7b58: $ee $30

jr_079_7b5a:
    jr nc, jr_079_7b48                            ; $7b5a: $30 $ec

    pop hl                                        ; $7b5c: $e1
    call c, $f4a4                                 ; $7b5d: $dc $a4 $f4
    db $e3                                        ; $7b60: $e3
    nop                                           ; $7b61: $00
    nop                                           ; $7b62: $00
    nop                                           ; $7b63: $00

jr_079_7b64:
    db $dd                                        ; $7b64: $dd
    nop                                           ; $7b65: $00
    rst $38                                       ; $7b66: $ff
    xor $30                                       ; $7b67: $ee $30
    jr nc, @+$12                                  ; $7b69: $30 $10

    db $eb                                        ; $7b6b: $eb
    ldh [$dc], a                                  ; $7b6c: $e0 $dc
    and h                                         ; $7b6e: $a4
    inc bc                                        ; $7b6f: $03
    sub b                                         ; $7b70: $90
    add b                                         ; $7b71: $80
    db $f4                                        ; $7b72: $f4
    pop hl                                        ; $7b73: $e1
    nop                                           ; $7b74: $00
    nop                                           ; $7b75: $00
    nop                                           ; $7b76: $00
    db $fd                                        ; $7b77: $fd
    nop                                           ; $7b78: $00
    rst $38                                       ; $7b79: $ff
    xor $30                                       ; $7b7a: $ee $30
    jr nc, jr_079_7b8e                            ; $7b7c: $30 $10

    nop                                           ; $7b7e: $00
    add b                                         ; $7b7f: $80
    sub b                                         ; $7b80: $90
    rst $38                                       ; $7b81: $ff
    call c, $90a4                                 ; $7b82: $dc $a4 $90
    add b                                         ; $7b85: $80
    db $10                                        ; $7b86: $10
    db $10                                        ; $7b87: $10
    jr nc, jr_079_7bba                            ; $7b88: $30 $30

    nop                                           ; $7b8a: $00
    nop                                           ; $7b8b: $00
    nop                                           ; $7b8c: $00
    db $fd                                        ; $7b8d: $fd

jr_079_7b8e:
    nop                                           ; $7b8e: $00
    rst $38                                       ; $7b8f: $ff

jr_079_7b90:
    xor $30                                       ; $7b90: $ee $30
    jr nc, jr_079_7ba4                            ; $7b92: $30 $10

    nop                                           ; $7b94: $00
    adc b                                         ; $7b95: $88
    ret nc                                        ; $7b96: $d0

    rst $38                                       ; $7b97: $ff
    call c, $90a4                                 ; $7b98: $dc $a4 $90
    add b                                         ; $7b9b: $80
    ld e, b                                       ; $7b9c: $58
    ld e, b                                       ; $7b9d: $58
    jr nc, jr_079_7bd0                            ; $7b9e: $30 $30

    nop                                           ; $7ba0: $00
    nop                                           ; $7ba1: $00
    nop                                           ; $7ba2: $00
    db $fd                                        ; $7ba3: $fd

jr_079_7ba4:
    nop                                           ; $7ba4: $00
    rst $38                                       ; $7ba5: $ff
    xor $30                                       ; $7ba6: $ee $30
    jr nc, jr_079_7bba                            ; $7ba8: $30 $10

    nop                                           ; $7baa: $00
    adc h                                         ; $7bab: $8c
    db $f4                                        ; $7bac: $f4
    rst $38                                       ; $7bad: $ff
    call c, $90a4                                 ; $7bae: $dc $a4 $90
    add b                                         ; $7bb1: $80
    ld a, b                                       ; $7bb2: $78
    ld a, b                                       ; $7bb3: $78
    jr nc, jr_079_7be6                            ; $7bb4: $30 $30

    nop                                           ; $7bb6: $00
    nop                                           ; $7bb7: $00
    nop                                           ; $7bb8: $00
    db $fd                                        ; $7bb9: $fd

jr_079_7bba:
    nop                                           ; $7bba: $00
    rst $38                                       ; $7bbb: $ff
    xor $30                                       ; $7bbc: $ee $30
    jr nc, jr_079_7bd0                            ; $7bbe: $30 $10

    jr nz, jr_079_7b4e                            ; $7bc0: $20 $8c

    db $f4                                        ; $7bc2: $f4
    rst $38                                       ; $7bc3: $ff
    call c, $b4a4                                 ; $7bc4: $dc $a4 $b4
    add h                                         ; $7bc7: $84
    ld a, b                                       ; $7bc8: $78
    ld a, b                                       ; $7bc9: $78
    jr nc, jr_079_7bfc                            ; $7bca: $30 $30

    nop                                           ; $7bcc: $00
    nop                                           ; $7bcd: $00
    nop                                           ; $7bce: $00
    db $fd                                        ; $7bcf: $fd

jr_079_7bd0:
    nop                                           ; $7bd0: $00
    rst $38                                       ; $7bd1: $ff
    xor $30                                       ; $7bd2: $ee $30
    jr nc, jr_079_7c2e                            ; $7bd4: $30 $58

    ld l, b                                       ; $7bd6: $68
    adc h                                         ; $7bd7: $8c
    db $f4                                        ; $7bd8: $f4
    rst $38                                       ; $7bd9: $ff
    call c, $fca4                                 ; $7bda: $dc $a4 $fc
    call z, Call_079_7878                         ; $7bdd: $cc $78 $78
    jr nc, jr_079_7c12                            ; $7be0: $30 $30

    nop                                           ; $7be2: $00
    nop                                           ; $7be3: $00
    nop                                           ; $7be4: $00
    db $10                                        ; $7be5: $10

jr_079_7be6:
    ld [$0000], sp                                ; $7be6: $08 $00 $00
    db $10                                        ; $7be9: $10
    db $10                                        ; $7bea: $10
    ld [bc], a                                    ; $7beb: $02
    nop                                           ; $7bec: $00
    add b                                         ; $7bed: $80
    db $10                                        ; $7bee: $10
    ld [$0000], sp                                ; $7bef: $08 $00 $00
    db $10                                        ; $7bf2: $10
    db $10                                        ; $7bf3: $10
    ld [bc], a                                    ; $7bf4: $02
    nop                                           ; $7bf5: $00
    add b                                         ; $7bf6: $80
    db $10                                        ; $7bf7: $10
    ld [$0000], sp                                ; $7bf8: $08 $00 $00
    db $10                                        ; $7bfb: $10

jr_079_7bfc:
    db $10                                        ; $7bfc: $10
    ld [bc], a                                    ; $7bfd: $02
    nop                                           ; $7bfe: $00
    add b                                         ; $7bff: $80
    db $10                                        ; $7c00: $10
    ld [$0000], sp                                ; $7c01: $08 $00 $00
    db $10                                        ; $7c04: $10
    db $10                                        ; $7c05: $10
    ld [bc], a                                    ; $7c06: $02
    nop                                           ; $7c07: $00
    add b                                         ; $7c08: $80
    db $10                                        ; $7c09: $10
    ld [$0000], sp                                ; $7c0a: $08 $00 $00
    db $10                                        ; $7c0d: $10
    db $10                                        ; $7c0e: $10
    ld [bc], a                                    ; $7c0f: $02
    nop                                           ; $7c10: $00
    add b                                         ; $7c11: $80

jr_079_7c12:
    db $10                                        ; $7c12: $10
    ld [$0000], sp                                ; $7c13: $08 $00 $00
    db $10                                        ; $7c16: $10
    db $10                                        ; $7c17: $10
    ld [bc], a                                    ; $7c18: $02
    nop                                           ; $7c19: $00
    add b                                         ; $7c1a: $80
    db $10                                        ; $7c1b: $10
    ld [$0000], sp                                ; $7c1c: $08 $00 $00
    db $10                                        ; $7c1f: $10
    db $10                                        ; $7c20: $10
    ld [bc], a                                    ; $7c21: $02
    nop                                           ; $7c22: $00
    add b                                         ; $7c23: $80
    db $10                                        ; $7c24: $10
    ld [$0000], sp                                ; $7c25: $08 $00 $00
    db $10                                        ; $7c28: $10
    db $10                                        ; $7c29: $10
    ld [bc], a                                    ; $7c2a: $02
    nop                                           ; $7c2b: $00
    add b                                         ; $7c2c: $80
    db $10                                        ; $7c2d: $10

jr_079_7c2e:
    ld [$0000], sp                                ; $7c2e: $08 $00 $00
    db $10                                        ; $7c31: $10
    db $10                                        ; $7c32: $10
    ld [bc], a                                    ; $7c33: $02
    nop                                           ; $7c34: $00
    add b                                         ; $7c35: $80
    db $10                                        ; $7c36: $10
    ld [$0000], sp                                ; $7c37: $08 $00 $00
    db $10                                        ; $7c3a: $10
    db $10                                        ; $7c3b: $10
    ld [bc], a                                    ; $7c3c: $02
    nop                                           ; $7c3d: $00
    add b                                         ; $7c3e: $80
    db $10                                        ; $7c3f: $10
    ld [$0000], sp                                ; $7c40: $08 $00 $00
    db $10                                        ; $7c43: $10
    db $10                                        ; $7c44: $10
    ld [bc], a                                    ; $7c45: $02
    nop                                           ; $7c46: $00
    add b                                         ; $7c47: $80
    db $10                                        ; $7c48: $10
    ld [$0000], sp                                ; $7c49: $08 $00 $00
    db $10                                        ; $7c4c: $10
    db $10                                        ; $7c4d: $10
    ld [bc], a                                    ; $7c4e: $02
    nop                                           ; $7c4f: $00
    add b                                         ; $7c50: $80
    db $10                                        ; $7c51: $10
    ld [$0000], sp                                ; $7c52: $08 $00 $00
    db $10                                        ; $7c55: $10
    db $10                                        ; $7c56: $10
    ld [bc], a                                    ; $7c57: $02
    nop                                           ; $7c58: $00
    add b                                         ; $7c59: $80
    db $10                                        ; $7c5a: $10
    ld [$0000], sp                                ; $7c5b: $08 $00 $00
    db $10                                        ; $7c5e: $10
    db $10                                        ; $7c5f: $10
    ld [bc], a                                    ; $7c60: $02
    nop                                           ; $7c61: $00
    add b                                         ; $7c62: $80
    db $10                                        ; $7c63: $10
    ld [$0000], sp                                ; $7c64: $08 $00 $00
    db $10                                        ; $7c67: $10
    db $10                                        ; $7c68: $10
    ld [bc], a                                    ; $7c69: $02
    nop                                           ; $7c6a: $00
    add b                                         ; $7c6b: $80
    db $10                                        ; $7c6c: $10
    ld [$0000], sp                                ; $7c6d: $08 $00 $00
    db $10                                        ; $7c70: $10
    db $10                                        ; $7c71: $10
    ld [bc], a                                    ; $7c72: $02
    nop                                           ; $7c73: $00
    add b                                         ; $7c74: $80
    db $10                                        ; $7c75: $10
    ld [$0000], sp                                ; $7c76: $08 $00 $00
    db $10                                        ; $7c79: $10
    db $10                                        ; $7c7a: $10
    ld [bc], a                                    ; $7c7b: $02
    nop                                           ; $7c7c: $00
    add b                                         ; $7c7d: $80
    db $10                                        ; $7c7e: $10
    ld [$0000], sp                                ; $7c7f: $08 $00 $00
    db $10                                        ; $7c82: $10
    db $10                                        ; $7c83: $10
    ld [bc], a                                    ; $7c84: $02
    nop                                           ; $7c85: $00
    add b                                         ; $7c86: $80
    db $10                                        ; $7c87: $10
    ld [$0000], sp                                ; $7c88: $08 $00 $00
    db $10                                        ; $7c8b: $10
    db $10                                        ; $7c8c: $10
    ld [bc], a                                    ; $7c8d: $02
    nop                                           ; $7c8e: $00
    add b                                         ; $7c8f: $80
    db $10                                        ; $7c90: $10
    ld [$0000], sp                                ; $7c91: $08 $00 $00
    db $10                                        ; $7c94: $10
    db $10                                        ; $7c95: $10
    ld [bc], a                                    ; $7c96: $02
    nop                                           ; $7c97: $00
    add b                                         ; $7c98: $80
    db $10                                        ; $7c99: $10
    ld [$0000], sp                                ; $7c9a: $08 $00 $00
    db $10                                        ; $7c9d: $10
    db $10                                        ; $7c9e: $10
    ld [bc], a                                    ; $7c9f: $02
    nop                                           ; $7ca0: $00
    add b                                         ; $7ca1: $80
    db $10                                        ; $7ca2: $10
    ld [$0000], sp                                ; $7ca3: $08 $00 $00
    db $10                                        ; $7ca6: $10
    db $10                                        ; $7ca7: $10
    ld [bc], a                                    ; $7ca8: $02
    nop                                           ; $7ca9: $00
    add b                                         ; $7caa: $80
    db $10                                        ; $7cab: $10
    ld [$0000], sp                                ; $7cac: $08 $00 $00
    db $10                                        ; $7caf: $10
    db $10                                        ; $7cb0: $10
    ld [bc], a                                    ; $7cb1: $02
    nop                                           ; $7cb2: $00
    add b                                         ; $7cb3: $80
    db $10                                        ; $7cb4: $10
    ld [$0000], sp                                ; $7cb5: $08 $00 $00
    db $10                                        ; $7cb8: $10
    db $10                                        ; $7cb9: $10
    ld [bc], a                                    ; $7cba: $02
    nop                                           ; $7cbb: $00
    add b                                         ; $7cbc: $80
    db $10                                        ; $7cbd: $10
    ld [$0000], sp                                ; $7cbe: $08 $00 $00
    db $10                                        ; $7cc1: $10
    db $10                                        ; $7cc2: $10
    ld [bc], a                                    ; $7cc3: $02
    nop                                           ; $7cc4: $00
    add b                                         ; $7cc5: $80
    db $10                                        ; $7cc6: $10
    ld [$0000], sp                                ; $7cc7: $08 $00 $00
    db $10                                        ; $7cca: $10
    db $10                                        ; $7ccb: $10
    ld [bc], a                                    ; $7ccc: $02
    nop                                           ; $7ccd: $00
    add b                                         ; $7cce: $80
    db $10                                        ; $7ccf: $10
    ld [$0000], sp                                ; $7cd0: $08 $00 $00
    db $10                                        ; $7cd3: $10
    db $10                                        ; $7cd4: $10
    ld [bc], a                                    ; $7cd5: $02
    nop                                           ; $7cd6: $00
    add b                                         ; $7cd7: $80
    db $10                                        ; $7cd8: $10
    ld [$0000], sp                                ; $7cd9: $08 $00 $00
    add b                                         ; $7cdc: $80
    db $10                                        ; $7cdd: $10
    ld [$0000], sp                                ; $7cde: $08 $00 $00
    add b                                         ; $7ce1: $80
    db $10                                        ; $7ce2: $10
    ld [$0000], sp                                ; $7ce3: $08 $00 $00
    add b                                         ; $7ce6: $80
    db $10                                        ; $7ce7: $10
    ld [$0000], sp                                ; $7ce8: $08 $00 $00
    add b                                         ; $7ceb: $80
    db $10                                        ; $7cec: $10
    ld [$0000], sp                                ; $7ced: $08 $00 $00
    add b                                         ; $7cf0: $80
    db $10                                        ; $7cf1: $10
    ld [$0000], sp                                ; $7cf2: $08 $00 $00
    add b                                         ; $7cf5: $80
    db $10                                        ; $7cf6: $10
    ld [$0000], sp                                ; $7cf7: $08 $00 $00
    add b                                         ; $7cfa: $80
    db $10                                        ; $7cfb: $10
    ld [$0000], sp                                ; $7cfc: $08 $00 $00
    add b                                         ; $7cff: $80
    db $10                                        ; $7d00: $10
    ld [$0000], sp                                ; $7d01: $08 $00 $00
    add b                                         ; $7d04: $80
    db $10                                        ; $7d05: $10
    ld [$0000], sp                                ; $7d06: $08 $00 $00
    add b                                         ; $7d09: $80
    db $10                                        ; $7d0a: $10
    ld [$0000], sp                                ; $7d0b: $08 $00 $00
    add b                                         ; $7d0e: $80
    db $10                                        ; $7d0f: $10
    ld [$0000], sp                                ; $7d10: $08 $00 $00
    add b                                         ; $7d13: $80
    db $10                                        ; $7d14: $10
    ld [$0000], sp                                ; $7d15: $08 $00 $00
    add b                                         ; $7d18: $80
    db $10                                        ; $7d19: $10
    ld [$0000], sp                                ; $7d1a: $08 $00 $00
    add b                                         ; $7d1d: $80
    db $10                                        ; $7d1e: $10
    ld [$0000], sp                                ; $7d1f: $08 $00 $00
    add b                                         ; $7d22: $80
    db $10                                        ; $7d23: $10
    ld [$0000], sp                                ; $7d24: $08 $00 $00
    add b                                         ; $7d27: $80
    db $10                                        ; $7d28: $10
    ld [$0000], sp                                ; $7d29: $08 $00 $00
    add b                                         ; $7d2c: $80
    db $10                                        ; $7d2d: $10
    ld [$0000], sp                                ; $7d2e: $08 $00 $00
    add b                                         ; $7d31: $80
    db $10                                        ; $7d32: $10
    ld [$0000], sp                                ; $7d33: $08 $00 $00
    add b                                         ; $7d36: $80
    db $10                                        ; $7d37: $10
    ld [$0000], sp                                ; $7d38: $08 $00 $00
    add b                                         ; $7d3b: $80
    db $10                                        ; $7d3c: $10
    ld [$0000], sp                                ; $7d3d: $08 $00 $00
    add b                                         ; $7d40: $80
    db $10                                        ; $7d41: $10
    ld [$0000], sp                                ; $7d42: $08 $00 $00
    add b                                         ; $7d45: $80
    db $10                                        ; $7d46: $10
    ld [$0000], sp                                ; $7d47: $08 $00 $00
    add b                                         ; $7d4a: $80
    db $10                                        ; $7d4b: $10
    ld [$0000], sp                                ; $7d4c: $08 $00 $00
    add b                                         ; $7d4f: $80
    db $10                                        ; $7d50: $10
    ld [$0000], sp                                ; $7d51: $08 $00 $00
    add b                                         ; $7d54: $80
    db $10                                        ; $7d55: $10
    ld [$0000], sp                                ; $7d56: $08 $00 $00
    add b                                         ; $7d59: $80
    db $10                                        ; $7d5a: $10
    ld [$0000], sp                                ; $7d5b: $08 $00 $00
    add b                                         ; $7d5e: $80
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

Call_079_7ece:
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
