; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $02e", ROMX[$4000], BANK[$2e]

    push de                                       ; $4000: $d5
    ld a, c                                       ; $4001: $79
    ld a, h                                       ; $4002: $7c
    ld a, d                                       ; $4003: $7a
    ld b, b                                       ; $4004: $40
    ld b, b                                       ; $4005: $40
    ld c, b                                       ; $4006: $48
    ld b, b                                       ; $4007: $40
    adc h                                         ; $4008: $8c
    ld c, d                                       ; $4009: $4a
    add l                                         ; $400a: $85
    ld c, a                                       ; $400b: $4f
    or d                                          ; $400c: $b2
    ld d, c                                       ; $400d: $51
    ld a, [hl+]                                   ; $400e: $2a
    ld d, d                                       ; $400f: $52

Jump_02e_4010:
    xor e                                         ; $4010: $ab
    ld d, d                                       ; $4011: $52
    xor h                                         ; $4012: $ac
    ld d, d                                       ; $4013: $52
    adc b                                         ; $4014: $88
    ld b, b                                       ; $4015: $40
    ld [hl-], a                                   ; $4016: $32
    ld d, e                                       ; $4017: $53
    ld a, [hl-]                                   ; $4018: $3a
    ld d, e                                       ; $4019: $53
    db $ed                                        ; $401a: $ed
    ld e, l                                       ; $401b: $5d
    adc $64                                       ; $401c: $ce $64
    or [hl]                                       ; $401e: $b6
    ld l, c                                       ; $401f: $69
    inc sp                                        ; $4020: $33
    ld l, d                                       ; $4021: $6a
    ld a, a                                       ; $4022: $7f
    ld l, d                                       ; $4023: $6a
    ret nc                                        ; $4024: $d0

    ld l, d                                       ; $4025: $6a
    ld a, d                                       ; $4026: $7a
    ld d, e                                       ; $4027: $53
    cp e                                          ; $4028: $bb
    ld l, l                                       ; $4029: $6d
    jp Jump_000_366d                              ; $402a: $c3 $6d $36


    ld [hl], l                                    ; $402d: $75
    ld e, l                                       ; $402e: $5d
    ld [hl], a                                    ; $402f: $77
    jp nz, $0878                                  ; $4030: $c2 $78 $08

    ld a, c                                       ; $4033: $79
    ld c, [hl]                                    ; $4034: $4e
    ld a, c                                       ; $4035: $79
    ld c, a                                       ; $4036: $4f
    ld a, c                                       ; $4037: $79
    inc bc                                        ; $4038: $03
    ld l, [hl]                                    ; $4039: $6e
    xor e                                         ; $403a: $ab
    ld d, d                                       ; $403b: $52
    ld a, a                                       ; $403c: $7f
    ld l, d                                       ; $403d: $6a
    ld c, [hl]                                    ; $403e: $4e
    ld a, c                                       ; $403f: $79
    nop                                           ; $4040: $00
    nop                                           ; $4041: $00
    nop                                           ; $4042: $00
    nop                                           ; $4043: $00
    jr z, jr_02e_4078                             ; $4044: $28 $32

    nop                                           ; $4046: $00
    nop                                           ; $4047: $00
    xor b                                         ; $4048: $a8
    stop                                          ; $4049: $10 $00
    nop                                           ; $404b: $00
    xor l                                         ; $404c: $ad
    dec [hl]                                      ; $404d: $35
    sub h                                         ; $404e: $94
    ld c, [hl]                                    ; $404f: $4e
    xor b                                         ; $4050: $a8
    stop                                          ; $4051: $10 $00
    nop                                           ; $4053: $00
    xor l                                         ; $4054: $ad
    dec [hl]                                      ; $4055: $35
    sub h                                         ; $4056: $94
    ld c, [hl]                                    ; $4057: $4e
    jp hl                                         ; $4058: $e9


    ld a, a                                       ; $4059: $7f
    xor h                                         ; $405a: $ac
    ld b, b                                       ; $405b: $40
    nop                                           ; $405c: $00
    inc bc                                        ; $405d: $03
    rst $38                                       ; $405e: $ff
    ld a, a                                       ; $405f: $7f
    ccf                                           ; $4060: $3f
    ld d, $17                                     ; $4061: $16 $17
    ld bc, $0300                                  ; $4063: $01 $00 $03
    ld l, d                                       ; $4066: $6a
    jr c, jr_02e_4088                             ; $4067: $38 $1f

    inc bc                                        ; $4069: $03
    inc a                                         ; $406a: $3c
    ld [bc], a                                    ; $406b: $02
    nop                                           ; $406c: $00
    inc bc                                        ; $406d: $03
    di                                            ; $406e: $f3
    inc bc                                        ; $406f: $03
    rst $38                                       ; $4070: $ff
    ld a, a                                       ; $4071: $7f
    ld b, b                                       ; $4072: $40
    ld bc, $0300                                  ; $4073: $01 $00 $03
    di                                            ; $4076: $f3
    inc bc                                        ; $4077: $03

jr_02e_4078:
    ld d, $01                                     ; $4078: $16 $01
    nop                                           ; $407a: $00
    ld [bc], a                                    ; $407b: $02
    nop                                           ; $407c: $00
    inc bc                                        ; $407d: $03
    ld c, c                                       ; $407e: $49
    inc [hl]                                      ; $407f: $34
    xor b                                         ; $4080: $a8
    stop                                          ; $4081: $10 $00
    nop                                           ; $4083: $00
    xor l                                         ; $4084: $ad
    dec [hl]                                      ; $4085: $35
    sub h                                         ; $4086: $94
    ld c, [hl]                                    ; $4087: $4e

jr_02e_4088:
    rst $38                                       ; $4088: $ff
    inc a                                         ; $4089: $3c
    rst $08                                       ; $408a: $cf
    ld h, [hl]                                    ; $408b: $66
    sbc a                                         ; $408c: $9f
    ld b, [hl]                                    ; $408d: $46
    cp e                                          ; $408e: $bb
    ld b, a                                       ; $408f: $47
    ld a, [$cfff]                                 ; $4090: $fa $ff $cf
    scf                                           ; $4093: $37
    sbc a                                         ; $4094: $9f
    ld h, e                                       ; $4095: $63

jr_02e_4096:
    add a                                         ; $4096: $87
    ld a, c                                       ; $4097: $79
    adc a                                         ; $4098: $8f
    ld [hl], e                                    ; $4099: $73
    rst $38                                       ; $409a: $ff
    ld a, h                                       ; $409b: $7c
    adc e                                         ; $409c: $8b
    rst $10                                       ; $409d: $d7
    ld l, $a5                                     ; $409e: $2e $a5
    ld e, e                                       ; $40a0: $5b

Jump_02e_40a1:
    and l                                         ; $40a1: $a5

Jump_02e_40a2:
    ld a, a                                       ; $40a2: $7f
    rst $38                                       ; $40a3: $ff
    rst $28                                       ; $40a4: $ef
    ld [hl], l                                    ; $40a5: $75
    rst $28                                       ; $40a6: $ef
    cp e                                          ; $40a7: $bb
    cp e                                          ; $40a8: $bb
    ld a, [hl]                                    ; $40a9: $7e
    ld a, [hl-]                                   ; $40aa: $3a
    db $ed                                        ; $40ab: $ed
    rst $38                                       ; $40ac: $ff
    jr jr_02e_4096                                ; $40ad: $18 $e7

    inc l                                         ; $40af: $2c

jr_02e_40b0:
    db $db                                        ; $40b0: $db
    ld a, [hl+]                                   ; $40b1: $2a
    db $dd                                        ; $40b2: $dd
    ld l, d                                       ; $40b3: $6a
    cp a                                          ; $40b4: $bf
    rst $38                                       ; $40b5: $ff
    xor d                                         ; $40b6: $aa
    ld [hl], a                                    ; $40b7: $77
    and [hl]                                      ; $40b8: $a6
    ld a, l                                       ; $40b9: $7d
    xor l                                         ; $40ba: $ad
    ld a, [hl]                                    ; $40bb: $7e
    xor l                                         ; $40bc: $ad
    rst $18                                       ; $40bd: $df
    rst $38                                       ; $40be: $ff
    jr jr_02e_40b0                                ; $40bf: $18 $ef

    inc a                                         ; $40c1: $3c
    rst $08                                       ; $40c2: $cf
    inc l                                         ; $40c3: $2c
    rst $10                                       ; $40c4: $d7
    inc a                                         ; $40c5: $3c
    rst $28                                       ; $40c6: $ef
    rst $38                                       ; $40c7: $ff
    ld l, [hl]                                    ; $40c8: $6e

jr_02e_40c9:
    sub a                                         ; $40c9: $97
    ld d, [hl]                                    ; $40ca: $56
    xor e                                         ; $40cb: $ab
    ld l, [hl]                                    ; $40cc: $6e
    rst $10                                       ; $40cd: $d7
    rst $10                                       ; $40ce: $d7
    dec hl                                        ; $40cf: $2b
    rst $38                                       ; $40d0: $ff
    nop                                           ; $40d1: $00
    rst $38                                       ; $40d2: $ff
    ld h, [hl]                                    ; $40d3: $66
    rst $38                                       ; $40d4: $ff
    rst $38                                       ; $40d5: $ff
    rst $38                                       ; $40d6: $ff
    inc a                                         ; $40d7: $3c
    rst $38                                       ; $40d8: $ff
    rst $38                                       ; $40d9: $ff
    nop                                           ; $40da: $00
    inc a                                         ; $40db: $3c
    add c                                         ; $40dc: $81
    nop                                           ; $40dd: $00
    db $db                                        ; $40de: $db
    nop                                           ; $40df: $00
    rst $38                                       ; $40e0: $ff
    nop                                           ; $40e1: $00
    ld a, a                                       ; $40e2: $7f
    daa                                           ; $40e3: $27
    ldh a, [$63]                                  ; $40e4: $f0 $63
    ldh a, [$71]                                  ; $40e6: $f0 $71
    ld hl, sp+$33                                 ; $40e8: $f8 $33
    cp $e0                                        ; $40ea: $fe $e0
    rst $38                                       ; $40ec: $ff
    ld [hl], c                                    ; $40ed: $71
    ld hl, sp+$63                                 ; $40ee: $f8 $63
    ldh a, [$27]                                  ; $40f0: $f0 $27
    ldh a, [rTAC]                                 ; $40f2: $f0 $07
    ld hl, sp-$01                                 ; $40f4: $f8 $ff
    inc e                                         ; $40f6: $1c
    db $e3                                        ; $40f7: $e3
    jr nc, jr_02e_40c9                            ; $40f8: $30 $cf

    ld h, b                                       ; $40fa: $60
    sbc a                                         ; $40fb: $9f
    ld b, b                                       ; $40fc: $40
    cp a                                          ; $40fd: $bf
    rst $38                                       ; $40fe: $ff
    pop bc                                        ; $40ff: $c1
    ld a, $94                                     ; $4100: $3e $94
    ld l, e                                       ; $4102: $6b
    add c                                         ; $4103: $81
    ld a, [hl]                                    ; $4104: $7e
    ldh [rIE], a                                  ; $4105: $e0 $ff
    rst $38                                       ; $4107: $ff
    jr c, @-$1f                                   ; $4108: $38 $df

    inc c                                         ; $410a: $0c
    rst $30                                       ; $410b: $f7
    ld d, [hl]                                    ; $410c: $56
    xor e                                         ; $410d: $ab
    ld a, [bc]                                    ; $410e: $0a
    rst $30                                       ; $410f: $f7
    rst $38                                       ; $4110: $ff
    ld e, a                                       ; $4111: $5f
    and c                                         ; $4112: $a1
    dec l                                         ; $4113: $2d
    db $d3                                        ; $4114: $d3
    ld a, a                                       ; $4115: $7f
    add c                                         ; $4116: $81
    rst $38                                       ; $4117: $ff
    inc c                                         ; $4118: $0c
    rst $38                                       ; $4119: $ff
    db $fc                                        ; $411a: $fc
    or e                                          ; $411b: $b3
    ldh a, [$6f]                                  ; $411c: $f0 $6f
    ldh [$df], a                                  ; $411e: $e0 $df
    ret nz                                        ; $4120: $c0

    cp a                                          ; $4121: $bf
    ei                                            ; $4122: $fb
    pop bc                                        ; $4123: $c1
    cp [hl]                                       ; $4124: $be
    ldh [$e1], a                                  ; $4125: $e0 $e1
    rst $38                                       ; $4127: $ff
    ld c, $fd                                     ; $4128: $0e $fd
    cp d                                          ; $412a: $ba
    ld a, [c]                                     ; $412b: $f2
    rst $38                                       ; $412c: $ff
    ld l, l                                       ; $412d: $6d
    push hl                                       ; $412e: $e5
    jp c, $94eb                                   ; $412f: $da $eb $94

    sbc $a1                                       ; $4132: $de $a1
    rst $30                                       ; $4134: $f7
    rst $38                                       ; $4135: $ff
    ld [$00ff], sp                                ; $4136: $08 $ff $00
    rst $38                                       ; $4139: $ff
    ld e, h                                       ; $413a: $5c
    db $fc                                        ; $413b: $fc
    di                                            ; $413c: $f3
    ldh a, [$7d]                                  ; $413d: $f0 $7d
    rst $28                                       ; $413f: $ef
    ldh [$e8], a                                  ; $4140: $e0 $e8
    ld e, [hl]                                    ; $4142: $5e
    db $fd                                        ; $4143: $fd
    ld a, [$edf2]                                 ; $4144: $fa $f2 $ed
    ldh [$e7], a                                  ; $4147: $e0 $e7
    rst $38                                       ; $4149: $ff
    ld bc, $03fe                                  ; $414a: $01 $fe $03
    db $fd                                        ; $414d: $fd
    dec b                                         ; $414e: $05
    ld hl, sp+$3b                                 ; $414f: $f8 $3b
    pop bc                                        ; $4151: $c1
    rst $38                                       ; $4152: $ff
    ld h, l                                       ; $4153: $65
    and b                                         ; $4154: $a0
    cp e                                          ; $4155: $bb
    ld bc, $22e7                                  ; $4156: $01 $e7 $22
    cp [hl]                                       ; $4159: $be
    dec b                                         ; $415a: $05
    rst $38                                       ; $415b: $ff
    add b                                         ; $415c: $80
    ld a, a                                       ; $415d: $7f
    ld b, b                                       ; $415e: $40
    ccf                                           ; $415f: $3f
    ldh [$1f], a                                  ; $4160: $e0 $1f
    ld a, h                                       ; $4162: $7c
    inc bc                                        ; $4163: $03
    rst $38                                       ; $4164: $ff
    ld a, [c]                                     ; $4165: $f2
    ld bc, $007f                                  ; $4166: $01 $7f $00
    or e                                          ; $4169: $b3
    nop                                           ; $416a: $00
    ld e, a                                       ; $416b: $5f

jr_02e_416c:
    add b                                         ; $416c: $80
    rst $38                                       ; $416d: $ff
    inc bc                                        ; $416e: $03
    cp $0e                                        ; $416f: $fe $0e
    db $fc                                        ; $4171: $fc
    inc a                                         ; $4172: $3c
    db $f4                                        ; $4173: $f4
    push hl                                       ; $4174: $e5
    push bc                                       ; $4175: $c5
    rst $38                                       ; $4176: $ff

jr_02e_4177:
    add a                                         ; $4177: $87
    add l                                         ; $4178: $85
    add a                                         ; $4179: $87
    add d                                         ; $417a: $82
    sbc a                                         ; $417b: $9f
    adc a                                         ; $417c: $8f
    rst $38                                       ; $417d: $ff
    cp b                                          ; $417e: $b8
    rst $38                                       ; $417f: $ff
    ret nz                                        ; $4180: $c0

    rst $38                                       ; $4181: $ff
    ldh a, [$7f]                                  ; $4182: $f0 $7f
    db $fc                                        ; $4184: $fc

jr_02e_4185:
    ld l, a                                       ; $4185: $6f
    rst $38                                       ; $4186: $ff
    and e                                         ; $4187: $a3
    rst $38                                       ; $4188: $ff
    cp a                                          ; $4189: $bf
    and c                                         ; $418a: $a1
    ld l, l                                       ; $418b: $6d
    ld b, c                                       ; $418c: $41
    ld sp, hl                                     ; $418d: $f9
    pop af                                        ; $418e: $f1
    rst $38                                       ; $418f: $ff
    dec e                                         ; $4190: $1d
    rst $38                                       ; $4191: $ff
    cp a                                          ; $4192: $bf
    rst $08                                       ; $4193: $cf
    rst $18                                       ; $4194: $df
    ld h, $7e                                     ; $4195: $26 $7e
    rst $38                                       ; $4197: $ff
    inc a                                         ; $4198: $3c
    db $eb                                        ; $4199: $eb
    rst $38                                       ; $419a: $ff
    jr z, jr_02e_416c                             ; $419b: $28 $cf

    ld l, $c9                                     ; $419d: $2e $c9
    cpl                                           ; $419f: $2f
    call z, $e01f                                 ; $41a0: $cc $1f $e0
    rst $08                                       ; $41a3: $cf
    jr c, jr_02e_4185                             ; $41a4: $38 $df

    jr z, jr_02e_4177                             ; $41a6: $28 $cf

    db $fc                                        ; $41a8: $fc
    db $e3                                        ; $41a9: $e3
    ldh a, [$e3]                                  ; $41aa: $f0 $e3
    call $bf6b                                    ; $41ac: $cd $6b $bf
    ld l, e                                       ; $41af: $6b
    or [hl]                                       ; $41b0: $b6
    ld h, $ed                                     ; $41b1: $26 $ed
    inc l                                         ; $41b3: $2c
    ei                                            ; $41b4: $fb
    ldh [$e1], a                                  ; $41b5: $e0 $e1
    ld l, a                                       ; $41b7: $6f
    rst $38                                       ; $41b8: $ff
    adc h                                         ; $41b9: $8c
    rra                                           ; $41ba: $1f
    ldh [$8b], a                                  ; $41bb: $e0 $8b
    ld [hl], l                                    ; $41bd: $75
    rst $10                                       ; $41be: $d7
    xor e                                         ; $41bf: $ab
    rst $38                                       ; $41c0: $ff

Call_02e_41c1:
    ld sp, hl                                     ; $41c1: $f9
    ld a, [hl]                                    ; $41c2: $7e
    ret nc                                        ; $41c3: $d0

    rst $20                                       ; $41c4: $e7
    db $10                                        ; $41c5: $10
    pop hl                                        ; $41c6: $e1
    jp Jump_000_07f0                              ; $41c7: $c3 $f0 $07


    ldh [rTAC], a                                 ; $41ca: $e0 $07
    ei                                            ; $41cc: $fb
    nop                                           ; $41cd: $00
    sbc a                                         ; $41ce: $9f
    ld [bc], a                                    ; $41cf: $02
    ldh [rIE], a                                  ; $41d0: $e0 $ff
    nop                                           ; $41d2: $00
    nop                                           ; $41d3: $00
    rst $38                                       ; $41d4: $ff
    ld b, $fb                                     ; $41d5: $06 $fb
    rst $38                                       ; $41d7: $ff
    rra                                           ; $41d8: $1f
    ldh a, [$c0]                                  ; $41d9: $f0 $c0

jr_02e_41db:
    jr nc, jr_02e_41db                            ; $41db: $30 $fe

    ld [hl], b                                    ; $41dd: $70
    ld hl, sp+$63                                 ; $41de: $f8 $63
    rst $38                                       ; $41e0: $ff
    ld hl, sp+$23                                 ; $41e1: $f8 $23
    ldh a, [$aa]                                  ; $41e3: $f0 $aa
    push de                                       ; $41e5: $d5
    rst $10                                       ; $41e6: $d7
    xor b                                         ; $41e7: $a8
    ld a, a                                       ; $41e8: $7f
    rst $38                                       ; $41e9: $ff
    jp hl                                         ; $41ea: $e9


    rla                                           ; $41eb: $17
    rst $30                                       ; $41ec: $f7
    ld [hl+], a                                   ; $41ed: $22
    jp nz, $dc3c                                  ; $41ee: $c2 $3c $dc

    ld c, $ff                                     ; $41f1: $0e $ff
    ld a, [c]                                     ; $41f3: $f2
    ld bc, $fffe                                  ; $41f4: $01 $fe $ff
    dec d                                         ; $41f7: $15
    rst $38                                       ; $41f8: $ff
    xor e                                         ; $41f9: $ab
    cp $ff                                        ; $41fa: $fe $ff
    ld a, a                                       ; $41fc: $7f
    call c, $eedb                                 ; $41fd: $dc $db $ee
    db $ed                                        ; $4200: $ed
    ld a, a                                       ; $4201: $7f
    ld a, h                                       ; $4202: $7c
    rst $38                                       ; $4203: $ff
    rst $38                                       ; $4204: $ff
    ret nz                                        ; $4205: $c0

    db $fc                                        ; $4206: $fc
    add e                                         ; $4207: $83
    ld a, [c]                                     ; $4208: $f2
    db $ed                                        ; $4209: $ed
    ccf                                           ; $420a: $3f
    ret c                                         ; $420b: $d8

    rrca                                          ; $420c: $0f
    rst $18                                       ; $420d: $df
    push af                                       ; $420e: $f5
    ld d, a                                       ; $420f: $57
    xor e                                         ; $4210: $ab
    ld a, [bc]                                    ; $4211: $0a
    or $f0                                        ; $4212: $f6 $f0
    jp $edf2                                      ; $4214: $c3 $f2 $ed


    rst $38                                       ; $4217: $ff
    ld a, a                                       ; $4218: $7f
    cp b                                          ; $4219: $b8
    rst $38                                       ; $421a: $ff
    dec c                                         ; $421b: $0d
    ld a, a                                       ; $421c: $7f
    add a                                         ; $421d: $87
    cp $12                                        ; $421e: $fe $12
    ei                                            ; $4220: $fb
    rst $38                                       ; $4221: $ff
    dec bc                                        ; $4222: $0b
    call nc, $ffe1                                ; $4223: $d4 $e1 $ff
    push hl                                       ; $4226: $e5
    ccf                                           ; $4227: $3f
    jp c, $fd0f                                   ; $4228: $da $0f $fd

    rst $30                                       ; $422b: $f7
    ldh [$e7], a                                  ; $422c: $e0 $e7
    rst $38                                       ; $422e: $ff
    push hl                                       ; $422f: $e5
    ld a, a                                       ; $4230: $7f
    cp d                                          ; $4231: $ba
    rst $38                                       ; $4232: $ff
    rrca                                          ; $4233: $0f
    cp $e0                                        ; $4234: $fe $e0
    rst $20                                       ; $4236: $e7
    push hl                                       ; $4237: $e5
    ld [hl+], a                                   ; $4238: $22
    ei                                            ; $4239: $fb
    ld b, [hl]                                    ; $423a: $46
    rst $18                                       ; $423b: $df
    ccf                                           ; $423c: $3f
    db $fd                                        ; $423d: $fd
    rst $38                                       ; $423e: $ff
    ld a, [hl]                                    ; $423f: $7e
    sub $6c                                       ; $4240: $d6 $6c
    cp $54                                        ; $4242: $fe $54
    rst $38                                       ; $4244: $ff
    ld d, h                                       ; $4245: $54
    xor e                                         ; $4246: $ab
    rst $38                                       ; $4247: $ff
    ld d, l                                       ; $4248: $55
    and a                                         ; $4249: $a7
    ld b, h                                       ; $424a: $44
    db $dd                                        ; $424b: $dd
    ld h, b                                       ; $424c: $60
    ei                                            ; $424d: $fb
    db $fc                                        ; $424e: $fc
    cp a                                          ; $424f: $bf
    rst $38                                       ; $4250: $ff
    ld a, [hl]                                    ; $4251: $7e
    ld l, e                                       ; $4252: $6b
    ld [hl], $7f                                  ; $4253: $36 $7f
    ld a, [hl+]                                   ; $4255: $2a
    rst $38                                       ; $4256: $ff
    ld a, [hl+]                                   ; $4257: $2a
    push de                                       ; $4258: $d5
    rst $38                                       ; $4259: $ff
    xor d                                         ; $425a: $aa
    ei                                            ; $425b: $fb
    db $eb                                        ; $425c: $eb
    ld e, e                                       ; $425d: $5b
    bit 7, d                                      ; $425e: $cb $7a
    ld hl, sp-$35                                 ; $4260: $f8 $cb
    ld a, a                                       ; $4262: $7f
    ret z                                         ; $4263: $c8

    db $db                                        ; $4264: $db
    set 7, e                                      ; $4265: $cb $fb
    cp e                                          ; $4267: $bb
    sbc d                                         ; $4268: $9a
    adc b                                         ; $4269: $88
    ld d, l                                       ; $426a: $55
    ret nz                                        ; $426b: $c0

    rst $38                                       ; $426c: $ff
    rst $10                                       ; $426d: $d7
    sbc $d3                                       ; $426e: $de $d3
    ld e, $1f                                     ; $4270: $1e $1f
    rst $10                                       ; $4272: $d7
    inc de                                        ; $4273: $13
    rst $18                                       ; $4274: $df
    cp a                                          ; $4275: $bf
    db $d3                                        ; $4276: $d3
    rst $18                                       ; $4277: $df
    db $dd                                        ; $4278: $dd
    rla                                           ; $4279: $17
    ld de, $9fff                                  ; $427a: $11 $ff $9f
    ret nz                                        ; $427d: $c0

    ld bc, $feff                                  ; $427e: $01 $ff $fe
    ld [bc], a                                    ; $4281: $02
    db $fc                                        ; $4282: $fc
    inc b                                         ; $4283: $04
    ld hl, sp+$48                                 ; $4284: $f8 $48
    or b                                          ; $4286: $b0
    db $10                                        ; $4287: $10
    ld a, a                                       ; $4288: $7f
    ldh [rNR43], a                                ; $4289: $e0 $22
    ret nz                                        ; $428b: $c0

    ld d, b                                       ; $428c: $50
    add b                                         ; $428d: $80
    nop                                           ; $428e: $00
    rst $38                                       ; $428f: $ff
    cp [hl]                                       ; $4290: $be
    pop bc                                        ; $4291: $c1
    rst $38                                       ; $4292: $ff
    xor b                                         ; $4293: $a8
    scf                                           ; $4294: $37
    db $10                                        ; $4295: $10
    rra                                           ; $4296: $1f
    ld c, d                                       ; $4297: $4a
    dec c                                         ; $4298: $0d
    dec h                                         ; $4299: $25
    ld b, $ff                                     ; $429a: $06 $ff
    ld a, d                                       ; $429c: $7a
    inc bc                                        ; $429d: $03
    inc b                                         ; $429e: $04
    ei                                            ; $429f: $fb
    add hl, bc                                    ; $42a0: $09
    or $02                                        ; $42a1: $f6 $02
    db $fc                                        ; $42a3: $fc
    rst $38                                       ; $42a4: $ff
    dec h                                         ; $42a5: $25
    ret c                                         ; $42a6: $d8

    ld a, [bc]                                    ; $42a7: $0a
    ldh a, [rNR22]                                ; $42a8: $f0 $17
    ldh [$3e], a                                  ; $42aa: $e0 $3e
    ret nz                                        ; $42ac: $c0

    rst $38                                       ; $42ad: $ff
    ld e, l                                       ; $42ae: $5d
    and b                                         ; $42af: $a0
    add d                                         ; $42b0: $82
    nop                                           ; $42b1: $00
    ld b, h                                       ; $42b2: $44
    nop                                           ; $42b3: $00
    add d                                         ; $42b4: $82
    nop                                           ; $42b5: $00
    rst $38                                       ; $42b6: $ff
    inc b                                         ; $42b7: $04
    nop                                           ; $42b8: $00
    adc d                                         ; $42b9: $8a
    nop                                           ; $42ba: $00
    dec h                                         ; $42bb: $25
    nop                                           ; $42bc: $00
    ld c, $00                                     ; $42bd: $0e $00
    rst $38                                       ; $42bf: $ff
    ld d, l                                       ; $42c0: $55
    nop                                           ; $42c1: $00
    cp a                                          ; $42c2: $bf
    ld bc, $147f                                  ; $42c3: $01 $7f $14
    rst $38                                       ; $42c6: $ff
    dec hl                                        ; $42c7: $2b
    rst $38                                       ; $42c8: $ff
    ld a, a                                       ; $42c9: $7f
    dec e                                         ; $42ca: $1d
    rst $38                                       ; $42cb: $ff
    cpl                                           ; $42cc: $2f
    ld a, a                                       ; $42cd: $7f
    rla                                           ; $42ce: $17

Call_02e_42cf:
    rst $38                                       ; $42cf: $ff
    ccf                                           ; $42d0: $3f
    rst $38                                       ; $42d1: $ff
    rst $38                                       ; $42d2: $ff
    ld d, a                                       ; $42d3: $57
    ld b, b                                       ; $42d4: $40
    cp a                                          ; $42d5: $bf
    and h                                         ; $42d6: $a4
    db $db                                        ; $42d7: $db
    ret nz                                        ; $42d8: $c0

    ld a, a                                       ; $42d9: $7f
    rst $38                                       ; $42da: $ff
    add sp, -$49                                  ; $42db: $e8 $b7
    ld a, [c]                                     ; $42dd: $f2
    db $fd                                        ; $42de: $fd
    ld hl, sp-$11                                 ; $42df: $f8 $ef
    db $fc                                        ; $42e1: $fc
    rst $30                                       ; $42e2: $f7
    rst $38                                       ; $42e3: $ff
    ld a, [$3ad5]                                 ; $42e4: $fa $d5 $3a
    ret nz                                        ; $42e7: $c0

    ld a, a                                       ; $42e8: $7f
    add b                                         ; $42e9: $80
    cpl                                           ; $42ea: $2f
    ret nc                                        ; $42eb: $d0

    rst $38                                       ; $42ec: $ff
    ld d, l                                       ; $42ed: $55
    xor d                                         ; $42ee: $aa
    dec bc                                        ; $42ef: $0b
    db $f4                                        ; $42f0: $f4
    ld hl, $04de                                  ; $42f1: $21 $de $04
    ei                                            ; $42f4: $fb
    rst $38                                       ; $42f5: $ff
    nop                                           ; $42f6: $00
    rst $38                                       ; $42f7: $ff
    adc [hl]                                      ; $42f8: $8e
    nop                                           ; $42f9: $00
    rst $18                                       ; $42fa: $df
    nop                                           ; $42fb: $00
    xor [hl]                                      ; $42fc: $ae
    inc b                                         ; $42fd: $04
    cp $28                                        ; $42fe: $fe $28
    ret nz                                        ; $4300: $c0

    inc b                                         ; $4301: $04
    ld e, a                                       ; $4302: $5f
    xor d                                         ; $4303: $aa
    xor d                                         ; $4304: $aa
    ld d, l                                       ; $4305: $55
    dec b                                         ; $4306: $05
    ld a, [$ccfe]                                 ; $4307: $fa $fe $cc
    ldh [$5f], a                                  ; $430a: $e0 $5f
    rst $38                                       ; $430c: $ff
    cpl                                           ; $430d: $2f
    rst $38                                       ; $430e: $ff
    ld a, l                                       ; $430f: $7d
    rst $38                                       ; $4310: $ff
    xor d                                         ; $4311: $aa
    rst $38                                       ; $4312: $ff
    ld a, [$d555]                                 ; $4313: $fa $55 $d5
    xor d                                         ; $4316: $aa
    and b                                         ; $4317: $a0
    ld e, a                                       ; $4318: $5f
    db $fc                                        ; $4319: $fc
    ei                                            ; $431a: $fb
    rst $38                                       ; $431b: $ff
    cp $55                                        ; $431c: $fe $55
    db $f4                                        ; $431e: $f4
    xor e                                         ; $431f: $ab
    xor d                                         ; $4320: $aa
    ld d, l                                       ; $4321: $55
    ret nc                                        ; $4322: $d0

    xor a                                         ; $4323: $af
    rst $28                                       ; $4324: $ef
    add h                                         ; $4325: $84
    ld a, e                                       ; $4326: $7b
    jr nz, @-$1f                                  ; $4327: $20 $df

    reti                                          ; $4329: $d9


    ldh [$fb], a                                  ; $432a: $e0 $fb
    adc c                                         ; $432c: $89
    halt                                          ; $432d: $76
    rst $38                                       ; $432e: $ff
    ld b, d                                       ; $432f: $42
    inc a                                         ; $4330: $3c
    and l                                         ; $4331: $a5
    jr c, jr_02e_434e                             ; $4332: $38 $1a

    db $10                                        ; $4334: $10
    ld c, a                                       ; $4335: $4f
    ld [$26ef], sp                                ; $4336: $08 $ef $26
    inc b                                         ; $4339: $04
    ld a, e                                       ; $433a: $7b
    ld [bc], a                                    ; $433b: $02
    ldh a, [$e0]                                  ; $433c: $f0 $e0
    or $c2                                        ; $433e: $f6 $c2
    ld a, h                                       ; $4340: $7c
    rst $38                                       ; $4341: $ff
    db $e4                                        ; $4342: $e4
    cp b                                          ; $4343: $b8
    ld hl, sp-$10                                 ; $4344: $f8 $f0
    ldh a, [$e0]                                  ; $4346: $f0 $e0
    ld [c], a                                     ; $4348: $e2
    ret nz                                        ; $4349: $c0

    rst $38                                       ; $434a: $ff
    ret nc                                        ; $434b: $d0

    add b                                         ; $434c: $80
    rst $38                                       ; $434d: $ff

jr_02e_434e:
    cp a                                          ; $434e: $bf
    rst $38                                       ; $434f: $ff
    ld e, [hl]                                    ; $4350: $5e
    ld a, [hl]                                    ; $4351: $7e
    inc l                                         ; $4352: $2c
    ld sp, hl                                     ; $4353: $f9
    cp l                                          ; $4354: $bd
    ldh [$e6], a                                  ; $4355: $e0 $e6
    and b                                         ; $4357: $a0
    ldh [$80], a                                  ; $4358: $e0 $80
    xor $44                                       ; $435a: $ee $44
    db $fc                                        ; $435c: $fc
    and b                                         ; $435d: $a0
    db $fc                                        ; $435e: $fc
    ldh [$e5], a                                  ; $435f: $e0 $e5
    ldh a, [$e3]                                  ; $4361: $f0 $e3
    rst $38                                       ; $4363: $ff
    and b                                         ; $4364: $a0
    rst $38                                       ; $4365: $ff
    db $f4                                        ; $4366: $f4
    rst $38                                       ; $4367: $ff
    ld [$ffef], a                                 ; $4368: $ea $ef $ff
    db $f4                                        ; $436b: $f4
    cp $d3                                        ; $436c: $fe $d3
    ld e, h                                       ; $436e: $5c
    ldh [$5e], a                                  ; $436f: $e0 $5e
    cp $2c                                        ; $4371: $fe $2c
    rst $38                                       ; $4373: $ff
    db $fd                                        ; $4374: $fd
    ld a, b                                       ; $4375: $78
    ld a, [$f7b0]                                 ; $4376: $fa $b0 $f7
    ld h, b                                       ; $4379: $60
    cp $40                                        ; $437a: $fe $40
    ei                                            ; $437c: $fb
    db $fd                                        ; $437d: $fd
    and b                                         ; $437e: $a0
    ld [hl], b                                    ; $437f: $70
    db $e3                                        ; $4380: $e3
    db $fc                                        ; $4381: $fc
    nop                                           ; $4382: $00
    ld hl, sp+$00                                 ; $4383: $f8 $00
    ld d, b                                       ; $4385: $50
    rst $28                                       ; $4386: $ef
    and b                                         ; $4387: $a0
    and d                                         ; $4388: $a2
    ld b, b                                       ; $4389: $40
    ld d, b                                       ; $438a: $50
    or b                                          ; $438b: $b0
    pop hl                                        ; $438c: $e1
    ld e, a                                       ; $438d: $5f
    ld a, a                                       ; $438e: $7f
    cpl                                           ; $438f: $2f
    rst $18                                       ; $4390: $df
    cp a                                          ; $4391: $bf
    dec a                                         ; $4392: $3d
    rra                                           ; $4393: $1f
    ld a, [de]                                    ; $4394: $1a
    ld c, [hl]                                    ; $4395: $4e
    nop                                           ; $4396: $00
    ld [c], a                                     ; $4397: $e2
    dec de                                        ; $4398: $1b
    ld hl, sp-$01                                 ; $4399: $f8 $ff
    ld a, a                                       ; $439b: $7f
    rst $28                                       ; $439c: $ef
    rst $38                                       ; $439d: $ff
    xor b                                         ; $439e: $a8
    xor b                                         ; $439f: $a8

jr_02e_43a0:
    add b                                         ; $43a0: $80
    rst $38                                       ; $43a1: $ff
    xor b                                         ; $43a2: $a8
    db $e3                                        ; $43a3: $e3
    ld a, a                                       ; $43a4: $7f
    rst $38                                       ; $43a5: $ff
    or $f1                                        ; $43a6: $f6 $f1
    dec bc                                        ; $43a8: $0b
    jp nz, $e8fa                                  ; $43a9: $c2 $fa $e8

    inc e                                         ; $43ac: $1c
    db $e3                                        ; $43ad: $e3
    inc h                                         ; $43ae: $24
    rst $38                                       ; $43af: $ff
    rst $00                                       ; $43b0: $c7
    ld b, [hl]                                    ; $43b1: $46
    add l                                         ; $43b2: $85
    ld c, [hl]                                    ; $43b3: $4e
    add a                                         ; $43b4: $87
    xor a                                         ; $43b5: $af
    ld c, $ff                                     ; $43b6: $0e $ff

jr_02e_43b8:
    rst $28                                       ; $43b8: $ef
    rrca                                          ; $43b9: $0f
    rst $38                                       ; $43ba: $ff
    ld c, [hl]                                    ; $43bb: $4e
    inc a                                         ; $43bc: $3c
    db $ed                                        ; $43bd: $ed
    add b                                         ; $43be: $80
    jr nz, jr_02e_43a0                            ; $43bf: $20 $df

    ld [bc], a                                    ; $43c1: $02
    ld a, a                                       ; $43c2: $7f
    db $fd                                        ; $43c3: $fd
    db $10                                        ; $43c4: $10
    rst $28                                       ; $43c5: $ef
    ld [$40f7], sp                                ; $43c6: $08 $f7 $40
    cp a                                          ; $43c9: $bf
    nop                                           ; $43ca: $00
    pop hl                                        ; $43cb: $e1
    rst $38                                       ; $43cc: $ff
    db $10                                        ; $43cd: $10
    rst $28                                       ; $43ce: $ef
    jr jr_02e_43b8                                ; $43cf: $18 $e7

    ld e, b                                       ; $43d1: $58
    and a                                         ; $43d2: $a7
    ld [$7fff], sp                                ; $43d3: $08 $ff $7f
    ld [bc], a                                    ; $43d6: $02
    db $fd                                        ; $43d7: $fd
    and $19                                       ; $43d8: $e6 $19
    halt                                          ; $43da: $76
    adc e                                         ; $43db: $8b
    inc b                                         ; $43dc: $04
    call nz, Call_02e_7e80                        ; $43dd: $c4 $80 $7e
    db $fd                                        ; $43e0: $fd
    db $e3                                        ; $43e1: $e3
    cp e                                          ; $43e2: $bb
    cp e                                          ; $43e3: $bb
    rst $38                                       ; $43e4: $ff
    rst $38                                       ; $43e5: $ff
    xor $ee                                       ; $43e6: $ee $ee
    ld hl, sp-$1f                                 ; $43e8: $f8 $e1
    ei                                            ; $43ea: $fb
    xor $ee                                       ; $43eb: $ee $ee
    db $fc                                        ; $43ed: $fc
    pop hl                                        ; $43ee: $e1
    ld d, l                                       ; $43ef: $55
    ld d, l                                       ; $43f0: $55
    cp e                                          ; $43f1: $bb
    cp e                                          ; $43f2: $bb
    ld d, l                                       ; $43f3: $55
    pop af                                        ; $43f4: $f1
    ld d, l                                       ; $43f5: $55
    ld hl, sp-$1f                                 ; $43f6: $f8 $e1
    reti                                          ; $43f8: $d9


    ret nz                                        ; $43f9: $c0

    db $fc                                        ; $43fa: $fc
    ldh [rLY], a                                  ; $43fb: $e0 $44
    ld b, h                                       ; $43fd: $44
    xor d                                         ; $43fe: $aa
    xor d                                         ; $43ff: $aa
    db $db                                        ; $4400: $db
    ld de, $f811                                  ; $4401: $11 $11 $f8
    pop hl                                        ; $4404: $e1
    ld de, $fc11                                  ; $4405: $11 $11 $fc
    pop hl                                        ; $4408: $e1
    nop                                           ; $4409: $00
    nop                                           ; $440a: $00
    rst $08                                       ; $440b: $cf
    ld b, h                                       ; $440c: $44
    ld b, h                                       ; $440d: $44
    nop                                           ; $440e: $00
    nop                                           ; $440f: $00
    ld hl, sp-$1f                                 ; $4410: $f8 $e1
    cp $ef                                        ; $4412: $fe $ef
    ld [$ff08], sp                                ; $4414: $08 $08 $ff
    inc bc                                        ; $4417: $03
    inc bc                                        ; $4418: $03
    ld b, $06                                     ; $4419: $06 $06
    daa                                           ; $441b: $27
    daa                                           ; $441c: $27
    adc a                                         ; $441d: $8f
    adc a                                         ; $441e: $8f
    rst $38                                       ; $441f: $ff
    ccf                                           ; $4420: $3f
    ccf                                           ; $4421: $3f
    add b                                         ; $4422: $80
    add b                                         ; $4423: $80
    ld [$e008], sp                                ; $4424: $08 $08 $e0
    ldh [rIE], a                                  ; $4427: $e0 $ff
    cp b                                          ; $4429: $b8
    cp b                                          ; $442a: $b8
    db $ec                                        ; $442b: $ec
    db $ec                                        ; $442c: $ec
    cp $fe                                        ; $442d: $fe $fe
    ei                                            ; $442f: $fb
    ei                                            ; $4430: $fb
    ld hl, sp+$10                                 ; $4431: $f8 $10
    ret nz                                        ; $4433: $c0

    rst $08                                       ; $4434: $cf
    db $e4                                        ; $4435: $e4
    add sp, -$1d                                  ; $4436: $e8 $e3
    cp c                                          ; $4438: $b9
    cp c                                          ; $4439: $b9
    ld l, a                                       ; $443a: $6f
    ld l, a                                       ; $443b: $6f
    ld a, a                                       ; $443c: $7f
    sbc c                                         ; $443d: $99
    ld a, a                                       ; $443e: $7f
    ld a, e                                       ; $443f: $7b
    pop hl                                        ; $4440: $e1
    or h                                          ; $4441: $b4
    push hl                                       ; $4442: $e5
    db $fd                                        ; $4443: $fd
    db $fd                                        ; $4444: $fd
    ld l, l                                       ; $4445: $6d
    db $e3                                        ; $4446: $e3
    and h                                         ; $4447: $a4
    push hl                                       ; $4448: $e5
    db $ec                                        ; $4449: $ec
    rst $18                                       ; $444a: $df
    db $ec                                        ; $444b: $ec
    rst $38                                       ; $444c: $ff
    rst $38                                       ; $444d: $ff
    or $f6                                        ; $444e: $f6 $f6
    ldh [$e7], a                                  ; $4450: $e0 $e7
    inc b                                         ; $4452: $04
    inc b                                         ; $4453: $04
    cp a                                          ; $4454: $bf
    nop                                           ; $4455: $00
    nop                                           ; $4456: $00
    adc a                                         ; $4457: $8f
    adc a                                         ; $4458: $8f
    inc a                                         ; $4459: $3c
    inc a                                         ; $445a: $3c
    ret z                                         ; $445b: $c8

    push hl                                       ; $445c: $e5
    ld b, b                                       ; $445d: $40
    rst $38                                       ; $445e: $ff
    ld b, b                                       ; $445f: $40
    nop                                           ; $4460: $00
    nop                                           ; $4461: $00
    adc b                                         ; $4462: $88
    adc b                                         ; $4463: $88
    ldh [$e0], a                                  ; $4464: $e0 $e0
    ldh a, [$9f]                                  ; $4466: $f0 $9f
    ldh a, [$d2]                                  ; $4468: $f0 $d2
    jp nc, $f8f8                                  ; $446a: $d2 $f8 $f8

    and b                                         ; $446d: $a0
    rst $20                                       ; $446e: $e7
    ld l, b                                       ; $446f: $68
    pop hl                                        ; $4470: $e1
    db $10                                        ; $4471: $10
    rst $38                                       ; $4472: $ff
    db $10                                        ; $4473: $10
    ret nz                                        ; $4474: $c0

    ret nz                                        ; $4475: $c0

    ld [bc], a                                    ; $4476: $02
    ld [bc], a                                    ; $4477: $02
    jr nz, jr_02e_449a                            ; $4478: $20 $20

    rlca                                          ; $447a: $07
    sbc a                                         ; $447b: $9f
    rlca                                          ; $447c: $07
    sbc l                                         ; $447d: $9d
    sbc l                                         ; $447e: $9d
    ccf                                           ; $447f: $3f
    ccf                                           ; $4480: $3f
    sub [hl]                                      ; $4481: $96
    push hl                                       ; $4482: $e5
    dec c                                         ; $4483: $0d
    db $e3                                        ; $4484: $e3
    cp a                                          ; $4485: $bf
    cp l                                          ; $4486: $bd
    cp a                                          ; $4487: $bf
    dec b                                         ; $4488: $05
    db $e3                                        ; $4489: $e3
    db $fc                                        ; $448a: $fc
    db $fc                                        ; $448b: $fc
    rst $28                                       ; $448c: $ef

jr_02e_448d:
    rst $28                                       ; $448d: $ef
    ld [$ffe7], a                                 ; $448e: $ea $e7 $ff
    rst $38                                       ; $4491: $ff
    rst $38                                       ; $4492: $ff
    ld a, [c]                                     ; $4493: $f2
    ld a, [c]                                     ; $4494: $f2

jr_02e_4495:
    ret c                                         ; $4495: $d8

    ret c                                         ; $4496: $d8

    db $fc                                        ; $4497: $fc
    db $fc                                        ; $4498: $fc
    db $f4                                        ; $4499: $f4

jr_02e_449a:
    or a                                          ; $449a: $b7
    db $f4                                        ; $449b: $f4
    cp $fe                                        ; $449c: $fe $fe
    push hl                                       ; $449e: $e5
    pop bc                                        ; $449f: $c1
    ei                                            ; $44a0: $fb
    ei                                            ; $44a1: $fb
    ld d, d                                       ; $44a2: $52
    jp hl                                         ; $44a3: $e9


    jr c, jr_02e_448d                             ; $44a4: $38 $e7

    jr c, jr_02e_4495                             ; $44a6: $38 $ed

    db $ed                                        ; $44a8: $ed
    rst $08                                       ; $44a9: $cf
    push bc                                       ; $44aa: $c5
    inc b                                         ; $44ab: $04
    push hl                                       ; $44ac: $e5
    db $fc                                        ; $44ad: $fc
    db $fc                                        ; $44ae: $fc
    rst $30                                       ; $44af: $f7
    reti                                          ; $44b0: $d9


    rst $30                                       ; $44b1: $f7
    call nc, $f4e1                                ; $44b2: $d4 $e1 $f4
    rst $08                                       ; $44b5: $cf
    ld [hl+], a                                   ; $44b6: $22
    ld [hl+], a                                   ; $44b7: $22
    or $c1                                        ; $44b8: $f6 $c1
    ld [hl+], a                                   ; $44ba: $22
    ld [hl+], a                                   ; $44bb: $22
    rst $38                                       ; $44bc: $ff

jr_02e_44bd:
    dec d                                         ; $44bd: $15
    push de                                       ; $44be: $d5
    ld a, [bc]                                    ; $44bf: $0a
    ld [$f707], a                                 ; $44c0: $ea $07 $f7
    nop                                           ; $44c3: $00
    ld hl, sp-$01                                 ; $44c4: $f8 $ff
    ld bc, $00fd                                  ; $44c6: $01 $fd $00
    cp $00                                        ; $44c9: $fe $00
    cp $22                                        ; $44cb: $fe $22
    ld [hl+], a                                   ; $44cd: $22
    db $fc                                        ; $44ce: $fc
    xor [hl]                                      ; $44cf: $ae
    pop bc                                        ; $44d0: $c1
    jr nc, jr_02e_44bd                            ; $44d1: $30 $ea

    ret nz                                        ; $44d3: $c0

    nop                                           ; $44d4: $00
    ldh [rP1], a                                  ; $44d5: $e0 $00
    ldh a, [rP1]                                  ; $44d7: $f0 $00
    ld a, a                                       ; $44d9: $7f
    ldh a, [rSC]                                  ; $44da: $f0 $02
    ld a, [$fc00]                                 ; $44dc: $fa $00 $fc
    nop                                           ; $44df: $00
    rst $38                                       ; $44e0: $ff
    xor d                                         ; $44e1: $aa
    pop bc                                        ; $44e2: $c1
    or $ac                                        ; $44e3: $f6 $ac
    jp Jump_02e_5555                              ; $44e5: $c3 $55 $55


    and h                                         ; $44e8: $a4
    pop bc                                        ; $44e9: $c1
    ld a, [hl+]                                   ; $44ea: $2a
    ld a, [hl+]                                   ; $44eb: $2a
    dec d                                         ; $44ec: $15
    sub l                                         ; $44ed: $95
    cpl                                           ; $44ee: $2f
    nop                                           ; $44ef: $00
    ret nz                                        ; $44f0: $c0

    dec b                                         ; $44f1: $05
    push hl                                       ; $44f2: $e5
    rst $18                                       ; $44f3: $df
    and b                                         ; $44f4: $a0
    db $fc                                        ; $44f5: $fc
    ret nz                                        ; $44f6: $c0

    pop hl                                        ; $44f7: $e1
    ld [hl], b                                    ; $44f8: $70
    pop bc                                        ; $44f9: $c1
    db $fc                                        ; $44fa: $fc
    db $e4                                        ; $44fb: $e4
    push hl                                       ; $44fc: $e5
    ldh [$e3], a                                  ; $44fd: $e0 $e3
    nop                                           ; $44ff: $00
    ret nz                                        ; $4500: $c0

    ld a, [bc]                                    ; $4501: $0a
    ld [$f505], a                                 ; $4502: $ea $05 $f5
    ld h, e                                       ; $4505: $63
    inc bc                                        ; $4506: $03
    ei                                            ; $4507: $fb
    and b                                         ; $4508: $a0
    db $e3                                        ; $4509: $e3
    ld [c], a                                     ; $450a: $e2
    pop hl                                        ; $450b: $e1
    ld c, [hl]                                    ; $450c: $4e
    pop bc                                        ; $450d: $c1
    rst $38                                       ; $450e: $ff
    rst $38                                       ; $450f: $ff
    sub $e3                                       ; $4510: $d6 $e3
    ld hl, sp-$2e                                 ; $4512: $f8 $d2
    pop hl                                        ; $4514: $e1
    ret nc                                        ; $4515: $d0

    jp hl                                         ; $4516: $e9


    ld b, [hl]                                    ; $4517: $46
    ret nz                                        ; $4518: $c0

    ret nz                                        ; $4519: $c0

    inc b                                         ; $451a: $04
    db $e4                                        ; $451b: $e4
    nop                                           ; $451c: $00
    ldh a, [$fb]                                  ; $451d: $f0 $fb
    ld bc, $b0f9                                  ; $451f: $01 $f9 $b0
    db $e3                                        ; $4522: $e3
    ld l, [hl]                                    ; $4523: $6e
    ld l, [hl]                                    ; $4524: $6e
    ld d, l                                       ; $4525: $55
    push de                                       ; $4526: $d5
    dec sp                                        ; $4527: $3b
    ld a, a                                       ; $4528: $7f
    cp e                                          ; $4529: $bb
    dec d                                         ; $452a: $15
    push de                                       ; $452b: $d5
    ld a, [de]                                    ; $452c: $1a
    ld a, [$ff0f]                                 ; $452d: $fa $0f $ff
    ld a, [hl]                                    ; $4530: $7e
    ldh [$fd], a                                  ; $4531: $e0 $fd
    cp $30                                        ; $4533: $fe $30
    pop bc                                        ; $4535: $c1
    ld bc, $0601                                  ; $4536: $01 $01 $06
    ld b, $0c                                     ; $4539: $06 $0c
    inc c                                         ; $453b: $0c
    cp a                                          ; $453c: $bf
    jr c, jr_02e_4577                             ; $453d: $38 $38

    ld [hl], h                                    ; $453f: $74
    ld [hl], h                                    ; $4540: $74
    ret c                                         ; $4541: $d8

    reti                                          ; $4542: $d9


    ld d, [hl]                                    ; $4543: $56
    ret nz                                        ; $4544: $c0

    and b                                         ; $4545: $a0
    rst $38                                       ; $4546: $ff
    nop                                           ; $4547: $00
    jr c, jr_02e_454a                             ; $4548: $38 $00

jr_02e_454a:
    ld e, h                                       ; $454a: $5c
    nop                                           ; $454b: $00
    cp a                                          ; $454c: $bf
    nop                                           ; $454d: $00
    ld a, a                                       ; $454e: $7f
    jp z, Jump_02e_40a1                           ; $454f: $ca $a1 $40

    cp a                                          ; $4552: $bf
    db $10                                        ; $4553: $10
    ret z                                         ; $4554: $c8

    add b                                         ; $4555: $80
    ld c, b                                       ; $4556: $48
    ld [c], a                                     ; $4557: $e2
    rst $38                                       ; $4558: $ff
    xor d                                         ; $4559: $aa
    ld bc, $fc01                                  ; $455a: $01 $01 $fc
    ldh a, [$a9]                                  ; $455d: $f0 $a9
    add $e1                                       ; $455f: $c6 $e1
    inc bc                                        ; $4561: $03
    inc bc                                        ; $4562: $03
    rrca                                          ; $4563: $0f
    rrca                                          ; $4564: $0f
    rra                                           ; $4565: $1f
    rra                                           ; $4566: $1f
    ei                                            ; $4567: $fb
    ld a, a                                       ; $4568: $7f
    ld a, a                                       ; $4569: $7f
    or b                                          ; $456a: $b0
    jp $ffff                                      ; $456b: $c3 $ff $ff


    ldh a, [$f2]                                  ; $456e: $f0 $f2
    ldh [rIE], a                                  ; $4570: $e0 $ff
    push hl                                       ; $4572: $e5
    ret nz                                        ; $4573: $c0

    jp $a6a0                                      ; $4574: $c3 $a0 $a6


jr_02e_4577:
    ret nz                                        ; $4577: $c0

    res 0, b                                      ; $4578: $cb $80
    rst $18                                       ; $457a: $df
    sub l                                         ; $457b: $95
    ld b, b                                       ; $457c: $40
    ld b, d                                       ; $457d: $42
    xor b                                         ; $457e: $a8
    xor b                                         ; $457f: $a8
    ld b, b                                       ; $4580: $40
    and h                                         ; $4581: $a4
    cp $00                                        ; $4582: $fe $00
    ld a, a                                       ; $4584: $7f
    rst $30                                       ; $4585: $f7
    nop                                           ; $4586: $00
    ld a, l                                       ; $4587: $7d
    nop                                           ; $4588: $00
    xor d                                         ; $4589: $aa
    nop                                           ; $458a: $00
    ld d, h                                       ; $458b: $54
    ld a, [de]                                    ; $458c: $1a
    ld [c], a                                     ; $458d: $e2
    rst $38                                       ; $458e: $ff
    db $dd                                        ; $458f: $dd
    nop                                           ; $4590: $00
    or $01                                        ; $4591: $f6 $01
    xor c                                         ; $4593: $a9
    inc bc                                        ; $4594: $03
    ld d, e                                       ; $4595: $53
    rrca                                          ; $4596: $0f
    rst $38                                       ; $4597: $ff
    adc a                                         ; $4598: $8f
    ld e, $1e                                     ; $4599: $1e $1e
    ld b, $06                                     ; $459b: $06 $06
    dec c                                         ; $459d: $0d
    dec c                                         ; $459e: $0d
    ld [hl], $ff                                  ; $459f: $36 $ff
    ld [hl], $7c                                  ; $45a1: $36 $7c
    ld a, h                                       ; $45a3: $7c
    ld hl, sp-$08                                 ; $45a4: $f8 $f8
    db $f4                                        ; $45a6: $f4
    db $f4                                        ; $45a7: $f4
    ret c                                         ; $45a8: $d8

    ld [hl], a                                    ; $45a9: $77
    reti                                          ; $45aa: $d9


    ldh a, [$f0]                                  ; $45ab: $f0 $f0
    halt                                          ; $45ad: $76
    ldh [$3f], a                                  ; $45ae: $e0 $3f
    nop                                           ; $45b0: $00
    ld l, a                                       ; $45b1: $6f
    ld [hl], d                                    ; $45b2: $72
    ldh [$9f], a                                  ; $45b3: $e0 $9f
    ld a, e                                       ; $45b5: $7b
    nop                                           ; $45b6: $00
    sbc $00                                       ; $45b7: $de $00
    ld [hl], l                                    ; $45b9: $75
    adc $e0                                       ; $45ba: $ce $e0
    halt                                          ; $45bc: $76
    rst $20                                       ; $45bd: $e7
    xor d                                         ; $45be: $aa
    cp $f1                                        ; $45bf: $fe $f1
    ld h, b                                       ; $45c1: $60
    nop                                           ; $45c2: $00
    ld [hl], l                                    ; $45c3: $75
    ld [hl], l                                    ; $45c4: $75
    ld e, $de                                     ; $45c5: $1e $de
    rrca                                          ; $45c7: $0f
    rst $28                                       ; $45c8: $ef
    ld a, [hl]                                    ; $45c9: $7e
    sub b                                         ; $45ca: $90
    rst $00                                       ; $45cb: $c7
    ld bc, $aa01                                  ; $45cc: $01 $01 $aa
    xor d                                         ; $45cf: $aa
    rst $10                                       ; $45d0: $d7
    rst $10                                       ; $45d1: $d7
    and b                                         ; $45d2: $a0
    and a                                         ; $45d3: $a7
    cp a                                          ; $45d4: $bf
    ld [hl], l                                    ; $45d5: $75
    ld [hl], l                                    ; $45d6: $75
    db $eb                                        ; $45d7: $eb
    db $eb                                        ; $45d8: $eb
    rst $18                                       ; $45d9: $df
    rst $18                                       ; $45da: $df
    sub b                                         ; $45db: $90
    and a                                         ; $45dc: $a7
    add sp, -$09                                  ; $45dd: $e8 $f7
    add sp, -$2b                                  ; $45df: $e8 $d5
    push de                                       ; $45e1: $d5
    ld b, b                                       ; $45e2: $40
    jp z, Jump_02e_4010                           ; $45e3: $ca $10 $40

    ld b, e                                       ; $45e6: $43
    xor b                                         ; $45e7: $a8
    ld e, a                                       ; $45e8: $5f
    xor a                                         ; $45e9: $af
    ldh a, [rIE]                                  ; $45ea: $f0 $ff
    nop                                           ; $45ec: $00
    rra                                           ; $45ed: $1f
    sbc b                                         ; $45ee: $98
    ldh [$7f], a                                  ; $45ef: $e0 $7f
    inc c                                         ; $45f1: $0c
    ld [c], a                                     ; $45f2: $e2
    cp $fc                                        ; $45f3: $fe $fc
    ld h, b                                       ; $45f5: $60
    ld hl, $0ade                                  ; $45f6: $21 $de $0a
    push af                                       ; $45f9: $f5
    dec d                                         ; $45fa: $15
    ld [$ff2f], a                                 ; $45fb: $ea $2f $ff
    ret nc                                        ; $45fe: $d0

    sbc [hl]                                      ; $45ff: $9e
    ld h, b                                       ; $4600: $60
    db $10                                        ; $4601: $10
    rst $28                                       ; $4602: $ef
    add l                                         ; $4603: $85
    ld a, d                                       ; $4604: $7a
    ld a, [hl+]                                   ; $4605: $2a
    rst $38                                       ; $4606: $ff
    push de                                       ; $4607: $d5
    ld d, a                                       ; $4608: $57
    xor b                                         ; $4609: $a8
    cp h                                          ; $460a: $bc
    ld b, b                                       ; $460b: $40
    ldh [rSB], a                                  ; $460c: $e0 $01
    nop                                           ; $460e: $00
    rra                                           ; $460f: $1f
    rrca                                          ; $4610: $0f
    dec b                                         ; $4611: $05
    ccf                                           ; $4612: $3f
    nop                                           ; $4613: $00
    rst $38                                       ; $4614: $ff
    rst $18                                       ; $4615: $df
    add c                                         ; $4616: $81
    ld hl, sp+$20                                 ; $4617: $f8 $20

jr_02e_4619:
    push af                                       ; $4619: $f5
    and b                                         ; $461a: $a0
    rst $38                                       ; $461b: $ff
    xor b                                         ; $461c: $a8

jr_02e_461d:
    rst $38                                       ; $461d: $ff
    ld d, l                                       ; $461e: $55
    rst $38                                       ; $461f: $ff
    ld b, b                                       ; $4620: $40

jr_02e_4621:
    cp a                                          ; $4621: $bf
    add hl, bc                                    ; $4622: $09
    or $ff                                        ; $4623: $f6 $ff
    and d                                         ; $4625: $a2
    ld e, l                                       ; $4626: $5d
    ld d, l                                       ; $4627: $55
    xor d                                         ; $4628: $aa
    db $eb                                        ; $4629: $eb
    inc d                                         ; $462a: $14
    ccf                                           ; $462b: $3f
    nop                                           ; $462c: $00
    rst $28                                       ; $462d: $ef
    ld a, [bc]                                    ; $462e: $0a
    add b                                         ; $462f: $80
    dec d                                         ; $4630: $15
    ret nz                                        ; $4631: $c0

    ldh [$e5], a                                  ; $4632: $e0 $e5
    add b                                         ; $4634: $80
    nop                                           ; $4635: $00
    nop                                           ; $4636: $00
    rst $38                                       ; $4637: $ff
    ld a, $14                                     ; $4638: $3e $14
    ld a, a                                       ; $463a: $7f
    ld a, [hl+]                                   ; $463b: $2a
    ld a, a                                       ; $463c: $7f
    db $10                                        ; $463d: $10
    rst $28                                       ; $463e: $ef
    ld b, d                                       ; $463f: $42
    rst $38                                       ; $4640: $ff
    cp l                                          ; $4641: $bd
    xor b                                         ; $4642: $a8
    ld d, a                                       ; $4643: $57
    call nc, $f92b                                ; $4644: $d4 $2b $f9
    ld b, $14                                     ; $4647: $06 $14
    rst $38                                       ; $4649: $ff
    dec bc                                        ; $464a: $0b
    ld a, [de]                                    ; $464b: $1a
    push bc                                       ; $464c: $c5
    adc h                                         ; $464d: $8c
    jp $d02c                                      ; $464e: $c3 $2c $d0


    ld e, b                                       ; $4651: $58
    rst $38                                       ; $4652: $ff
    and c                                         ; $4653: $a1
    jr c, jr_02e_4619                             ; $4654: $38 $c3

    ld d, c                                       ; $4656: $51
    and e                                         ; $4657: $a3
    jr nc, jr_02e_4621                            ; $4658: $30 $c7

    ld d, b                                       ; $465a: $50
    ld [hl], e                                    ; $465b: $73
    and a                                         ; $465c: $a7
    ld [hl-], a                                   ; $465d: $32
    db $fc                                        ; $465e: $fc
    ldh [$3b], a                                  ; $465f: $e0 $3b
    ld b, c                                       ; $4661: $41
    xor b                                         ; $4662: $a8
    db $fc                                        ; $4663: $fc
    ld d, c                                       ; $4664: $51
    rst $28                                       ; $4665: $ef
    ld h, b                                       ; $4666: $60
    rst $18                                       ; $4667: $df
    ld bc, $82f0                                  ; $4668: $01 $f0 $82
    ldh [rTIMA], a                                ; $466b: $e0 $05
    ret nz                                        ; $466d: $c0

    ldh [rP1], a                                  ; $466e: $e0 $00
    rla                                           ; $4670: $17

jr_02e_4671:
    rst $38                                       ; $4671: $ff
    nop                                           ; $4672: $00
    nop                                           ; $4673: $00
    ld d, b                                       ; $4674: $50
    nop                                           ; $4675: $00
    add b                                         ; $4676: $80
    ld [bc], a                                    ; $4677: $02
    nop                                           ; $4678: $00
    ccf                                           ; $4679: $3f
    rst $38                                       ; $467a: $ff
    sub l                                         ; $467b: $95
    ccf                                           ; $467c: $3f
    ld a, [bc]                                    ; $467d: $0a
    ccf                                           ; $467e: $3f
    ld a, [bc]                                    ; $467f: $0a
    ret nz                                        ; $4680: $c0

    db $10                                        ; $4681: $10
    add b                                         ; $4682: $80

Jump_02e_4683:
    rst $08                                       ; $4683: $cf

jr_02e_4684:
    jr nz, jr_02e_468d                            ; $4684: $20 $07

    ld [bc], a                                    ; $4686: $02
    rrca                                          ; $4687: $0f
    ld [hl], b                                    ; $4688: $70

jr_02e_4689:
    ret nz                                        ; $4689: $c0

    sub d                                         ; $468a: $92
    ldh [$a8], a                                  ; $468b: $e0 $a8

jr_02e_468d:
    rst $38                                       ; $468d: $ff
    xor $6a                                       ; $468e: $ee $6a
    pop bc                                        ; $4690: $c1
    ld d, l                                       ; $4691: $55
    rst $38                                       ; $4692: $ff
    xor d                                         ; $4693: $aa
    dec b                                         ; $4694: $05
    ld b, c                                       ; $4695: $41
    ret nc                                        ; $4696: $d0

    inc b                                         ; $4697: $04
    add b                                         ; $4698: $80
    ld a, a                                       ; $4699: $7f
    jr z, jr_02e_461d                             ; $469a: $28 $81

    ld a, [bc]                                    ; $469c: $0a

jr_02e_469d:
    push hl                                       ; $469d: $e5
    inc c                                         ; $469e: $0c
    db $e3                                        ; $469f: $e3

Jump_02e_46a0:
    ld c, d                                       ; $46a0: $4a
    db $fc                                        ; $46a1: $fc
    ldh [rIE], a                                  ; $46a2: $e0 $ff
    ld a, [bc]                                    ; $46a4: $0a
    ld b, l                                       ; $46a5: $45
    inc e                                         ; $46a6: $1c
    inc bc                                        ; $46a7: $03
    ld a, [de]                                    ; $46a8: $1a
    dec b                                         ; $46a9: $05
    inc c                                         ; $46aa: $0c
    jp $30ff                                      ; $46ab: $c3 $ff $30


    pop bc                                        ; $46ae: $c1
    ld e, h                                       ; $46af: $5c
    and b                                         ; $46b0: $a0
    jr z, jr_02e_4684                             ; $46b1: $28 $d1

    sbc h                                         ; $46b3: $9c
    ld h, c                                       ; $46b4: $61
    rst $38                                       ; $46b5: $ff
    jr z, jr_02e_4689                             ; $46b6: $28 $d1

    jr jr_02e_469d                                ; $46b8: $18 $e3

    add hl, hl                                    ; $46ba: $29
    db $d3                                        ; $46bb: $d3
    sbc b                                         ; $46bc: $98
    ld h, e                                       ; $46bd: $63
    rst $38                                       ; $46be: $ff
    ld [bc], a                                    ; $46bf: $02
    nop                                           ; $46c0: $00
    ld bc, $1038                                  ; $46c1: $01 $38 $10
    db $fc                                        ; $46c4: $fc

Call_02e_46c5:
    xor c                                         ; $46c5: $a9
    db $fc                                        ; $46c6: $fc
    rst $38                                       ; $46c7: $ff
    nop                                           ; $46c8: $00
    db $fc                                        ; $46c9: $fc
    ld bc, $42f0                                  ; $46ca: $01 $f0 $42
    ldh [$84], a                                  ; $46cd: $e0 $84
    ldh [rIE], a                                  ; $46cf: $e0 $ff
    add b                                         ; $46d1: $80
    rra                                           ; $46d2: $1f
    ld b, b                                       ; $46d3: $40
    rra                                           ; $46d4: $1f
    add l                                         ; $46d5: $85
    rrca                                          ; $46d6: $0f

jr_02e_46d7:
    ld b, b                                       ; $46d7: $40
    rrca                                          ; $46d8: $0f
    ei                                            ; $46d9: $fb
    and b                                         ; $46da: $a0
    ld bc, $e29c                                  ; $46db: $01 $9c $e2
    cpl                                           ; $46de: $2f
    nop                                           ; $46df: $00
    db $fd                                        ; $46e0: $fd
    nop                                           ; $46e1: $00
    db $fc                                        ; $46e2: $fc

jr_02e_46e3:
    rst $30                                       ; $46e3: $f7
    ld d, c                                       ; $46e4: $51
    ld hl, sp-$5e                                 ; $46e5: $f8 $a2
    add d                                         ; $46e7: $82
    ldh [rSC], a                                  ; $46e8: $e0 $02
    nop                                           ; $46ea: $00
    inc d                                         ; $46eb: $14
    nop                                           ; $46ec: $00
    rst $38                                       ; $46ed: $ff
    jr z, jr_02e_4671                             ; $46ee: $28 $81

    db $10                                        ; $46f0: $10
    inc bc                                        ; $46f1: $03
    ld hl, $4003                                  ; $46f2: $21 $03 $40
    rlca                                          ; $46f5: $07
    rst $18                                       ; $46f6: $df
    add b                                         ; $46f7: $80
    rra                                           ; $46f8: $1f
    ld a, [bc]                                    ; $46f9: $0a
    ccf                                           ; $46fa: $3f
    dec d                                         ; $46fb: $15
    ldh a, [$c1]                                  ; $46fc: $f0 $c1
    rst $38                                       ; $46fe: $ff
    adc d                                         ; $46ff: $8a
    rst $30                                       ; $4700: $f7
    push hl                                       ; $4701: $e5
    ld c, h                                       ; $4702: $4c
    db $e3                                        ; $4703: $e3
    sbc h                                         ; $4704: $9c
    ldh [$c3], a                                  ; $4705: $e0 $c3
    sbc d                                         ; $4707: $9a
    push bc                                       ; $4708: $c5
    inc d                                         ; $4709: $14
    rst $38                                       ; $470a: $ff
    rr c                                          ; $470b: $cb $19
    add [hl]                                      ; $470d: $86
    inc [hl]                                      ; $470e: $34
    dec bc                                        ; $470f: $0b
    jr z, jr_02e_46e3                             ; $4710: $28 $d1

    ld e, h                                       ; $4712: $5c
    rst $38                                       ; $4713: $ff
    and b                                         ; $4714: $a0
    jr c, jr_02e_46d7                             ; $4715: $38 $c0

    ld d, b                                       ; $4717: $50
    and e                                         ; $4718: $a3
    ld sp, $52c7                                  ; $4719: $31 $c7 $52
    dec e                                         ; $471c: $1d
    and a                                         ; $471d: $a7
    inc a                                         ; $471e: $3c
    ldh [$a3], a                                  ; $471f: $e0 $a3
    nop                                           ; $4721: $00
    pop bc                                        ; $4722: $c1
    ld d, b                                       ; $4723: $50
    ldh [$c9], a                                  ; $4724: $e0 $c9
    nop                                           ; $4726: $00
    ld l, h                                       ; $4727: $6c
    db $e4                                        ; $4728: $e4

jr_02e_4729:
    ei                                            ; $4729: $fb
    rst $38                                       ; $472a: $ff
    dec b                                         ; $472b: $05
    ld hl, sp-$1c                                 ; $472c: $f8 $e4
    ld d, h                                       ; $472e: $54
    cp $a0                                        ; $472f: $fe $a0
    cp $00                                        ; $4731: $fe $00
    rst $38                                       ; $4733: $ff
    ld hl, sp+$02                                 ; $4734: $f8 $02
    ldh a, [rNR10]                                ; $4736: $f0 $10
    add e                                         ; $4738: $83
    ld hl, $0087                                  ; $4739: $21 $87 $00
    cp a                                          ; $473c: $bf
    rlca                                          ; $473d: $07
    jr nz, @+$11                                  ; $473e: $20 $0f

    ld b, d                                       ; $4740: $42
    rrca                                          ; $4741: $0f
    and l                                         ; $4742: $a5
    adc d                                         ; $4743: $8a
    pop hl                                        ; $4744: $e1
    inc bc                                        ; $4745: $03
    rst $30                                       ; $4746: $f7
    xor d                                         ; $4747: $aa
    rst $38                                       ; $4748: $ff
    ld d, h                                       ; $4749: $54
    ld [bc], a                                    ; $474a: $02
    pop bc                                        ; $474b: $c1
    rst $38                                       ; $474c: $ff
    xor b                                         ; $474d: $a8

jr_02e_474e:
    cp $54                                        ; $474e: $fe $54
    cp $e2                                        ; $4750: $fe $e2
    add b                                         ; $4752: $80
    nop                                           ; $4753: $00
    db $fc                                        ; $4754: $fc
    ld l, b                                       ; $4755: $68
    rla                                           ; $4756: $17
    ld d, b                                       ; $4757: $50
    cpl                                           ; $4758: $2f
    ld h, h                                       ; $4759: $64
    rst $38                                       ; $475a: $ff
    dec de                                        ; $475b: $1b
    ld d, b                                       ; $475c: $50
    cpl                                           ; $475d: $2f
    ld h, b                                       ; $475e: $60
    rra                                           ; $475f: $1f
    ret nc                                        ; $4760: $d0

    cpl                                           ; $4761: $2f
    and b                                         ; $4762: $a0
    rst $38                                       ; $4763: $ff
    ld e, a                                       ; $4764: $5f

jr_02e_4765:
    ret z                                         ; $4765: $c8

    scf                                           ; $4766: $37
    jr c, jr_02e_4729                             ; $4767: $38 $c0

    ld e, a                                       ; $4769: $5f
    and b                                         ; $476a: $a0
    ld a, [hl+]                                   ; $476b: $2a
    rst $08                                       ; $476c: $cf
    push de                                       ; $476d: $d5
    dec d                                         ; $476e: $15
    ld [$4e00], a                                 ; $476f: $ea $00 $4e
    ld h, b                                       ; $4772: $60
    or b                                          ; $4773: $b0
    ld [c], a                                     ; $4774: $e2
    ccf                                           ; $4775: $3f
    add b                                         ; $4776: $80
    rst $38                                       ; $4777: $ff
    rrca                                          ; $4778: $0f
    ldh [rSB], a                                  ; $4779: $e0 $01
    ld a, h                                       ; $477b: $7c
    add b                                         ; $477c: $80
    xor a                                         ; $477d: $af
    ld d, b                                       ; $477e: $50
    ld d, l                                       ; $477f: $55
    rst $38                                       ; $4780: $ff
    xor d                                         ; $4781: $aa
    ld a, [bc]                                    ; $4782: $0a
    push af                                       ; $4783: $f5
    jr nz, jr_02e_4765                            ; $4784: $20 $df

    ld b, l                                       ; $4786: $45
    ldh [$8f], a                                  ; $4787: $e0 $8f
    rst $38                                       ; $4789: $ff
    ldh [$0a], a                                  ; $478a: $e0 $0a
    push bc                                       ; $478c: $c5
    dec e                                         ; $478d: $1d
    ld [bc], a                                    ; $478e: $02
    ld a, [$5405]                                 ; $478f: $fa $05 $54
    rst $38                                       ; $4792: $ff
    xor e                                         ; $4793: $ab
    xor b                                         ; $4794: $a8
    ld d, a                                       ; $4795: $57
    ld [bc], a                                    ; $4796: $02
    db $fd                                        ; $4797: $fd
    ld d, b                                       ; $4798: $50
    ld bc, $ffe8                                  ; $4799: $01 $e8 $ff
    ld bc, $40bc                                  ; $479c: $01 $bc $40
    ld d, [hl]                                    ; $479f: $56
    xor b                                         ; $47a0: $a8
    dec hl                                        ; $47a1: $2b
    call nc, $bf85                                ; $47a2: $d4 $85 $bf
    ld a, d                                       ; $47a5: $7a
    ld [de], a                                    ; $47a6: $12
    db $ed                                        ; $47a7: $ed
    nop                                           ; $47a8: $00
    rst $38                                       ; $47a9: $ff
    xor c                                         ; $47aa: $a9
    or h                                          ; $47ab: $b4
    ret nz                                        ; $47ac: $c0

    ld bc, $f8f3                                  ; $47ad: $01 $f3 $f8
    inc bc                                        ; $47b0: $03
    rst $30                                       ; $47b1: $f7
    and b                                         ; $47b2: $a0
    scf                                           ; $47b3: $37
    ld h, c                                       ; $47b4: $61
    nop                                           ; $47b5: $00
    rst $38                                       ; $47b6: $ff
    and b                                         ; $47b7: $a0
    ld e, a                                       ; $47b8: $5f
    ld a, a                                       ; $47b9: $7f
    ld b, b                                       ; $47ba: $40

jr_02e_47bb:
    cp a                                          ; $47bb: $bf
    sub b                                         ; $47bc: $90
    ld l, a                                       ; $47bd: $6f
    ld b, b                                       ; $47be: $40
    cp a                                          ; $47bf: $bf
    add b                                         ; $47c0: $80
    ld [hl-], a                                   ; $47c1: $32
    and b                                         ; $47c2: $a0
    pop af                                        ; $47c3: $f1
    ld b, b                                       ; $47c4: $40
    cp h                                          ; $47c5: $bc
    ret nz                                        ; $47c6: $c0

    add b                                         ; $47c7: $80
    jr nz, jr_02e_47e1                            ; $47c8: $20 $17

    jr nz, jr_02e_474e                            ; $47ca: $20 $82

    rst $38                                       ; $47cc: $ff
    inc sp                                        ; $47cd: $33
    rst $08                                       ; $47ce: $cf
    rst $38                                       ; $47cf: $ff
    ld d, a                                       ; $47d0: $57
    adc a                                         ; $47d1: $8f
    ld d, l                                       ; $47d2: $55
    adc a                                         ; $47d3: $8f
    ld h, [hl]                                    ; $47d4: $66
    sbc a                                         ; $47d5: $9f
    inc b                                         ; $47d6: $04
    rst $38                                       ; $47d7: $ff
    ld a, a                                       ; $47d8: $7f
    ldh a, [rIE]                                  ; $47d9: $f0 $ff
    ld e, b                                       ; $47db: $58
    rst $38                                       ; $47dc: $ff
    xor c                                         ; $47dd: $a9
    rst $38                                       ; $47de: $ff
    db $fc                                        ; $47df: $fc
    ld l, h                                       ; $47e0: $6c

jr_02e_47e1:
    ld h, b                                       ; $47e1: $60
    push af                                       ; $47e2: $f5
    ld d, l                                       ; $47e3: $55
    ld bc, $4020                                  ; $47e4: $01 $20 $40
    xor [hl]                                      ; $47e7: $ae
    ld b, b                                       ; $47e8: $40
    ld h, [hl]                                    ; $47e9: $66
    add c                                         ; $47ea: $81
    inc a                                         ; $47eb: $3c
    jp $d8fa                                      ; $47ec: $c3 $fa $d8


    pop hl                                        ; $47ef: $e1
    rla                                           ; $47f0: $17
    ld [hl-], a                                   ; $47f1: $32
    ldh [$82], a                                  ; $47f2: $e0 $82
    rst $38                                       ; $47f4: $ff
    jr c, @+$01                                   ; $47f5: $38 $ff

    ld l, a                                       ; $47f7: $6f
    db $e4                                        ; $47f8: $e4
    jr jr_02e_47bb                                ; $47f9: $18 $c0

    rst $00                                       ; $47fb: $c7
    ld b, c                                       ; $47fc: $41
    xor d                                         ; $47fd: $aa
    db $10                                        ; $47fe: $10
    ret nz                                        ; $47ff: $c0

    cp d                                          ; $4800: $ba
    ldh [rIE], a                                  ; $4801: $e0 $ff
    ld [de], a                                    ; $4803: $12
    rst $38                                       ; $4804: $ff
    push de                                       ; $4805: $d5
    pop bc                                        ; $4806: $c1
    ret nc                                        ; $4807: $d0

    ldh [$fe], a                                  ; $4808: $e0 $fe
    ld a, d                                       ; $480a: $7a
    ret nz                                        ; $480b: $c0

    ld d, [hl]                                    ; $480c: $56
    adc e                                         ; $480d: $8b
    ld b, b                                       ; $480e: $40
    rlca                                          ; $480f: $07
    rst $38                                       ; $4810: $ff
    ld [hl], a                                    ; $4811: $77
    dec c                                         ; $4812: $0d
    rst $38                                       ; $4813: $ff
    ld a, [hl+]                                   ; $4814: $2a
    add e                                         ; $4815: $83
    ld b, b                                       ; $4816: $40
    rra                                           ; $4817: $1f
    rst $38                                       ; $4818: $ff
    dec [hl]                                      ; $4819: $35
    ld l, b                                       ; $481a: $68
    ret nz                                        ; $481b: $c0

    db $fd                                        ; $481c: $fd
    rst $38                                       ; $481d: $ff
    add sp, -$20                                  ; $481e: $e8 $e0
    ld d, [hl]                                    ; $4820: $56
    rst $38                                       ; $4821: $ff
    xor h                                         ; $4822: $ac
    rst $38                                       ; $4823: $ff
    ld hl, sp-$01                                 ; $4824: $f8 $ff
    ld a, a                                       ; $4826: $7f
    ldh [rIE], a                                  ; $4827: $e0 $ff
    ld b, d                                       ; $4829: $42
    rst $38                                       ; $482a: $ff
    ret z                                         ; $482b: $c8

    rst $30                                       ; $482c: $f7
    cpl                                           ; $482d: $2f
    ld l, c                                       ; $482e: $69
    ld b, b                                       ; $482f: $40
    dec e                                         ; $4830: $1d
    ld a, [de]                                    ; $4831: $1a
    ret c                                         ; $4832: $d8

    and b                                         ; $4833: $a0
    rra                                           ; $4834: $1f
    rst $38                                       ; $4835: $ff
    inc b                                         ; $4836: $04
    add [hl]                                      ; $4837: $86
    ldh [rVBK], a                                 ; $4838: $e0 $4f
    ld h, b                                       ; $483a: $60
    inc b                                         ; $483b: $04
    ld h, b                                       ; $483c: $60
    push af                                       ; $483d: $f5
    xor [hl]                                      ; $483e: $ae
    ld [c], a                                     ; $483f: $e2
    ldh [rSCY], a                                 ; $4840: $e0 $42
    call z, Call_000_38c0                         ; $4842: $cc $c0 $38
    rst $00                                       ; $4845: $c7
    ld d, e                                       ; $4846: $53
    adc a                                         ; $4847: $8f
    xor c                                         ; $4848: $a9
    db $fc                                        ; $4849: $fc
    add b                                         ; $484a: $80
    ldh [$9c], a                                  ; $484b: $e0 $9c
    pop hl                                        ; $484d: $e1
    ld l, h                                       ; $484e: $6c
    add sp, -$40                                  ; $484f: $e8 $c0
    db $fc                                        ; $4851: $fc
    jp z, Jump_000_3fe0                           ; $4852: $ca $e0 $3f

    xor e                                         ; $4855: $ab
    rst $38                                       ; $4856: $ff
    ld a, [hl]                                    ; $4857: $7e
    sbc $c0                                       ; $4858: $de $c0
    ld l, l                                       ; $485a: $6d
    adc d                                         ; $485b: $8a
    ldh [$82], a                                  ; $485c: $e0 $82
    xor d                                         ; $485e: $aa
    ret nz                                        ; $485f: $c0

    cpl                                           ; $4860: $2f
    cp a                                          ; $4861: $bf
    rst $38                                       ; $4862: $ff
    sbc c                                         ; $4863: $99
    rst $20                                       ; $4864: $e7
    ld de, $83ef                                  ; $4865: $11 $ef $83
    ld h, l                                       ; $4868: $65
    nop                                           ; $4869: $00
    ld e, $f4                                     ; $486a: $1e $f4
    scf                                           ; $486c: $37
    nop                                           ; $486d: $00
    dec a                                         ; $486e: $3d
    ld h, c                                       ; $486f: $61
    xor a                                         ; $4870: $af
    ld [hl], h                                    ; $4871: $74
    add sp, -$01                                  ; $4872: $e8 $ff
    rst $38                                       ; $4874: $ff
    call nc, Call_02e_7fff                        ; $4875: $d4 $ff $7f
    ld [hl-], a                                   ; $4878: $32
    rst $08                                       ; $4879: $cf
    inc bc                                        ; $487a: $03
    rst $38                                       ; $487b: $ff
    and c                                         ; $487c: $a1
    rst $38                                       ; $487d: $ff
    add h                                         ; $487e: $84
    ld l, [hl]                                    ; $487f: $6e
    ldh [$df], a                                  ; $4880: $e0 $df
    ld c, h                                       ; $4882: $4c
    di                                            ; $4883: $f3
    ret z                                         ; $4884: $c8

    rst $30                                       ; $4885: $f7
    ld bc, $a0e6                                  ; $4886: $01 $e6 $a0
    ld a, b                                       ; $4889: $78
    rst $38                                       ; $488a: $ff
    ld a, a                                       ; $488b: $7f
    ret nz                                        ; $488c: $c0

    rst $38                                       ; $488d: $ff
    ld [$3eff], sp                                ; $488e: $08 $ff $3e
    rst $38                                       ; $4891: $ff
    ld l, d                                       ; $4892: $6a
    ld e, [hl]                                    ; $4893: $5e
    ldh [rBGP], a                                 ; $4894: $e0 $47
    cp $ff                                        ; $4896: $fe $ff
    ld a, d                                       ; $4898: $7a
    ld e, h                                       ; $4899: $5c
    and b                                         ; $489a: $a0
    or [hl]                                       ; $489b: $b6
    jr nz, @+$60                                  ; $489c: $20 $5e

    ldh [$bd], a                                  ; $489e: $e0 $bd
    ld d, [hl]                                    ; $48a0: $56
    ldh [$d5], a                                  ; $48a1: $e0 $d5
    db $10                                        ; $48a3: $10
    ld e, $e0                                     ; $48a4: $1e $e0
    ld e, [hl]                                    ; $48a6: $5e
    ld c, $e0                                     ; $48a7: $0e $e0
    db $e4                                        ; $48a9: $e4
    ld e, a                                       ; $48aa: $5f
    jr nz, @+$62                                  ; $48ab: $20 $60

    rst $38                                       ; $48ad: $ff
    ld d, l                                       ; $48ae: $55
    ret z                                         ; $48af: $c8

    ldh a, [$e0]                                  ; $48b0: $f0 $e0
    ld bc, $e00e                                  ; $48b2: $01 $0e $e0
    sbc [hl]                                      ; $48b5: $9e
    or a                                          ; $48b6: $b7
    nop                                           ; $48b7: $00
    dec [hl]                                      ; $48b8: $35
    sbc [hl]                                      ; $48b9: $9e
    ldh [$7d], a                                  ; $48ba: $e0 $7d
    ld b, e                                       ; $48bc: $43
    ret z                                         ; $48bd: $c8

    ldh [$0b], a                                  ; $48be: $e0 $0b
    rst $38                                       ; $48c0: $ff
    ld [bc], a                                    ; $48c1: $02

Call_02e_48c2:
    rst $38                                       ; $48c2: $ff
    adc a                                         ; $48c3: $8f
    db $f4                                        ; $48c4: $f4
    jp nz, $afd5                                  ; $48c5: $c2 $d5 $af

    inc a                                         ; $48c8: $3c
    ldh [rSC], a                                  ; $48c9: $e0 $02
    ld d, d                                       ; $48cb: $52
    ret nz                                        ; $48cc: $c0

    xor l                                         ; $48cd: $ad
    inc [hl]                                      ; $48ce: $34
    ldh [$f2], a                                  ; $48cf: $e0 $f2
    rst $38                                       ; $48d1: $ff
    push af                                       ; $48d2: $f5
    call nz, $e0c4                                ; $48d3: $c4 $c4 $e0
    ld b, b                                       ; $48d6: $40

jr_02e_48d7:
    add d                                         ; $48d7: $82
    ld [hl+], a                                   ; $48d8: $22
    ld bc, $7cff                                  ; $48d9: $01 $ff $7c
    rst $38                                       ; $48dc: $ff
    push af                                       ; $48dd: $f5
    sub $5a                                       ; $48de: $d6 $5a
    ldh [$fe], a                                  ; $48e0: $e0 $fe
    jp nc, $d5c0                                  ; $48e2: $d2 $c0 $d5

    rst $38                                       ; $48e5: $ff
    jr nz, @+$01                                  ; $48e6: $20 $ff

    ld a, a                                       ; $48e8: $7f
    add b                                         ; $48e9: $80
    rst $38                                       ; $48ea: $ff
    ret nc                                        ; $48eb: $d0

    rst $38                                       ; $48ec: $ff
    ld c, b                                       ; $48ed: $48
    rst $38                                       ; $48ee: $ff
    ld [c], a                                     ; $48ef: $e2
    ld c, $e0                                     ; $48f0: $0e $e0
    db $dd                                        ; $48f2: $dd
    xor h                                         ; $48f3: $ac
    ldh a, [$c0]                                  ; $48f4: $f0 $c0
    nop                                           ; $48f6: $00
    rst $38                                       ; $48f7: $ff

jr_02e_48f8:
    ld b, $f6                                     ; $48f8: $06 $f6
    ret nz                                        ; $48fa: $c0

    jr c, @+$01                                   ; $48fb: $38 $ff

    rst $38                                       ; $48fd: $ff
    jr nc, jr_02e_48f8                            ; $48fe: $30 $f8

    ld h, e                                       ; $4900: $63
    ldh a, [$67]                                  ; $4901: $f0 $67
    ldh a, [$27]                                  ; $4903: $f0 $27
    ldh a, [rIE]                                  ; $4905: $f0 $ff
    ld bc, $01fe                                  ; $4907: $01 $fe $01
    cp $05                                        ; $490a: $fe $05
    cp $21                                        ; $490c: $fe $21
    cp $ff                                        ; $490e: $fe $ff
    add c                                         ; $4910: $81
    ldh a, [rIF]                                  ; $4911: $f0 $0f
    adc $3b                                       ; $4913: $ce $3b
    cp d                                          ; $4915: $ba
    ld l, a                                       ; $4916: $6f
    rst $28                                       ; $4917: $ef
    rst $38                                       ; $4918: $ff
    jr nc, jr_02e_492a                            ; $4919: $30 $0f

    inc c                                         ; $491b: $0c
    inc bc                                        ; $491c: $03
    jr nc, jr_02e_492e                            ; $491d: $30 $0f

    call nz, $ff3f                                ; $491f: $c4 $3f $ff
    ld [hl], c                                    ; $4922: $71
    ld a, a                                       ; $4923: $7f
    db $fc                                        ; $4924: $fc
    rst $38                                       ; $4925: $ff
    sbc $ff                                       ; $4926: $de $ff
    halt                                          ; $4928: $76
    rst $38                                       ; $4929: $ff

jr_02e_492a:
    ld a, a                                       ; $492a: $7f

jr_02e_492b:
    dec sp                                        ; $492b: $3b
    ei                                            ; $492c: $fb
    rrca                                          ; $492d: $0f

jr_02e_492e:
    rst $38                                       ; $492e: $ff
    ld b, c                                       ; $492f: $41
    cp $15                                        ; $4930: $fe $15
    ld d, $e0                                     ; $4932: $16 $e0
    db $fd                                        ; $4934: $fd
    dec d                                         ; $4935: $15
    add [hl]                                      ; $4936: $86
    ldh [rP1], a                                  ; $4937: $e0 $00
    rst $38                                       ; $4939: $ff
    sbc $fd                                       ; $493a: $de $fd
    db $fc                                        ; $493c: $fc
    di                                            ; $493d: $f3
    ld e, a                                       ; $493e: $5f
    ld [hl], c                                    ; $493f: $71
    adc a                                         ; $4940: $8f
    ld d, h                                       ; $4941: $54
    rst $38                                       ; $4942: $ff
    ld a, [$e024]                                 ; $4943: $fa $24 $e0
    and b                                         ; $4946: $a0
    or [hl]                                       ; $4947: $b6
    and d                                         ; $4948: $a2
    rst $38                                       ; $4949: $ff
    jr nz, jr_02e_492b                            ; $494a: $20 $df

    db $10                                        ; $494c: $10
    rst $28                                       ; $494d: $ef
    ld [de], a                                    ; $494e: $12
    db $fd                                        ; $494f: $fd
    ld b, h                                       ; $4950: $44
    cp e                                          ; $4951: $bb
    rst $30                                       ; $4952: $f7
    inc h                                         ; $4953: $24
    rst $18                                       ; $4954: $df
    jr nz, jr_02e_48d7                            ; $4955: $20 $80

    db $e3                                        ; $4957: $e3
    cp $06                                        ; $4958: $fe $06
    ld hl, sp+$19                                 ; $495a: $f8 $19
    rst $38                                       ; $495c: $ff
    ldh [$66], a                                  ; $495d: $e0 $66
    add b                                         ; $495f: $80
    reti                                          ; $4960: $d9


    ld b, b                                       ; $4961: $40
    rst $20                                       ; $4962: $e7
    ld bc, $ffdf                                  ; $4963: $01 $df $ff
    ld b, [hl]                                    ; $4966: $46
    ld h, b                                       ; $4967: $60
    sbc a                                         ; $4968: $9f
    ld hl, sp+$47                                 ; $4969: $f8 $47
    ld a, [hl]                                    ; $496b: $7e
    ld bc, $fffd                                  ; $496c: $01 $fd $ff
    ld b, b                                       ; $496f: $40
    ld a, a                                       ; $4970: $7f
    nop                                           ; $4971: $00
    db $dd                                        ; $4972: $dd
    ld b, b                                       ; $4973: $40
    rst $20                                       ; $4974: $e7
    add b                                         ; $4975: $80
    sbc e                                         ; $4976: $9b
    rst $38                                       ; $4977: $ff
    ld h, d                                       ; $4978: $62
    cp $19                                        ; $4979: $fe $19
    ei                                            ; $497b: $fb
    ld h, a                                       ; $497c: $67
    rst $28                                       ; $497d: $ef
    rra                                           ; $497e: $1f
    cp l                                          ; $497f: $bd
    rst $18                                       ; $4980: $df
    ld a, [hl]                                    ; $4981: $7e
    sub $6c                                       ; $4982: $d6 $6c
    xor $44                                       ; $4984: $ee $44
    cp $e0                                        ; $4986: $fe $e0
    ld d, l                                       ; $4988: $55
    rst $30                                       ; $4989: $f7
    rst $38                                       ; $498a: $ff
    ld hl, sp+$6d                                 ; $498b: $f8 $6d
    sbc [hl]                                      ; $498d: $9e
    rst $38                                       ; $498e: $ff
    ld l, [hl]                                    ; $498f: $6e
    ei                                            ; $4990: $fb
    ld h, [hl]                                    ; $4991: $66
    rst $30                                       ; $4992: $f7
    db $fd                                        ; $4993: $fd
    ld h, d                                       ; $4994: $62
    cp $e0                                        ; $4995: $fe $e0
    ld [bc], a                                    ; $4997: $02
    rst $30                                       ; $4998: $f7
    ld l, d                                       ; $4999: $6a
    nop                                           ; $499a: $00
    rst $38                                       ; $499b: $ff
    rlca                                          ; $499c: $07
    rst $38                                       ; $499d: $ff
    ld hl, sp+$18                                 ; $499e: $f8 $18
    ldh [$27], a                                  ; $49a0: $e0 $27
    ret nz                                        ; $49a2: $c0

    ld e, b                                       ; $49a3: $58
    add b                                         ; $49a4: $80
    rst $20                                       ; $49a5: $e7
    rst $38                                       ; $49a6: $ff
    ld b, b                                       ; $49a7: $40
    rst $18                                       ; $49a8: $df
    rlca                                          ; $49a9: $07
    rst $38                                       ; $49aa: $ff

jr_02e_49ab:
    ld e, b                                       ; $49ab: $58
    ldh a, [rIF]                                  ; $49ac: $f0 $0f
    jr nc, @+$01                                  ; $49ae: $30 $ff

    cpl                                           ; $49b0: $2f
    ldh a, [rIF]                                  ; $49b1: $f0 $0f
    ccf                                           ; $49b3: $3f
    jr nz, jr_02e_49ab                            ; $49b4: $20 $f5

    nop                                           ; $49b6: $00
    ei                                            ; $49b7: $fb
    rst $38                                       ; $49b8: $ff
    ldh [$f5], a                                  ; $49b9: $e0 $f5
    nop                                           ; $49bb: $00
    ld a, e                                       ; $49bc: $7b
    ldh [$fb], a                                  ; $49bd: $e0 $fb
    daa                                           ; $49bf: $27
    rst $28                                       ; $49c0: $ef
    db $dd                                        ; $49c1: $dd
    ld e, a                                       ; $49c2: $5f
    pop af                                        ; $49c3: $f1
    ret nz                                        ; $49c4: $c0

    ld h, d                                       ; $49c5: $62
    rst $38                                       ; $49c6: $ff
    ld e, d                                       ; $49c7: $5a
    cp $e1                                        ; $49c8: $fe $e1
    and l                                         ; $49ca: $a5
    ld e, d                                       ; $49cb: $5a
    ei                                            ; $49cc: $fb
    push af                                       ; $49cd: $f5
    ldh [$37], a                                  ; $49ce: $e0 $37
    ret nz                                        ; $49d0: $c0

    cp $ff                                        ; $49d1: $fe $ff
    nop                                           ; $49d3: $00
    or a                                          ; $49d4: $b7
    sub d                                         ; $49d5: $92
    ei                                            ; $49d6: $fb
    dec h                                         ; $49d7: $25
    nop                                           ; $49d8: $00
    cp $e0                                        ; $49d9: $fe $e0
    jp c, $f807                                   ; $49db: $da $07 $f8

    add hl, de                                    ; $49de: $19
    pop hl                                        ; $49df: $e1
    rst $28                                       ; $49e0: $ef
    daa                                           ; $49e1: $27
    ret nz                                        ; $49e2: $c0

    db $db                                        ; $49e3: $db
    inc bc                                        ; $49e4: $03
    jp nz, $fbe3                                  ; $49e5: $c2 $e3 $fb

    daa                                           ; $49e8: $27
    ldh [rIE], a                                  ; $49e9: $e0 $ff
    rra                                           ; $49eb: $1f
    jr c, jr_02e_49f5                             ; $49ec: $38 $07

    db $ec                                        ; $49ee: $ec
    inc bc                                        ; $49ef: $03
    ccf                                           ; $49f0: $3f
    nop                                           ; $49f1: $00
    db $ed                                        ; $49f2: $ed
    rst $38                                       ; $49f3: $ff
    nop                                           ; $49f4: $00

jr_02e_49f5:
    ld e, a                                       ; $49f5: $5f
    ld b, b                                       ; $49f6: $40
    push hl                                       ; $49f7: $e5
    nop                                           ; $49f8: $00
    db $db                                        ; $49f9: $db
    ldh [$ef], a                                  ; $49fa: $e0 $ef
    rst $38                                       ; $49fc: $ff
    ld e, [hl]                                    ; $49fd: $5e
    sbc $3c                                       ; $49fe: $de $3c
    or $7c                                        ; $4a00: $f6 $7c
    rst $18                                       ; $4a02: $df
    ld h, [hl]                                    ; $4a03: $66
    rst $28                                       ; $4a04: $ef
    db $fd                                        ; $4a05: $fd
    ld b, l                                       ; $4a06: $45
    cp $e1                                        ; $4a07: $fe $e1
    xor d                                         ; $4a09: $aa
    ld d, l                                       ; $4a0a: $55
    cpl                                           ; $4a0b: $2f
    ldh [rLCDC], a                                ; $4a0c: $e0 $40
    ret nz                                        ; $4a0e: $c0

    ld a, a                                       ; $4a0f: $7f
    ld h, c                                       ; $4a10: $61
    ret nz                                        ; $4a11: $c0

    ccf                                           ; $4a12: $3f
    rst $28                                       ; $4a13: $ef
    ld b, b                                       ; $4a14: $40
    ret nz                                        ; $4a15: $c0

    ld h, l                                       ; $4a16: $65
    ld a, [$ffe2]                                 ; $4a17: $fa $e2 $ff
    db $fc                                        ; $4a1a: $fc
    inc bc                                        ; $4a1b: $03
    ld [bc], a                                    ; $4a1c: $02
    ld bc, $0142                                  ; $4a1d: $01 $42 $01
    db $fc                                        ; $4a20: $fc
    rst $30                                       ; $4a21: $f7
    rst $30                                       ; $4a22: $f7
    ld [bc], a                                    ; $4a23: $02
    ld bc, $fad2                                  ; $4a24: $01 $d2 $fa
    ld [c], a                                     ; $4a27: $e2
    ld l, e                                       ; $4a28: $6b
    ret nz                                        ; $4a29: $c0

    ccf                                           ; $4a2a: $3f
    rst $38                                       ; $4a2b: $ff
    rst $38                                       ; $4a2c: $ff
    inc bc                                        ; $4a2d: $03
    cp $02                                        ; $4a2e: $fe $02
    cp $03                                        ; $4a30: $fe $03
    cp $0a                                        ; $4a32: $fe $0a
    cp $7f                                        ; $4a34: $fe $7f
    ld d, [hl]                                    ; $4a36: $56
    cp $0b                                        ; $4a37: $fe $0b
    rst $38                                       ; $4a39: $ff
    ld [$fc01], a                                 ; $4a3a: $ea $01 $fc
    ld b, b                                       ; $4a3d: $40
    ret nz                                        ; $4a3e: $c0

    rst $38                                       ; $4a3f: $ff
    ret nz                                        ; $4a40: $c0

    ld a, a                                       ; $4a41: $7f
    ret nz                                        ; $4a42: $c0

    ld a, a                                       ; $4a43: $7f
    ret nc                                        ; $4a44: $d0

    ld a, a                                       ; $4a45: $7f
    ld [$a97f], a                                 ; $4a46: $ea $7f $a9
    ret nc                                        ; $4a49: $d0

    ld d, l                                       ; $4a4a: $55
    add hl, hl                                    ; $4a4b: $29
    ld b, h                                       ; $4a4c: $44
    ld [bc], a                                    ; $4a4d: $02
    inc bc                                        ; $4a4e: $03
    jp nc, $03e0                                  ; $4a4f: $d2 $e0 $03

    adc h                                         ; $4a52: $8c
    and b                                         ; $4a53: $a0
    ld e, $ff                                     ; $4a54: $1e $ff
    cp $79                                        ; $4a56: $fe $79
    ld hl, sp+$67                                 ; $4a58: $f8 $67
    ret nz                                        ; $4a5a: $c0

    ld l, l                                       ; $4a5b: $6d
    ldh [$c0], a                                  ; $4a5c: $e0 $c0
    rst $38                                       ; $4a5e: $ff
    rst $38                                       ; $4a5f: $ff
    jr nz, jr_02e_4aa1                            ; $4a60: $20 $3f

    ld d, b                                       ; $4a62: $50
    rra                                           ; $4a63: $1f
    ld l, b                                       ; $4a64: $68
    rrca                                          ; $4a65: $0f
    ld [hl], h                                    ; $4a66: $74
    rst $38                                       ; $4a67: $ff
    rlca                                          ; $4a68: $07
    jp c, Jump_02e_7603                           ; $4a69: $da $03 $76

    rlca                                          ; $4a6c: $07
    ret c                                         ; $4a6d: $d8

    rra                                           ; $4a6e: $1f
    ld h, a                                       ; $4a6f: $67
    ccf                                           ; $4a70: $3f
    ldh [$6d], a                                  ; $4a71: $e0 $6d
    pop hl                                        ; $4a73: $e1
    ld h, a                                       ; $4a74: $67
    rst $20                                       ; $4a75: $e7
    dec de                                        ; $4a76: $1b
    xor [hl]                                      ; $4a77: $ae
    ldh [$b2], a                                  ; $4a78: $e0 $b2
    pop hl                                        ; $4a7a: $e1
    adc a                                         ; $4a7b: $8f
    nop                                           ; $4a7c: $00
    rst $38                                       ; $4a7d: $ff
    ld h, b                                       ; $4a7e: $60
    ld a, a                                       ; $4a7f: $7f
    or d                                          ; $4a80: $b2
    ldh [$b0], a                                  ; $4a81: $e0 $b0
    ldh [$b2], a                                  ; $4a83: $e0 $b2
    db $e3                                        ; $4a85: $e3
    nop                                           ; $4a86: $00
    ld bc, $00ff                                  ; $4a87: $01 $ff $00
    nop                                           ; $4a8a: $00
    nop                                           ; $4a8b: $00
    xor c                                         ; $4a8c: $a9
    dec sp                                        ; $4a8d: $3b
    rst $38                                       ; $4a8e: $ff
    rst $38                                       ; $4a8f: $ff
    db $e3                                        ; $4a90: $e3
    ld [c], a                                     ; $4a91: $e2
    inc [hl]                                      ; $4a92: $34
    rst $38                                       ; $4a93: $ff
    db $eb                                        ; $4a94: $eb
    ld c, d                                       ; $4a95: $4a
    rst $38                                       ; $4a96: $ff
    push hl                                       ; $4a97: $e5
    ld a, [hl-]                                   ; $4a98: $3a
    adc b                                         ; $4a99: $88
    rst $38                                       ; $4a9a: $ff
    rst $38                                       ; $4a9b: $ff
    db $e3                                        ; $4a9c: $e3
    ld [c], a                                     ; $4a9d: $e2
    ret nz                                        ; $4a9e: $c0

    push af                                       ; $4a9f: $f5
    add hl, sp                                    ; $4aa0: $39

jr_02e_4aa1:
    rst $38                                       ; $4aa1: $ff
    rst $38                                       ; $4aa2: $ff
    db $e3                                        ; $4aa3: $e3
    ld [c], a                                     ; $4aa4: $e2
    add b                                         ; $4aa5: $80
    push af                                       ; $4aa6: $f5
    jr c, jr_02e_4ab1                             ; $4aa7: $38 $08

    rst $38                                       ; $4aa9: $ff
    rst $38                                       ; $4aaa: $ff
    db $e3                                        ; $4aab: $e3
    ld [c], a                                     ; $4aac: $e2
    ld b, b                                       ; $4aad: $40
    push af                                       ; $4aae: $f5
    or e                                          ; $4aaf: $b3
    rst $38                                       ; $4ab0: $ff

jr_02e_4ab1:
    rst $38                                       ; $4ab1: $ff
    db $e3                                        ; $4ab2: $e3
    ld [c], a                                     ; $4ab3: $e2
    ret nz                                        ; $4ab4: $c0

    rst $38                                       ; $4ab5: $ff
    ret nz                                        ; $4ab6: $c0

    rst $38                                       ; $4ab7: $ff
    inc b                                         ; $4ab8: $04
    ret nz                                        ; $4ab9: $c0

    rst $38                                       ; $4aba: $ff
    ret nz                                        ; $4abb: $c0

    ld sp, hl                                     ; $4abc: $f9
    inc a                                         ; $4abd: $3c
    rst $38                                       ; $4abe: $ff
    ld [c], a                                     ; $4abf: $e2
    ret nz                                        ; $4ac0: $c0

    rst $38                                       ; $4ac1: $ff
    ret nz                                        ; $4ac2: $c0

    or $3d                                        ; $4ac3: $f6 $3d
    pop bc                                        ; $4ac5: $c1
    ret nz                                        ; $4ac6: $c0

    xor $3c                                       ; $4ac7: $ee $3c
    add $df                                       ; $4ac9: $c6 $df
    ret nz                                        ; $4acb: $c0

    push bc                                       ; $4acc: $c5
    inc a                                         ; $4acd: $3c
    inc [hl]                                      ; $4ace: $34
    sbc [hl]                                      ; $4acf: $9e
    sbc [hl]                                      ; $4ad0: $9e
    ret nz                                        ; $4ad1: $c0

    rst $28                                       ; $4ad2: $ef
    ld b, [hl]                                    ; $4ad3: $46
    rst $18                                       ; $4ad4: $df
    ld e, $40                                     ; $4ad5: $1e $40
    push bc                                       ; $4ad7: $c5
    inc a                                         ; $4ad8: $3c
    inc [hl]                                      ; $4ad9: $34
    dec b                                         ; $4ada: $05
    dec b                                         ; $4adb: $05
    add b                                         ; $4adc: $80
    rst $28                                       ; $4add: $ef
    add $bf                                       ; $4ade: $c6 $bf
    ret nz                                        ; $4ae0: $c0

    and l                                         ; $4ae1: $a5
    rra                                           ; $4ae2: $1f
    inc a                                         ; $4ae3: $3c
    nop                                           ; $4ae4: $00
    dec b                                         ; $4ae5: $05
    dec b                                         ; $4ae6: $05
    nop                                           ; $4ae7: $00
    nop                                           ; $4ae8: $00
    xor $46                                       ; $4ae9: $ee $46
    cp a                                          ; $4aeb: $bf
    ld b, b                                       ; $4aec: $40
    and l                                         ; $4aed: $a5
    rra                                           ; $4aee: $1f
    inc a                                         ; $4aef: $3c
    db $10                                        ; $4af0: $10
    dec b                                         ; $4af1: $05
    dec b                                         ; $4af2: $05
    db $10                                        ; $4af3: $10
    ret nz                                        ; $4af4: $c0

    adc $aa                                       ; $4af5: $ce $aa
    jp $ffff                                      ; $4af7: $c3 $ff $ff


    sbc [hl]                                      ; $4afa: $9e
    add b                                         ; $4afb: $80
    ret nz                                        ; $4afc: $c0

    rlca                                          ; $4afd: $07
    dec b                                         ; $4afe: $05
    dec b                                         ; $4aff: $05
    ld b, $c0                                     ; $4b00: $06 $c0
    rst $38                                       ; $4b02: $ff
    ret nz                                        ; $4b03: $c0

    rst $30                                       ; $4b04: $f7
    rla                                           ; $4b05: $17
    rst $30                                       ; $4b06: $f7
    dec b                                         ; $4b07: $05
    dec b                                         ; $4b08: $05
    ld d, $40                                     ; $4b09: $16 $40
    adc $5c                                       ; $4b0b: $ce $5c

Call_02e_4b0d:
    ld e, c                                       ; $4b0d: $59
    ld e, d                                       ; $4b0e: $5a
    ld e, e                                       ; $4b0f: $5b
    dec sp                                        ; $4b10: $3b
    ld e, h                                       ; $4b11: $5c
    ld e, l                                       ; $4b12: $5d
    ret nz                                        ; $4b13: $c0

    rst $28                                       ; $4b14: $ef
    ld b, e                                       ; $4b15: $43
    ld b, h                                       ; $4b16: $44
    ld b, l                                       ; $4b17: $45
    di                                            ; $4b18: $f3
    ld [$f580], a                                 ; $4b19: $ea $80 $f5
    rst $38                                       ; $4b1c: $ff
    ld e, [hl]                                    ; $4b1d: $5e
    ld e, a                                       ; $4b1e: $5f
    ld h, b                                       ; $4b1f: $60
    ld h, c                                       ; $4b20: $61
    ld h, d                                       ; $4b21: $62
    ld h, e                                       ; $4b22: $63
    ld h, h                                       ; $4b23: $64
    ld c, l                                       ; $4b24: $4d
    adc $ff                                       ; $4b25: $ce $ff
    ldh [$3d], a                                  ; $4b27: $e0 $3d
    ld a, $3f                                     ; $4b29: $3e $3f
    ld sp, hl                                     ; $4b2b: $f9

Call_02e_4b2c:
    pop hl                                        ; $4b2c: $e1
    db $fc                                        ; $4b2d: $fc
    ld [c], a                                     ; $4b2e: $e2
    ld b, [hl]                                    ; $4b2f: $46
    ld b, a                                       ; $4b30: $47
    add a                                         ; $4b31: $87
    ld c, b                                       ; $4b32: $48
    ld c, c                                       ; $4b33: $49
    ld c, d                                       ; $4b34: $4a
    ld a, [c]                                     ; $4b35: $f2
    ld [c], a                                     ; $4b36: $e2
    ld [$f3e0], a                                 ; $4b37: $ea $e0 $f3
    pop hl                                        ; $4b3a: $e1
    add b                                         ; $4b3b: $80
    push af                                       ; $4b3c: $f5
    ld hl, $65ff                                  ; $4b3d: $21 $ff $65
    ld h, [hl]                                    ; $4b40: $66
    ld h, a                                       ; $4b41: $67
    ld l, b                                       ; $4b42: $68
    ld l, c                                       ; $4b43: $69
    ld [hl], $36                                  ; $4b44: $36 $36
    ld c, [hl]                                    ; $4b46: $4e
    cp a                                          ; $4b47: $bf
    ld c, a                                       ; $4b48: $4f
    ld c, a                                       ; $4b49: $4f
    ld b, b                                       ; $4b4a: $40
    ld b, c                                       ; $4b4b: $41
    ld b, d                                       ; $4b4c: $42
    ld c, a                                       ; $4b4d: $4f
    rst $38                                       ; $4b4e: $ff
    pop hl                                        ; $4b4f: $e1
    ld c, [hl]                                    ; $4b50: $4e
    cpl                                           ; $4b51: $2f
    inc [hl]                                      ; $4b52: $34
    inc [hl]                                      ; $4b53: $34
    ld c, [hl]                                    ; $4b54: $4e
    ld c, e                                       ; $4b55: $4b
    rst $38                                       ; $4b56: $ff
    ldh [$4c], a                                  ; $4b57: $e0 $4c
    ld a, [c]                                     ; $4b59: $f2
    ld [c], a                                     ; $4b5a: $e2
    ld [$bce0], a                                 ; $4b5b: $ea $e0 $bc
    di                                            ; $4b5e: $f3
    pop hl                                        ; $4b5f: $e1
    add b                                         ; $4b60: $80
    and b                                         ; $4b61: $a0
    inc b                                         ; $4b62: $04
    inc d                                         ; $4b63: $14
    inc d                                         ; $4b64: $14
    inc b                                         ; $4b65: $04
    add b                                         ; $4b66: $80
    xor [hl]                                      ; $4b67: $ae
    inc h                                         ; $4b68: $24
    or a                                          ; $4b69: $b7
    dec h                                         ; $4b6a: $25
    ld bc, $ff36                                  ; $4b6b: $01 $36 $ff
    db $e4                                        ; $4b6e: $e4
    ld d, b                                       ; $4b6f: $50
    ld d, c                                       ; $4b70: $51
    rst $38                                       ; $4b71: $ff
    db $e3                                        ; $4b72: $e3
    inc [hl]                                      ; $4b73: $34
    rla                                           ; $4b74: $17
    ld b, $07                                     ; $4b75: $06 $07
    inc [hl]                                      ; $4b77: $34
    push af                                       ; $4b78: $f5
    db $e3                                        ; $4b79: $e3
    ld d, b                                       ; $4b7a: $50
    jp z, $ea60                                   ; $4b7b: $ca $60 $ea

    db $e4                                        ; $4b7e: $e4
    ld b, b                                       ; $4b7f: $40
    or l                                          ; $4b80: $b5
    rst $38                                       ; $4b81: $ff
    ld sp, $1129                                  ; $4b82: $31 $29 $11
    sub a                                         ; $4b85: $97
    sbc b                                         ; $4b86: $98
    sbc c                                         ; $4b87: $99
    sbc d                                         ; $4b88: $9a
    sbc e                                         ; $4b89: $9b
    ei                                            ; $4b8a: $fb
    ld bc, $fe36                                  ; $4b8b: $01 $36 $fe
    pop hl                                        ; $4b8e: $e1
    inc [hl]                                      ; $4b8f: $34
    inc [hl]                                      ; $4b90: $34
    ld d, d                                       ; $4b91: $52
    ld d, e                                       ; $4b92: $53
    ld d, d                                       ; $4b93: $52
    rst $30                                       ; $4b94: $f7
    inc [hl]                                      ; $4b95: $34
    ld d, $17                                     ; $4b96: $16 $17
    ld sp, hl                                     ; $4b98: $f9
    ldh [rHDMA3], a                               ; $4b99: $e0 $53
    ld d, d                                       ; $4b9b: $52
    inc bc                                        ; $4b9c: $03
    xor h                                         ; $4b9d: $ac
    cp a                                          ; $4b9e: $bf
    xor l                                         ; $4b9f: $ad
    and e                                         ; $4ba0: $a3
    adc h                                         ; $4ba1: $8c
    adc e                                         ; $4ba2: $8b
    adc d                                         ; $4ba3: $8a
    sbc h                                         ; $4ba4: $9c
    db $f4                                        ; $4ba5: $f4
    ldh [rHDMA3], a                               ; $4ba6: $e0 $53
    db $fd                                        ; $4ba8: $fd
    ld d, e                                       ; $4ba9: $53
    add b                                         ; $4baa: $80
    ld [hl], l                                    ; $4bab: $75
    inc h                                         ; $4bac: $24
    dec h                                         ; $4bad: $25
    ld [hl], $92                                  ; $4bae: $36 $92
    sub e                                         ; $4bb0: $93
    sub h                                         ; $4bb1: $94
    ld a, a                                       ; $4bb2: $7f
    sub l                                         ; $4bb3: $95
    sub [hl]                                      ; $4bb4: $96
    ld de, $1101                                  ; $4bb5: $11 $01 $11
    ld [hl], $11                                  ; $4bb8: $36 $11
    halt                                          ; $4bba: $76
    ldh [$f6], a                                  ; $4bbb: $e0 $f6
    ld e, b                                       ; $4bbd: $58
    ld h, c                                       ; $4bbe: $61
    scf                                           ; $4bbf: $37
    scf                                           ; $4bc0: $37
    ld d, d                                       ; $4bc1: $52
    ld h, b                                       ; $4bc2: $60
    and e                                         ; $4bc3: $a3
    and e                                         ; $4bc4: $a3
    inc de                                        ; $4bc5: $13
    xor [hl]                                      ; $4bc6: $ae
    rst $38                                       ; $4bc7: $ff
    xor [hl]                                      ; $4bc8: $ae
    inc [hl]                                      ; $4bc9: $34
    sub c                                         ; $4bca: $91
    sub b                                         ; $4bcb: $90
    adc a                                         ; $4bcc: $8f
    adc [hl]                                      ; $4bcd: $8e
    sbc l                                         ; $4bce: $9d
    ld d, h                                       ; $4bcf: $54
    rst $30                                       ; $4bd0: $f7
    ld d, l                                       ; $4bd1: $55
    ld d, l                                       ; $4bd2: $55
    ld d, l                                       ; $4bd3: $55
    ld b, b                                       ; $4bd4: $40
    ld [hl], l                                    ; $4bd5: $75
    ld sp, $3629                                  ; $4bd6: $31 $29 $36
    adc l                                         ; $4bd9: $8d
    rst $38                                       ; $4bda: $ff
    adc [hl]                                      ; $4bdb: $8e
    adc a                                         ; $4bdc: $8f
    sub b                                         ; $4bdd: $90
    sub c                                         ; $4bde: $91
    ld bc, $0611                                  ; $4bdf: $01 $11 $06
    rlca                                          ; $4be2: $07
    cp $fe                                        ; $4be3: $fe $fe
    db $e3                                        ; $4be5: $e3
    ld [hl], $00                                  ; $4be6: $36 $00
    scf                                           ; $4be8: $37
    scf                                           ; $4be9: $37
    nop                                           ; $4bea: $00
    and e                                         ; $4beb: $a3
    ld b, $ff                                     ; $4bec: $06 $ff
    rlca                                          ; $4bee: $07
    inc bc                                        ; $4bef: $03
    inc bc                                        ; $4bf0: $03
    dec b                                         ; $4bf1: $05
    dec b                                         ; $4bf2: $05
    inc bc                                        ; $4bf3: $03
    sub [hl]                                      ; $4bf4: $96
    sub l                                         ; $4bf5: $95
    ld a, a                                       ; $4bf6: $7f
    sub h                                         ; $4bf7: $94
    sub e                                         ; $4bf8: $93
    sub d                                         ; $4bf9: $92
    inc [hl]                                      ; $4bfa: $34
    ld d, [hl]                                    ; $4bfb: $56
    ld d, [hl]                                    ; $4bfc: $56
    ld d, [hl]                                    ; $4bfd: $56
    add b                                         ; $4bfe: $80
    ld hl, sp-$01                                 ; $4bff: $f8 $ff
    adc b                                         ; $4c01: $88
    adc c                                         ; $4c02: $89
    adc d                                         ; $4c03: $8a
    adc e                                         ; $4c04: $8b
    adc h                                         ; $4c05: $8c
    ld de, $1806                                  ; $4c06: $11 $06 $18
    rst $38                                       ; $4c09: $ff
    add hl, bc                                    ; $4c0a: $09
    add hl, de                                    ; $4c0b: $19
    rla                                           ; $4c0c: $17
    ld d, $17                                     ; $4c0d: $16 $17
    ld d, $08                                     ; $4c0f: $16 $08
    rlca                                          ; $4c11: $07
    ei                                            ; $4c12: $fb
    db $10                                        ; $4c13: $10
    ld b, $fd                                     ; $4c14: $06 $fd
    ldh [rNR23], a                                ; $4c16: $e0 $18
    rla                                           ; $4c18: $17
    inc de                                        ; $4c19: $13
    inc de                                        ; $4c1a: $13
    dec b                                         ; $4c1b: $05
    rst $38                                       ; $4c1c: $ff
    dec b                                         ; $4c1d: $05
    inc de                                        ; $4c1e: $13
    sbc e                                         ; $4c1f: $9b
    sbc d                                         ; $4c20: $9a
    sbc c                                         ; $4c21: $99
    sbc b                                         ; $4c22: $98
    sub a                                         ; $4c23: $97
    and e                                         ; $4c24: $a3
    pop af                                        ; $4c25: $f1
    ld d, a                                       ; $4c26: $57
    ret nz                                        ; $4c27: $c0

    ld b, d                                       ; $4c28: $42
    ccf                                           ; $4c29: $3f
    adc c                                         ; $4c2a: $89
    nop                                           ; $4c2b: $00
    add sp, $01                                   ; $4c2c: $e8 $01
    ld [hl], $0c                                  ; $4c2e: $36 $0c
    dec c                                         ; $4c30: $0d
    rst $38                                       ; $4c31: $ff
    ld [hl], $01                                  ; $4c32: $36 $01
    ld b, $18                                     ; $4c34: $06 $18
    ld [$0a1a], sp                                ; $4c36: $08 $1a $0a
    rlca                                          ; $4c39: $07
    cp e                                          ; $4c3a: $bb
    sbc a                                         ; $4c3b: $9f
    and b                                         ; $4c3c: $a0
    ld hl, sp-$20                                 ; $4c3d: $f8 $e0
    rlca                                          ; $4c3f: $07
    ld d, $17                                     ; $4c40: $16 $17
    ld a, [$b4e1]                                 ; $4c42: $fa $e1 $b4
    ld l, l                                       ; $4c45: $6d
    or l                                          ; $4c46: $b5
    add b                                         ; $4c47: $80
    ldh [$03], a                                  ; $4c48: $e0 $03
    and e                                         ; $4c4a: $a3
    ld [hl], $e0                                  ; $4c4b: $36 $e0
    inc bc                                        ; $4c4d: $03
    inc [hl]                                      ; $4c4e: $34
    ret nz                                        ; $4c4f: $c0

    ld b, d                                       ; $4c50: $42
    rst $18                                       ; $4c51: $df
    inc a                                         ; $4c52: $3c
    ld [hl-], a                                   ; $4c53: $32
    ld [hl-], a                                   ; $4c54: $32
    or b                                          ; $4c55: $b0
    xor a                                         ; $4c56: $af
    ret nz                                        ; $4c57: $c0

    db $ed                                        ; $4c58: $ed
    inc h                                         ; $4c59: $24
    dec h                                         ; $4c5a: $25
    ccf                                           ; $4c5b: $3f
    ld de, $1c36                                  ; $4c5c: $11 $36 $1c
    dec e                                         ; $4c5f: $1d
    ld [hl], $11                                  ; $4c60: $36 $11
    add [hl]                                      ; $4c62: $86
    ldh [$82], a                                  ; $4c63: $e0 $82
    ldh [$bb], a                                  ; $4c65: $e0 $bb
    and c                                         ; $4c67: $a1
    and d                                         ; $4c68: $a2
    ld hl, sp-$1f                                 ; $4c69: $f8 $e1
    ld b, $07                                     ; $4c6b: $06 $07
    ld d, $74                                     ; $4c6d: $16 $74
    ldh [$b6], a                                  ; $4c6f: $e0 $b6
    push af                                       ; $4c71: $f5
    or a                                          ; $4c72: $b7
    add b                                         ; $4c73: $80
    ldh [rNR13], a                                ; $4c74: $e0 $13
    scf                                           ; $4c76: $37
    ldh [$a3], a                                  ; $4c77: $e0 $a3
    inc de                                        ; $4c79: $13
    and e                                         ; $4c7a: $a3
    ld e, b                                       ; $4c7b: $58
    cp [hl]                                       ; $4c7c: $be
    ret nz                                        ; $4c7d: $c0

    ld b, c                                       ; $4c7e: $41
    inc a                                         ; $4c7f: $3c
    inc sp                                        ; $4c80: $33
    inc sp                                        ; $4c81: $33
    or d                                          ; $4c82: $b2
    or c                                          ; $4c83: $b1
    add b                                         ; $4c84: $80
    db $ed                                        ; $4c85: $ed
    jr z, @+$01                                   ; $4c86: $28 $ff

    add hl, hl                                    ; $4c88: $29
    ld bc, $0501                                  ; $4c89: $01 $01 $05
    dec b                                         ; $4c8c: $05
    ld bc, $0601                                  ; $4c8d: $01 $01 $06
    ld l, h                                       ; $4c90: $6c
    add h                                         ; $4c91: $84
    pop hl                                        ; $4c92: $e1
    ld e, $a0                                     ; $4c93: $1e $a0
    or b                                          ; $4c95: $b0
    xor a                                         ; $4c96: $af
    jp nz, $17e0                                  ; $4c97: $c2 $e0 $17

    ld b, $74                                     ; $4c9a: $06 $74
    ldh [$e0], a                                  ; $4c9c: $e0 $e0
    nop                                           ; $4c9e: $00
    pop hl                                        ; $4c9f: $e1
    db $ec                                        ; $4ca0: $ec
    ret nz                                        ; $4ca1: $c0

    ld [hl], b                                    ; $4ca2: $70
    ldh [$e6], a                                  ; $4ca3: $e0 $e6
    pop bc                                        ; $4ca5: $c1
    call nz, $0561                                ; $4ca6: $c4 $61 $05
    dec b                                         ; $4ca9: $05
    ld [hl], $fd                                  ; $4caa: $36 $fd
    ld [hl], $40                                  ; $4cac: $36 $40
    db $ed                                        ; $4cae: $ed
    rlca                                          ; $4caf: $07
    ld [hl], $11                                  ; $4cb0: $36 $11
    ld de, $0505                                  ; $4cb2: $11 $05 $05
    ld sp, hl                                     ; $4cb5: $f9
    ld de, $e080                                  ; $4cb6: $11 $80 $e0
    add h                                         ; $4cb9: $84
    pop hl                                        ; $4cba: $e1
    dec b                                         ; $4cbb: $05
    dec b                                         ; $4cbc: $05
    or d                                          ; $4cbd: $b2
    or c                                          ; $4cbe: $b1
    ld d, $87                                     ; $4cbf: $16 $87
    rla                                           ; $4cc1: $17
    scf                                           ; $4cc2: $37
    scf                                           ; $4cc3: $37
    ld [hl], d                                    ; $4cc4: $72

jr_02e_4cc5:
    pop hl                                        ; $4cc5: $e1
    nop                                           ; $4cc6: $00
    pop hl                                        ; $4cc7: $e1
    ld l, d                                       ; $4cc8: $6a
    db $e3                                        ; $4cc9: $e3
    ld [hl], d                                    ; $4cca: $72
    ldh [$09], a                                  ; $4ccb: $e0 $09
    ld a, h                                       ; $4ccd: $7c
    ret nz                                        ; $4cce: $c0

    push af                                       ; $4ccf: $f5
    jr @-$1c                                      ; $4cd0: $18 $e2

    inc d                                         ; $4cd2: $14
    inc b                                         ; $4cd3: $04

jr_02e_4cd4:
    dec d                                         ; $4cd4: $15
    xor a                                         ; $4cd5: $af
    or b                                          ; $4cd6: $b0
    sub d                                         ; $4cd7: $92
    pop hl                                        ; $4cd8: $e1
    or h                                          ; $4cd9: $b4
    or $e0                                        ; $4cda: $f6 $e0
    rst $38                                       ; $4cdc: $ff
    add sp, $14                                   ; $4cdd: $e8 $14
    nop                                           ; $4cdf: $00
    ldh [$af], a                                  ; $4ce0: $e0 $af
    or b                                          ; $4ce2: $b0
    db $ec                                        ; $4ce3: $ec
    ret nz                                        ; $4ce4: $c0

    ld a, [de]                                    ; $4ce5: $1a
    add e                                         ; $4ce6: $83
    dec bc                                        ; $4ce7: $0b
    dec de                                        ; $4ce8: $1b
    ld b, h                                       ; $4ce9: $44
    ld h, c                                       ; $4cea: $61
    add b                                         ; $4ceb: $80
    and b                                         ; $4cec: $a0
    ld a, a                                       ; $4ced: $7f
    and l                                         ; $4cee: $a5
    ret nz                                        ; $4cef: $c0

    ld h, [hl]                                    ; $4cf0: $66
    jr jr_02e_4cd4                                ; $4cf1: $18 $e1

    dec d                                         ; $4cf3: $15
    and $d6                                       ; $4cf4: $e6 $d6
    ldh [$b1], a                                  ; $4cf6: $e0 $b1
    or d                                          ; $4cf8: $b2
    sub d                                         ; $4cf9: $92
    pop hl                                        ; $4cfa: $e1
    ret nz                                        ; $4cfb: $c0

    db $ed                                        ; $4cfc: $ed
    inc de                                        ; $4cfd: $13
    inc de                                        ; $4cfe: $13
    or c                                          ; $4cff: $b1
    ld e, l                                       ; $4d00: $5d
    or d                                          ; $4d01: $b2
    db $ec                                        ; $4d02: $ec
    ret nz                                        ; $4d03: $c0

    ld [$0b1a], sp                                ; $4d04: $08 $1a $0b
    add b                                         ; $4d07: $80
    push de                                       ; $4d08: $d5
    ld a, [bc]                                    ; $4d09: $0a
    ld c, $c1                                     ; $4d0a: $0e $c1
    add hl, bc                                    ; $4d0c: $09
    ld bc, $e188                                  ; $4d0d: $01 $88 $e1
    and d                                         ; $4d10: $a2
    pop hl                                        ; $4d11: $e1
    inc d                                         ; $4d12: $14
    ld c, $e1                                     ; $4d13: $0e $e1
    ld hl, sp-$5c                                 ; $4d15: $f8 $a4
    nop                                           ; $4d17: $00
    ret nz                                        ; $4d18: $c0

    ld [hl], d                                    ; $4d19: $72
    ld [c], a                                     ; $4d1a: $e2
    add $7a                                       ; $4d1b: $c6 $7a
    ldh [rNR21], a                                ; $4d1d: $e0 $16
    add hl, bc                                    ; $4d1f: $09
    add b                                         ; $4d20: $80
    pop hl                                        ; $4d21: $e1
    jr z, jr_02e_4cc5                             ; $4d22: $28 $a1

    nop                                           ; $4d24: $00
    ld l, $19                                     ; $4d25: $2e $19
    add hl, bc                                    ; $4d27: $09
    rra                                           ; $4d28: $1f
    add hl, de                                    ; $4d29: $19
    ld [$1107], sp                                ; $4d2a: $08 $07 $11
    dec d                                         ; $4d2d: $15
    ld c, [hl]                                    ; $4d2e: $4e
    and $86                                       ; $4d2f: $e6 $86
    pop bc                                        ; $4d31: $c1
    ld c, $e2                                     ; $4d32: $0e $e2
    inc c                                         ; $4d34: $0c
    nop                                           ; $4d35: $00
    ret nz                                        ; $4d36: $c0

    ld [$15e4], a                                 ; $4d37: $ea $e4 $15
    inc de                                        ; $4d3a: $13
    ccf                                           ; $4d3b: $3f
    ldh [$c0], a                                  ; $4d3c: $e0 $c0
    ld bc, $a028                                  ; $4d3e: $01 $28 $a0
    ret nz                                        ; $4d41: $c0

    ld c, $87                                     ; $4d42: $0e $87
    add hl, bc                                    ; $4d44: $09
    dec de                                        ; $4d45: $1b
    dec bc                                        ; $4d46: $0b
    cp a                                          ; $4d47: $bf
    ldh [$84], a                                  ; $4d48: $e0 $84
    and l                                         ; $4d4a: $a5
    sbc [hl]                                      ; $4d4b: $9e
    ld h, b                                       ; $4d4c: $60
    ld a, [$0ea0]                                 ; $4d4d: $fa $a0 $0e
    pop bc                                        ; $4d50: $c1
    rrca                                          ; $4d51: $0f
    add b                                         ; $4d52: $80
    pop bc                                        ; $4d53: $c1
    halt                                          ; $4d54: $76
    rst $20                                       ; $4d55: $e7
    and l                                         ; $4d56: $a5
    and b                                         ; $4d57: $a0
    add b                                         ; $4d58: $80
    ld [c], a                                     ; $4d59: $e2
    add b                                         ; $4d5a: $80
    ld de, $0b1b                                  ; $4d5b: $11 $1b $0b
    ld h, b                                       ; $4d5e: $60
    cp a                                          ; $4d5f: $bf
    ldh [$a0], a                                  ; $4d60: $e0 $a0
    ret nz                                        ; $4d62: $c0

    db $fc                                        ; $4d63: $fc
    ld [c], a                                     ; $4d64: $e2
    sbc [hl]                                      ; $4d65: $9e
    ld h, c                                       ; $4d66: $61
    ld a, d                                       ; $4d67: $7a
    and b                                         ; $4d68: $a0
    ld e, $1f                                     ; $4d69: $1e $1f
    adc h                                         ; $4d6b: $8c
    jp nz, $0833                                  ; $4d6c: $c2 $33 $08

jr_02e_4d6f:
    jr jr_02e_4d6f                                ; $4d6f: $18 $fe

    db $e3                                        ; $4d71: $e3
    ld l, h                                       ; $4d72: $6c
    and b                                         ; $4d73: $a0
    ld a, [de]                                    ; $4d74: $1a
    ld a, [bc]                                    ; $4d75: $0a
    ld b, b                                       ; $4d76: $40
    dec d                                         ; $4d77: $15
    pop bc                                        ; $4d78: $c1
    ldh [$82], a                                  ; $4d79: $e0 $82
    cp $e6                                        ; $4d7b: $fe $e6
    ld a, [bc]                                    ; $4d7d: $0a
    add b                                         ; $4d7e: $80
    db $e4                                        ; $4d7f: $e4
    sbc b                                         ; $4d80: $98
    and c                                         ; $4d81: $a1
    cp $a0                                        ; $4d82: $fe $a0
    rst $00                                       ; $4d84: $c7
    ldh [$ab], a                                  ; $4d85: $e0 $ab
    and d                                         ; $4d87: $a2
    jr nz, jr_02e_4dcb                            ; $4d88: $20 $41

    ld hl, $a029                                  ; $4d8a: $21 $29 $a0
    add b                                         ; $4d8d: $80
    ld sp, hl                                     ; $4d8e: $f9
    cp l                                          ; $4d8f: $bd
    push hl                                       ; $4d90: $e5
    add b                                         ; $4d91: $80
    push hl                                       ; $4d92: $e5
    sbc b                                         ; $4d93: $98
    and c                                         ; $4d94: $a1
    ld d, $88                                     ; $4d95: $16 $88
    ldh [rIE], a                                  ; $4d97: $e0 $ff
    dec [hl]                                      ; $4d99: $35
    jr nz, @+$23                                  ; $4d9a: $20 $21

    dec [hl]                                      ; $4d9c: $35
    dec [hl]                                      ; $4d9d: $35
    jr nz, jr_02e_4dca                            ; $4d9e: $20 $2a

    inc hl                                        ; $4da0: $23
    ld l, a                                       ; $4da1: $6f
    inc h                                         ; $4da2: $24
    dec hl                                        ; $4da3: $2b
    ld hl, $8035                                  ; $4da4: $21 $35 $80
    db $fd                                        ; $4da7: $fd
    ld a, [bc]                                    ; $4da8: $0a
    ld a, [de]                                    ; $4da9: $1a
    cp $e0                                        ; $4daa: $fe $e0
    sbc h                                         ; $4dac: $9c
    nop                                           ; $4dad: $00
    db $e4                                        ; $4dae: $e4
    inc c                                         ; $4daf: $0c
    db $e3                                        ; $4db0: $e3
    rla                                           ; $4db1: $17
    dec [hl]                                      ; $4db2: $35
    ld [hl+], a                                   ; $4db3: $22
    add $e0                                       ; $4db4: $c6 $e0
    jp nz, Jump_000_2de0                          ; $4db6: $c2 $e0 $2d

    ld bc, $be2c                                  ; $4db9: $01 $2c $be
    ldh [rP1], a                                  ; $4dbc: $e0 $00
    or $c9                                        ; $4dbe: $f6 $c9
    add b                                         ; $4dc0: $80
    push bc                                       ; $4dc1: $c5
    pop hl                                        ; $4dc2: $e1
    ld d, e                                       ; $4dc3: $53
    db $e3                                        ; $4dc4: $e3
    adc [hl]                                      ; $4dc5: $8e
    and [hl]                                      ; $4dc6: $a6
    halt                                          ; $4dc7: $76
    add b                                         ; $4dc8: $80
    rra                                           ; $4dc9: $1f

jr_02e_4dca:
    dec [hl]                                      ; $4dca: $35

jr_02e_4dcb:
    dec [hl]                                      ; $4dcb: $35
    ld h, $27                                     ; $4dcc: $26 $27
    cpl                                           ; $4dce: $2f
    jp nz, $bee3                                  ; $4dcf: $c2 $e3 $be

    ldh [rP1], a                                  ; $4dd2: $e0 $00
    sub l                                         ; $4dd4: $95
    sbc d                                         ; $4dd5: $9a
    ld a, [de]                                    ; $4dd6: $1a
    push hl                                       ; $4dd7: $e5
    ld [$8084], sp                                ; $4dd8: $08 $84 $80
    or b                                          ; $4ddb: $b0
    xor a                                         ; $4ddc: $af
    add b                                         ; $4ddd: $80
    xor b                                         ; $4dde: $a8
    ld l, [hl]                                    ; $4ddf: $6e
    and b                                         ; $4de0: $a0
    sbc a                                         ; $4de1: $9f
    or a                                          ; $4de2: $b7
    and b                                         ; $4de3: $a0
    ld h, $30                                     ; $4de4: $26 $30
    jp nz, Jump_000_24e3                          ; $4de6: $c2 $e3 $24

    dec l                                         ; $4de9: $2d
    ret nz                                        ; $4dea: $c0

Call_02e_4deb:
    ld [hl], l                                    ; $4deb: $75
    add hl, de                                    ; $4dec: $19
    sbc b                                         ; $4ded: $98
    ld [de], a                                    ; $4dee: $12
    and b                                         ; $4def: $a0
    adc [hl]                                      ; $4df0: $8e
    ld h, c                                       ; $4df1: $61
    add h                                         ; $4df2: $84
    add c                                         ; $4df3: $81
    or d                                          ; $4df4: $b2
    or c                                          ; $4df5: $b1
    ld b, b                                       ; $4df6: $40
    and a                                         ; $4df7: $a7
    ld l, [hl]                                    ; $4df8: $6e
    and c                                         ; $4df9: $a1
    and c                                         ; $4dfa: $a1
    push bc                                       ; $4dfb: $c5
    and d                                         ; $4dfc: $a2
    ld a, $e0                                     ; $4dfd: $3e $e0
    ld l, $7c                                     ; $4dff: $2e $7c
    ldh [$fc], a                                  ; $4e01: $e0 $fc
    ldh [$80], a                                  ; $4e03: $e0 $80
    or $07                                        ; $4e05: $f6 $07
    scf                                           ; $4e07: $37
    ld h, [hl]                                    ; $4e08: $66
    ret nz                                        ; $4e09: $c0

    ld h, d                                       ; $4e0a: $62
    nop                                           ; $4e0b: $00
    scf                                           ; $4e0c: $37
    ld a, h                                       ; $4e0d: $7c
    and d                                         ; $4e0e: $a2
    add b                                         ; $4e0f: $80
    and h                                         ; $4e10: $a4
    dec [hl]                                      ; $4e11: $35
    ld [bc], a                                    ; $4e12: $02
    ld a, [c]                                     ; $4e13: $f2
    db $e3                                        ; $4e14: $e3
    ld c, a                                       ; $4e15: $4f
    ld h, $27                                     ; $4e16: $26 $27
    jr z, @+$2b                                   ; $4e18: $28 $29

    db $fc                                        ; $4e1a: $fc
    db $e3                                        ; $4e1b: $e3
    add b                                         ; $4e1c: $80
    rst $30                                       ; $4e1d: $f7
    inc [hl]                                      ; $4e1e: $34
    ld b, b                                       ; $4e1f: $40
    ld h, d                                       ; $4e20: $62
    ld l, e                                       ; $4e21: $6b
    stop                                          ; $4e22: $10 $00
    call nz, $1582                                ; $4e24: $c4 $82 $15
    ld [$07c3], sp                                ; $4e27: $08 $c3 $07
    ld [de], a                                    ; $4e2a: $12
    ld a, [c]                                     ; $4e2b: $f2
    db $e3                                        ; $4e2c: $e3
    ld a, [hl]                                    ; $4e2d: $7e
    ld a, [hl]                                    ; $4e2e: $7e
    pop bc                                        ; $4e2f: $c1
    ld l, d                                       ; $4e30: $6a
    ld l, e                                       ; $4e31: $6b
    ld l, h                                       ; $4e32: $6c
    ld l, l                                       ; $4e33: $6d
    ld l, [hl]                                    ; $4e34: $6e
    ld l, a                                       ; $4e35: $6f
    add b                                         ; $4e36: $80
    ld hl, sp-$66                                 ; $4e37: $f8 $9a
    ret nz                                        ; $4e39: $c0

    ld b, d                                       ; $4e3a: $42
    inc [hl]                                      ; $4e3b: $34
    ld [c], a                                     ; $4e3c: $e2
    nop                                           ; $4e3d: $00
    nop                                           ; $4e3e: $00
    scf                                           ; $4e3f: $37
    db $fc                                        ; $4e40: $fc
    ld b, b                                       ; $4e41: $40
    ld [$02c3], sp                                ; $4e42: $08 $c3 $02
    rst $30                                       ; $4e45: $f7
    dec b                                         ; $4e46: $05
    dec b                                         ; $4e47: $05
    ld [bc], a                                    ; $4e48: $02
    ld b, h                                       ; $4e49: $44
    jp $7025                                      ; $4e4a: $c3 $25 $70


    ld [hl], c                                    ; $4e4d: $71
    ld [hl], d                                    ; $4e4e: $72
    ld b, a                                       ; $4e4f: $47
    ld [hl], e                                    ; $4e50: $73
    ld [hl], h                                    ; $4e51: $74
    ld [hl], l                                    ; $4e52: $75
    ret nz                                        ; $4e53: $c0

    ld d, l                                       ; $4e54: $55
    ld d, c                                       ; $4e55: $51
    ld h, b                                       ; $4e56: $60
    ld b, b                                       ; $4e57: $40
    ld b, d                                       ; $4e58: $42
    scf                                           ; $4e59: $37
    ld h, d                                       ; $4e5a: $62
    nop                                           ; $4e5b: $00
    ld a, b                                       ; $4e5c: $78
    ld a, [bc]                                    ; $4e5d: $0a
    ld h, b                                       ; $4e5e: $60
    ld a, d                                       ; $4e5f: $7a
    and d                                         ; $4e60: $a2
    ld [$12c0], sp                                ; $4e61: $08 $c0 $12
    dec b                                         ; $4e64: $05
    dec b                                         ; $4e65: $05
    ld [de], a                                    ; $4e66: $12
    ld b, $c1                                     ; $4e67: $06 $c1
    rst $38                                       ; $4e69: $ff
    ld l, $28                                     ; $4e6a: $2e $28
    add hl, hl                                    ; $4e6c: $29
    halt                                          ; $4e6d: $76
    ld [hl], a                                    ; $4e6e: $77
    ld a, b                                       ; $4e6f: $78
    ld a, c                                       ; $4e70: $79
    ld a, d                                       ; $4e71: $7a
    ld sp, hl                                     ; $4e72: $f9
    ld a, e                                       ; $4e73: $7b
    add b                                         ; $4e74: $80
    ld d, l                                       ; $4e75: $55
    call Call_000_3440                            ; $4e76: $cd $40 $34
    and h                                         ; $4e79: $a4
    and l                                         ; $4e7a: $a5
    inc [hl]                                      ; $4e7b: $34
    inc [hl]                                      ; $4e7c: $34
    pop hl                                        ; $4e7d: $e1
    nop                                           ; $4e7e: $00
    add b                                         ; $4e7f: $80
    pop hl                                        ; $4e80: $e1
    ld d, a                                       ; $4e81: $57
    and c                                         ; $4e82: $a1
    ld a, [$0840]                                 ; $4e83: $fa $40 $08
    ret nz                                        ; $4e86: $c0

    dec h                                         ; $4e87: $25
    dec b                                         ; $4e88: $05
    dec b                                         ; $4e89: $05
    cp $c4                                        ; $4e8a: $fe $c4
    pop bc                                        ; $4e8c: $c1
    jr z, jr_02e_4eb8                             ; $4e8d: $28 $29

    xor b                                         ; $4e8f: $a8
    xor c                                         ; $4e90: $a9
    ld a, h                                       ; $4e91: $7c
    ld a, l                                       ; $4e92: $7d
    ld a, [hl]                                    ; $4e93: $7e
    rst $30                                       ; $4e94: $f7
    ld a, a                                       ; $4e95: $7f
    add b                                         ; $4e96: $80
    add c                                         ; $4e97: $81
    ld b, b                                       ; $4e98: $40
    ld d, l                                       ; $4e99: $55
    ld hl, $0037                                  ; $4e9a: $21 $37 $00
    scf                                           ; $4e9d: $37
    ld l, a                                       ; $4e9e: $6f
    and [hl]                                      ; $4e9f: $a6
    and a                                         ; $4ea0: $a7
    scf                                           ; $4ea1: $37
    nop                                           ; $4ea2: $00
    nop                                           ; $4ea3: $00
    ldh [rTIMA], a                                ; $4ea4: $e0 $05
    db $10                                        ; $4ea6: $10
    adc b                                         ; $4ea7: $88
    ld h, c                                       ; $4ea8: $61
    db $f4                                        ; $4ea9: $f4
    db $10                                        ; $4eaa: $10
    and b                                         ; $4eab: $a0
    jp z, Jump_000_05c1                           ; $4eac: $ca $c1 $05

    call nz, Call_000_35c2                        ; $4eaf: $c4 $c2 $35
    ld [bc], a                                    ; $4eb2: $02
    xor d                                         ; $4eb3: $aa

jr_02e_4eb4:
    xor e                                         ; $4eb4: $ab
    ccf                                           ; $4eb5: $3f
    add d                                         ; $4eb6: $82
    add e                                         ; $4eb7: $83

jr_02e_4eb8:
    add h                                         ; $4eb8: $84
    add l                                         ; $4eb9: $85
    add [hl]                                      ; $4eba: $86
    add a                                         ; $4ebb: $87
    ret nz                                        ; $4ebc: $c0

    scf                                           ; $4ebd: $37
    add $e1                                       ; $4ebe: $c6 $e1
    ldh [$c1], a                                  ; $4ec0: $e0 $c1
    ldh [rP1], a                                  ; $4ec2: $e0 $00
    ldh [$94], a                                  ; $4ec4: $e0 $94
    ld h, c                                       ; $4ec6: $61
    ld a, h                                       ; $4ec7: $7c
    ldh [$80], a                                  ; $4ec8: $e0 $80
    jp Jump_000_3405                              ; $4eca: $c3 $05 $34


    ld [bc], a                                    ; $4ecd: $02
    rst $30                                       ; $4ece: $f7
    ld [bc], a                                    ; $4ecf: $02
    dec [hl]                                      ; $4ed0: $35
    ld [bc], a                                    ; $4ed1: $02
    jr c, jr_02e_4eb4                             ; $4ed2: $38 $e0

    ld [bc], a                                    ; $4ed4: $02
    ld [bc], a                                    ; $4ed5: $02
    inc [hl]                                      ; $4ed6: $34
    ld [bc], a                                    ; $4ed7: $02
    db $dd                                        ; $4ed8: $dd
    inc [hl]                                      ; $4ed9: $34
    ld b, b                                       ; $4eda: $40
    or [hl]                                       ; $4edb: $b6
    ld sp, $3729                                  ; $4edc: $31 $29 $37
    add $c0                                       ; $4edf: $c6 $c0
    db $10                                        ; $4ee1: $10
    scf                                           ; $4ee2: $37
    rst $00                                       ; $4ee3: $c7
    db $10                                        ; $4ee4: $10
    scf                                           ; $4ee5: $37
    dec b                                         ; $4ee6: $05
    ld c, $c2                                     ; $4ee7: $0e $c2
    db $fc                                        ; $4ee9: $fc
    jp nz, $c180                                  ; $4eea: $c2 $80 $c1

    dec b                                         ; $4eed: $05
    dec [hl]                                      ; $4eee: $35
    rst $18                                       ; $4eef: $df
    ld [de], a                                    ; $4ef0: $12
    ld [de], a                                    ; $4ef1: $12
    inc [hl]                                      ; $4ef2: $34
    ld [de], a                                    ; $4ef3: $12
    dec [hl]                                      ; $4ef4: $35
    ld hl, sp-$40                                 ; $4ef5: $f8 $c0
    ld [de], a                                    ; $4ef7: $12
    dec [hl]                                      ; $4ef8: $35
    rlca                                          ; $4ef9: $07
    ld [de], a                                    ; $4efa: $12
    dec [hl]                                      ; $4efb: $35
    jr nz, jr_02e_4f3e                            ; $4efc: $20 $40

    scf                                           ; $4efe: $37
    nop                                           ; $4eff: $00
    ld h, d                                       ; $4f00: $62
    ld [de], a                                    ; $4f01: $12
    ld h, c                                       ; $4f02: $61
    add b                                         ; $4f03: $80
    ld h, d                                       ; $4f04: $62
    db $fc                                        ; $4f05: $fc
    jp nz, $c53c                                  ; $4f06: $c2 $3c $c5

    add b                                         ; $4f09: $80
    or $45                                        ; $4f0a: $f6 $45
    inc d                                         ; $4f0c: $14
    dec b                                         ; $4f0d: $05
    or l                                          ; $4f0e: $b5
    or h                                          ; $4f0f: $b4
    cp h                                          ; $4f10: $bc
    add c                                         ; $4f11: $81
    ld b, b                                       ; $4f12: $40
    scf                                           ; $4f13: $37
    ret nc                                        ; $4f14: $d0

    nop                                           ; $4f15: $00
    ld h, c                                       ; $4f16: $61
    ld c, d                                       ; $4f17: $4a
    and a                                         ; $4f18: $a7
    db $fc                                        ; $4f19: $fc
    ret nz                                        ; $4f1a: $c0

    add [hl]                                      ; $4f1b: $86
    add c                                         ; $4f1c: $81
    ld [bc], a                                    ; $4f1d: $02
    db $ec                                        ; $4f1e: $ec
    and $15                                       ; $4f1f: $e6 $15
    or a                                          ; $4f21: $b7
    ld [hl], c                                    ; $4f22: $71
    or [hl]                                       ; $4f23: $b6
    cp b                                          ; $4f24: $b8
    add b                                         ; $4f25: $80
    ld b, b                                       ; $4f26: $40
    or [hl]                                       ; $4f27: $b6
    ld h, h                                       ; $4f28: $64
    add b                                         ; $4f29: $80

jr_02e_4f2a:
    scf                                           ; $4f2a: $37
    scf                                           ; $4f2b: $37
    jr nz, jr_02e_4f2a                            ; $4f2c: $20 $fc

    ld [$0e6c], a                                 ; $4f2e: $ea $6c $0e
    add c                                         ; $4f31: $81
    ld c, [hl]                                    ; $4f32: $4e
    ldh [rNR42], a                                ; $4f33: $e0 $21
    inc [hl]                                      ; $4f35: $34
    ld b, b                                       ; $4f36: $40
    add e                                         ; $4f37: $83
    ld hl, $fa35                                  ; $4f38: $21 $35 $fa
    add c                                         ; $4f3b: $81
    db $10                                        ; $4f3c: $10
    ret nz                                        ; $4f3d: $c0

jr_02e_4f3e:
    dec d                                         ; $4f3e: $15
    ld h, h                                       ; $4f3f: $64
    add c                                         ; $4f40: $81
    ld e, $81                                     ; $4f41: $1e $81
    db $fc                                        ; $4f43: $fc
    db $fc                                        ; $4f44: $fc
    ld l, $80                                     ; $4f45: $2e $80
    dec d                                         ; $4f47: $15
    rst $38                                       ; $4f48: $ff
    rst $38                                       ; $4f49: $ff
    rst $38                                       ; $4f4a: $ff
    rst $38                                       ; $4f4b: $ff
    nop                                           ; $4f4c: $00
    rst $38                                       ; $4f4d: $ff
    rst $38                                       ; $4f4e: $ff
    rst $38                                       ; $4f4f: $ff
    rst $38                                       ; $4f50: $ff
    rst $38                                       ; $4f51: $ff
    rst $38                                       ; $4f52: $ff
    rst $38                                       ; $4f53: $ff
    rst $38                                       ; $4f54: $ff
    rst $38                                       ; $4f55: $ff
    rst $38                                       ; $4f56: $ff
    rst $38                                       ; $4f57: $ff
    rst $38                                       ; $4f58: $ff
    rst $38                                       ; $4f59: $ff
    rst $38                                       ; $4f5a: $ff
    rst $38                                       ; $4f5b: $ff
    rst $38                                       ; $4f5c: $ff
    nop                                           ; $4f5d: $00
    rst $38                                       ; $4f5e: $ff
    rst $38                                       ; $4f5f: $ff
    rst $38                                       ; $4f60: $ff
    rst $38                                       ; $4f61: $ff
    rst $38                                       ; $4f62: $ff
    rst $38                                       ; $4f63: $ff
    rst $38                                       ; $4f64: $ff
    rst $38                                       ; $4f65: $ff
    rst $38                                       ; $4f66: $ff
    rst $38                                       ; $4f67: $ff
    rst $38                                       ; $4f68: $ff
    rst $38                                       ; $4f69: $ff
    rst $38                                       ; $4f6a: $ff
    rst $38                                       ; $4f6b: $ff
    rst $38                                       ; $4f6c: $ff
    rst $38                                       ; $4f6d: $ff
    nop                                           ; $4f6e: $00
    rst $38                                       ; $4f6f: $ff
    rst $38                                       ; $4f70: $ff
    rst $38                                       ; $4f71: $ff
    rst $38                                       ; $4f72: $ff
    rst $38                                       ; $4f73: $ff
    rst $38                                       ; $4f74: $ff
    rst $38                                       ; $4f75: $ff
    rst $38                                       ; $4f76: $ff
    rst $38                                       ; $4f77: $ff
    rst $38                                       ; $4f78: $ff
    rst $38                                       ; $4f79: $ff
    rst $38                                       ; $4f7a: $ff
    rst $38                                       ; $4f7b: $ff
    rst $38                                       ; $4f7c: $ff
    rst $38                                       ; $4f7d: $ff
    rst $38                                       ; $4f7e: $ff
    nop                                           ; $4f7f: $00
    ld [$00e9], a                                 ; $4f80: $ea $e9 $00
    nop                                           ; $4f83: $00
    nop                                           ; $4f84: $00
    add hl, hl                                    ; $4f85: $29
    ld c, d                                       ; $4f86: $4a
    rst $38                                       ; $4f87: $ff
    rst $38                                       ; $4f88: $ff
    db $e3                                        ; $4f89: $e3
    ld [c], a                                     ; $4f8a: $e2
    ld c, $ff                                     ; $4f8b: $0e $ff
    db $eb                                        ; $4f8d: $eb
    ld a, [bc]                                    ; $4f8e: $0a
    rst $38                                       ; $4f8f: $ff
    push hl                                       ; $4f90: $e5
    add $ff                                       ; $4f91: $c6 $ff

jr_02e_4f93:
    nop                                           ; $4f93: $00
    ret nz                                        ; $4f94: $c0

    rst $38                                       ; $4f95: $ff
    rst $38                                       ; $4f96: $ff
    rst $38                                       ; $4f97: $ff
    ret nz                                        ; $4f98: $c0

    rst $38                                       ; $4f99: $ff

jr_02e_4f9a:
    ret nz                                        ; $4f9a: $c0

    rst $38                                       ; $4f9b: $ff
    ret nz                                        ; $4f9c: $c0

    rst $38                                       ; $4f9d: $ff
    ret nz                                        ; $4f9e: $c0

    rst $38                                       ; $4f9f: $ff
    ret nz                                        ; $4fa0: $c0

    rst $38                                       ; $4fa1: $ff
    ret nz                                        ; $4fa2: $c0

    rst $38                                       ; $4fa3: $ff
    nop                                           ; $4fa4: $00
    ret nz                                        ; $4fa5: $c0

    rst $38                                       ; $4fa6: $ff
    ret nz                                        ; $4fa7: $c0

    di                                            ; $4fa8: $f3
    call $c0e3                                    ; $4fa9: $cd $e3 $c0
    db $ed                                        ; $4fac: $ed
    rst $38                                       ; $4fad: $ff
    rst $38                                       ; $4fae: $ff
    ret z                                         ; $4faf: $c8

    push hl                                       ; $4fb0: $e5
    push bc                                       ; $4fb1: $c5
    ld [c], a                                     ; $4fb2: $e2
    ret nz                                        ; $4fb3: $c0

    rst $38                                       ; $4fb4: $ff
    and $c0                                       ; $4fb5: $e6 $c0
    ld hl, sp+$0c                                 ; $4fb7: $f8 $0c
    inc l                                         ; $4fb9: $2c
    ret nz                                        ; $4fba: $c0

    rst $38                                       ; $4fbb: $ff
    add b                                         ; $4fbc: $80
    ld hl, sp+$2e                                 ; $4fbd: $f8 $2e
    inc c                                         ; $4fbf: $0c
    inc l                                         ; $4fc0: $2c
    ld bc, $c02e                                  ; $4fc1: $01 $2e $c0
    rst $38                                       ; $4fc4: $ff
    add b                                         ; $4fc5: $80

jr_02e_4fc6:
    rst $38                                       ; $4fc6: $ff
    ret nz                                        ; $4fc7: $c0

    rst $38                                       ; $4fc8: $ff
    ret nz                                        ; $4fc9: $c0

    rst $38                                       ; $4fca: $ff
    rst $08                                       ; $4fcb: $cf
    rst $38                                       ; $4fcc: $ff
    ret nz                                        ; $4fcd: $c0

    rst $38                                       ; $4fce: $ff
    rst $38                                       ; $4fcf: $ff
    rst $38                                       ; $4fd0: $ff
    jr nz, jr_02e_4f93                            ; $4fd1: $20 $c0

    rst $38                                       ; $4fd3: $ff
    rst $38                                       ; $4fd4: $ff
    rst $38                                       ; $4fd5: $ff
    ret nz                                        ; $4fd6: $c0

    rst $38                                       ; $4fd7: $ff
    rst $38                                       ; $4fd8: $ff
    rst $38                                       ; $4fd9: $ff
    ret nz                                        ; $4fda: $c0

    ld hl, sp+$0b                                 ; $4fdb: $f8 $0b
    ld [c], a                                     ; $4fdd: $e2
    and l                                         ; $4fde: $a5
    cp l                                          ; $4fdf: $bd
    rst $20                                       ; $4fe0: $e7
    ld a, c                                       ; $4fe1: $79
    ld a, [hl+]                                   ; $4fe2: $2a
    and c                                         ; $4fe3: $a1
    pop af                                        ; $4fe4: $f1
    ld c, l                                       ; $4fe5: $4d
    and b                                         ; $4fe6: $a0
    inc c                                         ; $4fe7: $0c
    inc c                                         ; $4fe8: $0c
    inc l                                         ; $4fe9: $2c
    inc c                                         ; $4fea: $0c
    ret nz                                        ; $4feb: $c0

    rst $28                                       ; $4fec: $ef
    add c                                         ; $4fed: $81
    dec bc                                        ; $4fee: $0b
    inc l                                         ; $4fef: $2c
    xor [hl]                                      ; $4ff0: $ae
    jr nz, jr_02e_4f9a                            ; $4ff1: $20 $a7

    or [hl]                                       ; $4ff3: $b6
    ldh [rNR21], a                                ; $4ff4: $e0 $16
    and l                                         ; $4ff6: $a5
    ld b, b                                       ; $4ff7: $40
    or l                                          ; $4ff8: $b5
    ret nz                                        ; $4ff9: $c0

    ldh [$4c], a                                  ; $4ffa: $e0 $4c
    ld b, h                                       ; $4ffc: $44
    rst $38                                       ; $4ffd: $ff
    pop hl                                        ; $4ffe: $e1
    ldh [$82], a                                  ; $4fff: $e0 $82
    ld c, [hl]                                    ; $5001: $4e
    rst $20                                       ; $5002: $e7
    add c                                         ; $5003: $81
    set 4, c                                      ; $5004: $cb $e1
    ldh [$81], a                                  ; $5006: $e0 $81
    ld a, [hl+]                                   ; $5008: $2a
    db $db                                        ; $5009: $db
    add b                                         ; $500a: $80
    add a                                         ; $500b: $87
    ld c, $2c                                     ; $500c: $0e $2c
    inc l                                         ; $500e: $2c
    adc h                                         ; $500f: $8c
    ldh [$08], a                                  ; $5010: $e0 $08
    xor b                                         ; $5012: $a8
    ret nz                                        ; $5013: $c0

    adc [hl]                                      ; $5014: $8e
    ret nz                                        ; $5015: $c0

    db $eb                                        ; $5016: $eb
    ld c, [hl]                                    ; $5017: $4e
    ld h, $be                                     ; $5018: $26 $be
    ldh [$0e], a                                  ; $501a: $e0 $0e
    ld l, $fd                                     ; $501c: $2e $fd
    ld [c], a                                     ; $501e: $e2
    sbc e                                         ; $501f: $9b
    add c                                         ; $5020: $81
    ld a, [hl+]                                   ; $5021: $2a
    ret nz                                        ; $5022: $c0

    pop hl                                        ; $5023: $e1
    cp a                                          ; $5024: $bf
    db $e3                                        ; $5025: $e3
    nop                                           ; $5026: $00
    ret nz                                        ; $5027: $c0

    rst $38                                       ; $5028: $ff
    ld e, [hl]                                    ; $5029: $5e
    add l                                         ; $502a: $85
    cp l                                          ; $502b: $bd
    pop hl                                        ; $502c: $e1
    ld d, d                                       ; $502d: $52
    add e                                         ; $502e: $83
    sub b                                         ; $502f: $90
    ret nz                                        ; $5030: $c0

    ret nz                                        ; $5031: $c0

    pop hl                                        ; $5032: $e1
    adc d                                         ; $5033: $8a
    ret nz                                        ; $5034: $c0

    ret nz                                        ; $5035: $c0

    rst $38                                       ; $5036: $ff
    ret nz                                        ; $5037: $c0

    jr nz, jr_02e_4fc6                            ; $5038: $20 $8c

    ret nz                                        ; $503a: $c0

    db $ec                                        ; $503b: $ec
    nop                                           ; $503c: $00
    add d                                         ; $503d: $82
    ccf                                           ; $503e: $3f
    adc c                                         ; $503f: $89
    ret nz                                        ; $5040: $c0

    jp z, $e7a2                                   ; $5041: $ca $a2 $e7

    dec c                                         ; $5044: $0d
    dec c                                         ; $5045: $0d
    add $d8                                       ; $5046: $c6 $d8

jr_02e_5048:
    ld h, a                                       ; $5048: $67
    dec bc                                        ; $5049: $0b
    dec bc                                        ; $504a: $0b
    db $10                                        ; $504b: $10
    ret nz                                        ; $504c: $c0

    ret                                           ; $504d: $c9


    ld h, h                                       ; $504e: $64
    ret nz                                        ; $504f: $c0

    db $e3                                        ; $5050: $e3
    dec bc                                        ; $5051: $0b
    dec hl                                        ; $5052: $2b
    inc de                                        ; $5053: $13
    dec hl                                        ; $5054: $2b
    dec hl                                        ; $5055: $2b
    ret nz                                        ; $5056: $c0

    rst $38                                       ; $5057: $ff

jr_02e_5058:
    ret nz                                        ; $5058: $c0

    pop af                                        ; $5059: $f1
    ld a, [bc]                                    ; $505a: $0a
    ret nz                                        ; $505b: $c0

    ld a, [$e398]                                 ; $505c: $fa $98 $e3
    add h                                         ; $505f: $84
    pop hl                                        ; $5060: $e1
    rrca                                          ; $5061: $0f
    inc c                                         ; $5062: $0c
    inc l                                         ; $5063: $2c
    dec hl                                        ; $5064: $2b
    dec hl                                        ; $5065: $2b
    ld b, b                                       ; $5066: $40
    ld [$6a4c], a                                 ; $5067: $ea $4c $6a
    ld [hl], b                                    ; $506a: $70
    pop hl                                        ; $506b: $e1
    add b                                         ; $506c: $80
    db $ed                                        ; $506d: $ed
    jr nc, jr_02e_5048                            ; $506e: $30 $d8

    rst $20                                       ; $5070: $e7
    ret nz                                        ; $5071: $c0

    rst $38                                       ; $5072: $ff
    ret nz                                        ; $5073: $c0

    di                                            ; $5074: $f3
    jr jr_02e_5058                                ; $5075: $18 $e1

    inc c                                         ; $5077: $0c

jr_02e_5078:
    inc l                                         ; $5078: $2c
    ld [de], a                                    ; $5079: $12
    db $e3                                        ; $507a: $e3
    sbc [hl]                                      ; $507b: $9e
    and b                                         ; $507c: $a0
    ld c, h                                       ; $507d: $4c
    rst $38                                       ; $507e: $ff
    jp hl                                         ; $507f: $e9


    nop                                           ; $5080: $00
    ldh [$0b], a                                  ; $5081: $e0 $0b
    dec bc                                        ; $5083: $0b
    db $ec                                        ; $5084: $ec
    add $80                                       ; $5085: $c6 $80
    ldh [$0c], a                                  ; $5087: $e0 $0c
    ld a, a                                       ; $5089: $7f
    and l                                         ; $508a: $a5
    ld [$eac0], sp                                ; $508b: $08 $c0 $ea
    cp a                                          ; $508e: $bf
    and b                                         ; $508f: $a0
    ret nz                                        ; $5090: $c0

    push hl                                       ; $5091: $e5
    ld l, h                                       ; $5092: $6c
    or e                                          ; $5093: $b3
    and d                                         ; $5094: $a2
    ei                                            ; $5095: $fb
    push hl                                       ; $5096: $e5
    ret nz                                        ; $5097: $c0

    db $ec                                        ; $5098: $ec
    add b                                         ; $5099: $80
    pop de                                        ; $509a: $d1
    nop                                           ; $509b: $00
    ld d, $c5                                     ; $509c: $16 $c5
    sub d                                         ; $509e: $92
    pop hl                                        ; $509f: $e1
    adc [hl]                                      ; $50a0: $8e
    db $e3                                        ; $50a1: $e3
    ld b, b                                       ; $50a2: $40
    ret                                           ; $50a3: $c9


    ld a, d                                       ; $50a4: $7a
    push hl                                       ; $50a5: $e5

jr_02e_50a6:
    ld [hl+], a                                   ; $50a6: $22
    adc $c0                                       ; $50a7: $ce $c0
    db $ec                                        ; $50a9: $ec
    adc [hl]                                      ; $50aa: $8e
    jp hl                                         ; $50ab: $e9


    inc c                                         ; $50ac: $0c
    ld d, $47                                     ; $50ad: $16 $47
    ld [hl], h                                    ; $50af: $74
    db $e3                                        ; $50b0: $e3
    ld l, h                                       ; $50b1: $6c
    ld l, h                                       ; $50b2: $6c
    ret nz                                        ; $50b3: $c0

    rst $38                                       ; $50b4: $ff
    adc $cb                                       ; $50b5: $ce $cb
    xor h                                         ; $50b7: $ac
    adc b                                         ; $50b8: $88
    rst $30                                       ; $50b9: $f7
    push af                                       ; $50ba: $f5
    nop                                           ; $50bb: $00
    ret nz                                        ; $50bc: $c0

    rst $38                                       ; $50bd: $ff
    ret nz                                        ; $50be: $c0

    rst $38                                       ; $50bf: $ff
    ret nz                                        ; $50c0: $c0

    rst $30                                       ; $50c1: $f7
    sbc b                                         ; $50c2: $98
    and b                                         ; $50c3: $a0
    ld d, b                                       ; $50c4: $50
    jr z, jr_02e_5078                             ; $50c5: $28 $b1

    pop af                                        ; $50c7: $f1
    ret nz                                        ; $50c8: $c0

    rst $38                                       ; $50c9: $ff
    ld a, $a2                                     ; $50ca: $3e $a2
    nop                                           ; $50cc: $00
    cp $e7                                        ; $50cd: $fe $e7
    ret nz                                        ; $50cf: $c0

    rst $38                                       ; $50d0: $ff
    adc $ae                                       ; $50d1: $ce $ae
    pop bc                                        ; $50d3: $c1
    jp hl                                         ; $50d4: $e9


    ret nz                                        ; $50d5: $c0

    rst $38                                       ; $50d6: $ff
    adc [hl]                                      ; $50d7: $8e
    xor [hl]                                      ; $50d8: $ae
    pop bc                                        ; $50d9: $c1
    ld [$ffc0], a                                 ; $50da: $ea $c0 $ff
    ld h, [hl]                                    ; $50dd: $66
    add h                                         ; $50de: $84
    add b                                         ; $50df: $80
    dec hl                                        ; $50e0: $2b
    dec hl                                        ; $50e1: $2b
    add b                                         ; $50e2: $80
    xor b                                         ; $50e3: $a8
    ld l, [hl]                                    ; $50e4: $6e
    and b                                         ; $50e5: $a0
    dec c                                         ; $50e6: $0d
    dec c                                         ; $50e7: $0d
    ret nz                                        ; $50e8: $c0

    rst $38                                       ; $50e9: $ff
    nop                                           ; $50ea: $00
    ret nz                                        ; $50eb: $c0

    db $ec                                        ; $50ec: $ec
    add b                                         ; $50ed: $80
    and a                                         ; $50ee: $a7
    ret nz                                        ; $50ef: $c0

    rst $38                                       ; $50f0: $ff
    jr nc, jr_02e_50f8                            ; $50f1: $30 $05

    dec c                                         ; $50f3: $0d
    and d                                         ; $50f4: $a2
    ld a, h                                       ; $50f5: $7c
    and l                                         ; $50f6: $a5
    inc b                                         ; $50f7: $04

jr_02e_50f8:
    add h                                         ; $50f8: $84
    ld l, [hl]                                    ; $50f9: $6e
    and h                                         ; $50fa: $a4
    nop                                           ; $50fb: $00
    ret nz                                        ; $50fc: $c0

    rst $38                                       ; $50fd: $ff
    ret nz                                        ; $50fe: $c0

    add sp, $04                                   ; $50ff: $e8 $04
    and b                                         ; $5101: $a0
    sub h                                         ; $5102: $94
    and a                                         ; $5103: $a7
    ld a, [c]                                     ; $5104: $f2
    db $e3                                        ; $5105: $e3
    cp $c1                                        ; $5106: $fe $c1
    xor [hl]                                      ; $5108: $ae
    add e                                         ; $5109: $83
    ret nz                                        ; $510a: $c0

jr_02e_510b:
    rst $38                                       ; $510b: $ff
    nop                                           ; $510c: $00
    inc b                                         ; $510d: $04
    xor l                                         ; $510e: $ad
    ld b, c                                       ; $510f: $41
    push bc                                       ; $5110: $c5
    ret nz                                        ; $5111: $c0

    rst $38                                       ; $5112: $ff
    ret nz                                        ; $5113: $c0

    db $ed                                        ; $5114: $ed
    pop de                                        ; $5115: $d1
    pop bc                                        ; $5116: $c1
    ret nz                                        ; $5117: $c0

    rst $38                                       ; $5118: $ff
    db $d3                                        ; $5119: $d3
    add hl, hl                                    ; $511a: $29
    jp nc, Jump_000_046b                          ; $511b: $d2 $6b $04

    jp z, Jump_000_04e2                           ; $511e: $ca $e2 $04

    db $e4                                        ; $5121: $e4
    ld a, [bc]                                    ; $5122: $0a
    adc c                                         ; $5123: $89
    jr nz, jr_02e_50a6                            ; $5124: $20 $80

    ld sp, hl                                     ; $5126: $f9
    add c                                         ; $5127: $81
    ld hl, $f8c0                                  ; $5128: $21 $c0 $f8
    ld d, a                                       ; $512b: $57
    add b                                         ; $512c: $80
    nop                                           ; $512d: $00
    ret nz                                        ; $512e: $c0

    db $fc                                        ; $512f: $fc
    nop                                           ; $5130: $00
    ld h, [hl]                                    ; $5131: $66
    ld c, $c3                                     ; $5132: $0e $c3
    add b                                         ; $5134: $80
    rst $00                                       ; $5135: $c7
    ld a, c                                       ; $5136: $79
    jp nz, Jump_02e_653c                          ; $5137: $c2 $3c $65

    nop                                           ; $513a: $00
    sub $c0                                       ; $513b: $d6 $c0
    di                                            ; $513d: $f3
    nop                                           ; $513e: $00
    or d                                          ; $513f: $b2
    ld [c], a                                     ; $5140: $e2
    dec sp                                        ; $5141: $3b
    ld b, d                                       ; $5142: $42
    inc a                                         ; $5143: $3c
    ld h, d                                       ; $5144: $62
    ld l, [hl]                                    ; $5145: $6e
    adc a                                         ; $5146: $8f
    ret nz                                        ; $5147: $c0

    ld [$6200], sp                                ; $5148: $08 $00 $62
    ld [de], a                                    ; $514b: $12
    ld h, d                                       ; $514c: $62
    add b                                         ; $514d: $80
    ld l, b                                       ; $514e: $68
    inc c                                         ; $514f: $0c
    db $ec                                        ; $5150: $ec
    push hl                                       ; $5151: $e5
    adc h                                         ; $5152: $8c
    nop                                           ; $5153: $00
    dec hl                                        ; $5154: $2b
    dec hl                                        ; $5155: $2b
    add b                                         ; $5156: $80
    cp c                                          ; $5157: $b9
    inc e                                         ; $5158: $1c
    and c                                         ; $5159: $a1
    inc c                                         ; $515a: $0c
    ld h, a                                       ; $515b: $67
    sub h                                         ; $515c: $94
    ld h, l                                       ; $515d: $65
    jr jr_02e_510b                                ; $515e: $18 $ab

    inc b                                         ; $5160: $04
    add d                                         ; $5161: $82
    ld h, d                                       ; $5162: $62
    ret nz                                        ; $5163: $c0

    cp $2e                                        ; $5164: $fe $2e
    ld l, $fc                                     ; $5166: $2e $fc
    db $eb                                        ; $5168: $eb
    cp a                                          ; $5169: $bf
    ld h, d                                       ; $516a: $62
    dec c                                         ; $516b: $0d
    and c                                         ; $516c: $a1
    nop                                           ; $516d: $00
    ret nz                                        ; $516e: $c0

    sbc a                                         ; $516f: $9f
    ld b, b                                       ; $5170: $40
    db $e3                                        ; $5171: $e3
    rst $38                                       ; $5172: $ff
    rst $38                                       ; $5173: $ff
    ret nz                                        ; $5174: $c0

    sub a                                         ; $5175: $97
    rst $38                                       ; $5176: $ff
    rst $38                                       ; $5177: $ff
    rst $38                                       ; $5178: $ff
    rst $38                                       ; $5179: $ff
    rst $38                                       ; $517a: $ff
    rst $38                                       ; $517b: $ff
    rst $38                                       ; $517c: $ff
    rst $38                                       ; $517d: $ff
    nop                                           ; $517e: $00
    rst $38                                       ; $517f: $ff
    rst $38                                       ; $5180: $ff
    rst $38                                       ; $5181: $ff
    rst $38                                       ; $5182: $ff
    rst $38                                       ; $5183: $ff
    rst $38                                       ; $5184: $ff
    rst $38                                       ; $5185: $ff
    rst $38                                       ; $5186: $ff
    rst $38                                       ; $5187: $ff
    rst $38                                       ; $5188: $ff
    rst $38                                       ; $5189: $ff
    rst $38                                       ; $518a: $ff
    rst $38                                       ; $518b: $ff
    rst $38                                       ; $518c: $ff
    rst $38                                       ; $518d: $ff
    rst $38                                       ; $518e: $ff
    nop                                           ; $518f: $00
    rst $38                                       ; $5190: $ff
    rst $38                                       ; $5191: $ff
    rst $38                                       ; $5192: $ff
    rst $38                                       ; $5193: $ff
    rst $38                                       ; $5194: $ff
    rst $38                                       ; $5195: $ff
    rst $38                                       ; $5196: $ff
    rst $38                                       ; $5197: $ff
    rst $38                                       ; $5198: $ff
    rst $38                                       ; $5199: $ff
    rst $38                                       ; $519a: $ff
    rst $38                                       ; $519b: $ff
    rst $38                                       ; $519c: $ff
    rst $38                                       ; $519d: $ff
    rst $38                                       ; $519e: $ff
    rst $38                                       ; $519f: $ff
    nop                                           ; $51a0: $00
    rst $38                                       ; $51a1: $ff
    rst $38                                       ; $51a2: $ff
    rst $38                                       ; $51a3: $ff
    rst $38                                       ; $51a4: $ff
    rst $38                                       ; $51a5: $ff
    rst $38                                       ; $51a6: $ff
    rst $38                                       ; $51a7: $ff
    rst $38                                       ; $51a8: $ff
    rst $38                                       ; $51a9: $ff
    rst $38                                       ; $51aa: $ff
    rst $38                                       ; $51ab: $ff
    rst $38                                       ; $51ac: $ff
    ld [$00e9], a                                 ; $51ad: $ea $e9 $00
    nop                                           ; $51b0: $00
    nop                                           ; $51b1: $00
    dec b                                         ; $51b2: $05
    rrca                                          ; $51b3: $0f
    rst $38                                       ; $51b4: $ff
    pop af                                        ; $51b5: $f1
    nop                                           ; $51b6: $00
    rst $38                                       ; $51b7: $ff
    rst $20                                       ; $51b8: $e7
    ldh [rIE], a                                  ; $51b9: $e0 $ff
    ldh [rIE], a                                  ; $51bb: $e0 $ff
    db $dd                                        ; $51bd: $dd
    ld sp, hl                                     ; $51be: $f9
    ld [c], a                                     ; $51bf: $e2
    db $f4                                        ; $51c0: $f4
    nop                                           ; $51c1: $00
    ldh [rIE], a                                  ; $51c2: $e0 $ff
    ldh [rIE], a                                  ; $51c4: $e0 $ff
    ldh [rIE], a                                  ; $51c6: $e0 $ff
    ld b, b                                       ; $51c8: $40
    rst $38                                       ; $51c9: $ff
    ldh [$ef], a                                  ; $51ca: $e0 $ef
    adc $e1                                       ; $51cc: $ce $e1
    nop                                           ; $51ce: $00
    or $b1                                        ; $51cf: $f6 $b1
    rst $20                                       ; $51d1: $e7
    nop                                           ; $51d2: $00
    and b                                         ; $51d3: $a0
    db $ec                                        ; $51d4: $ec
    sbc b                                         ; $51d5: $98
    db $e4                                        ; $51d6: $e4
    pop af                                        ; $51d7: $f1
    rst $20                                       ; $51d8: $e7
    add b                                         ; $51d9: $80

jr_02e_51da:
    rst $20                                       ; $51da: $e7
    db $fd                                        ; $51db: $fd
    ld [c], a                                     ; $51dc: $e2
    ldh [$ed], a                                  ; $51dd: $e0 $ed
    and b                                         ; $51df: $a0
    ret z                                         ; $51e0: $c8

    ld e, h                                       ; $51e1: $5c
    ldh [rP1], a                                  ; $51e2: $e0 $00
    pop de                                        ; $51e4: $d1
    db $ec                                        ; $51e5: $ec
    ldh [$eb], a                                  ; $51e6: $e0 $eb

jr_02e_51e8:
    ld [hl], d                                    ; $51e8: $72
    jp $e747                                      ; $51e9: $c3 $47 $e7


    ld hl, $80ea                                  ; $51ec: $21 $ea $80
    db $ec                                        ; $51ef: $ec
    jr nz, jr_02e_51e8                            ; $51f0: $20 $f6

    sbc b                                         ; $51f2: $98
    db $e3                                        ; $51f3: $e3
    nop                                           ; $51f4: $00
    ldh [$fa], a                                  ; $51f5: $e0 $fa
    ldh [$d8], a                                  ; $51f7: $e0 $d8
    sub c                                         ; $51f9: $91
    push bc                                       ; $51fa: $c5
    add hl, de                                    ; $51fb: $19
    and $e0                                       ; $51fc: $e6 $e0
    db $ed                                        ; $51fe: $ed
    sbc b                                         ; $51ff: $98
    jp $ea59                                      ; $5200: $c3 $59 $ea


    ret nz                                        ; $5203: $c0

    db $eb                                        ; $5204: $eb
    nop                                           ; $5205: $00
    jp nz, $e0cb                                  ; $5206: $c2 $cb $e0

    rst $38                                       ; $5209: $ff
    ldh [$c9], a                                  ; $520a: $e0 $c9
    ret nz                                        ; $520c: $c0

    add $05                                       ; $520d: $c6 $05
    db $e3                                        ; $520f: $e3
    ldh [$ee], a                                  ; $5210: $e0 $ee
    jr jr_02e_51da                                ; $5212: $18 $c6

    rst $30                                       ; $5214: $f7
    db $eb                                        ; $5215: $eb
    nop                                           ; $5216: $00
    nop                                           ; $5217: $00
    rst $18                                       ; $5218: $df
    rst $38                                       ; $5219: $ff
    rst $38                                       ; $521a: $ff
    rst $38                                       ; $521b: $ff
    rst $38                                       ; $521c: $ff
    rst $38                                       ; $521d: $ff
    rst $38                                       ; $521e: $ff
    rst $38                                       ; $521f: $ff
    rst $38                                       ; $5220: $ff
    rst $38                                       ; $5221: $ff
    rst $38                                       ; $5222: $ff
    rst $38                                       ; $5223: $ff
    rst $38                                       ; $5224: $ff
    rst $38                                       ; $5225: $ff

jr_02e_5226:
    push af                                       ; $5226: $f5
    nop                                           ; $5227: $00
    nop                                           ; $5228: $00
    nop                                           ; $5229: $00
    ld b, c                                       ; $522a: $41
    nop                                           ; $522b: $00
    rst $38                                       ; $522c: $ff
    rst $38                                       ; $522d: $ff
    rst $38                                       ; $522e: $ff
    rst $38                                       ; $522f: $ff
    rst $38                                       ; $5230: $ff
    rst $38                                       ; $5231: $ff
    rst $38                                       ; $5232: $ff

jr_02e_5233:
    rst $38                                       ; $5233: $ff
    db $eb                                        ; $5234: $eb
    ld [$dd51], a                                 ; $5235: $ea $51 $dd
    rst $38                                       ; $5238: $ff
    sub b                                         ; $5239: $90
    rst $38                                       ; $523a: $ff
    rst $38                                       ; $523b: $ff
    rst $38                                       ; $523c: $ff
    rst $38                                       ; $523d: $ff
    rst $38                                       ; $523e: $ff
    rst $38                                       ; $523f: $ff
    db $ed                                        ; $5240: $ed
    db $ec                                        ; $5241: $ec
    ld b, c                                       ; $5242: $41
    ldh [rIE], a                                  ; $5243: $e0 $ff
    cp e                                          ; $5245: $bb
    xor $21                                       ; $5246: $ee $21
    ld l, d                                       ; $5248: $6a
    xor c                                         ; $5249: $a9
    pop hl                                        ; $524a: $e1
    sub c                                         ; $524b: $91
    and h                                         ; $524c: $a4
    ld [c], a                                     ; $524d: $e2
    ld c, b                                       ; $524e: $48
    sbc [hl]                                      ; $524f: $9e
    push hl                                       ; $5250: $e5
    pop de                                        ; $5251: $d1
    ret c                                         ; $5252: $d8

    ldh [$ea], a                                  ; $5253: $e0 $ea
    rst $28                                       ; $5255: $ef
    pop bc                                        ; $5256: $c1
    nop                                           ; $5257: $00
    nop                                           ; $5258: $00
    sbc b                                         ; $5259: $98
    add e                                         ; $525a: $83
    push af                                       ; $525b: $f5
    jr z, jr_02e_525e                             ; $525c: $28 $00

jr_02e_525e:
    nop                                           ; $525e: $00
    db $ed                                        ; $525f: $ed
    ret z                                         ; $5260: $c8

    ld h, a                                       ; $5261: $67
    add sp, -$48                                  ; $5262: $e8 $b8
    or c                                          ; $5264: $b1
    ld e, d                                       ; $5265: $5a
    rst $38                                       ; $5266: $ff
    nop                                           ; $5267: $00
    nop                                           ; $5268: $00
    ld hl, sp-$4e                                 ; $5269: $f8 $b2
    db $dd                                        ; $526b: $dd
    db $fc                                        ; $526c: $fc
    pop af                                        ; $526d: $f1
    cp l                                          ; $526e: $bd
    rst $38                                       ; $526f: $ff
    rst $28                                       ; $5270: $ef
    xor $58                                       ; $5271: $ee $58
    ld e, b                                       ; $5273: $58
    call c, $81f6                                 ; $5274: $dc $f6 $81
    adc l                                         ; $5277: $8d
    adc b                                         ; $5278: $88
    pop bc                                        ; $5279: $c1
    db $e3                                        ; $527a: $e3
    ld l, b                                       ; $527b: $68
    ld h, c                                       ; $527c: $61
    cp c                                          ; $527d: $b9
    rst $38                                       ; $527e: $ff
    rst $38                                       ; $527f: $ff
    rst $38                                       ; $5280: $ff
    db $ed                                        ; $5281: $ed
    db $ec                                        ; $5282: $ec
    ld de, $ddda                                  ; $5283: $11 $da $dd
    ld [$e031], a                                 ; $5286: $ea $31 $e0
    ld a, [c]                                     ; $5289: $f2
    ld a, b                                       ; $528a: $78
    ld [hl], c                                    ; $528b: $71
    cp b                                          ; $528c: $b8
    ld [c], a                                     ; $528d: $e2
    db $10                                        ; $528e: $10
    db $10                                        ; $528f: $10
    ld a, [bc]                                    ; $5290: $0a
    ldh [$ef], a                                  ; $5291: $e0 $ef
    jr jr_02e_5233                                ; $5293: $18 $9e

    db $ec                                        ; $5295: $ec
    jr c, jr_02e_5226                             ; $5296: $38 $8e

    rst $38                                       ; $5298: $ff
    rst $38                                       ; $5299: $ff
    rst $38                                       ; $529a: $ff
    rst $38                                       ; $529b: $ff
    rst $38                                       ; $529c: $ff
    rst $38                                       ; $529d: $ff
    rst $38                                       ; $529e: $ff
    nop                                           ; $529f: $00
    rst $38                                       ; $52a0: $ff
    rst $38                                       ; $52a1: $ff
    rst $38                                       ; $52a2: $ff
    rst $38                                       ; $52a3: $ff
    rst $38                                       ; $52a4: $ff
    rst $38                                       ; $52a5: $ff
    rst $38                                       ; $52a6: $ff
    db $fd                                        ; $52a7: $fd
    nop                                           ; $52a8: $00
    nop                                           ; $52a9: $00
    nop                                           ; $52aa: $00
    cp $01                                        ; $52ab: $fe $01
    nop                                           ; $52ad: $00
    rst $38                                       ; $52ae: $ff
    rst $38                                       ; $52af: $ff
    rst $38                                       ; $52b0: $ff
    rst $38                                       ; $52b1: $ff
    rst $38                                       ; $52b2: $ff
    rst $38                                       ; $52b3: $ff
    rst $38                                       ; $52b4: $ff
    rst $38                                       ; $52b5: $ff
    rst $38                                       ; $52b6: $ff
    rst $38                                       ; $52b7: $ff
    rst $38                                       ; $52b8: $ff
    rst $38                                       ; $52b9: $ff
    rst $38                                       ; $52ba: $ff
    rst $38                                       ; $52bb: $ff
    nop                                           ; $52bc: $00
    rst $38                                       ; $52bd: $ff
    rst $38                                       ; $52be: $ff
    rst $38                                       ; $52bf: $ff
    rst $38                                       ; $52c0: $ff
    rst $38                                       ; $52c1: $ff
    rst $38                                       ; $52c2: $ff
    rst $38                                       ; $52c3: $ff
    rst $38                                       ; $52c4: $ff
    rst $38                                       ; $52c5: $ff
    rst $38                                       ; $52c6: $ff
    rst $38                                       ; $52c7: $ff
    rst $38                                       ; $52c8: $ff
    rst $38                                       ; $52c9: $ff
    rst $38                                       ; $52ca: $ff
    rst $38                                       ; $52cb: $ff
    rst $38                                       ; $52cc: $ff
    nop                                           ; $52cd: $00
    rst $38                                       ; $52ce: $ff
    rst $38                                       ; $52cf: $ff
    rst $38                                       ; $52d0: $ff
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
    rst $38                                       ; $52db: $ff
    rst $38                                       ; $52dc: $ff
    rst $38                                       ; $52dd: $ff
    nop                                           ; $52de: $00
    rst $38                                       ; $52df: $ff
    rst $38                                       ; $52e0: $ff
    rst $38                                       ; $52e1: $ff
    rst $38                                       ; $52e2: $ff
    rst $38                                       ; $52e3: $ff
    rst $38                                       ; $52e4: $ff
    rst $38                                       ; $52e5: $ff
    rst $38                                       ; $52e6: $ff
    rst $38                                       ; $52e7: $ff
    rst $38                                       ; $52e8: $ff
    rst $38                                       ; $52e9: $ff
    rst $38                                       ; $52ea: $ff
    rst $38                                       ; $52eb: $ff
    rst $38                                       ; $52ec: $ff
    rst $38                                       ; $52ed: $ff
    rst $38                                       ; $52ee: $ff
    nop                                           ; $52ef: $00
    rst $38                                       ; $52f0: $ff
    rst $38                                       ; $52f1: $ff
    rst $38                                       ; $52f2: $ff
    rst $38                                       ; $52f3: $ff
    rst $38                                       ; $52f4: $ff
    rst $38                                       ; $52f5: $ff
    rst $38                                       ; $52f6: $ff
    rst $38                                       ; $52f7: $ff
    rst $38                                       ; $52f8: $ff
    rst $38                                       ; $52f9: $ff
    rst $38                                       ; $52fa: $ff
    rst $38                                       ; $52fb: $ff
    rst $38                                       ; $52fc: $ff
    rst $38                                       ; $52fd: $ff
    rst $38                                       ; $52fe: $ff
    rst $38                                       ; $52ff: $ff
    nop                                           ; $5300: $00
    rst $38                                       ; $5301: $ff
    rst $38                                       ; $5302: $ff
    rst $38                                       ; $5303: $ff
    rst $38                                       ; $5304: $ff
    rst $38                                       ; $5305: $ff
    rst $38                                       ; $5306: $ff
    rst $38                                       ; $5307: $ff
    rst $38                                       ; $5308: $ff
    rst $38                                       ; $5309: $ff
    rst $38                                       ; $530a: $ff
    rst $38                                       ; $530b: $ff
    rst $38                                       ; $530c: $ff
    rst $38                                       ; $530d: $ff
    rst $38                                       ; $530e: $ff
    rst $38                                       ; $530f: $ff
    rst $38                                       ; $5310: $ff
    nop                                           ; $5311: $00
    rst $38                                       ; $5312: $ff
    rst $38                                       ; $5313: $ff
    rst $38                                       ; $5314: $ff
    rst $38                                       ; $5315: $ff
    rst $38                                       ; $5316: $ff
    rst $38                                       ; $5317: $ff
    rst $38                                       ; $5318: $ff
    rst $38                                       ; $5319: $ff
    rst $38                                       ; $531a: $ff
    rst $38                                       ; $531b: $ff
    rst $38                                       ; $531c: $ff
    rst $38                                       ; $531d: $ff
    rst $38                                       ; $531e: $ff
    rst $38                                       ; $531f: $ff
    rst $38                                       ; $5320: $ff
    rst $38                                       ; $5321: $ff
    nop                                           ; $5322: $00
    rst $38                                       ; $5323: $ff
    rst $38                                       ; $5324: $ff
    rst $38                                       ; $5325: $ff
    rst $38                                       ; $5326: $ff
    rst $38                                       ; $5327: $ff
    rst $38                                       ; $5328: $ff
    rst $38                                       ; $5329: $ff
    rst $38                                       ; $532a: $ff
    rst $38                                       ; $532b: $ff
    rst $38                                       ; $532c: $ff
    rst $38                                       ; $532d: $ff
    db $e4                                        ; $532e: $e4
    nop                                           ; $532f: $00
    nop                                           ; $5330: $00
    nop                                           ; $5331: $00
    nop                                           ; $5332: $00
    nop                                           ; $5333: $00
    nop                                           ; $5334: $00
    nop                                           ; $5335: $00
    ccf                                           ; $5336: $3f
    ccf                                           ; $5337: $3f
    nop                                           ; $5338: $00
    nop                                           ; $5339: $00
    nop                                           ; $533a: $00
    jr nz, jr_02e_535d                            ; $533b: $20 $20

    ld d, l                                       ; $533d: $55
    and b                                         ; $533e: $a0
    ld a, [hl]                                    ; $533f: $7e
    rst $38                                       ; $5340: $ff
    ld a, a                                       ; $5341: $7f
    ld [$0825], sp                                ; $5342: $08 $25 $08
    dec h                                         ; $5345: $25
    ld [$0825], sp                                ; $5346: $08 $25 $08
    dec h                                         ; $5349: $25
    or h                                          ; $534a: $b4
    ld d, l                                       ; $534b: $55
    ccf                                           ; $534c: $3f
    ld a, a                                       ; $534d: $7f
    push hl                                       ; $534e: $e5
    cpl                                           ; $534f: $2f
    add c                                         ; $5350: $81
    ld h, $ff                                     ; $5351: $26 $ff
    ld a, a                                       ; $5353: $7f
    db $ec                                        ; $5354: $ec
    dec hl                                        ; $5355: $2b
    rst $20                                       ; $5356: $e7
    dec hl                                        ; $5357: $2b
    add c                                         ; $5358: $81
    ld h, $5a                                     ; $5359: $26 $5a
    ld a, l                                       ; $535b: $7d
    cp a                                          ; $535c: $bf

jr_02e_535d:
    ld a, [hl]                                    ; $535d: $7e
    ld [hl], h                                    ; $535e: $74
    db $10                                        ; $535f: $10
    add c                                         ; $5360: $81
    ld h, $ff                                     ; $5361: $26 $ff
    ld a, a                                       ; $5363: $7f
    push hl                                       ; $5364: $e5
    cpl                                           ; $5365: $2f
    add c                                         ; $5366: $81
    ld h, $ca                                     ; $5367: $26 $ca
    nop                                           ; $5369: $00
    rst $38                                       ; $536a: $ff
    ld a, a                                       ; $536b: $7f
    ccf                                           ; $536c: $3f
    ld a, [hl]                                    ; $536d: $7e
    scf                                           ; $536e: $37
    ld [hl], c                                    ; $536f: $71
    jp z, Jump_000_0800                           ; $5370: $ca $00 $08

    dec h                                         ; $5373: $25
    ld [$0825], sp                                ; $5374: $08 $25 $08
    dec h                                         ; $5377: $25
    ld [$d525], sp                                ; $5378: $08 $25 $d5

jr_02e_537b:
    nop                                           ; $537b: $00
    rst $38                                       ; $537c: $ff
    ldh [rTIMA], a                                ; $537d: $e0 $05

Jump_02e_537f:
    ei                                            ; $537f: $fb
    ldh [$0b], a                                  ; $5380: $e0 $0b
    rst $30                                       ; $5382: $f7
    pop hl                                        ; $5383: $e1
    nop                                           ; $5384: $00
    ld [bc], a                                    ; $5385: $02
    db $eb                                        ; $5386: $eb
    nop                                           ; $5387: $00
    jr z, @-$0f                                   ; $5388: $28 $ef

    ldh [$90], a                                  ; $538a: $e0 $90
    db $eb                                        ; $538c: $eb
    ldh [$f5], a                                  ; $538d: $e0 $f5
    nop                                           ; $538f: $00
    ret z                                         ; $5390: $c8

    cp $e5                                        ; $5391: $fe $e5
    ldh [$80], a                                  ; $5393: $e0 $80
    nop                                           ; $5395: $00
    db $ec                                        ; $5396: $ec
    rst $38                                       ; $5397: $ff
    ld hl, sp-$01                                 ; $5398: $f8 $ff
    ldh [rIE], a                                  ; $539a: $e0 $ff
    cp $42                                        ; $539c: $fe $42
    ld hl, sp-$38                                 ; $539e: $f8 $c8
    ldh a, [$80]                                  ; $53a0: $f0 $80
    ldh [rNR10], a                                ; $53a2: $e0 $10
    rst $28                                       ; $53a4: $ef
    ldh [rP1], a                                  ; $53a5: $e0 $00
    ret nz                                        ; $53a7: $c0

    rst $38                                       ; $53a8: $ff
    rst $38                                       ; $53a9: $ff
    ld [c], a                                     ; $53aa: $e2
    rst $30                                       ; $53ab: $f7
    rst $38                                       ; $53ac: $ff
    cp h                                          ; $53ad: $bc
    ld a, a                                       ; $53ae: $7f
    rst $38                                       ; $53af: $ff
    add sp, -$01                                  ; $53b0: $e8 $ff
    add c                                         ; $53b2: $81
    cp $08                                        ; $53b3: $fe $08
    ldh a, [$f8]                                  ; $53b5: $f0 $f8
    push hl                                       ; $53b7: $e5
    ei                                            ; $53b8: $fb
    jr nz, jr_02e_537b                            ; $53b9: $20 $c0

    cp a                                          ; $53bb: $bf
    ld [c], a                                     ; $53bc: $e2
    nop                                           ; $53bd: $00
    ld a, a                                       ; $53be: $7f
    rst $38                                       ; $53bf: $ff
    cpl                                           ; $53c0: $2f
    rst $38                                       ; $53c1: $ff
    rst $38                                       ; $53c2: $ff
    ccf                                           ; $53c3: $3f
    rst $38                                       ; $53c4: $ff
    rra                                           ; $53c5: $1f
    rst $38                                       ; $53c6: $ff
    or a                                          ; $53c7: $b7
    ld a, a                                       ; $53c8: $7f
    rra                                           ; $53c9: $1f
    ld a, a                                       ; $53ca: $7f
    rst $38                                       ; $53cb: $ff
    rrca                                          ; $53cc: $0f
    ld a, a                                       ; $53cd: $7f
    ld c, a                                       ; $53ce: $4f
    ccf                                           ; $53cf: $3f
    rlca                                          ; $53d0: $07
    rra                                           ; $53d1: $1f
    ld [bc], a                                    ; $53d2: $02
    rra                                           ; $53d3: $1f
    rst $38                                       ; $53d4: $ff
    inc de                                        ; $53d5: $13
    rrca                                          ; $53d6: $0f
    ld bc, $0b0f                                  ; $53d7: $01 $0f $0b
    rlca                                          ; $53da: $07
    ld bc, $ff07                                  ; $53db: $01 $07 $ff
    nop                                           ; $53de: $00
    rlca                                          ; $53df: $07
    inc b                                         ; $53e0: $04
    inc bc                                        ; $53e1: $03
    ld e, h                                       ; $53e2: $5c
    rst $38                                       ; $53e3: $ff
    nop                                           ; $53e4: $00
    rst $38                                       ; $53e5: $ff
    rst $20                                       ; $53e6: $e7
    add c                                         ; $53e7: $81
    inc a                                         ; $53e8: $3c
    db $10                                        ; $53e9: $10
    db $d3                                        ; $53ea: $d3
    db $e3                                        ; $53eb: $e3
    add e                                         ; $53ec: $83
    ldh [rNR41], a                                ; $53ed: $e0 $20
    ret nz                                        ; $53ef: $c0

    add b                                         ; $53f0: $80
    cp a                                          ; $53f1: $bf
    ret nz                                        ; $53f2: $c0

    nop                                           ; $53f3: $00
    ldh [$90], a                                  ; $53f4: $e0 $90
    ldh [$80], a                                  ; $53f6: $e0 $80
    cp $e0                                        ; $53f8: $fe $e0
    nop                                           ; $53fa: $00
    ei                                            ; $53fb: $fb
    ret nz                                        ; $53fc: $c0

    jr nz, @-$5e                                  ; $53fd: $20 $a0

    ldh [$7d], a                                  ; $53ff: $e0 $7d
    rst $38                                       ; $5401: $ff
    rst $28                                       ; $5402: $ef
    rst $38                                       ; $5403: $ff
    ld a, [hl-]                                   ; $5404: $3a
    ld a, [$e2da]                                 ; $5405: $fa $da $e2
    ld [$e063], sp                                ; $5408: $08 $63 $e0
    and h                                         ; $540b: $a4
    ld hl, sp-$20                                 ; $540c: $f8 $e0
    ld hl, sp-$10                                 ; $540e: $f8 $f0
    rst $38                                       ; $5410: $ff
    db $fc                                        ; $5411: $fc
    ret nc                                        ; $5412: $d0

    db $fc                                        ; $5413: $fc
    ld a, [c]                                     ; $5414: $f2
    db $fc                                        ; $5415: $fc
    ldh [$fc], a                                  ; $5416: $e0 $fc
    or b                                          ; $5418: $b0
    rst $30                                       ; $5419: $f7
    ld hl, sp-$1c                                 ; $541a: $f8 $e4
    ld hl, sp-$80                                 ; $541c: $f8 $80
    push hl                                       ; $541e: $e5
    cp [hl]                                       ; $541f: $be
    rst $38                                       ; $5420: $ff
    db $e3                                        ; $5421: $e3
    rst $38                                       ; $5422: $ff
    rst $38                                       ; $5423: $ff
    ld b, b                                       ; $5424: $40
    rst $38                                       ; $5425: $ff
    nop                                           ; $5426: $00
    rst $20                                       ; $5427: $e7
    db $fc                                        ; $5428: $fc
    rst $38                                       ; $5429: $ff
    or $ff                                        ; $542a: $f6 $ff
    ld a, a                                       ; $542c: $7f
    db $fc                                        ; $542d: $fc
    rst $38                                       ; $542e: $ff
    ld hl, sp-$02                                 ; $542f: $f8 $fe
    add sp, -$02                                  ; $5431: $e8 $fe
    ld hl, sp-$08                                 ; $5433: $f8 $f8
    ldh [$0b], a                                  ; $5435: $e0 $0b
    db $f4                                        ; $5437: $f4
    rst $38                                       ; $5438: $ff
    ld a, b                                       ; $5439: $78
    ldh [$80], a                                  ; $543a: $e0 $80
    and e                                         ; $543c: $a3
    and $23                                       ; $543d: $e6 $23
    pop hl                                        ; $543f: $e1
    ldh a, [$e0]                                  ; $5440: $f0 $e0
    rst $28                                       ; $5442: $ef
    ld [$c0e3], a                                 ; $5443: $ea $e3 $c0
    ld b, b                                       ; $5446: $40
    ldh [$ea], a                                  ; $5447: $e0 $ea
    ret nc                                        ; $5449: $d0

    pop hl                                        ; $544a: $e1
    rst $08                                       ; $544b: $cf
    jp hl                                         ; $544c: $e9


    ld [bc], a                                    ; $544d: $02
    add c                                         ; $544e: $81
    and b                                         ; $544f: $a0
    rst $38                                       ; $5450: $ff
    pop bc                                        ; $5451: $c1
    add b                                         ; $5452: $80
    pop bc                                        ; $5453: $c1
    add l                                         ; $5454: $85
    jp $c3a1                                      ; $5455: $c3 $a1 $c3


    nop                                           ; $5458: $00
    ld a, a                                       ; $5459: $7f
    add e                                         ; $545a: $83
    dec b                                         ; $545b: $05
    add e                                         ; $545c: $83
    ld b, b                                       ; $545d: $40
    add c                                         ; $545e: $81
    ld b, c                                       ; $545f: $41
    add b                                         ; $5460: $80
    ret nz                                        ; $5461: $c0

    ldh [rIE], a                                  ; $5462: $e0 $ff
    ret nz                                        ; $5464: $c0

    and b                                         ; $5465: $a0
    ret nz                                        ; $5466: $c0

    ret nz                                        ; $5467: $c0

    ldh [rBCPS], a                                ; $5468: $e0 $68
    ldh a, [$f1]                                  ; $546a: $f0 $f1
    rst $38                                       ; $546c: $ff
    db $fc                                        ; $546d: $fc
    call c, Call_000_1eff                         ; $546e: $dc $ff $1e
    rst $38                                       ; $5471: $ff
    add b                                         ; $5472: $80
    ld e, $12                                     ; $5473: $1e $12
    ld a, [hl]                                    ; $5475: $7e
    call nc, Call_02e_48c2                        ; $5476: $d4 $c2 $48
    nop                                           ; $5479: $00
    ld bc, $5878                                  ; $547a: $01 $78 $58
    rst $38                                       ; $547d: $ff
    or b                                          ; $547e: $b0
    jp hl                                         ; $547f: $e9


    rst $38                                       ; $5480: $ff
    ld [bc], a                                    ; $5481: $02
    ld bc, $0300                                  ; $5482: $01 $00 $03
    nop                                           ; $5485: $00
    nop                                           ; $5486: $00
    ld b, b                                       ; $5487: $40
    ld b, b                                       ; $5488: $40
    ld a, a                                       ; $5489: $7f
    nop                                           ; $548a: $00
    jr nz, jr_02e_548d                            ; $548b: $20 $00

jr_02e_548d:
    db $10                                        ; $548d: $10
    ld [$0400], sp                                ; $548e: $08 $00 $04
    or d                                          ; $5491: $b2
    ret nz                                        ; $5492: $c0

    ret nz                                        ; $5493: $c0

    and d                                         ; $5494: $a2
    pop bc                                        ; $5495: $c1
    ldh a, [rIE]                                  ; $5496: $f0 $ff
    ldh a, [rIE]                                  ; $5498: $f0 $ff
    ldh a, [rIE]                                  ; $549a: $f0 $ff
    ldh a, [rIE]                                  ; $549c: $f0 $ff
    ldh a, [$f3]                                  ; $549e: $f0 $f3
    jp $e33c                                      ; $54a0: $c3 $3c $e3


    jp $fd3c                                      ; $54a3: $c3 $3c $fd


    ldh [$fe], a                                  ; $54a6: $e0 $fe
    ld [c], a                                     ; $54a8: $e2
    db $f4                                        ; $54a9: $f4
    pop hl                                        ; $54aa: $e1
    dec de                                        ; $54ab: $1b
    rst $20                                       ; $54ac: $e7
    cpl                                           ; $54ad: $2f
    rst $38                                       ; $54ae: $ff
    call c, $f11e                                 ; $54af: $dc $1e $f1
    inc a                                         ; $54b2: $3c
    db $e3                                        ; $54b3: $e3
    ld a, h                                       ; $54b4: $7c
    jp Jump_02e_7f7c                              ; $54b5: $c3 $7c $7f


    jp $9ce3                                      ; $54b8: $c3 $e3 $9c


    jp Jump_000_18bc                              ; $54bb: $c3 $bc $18


    rst $20                                       ; $54be: $e7
    ld [c], a                                     ; $54bf: $e2
    pop hl                                        ; $54c0: $e1
    rst $38                                       ; $54c1: $ff
    ld a, [de]                                    ; $54c2: $1a
    push hl                                       ; $54c3: $e5
    ld [de], a                                    ; $54c4: $12
    rst $28                                       ; $54c5: $ef
    ld e, a                                       ; $54c6: $5f
    cp b                                          ; $54c7: $b8
    ld a, a                                       ; $54c8: $7f
    ldh [rIE], a                                  ; $54c9: $e0 $ff
    di                                            ; $54cb: $f3
    adc h                                         ; $54cc: $8c
    inc de                                        ; $54cd: $13
    rst $28                                       ; $54ce: $ef
    rra                                           ; $54cf: $1f
    ld hl, sp-$04                                 ; $54d0: $f8 $fc
    ld h, e                                       ; $54d2: $63
    cp a                                          ; $54d3: $bf
    db $fc                                        ; $54d4: $fc
    add e                                         ; $54d5: $83
    db $fc                                        ; $54d6: $fc
    inc bc                                        ; $54d7: $03
    cp h                                          ; $54d8: $bc
    ld b, e                                       ; $54d9: $43
    call nz, $98e1                                ; $54da: $c4 $e1 $98
    rst $38                                       ; $54dd: $ff
    rst $20                                       ; $54de: $e7
    db $fc                                        ; $54df: $fc
    ld b, e                                       ; $54e0: $43
    call c, $f863                                 ; $54e1: $dc $63 $f8
    daa                                           ; $54e4: $27
    ld l, b                                       ; $54e5: $68
    rst $38                                       ; $54e6: $ff
    or a                                          ; $54e7: $b7
    ld l, h                                       ; $54e8: $6c
    sub e                                         ; $54e9: $93
    db $fc                                        ; $54ea: $fc
    inc de                                        ; $54eb: $13
    add sp, $17                                   ; $54ec: $e8 $17
    ld hl, sp-$01                                 ; $54ee: $f8 $ff
    rrca                                          ; $54f0: $0f
    sbc $25                                       ; $54f1: $de $25
    inc a                                         ; $54f3: $3c
    rst $00                                       ; $54f4: $c7
    ld a, $c3                                     ; $54f5: $3e $c3
    ccf                                           ; $54f7: $3f
    rst $38                                       ; $54f8: $ff
    jp nz, $c13e                                  ; $54f9: $c2 $3e $c1

    jp $c33d                                      ; $54fc: $c3 $3d $c3


    dec a                                         ; $54ff: $3d
    cp e                                          ; $5500: $bb
    rst $30                                       ; $5501: $f7
    rst $10                                       ; $5502: $d7
    rst $38                                       ; $5503: $ff
    nop                                           ; $5504: $00
    and b                                         ; $5505: $a0
    jp hl                                         ; $5506: $e9


    jp $c3bc                                      ; $5507: $c3 $bc $c3


    cp h                                          ; $550a: $bc
    ret                                           ; $550b: $c9


    ld a, h                                       ; $550c: $7c
    jp nz, $bee0                                  ; $550d: $c2 $e0 $be

    pop hl                                        ; $5510: $e1
    ld b, e                                       ; $5511: $43
    db $f4                                        ; $5512: $f4
    ldh [$a0], a                                  ; $5513: $e0 $a0
    pop hl                                        ; $5515: $e1
    nop                                           ; $5516: $00
    rst $38                                       ; $5517: $ff
    cp a                                          ; $5518: $bf
    db $dd                                        ; $5519: $dd
    db $eb                                        ; $551a: $eb
    rst $38                                       ; $551b: $ff
    nop                                           ; $551c: $00
    ld a, [hl]                                    ; $551d: $7e
    add c                                         ; $551e: $81
    add b                                         ; $551f: $80
    ld [c], a                                     ; $5520: $e2
    db $f4                                        ; $5521: $f4
    rst $38                                       ; $5522: $ff
    rrca                                          ; $5523: $0f
    ldh a, [rNR32]                                ; $5524: $f0 $1c
    db $e3                                        ; $5526: $e3
    inc e                                         ; $5527: $1c
    di                                            ; $5528: $f3
    inc e                                         ; $5529: $1c
    db $e3                                        ; $552a: $e3
    rst $38                                       ; $552b: $ff
    inc c                                         ; $552c: $0c
    di                                            ; $552d: $f3
    ccf                                           ; $552e: $3f
    ret nc                                        ; $552f: $d0

    dec de                                        ; $5530: $1b
    db $f4                                        ; $5531: $f4
    ld d, a                                       ; $5532: $57
    rst $38                                       ; $5533: $ff
    ld e, a                                       ; $5534: $5f
    xor a                                         ; $5535: $af
    db $fc                                        ; $5536: $fc
    ld a, [hl]                                    ; $5537: $7e
    pop af                                        ; $5538: $f1
    cp h                                          ; $5539: $bc
    ld [hl], b                                    ; $553a: $70
    ldh [$fc], a                                  ; $553b: $e0 $fc
    ld [hl], b                                    ; $553d: $70
    ld [c], a                                     ; $553e: $e2
    rst $38                                       ; $553f: $ff
    ei                                            ; $5540: $fb
    rst $38                                       ; $5541: $ff
    sbc $ff                                       ; $5542: $de $ff
    push af                                       ; $5544: $f5
    rst $38                                       ; $5545: $ff
    xor d                                         ; $5546: $aa
    rst $38                                       ; $5547: $ff
    or a                                          ; $5548: $b7
    ld d, a                                       ; $5549: $57
    rst $38                                       ; $554a: $ff
    cp a                                          ; $554b: $bf
    ld h, a                                       ; $554c: $67
    and b                                         ; $554d: $a0
    di                                            ; $554e: $f3
    adc h                                         ; $554f: $8c
    ld hl, sp-$1f                                 ; $5550: $f8 $e1
    ld a, h                                       ; $5552: $7c
    db $fd                                        ; $5553: $fd
    db $e3                                        ; $5554: $e3

Jump_02e_5555:
    ld [hl], b                                    ; $5555: $70
    rst $20                                       ; $5556: $e7
    rst $28                                       ; $5557: $ef
    rst $38                                       ; $5558: $ff
    rst $10                                       ; $5559: $d7
    ld a, a                                       ; $555a: $7f
    db $ed                                        ; $555b: $ed
    ld a, a                                       ; $555c: $7f
    rst $38                                       ; $555d: $ff
    rst $30                                       ; $555e: $f7
    ccf                                           ; $555f: $3f
    ld l, e                                       ; $5560: $6b
    cp a                                          ; $5561: $bf
    halt                                          ; $5562: $76
    sbc a                                         ; $5563: $9f
    ei                                            ; $5564: $fb
    rra                                           ; $5565: $1f
    rst $38                                       ; $5566: $ff
    push af                                       ; $5567: $f5
    rra                                           ; $5568: $1f
    ld a, [$dd0f]                                 ; $5569: $fa $0f $dd
    daa                                           ; $556c: $27
    ld a, $c7                                     ; $556d: $3e $c7
    di                                            ; $556f: $f3
    ccf                                           ; $5570: $3f
    jp $e06e                                      ; $5571: $c3 $6e $e0


    ld [hl], b                                    ; $5574: $70
    ld [c], a                                     ; $5575: $e2
    db $ed                                        ; $5576: $ed
    rst $38                                       ; $5577: $ff
    db $d3                                        ; $5578: $d3
    inc a                                         ; $5579: $3c
    dec sp                                        ; $557a: $3b
    ld a, [hl]                                    ; $557b: $7e
    add c                                         ; $557c: $81
    ld [hl], b                                    ; $557d: $70
    jp hl                                         ; $557e: $e9


    db $e3                                        ; $557f: $e3
    sbc h                                         ; $5580: $9c
    cp h                                          ; $5581: $bc
    inc d                                         ; $5582: $14
    ldh [rBCPD], a                                ; $5583: $e0 $69
    ldh [$eb], a                                  ; $5585: $e0 $eb
    jp $1063                                      ; $5587: $c3 $63 $10


    ldh [$57], a                                  ; $558a: $e0 $57
    and h                                         ; $558c: $a4
    ldh [$7d], a                                  ; $558d: $e0 $7d
    rst $38                                       ; $558f: $ff
    db $d3                                        ; $5590: $d3
    ld sp, hl                                     ; $5591: $f9
    rst $28                                       ; $5592: $ef
    ld c, d                                       ; $5593: $4a
    pop hl                                        ; $5594: $e1
    db $e4                                        ; $5595: $e4
    pop bc                                        ; $5596: $c1
    cp e                                          ; $5597: $bb
    db $f4                                        ; $5598: $f4
    ld e, e                                       ; $5599: $5b
    db $f4                                        ; $559a: $f4
    xor h                                         ; $559b: $ac
    rst $38                                       ; $559c: $ff
    di                                            ; $559d: $f3
    ld l, h                                       ; $559e: $6c
    di                                            ; $559f: $f3
    cp h                                          ; $55a0: $bc
    db $e3                                        ; $55a1: $e3
    ld l, h                                       ; $55a2: $6c
    di                                            ; $55a3: $f3
    cp e                                          ; $55a4: $bb
    rst $38                                       ; $55a5: $ff
    db $f4                                        ; $55a6: $f4
    db $db                                        ; $55a7: $db
    db $f4                                        ; $55a8: $f4
    cp l                                          ; $55a9: $bd
    jp $ffe7                                      ; $55aa: $c3 $e7 $ff


    cp d                                          ; $55ad: $ba
    cp a                                          ; $55ae: $bf
    rst $38                                       ; $55af: $ff
    ld d, l                                       ; $55b0: $55
    rst $38                                       ; $55b1: $ff
    xor e                                         ; $55b2: $ab
    rst $38                                       ; $55b3: $ff
    cp $58                                        ; $55b4: $fe $58
    and b                                         ; $55b6: $a0
    rst $38                                       ; $55b7: $ff
    rst $28                                       ; $55b8: $ef
    rst $38                                       ; $55b9: $ff
    db $db                                        ; $55ba: $db
    rst $38                                       ; $55bb: $ff
    ld l, a                                       ; $55bc: $6f
    adc [hl]                                      ; $55bd: $8e
    ldh [$af], a                                  ; $55be: $e0 $af
    ld a, a                                       ; $55c0: $7f
    or l                                          ; $55c1: $b5
    rst $08                                       ; $55c2: $cf
    ld a, a                                       ; $55c3: $7f
    rst $28                                       ; $55c4: $ef
    ld a, a                                       ; $55c5: $7f
    ld d, a                                       ; $55c6: $57
    ld b, [hl]                                    ; $55c7: $46
    and b                                         ; $55c8: $a0
    ret nc                                        ; $55c9: $d0

    jp $e718                                      ; $55ca: $c3 $18 $e7


    cp $f8                                        ; $55cd: $fe $f8
    push hl                                       ; $55cf: $e5
    ld d, a                                       ; $55d0: $57
    rst $38                                       ; $55d1: $ff
    xor h                                         ; $55d2: $ac
    rst $38                                       ; $55d3: $ff
    ld [hl], h                                    ; $55d4: $74
    ei                                            ; $55d5: $fb
    cp b                                          ; $55d6: $b8
    ld l, a                                       ; $55d7: $6f
    rst $20                                       ; $55d8: $e7
    ld e, b                                       ; $55d9: $58
    rst $20                                       ; $55da: $e7
    db $fc                                        ; $55db: $fc
    dec b                                         ; $55dc: $05
    ldh [$98], a                                  ; $55dd: $e0 $98
    rst $20                                       ; $55df: $e7
    ld b, b                                       ; $55e0: $40
    rst $20                                       ; $55e1: $e7
    rst $18                                       ; $55e2: $df
    cp d                                          ; $55e3: $ba
    rst $38                                       ; $55e4: $ff
    db $ec                                        ; $55e5: $ec
    di                                            ; $55e6: $f3
    sbc b                                         ; $55e7: $98
    ldh [$e0], a                                  ; $55e8: $e0 $e0
    cp d                                          ; $55ea: $ba
    rst $38                                       ; $55eb: $ff
    jp hl                                         ; $55ec: $e9


    ld l, h                                       ; $55ed: $6c
    ld hl, sp-$20                                 ; $55ee: $f8 $e0
    ret z                                         ; $55f0: $c8

    push hl                                       ; $55f1: $e5
    rst $28                                       ; $55f2: $ef
    ld h, $e0                                     ; $55f3: $26 $e0
    ld l, l                                       ; $55f5: $6d
    rst $38                                       ; $55f6: $ff
    scf                                           ; $55f7: $37
    rst $38                                       ; $55f8: $ff
    rst $38                                       ; $55f9: $ff
    dec hl                                        ; $55fa: $2b
    rst $38                                       ; $55fb: $ff
    ld d, $ff                                     ; $55fc: $16 $ff
    dec sp                                        ; $55fe: $3b
    rst $38                                       ; $55ff: $ff
    dec d                                         ; $5600: $15
    rst $38                                       ; $5601: $ff
    rst $38                                       ; $5602: $ff
    ld a, [de]                                    ; $5603: $1a
    rst $28                                       ; $5604: $ef
    dec [hl]                                      ; $5605: $35
    rst $08                                       ; $5606: $cf
    ld a, $c7                                     ; $5607: $3e $c7
    dec de                                        ; $5609: $1b
    rst $38                                       ; $560a: $ff
    rst $20                                       ; $560b: $e7
    ld a, [de]                                    ; $560c: $1a
    rst $20                                       ; $560d: $e7
    dec a                                         ; $560e: $3d
    jp $c33f                                      ; $560f: $c3 $3f $c3


    add hl, de                                    ; $5612: $19
    db $db                                        ; $5613: $db
    rst $20                                       ; $5614: $e7
    rst $10                                       ; $5615: $d7
    db $e4                                        ; $5616: $e4
    add b                                         ; $5617: $80
    inc l                                         ; $5618: $2c
    db $d3                                        ; $5619: $d3
    and b                                         ; $561a: $a0
    rst $20                                       ; $561b: $e7
    sbc b                                         ; $561c: $98
    rst $20                                       ; $561d: $e7
    adc d                                         ; $561e: $8a
    ld b, d                                       ; $561f: $42
    pop hl                                        ; $5620: $e1
    ret c                                         ; $5621: $d8

    and b                                         ; $5622: $a0
    ldh [$bc], a                                  ; $5623: $e0 $bc
    sbc $c0                                       ; $5625: $de $c0
    or b                                          ; $5627: $b0
    pop hl                                        ; $5628: $e1
    ld b, b                                       ; $5629: $40
    pop hl                                        ; $562a: $e1
    set 7, [hl]                                   ; $562b: $cb $fe
    ld a, b                                       ; $562d: $78
    and $b0                                       ; $562e: $e6 $b0
    rst $38                                       ; $5630: $ff
    ld d, h                                       ; $5631: $54
    ei                                            ; $5632: $fb
    and h                                         ; $5633: $a4
    ei                                            ; $5634: $fb
    ld a, b                                       ; $5635: $78
    rst $38                                       ; $5636: $ff
    rst $30                                       ; $5637: $f7
    xor b                                         ; $5638: $a8
    rst $30                                       ; $5639: $f7
    ld h, h                                       ; $563a: $64
    ei                                            ; $563b: $fb
    or h                                          ; $563c: $b4
    ei                                            ; $563d: $fb
    ret nc                                        ; $563e: $d0

    rst $38                                       ; $563f: $ff
    rst $38                                       ; $5640: $ff
    pop bc                                        ; $5641: $c1
    rst $38                                       ; $5642: $ff
    or a                                          ; $5643: $b7
    rst $38                                       ; $5644: $ff
    ld e, l                                       ; $5645: $5d
    rst $38                                       ; $5646: $ff
    ld [$3e54], a                                 ; $5647: $ea $54 $3e
    ldh [$3a], a                                  ; $564a: $e0 $3a
    add c                                         ; $564c: $81
    rst $38                                       ; $564d: $ff
    sub h                                         ; $564e: $94
    add b                                         ; $564f: $80
    ld d, a                                       ; $5650: $57
    ld a, $e0                                     ; $5651: $3e $e0
    dec [hl]                                      ; $5653: $35
    ld a, [hl-]                                   ; $5654: $3a
    ldh [$f6], a                                  ; $5655: $e0 $f6
    xor [hl]                                      ; $5657: $ae
    ret nz                                        ; $5658: $c0

    rst $38                                       ; $5659: $ff
    rst $10                                       ; $565a: $d7
    ld hl, $ff83                                  ; $565b: $21 $83 $ff
    db $dd                                        ; $565e: $dd
    rst $38                                       ; $565f: $ff
    ld [hl], a                                    ; $5660: $77
    ld e, h                                       ; $5661: $5c
    sbc h                                         ; $5662: $9c
    ret nz                                        ; $5663: $c0

    call c, $afe1                                 ; $5664: $dc $e1 $af
    rst $38                                       ; $5667: $ff
    rst $18                                       ; $5668: $df
    adc $e0                                       ; $5669: $ce $e0
    rst $18                                       ; $566b: $df
    ld hl, sp-$1a                                 ; $566c: $f8 $e6
    inc d                                         ; $566e: $14
    rst $38                                       ; $566f: $ff
    push hl                                       ; $5670: $e5
    sbc $e5                                       ; $5671: $de $e5
    ld e, a                                       ; $5673: $5f
    jp z, Jump_02e_6fe0                           ; $5674: $ca $e0 $6f

    add $e0                                       ; $5677: $c6 $e0
    ld hl, sp-$1b                                 ; $5679: $f8 $e5
    ldh [$63], a                                  ; $567b: $e0 $63
    jp z, $e1f8                                   ; $567d: $ca $f8 $e1

    ld e, a                                       ; $5680: $5f
    sub [hl]                                      ; $5681: $96
    ldh [$5f], a                                  ; $5682: $e0 $5f
    ret nc                                        ; $5684: $d0

    and $c7                                       ; $5685: $e6 $c7
    push hl                                       ; $5687: $e5
    ld l, c                                       ; $5688: $69
    rst $38                                       ; $5689: $ff
    rst $38                                       ; $568a: $ff
    call nc, $81fc                                ; $568b: $d4 $fc $81
    ldh a, [rDMA]                                 ; $568e: $f0 $46
    ldh [$8b], a                                  ; $5690: $e0 $8b
    ret nz                                        ; $5692: $c0

    ld a, a                                       ; $5693: $7f
    ld d, a                                       ; $5694: $57
    ret nz                                        ; $5695: $c0

    dec e                                         ; $5696: $1d
    add b                                         ; $5697: $80
    xor a                                         ; $5698: $af
    add b                                         ; $5699: $80
    db $fd                                        ; $569a: $fd
    xor a                                         ; $569b: $af
    ld h, b                                       ; $569c: $60
    db $fd                                        ; $569d: $fd
    jp c, $8048                                   ; $569e: $da $48 $80

    and b                                         ; $56a1: $a0
    db $fc                                        ; $56a2: $fc
    ld b, c                                       ; $56a3: $41
    ldh a, [$0b]                                  ; $56a4: $f0 $0b
    ret nz                                        ; $56a6: $c0

    ei                                            ; $56a7: $fb
    ld d, $00                                     ; $56a8: $16 $00
    ld hl, sp-$1f                                 ; $56aa: $f8 $e1
    ld a, [bc]                                    ; $56ac: $0a
    ret nz                                        ; $56ad: $c0

    rla                                           ; $56ae: $17
    nop                                           ; $56af: $00
    cp l                                          ; $56b0: $bd
    rst $30                                       ; $56b1: $f7
    nop                                           ; $56b2: $00
    ld l, a                                       ; $56b3: $6f
    nop                                           ; $56b4: $00
    push de                                       ; $56b5: $d5
    ld h, b                                       ; $56b6: $60
    nop                                           ; $56b7: $00
    ld hl, sp-$02                                 ; $56b8: $f8 $fe
    db $f4                                        ; $56ba: $f4
    rst $38                                       ; $56bb: $ff
    cp $d8                                        ; $56bc: $fe $d8
    db $fc                                        ; $56be: $fc
    pop af                                        ; $56bf: $f1
    db $fc                                        ; $56c0: $fc
    ld [c], a                                     ; $56c1: $e2
    ld hl, sp-$2f                                 ; $56c2: $f8 $d1
    rst $38                                       ; $56c4: $ff
    ld hl, sp+$63                                 ; $56c5: $f8 $63
    ldh a, [$c6]                                  ; $56c7: $f0 $c6
    ldh a, [$8b]                                  ; $56c9: $f0 $8b
    ldh [rBGP], a                                 ; $56cb: $e0 $47
    rst $38                                       ; $56cd: $ff
    ldh [$8f], a                                  ; $56ce: $e0 $8f
    ret nz                                        ; $56d0: $c0

    dec de                                        ; $56d1: $1b
    ret nz                                        ; $56d2: $c0

    cpl                                           ; $56d3: $2f
    add b                                         ; $56d4: $80
    rra                                           ; $56d5: $1f
    rst $38                                       ; $56d6: $ff
    add b                                         ; $56d7: $80
    scf                                           ; $56d8: $37
    nop                                           ; $56d9: $00
    ld e, a                                       ; $56da: $5f
    nop                                           ; $56db: $00
    inc h                                         ; $56dc: $24
    inc a                                         ; $56dd: $3c
    ld b, d                                       ; $56de: $42
    cp a                                          ; $56df: $bf
    nop                                           ; $56e0: $00
    xor l                                         ; $56e1: $ad
    nop                                           ; $56e2: $00
    rst $30                                       ; $56e3: $f7
    nop                                           ; $56e4: $00
    ld a, l                                       ; $56e5: $7d
    jp nc, $ffe2                                  ; $56e6: $d2 $e2 $ff

    push af                                       ; $56e9: $f5
    nop                                           ; $56ea: $00
    db $ec                                        ; $56eb: $ec
    pop hl                                        ; $56ec: $e1
    cp a                                          ; $56ed: $bf
    db $e4                                        ; $56ee: $e4
    ldh [$2f], a                                  ; $56ef: $e0 $2f
    add b                                         ; $56f1: $80
    cp a                                          ; $56f2: $bf
    add b                                         ; $56f3: $80
    rst $18                                       ; $56f4: $df
    ld d, a                                       ; $56f5: $57
    nop                                           ; $56f6: $00
    ccf                                           ; $56f7: $3f
    nop                                           ; $56f8: $00
    push af                                       ; $56f9: $f5
    ld a, $e0                                     ; $56fa: $3e $e0
    ld b, l                                       ; $56fc: $45
    rst $38                                       ; $56fd: $ff
    rst $38                                       ; $56fe: $ff
    nop                                           ; $56ff: $00
    rst $00                                       ; $5700: $c7
    stop                                          ; $5701: $10 $00
    ld l, l                                       ; $5703: $6d
    nop                                           ; $5704: $00
    cp e                                          ; $5705: $bb
    nop                                           ; $5706: $00
    rst $38                                       ; $5707: $ff
    rst $28                                       ; $5708: $ef
    nop                                           ; $5709: $00
    rst $20                                       ; $570a: $e7
    ldh a, [rSCX]                                 ; $570b: $f0 $43
    ldh a, [$e5]                                  ; $570d: $f0 $e5
    ldh a, [rIE]                                  ; $570f: $f0 $ff
    ld b, a                                       ; $5711: $47
    ldh [$8a], a                                  ; $5712: $e0 $8a
    ldh [$c7], a                                  ; $5714: $e0 $c7
    ldh [$a5], a                                  ; $5716: $e0 $a5
    ldh a, [$eb]                                  ; $5718: $f0 $eb
    jp $30f0                                      ; $571a: $c3 $f0 $30


    ld h, e                                       ; $571d: $63
    rst $18                                       ; $571e: $df
    ld l, $60                                     ; $571f: $2e $60
    xor l                                         ; $5721: $ad
    rst $38                                       ; $5722: $ff
    ld b, d                                       ; $5723: $42
    rst $38                                       ; $5724: $ff
    rst $38                                       ; $5725: $ff
    nop                                           ; $5726: $00
    jp $fffc                                      ; $5727: $c3 $fc $ff


    ld a, [$fcff]                                 ; $572a: $fa $ff $fc
    sbc $8c                                       ; $572d: $de $8c
    ldh [$f8], a                                  ; $572f: $e0 $f8
    cp $ec                                        ; $5731: $fe $ec
    cp $f6                                        ; $5733: $fe $f6
    ldh [rIE], a                                  ; $5735: $e0 $ff
    rst $38                                       ; $5737: $ff
    rst $38                                       ; $5738: $ff
    add b                                         ; $5739: $80
    ccf                                           ; $573a: $3f
    add b                                         ; $573b: $80
    ld a, a                                       ; $573c: $7f
    ret nz                                        ; $573d: $c0

    sbc a                                         ; $573e: $9f
    ret nz                                        ; $573f: $c0

    ld c, a                                       ; $5740: $4f
    rst $38                                       ; $5741: $ff
    ldh [$87], a                                  ; $5742: $e0 $87
    ldh a, [$d5]                                  ; $5744: $f0 $d5
    db $fc                                        ; $5746: $fc
    ld l, c                                       ; $5747: $69
    rst $38                                       ; $5748: $ff
    ccf                                           ; $5749: $3f
    rst $38                                       ; $574a: $ff
    nop                                           ; $574b: $00
    rrca                                          ; $574c: $0f
    ret nz                                        ; $574d: $c0

    ld b, e                                       ; $574e: $43
    ldh a, [$a0]                                  ; $574f: $f0 $a0
    db $fc                                        ; $5751: $fc
    db $f4                                        ; $5752: $f4
    add $4a                                       ; $5753: $c6 $4a
    ldh [rIE], a                                  ; $5755: $e0 $ff
    rst $38                                       ; $5757: $ff
    ld b, d                                       ; $5758: $42
    ldh [$88], a                                  ; $5759: $e0 $88
    db $e4                                        ; $575b: $e4
    add sp, -$1b                                  ; $575c: $e8 $e5
    db $e3                                        ; $575e: $e3
    rrca                                          ; $575f: $0f
    rst $38                                       ; $5760: $ff
    and $0f                                       ; $5761: $e6 $0f
    rr a                                          ; $5763: $cb $1f
    rst $00                                       ; $5765: $c7
    rra                                           ; $5766: $1f
    adc a                                         ; $5767: $8f
    ccf                                           ; $5768: $3f
    rst $30                                       ; $5769: $f7
    sbc e                                         ; $576a: $9b
    ccf                                           ; $576b: $3f
    cpl                                           ; $576c: $2f
    db $fc                                        ; $576d: $fc
    ld b, b                                       ; $576e: $40
    cp $00                                        ; $576f: $fe $00
    cp $00                                        ; $5771: $fe $00
    rst $38                                       ; $5773: $ff
    db $fc                                        ; $5774: $fc
    ld bc, $01fc                                  ; $5775: $01 $fc $01
    ld hl, sp+$03                                 ; $5778: $f8 $03

jr_02e_577a:
    ld sp, hl                                     ; $577a: $f9
    inc bc                                        ; $577b: $03
    rst $08                                       ; $577c: $cf
    ld a, [c]                                     ; $577d: $f2
    rlca                                          ; $577e: $07
    pop af                                        ; $577f: $f1
    rlca                                          ; $5780: $07
    ret nc                                        ; $5781: $d0

    push hl                                       ; $5782: $e5
    inc h                                         ; $5783: $24
    pop hl                                        ; $5784: $e1
    db $d3                                        ; $5785: $d3
    nop                                           ; $5786: $00
    ld e, a                                       ; $5787: $5f
    ld b, d                                       ; $5788: $42
    ld a, [hl]                                    ; $5789: $7e
    cp $00                                        ; $578a: $fe $00
    rst $38                                       ; $578c: $ff
    ld [c], a                                     ; $578d: $e2
    ldh [$fe], a                                  ; $578e: $e0 $fe
    sbc $e0                                       ; $5790: $de $e0
    rst $08                                       ; $5792: $cf
    db $fc                                        ; $5793: $fc
    ld bc, $01ff                                  ; $5794: $01 $ff $01
    ld a, [c]                                     ; $5797: $f2
    ldh [$0a], a                                  ; $5798: $e0 $0a
    ld [c], a                                     ; $579a: $e2
    inc a                                         ; $579b: $3c
    nop                                           ; $579c: $00
    rst $30                                       ; $579d: $f7
    nop                                           ; $579e: $00
    rst $00                                       ; $579f: $c7
    ld b, l                                       ; $57a0: $45
    add h                                         ; $57a1: $84
    ret nz                                        ; $57a2: $c0

    push af                                       ; $57a3: $f5
    rst $38                                       ; $57a4: $ff
    rst $20                                       ; $57a5: $e7
    rrca                                          ; $57a6: $0f
    rst $28                                       ; $57a7: $ef
    ld [c], a                                     ; $57a8: $e2
    rrca                                          ; $57a9: $0f
    rst $30                                       ; $57aa: $f7
    rrca                                          ; $57ab: $0f
    add $e1                                       ; $57ac: $c6 $e1
    di                                            ; $57ae: $f3
    rlca                                          ; $57af: $07
    push hl                                       ; $57b0: $e5
    cp a                                          ; $57b1: $bf
    rrca                                          ; $57b2: $0f
    db $e3                                        ; $57b3: $e3
    rrca                                          ; $57b4: $0f
    jr jr_02e_577a                                ; $57b5: $18 $c3

    ld b, d                                       ; $57b7: $42
    ld d, [hl]                                    ; $57b8: $56
    ldh [$f7], a                                  ; $57b9: $e0 $f7
    ld [$c676], a                                 ; $57bb: $ea $76 $c6
    ccf                                           ; $57be: $3f
    ld a, [hl]                                    ; $57bf: $7e
    ret nz                                        ; $57c0: $c0

    ccf                                           ; $57c1: $3f
    add b                                         ; $57c2: $80
    and b                                         ; $57c3: $a0
    sbc a                                         ; $57c4: $9f
    ld a, a                                       ; $57c5: $7f
    scf                                           ; $57c6: $37
    db $fd                                        ; $57c7: $fd
    ld a, a                                       ; $57c8: $7f
    or $e0                                        ; $57c9: $f6 $e0
    rst $38                                       ; $57cb: $ff
    ld [$5500], sp                                ; $57cc: $08 $00 $55
    nop                                           ; $57cf: $00
    cp [hl]                                       ; $57d0: $be
    ld [hl], h                                    ; $57d1: $74
    ldh a, [$c0]                                  ; $57d2: $f0 $c0
    ld l, b                                       ; $57d4: $68
    push hl                                       ; $57d5: $e5
    ld e, a                                       ; $57d6: $5f
    db $fc                                        ; $57d7: $fc
    ret nz                                        ; $57d8: $c0

    ld a, a                                       ; $57d9: $7f
    nop                                           ; $57da: $00
    xor a                                         ; $57db: $af
    db $fc                                        ; $57dc: $fc
    ldh [$9d], a                                  ; $57dd: $e0 $9d
    ccf                                           ; $57df: $3f
    db $f4                                        ; $57e0: $f4
    ld [c], a                                     ; $57e1: $e2
    ld de, $2a80                                  ; $57e2: $11 $80 $2a
    call nc, $f0c0                                ; $57e5: $d4 $c0 $f0
    push hl                                       ; $57e8: $e5
    cp a                                          ; $57e9: $bf
    ldh a, [$fa]                                  ; $57ea: $f0 $fa
    db $e4                                        ; $57ec: $e4
    ld l, d                                       ; $57ed: $6a
    jp hl                                         ; $57ee: $e9


    db $f4                                        ; $57ef: $f4
    db $eb                                        ; $57f0: $eb
    nop                                           ; $57f1: $00
    add e                                         ; $57f2: $83
    dec de                                        ; $57f3: $1b
    db $e4                                        ; $57f4: $e4
    dec d                                         ; $57f5: $15
    xor $ff                                       ; $57f6: $ee $ff
    dec l                                         ; $57f8: $2d
    ret nc                                        ; $57f9: $d0

    dec b                                         ; $57fa: $05
    ld a, [$c034]                                 ; $57fb: $fa $34 $c0
    ld d, a                                       ; $57fe: $57
    xor d                                         ; $57ff: $aa
    rst $18                                       ; $5800: $df
    and h                                         ; $5801: $a4
    ld a, [bc]                                    ; $5802: $0a
    ld c, e                                       ; $5803: $4b

Call_02e_5804:
    add b                                         ; $5804: $80
    ld b, d                                       ; $5805: $42
    ldh [rNR41], a                                ; $5806: $e0 $20
    dec e                                         ; $5808: $1d
    ld [bc], a                                    ; $5809: $02
    rst $38                                       ; $580a: $ff
    cp h                                          ; $580b: $bc
    inc bc                                        ; $580c: $03
    sbc b                                         ; $580d: $98
    ld h, a                                       ; $580e: $67
    rla                                           ; $580f: $17
    xor d                                         ; $5810: $aa
    db $e4                                        ; $5811: $e4
    ld a, [bc]                                    ; $5812: $0a
    rst $38                                       ; $5813: $ff
    adc e                                         ; $5814: $8b
    jr nz, @+$24                                  ; $5815: $20 $22

    nop                                           ; $5817: $00
    db $dd                                        ; $5818: $dd
    nop                                           ; $5819: $00
    cp l                                          ; $581a: $bd
    ld b, d                                       ; $581b: $42
    cp $08                                        ; $581c: $fe $08
    and c                                         ; $581e: $a1
    ld d, $a9                                     ; $581f: $16 $a9
    add sp, $03                                   ; $5821: $e8 $03
    add l                                         ; $5823: $85
    ld [hl+], a                                   ; $5824: $22
    ld a, [hl+]                                   ; $5825: $2a
    rst $38                                       ; $5826: $ff
    rlca                                          ; $5827: $07
    db $db                                        ; $5828: $db
    nop                                           ; $5829: $00
    cp h                                          ; $582a: $bc
    ld b, e                                       ; $582b: $43
    ccf                                           ; $582c: $3f
    ret nz                                        ; $582d: $c0

    add hl, de                                    ; $582e: $19
    ei                                            ; $582f: $fb

jr_02e_5830:
    and $18                                       ; $5830: $e6 $18
    ld h, b                                       ; $5832: $60
    and b                                         ; $5833: $a0
    inc a                                         ; $5834: $3c
    jp $e7b8                                      ; $5835: $c3 $b8 $e7


    ld [$f7ff], sp                                ; $5838: $08 $ff $f7
    call z, $90fb                                 ; $583b: $cc $fb $90
    ld l, a                                       ; $583e: $6f
    ld a, [hl+]                                   ; $583f: $2a
    rst $38                                       ; $5840: $ff
    rra                                           ; $5841: $1f
    rst $38                                       ; $5842: $ff
    ldh [$d0], a                                  ; $5843: $e0 $d0
    ld bc, $a15a                                  ; $5845: $01 $5a $a1
    ld c, b                                       ; $5848: $48
    rlca                                          ; $5849: $07
    ld hl, sp-$09                                 ; $584a: $f8 $f7
    rlca                                          ; $584c: $07
    inc e                                         ; $584d: $1c
    inc bc                                        ; $584e: $03
    ret nz                                        ; $584f: $c0

    pop hl                                        ; $5850: $e1
    or b                                          ; $5851: $b0
    rrca                                          ; $5852: $0f
    call z, $ff3f                                 ; $5853: $cc $3f $ff
    ld a, c                                       ; $5856: $79
    add [hl]                                      ; $5857: $86
    ld [de], a                                    ; $5858: $12
    rst $28                                       ; $5859: $ef
    dec de                                        ; $585a: $1b
    ldh [$3c], a                                  ; $585b: $e0 $3c
    jp $d0fe                                      ; $585d: $c3 $fe $d0


    pop hl                                        ; $5860: $e1
    dec a                                         ; $5861: $3d
    ret nz                                        ; $5862: $c0

    ld c, a                                       ; $5863: $4f
    and b                                         ; $5864: $a0
    jr nc, jr_02e_5830                            ; $5865: $30 $c9

    ld d, d                                       ; $5867: $52
    rst $38                                       ; $5868: $ff
    and c                                         ; $5869: $a1
    ld l, l                                       ; $586a: $6d
    jp nz, $c934                                  ; $586b: $c2 $34 $c9

    ld c, b                                       ; $586e: $48
    or e                                          ; $586f: $b3
    ld a, [de]                                    ; $5870: $1a
    rst $38                                       ; $5871: $ff
    push hl                                       ; $5872: $e5
    dec d                                         ; $5873: $15
    cp a                                          ; $5874: $bf
    adc $3f                                       ; $5875: $ce $3f
    ld d, [hl]                                    ; $5877: $56
    cp a                                          ; $5878: $bf
    ld l, l                                       ; $5879: $6d
    rst $38                                       ; $587a: $ff
    cp a                                          ; $587b: $bf
    sbc [hl]                                      ; $587c: $9e
    ld a, a                                       ; $587d: $7f
    ld l, d                                       ; $587e: $6a
    cp a                                          ; $587f: $bf
    dec e                                         ; $5880: $1d
    rst $38                                       ; $5881: $ff
    ld c, [hl]                                    ; $5882: $4e
    rst $38                                       ; $5883: $ff
    cp a                                          ; $5884: $bf
    dec [hl]                                      ; $5885: $35
    ret nz                                        ; $5886: $c0

    ld c, [hl]                                    ; $5887: $4e
    and c                                         ; $5888: $a1
    ld [hl-], a                                   ; $5889: $32
    ret                                           ; $588a: $c9


    ld d, a                                       ; $588b: $57
    rst $38                                       ; $588c: $ff
    and d                                         ; $588d: $a2
    ld a, a                                       ; $588e: $7f
    push bc                                       ; $588f: $c5
    ld [hl-], a                                   ; $5890: $32
    rst $08                                       ; $5891: $cf
    ld d, l                                       ; $5892: $55
    cp a                                          ; $5893: $bf
    dec hl                                        ; $5894: $2b
    sbc $90                                       ; $5895: $de $90
    add d                                         ; $5897: $82
    cp h                                          ; $5898: $bc
    ld b, e                                       ; $5899: $43
    ld e, b                                       ; $589a: $58
    and a                                         ; $589b: $a7
    nop                                           ; $589c: $00
    and b                                         ; $589d: $a0
    db $e3                                        ; $589e: $e3
    call nz, $f3ff                                ; $589f: $c4 $ff $f3
    or h                                          ; $58a2: $b4

Call_02e_58a3:
    db $eb                                        ; $58a3: $eb
    sbc d                                         ; $58a4: $9a
    ld a, a                                       ; $58a5: $7f
    rst $28                                       ; $58a6: $ef
    ccf                                           ; $58a7: $3f
    ld a, [hl-]                                   ; $58a8: $3a
    rst $38                                       ; $58a9: $ff
    rst $18                                       ; $58aa: $df
    ld c, l                                       ; $58ab: $4d
    rst $38                                       ; $58ac: $ff
    or h                                          ; $58ad: $b4
    rst $38                                       ; $58ae: $ff
    ld a, d                                       ; $58af: $7a
    rst $38                                       ; $58b0: $ff
    xor b                                         ; $58b1: $a8
    ei                                            ; $58b2: $fb
    rst $38                                       ; $58b3: $ff
    ld [hl], h                                    ; $58b4: $74
    cp [hl]                                       ; $58b5: $be
    add b                                         ; $58b6: $80
    inc hl                                        ; $58b7: $23
    rst $18                                       ; $58b8: $df
    dec b                                         ; $58b9: $05
    rst $38                                       ; $58ba: $ff
    ld a, [de]                                    ; $58bb: $1a
    cp $70                                        ; $58bc: $fe $70
    add [hl]                                      ; $58be: $86
    call nc, $bbff                                ; $58bf: $d4 $ff $bb
    cp $74                                        ; $58c2: $fe $74
    rst $38                                       ; $58c4: $ff
    xor [hl]                                      ; $58c5: $ae
    ld a, [$209a]                                 ; $58c6: $fa $9a $20
    xor [hl]                                      ; $58c9: $ae
    ld a, [hl-]                                   ; $58ca: $3a
    add b                                         ; $58cb: $80
    inc bc                                        ; $58cc: $03
    rst $38                                       ; $58cd: $ff
    ld d, d                                       ; $58ce: $52
    db $fc                                        ; $58cf: $fc
    xor d                                         ; $58d0: $aa
    xor a                                         ; $58d1: $af
    db $fd                                        ; $58d2: $fd
    ld [hl], a                                    ; $58d3: $77
    ei                                            ; $58d4: $fb
    and d                                         ; $58d5: $a2
    or b                                          ; $58d6: $b0
    ld h, b                                       ; $58d7: $60
    dec c                                         ; $58d8: $0d
    xor h                                         ; $58d9: $ac
    ld h, b                                       ; $58da: $60
    ld a, [bc]                                    ; $58db: $0a
    rst $38                                       ; $58dc: $ff
    rst $38                                       ; $58dd: $ff
    ld h, a                                       ; $58de: $67
    adc b                                         ; $58df: $88
    call Call_000_32bb                            ; $58e0: $cd $bb $32
    rst $28                                       ; $58e3: $ef
    db $eb                                        ; $58e4: $eb
    ld a, [$e0de]                                 ; $58e5: $fa $de $e0
    cp $1c                                        ; $58e8: $fe $1c
    add b                                         ; $58ea: $80
    cp d                                          ; $58eb: $ba
    rst $38                                       ; $58ec: $ff
    daa                                           ; $58ed: $27
    ret z                                         ; $58ee: $c8

    ld l, l                                       ; $58ef: $6d
    rst $38                                       ; $58f0: $ff
    sbc e                                         ; $58f1: $9b
    ld [hl+], a                                   ; $58f2: $22
    rst $38                                       ; $58f3: $ff

jr_02e_58f4:
    ld a, e                                       ; $58f4: $7b
    rst $38                                       ; $58f5: $ff
    or [hl]                                       ; $58f6: $b6
    rst $38                                       ; $58f7: $ff
    ld e, [hl]                                    ; $58f8: $5e
    ei                                            ; $58f9: $fb
    rst $38                                       ; $58fa: $ff
    cp e                                          ; $58fb: $bb
    add h                                         ; $58fc: $84
    ld h, b                                       ; $58fd: $60
    ld c, $bf                                     ; $58fe: $0e $bf
    db $dd                                        ; $5900: $dd
    ccf                                           ; $5901: $3f
    ld l, [hl]                                    ; $5902: $6e
    cp e                                          ; $5903: $bb
    cp a                                          ; $5904: $bf
    ld d, a                                       ; $5905: $57
    ld [hl], b                                    ; $5906: $70

jr_02e_5907:
    ldh [$6d], a                                  ; $5907: $e0 $6d
    cp a                                          ; $5909: $bf
    ld e, $70                                     ; $590a: $1e $70
    ldh [rHDMA2], a                               ; $590c: $e0 $52
    rst $38                                       ; $590e: $ff
    db $fd                                        ; $590f: $fd
    xor $f9                                       ; $5910: $ee $f9
    ld c, c                                       ; $5912: $49
    or $a7                                        ; $5913: $f6 $a7
    ld hl, sp+$47                                 ; $5915: $f8 $47
    rst $38                                       ; $5917: $ff
    ldh a, [$b4]                                  ; $5918: $f0 $b4
    ret                                           ; $591a: $c9


    ld c, d                                       ; $591b: $4a
    or c                                          ; $591c: $b1
    dec de                                        ; $591d: $1b
    db $e4                                        ; $591e: $e4
    rst $38                                       ; $591f: $ff
    rst $38                                       ; $5920: $ff
    rra                                           ; $5921: $1f
    ld c, d                                       ; $5922: $4a
    cp a                                          ; $5923: $bf
    ld l, c                                       ; $5924: $69
    sub a                                         ; $5925: $97
    ld [de], a                                    ; $5926: $12
    rst $28                                       ; $5927: $ef
    add hl, de                                    ; $5928: $19
    rst $30                                       ; $5929: $f7
    ld [c], a                                     ; $592a: $e2
    jr c, jr_02e_58f4                             ; $592b: $38 $c7

    nop                                           ; $592d: $00
    pop hl                                        ; $592e: $e1
    dec hl                                        ; $592f: $2b
    ret nc                                        ; $5930: $d0

    xor d                                         ; $5931: $aa
    ld b, c                                       ; $5932: $41
    cp a                                          ; $5933: $bf
    cp $01                                        ; $5934: $fe $01
    xor b                                         ; $5936: $a8
    rlca                                          ; $5937: $07
    ld a, b                                       ; $5938: $78
    add a                                         ; $5939: $87
    db $10                                        ; $593a: $10
    db $e3                                        ; $593b: $e3

jr_02e_593c:
    and c                                         ; $593c: $a1
    rst $38                                       ; $593d: $ff
    ld e, $8c                                     ; $593e: $1e $8c
    ld a, d                                       ; $5940: $7a
    ld d, a                                       ; $5941: $57
    xor b                                         ; $5942: $a8
    jr c, jr_02e_5907                             ; $5943: $38 $c2

    dec c                                         ; $5945: $0d
    rst $30                                       ; $5946: $f7
    ldh a, [$3d]                                  ; $5947: $f0 $3d
    jp nz, Jump_02e_61d8                          ; $5949: $c2 $d8 $61

    cpl                                           ; $594c: $2f
    sub b                                         ; $594d: $90
    ld sp, hl                                     ; $594e: $f9
    nop                                           ; $594f: $00
    rst $38                                       ; $5950: $ff
    adc d                                         ; $5951: $8a
    ld hl, $0728                                  ; $5952: $21 $28 $07
    ret c                                         ; $5955: $d8

    rlca                                          ; $5956: $07
    cp h                                          ; $5957: $bc
    ld b, e                                       ; $5958: $43
    db $fc                                        ; $5959: $fc
    ret z                                         ; $595a: $c8

    ld h, c                                       ; $595b: $61
    add hl, sp                                    ; $595c: $39
    and e                                         ; $595d: $a3
    ld [bc], a                                    ; $595e: $02
    db $fd                                        ; $595f: $fd
    ld bc, $0dfe                                  ; $5960: $01 $fe $0d
    ldh a, [rIE]                                  ; $5963: $f0 $ff
    ld [bc], a                                    ; $5965: $02
    db $fd                                        ; $5966: $fd
    ld a, [hl+]                                   ; $5967: $2a
    ret nc                                        ; $5968: $d0

    dec hl                                        ; $5969: $2b
    sub $f5                                       ; $596a: $d6 $f5
    ld a, [bc]                                    ; $596c: $0a
    rst $38                                       ; $596d: $ff
    ld e, a                                       ; $596e: $5f
    add b                                         ; $596f: $80
    xor c                                         ; $5970: $a9
    ld [bc], a                                    ; $5971: $02
    ld a, a                                       ; $5972: $7f
    add b                                         ; $5973: $80
    db $10                                        ; $5974: $10
    rrca                                          ; $5975: $0f
    rst $38                                       ; $5976: $ff
    ldh [$1f], a                                  ; $5977: $e0 $1f
    add b                                         ; $5979: $80
    ld a, a                                       ; $597a: $7f
    ld d, a                                       ; $597b: $57
    xor d                                         ; $597c: $aa
    push af                                       ; $597d: $f5
    ld a, [bc]                                    ; $597e: $0a
    cp a                                          ; $597f: $bf
    sbc a                                         ; $5980: $9f
    jr nz, jr_02e_593c                            ; $5981: $20 $b9

    ld [bc], a                                    ; $5983: $02
    ld h, a                                       ; $5984: $67
    sbc b                                         ; $5985: $98
    rrca                                          ; $5986: $0f
    and e                                         ; $5987: $a3
    ld c, d                                       ; $5988: $4a
    rst $38                                       ; $5989: $ff
    or l                                          ; $598a: $b5
    db $f4                                        ; $598b: $f4
    dec bc                                        ; $598c: $0b
    sbc l                                         ; $598d: $9d
    ld [hl+], a                                   ; $598e: $22
    cp d                                          ; $598f: $ba
    rlca                                          ; $5990: $07
    ld a, e                                       ; $5991: $7b
    ld e, a                                       ; $5992: $5f
    add b                                         ; $5993: $80
    inc c                                         ; $5994: $0c
    di                                            ; $5995: $f3
    rlca                                          ; $5996: $07
    ld hl, sp-$41                                 ; $5997: $f8 $bf
    and c                                         ; $5999: $a1
    add b                                         ; $599a: $80
    sbc [hl]                                      ; $599b: $9e
    nop                                           ; $599c: $00
    db $ed                                        ; $599d: $ed
    and b                                         ; $599e: $a0
    sbc d                                         ; $599f: $9a
    nop                                           ; $59a0: $00
    ld l, b                                       ; $59a1: $68
    rst $38                                       ; $59a2: $ff
    sub b                                         ; $59a3: $90
    pop bc                                        ; $59a4: $c1
    rla                                           ; $59a5: $17
    add sp, -$2f                                  ; $59a6: $e8 $d1
    rst $20                                       ; $59a8: $e7
    nop                                           ; $59a9: $00
    ld l, $d1                                     ; $59aa: $2e $d1
    add b                                         ; $59ac: $80
    pop hl                                        ; $59ad: $e1
    ret nz                                        ; $59ae: $c0

    db $e3                                        ; $59af: $e3
    or b                                          ; $59b0: $b0
    rrca                                          ; $59b1: $0f
    add $fc                                       ; $59b2: $c6 $fc
    sub b                                         ; $59b4: $90
    call nz, $e3d0                                ; $59b5: $c4 $d0 $e3
    dec a                                         ; $59b8: $3d
    ret nz                                        ; $59b9: $c0

    ld e, a                                       ; $59ba: $5f
    and b                                         ; $59bb: $a0
    inc [hl]                                      ; $59bc: $34
    ret                                           ; $59bd: $c9


    rst $10                                       ; $59be: $d7
    ld e, d                                       ; $59bf: $5a
    and c                                         ; $59c0: $a1
    ld a, l                                       ; $59c1: $7d
    sub b                                         ; $59c2: $90
    ret nz                                        ; $59c3: $c0

    ld c, h                                       ; $59c4: $4c
    sub b                                         ; $59c5: $90
    ret nz                                        ; $59c6: $c0

    ld d, l                                       ; $59c7: $55
    cp a                                          ; $59c8: $bf
    ei                                            ; $59c9: $fb
    adc [hl]                                      ; $59ca: $8e
    ld a, a                                       ; $59cb: $7f
    sub b                                         ; $59cc: $90
    jp z, Jump_02e_5ac8                           ; $59cd: $ca $c8 $5a

    and c                                         ; $59d0: $a1
    inc a                                         ; $59d1: $3c
    jp Jump_02e_537f                              ; $59d2: $c3 $7f $53


    xor [hl]                                      ; $59d5: $ae
    ld [hl], a                                    ; $59d6: $77
    call $bf42                                    ; $59d7: $cd $42 $bf
    dec d                                         ; $59da: $15
    ld l, d                                       ; $59db: $6a
    ld h, b                                       ; $59dc: $60
    cp $6b                                        ; $59dd: $fe $6b
    add c                                         ; $59df: $81
    ret nz                                        ; $59e0: $c0

    ccf                                           ; $59e1: $3f
    ld b, b                                       ; $59e2: $40
    cp a                                          ; $59e3: $bf
    ld b, b                                       ; $59e4: $40
    rst $38                                       ; $59e5: $ff
    or b                                          ; $59e6: $b0
    cp a                                          ; $59e7: $bf
    rst $28                                       ; $59e8: $ef
    call z, $a4f3                                 ; $59e9: $cc $f3 $a4
    ei                                            ; $59ec: $fb
    dec d                                         ; $59ed: $15
    cp h                                          ; $59ee: $bc
    ret nz                                        ; $59ef: $c0

    dec b                                         ; $59f0: $05
    xor e                                         ; $59f1: $ab
    rst $38                                       ; $59f2: $ff
    ld [bc], a                                    ; $59f3: $02
    add hl, hl                                    ; $59f4: $29
    and [hl]                                      ; $59f5: $a6
    ld d, e                                       ; $59f6: $53
    or b                                          ; $59f7: $b0
    ret nz                                        ; $59f8: $c0

    ld [hl], l                                    ; $59f9: $75
    or b                                          ; $59fa: $b0
    ret z                                         ; $59fb: $c8

    ld [hl], a                                    ; $59fc: $77
    xor e                                         ; $59fd: $ab
    adc b                                         ; $59fe: $88
    call z, $cab0                                 ; $59ff: $cc $b0 $ca
    scf                                           ; $5a02: $37
    or b                                          ; $5a03: $b0
    call z, $b04e                                 ; $5a04: $cc $4e $b0
    adc $ae                                       ; $5a07: $ce $ae
    db $db                                        ; $5a09: $db
    ld sp, hl                                     ; $5a0a: $f9
    ld a, c                                       ; $5a0b: $79
    or b                                          ; $5a0c: $b0
    ret z                                         ; $5a0d: $c8

    cp a                                          ; $5a0e: $bf
    ld e, a                                       ; $5a0f: $5f
    or b                                          ; $5a10: $b0
    jp $e21d                                      ; $5a11: $c3 $1d $e2


    ei                                            ; $5a14: $fb
    ld [$20f7], sp                                ; $5a15: $08 $f7 $20
    pop hl                                        ; $5a18: $e1
    dec l                                         ; $5a19: $2d
    ret nc                                        ; $5a1a: $d0

    sbc d                                         ; $5a1b: $9a
    ld h, c                                       ; $5a1c: $61
    ld a, [hl]                                    ; $5a1d: $7e
    cp e                                          ; $5a1e: $bb
    add c                                         ; $5a1f: $81
    add sp, $30                                   ; $5a20: $e8 $30
    and $61                                       ; $5a22: $e6 $61
    ld e, $95                                     ; $5a24: $1e $95
    or b                                          ; $5a26: $b0
    ret nz                                        ; $5a27: $c0

    add hl, sp                                    ; $5a28: $39
    rst $30                                       ; $5a29: $f7
    jp nz, $f00f                                  ; $5a2a: $c2 $0f $f0

    rst $38                                       ; $5a2d: $ff
    ld h, e                                       ; $5a2e: $63
    ld d, a                                       ; $5a2f: $57
    xor b                                         ; $5a30: $a8
    ei                                            ; $5a31: $fb
    nop                                           ; $5a32: $00
    cp a                                          ; $5a33: $bf
    sbc [hl]                                      ; $5a34: $9e
    ld hl, $07a8                                  ; $5a35: $21 $a8 $07
    ld [hl], b                                    ; $5a38: $70
    adc a                                         ; $5a39: $8f
    rst $28                                       ; $5a3a: $ef
    ld h, e                                       ; $5a3b: $63
    inc c                                         ; $5a3c: $0c
    rst $38                                       ; $5a3d: $ff
    rst $30                                       ; $5a3e: $f7
    reti                                          ; $5a3f: $d9


    ld l, a                                       ; $5a40: $6f
    ld [$63ff], sp                                ; $5a41: $08 $ff $63
    cp l                                          ; $5a44: $bd
    sub $ff                                       ; $5a45: $d6 $ff
    ld l, e                                       ; $5a47: $6b
    ld l, d                                       ; $5a48: $6a
    rst $18                                       ; $5a49: $df
    jr nc, @-$1f                                  ; $5a4a: $30 $df

    ld d, e                                       ; $5a4c: $53
    db $fd                                        ; $5a4d: $fd
    nop                                           ; $5a4e: $00
    rst $38                                       ; $5a4f: $ff
    rst $38                                       ; $5a50: $ff
    ld e, l                                       ; $5a51: $5d
    rst $20                                       ; $5a52: $e7
    ld [$40ff], sp                                ; $5a53: $08 $ff $40
    cp a                                          ; $5a56: $bf
    ld l, h                                       ; $5a57: $6c
    sbc e                                         ; $5a58: $9b
    or a                                          ; $5a59: $b7
    ld c, b                                       ; $5a5a: $48
    call c, $40c0                                 ; $5a5b: $dc $c0 $40
    rst $38                                       ; $5a5e: $ff
    ld b, h                                       ; $5a5f: $44
    dec b                                         ; $5a60: $05
    inc a                                         ; $5a61: $3c
    dec b                                         ; $5a62: $05
    ld d, l                                       ; $5a63: $55
    ei                                            ; $5a64: $fb
    nop                                           ; $5a65: $00
    cp d                                          ; $5a66: $ba
    cp [hl]                                       ; $5a67: $be
    add b                                         ; $5a68: $80
    xor e                                         ; $5a69: $ab
    nop                                           ; $5a6a: $00
    ld e, l                                       ; $5a6b: $5d
    nop                                           ; $5a6c: $00
    ld [$b6fa], a                                 ; $5a6d: $ea $fa $b6
    add b                                         ; $5a70: $80
    xor [hl]                                      ; $5a71: $ae
    or d                                          ; $5a72: $b2
    add b                                         ; $5a73: $80
    adc d                                         ; $5a74: $8a
    nop                                           ; $5a75: $00
    ld d, h                                       ; $5a76: $54
    nop                                           ; $5a77: $00
    xor d                                         ; $5a78: $aa
    cp $f0                                        ; $5a79: $fe $f0
    ldh [$aa], a                                  ; $5a7b: $e0 $aa
    nop                                           ; $5a7d: $00
    dec d                                         ; $5a7e: $15
    nop                                           ; $5a7f: $00
    xor b                                         ; $5a80: $a8
    nop                                           ; $5a81: $00
    ld d, c                                       ; $5a82: $51
    rst $38                                       ; $5a83: $ff
    nop                                           ; $5a84: $00
    ld [$2200], sp                                ; $5a85: $08 $00 $22
    nop                                           ; $5a88: $00
    sub h                                         ; $5a89: $94
    nop                                           ; $5a8a: $00
    add hl, hl                                    ; $5a8b: $29
    xor a                                         ; $5a8c: $af
    nop                                           ; $5a8d: $00
    ld b, h                                       ; $5a8e: $44
    nop                                           ; $5a8f: $00
    db $10                                        ; $5a90: $10
    db $e4                                        ; $5a91: $e4
    ldh [rP1], a                                  ; $5a92: $e0 $00
    sub e                                         ; $5a94: $93
    nop                                           ; $5a95: $00
    ld bc, $b4ce                                  ; $5a96: $01 $ce $b4
    nop                                           ; $5a99: $00
    jr nz, jr_02e_5a9c                            ; $5a9a: $20 $00

jr_02e_5a9c:
    add b                                         ; $5a9c: $80
    xor [hl]                                      ; $5a9d: $ae
    nop                                           ; $5a9e: $00
    cp l                                          ; $5a9f: $bd
    ldh [rNR23], a                                ; $5aa0: $e0 $18
    inc a                                         ; $5aa2: $3c
    rst $38                                       ; $5aa3: $ff
    ld a, [hl]                                    ; $5aa4: $7e
    ld a, [hl]                                    ; $5aa5: $7e
    rst $38                                       ; $5aa6: $ff
    ld [hl], b                                    ; $5aa7: $70
    rst $38                                       ; $5aa8: $ff
    ld a, b                                       ; $5aa9: $78
    db $fc                                        ; $5aaa: $fc
    inc a                                         ; $5aab: $3c
    rst $38                                       ; $5aac: $ff
    cp $80                                        ; $5aad: $fe $80
    ld a, h                                       ; $5aaf: $7c
    ld h, h                                       ; $5ab0: $64
    nop                                           ; $5ab1: $00
    nop                                           ; $5ab2: $00
    ld [$ff1c], sp                                ; $5ab3: $08 $1c $ff
    ld a, $36                                     ; $5ab6: $3e $36
    ld a, a                                       ; $5ab8: $7f
    and [hl]                                      ; $5ab9: $a6
    ld a, a                                       ; $5aba: $7f
    add h                                         ; $5abb: $84
    ld l, a                                       ; $5abc: $6f
    ld b, b                                       ; $5abd: $40
    db $eb                                        ; $5abe: $eb
    ld c, $08                                     ; $5abf: $0e $08
    sbc [hl]                                      ; $5ac1: $9e
    ldh [$03], a                                  ; $5ac2: $e0 $03
    sbc h                                         ; $5ac4: $9c
    and b                                         ; $5ac5: $a0
    ld b, $ff                                     ; $5ac6: $06 $ff

Jump_02e_5ac8:
    ld e, h                                       ; $5ac8: $5c
    rst $38                                       ; $5ac9: $ff
    rst $38                                       ; $5aca: $ff
    ld de, $74fe                                  ; $5acb: $11 $fe $74
    ei                                            ; $5ace: $fb
    ret nz                                        ; $5acf: $c0

    rst $38                                       ; $5ad0: $ff
    sub c                                         ; $5ad1: $91
    rst $28                                       ; $5ad2: $ef
    rst $28                                       ; $5ad3: $ef
    ld c, [hl]                                    ; $5ad4: $4e
    rst $38                                       ; $5ad5: $ff
    ei                                            ; $5ad6: $fb
    ld d, d                                       ; $5ad7: $52
    ret nz                                        ; $5ad8: $c0

    inc b                                         ; $5ad9: $04
    ei                                            ; $5ada: $fb
    ld c, d                                       ; $5adb: $4a
    rst $28                                       ; $5adc: $ef
    or l                                          ; $5add: $b5
    and b                                         ; $5ade: $a0
    ld e, a                                       ; $5adf: $5f
    ld a, [bc]                                    ; $5ae0: $0a
    xor b                                         ; $5ae1: $a8
    jr nz, jr_02e_5b0a                            ; $5ae2: $20 $26

    rst $18                                       ; $5ae4: $df
    sub e                                         ; $5ae5: $93
    rst $38                                       ; $5ae6: $ff
    rst $28                                       ; $5ae7: $ef
    ld h, $df                                     ; $5ae8: $26 $df
    add d                                         ; $5aea: $82
    rst $38                                       ; $5aeb: $ff

jr_02e_5aec:
    ld d, e                                       ; $5aec: $53
    rst $28                                       ; $5aed: $ef

jr_02e_5aee:
    adc c                                         ; $5aee: $89
    xor a                                         ; $5aef: $af
    rst $30                                       ; $5af0: $f7
    ld d, e                                       ; $5af1: $53
    rst $28                                       ; $5af2: $ef
    add d                                         ; $5af3: $82
    sbc d                                         ; $5af4: $9a
    jr nz, jr_02e_5aec                            ; $5af5: $20 $f5

    ld d, d                                       ; $5af7: $52
    ld b, b                                       ; $5af8: $40
    ldh a, [rIE]                                  ; $5af9: $f0 $ff
    rst $38                                       ; $5afb: $ff
    xor d                                         ; $5afc: $aa
    db $fd                                        ; $5afd: $fd
    ld d, c                                       ; $5afe: $51
    cp $80                                        ; $5aff: $fe $80
    rst $38                                       ; $5b01: $ff
    ld d, l                                       ; $5b02: $55
    rst $38                                       ; $5b03: $ff
    db $eb                                        ; $5b04: $eb
    pop de                                        ; $5b05: $d1
    sbc a                                         ; $5b06: $9f
    sbc l                                         ; $5b07: $9d
    ld c, a                                       ; $5b08: $4f
    daa                                           ; $5b09: $27

jr_02e_5b0a:
    rla                                           ; $5b0a: $17
    and e                                         ; $5b0b: $a3
    rst $38                                       ; $5b0c: $ff
    di                                            ; $5b0d: $f3
    db $db                                        ; $5b0e: $db
    pop hl                                        ; $5b0f: $e1
    xor $f1                                       ; $5b10: $ee $f1
    or h                                          ; $5b12: $b4
    ei                                            ; $5b13: $fb
    ret                                           ; $5b14: $c9


    ei                                            ; $5b15: $fb
    rst $38                                       ; $5b16: $ff
    jp c, $e0f0                                   ; $5b17: $da $f0 $e0

    ld h, $17                                     ; $5b1a: $26 $17
    and d                                         ; $5b1c: $a2
    di                                            ; $5b1d: $f3
    ld e, d                                       ; $5b1e: $5a
    rst $38                                       ; $5b1f: $ff
    pop hl                                        ; $5b20: $e1
    ld l, [hl]                                    ; $5b21: $6e
    pop af                                        ; $5b22: $f1
    inc [hl]                                      ; $5b23: $34
    ei                                            ; $5b24: $fb
    ld sp, hl                                     ; $5b25: $f9
    rst $38                                       ; $5b26: $ff
    rst $20                                       ; $5b27: $e7
    rst $38                                       ; $5b28: $ff
    jr jr_02e_5aee                                ; $5b29: $18 $c3

    inc h                                         ; $5b2b: $24
    rst $20                                       ; $5b2c: $e7
    inc h                                         ; $5b2d: $24
    rst $38                                       ; $5b2e: $ff
    inc a                                         ; $5b2f: $3c
    db $db                                        ; $5b30: $db
    rst $30                                       ; $5b31: $f7
    inc a                                         ; $5b32: $3c
    rst $20                                       ; $5b33: $e7
    jr @-$3e                                      ; $5b34: $18 $c0

    ld b, c                                       ; $5b36: $41
    ld h, a                                       ; $5b37: $67
    sbc d                                         ; $5b38: $9a
    call nz, $ff8a                                ; $5b39: $c4 $8a $ff
    dec bc                                        ; $5b3c: $0b
    ret nz                                        ; $5b3d: $c0

    ld b, d                                       ; $5b3e: $42
    and b                                         ; $5b3f: $a0
    db $10                                        ; $5b40: $10
    ret nz                                        ; $5b41: $c0

    jp hl                                         ; $5b42: $e9


    add b                                         ; $5b43: $80
    rst $38                                       ; $5b44: $ff
    ld h, b                                       ; $5b45: $60
    sub c                                         ; $5b46: $91
    adc e                                         ; $5b47: $8b
    ld h, b                                       ; $5b48: $60
    ld d, $a9                                     ; $5b49: $16 $a9
    pop hl                                        ; $5b4b: $e1

jr_02e_5b4c:
    dec bc                                        ; $5b4c: $0b
    rst $38                                       ; $5b4d: $ff
    adc d                                         ; $5b4e: $8a
    daa                                           ; $5b4f: $27
    daa                                           ; $5b50: $27
    rrca                                          ; $5b51: $0f
    xor l                                         ; $5b52: $ad
    rra                                           ; $5b53: $1f
    sub $3f                                       ; $5b54: $d6 $3f
    ld sp, hl                                     ; $5b56: $f9
    ld a, l                                       ; $5b57: $7d
    and [hl]                                      ; $5b58: $a6
    add b                                         ; $5b59: $80
    ld d, b                                       ; $5b5a: $50
    daa                                           ; $5b5b: $27
    inc h                                         ; $5b5c: $24
    db $db                                        ; $5b5d: $db
    inc c                                         ; $5b5e: $0c
    rst $30                                       ; $5b5f: $f7
    ld [hl], $ff                                  ; $5b60: $36 $ff

jr_02e_5b62:
    rst $08                                       ; $5b62: $cf
    jr jr_02e_5b4c                                ; $5b63: $18 $e7

    sub $0f                                       ; $5b65: $d6 $0f
    ld e, c                                       ; $5b67: $59
    and [hl]                                      ; $5b68: $a6
    ld b, d                                       ; $5b69: $42
    rst $38                                       ; $5b6a: $ff
    rrca                                          ; $5b6b: $0f
    ei                                            ; $5b6c: $fb
    nop                                           ; $5b6d: $00
    inc e                                         ; $5b6e: $1c
    inc bc                                        ; $5b6f: $03
    cp a                                          ; $5b70: $bf

jr_02e_5b71:
    nop                                           ; $5b71: $00
    sbc c                                         ; $5b72: $99
    ld a, l                                       ; $5b73: $7d
    ld h, [hl]                                    ; $5b74: $66
    ld l, b                                       ; $5b75: $68
    ld hl, $c23d                                  ; $5b76: $21 $3d $c2
    jr jr_02e_5b62                                ; $5b79: $18 $e7

    add hl, de                                    ; $5b7b: $19
    ld h, b                                       ; $5b7c: $60
    inc h                                         ; $5b7d: $24
    ld a, $40                                     ; $5b7e: $3e $40
    add c                                         ; $5b80: $81
    ld d, [hl]                                    ; $5b81: $56
    xor c                                         ; $5b82: $a9
    ld [hl+], a                                   ; $5b83: $22
    rst $38                                       ; $5b84: $ff
    ld [hl], l                                    ; $5b85: $75
    ret nz                                        ; $5b86: $c0

    add h                                         ; $5b87: $84
    or b                                          ; $5b88: $b0
    and e                                         ; $5b89: $a3
    rst $38                                       ; $5b8a: $ff
    ld de, $1fef                                  ; $5b8b: $11 $ef $1f
    ldh [$3d], a                                  ; $5b8e: $e0 $3d
    rst $00                                       ; $5b90: $c7
    inc sp                                        ; $5b91: $33
    rst $08                                       ; $5b92: $cf
    ei                                            ; $5b93: $fb
    dec l                                         ; $5b94: $2d
    rst $10                                       ; $5b95: $d7
    db $10                                        ; $5b96: $10
    add l                                         ; $5b97: $85
    jr z, jr_02e_5b71                             ; $5b98: $28 $d7

    ld b, h                                       ; $5b9a: $44
    ei                                            ; $5b9b: $fb
    or h                                          ; $5b9c: $b4
    rst $38                                       ; $5b9d: $ff
    rst $38                                       ; $5b9e: $ff
    ret nc                                        ; $5b9f: $d0

    rst $38                                       ; $5ba0: $ff
    rst $28                                       ; $5ba1: $ef
    jr @-$23                                      ; $5ba2: $18 $db

    inc l                                         ; $5ba4: $2c
    rst $10                                       ; $5ba5: $d7
    rst $38                                       ; $5ba6: $ff
    inc l                                         ; $5ba7: $2c
    rst $28                                       ; $5ba8: $ef
    inc a                                         ; $5ba9: $3c
    sub l                                         ; $5baa: $95
    ld l, [hl]                                    ; $5bab: $6e
    sbc e                                         ; $5bac: $9b
    ld b, [hl]                                    ; $5bad: $46

jr_02e_5bae:
    rst $18                                       ; $5bae: $df
    rst $38                                       ; $5baf: $ff
    ld l, [hl]                                    ; $5bb0: $6e
    ld a, [bc]                                    ; $5bb1: $0a
    rst $10                                       ; $5bb2: $d7

jr_02e_5bb3:
    dec e                                         ; $5bb3: $1d
    add e                                         ; $5bb4: $83
    adc a                                         ; $5bb5: $8f
    rst $10                                       ; $5bb6: $d7
    cp l                                          ; $5bb7: $bd
    ld a, a                                       ; $5bb8: $7f
    ld a, [hl]                                    ; $5bb9: $7e
    rst $28                                       ; $5bba: $ef
    jr c, @+$01                                   ; $5bbb: $38 $ff

    jr z, jr_02e_5bae                             ; $5bbd: $28 $ef

    ld a, $51                                     ; $5bbf: $3e $51
    ld h, b                                       ; $5bc1: $60
    rst $38                                       ; $5bc2: $ff
    ld e, $18                                     ; $5bc3: $1e $18
    rst $38                                       ; $5bc5: $ff
    inc e                                         ; $5bc6: $1c
    rst $28                                       ; $5bc7: $ef
    inc d                                         ; $5bc8: $14
    rst $28                                       ; $5bc9: $ef
    inc l                                         ; $5bca: $2c
    rst $38                                       ; $5bcb: $ff

jr_02e_5bcc:
    rst $38                                       ; $5bcc: $ff
    ld d, $ef                                     ; $5bcd: $16 $ef
    ld a, [de]                                    ; $5bcf: $1a
    rst $00                                       ; $5bd0: $c7
    ld e, [hl]                                    ; $5bd1: $5e
    rst $28                                       ; $5bd2: $ef
    dec bc                                        ; $5bd3: $0b
    cp $e0                                        ; $5bd4: $fe $e0
    ld [c], a                                     ; $5bd6: $e2
    ld a, [hl]                                    ; $5bd7: $7e
    rst $38                                       ; $5bd8: $ff
    jr z, @+$01                                   ; $5bd9: $28 $ff

    jr c, jr_02e_5bcc                             ; $5bdb: $38 $ef

    ld l, $fe                                     ; $5bdd: $2e $fe
    pop hl                                        ; $5bdf: $e1
    pop hl                                        ; $5be0: $e1
    rst $38                                       ; $5be1: $ff
    jr nz, jr_02e_5bb3                            ; $5be2: $20 $cf

    or [hl]                                       ; $5be4: $b6
    dec hl                                        ; $5be5: $2b
    db $ed                                        ; $5be6: $ed
    cp d                                          ; $5be7: $ba
    ld e, a                                       ; $5be8: $5f
    dec sp                                        ; $5be9: $3b
    rst $18                                       ; $5bea: $df
    halt                                          ; $5beb: $76
    rst $18                                       ; $5bec: $df
    ld d, h                                       ; $5bed: $54
    ld c, b                                       ; $5bee: $48
    jr nz, jr_02e_5c1b                            ; $5bef: $20 $2a

    sub b                                         ; $5bf1: $90
    ldh [$7f], a                                  ; $5bf2: $e0 $7f
    sbc $7f                                       ; $5bf4: $de $7f
    add hl, hl                                    ; $5bf6: $29
    cp $55                                        ; $5bf7: $fe $55
    rst $38                                       ; $5bf9: $ff
    cp [hl]                                       ; $5bfa: $be
    ld a, [hl]                                    ; $5bfb: $7e
    ldh [$bf], a                                  ; $5bfc: $e0 $bf
    xor d                                         ; $5bfe: $aa
    rst $38                                       ; $5bff: $ff
    ret nz                                        ; $5c00: $c0

    rst $38                                       ; $5c01: $ff
    sbc b                                         ; $5c02: $98
    ld h, a                                       ; $5c03: $67
    and b                                         ; $5c04: $a0
    ld h, c                                       ; $5c05: $61
    ld e, b                                       ; $5c06: $58
    db $f4                                        ; $5c07: $f4
    sub b                                         ; $5c08: $90
    ld b, $50                                     ; $5c09: $06 $50
    ld l, e                                       ; $5c0b: $6b
    dec hl                                        ; $5c0c: $2b
    sub b                                         ; $5c0d: $90
    ld l, b                                       ; $5c0e: $68
    inc a                                         ; $5c0f: $3c
    inc bc                                        ; $5c10: $03
    add h                                         ; $5c11: $84
    ld [hl], e                                    ; $5c12: $73
    rst $28                                       ; $5c13: $ef
    or h                                          ; $5c14: $b4
    db $eb                                        ; $5c15: $eb
    and e                                         ; $5c16: $a3
    ld c, h                                       ; $5c17: $4c
    or b                                          ; $5c18: $b0
    pop hl                                        ; $5c19: $e1
    ld a, [hl-]                                   ; $5c1a: $3a

jr_02e_5c1b:
    rst $18                                       ; $5c1b: $df
    rst $30                                       ; $5c1c: $f7
    ld a, a                                       ; $5c1d: $7f
    ld e, [hl]                                    ; $5c1e: $5e
    push de                                       ; $5c1f: $d5
    ld a, [hl]                                    ; $5c20: $7e
    db $dd                                        ; $5c21: $dd
    ld a, a                                       ; $5c22: $7f
    ei                                            ; $5c23: $fb
    ld l, $88                                     ; $5c24: $2e $88
    inc bc                                        ; $5c26: $03
    rst $38                                       ; $5c27: $ff
    add hl, de                                    ; $5c28: $19
    rst $20                                       ; $5c29: $e7
    rla                                           ; $5c2a: $17
    xor $3f                                       ; $5c2b: $ee $3f
    ret z                                         ; $5c2d: $c8

    cpl                                           ; $5c2e: $2f
    ret c                                         ; $5c2f: $d8

    rst $10                                       ; $5c30: $d7
    rra                                           ; $5c31: $1f
    ldh a, [$fd]                                  ; $5c32: $f0 $fd
    ld [$da00], a                                 ; $5c34: $ea $00 $da
    ld e, [hl]                                    ; $5c37: $5e
    nop                                           ; $5c38: $00
    xor a                                         ; $5c39: $af
    cp $bf                                        ; $5c3a: $fe $bf
    rst $18                                       ; $5c3c: $df
    ld hl, sp+$6f                                 ; $5c3d: $f8 $6f
    ld hl, sp-$21                                 ; $5c3f: $f8 $df
    ldh a, [$03]                                  ; $5c41: $f0 $03
    ld h, b                                       ; $5c43: $60
    inc a                                         ; $5c44: $3c
    cp $66                                        ; $5c45: $fe $66
    ld h, c                                       ; $5c47: $61
    ccf                                           ; $5c48: $3f
    jp $c73e                                      ; $5c49: $c3 $3e $c7


    db $dd                                        ; $5c4c: $dd
    cpl                                           ; $5c4d: $2f
    jp c, Jump_000_2ffd                           ; $5c4e: $da $fd $2f

jr_02e_5c51:
    ldh a, [$e5]                                  ; $5c51: $f0 $e5
    dec a                                         ; $5c53: $3d
    jp $c73c                                      ; $5c54: $c3 $3c $c7


    ret nc                                        ; $5c57: $d0

    cpl                                           ; $5c58: $2f
    rst $38                                       ; $5c59: $ff
    ret c                                         ; $5c5a: $d8

    cpl                                           ; $5c5b: $2f
    jr nc, jr_02e_5c51                            ; $5c5c: $30 $f3

    ld d, h                                       ; $5c5e: $54
    pop bc                                        ; $5c5f: $c1
    xor d                                         ; $5c60: $aa
    add b                                         ; $5c61: $80
    ei                                            ; $5c62: $fb
    sbc $80                                       ; $5c63: $de $80
    and d                                         ; $5c65: $a2
    ld b, c                                       ; $5c66: $41
    ld a, $81                                     ; $5c67: $3e $81
    inc c                                         ; $5c69: $0c
    jp $f2b5                                      ; $5c6a: $c3 $b5 $f2


    or h                                          ; $5c6d: $b4
    ld c, [hl]                                    ; $5c6e: $4e
    ld a, a                                       ; $5c6f: $7f
    db $fc                                        ; $5c70: $fc
    db $e4                                        ; $5c71: $e4
    or $e3                                        ; $5c72: $f6 $e3
    jr @-$17                                      ; $5c74: $18 $e7

    dec a                                         ; $5c76: $3d
    jp nz, Jump_000_39ff                          ; $5c77: $c2 $ff $39

    call nz, $e817                                ; $5c7a: $c4 $17 $e8
    daa                                           ; $5c7d: $27
    ret nc                                        ; $5c7e: $d0

    rrca                                          ; $5c7f: $0f
    ldh [$bf], a                                  ; $5c80: $e0 $bf
    cp a                                          ; $5c82: $bf
    ld b, b                                       ; $5c83: $40
    ccf                                           ; $5c84: $3f
    add b                                         ; $5c85: $80
    cp $ff                                        ; $5c86: $fe $ff
    rst $20                                       ; $5c88: $e7
    add b                                         ; $5c89: $80
    cp $fe                                        ; $5c8a: $fe $fe

jr_02e_5c8c:
    adc d                                         ; $5c8c: $8a
    jr nz, jr_02e_5c8c                            ; $5c8d: $20 $fd

    ei                                            ; $5c8f: $fb
    ldh a, [$fd]                                  ; $5c90: $f0 $fd
    cp $f9                                        ; $5c92: $fe $f9
    rst $38                                       ; $5c94: $ff
    db $ed                                        ; $5c95: $ed
    ld a, a                                       ; $5c96: $7f
    cp $e0                                        ; $5c97: $fe $e0
    rst $38                                       ; $5c99: $ff
    ld a, a                                       ; $5c9a: $7f
    or b                                          ; $5c9b: $b0
    ld bc, $ef1f                                  ; $5c9c: $01 $1f $ef
    ld a, a                                       ; $5c9f: $7f
    cp $90                                        ; $5ca0: $fe $90
    nop                                           ; $5ca2: $00
    db $f4                                        ; $5ca3: $f4
    ei                                            ; $5ca4: $fb
    jp hl                                         ; $5ca5: $e9


    or $ef                                        ; $5ca6: $f6 $ef
    ret nz                                        ; $5ca8: $c0

    ld a, [c]                                     ; $5ca9: $f2
    rst $38                                       ; $5caa: $ff
    ld sp, hl                                     ; $5cab: $f9
    db $e3                                        ; $5cac: $e3
    rst $38                                       ; $5cad: $ff
    ret nc                                        ; $5cae: $d0

    rst $28                                       ; $5caf: $ef
    add l                                         ; $5cb0: $85
    jp c, $fbbb                                   ; $5cb1: $da $bb $fb

    inc b                                         ; $5cb4: $04
    xor a                                         ; $5cb5: $af
    ld d, b                                       ; $5cb6: $50
    nop                                           ; $5cb7: $00
    add a                                         ; $5cb8: $87
    ld a, e                                       ; $5cb9: $7b
    rst $18                                       ; $5cba: $df
    cp a                                          ; $5cbb: $bf
    rst $30                                       ; $5cbc: $f7
    cp $c8                                        ; $5cbd: $fe $c8
    and b                                         ; $5cbf: $a0
    ld d, a                                       ; $5cc0: $57
    db $fd                                        ; $5cc1: $fd
    xor c                                         ; $5cc2: $a9
    ld a, [hl]                                    ; $5cc3: $7e
    call $f3e3                                    ; $5cc4: $cd $e3 $f3
    ei                                            ; $5cc7: $fb
    rst $30                                       ; $5cc8: $f7
    or $a4                                        ; $5cc9: $f6 $a4
    add b                                         ; $5ccb: $80
    rst $38                                       ; $5ccc: $ff
    cp $f5                                        ; $5ccd: $fe $f5
    cp $bf                                        ; $5ccf: $fe $bf
    rst $38                                       ; $5cd1: $ff
    ld [$fff4], a                                 ; $5cd2: $ea $f4 $ff
    jp $efbf                                      ; $5cd5: $c3 $bf $ef


    rst $18                                       ; $5cd8: $df
    rst $28                                       ; $5cd9: $ef
    jp nz, $e2ba                                  ; $5cda: $c2 $ba $e2

    ld e, a                                       ; $5cdd: $5f
    ld e, h                                       ; $5cde: $5c
    ret nz                                        ; $5cdf: $c0

    ld [hl], b                                    ; $5ce0: $70

jr_02e_5ce1:
    ld bc, $e0a1                                  ; $5ce1: $01 $a1 $e0
    ld e, b                                       ; $5ce4: $58
    jr nz, jr_02e_5ce1                            ; $5ce5: $20 $fa

    db $fd                                        ; $5ce7: $fd
    sbc a                                         ; $5ce8: $9f
    db $f4                                        ; $5ce9: $f4
    ei                                            ; $5cea: $fb
    rst $38                                       ; $5ceb: $ff
    cp $fb                                        ; $5cec: $fe $fb
    ld [hl], b                                    ; $5cee: $70
    ld [$0364], sp                                ; $5cef: $08 $64 $03
    di                                            ; $5cf2: $f3
    rst $38                                       ; $5cf3: $ff
    rst $38                                       ; $5cf4: $ff
    ld [$d8f7], a                                 ; $5cf5: $ea $f7 $d8
    rst $20                                       ; $5cf8: $e7
    db $fd                                        ; $5cf9: $fd
    ei                                            ; $5cfa: $fb
    rst $28                                       ; $5cfb: $ef
    rst $38                                       ; $5cfc: $ff
    rst $38                                       ; $5cfd: $ff
    set 7, a                                      ; $5cfe: $cb $ff
    and d                                         ; $5d00: $a2
    rst $18                                       ; $5d01: $df
    ld l, b                                       ; $5d02: $68
    sub a                                         ; $5d03: $97
    rst $38                                       ; $5d04: $ff
    db $e3                                        ; $5d05: $e3
    rst $38                                       ; $5d06: $ff
    rst $28                                       ; $5d07: $ef
    ld h, $00                                     ; $5d08: $26 $00
    jr c, jr_02e_5d0d                             ; $5d0a: $38 $01

    sbc [hl]                                      ; $5d0c: $9e

jr_02e_5d0d:
    pop hl                                        ; $5d0d: $e1
    ld l, c                                       ; $5d0e: $69
    rst $38                                       ; $5d0f: $ff
    db $d3                                        ; $5d10: $d3
    ld sp, hl                                     ; $5d11: $f9
    rst $28                                       ; $5d12: $ef
    sub e                                         ; $5d13: $93
    jr nz, @-$44                                  ; $5d14: $20 $ba

    ld [c], a                                     ; $5d16: $e2
    or $ff                                        ; $5d17: $f6 $ff
    xor [hl]                                      ; $5d19: $ae
    ei                                            ; $5d1a: $fb
    push af                                       ; $5d1b: $f5
    inc h                                         ; $5d1c: $24
    inc l                                         ; $5d1d: $2c
    nop                                           ; $5d1e: $00
    add [hl]                                      ; $5d1f: $86
    dec h                                         ; $5d20: $25
    rst $18                                       ; $5d21: $df
    ld [bc], a                                    ; $5d22: $02
    ld hl, $0a22                                  ; $5d23: $21 $22 $0a
    ei                                            ; $5d26: $fb
    inc sp                                        ; $5d27: $33
    ldh [$ee], a                                  ; $5d28: $e0 $ee
    add sp, -$11                                  ; $5d2a: $e8 $ef
    or a                                          ; $5d2c: $b7
    ld [c], a                                     ; $5d2d: $e2
    rra                                           ; $5d2e: $1f
    add c                                         ; $5d2f: $81
    inc sp                                        ; $5d30: $33
    ldh [$fe], a                                  ; $5d31: $e0 $fe
    rst $38                                       ; $5d33: $ff
    rst $28                                       ; $5d34: $ef
    sub e                                         ; $5d35: $93
    ei                                            ; $5d36: $fb
    ld d, b                                       ; $5d37: $50
    ld [bc], a                                    ; $5d38: $02
    add b                                         ; $5d39: $80
    add h                                         ; $5d3a: $84
    jp hl                                         ; $5d3b: $e9


    ld d, a                                       ; $5d3c: $57
    ld h, [hl]                                    ; $5d3d: $66
    ld [c], a                                     ; $5d3e: $e2
    db $fd                                        ; $5d3f: $fd
    rst $28                                       ; $5d40: $ef
    db $eb                                        ; $5d41: $eb
    ld a, h                                       ; $5d42: $7c
    adc a                                         ; $5d43: $8f
    nop                                           ; $5d44: $00
    or d                                          ; $5d45: $b2
    and $f7                                       ; $5d46: $e6 $f7
    cp l                                          ; $5d48: $bd
    ld h, d                                       ; $5d49: $62
    ld [$9e15], a                                 ; $5d4a: $ea $15 $9e
    jp hl                                         ; $5d4d: $e9


    sbc a                                         ; $5d4e: $9f
    rst $18                                       ; $5d4f: $df
    cp a                                          ; $5d50: $bf
    ld h, $dd                                     ; $5d51: $26 $dd
    rst $38                                       ; $5d53: $ff
    ld h, b                                       ; $5d54: $60
    nop                                           ; $5d55: $00
    adc d                                         ; $5d56: $8a
    jp hl                                         ; $5d57: $e9


    ld a, a                                       ; $5d58: $7f
    xor b                                         ; $5d59: $a8
    xor d                                         ; $5d5a: $aa
    ld h, b                                       ; $5d5b: $60
    db $f4                                        ; $5d5c: $f4
    dec b                                         ; $5d5d: $05
    inc [hl]                                      ; $5d5e: $34
    ld bc, $6aea                                  ; $5d5f: $01 $ea $6a
    db $ec                                        ; $5d62: $ec
    adc d                                         ; $5d63: $8a
    xor h                                         ; $5d64: $ac
    add b                                         ; $5d65: $80
    xor a                                         ; $5d66: $af
    ld [c], a                                     ; $5d67: $e2
    ld e, c                                       ; $5d68: $59
    add sp, -$51                                  ; $5d69: $e8 $af
    and b                                         ; $5d6b: $a0
    pop bc                                        ; $5d6c: $c1
    ld c, b                                       ; $5d6d: $48
    db $ec                                        ; $5d6e: $ec
    call z, $fde9                                 ; $5d6f: $cc $e9 $fd
    cp $54                                        ; $5d72: $fe $54
    rst $08                                       ; $5d74: $cf
    ei                                            ; $5d75: $fb
    add c                                         ; $5d76: $81
    rst $38                                       ; $5d77: $ff
    ld d, h                                       ; $5d78: $54
    adc h                                         ; $5d79: $8c
    add b                                         ; $5d7a: $80
    adc h                                         ; $5d7b: $8c
    db $e3                                        ; $5d7c: $e3
    ld b, b                                       ; $5d7d: $40
    cp a                                          ; $5d7e: $bf
    push de                                       ; $5d7f: $d5
    ld [$6022], sp                                ; $5d80: $08 $22 $60
    ld d, l                                       ; $5d83: $55
    ld b, h                                       ; $5d84: $44
    ld h, b                                       ; $5d85: $60
    ld a, [hl]                                    ; $5d86: $7e
    ld a, e                                       ; $5d87: $7b
    ld [c], a                                     ; $5d88: $e2
    nop                                           ; $5d89: $00
    rst $38                                       ; $5d8a: $ff
    dec e                                         ; $5d8b: $1d
    add h                                         ; $5d8c: $84
    ld a, d                                       ; $5d8d: $7a
    and b                                         ; $5d8e: $a0
    ld d, a                                       ; $5d8f: $57
    rst $38                                       ; $5d90: $ff
    cp l                                          ; $5d91: $bd
    ld a, [$7ec6]                                 ; $5d92: $fa $c6 $7e
    pop hl                                        ; $5d95: $e1
    or h                                          ; $5d96: $b4
    jp Jump_000_2d4e                              ; $5d97: $c3 $4e $2d


    db $ed                                        ; $5d9a: $ed
    push af                                       ; $5d9b: $f5
    rst $38                                       ; $5d9c: $ff
    cp a                                          ; $5d9d: $bf
    cp c                                          ; $5d9e: $b9
    push hl                                       ; $5d9f: $e5
    ccf                                           ; $5da0: $3f
    ldh [$aa], a                                  ; $5da1: $e0 $aa
    add hl, bc                                    ; $5da3: $09
    ldh [$7d], a                                  ; $5da4: $e0 $7d
    jp z, $ec09                                   ; $5da6: $ca $09 $ec

    xor a                                         ; $5da9: $af
    rst $38                                       ; $5daa: $ff
    ld d, d                                       ; $5dab: $52
    db $fd                                        ; $5dac: $fd
    xor d                                         ; $5dad: $aa
    ret c                                         ; $5dae: $d8

    ldh [$7c], a                                  ; $5daf: $e0 $7c
    ei                                            ; $5db1: $fb
    and c                                         ; $5db2: $a1
    inc e                                         ; $5db3: $1c
    db $e3                                        ; $5db4: $e3
    dec hl                                        ; $5db5: $2b
    push de                                       ; $5db6: $d5
    dec b                                         ; $5db7: $05
    ld a, [$d454]                                 ; $5db8: $fa $54 $d4
    pop hl                                        ; $5dbb: $e1
    ld e, h                                       ; $5dbc: $5c
    ld [$5ae2], a                                 ; $5dbd: $ea $e2 $5a
    pop bc                                        ; $5dc0: $c1
    ld l, [hl]                                    ; $5dc1: $6e
    cp e                                          ; $5dc2: $bb
    ld bc, $a016                                  ; $5dc3: $01 $16 $a0
    ld d, a                                       ; $5dc6: $57
    inc h                                         ; $5dc7: $24
    ld [c], a                                     ; $5dc8: $e2
    ld b, d                                       ; $5dc9: $42
    cp b                                          ; $5dca: $b8
    db $e3                                        ; $5dcb: $e3
    dec d                                         ; $5dcc: $15
    ld l, $e2                                     ; $5dcd: $2e $e2
    ldh [$e3], a                                  ; $5dcf: $e0 $e3
    ld d, [hl]                                    ; $5dd1: $56
    and b                                         ; $5dd2: $a0
    ld l, $e2                                     ; $5dd3: $2e $e2
    rst $28                                       ; $5dd5: $ef
    adc d                                         ; $5dd6: $8a
    add sp, -$31                                  ; $5dd7: $e8 $cf
    xor c                                         ; $5dd9: $a9
    cp $48                                        ; $5dda: $fe $48
    rst $30                                       ; $5ddc: $f7
    xor d                                         ; $5ddd: $aa
    db $e3                                        ; $5dde: $e3
    ld c, $e3                                     ; $5ddf: $0e $e3
    ld d, l                                       ; $5de1: $55
    rst $38                                       ; $5de2: $ff
    dec de                                        ; $5de3: $1b
    ld [de], a                                    ; $5de4: $12
    rst $28                                       ; $5de5: $ef
    call z, $ffe3                                 ; $5de6: $cc $e3 $ff
    rst $38                                       ; $5de9: $ff
    nop                                           ; $5dea: $00
    nop                                           ; $5deb: $00
    nop                                           ; $5dec: $00
    rst $38                                       ; $5ded: $ff
    call nz, Call_02e_46c5                        ; $5dee: $c4 $c5 $46
    add $c7                                       ; $5df1: $c6 $c7
    ret z                                         ; $5df3: $c8

    ret                                           ; $5df4: $c9


    jp z, $cbfb                                   ; $5df5: $ca $fb $cb

    call z, $e2f6                                 ; $5df8: $cc $f6 $e2
    ld b, [hl]                                    ; $5dfb: $46
    ld b, [hl]                                    ; $5dfc: $46
    ld b, [hl]                                    ; $5dfd: $46
    sbc c                                         ; $5dfe: $99
    ld [$94ff], sp                                ; $5dff: $08 $ff $94
    sub e                                         ; $5e02: $93
    sub d                                         ; $5e03: $92
    sub c                                         ; $5e04: $91
    sub c                                         ; $5e05: $91
    sub d                                         ; $5e06: $92
    sub d                                         ; $5e07: $92
    sub d                                         ; $5e08: $92
    pop hl                                        ; $5e09: $e1
    sub e                                         ; $5e0a: $93
    rst $38                                       ; $5e0b: $ff
    ldh [$f9], a                                  ; $5e0c: $e0 $f9
    ldh [$fd], a                                  ; $5e0e: $e0 $fd
    and $f0                                       ; $5e10: $e6 $f0
    ldh [$94], a                                  ; $5e12: $e0 $94
    sub h                                         ; $5e14: $94
    sub h                                         ; $5e15: $94
    rst $20                                       ; $5e16: $e7
    sub b                                         ; $5e17: $90
    sub b                                         ; $5e18: $90
    sub b                                         ; $5e19: $90
    ld a, [$e5e0]                                 ; $5e1a: $fa $e0 $e5
    db $e3                                        ; $5e1d: $e3
    sub c                                         ; $5e1e: $91
    sub c                                         ; $5e1f: $91
    call $ceff                                    ; $5e20: $cd $ff $ce
    rst $08                                       ; $5e23: $cf
    ld b, [hl]                                    ; $5e24: $46
    ret nc                                        ; $5e25: $d0

    pop de                                        ; $5e26: $d1
    jp nc, $d4d3                                  ; $5e27: $d2 $d3 $d4

    add c                                         ; $5e2a: $81
    ld b, [hl]                                    ; $5e2b: $46
    or $e1                                        ; $5e2c: $f6 $e1
    rst $38                                       ; $5e2e: $ff
    pop hl                                        ; $5e2f: $e1
    ret nz                                        ; $5e30: $c0

    db $e4                                        ; $5e31: $e4
    cp a                                          ; $5e32: $bf
    ld [c], a                                     ; $5e33: $e2
    jp nz, $bfe9                                  ; $5e34: $c2 $e9 $bf

    pop af                                        ; $5e37: $f1
    sub c                                         ; $5e38: $91
    ld bc, $8591                                  ; $5e39: $01 $91 $85
    rst $20                                       ; $5e3c: $e7
    ld a, e                                       ; $5e3d: $7b
    ld [c], a                                     ; $5e3e: $e2
    add b                                         ; $5e3f: $80
    push hl                                       ; $5e40: $e5
    cp a                                          ; $5e41: $bf
    db $e4                                        ; $5e42: $e4
    sbc l                                         ; $5e43: $9d
    ld [c], a                                     ; $5e44: $e2
    cp $e5                                        ; $5e45: $fe $e5
    ld a, [hl]                                    ; $5e47: $7e
    xor $78                                       ; $5e48: $ee $78
    ld h, h                                       ; $5e4a: $64
    pop hl                                        ; $5e4b: $e1
    add l                                         ; $5e4c: $85
    and $7b                                       ; $5e4d: $e6 $7b
    db $e3                                        ; $5e4f: $e3
    db $dd                                        ; $5e50: $dd
    sbc $46                                       ; $5e51: $de $46
    sbc e                                         ; $5e53: $9b
    ld b, b                                       ; $5e54: $40
    ldh [rP1], a                                  ; $5e55: $e0 $00
    and l                                         ; $5e57: $a5
    ld [c], a                                     ; $5e58: $e2
    jp nz, $bfeb                                  ; $5e59: $c2 $eb $bf

    xor $23                                       ; $5e5c: $ee $23
    db $e3                                        ; $5e5e: $e3
    nop                                           ; $5e5f: $00
    ld a, [c]                                     ; $5e60: $f2
    and h                                         ; $5e61: $a4
    pop hl                                        ; $5e62: $e1
    cp $c2                                        ; $5e63: $fe $c2
    adc c                                         ; $5e65: $89
    db $e4                                        ; $5e66: $e4
    ret c                                         ; $5e67: $d8

    ld [hl], a                                    ; $5e68: $77
    push hl                                       ; $5e69: $e5
    db $fc                                        ; $5e6a: $fc
    ret z                                         ; $5e6b: $c8

    db $fd                                        ; $5e6c: $fd
    jp $9393                                      ; $5e6d: $c3 $93 $93


    nop                                           ; $5e70: $00
    ldh a, [rSC]                                  ; $5e71: $f0 $02
    rrca                                          ; $5e73: $0f
    ld b, b                                       ; $5e74: $40
    pop hl                                        ; $5e75: $e1
    ret nz                                        ; $5e76: $c0

    cp $c2                                        ; $5e77: $fe $c2
    ld c, e                                       ; $5e79: $4b
    and $13                                       ; $5e7a: $e6 $13
    db $e4                                        ; $5e7c: $e4
    dec a                                         ; $5e7d: $3d
    and $bc                                       ; $5e7e: $e6 $bc
    add $93                                       ; $5e80: $c6 $93
    nop                                           ; $5e82: $00
    db $ed                                        ; $5e83: $ed
    rrca                                          ; $5e84: $0f
    cp [hl]                                       ; $5e85: $be
    cp a                                          ; $5e86: $bf
    sbc d                                         ; $5e87: $9a
    sub a                                         ; $5e88: $97
    cp a                                          ; $5e89: $bf
    ldh [$be], a                                  ; $5e8a: $e0 $be
    jp nz, $c2bb                                  ; $5e8c: $c2 $bb $c2

    adc e                                         ; $5e8f: $8b
    jp Jump_000_2de0                              ; $5e90: $c3 $e0 $2d


    db $e4                                        ; $5e93: $e4
    ld l, d                                       ; $5e94: $6a
    jp $e57f                                      ; $5e95: $c3 $7f $e5


    add sp, -$1f                                  ; $5e98: $e8 $e1
    nop                                           ; $5e9a: $00
    db $ec                                        ; $5e9b: $ec
    ld b, [hl]                                    ; $5e9c: $46
    ret nz                                        ; $5e9d: $c0

    pop bc                                        ; $5e9e: $c1
    rlca                                          ; $5e9f: $07
    ld b, [hl]                                    ; $5ea0: $46
    sbc d                                         ; $5ea1: $9a
    sub a                                         ; $5ea2: $97
    cp [hl]                                       ; $5ea3: $be
    push bc                                       ; $5ea4: $c5
    ld a, [hl-]                                   ; $5ea5: $3a
    ret nz                                        ; $5ea6: $c0

    ld d, c                                       ; $5ea7: $51
    and $7e                                       ; $5ea8: $e6 $7e
    and $7f                                       ; $5eaa: $e6 $7f
    push hl                                       ; $5eac: $e5
    adc h                                         ; $5ead: $8c
    cp [hl]                                       ; $5eae: $be
    db $e3                                        ; $5eaf: $e3
    nop                                           ; $5eb0: $00
    call $c3c2                                    ; $5eb1: $cd $c2 $c3
    cp $a3                                        ; $5eb4: $fe $a3
    ld [hl+], a                                   ; $5eb6: $22
    jp $e0c0                                      ; $5eb7: $c3 $c0 $e0


    sub h                                         ; $5eba: $94
    rra                                           ; $5ebb: $1f
    sub h                                         ; $5ebc: $94
    rrca                                          ; $5ebd: $0f
    dec c                                         ; $5ebe: $0d
    ld bc, $bf00                                  ; $5ebf: $01 $00 $bf
    and $7f                                       ; $5ec2: $e6 $7f
    push hl                                       ; $5ec4: $e5
    cp [hl]                                       ; $5ec5: $be
    ld [c], a                                     ; $5ec6: $e2
    ldh [$f5], a                                  ; $5ec7: $e0 $f5
    and b                                         ; $5ec9: $a0
    nop                                           ; $5eca: $00
    adc $7e                                       ; $5ecb: $ce $7e
    ret nz                                        ; $5ecd: $c0

    cp [hl]                                       ; $5ece: $be
    jp $c37c                                      ; $5ecf: $c3 $7c $c3


    sub e                                         ; $5ed2: $93
    sub h                                         ; $5ed3: $94
    rrca                                          ; $5ed4: $0f
    rra                                           ; $5ed5: $1f
    ld [bc], a                                    ; $5ed6: $02
    inc bc                                        ; $5ed7: $03
    inc b                                         ; $5ed8: $04
    rlca                                          ; $5ed9: $07
    rlca                                          ; $5eda: $07
    db $ec                                        ; $5edb: $ec
    pop bc                                        ; $5edc: $c1
    jp hl                                         ; $5edd: $e9


    and h                                         ; $5ede: $a4
    ld l, $e4                                     ; $5edf: $2e $e4
    ldh [$bf], a                                  ; $5ee1: $e0 $bf
    db $e3                                        ; $5ee3: $e3
    nop                                           ; $5ee4: $00
    call z, $a071                                 ; $5ee5: $cc $71 $a0
    cp [hl]                                       ; $5ee8: $be
    call nz, $c47c                                ; $5ee9: $c4 $7c $c4
    sub e                                         ; $5eec: $93
    sub h                                         ; $5eed: $94
    ld [$aac0], sp                                ; $5eee: $08 $c0 $aa
    and d                                         ; $5ef1: $a2
    xor e                                         ; $5ef2: $ab
    jp $a268                                      ; $5ef3: $c3 $68 $a2


    adc b                                         ; $5ef6: $88
    jp nz, $e401                                  ; $5ef7: $c2 $01 $e4

    nop                                           ; $5efa: $00
    xor $46                                       ; $5efb: $ee $46
    cp b                                          ; $5efd: $b8
    jp hl                                         ; $5efe: $e9


    cp c                                          ; $5eff: $b9
    rst $38                                       ; $5f00: $ff
    pop bc                                        ; $5f01: $c1
    rra                                           ; $5f02: $1f
    jp nz, $c192                                  ; $5f03: $c2 $92 $c1

    pop bc                                        ; $5f06: $c1
    sub h                                         ; $5f07: $94
    ld [$0f45], sp                                ; $5f08: $08 $45 $0f
    dec hl                                        ; $5f0b: $2b
    ld sp, $452b                                  ; $5f0c: $31 $2b $45
    cp a                                          ; $5f0f: $bf
    pop hl                                        ; $5f10: $e1
    ld a, [hl+]                                   ; $5f11: $2a
    push bc                                       ; $5f12: $c5
    cp a                                          ; $5f13: $bf
    jp hl                                         ; $5f14: $e9


    nop                                           ; $5f15: $00

jr_02e_5f16:
    xor [hl]                                      ; $5f16: $ae
    jp $bbba                                      ; $5f17: $c3 $ba $bb


    db $fd                                        ; $5f1a: $fd
    add c                                         ; $5f1b: $81
    ld c, $e1                                     ; $5f1c: $0e $e1
    inc b                                         ; $5f1e: $04
    and c                                         ; $5f1f: $a1
    ld c, $a0                                     ; $5f20: $0e $a0
    rrca                                          ; $5f22: $0f
    ld [bc], a                                    ; $5f23: $02
    ld a, a                                       ; $5f24: $7f
    ld a, [hl+]                                   ; $5f25: $2a
    jr nz, jr_02e_5f48                            ; $5f26: $20 $20

    ld a, [hl+]                                   ; $5f28: $2a
    ld b, l                                       ; $5f29: $45
    ld b, [hl]                                    ; $5f2a: $46
    ld b, $2a                                     ; $5f2b: $06 $2a
    push bc                                       ; $5f2d: $c5
    ld hl, sp-$0b                                 ; $5f2e: $f8 $f5
    add h                                         ; $5f30: $84
    add hl, hl                                    ; $5f31: $29
    jp $ac00                                      ; $5f32: $c3 $00 $ac


    push de                                       ; $5f35: $d5
    sub $bc                                       ; $5f36: $d6 $bc
    cp l                                          ; $5f38: $bd
    rst $10                                       ; $5f39: $d7
    rst $20                                       ; $5f3a: $e7
    ld b, [hl]                                    ; $5f3b: $46
    sbc e                                         ; $5f3c: $9b
    ld [bc], a                                    ; $5f3d: $02
    db $10                                        ; $5f3e: $10
    db $e3                                        ; $5f3f: $e3
    inc d                                         ; $5f40: $14
    jp Jump_000_020f                              ; $5f41: $c3 $0f $02


    ld l, $3f                                     ; $5f44: $2e $3f
    jr nz, jr_02e_5f6f                            ; $5f46: $20 $27

jr_02e_5f48:
    ld b, d                                       ; $5f48: $42
    ld b, [hl]                                    ; $5f49: $46
    dec b                                         ; $5f4a: $05
    ld c, $28                                     ; $5f4b: $0e $28
    xor c                                         ; $5f4d: $a9
    cp a                                          ; $5f4e: $bf
    push hl                                       ; $5f4f: $e5
    cp $85                                        ; $5f50: $fe $85
    adc d                                         ; $5f52: $8a
    ld b, [hl]                                    ; $5f53: $46
    ld b, [hl]                                    ; $5f54: $46
    ret c                                         ; $5f55: $d8

    reti                                          ; $5f56: $d9


    jp c, $dcdb                                   ; $5f57: $da $db $dc

    cp a                                          ; $5f5a: $bf
    sbc d                                         ; $5f5b: $9a
    sub a                                         ; $5f5c: $97
    xor b                                         ; $5f5d: $a8
    ld b, [hl]                                    ; $5f5e: $46
    ld [bc], a                                    ; $5f5f: $02
    dec c                                         ; $5f60: $0d
    rra                                           ; $5f61: $1f
    call nz, $ff90                                ; $5f62: $c4 $90 $ff
    nop                                           ; $5f65: $00
    ld bc, $b108                                  ; $5f66: $01 $08 $b1
    inc hl                                        ; $5f69: $23
    ld hl, $a842                                  ; $5f6a: $21 $42 $a8
    ld h, c                                       ; $5f6d: $61
    ld b, [hl]                                    ; $5f6e: $46

jr_02e_5f6f:
    jr z, jr_02e_5f16                             ; $5f6f: $28 $a5

    ld l, h                                       ; $5f71: $6c
    xor b                                         ; $5f72: $a8
    nop                                           ; $5f73: $00
    xor b                                         ; $5f74: $a8
    add h                                         ; $5f75: $84
    add c                                         ; $5f76: $81
    cp [hl]                                       ; $5f77: $be
    cp a                                          ; $5f78: $bf
    ld a, [hl]                                    ; $5f79: $7e
    add c                                         ; $5f7a: $81
    ccf                                           ; $5f7b: $3f
    sbc d                                         ; $5f7c: $9a
    sub a                                         ; $5f7d: $97
    ld b, [hl]                                    ; $5f7e: $46
    xor c                                         ; $5f7f: $a9
    xor b                                         ; $5f80: $a8
    ld b, [hl]                                    ; $5f81: $46
    adc e                                         ; $5f82: $8b
    pop bc                                        ; $5f83: $c1
    adc d                                         ; $5f84: $8a
    ret nz                                        ; $5f85: $c0

    cp $80                                        ; $5f86: $fe $80
    ret nz                                        ; $5f88: $c0

    inc b                                         ; $5f89: $04
    inc bc                                        ; $5f8a: $03
    add hl, sp                                    ; $5f8b: $39
    dec [hl]                                      ; $5f8c: $35
    inc a                                         ; $5f8d: $3c
    xor b                                         ; $5f8e: $a8
    xor c                                         ; $5f8f: $a9
    ldh [rBCPD], a                                ; $5f90: $e0 $69
    and d                                         ; $5f92: $a2
    xor b                                         ; $5f93: $a8
    and a                                         ; $5f94: $a7
    daa                                           ; $5f95: $27
    add h                                         ; $5f96: $84
    nop                                           ; $5f97: $00
    adc d                                         ; $5f98: $8a
    jp Jump_02e_46a0                              ; $5f99: $c3 $a0 $46


    sbc d                                         ; $5f9c: $9a
    sbc b                                         ; $5f9d: $98
    rra                                           ; $5f9e: $1f
    sub a                                         ; $5f9f: $97
    ld b, [hl]                                    ; $5fa0: $46
    xor b                                         ; $5fa1: $a8
    ld b, [hl]                                    ; $5fa2: $46
    xor c                                         ; $5fa3: $a9
    dec [hl]                                      ; $5fa4: $35
    add d                                         ; $5fa5: $82
    inc c                                         ; $5fa6: $0c
    ldh [$80], a                                  ; $5fa7: $e0 $80
    pop bc                                        ; $5fa9: $c1
    ccf                                           ; $5faa: $3f
    ld b, l                                       ; $5fab: $45
    ld a, [hl-]                                   ; $5fac: $3a
    dec [hl]                                      ; $5fad: $35
    ld a, [hl-]                                   ; $5fae: $3a
    xor c                                         ; $5faf: $a9
    ld b, [hl]                                    ; $5fb0: $46
    xor h                                         ; $5fb1: $ac
    call nz, $8caa                                ; $5fb2: $c4 $aa $8c
    jr z, jr_02e_5fb7                             ; $5fb5: $28 $00

jr_02e_5fb7:
    adc d                                         ; $5fb7: $8a
    jp $83a0                                      ; $5fb8: $c3 $a0 $83


    ldh [rDMA], a                                 ; $5fbb: $e0 $46
    jp nz, $a8e2                                  ; $5fbd: $c2 $e2 $a8

    db $fd                                        ; $5fc0: $fd
    pop hl                                        ; $5fc1: $e1
    inc c                                         ; $5fc2: $0c
    ldh [$7f], a                                  ; $5fc3: $e0 $7f
    rrca                                          ; $5fc5: $0f
    ld [bc], a                                    ; $5fc6: $02
    ld a, c                                       ; $5fc7: $79
    ld a, d                                       ; $5fc8: $7a
    ld h, [hl]                                    ; $5fc9: $66
    dec [hl]                                      ; $5fca: $35
    ld a, $b4                                     ; $5fcb: $3e $b4
    ldh [rP1], a                                  ; $5fcd: $e0 $00
    xor h                                         ; $5fcf: $ac
    jp nz, $86f5                                  ; $5fd0: $c2 $f5 $86

    jr z, @-$7a                                   ; $5fd3: $28 $84

    add l                                         ; $5fd5: $85
    ld l, c                                       ; $5fd6: $69
    ld b, e                                       ; $5fd7: $43
    add b                                         ; $5fd8: $80
    dec b                                         ; $5fd9: $05
    pop hl                                        ; $5fda: $e1
    add l                                         ; $5fdb: $85
    db $e3                                        ; $5fdc: $e3
    ld a, [hl]                                    ; $5fdd: $7e
    ldh [$fd], a                                  ; $5fde: $e0 $fd
    xor c                                         ; $5fe0: $a9
    ld a, [bc]                                    ; $5fe1: $0a
    pop bc                                        ; $5fe2: $c1
    ld [$7e79], sp                                ; $5fe3: $08 $79 $7e
    ld b, b                                       ; $5fe6: $40
    ld l, b                                       ; $5fe7: $68
    ld h, [hl]                                    ; $5fe8: $66
    rrca                                          ; $5fe9: $0f
    ld a, [hl-]                                   ; $5fea: $3a
    xor d                                         ; $5feb: $aa
    ld b, [hl]                                    ; $5fec: $46
    dec b                                         ; $5fed: $05
    ld [hl-], a                                   ; $5fee: $32
    ld [c], a                                     ; $5fef: $e2
    rlca                                          ; $5ff0: $07
    add [hl]                                      ; $5ff1: $86
    nop                                           ; $5ff2: $00
    pop af                                        ; $5ff3: $f1
    pop bc                                        ; $5ff4: $c1
    pop hl                                        ; $5ff5: $e1
    ret c                                         ; $5ff6: $d8

    dec b                                         ; $5ff7: $05
    ldh [$82], a                                  ; $5ff8: $e0 $82
    db $e3                                        ; $5ffa: $e3
    res 4, h                                      ; $5ffb: $cb $a4
    ld [$4080], sp                                ; $5ffd: $08 $80 $40
    ldh [rBCPS], a                                ; $6000: $e0 $68
    ld h, [hl]                                    ; $6002: $66
    jp $aa36                                      ; $6003: $c3 $36 $aa


    ld [hl-], a                                   ; $6006: $32
    pop hl                                        ; $6007: $e1
    push af                                       ; $6008: $f5
    add l                                         ; $6009: $85
    cp $e7                                        ; $600a: $fe $e7
    add l                                         ; $600c: $85
    adc d                                         ; $600d: $8a
    ld b, [hl]                                    ; $600e: $46
    sbc e                                         ; $600f: $9b
    ret nz                                        ; $6010: $c0

    add $c0                                       ; $6011: $c6 $c0
    dec b                                         ; $6013: $05
    ld [c], a                                     ; $6014: $e2
    nop                                           ; $6015: $00
    pop hl                                        ; $6016: $e1
    dec sp                                        ; $6017: $3b
    ret nz                                        ; $6018: $c0

    ld d, $60                                     ; $6019: $16 $60
    ret nz                                        ; $601b: $c0

    ldh [$aa], a                                  ; $601c: $e0 $aa
    add hl, sp                                    ; $601e: $39
    ccf                                           ; $601f: $3f
    dec [hl]                                      ; $6020: $35
    ld l, d                                       ; $6021: $6a
    dec [hl]                                      ; $6022: $35
    add hl, sp                                    ; $6023: $39
    ld b, [hl]                                    ; $6024: $46
    xor b                                         ; $6025: $a8
    ld a, $c0                                     ; $6026: $3e $c0
    ld [hl], d                                    ; $6028: $72
    ret nz                                        ; $6029: $c0

    add sp, -$7a                                  ; $602a: $e8 $86
    add l                                         ; $602c: $85
    ld a, a                                       ; $602d: $7f
    add e                                         ; $602e: $83
    add l                                         ; $602f: $85
    adc e                                         ; $6030: $8b
    sbc c                                         ; $6031: $99
    inc b                                         ; $6032: $04
    db $e3                                        ; $6033: $e3
    ld b, l                                       ; $6034: $45
    ld c, b                                       ; $6035: $48
    ld d, e                                       ; $6036: $53
    rst $18                                       ; $6037: $df
    ld b, l                                       ; $6038: $45
    ld b, [hl]                                    ; $6039: $46
    ld b, [hl]                                    ; $603a: $46
    ld [$d396], sp                                ; $603b: $08 $96 $d3
    pop hl                                        ; $603e: $e1
    ld [$9782], sp                                ; $603f: $08 $82 $97
    add e                                         ; $6042: $83
    ld b, [hl]                                    ; $6043: $46
    xor d                                         ; $6044: $aa
    ret nz                                        ; $6045: $c0

    ldh [$3e], a                                  ; $6046: $e0 $3e
    xor h                                         ; $6048: $ac
    ret nz                                        ; $6049: $c0

    and [hl]                                      ; $604a: $a6
    ld h, b                                       ; $604b: $60
    rrca                                          ; $604c: $0f
    ldh [rOCPS], a                                ; $604d: $e0 $6a
    ret nz                                        ; $604f: $c0

    db $fd                                        ; $6050: $fd
    jp hl                                         ; $6051: $e9


    add l                                         ; $6052: $85
    adc e                                         ; $6053: $8b
    ret nz                                        ; $6054: $c0

    ldh [$bc], a                                  ; $6055: $e0 $bc
    ld b, c                                       ; $6057: $41
    ld b, h                                       ; $6058: $44
    ld e, [hl]                                    ; $6059: $5e
    ld d, [hl]                                    ; $605a: $56
    ld a, l                                       ; $605b: $7d
    ld b, h                                       ; $605c: $44
    rst $08                                       ; $605d: $cf
    call nz, $0894                                ; $605e: $c4 $94 $08
    add h                                         ; $6061: $84
    adc c                                         ; $6062: $89
    ld b, [hl]                                    ; $6063: $46
    add b                                         ; $6064: $80
    ld [c], a                                     ; $6065: $e2
    ld a, [de]                                    ; $6066: $1a
    xor a                                         ; $6067: $af
    ret nz                                        ; $6068: $c0

    ld [$80b3], sp                                ; $6069: $08 $b3 $80
    sub a                                         ; $606c: $97
    sbc b                                         ; $606d: $98
    rst $38                                       ; $606e: $ff
    ld [$ed00], a                                 ; $606f: $ea $00 $ed
    add [hl]                                      ; $6072: $86
    pop bc                                        ; $6073: $c1
    ld l, a                                       ; $6074: $6f
    ld b, l                                       ; $6075: $45
    ld b, a                                       ; $6076: $47
    ld d, [hl]                                    ; $6077: $56
    dec l                                         ; $6078: $2d
    ld c, a                                       ; $6079: $4f
    and b                                         ; $607a: $a0
    dec b                                         ; $607b: $05
    db $10                                        ; $607c: $10
    inc a                                         ; $607d: $3c
    and b                                         ; $607e: $a0
    rst $38                                       ; $607f: $ff
    sub h                                         ; $6080: $94
    ld c, $05                                     ; $6081: $0e $05
    add d                                         ; $6083: $82
    add e                                         ; $6084: $83
    ld a, [hl-]                                   ; $6085: $3a
    ld l, h                                       ; $6086: $6c
    ld l, l                                       ; $6087: $6d
    dec hl                                        ; $6088: $2b
    ld a, [hl-]                                   ; $6089: $3a
    ld b, l                                       ; $608a: $45
    dec l                                         ; $608b: $2d
    ret nz                                        ; $608c: $c0

    ld b, $c1                                     ; $608d: $06 $c1
    ldh [$9a], a                                  ; $608f: $e0 $9a
    and b                                         ; $6091: $a0
    call nz, $c499                                ; $6092: $c4 $99 $c4
    or $85                                        ; $6095: $f6 $85
    ld c, d                                       ; $6097: $4a
    cp b                                          ; $6098: $b8
    cp c                                          ; $6099: $b9
    call nz, $a8a0                                ; $609a: $c4 $a0 $a8
    xor c                                         ; $609d: $a9
    ld b, l                                       ; $609e: $45
    ld d, [hl]                                    ; $609f: $56
    cp e                                          ; $60a0: $bb
    ld e, d                                       ; $60a1: $5a
    ld l, $4f                                     ; $60a2: $2e $4f

jr_02e_60a4:
    and b                                         ; $60a4: $a0

jr_02e_60a5:
    xor b                                         ; $60a5: $a8
    inc bc                                        ; $60a6: $03
    inc b                                         ; $60a7: $04
    ret nz                                        ; $60a8: $c0

    and c                                         ; $60a9: $a1
    ld b, $bf                                     ; $60aa: $06 $bf
    add h                                         ; $60ac: $84
    add l                                         ; $60ad: $85
    ld [hl], c                                    ; $60ae: $71
    ld [hl], b                                    ; $60af: $70
    ld l, [hl]                                    ; $60b0: $6e
    ld a, [hl-]                                   ; $60b1: $3a
    cpl                                           ; $60b2: $2f
    ldh [rDMA], a                                 ; $60b3: $e0 $46
    dec a                                         ; $60b5: $3d
    dec b                                         ; $60b6: $05
    pop bc                                        ; $60b7: $c1
    pop hl                                        ; $60b8: $e1
    cp b                                          ; $60b9: $b8
    cp c                                          ; $60ba: $b9
    db $dd                                        ; $60bb: $dd
    sbc $ca                                       ; $60bc: $de $ca

jr_02e_60be:
    daa                                           ; $60be: $27
    add l                                         ; $60bf: $85
    ld c, d                                       ; $60c0: $4a
    ld a, [$80c4]                                 ; $60c1: $fa $c4 $80
    sbc c                                         ; $60c4: $99
    add h                                         ; $60c5: $84
    and c                                         ; $60c6: $a1
    ld d, l                                       ; $60c7: $55
    ld d, l                                       ; $60c8: $55
    daa                                           ; $60c9: $27
    jr nz, @+$2f                                  ; $60ca: $20 $2d

    inc l                                         ; $60cc: $2c
    cp h                                          ; $60cd: $bc
    and c                                         ; $60ce: $a1
    ret nz                                        ; $60cf: $c0

    and e                                         ; $60d0: $a3
    add hl, sp                                    ; $60d1: $39
    dec [hl]                                      ; $60d2: $35
    rst $38                                       ; $60d3: $ff
    ldh [rLCDC], a                                ; $60d4: $e0 $40
    db $e3                                        ; $60d6: $e3
    inc hl                                        ; $60d7: $23
    sbc a                                         ; $60d8: $9f
    add e                                         ; $60d9: $83
    ldh a, [$ca]                                  ; $60da: $f0 $ca
    daa                                           ; $60dc: $27
    add l                                         ; $60dd: $85
    jr z, jr_02e_60a4                             ; $60de: $28 $c4

    add d                                         ; $60e0: $82
    cp [hl]                                       ; $60e1: $be
    jp nz, Jump_000_3945                          ; $60e2: $c2 $45 $39

    ld hl, $1126                                  ; $60e5: $21 $26 $11
    dec l                                         ; $60e8: $2d
    or e                                          ; $60e9: $b3
    ld hl, $80cc                                  ; $60ea: $21 $cc $80
    ret nz                                        ; $60ed: $c0

    push hl                                       ; $60ee: $e5
    add hl, sp                                    ; $60ef: $39
    and e                                         ; $60f0: $a3
    inc hl                                        ; $60f1: $23
    sbc a                                         ; $60f2: $9f
    add d                                         ; $60f3: $82
    ld c, a                                       ; $60f4: $4f
    jr z, jr_02e_610b                             ; $60f5: $28 $14

    add l                                         ; $60f7: $85
    jr z, jr_02e_60be                             ; $60f8: $28 $c4

    add d                                         ; $60fa: $82
    sbc e                                         ; $60fb: $9b
    ld a, h                                       ; $60fc: $7c
    ld hl, $4faa                                  ; $60fd: $21 $aa $4f
    and b                                         ; $6100: $a0
    db $10                                        ; $6101: $10
    ret nz                                        ; $6102: $c0

    jr c, jr_02e_60a5                             ; $6103: $38 $a0

    ld e, $74                                     ; $6105: $1e $74
    ld b, b                                       ; $6107: $40
    rrca                                          ; $6108: $0f
    ld [bc], a                                    ; $6109: $02
    ld b, l                                       ; $610a: $45

jr_02e_610b:
    ld [hl], $7f                                  ; $610b: $36 $7f
    ldh [$3f], a                                  ; $610d: $e0 $3f
    ldh [$6d], a                                  ; $610f: $e0 $6d
    and b                                         ; $6111: $a0
    add hl, bc                                    ; $6112: $09
    sbc c                                         ; $6113: $99
    sbc a                                         ; $6114: $9f
    add d                                         ; $6115: $82
    ld c, a                                       ; $6116: $4f
    daa                                           ; $6117: $27
    ret nc                                        ; $6118: $d0

    add l                                         ; $6119: $85
    ld a, [hl+]                                   ; $611a: $2a
    cp a                                          ; $611b: $bf
    and d                                         ; $611c: $a2
    ld b, c                                       ; $611d: $41
    ret nz                                        ; $611e: $c0

    ret nc                                        ; $611f: $d0

    ldh [$fa], a                                  ; $6120: $e0 $fa
    sub c                                         ; $6122: $91
    ld [c], a                                     ; $6123: $e2
    xor c                                         ; $6124: $a9
    ld a, a                                       ; $6125: $7f
    ld [c], a                                     ; $6126: $e2
    ld c, $05                                     ; $6127: $0e $05
    xor b                                         ; $6129: $a8
    ld a, [hl-]                                   ; $612a: $3a
    dec [hl]                                      ; $612b: $35
    ld b, b                                       ; $612c: $40
    cp [hl]                                       ; $612d: $be
    add b                                         ; $612e: $80
    xor d                                         ; $612f: $aa
    add c                                         ; $6130: $81
    pop bc                                        ; $6131: $c1
    jp nz, $294f                                  ; $6132: $c2 $4f $29

    add l                                         ; $6135: $85
    ld l, c                                       ; $6136: $69
    add c                                         ; $6137: $81
    add b                                         ; $6138: $80
    sbc c                                         ; $6139: $99
    pop bc                                        ; $613a: $c1
    and c                                         ; $613b: $a1
    sbc [hl]                                      ; $613c: $9e
    ret nc                                        ; $613d: $d0

    add b                                         ; $613e: $80
    ld h, d                                       ; $613f: $62
    ld a, d                                       ; $6140: $7a
    ld a, h                                       ; $6141: $7c
    ld a, l                                       ; $6142: $7d
    cp a                                          ; $6143: $bf
    add h                                         ; $6144: $84
    cp [hl]                                       ; $6145: $be
    ret nz                                        ; $6146: $c0

    xor c                                         ; $6147: $a9
    ld [$c1fe], sp                                ; $6148: $08 $fe $c1
    ld l, h                                       ; $614b: $6c
    add b                                         ; $614c: $80
    ld l, c                                       ; $614d: $69
    add b                                         ; $614e: $80
    sbc c                                         ; $614f: $99
    ld e, e                                       ; $6150: $5b
    add d                                         ; $6151: $82
    nop                                           ; $6152: $00
    ld a, [c]                                     ; $6153: $f2
    cp a                                          ; $6154: $bf
    and d                                         ; $6155: $a2
    add a                                         ; $6156: $87
    add b                                         ; $6157: $80
    rst $38                                       ; $6158: $ff
    xor b                                         ; $6159: $a8
    ld b, [hl]                                    ; $615a: $46
    add hl, sp                                    ; $615b: $39
    ld h, d                                       ; $615c: $62
    ld h, a                                       ; $615d: $67
    add hl, sp                                    ; $615e: $39
    xor d                                         ; $615f: $aa
    ld a, a                                       ; $6160: $7f

Call_02e_6161:
    add c                                         ; $6161: $81
    ld a, l                                       ; $6162: $7d
    inc a                                         ; $6163: $3c
    add b                                         ; $6164: $80
    dec c                                         ; $6165: $0d
    and d                                         ; $6166: $a2
    ld a, a                                       ; $6167: $7f
    ldh [rLCDC], a                                ; $6168: $e0 $40
    ldh [$67], a                                  ; $616a: $e0 $67
    and b                                         ; $616c: $a0
    inc hl                                        ; $616d: $23
    and b                                         ; $616e: $a0
    sbc e                                         ; $616f: $9b
    ldh a, [rNR34]                                ; $6170: $f0 $1e
    ld b, b                                       ; $6172: $40
    ld c, a                                       ; $6173: $4f
    add hl, bc                                    ; $6174: $09
    add l                                         ; $6175: $85
    add hl, bc                                    ; $6176: $09
    cp a                                          ; $6177: $bf
    and h                                         ; $6178: $a4
    xor c                                         ; $6179: $a9
    ld b, [hl]                                    ; $617a: $46
    add hl, sp                                    ; $617b: $39
    ld l, e                                       ; $617c: $6b
    ld a, a                                       ; $617d: $7f
    ld l, h                                       ; $617e: $6c
    ld a, [hl-]                                   ; $617f: $3a
    ld b, l                                       ; $6180: $45
    add e                                         ; $6181: $83
    ld l, l                                       ; $6182: $6d
    dec b                                         ; $6183: $05
    rrca                                          ; $6184: $0f
    ld d, d                                       ; $6185: $52
    and c                                         ; $6186: $a1
    cp [hl]                                       ; $6187: $be
    ld d, c                                       ; $6188: $51
    nop                                           ; $6189: $00
    ld b, $a9                                     ; $618a: $06 $a9
    ld a, [hl-]                                   ; $618c: $3a
    dec [hl]                                      ; $618d: $35
    ld a, $80                                     ; $618e: $3e $80
    pop hl                                        ; $6190: $e1
    ld b, [hl]                                    ; $6191: $46
    jp $99a9                                      ; $6192: $c3 $a9 $99


    ld e, $41                                     ; $6195: $1e $41
    nop                                           ; $6197: $00
    or $42                                        ; $6198: $f6 $42
    add d                                         ; $619a: $82
    db $10                                        ; $619b: $10
    add b                                         ; $619c: $80
    ld l, [hl]                                    ; $619d: $6e
    ld [hl], b                                    ; $619e: $70
    rst $18                                       ; $619f: $df
    ld [hl], c                                    ; $61a0: $71
    add [hl]                                      ; $61a1: $86
    add l                                         ; $61a2: $85
    add h                                         ; $61a3: $84
    ld b, $18                                     ; $61a4: $06 $18
    ld hl, $0190                                  ; $61a6: $21 $90 $01
    ld a, a                                       ; $61a9: $7f
    nop                                           ; $61aa: $00
    sub [hl]                                      ; $61ab: $96
    ld b, $a8                                     ; $61ac: $06 $a8
    add hl, sp                                    ; $61ae: $39
    dec [hl]                                      ; $61af: $35
    ld a, $e7                                     ; $61b0: $3e $e7

jr_02e_61b2:
    add e                                         ; $61b2: $83
    nop                                           ; $61b3: $00
    ret nz                                        ; $61b4: $c0

    and b                                         ; $61b5: $a0
    sbc h                                         ; $61b6: $9c
    nop                                           ; $61b7: $00
    nop                                           ; $61b8: $00
    call nc, $a1c2                                ; $61b9: $d4 $c2 $a1
    pop bc                                        ; $61bc: $c1
    jp $c150                                      ; $61bd: $c3 $50 $c1


    add h                                         ; $61c0: $84
    pop bc                                        ; $61c1: $c1
    ld a, h                                       ; $61c2: $7c
    ld h, b                                       ; $61c3: $60
    ccf                                           ; $61c4: $3f
    dec c                                         ; $61c5: $0d
    sub l                                         ; $61c6: $95
    ld c, $05                                     ; $61c7: $0e $05
    xor c                                         ; $61c9: $a9
    xor b                                         ; $61ca: $a8
    cp [hl]                                       ; $61cb: $be
    ld h, b                                       ; $61cc: $60
    ld h, $83                                     ; $61cd: $26 $83
    db $10                                        ; $61cf: $10
    ld a, a                                       ; $61d0: $7f
    and d                                         ; $61d1: $a2
    nop                                           ; $61d2: $00
    di                                            ; $61d3: $f3
    pop bc                                        ; $61d4: $c1
    add b                                         ; $61d5: $80
    ld b, c                                       ; $61d6: $41
    add b                                         ; $61d7: $80

Jump_02e_61d8:
    xor b                                         ; $61d8: $a8
    sub c                                         ; $61d9: $91
    ld h, b                                       ; $61da: $60
    ld d, b                                       ; $61db: $50
    pop bc                                        ; $61dc: $c1
    call nz, $ef64                                ; $61dd: $c4 $64 $ef
    ld a, l                                       ; $61e0: $7d
    inc bc                                        ; $61e1: $03
    inc b                                         ; $61e2: $04
    ld [bc], a                                    ; $61e3: $02
    ld l, h                                       ; $61e4: $6c
    and b                                         ; $61e5: $a0
    inc a                                         ; $61e6: $3c
    dec [hl]                                      ; $61e7: $35
    ld [hl], $60                                  ; $61e8: $36 $60
    push hl                                       ; $61ea: $e5
    ldh [$bd], a                                  ; $61eb: $e0 $bd
    and h                                         ; $61ed: $a4
    jp z, $85a8                                   ; $61ee: $ca $a8 $85

    ld a, [bc]                                    ; $61f1: $0a
    ld b, c                                       ; $61f2: $41
    add b                                         ; $61f3: $80
    ld b, [hl]                                    ; $61f4: $46
    xor c                                         ; $61f5: $a9
    ld bc, $bfe0                                  ; $61f6: $01 $e0 $bf
    dec [hl]                                      ; $61f9: $35
    jr c, jr_02e_6234                             ; $61fa: $38 $38

    dec [hl]                                      ; $61fc: $35
    inc a                                         ; $61fd: $3c
    ld a, [bc]                                    ; $61fe: $0a
    add l                                         ; $61ff: $85
    ld h, c                                       ; $6200: $61
    ld a, [hl]                                    ; $6201: $7e
    ld sp, hl                                     ; $6202: $f9
    ld b, e                                       ; $6203: $43
    cp c                                          ; $6204: $b9
    ret nz                                        ; $6205: $c0

    ld sp, $3960                                  ; $6206: $31 $60 $39
    ld h, d                                       ; $6209: $62
    ld h, e                                       ; $620a: $63
    ld h, [hl]                                    ; $620b: $66
    ld [hl], $a0                                  ; $620c: $36 $a0
    push hl                                       ; $620e: $e5
    ldh [$7d], a                                  ; $620f: $e0 $7d
    and e                                         ; $6211: $a3
    nop                                           ; $6212: $00
    call $0248                                    ; $6213: $cd $48 $02
    rst $00                                       ; $6216: $c7
    jr nz, jr_02e_61b2                            ; $6217: $20 $99

    sbc [hl]                                      ; $6219: $9e
    ld [c], a                                     ; $621a: $e2
    ld b, l                                       ; $621b: $45
    ld a, a                                       ; $621c: $7f
    ld c, b                                       ; $621d: $48
    ld c, [hl]                                    ; $621e: $4e
    ld c, c                                       ; $621f: $49
    ld d, d                                       ; $6220: $52
    ld a, [hl-]                                   ; $6221: $3a
    dec [hl]                                      ; $6222: $35
    ld a, [bc]                                    ; $6223: $0a
    pop bc                                        ; $6224: $c1
    pop hl                                        ; $6225: $e1
    rst $18                                       ; $6226: $df
    ld b, h                                       ; $6227: $44
    ld c, c                                       ; $6228: $49
    ld d, h                                       ; $6229: $54
    ld a, a                                       ; $622a: $7f
    ld a, l                                       ; $622b: $7d
    ld l, a                                       ; $622c: $6f
    and b                                         ; $622d: $a0
    ld a, [hl-]                                   ; $622e: $3a
    ld l, c                                       ; $622f: $69
    rlca                                          ; $6230: $07
    dec [hl]                                      ; $6231: $35
    ld l, b                                       ; $6232: $68
    ld h, [hl]                                    ; $6233: $66

jr_02e_6234:
    ld a, l                                       ; $6234: $7d
    add b                                         ; $6235: $80
    cp l                                          ; $6236: $bd
    and c                                         ; $6237: $a1
    ld e, h                                       ; $6238: $5c
    nop                                           ; $6239: $00
    nop                                           ; $623a: $00
    xor e                                         ; $623b: $ab
    ld a, [bc]                                    ; $623c: $0a
    inc hl                                        ; $623d: $23
    db $fc                                        ; $623e: $fc
    inc bc                                        ; $623f: $03
    and c                                         ; $6240: $a1
    sbc [hl]                                      ; $6241: $9e
    ld [c], a                                     ; $6242: $e2
    ld b, l                                       ; $6243: $45
    ld d, d                                       ; $6244: $52
    ld d, h                                       ; $6245: $54
    ld d, h                                       ; $6246: $54
    ld d, h                                       ; $6247: $54
    ld a, [hl-]                                   ; $6248: $3a
    rst $38                                       ; $6249: $ff
    ld a, [hl-]                                   ; $624a: $3a
    ld b, $06                                     ; $624b: $06 $06
    ld a, c                                       ; $624d: $79
    ld a, [hl]                                    ; $624e: $7e
    dec hl                                        ; $624f: $2b
    dec hl                                        ; $6250: $2b
    ld d, e                                       ; $6251: $53
    rst $38                                       ; $6252: $ff
    ld e, c                                       ; $6253: $59
    ld b, l                                       ; $6254: $45
    add c                                         ; $6255: $81
    ld b, [hl]                                    ; $6256: $46
    ld b, [hl]                                    ; $6257: $46
    ld b, d                                       ; $6258: $42
    ld h, d                                       ; $6259: $62
    halt                                          ; $625a: $76
    daa                                           ; $625b: $27
    dec [hl]                                      ; $625c: $35
    dec [hl]                                      ; $625d: $35
    ld l, d                                       ; $625e: $6a
    db $fd                                        ; $625f: $fd
    ret nz                                        ; $6260: $c0

    xor b                                         ; $6261: $a8
    ld b, b                                       ; $6262: $40
    sbc c                                         ; $6263: $99
    ld e, h                                       ; $6264: $5c
    nop                                           ; $6265: $00
    nop                                           ; $6266: $00
    xor a                                         ; $6267: $af
    db $ec                                        ; $6268: $ec
    inc bc                                        ; $6269: $03
    and l                                         ; $626a: $a5
    ld b, c                                       ; $626b: $41
    add c                                         ; $626c: $81
    scf                                           ; $626d: $37
    jr c, jr_02e_62b0                             ; $626e: $38 $40

    ldh [$39], a                                  ; $6270: $e0 $39
    ld [$bf05], sp                                ; $6272: $08 $05 $bf
    add b                                         ; $6275: $80
    ld b, d                                       ; $6276: $42
    daa                                           ; $6277: $27
    jr nz, jr_02e_62a9                            ; $6278: $20 $2f

    ld a, [hl+]                                   ; $627a: $2a
    ret nz                                        ; $627b: $c0

    pop hl                                        ; $627c: $e1
    ld b, b                                       ; $627d: $40
    dec b                                         ; $627e: $05
    ld l, c                                       ; $627f: $69
    cp l                                          ; $6280: $bd
    add b                                         ; $6281: $80
    ld l, d                                       ; $6282: $6a
    inc a                                         ; $6283: $3c
    add b                                         ; $6284: $80
    add b                                         ; $6285: $80
    ld [c], a                                     ; $6286: $e2
    ld e, h                                       ; $6287: $5c
    ld bc, $a57b                                  ; $6288: $01 $7b $a5
    nop                                           ; $628b: $00
    ld h, l                                       ; $628c: $65
    or h                                          ; $628d: $b4
    rst $00                                       ; $628e: $c7
    ld [hl+], a                                   ; $628f: $22
    pop bc                                        ; $6290: $c1
    ld h, d                                       ; $6291: $62
    xor c                                         ; $6292: $a9
    ret nz                                        ; $6293: $c0

    jp Jump_000_0840                              ; $6294: $c3 $40 $08


    rlca                                          ; $6297: $07
    add b                                         ; $6298: $80
    ld a, [hl+]                                   ; $6299: $2a
    rst $38                                       ; $629a: $ff
    inc l                                         ; $629b: $2c
    inc l                                         ; $629c: $2c
    ld a, [hl+]                                   ; $629d: $2a
    add e                                         ; $629e: $83
    ld l, l                                       ; $629f: $6d
    ld b, [hl]                                    ; $62a0: $46
    xor b                                         ; $62a1: $a8
    ld b, d                                       ; $62a2: $42
    rra                                           ; $62a3: $1f
    ld l, e                                       ; $62a4: $6b
    ld l, h                                       ; $62a5: $6c
    dec [hl]                                      ; $62a6: $35
    ld l, h                                       ; $62a7: $6c
    ld l, l                                       ; $62a8: $6d

jr_02e_62a9:
    cp l                                          ; $62a9: $bd
    add b                                         ; $62aa: $80
    jr z, @+$42                                   ; $62ab: $28 $40

    sbc $80                                       ; $62ad: $de $80
    ld b, b                                       ; $62af: $40

jr_02e_62b0:
    sub a                                         ; $62b0: $97
    ld b, b                                       ; $62b1: $40
    ld a, e                                       ; $62b2: $7b
    push bc                                       ; $62b3: $c5
    nop                                           ; $62b4: $00
    ld b, l                                       ; $62b5: $45
    jp nz, $1d65                                  ; $62b6: $c2 $65 $1d

    pop hl                                        ; $62b9: $e1
    sub b                                         ; $62ba: $90
    add e                                         ; $62bb: $83
    ld b, $07                                     ; $62bc: $06 $07
    add b                                         ; $62be: $80
    call $ff86                                    ; $62bf: $cd $86 $ff
    ldh [$85], a                                  ; $62c2: $e0 $85
    add h                                         ; $62c4: $84
    pop bc                                        ; $62c5: $c1
    ret nz                                        ; $62c6: $c0

    rst $28                                       ; $62c7: $ef
    and b                                         ; $62c8: $a0
    ld [hl], b                                    ; $62c9: $70
    ld l, [hl]                                    ; $62ca: $6e
    add b                                         ; $62cb: $80
    db $ed                                        ; $62cc: $ed
    ld h, b                                       ; $62cd: $60
    nop                                           ; $62ce: $00
    ld [c], a                                     ; $62cf: $e2
    jp z, Jump_000_3669                           ; $62d0: $ca $69 $36

    add [hl]                                      ; $62d3: $86
    inc bc                                        ; $62d4: $03
    and d                                         ; $62d5: $a2
    dec b                                         ; $62d6: $05
    ld b, b                                       ; $62d7: $40
    ret nz                                        ; $62d8: $c0

    ld b, b                                       ; $62d9: $40
    ld b, h                                       ; $62da: $44
    db $ed                                        ; $62db: $ed
    inc a                                         ; $62dc: $3c
    ld b, b                                       ; $62dd: $40
    jp nz, Jump_000_040f                          ; $62de: $c2 $0f $04

    ld a, l                                       ; $62e1: $7d
    ld hl, $0707                                  ; $62e2: $21 $07 $07
    inc b                                         ; $62e5: $04
    or a                                          ; $62e6: $b7
    inc bc                                        ; $62e7: $03
    ld b, [hl]                                    ; $62e8: $46
    ld a, $2e                                     ; $62e9: $3e $2e
    jp nz, $a845                                  ; $62eb: $c2 $45 $a8

    ld a, [hl]                                    ; $62ee: $7e
    pop bc                                        ; $62ef: $c1
    sbc c                                         ; $62f0: $99
    ld h, b                                       ; $62f1: $60
    jr @+$42                                      ; $62f2: $18 $40

    nop                                           ; $62f4: $00
    adc a                                         ; $62f5: $8f
    inc bc                                        ; $62f6: $03
    and l                                         ; $62f7: $a5
    add [hl]                                      ; $62f8: $86
    ld hl, $a2ff                                  ; $62f9: $21 $ff $a2
    inc a                                         ; $62fc: $3c
    ld b, h                                       ; $62fd: $44
    ld b, d                                       ; $62fe: $42
    ld b, c                                       ; $62ff: $41
    ld e, [hl]                                    ; $6300: $5e
    pop bc                                        ; $6301: $c1
    nop                                           ; $6302: $00
    ld bc, $1000                                  ; $6303: $01 $00 $10
    dec b                                         ; $6306: $05
    ret nz                                        ; $6307: $c0

    ld [c], a                                     ; $6308: $e2
    add hl, sp                                    ; $6309: $39
    ld l, d                                       ; $630a: $6a
    inc hl                                        ; $630b: $23
    inc b                                         ; $630c: $04
    nop                                           ; $630d: $00
    call nc, $c0eb                                ; $630e: $d4 $eb $c0
    sbc e                                         ; $6311: $9b
    adc h                                         ; $6312: $8c
    ld [hl+], a                                   ; $6313: $22
    ccf                                           ; $6314: $3f
    db $e4                                        ; $6315: $e4
    adc $20                                       ; $6316: $ce $20
    ld bc, $7f40                                  ; $6318: $01 $40 $7f
    nop                                           ; $631b: $00
    jp nz, Jump_000_00bf                          ; $631c: $c2 $bf $00

    ld b, $7e                                     ; $631f: $06 $7e
    ld h, d                                       ; $6321: $62
    ld l, $60                                     ; $6322: $2e $60
    nop                                           ; $6324: $00
    call nc, $e200                                ; $6325: $d4 $00 $e2
    db $dd                                        ; $6328: $dd
    sbc $28                                       ; $6329: $de $28
    add e                                         ; $632b: $83
    add c                                         ; $632c: $81
    jp c, Jump_000_3f82                           ; $632d: $da $82 $3f

    pop hl                                        ; $6330: $e1
    add hl, sp                                    ; $6331: $39
    rst $08                                       ; $6332: $cf
    jr nz, jr_02e_633d                            ; $6333: $20 $08

    db $d3                                        ; $6335: $d3
    ld hl, $20cd                                  ; $6336: $21 $cd $20
    ld l, e                                       ; $6339: $6b
    ld b, $44                                     ; $633a: $06 $44
    rst $38                                       ; $633c: $ff

jr_02e_633d:
    ld h, c                                       ; $633d: $61
    ld b, h                                       ; $633e: $44
    push hl                                       ; $633f: $e5
    ld [hl+], a                                   ; $6340: $22
    sub a                                         ; $6341: $97
    sbc d                                         ; $6342: $9a
    rst $10                                       ; $6343: $d7
    and b                                         ; $6344: $a0
    xor b                                         ; $6345: $a8
    nop                                           ; $6346: $00
    sub e                                         ; $6347: $93
    nop                                           ; $6348: $00
    pop hl                                        ; $6349: $e1
    pop bc                                        ; $634a: $c1
    ld [hl+], a                                   ; $634b: $22
    ld b, b                                       ; $634c: $40
    rrca                                          ; $634d: $0f
    ld h, b                                       ; $634e: $60
    xor d                                         ; $634f: $aa
    cp d                                          ; $6350: $ba
    nop                                           ; $6351: $00
    ld [$9609], sp                                ; $6352: $08 $09 $96
    sub c                                         ; $6355: $91
    jr nz, jr_02e_63d5                            ; $6356: $20 $7d

    ld b, c                                       ; $6358: $41
    xor d                                         ; $6359: $aa
    rst $38                                       ; $635a: $ff
    ret nz                                        ; $635b: $c0

    ld a, [hl]                                    ; $635c: $7e
    ld b, d                                       ; $635d: $42
    ret nz                                        ; $635e: $c0

    add c                                         ; $635f: $81
    jp c, $c040                                   ; $6360: $da $40 $c0

    nop                                           ; $6363: $00
    ldh a, [$e3]                                  ; $6364: $f0 $e3
    ld b, c                                       ; $6366: $41
    inc c                                         ; $6367: $0c
    ld [hl+], a                                   ; $6368: $22
    sbc e                                         ; $6369: $9b
    add b                                         ; $636a: $80
    rst $08                                       ; $636b: $cf
    ld b, c                                       ; $636c: $41
    ld [de], a                                    ; $636d: $12
    pop hl                                        ; $636e: $e1
    ld [bc], a                                    ; $636f: $02
    dec c                                         ; $6370: $0d
    ld b, $91                                     ; $6371: $06 $91
    ld [hl+], a                                   ; $6373: $22
    ld [$bf46], sp                                ; $6374: $08 $46 $bf
    pop bc                                        ; $6377: $c1
    ld a, a                                       ; $6378: $7f
    jr nz, jr_02e_63ba                            ; $6379: $20 $3f

    ld h, c                                       ; $637b: $61
    jp c, $0042                                   ; $637c: $da $42 $00

    rst $08                                       ; $637f: $cf
    nop                                           ; $6380: $00
    add d                                         ; $6381: $82
    ld h, c                                       ; $6382: $61
    ld [bc], a                                    ; $6383: $02
    ld b, e                                       ; $6384: $43
    nop                                           ; $6385: $00
    push hl                                       ; $6386: $e5
    ld a, [hl]                                    ; $6387: $7e
    jr nz, jr_02e_63c8                            ; $6388: $20 $3e

    ld b, l                                       ; $638a: $45
    ld a, $01                                     ; $638b: $3e $01
    ld b, c                                       ; $638d: $41
    pop hl                                        ; $638e: $e1
    add d                                         ; $638f: $82
    and c                                         ; $6390: $a1
    add b                                         ; $6391: $80
    rst $10                                       ; $6392: $d7

jr_02e_6393:
    and d                                         ; $6393: $a2
    halt                                          ; $6394: $76
    add d                                         ; $6395: $82
    nop                                           ; $6396: $00
    call z, $2341                                 ; $6397: $cc $41 $23
    ret nz                                        ; $639a: $c0

    nop                                           ; $639b: $00
    add b                                         ; $639c: $80
    ld b, b                                       ; $639d: $40
    rst $08                                       ; $639e: $cf
    ld b, b                                       ; $639f: $40
    inc a                                         ; $63a0: $3c
    jr jr_02e_6421                                ; $63a1: $18 $7e

    jr nz, jr_02e_6418                            ; $63a3: $20 $73

    ldh [rKEY1], a                                ; $63a5: $e0 $4d
    jr nz, jr_02e_63b7                            ; $63a7: $20 $0e

    dec b                                         ; $63a9: $05
    ld l, a                                       ; $63aa: $6f
    db $e3                                        ; $63ab: $e3
    add d                                         ; $63ac: $82
    add $00                                       ; $63ad: $c6 $00
    ld [hl], e                                    ; $63af: $73
    add b                                         ; $63b0: $80
    add d                                         ; $63b1: $82
    ld h, e                                       ; $63b2: $63
    sbc l                                         ; $63b3: $9d
    ld h, b                                       ; $63b4: $60
    sub b                                         ; $63b5: $90
    add b                                         ; $63b6: $80

jr_02e_63b7:
    cp [hl]                                       ; $63b7: $be
    ld b, [hl]                                    ; $63b8: $46
    ret nz                                        ; $63b9: $c0

jr_02e_63ba:
    ld b, e                                       ; $63ba: $43
    cpl                                           ; $63bb: $2f
    db $e3                                        ; $63bc: $e3
    ld h, $02                                     ; $63bd: $26 $02
    sbc e                                         ; $63bf: $9b
    ld b, b                                       ; $63c0: $40
    ld bc, $0061                                  ; $63c1: $01 $61 $00
    sub a                                         ; $63c4: $97
    db $dd                                        ; $63c5: $dd
    ld h, d                                       ; $63c6: $62
    cp l                                          ; $63c7: $bd

jr_02e_63c8:
    ld b, e                                       ; $63c8: $43
    adc [hl]                                      ; $63c9: $8e
    ld [hl+], a                                   ; $63ca: $22

jr_02e_63cb:
    ld a, l                                       ; $63cb: $7d
    ld h, d                                       ; $63cc: $62
    ld b, $ae                                     ; $63cd: $06 $ae
    and c                                         ; $63cf: $a1
    jr jr_02e_6393                                ; $63d0: $18 $c1

    push bc                                       ; $63d2: $c5
    db $db                                        ; $63d3: $db
    ld b, b                                       ; $63d4: $40

jr_02e_63d5:
    nop                                           ; $63d5: $00
    ld [hl], h                                    ; $63d6: $74
    db $dd                                        ; $63d7: $dd
    sbc $03                                       ; $63d8: $de $03
    ld b, d                                       ; $63da: $42
    db $fc                                        ; $63db: $fc
    and d                                         ; $63dc: $a2
    call Call_000_2600                            ; $63dd: $cd $00 $26
    ld c, [hl]                                    ; $63e0: $4e
    ld [hl+], a                                   ; $63e1: $22
    ld [bc], a                                    ; $63e2: $02
    dec c                                         ; $63e3: $0d
    cp e                                          ; $63e4: $bb
    nop                                           ; $63e5: $00
    cp $20                                        ; $63e6: $fe $20
    ld a, [hl-]                                   ; $63e8: $3a
    ld b, b                                       ; $63e9: $40
    ld bc, $6242                                  ; $63ea: $01 $42 $62
    ret nc                                        ; $63ed: $d0

    jp Jump_000_0081                              ; $63ee: $c3 $81 $00


    ld d, l                                       ; $63f1: $55
    cp a                                          ; $63f2: $bf
    call nz, $023d                                ; $63f3: $c4 $3d $02
    ld [hl], $8f                                  ; $63f6: $36 $8f
    inc hl                                        ; $63f8: $23
    inc bc                                        ; $63f9: $03
    inc b                                         ; $63fa: $04
    ld e, $3f                                     ; $63fb: $1e $3f
    ld h, b                                       ; $63fd: $60
    ld b, $46                                     ; $63fe: $06 $46
    add hl, sp                                    ; $6400: $39
    ld [hl], $43                                  ; $6401: $36 $43
    and b                                         ; $6403: $a0
    ld b, h                                       ; $6404: $44
    and e                                         ; $6405: $a3
    nop                                           ; $6406: $00
    ld d, a                                       ; $6407: $57
    jr nz, jr_02e_63cb                            ; $6408: $20 $c1

    ld [bc], a                                    ; $640a: $02
    nop                                           ; $640b: $00
    ld hl, $42bb                                  ; $640c: $21 $bb $42
    rst $08                                       ; $640f: $cf
    ld bc, $e4bd                                  ; $6410: $01 $bd $e4
    dec b                                         ; $6413: $05
    ld a, [c]                                     ; $6414: $f2
    pop hl                                        ; $6415: $e1
    ld h, $c1                                     ; $6416: $26 $c1

jr_02e_6418:
    ld b, b                                       ; $6418: $40
    rra                                           ; $6419: $1f
    db $e4                                        ; $641a: $e4
    nop                                           ; $641b: $00
    ld d, h                                       ; $641c: $54
    pop bc                                        ; $641d: $c1
    ld [bc], a                                    ; $641e: $02
    cp [hl]                                       ; $641f: $be
    and e                                         ; $6420: $a3

jr_02e_6421:
    db $fd                                        ; $6421: $fd
    pop af                                        ; $6422: $f1
    add h                                         ; $6423: $84
    ld h, h                                       ; $6424: $64
    ld b, [hl]                                    ; $6425: $46
    nop                                           ; $6426: $00
    db $f4                                        ; $6427: $f4
    ld e, $c1                                     ; $6428: $1e $c1
    ld [$4141], sp                                ; $642a: $08 $41 $41
    scf                                           ; $642d: $37
    scf                                           ; $642e: $37
    db $fc                                        ; $642f: $fc
    rst $28                                       ; $6430: $ef
    add h                                         ; $6431: $84
    ld h, h                                       ; $6432: $64
    dec sp                                        ; $6433: $3b
    ld b, b                                       ; $6434: $40
    ld a, h                                       ; $6435: $7c
    nop                                           ; $6436: $00
    or d                                          ; $6437: $b2
    cp [hl]                                       ; $6438: $be
    ld h, l                                       ; $6439: $65
    xor b                                         ; $643a: $a8
    xor b                                         ; $643b: $a8
    ld b, d                                       ; $643c: $42
    sbc [hl]                                      ; $643d: $9e
    ld h, h                                       ; $643e: $64
    rst $38                                       ; $643f: $ff
    ldh a, [$e3]                                  ; $6440: $f0 $e3
    sbc a                                         ; $6442: $9f
    ld b, d                                       ; $6443: $42
    add h                                         ; $6444: $84
    ld h, l                                       ; $6445: $65
    nop                                           ; $6446: $00
    dec [hl]                                      ; $6447: $35
    pop hl                                        ; $6448: $e1
    and e                                         ; $6449: $a3
    xor c                                         ; $644a: $a9
    xor c                                         ; $644b: $a9
    ld b, b                                       ; $644c: $40
    rst $18                                       ; $644d: $df
    ld l, c                                       ; $644e: $69
    sbc l                                         ; $644f: $9d
    dec [hl]                                      ; $6450: $35
    dec [hl]                                      ; $6451: $35
    sbc l                                         ; $6452: $9d
    db $fc                                        ; $6453: $fc
    db $ed                                        ; $6454: $ed
    ld l, d                                       ; $6455: $6a
    ld b, b                                       ; $6456: $40
    add b                                         ; $6457: $80
    jp nz, $84a2                                  ; $6458: $c2 $a2 $84

    ld h, d                                       ; $645b: $62
    nop                                           ; $645c: $00
    ld [hl-], a                                   ; $645d: $32
    ld l, d                                       ; $645e: $6a
    ld h, c                                       ; $645f: $61
    cp $43                                        ; $6460: $fe $43
    ld [de], a                                    ; $6462: $12
    ld h, c                                       ; $6463: $61
    db $fd                                        ; $6464: $fd
    xor $6a                                       ; $6465: $ee $6a
    ret c                                         ; $6467: $d8

    add b                                         ; $6468: $80
    ld [c], a                                     ; $6469: $e2
    add l                                         ; $646a: $85
    jr z, jr_02e_646d                             ; $646b: $28 $00

jr_02e_646d:
    ld c, a                                       ; $646d: $4f
    cp [hl]                                       ; $646e: $be
    cp a                                          ; $646f: $bf
    cp $a2                                        ; $6470: $fe $a2
    xor c                                         ; $6472: $a9
    ld l, e                                       ; $6473: $6b
    add l                                         ; $6474: $85
    ld [hl], c                                    ; $6475: $71
    rst $38                                       ; $6476: $ff
    ldh a, [$6d]                                  ; $6477: $f0 $6d
    add b                                         ; $6479: $80
    db $e3                                        ; $647a: $e3
    add l                                         ; $647b: $85
    rlca                                          ; $647c: $07
    nop                                           ; $647d: $00
    inc l                                         ; $647e: $2c
    or $a0                                        ; $647f: $f6 $a0
    ret nz                                        ; $6481: $c0

    db $fd                                        ; $6482: $fd
    pop bc                                        ; $6483: $c1
    cp l                                          ; $6484: $bd
    add d                                         ; $6485: $82
    ld b, l                                       ; $6486: $45
    scf                                           ; $6487: $37
    dec a                                         ; $6488: $3d
    jr c, jr_02e_64c3                             ; $6489: $38 $38

    dec a                                         ; $648b: $3d
    ld a, [bc]                                    ; $648c: $0a
    db $fc                                        ; $648d: $fc
    db $ed                                        ; $648e: $ed
    scf                                           ; $648f: $37
    or b                                          ; $6490: $b0
    and b                                         ; $6491: $a0
    sbc e                                         ; $6492: $9b
    jp c, $0021                                   ; $6493: $da $21 $00

    call nc, Call_000_002c                        ; $6496: $d4 $2c $00
    ld h, a                                       ; $6499: $67
    ld b, b                                       ; $649a: $40
    ld c, $be                                     ; $649b: $0e $be
    inc b                                         ; $649d: $04
    ld b, e                                       ; $649e: $43
    ld b, e                                       ; $649f: $43
    ld b, l                                       ; $64a0: $45
    db $fc                                        ; $64a1: $fc
    db $ed                                        ; $64a2: $ed
    inc bc                                        ; $64a3: $03
    add [hl]                                      ; $64a4: $86
    nop                                           ; $64a5: $00
    inc [hl]                                      ; $64a6: $34
    ld a, e                                       ; $64a7: $7b
    ld b, c                                       ; $64a8: $41
    sub d                                         ; $64a9: $92
    cp h                                          ; $64aa: $bc
    ld bc, $ff98                                  ; $64ab: $01 $98 $ff
    push hl                                       ; $64ae: $e5
    ld [hl], h                                    ; $64af: $74
    ld [bc], a                                    ; $64b0: $02
    sub a                                         ; $64b1: $97
    pop af                                        ; $64b2: $f1
    and $e8                                       ; $64b3: $e6 $e8
    ldh [$9a], a                                  ; $64b5: $e0 $9a
    nop                                           ; $64b7: $00
    inc bc                                        ; $64b8: $03
    add e                                         ; $64b9: $83
    nop                                           ; $64ba: $00
    ld a, [c]                                     ; $64bb: $f2
    ld a, e                                       ; $64bc: $7b
    ret z                                         ; $64bd: $c8

    rst $08                                       ; $64be: $cf
    and h                                         ; $64bf: $a4
    ld a, [c]                                     ; $64c0: $f2
    add d                                         ; $64c1: $82
    db $ed                                        ; $64c2: $ed

jr_02e_64c3:
    add h                                         ; $64c3: $84
    cp h                                          ; $64c4: $bc
    and h                                         ; $64c5: $a4
    inc bc                                        ; $64c6: $03
    add h                                         ; $64c7: $84
    nop                                           ; $64c8: $00
    nop                                           ; $64c9: $00
    xor b                                         ; $64ca: $a8
    nop                                           ; $64cb: $00
    nop                                           ; $64cc: $00
    nop                                           ; $64cd: $00
    ccf                                           ; $64ce: $3f
    ld c, $0e                                     ; $64cf: $0e $0e
    dec c                                         ; $64d1: $0d
    dec c                                         ; $64d2: $0d
    dec c                                         ; $64d3: $0d
    ld c, $ff                                     ; $64d4: $0e $ff
    db $e3                                        ; $64d6: $e3
    or $e0                                        ; $64d7: $f6 $e0
    rst $18                                       ; $64d9: $df
    ld c, l                                       ; $64da: $4d
    ld c, l                                       ; $64db: $4d
    dec c                                         ; $64dc: $0d
    ld c, l                                       ; $64dd: $4d
    inc c                                         ; $64de: $0c
    rst $38                                       ; $64df: $ff
    ei                                            ; $64e0: $fb

Jump_02e_64e1:
    ld c, h                                       ; $64e1: $4c
    ld c, h                                       ; $64e2: $4c
    ld hl, $de4c                                  ; $64e3: $21 $4c $de
    add sp, -$37                                  ; $64e6: $e8 $c9
    pop hl                                        ; $64e8: $e1
    jp $bfe3                                      ; $64e9: $c3 $e3 $bf


    pop hl                                        ; $64ec: $e1
    ld c, l                                       ; $64ed: $4d
    ret nz                                        ; $64ee: $c0

    rst $38                                       ; $64ef: $ff
    cp a                                          ; $64f0: $bf
    db $ec                                        ; $64f1: $ec
    ret nz                                        ; $64f2: $c0

    add l                                         ; $64f3: $85
    rst $20                                       ; $64f4: $e7
    ld a, e                                       ; $64f5: $7b
    ld [c], a                                     ; $64f6: $e2
    ret nz                                        ; $64f7: $c0

    rst $38                                       ; $64f8: $ff
    ld a, [hl]                                    ; $64f9: $7e
    db $ec                                        ; $64fa: $ec
    add l                                         ; $64fb: $85
    and $3e                                       ; $64fc: $e6 $3e
    push hl                                       ; $64fe: $e5
    dec c                                         ; $64ff: $0d
    dec c                                         ; $6500: $0d
    nop                                           ; $6501: $00
    ret nz                                        ; $6502: $c0

    cp $3d                                        ; $6503: $fe $3d
    jp hl                                         ; $6505: $e9


    nop                                           ; $6506: $00
    rst $38                                       ; $6507: $ff
    db $fc                                        ; $6508: $fc
    db $d3                                        ; $6509: $d3
    nop                                           ; $650a: $00
    ld hl, sp-$20                                 ; $650b: $f8 $e0
    jp z, $fd3e                                   ; $650d: $ca $3e $fd

    nop                                           ; $6510: $00
    db $ec                                        ; $6511: $ec
    add l                                         ; $6512: $85
    dec l                                         ; $6513: $2d
    db $fd                                        ; $6514: $fd
    ret nz                                        ; $6515: $c0

    dec l                                         ; $6516: $2d
    cp a                                          ; $6517: $bf
    rst $38                                       ; $6518: $ff
    ld a, a                                       ; $6519: $7f
    rst $20                                       ; $651a: $e7
    nop                                           ; $651b: $00
    db $ec                                        ; $651c: $ec
    ret nz                                        ; $651d: $c0

    pop hl                                        ; $651e: $e1
    ld c, l                                       ; $651f: $4d
    ld bc, $512d                                  ; $6520: $01 $2d $51
    rst $30                                       ; $6523: $f7
    dec sp                                        ; $6524: $3b
    ret z                                         ; $6525: $c8

    ld a, [hl-]                                   ; $6526: $3a
    jp $ec00                                      ; $6527: $c3 $00 $ec


    add b                                         ; $652a: $80
    ldh [$fb], a                                  ; $652b: $e0 $fb
    ret nz                                        ; $652d: $c0

    ld b, d                                       ; $652e: $42
    db $eb                                        ; $652f: $eb
    rrca                                          ; $6530: $0f
    ld l, h                                       ; $6531: $6c
    ld c, h                                       ; $6532: $4c
    inc l                                         ; $6533: $2c
    inc l                                         ; $6534: $2c
    ld l, [hl]                                    ; $6535: $6e
    rst $28                                       ; $6536: $ef
    cp [hl]                                       ; $6537: $be
    pop hl                                        ; $6538: $e1
    push af                                       ; $6539: $f5
    and b                                         ; $653a: $a0
    nop                                           ; $653b: $00

Jump_02e_653c:
    sla a                                         ; $653c: $cb $27
    dec l                                         ; $653e: $2d
    dec l                                         ; $653f: $2d
    dec l                                         ; $6540: $2d
    cp e                                          ; $6541: $bb
    pop bc                                        ; $6542: $c1
    pop bc                                        ; $6543: $c1
    db $eb                                        ; $6544: $eb
    ld l, h                                       ; $6545: $6c
    push de                                       ; $6546: $d5
    ld [c], a                                     ; $6547: $e2
    cp a                                          ; $6548: $bf
    db $f4                                        ; $6549: $f4
    jr jr_02e_654c                                ; $654a: $18 $00

jr_02e_654c:
    call z, $a1bc                                 ; $654c: $cc $bc $a1
    cp [hl]                                       ; $654f: $be
    call z, Call_02e_4b2c                         ; $6550: $cc $2c $4b
    rst $38                                       ; $6553: $ff
    pop hl                                        ; $6554: $e1
    db $ec                                        ; $6555: $ec
    push de                                       ; $6556: $d5
    nop                                           ; $6557: $00
    call z, Call_02e_4deb                         ; $6558: $cc $eb $4d
    ld c, l                                       ; $655b: $4d
    ld a, d                                       ; $655c: $7a
    and c                                         ; $655d: $a1
    dec l                                         ; $655e: $2d
    ld c, $e9                                     ; $655f: $0e $e9
    inc l                                         ; $6561: $2c
    dec hl                                        ; $6562: $2b
    dec bc                                        ; $6563: $0b
    rlca                                          ; $6564: $07
    dec bc                                        ; $6565: $0b
    dec hl                                        ; $6566: $2b
    dec bc                                        ; $6567: $0b
    cp a                                          ; $6568: $bf
    push af                                       ; $6569: $f5
    nop                                           ; $656a: $00
    call z, $a1f4                                 ; $656b: $cc $f4 $a1
    rst $38                                       ; $656e: $ff
    pop bc                                        ; $656f: $c1
    ld c, $e8                                     ; $6570: $0e $e8
    rla                                           ; $6572: $17
    inc l                                         ; $6573: $2c
    inc l                                         ; $6574: $2c
    ld c, e                                       ; $6575: $4b
    cp a                                          ; $6576: $bf
    ld [c], a                                     ; $6577: $e2
    ld l, h                                       ; $6578: $6c
    add b                                         ; $6579: $80
    push af                                       ; $657a: $f5
    nop                                           ; $657b: $00
    jp hl                                         ; $657c: $e9


    ret nz                                        ; $657d: $c0

    db $e3                                        ; $657e: $e3
    add hl, bc                                    ; $657f: $09
    dec c                                         ; $6580: $0d
    call c, $c289                                 ; $6581: $dc $89 $c2
    ret nz                                        ; $6584: $c0

    ld l, e                                       ; $6585: $6b
    ret nz                                        ; $6586: $c0

    ld [c], a                                     ; $6587: $e2
    ld a, [hl+]                                   ; $6588: $2a
    jp nc, $e985                                  ; $6589: $d2 $85 $e9

    ei                                            ; $658c: $fb
    and $c7                                       ; $658d: $e6 $c7
    ld l, l                                       ; $658f: $6d
    dec c                                         ; $6590: $0d
    ld l, e                                       ; $6591: $6b
    sbc e                                         ; $6592: $9b
    add [hl]                                      ; $6593: $86
    sub e                                         ; $6594: $93
    add b                                         ; $6595: $80
    cp $c0                                        ; $6596: $fe $c0
    ld l, e                                       ; $6598: $6b
    dec bc                                        ; $6599: $0b
    ld h, e                                       ; $659a: $63
    dec c                                         ; $659b: $0d
    ld c, e                                       ; $659c: $4b
    nop                                           ; $659d: $00
    ei                                            ; $659e: $fb
    ld b, h                                       ; $659f: $44
    push hl                                       ; $65a0: $e5
    pop bc                                        ; $65a1: $c1
    pop hl                                        ; $65a2: $e1
    ld l, e                                       ; $65a3: $6b
    dec c                                         ; $65a4: $0d
    cp a                                          ; $65a5: $bf
    pop hl                                        ; $65a6: $e1
    ld a, $1c                                     ; $65a7: $3e $1c
    call nz, $6c6c                                ; $65a9: $c4 $6c $6c
    ld l, h                                       ; $65ac: $6c
    dec hl                                        ; $65ad: $2b
    dec bc                                        ; $65ae: $0b
    xor $e0                                       ; $65af: $ee $e0
    ret nz                                        ; $65b1: $c0

    push de                                       ; $65b2: $d5
    jr nc, jr_02e_65b5                            ; $65b3: $30 $00

jr_02e_65b5:
    xor b                                         ; $65b5: $a8
    db $fd                                        ; $65b6: $fd
    add e                                         ; $65b7: $83
    pop bc                                        ; $65b8: $c1
    ldh [$fe], a                                  ; $65b9: $e0 $fe
    ldh [rOCPD], a                                ; $65bb: $e0 $6b
    dec bc                                        ; $65bd: $0b
    adc b                                         ; $65be: $88
    ret nz                                        ; $65bf: $c0

    inc c                                         ; $65c0: $0c
    pop hl                                        ; $65c1: $e1
    rlca                                          ; $65c2: $07
    inc l                                         ; $65c3: $2c
    ld c, e                                       ; $65c4: $4b
    dec hl                                        ; $65c5: $2b
    pop bc                                        ; $65c6: $c1
    ret nz                                        ; $65c7: $c0

    add c                                         ; $65c8: $81
    ldh [rBCPD], a                                ; $65c9: $e0 $69
    or d                                          ; $65cb: $b2
    nop                                           ; $65cc: $00
    adc d                                         ; $65cd: $8a
    or e                                          ; $65ce: $b3
    add c                                         ; $65cf: $81
    and a                                         ; $65d0: $a7
    ld l, l                                       ; $65d1: $6d
    ld l, e                                       ; $65d2: $6b
    ld l, e                                       ; $65d3: $6b
    jp nz, $bee1                                  ; $65d4: $c2 $e1 $be

    pop hl                                        ; $65d7: $e1
    dec c                                         ; $65d8: $0d
    inc c                                         ; $65d9: $0c
    pop hl                                        ; $65da: $e1
    ld l, h                                       ; $65db: $6c
    rlca                                          ; $65dc: $07
    ld l, h                                       ; $65dd: $6c
    dec c                                         ; $65de: $0d
    dec c                                         ; $65df: $0d

jr_02e_65e0:
    ld a, a                                       ; $65e0: $7f
    ret nz                                        ; $65e1: $c0

    or h                                          ; $65e2: $b4
    ldh [$ba], a                                  ; $65e3: $e0 $ba
    or c                                          ; $65e5: $b1
    nop                                           ; $65e6: $00
    xor $05                                       ; $65e7: $ee $05
    ldh [$64], a                                  ; $65e9: $e0 $64
    rst $38                                       ; $65eb: $ff
    db $e3                                        ; $65ec: $e3
    ret nz                                        ; $65ed: $c0

    pop hl                                        ; $65ee: $e1
    ld l, e                                       ; $65ef: $6b
    ld bc, $34c1                                  ; $65f0: $01 $c1 $34
    ldh [$0b], a                                  ; $65f3: $e0 $0b
    dec bc                                        ; $65f5: $0b
    ld bc, $20e0                                  ; $65f6: $01 $e0 $20
    cp c                                          ; $65f9: $b9
    and b                                         ; $65fa: $a0
    nop                                           ; $65fb: $00
    db $fd                                        ; $65fc: $fd
    add $c1                                       ; $65fd: $c6 $c1
    dec b                                         ; $65ff: $05
    ldh [$7e], a                                  ; $6600: $e0 $7e
    db $e4                                        ; $6602: $e4
    ld l, e                                       ; $6603: $6b
    pop bc                                        ; $6604: $c1
    pop hl                                        ; $6605: $e1
    ret nz                                        ; $6606: $c0

    ldh [rNR33], a                                ; $6607: $e0 $1d
    ld c, e                                       ; $6609: $4b
    inc [hl]                                      ; $660a: $34
    ldh [$0b], a                                  ; $660b: $e0 $0b
    dec hl                                        ; $660d: $2b
    dec c                                         ; $660e: $0d
    ld [hl-], a                                   ; $660f: $32
    db $e3                                        ; $6610: $e3
    and h                                         ; $6611: $a4
    adc l                                         ; $6612: $8d
    add l                                         ; $6613: $85
    adc d                                         ; $6614: $8a
    jr jr_02e_65e0                                ; $6615: $18 $c9

    ret nz                                        ; $6617: $c0

    ret nz                                        ; $6618: $c0

    add sp, -$7d                                  ; $6619: $e8 $83
    call nz, Call_02e_4b0d                        ; $661b: $c4 $0d $4b
    ld a, a                                       ; $661e: $7f
    ld [c], a                                     ; $661f: $e2
    db $fd                                        ; $6620: $fd
    ret nz                                        ; $6621: $c0

    ld a, $c0                                     ; $6622: $3e $c0
    ret c                                         ; $6624: $d8

    dec b                                         ; $6625: $05
    ld h, b                                       ; $6626: $60
    ld h, e                                       ; $6627: $63
    adc e                                         ; $6628: $8b
    add l                                         ; $6629: $85
    adc d                                         ; $662a: $8a
    dec c                                         ; $662b: $0d
    ld c, l                                       ; $662c: $4d
    inc b                                         ; $662d: $04
    db $e3                                        ; $662e: $e3
    dec hl                                        ; $662f: $2b
    ld a, [bc]                                    ; $6630: $0a
    dec hl                                        ; $6631: $2b
    ld l, d                                       ; $6632: $6a
    dec bc                                        ; $6633: $0b
    add d                                         ; $6634: $82
    db $e3                                        ; $6635: $e3
    ld c, h                                       ; $6636: $4c
    ld b, b                                       ; $6637: $40
    pop hl                                        ; $6638: $e1
    ld c, e                                       ; $6639: $4b
    rst $38                                       ; $663a: $ff
    ret nz                                        ; $663b: $c0

    cp $c0                                        ; $663c: $fe $c0
    ret nz                                        ; $663e: $c0

    ld a, $c2                                     ; $663f: $3e $c2
    di                                            ; $6641: $f3
    add e                                         ; $6642: $83
    ei                                            ; $6643: $fb
    rst $20                                       ; $6644: $e7
    add l                                         ; $6645: $85
    xor b                                         ; $6646: $a8
    ret nz                                        ; $6647: $c0

    db $e3                                        ; $6648: $e3
    ld bc, $0ae2                                  ; $6649: $01 $e2 $0a
    ld a, [bc]                                    ; $664c: $0a
    nop                                           ; $664d: $00
    ld c, e                                       ; $664e: $4b
    ldh [$cf], a                                  ; $664f: $e0 $cf
    jp $e1c0                                      ; $6651: $c3 $c0 $e1


    ld a, $a0                                     ; $6654: $3e $a0
    ld a, [hl]                                    ; $6656: $7e
    pop bc                                        ; $6657: $c1
    cp $a0                                        ; $6658: $fe $a0
    or d                                          ; $665a: $b2
    ret nz                                        ; $665b: $c0

jr_02e_665c:
    sbc h                                         ; $665c: $9c
    add b                                         ; $665d: $80
    ldh [$fd], a                                  ; $665e: $e0 $fd
    add sp, $00                                   ; $6660: $e8 $00
    rst $00                                       ; $6662: $c7
    ld b, l                                       ; $6663: $45
    ld h, b                                       ; $6664: $60
    ld b, $a0                                     ; $6665: $06 $a0
    add d                                         ; $6667: $82
    pop bc                                        ; $6668: $c1
    dec hl                                        ; $6669: $2b
    ld a, [bc]                                    ; $666a: $0a
    ld a, [bc]                                    ; $666b: $0a
    ld a, d                                       ; $666c: $7a
    ld c, l                                       ; $666d: $4d
    ret nz                                        ; $666e: $c0

    ld l, e                                       ; $666f: $6b
    rst $08                                       ; $6670: $cf
    jp $0c2c                                      ; $6671: $c3 $2c $0c


    dec c                                         ; $6674: $0d
    dec c                                         ; $6675: $0d
    ccf                                           ; $6676: $3f
    pop bc                                        ; $6677: $c1
    nop                                           ; $6678: $00
    ret nz                                        ; $6679: $c0

    pop hl                                        ; $667a: $e1
    push af                                       ; $667b: $f5
    and b                                         ; $667c: $a0
    sbc $c2                                       ; $667d: $de $c2
    ret nz                                        ; $667f: $c0

    ld [$4785], a                                 ; $6680: $ea $85 $47
    call nz, $bf80                                ; $6683: $c4 $80 $bf
    ldh [$c4], a                                  ; $6686: $e0 $c4
    and b                                         ; $6688: $a0
    dec b                                         ; $6689: $05
    ld a, [hl+]                                   ; $668a: $2a
    ret nz                                        ; $668b: $c0

    pop hl                                        ; $668c: $e1
    ld c, e                                       ; $668d: $4b
    ld a, [hl-]                                   ; $668e: $3a
    and l                                         ; $668f: $a5
    ld b, b                                       ; $6690: $40
    ret nz                                        ; $6691: $c0

    cp $a0                                        ; $6692: $fe $a0
    pop af                                        ; $6694: $f1
    and d                                         ; $6695: $a2
    pop bc                                        ; $6696: $c1
    ldh [rP1], a                                  ; $6697: $e0 $00
    sbc a                                         ; $6699: $9f
    add c                                         ; $669a: $81
    dec de                                        ; $669b: $1b
    and e                                         ; $669c: $a3
    jp z, $8544                                   ; $669d: $ca $44 $85

    ld c, b                                       ; $66a0: $48
    cp $c2                                        ; $66a1: $fe $c2
    ret nz                                        ; $66a3: $c0

    ld [c], a                                     ; $66a4: $e2
    ret nc                                        ; $66a5: $d0

    jp nz, $e03d                                  ; $66a6: $c2 $3d $e0

    nop                                           ; $66a9: $00
    ret nz                                        ; $66aa: $c0

    and e                                         ; $66ab: $a3
    pop bc                                        ; $66ac: $c1
    jp nz, $8239                                  ; $66ad: $c2 $39 $82

    rst $18                                       ; $66b0: $df
    add h                                         ; $66b1: $84
    jp z, Jump_02e_7bac                           ; $66b2: $ca $ac $7b

    ld b, d                                       ; $66b5: $42
    ld b, l                                       ; $66b6: $45
    ret nz                                        ; $66b7: $c0

    cp [hl]                                       ; $66b8: $be
    add $00                                       ; $66b9: $c6 $00
    pop de                                        ; $66bb: $d1
    and b                                         ; $66bc: $a0
    ld c, d                                       ; $66bd: $4a
    ret nz                                        ; $66be: $c0

    db $fd                                        ; $66bf: $fd
    ret nz                                        ; $66c0: $c0

    ld [bc], a                                    ; $66c1: $02
    and d                                         ; $66c2: $a2
    add c                                         ; $66c3: $81
    jp nz, $e3bf                                  ; $66c4: $c2 $bf $e3

    ret nz                                        ; $66c7: $c0

    rst $20                                       ; $66c8: $e7
    jp z, RST_28                                  ; $66c9: $ca $28 $00

    add l                                         ; $66cc: $85
    ld h, e                                       ; $66cd: $63
    dec b                                         ; $66ce: $05
    pop bc                                        ; $66cf: $c1
    ld [bc], a                                    ; $66d0: $02
    push bc                                       ; $66d1: $c5
    sub c                                         ; $66d2: $91
    and b                                         ; $66d3: $a0
    ld a, $a0                                     ; $66d4: $3e $a0
    ld b, a                                       ; $66d6: $47
    ret nz                                        ; $66d7: $c0

    ld d, h                                       ; $66d8: $54
    jr nz, jr_02e_665c                            ; $66d9: $20 $81

    add b                                         ; $66db: $80
    nop                                           ; $66dc: $00
    ccf                                           ; $66dd: $3f
    add b                                         ; $66de: $80
    cp [hl]                                       ; $66df: $be
    call nz, Call_02e_6161                        ; $66e0: $c4 $61 $61
    db $10                                        ; $66e3: $10
    ld b, h                                       ; $66e4: $44
    jp z, $8525                                   ; $66e5: $ca $25 $85

    ld b, [hl]                                    ; $66e8: $46
    ld b, h                                       ; $66e9: $44
    ld h, d                                       ; $66ea: $62
    add b                                         ; $66eb: $80
    and c                                         ; $66ec: $a1
    inc e                                         ; $66ed: $1c
    jp nc, $81c1                                  ; $66ee: $d2 $c1 $81

    ld [c], a                                     ; $66f1: $e2
    dec c                                         ; $66f2: $0d
    ld l, e                                       ; $66f3: $6b
    inc l                                         ; $66f4: $2c
    cp [hl]                                       ; $66f5: $be
    jp $a07e                                      ; $66f6: $c3 $7e $a0


    ld [hl-], a                                   ; $66f9: $32
    and b                                         ; $66fa: $a0
    ld [bc], a                                    ; $66fb: $02
    ld [hl], $c0                                  ; $66fc: $36 $c0
    ld c, l                                       ; $66fe: $4d
    adc h                                         ; $66ff: $8c
    add $00                                       ; $6700: $c6 $00
    xor $b4                                       ; $6702: $ee $b4
    jp nz, $c07c                                  ; $6704: $c2 $7c $c0

    ld b, b                                       ; $6707: $40
    and c                                         ; $6708: $a1
    ld d, b                                       ; $6709: $50
    and b                                         ; $670a: $a0
    add b                                         ; $670b: $80
    add hl, bc                                    ; $670c: $09
    ret nz                                        ; $670d: $c0

    or $80                                        ; $670e: $f6 $80
    ret nz                                        ; $6710: $c0

    pop hl                                        ; $6711: $e1
    cp [hl]                                       ; $6712: $be
    ret nz                                        ; $6713: $c0

    ld a, $a2                                     ; $6714: $3e $a2
    cp a                                          ; $6716: $bf
    ld [c], a                                     ; $6717: $e2
    ld c, [hl]                                    ; $6718: $4e
    pop bc                                        ; $6719: $c1
    dec l                                         ; $671a: $2d
    ld b, b                                       ; $671b: $40
    nop                                           ; $671c: $00
    ld a, [c]                                     ; $671d: $f2
    rst $38                                       ; $671e: $ff
    and e                                         ; $671f: $a3
    add hl, bc                                    ; $6720: $09
    and d                                         ; $6721: $a2
    pop de                                        ; $6722: $d1
    db $e3                                        ; $6723: $e3
    ld bc, $fea2                                  ; $6724: $01 $a2 $fe
    ld b, d                                       ; $6727: $42
    inc c                                         ; $6728: $0c
    cp [hl]                                       ; $6729: $be
    add b                                         ; $672a: $80
    sub b                                         ; $672b: $90
    add d                                         ; $672c: $82
    pop hl                                        ; $672d: $e1
    ld b, l                                       ; $672e: $45
    jp nz, $f400                                  ; $672f: $c2 $00 $f4

    cp a                                          ; $6732: $bf
    and a                                         ; $6733: $a7
    dec c                                         ; $6734: $0d
    ccf                                           ; $6735: $3f
    ldh [$ce], a                                  ; $6736: $e0 $ce
    add b                                         ; $6738: $80
    dec l                                         ; $6739: $2d
    and c                                         ; $673a: $a1
    dec c                                         ; $673b: $0d
    ld b, e                                       ; $673c: $43
    pop hl                                        ; $673d: $e1
    ld c, l                                       ; $673e: $4d
    and b                                         ; $673f: $a0
    ld d, c                                       ; $6740: $51
    nop                                           ; $6741: $00
    cp l                                          ; $6742: $bd
    add b                                         ; $6743: $80
    dec hl                                        ; $6744: $2b
    ld a, b                                       ; $6745: $78
    and c                                         ; $6746: $a1
    ld c, e                                       ; $6747: $4b
    add b                                         ; $6748: $80
    ld e, d                                       ; $6749: $5a
    db $e3                                        ; $674a: $e3
    nop                                           ; $674b: $00
    ld a, [c]                                     ; $674c: $f2
    push bc                                       ; $674d: $c5
    ld h, h                                       ; $674e: $64
    ld b, c                                       ; $674f: $41
    and c                                         ; $6750: $a1
    sub b                                         ; $6751: $90
    and c                                         ; $6752: $a1
    inc [hl]                                      ; $6753: $34
    ld b, b                                       ; $6754: $40
    ld b, e                                       ; $6755: $43
    db $e3                                        ; $6756: $e3
    inc l                                         ; $6757: $2c
    nop                                           ; $6758: $00
    ld [bc], a                                    ; $6759: $02
    ld b, b                                       ; $675a: $40
    ret nz                                        ; $675b: $c0

    db $e4                                        ; $675c: $e4
    halt                                          ; $675d: $76
    ld b, b                                       ; $675e: $40
    rst $38                                       ; $675f: $ff
    ret nz                                        ; $6760: $c0

    jp c, Jump_000_0024                           ; $6761: $da $24 $00

    ret nc                                        ; $6764: $d0

    add [hl]                                      ; $6765: $86
    ld h, c                                       ; $6766: $61
    pop bc                                        ; $6767: $c1
    call nz, $cf9c                                ; $6768: $c4 $9c $cf
    ret nz                                        ; $676b: $c0

    ld [de], a                                    ; $676c: $12
    and l                                         ; $676d: $a5
    inc l                                         ; $676e: $2c
    ld l, h                                       ; $676f: $6c
    ld c, h                                       ; $6770: $4c
    db $fd                                        ; $6771: $fd
    ld h, c                                       ; $6772: $61
    ret nz                                        ; $6773: $c0

    db $e3                                        ; $6774: $e3
    dec bc                                        ; $6775: $0b
    nop                                           ; $6776: $00
    cp [hl]                                       ; $6777: $be
    pop bc                                        ; $6778: $c1
    nop                                           ; $6779: $00
    db $f4                                        ; $677a: $f4
    jp Jump_02e_40a2                              ; $677b: $c3 $a2 $40


    add c                                         ; $677e: $81
    rst $10                                       ; $677f: $d7
    ld [c], a                                     ; $6780: $e2
    add l                                         ; $6781: $85
    ret nz                                        ; $6782: $c0

    call nz, $b461                                ; $6783: $c4 $61 $b4
    ld b, b                                       ; $6786: $40
    ld de, $866c                                  ; $6787: $11 $6c $86
    pop bc                                        ; $678a: $c1
    ccf                                           ; $678b: $3f
    pop hl                                        ; $678c: $e1
    ld a, [hl]                                    ; $678d: $7e
    pop hl                                        ; $678e: $e1
    ld l, e                                       ; $678f: $6b
    ld a, [bc]                                    ; $6790: $0a
    and l                                         ; $6791: $a5
    nop                                           ; $6792: $00
    rst $28                                       ; $6793: $ef
    ld b, c                                       ; $6794: $41
    add c                                         ; $6795: $81
    ld b, $05                                     ; $6796: $06 $05
    ld h, c                                       ; $6798: $61
    ld l, e                                       ; $6799: $6b
    ld c, e                                       ; $679a: $4b
    cp [hl]                                       ; $679b: $be
    ldh [$c4], a                                  ; $679c: $e0 $c4
    ld h, b                                       ; $679e: $60
    add l                                         ; $679f: $85
    ld h, d                                       ; $67a0: $62
    add hl, bc                                    ; $67a1: $09
    db $e3                                        ; $67a2: $e3
    cp [hl]                                       ; $67a3: $be
    add c                                         ; $67a4: $81
    add b                                         ; $67a5: $80
    ld a, $e3                                     ; $67a6: $3e $e3
    ret nz                                        ; $67a8: $c0

    pop hl                                        ; $67a9: $e1
    nop                                           ; $67aa: $00
    call Call_000_2049                            ; $67ab: $cd $49 $20
    rst $00                                       ; $67ae: $c7
    inc hl                                        ; $67af: $23
    jp $c162                                      ; $67b0: $c3 $62 $c1


    add b                                         ; $67b3: $80
    ld a, [bc]                                    ; $67b4: $0a
    rlca                                          ; $67b5: $07
    ld l, d                                       ; $67b6: $6a
    ld l, e                                       ; $67b7: $6b
    ld c, e                                       ; $67b8: $4b
    ld b, [hl]                                    ; $67b9: $46
    ld h, d                                       ; $67ba: $62
    ld [hl], $80                                  ; $67bb: $36 $80
    ld [hl], $c1                                  ; $67bd: $36 $c1
    xor $c2                                       ; $67bf: $ee $c2
    ld a, e                                       ; $67c1: $7b
    ld h, c                                       ; $67c2: $61
    ldh a, [$b3]                                  ; $67c3: $f0 $b3
    ld h, b                                       ; $67c5: $60
    nop                                           ; $67c6: $00
    rst $08                                       ; $67c7: $cf
    ld a, [bc]                                    ; $67c8: $0a
    inc hl                                        ; $67c9: $23
    ld [bc], a                                    ; $67ca: $02
    rst $00                                       ; $67cb: $c7
    ld a, [bc]                                    ; $67cc: $0a
    ld a, [hl+]                                   ; $67cd: $2a
    ld a, [bc]                                    ; $67ce: $0a
    ld a, [hl+]                                   ; $67cf: $2a
    inc bc                                        ; $67d0: $03
    dec hl                                        ; $67d1: $2b
    ld c, e                                       ; $67d2: $4b
    jp z, $c7c0                                   ; $67d3: $ca $c0 $c7

    add b                                         ; $67d6: $80
    ld [hl], $80                                  ; $67d7: $36 $80
    add [hl]                                      ; $67d9: $86
    ld h, b                                       ; $67da: $60
    pop bc                                        ; $67db: $c1
    db $e3                                        ; $67dc: $e3
    db $eb                                        ; $67dd: $eb
    and e                                         ; $67de: $a3
    ld h, b                                       ; $67df: $60
    add c                                         ; $67e0: $81
    add sp, $00                                   ; $67e1: $e8 $00
    xor d                                         ; $67e3: $aa
    ld bc, $5485                                  ; $67e4: $01 $85 $54
    pop hl                                        ; $67e7: $e1
    ld d, b                                       ; $67e8: $50
    add c                                         ; $67e9: $81
    inc c                                         ; $67ea: $0c
    ld c, h                                       ; $67eb: $4c
    ld c, d                                       ; $67ec: $4a
    db $e3                                        ; $67ed: $e3
    add b                                         ; $67ee: $80
    ld b, $40                                     ; $67ef: $06 $40
    cp $86                                        ; $67f1: $fe $86
    ret nz                                        ; $67f3: $c0

    push hl                                       ; $67f4: $e5
    ld a, e                                       ; $67f5: $7b
    xor e                                         ; $67f6: $ab
    nop                                           ; $67f7: $00
    ld b, [hl]                                    ; $67f8: $46
    ret nz                                        ; $67f9: $c0

    db $e3                                        ; $67fa: $e3
    ret nz                                        ; $67fb: $c0

    jp nz, Jump_000_000b                          ; $67fc: $c2 $0b $00

    pop de                                        ; $67ff: $d1
    jr nz, jr_02e_687f                            ; $6800: $20 $7d

    and c                                         ; $6802: $a1
    ret nc                                        ; $6803: $d0

    ret nz                                        ; $6804: $c0

    ld bc, $2fe5                                  ; $6805: $01 $e5 $2f
    ld b, c                                       ; $6808: $41
    ld b, b                                       ; $6809: $40
    ld [c], a                                     ; $680a: $e2
    ld a, $c1                                     ; $680b: $3e $c1
    ld a, e                                       ; $680d: $7b
    rst $00                                       ; $680e: $c7
    jr nc, jr_02e_6811                            ; $680f: $30 $00

jr_02e_6811:
    inc hl                                        ; $6811: $23
    inc bc                                        ; $6812: $03
    and e                                         ; $6813: $a3
    ld b, l                                       ; $6814: $45
    ld b, c                                       ; $6815: $41
    ret nz                                        ; $6816: $c0

    db $e4                                        ; $6817: $e4
    dec bc                                        ; $6818: $0b
    ld l, h                                       ; $6819: $6c
    rst $00                                       ; $681a: $c7
    ld h, b                                       ; $681b: $60
    xor $01                                       ; $681c: $ee $01
    ld bc, $ed2d                                  ; $681e: $01 $2d $ed
    ld h, b                                       ; $6821: $60
    pop bc                                        ; $6822: $c1
    jp nz, Jump_000_21fa                          ; $6823: $c2 $fa $21

    ret nz                                        ; $6826: $c0

    db $e3                                        ; $6827: $e3
    nop                                           ; $6828: $00
    pop de                                        ; $6829: $d1
    ld b, e                                       ; $682a: $43
    and l                                         ; $682b: $a5
    add l                                         ; $682c: $85
    jr nz, @+$06                                  ; $682d: $20 $04

    ld b, d                                       ; $682f: $42
    add c                                         ; $6830: $81
    ret nz                                        ; $6831: $c0

    ldh [$2c], a                                  ; $6832: $e0 $2c
    inc bc                                        ; $6834: $03
    and e                                         ; $6835: $a3
    ld a, a                                       ; $6836: $7f
    add c                                         ; $6837: $81
    ld b, c                                       ; $6838: $41
    and $c0                                       ; $6839: $e6 $c0
    jp nz, $9100                                  ; $683b: $c2 $00 $91

    sbc b                                         ; $683e: $98
    jp Jump_02e_4683                              ; $683f: $c3 $83 $46


    ld b, l                                       ; $6842: $45
    ret nz                                        ; $6843: $c0

    and b                                         ; $6844: $a0
    ld l, e                                       ; $6845: $6b
    dec bc                                        ; $6846: $0b
    ld d, l                                       ; $6847: $55
    ld b, h                                       ; $6848: $44
    add b                                         ; $6849: $80
    and b                                         ; $684a: $a0
    inc c                                         ; $684b: $0c
    nop                                           ; $684c: $00
    ld bc, $00e5                                  ; $684d: $01 $e5 $00
    ret c                                         ; $6850: $d8

    scf                                           ; $6851: $37
    ld [bc], a                                    ; $6852: $02
    ret                                           ; $6853: $c9


    inc h                                         ; $6854: $24
    ret nz                                        ; $6855: $c0

    pop hl                                        ; $6856: $e1
    inc bc                                        ; $6857: $03
    add e                                         ; $6858: $83
    dec bc                                        ; $6859: $0b
    inc h                                         ; $685a: $24
    cp $63                                        ; $685b: $fe $63
    ld b, b                                       ; $685d: $40
    ret nz                                        ; $685e: $c0

    and $00                                       ; $685f: $e6 $00
    sub b                                         ; $6861: $90
    dec a                                         ; $6862: $3d
    pop bc                                        ; $6863: $c1
    ld b, b                                       ; $6864: $40
    db $e3                                        ; $6865: $e3
    ret nz                                        ; $6866: $c0

    add c                                         ; $6867: $81
    ret nz                                        ; $6868: $c0

    db $e3                                        ; $6869: $e3
    dec bc                                        ; $686a: $0b
    dec a                                         ; $686b: $3d
    ld b, $19                                     ; $686c: $06 $19
    dec hl                                        ; $686e: $2b
    rst $38                                       ; $686f: $ff
    ld h, c                                       ; $6870: $61
    ld a, $a3                                     ; $6871: $3e $a3
    dec c                                         ; $6873: $0d
    ld l, l                                       ; $6874: $6d
    rst $10                                       ; $6875: $d7
    dec b                                         ; $6876: $05
    nop                                           ; $6877: $00
    ld l, [hl]                                    ; $6878: $6e
    ret nz                                        ; $6879: $c0

    db $e4                                        ; $687a: $e4
    nop                                           ; $687b: $00
    ld b, b                                       ; $687c: $40
    db $e3                                        ; $687d: $e3
    cp h                                          ; $687e: $bc

jr_02e_687f:
    nop                                           ; $687f: $00
    ret nz                                        ; $6880: $c0

    push hl                                       ; $6881: $e5
    nop                                           ; $6882: $00
    and b                                         ; $6883: $a0
    ld b, c                                       ; $6884: $41
    and $24                                       ; $6885: $e6 $24
    nop                                           ; $6887: $00
    add l                                         ; $6888: $85

jr_02e_6889:
    ld h, a                                       ; $6889: $67
    nop                                           ; $688a: $00
    jp hl                                         ; $688b: $e9


    nop                                           ; $688c: $00
    add b                                         ; $688d: $80
    push hl                                       ; $688e: $e5
    ld a, a                                       ; $688f: $7f
    add d                                         ; $6890: $82
    cp a                                          ; $6891: $bf
    add c                                         ; $6892: $81
    ret nz                                        ; $6893: $c0

    ldh [$fe], a                                  ; $6894: $e0 $fe
    push bc                                       ; $6896: $c5
    rst $28                                       ; $6897: $ef
    ld h, d                                       ; $6898: $62
    ld [bc], a                                    ; $6899: $02
    call nz, $42ff                                ; $689a: $c4 $ff $42

jr_02e_689d:
    ld b, b                                       ; $689d: $40
    nop                                           ; $689e: $00
    pop de                                        ; $689f: $d1
    ld b, e                                       ; $68a0: $43
    ld b, d                                       ; $68a1: $42
    ccf                                           ; $68a2: $3f
    call nz, Call_02e_42cf                        ; $68a3: $c4 $cf $42
    ld c, a                                       ; $68a6: $4f
    ldh [$3e], a                                  ; $68a7: $e0 $3e
    ld b, e                                       ; $68a9: $43
    ld c, h                                       ; $68aa: $4c
    ld l, $81                                     ; $68ab: $2e $81
    nop                                           ; $68ad: $00
    ld b, c                                       ; $68ae: $41
    pop hl                                        ; $68af: $e1
    ret nz                                        ; $68b0: $c0

    db $e3                                        ; $68b1: $e3
    rst $38                                       ; $68b2: $ff
    inc h                                         ; $68b3: $24
    nop                                           ; $68b4: $00
    call $2441                                    ; $68b5: $cd $41 $24
    ld a, a                                       ; $68b8: $7f
    add e                                         ; $68b9: $83
    ld de, $0fe1                                  ; $68ba: $11 $e1 $0f
    ldh [rTMA], a                                 ; $68bd: $e0 $06
    cp l                                          ; $68bf: $bd
    ld [bc], a                                    ; $68c0: $02
    ld l, h                                       ; $68c1: $6c
    ld c, h                                       ; $68c2: $4c

jr_02e_68c3:
    ld a, $43                                     ; $68c3: $3e $43
    add d                                         ; $68c5: $82
    adc d                                         ; $68c6: $8a
    nop                                           ; $68c7: $00
    ld c, a                                       ; $68c8: $4f
    ld bc, $be25                                  ; $68c9: $01 $25 $be
    and e                                         ; $68cc: $a3
    nop                                           ; $68cd: $00
    rst $08                                       ; $68ce: $cf
    ld bc, $40cb                                  ; $68cf: $01 $cb $40
    ret nz                                        ; $68d2: $c0

    ld b, e                                       ; $68d3: $43
    ld a, $42                                     ; $68d4: $3e $42
    ld b, d                                       ; $68d6: $42
    call nz, $a295                                ; $68d7: $c4 $95 $a2
    nop                                           ; $68da: $00
    sub [hl]                                      ; $68db: $96
    nop                                           ; $68dc: $00
    ld [hl+], a                                   ; $68dd: $22
    jr jr_02e_689d                                ; $68de: $18 $bd

    ld b, h                                       ; $68e0: $44
    adc l                                         ; $68e1: $8d
    nop                                           ; $68e2: $00
    ret nz                                        ; $68e3: $c0

    ld b, h                                       ; $68e4: $44
    ld c, e                                       ; $68e5: $4b
    dec hl                                        ; $68e6: $2b
    jr nc, jr_02e_6889                            ; $68e7: $30 $a0

    pop bc                                        ; $68e9: $c1
    call nz, Call_000_2985                        ; $68ea: $c4 $85 $29
    stop                                          ; $68ed: $10 $00
    adc a                                         ; $68ef: $8f
    ret nz                                        ; $68f0: $c0

    add sp, -$42                                  ; $68f1: $e8 $be
    ld [hl+], a                                   ; $68f3: $22
    add d                                         ; $68f4: $82
    ld h, b                                       ; $68f5: $60
    inc l                                         ; $68f6: $2c
    cp $21                                        ; $68f7: $fe $21
    pop af                                        ; $68f9: $f1
    ldh [$e6], a                                  ; $68fa: $e0 $e6
    ret nz                                        ; $68fc: $c0

    nop                                           ; $68fd: $00
    ld b, e                                       ; $68fe: $43
    ret nz                                        ; $68ff: $c0

    add c                                         ; $6900: $81
    ld b, l                                       ; $6901: $45
    nop                                           ; $6902: $00

jr_02e_6903:
    ld d, c                                       ; $6903: $51
    pop bc                                        ; $6904: $c1
    inc b                                         ; $6905: $04
    ld a, l                                       ; $6906: $7d
    and l                                         ; $6907: $a5
    ld [hl], h                                    ; $6908: $74
    ld [bc], a                                    ; $6909: $02
    ld e, d                                       ; $690a: $5a
    ld bc, $c0bf                                  ; $690b: $01 $bf $c0
    nop                                           ; $690e: $00
    or e                                          ; $690f: $b3
    ld hl, $4068                                  ; $6910: $21 $68 $40
    push bc                                       ; $6913: $c5
    add e                                         ; $6914: $83
    nop                                           ; $6915: $00
    ld d, e                                       ; $6916: $53
    pop bc                                        ; $6917: $c1
    inc b                                         ; $6918: $04
    cp $a4                                        ; $6919: $fe $a4
    ld a, e                                       ; $691b: $7b
    ld h, c                                       ; $691c: $61
    inc sp                                        ; $691d: $33
    inc b                                         ; $691e: $04
    nop                                           ; $691f: $00
    db $fd                                        ; $6920: $fd
    ld b, b                                       ; $6921: $40
    ld l, l                                       ; $6922: $6d
    ld h, c                                       ; $6923: $61
    daa                                           ; $6924: $27
    and c                                         ; $6925: $a1
    ld b, h                                       ; $6926: $44
    inc b                                         ; $6927: $04
    nop                                           ; $6928: $00
    ld d, a                                       ; $6929: $57
    cp [hl]                                       ; $692a: $be
    and [hl]                                      ; $692b: $a6
    db $fc                                        ; $692c: $fc
    ldh a, [$80]                                  ; $692d: $f0 $80
    ld [c], a                                     ; $692f: $e2
    nop                                           ; $6930: $00
    ld d, [hl]                                    ; $6931: $56
    add e                                         ; $6932: $83
    nop                                           ; $6933: $00
    ld sp, $e6c0                                  ; $6934: $31 $c0 $e6
    ld bc, $fc42                                  ; $6937: $01 $42 $fc
    ldh a, [$c0]                                  ; $693a: $f0 $c0
    rst $20                                       ; $693c: $e7
    nop                                           ; $693d: $00
    jr nc, jr_02e_6903                            ; $693e: $30 $c3

    inc bc                                        ; $6940: $03
    jr nz, jr_02e_68c3                            ; $6941: $20 $80

    db $e3                                        ; $6943: $e3
    ld d, d                                       ; $6944: $52
    ld h, h                                       ; $6945: $64
    ld a, [$80ee]                                 ; $6946: $fa $ee $80
    push hl                                       ; $6949: $e5
    nop                                           ; $694a: $00
    dec [hl]                                      ; $694b: $35
    dec l                                         ; $694c: $2d
    ld [bc], a                                    ; $694d: $02
    ld [hl+], a                                   ; $694e: $22
    ret nz                                        ; $694f: $c0

    pop hl                                        ; $6950: $e1
    ld [bc], a                                    ; $6951: $02
    ld de, $2d40                                  ; $6952: $11 $40 $2d
    db $fc                                        ; $6955: $fc
    db $ed                                        ; $6956: $ed
    ret nz                                        ; $6957: $c0

    db $e3                                        ; $6958: $e3
    add h                                         ; $6959: $84
    ld h, d                                       ; $695a: $62
    nop                                           ; $695b: $00
    ld [hl-], a                                   ; $695c: $32
    ld a, a                                       ; $695d: $7f
    add d                                         ; $695e: $82
    ld b, c                                       ; $695f: $41
    inc bc                                        ; $6960: $03
    nop                                           ; $6961: $00
    add b                                         ; $6962: $80
    ld hl, sp-$7b                                 ; $6963: $f8 $85
    ld a, [hl+]                                   ; $6965: $2a
    nop                                           ; $6966: $00
    ld [$6369], a                                 ; $6967: $ea $69 $63
    ret nz                                        ; $696a: $c0

    rst $38                                       ; $696b: $ff
    nop                                           ; $696c: $00
    dec [hl]                                      ; $696d: $35
    add sp, $02                                   ; $696e: $e8 $02
    cp $a1                                        ; $6970: $fe $a1
    adc b                                         ; $6972: $88
    jp nz, $fc21                                  ; $6973: $c2 $21 $fc

    rst $28                                       ; $6976: $ef
    cpl                                           ; $6977: $2f
    jp nz, $da2d                                  ; $6978: $c2 $2d $da

    ld hl, $b600                                  ; $697b: $21 $00 $b6
    ld l, d                                       ; $697e: $6a
    ret nz                                        ; $697f: $c0

    ld c, l                                       ; $6980: $4d
    dec bc                                        ; $6981: $0b
    ld c, l                                       ; $6982: $4d
    dec l                                         ; $6983: $2d
    db $d3                                        ; $6984: $d3
    jr nz, jr_02e_69b2                            ; $6985: $20 $2b

    cp [hl]                                       ; $6987: $be
    pop af                                        ; $6988: $f1
    pop bc                                        ; $6989: $c1
    ret nz                                        ; $698a: $c0

    inc bc                                        ; $698b: $03
    add e                                         ; $698c: $83
    nop                                           ; $698d: $00
    inc [hl]                                      ; $698e: $34
    sub b                                         ; $698f: $90
    ld a, e                                       ; $6990: $7b
    add c                                         ; $6991: $81
    cp e                                          ; $6992: $bb
    ld h, d                                       ; $6993: $62
    ld [hl], l                                    ; $6994: $75
    push bc                                       ; $6995: $c5
    ld [hl-], a                                   ; $6996: $32
    add c                                         ; $6997: $81
    ld l, e                                       ; $6998: $6b
    ld d, l                                       ; $6999: $55
    add d                                         ; $699a: $82
    db $fc                                        ; $699b: $fc
    push hl                                       ; $699c: $e5
    ld l, l                                       ; $699d: $6d
    ld [$a3dc], sp                                ; $699e: $08 $dc $a3
    nop                                           ; $69a1: $00
    jp nc, $a57b                                  ; $69a2: $d2 $7b $a5

    ld c, l                                       ; $69a5: $4d
    cp a                                          ; $69a6: $bf
    rst $20                                       ; $69a7: $e7
    add c                                         ; $69a8: $81
    and c                                         ; $69a9: $a1
    pop bc                                        ; $69aa: $c1
    jp hl                                         ; $69ab: $e9


    ld e, c                                       ; $69ac: $59
    ld [hl+], a                                   ; $69ad: $22
    nop                                           ; $69ae: $00
    sub a                                         ; $69af: $97
    pop bc                                        ; $69b0: $c1
    nop                                           ; $69b1: $00

jr_02e_69b2:
    xor b                                         ; $69b2: $a8
    nop                                           ; $69b3: $00
    nop                                           ; $69b4: $00
    nop                                           ; $69b5: $00
    ld bc, $ff00                                  ; $69b6: $01 $00 $ff
    rst $38                                       ; $69b9: $ff
    rst $38                                       ; $69ba: $ff
    rst $38                                       ; $69bb: $ff
    rst $38                                       ; $69bc: $ff
    rst $38                                       ; $69bd: $ff
    rst $38                                       ; $69be: $ff
    rst $38                                       ; $69bf: $ff
    rst $38                                       ; $69c0: $ff
    rst $38                                       ; $69c1: $ff
    rst $38                                       ; $69c2: $ff
    rst $38                                       ; $69c3: $ff
    rst $38                                       ; $69c4: $ff
    rst $38                                       ; $69c5: $ff
    add b                                         ; $69c6: $80
    rst $38                                       ; $69c7: $ff
    rst $38                                       ; $69c8: $ff
    rst $38                                       ; $69c9: $ff
    rst $38                                       ; $69ca: $ff
    rst $38                                       ; $69cb: $ff
    rst $38                                       ; $69cc: $ff
    rst $38                                       ; $69cd: $ff
    rst $38                                       ; $69ce: $ff
    rst $38                                       ; $69cf: $ff
    rst $38                                       ; $69d0: $ff
    rst $38                                       ; $69d1: $ff
    rst $38                                       ; $69d2: $ff
    rst $30                                       ; $69d3: $f7
    or $0f                                        ; $69d4: $f6 $0f
    nop                                           ; $69d6: $00
    rst $38                                       ; $69d7: $ff
    pop hl                                        ; $69d8: $e1
    ldh [$fd], a                                  ; $69d9: $e0 $fd
    rst $18                                       ; $69db: $df
    ld [$e3ee], a                                 ; $69dc: $ea $ee $e3
    call z, $c3e5                                 ; $69df: $cc $e5 $c3
    pop hl                                        ; $69e2: $e1
    cp [hl]                                       ; $69e3: $be
    ld [$e4e1], a                                 ; $69e4: $ea $e1 $e4
    nop                                           ; $69e7: $00
    ldh [$e7], a                                  ; $69e8: $e0 $e7
    rst $18                                       ; $69ea: $df
    ld [c], a                                     ; $69eb: $e2
    adc a                                         ; $69ec: $8f
    ld [$e4c9], a                                 ; $69ed: $ea $c9 $e4
    rst $18                                       ; $69f0: $df
    rst $20                                       ; $69f1: $e7
    ret nz                                        ; $69f2: $c0

jr_02e_69f3:
    db $eb                                        ; $69f3: $eb
    ld l, e                                       ; $69f4: $6b
    db $e3                                        ; $69f5: $e3
    rst $28                                       ; $69f6: $ef
    jp hl                                         ; $69f7: $e9


    nop                                           ; $69f8: $00
    ldh [$ec], a                                  ; $69f9: $e0 $ec
    ld c, h                                       ; $69fb: $4c
    ld [$f0c0], a                                 ; $69fc: $ea $c0 $f0
    cpl                                           ; $69ff: $2f
    ld [$ef80], a                                 ; $6a00: $ea $80 $ef
    ldh [$ee], a                                  ; $6a03: $e0 $ee
    ld b, b                                       ; $6a05: $40
    db $ec                                        ; $6a06: $ec
    jr nc, jr_02e_69f3                            ; $6a07: $30 $ea

    nop                                           ; $6a09: $00
    ld h, c                                       ; $6a0a: $61
    db $ed                                        ; $6a0b: $ed
    add b                                         ; $6a0c: $80
    push hl                                       ; $6a0d: $e5
    and c                                         ; $6a0e: $a1
    push af                                       ; $6a0f: $f5
    inc d                                         ; $6a10: $14
    db $e3                                        ; $6a11: $e3
    ldh [$ea], a                                  ; $6a12: $e0 $ea
    sbc a                                         ; $6a14: $9f
    rl b                                          ; $6a15: $cb $10
    db $e3                                        ; $6a17: $e3
    cp $e8                                        ; $6a18: $fe $e8
    nop                                           ; $6a1a: $00
    ld d, c                                       ; $6a1b: $51

Jump_02e_6a1c:
    db $eb                                        ; $6a1c: $eb
    rra                                           ; $6a1d: $1f
    rst $20                                       ; $6a1e: $e7
    ldh [$fa], a                                  ; $6a1f: $e0 $fa
    rst $08                                       ; $6a21: $cf
    db $ec                                        ; $6a22: $ec
    pop af                                        ; $6a23: $f1
    db $ed                                        ; $6a24: $ed
    ldh [$fb], a                                  ; $6a25: $e0 $fb
    ldh a, [$fe]                                  ; $6a27: $f0 $fe
    db $eb                                        ; $6a29: $eb
    and h                                         ; $6a2a: $a4
    nop                                           ; $6a2b: $00
    ld e, l                                       ; $6a2c: $5d
    rst $20                                       ; $6a2d: $e7
    rst $38                                       ; $6a2e: $ff
    db $e3                                        ; $6a2f: $e3
    nop                                           ; $6a30: $00
    nop                                           ; $6a31: $00
    nop                                           ; $6a32: $00
    ld bc, $ff00                                  ; $6a33: $01 $00 $ff
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
    rst $38                                       ; $6a41: $ff
    rst $38                                       ; $6a42: $ff
    nop                                           ; $6a43: $00
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
    rst $38                                       ; $6a52: $ff
    rst $38                                       ; $6a53: $ff
    nop                                           ; $6a54: $00
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
    rst $38                                       ; $6a63: $ff
    rst $38                                       ; $6a64: $ff
    db $10                                        ; $6a65: $10
    rst $38                                       ; $6a66: $ff
    rst $38                                       ; $6a67: $ff
    rst $38                                       ; $6a68: $ff
    rst $38                                       ; $6a69: $ff
    rst $38                                       ; $6a6a: $ff
    rst $38                                       ; $6a6b: $ff
    db $f4                                        ; $6a6c: $f4
    di                                            ; $6a6d: $f3
    pop af                                        ; $6a6e: $f1
    rst $38                                       ; $6a6f: $ff
    and $e0                                       ; $6a70: $e6 $e0
    rst $38                                       ; $6a72: $ff
    rst $38                                       ; $6a73: $ff
    rst $38                                       ; $6a74: $ff
    ld b, $f3                                     ; $6a75: $06 $f3
    ld a, [c]                                     ; $6a77: $f2
    inc de                                        ; $6a78: $13
    inc de                                        ; $6a79: $13
    call c, Call_000_00ed                         ; $6a7a: $dc $ed $00
    nop                                           ; $6a7d: $00
    nop                                           ; $6a7e: $00
    nop                                           ; $6a7f: $00

Call_02e_6a80:
    ld [bc], a                                    ; $6a80: $02
    nop                                           ; $6a81: $00
    rrca                                          ; $6a82: $0f
    ld [bc], a                                    ; $6a83: $02
    ld [bc], a                                    ; $6a84: $02
    nop                                           ; $6a85: $00
    rrca                                          ; $6a86: $0f
    inc b                                         ; $6a87: $04
    ld [bc], a                                    ; $6a88: $02
    nop                                           ; $6a89: $00
    rrca                                          ; $6a8a: $0f
    ld b, $02                                     ; $6a8b: $06 $02
    nop                                           ; $6a8d: $00
    rrca                                          ; $6a8e: $0f
    ld [$0002], sp                                ; $6a8f: $08 $02 $00
    rrca                                          ; $6a92: $0f
    ld b, $02                                     ; $6a93: $06 $02
    nop                                           ; $6a95: $00
    rrca                                          ; $6a96: $0f
    inc b                                         ; $6a97: $04
    ld [bc], a                                    ; $6a98: $02
    nop                                           ; $6a99: $00
    rrca                                          ; $6a9a: $0f
    ld [bc], a                                    ; $6a9b: $02
    ld [bc], a                                    ; $6a9c: $02
    nop                                           ; $6a9d: $00
    rrca                                          ; $6a9e: $0f
    rst $38                                       ; $6a9f: $ff
    nop                                           ; $6aa0: $00
    ld a, [bc]                                    ; $6aa1: $0a
    rrca                                          ; $6aa2: $0f
    ld [bc], a                                    ; $6aa3: $02
    ld e, $19                                     ; $6aa4: $1e $19
    rrca                                          ; $6aa6: $0f
    ld [bc], a                                    ; $6aa7: $02
    ld e, $28                                     ; $6aa8: $1e $28
    rrca                                          ; $6aaa: $0f
    ld [bc], a                                    ; $6aab: $02
    ld e, $19                                     ; $6aac: $1e $19
    rrca                                          ; $6aae: $0f
    ld [bc], a                                    ; $6aaf: $02
    ld e, $ff                                     ; $6ab0: $1e $ff
    ld bc, $0337                                  ; $6ab2: $01 $37 $03
    ld de, $3a1e                                  ; $6ab5: $11 $1e $3a
    inc bc                                        ; $6ab8: $03
    ld de, $ff1e                                  ; $6ab9: $11 $1e $ff
    ld [bc], a                                    ; $6abc: $02
    dec a                                         ; $6abd: $3d
    ld bc, $1e14                                  ; $6abe: $01 $14 $1e
    ld a, $01                                     ; $6ac1: $3e $01
    inc d                                         ; $6ac3: $14
    ld e, $3f                                     ; $6ac4: $1e $3f
    ld bc, $1e14                                  ; $6ac6: $01 $14 $1e
    ld a, $01                                     ; $6ac9: $3e $01
    inc d                                         ; $6acb: $14
    ld e, $ff                                     ; $6acc: $1e $ff
    ld bc, $d5fe                                  ; $6ace: $01 $fe $d5
    nop                                           ; $6ad1: $00
    rst $38                                       ; $6ad2: $ff
    ldh [rTIMA], a                                ; $6ad3: $e0 $05
    ei                                            ; $6ad5: $fb
    ldh [$0b], a                                  ; $6ad6: $e0 $0b
    rst $30                                       ; $6ad8: $f7
    pop hl                                        ; $6ad9: $e1
    nop                                           ; $6ada: $00
    ld [bc], a                                    ; $6adb: $02
    db $eb                                        ; $6adc: $eb
    nop                                           ; $6add: $00
    jr z, @-$0f                                   ; $6ade: $28 $ef

    ldh [$90], a                                  ; $6ae0: $e0 $90
    db $eb                                        ; $6ae2: $eb
    ldh [$f5], a                                  ; $6ae3: $e0 $f5
    nop                                           ; $6ae5: $00
    ret z                                         ; $6ae6: $c8

    ld a, [$e0e5]                                 ; $6ae7: $fa $e5 $e0
    add b                                         ; $6aea: $80
    ld [$00e4], a                                 ; $6aeb: $ea $e4 $00
    nop                                           ; $6aee: $00
    rla                                           ; $6aef: $17
    nop                                           ; $6af0: $00
    ld bc, $d612                                  ; $6af1: $01 $12 $d6
    ld [c], a                                     ; $6af4: $e2
    ld d, b                                       ; $6af5: $50
    rst $08                                       ; $6af6: $cf
    ldh [$e6], a                                  ; $6af7: $e0 $e6
    pop hl                                        ; $6af9: $e1
    ld [$e2da], a                                 ; $6afa: $ea $da $e2
    db $fd                                        ; $6afd: $fd
    db $e3                                        ; $6afe: $e3
    and $e1                                       ; $6aff: $e6 $e1
    ld d, a                                       ; $6b01: $57
    cpl                                           ; $6b02: $2f
    nop                                           ; $6b03: $00
    inc bc                                        ; $6b04: $03
    ret nz                                        ; $6b05: $c0

    ld [c], a                                     ; $6b06: $e2
    and b                                         ; $6b07: $a0
    xor a                                         ; $6b08: $af
    ldh [$64], a                                  ; $6b09: $e0 $64
    xor e                                         ; $6b0b: $ab
    ldh [$c7], a                                  ; $6b0c: $e0 $c7
    call nc, Call_000_2000                        ; $6b0e: $d4 $00 $20
    ret nz                                        ; $6b11: $c0

    ld [c], a                                     ; $6b12: $e2
    jp z, $9ce1                                   ; $6b13: $ca $e1 $9c

    pop hl                                        ; $6b16: $e1
    ld e, a                                       ; $6b17: $5f
    nop                                           ; $6b18: $00
    ld d, l                                       ; $6b19: $55
    ld b, $96                                     ; $6b1a: $06 $96
    ld [c], a                                     ; $6b1c: $e2
    ld b, b                                       ; $6b1d: $40
    adc a                                         ; $6b1e: $8f
    ldh [$b2], a                                  ; $6b1f: $e0 $b2
    adc e                                         ; $6b21: $8b
    ldh [$a8], a                                  ; $6b22: $e0 $a8
    or $e2                                        ; $6b24: $f6 $e2
    sbc h                                         ; $6b26: $9c
    and h                                         ; $6b27: $a4
    db $e3                                        ; $6b28: $e3
    ld a, h                                       ; $6b29: $7c
    pop hl                                        ; $6b2a: $e1
    cp a                                          ; $6b2b: $bf
    nop                                           ; $6b2c: $00
    inc c                                         ; $6b2d: $0c
    add b                                         ; $6b2e: $80
    ld [c], a                                     ; $6b2f: $e2
    adc [hl]                                      ; $6b30: $8e
    pop hl                                        ; $6b31: $e1
    ld e, c                                       ; $6b32: $59
    ld a, [$e06b]                                 ; $6b33: $fa $6b $e0
    ld d, b                                       ; $6b36: $50
    add h                                         ; $6b37: $84
    ld [c], a                                     ; $6b38: $e2
    add b                                         ; $6b39: $80
    nop                                           ; $6b3a: $00
    db $ec                                        ; $6b3b: $ec
    rst $38                                       ; $6b3c: $ff
    ld hl, sp-$01                                 ; $6b3d: $f8 $ff
    rst $38                                       ; $6b3f: $ff
    ldh [$fe], a                                  ; $6b40: $e0 $fe
    ld b, d                                       ; $6b42: $42
    ld hl, sp-$38                                 ; $6b43: $f8 $c8
    ldh a, [$80]                                  ; $6b45: $f0 $80
    cp a                                          ; $6b47: $bf
    ldh [rNR10], a                                ; $6b48: $e0 $10
    ldh [rP1], a                                  ; $6b4a: $e0 $00
    ret nz                                        ; $6b4c: $c0

    rst $38                                       ; $6b4d: $ff
    rst $38                                       ; $6b4e: $ff
    ld [c], a                                     ; $6b4f: $e2
    rst $30                                       ; $6b50: $f7
    rst $38                                       ; $6b51: $ff
    rst $38                                       ; $6b52: $ff
    cp h                                          ; $6b53: $bc
    rst $38                                       ; $6b54: $ff
    add sp, -$01                                  ; $6b55: $e8 $ff
    add c                                         ; $6b57: $81
    cp $08                                        ; $6b58: $fe $08
    db $ed                                        ; $6b5a: $ed
    ldh a, [$f8]                                  ; $6b5b: $f0 $f8
    push hl                                       ; $6b5d: $e5
    jr nz, @-$3e                                  ; $6b5e: $20 $c0

    ld [hl], c                                    ; $6b60: $71
    db $e3                                        ; $6b61: $e3
    ld a, a                                       ; $6b62: $7f
    rst $38                                       ; $6b63: $ff
    cpl                                           ; $6b64: $2f
    rst $38                                       ; $6b65: $ff
    rst $38                                       ; $6b66: $ff
    ccf                                           ; $6b67: $3f
    rst $38                                       ; $6b68: $ff
    rra                                           ; $6b69: $1f
    rst $38                                       ; $6b6a: $ff
    or a                                          ; $6b6b: $b7
    ld a, a                                       ; $6b6c: $7f
    rra                                           ; $6b6d: $1f
    rst $38                                       ; $6b6e: $ff
    ld a, a                                       ; $6b6f: $7f
    rrca                                          ; $6b70: $0f
    ld a, a                                       ; $6b71: $7f
    ld c, a                                       ; $6b72: $4f
    ccf                                           ; $6b73: $3f
    rlca                                          ; $6b74: $07
    rra                                           ; $6b75: $1f
    ld [bc], a                                    ; $6b76: $02
    rst $38                                       ; $6b77: $ff
    rra                                           ; $6b78: $1f
    inc de                                        ; $6b79: $13
    rrca                                          ; $6b7a: $0f
    ld bc, $0b0f                                  ; $6b7b: $01 $0f $0b
    rlca                                          ; $6b7e: $07
    ld bc, $07ff                                  ; $6b7f: $01 $ff $07
    nop                                           ; $6b82: $00
    rlca                                          ; $6b83: $07
    inc b                                         ; $6b84: $04
    inc bc                                        ; $6b85: $03
    ld e, h                                       ; $6b86: $5c
    rst $38                                       ; $6b87: $ff
    nop                                           ; $6b88: $00
    rst $28                                       ; $6b89: $ef
    rst $38                                       ; $6b8a: $ff
    add c                                         ; $6b8b: $81
    inc a                                         ; $6b8c: $3c
    db $10                                        ; $6b8d: $10
    ld b, h                                       ; $6b8e: $44
    and $20                                       ; $6b8f: $e6 $20
    ret nz                                        ; $6b91: $c0

    add b                                         ; $6b92: $80
    cp a                                          ; $6b93: $bf
    ret nz                                        ; $6b94: $c0

    nop                                           ; $6b95: $00
    ldh [$90], a                                  ; $6b96: $e0 $90
    ldh [$80], a                                  ; $6b98: $e0 $80
    cp $e0                                        ; $6b9a: $fe $e0
    nop                                           ; $6b9c: $00
    ei                                            ; $6b9d: $fb
    ret nz                                        ; $6b9e: $c0

    jr nz, @-$5e                                  ; $6b9f: $20 $a0

    ldh [$7d], a                                  ; $6ba1: $e0 $7d
    rst $38                                       ; $6ba3: $ff
    rst $28                                       ; $6ba4: $ef
    rst $38                                       ; $6ba5: $ff
    ld a, [hl-]                                   ; $6ba6: $3a
    ld a, [$e2da]                                 ; $6ba7: $fa $da $e2
    ld [$c0e3], sp                                ; $6baa: $08 $e3 $c0
    and h                                         ; $6bad: $a4
    ld hl, sp-$20                                 ; $6bae: $f8 $e0
    ld hl, sp-$10                                 ; $6bb0: $f8 $f0
    rst $38                                       ; $6bb2: $ff
    db $fc                                        ; $6bb3: $fc
    ret nc                                        ; $6bb4: $d0

    db $fc                                        ; $6bb5: $fc
    ld a, [c]                                     ; $6bb6: $f2
    db $fc                                        ; $6bb7: $fc
    ldh [$fc], a                                  ; $6bb8: $e0 $fc
    or b                                          ; $6bba: $b0
    rst $30                                       ; $6bbb: $f7
    ld hl, sp-$1c                                 ; $6bbc: $f8 $e4
    ld hl, sp-$80                                 ; $6bbe: $f8 $80
    push hl                                       ; $6bc0: $e5
    cp [hl]                                       ; $6bc1: $be
    rst $38                                       ; $6bc2: $ff
    db $e3                                        ; $6bc3: $e3
    rst $38                                       ; $6bc4: $ff
    rst $38                                       ; $6bc5: $ff
    ld b, b                                       ; $6bc6: $40
    rst $38                                       ; $6bc7: $ff
    nop                                           ; $6bc8: $00
    rst $20                                       ; $6bc9: $e7
    db $fc                                        ; $6bca: $fc
    rst $38                                       ; $6bcb: $ff
    or $ff                                        ; $6bcc: $f6 $ff
    ld a, a                                       ; $6bce: $7f
    db $fc                                        ; $6bcf: $fc
    rst $38                                       ; $6bd0: $ff
    ld hl, sp-$02                                 ; $6bd1: $f8 $fe
    add sp, -$02                                  ; $6bd3: $e8 $fe
    ld hl, sp-$08                                 ; $6bd5: $f8 $f8
    ldh [$83], a                                  ; $6bd7: $e0 $83
    db $f4                                        ; $6bd9: $f4
    rst $38                                       ; $6bda: $ff
    ld a, b                                       ; $6bdb: $78
    ldh [$cb], a                                  ; $6bdc: $e0 $cb
    jp $c5e2                                      ; $6bde: $c3 $e2 $c5


    ldh a, [$e0]                                  ; $6be1: $f0 $e0
    rst $28                                       ; $6be3: $ef
    ld [$f1c0], a                                 ; $6be4: $ea $c0 $f1
    ld b, b                                       ; $6be7: $40
    ldh [$ea], a                                  ; $6be8: $e0 $ea
    ret nc                                        ; $6bea: $d0

    pop hl                                        ; $6beb: $e1
    rst $08                                       ; $6bec: $cf
    jp hl                                         ; $6bed: $e9


    db $ec                                        ; $6bee: $ec
    rst $38                                       ; $6bef: $ff
    ld sp, hl                                     ; $6bf0: $f9
    cp $7f                                        ; $6bf1: $fe $7f
    and $f8                                       ; $6bf3: $e6 $f8
    ld c, b                                       ; $6bf5: $48
    ldh a, [$d0]                                  ; $6bf6: $f0 $d0
    ldh [$a8], a                                  ; $6bf8: $e0 $a8
    ld [hl], d                                    ; $6bfa: $72
    ldh [$fb], a                                  ; $6bfb: $e0 $fb

jr_02e_6bfd:
    ld b, b                                       ; $6bfd: $40
    add b                                         ; $6bfe: $80
    db $10                                        ; $6bff: $10
    rst $20                                       ; $6c00: $e7
    jp hl                                         ; $6c01: $e9


    cp $8e                                        ; $6c02: $fe $8e
    ldh a, [$30]                                  ; $6c04: $f0 $30
    pop af                                        ; $6c06: $f1
    ret nz                                        ; $6c07: $c0

    ld hl, sp-$1b                                 ; $6c08: $f8 $e5
    ld h, d                                       ; $6c0a: $62
    pop bc                                        ; $6c0b: $c1
    db $10                                        ; $6c0c: $10
    push hl                                       ; $6c0d: $e5
    cp a                                          ; $6c0e: $bf
    ld a, a                                       ; $6c0f: $7f
    sbc a                                         ; $6c10: $9f
    ld a, a                                       ; $6c11: $7f
    rst $38                                       ; $6c12: $ff
    ld [hl], a                                    ; $6c13: $77
    ccf                                           ; $6c14: $3f
    ld e, a                                       ; $6c15: $5f
    ccf                                           ; $6c16: $3f
    ld c, a                                       ; $6c17: $4f
    ccf                                           ; $6c18: $3f
    cpl                                           ; $6c19: $2f
    rra                                           ; $6c1a: $1f
    rst $30                                       ; $6c1b: $f7
    rla                                           ; $6c1c: $17
    rrca                                          ; $6c1d: $0f
    ld [de], a                                    ; $6c1e: $12
    inc d                                         ; $6c1f: $14
    ldh [$09], a                                  ; $6c20: $e0 $09
    rlca                                          ; $6c22: $07
    rla                                           ; $6c23: $17
    inc bc                                        ; $6c24: $03
    rst $38                                       ; $6c25: $ff
    dec b                                         ; $6c26: $05
    inc bc                                        ; $6c27: $03
    inc b                                         ; $6c28: $04
    inc bc                                        ; $6c29: $03
    ld [bc], a                                    ; $6c2a: $02
    ld bc, $ff5c                                  ; $6c2b: $01 $5c $ff
    rst $30                                       ; $6c2e: $f7
    jp Jump_000_3c3c                              ; $6c2f: $c3 $3c $3c


    sbc d                                         ; $6c32: $9a
    add $00                                       ; $6c33: $c6 $00
    nop                                           ; $6c35: $00
    ld b, b                                       ; $6c36: $40
    add b                                         ; $6c37: $80
    rst $18                                       ; $6c38: $df
    ret nz                                        ; $6c39: $c0

    add b                                         ; $6c3a: $80
    jr nz, jr_02e_6bfd                            ; $6c3b: $20 $c0

    and b                                         ; $6c3d: $a0
    cp $e2                                        ; $6c3e: $fe $e2
    ld d, b                                       ; $6c40: $50
    add b                                         ; $6c41: $80
    ldh a, [$a0]                                  ; $6c42: $f0 $a0
    pop hl                                        ; $6c44: $e1
    db $10                                        ; $6c45: $10
    db $e3                                        ; $6c46: $e3
    jp c, Jump_02e_64e1                           ; $6c47: $da $e1 $64

    pop bc                                        ; $6c4a: $c1
    xor b                                         ; $6c4b: $a8
    ldh a, [$ea]                                  ; $6c4c: $f0 $ea
    ldh a, [$df]                                  ; $6c4e: $f0 $df
    db $f4                                        ; $6c50: $f4
    ld hl, sp-$2c                                 ; $6c51: $f8 $d4
    ld hl, sp-$0c                                 ; $6c53: $f8 $f4
    inc d                                         ; $6c55: $14
    ldh [$b8], a                                  ; $6c56: $e0 $b8
    ldh a, [$fb]                                  ; $6c58: $f0 $fb
    add sp, -$10                                  ; $6c5a: $e8 $f0
    db $10                                        ; $6c5c: $10
    jp hl                                         ; $6c5d: $e9


    ld e, b                                       ; $6c5e: $58
    rst $20                                       ; $6c5f: $e7
    ld h, [hl]                                    ; $6c60: $66
    add c                                         ; $6c61: $81
    db $fc                                        ; $6c62: $fc
    rst $38                                       ; $6c63: $ff
    rst $38                                       ; $6c64: $ff
    rst $30                                       ; $6c65: $f7
    cp $fd                                        ; $6c66: $fe $fd
    cp $fa                                        ; $6c68: $fe $fa
    db $fc                                        ; $6c6a: $fc
    ld [$fc3b], a                                 ; $6c6b: $ea $3b $fc
    ld sp, hl                                     ; $6c6e: $f9
    ld hl, sp-$20                                 ; $6c6f: $f8 $e0
    db $f4                                        ; $6c71: $f4
    rst $38                                       ; $6c72: $ff

jr_02e_6c73:
    ld c, b                                       ; $6c73: $48
    ld [hl+], a                                   ; $6c74: $22
    db $eb                                        ; $6c75: $eb
    and b                                         ; $6c76: $a0
    ldh [$f0], a                                  ; $6c77: $e0 $f0
    call z, $fba3                                 ; $6c79: $cc $a3 $fb
    push bc                                       ; $6c7c: $c5
    pop af                                        ; $6c7d: $f1
    call $cbe3                                    ; $6c7e: $cd $e3 $cb
    nop                                           ; $6c81: $00
    nop                                           ; $6c82: $00
    db $ed                                        ; $6c83: $ed
    cp $ff                                        ; $6c84: $fe $ff
    cp $f8                                        ; $6c86: $fe $f8
    add sp, -$10                                  ; $6c88: $e8 $f0
    ld d, d                                       ; $6c8a: $52
    ldh [$e8], a                                  ; $6c8b: $e0 $e8
    ret nz                                        ; $6c8d: $c0

    rst $20                                       ; $6c8e: $e7
    ret nz                                        ; $6c8f: $c0

    add b                                         ; $6c90: $80
    ld d, b                                       ; $6c91: $50
    sub $c0                                       ; $6c92: $d6 $c0
    jr nz, @-$39                                  ; $6c94: $20 $c5

    cp l                                          ; $6c96: $bd
    cp $ee                                        ; $6c97: $fe $ee
    jp $b1f0                                      ; $6c99: $c3 $f0 $b1


    ld a, [de]                                    ; $6c9c: $1a
    ldh [$f8], a                                  ; $6c9d: $e0 $f8
    push hl                                       ; $6c9f: $e5
    or d                                          ; $6ca0: $b2
    and c                                         ; $6ca1: $a1
    ld d, h                                       ; $6ca2: $54
    and c                                         ; $6ca3: $a1
    rst $38                                       ; $6ca4: $ff
    ld a, a                                       ; $6ca5: $7f
    rst $30                                       ; $6ca6: $f7
    xor a                                         ; $6ca7: $af
    ld a, a                                       ; $6ca8: $7f
    ld a, a                                       ; $6ca9: $7f
    inc d                                         ; $6caa: $14
    ldh [$b7], a                                  ; $6cab: $e0 $b7
    rra                                           ; $6cad: $1f
    ccf                                           ; $6cae: $3f
    rra                                           ; $6caf: $1f
    ld a, a                                       ; $6cb0: $7f

jr_02e_6cb1:
    cpl                                           ; $6cb1: $2f
    rra                                           ; $6cb2: $1f
    ld e, a                                       ; $6cb3: $5f
    rrca                                          ; $6cb4: $0f
    rrca                                          ; $6cb5: $0f
    rlca                                          ; $6cb6: $07
    ld a, [bc]                                    ; $6cb7: $0a
    inc d                                         ; $6cb8: $14
    ld [c], a                                     ; $6cb9: $e2
    rst $38                                       ; $6cba: $ff
    dec bc                                        ; $6cbb: $0b
    ld bc, $0103                                  ; $6cbc: $01 $03 $01
    ld [bc], a                                    ; $6cbf: $02
    ld bc, $0005                                  ; $6cc0: $01 $05 $00
    sub l                                         ; $6cc3: $95
    rst $18                                       ; $6cc4: $df
    ld [de], a                                    ; $6cc5: $12
    ldh [rSCY], a                                 ; $6cc6: $e0 $42
    sub b                                         ; $6cc8: $90
    ld [$0ca0], a                                 ; $6cc9: $ea $a0 $0c
    ld [c], a                                     ; $6ccc: $e2
    cp $e1                                        ; $6ccd: $fe $e1
    and b                                         ; $6ccf: $a0
    ld [hl], h                                    ; $6cd0: $74
    jr nc, jr_02e_6c73                            ; $6cd1: $30 $a0

    jr nz, @-$3b                                  ; $6cd3: $20 $c3

    ei                                            ; $6cd5: $fb
    jp c, $b0e6                                   ; $6cd6: $da $e6 $b0

    ldh [$f4], a                                  ; $6cd9: $e0 $f4
    rra                                           ; $6cdb: $1f
    ret nz                                        ; $6cdc: $c0

    rst $30                                       ; $6cdd: $f7
    ret c                                         ; $6cde: $d8

    ldh a, [$f8]                                  ; $6cdf: $f0 $f8
    inc d                                         ; $6ce1: $14
    ldh [$b4], a                                  ; $6ce2: $e0 $b4
    ldh [$f0], a                                  ; $6ce4: $e0 $f0
    ldh [$fa], a                                  ; $6ce6: $e0 $fa
    jr nz, jr_02e_6cb1                            ; $6ce8: $20 $c7

    ei                                            ; $6cea: $fb
    ld [de], a                                    ; $6ceb: $12
    ldh [$91], a                                  ; $6cec: $e0 $91
    nop                                           ; $6cee: $00
    db $fd                                        ; $6cef: $fd
    cp $f6                                        ; $6cf0: $fe $f6
    rst $38                                       ; $6cf2: $ff
    db $fc                                        ; $6cf3: $fc
    cp $fc                                        ; $6cf4: $fe $fc
    db $fd                                        ; $6cf6: $fd
    ld hl, sp-$14                                 ; $6cf7: $f8 $ec
    ld hl, sp-$06                                 ; $6cf9: $f8 $fa
    ld b, $f8                                     ; $6cfb: $06 $f8
    ldh [$f5], a                                  ; $6cfd: $e0 $f5
    cp $78                                        ; $6cff: $fe $78
    push hl                                       ; $6d01: $e5
    inc l                                         ; $6d02: $2c
    push af                                       ; $6d03: $f5
    nop                                           ; $6d04: $00
    and c                                         ; $6d05: $a1
    xor $cc                                       ; $6d06: $ee $cc
    pop af                                        ; $6d08: $f1
    xor d                                         ; $6d09: $aa
    rst $38                                       ; $6d0a: $ff
    ld [bc], a                                    ; $6d0b: $02
    add c                                         ; $6d0c: $81
    and b                                         ; $6d0d: $a0
    pop bc                                        ; $6d0e: $c1
    add b                                         ; $6d0f: $80
    pop bc                                        ; $6d10: $c1
    add l                                         ; $6d11: $85
    jp $a1ff                                      ; $6d12: $c3 $ff $a1


    jp $8300                                      ; $6d15: $c3 $00 $83


    dec b                                         ; $6d18: $05
    add e                                         ; $6d19: $83
    ld b, b                                       ; $6d1a: $40
    add c                                         ; $6d1b: $81
    di                                            ; $6d1c: $f3
    ld b, c                                       ; $6d1d: $41
    add b                                         ; $6d1e: $80
    ldh [$a0], a                                  ; $6d1f: $e0 $a0
    ld [hl], b                                    ; $6d21: $70
    ret nz                                        ; $6d22: $c0

    ret nz                                        ; $6d23: $c0

    ldh [rBCPS], a                                ; $6d24: $e0 $68
    ldh a, [rIE]                                  ; $6d26: $f0 $ff
    pop af                                        ; $6d28: $f1
    db $fc                                        ; $6d29: $fc
    call c, Call_000_1eff                         ; $6d2a: $dc $ff $1e
    rst $38                                       ; $6d2d: $ff
    add b                                         ; $6d2e: $80
    ld e, $fd                                     ; $6d2f: $1e $fd
    ld [de], a                                    ; $6d31: $12
    ld [hl], h                                    ; $6d32: $74
    add d                                         ; $6d33: $82
    ld c, b                                       ; $6d34: $48
    nop                                           ; $6d35: $00
    ld bc, $5878                                  ; $6d36: $01 $78 $58
    rst $38                                       ; $6d39: $ff
    rst $38                                       ; $6d3a: $ff
    ld b, b                                       ; $6d3b: $40
    add c                                         ; $6d3c: $81
    add d                                         ; $6d3d: $82
    pop bc                                        ; $6d3e: $c1
    and b                                         ; $6d3f: $a0
    pop bc                                        ; $6d40: $c1
    and c                                         ; $6d41: $a1
    jp $85ff                                      ; $6d42: $c3 $ff $85


    jp $8304                                      ; $6d45: $c3 $04 $83


    ld b, c                                       ; $6d48: $41
    add e                                         ; $6d49: $83
    ld [bc], a                                    ; $6d4a: $02
    add c                                         ; $6d4b: $81
    or $6d                                        ; $6d4c: $f6 $6d
    add b                                         ; $6d4e: $80
    add b                                         ; $6d4f: $80
    and b                                         ; $6d50: $a0
    ld c, h                                       ; $6d51: $4c
    and b                                         ; $6d52: $a0
    ret nc                                        ; $6d53: $d0

    ldh [$64], a                                  ; $6d54: $e0 $64

jr_02e_6d56:
    ldh a, [$ed]                                  ; $6d56: $f0 $ed
    ldh a, [$d0]                                  ; $6d58: $f0 $d0
    ld [c], a                                     ; $6d5a: $e2
    ld b, c                                       ; $6d5b: $41
    ld e, $c6                                     ; $6d5c: $1e $c6
    add c                                         ; $6d5e: $81
    nop                                           ; $6d5f: $00
    nop                                           ; $6d60: $00
    jr nc, jr_02e_6d56                            ; $6d61: $30 $f3

    nop                                           ; $6d63: $00
    add d                                         ; $6d64: $82
    ret nc                                        ; $6d65: $d0

    ldh [$a0], a                                  ; $6d66: $e0 $a0
    xor c                                         ; $6d68: $a9
    ld [bc], a                                    ; $6d69: $02
    ld bc, $0300                                  ; $6d6a: $01 $00 $03
    nop                                           ; $6d6d: $00
    ld [hl], c                                    ; $6d6e: $71
    xor c                                         ; $6d6f: $a9
    pop af                                        ; $6d70: $f1
    ldh [$60], a                                  ; $6d71: $e0 $60
    add sp, $30                                   ; $6d73: $e8 $30
    add e                                         ; $6d75: $83
    rst $38                                       ; $6d76: $ff
    rst $38                                       ; $6d77: $ff
    rst $38                                       ; $6d78: $ff
    rst $38                                       ; $6d79: $ff
    rst $38                                       ; $6d7a: $ff
    rst $38                                       ; $6d7b: $ff
    rst $38                                       ; $6d7c: $ff
    rst $38                                       ; $6d7d: $ff
    nop                                           ; $6d7e: $00
    rst $38                                       ; $6d7f: $ff
    rst $38                                       ; $6d80: $ff
    rst $38                                       ; $6d81: $ff
    rst $38                                       ; $6d82: $ff
    rst $38                                       ; $6d83: $ff
    rst $38                                       ; $6d84: $ff
    rst $38                                       ; $6d85: $ff
    rst $38                                       ; $6d86: $ff
    rst $38                                       ; $6d87: $ff
    rst $38                                       ; $6d88: $ff
    rst $38                                       ; $6d89: $ff
    rst $38                                       ; $6d8a: $ff
    rst $38                                       ; $6d8b: $ff
    rst $38                                       ; $6d8c: $ff
    rst $38                                       ; $6d8d: $ff
    rst $38                                       ; $6d8e: $ff
    nop                                           ; $6d8f: $00
    rst $38                                       ; $6d90: $ff
    rst $38                                       ; $6d91: $ff
    rst $38                                       ; $6d92: $ff
    rst $38                                       ; $6d93: $ff
    rst $38                                       ; $6d94: $ff
    rst $38                                       ; $6d95: $ff
    rst $38                                       ; $6d96: $ff
    rst $38                                       ; $6d97: $ff
    rst $38                                       ; $6d98: $ff
    rst $38                                       ; $6d99: $ff
    rst $38                                       ; $6d9a: $ff
    rst $38                                       ; $6d9b: $ff
    rst $38                                       ; $6d9c: $ff
    rst $38                                       ; $6d9d: $ff
    rst $38                                       ; $6d9e: $ff
    rst $38                                       ; $6d9f: $ff
    nop                                           ; $6da0: $00
    rst $38                                       ; $6da1: $ff
    rst $38                                       ; $6da2: $ff
    rst $38                                       ; $6da3: $ff
    rst $38                                       ; $6da4: $ff
    rst $38                                       ; $6da5: $ff
    rst $38                                       ; $6da6: $ff
    rst $38                                       ; $6da7: $ff
    rst $38                                       ; $6da8: $ff
    rst $38                                       ; $6da9: $ff
    rst $38                                       ; $6daa: $ff
    rst $38                                       ; $6dab: $ff
    rst $38                                       ; $6dac: $ff
    rst $38                                       ; $6dad: $ff
    rst $38                                       ; $6dae: $ff
    rst $38                                       ; $6daf: $ff
    rst $38                                       ; $6db0: $ff
    nop                                           ; $6db1: $00
    rst $38                                       ; $6db2: $ff
    rst $38                                       ; $6db3: $ff
    rst $38                                       ; $6db4: $ff
    rst $38                                       ; $6db5: $ff
    ccf                                           ; $6db6: $3f
    ld bc, $0000                                  ; $6db7: $01 $00 $00
    nop                                           ; $6dba: $00
    nop                                           ; $6dbb: $00
    nop                                           ; $6dbc: $00
    nop                                           ; $6dbd: $00
    nop                                           ; $6dbe: $00
    ccf                                           ; $6dbf: $3f
    ccf                                           ; $6dc0: $3f
    nop                                           ; $6dc1: $00
    nop                                           ; $6dc2: $00
    ld [$0825], sp                                ; $6dc3: $08 $25 $08
    dec h                                         ; $6dc6: $25
    ld [$0825], sp                                ; $6dc7: $08 $25 $08
    dec h                                         ; $6dca: $25
    ld [$0825], sp                                ; $6dcb: $08 $25 $08
    dec h                                         ; $6dce: $25
    ld [$0825], sp                                ; $6dcf: $08 $25 $08
    dec h                                         ; $6dd2: $25
    cp l                                          ; $6dd3: $bd
    ld [hl], a                                    ; $6dd4: $77
    inc b                                         ; $6dd5: $04
    ld [hl+], a                                   ; $6dd6: $22
    add h                                         ; $6dd7: $84
    ld d, c                                       ; $6dd8: $51
    nop                                           ; $6dd9: $00
    nop                                           ; $6dda: $00
    ld a, b                                       ; $6ddb: $78
    ld a, [hl-]                                   ; $6ddc: $3a
    rst $18                                       ; $6ddd: $df
    ld e, a                                       ; $6dde: $5f
    add b                                         ; $6ddf: $80
    ld [de], a                                    ; $6de0: $12
    nop                                           ; $6de1: $00
    nop                                           ; $6de2: $00
    sbc [hl]                                      ; $6de3: $9e
    ld [hl+], a                                   ; $6de4: $22
    rst $18                                       ; $6de5: $df
    ld e, a                                       ; $6de6: $5f
    ld a, [hl]                                    ; $6de7: $7e
    ld hl, $0000                                  ; $6de8: $21 $00 $00
    ld a, a                                       ; $6deb: $7f
    ld [hl-], a                                   ; $6dec: $32
    rst $18                                       ; $6ded: $df
    ld e, a                                       ; $6dee: $5f
    sbc a                                         ; $6def: $9f
    ld bc, $0000                                  ; $6df0: $01 $00 $00
    ccf                                           ; $6df3: $3f
    ld c, d                                       ; $6df4: $4a
    rst $18                                       ; $6df5: $df
    ld e, a                                       ; $6df6: $5f
    rst $38                                       ; $6df7: $ff
    jr nz, jr_02e_6dfa                            ; $6df8: $20 $00

jr_02e_6dfa:
    nop                                           ; $6dfa: $00
    ld e, $5e                                     ; $6dfb: $1e $5e
    rst $18                                       ; $6dfd: $df
    ld e, a                                       ; $6dfe: $5f
    ret c                                         ; $6dff: $d8

    ld a, h                                       ; $6e00: $7c
    nop                                           ; $6e01: $00
    nop                                           ; $6e02: $00
    cp a                                          ; $6e03: $bf
    rst $38                                       ; $6e04: $ff
    add b                                         ; $6e05: $80
    rst $38                                       ; $6e06: $ff
    add a                                         ; $6e07: $87
    db $fc                                        ; $6e08: $fc
    add h                                         ; $6e09: $84
    cp $e7                                        ; $6e0a: $fe $e7
    rst $38                                       ; $6e0c: $ff
    cp a                                          ; $6e0d: $bf
    nop                                           ; $6e0e: $00
    rst $38                                       ; $6e0f: $ff
    rst $38                                       ; $6e10: $ff
    inc c                                         ; $6e11: $0c
    ld e, $1f                                     ; $6e12: $1e $1f
    rst $38                                       ; $6e14: $ff
    pop hl                                        ; $6e15: $e1
    ccf                                           ; $6e16: $3f
    xor a                                         ; $6e17: $af
    ld l, $3f                                     ; $6e18: $2e $3f
    rrca                                          ; $6e1a: $0f
    ld h, b                                       ; $6e1b: $60
    ldh a, [$e1]                                  ; $6e1c: $f0 $e1
    nop                                           ; $6e1e: $00
    rst $38                                       ; $6e1f: $ff
    ldh [$c0], a                                  ; $6e20: $e0 $c0
    rst $38                                       ; $6e22: $ff
    ldh [$30], a                                  ; $6e23: $e0 $30
    ld a, b                                       ; $6e25: $78
    add sp, $0c                                   ; $6e26: $e8 $0c
    db $fc                                        ; $6e28: $fc
    ld b, $ff                                     ; $6e29: $06 $ff
    sbc a                                         ; $6e2b: $9f
    ld bc, $e1ff                                  ; $6e2c: $01 $ff $e1
    ccf                                           ; $6e2f: $3f
    ld hl, $e7fe                                  ; $6e30: $21 $fe $e7
    ret nz                                        ; $6e33: $c0

    pop af                                        ; $6e34: $f1
    rlca                                          ; $6e35: $07
    rst $38                                       ; $6e36: $ff
    rrca                                          ; $6e37: $0f
    ld a, [de]                                    ; $6e38: $1a
    inc a                                         ; $6e39: $3c
    jr nz, jr_02e_6e78                            ; $6e3a: $20 $3c

    inc l                                         ; $6e3c: $2c
    ld a, a                                       ; $6e3d: $7f
    ld d, a                                       ; $6e3e: $57
    di                                            ; $6e3f: $f3
    ld [hl], e                                    ; $6e40: $73
    ld l, a                                       ; $6e41: $6f
    ret nz                                        ; $6e42: $c0

    ld [c], a                                     ; $6e43: $e2
    call nz, $f8e0                                ; $6e44: $c4 $e0 $f8
    ld [$68f8], sp                                ; $6e47: $08 $f8 $68
    rst $18                                       ; $6e4a: $df
    db $fc                                        ; $6e4b: $fc
    call nc, $ec9c                                ; $6e4c: $d4 $9c $ec
    inc c                                         ; $6e4f: $0c
    ret nz                                        ; $6e50: $c0

    push af                                       ; $6e51: $f5
    db $fd                                        ; $6e52: $fd
    add a                                         ; $6e53: $87
    db $eb                                        ; $6e54: $eb
    rst $38                                       ; $6e55: $ff
    add [hl]                                      ; $6e56: $86
    ld a, b                                       ; $6e57: $78
    ldh [$87], a                                  ; $6e58: $e0 $87
    sub b                                         ; $6e5a: $90
    push hl                                       ; $6e5b: $e5
    rlca                                          ; $6e5c: $07
    adc a                                         ; $6e5d: $8f
    sbc c                                         ; $6e5e: $99
    rst $18                                       ; $6e5f: $df
    db $fc                                        ; $6e60: $fc
    ld h, b                                       ; $6e61: $60
    rst $38                                       ; $6e62: $ff
    daa                                           ; $6e63: $27
    ld a, a                                       ; $6e64: $7f
    add b                                         ; $6e65: $80
    push hl                                       ; $6e66: $e5
    jp nz, Jump_000_3fe7                          ; $6e67: $c2 $e7 $3f

    dec a                                         ; $6e6a: $3d
    ld a, l                                       ; $6e6b: $7d
    ld [$b4ff], sp                                ; $6e6c: $08 $ff $b4
    rst $38                                       ; $6e6f: $ff
    add b                                         ; $6e70: $80
    rst $20                                       ; $6e71: $e7
    ld a, b                                       ; $6e72: $78
    ldh [$f4], a                                  ; $6e73: $e0 $f4
    cp $e0                                        ; $6e75: $fe $e0
    ld b, b                                       ; $6e77: $40

jr_02e_6e78:
    db $ec                                        ; $6e78: $ec
    add l                                         ; $6e79: $85
    ld b, b                                       ; $6e7a: $40
    pop hl                                        ; $6e7b: $e1
    daa                                           ; $6e7c: $27
    ld [hl], b                                    ; $6e7d: $70
    ld c, a                                       ; $6e7e: $4f
    ld h, b                                       ; $6e7f: $60
    rst $38                                       ; $6e80: $ff
    ld e, a                                       ; $6e81: $5f
    ld b, b                                       ; $6e82: $40
    ld e, a                                       ; $6e83: $5f
    ld a, a                                       ; $6e84: $7f
    ld h, b                                       ; $6e85: $60
    rst $30                                       ; $6e86: $f7
    sbc a                                         ; $6e87: $9f
    ret nz                                        ; $6e88: $c0

    cp $30                                        ; $6e89: $fe $30
    pop hl                                        ; $6e8b: $e1
    inc [hl]                                      ; $6e8c: $34
    ld a, [hl]                                    ; $6e8d: $7e
    jp z, $f51f                                   ; $6e8e: $ca $1f $f5

    rlca                                          ; $6e91: $07
    rst $08                                       ; $6e92: $cf
    rst $18                                       ; $6e93: $df
    rst $20                                       ; $6e94: $e7
    ld a, $fd                                     ; $6e95: $3e $fd
    db $e4                                        ; $6e97: $e4
    ld c, $40                                     ; $6e98: $0e $40
    add sp, -$5f                                  ; $6e9a: $e8 $a1
    cp a                                          ; $6e9c: $bf
    ldh a, [$fe]                                  ; $6e9d: $f0 $fe
    ldh [rDIV], a                                 ; $6e9f: $e0 $04
    jp hl                                         ; $6ea1: $e9


    ld hl, sp-$3f                                 ; $6ea2: $f8 $c1
    jp z, Jump_02e_7fe0                           ; $6ea4: $ca $e0 $7f

    ld [hl], c                                    ; $6ea7: $71
    ld a, a                                       ; $6ea8: $7f
    ld a, e                                       ; $6ea9: $7b
    rst $38                                       ; $6eaa: $ff
    ld a, a                                       ; $6eab: $7f
    ld e, d                                       ; $6eac: $5a
    ld e, [hl]                                    ; $6ead: $5e
    ld a, e                                       ; $6eae: $7b
    adc $90                                       ; $6eaf: $ce $90
    sub $c0                                       ; $6eb1: $d6 $c0
    rst $38                                       ; $6eb3: $ff
    sbc a                                         ; $6eb4: $9f
    jp z, Jump_02e_76e2                           ; $6eb5: $ca $e2 $76

    di                                            ; $6eb8: $f3
    reti                                          ; $6eb9: $d9


    ld sp, hl                                     ; $6eba: $f9
    jp hl                                         ; $6ebb: $e9


    rst $38                                       ; $6ebc: $ff
    db $fd                                        ; $6ebd: $fd
    call $cdfd                                    ; $6ebe: $cd $fd $cd
    ld a, a                                       ; $6ec1: $7f
    set 7, a                                      ; $6ec2: $cb $ff
    dec b                                         ; $6ec4: $05
    pop de                                        ; $6ec5: $d1
    rst $38                                       ; $6ec6: $ff
    inc b                                         ; $6ec7: $04
    jp hl                                         ; $6ec8: $e9


    cp [hl]                                       ; $6ec9: $be
    pop hl                                        ; $6eca: $e1
    adc b                                         ; $6ecb: $88
    push hl                                       ; $6ecc: $e5
    db $fd                                        ; $6ecd: $fd
    cp $e4                                        ; $6ece: $fe $e4
    ld [hl], e                                    ; $6ed0: $73
    ld l, h                                       ; $6ed1: $6c
    rst $38                                       ; $6ed2: $ff
    ld e, a                                       ; $6ed3: $5f
    ld h, b                                       ; $6ed4: $60
    ld a, [hl]                                    ; $6ed5: $7e
    ld a, a                                       ; $6ed6: $7f
    rst $38                                       ; $6ed7: $ff
    rst $30                                       ; $6ed8: $f7
    halt                                          ; $6ed9: $76
    ld [hl], a                                    ; $6eda: $77
    rst $38                                       ; $6edb: $ff
    call $bf5f                                    ; $6edc: $cd $5f $bf
    ld b, d                                       ; $6edf: $42
    ld e, l                                       ; $6ee0: $5d
    and e                                         ; $6ee1: $a3
    sbc h                                         ; $6ee2: $9c
    ld l, h                                       ; $6ee3: $6c
    rst $38                                       ; $6ee4: $ff
    db $f4                                        ; $6ee5: $f4
    inc c                                         ; $6ee6: $0c
    db $fc                                        ; $6ee7: $fc
    db $fc                                        ; $6ee8: $fc
    cp $df                                        ; $6ee9: $fe $df
    db $dd                                        ; $6eeb: $dd
    db $dd                                        ; $6eec: $dd
    ccf                                           ; $6eed: $3f
    ld h, a                                       ; $6eee: $67
    push af                                       ; $6eef: $f5
    ei                                            ; $6ef0: $fb
    add l                                         ; $6ef1: $85
    ld [hl], l                                    ; $6ef2: $75
    adc e                                         ; $6ef3: $8b
    ret nz                                        ; $6ef4: $c0

    ld [$c0b8], a                                 ; $6ef5: $ea $b8 $c0
    db $e3                                        ; $6ef8: $e3
    db $fc                                        ; $6ef9: $fc
    add a                                         ; $6efa: $87
    cp $e1                                        ; $6efb: $fe $e1
    ld a, h                                       ; $6efd: $7c
    ret nz                                        ; $6efe: $c0

    cp [hl]                                       ; $6eff: $be
    db $e4                                        ; $6f00: $e4
    ld a, [hl+]                                   ; $6f01: $2a
    ld hl, sp+$51                                 ; $6f02: $f8 $51
    rst $38                                       ; $6f04: $ff
    db $f4                                        ; $6f05: $f4
    xor a                                         ; $6f06: $af
    ldh [$b5], a                                  ; $6f07: $e0 $b5
    db $e4                                        ; $6f09: $e4
    db $eb                                        ; $6f0a: $eb
    ld [$ff57], a                                 ; $6f0b: $ea $57 $ff
    xor [hl]                                      ; $6f0e: $ae
    di                                            ; $6f0f: $f3
    ld b, d                                       ; $6f10: $42
    ld a, a                                       ; $6f11: $7f
    ld b, $4a                                     ; $6f12: $06 $4a
    rst $08                                       ; $6f14: $cf
    and $ff                                       ; $6f15: $e6 $ff
    rra                                           ; $6f17: $1f
    cp $07                                        ; $6f18: $fe $07
    db $d3                                        ; $6f1a: $d3
    rla                                           ; $6f1b: $17
    xor $2a                                       ; $6f1c: $ee $2a
    ld a, [c]                                     ; $6f1e: $f2
    ld a, a                                       ; $6f1f: $7f
    dec sp                                        ; $6f20: $3b
    pop de                                        ; $6f21: $d1
    dec d                                         ; $6f22: $15
    rst $38                                       ; $6f23: $ff
    dec [hl]                                      ; $6f24: $35
    ld a, a                                       ; $6f25: $7f
    pop hl                                        ; $6f26: $e1
    cp $e1                                        ; $6f27: $fe $e1
    pop af                                        ; $6f29: $f1
    cp a                                          ; $6f2a: $bf
    ld a, h                                       ; $6f2b: $7c
    add $88                                       ; $6f2c: $c6 $88
    pop hl                                        ; $6f2e: $e1
    ld b, b                                       ; $6f2f: $40

jr_02e_6f30:
    call nz, $fe86                                ; $6f30: $c4 $86 $fe
    add a                                         ; $6f33: $87
    db $fd                                        ; $6f34: $fd
    rst $38                                       ; $6f35: $ff
    add l                                         ; $6f36: $85
    ccf                                           ; $6f37: $3f
    rst $38                                       ; $6f38: $ff
    rst $20                                       ; $6f39: $e7
    ldh a, [$57]                                  ; $6f3a: $f0 $57
    ld e, b                                       ; $6f3c: $58
    ld l, a                                       ; $6f3d: $6f
    rst $38                                       ; $6f3e: $ff
    ld l, b                                       ; $6f3f: $68
    ld e, e                                       ; $6f40: $5b
    add sp, -$4b                                  ; $6f41: $e8 $b5
    db $e4                                        ; $6f43: $e4
    xor a                                         ; $6f44: $af
    ldh [$2e], a                                  ; $6f45: $e0 $2e
    rst $38                                       ; $6f47: $ff
    or e                                          ; $6f48: $b3
    jp z, Jump_000_31ff                           ; $6f49: $ca $ff $31

    ld a, a                                       ; $6f4c: $7f
    ld c, b                                       ; $6f4d: $48
    rst $28                                       ; $6f4e: $ef
    or [hl]                                       ; $6f4f: $b6
    rst $38                                       ; $6f50: $ff
    xor a                                         ; $6f51: $af
    push af                                       ; $6f52: $f5
    inc sp                                        ; $6f53: $33

jr_02e_6f54:
    sbc c                                         ; $6f54: $99
    dec b                                         ; $6f55: $05
    db $fd                                        ; $6f56: $fd
    inc bc                                        ; $6f57: $03
    ld a, [c]                                     ; $6f58: $f2
    pop bc                                        ; $6f59: $c1
    rlca                                          ; $6f5a: $07
    inc c                                         ; $6f5b: $0c
    pop hl                                        ; $6f5c: $e1
    ld [$bae0], sp                                ; $6f5d: $08 $e0 $ba
    ld [c], a                                     ; $6f60: $e2
    ret nz                                        ; $6f61: $c0

    pop bc                                        ; $6f62: $c1
    inc b                                         ; $6f63: $04
    jp z, $ff87                                   ; $6f64: $ca $87 $ff

    rst $38                                       ; $6f67: $ff
    add b                                         ; $6f68: $80
    add h                                         ; $6f69: $84
    pop af                                        ; $6f6a: $f1
    ld b, [hl]                                    ; $6f6b: $46
    or $24                                        ; $6f6c: $f6 $24
    ld a, c                                       ; $6f6e: $79
    jr jr_02e_6f30                                ; $6f6f: $18 $bf

    ccf                                           ; $6f71: $3f
    ld [hl], a                                    ; $6f72: $77
    ld a, a                                       ; $6f73: $7f
    ld [hl-], a                                   ; $6f74: $32
    ld h, a                                       ; $6f75: $67
    rst $38                                       ; $6f76: $ff
    dec b                                         ; $6f77: $05
    ret nz                                        ; $6f78: $c0

    ld bc, $ffef                                  ; $6f79: $01 $ef $ff
    inc de                                        ; $6f7c: $13
    rst $38                                       ; $6f7d: $ff
    ccf                                           ; $6f7e: $3f
    rst $30                                       ; $6f7f: $f7
    ldh [$7c], a                                  ; $6f80: $e0 $7c
    rst $08                                       ; $6f82: $cf
    xor b                                         ; $6f83: $a8
    reti                                          ; $6f84: $d9


    call c, $e1f0                                 ; $6f85: $dc $f0 $e1
    ret nz                                        ; $6f88: $c0

    db $e3                                        ; $6f89: $e3
    ccf                                           ; $6f8a: $3f
    and c                                         ; $6f8b: $a1
    ld a, [hl]                                    ; $6f8c: $7e
    jp Jump_000_01ff                              ; $6f8d: $c3 $ff $01


    ld a, [c]                                     ; $6f90: $f2
    ld b, $e1                                     ; $6f91: $06 $e1
    db $fc                                        ; $6f93: $fc
    ld a, [hl]                                    ; $6f94: $7e
    db $e4                                        ; $6f95: $e4
    ret nz                                        ; $6f96: $c0

    pop hl                                        ; $6f97: $e1
    cp a                                          ; $6f98: $bf
    ldh [$6f], a                                  ; $6f99: $e0 $6f
    di                                            ; $6f9b: $f3
    rst $38                                       ; $6f9c: $ff
    sbc [hl]                                      ; $6f9d: $9e
    di                                            ; $6f9e: $f3
    dec d                                         ; $6f9f: $15
    add hl, de                                    ; $6fa0: $19
    rrca                                          ; $6fa1: $0f
    jr jr_02e_6faf                                ; $6fa2: $18 $0b

    inc c                                         ; $6fa4: $0c

jr_02e_6fa5:
    cp $c0                                        ; $6fa5: $fe $c0
    pop hl                                        ; $6fa7: $e1
    ld a, [$ed0f]                                 ; $6fa8: $fa $0f $ed
    sbc a                                         ; $6fab: $9f
    ld a, [c]                                     ; $6fac: $f2
    sbc a                                         ; $6fad: $9f
    ld d, b                                       ; $6fae: $50

jr_02e_6faf:
    rra                                           ; $6faf: $1f

jr_02e_6fb0:
    jr nc, @-$1e                                  ; $6fb0: $30 $e0

    jr nc, jr_02e_6f54                            ; $6fb2: $30 $a0

    ld h, b                                       ; $6fb4: $60
    or b                                          ; $6fb5: $b0
    pop hl                                        ; $6fb6: $e1
    call nc, $90e5                                ; $6fb7: $d4 $e5 $90
    push hl                                       ; $6fba: $e5
    rst $38                                       ; $6fbb: $ff
    xor a                                         ; $6fbc: $af
    and b                                         ; $6fbd: $a0
    ld l, a                                       ; $6fbe: $6f
    ldh a, [rNR12]                                ; $6fbf: $f0 $12
    jr c, jr_02e_6fdf                             ; $6fc1: $38 $1c

    ld e, $ef                                     ; $6fc3: $1e $ef
    inc de                                        ; $6fc5: $13
    ld [hl], a                                    ; $6fc6: $77
    ld e, a                                       ; $6fc7: $5f
    ret                                           ; $6fc8: $c9


    sub b                                         ; $6fc9: $90
    pop hl                                        ; $6fca: $e1
    ld a, l                                       ; $6fcb: $7d
    ld b, a                                       ; $6fcc: $47
    or $ff                                        ; $6fcd: $f6 $ff
    rlca                                          ; $6fcf: $07
    add sp, -$68                                  ; $6fd0: $e8 $98
    or b                                          ; $6fd2: $b0
    jr c, jr_02e_6fa5                             ; $6fd3: $38 $d0

    ld hl, sp+$78                                 ; $6fd5: $f8 $78
    push bc                                       ; $6fd7: $c5
    xor h                                         ; $6fd8: $ac
    add b                                         ; $6fd9: $80
    pop hl                                        ; $6fda: $e1
    db $fd                                        ; $6fdb: $fd
    ld a, [hl+]                                   ; $6fdc: $2a
    pop hl                                        ; $6fdd: $e1
    ld e, [hl]                                    ; $6fde: $5e

jr_02e_6fdf:
    and h                                         ; $6fdf: $a4

Jump_02e_6fe0:
    ld h, b                                       ; $6fe0: $60

jr_02e_6fe1:
    pop hl                                        ; $6fe1: $e1
    inc d                                         ; $6fe2: $14
    ld [hl], b                                    ; $6fe3: $70
    rst $38                                       ; $6fe4: $ff
    dec bc                                        ; $6fe5: $0b
    ld hl, sp-$6c                                 ; $6fe6: $f8 $94
    cp $6f                                        ; $6fe8: $fe $6f
    rst $38                                       ; $6fea: $ff
    rlca                                          ; $6feb: $07
    dec b                                         ; $6fec: $05
    ei                                            ; $6fed: $fb
    ld a, [bc]                                    ; $6fee: $0a
    rra                                           ; $6fef: $1f
    ld h, b                                       ; $6ff0: $60
    pop hl                                        ; $6ff1: $e1
    db $ec                                        ; $6ff2: $ec
    rra                                           ; $6ff3: $1f
    or b                                          ; $6ff4: $b0
    ccf                                           ; $6ff5: $3f
    ld d, h                                       ; $6ff6: $54
    sbc [hl]                                      ; $6ff7: $9e
    ld d, a                                       ; $6ff8: $57
    ldh [rBCPS], a                                ; $6ff9: $e0 $68
    adc h                                         ; $6ffb: $8c
    sub h                                         ; $6ffc: $94
    cp h                                          ; $6ffd: $bc
    ld d, b                                       ; $6ffe: $50
    pop hl                                        ; $6fff: $e1
    db $ec                                        ; $7000: $ec
    and d                                         ; $7001: $a2
    pop hl                                        ; $7002: $e1
    ldh a, [$60]                                  ; $7003: $f0 $60
    rst $20                                       ; $7005: $e7
    jr nz, jr_02e_6fb0                            ; $7006: $20 $a8

    ld e, h                                       ; $7008: $5c
    pop bc                                        ; $7009: $c1
    and b                                         ; $700a: $a0
    and d                                         ; $700b: $a2
    inc c                                         ; $700c: $0c
    ld e, $10                                     ; $700d: $1e $10
    add hl, sp                                    ; $700f: $39
    rst $38                                       ; $7010: $ff
    ld h, h                                       ; $7011: $64
    pop af                                        ; $7012: $f1
    and b                                         ; $7013: $a0
    pop af                                        ; $7014: $f1
    nop                                           ; $7015: $00

jr_02e_7016:
    cp h                                          ; $7016: $bc
    inc b                                         ; $7017: $04
    ld a, [hl]                                    ; $7018: $7e
    cp [hl]                                       ; $7019: $be
    db $10                                        ; $701a: $10
    and c                                         ; $701b: $a1
    jr nc, jr_02e_7016                            ; $701c: $30 $f8

    inc c                                         ; $701e: $0c
    cp $02                                        ; $701f: $fe $02
    daa                                           ; $7021: $27
    and b                                         ; $7022: $a0
    ld bc, $ffc7                                  ; $7023: $01 $c7 $ff
    nop                                           ; $7026: $00
    ld a, a                                       ; $7027: $7f
    jr nz, @-$54                                  ; $7028: $20 $aa

    sbc $a0                                       ; $702a: $de $a0
    ldh a, [$81]                                  ; $702c: $f0 $81
    ld b, $0e                                     ; $702e: $06 $0e
    rst $38                                       ; $7030: $ff
    inc bc                                        ; $7031: $03
    ld [bc], a                                    ; $7032: $02
    rlca                                          ; $7033: $07
    rrca                                          ; $7034: $0f
    rrca                                          ; $7035: $0f
    rra                                           ; $7036: $1f
    db $10                                        ; $7037: $10
    add hl, sp                                    ; $7038: $39
    ei                                            ; $7039: $fb
    jr z, jr_02e_706f                             ; $703a: $28 $33

    jr nc, jr_02e_6fe1                            ; $703c: $30 $a3

    add b                                         ; $703e: $80
    add b                                         ; $703f: $80
    ret nz                                        ; $7040: $c0

    ldh [$e0], a                                  ; $7041: $e0 $e0
    inc hl                                        ; $7043: $23
    ldh a, [rNR10]                                ; $7044: $f0 $10
    ld a, [hl+]                                   ; $7046: $2a
    and b                                         ; $7047: $a0
    ret nz                                        ; $7048: $c0

    add a                                         ; $7049: $87
    cp b                                          ; $704a: $b8
    add b                                         ; $704b: $80
    add [hl]                                      ; $704c: $86
    cp [hl]                                       ; $704d: $be
    ret nz                                        ; $704e: $c0

    ret nz                                        ; $704f: $c0

    add b                                         ; $7050: $80
    rst $38                                       ; $7051: $ff
    jr nz, @+$39                                  ; $7052: $20 $37

    jr c, jr_02e_70d5                             ; $7054: $38 $7f

    ld b, a                                       ; $7056: $47
    ld l, a                                       ; $7057: $6f
    call c, $cfc1                                 ; $7058: $dc $c1 $cf
    inc sp                                        ; $705b: $33
    ld a, b                                       ; $705c: $78
    ld c, $9f                                     ; $705d: $0e $9f
    or b                                          ; $705f: $b0
    add c                                         ; $7060: $81
    and h                                         ; $7061: $a4
    db $e3                                        ; $7062: $e3
    db $e3                                        ; $7063: $e3
    rst $38                                       ; $7064: $ff
    add a                                         ; $7065: $87
    sbc l                                         ; $7066: $9d
    ccf                                           ; $7067: $3f
    ld a, l                                       ; $7068: $7d
    sbc e                                         ; $7069: $9b
    pop hl                                        ; $706a: $e1
    ret nz                                        ; $706b: $c0

    adc b                                         ; $706c: $88
    cp [hl]                                       ; $706d: $be
    ret nz                                        ; $706e: $c0

jr_02e_706f:
    ret nc                                        ; $706f: $d0

    add d                                         ; $7070: $82
    jr @+$01                                      ; $7071: $18 $ff

    ccf                                           ; $7073: $3f
    jr nc, jr_02e_70ef                            ; $7074: $30 $79

    ld d, [hl]                                    ; $7076: $56
    ld e, c                                       ; $7077: $59
    ld a, a                                       ; $7078: $7f
    ld a, a                                       ; $7079: $7f
    ld b, b                                       ; $707a: $40
    db $fd                                        ; $707b: $fd
    rst $18                                       ; $707c: $df
    ret nc                                        ; $707d: $d0

    add l                                         ; $707e: $85
    ld c, b                                       ; $707f: $48
    db $fc                                        ; $7080: $fc
    add h                                         ; $7081: $84
    cp $82                                        ; $7082: $fe $82
    cp $3f                                        ; $7084: $fe $3f
    ld h, d                                       ; $7086: $62
    rst $38                                       ; $7087: $ff
    cp $87                                        ; $7088: $fe $87
    cp $86                                        ; $708a: $fe $86
    cp $e0                                        ; $708c: $fe $e0
    db $fc                                        ; $708e: $fc
    ret nz                                        ; $708f: $c0

    cp $98                                        ; $7090: $fe $98
    jp Jump_02e_7f66                              ; $7092: $c3 $66 $7f


    ld a, c                                       ; $7095: $79
    db $db                                        ; $7096: $db
    ccf                                           ; $7097: $3f
    db $ec                                        ; $7098: $ec
    rla                                           ; $7099: $17
    rst $38                                       ; $709a: $ff
    ld hl, sp+$35                                 ; $709b: $f8 $35
    or $6f                                        ; $709d: $f6 $6f
    jp c, $aeb7                                   ; $709f: $da $b7 $ae

    xor c                                         ; $70a2: $a9
    rst $38                                       ; $70a3: $ff
    call nc, Call_000_3f00                        ; $70a4: $d4 $00 $3f
    add b                                         ; $70a7: $80
    rst $18                                       ; $70a8: $df
    ld h, b                                       ; $70a9: $60
    rst $38                                       ; $70aa: $ff
    sub b                                         ; $70ab: $90
    rst $38                                       ; $70ac: $ff
    ccf                                           ; $70ad: $3f
    ret c                                         ; $70ae: $d8

    ccf                                           ; $70af: $3f
    add sp, $2f                                   ; $70b0: $e8 $2f
    sub h                                         ; $70b2: $94
    ccf                                           ; $70b3: $3f
    push af                                       ; $70b4: $f5
    pop bc                                        ; $70b5: $c1
    ld b, a                                       ; $70b6: $47

jr_02e_70b7:
    ld h, $c3                                     ; $70b7: $26 $c3
    call c, Call_02e_58a3                         ; $70b9: $dc $a3 $58
    pop bc                                        ; $70bc: $c1
    ld [hl+], a                                   ; $70bd: $22
    ret                                           ; $70be: $c9


    ld e, d                                       ; $70bf: $5a
    and b                                         ; $70c0: $a0
    add a                                         ; $70c1: $87
    inc h                                         ; $70c2: $24
    rst $38                                       ; $70c3: $ff
    ld l, a                                       ; $70c4: $6f
    ld c, [hl]                                    ; $70c5: $4e
    ld l, a                                       ; $70c6: $6f
    ld b, b                                       ; $70c7: $40
    rst $38                                       ; $70c8: $ff
    add [hl]                                      ; $70c9: $86
    ei                                            ; $70ca: $fb
    add h                                         ; $70cb: $84
    rst $38                                       ; $70cc: $ff
    db $fd                                        ; $70cd: $fd
    add c                                         ; $70ce: $81
    rst $38                                       ; $70cf: $ff
    add d                                         ; $70d0: $82
    xor $05                                       ; $70d1: $ee $05
    db $fc                                        ; $70d3: $fc
    ld c, b                                       ; $70d4: $48

jr_02e_70d5:
    rst $38                                       ; $70d5: $ff
    db $fc                                        ; $70d6: $fc
    db $e4                                        ; $70d7: $e4
    db $fc                                        ; $70d8: $fc
    inc b                                         ; $70d9: $04
    cp $c2                                        ; $70da: $fe $c2
    ld a, [hl]                                    ; $70dc: $7e
    add d                                         ; $70dd: $82
    ld a, a                                       ; $70de: $7f
    cp [hl]                                       ; $70df: $be
    inc bc                                        ; $70e0: $03
    rst $38                                       ; $70e1: $ff
    add d                                         ; $70e2: $82
    rst $28                                       ; $70e3: $ef
    ld b, c                                       ; $70e4: $41
    ld a, a                                       ; $70e5: $7f
    inc h                                         ; $70e6: $24
    add a                                         ; $70e7: $87
    ld hl, sp-$24                                 ; $70e8: $f8 $dc
    and e                                         ; $70ea: $a3
    ld d, b                                       ; $70eb: $50
    ret                                           ; $70ec: $c9


    ret c                                         ; $70ed: $d8

    ld h, c                                       ; $70ee: $61

jr_02e_70ef:
    pop bc                                        ; $70ef: $c1
    rst $38                                       ; $70f0: $ff
    ld a, b                                       ; $70f1: $78
    ld a, a                                       ; $70f2: $7f
    ld d, a                                       ; $70f3: $57
    rst $38                                       ; $70f4: $ff
    ld a, a                                       ; $70f5: $7f
    ld a, a                                       ; $70f6: $7f
    rst $30                                       ; $70f7: $f7
    cp d                                          ; $70f8: $ba
    db $d3                                        ; $70f9: $d3
    db $ec                                        ; $70fa: $ec
    or c                                          ; $70fb: $b1
    rst $08                                       ; $70fc: $cf
    cp a                                          ; $70fd: $bf
    and b                                         ; $70fe: $a0
    cp a                                          ; $70ff: $bf
    ret nz                                        ; $7100: $c0

    jp Jump_000_3ce7                              ; $7101: $c3 $e7 $3c


    call $ff61                                    ; $7104: $cd $61 $ff
    rst $38                                       ; $7107: $ff
    ld [de], a                                    ; $7108: $12
    rra                                           ; $7109: $1f
    jp nz, $d20a                                  ; $710a: $c2 $0a $d2

    ld h, $fc                                     ; $710d: $26 $fc
    ld h, $f0                                     ; $710f: $26 $f0
    add b                                         ; $7111: $80
    ret                                           ; $7112: $c9


    jr nz, jr_02e_70b7                            ; $7113: $20 $a2

    and h                                         ; $7115: $a4
    ld l, b                                       ; $7116: $68
    sub $a1                                       ; $7117: $d6 $a1
    cp a                                          ; $7119: $bf
    cp a                                          ; $711a: $bf
    push af                                       ; $711b: $f5
    pop af                                        ; $711c: $f1
    rst $38                                       ; $711d: $ff
    ld e, a                                       ; $711e: $5f
    jp z, $5b7f                                   ; $711f: $ca $7f $5b

    ld d, [hl]                                    ; $7122: $56
    jp nc, $a0ff                                  ; $7123: $d2 $ff $a0

    rst $38                                       ; $7126: $ff
    db $eb                                        ; $7127: $eb
    db $e3                                        ; $7128: $e3

jr_02e_7129:
    rst $38                                       ; $7129: $ff
    rst $38                                       ; $712a: $ff
    add hl, de                                    ; $712b: $19
    rst $38                                       ; $712c: $ff
    db $fd                                        ; $712d: $fd
    rst $38                                       ; $712e: $ff
    rst $38                                       ; $712f: $ff
    ld l, a                                       ; $7130: $6f
    ld l, a                                       ; $7131: $6f
    cp [hl]                                       ; $7132: $be
    ld e, a                                       ; $7133: $5f
    cp l                                          ; $7134: $bd
    add hl, de                                    ; $7135: $19
    db $eb                                        ; $7136: $eb
    dec c                                         ; $7137: $0d
    rst $28                                       ; $7138: $ef
    rst $18                                       ; $7139: $df
    pop bc                                        ; $713a: $c1
    cp l                                          ; $713b: $bd
    add c                                         ; $713c: $81
    ldh [$8d], a                                  ; $713d: $e0 $8d
    ld e, a                                       ; $713f: $5f
    ld h, b                                       ; $7140: $60
    ld a, $ff                                     ; $7141: $3e $ff
    ld [hl], b                                    ; $7143: $70
    ld d, a                                       ; $7144: $57
    ld e, b                                       ; $7145: $58
    dec hl                                        ; $7146: $2b
    ld a, h                                       ; $7147: $7c
    ld b, $07                                     ; $7148: $06 $07
    rlca                                          ; $714a: $07
    db $fd                                        ; $714b: $fd
    dec c                                         ; $714c: $0d
    ld [hl], b                                    ; $714d: $70
    and c                                         ; $714e: $a1
    push af                                       ; $714f: $f5
    rlca                                          ; $7150: $07
    or [hl]                                       ; $7151: $b6
    rst $08                                       ; $7152: $cf
    ld l, [hl]                                    ; $7153: $6e
    ld c, $bf                                     ; $7154: $0e $bf
    call nc, $a016                                ; $7156: $d4 $16 $a0
    inc h                                         ; $7159: $24
    ldh [$f0], a                                  ; $715a: $e0 $f0
    or b                                          ; $715c: $b0
    and d                                         ; $715d: $a2
    add a                                         ; $715e: $87
    cp [hl]                                       ; $715f: $be
    ldh [$a1], a                                  ; $7160: $e0 $a1
    cp $86                                        ; $7162: $fe $86
    db $fd                                        ; $7164: $fd
    add h                                         ; $7165: $84
    cp $82                                        ; $7166: $fe $82
    pop bc                                        ; $7168: $c1
    add b                                         ; $7169: $80
    rst $30                                       ; $716a: $f7
    inc b                                         ; $716b: $04
    cp $83                                        ; $716c: $fe $83
    dec l                                         ; $716e: $2d
    ld h, b                                       ; $716f: $60
    ld d, c                                       ; $7170: $51
    rst $38                                       ; $7171: $ff
    ld c, [hl]                                    ; $7172: $4e
    ld a, a                                       ; $7173: $7f
    ei                                            ; $7174: $fb
    and b                                         ; $7175: $a0
    ld a, a                                       ; $7176: $7f
    ld b, b                                       ; $7177: $40
    and c                                         ; $7178: $a1
    ld b, b                                       ; $7179: $40
    rst $38                                       ; $717a: $ff
    add d                                         ; $717b: $82
    rst $38                                       ; $717c: $ff
    inc bc                                        ; $717d: $03
    ld a, a                                       ; $717e: $7f
    rst $38                                       ; $717f: $ff
    inc d                                         ; $7180: $14
    cp $e5                                        ; $7181: $fe $e5
    db $fc                                        ; $7183: $fc
    ld a, [bc]                                    ; $7184: $0a
    db $fc                                        ; $7185: $fc
    jr nc, jr_02e_7129                            ; $7186: $30 $a1

    ld a, [hl]                                    ; $7188: $7e
    call nz, $a182                                ; $7189: $c4 $82 $a1
    rst $38                                       ; $718c: $ff
    pop hl                                        ; $718d: $e1
    ld a, a                                       ; $718e: $7f
    ld h, c                                       ; $718f: $61
    cp a                                          ; $7190: $bf
    ret c                                         ; $7191: $d8

    and b                                         ; $7192: $a0
    ld hl, sp+$40                                 ; $7193: $f8 $40
    and b                                         ; $7195: $a0
    call nz, Call_000_0069                        ; $7196: $c4 $69 $00
    and b                                         ; $7199: $a0
    ld c, a                                       ; $719a: $4f
    ldh [$37], a                                  ; $719b: $e0 $37
    jr c, jr_02e_71ba                             ; $719d: $38 $1b

    ld a, a                                       ; $719f: $7f
    jr c, @+$26                                   ; $71a0: $38 $24

jr_02e_71a2:
    ld l, [hl]                                    ; $71a2: $6e
    ld l, e                                       ; $71a3: $6b
    di                                            ; $71a4: $f3
    sub [hl]                                      ; $71a5: $96
    cp b                                          ; $71a6: $b8
    nop                                           ; $71a7: $00
    and c                                         ; $71a8: $a1
    rst $38                                       ; $71a9: $ff
    call nc, Call_02e_5804                        ; $71aa: $d4 $04 $58

jr_02e_71ad:
    db $ec                                        ; $71ad: $ec
    add sp, $08                                   ; $71ae: $e8 $08
    ret nc                                        ; $71b0: $d0

    jr jr_02e_71a2                                ; $71b1: $18 $ef

    jr nc, jr_02e_71ad                            ; $71b3: $30 $f8

    ret c                                         ; $71b5: $d8

    db $ec                                        ; $71b6: $ec
    ldh a, [$81]                                  ; $71b7: $f0 $81
    cp [hl]                                       ; $71b9: $be

jr_02e_71ba:
    cp [hl]                                       ; $71ba: $be
    ld c, e                                       ; $71bb: $4b
    rst $38                                       ; $71bc: $ff
    adc $2d                                       ; $71bd: $ce $2d
    ld h, h                                       ; $71bf: $64
    ld d, $30                                     ; $71c0: $16 $30
    cpl                                           ; $71c2: $2f
    ld a, a                                       ; $71c3: $7f
    ld [hl], l                                    ; $71c4: $75
    cp $a0                                        ; $71c5: $fe $a0
    ld [c], a                                     ; $71c7: $e2
    ld [$dc03], a                                 ; $71c8: $ea $03 $dc
    ld e, $b8                                     ; $71cb: $1e $b8
    jr c, @-$36                                   ; $71cd: $38 $c8

    rrca                                          ; $71cf: $0f
    db $fc                                        ; $71d0: $fc
    inc d                                         ; $71d1: $14
    cp $a2                                        ; $71d2: $fe $a2
    pop de                                        ; $71d4: $d1
    add b                                         ; $71d5: $80
    jp nz, $b040                                  ; $71d6: $c2 $40 $b0

    ld b, e                                       ; $71d9: $43
    ldh a, [$64]                                  ; $71da: $f0 $64
    cp $70                                        ; $71dc: $fe $70
    ld h, e                                       ; $71de: $63
    ld h, b                                       ; $71df: $60
    rst $38                                       ; $71e0: $ff
    add b                                         ; $71e1: $80
    rst $08                                       ; $71e2: $cf
    ld c, a                                       ; $71e3: $4f
    sbc a                                         ; $71e4: $9f
    db $10                                        ; $71e5: $10
    rst $18                                       ; $71e6: $df
    cp c                                          ; $71e7: $b9
    rrca                                          ; $71e8: $0f
    ld hl, sp-$69                                 ; $71e9: $f8 $97
    ldh a, [$f0]                                  ; $71eb: $f0 $f0
    ld [c], a                                     ; $71ed: $e2
    ldh a, [rNR23]                                ; $71ee: $f0 $18
    and $8c                                       ; $71f0: $e6 $8c
    pop bc                                        ; $71f2: $c1
    rst $38                                       ; $71f3: $ff
    ld hl, $807d                                  ; $71f4: $21 $7d $80
    sub b                                         ; $71f7: $90
    ld b, c                                       ; $71f8: $41
    inc bc                                        ; $71f9: $03
    rlca                                          ; $71fa: $07
    inc c                                         ; $71fb: $0c
    rst $38                                       ; $71fc: $ff
    rra                                           ; $71fd: $1f
    ld [de], a                                    ; $71fe: $12
    ccf                                           ; $71ff: $3f
    ld hl, $436f                                  ; $7200: $21 $6f $43
    ld e, a                                       ; $7203: $5f
    ld c, [hl]                                    ; $7204: $4e
    push af                                       ; $7205: $f5
    ld e, a                                       ; $7206: $5f
    add b                                         ; $7207: $80
    ld b, c                                       ; $7208: $41
    ldh [$e0], a                                  ; $7209: $e0 $e0
    ldh [$0c], a                                  ; $720b: $e0 $0c
    sbc [hl]                                      ; $720d: $9e
    ld l, d                                       ; $720e: $6a
    sbc [hl]                                      ; $720f: $9e
    ld sp, hl                                     ; $7210: $f9
    cp $6a                                        ; $7211: $fe $6a
    and b                                         ; $7213: $a0
    or b                                          ; $7214: $b0
    ld b, e                                       ; $7215: $43
    rra                                           ; $7216: $1f
    ccf                                           ; $7217: $3f
    ccf                                           ; $7218: $3f
    ld a, a                                       ; $7219: $7f
    ld [hl], b                                    ; $721a: $70
    rst $28                                       ; $721b: $ef
    ld a, a                                       ; $721c: $7f
    ld h, e                                       ; $721d: $63
    ld a, a                                       ; $721e: $7f
    ld b, a                                       ; $721f: $47
    ldh a, [$e2]                                  ; $7220: $f0 $e2
    ret nz                                        ; $7222: $c0

    ldh [$f0], a                                  ; $7223: $e0 $f0
    rst $38                                       ; $7225: $ff
    ld hl, sp-$08                                 ; $7226: $f8 $f8
    db $fc                                        ; $7228: $fc
    inc e                                         ; $7229: $1c
    cp $8e                                        ; $722a: $fe $8e
    cp $c6                                        ; $722c: $fe $c6
    cp $5d                                        ; $722e: $fe $5d
    add b                                         ; $7230: $80
    sub [hl]                                      ; $7231: $96
    di                                            ; $7232: $f3
    xor [hl]                                      ; $7233: $ae
    db $e3                                        ; $7234: $e3
    cp [hl]                                       ; $7235: $be
    ei                                            ; $7236: $fb
    adc [hl]                                      ; $7237: $8e
    sbc a                                         ; $7238: $9f
    ei                                            ; $7239: $fb
    cp a                                          ; $723a: $bf
    ei                                            ; $723b: $fb
    xor a                                         ; $723c: $af
    pop hl                                        ; $723d: $e1
    ld a, l                                       ; $723e: $7d
    pop hl                                        ; $723f: $e1
    sub $a0                                       ; $7240: $d6 $a0
    or a                                          ; $7242: $b7
    rra                                           ; $7243: $1f
    db $fd                                        ; $7244: $fd
    or a                                          ; $7245: $b7
    push af                                       ; $7246: $f5
    add a                                         ; $7247: $87
    ld sp, hl                                     ; $7248: $f9
    rst $38                                       ; $7249: $ff
    and b                                         ; $724a: $a0
    ld b, h                                       ; $724b: $44
    ld b, e                                       ; $724c: $43
    db $fc                                        ; $724d: $fc
    jp hl                                         ; $724e: $e9


    rst $38                                       ; $724f: $ff
    db $eb                                        ; $7250: $eb
    db $e3                                        ; $7251: $e3
    rst $30                                       ; $7252: $f7
    rst $30                                       ; $7253: $f7
    ret z                                         ; $7254: $c8

    cp l                                          ; $7255: $bd
    xor c                                         ; $7256: $a9
    cp a                                          ; $7257: $bf
    rst $38                                       ; $7258: $ff
    sub h                                         ; $7259: $94
    rst $38                                       ; $725a: $ff
    ld l, e                                       ; $725b: $6b
    rst $20                                       ; $725c: $e7
    or a                                          ; $725d: $b7
    ret nz                                        ; $725e: $c0

    rst $28                                       ; $725f: $ef
    adc b                                         ; $7260: $88
    rst $38                                       ; $7261: $ff
    ld h, c                                       ; $7262: $61
    cp a                                          ; $7263: $bf
    sub d                                         ; $7264: $92
    rst $18                                       ; $7265: $df
    ld [hl], d                                    ; $7266: $72
    sbc $74                                       ; $7267: $de $74
    cp $ff                                        ; $7269: $fe $ff
    cp [hl]                                       ; $726b: $be
    cp [hl]                                       ; $726c: $be
    ld l, c                                       ; $726d: $69
    cp l                                          ; $726e: $bd
    rst $10                                       ; $726f: $d7
    dec [hl]                                      ; $7270: $35
    db $fd                                        ; $7271: $fd
    ld bc, $3cff                                  ; $7272: $01 $ff $3c
    ld a, a                                       ; $7275: $7f
    ccf                                           ; $7276: $3f
    ccf                                           ; $7277: $3f
    scf                                           ; $7278: $37
    ld a, $37                                     ; $7279: $3e $37
    inc sp                                        ; $727b: $33
    rst $38                                       ; $727c: $ff
    ld a, l                                       ; $727d: $7d
    ei                                            ; $727e: $fb
    xor l                                         ; $727f: $ad

jr_02e_7280:
    sbc b                                         ; $7280: $98
    db $fd                                        ; $7281: $fd
    and e                                         ; $7282: $a3
    cp l                                          ; $7283: $bd
    add c                                         ; $7284: $81
    rst $38                                       ; $7285: $ff
    db $fd                                        ; $7286: $fd
    rst $38                                       ; $7287: $ff
    xor a                                         ; $7288: $af
    adc a                                         ; $7289: $8f
    ld a, d                                       ; $728a: $7a
    ld d, e                                       ; $728b: $53
    cp $5a                                        ; $728c: $fe $5a
    ld a, a                                       ; $728e: $7f
    ld [$fe5e], a                                 ; $728f: $ea $5e $fe
    ld b, $d7                                     ; $7292: $06 $d7
    rst $00                                       ; $7294: $c7
    rst $38                                       ; $7295: $ff
    nop                                           ; $7296: $00
    ld l, h                                       ; $7297: $6c
    ei                                            ; $7298: $fb
    ccf                                           ; $7299: $3f
    ld hl, $e0ed                                  ; $729a: $21 $ed $e0
    rst $38                                       ; $729d: $ff
    ld a, a                                       ; $729e: $7f
    rst $38                                       ; $729f: $ff
    ld a, [hl]                                    ; $72a0: $7e
    ld a, a                                       ; $72a1: $7f
    cp e                                          ; $72a2: $bb
    ld a, h                                       ; $72a3: $7c
    rst $38                                       ; $72a4: $ff
    and c                                         ; $72a5: $a1
    pop bc                                        ; $72a6: $c1
    rst $38                                       ; $72a7: $ff
    rst $38                                       ; $72a8: $ff

jr_02e_72a9:
    rst $00                                       ; $72a9: $c7
    cp $e0                                        ; $72aa: $fe $e0
    adc a                                         ; $72ac: $8f
    db $e3                                        ; $72ad: $e3
    rst $38                                       ; $72ae: $ff
    ld a, $ec                                     ; $72af: $3e $ec
    ldh [$81], a                                  ; $72b1: $e0 $81
    pop bc                                        ; $72b3: $c1
    db $ed                                        ; $72b4: $ed
    ld [c], a                                     ; $72b5: $e2
    adc b                                         ; $72b6: $88
    rst $38                                       ; $72b7: $ff
    xor e                                         ; $72b8: $ab
    set 7, a                                      ; $72b9: $cb $ff
    cp e                                          ; $72bb: $bb
    cp $e0                                        ; $72bc: $fe $e0
    xor e                                         ; $72be: $ab
    or $e0                                        ; $72bf: $f6 $e0
    call c, Call_02e_41c1                         ; $72c1: $dc $c1 $41
    rst $38                                       ; $72c4: $ff
    db $fd                                        ; $72c5: $fd
    ld d, l                                       ; $72c6: $55
    cp $e6                                        ; $72c7: $fe $e6
    rst $38                                       ; $72c9: $ff
    sub a                                         ; $72ca: $97
    ret c                                         ; $72cb: $d8

    ld l, a                                       ; $72cc: $6f
    cp $2b                                        ; $72cd: $fe $2b
    ld a, a                                       ; $72cf: $7f
    ld l, [hl]                                    ; $72d0: $6e
    dec h                                         ; $72d1: $25
    ld [hl], $1f                                  ; $72d2: $36 $1f
    jr nc, jr_02e_72ea                            ; $72d4: $30 $14

    add hl, de                                    ; $72d6: $19
    ret nc                                        ; $72d7: $d0

    ld h, d                                       ; $72d8: $62
    rst $38                                       ; $72d9: $ff
    ld [bc], a                                    ; $72da: $02
    call c, $e01c                                 ; $72db: $dc $1c $e0
    jr nz, jr_02e_7280                            ; $72de: $20 $a0

    ld h, b                                       ; $72e0: $60
    ld b, b                                       ; $72e1: $40
    ei                                            ; $72e2: $fb
    ld h, b                                       ; $72e3: $60
    and b                                         ; $72e4: $a0
    jr nz, jr_02e_72a9                            ; $72e5: $20 $c2

    ld d, [hl]                                    ; $72e7: $56
    ret nz                                        ; $72e8: $c0

    ccf                                           ; $72e9: $3f

jr_02e_72ea:
    ld a, b                                       ; $72ea: $78
    dec bc                                        ; $72eb: $0b
    ld a, a                                       ; $72ec: $7f
    jr @+$07                                      ; $72ed: $18 $05

    inc c                                         ; $72ef: $0c
    dec b                                         ; $72f0: $05
    inc b                                         ; $72f1: $04
    ld a, [bc]                                    ; $72f2: $0a
    ld c, $70                                     ; $72f3: $0e $70
    ld h, c                                       ; $72f5: $61
    rst $38                                       ; $72f6: $ff
    xor $ff                                       ; $72f7: $ee $ff
    inc a                                         ; $72f9: $3c
    add [hl]                                      ; $72fa: $86
    db $f4                                        ; $72fb: $f4
    ld h, h                                       ; $72fc: $64
    ret c                                         ; $72fd: $d8

    ld l, h                                       ; $72fe: $6c
    rst $28                                       ; $72ff: $ef
    ret c                                         ; $7300: $d8

    jr jr_02e_736b                                ; $7301: $18 $68

    ld a, b                                       ; $7303: $78
    or b                                          ; $7304: $b0
    ld h, d                                       ; $7305: $62

jr_02e_7306:
    rst $38                                       ; $7306: $ff
    ld a, h                                       ; $7307: $7c
    rst $38                                       ; $7308: $ff
    di                                            ; $7309: $f3
    inc a                                         ; $730a: $3c
    ld a, a                                       ; $730b: $7f
    ldh [$c1], a                                  ; $730c: $e0 $c1
    sub b                                         ; $730e: $90
    ld [c], a                                     ; $730f: $e2
    nop                                           ; $7310: $00
    ld a, [hl]                                    ; $7311: $7e
    rst $38                                       ; $7312: $ff
    ld a, h                                       ; $7313: $7c
    dec sp                                        ; $7314: $3b
    cp $78                                        ; $7315: $fe $78
    ld [c], a                                     ; $7317: $e2
    ret nz                                        ; $7318: $c0

    db $fc                                        ; $7319: $fc
    cp $fe                                        ; $731a: $fe $fe
    ld [hl], b                                    ; $731c: $70
    jp $ecfe                                      ; $731d: $c3 $fe $ec


    rst $38                                       ; $7320: $ff
    nop                                           ; $7321: $00
    inc sp                                        ; $7322: $33
    nop                                           ; $7323: $00
    jr nc, jr_02e_7326                            ; $7324: $30 $00

jr_02e_7326:
    ld h, b                                       ; $7326: $60
    nop                                           ; $7327: $00
    ld h, a                                       ; $7328: $67
    rlca                                          ; $7329: $07
    nop                                           ; $732a: $00
    rst $08                                       ; $732b: $cf
    inc bc                                        ; $732c: $03
    cp $e2                                        ; $732d: $fe $e2
    db $ed                                        ; $732f: $ed
    pop hl                                        ; $7330: $e1
    jr nz, @+$22                                  ; $7331: $20 $20

    inc a                                         ; $7333: $3c
    and d                                         ; $7334: $a2
    ccf                                           ; $7335: $3f
    pop bc                                        ; $7336: $c1
    ldh a, [$e1]                                  ; $7337: $f0 $e1
    and $df                                       ; $7339: $e6 $df
    db $e4                                        ; $733b: $e4
    pop hl                                        ; $733c: $e1
    and $df                                       ; $733d: $e6 $df
    db $e4                                        ; $733f: $e4
    nop                                           ; $7340: $00
    ret nz                                        ; $7341: $c0

    rra                                           ; $7342: $1f
    sbc a                                         ; $7343: $9f
    scf                                           ; $7344: $37
    jr nc, jr_02e_7306                            ; $7345: $30 $bf

jr_02e_7347:
    jr nz, jr_02e_7347                            ; $7347: $20 $fe

    ldh [rNR10], a                                ; $7349: $e0 $10
    sbc a                                         ; $734b: $9f
    db $f4                                        ; $734c: $f4
    ldh [$e4], a                                  ; $734d: $e0 $e4
    nop                                           ; $734f: $00
    db $fc                                        ; $7350: $fc
    sbc e                                         ; $7351: $9b
    add sp, -$2c                                  ; $7352: $e8 $d4
    ld bc, $f803                                  ; $7354: $01 $03 $f8
    ld sp, hl                                     ; $7357: $f9
    dec b                                         ; $7358: $05
    db $fd                                        ; $7359: $fd
    ld bc, $fe1e                                  ; $735a: $01 $1e $fe
    pop hl                                        ; $735d: $e1
    ld sp, hl                                     ; $735e: $f9
    inc bc                                        ; $735f: $03
    inc bc                                        ; $7360: $03
    cp $80                                        ; $7361: $fe $80
    rst $00                                       ; $7363: $c7
    add e                                         ; $7364: $83
    ld [c], a                                     ; $7365: $e2
    or [hl]                                       ; $7366: $b6
    db $e3                                        ; $7367: $e3
    dec [hl]                                      ; $7368: $35
    cp $fe                                        ; $7369: $fe $fe

jr_02e_736b:
    ldh [$fc], a                                  ; $736b: $e0 $fc
    cp $e2                                        ; $736d: $fe $e2
    inc b                                         ; $736f: $04
    nop                                           ; $7370: $00
    di                                            ; $7371: $f3

jr_02e_7372:
    ld [c], a                                     ; $7372: $e2
    ld e, c                                       ; $7373: $59
    pop hl                                        ; $7374: $e1

jr_02e_7375:
    ld a, a                                       ; $7375: $7f
    ld bc, $0300                                  ; $7376: $01 $00 $03
    nop                                           ; $7379: $00
    ld [bc], a                                    ; $737a: $02
    nop                                           ; $737b: $00
    ld b, $59                                     ; $737c: $06 $59
    push hl                                       ; $737e: $e5
    jr z, @-$72                                   ; $737f: $28 $8c

    db $e4                                        ; $7381: $e4
    ld b, d                                       ; $7382: $42
    db $ed                                        ; $7383: $ed
    jr nc, jr_02e_7372                            ; $7384: $30 $ec

    add hl, de                                    ; $7386: $19
    jr nz, jr_02e_7375                            ; $7387: $20 $ec

    sbc c                                         ; $7389: $99
    add hl, sp                                    ; $738a: $39
    push hl                                       ; $738b: $e5
    ld sp, hl                                     ; $738c: $f9
    and $1e                                       ; $738d: $e6 $1e
    rst $38                                       ; $738f: $ff
    call $6701                                    ; $7390: $cd $01 $67
    ld bc, $fc67                                  ; $7393: $01 $67 $fc

jr_02e_7396:
    ret nz                                        ; $7396: $c0

    cp $e2                                        ; $7397: $fe $e2
    db $f4                                        ; $7399: $f4
    pop hl                                        ; $739a: $e1
    ld [$e0f1], a                                 ; $739b: $ea $f1 $e0
    ld bc, $e4f1                                  ; $739e: $01 $f1 $e4
    nop                                           ; $73a1: $00
    db $f4                                        ; $73a2: $f4
    pop hl                                        ; $73a3: $e1
    ret nz                                        ; $73a4: $c0

    nop                                           ; $73a5: $00
    sbc a                                         ; $73a6: $9f
    ei                                            ; $73a7: $fb
    rra                                           ; $73a8: $1f
    cp a                                          ; $73a9: $bf
    rra                                           ; $73aa: $1f
    ld [c], a                                     ; $73ab: $e2
    sbc a                                         ; $73ac: $9f
    db $10                                        ; $73ad: $10
    ret nz                                        ; $73ae: $c0

    nop                                           ; $73af: $00
    rst $38                                       ; $73b0: $ff
    ld sp, hl                                     ; $73b1: $f9
    rra                                           ; $73b2: $1f
    jr nz, jr_02e_7396                            ; $73b3: $20 $e1

    add d                                         ; $73b5: $82
    add sp, -$01                                  ; $73b6: $e8 $ff
    inc bc                                        ; $73b8: $03
    nop                                           ; $73b9: $00
    ld sp, hl                                     ; $73ba: $f9
    ld hl, sp+$7d                                 ; $73bb: $f8 $7d

jr_02e_73bd:
    db $fd                                        ; $73bd: $fd
    rra                                           ; $73be: $1f
    ld [c], a                                     ; $73bf: $e2
    ld sp, hl                                     ; $73c0: $f9
    ld bc, $0303                                  ; $73c1: $01 $03 $03
    rst $38                                       ; $73c4: $ff
    ld b, h                                       ; $73c5: $44
    pop hl                                        ; $73c6: $e1
    ld a, [hl]                                    ; $73c7: $7e
    ret nz                                        ; $73c8: $c0

    jp $f5f1                                      ; $73c9: $c3 $f1 $f5


    push af                                       ; $73cc: $f5
    pop af                                        ; $73cd: $f1
    pop af                                        ; $73ce: $f1
    rst $38                                       ; $73cf: $ff
    rst $28                                       ; $73d0: $ef
    ldh [rOBP1], a                                ; $73d1: $e0 $49
    cp $37                                        ; $73d3: $fe $37
    ldh [$88], a                                  ; $73d5: $e0 $88
    pop bc                                        ; $73d7: $c1
    inc bc                                        ; $73d8: $03
    jr jr_02e_73bd                                ; $73d9: $18 $e2

    dec e                                         ; $73db: $1d
    ldh [$f4], a                                  ; $73dc: $e0 $f4
    cp $e0                                        ; $73de: $fe $e0
    pop bc                                        ; $73e0: $c1
    inc b                                         ; $73e1: $04
    jr @-$18                                      ; $73e2: $18 $e6

    push af                                       ; $73e4: $f5
    rst $00                                       ; $73e5: $c7
    jp hl                                         ; $73e6: $e9


    ret z                                         ; $73e7: $c8

    ld e, b                                       ; $73e8: $58
    pop bc                                        ; $73e9: $c1
    dec b                                         ; $73ea: $05
    db $e3                                        ; $73eb: $e3
    di                                            ; $73ec: $f3
    nop                                           ; $73ed: $00
    ld [hl], a                                    ; $73ee: $77
    and $00                                       ; $73ef: $e6 $00
    call z, $e038                                 ; $73f1: $cc $38 $e0
    inc sp                                        ; $73f4: $33
    nop                                           ; $73f5: $00
    ld h, [hl]                                    ; $73f6: $66
    ld b, h                                       ; $73f7: $44
    jp nz, Jump_02e_6a1c                          ; $73f8: $c2 $1c $6a

    ldh [$f0], a                                  ; $73fb: $e0 $f0
    ldh [$9f], a                                  ; $73fd: $e0 $9f
    nop                                           ; $73ff: $00
    ccf                                           ; $7400: $3f
    ld c, e                                       ; $7401: $4b
    ret nz                                        ; $7402: $c0

    ret z                                         ; $7403: $c8

    jp hl                                         ; $7404: $e9


    ld l, c                                       ; $7405: $69
    add $55                                       ; $7406: $c6 $55
    rlca                                          ; $7408: $07
    ret z                                         ; $7409: $c8

    ret nz                                        ; $740a: $c0

    inc bc                                        ; $740b: $03
    jp nz, Jump_000_01c0                          ; $740c: $c2 $c0 $01

    di                                            ; $740f: $f3
    ret nz                                        ; $7410: $c0

    ei                                            ; $7411: $fb
    pop bc                                        ; $7412: $c1
    ldh [$2e], a                                  ; $7413: $e0 $2e
    dec c                                         ; $7415: $0d
    push bc                                       ; $7416: $c5
    db $fc                                        ; $7417: $fc
    nop                                           ; $7418: $00
    ld hl, sp-$02                                 ; $7419: $f8 $fe
    ldh [$f0], a                                  ; $741b: $e0 $f0
    sub c                                         ; $741d: $91
    call nz, $e7fc                                ; $741e: $c4 $fc $e7
    xor [hl]                                      ; $7421: $ae
    db $ed                                        ; $7422: $ed
    and c                                         ; $7423: $a1
    ccf                                           ; $7424: $3f
    nop                                           ; $7425: $00
    rrca                                          ; $7426: $0f
    sub d                                         ; $7427: $92
    ret nz                                        ; $7428: $c0

    nop                                           ; $7429: $00
    adc [hl]                                      ; $742a: $8e
    ret nz                                        ; $742b: $c0

    rrca                                          ; $742c: $0f
    ld h, $e2                                     ; $742d: $26 $e2
    db $e4                                        ; $742f: $e4
    ld b, $06                                     ; $7430: $06 $06
    reti                                          ; $7432: $d9


    db $e4                                        ; $7433: $e4
    rst $08                                       ; $7434: $cf
    and h                                         ; $7435: $a4
    ret nz                                        ; $7436: $c0

    inc b                                         ; $7437: $04
    ldh [$2d], a                                  ; $7438: $e0 $2d
    call nz, $bdee                                ; $743a: $c4 $ee $bd
    xor d                                         ; $743d: $aa
    ld a, [$5a00]                                 ; $743e: $fa $00 $5a
    jp nc, $a5a2                                  ; $7441: $d2 $a2 $a5

    nop                                           ; $7444: $00
    add c                                         ; $7445: $81
    ld a, $fe                                     ; $7446: $3e $fe
    ldh [rIE], a                                  ; $7448: $e0 $ff
    nop                                           ; $744a: $00
    ld h, l                                       ; $744b: $65
    nop                                           ; $744c: $00
    db $fd                                        ; $744d: $fd
    dec [hl]                                      ; $744e: $35
    ret nz                                        ; $744f: $c0

    sbc h                                         ; $7450: $9c
    push hl                                       ; $7451: $e5
    cp $3e                                        ; $7452: $fe $3e
    ret nz                                        ; $7454: $c0

    add b                                         ; $7455: $80
    rlca                                          ; $7456: $07
    add b                                         ; $7457: $80
    nop                                           ; $7458: $00
    add d                                         ; $7459: $82
    nop                                           ; $745a: $00
    sub e                                         ; $745b: $93
    cp e                                          ; $745c: $bb
    nop                                           ; $745d: $00
    sbc e                                         ; $745e: $9b
    ld [hl], h                                    ; $745f: $74
    ret nz                                        ; $7460: $c0

    adc b                                         ; $7461: $88
    nop                                           ; $7462: $00
    add b                                         ; $7463: $80
    push bc                                       ; $7464: $c5
    and e                                         ; $7465: $a3
    ccf                                           ; $7466: $3f
    dec hl                                        ; $7467: $2b
    nop                                           ; $7468: $00
    rra                                           ; $7469: $1f
    cp $e0                                        ; $746a: $fe $e0
    rrca                                          ; $746c: $0f
    cp $e1                                        ; $746d: $fe $e1
    db $fc                                        ; $746f: $fc
    db $ec                                        ; $7470: $ec
    ldh [$fe], a                                  ; $7471: $e0 $fe
    jp hl                                         ; $7473: $e9


    xor d                                         ; $7474: $aa
    ld b, c                                       ; $7475: $41
    db $e3                                        ; $7476: $e3
    inc bc                                        ; $7477: $03
    add hl, sp                                    ; $7478: $39
    ldh [rTAC], a                                 ; $7479: $e0 $07
    ld l, e                                       ; $747b: $6b
    ldh [$3f], a                                  ; $747c: $e0 $3f
    rlca                                          ; $747e: $07
    rst $08                                       ; $747f: $cf
    rlca                                          ; $7480: $07
    adc d                                         ; $7481: $8a
    dec a                                         ; $7482: $3d
    xor h                                         ; $7483: $ac
    ld a, [c]                                     ; $7484: $f2
    ld a, [de]                                    ; $7485: $1a
    ldh [$f9], a                                  ; $7486: $e0 $f9
    adc h                                         ; $7488: $8c
    ld [c], a                                     ; $7489: $e2
    inc hl                                        ; $748a: $23
    and e                                         ; $748b: $a3
    ld [hl+], a                                   ; $748c: $22
    db $eb                                        ; $748d: $eb
    cp $fc                                        ; $748e: $fe $fc
    rst $10                                       ; $7490: $d7
    ret nz                                        ; $7491: $c0

    dec bc                                        ; $7492: $0b
    xor d                                         ; $7493: $aa
    cp $00                                        ; $7494: $fe $00
    ld [c], a                                     ; $7496: $e2
    nop                                           ; $7497: $00
    adc [hl]                                      ; $7498: $8e
    ld b, $df                                     ; $7499: $06 $df
    ld a, $1e                                     ; $749b: $3e $1e
    adc a                                         ; $749d: $8f
    rlca                                          ; $749e: $07
    ldh [$f4], a                                  ; $749f: $e0 $f4
    add h                                         ; $74a1: $84
    adc a                                         ; $74a2: $8f
    nop                                           ; $74a3: $00
    ld a, a                                       ; $74a4: $7f
    db $e3                                        ; $74a5: $e3
    ret nz                                        ; $74a6: $c0

    ld sp, hl                                     ; $74a7: $f9
    ldh a, [$e3]                                  ; $74a8: $f0 $e3
    ret nz                                        ; $74aa: $c0

    rrca                                          ; $74ab: $0f
    ldh a, [$83]                                  ; $74ac: $f0 $83
    ld d, c                                       ; $74ae: $51
    ld hl, sp-$23                                 ; $74af: $f8 $dd
    add b                                         ; $74b1: $80
    inc a                                         ; $74b2: $3c
    pop hl                                        ; $74b3: $e1
    jp c, Jump_000_01c5                           ; $74b4: $da $c5 $01

    call Call_02e_6a80                            ; $74b7: $cd $80 $6a
    halt                                          ; $74ba: $76
    and b                                         ; $74bb: $a0
    cp d                                          ; $74bc: $ba
    inc e                                         ; $74bd: $1c
    db $e3                                        ; $74be: $e3
    rst $38                                       ; $74bf: $ff
    ld l, h                                       ; $74c0: $6c
    and b                                         ; $74c1: $a0
    inc bc                                        ; $74c2: $03
    nop                                           ; $74c3: $00
    ld sp, $e0fe                                  ; $74c4: $31 $fe $e0
    rst $38                                       ; $74c7: $ff
    ld d, e                                       ; $74c8: $53
    nop                                           ; $74c9: $00
    ld c, d                                       ; $74ca: $4a
    ld [$42e1], a                                 ; $74cb: $ea $e1 $42
    push hl                                       ; $74ce: $e5
    add a                                         ; $74cf: $87
    and [hl]                                      ; $74d0: $a6
    add b                                         ; $74d1: $80
    ld hl, sp+$20                                 ; $74d2: $f8 $20
    pop hl                                        ; $74d4: $e1
    ld e, [hl]                                    ; $74d5: $5e
    ld h, $e1                                     ; $74d6: $26 $e1
    ccf                                           ; $74d8: $3f
    ret nz                                        ; $74d9: $c0

    jr c, @-$22                                   ; $74da: $38 $dc

    ld hl, $07e2                                  ; $74dc: $21 $e2 $07
    db $eb                                        ; $74df: $eb
    jp nz, $ffe7                                  ; $74e0: $c2 $e7 $ff

    nop                                           ; $74e3: $00
    add e                                         ; $74e4: $83
    cp $e6                                        ; $74e5: $fe $e6
    ld h, l                                       ; $74e7: $65
    nop                                           ; $74e8: $00
    add c                                         ; $74e9: $81
    pop bc                                        ; $74ea: $c1
    add e                                         ; $74eb: $83
    push hl                                       ; $74ec: $e5
    db $dd                                        ; $74ed: $dd
    cp $e2                                        ; $74ee: $fe $e2
    pop bc                                        ; $74f0: $c1
    ld [hl], b                                    ; $74f1: $70
    ld h, b                                       ; $74f2: $60
    ld d, l                                       ; $74f3: $55
    nop                                           ; $74f4: $00
    add b                                         ; $74f5: $80
    ret nz                                        ; $74f6: $c0

    add b                                         ; $74f7: $80
    push af                                       ; $74f8: $f5
    rst $18                                       ; $74f9: $df
    cp $e2                                        ; $74fa: $fe $e2
    ret nz                                        ; $74fc: $c0

    ldh a, [$e3]                                  ; $74fd: $f0 $e3
    ld bc, $0701                                  ; $74ff: $01 $01 $07
    ld sp, hl                                     ; $7502: $f9
    ld d, d                                       ; $7503: $52
    cp $e2                                        ; $7504: $fe $e2
    ld bc, $419f                                  ; $7506: $01 $9f $41
    ld e, d                                       ; $7509: $5a
    push bc                                       ; $750a: $c5
    ret nz                                        ; $750b: $c0

    rst $10                                       ; $750c: $d7
    jp nz, $90c0                                  ; $750d: $c2 $c0 $90

    ret nz                                        ; $7510: $c0

    add hl, bc                                    ; $7511: $09
    ld b, d                                       ; $7512: $42
    cp $e0                                        ; $7513: $fe $e0
    jr c, @+$69                                   ; $7515: $38 $67

    ld a, c                                       ; $7517: $79
    cp $e2                                        ; $7518: $fe $e2
    jr z, jr_02e_7582                             ; $751a: $28 $66

    or d                                          ; $751c: $b2
    ret                                           ; $751d: $c9


    sub d                                         ; $751e: $92
    ldh [$3a], a                                  ; $751f: $e0 $3a
    cp b                                          ; $7521: $b8
    call nz, $8f0f                                ; $7522: $c4 $0f $8f
    ret nz                                        ; $7525: $c0

    ld a, a                                       ; $7526: $7f
    nop                                           ; $7527: $00
    rst $28                                       ; $7528: $ef
    ld e, d                                       ; $7529: $5a
    ldh [rPCM12], a                               ; $752a: $e0 $76
    rst $20                                       ; $752c: $e7
    dec c                                         ; $752d: $0d
    add e                                         ; $752e: $83
    ld c, h                                       ; $752f: $4c
    ldh [$9f], a                                  ; $7530: $e0 $9f
    nop                                           ; $7532: $00
    nop                                           ; $7533: $00
    nop                                           ; $7534: $00
    nop                                           ; $7535: $00
    xor l                                         ; $7536: $ad
    halt                                          ; $7537: $76
    rst $38                                       ; $7538: $ff
    ldh [$6f], a                                  ; $7539: $e0 $6f
    ld [hl], b                                    ; $753b: $70
    rst $38                                       ; $753c: $ff
    and $6f                                       ; $753d: $e6 $6f
    ldh a, [$e1]                                  ; $753f: $f0 $e1
    ld e, [hl]                                    ; $7541: $5e
    db $fc                                        ; $7542: $fc
    rst $38                                       ; $7543: $ff
    rst $38                                       ; $7544: $ff
    rst $20                                       ; $7545: $e7
    and $8b                                       ; $7546: $e6 $8b
    adc h                                         ; $7548: $8c
    adc l                                         ; $7549: $8d
    ld a, b                                       ; $754a: $78
    ld a, a                                       ; $754b: $7f
    ld a, l                                       ; $754c: $7d
    ld a, $ff                                     ; $754d: $3e $ff
    and $7f                                       ; $754f: $e6 $7f
    ld a, b                                       ; $7551: $78
    adc l                                         ; $7552: $8d
    adc h                                         ; $7553: $8c
    adc e                                         ; $7554: $8b
    jp z, $e8ff                                   ; $7555: $ca $ff $e8

    rst $20                                       ; $7558: $e7
    rst $28                                       ; $7559: $ef
    sbc c                                         ; $755a: $99
    sbc d                                         ; $755b: $9a
    sbc e                                         ; $755c: $9b
    add [hl]                                      ; $755d: $86
    add b                                         ; $755e: $80
    jp hl                                         ; $755f: $e9


    add [hl]                                      ; $7560: $86
    sbc e                                         ; $7561: $9b
    sbc d                                         ; $7562: $9a
    adc c                                         ; $7563: $89
    sbc c                                         ; $7564: $99
    jp z, $e8ff                                   ; $7565: $ca $ff $e8

    rst $20                                       ; $7568: $e7

jr_02e_7569:
    ld a, [hl]                                    ; $7569: $7e
    rst $38                                       ; $756a: $ff
    ldh a, [$ca]                                  ; $756b: $f0 $ca
    rst $38                                       ; $756d: $ff
    ret nz                                        ; $756e: $c0

    db $eb                                        ; $756f: $eb
    jr nz, jr_02e_7569                            ; $7570: $20 $f7

jr_02e_7572:
    ld e, d                                       ; $7572: $5a
    ld e, e                                       ; $7573: $5b
    jr nz, jr_02e_7572                            ; $7574: $20 $fc

    push hl                                       ; $7576: $e5
    ld a, [hl]                                    ; $7577: $7e
    sub d                                         ; $7578: $92
    sub e                                         ; $7579: $93
    sub h                                         ; $757a: $94
    cp h                                          ; $757b: $bc
    jp z, $80ff                                   ; $757c: $ca $ff $80

    db $eb                                        ; $757f: $eb
    ld b, [hl]                                    ; $7580: $46
    ld h, h                                       ; $7581: $64

jr_02e_7582:
    ld h, l                                       ; $7582: $65
    ld c, c                                       ; $7583: $49
    db $fc                                        ; $7584: $fc
    push hl                                       ; $7585: $e5
    ld a, [hl]                                    ; $7586: $7e
    rst $20                                       ; $7587: $e7
    and b                                         ; $7588: $a0
    and c                                         ; $7589: $a1
    and d                                         ; $758a: $a2
    jp z, $80ff                                   ; $758b: $ca $ff $80

    db $ec                                        ; $758e: $ec

jr_02e_758f:
    ld l, h                                       ; $758f: $6c
    ld l, l                                       ; $7590: $6d
    jr nz, @-$60                                  ; $7591: $20 $9e

    db $fc                                        ; $7593: $fc
    push hl                                       ; $7594: $e5
    ld a, [hl]                                    ; $7595: $7e
    xor c                                         ; $7596: $a9
    xor d                                         ; $7597: $aa
    xor e                                         ; $7598: $ab
    jp z, Jump_000_00ff                           ; $7599: $ca $ff $00

    db $eb                                        ; $759c: $eb
    ld d, l                                       ; $759d: $55
    rst $38                                       ; $759e: $ff
    ld d, [hl]                                    ; $759f: $56
    ld d, a                                       ; $75a0: $57
    jr nz, jr_02e_75d1                            ; $75a1: $20 $2e

    cpl                                           ; $75a3: $2f
    jr nc, @+$33                                  ; $75a4: $30 $31

    jr nz, jr_02e_758f                            ; $75a6: $20 $e7

    ld [hl-], a                                   ; $75a8: $32
    inc sp                                        ; $75a9: $33
    jr nz, jr_02e_75ac                            ; $75aa: $20 $00

jr_02e_75ac:
    rst $38                                       ; $75ac: $ff
    db $ec                                        ; $75ad: $ec
    db $eb                                        ; $75ae: $eb
    sub l                                         ; $75af: $95
    sub [hl]                                      ; $75b0: $96
    ld a, [hl]                                    ; $75b1: $7e
    rst $38                                       ; $75b2: $ff
    ld a, [hl]                                    ; $75b3: $7e
    ld c, c                                       ; $75b4: $49
    ld e, a                                       ; $75b5: $5f
    ld h, b                                       ; $75b6: $60
    ld c, c                                       ; $75b7: $49
    ld a, [hl-]                                   ; $75b8: $3a
    dec sp                                        ; $75b9: $3b
    inc a                                         ; $75ba: $3c
    rst $38                                       ; $75bb: $ff
    dec a                                         ; $75bc: $3d
    ld a, $3f                                     ; $75bd: $3e $3f
    ld b, b                                       ; $75bf: $40
    ld b, c                                       ; $75c0: $41
    ld a, [hl]                                    ; $75c1: $7e
    ld a, [hl]                                    ; $75c2: $7e
    sub [hl]                                      ; $75c3: $96
    ld sp, hl                                     ; $75c4: $f9
    sub l                                         ; $75c5: $95
    jp z, $e8ff                                   ; $75c6: $ca $ff $e8

    rst $20                                       ; $75c9: $e7
    and e                                         ; $75ca: $a3
    and h                                         ; $75cb: $a4
    ld a, c                                       ; $75cc: $79
    ld a, c                                       ; $75cd: $79
    jr nz, @+$01                                  ; $75ce: $20 $ff

    ld l, b                                       ; $75d0: $68

jr_02e_75d1:
    ld l, c                                       ; $75d1: $69
    jr nz, @+$22                                  ; $75d2: $20 $20

    ld c, d                                       ; $75d4: $4a
    ld c, e                                       ; $75d5: $4b
    jr nz, jr_02e_7624                            ; $75d6: $20 $4c

    ld a, a                                       ; $75d8: $7f
    ld c, l                                       ; $75d9: $4d
    ld c, [hl]                                    ; $75da: $4e
    ld c, a                                       ; $75db: $4f
    ld a, c                                       ; $75dc: $79
    ld a, c                                       ; $75dd: $79
    and h                                         ; $75de: $a4
    and e                                         ; $75df: $a3
    jp z, $feff                                   ; $75e0: $ca $ff $fe

    add sp, -$19                                  ; $75e3: $e8 $e7
    xor h                                         ; $75e5: $ac
    xor l                                         ; $75e6: $ad
    ld l, [hl]                                    ; $75e7: $6e
    ld l, [hl]                                    ; $75e8: $6e
    inc [hl]                                      ; $75e9: $34
    dec [hl]                                      ; $75ea: $35
    ld [hl], $ff                                  ; $75eb: $36 $ff
    scf                                           ; $75ed: $37
    jr nz, jr_02e_7648                            ; $75ee: $20 $58

    ld e, c                                       ; $75f0: $59
    jr nz, jr_02e_7613                            ; $75f1: $20 $20

    jr c, jr_02e_762e                             ; $75f3: $38 $39

    sbc a                                         ; $75f5: $9f
    jr nz, @+$70                                  ; $75f6: $20 $6e

    ld l, [hl]                                    ; $75f8: $6e
    xor l                                         ; $75f9: $ad
    xor h                                         ; $75fa: $ac
    jp z, $e8ff                                   ; $75fb: $ca $ff $e8

    rst $20                                       ; $75fe: $e7
    sub a                                         ; $75ff: $97
    rst $38                                       ; $7600: $ff
    sbc b                                         ; $7601: $98
    ld l, [hl]                                    ; $7602: $6e

Jump_02e_7603:
    ld l, [hl]                                    ; $7603: $6e
    ld b, d                                       ; $7604: $42
    ld b, e                                       ; $7605: $43
    ld b, h                                       ; $7606: $44
    ld b, l                                       ; $7607: $45
    ld c, c                                       ; $7608: $49
    rst $38                                       ; $7609: $ff
    ld h, c                                       ; $760a: $61
    ld h, d                                       ; $760b: $62
    ld h, e                                       ; $760c: $63
    ld b, [hl]                                    ; $760d: $46
    ld b, a                                       ; $760e: $47
    ld c, b                                       ; $760f: $48
    ld c, c                                       ; $7610: $49
    ld l, [hl]                                    ; $7611: $6e
    rst $20                                       ; $7612: $e7

jr_02e_7613:
    ld l, [hl]                                    ; $7613: $6e
    sbc b                                         ; $7614: $98
    sub a                                         ; $7615: $97
    jp z, $e8ff                                   ; $7616: $ca $ff $e8

    rst $20                                       ; $7619: $e7
    and l                                         ; $761a: $a5
    ld l, [hl]                                    ; $761b: $6e
    ld l, [hl]                                    ; $761c: $6e
    rst $38                                       ; $761d: $ff
    ld l, [hl]                                    ; $761e: $6e
    ld d, b                                       ; $761f: $50
    ld d, c                                       ; $7620: $51
    ld d, d                                       ; $7621: $52
    jr nz, @+$22                                  ; $7622: $20 $20

jr_02e_7624:
    ld l, d                                       ; $7624: $6a
    ld l, e                                       ; $7625: $6b
    ld l, a                                       ; $7626: $6f
    jr nz, jr_02e_7649                            ; $7627: $20 $20

    ld d, e                                       ; $7629: $53
    ld d, h                                       ; $762a: $54
    add b                                         ; $762b: $80
    ldh [$6e], a                                  ; $762c: $e0 $6e

jr_02e_762e:
    and l                                         ; $762e: $a5
    jp z, $12ff                                   ; $762f: $ca $ff $12

    add sp, -$19                                  ; $7632: $e8 $e7
    xor [hl]                                      ; $7634: $ae
    ret nz                                        ; $7635: $c0

    ldh [$fd], a                                  ; $7636: $e0 $fd
    db $ec                                        ; $7638: $ec
    xor [hl]                                      ; $7639: $ae
    jp z, $e8ff                                   ; $763a: $ca $ff $e8

    rst $20                                       ; $763d: $e7
    pop bc                                        ; $763e: $c1
    rst $28                                       ; $763f: $ef
    ld b, e                                       ; $7640: $43
    ld l, [hl]                                    ; $7641: $6e
    ld l, [hl]                                    ; $7642: $6e
    jp z, $c0ff                                   ; $7643: $ca $ff $c0

    rst $38                                       ; $7646: $ff
    rst $38                                       ; $7647: $ff

jr_02e_7648:
    rst $38                                       ; $7648: $ff

jr_02e_7649:
    ret nz                                        ; $7649: $c0

    add sp, -$5a                                  ; $764a: $e8 $a6
    rst $38                                       ; $764c: $ff
    ldh [rNR44], a                                ; $764d: $e0 $23
    and a                                         ; $764f: $a7
    xor b                                         ; $7650: $a8
    ld a, [$c0e1]                                 ; $7651: $fa $e1 $c0
    rst $38                                       ; $7654: $ff
    db $ed                                        ; $7655: $ed
    db $ec                                        ; $7656: $ec
    add a                                         ; $7657: $87
    rst $38                                       ; $7658: $ff
    ldh a, [$ca]                                  ; $7659: $f0 $ca
    rst $38                                       ; $765b: $ff
    cp $e8                                        ; $765c: $fe $e8
    rst $20                                       ; $765e: $e7
    nop                                           ; $765f: $00
    ld bc, $0302                                  ; $7660: $01 $02 $03
    inc b                                         ; $7663: $04
    dec b                                         ; $7664: $05
    ld b, $ff                                     ; $7665: $06 $ff
    rlca                                          ; $7667: $07
    ld [$0a09], sp                                ; $7668: $08 $09 $0a
    dec bc                                        ; $766b: $0b
    inc c                                         ; $766c: $0c
    dec c                                         ; $766d: $0d
    ld c, $e7                                     ; $766e: $0e $e7
    rrca                                          ; $7670: $0f
    ld e, h                                       ; $7671: $5c
    ld e, l                                       ; $7672: $5d
    call z, $eaff                                 ; $7673: $cc $ff $ea
    jp hl                                         ; $7676: $e9


    db $10                                        ; $7677: $10
    ld de, $ff12                                  ; $7678: $11 $12 $ff
    inc de                                        ; $767b: $13
    inc d                                         ; $767c: $14
    dec d                                         ; $767d: $15
    ld d, $17                                     ; $767e: $16 $17
    jr @+$1b                                      ; $7680: $18 $19

    ld a, [de]                                    ; $7682: $1a
    ld a, a                                       ; $7683: $7f
    dec de                                        ; $7684: $1b
    inc e                                         ; $7685: $1c
    dec e                                         ; $7686: $1d
    ld e, $1f                                     ; $7687: $1e $1f
    ld h, [hl]                                    ; $7689: $66
    ld h, a                                       ; $768a: $67
    call z, $feff                                 ; $768b: $cc $ff $fe
    ld [$20e9], a                                 ; $768e: $ea $e9 $20
    ld hl, $2322                                  ; $7691: $21 $22 $23
    inc h                                         ; $7694: $24
    dec h                                         ; $7695: $25
    ld h, $ff                                     ; $7696: $26 $ff
    jr nz, jr_02e_76c1                            ; $7698: $20 $27

    jr z, jr_02e_76c5                             ; $769a: $28 $29

    jr nz, jr_02e_76c8                            ; $769c: $20 $2a

    dec hl                                        ; $769e: $2b
    inc l                                         ; $769f: $2c
    ld bc, $ce2d                                  ; $76a0: $01 $2d $ce
    rst $38                                       ; $76a3: $ff
    db $ec                                        ; $76a4: $ec
    db $eb                                        ; $76a5: $eb
    rst $00                                       ; $76a6: $c7
    pop bc                                        ; $76a7: $c1
    push bc                                       ; $76a8: $c5
    jp $c3bf                                      ; $76a9: $c3 $bf $c3


    or l                                          ; $76ac: $b5
    pop bc                                        ; $76ad: $c1
    jp z, Jump_000_00ff                           ; $76ae: $ca $ff $00

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

jr_02e_76c1:
    nop                                           ; $76c1: $00
    rst $38                                       ; $76c2: $ff
    rst $38                                       ; $76c3: $ff
    rst $38                                       ; $76c4: $ff

jr_02e_76c5:
    rst $38                                       ; $76c5: $ff
    rst $38                                       ; $76c6: $ff
    rst $38                                       ; $76c7: $ff

jr_02e_76c8:
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
    nop                                           ; $76d2: $00
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

Jump_02e_76e2:
    rst $38                                       ; $76e2: $ff
    nop                                           ; $76e3: $00
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
    nop                                           ; $76f4: $00
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
    nop                                           ; $7705: $00
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
    nop                                           ; $7716: $00
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
    nop                                           ; $7727: $00
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
    nop                                           ; $7738: $00
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
    nop                                           ; $7749: $00
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
    jp hl                                         ; $7759: $e9


    nop                                           ; $775a: $00
    nop                                           ; $775b: $00
    nop                                           ; $775c: $00
    dec d                                         ; $775d: $15
    ld a, [bc]                                    ; $775e: $0a
    rst $38                                       ; $775f: $ff
    db $eb                                        ; $7760: $eb
    ld a, [hl+]                                   ; $7761: $2a
    rst $38                                       ; $7762: $ff
    pop hl                                        ; $7763: $e1
    ld [$ffff], sp                                ; $7764: $08 $ff $ff
    rst $20                                       ; $7767: $e7
    and $c0                                       ; $7768: $e6 $c0
    rst $38                                       ; $776a: $ff
    ld a, [bc]                                    ; $776b: $0a
    ret nz                                        ; $776c: $c0

    rst $38                                       ; $776d: $ff
    ld c, d                                       ; $776e: $4a
    rst $38                                       ; $776f: $ff
    rst $20                                       ; $7770: $e7
    ld l, d                                       ; $7771: $6a
    ret nz                                        ; $7772: $c0

    rst $38                                       ; $7773: $ff
    add b                                         ; $7774: $80
    ld a, [$e271]                                 ; $7775: $fa $71 $e2
    jp z, Jump_000_1eff                           ; $7778: $ca $ff $1e

    ld b, b                                       ; $777b: $40
    db $eb                                        ; $777c: $eb
    ld c, [hl]                                    ; $777d: $4e
    ld c, $0e                                     ; $777e: $0e $0e
    ld l, [hl]                                    ; $7780: $6e
    db $fc                                        ; $7781: $fc
    push hl                                       ; $7782: $e5
    ret nz                                        ; $7783: $c0

    rst $38                                       ; $7784: $ff
    nop                                           ; $7785: $00
    rst $28                                       ; $7786: $ef
    ld de, $ff0e                                  ; $7787: $11 $0e $ff
    add sp, -$40                                  ; $778a: $e8 $c0
    rst $38                                       ; $778c: $ff
    ret nz                                        ; $778d: $c0

    ld a, [c]                                     ; $778e: $f2
    ld l, $fc                                     ; $778f: $2e $fc
    push hl                                       ; $7791: $e5
    ret nz                                        ; $7792: $c0

    rst $38                                       ; $7793: $ff
    add b                                         ; $7794: $80
    rst $08                                       ; $7795: $cf
    rra                                           ; $7796: $1f
    inc c                                         ; $7797: $0c
    inc c                                         ; $7798: $0c
    inc c                                         ; $7799: $0c
    ld l, h                                       ; $779a: $6c
    dec c                                         ; $779b: $0d
    rst $38                                       ; $779c: $ff
    ldh [rLCDC], a                                ; $779d: $e0 $40
    rst $38                                       ; $779f: $ff
    ld b, b                                       ; $77a0: $40
    db $d3                                        ; $77a1: $d3
    ld b, c                                       ; $77a2: $41
    inc l                                         ; $77a3: $2c
    cp a                                          ; $77a4: $bf
    ldh [$c0], a                                  ; $77a5: $e0 $c0
    pop hl                                        ; $77a7: $e1
    ld b, b                                       ; $77a8: $40
    db $e3                                        ; $77a9: $e3
    add b                                         ; $77aa: $80
    rst $18                                       ; $77ab: $df
    add b                                         ; $77ac: $80
    ldh a, [$2c]                                  ; $77ad: $f0 $2c
    add b                                         ; $77af: $80
    ldh [$e9], a                                  ; $77b0: $e0 $e9
    dec l                                         ; $77b2: $2d
    ret nz                                        ; $77b3: $c0

    rst $38                                       ; $77b4: $ff
    ret nz                                        ; $77b5: $c0

    or e                                          ; $77b6: $b3
    rrca                                          ; $77b7: $0f
    rst $38                                       ; $77b8: $ff
    ldh [rWX], a                                  ; $77b9: $e0 $4b
    dec bc                                        ; $77bb: $0b
    dec bc                                        ; $77bc: $0b
    pop af                                        ; $77bd: $f1
    ld l, e                                       ; $77be: $6b
    ld b, b                                       ; $77bf: $40
    db $e3                                        ; $77c0: $e3
    ret nz                                        ; $77c1: $c0

    rst $38                                       ; $77c2: $ff
    ret nz                                        ; $77c3: $c0

    pop af                                        ; $77c4: $f1
    dec hl                                        ; $77c5: $2b
    dec bc                                        ; $77c6: $0b
    dec bc                                        ; $77c7: $0b
    dec bc                                        ; $77c8: $0b
    inc d                                         ; $77c9: $14
    add b                                         ; $77ca: $80
    rst $38                                       ; $77cb: $ff
    add b                                         ; $77cc: $80
    or $2f                                        ; $77cd: $f6 $2f
    pop bc                                        ; $77cf: $c1
    ldh [$2b], a                                  ; $77d0: $e0 $2b
    add b                                         ; $77d2: $80
    jp $ffc0                                      ; $77d3: $c3 $c0 $ff


    add b                                         ; $77d6: $80
    cp e                                          ; $77d7: $bb
    ret nz                                        ; $77d8: $c0

    ret nz                                        ; $77d9: $c0

    rst $38                                       ; $77da: $ff
    ld b, b                                       ; $77db: $40
    cp a                                          ; $77dc: $bf
    rst $38                                       ; $77dd: $ff
    rst $38                                       ; $77de: $ff
    ret nz                                        ; $77df: $c0

    rst $38                                       ; $77e0: $ff
    rst $38                                       ; $77e1: $ff
    rst $38                                       ; $77e2: $ff
    ld b, b                                       ; $77e3: $40
    adc d                                         ; $77e4: $8a
    dec bc                                        ; $77e5: $0b
    dec bc                                        ; $77e6: $0b
    nop                                           ; $77e7: $00
    ret nz                                        ; $77e8: $c0

    rst $38                                       ; $77e9: $ff
    add b                                         ; $77ea: $80
    cp $01                                        ; $77eb: $fe $01
    add d                                         ; $77ed: $82
    nop                                           ; $77ee: $00
    rst $38                                       ; $77ef: $ff
    jp hl                                         ; $77f0: $e9


    add sp, $44                                   ; $77f1: $e8 $44
    and b                                         ; $77f3: $a0
    add h                                         ; $77f4: $84
    and [hl]                                      ; $77f5: $a6
    ld hl, sp-$5f                                 ; $77f6: $f8 $a1
    adc h                                         ; $77f8: $8c
    adc $ff                                       ; $77f9: $ce $ff
    ret nz                                        ; $77fb: $c0

    ei                                            ; $77fc: $fb
    add hl, bc                                    ; $77fd: $09
    add hl, bc                                    ; $77fe: $09
    call z, $80ff                                 ; $77ff: $cc $ff $80
    ldh a, [rLY]                                  ; $7802: $f0 $44
    and c                                         ; $7804: $a1
    ld l, $44                                     ; $7805: $2e $44
    add b                                         ; $7807: $80
    rst $38                                       ; $7808: $ff
    ldh a, [$ef]                                  ; $7809: $f0 $ef
    dec bc                                        ; $780b: $0b
    rst $00                                       ; $780c: $c7
    add $bf                                       ; $780d: $c6 $bf
    jp $a079                                      ; $780f: $c3 $79 $a0


    dec bc                                        ; $7812: $0b
    jp z, Jump_000_00ff                           ; $7813: $ca $ff $00

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
    nop                                           ; $7826: $00
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
    nop                                           ; $7837: $00
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
    nop                                           ; $7848: $00
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
    nop                                           ; $7859: $00
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
    nop                                           ; $786a: $00
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
    nop                                           ; $787b: $00
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
    nop                                           ; $788c: $00
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
    nop                                           ; $789d: $00
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
    nop                                           ; $78ae: $00
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
    jp hl                                         ; $78be: $e9


    nop                                           ; $78bf: $00
    nop                                           ; $78c0: $00
    nop                                           ; $78c1: $00
    ld bc, $ff00                                  ; $78c2: $01 $00 $ff
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
    nop                                           ; $78d2: $00
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
    nop                                           ; $78e3: $00
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
    nop                                           ; $78f4: $00
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
    ldh [rP1], a                                  ; $7904: $e0 $00
    nop                                           ; $7906: $00
    nop                                           ; $7907: $00
    ld bc, $ff00                                  ; $7908: $01 $00 $ff
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
    nop                                           ; $7918: $00
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
    nop                                           ; $7929: $00
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
    nop                                           ; $793a: $00
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
    ldh [rP1], a                                  ; $794a: $e0 $00
    nop                                           ; $794c: $00
    nop                                           ; $794d: $00
    cp $01                                        ; $794e: $fe $01
    nop                                           ; $7950: $00
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
    nop                                           ; $795f: $00
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
    nop                                           ; $7970: $00
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
    nop                                           ; $7981: $00
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
    nop                                           ; $7992: $00
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
    nop                                           ; $79a3: $00
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
    nop                                           ; $79b4: $00
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
    nop                                           ; $79c5: $00
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
    db $e4                                        ; $79d1: $e4
    nop                                           ; $79d2: $00
    nop                                           ; $79d3: $00
    nop                                           ; $79d4: $00
    push af                                       ; $79d5: $f5
    push bc                                       ; $79d6: $c5
    push de                                       ; $79d7: $d5
    push hl                                       ; $79d8: $e5
    ld [$c32f], a                                 ; $79d9: $ea $2f $c3
    ld c, a                                       ; $79dc: $4f
    ld a, $ff                                     ; $79dd: $3e $ff
    ld b, $01                                     ; $79df: $06 $01
    ld hl, $c330                                  ; $79e1: $21 $30 $c3
    ld [hl+], a                                   ; $79e4: $22
    ld [hl], b                                    ; $79e5: $70
    inc hl                                        ; $79e6: $23
    ld [hl+], a                                   ; $79e7: $22
    ld [hl], b                                    ; $79e8: $70
    inc hl                                        ; $79e9: $23
    ld [hl+], a                                   ; $79ea: $22
    ld [hl], b                                    ; $79eb: $70
    inc hl                                        ; $79ec: $23
    ld [hl+], a                                   ; $79ed: $22
    ld [hl], b                                    ; $79ee: $70
    inc hl                                        ; $79ef: $23
    ld [hl+], a                                   ; $79f0: $22
    ld [hl+], a                                   ; $79f1: $22
    ld [hl+], a                                   ; $79f2: $22
    ld [hl+], a                                   ; $79f3: $22
    ld a, c                                       ; $79f4: $79
    ld h, $00                                     ; $79f5: $26 $00
    ld l, a                                       ; $79f7: $6f
    add hl, hl                                    ; $79f8: $29
    ld bc, $403a                                  ; $79f9: $01 $3a $40
    add hl, bc                                    ; $79fc: $09
    ld a, [hl+]                                   ; $79fd: $2a
    ld h, [hl]                                    ; $79fe: $66
    ld l, a                                       ; $79ff: $6f
    ld a, [hl]                                    ; $7a00: $7e
    cp $fe                                        ; $7a01: $fe $fe
    jr nz, jr_02e_7a07                            ; $7a03: $20 $02

    jr jr_02e_7a77                                ; $7a05: $18 $70

jr_02e_7a07:
    add sp, -$02                                  ; $7a07: $e8 $fe
    ld de, $c332                                  ; $7a09: $11 $32 $c3
    push hl                                       ; $7a0c: $e5
    ld hl, sp+$02                                 ; $7a0d: $f8 $02
    ld [hl], e                                    ; $7a0f: $73
    inc hl                                        ; $7a10: $23
    ld [hl], d                                    ; $7a11: $72
    pop hl                                        ; $7a12: $e1
    ld d, h                                       ; $7a13: $54
    ld e, l                                       ; $7a14: $5d
    ld b, $ff                                     ; $7a15: $06 $ff
    ld c, $03                                     ; $7a17: $0e $03
    xor a                                         ; $7a19: $af
    ld hl, $c330                                  ; $7a1a: $21 $30 $c3
    ld [hl], a                                    ; $7a1d: $77
    ld hl, $c338                                  ; $7a1e: $21 $38 $c3
    ld [hl], a                                    ; $7a21: $77
    inc hl                                        ; $7a22: $23

jr_02e_7a23:
    inc b                                         ; $7a23: $04
    ld a, [de]                                    ; $7a24: $1a
    inc de                                        ; $7a25: $13
    cp $fe                                        ; $7a26: $fe $fe
    jr z, jr_02e_7a5f                             ; $7a28: $28 $35

    cp $ff                                        ; $7a2a: $fe $ff
    jr nz, jr_02e_7a23                            ; $7a2c: $20 $f5

    inc b                                         ; $7a2e: $04
    ld a, b                                       ; $7a2f: $78
    inc a                                         ; $7a30: $3c
    ld [hl], a                                    ; $7a31: $77
    push de                                       ; $7a32: $d5
    push hl                                       ; $7a33: $e5
    ld hl, sp+$04                                 ; $7a34: $f8 $04
    ld e, [hl]                                    ; $7a36: $5e
    inc hl                                        ; $7a37: $23
    ld d, [hl]                                    ; $7a38: $56
    pop hl                                        ; $7a39: $e1
    ld [de], a                                    ; $7a3a: $12
    inc de                                        ; $7a3b: $13
    inc de                                        ; $7a3c: $13
    push hl                                       ; $7a3d: $e5
    ld hl, sp+$04                                 ; $7a3e: $f8 $04
    ld [hl], e                                    ; $7a40: $73
    inc hl                                        ; $7a41: $23
    ld [hl], d                                    ; $7a42: $72
    pop hl                                        ; $7a43: $e1
    pop de                                        ; $7a44: $d1
    ld a, [de]                                    ; $7a45: $1a
    inc a                                         ; $7a46: $3c
    inc de                                        ; $7a47: $13
    push hl                                       ; $7a48: $e5
    push de                                       ; $7a49: $d5
    ld d, a                                       ; $7a4a: $57
    ld a, $04                                     ; $7a4b: $3e $04
    sub c                                         ; $7a4d: $91
    ld hl, $c330                                  ; $7a4e: $21 $30 $c3
    ld e, a                                       ; $7a51: $5f
    ld a, d                                       ; $7a52: $7a
    ld d, $00                                     ; $7a53: $16 $00
    add hl, de                                    ; $7a55: $19
    add hl, de                                    ; $7a56: $19
    inc hl                                        ; $7a57: $23
    ld [hl], a                                    ; $7a58: $77
    pop de                                        ; $7a59: $d1
    pop hl                                        ; $7a5a: $e1
    inc hl                                        ; $7a5b: $23
    dec c                                         ; $7a5c: $0d
    jr nz, jr_02e_7a23                            ; $7a5d: $20 $c4

jr_02e_7a5f:
    ld a, $ff                                     ; $7a5f: $3e $ff
    dec hl                                        ; $7a61: $2b
    ld [hl], a                                    ; $7a62: $77
    push hl                                       ; $7a63: $e5
    ld hl, sp+$02                                 ; $7a64: $f8 $02
    ld e, [hl]                                    ; $7a66: $5e
    inc hl                                        ; $7a67: $23
    ld d, [hl]                                    ; $7a68: $56
    pop hl                                        ; $7a69: $e1
    dec de                                        ; $7a6a: $1b
    dec de                                        ; $7a6b: $1b
    ld [de], a                                    ; $7a6c: $12
    ld a, $01                                     ; $7a6d: $3e $01
    ld hl, $7a8b                                  ; $7a6f: $21 $8b $7a
    call Call_000_23e8                            ; $7a72: $cd $e8 $23
    add sp, $02                                   ; $7a75: $e8 $02

jr_02e_7a77:
    pop hl                                        ; $7a77: $e1
    pop de                                        ; $7a78: $d1
    pop bc                                        ; $7a79: $c1
    pop af                                        ; $7a7a: $f1
    ret                                           ; $7a7b: $c9


    push af                                       ; $7a7c: $f5
    push bc                                       ; $7a7d: $c5
    push de                                       ; $7a7e: $d5
    push hl                                       ; $7a7f: $e5
    ld hl, $7a8b                                  ; $7a80: $21 $8b $7a
    call Call_000_2449                            ; $7a83: $cd $49 $24
    pop hl                                        ; $7a86: $e1
    pop de                                        ; $7a87: $d1
    pop bc                                        ; $7a88: $c1
    pop af                                        ; $7a89: $f1
    ret                                           ; $7a8a: $c9


    rst $30                                       ; $7a8b: $f7
    add b                                         ; $7a8c: $80
    inc bc                                        ; $7a8d: $03
    jr nz, jr_02e_7a94                            ; $7a8e: $20 $04

    rst $30                                       ; $7a90: $f7
    nop                                           ; $7a91: $00
    inc bc                                        ; $7a92: $03
    ret nz                                        ; $7a93: $c0

jr_02e_7a94:
    push af                                       ; $7a94: $f5
    push bc                                       ; $7a95: $c5
    push de                                       ; $7a96: $d5
    push hl                                       ; $7a97: $e5
    ldh a, [$96]                                  ; $7a98: $f0 $96
    push af                                       ; $7a9a: $f5
    ld a, $06                                     ; $7a9b: $3e $06
    ldh [$96], a                                  ; $7a9d: $e0 $96
    ldh [rSVBK], a                                ; $7a9f: $e0 $70
    ld c, $00                                     ; $7aa1: $0e $00
    ld hl, $c338                                  ; $7aa3: $21 $38 $c3

jr_02e_7aa6:
    ld a, [hl]                                    ; $7aa6: $7e
    cp $ff                                        ; $7aa7: $fe $ff
    jr z, jr_02e_7ac8                             ; $7aa9: $28 $1d

    push hl                                       ; $7aab: $e5
    ld l, c                                       ; $7aac: $69
    ld h, $00                                     ; $7aad: $26 $00
    add hl, hl                                    ; $7aaf: $29
    ld de, $c330                                  ; $7ab0: $11 $30 $c3
    add hl, de                                    ; $7ab3: $19
    inc hl                                        ; $7ab4: $23
    ld a, [hl]                                    ; $7ab5: $7e
    dec a                                         ; $7ab6: $3d
    ld [hl], a                                    ; $7ab7: $77
    pop hl                                        ; $7ab8: $e1
    inc hl                                        ; $7ab9: $23
    ld b, c                                       ; $7aba: $41
    inc c                                         ; $7abb: $0c
    or a                                          ; $7abc: $b7
    jr nz, jr_02e_7aa6                            ; $7abd: $20 $e7

    ld a, b                                       ; $7abf: $78
    call Call_02e_7ad2                            ; $7ac0: $cd $d2 $7a
    ld a, c                                       ; $7ac3: $79
    cp $04                                        ; $7ac4: $fe $04
    jr nz, jr_02e_7aa6                            ; $7ac6: $20 $de

jr_02e_7ac8:
    pop af                                        ; $7ac8: $f1
    ldh [$96], a                                  ; $7ac9: $e0 $96
    ldh [rSVBK], a                                ; $7acb: $e0 $70
    pop hl                                        ; $7acd: $e1
    pop de                                        ; $7ace: $d1
    pop bc                                        ; $7acf: $c1
    pop af                                        ; $7ad0: $f1
    ret                                           ; $7ad1: $c9


Call_02e_7ad2:
    push af                                       ; $7ad2: $f5
    push bc                                       ; $7ad3: $c5
    push de                                       ; $7ad4: $d5
    push hl                                       ; $7ad5: $e5
    push af                                       ; $7ad6: $f5
    add sp, -$01                                  ; $7ad7: $e8 $ff
    ld hl, sp+$00                                 ; $7ad9: $f8 $00
    ld [hl], a                                    ; $7adb: $77
    ld h, $00                                     ; $7adc: $26 $00
    ld l, a                                       ; $7ade: $6f
    add hl, hl                                    ; $7adf: $29
    ld bc, $c330                                  ; $7ae0: $01 $30 $c3
    add hl, bc                                    ; $7ae3: $09
    ld a, [hl]                                    ; $7ae4: $7e
    ld [$c33c], a                                 ; $7ae5: $ea $3c $c3

jr_02e_7ae8:
    ld a, [$c32f]                                 ; $7ae8: $fa $2f $c3
    ld l, a                                       ; $7aeb: $6f
    ld h, $00                                     ; $7aec: $26 $00
    add hl, hl                                    ; $7aee: $29
    ld bc, $403a                                  ; $7aef: $01 $3a $40
    add hl, bc                                    ; $7af2: $09
    ld a, [hl+]                                   ; $7af3: $2a
    ld h, [hl]                                    ; $7af4: $66
    ld l, a                                       ; $7af5: $6f
    ld a, [$c33c]                                 ; $7af6: $fa $3c $c3
    ld c, a                                       ; $7af9: $4f
    ld b, $00                                     ; $7afa: $06 $00
    add hl, bc                                    ; $7afc: $09
    ld a, [hl]                                    ; $7afd: $7e
    cp $ff                                        ; $7afe: $fe $ff
    jr nz, jr_02e_7b11                            ; $7b00: $20 $0f

    ld hl, sp+$00                                 ; $7b02: $f8 $00
    ld c, [hl]                                    ; $7b04: $4e
    ld b, $00                                     ; $7b05: $06 $00
    ld hl, $c338                                  ; $7b07: $21 $38 $c3
    add hl, bc                                    ; $7b0a: $09
    ld a, [hl]                                    ; $7b0b: $7e
    ld [$c33c], a                                 ; $7b0c: $ea $3c $c3
    jr jr_02e_7ae8                                ; $7b0f: $18 $d7

jr_02e_7b11:
    ld b, a                                       ; $7b11: $47
    inc hl                                        ; $7b12: $23
    ld c, [hl]                                    ; $7b13: $4e
    inc hl                                        ; $7b14: $23
    ld e, [hl]                                    ; $7b15: $5e
    inc hl                                        ; $7b16: $23
    ld a, [hl]                                    ; $7b17: $7e
    push af                                       ; $7b18: $f5
    push bc                                       ; $7b19: $c5
    ld l, e                                       ; $7b1a: $6b
    ld h, $00                                     ; $7b1b: $26 $00
    add hl, hl                                    ; $7b1d: $29
    add hl, hl                                    ; $7b1e: $29
    add hl, hl                                    ; $7b1f: $29
    add hl, hl                                    ; $7b20: $29
    ld de, $b000                                  ; $7b21: $11 $00 $b0
    add hl, de                                    ; $7b24: $19
    push hl                                       ; $7b25: $e5
    ld l, b                                       ; $7b26: $68
    ld h, $00                                     ; $7b27: $26 $00
    add hl, hl                                    ; $7b29: $29
    add hl, hl                                    ; $7b2a: $29
    add hl, hl                                    ; $7b2b: $29
    add hl, hl                                    ; $7b2c: $29
    ld bc, $d800                                  ; $7b2d: $01 $00 $d8
    add hl, bc                                    ; $7b30: $09
    pop de                                        ; $7b31: $d1
    pop bc                                        ; $7b32: $c1
    call Call_000_0468                            ; $7b33: $cd $68 $04
    ld a, [$c33c]                                 ; $7b36: $fa $3c $c3
    add $04                                       ; $7b39: $c6 $04
    ld [$c33c], a                                 ; $7b3b: $ea $3c $c3
    pop af                                        ; $7b3e: $f1
    ld d, a                                       ; $7b3f: $57
    add sp, $01                                   ; $7b40: $e8 $01
    pop af                                        ; $7b42: $f1
    ld h, $00                                     ; $7b43: $26 $00
    ld l, a                                       ; $7b45: $6f
    add hl, hl                                    ; $7b46: $29
    ld bc, $c330                                  ; $7b47: $01 $30 $c3
    add hl, bc                                    ; $7b4a: $09
    ld a, [$c33c]                                 ; $7b4b: $fa $3c $c3
    ld [hl+], a                                   ; $7b4e: $22
    ld [hl], d                                    ; $7b4f: $72
    pop hl                                        ; $7b50: $e1
    pop de                                        ; $7b51: $d1
    pop bc                                        ; $7b52: $c1
    pop af                                        ; $7b53: $f1
    ret                                           ; $7b54: $c9


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

Jump_02e_7bac:
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

Call_02e_7e80:
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

Jump_02e_7f66:
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

Jump_02e_7f7c:
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

Jump_02e_7fe0:
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

Call_02e_7fff:
    rst $38                                       ; $7fff: $ff
