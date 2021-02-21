; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $053", ROMX[$4000], BANK[$53]

    inc d                                         ; $4000: $14
    ld b, b                                       ; $4001: $40
    ld d, c                                       ; $4002: $51
    ld c, a                                       ; $4003: $4f
    sub c                                         ; $4004: $91
    ld e, [hl]                                    ; $4005: $5e
    ld b, c                                       ; $4006: $41
    ld l, [hl]                                    ; $4007: $6e
    sbc d                                         ; $4008: $9a
    ld a, c                                       ; $4009: $79
    ld c, h                                       ; $400a: $4c
    ld b, a                                       ; $400b: $47
    ld a, [hl]                                    ; $400c: $7e
    ld d, [hl]                                    ; $400d: $56
    ld sp, $0966                                  ; $400e: $31 $66 $09
    ld a, [hl]                                    ; $4011: $7e

    db $bc, $7e

    ld e, $40                                     ; $4014: $1e $40
    ld c, [hl]                                    ; $4016: $4e
    ld b, b                                       ; $4017: $40
    ld hl, sp+$43                                 ; $4018: $f8 $43
    ld hl, sp+$45                                 ; $401a: $f8 $45
    add $46                                       ; $401c: $c6 $46
    xor a                                         ; $401e: $af
    nop                                           ; $401f: $00
    rst $38                                       ; $4020: $ff
    ld bc, $038a                                  ; $4021: $01 $8a $03
    inc b                                         ; $4024: $04
    ld [bc], a                                    ; $4025: $02
    rst $38                                       ; $4026: $ff
    ld d, e                                       ; $4027: $53
    rst $28                                       ; $4028: $ef
    inc bc                                        ; $4029: $03
    adc d                                         ; $402a: $8a
    inc bc                                        ; $402b: $03
    inc b                                         ; $402c: $04
    ld [bc], a                                    ; $402d: $02
    ld b, b                                       ; $402e: $40
    ld c, c                                       ; $402f: $49
    add b                                         ; $4030: $80
    ld a, [hl]                                    ; $4031: $7e
    ld l, [hl]                                    ; $4032: $6e
    nop                                           ; $4033: $00
    inc b                                         ; $4034: $04
    ld [bc], a                                    ; $4035: $02
    rst $38                                       ; $4036: $ff
    ld a, a                                       ; $4037: $7f
    adc d                                         ; $4038: $8a
    inc bc                                        ; $4039: $03
    inc b                                         ; $403a: $04
    ld [bc], a                                    ; $403b: $02
    nop                                           ; $403c: $00
    dec c                                         ; $403d: $0d
    sbc a                                         ; $403e: $9f
    nop                                           ; $403f: $00
    db $e4                                        ; $4040: $e4
    ld h, e                                       ; $4041: $63
    ld [c], a                                     ; $4042: $e2
    ld hl, $0d00                                  ; $4043: $21 $00 $0d
    ld [$0825], sp                                ; $4046: $08 $25 $08
    dec h                                         ; $4049: $25
    ld [$0825], sp                                ; $404a: $08 $25 $08
    dec h                                         ; $404d: $25
    adc a                                         ; $404e: $8f
    jp $c33c                                      ; $404f: $c3 $3c $c3


    inc a                                         ; $4052: $3c
    db $fd                                        ; $4053: $fd
    ldh [$fe], a                                  ; $4054: $e0 $fe
    ld [c], a                                     ; $4056: $e2
    db $f4                                        ; $4057: $f4
    pop hl                                        ; $4058: $e1
    ld d, a                                       ; $4059: $57
    rst $38                                       ; $405a: $ff
    rst $38                                       ; $405b: $ff
    xor a                                         ; $405c: $af
    db $fc                                        ; $405d: $fc
    ld a, [hl]                                    ; $405e: $7e
    pop af                                        ; $405f: $f1
    cp h                                          ; $4060: $bc
    db $e3                                        ; $4061: $e3
    ld a, h                                       ; $4062: $7c
    rst $38                                       ; $4063: $ff
    jp $c3fc                                      ; $4064: $c3 $fc $c3


    db $e3                                        ; $4067: $e3
    sbc h                                         ; $4068: $9c
    jp $fbbc                                      ; $4069: $c3 $bc $fb


    rst $38                                       ; $406c: $ff
    rst $38                                       ; $406d: $ff
    sbc $ff                                       ; $406e: $de $ff
    push af                                       ; $4070: $f5
    rst $38                                       ; $4071: $ff
    xor d                                         ; $4072: $aa
    rst $38                                       ; $4073: $ff
    ld d, a                                       ; $4074: $57
    ld a, a                                       ; $4075: $7f
    rst $38                                       ; $4076: $ff
    cp a                                          ; $4077: $bf
    ld hl, sp-$01                                 ; $4078: $f8 $ff
    ldh [$f3], a                                  ; $407a: $e0 $f3
    adc h                                         ; $407c: $8c
    ld hl, sp-$1f                                 ; $407d: $f8 $e1
    rst $38                                       ; $407f: $ff
    ld a, h                                       ; $4080: $7c
    db $e3                                        ; $4081: $e3
    db $fc                                        ; $4082: $fc
    add e                                         ; $4083: $83
    db $fc                                        ; $4084: $fc
    inc bc                                        ; $4085: $03
    cp h                                          ; $4086: $bc
    ld b, e                                       ; $4087: $43
    cp $c4                                        ; $4088: $fe $c4
    pop hl                                        ; $408a: $e1
    rst $28                                       ; $408b: $ef
    rst $38                                       ; $408c: $ff
    rst $10                                       ; $408d: $d7
    ld a, a                                       ; $408e: $7f
    db $ed                                        ; $408f: $ed
    ld a, a                                       ; $4090: $7f
    rst $30                                       ; $4091: $f7
    rst $38                                       ; $4092: $ff
    ccf                                           ; $4093: $3f
    ld l, e                                       ; $4094: $6b
    cp a                                          ; $4095: $bf
    halt                                          ; $4096: $76
    sbc a                                         ; $4097: $9f
    ei                                            ; $4098: $fb
    rra                                           ; $4099: $1f
    push af                                       ; $409a: $f5
    rst $38                                       ; $409b: $ff
    rra                                           ; $409c: $1f
    ld a, [$dd0f]                                 ; $409d: $fa $0f $dd
    daa                                           ; $40a0: $27
    ld a, $c7                                     ; $40a1: $3e $c7
    ccf                                           ; $40a3: $3f
    rst $38                                       ; $40a4: $ff
    jp $c33e                                      ; $40a5: $c3 $3e $c3


    ccf                                           ; $40a8: $3f
    pop bc                                        ; $40a9: $c1
    jp $c33d                                      ; $40aa: $c3 $3d $c3


    ld a, a                                       ; $40ad: $7f
    dec a                                         ; $40ae: $3d
    db $ed                                        ; $40af: $ed
    rst $38                                       ; $40b0: $ff
    db $d3                                        ; $40b1: $d3
    inc a                                         ; $40b2: $3c
    ld a, [hl]                                    ; $40b3: $7e
    add c                                         ; $40b4: $81
    and b                                         ; $40b5: $a0
    rst $20                                       ; $40b6: $e7
    rst $38                                       ; $40b7: $ff
    jp $e3bc                                      ; $40b8: $c3 $bc $e3


    sbc h                                         ; $40bb: $9c
    cp h                                          ; $40bc: $bc
    jp $c37c                                      ; $40bd: $c3 $7c $c3


    push de                                       ; $40c0: $d5
    cp h                                          ; $40c1: $bc
    cp $e0                                        ; $40c2: $fe $e0
    ld h, e                                       ; $40c4: $63
    and b                                         ; $40c5: $a0
    ldh [$57], a                                  ; $40c6: $e0 $57
    and h                                         ; $40c8: $a4
    ldh [$7d], a                                  ; $40c9: $e0 $7d
    rst $38                                       ; $40cb: $ff
    rst $28                                       ; $40cc: $ef
    db $d3                                        ; $40cd: $d3
    rst $28                                       ; $40ce: $ef
    rst $38                                       ; $40cf: $ff
    nop                                           ; $40d0: $00
    add b                                         ; $40d1: $80
    db $e3                                        ; $40d2: $e3
    cp e                                          ; $40d3: $bb
    db $f4                                        ; $40d4: $f4
    ld e, e                                       ; $40d5: $5b
    rst $38                                       ; $40d6: $ff
    db $f4                                        ; $40d7: $f4
    xor h                                         ; $40d8: $ac
    di                                            ; $40d9: $f3
    ld l, h                                       ; $40da: $6c
    di                                            ; $40db: $f3
    cp h                                          ; $40dc: $bc
    db $e3                                        ; $40dd: $e3
    ld l, h                                       ; $40de: $6c
    rst $38                                       ; $40df: $ff
    di                                            ; $40e0: $f3
    cp e                                          ; $40e1: $bb
    db $f4                                        ; $40e2: $f4
    db $db                                        ; $40e3: $db
    db $f4                                        ; $40e4: $f4
    cp l                                          ; $40e5: $bd
    jp $ffe7                                      ; $40e6: $c3 $e7 $ff


    rst $38                                       ; $40e9: $ff
    cp d                                          ; $40ea: $ba
    rst $38                                       ; $40eb: $ff
    ld d, l                                       ; $40ec: $55
    rst $38                                       ; $40ed: $ff
    xor e                                         ; $40ee: $ab
    rst $38                                       ; $40ef: $ff
    cp $ff                                        ; $40f0: $fe $ff
    rst $38                                       ; $40f2: $ff
    rst $28                                       ; $40f3: $ef
    rst $38                                       ; $40f4: $ff
    rst $38                                       ; $40f5: $ff
    rst $38                                       ; $40f6: $ff
    db $db                                        ; $40f7: $db
    rst $38                                       ; $40f8: $ff
    ld l, a                                       ; $40f9: $6f
    cp $8e                                        ; $40fa: $fe $8e
    ldh [$af], a                                  ; $40fc: $e0 $af
    ld a, a                                       ; $40fe: $7f

Jump_053_40ff:
    or l                                          ; $40ff: $b5

Jump_053_4100:
    ld a, a                                       ; $4100: $7f
    rst $28                                       ; $4101: $ef
    ld a, a                                       ; $4102: $7f
    ld d, a                                       ; $4103: $57
    ld e, h                                       ; $4104: $5c
    xor $e2                                       ; $4105: $ee $e2
    db $fd                                        ; $4107: $fd
    pop hl                                        ; $4108: $e1
    db $dd                                        ; $4109: $dd
    rst $38                                       ; $410a: $ff
    ld [hl], a                                    ; $410b: $77
    ld e, h                                       ; $410c: $5c
    ldh [rHDMA5], a                               ; $410d: $e0 $55
    ldh [$e0], a                                  ; $410f: $e0 $e0
    rra                                           ; $4111: $1f
    xor a                                         ; $4112: $af
    rst $38                                       ; $4113: $ff
    rst $18                                       ; $4114: $df
    rst $38                                       ; $4115: $ff
    or a                                          ; $4116: $b7
    db $fc                                        ; $4117: $fc
    ldh [$f8], a                                  ; $4118: $e0 $f8
    push hl                                       ; $411a: $e5
    rst $38                                       ; $411b: $ff
    push hl                                       ; $411c: $e5
    ld l, $de                                     ; $411d: $2e $de
    push hl                                       ; $411f: $e5
    ld e, a                                       ; $4120: $5f
    rst $38                                       ; $4121: $ff
    cp a                                          ; $4122: $bf
    cp [hl]                                       ; $4123: $be
    ldh [$bf], a                                  ; $4124: $e0 $bf
    ld hl, sp-$1a                                 ; $4126: $f8 $e6
    cp a                                          ; $4128: $bf
    db $e3                                        ; $4129: $e3
    jp z, $e1f8                                   ; $412a: $ca $f8 $e1

    ld e, a                                       ; $412d: $5f
    ret z                                         ; $412e: $c8

    ldh [$5f], a                                  ; $412f: $e0 $5f
    ret nc                                        ; $4131: $d0

    and $c7                                       ; $4132: $e6 $c7
    push hl                                       ; $4134: $e5
    db $fd                                        ; $4135: $fd
    rst $38                                       ; $4136: $ff
    rst $30                                       ; $4137: $f7
    rst $30                                       ; $4138: $f7
    rst $38                                       ; $4139: $ff
    jp c, $c0fe                                   ; $413a: $da $fe $c0

    xor a                                         ; $413d: $af
    cp $df                                        ; $413e: $fe $df
    ld hl, sp-$01                                 ; $4140: $f8 $ff
    ld l, a                                       ; $4142: $6f
    ld hl, sp-$21                                 ; $4143: $f8 $df
    ldh a, [rP1]                                  ; $4145: $f0 $00
    rst $38                                       ; $4147: $ff
    inc bc                                        ; $4148: $03
    rst $38                                       ; $4149: $ff

jr_053_414a:
    rst $38                                       ; $414a: $ff
    rlca                                          ; $414b: $07
    cp $1b                                        ; $414c: $fe $1b
    db $fc                                        ; $414e: $fc
    ld e, $f1                                     ; $414f: $1e $f1
    jr z, jr_053_414a                             ; $4151: $28 $f7

    rst $38                                       ; $4153: $ff
    ld a, d                                       ; $4154: $7a
    push hl                                       ; $4155: $e5
    ld [hl], b                                    ; $4156: $70
    rst $08                                       ; $4157: $cf
    inc a                                         ; $4158: $3c
    rst $38                                       ; $4159: $ff
    ei                                            ; $415a: $fb
    rst $20                                       ; $415b: $e7
    rst $38                                       ; $415c: $ff
    db $fd                                        ; $415d: $fd
    ld b, d                                       ; $415e: $42
    rst $20                                       ; $415f: $e7
    jr jr_053_41ac                                ; $4160: $18 $4a

    or l                                          ; $4162: $b5
    nop                                           ; $4163: $00
    rst $38                                       ; $4164: $ff
    rst $38                                       ; $4165: $ff
    ld d, h                                       ; $4166: $54
    rst $38                                       ; $4167: $ff
    cp e                                          ; $4168: $bb
    rst $38                                       ; $4169: $ff
    adc [hl]                                      ; $416a: $8e
    di                                            ; $416b: $f3
    sbc d                                         ; $416c: $9a
    rst $20                                       ; $416d: $e7
    rst $38                                       ; $416e: $ff
    ld c, l                                       ; $416f: $4d
    di                                            ; $4170: $f3
    sub a                                         ; $4171: $97
    jp hl                                         ; $4172: $e9


    rst $00                                       ; $4173: $c7
    ld sp, hl                                     ; $4174: $f9
    adc a                                         ; $4175: $8f
    di                                            ; $4176: $f3
    rst $38                                       ; $4177: $ff
    ld e, [hl]                                    ; $4178: $5e
    rst $20                                       ; $4179: $e7
    adc [hl]                                      ; $417a: $8e
    di                                            ; $417b: $f3
    push af                                       ; $417c: $f5
    rst $38                                       ; $417d: $ff
    xor b                                         ; $417e: $a8
    rst $38                                       ; $417f: $ff
    rst $38                                       ; $4180: $ff
    ldh [rIE], a                                  ; $4181: $e0 $ff
    adc d                                         ; $4183: $8a
    push af                                       ; $4184: $f5
    ld d, a                                       ; $4185: $57
    add sp, -$73                                  ; $4186: $e8 $8d
    ld a, [c]                                     ; $4188: $f2
    rst $38                                       ; $4189: $ff
    add hl, de                                    ; $418a: $19
    rst $20                                       ; $418b: $e7
    adc a                                         ; $418c: $8f
    di                                            ; $418d: $f3
    rst $18                                       ; $418e: $df
    sbc c                                         ; $418f: $99
    sbc a                                         ; $4190: $9f
    ld c, l                                       ; $4191: $4d
    rst $38                                       ; $4192: $ff
    daa                                           ; $4193: $27
    rla                                           ; $4194: $17
    and e                                         ; $4195: $a3
    di                                            ; $4196: $f3
    db $db                                        ; $4197: $db
    pop hl                                        ; $4198: $e1
    xor $f1                                       ; $4199: $ee $f1
    rst $38                                       ; $419b: $ff
    or h                                          ; $419c: $b4
    ei                                            ; $419d: $fb
    ld b, c                                       ; $419e: $41
    rst $38                                       ; $419f: $ff
    rst $18                                       ; $41a0: $df
    sbc a                                         ; $41a1: $9f
    sbc h                                         ; $41a2: $9c
    ld c, a                                       ; $41a3: $4f
    rst $38                                       ; $41a4: $ff
    ld h, $17                                     ; $41a5: $26 $17
    and d                                         ; $41a7: $a2
    di                                            ; $41a8: $f3
    jp c, $eee1                                   ; $41a9: $da $e1 $ee

jr_053_41ac:
    ld [hl], c                                    ; $41ac: $71
    rst $30                                       ; $41ad: $f7
    db $f4                                        ; $41ae: $f4
    dec sp                                        ; $41af: $3b
    ld sp, hl                                     ; $41b0: $f9
    add b                                         ; $41b1: $80
    xor $ff                                       ; $41b2: $ee $ff
    db $fc                                        ; $41b4: $fc
    cp $f9                                        ; $41b5: $fe $f9
    rst $38                                       ; $41b7: $ff
    db $fc                                        ; $41b8: $fc
    ei                                            ; $41b9: $fb
    cp $e1                                        ; $41ba: $fe $e1
    db $f4                                        ; $41bc: $f4
    set 4, b                                      ; $41bd: $cb $e0
    rst $18                                       ; $41bf: $df
    cp $fe                                        ; $41c0: $fe $fe
    pop hl                                        ; $41c2: $e1
    cp a                                          ; $41c3: $bf
    ld a, a                                       ; $41c4: $7f
    ld e, a                                       ; $41c5: $5f
    cp a                                          ; $41c6: $bf
    rra                                           ; $41c7: $1f
    rst $38                                       ; $41c8: $ff
    scf                                           ; $41c9: $37
    rst $38                                       ; $41ca: $ff
    rst $08                                       ; $41cb: $cf
    dec bc                                        ; $41cc: $0b
    rst $30                                       ; $41cd: $f7
    ld h, e                                       ; $41ce: $63
    rst $38                                       ; $41cf: $ff
    db $d3                                        ; $41d0: $d3
    sbc a                                         ; $41d1: $9f
    sub e                                         ; $41d2: $93
    rst $38                                       ; $41d3: $ff
    sbc a                                         ; $41d4: $9f
    ld hl, sp-$79                                 ; $41d5: $f8 $87
    ret nc                                        ; $41d7: $d0

    cpl                                           ; $41d8: $2f
    add b                                         ; $41d9: $80
    ld a, a                                       ; $41da: $7f
    adc h                                         ; $41db: $8c
    rst $38                                       ; $41dc: $ff
    ld a, a                                       ; $41dd: $7f
    sbc d                                         ; $41de: $9a
    ld [hl], e                                    ; $41df: $73
    ld d, d                                       ; $41e0: $52
    or e                                          ; $41e1: $b3
    adc h                                         ; $41e2: $8c
    rst $38                                       ; $41e3: $ff
    ldh a, [rIE]                                  ; $41e4: $f0 $ff
    rst $28                                       ; $41e6: $ef
    ld l, l                                       ; $41e7: $6d
    di                                            ; $41e8: $f3
    ld [bc], a                                    ; $41e9: $02
    db $fd                                        ; $41ea: $fd
    ret nz                                        ; $41eb: $c0

    ccf                                           ; $41ec: $3f
    add b                                         ; $41ed: $80
    rst $38                                       ; $41ee: $ff
    ld a, a                                       ; $41ef: $7f
    ld [bc], a                                    ; $41f0: $02
    rst $38                                       ; $41f1: $ff
    ld d, $ff                                     ; $41f2: $16 $ff
    ld bc, $17ff                                  ; $41f4: $01 $ff $17
    rst $38                                       ; $41f7: $ff
    rst $38                                       ; $41f8: $ff
    add sp, -$09                                  ; $41f9: $e8 $f7
    pop af                                        ; $41fb: $f1
    rst $38                                       ; $41fc: $ff
    cp $fe                                        ; $41fd: $fe $fe
    rst $38                                       ; $41ff: $ff
    rst $38                                       ; $4200: $ff
    cp $f7                                        ; $4201: $fe $f7
    cp $ad                                        ; $4203: $fe $ad
    db $fc                                        ; $4205: $fc
    ld b, [hl]                                    ; $4206: $46
    cp $eb                                        ; $4207: $fe $eb
    rst $28                                       ; $4209: $ef
    rst $38                                       ; $420a: $ff
    scf                                           ; $420b: $37
    rst $38                                       ; $420c: $ff
    adc a                                         ; $420d: $8f
    cp d                                          ; $420e: $ba
    ret nz                                        ; $420f: $c0

    ld a, a                                       ; $4210: $7f
    ld a, a                                       ; $4211: $7f
    ld l, a                                       ; $4212: $6f
    rst $18                                       ; $4213: $df
    ld a, a                                       ; $4214: $7f
    ld a, $3f                                     ; $4215: $3e $3f
    ld a, e                                       ; $4217: $7b
    ld a, a                                       ; $4218: $7f
    and c                                         ; $4219: $a1
    ldh [rIE], a                                  ; $421a: $e0 $ff
    ld a, [$fdff]                                 ; $421c: $fa $ff $fd
    db $fc                                        ; $421f: $fc
    ei                                            ; $4220: $fb
    pop hl                                        ; $4221: $e1
    rst $38                                       ; $4222: $ff
    ret nc                                        ; $4223: $d0

    rst $28                                       ; $4224: $ef
    push hl                                       ; $4225: $e5
    rst $38                                       ; $4226: $ff
    rst $18                                       ; $4227: $df
    jp z, $e7ff                                   ; $4228: $ca $ff $e7

    rst $18                                       ; $422b: $df
    ccf                                           ; $422c: $3f
    rst $38                                       ; $422d: $ff
    rra                                           ; $422e: $1f
    cp [hl]                                       ; $422f: $be
    sbc $c0                                       ; $4230: $de $c0
    ld d, a                                       ; $4232: $57
    rst $38                                       ; $4233: $ff
    db $eb                                        ; $4234: $eb
    rst $38                                       ; $4235: $ff
    ld a, a                                       ; $4236: $7f
    sub h                                         ; $4237: $94
    ret nz                                        ; $4238: $c0

    rst $38                                       ; $4239: $ff
    rst $38                                       ; $423a: $ff
    rst $38                                       ; $423b: $ff
    adc e                                         ; $423c: $8b
    rst $38                                       ; $423d: $ff
    ld b, l                                       ; $423e: $45
    cp a                                          ; $423f: $bf
    sub a                                         ; $4240: $97
    ld a, a                                       ; $4241: $7f
    dec hl                                        ; $4242: $2b
    cp a                                          ; $4243: $bf
    rst $38                                       ; $4244: $ff
    sbc a                                         ; $4245: $9f
    ld a, a                                       ; $4246: $7f
    dec l                                         ; $4247: $2d
    rst $38                                       ; $4248: $ff
    sbc a                                         ; $4249: $9f
    ld [$75e0], a                                 ; $424a: $ea $e0 $75
    ld l, e                                       ; $424d: $6b
    rst $38                                       ; $424e: $ff
    ld a, [$c07a]                                 ; $424f: $fa $7a $c0
    ld a, [hl]                                    ; $4252: $7e
    halt                                          ; $4253: $76
    ret nz                                        ; $4254: $c0

    cp $ff                                        ; $4255: $fe $ff
    ld d, d                                       ; $4257: $52
    pop hl                                        ; $4258: $e1
    rst $20                                       ; $4259: $e7
    push hl                                       ; $425a: $e5
    rst $38                                       ; $425b: $ff
    di                                            ; $425c: $f3
    and b                                         ; $425d: $a0
    pop hl                                        ; $425e: $e1
    sbc h                                         ; $425f: $9c
    ldh [$ee], a                                  ; $4260: $e0 $ee
    cp $5e                                        ; $4262: $fe $5e
    adc e                                         ; $4264: $8b
    cp $fb                                        ; $4265: $fe $fb
    jp nc, $cfc0                                  ; $4267: $d2 $c0 $cf

    and b                                         ; $426a: $a0
    ld [c], a                                     ; $426b: $e2
    db $fc                                        ; $426c: $fc
    db $e3                                        ; $426d: $e3

jr_053_426e:
    or c                                          ; $426e: $b1
    ret z                                         ; $426f: $c8

    cp $fe                                        ; $4270: $fe $fe
    sub l                                         ; $4272: $95
    ldh [$f8], a                                  ; $4273: $e0 $f8
    rst $38                                       ; $4275: $ff
    ldh a, [$fb]                                  ; $4276: $f0 $fb
    rst $20                                       ; $4278: $e7
    push af                                       ; $4279: $f5
    res 7, a                                      ; $427a: $cb $bf
    ld a, [c]                                     ; $427c: $f2
    adc l                                         ; $427d: $8d
    pop af                                        ; $427e: $f1
    ld c, $f0                                     ; $427f: $0e $f0
    rrca                                          ; $4281: $0f
    cp $e1                                        ; $4282: $fe $e1
    add sp, -$13                                  ; $4284: $e8 $ed
    rla                                           ; $4286: $17
    ccf                                           ; $4287: $3f
    jp $ff7f                                      ; $4288: $c3 $7f $ff


    jr z, jr_053_426e                             ; $428b: $28 $e1

jr_053_428d:
    cpl                                           ; $428d: $2f
    rst $18                                       ; $428e: $df
    rla                                           ; $428f: $17
    cp b                                          ; $4290: $b8
    cpl                                           ; $4291: $2f
    push bc                                       ; $4292: $c5
    jp z, Jump_000_1ee7                           ; $4293: $ca $e7 $1e

    jp $fce0                                      ; $4296: $c3 $e0 $fc


    jp $a18c                                      ; $4299: $c3 $8c $a1


    db $fc                                        ; $429c: $fc
    rst $38                                       ; $429d: $ff
    inc bc                                        ; $429e: $03
    rst $38                                       ; $429f: $ff
    ldh [$ef], a                                  ; $42a0: $e0 $ef
    ret nc                                        ; $42a2: $d0

    rst $18                                       ; $42a3: $df
    and b                                         ; $42a4: $a0
    ld l, $ff                                     ; $42a5: $2e $ff
    pop de                                        ; $42a7: $d1
    sub [hl]                                      ; $42a8: $96
    ld l, e                                       ; $42a9: $6b
    ld c, h                                       ; $42aa: $4c
    or a                                          ; $42ab: $b7
    jr z, jr_053_428d                             ; $42ac: $28 $df

    dec d                                         ; $42ae: $15
    rst $38                                       ; $42af: $ff
    rst $28                                       ; $42b0: $ef
    ret nz                                        ; $42b1: $c0

    ccf                                           ; $42b2: $3f
    add h                                         ; $42b3: $84
    ld a, a                                       ; $42b4: $7f
    ld a, [bc]                                    ; $42b5: $0a
    rst $38                                       ; $42b6: $ff
    inc d                                         ; $42b7: $14
    di                                            ; $42b8: $f3
    rst $38                                       ; $42b9: $ff
    ld a, [hl+]                                   ; $42ba: $2a
    call c, $fea0                                 ; $42bb: $dc $a0 $fe
    and c                                         ; $42be: $a1
    dec bc                                        ; $42bf: $0b
    rst $30                                       ; $42c0: $f7
    inc bc                                        ; $42c1: $03
    rst $38                                       ; $42c2: $ff
    or l                                          ; $42c3: $b5
    ei                                            ; $42c4: $fb
    cp $e0                                        ; $42c5: $fe $e0
    rst $38                                       ; $42c7: $ff
    db $fc                                        ; $42c8: $fc
    ld [c], a                                     ; $42c9: $e2
    rst $38                                       ; $42ca: $ff
    ret nz                                        ; $42cb: $c0

    cpl                                           ; $42cc: $2f
    set 6, a                                      ; $42cd: $cb $f7
    rst $38                                       ; $42cf: $ff
    rrca                                          ; $42d0: $0f
    cp $fd                                        ; $42d1: $fe $fd
    db $fd                                        ; $42d3: $fd
    ld a, [$f5fa]                                 ; $42d4: $fa $fa $f5
    ldh a, [$ef]                                  ; $42d7: $f0 $ef
    rst $28                                       ; $42d9: $ef
    ret nz                                        ; $42da: $c0

    rst $38                                       ; $42db: $ff
    add b                                         ; $42dc: $80
    adc $e2                                       ; $42dd: $ce $e2
    db $fc                                        ; $42df: $fc
    inc bc                                        ; $42e0: $03
    ld d, h                                       ; $42e1: $54
    rst $38                                       ; $42e2: $ff
    xor e                                         ; $42e3: $ab
    xor h                                         ; $42e4: $ac
    ld d, a                                       ; $42e5: $57
    ld a, [de]                                    ; $42e6: $1a
    rst $28                                       ; $42e7: $ef
    dec [hl]                                      ; $42e8: $35
    rst $18                                       ; $42e9: $df
    ld a, [hl+]                                   ; $42ea: $2a
    cp $0e                                        ; $42eb: $fe $0e
    ldh [rIE], a                                  ; $42ed: $e0 $ff
    rst $38                                       ; $42ef: $ff
    ld a, [bc]                                    ; $42f0: $0a
    rst $30                                       ; $42f1: $f7
    dec b                                         ; $42f2: $05
    ei                                            ; $42f3: $fb
    ld [bc], a                                    ; $42f4: $02
    dec hl                                        ; $42f5: $2b
    db $fd                                        ; $42f6: $fd
    nop                                           ; $42f7: $00
    ld e, $e0                                     ; $42f8: $1e $e0
    cp $fe                                        ; $42fa: $fe $fe
    ret nz                                        ; $42fc: $c0

    cp $88                                        ; $42fd: $fe $88
    and b                                         ; $42ff: $a0
    xor $80                                       ; $4300: $ee $80
    rst $30                                       ; $4302: $f7
    cp $de                                        ; $4303: $fe $de
    db $fd                                        ; $4305: $fd
    ld b, l                                       ; $4306: $45
    ldh [rIE], a                                  ; $4307: $e0 $ff
    ld [$d5ff], a                                 ; $4309: $ea $ff $d5
    rst $38                                       ; $430c: $ff
    rst $38                                       ; $430d: $ff
    sbc $a1                                       ; $430e: $de $a1
    xor d                                         ; $4310: $aa
    ld d, l                                       ; $4311: $55
    ld d, [hl]                                    ; $4312: $56
    xor e                                         ; $4313: $ab
    dec c                                         ; $4314: $0d
    cpl                                           ; $4315: $2f
    rst $30                                       ; $4316: $f7
    ld a, [de]                                    ; $4317: $1a
    rst $28                                       ; $4318: $ef
    dec d                                         ; $4319: $15
    or [hl]                                       ; $431a: $b6
    and b                                         ; $431b: $a0
    ld a, a                                       ; $431c: $7f
    sub b                                         ; $431d: $90
    ldh [$d0], a                                  ; $431e: $e0 $d0
    db $e3                                        ; $4320: $e3
    dec d                                         ; $4321: $15
    cp [hl]                                       ; $4322: $be
    db $ec                                        ; $4323: $ec
    ret nz                                        ; $4324: $c0

    cp a                                          ; $4325: $bf
    ld e, h                                       ; $4326: $5c
    and b                                         ; $4327: $a0
    nop                                           ; $4328: $00
    rst $38                                       ; $4329: $ff
    rst $38                                       ; $432a: $ff
    rst $38                                       ; $432b: $ff
    rst $38                                       ; $432c: $ff
    rst $38                                       ; $432d: $ff
    rst $38                                       ; $432e: $ff
    nop                                           ; $432f: $00
    rst $38                                       ; $4330: $ff
    rst $38                                       ; $4331: $ff
    rst $38                                       ; $4332: $ff
    rst $38                                       ; $4333: $ff
    rst $38                                       ; $4334: $ff
    rst $38                                       ; $4335: $ff
    rst $38                                       ; $4336: $ff
    rst $38                                       ; $4337: $ff
    rst $38                                       ; $4338: $ff
    rst $38                                       ; $4339: $ff
    rst $38                                       ; $433a: $ff
    rst $38                                       ; $433b: $ff
    rst $38                                       ; $433c: $ff
    rst $38                                       ; $433d: $ff
    rst $38                                       ; $433e: $ff
    rst $38                                       ; $433f: $ff
    nop                                           ; $4340: $00
    rst $38                                       ; $4341: $ff
    rst $38                                       ; $4342: $ff
    rst $38                                       ; $4343: $ff
    rst $38                                       ; $4344: $ff
    rst $38                                       ; $4345: $ff
    rst $38                                       ; $4346: $ff
    rst $38                                       ; $4347: $ff
    rst $38                                       ; $4348: $ff
    rst $38                                       ; $4349: $ff
    rst $38                                       ; $434a: $ff
    rst $38                                       ; $434b: $ff
    rst $38                                       ; $434c: $ff
    rst $38                                       ; $434d: $ff
    rst $38                                       ; $434e: $ff
    rst $38                                       ; $434f: $ff
    rst $38                                       ; $4350: $ff
    nop                                           ; $4351: $00
    rst $38                                       ; $4352: $ff
    rst $38                                       ; $4353: $ff
    rst $38                                       ; $4354: $ff
    rst $38                                       ; $4355: $ff
    rst $38                                       ; $4356: $ff
    rst $38                                       ; $4357: $ff
    rst $38                                       ; $4358: $ff
    rst $38                                       ; $4359: $ff
    rst $38                                       ; $435a: $ff
    rst $38                                       ; $435b: $ff
    rst $38                                       ; $435c: $ff
    rst $38                                       ; $435d: $ff
    rst $38                                       ; $435e: $ff
    rst $38                                       ; $435f: $ff
    rst $38                                       ; $4360: $ff
    rst $38                                       ; $4361: $ff
    nop                                           ; $4362: $00
    rst $38                                       ; $4363: $ff
    rst $38                                       ; $4364: $ff
    rst $38                                       ; $4365: $ff
    rst $38                                       ; $4366: $ff
    rst $38                                       ; $4367: $ff
    rst $38                                       ; $4368: $ff
    rst $38                                       ; $4369: $ff
    rst $38                                       ; $436a: $ff
    rst $38                                       ; $436b: $ff
    rst $38                                       ; $436c: $ff
    rst $38                                       ; $436d: $ff
    rst $38                                       ; $436e: $ff
    rst $38                                       ; $436f: $ff
    rst $38                                       ; $4370: $ff
    rst $38                                       ; $4371: $ff
    rst $38                                       ; $4372: $ff
    nop                                           ; $4373: $00
    rst $38                                       ; $4374: $ff
    rst $38                                       ; $4375: $ff
    rst $38                                       ; $4376: $ff
    rst $38                                       ; $4377: $ff
    rst $38                                       ; $4378: $ff
    rst $38                                       ; $4379: $ff
    rst $38                                       ; $437a: $ff
    rst $38                                       ; $437b: $ff
    rst $38                                       ; $437c: $ff
    rst $38                                       ; $437d: $ff
    rst $38                                       ; $437e: $ff
    rst $38                                       ; $437f: $ff
    rst $38                                       ; $4380: $ff
    rst $38                                       ; $4381: $ff
    rst $38                                       ; $4382: $ff
    rst $38                                       ; $4383: $ff
    nop                                           ; $4384: $00
    rst $38                                       ; $4385: $ff
    rst $38                                       ; $4386: $ff
    rst $38                                       ; $4387: $ff
    rst $38                                       ; $4388: $ff
    rst $38                                       ; $4389: $ff
    rst $38                                       ; $438a: $ff
    rst $38                                       ; $438b: $ff
    rst $38                                       ; $438c: $ff
    rst $38                                       ; $438d: $ff
    rst $38                                       ; $438e: $ff
    rst $38                                       ; $438f: $ff
    rst $38                                       ; $4390: $ff
    rst $38                                       ; $4391: $ff
    rst $38                                       ; $4392: $ff
    rst $38                                       ; $4393: $ff
    rst $38                                       ; $4394: $ff
    nop                                           ; $4395: $00
    rst $38                                       ; $4396: $ff
    rst $38                                       ; $4397: $ff
    rst $38                                       ; $4398: $ff
    rst $38                                       ; $4399: $ff
    rst $38                                       ; $439a: $ff
    rst $38                                       ; $439b: $ff
    rst $38                                       ; $439c: $ff
    rst $38                                       ; $439d: $ff
    rst $38                                       ; $439e: $ff
    rst $38                                       ; $439f: $ff
    rst $38                                       ; $43a0: $ff
    rst $38                                       ; $43a1: $ff
    rst $38                                       ; $43a2: $ff
    rst $38                                       ; $43a3: $ff
    rst $38                                       ; $43a4: $ff
    rst $38                                       ; $43a5: $ff
    nop                                           ; $43a6: $00
    rst $38                                       ; $43a7: $ff
    rst $38                                       ; $43a8: $ff
    rst $38                                       ; $43a9: $ff
    rst $38                                       ; $43aa: $ff
    rst $38                                       ; $43ab: $ff
    rst $38                                       ; $43ac: $ff
    rst $38                                       ; $43ad: $ff
    rst $38                                       ; $43ae: $ff
    rst $38                                       ; $43af: $ff
    rst $38                                       ; $43b0: $ff
    rst $38                                       ; $43b1: $ff
    rst $38                                       ; $43b2: $ff
    rst $38                                       ; $43b3: $ff
    rst $38                                       ; $43b4: $ff
    rst $38                                       ; $43b5: $ff
    rst $38                                       ; $43b6: $ff
    nop                                           ; $43b7: $00
    rst $38                                       ; $43b8: $ff
    rst $38                                       ; $43b9: $ff
    rst $38                                       ; $43ba: $ff
    rst $38                                       ; $43bb: $ff
    rst $38                                       ; $43bc: $ff
    rst $38                                       ; $43bd: $ff
    rst $38                                       ; $43be: $ff
    rst $38                                       ; $43bf: $ff
    rst $38                                       ; $43c0: $ff
    rst $38                                       ; $43c1: $ff
    rst $38                                       ; $43c2: $ff
    rst $38                                       ; $43c3: $ff
    rst $38                                       ; $43c4: $ff
    rst $38                                       ; $43c5: $ff
    rst $38                                       ; $43c6: $ff
    rst $38                                       ; $43c7: $ff
    nop                                           ; $43c8: $00
    rst $38                                       ; $43c9: $ff
    rst $38                                       ; $43ca: $ff
    rst $38                                       ; $43cb: $ff
    rst $38                                       ; $43cc: $ff
    rst $38                                       ; $43cd: $ff
    rst $38                                       ; $43ce: $ff
    rst $38                                       ; $43cf: $ff
    rst $38                                       ; $43d0: $ff
    rst $38                                       ; $43d1: $ff
    rst $38                                       ; $43d2: $ff
    rst $38                                       ; $43d3: $ff
    rst $38                                       ; $43d4: $ff
    rst $38                                       ; $43d5: $ff
    rst $38                                       ; $43d6: $ff
    rst $38                                       ; $43d7: $ff
    rst $38                                       ; $43d8: $ff
    nop                                           ; $43d9: $00
    rst $38                                       ; $43da: $ff
    rst $38                                       ; $43db: $ff
    rst $38                                       ; $43dc: $ff
    rst $38                                       ; $43dd: $ff
    rst $38                                       ; $43de: $ff
    rst $38                                       ; $43df: $ff
    rst $38                                       ; $43e0: $ff
    rst $38                                       ; $43e1: $ff
    rst $38                                       ; $43e2: $ff
    rst $38                                       ; $43e3: $ff
    rst $38                                       ; $43e4: $ff
    rst $38                                       ; $43e5: $ff
    rst $38                                       ; $43e6: $ff
    rst $38                                       ; $43e7: $ff
    rst $38                                       ; $43e8: $ff
    rst $38                                       ; $43e9: $ff
    nop                                           ; $43ea: $00
    rst $38                                       ; $43eb: $ff
    rst $38                                       ; $43ec: $ff
    rst $38                                       ; $43ed: $ff
    rst $38                                       ; $43ee: $ff
    rst $38                                       ; $43ef: $ff
    rst $38                                       ; $43f0: $ff
    rst $38                                       ; $43f1: $ff
    rst $38                                       ; $43f2: $ff
    rst $38                                       ; $43f3: $ff
    xor $00                                       ; $43f4: $ee $00
    nop                                           ; $43f6: $00
    nop                                           ; $43f7: $00
    nop                                           ; $43f8: $00
    nop                                           ; $43f9: $00
    nop                                           ; $43fa: $00
    nop                                           ; $43fb: $00
    nop                                           ; $43fc: $00
    nop                                           ; $43fd: $00
    nop                                           ; $43fe: $00
    nop                                           ; $43ff: $00
    nop                                           ; $4400: $00
    nop                                           ; $4401: $00
    nop                                           ; $4402: $00
    nop                                           ; $4403: $00
    nop                                           ; $4404: $00
    nop                                           ; $4405: $00
    nop                                           ; $4406: $00
    nop                                           ; $4407: $00
    nop                                           ; $4408: $00
    nop                                           ; $4409: $00
    nop                                           ; $440a: $00
    nop                                           ; $440b: $00
    nop                                           ; $440c: $00
    nop                                           ; $440d: $00
    nop                                           ; $440e: $00
    nop                                           ; $440f: $00
    nop                                           ; $4410: $00
    nop                                           ; $4411: $00
    nop                                           ; $4412: $00
    nop                                           ; $4413: $00
    nop                                           ; $4414: $00
    nop                                           ; $4415: $00
    nop                                           ; $4416: $00
    nop                                           ; $4417: $00
    nop                                           ; $4418: $00
    nop                                           ; $4419: $00
    nop                                           ; $441a: $00
    nop                                           ; $441b: $00
    nop                                           ; $441c: $00
    nop                                           ; $441d: $00
    nop                                           ; $441e: $00
    nop                                           ; $441f: $00
    nop                                           ; $4420: $00
    nop                                           ; $4421: $00
    nop                                           ; $4422: $00
    nop                                           ; $4423: $00
    nop                                           ; $4424: $00
    nop                                           ; $4425: $00
    nop                                           ; $4426: $00
    nop                                           ; $4427: $00
    nop                                           ; $4428: $00
    nop                                           ; $4429: $00
    nop                                           ; $442a: $00
    nop                                           ; $442b: $00
    nop                                           ; $442c: $00
    nop                                           ; $442d: $00
    nop                                           ; $442e: $00
    nop                                           ; $442f: $00
    nop                                           ; $4430: $00
    nop                                           ; $4431: $00
    nop                                           ; $4432: $00
    nop                                           ; $4433: $00
    nop                                           ; $4434: $00
    nop                                           ; $4435: $00
    nop                                           ; $4436: $00
    nop                                           ; $4437: $00
    nop                                           ; $4438: $00
    nop                                           ; $4439: $00
    nop                                           ; $443a: $00
    nop                                           ; $443b: $00
    nop                                           ; $443c: $00
    nop                                           ; $443d: $00
    nop                                           ; $443e: $00
    nop                                           ; $443f: $00
    nop                                           ; $4440: $00
    nop                                           ; $4441: $00
    nop                                           ; $4442: $00
    nop                                           ; $4443: $00
    nop                                           ; $4444: $00
    nop                                           ; $4445: $00
    nop                                           ; $4446: $00
    nop                                           ; $4447: $00
    nop                                           ; $4448: $00
    nop                                           ; $4449: $00
    nop                                           ; $444a: $00
    nop                                           ; $444b: $00
    nop                                           ; $444c: $00
    nop                                           ; $444d: $00
    nop                                           ; $444e: $00
    nop                                           ; $444f: $00
    nop                                           ; $4450: $00
    nop                                           ; $4451: $00
    nop                                           ; $4452: $00
    nop                                           ; $4453: $00
    nop                                           ; $4454: $00
    nop                                           ; $4455: $00
    nop                                           ; $4456: $00
    nop                                           ; $4457: $00
    nop                                           ; $4458: $00
    nop                                           ; $4459: $00
    nop                                           ; $445a: $00
    nop                                           ; $445b: $00
    nop                                           ; $445c: $00
    nop                                           ; $445d: $00
    nop                                           ; $445e: $00
    nop                                           ; $445f: $00
    nop                                           ; $4460: $00
    nop                                           ; $4461: $00
    nop                                           ; $4462: $00
    nop                                           ; $4463: $00
    nop                                           ; $4464: $00
    nop                                           ; $4465: $00
    nop                                           ; $4466: $00
    nop                                           ; $4467: $00
    nop                                           ; $4468: $00
    nop                                           ; $4469: $00
    nop                                           ; $446a: $00
    nop                                           ; $446b: $00
    nop                                           ; $446c: $00
    nop                                           ; $446d: $00
    nop                                           ; $446e: $00
    nop                                           ; $446f: $00
    nop                                           ; $4470: $00
    nop                                           ; $4471: $00
    nop                                           ; $4472: $00
    nop                                           ; $4473: $00
    nop                                           ; $4474: $00
    nop                                           ; $4475: $00
    nop                                           ; $4476: $00
    nop                                           ; $4477: $00
    nop                                           ; $4478: $00
    nop                                           ; $4479: $00
    nop                                           ; $447a: $00
    nop                                           ; $447b: $00
    nop                                           ; $447c: $00
    nop                                           ; $447d: $00
    nop                                           ; $447e: $00
    nop                                           ; $447f: $00
    nop                                           ; $4480: $00
    nop                                           ; $4481: $00
    nop                                           ; $4482: $00
    nop                                           ; $4483: $00
    nop                                           ; $4484: $00
    nop                                           ; $4485: $00
    nop                                           ; $4486: $00
    nop                                           ; $4487: $00
    nop                                           ; $4488: $00
    nop                                           ; $4489: $00
    nop                                           ; $448a: $00
    nop                                           ; $448b: $00
    nop                                           ; $448c: $00
    nop                                           ; $448d: $00
    nop                                           ; $448e: $00
    nop                                           ; $448f: $00
    nop                                           ; $4490: $00
    nop                                           ; $4491: $00
    nop                                           ; $4492: $00
    nop                                           ; $4493: $00
    nop                                           ; $4494: $00
    nop                                           ; $4495: $00
    nop                                           ; $4496: $00
    nop                                           ; $4497: $00
    nop                                           ; $4498: $00
    nop                                           ; $4499: $00
    nop                                           ; $449a: $00
    nop                                           ; $449b: $00
    nop                                           ; $449c: $00
    nop                                           ; $449d: $00
    nop                                           ; $449e: $00
    nop                                           ; $449f: $00
    nop                                           ; $44a0: $00
    nop                                           ; $44a1: $00
    nop                                           ; $44a2: $00
    nop                                           ; $44a3: $00
    nop                                           ; $44a4: $00
    nop                                           ; $44a5: $00
    nop                                           ; $44a6: $00
    nop                                           ; $44a7: $00
    nop                                           ; $44a8: $00
    nop                                           ; $44a9: $00
    nop                                           ; $44aa: $00
    nop                                           ; $44ab: $00
    nop                                           ; $44ac: $00
    nop                                           ; $44ad: $00
    nop                                           ; $44ae: $00
    nop                                           ; $44af: $00
    nop                                           ; $44b0: $00
    nop                                           ; $44b1: $00
    nop                                           ; $44b2: $00
    nop                                           ; $44b3: $00
    nop                                           ; $44b4: $00
    nop                                           ; $44b5: $00
    nop                                           ; $44b6: $00
    nop                                           ; $44b7: $00
    nop                                           ; $44b8: $00
    nop                                           ; $44b9: $00
    nop                                           ; $44ba: $00
    nop                                           ; $44bb: $00
    nop                                           ; $44bc: $00
    nop                                           ; $44bd: $00
    nop                                           ; $44be: $00
    nop                                           ; $44bf: $00
    nop                                           ; $44c0: $00
    nop                                           ; $44c1: $00
    nop                                           ; $44c2: $00

Jump_053_44c3:
    nop                                           ; $44c3: $00
    nop                                           ; $44c4: $00
    nop                                           ; $44c5: $00
    nop                                           ; $44c6: $00
    nop                                           ; $44c7: $00
    nop                                           ; $44c8: $00
    nop                                           ; $44c9: $00
    nop                                           ; $44ca: $00
    nop                                           ; $44cb: $00
    nop                                           ; $44cc: $00
    nop                                           ; $44cd: $00
    nop                                           ; $44ce: $00
    nop                                           ; $44cf: $00
    nop                                           ; $44d0: $00
    nop                                           ; $44d1: $00
    nop                                           ; $44d2: $00
    nop                                           ; $44d3: $00
    nop                                           ; $44d4: $00
    nop                                           ; $44d5: $00
    nop                                           ; $44d6: $00
    nop                                           ; $44d7: $00
    nop                                           ; $44d8: $00
    nop                                           ; $44d9: $00
    nop                                           ; $44da: $00
    nop                                           ; $44db: $00
    nop                                           ; $44dc: $00
    nop                                           ; $44dd: $00
    nop                                           ; $44de: $00
    nop                                           ; $44df: $00
    nop                                           ; $44e0: $00
    nop                                           ; $44e1: $00
    nop                                           ; $44e2: $00
    nop                                           ; $44e3: $00
    nop                                           ; $44e4: $00
    nop                                           ; $44e5: $00
    nop                                           ; $44e6: $00
    nop                                           ; $44e7: $00
    nop                                           ; $44e8: $00
    nop                                           ; $44e9: $00
    nop                                           ; $44ea: $00
    nop                                           ; $44eb: $00
    nop                                           ; $44ec: $00
    nop                                           ; $44ed: $00
    nop                                           ; $44ee: $00
    nop                                           ; $44ef: $00
    nop                                           ; $44f0: $00
    nop                                           ; $44f1: $00
    nop                                           ; $44f2: $00
    nop                                           ; $44f3: $00
    nop                                           ; $44f4: $00
    nop                                           ; $44f5: $00
    nop                                           ; $44f6: $00
    nop                                           ; $44f7: $00
    nop                                           ; $44f8: $00
    nop                                           ; $44f9: $00
    nop                                           ; $44fa: $00
    nop                                           ; $44fb: $00
    nop                                           ; $44fc: $00
    nop                                           ; $44fd: $00
    nop                                           ; $44fe: $00
    nop                                           ; $44ff: $00
    nop                                           ; $4500: $00
    nop                                           ; $4501: $00
    nop                                           ; $4502: $00
    nop                                           ; $4503: $00
    nop                                           ; $4504: $00
    nop                                           ; $4505: $00
    nop                                           ; $4506: $00
    nop                                           ; $4507: $00
    nop                                           ; $4508: $00
    nop                                           ; $4509: $00
    nop                                           ; $450a: $00
    nop                                           ; $450b: $00
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
    nop                                           ; $4518: $00
    nop                                           ; $4519: $00
    nop                                           ; $451a: $00
    nop                                           ; $451b: $00
    nop                                           ; $451c: $00
    nop                                           ; $451d: $00
    nop                                           ; $451e: $00
    nop                                           ; $451f: $00
    nop                                           ; $4520: $00
    nop                                           ; $4521: $00
    nop                                           ; $4522: $00
    nop                                           ; $4523: $00
    nop                                           ; $4524: $00
    nop                                           ; $4525: $00
    nop                                           ; $4526: $00
    nop                                           ; $4527: $00
    nop                                           ; $4528: $00
    nop                                           ; $4529: $00
    nop                                           ; $452a: $00
    nop                                           ; $452b: $00
    nop                                           ; $452c: $00
    nop                                           ; $452d: $00
    nop                                           ; $452e: $00
    nop                                           ; $452f: $00
    nop                                           ; $4530: $00
    nop                                           ; $4531: $00
    nop                                           ; $4532: $00
    nop                                           ; $4533: $00
    nop                                           ; $4534: $00
    nop                                           ; $4535: $00
    nop                                           ; $4536: $00
    nop                                           ; $4537: $00
    nop                                           ; $4538: $00
    nop                                           ; $4539: $00
    nop                                           ; $453a: $00
    nop                                           ; $453b: $00
    nop                                           ; $453c: $00
    nop                                           ; $453d: $00
    nop                                           ; $453e: $00
    nop                                           ; $453f: $00
    nop                                           ; $4540: $00
    nop                                           ; $4541: $00
    nop                                           ; $4542: $00
    nop                                           ; $4543: $00
    nop                                           ; $4544: $00
    nop                                           ; $4545: $00
    nop                                           ; $4546: $00
    nop                                           ; $4547: $00
    nop                                           ; $4548: $00
    nop                                           ; $4549: $00
    nop                                           ; $454a: $00
    nop                                           ; $454b: $00
    nop                                           ; $454c: $00
    nop                                           ; $454d: $00
    nop                                           ; $454e: $00
    nop                                           ; $454f: $00
    nop                                           ; $4550: $00
    nop                                           ; $4551: $00
    nop                                           ; $4552: $00
    nop                                           ; $4553: $00
    nop                                           ; $4554: $00
    nop                                           ; $4555: $00
    nop                                           ; $4556: $00
    nop                                           ; $4557: $00
    nop                                           ; $4558: $00
    nop                                           ; $4559: $00
    nop                                           ; $455a: $00
    nop                                           ; $455b: $00
    nop                                           ; $455c: $00
    nop                                           ; $455d: $00
    nop                                           ; $455e: $00
    nop                                           ; $455f: $00
    nop                                           ; $4560: $00
    nop                                           ; $4561: $00
    nop                                           ; $4562: $00
    nop                                           ; $4563: $00
    nop                                           ; $4564: $00
    nop                                           ; $4565: $00
    nop                                           ; $4566: $00
    nop                                           ; $4567: $00
    nop                                           ; $4568: $00
    nop                                           ; $4569: $00
    nop                                           ; $456a: $00
    nop                                           ; $456b: $00
    nop                                           ; $456c: $00
    nop                                           ; $456d: $00
    nop                                           ; $456e: $00
    nop                                           ; $456f: $00
    nop                                           ; $4570: $00
    nop                                           ; $4571: $00
    nop                                           ; $4572: $00
    nop                                           ; $4573: $00
    nop                                           ; $4574: $00
    nop                                           ; $4575: $00
    nop                                           ; $4576: $00
    nop                                           ; $4577: $00
    nop                                           ; $4578: $00
    nop                                           ; $4579: $00
    nop                                           ; $457a: $00
    nop                                           ; $457b: $00
    nop                                           ; $457c: $00
    nop                                           ; $457d: $00
    nop                                           ; $457e: $00
    nop                                           ; $457f: $00
    nop                                           ; $4580: $00
    nop                                           ; $4581: $00
    nop                                           ; $4582: $00
    nop                                           ; $4583: $00
    nop                                           ; $4584: $00
    nop                                           ; $4585: $00
    nop                                           ; $4586: $00
    nop                                           ; $4587: $00
    nop                                           ; $4588: $00
    nop                                           ; $4589: $00
    nop                                           ; $458a: $00
    nop                                           ; $458b: $00
    nop                                           ; $458c: $00
    nop                                           ; $458d: $00
    nop                                           ; $458e: $00
    nop                                           ; $458f: $00
    nop                                           ; $4590: $00
    nop                                           ; $4591: $00
    nop                                           ; $4592: $00
    nop                                           ; $4593: $00
    nop                                           ; $4594: $00
    nop                                           ; $4595: $00
    nop                                           ; $4596: $00
    nop                                           ; $4597: $00
    nop                                           ; $4598: $00
    nop                                           ; $4599: $00
    nop                                           ; $459a: $00
    nop                                           ; $459b: $00
    nop                                           ; $459c: $00
    nop                                           ; $459d: $00
    nop                                           ; $459e: $00
    nop                                           ; $459f: $00
    nop                                           ; $45a0: $00
    nop                                           ; $45a1: $00
    nop                                           ; $45a2: $00
    nop                                           ; $45a3: $00
    nop                                           ; $45a4: $00
    nop                                           ; $45a5: $00
    nop                                           ; $45a6: $00
    nop                                           ; $45a7: $00
    nop                                           ; $45a8: $00
    nop                                           ; $45a9: $00
    nop                                           ; $45aa: $00
    nop                                           ; $45ab: $00
    nop                                           ; $45ac: $00
    nop                                           ; $45ad: $00
    nop                                           ; $45ae: $00
    nop                                           ; $45af: $00
    nop                                           ; $45b0: $00
    nop                                           ; $45b1: $00
    nop                                           ; $45b2: $00
    nop                                           ; $45b3: $00
    nop                                           ; $45b4: $00
    nop                                           ; $45b5: $00
    nop                                           ; $45b6: $00
    nop                                           ; $45b7: $00
    nop                                           ; $45b8: $00
    nop                                           ; $45b9: $00
    nop                                           ; $45ba: $00
    nop                                           ; $45bb: $00
    nop                                           ; $45bc: $00
    nop                                           ; $45bd: $00
    nop                                           ; $45be: $00
    nop                                           ; $45bf: $00
    nop                                           ; $45c0: $00
    nop                                           ; $45c1: $00
    nop                                           ; $45c2: $00
    nop                                           ; $45c3: $00
    nop                                           ; $45c4: $00
    nop                                           ; $45c5: $00
    nop                                           ; $45c6: $00
    nop                                           ; $45c7: $00
    nop                                           ; $45c8: $00
    nop                                           ; $45c9: $00
    nop                                           ; $45ca: $00
    nop                                           ; $45cb: $00
    nop                                           ; $45cc: $00
    nop                                           ; $45cd: $00
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
    nop                                           ; $45da: $00
    nop                                           ; $45db: $00
    nop                                           ; $45dc: $00
    nop                                           ; $45dd: $00
    nop                                           ; $45de: $00
    nop                                           ; $45df: $00
    nop                                           ; $45e0: $00
    nop                                           ; $45e1: $00
    nop                                           ; $45e2: $00
    nop                                           ; $45e3: $00
    nop                                           ; $45e4: $00
    nop                                           ; $45e5: $00
    nop                                           ; $45e6: $00
    nop                                           ; $45e7: $00
    nop                                           ; $45e8: $00
    nop                                           ; $45e9: $00
    nop                                           ; $45ea: $00
    nop                                           ; $45eb: $00
    nop                                           ; $45ec: $00
    nop                                           ; $45ed: $00
    nop                                           ; $45ee: $00
    nop                                           ; $45ef: $00
    nop                                           ; $45f0: $00
    nop                                           ; $45f1: $00
    nop                                           ; $45f2: $00
    nop                                           ; $45f3: $00
    nop                                           ; $45f4: $00
    nop                                           ; $45f5: $00
    nop                                           ; $45f6: $00
    nop                                           ; $45f7: $00
    ld a, l                                       ; $45f8: $7d
    ld h, [hl]                                    ; $45f9: $66
    rst $38                                       ; $45fa: $ff
    db $e4                                        ; $45fb: $e4
    sbc c                                         ; $45fc: $99
    sub [hl]                                      ; $45fd: $96
    sub [hl]                                      ; $45fe: $96
    ld h, [hl]                                    ; $45ff: $66
    sub [hl]                                      ; $4600: $96
    di                                            ; $4601: $f3
    ldh [$e3], a                                  ; $4602: $e0 $e3
    ld de, $ff99                                  ; $4604: $11 $99 $ff
    ldh [$f0], a                                  ; $4607: $e0 $f0
    pop hl                                        ; $4609: $e1
    rst $20                                       ; $460a: $e7
    db $e4                                        ; $460b: $e4
    ld l, c                                       ; $460c: $69
    sub c                                         ; $460d: $91
    ld l, c                                       ; $460e: $69
    dec e                                         ; $460f: $1d
    sub c                                         ; $4610: $91
    di                                            ; $4611: $f3
    ldh [$99], a                                  ; $4612: $e0 $99
    ld h, [hl]                                    ; $4614: $66
    ld l, c                                       ; $4615: $69
    cp $e0                                        ; $4616: $fe $e0
    rst $38                                       ; $4618: $ff
    ldh a, [$d1]                                  ; $4619: $f0 $d1
    db $e4                                        ; $461b: $e4
    sbc b                                         ; $461c: $98
    db $dd                                        ; $461d: $dd
    ld [c], a                                     ; $461e: $e2
    reti                                          ; $461f: $d9


    pop hl                                        ; $4620: $e1
    xor $e3                                       ; $4621: $ee $e3
    ld de, $c811                                  ; $4623: $11 $11 $c8
    pop hl                                        ; $4626: $e1
    call nz, Call_000_11e1                        ; $4627: $c4 $e1 $11
    ld c, h                                       ; $462a: $4c
    rst $38                                       ; $462b: $ff
    ldh [$ad], a                                  ; $462c: $e0 $ad
    pop hl                                        ; $462e: $e1
    sbc c                                         ; $462f: $99
    ld de, $e3fe                                  ; $4630: $11 $fe $e3
    ldh a, [$ef]                                  ; $4633: $f0 $ef
    sub c                                         ; $4635: $91
    and $e1                                       ; $4636: $e6 $e1
    db $fc                                        ; $4638: $fc
    ret c                                         ; $4639: $d8

    ld [c], a                                     ; $463a: $e2
    db $e3                                        ; $463b: $e3
    ld [c], a                                     ; $463c: $e2
    add hl, de                                    ; $463d: $19
    add hl, de                                    ; $463e: $19
    sbc c                                         ; $463f: $99
    add hl, de                                    ; $4640: $19
    sub [hl]                                      ; $4641: $96
    sbc c                                         ; $4642: $99
    ld a, a                                       ; $4643: $7f
    ld h, [hl]                                    ; $4644: $66
    ld de, $1117                                  ; $4645: $11 $17 $11
    ld [hl], a                                    ; $4648: $77
    rla                                           ; $4649: $17
    ld [hl], a                                    ; $464a: $77
    rst $38                                       ; $464b: $ff
    rst $38                                       ; $464c: $ff
    add b                                         ; $464d: $80
    rst $38                                       ; $464e: $ff
    rst $38                                       ; $464f: $ff
    rst $38                                       ; $4650: $ff
    rst $38                                       ; $4651: $ff
    rst $38                                       ; $4652: $ff
    rst $38                                       ; $4653: $ff
    rst $38                                       ; $4654: $ff
    rst $38                                       ; $4655: $ff
    rst $38                                       ; $4656: $ff
    rst $38                                       ; $4657: $ff
    rst $38                                       ; $4658: $ff
    rst $38                                       ; $4659: $ff
    ld a, [$fff9]                                 ; $465a: $fa $f9 $ff
    nop                                           ; $465d: $00
    rst $38                                       ; $465e: $ff
    rst $38                                       ; $465f: $ff
    rst $38                                       ; $4660: $ff
    rst $38                                       ; $4661: $ff
    rst $38                                       ; $4662: $ff
    rst $38                                       ; $4663: $ff
    rst $38                                       ; $4664: $ff
    rst $38                                       ; $4665: $ff
    rst $38                                       ; $4666: $ff
    rst $38                                       ; $4667: $ff
    rst $38                                       ; $4668: $ff
    rst $38                                       ; $4669: $ff
    rst $38                                       ; $466a: $ff
    rst $38                                       ; $466b: $ff
    rst $38                                       ; $466c: $ff
    rst $38                                       ; $466d: $ff
    nop                                           ; $466e: $00
    rst $38                                       ; $466f: $ff
    rst $38                                       ; $4670: $ff
    rst $38                                       ; $4671: $ff
    rst $38                                       ; $4672: $ff
    rst $38                                       ; $4673: $ff
    rst $38                                       ; $4674: $ff
    rst $38                                       ; $4675: $ff
    rst $38                                       ; $4676: $ff
    rst $38                                       ; $4677: $ff
    rst $38                                       ; $4678: $ff
    rst $38                                       ; $4679: $ff
    rst $38                                       ; $467a: $ff
    rst $38                                       ; $467b: $ff
    rst $38                                       ; $467c: $ff
    rst $38                                       ; $467d: $ff
    rst $38                                       ; $467e: $ff
    nop                                           ; $467f: $00
    rst $38                                       ; $4680: $ff
    rst $38                                       ; $4681: $ff
    rst $38                                       ; $4682: $ff
    rst $38                                       ; $4683: $ff
    rst $38                                       ; $4684: $ff
    rst $38                                       ; $4685: $ff
    rst $38                                       ; $4686: $ff
    rst $38                                       ; $4687: $ff
    rst $38                                       ; $4688: $ff
    rst $38                                       ; $4689: $ff
    rst $38                                       ; $468a: $ff
    rst $38                                       ; $468b: $ff
    rst $38                                       ; $468c: $ff
    rst $38                                       ; $468d: $ff
    rst $38                                       ; $468e: $ff
    rst $38                                       ; $468f: $ff
    nop                                           ; $4690: $00
    rst $38                                       ; $4691: $ff
    rst $38                                       ; $4692: $ff
    rst $38                                       ; $4693: $ff
    rst $38                                       ; $4694: $ff
    rst $38                                       ; $4695: $ff
    rst $38                                       ; $4696: $ff
    rst $38                                       ; $4697: $ff
    rst $38                                       ; $4698: $ff
    rst $38                                       ; $4699: $ff
    rst $38                                       ; $469a: $ff
    rst $38                                       ; $469b: $ff
    rst $38                                       ; $469c: $ff
    rst $38                                       ; $469d: $ff
    rst $38                                       ; $469e: $ff
    rst $38                                       ; $469f: $ff
    rst $38                                       ; $46a0: $ff
    nop                                           ; $46a1: $00
    rst $38                                       ; $46a2: $ff
    rst $38                                       ; $46a3: $ff
    rst $38                                       ; $46a4: $ff
    rst $38                                       ; $46a5: $ff
    rst $38                                       ; $46a6: $ff
    rst $38                                       ; $46a7: $ff
    rst $38                                       ; $46a8: $ff
    rst $38                                       ; $46a9: $ff
    rst $38                                       ; $46aa: $ff
    rst $38                                       ; $46ab: $ff
    rst $38                                       ; $46ac: $ff
    rst $38                                       ; $46ad: $ff
    rst $38                                       ; $46ae: $ff
    rst $38                                       ; $46af: $ff
    rst $38                                       ; $46b0: $ff
    rst $38                                       ; $46b1: $ff
    nop                                           ; $46b2: $00
    rst $38                                       ; $46b3: $ff
    rst $38                                       ; $46b4: $ff
    rst $38                                       ; $46b5: $ff
    rst $38                                       ; $46b6: $ff
    rst $38                                       ; $46b7: $ff
    rst $38                                       ; $46b8: $ff
    rst $38                                       ; $46b9: $ff
    rst $38                                       ; $46ba: $ff
    rst $38                                       ; $46bb: $ff
    rst $38                                       ; $46bc: $ff
    rst $38                                       ; $46bd: $ff
    rst $38                                       ; $46be: $ff
    rst $38                                       ; $46bf: $ff
    rst $38                                       ; $46c0: $ff
    rst $30                                       ; $46c1: $f7
    or $00                                        ; $46c2: $f6 $00
    nop                                           ; $46c4: $00
    nop                                           ; $46c5: $00
    ld bc, $ff00                                  ; $46c6: $01 $00 $ff
    rst $38                                       ; $46c9: $ff
    rst $38                                       ; $46ca: $ff
    rst $38                                       ; $46cb: $ff
    rst $38                                       ; $46cc: $ff
    rst $38                                       ; $46cd: $ff
    rst $38                                       ; $46ce: $ff
    rst $38                                       ; $46cf: $ff
    rst $38                                       ; $46d0: $ff
    rst $38                                       ; $46d1: $ff
    rst $38                                       ; $46d2: $ff
    rst $38                                       ; $46d3: $ff
    rst $38                                       ; $46d4: $ff
    rst $38                                       ; $46d5: $ff
    nop                                           ; $46d6: $00
    rst $38                                       ; $46d7: $ff
    rst $38                                       ; $46d8: $ff
    rst $38                                       ; $46d9: $ff
    rst $38                                       ; $46da: $ff
    rst $38                                       ; $46db: $ff
    rst $38                                       ; $46dc: $ff
    rst $38                                       ; $46dd: $ff
    rst $38                                       ; $46de: $ff
    rst $38                                       ; $46df: $ff
    rst $38                                       ; $46e0: $ff
    rst $38                                       ; $46e1: $ff
    rst $38                                       ; $46e2: $ff
    rst $38                                       ; $46e3: $ff
    rst $38                                       ; $46e4: $ff
    rst $38                                       ; $46e5: $ff
    rst $38                                       ; $46e6: $ff
    nop                                           ; $46e7: $00
    rst $38                                       ; $46e8: $ff
    rst $38                                       ; $46e9: $ff
    rst $38                                       ; $46ea: $ff
    rst $38                                       ; $46eb: $ff
    rst $38                                       ; $46ec: $ff
    rst $38                                       ; $46ed: $ff
    rst $38                                       ; $46ee: $ff
    rst $38                                       ; $46ef: $ff
    rst $38                                       ; $46f0: $ff
    rst $38                                       ; $46f1: $ff
    rst $38                                       ; $46f2: $ff
    rst $38                                       ; $46f3: $ff
    rst $38                                       ; $46f4: $ff
    rst $38                                       ; $46f5: $ff
    rst $38                                       ; $46f6: $ff
    rst $38                                       ; $46f7: $ff
    nop                                           ; $46f8: $00
    rst $38                                       ; $46f9: $ff
    rst $38                                       ; $46fa: $ff
    rst $38                                       ; $46fb: $ff
    rst $38                                       ; $46fc: $ff
    rst $38                                       ; $46fd: $ff

Call_053_46fe:
    rst $38                                       ; $46fe: $ff
    rst $38                                       ; $46ff: $ff
    rst $38                                       ; $4700: $ff
    rst $38                                       ; $4701: $ff
    rst $38                                       ; $4702: $ff
    rst $38                                       ; $4703: $ff
    rst $38                                       ; $4704: $ff
    rst $38                                       ; $4705: $ff
    rst $38                                       ; $4706: $ff
    rst $38                                       ; $4707: $ff
    rst $38                                       ; $4708: $ff
    nop                                           ; $4709: $00
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
    rst $38                                       ; $4717: $ff
    rst $38                                       ; $4718: $ff
    rst $38                                       ; $4719: $ff
    nop                                           ; $471a: $00
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
    rst $38                                       ; $4728: $ff
    rst $38                                       ; $4729: $ff
    rst $38                                       ; $472a: $ff
    nop                                           ; $472b: $00
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
    rst $38                                       ; $4739: $ff
    rst $38                                       ; $473a: $ff
    rst $38                                       ; $473b: $ff
    nop                                           ; $473c: $00
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
    db $e4                                        ; $4748: $e4
    nop                                           ; $4749: $00
    nop                                           ; $474a: $00
    nop                                           ; $474b: $00
    ld d, b                                       ; $474c: $50
    ld b, a                                       ; $474d: $47
    ld d, b                                       ; $474e: $50
    ld c, a                                       ; $474f: $4f
    nop                                           ; $4750: $00
    nop                                           ; $4751: $00
    nop                                           ; $4752: $00
    nop                                           ; $4753: $00
    nop                                           ; $4754: $00
    nop                                           ; $4755: $00
    nop                                           ; $4756: $00
    nop                                           ; $4757: $00
    nop                                           ; $4758: $00
    nop                                           ; $4759: $00
    nop                                           ; $475a: $00
    nop                                           ; $475b: $00
    nop                                           ; $475c: $00
    nop                                           ; $475d: $00
    nop                                           ; $475e: $00
    nop                                           ; $475f: $00
    nop                                           ; $4760: $00
    nop                                           ; $4761: $00
    nop                                           ; $4762: $00
    nop                                           ; $4763: $00
    nop                                           ; $4764: $00
    nop                                           ; $4765: $00
    nop                                           ; $4766: $00
    nop                                           ; $4767: $00
    nop                                           ; $4768: $00
    nop                                           ; $4769: $00
    nop                                           ; $476a: $00
    nop                                           ; $476b: $00
    nop                                           ; $476c: $00
    nop                                           ; $476d: $00
    nop                                           ; $476e: $00
    nop                                           ; $476f: $00
    nop                                           ; $4770: $00
    nop                                           ; $4771: $00
    nop                                           ; $4772: $00
    nop                                           ; $4773: $00
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
    nop                                           ; $478e: $00
    nop                                           ; $478f: $00
    nop                                           ; $4790: $00
    nop                                           ; $4791: $00
    nop                                           ; $4792: $00
    nop                                           ; $4793: $00
    nop                                           ; $4794: $00
    nop                                           ; $4795: $00
    nop                                           ; $4796: $00
    nop                                           ; $4797: $00
    nop                                           ; $4798: $00
    nop                                           ; $4799: $00
    nop                                           ; $479a: $00
    nop                                           ; $479b: $00
    nop                                           ; $479c: $00
    nop                                           ; $479d: $00
    nop                                           ; $479e: $00
    nop                                           ; $479f: $00
    nop                                           ; $47a0: $00
    nop                                           ; $47a1: $00
    nop                                           ; $47a2: $00
    nop                                           ; $47a3: $00
    nop                                           ; $47a4: $00
    nop                                           ; $47a5: $00
    nop                                           ; $47a6: $00
    nop                                           ; $47a7: $00
    nop                                           ; $47a8: $00
    nop                                           ; $47a9: $00
    nop                                           ; $47aa: $00
    nop                                           ; $47ab: $00
    nop                                           ; $47ac: $00
    nop                                           ; $47ad: $00
    nop                                           ; $47ae: $00
    nop                                           ; $47af: $00
    nop                                           ; $47b0: $00
    nop                                           ; $47b1: $00
    nop                                           ; $47b2: $00
    nop                                           ; $47b3: $00
    nop                                           ; $47b4: $00
    nop                                           ; $47b5: $00
    nop                                           ; $47b6: $00
    nop                                           ; $47b7: $00
    nop                                           ; $47b8: $00
    nop                                           ; $47b9: $00
    nop                                           ; $47ba: $00
    nop                                           ; $47bb: $00
    nop                                           ; $47bc: $00
    nop                                           ; $47bd: $00
    nop                                           ; $47be: $00
    nop                                           ; $47bf: $00
    nop                                           ; $47c0: $00
    nop                                           ; $47c1: $00
    nop                                           ; $47c2: $00
    nop                                           ; $47c3: $00
    nop                                           ; $47c4: $00
    nop                                           ; $47c5: $00
    nop                                           ; $47c6: $00
    nop                                           ; $47c7: $00
    nop                                           ; $47c8: $00
    nop                                           ; $47c9: $00
    nop                                           ; $47ca: $00
    nop                                           ; $47cb: $00
    nop                                           ; $47cc: $00
    nop                                           ; $47cd: $00
    nop                                           ; $47ce: $00
    nop                                           ; $47cf: $00
    nop                                           ; $47d0: $00
    nop                                           ; $47d1: $00
    nop                                           ; $47d2: $00
    nop                                           ; $47d3: $00
    nop                                           ; $47d4: $00
    nop                                           ; $47d5: $00
    nop                                           ; $47d6: $00
    nop                                           ; $47d7: $00
    nop                                           ; $47d8: $00
    nop                                           ; $47d9: $00
    nop                                           ; $47da: $00
    nop                                           ; $47db: $00
    nop                                           ; $47dc: $00
    nop                                           ; $47dd: $00
    nop                                           ; $47de: $00
    nop                                           ; $47df: $00
    nop                                           ; $47e0: $00
    nop                                           ; $47e1: $00
    nop                                           ; $47e2: $00
    nop                                           ; $47e3: $00
    nop                                           ; $47e4: $00
    nop                                           ; $47e5: $00
    nop                                           ; $47e6: $00
    nop                                           ; $47e7: $00
    nop                                           ; $47e8: $00
    nop                                           ; $47e9: $00
    nop                                           ; $47ea: $00
    nop                                           ; $47eb: $00
    nop                                           ; $47ec: $00
    nop                                           ; $47ed: $00
    nop                                           ; $47ee: $00
    nop                                           ; $47ef: $00
    nop                                           ; $47f0: $00
    nop                                           ; $47f1: $00
    nop                                           ; $47f2: $00
    nop                                           ; $47f3: $00
    nop                                           ; $47f4: $00
    nop                                           ; $47f5: $00
    nop                                           ; $47f6: $00
    nop                                           ; $47f7: $00
    nop                                           ; $47f8: $00
    nop                                           ; $47f9: $00
    nop                                           ; $47fa: $00
    nop                                           ; $47fb: $00
    nop                                           ; $47fc: $00
    nop                                           ; $47fd: $00
    nop                                           ; $47fe: $00
    nop                                           ; $47ff: $00
    nop                                           ; $4800: $00
    nop                                           ; $4801: $00
    nop                                           ; $4802: $00
    nop                                           ; $4803: $00
    nop                                           ; $4804: $00
    nop                                           ; $4805: $00
    nop                                           ; $4806: $00
    nop                                           ; $4807: $00
    nop                                           ; $4808: $00
    nop                                           ; $4809: $00
    nop                                           ; $480a: $00
    nop                                           ; $480b: $00
    nop                                           ; $480c: $00
    nop                                           ; $480d: $00
    nop                                           ; $480e: $00
    nop                                           ; $480f: $00
    nop                                           ; $4810: $00
    nop                                           ; $4811: $00
    nop                                           ; $4812: $00
    nop                                           ; $4813: $00
    nop                                           ; $4814: $00
    nop                                           ; $4815: $00
    nop                                           ; $4816: $00
    nop                                           ; $4817: $00
    nop                                           ; $4818: $00
    nop                                           ; $4819: $00
    nop                                           ; $481a: $00
    nop                                           ; $481b: $00
    nop                                           ; $481c: $00
    nop                                           ; $481d: $00
    nop                                           ; $481e: $00
    nop                                           ; $481f: $00
    nop                                           ; $4820: $00
    nop                                           ; $4821: $00
    nop                                           ; $4822: $00
    nop                                           ; $4823: $00
    nop                                           ; $4824: $00
    nop                                           ; $4825: $00
    nop                                           ; $4826: $00
    nop                                           ; $4827: $00
    nop                                           ; $4828: $00
    nop                                           ; $4829: $00
    nop                                           ; $482a: $00
    nop                                           ; $482b: $00
    nop                                           ; $482c: $00
    nop                                           ; $482d: $00
    nop                                           ; $482e: $00
    nop                                           ; $482f: $00
    nop                                           ; $4830: $00
    nop                                           ; $4831: $00
    nop                                           ; $4832: $00
    nop                                           ; $4833: $00
    nop                                           ; $4834: $00
    nop                                           ; $4835: $00
    nop                                           ; $4836: $00
    nop                                           ; $4837: $00
    nop                                           ; $4838: $00
    nop                                           ; $4839: $00
    nop                                           ; $483a: $00
    nop                                           ; $483b: $00
    nop                                           ; $483c: $00
    nop                                           ; $483d: $00
    nop                                           ; $483e: $00
    nop                                           ; $483f: $00
    nop                                           ; $4840: $00
    nop                                           ; $4841: $00
    nop                                           ; $4842: $00
    nop                                           ; $4843: $00
    nop                                           ; $4844: $00
    nop                                           ; $4845: $00
    nop                                           ; $4846: $00
    nop                                           ; $4847: $00
    nop                                           ; $4848: $00
    nop                                           ; $4849: $00
    nop                                           ; $484a: $00
    nop                                           ; $484b: $00
    nop                                           ; $484c: $00
    nop                                           ; $484d: $00
    nop                                           ; $484e: $00
    nop                                           ; $484f: $00
    nop                                           ; $4850: $00
    nop                                           ; $4851: $00
    nop                                           ; $4852: $00
    nop                                           ; $4853: $00
    nop                                           ; $4854: $00
    nop                                           ; $4855: $00
    nop                                           ; $4856: $00
    nop                                           ; $4857: $00
    nop                                           ; $4858: $00
    nop                                           ; $4859: $00
    nop                                           ; $485a: $00
    nop                                           ; $485b: $00
    nop                                           ; $485c: $00
    nop                                           ; $485d: $00
    nop                                           ; $485e: $00
    nop                                           ; $485f: $00
    nop                                           ; $4860: $00
    nop                                           ; $4861: $00
    nop                                           ; $4862: $00
    nop                                           ; $4863: $00
    nop                                           ; $4864: $00
    nop                                           ; $4865: $00
    nop                                           ; $4866: $00
    nop                                           ; $4867: $00
    nop                                           ; $4868: $00
    nop                                           ; $4869: $00
    nop                                           ; $486a: $00
    nop                                           ; $486b: $00
    nop                                           ; $486c: $00
    nop                                           ; $486d: $00
    nop                                           ; $486e: $00
    nop                                           ; $486f: $00
    nop                                           ; $4870: $00
    nop                                           ; $4871: $00
    nop                                           ; $4872: $00
    nop                                           ; $4873: $00
    nop                                           ; $4874: $00
    nop                                           ; $4875: $00
    nop                                           ; $4876: $00
    nop                                           ; $4877: $00
    nop                                           ; $4878: $00
    nop                                           ; $4879: $00
    nop                                           ; $487a: $00
    nop                                           ; $487b: $00
    nop                                           ; $487c: $00
    nop                                           ; $487d: $00
    nop                                           ; $487e: $00
    nop                                           ; $487f: $00
    nop                                           ; $4880: $00
    nop                                           ; $4881: $00
    nop                                           ; $4882: $00
    nop                                           ; $4883: $00
    nop                                           ; $4884: $00
    nop                                           ; $4885: $00
    nop                                           ; $4886: $00
    nop                                           ; $4887: $00
    nop                                           ; $4888: $00
    nop                                           ; $4889: $00
    nop                                           ; $488a: $00
    nop                                           ; $488b: $00
    nop                                           ; $488c: $00
    nop                                           ; $488d: $00
    nop                                           ; $488e: $00
    nop                                           ; $488f: $00
    nop                                           ; $4890: $00
    nop                                           ; $4891: $00
    nop                                           ; $4892: $00
    nop                                           ; $4893: $00
    nop                                           ; $4894: $00
    nop                                           ; $4895: $00
    nop                                           ; $4896: $00
    nop                                           ; $4897: $00
    nop                                           ; $4898: $00
    nop                                           ; $4899: $00
    nop                                           ; $489a: $00
    nop                                           ; $489b: $00
    nop                                           ; $489c: $00
    nop                                           ; $489d: $00
    nop                                           ; $489e: $00
    nop                                           ; $489f: $00
    nop                                           ; $48a0: $00
    nop                                           ; $48a1: $00
    nop                                           ; $48a2: $00
    nop                                           ; $48a3: $00
    nop                                           ; $48a4: $00
    nop                                           ; $48a5: $00
    nop                                           ; $48a6: $00
    nop                                           ; $48a7: $00
    nop                                           ; $48a8: $00
    nop                                           ; $48a9: $00
    nop                                           ; $48aa: $00
    nop                                           ; $48ab: $00
    nop                                           ; $48ac: $00
    nop                                           ; $48ad: $00
    nop                                           ; $48ae: $00
    nop                                           ; $48af: $00
    nop                                           ; $48b0: $00
    nop                                           ; $48b1: $00
    nop                                           ; $48b2: $00
    nop                                           ; $48b3: $00
    nop                                           ; $48b4: $00
    nop                                           ; $48b5: $00
    nop                                           ; $48b6: $00
    nop                                           ; $48b7: $00
    nop                                           ; $48b8: $00
    nop                                           ; $48b9: $00
    nop                                           ; $48ba: $00
    nop                                           ; $48bb: $00
    nop                                           ; $48bc: $00
    nop                                           ; $48bd: $00
    nop                                           ; $48be: $00
    nop                                           ; $48bf: $00
    nop                                           ; $48c0: $00
    nop                                           ; $48c1: $00
    nop                                           ; $48c2: $00
    nop                                           ; $48c3: $00
    nop                                           ; $48c4: $00
    nop                                           ; $48c5: $00
    nop                                           ; $48c6: $00
    nop                                           ; $48c7: $00
    nop                                           ; $48c8: $00
    nop                                           ; $48c9: $00
    nop                                           ; $48ca: $00
    nop                                           ; $48cb: $00
    nop                                           ; $48cc: $00
    nop                                           ; $48cd: $00
    nop                                           ; $48ce: $00
    nop                                           ; $48cf: $00
    nop                                           ; $48d0: $00
    nop                                           ; $48d1: $00
    nop                                           ; $48d2: $00
    nop                                           ; $48d3: $00
    nop                                           ; $48d4: $00
    nop                                           ; $48d5: $00
    nop                                           ; $48d6: $00
    nop                                           ; $48d7: $00
    nop                                           ; $48d8: $00
    nop                                           ; $48d9: $00
    nop                                           ; $48da: $00
    nop                                           ; $48db: $00
    nop                                           ; $48dc: $00
    nop                                           ; $48dd: $00
    nop                                           ; $48de: $00
    nop                                           ; $48df: $00
    nop                                           ; $48e0: $00
    nop                                           ; $48e1: $00
    nop                                           ; $48e2: $00
    nop                                           ; $48e3: $00
    nop                                           ; $48e4: $00
    nop                                           ; $48e5: $00
    nop                                           ; $48e6: $00
    nop                                           ; $48e7: $00
    nop                                           ; $48e8: $00
    nop                                           ; $48e9: $00
    nop                                           ; $48ea: $00
    nop                                           ; $48eb: $00
    nop                                           ; $48ec: $00
    nop                                           ; $48ed: $00
    nop                                           ; $48ee: $00
    nop                                           ; $48ef: $00
    nop                                           ; $48f0: $00
    nop                                           ; $48f1: $00
    nop                                           ; $48f2: $00
    nop                                           ; $48f3: $00
    nop                                           ; $48f4: $00
    nop                                           ; $48f5: $00
    nop                                           ; $48f6: $00
    nop                                           ; $48f7: $00
    nop                                           ; $48f8: $00
    nop                                           ; $48f9: $00
    nop                                           ; $48fa: $00
    nop                                           ; $48fb: $00
    nop                                           ; $48fc: $00
    nop                                           ; $48fd: $00
    nop                                           ; $48fe: $00
    nop                                           ; $48ff: $00
    nop                                           ; $4900: $00
    nop                                           ; $4901: $00
    nop                                           ; $4902: $00
    nop                                           ; $4903: $00
    nop                                           ; $4904: $00
    nop                                           ; $4905: $00
    nop                                           ; $4906: $00
    nop                                           ; $4907: $00
    nop                                           ; $4908: $00
    nop                                           ; $4909: $00
    nop                                           ; $490a: $00
    nop                                           ; $490b: $00
    nop                                           ; $490c: $00
    nop                                           ; $490d: $00
    nop                                           ; $490e: $00
    nop                                           ; $490f: $00
    nop                                           ; $4910: $00
    nop                                           ; $4911: $00
    nop                                           ; $4912: $00
    nop                                           ; $4913: $00
    nop                                           ; $4914: $00
    nop                                           ; $4915: $00
    nop                                           ; $4916: $00
    nop                                           ; $4917: $00
    nop                                           ; $4918: $00
    nop                                           ; $4919: $00
    nop                                           ; $491a: $00
    nop                                           ; $491b: $00
    nop                                           ; $491c: $00
    nop                                           ; $491d: $00
    nop                                           ; $491e: $00
    nop                                           ; $491f: $00
    nop                                           ; $4920: $00
    nop                                           ; $4921: $00
    nop                                           ; $4922: $00
    nop                                           ; $4923: $00
    nop                                           ; $4924: $00
    nop                                           ; $4925: $00
    nop                                           ; $4926: $00
    nop                                           ; $4927: $00
    nop                                           ; $4928: $00
    nop                                           ; $4929: $00
    nop                                           ; $492a: $00
    nop                                           ; $492b: $00
    nop                                           ; $492c: $00
    nop                                           ; $492d: $00
    nop                                           ; $492e: $00
    nop                                           ; $492f: $00
    nop                                           ; $4930: $00
    nop                                           ; $4931: $00
    nop                                           ; $4932: $00
    nop                                           ; $4933: $00
    nop                                           ; $4934: $00
    nop                                           ; $4935: $00
    nop                                           ; $4936: $00
    nop                                           ; $4937: $00
    nop                                           ; $4938: $00
    nop                                           ; $4939: $00
    nop                                           ; $493a: $00
    nop                                           ; $493b: $00
    nop                                           ; $493c: $00
    nop                                           ; $493d: $00
    nop                                           ; $493e: $00
    nop                                           ; $493f: $00
    nop                                           ; $4940: $00
    nop                                           ; $4941: $00
    nop                                           ; $4942: $00
    nop                                           ; $4943: $00
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
    nop                                           ; $494e: $00
    nop                                           ; $494f: $00
    nop                                           ; $4950: $00
    nop                                           ; $4951: $00
    nop                                           ; $4952: $00
    nop                                           ; $4953: $00
    nop                                           ; $4954: $00
    nop                                           ; $4955: $00
    nop                                           ; $4956: $00
    nop                                           ; $4957: $00
    nop                                           ; $4958: $00
    nop                                           ; $4959: $00
    nop                                           ; $495a: $00
    nop                                           ; $495b: $00
    nop                                           ; $495c: $00
    nop                                           ; $495d: $00
    nop                                           ; $495e: $00
    nop                                           ; $495f: $00
    nop                                           ; $4960: $00
    nop                                           ; $4961: $00
    nop                                           ; $4962: $00
    nop                                           ; $4963: $00
    nop                                           ; $4964: $00
    nop                                           ; $4965: $00
    nop                                           ; $4966: $00
    nop                                           ; $4967: $00
    nop                                           ; $4968: $00
    nop                                           ; $4969: $00
    nop                                           ; $496a: $00
    nop                                           ; $496b: $00
    nop                                           ; $496c: $00
    nop                                           ; $496d: $00
    nop                                           ; $496e: $00
    nop                                           ; $496f: $00
    nop                                           ; $4970: $00
    nop                                           ; $4971: $00
    nop                                           ; $4972: $00
    nop                                           ; $4973: $00
    nop                                           ; $4974: $00
    nop                                           ; $4975: $00
    nop                                           ; $4976: $00
    nop                                           ; $4977: $00
    nop                                           ; $4978: $00
    nop                                           ; $4979: $00
    nop                                           ; $497a: $00
    nop                                           ; $497b: $00
    nop                                           ; $497c: $00
    nop                                           ; $497d: $00
    nop                                           ; $497e: $00
    nop                                           ; $497f: $00
    nop                                           ; $4980: $00
    nop                                           ; $4981: $00
    nop                                           ; $4982: $00
    nop                                           ; $4983: $00
    nop                                           ; $4984: $00
    nop                                           ; $4985: $00
    nop                                           ; $4986: $00
    nop                                           ; $4987: $00
    nop                                           ; $4988: $00
    nop                                           ; $4989: $00
    nop                                           ; $498a: $00
    nop                                           ; $498b: $00
    nop                                           ; $498c: $00
    nop                                           ; $498d: $00
    nop                                           ; $498e: $00
    nop                                           ; $498f: $00
    nop                                           ; $4990: $00
    nop                                           ; $4991: $00
    nop                                           ; $4992: $00
    nop                                           ; $4993: $00
    nop                                           ; $4994: $00
    nop                                           ; $4995: $00
    nop                                           ; $4996: $00
    nop                                           ; $4997: $00
    nop                                           ; $4998: $00
    nop                                           ; $4999: $00
    nop                                           ; $499a: $00
    nop                                           ; $499b: $00
    nop                                           ; $499c: $00
    nop                                           ; $499d: $00
    nop                                           ; $499e: $00
    nop                                           ; $499f: $00
    nop                                           ; $49a0: $00
    nop                                           ; $49a1: $00
    nop                                           ; $49a2: $00
    nop                                           ; $49a3: $00
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
    nop                                           ; $49ae: $00
    nop                                           ; $49af: $00
    nop                                           ; $49b0: $00
    nop                                           ; $49b1: $00
    nop                                           ; $49b2: $00
    nop                                           ; $49b3: $00
    nop                                           ; $49b4: $00
    nop                                           ; $49b5: $00
    nop                                           ; $49b6: $00
    nop                                           ; $49b7: $00
    nop                                           ; $49b8: $00
    nop                                           ; $49b9: $00
    nop                                           ; $49ba: $00
    nop                                           ; $49bb: $00
    nop                                           ; $49bc: $00
    nop                                           ; $49bd: $00
    nop                                           ; $49be: $00
    nop                                           ; $49bf: $00
    nop                                           ; $49c0: $00
    nop                                           ; $49c1: $00
    nop                                           ; $49c2: $00
    nop                                           ; $49c3: $00
    nop                                           ; $49c4: $00
    nop                                           ; $49c5: $00
    nop                                           ; $49c6: $00
    nop                                           ; $49c7: $00
    nop                                           ; $49c8: $00
    nop                                           ; $49c9: $00
    nop                                           ; $49ca: $00
    nop                                           ; $49cb: $00
    nop                                           ; $49cc: $00
    nop                                           ; $49cd: $00
    nop                                           ; $49ce: $00
    nop                                           ; $49cf: $00
    nop                                           ; $49d0: $00
    nop                                           ; $49d1: $00
    nop                                           ; $49d2: $00
    nop                                           ; $49d3: $00
    nop                                           ; $49d4: $00
    nop                                           ; $49d5: $00
    nop                                           ; $49d6: $00
    nop                                           ; $49d7: $00
    nop                                           ; $49d8: $00
    nop                                           ; $49d9: $00
    nop                                           ; $49da: $00
    nop                                           ; $49db: $00
    nop                                           ; $49dc: $00
    nop                                           ; $49dd: $00
    nop                                           ; $49de: $00
    nop                                           ; $49df: $00
    nop                                           ; $49e0: $00
    nop                                           ; $49e1: $00
    nop                                           ; $49e2: $00
    nop                                           ; $49e3: $00
    nop                                           ; $49e4: $00
    nop                                           ; $49e5: $00
    nop                                           ; $49e6: $00
    nop                                           ; $49e7: $00
    nop                                           ; $49e8: $00
    nop                                           ; $49e9: $00
    nop                                           ; $49ea: $00
    nop                                           ; $49eb: $00
    nop                                           ; $49ec: $00
    nop                                           ; $49ed: $00
    nop                                           ; $49ee: $00
    nop                                           ; $49ef: $00
    nop                                           ; $49f0: $00
    nop                                           ; $49f1: $00
    nop                                           ; $49f2: $00
    nop                                           ; $49f3: $00
    nop                                           ; $49f4: $00
    nop                                           ; $49f5: $00
    nop                                           ; $49f6: $00
    nop                                           ; $49f7: $00
    nop                                           ; $49f8: $00
    nop                                           ; $49f9: $00
    nop                                           ; $49fa: $00
    nop                                           ; $49fb: $00
    nop                                           ; $49fc: $00
    nop                                           ; $49fd: $00
    nop                                           ; $49fe: $00
    nop                                           ; $49ff: $00
    nop                                           ; $4a00: $00
    nop                                           ; $4a01: $00
    nop                                           ; $4a02: $00
    nop                                           ; $4a03: $00
    nop                                           ; $4a04: $00
    nop                                           ; $4a05: $00
    nop                                           ; $4a06: $00
    nop                                           ; $4a07: $00
    nop                                           ; $4a08: $00
    nop                                           ; $4a09: $00
    nop                                           ; $4a0a: $00
    nop                                           ; $4a0b: $00
    nop                                           ; $4a0c: $00
    nop                                           ; $4a0d: $00
    nop                                           ; $4a0e: $00
    nop                                           ; $4a0f: $00
    nop                                           ; $4a10: $00
    nop                                           ; $4a11: $00
    nop                                           ; $4a12: $00
    nop                                           ; $4a13: $00
    nop                                           ; $4a14: $00
    nop                                           ; $4a15: $00
    nop                                           ; $4a16: $00
    nop                                           ; $4a17: $00
    nop                                           ; $4a18: $00
    nop                                           ; $4a19: $00
    nop                                           ; $4a1a: $00
    nop                                           ; $4a1b: $00
    nop                                           ; $4a1c: $00
    nop                                           ; $4a1d: $00
    nop                                           ; $4a1e: $00
    nop                                           ; $4a1f: $00
    nop                                           ; $4a20: $00
    nop                                           ; $4a21: $00
    nop                                           ; $4a22: $00
    nop                                           ; $4a23: $00
    nop                                           ; $4a24: $00
    nop                                           ; $4a25: $00
    nop                                           ; $4a26: $00
    nop                                           ; $4a27: $00
    nop                                           ; $4a28: $00
    nop                                           ; $4a29: $00
    nop                                           ; $4a2a: $00
    nop                                           ; $4a2b: $00
    nop                                           ; $4a2c: $00
    nop                                           ; $4a2d: $00
    nop                                           ; $4a2e: $00
    nop                                           ; $4a2f: $00
    nop                                           ; $4a30: $00
    nop                                           ; $4a31: $00
    nop                                           ; $4a32: $00
    nop                                           ; $4a33: $00
    nop                                           ; $4a34: $00
    nop                                           ; $4a35: $00
    nop                                           ; $4a36: $00
    nop                                           ; $4a37: $00
    nop                                           ; $4a38: $00
    nop                                           ; $4a39: $00
    nop                                           ; $4a3a: $00
    nop                                           ; $4a3b: $00
    nop                                           ; $4a3c: $00
    nop                                           ; $4a3d: $00
    nop                                           ; $4a3e: $00
    nop                                           ; $4a3f: $00
    nop                                           ; $4a40: $00
    nop                                           ; $4a41: $00
    nop                                           ; $4a42: $00
    nop                                           ; $4a43: $00
    nop                                           ; $4a44: $00
    nop                                           ; $4a45: $00
    nop                                           ; $4a46: $00
    nop                                           ; $4a47: $00
    nop                                           ; $4a48: $00
    nop                                           ; $4a49: $00
    nop                                           ; $4a4a: $00
    nop                                           ; $4a4b: $00
    nop                                           ; $4a4c: $00
    nop                                           ; $4a4d: $00
    nop                                           ; $4a4e: $00
    nop                                           ; $4a4f: $00
    nop                                           ; $4a50: $00
    nop                                           ; $4a51: $00
    nop                                           ; $4a52: $00
    nop                                           ; $4a53: $00
    nop                                           ; $4a54: $00
    nop                                           ; $4a55: $00
    nop                                           ; $4a56: $00
    nop                                           ; $4a57: $00
    nop                                           ; $4a58: $00
    nop                                           ; $4a59: $00
    nop                                           ; $4a5a: $00
    nop                                           ; $4a5b: $00
    nop                                           ; $4a5c: $00
    nop                                           ; $4a5d: $00
    nop                                           ; $4a5e: $00
    nop                                           ; $4a5f: $00
    nop                                           ; $4a60: $00
    nop                                           ; $4a61: $00
    nop                                           ; $4a62: $00
    nop                                           ; $4a63: $00
    nop                                           ; $4a64: $00
    nop                                           ; $4a65: $00
    nop                                           ; $4a66: $00
    nop                                           ; $4a67: $00
    nop                                           ; $4a68: $00
    nop                                           ; $4a69: $00
    nop                                           ; $4a6a: $00
    nop                                           ; $4a6b: $00
    nop                                           ; $4a6c: $00
    nop                                           ; $4a6d: $00
    nop                                           ; $4a6e: $00
    nop                                           ; $4a6f: $00
    nop                                           ; $4a70: $00
    nop                                           ; $4a71: $00
    nop                                           ; $4a72: $00
    nop                                           ; $4a73: $00
    nop                                           ; $4a74: $00
    nop                                           ; $4a75: $00
    nop                                           ; $4a76: $00
    nop                                           ; $4a77: $00
    nop                                           ; $4a78: $00
    nop                                           ; $4a79: $00
    nop                                           ; $4a7a: $00
    nop                                           ; $4a7b: $00
    nop                                           ; $4a7c: $00
    nop                                           ; $4a7d: $00
    nop                                           ; $4a7e: $00
    nop                                           ; $4a7f: $00
    nop                                           ; $4a80: $00
    nop                                           ; $4a81: $00
    nop                                           ; $4a82: $00
    nop                                           ; $4a83: $00
    nop                                           ; $4a84: $00
    nop                                           ; $4a85: $00
    nop                                           ; $4a86: $00
    nop                                           ; $4a87: $00
    nop                                           ; $4a88: $00
    nop                                           ; $4a89: $00
    nop                                           ; $4a8a: $00
    nop                                           ; $4a8b: $00
    nop                                           ; $4a8c: $00
    nop                                           ; $4a8d: $00
    nop                                           ; $4a8e: $00
    nop                                           ; $4a8f: $00
    nop                                           ; $4a90: $00
    nop                                           ; $4a91: $00
    nop                                           ; $4a92: $00
    nop                                           ; $4a93: $00
    nop                                           ; $4a94: $00
    nop                                           ; $4a95: $00
    nop                                           ; $4a96: $00
    nop                                           ; $4a97: $00
    nop                                           ; $4a98: $00
    nop                                           ; $4a99: $00
    nop                                           ; $4a9a: $00
    nop                                           ; $4a9b: $00
    nop                                           ; $4a9c: $00
    nop                                           ; $4a9d: $00
    nop                                           ; $4a9e: $00
    nop                                           ; $4a9f: $00
    nop                                           ; $4aa0: $00
    nop                                           ; $4aa1: $00
    nop                                           ; $4aa2: $00
    nop                                           ; $4aa3: $00
    nop                                           ; $4aa4: $00
    nop                                           ; $4aa5: $00
    nop                                           ; $4aa6: $00
    nop                                           ; $4aa7: $00
    nop                                           ; $4aa8: $00
    nop                                           ; $4aa9: $00
    nop                                           ; $4aaa: $00
    nop                                           ; $4aab: $00
    nop                                           ; $4aac: $00
    nop                                           ; $4aad: $00
    nop                                           ; $4aae: $00
    nop                                           ; $4aaf: $00
    nop                                           ; $4ab0: $00
    nop                                           ; $4ab1: $00
    nop                                           ; $4ab2: $00
    nop                                           ; $4ab3: $00
    nop                                           ; $4ab4: $00
    nop                                           ; $4ab5: $00
    nop                                           ; $4ab6: $00
    nop                                           ; $4ab7: $00
    nop                                           ; $4ab8: $00
    nop                                           ; $4ab9: $00
    nop                                           ; $4aba: $00
    nop                                           ; $4abb: $00
    nop                                           ; $4abc: $00
    nop                                           ; $4abd: $00
    nop                                           ; $4abe: $00
    nop                                           ; $4abf: $00
    nop                                           ; $4ac0: $00
    nop                                           ; $4ac1: $00
    nop                                           ; $4ac2: $00
    nop                                           ; $4ac3: $00
    nop                                           ; $4ac4: $00
    nop                                           ; $4ac5: $00
    nop                                           ; $4ac6: $00
    nop                                           ; $4ac7: $00
    nop                                           ; $4ac8: $00
    nop                                           ; $4ac9: $00
    nop                                           ; $4aca: $00
    nop                                           ; $4acb: $00
    nop                                           ; $4acc: $00
    nop                                           ; $4acd: $00
    nop                                           ; $4ace: $00
    nop                                           ; $4acf: $00
    nop                                           ; $4ad0: $00
    nop                                           ; $4ad1: $00
    nop                                           ; $4ad2: $00
    nop                                           ; $4ad3: $00
    nop                                           ; $4ad4: $00
    nop                                           ; $4ad5: $00
    nop                                           ; $4ad6: $00
    nop                                           ; $4ad7: $00
    nop                                           ; $4ad8: $00
    nop                                           ; $4ad9: $00
    nop                                           ; $4ada: $00
    nop                                           ; $4adb: $00
    nop                                           ; $4adc: $00
    nop                                           ; $4add: $00
    nop                                           ; $4ade: $00
    nop                                           ; $4adf: $00
    nop                                           ; $4ae0: $00
    nop                                           ; $4ae1: $00
    nop                                           ; $4ae2: $00
    nop                                           ; $4ae3: $00
    nop                                           ; $4ae4: $00
    nop                                           ; $4ae5: $00
    nop                                           ; $4ae6: $00
    nop                                           ; $4ae7: $00
    nop                                           ; $4ae8: $00
    nop                                           ; $4ae9: $00
    nop                                           ; $4aea: $00
    nop                                           ; $4aeb: $00
    nop                                           ; $4aec: $00
    nop                                           ; $4aed: $00
    nop                                           ; $4aee: $00
    nop                                           ; $4aef: $00
    nop                                           ; $4af0: $00
    nop                                           ; $4af1: $00
    nop                                           ; $4af2: $00
    nop                                           ; $4af3: $00
    nop                                           ; $4af4: $00
    nop                                           ; $4af5: $00
    nop                                           ; $4af6: $00
    nop                                           ; $4af7: $00
    nop                                           ; $4af8: $00
    nop                                           ; $4af9: $00
    nop                                           ; $4afa: $00
    nop                                           ; $4afb: $00
    nop                                           ; $4afc: $00
    nop                                           ; $4afd: $00
    nop                                           ; $4afe: $00
    nop                                           ; $4aff: $00

Call_053_4b00:
    nop                                           ; $4b00: $00
    nop                                           ; $4b01: $00
    nop                                           ; $4b02: $00
    nop                                           ; $4b03: $00
    nop                                           ; $4b04: $00
    nop                                           ; $4b05: $00
    nop                                           ; $4b06: $00
    nop                                           ; $4b07: $00
    nop                                           ; $4b08: $00
    nop                                           ; $4b09: $00
    nop                                           ; $4b0a: $00
    nop                                           ; $4b0b: $00
    nop                                           ; $4b0c: $00
    nop                                           ; $4b0d: $00
    nop                                           ; $4b0e: $00
    nop                                           ; $4b0f: $00
    nop                                           ; $4b10: $00
    nop                                           ; $4b11: $00
    nop                                           ; $4b12: $00
    nop                                           ; $4b13: $00
    nop                                           ; $4b14: $00
    nop                                           ; $4b15: $00
    nop                                           ; $4b16: $00
    nop                                           ; $4b17: $00
    nop                                           ; $4b18: $00
    nop                                           ; $4b19: $00
    nop                                           ; $4b1a: $00
    nop                                           ; $4b1b: $00
    nop                                           ; $4b1c: $00
    nop                                           ; $4b1d: $00
    nop                                           ; $4b1e: $00
    nop                                           ; $4b1f: $00
    nop                                           ; $4b20: $00
    nop                                           ; $4b21: $00
    nop                                           ; $4b22: $00
    nop                                           ; $4b23: $00
    nop                                           ; $4b24: $00
    nop                                           ; $4b25: $00
    nop                                           ; $4b26: $00
    nop                                           ; $4b27: $00
    nop                                           ; $4b28: $00
    nop                                           ; $4b29: $00
    nop                                           ; $4b2a: $00
    nop                                           ; $4b2b: $00
    nop                                           ; $4b2c: $00
    nop                                           ; $4b2d: $00
    nop                                           ; $4b2e: $00
    nop                                           ; $4b2f: $00
    nop                                           ; $4b30: $00
    nop                                           ; $4b31: $00
    nop                                           ; $4b32: $00
    nop                                           ; $4b33: $00
    nop                                           ; $4b34: $00
    nop                                           ; $4b35: $00
    nop                                           ; $4b36: $00
    nop                                           ; $4b37: $00
    nop                                           ; $4b38: $00
    nop                                           ; $4b39: $00
    nop                                           ; $4b3a: $00
    nop                                           ; $4b3b: $00
    nop                                           ; $4b3c: $00
    nop                                           ; $4b3d: $00
    nop                                           ; $4b3e: $00
    nop                                           ; $4b3f: $00
    nop                                           ; $4b40: $00
    nop                                           ; $4b41: $00
    nop                                           ; $4b42: $00
    nop                                           ; $4b43: $00
    nop                                           ; $4b44: $00
    nop                                           ; $4b45: $00
    nop                                           ; $4b46: $00
    nop                                           ; $4b47: $00
    nop                                           ; $4b48: $00
    nop                                           ; $4b49: $00
    nop                                           ; $4b4a: $00

Jump_053_4b4b:
    nop                                           ; $4b4b: $00
    nop                                           ; $4b4c: $00
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

Jump_053_4d2d:
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
    nop                                           ; $4d9b: $00
    nop                                           ; $4d9c: $00
    nop                                           ; $4d9d: $00
    nop                                           ; $4d9e: $00
    nop                                           ; $4d9f: $00
    nop                                           ; $4da0: $00
    nop                                           ; $4da1: $00
    nop                                           ; $4da2: $00
    nop                                           ; $4da3: $00
    nop                                           ; $4da4: $00
    nop                                           ; $4da5: $00
    nop                                           ; $4da6: $00
    nop                                           ; $4da7: $00
    nop                                           ; $4da8: $00
    nop                                           ; $4da9: $00
    nop                                           ; $4daa: $00
    nop                                           ; $4dab: $00
    nop                                           ; $4dac: $00
    nop                                           ; $4dad: $00
    nop                                           ; $4dae: $00
    nop                                           ; $4daf: $00
    nop                                           ; $4db0: $00
    nop                                           ; $4db1: $00
    nop                                           ; $4db2: $00
    nop                                           ; $4db3: $00
    nop                                           ; $4db4: $00
    nop                                           ; $4db5: $00
    nop                                           ; $4db6: $00
    nop                                           ; $4db7: $00
    nop                                           ; $4db8: $00
    nop                                           ; $4db9: $00
    nop                                           ; $4dba: $00
    nop                                           ; $4dbb: $00
    nop                                           ; $4dbc: $00
    nop                                           ; $4dbd: $00
    nop                                           ; $4dbe: $00
    nop                                           ; $4dbf: $00
    nop                                           ; $4dc0: $00
    nop                                           ; $4dc1: $00
    nop                                           ; $4dc2: $00
    nop                                           ; $4dc3: $00
    nop                                           ; $4dc4: $00
    nop                                           ; $4dc5: $00
    nop                                           ; $4dc6: $00
    nop                                           ; $4dc7: $00
    nop                                           ; $4dc8: $00
    nop                                           ; $4dc9: $00
    nop                                           ; $4dca: $00
    nop                                           ; $4dcb: $00
    nop                                           ; $4dcc: $00
    nop                                           ; $4dcd: $00
    nop                                           ; $4dce: $00
    nop                                           ; $4dcf: $00
    nop                                           ; $4dd0: $00
    nop                                           ; $4dd1: $00
    nop                                           ; $4dd2: $00
    nop                                           ; $4dd3: $00
    nop                                           ; $4dd4: $00
    nop                                           ; $4dd5: $00
    nop                                           ; $4dd6: $00
    nop                                           ; $4dd7: $00
    nop                                           ; $4dd8: $00
    nop                                           ; $4dd9: $00
    nop                                           ; $4dda: $00
    nop                                           ; $4ddb: $00
    nop                                           ; $4ddc: $00
    nop                                           ; $4ddd: $00
    nop                                           ; $4dde: $00
    nop                                           ; $4ddf: $00
    nop                                           ; $4de0: $00
    nop                                           ; $4de1: $00
    nop                                           ; $4de2: $00
    nop                                           ; $4de3: $00
    nop                                           ; $4de4: $00
    nop                                           ; $4de5: $00
    nop                                           ; $4de6: $00
    nop                                           ; $4de7: $00
    nop                                           ; $4de8: $00
    nop                                           ; $4de9: $00
    nop                                           ; $4dea: $00
    nop                                           ; $4deb: $00
    nop                                           ; $4dec: $00
    nop                                           ; $4ded: $00
    nop                                           ; $4dee: $00
    nop                                           ; $4def: $00
    nop                                           ; $4df0: $00
    nop                                           ; $4df1: $00
    nop                                           ; $4df2: $00
    nop                                           ; $4df3: $00
    nop                                           ; $4df4: $00
    nop                                           ; $4df5: $00
    nop                                           ; $4df6: $00
    nop                                           ; $4df7: $00
    nop                                           ; $4df8: $00
    nop                                           ; $4df9: $00
    nop                                           ; $4dfa: $00
    nop                                           ; $4dfb: $00
    nop                                           ; $4dfc: $00
    nop                                           ; $4dfd: $00
    nop                                           ; $4dfe: $00
    nop                                           ; $4dff: $00
    nop                                           ; $4e00: $00
    nop                                           ; $4e01: $00
    nop                                           ; $4e02: $00
    nop                                           ; $4e03: $00
    nop                                           ; $4e04: $00
    nop                                           ; $4e05: $00
    nop                                           ; $4e06: $00
    nop                                           ; $4e07: $00
    nop                                           ; $4e08: $00
    nop                                           ; $4e09: $00
    nop                                           ; $4e0a: $00
    nop                                           ; $4e0b: $00
    nop                                           ; $4e0c: $00
    nop                                           ; $4e0d: $00
    nop                                           ; $4e0e: $00
    nop                                           ; $4e0f: $00
    nop                                           ; $4e10: $00
    nop                                           ; $4e11: $00
    nop                                           ; $4e12: $00
    nop                                           ; $4e13: $00
    nop                                           ; $4e14: $00
    nop                                           ; $4e15: $00
    nop                                           ; $4e16: $00
    nop                                           ; $4e17: $00
    nop                                           ; $4e18: $00
    nop                                           ; $4e19: $00
    nop                                           ; $4e1a: $00
    nop                                           ; $4e1b: $00
    nop                                           ; $4e1c: $00
    nop                                           ; $4e1d: $00
    nop                                           ; $4e1e: $00
    nop                                           ; $4e1f: $00
    nop                                           ; $4e20: $00
    nop                                           ; $4e21: $00
    nop                                           ; $4e22: $00
    nop                                           ; $4e23: $00
    nop                                           ; $4e24: $00
    nop                                           ; $4e25: $00
    nop                                           ; $4e26: $00
    nop                                           ; $4e27: $00
    nop                                           ; $4e28: $00
    nop                                           ; $4e29: $00
    nop                                           ; $4e2a: $00
    nop                                           ; $4e2b: $00
    nop                                           ; $4e2c: $00
    nop                                           ; $4e2d: $00
    nop                                           ; $4e2e: $00
    nop                                           ; $4e2f: $00
    nop                                           ; $4e30: $00
    nop                                           ; $4e31: $00
    nop                                           ; $4e32: $00
    nop                                           ; $4e33: $00
    nop                                           ; $4e34: $00
    nop                                           ; $4e35: $00
    nop                                           ; $4e36: $00
    nop                                           ; $4e37: $00
    nop                                           ; $4e38: $00
    nop                                           ; $4e39: $00
    nop                                           ; $4e3a: $00
    nop                                           ; $4e3b: $00
    nop                                           ; $4e3c: $00
    nop                                           ; $4e3d: $00
    nop                                           ; $4e3e: $00
    nop                                           ; $4e3f: $00
    nop                                           ; $4e40: $00
    nop                                           ; $4e41: $00
    nop                                           ; $4e42: $00
    nop                                           ; $4e43: $00
    nop                                           ; $4e44: $00
    nop                                           ; $4e45: $00
    nop                                           ; $4e46: $00
    nop                                           ; $4e47: $00
    nop                                           ; $4e48: $00
    nop                                           ; $4e49: $00
    nop                                           ; $4e4a: $00
    nop                                           ; $4e4b: $00
    nop                                           ; $4e4c: $00
    nop                                           ; $4e4d: $00
    nop                                           ; $4e4e: $00
    nop                                           ; $4e4f: $00
    nop                                           ; $4e50: $00
    nop                                           ; $4e51: $00
    nop                                           ; $4e52: $00
    nop                                           ; $4e53: $00
    nop                                           ; $4e54: $00
    nop                                           ; $4e55: $00
    nop                                           ; $4e56: $00
    nop                                           ; $4e57: $00
    nop                                           ; $4e58: $00
    nop                                           ; $4e59: $00
    nop                                           ; $4e5a: $00
    nop                                           ; $4e5b: $00
    nop                                           ; $4e5c: $00
    nop                                           ; $4e5d: $00
    nop                                           ; $4e5e: $00
    nop                                           ; $4e5f: $00
    nop                                           ; $4e60: $00
    nop                                           ; $4e61: $00
    nop                                           ; $4e62: $00
    nop                                           ; $4e63: $00
    nop                                           ; $4e64: $00
    nop                                           ; $4e65: $00
    nop                                           ; $4e66: $00
    nop                                           ; $4e67: $00
    nop                                           ; $4e68: $00
    nop                                           ; $4e69: $00
    nop                                           ; $4e6a: $00
    nop                                           ; $4e6b: $00
    nop                                           ; $4e6c: $00
    nop                                           ; $4e6d: $00
    nop                                           ; $4e6e: $00
    nop                                           ; $4e6f: $00
    nop                                           ; $4e70: $00
    nop                                           ; $4e71: $00
    nop                                           ; $4e72: $00
    nop                                           ; $4e73: $00
    nop                                           ; $4e74: $00
    nop                                           ; $4e75: $00
    nop                                           ; $4e76: $00
    nop                                           ; $4e77: $00
    nop                                           ; $4e78: $00
    nop                                           ; $4e79: $00
    nop                                           ; $4e7a: $00
    nop                                           ; $4e7b: $00
    nop                                           ; $4e7c: $00
    nop                                           ; $4e7d: $00
    nop                                           ; $4e7e: $00
    nop                                           ; $4e7f: $00
    nop                                           ; $4e80: $00
    nop                                           ; $4e81: $00
    nop                                           ; $4e82: $00
    nop                                           ; $4e83: $00
    nop                                           ; $4e84: $00
    nop                                           ; $4e85: $00
    nop                                           ; $4e86: $00
    nop                                           ; $4e87: $00
    nop                                           ; $4e88: $00
    nop                                           ; $4e89: $00
    nop                                           ; $4e8a: $00
    nop                                           ; $4e8b: $00
    nop                                           ; $4e8c: $00
    nop                                           ; $4e8d: $00
    nop                                           ; $4e8e: $00
    nop                                           ; $4e8f: $00
    nop                                           ; $4e90: $00
    nop                                           ; $4e91: $00
    nop                                           ; $4e92: $00
    nop                                           ; $4e93: $00
    nop                                           ; $4e94: $00
    nop                                           ; $4e95: $00
    nop                                           ; $4e96: $00
    nop                                           ; $4e97: $00
    nop                                           ; $4e98: $00
    nop                                           ; $4e99: $00
    nop                                           ; $4e9a: $00
    nop                                           ; $4e9b: $00
    nop                                           ; $4e9c: $00
    nop                                           ; $4e9d: $00
    nop                                           ; $4e9e: $00
    nop                                           ; $4e9f: $00
    nop                                           ; $4ea0: $00
    nop                                           ; $4ea1: $00
    nop                                           ; $4ea2: $00
    nop                                           ; $4ea3: $00
    nop                                           ; $4ea4: $00
    nop                                           ; $4ea5: $00
    nop                                           ; $4ea6: $00
    nop                                           ; $4ea7: $00
    nop                                           ; $4ea8: $00
    nop                                           ; $4ea9: $00
    nop                                           ; $4eaa: $00
    nop                                           ; $4eab: $00
    nop                                           ; $4eac: $00
    nop                                           ; $4ead: $00
    nop                                           ; $4eae: $00
    nop                                           ; $4eaf: $00
    nop                                           ; $4eb0: $00
    nop                                           ; $4eb1: $00
    nop                                           ; $4eb2: $00
    nop                                           ; $4eb3: $00
    nop                                           ; $4eb4: $00
    nop                                           ; $4eb5: $00
    nop                                           ; $4eb6: $00
    nop                                           ; $4eb7: $00
    nop                                           ; $4eb8: $00
    nop                                           ; $4eb9: $00
    nop                                           ; $4eba: $00
    nop                                           ; $4ebb: $00
    nop                                           ; $4ebc: $00
    nop                                           ; $4ebd: $00
    nop                                           ; $4ebe: $00
    nop                                           ; $4ebf: $00
    nop                                           ; $4ec0: $00
    nop                                           ; $4ec1: $00
    nop                                           ; $4ec2: $00
    nop                                           ; $4ec3: $00
    nop                                           ; $4ec4: $00
    nop                                           ; $4ec5: $00
    nop                                           ; $4ec6: $00
    nop                                           ; $4ec7: $00
    nop                                           ; $4ec8: $00
    nop                                           ; $4ec9: $00
    nop                                           ; $4eca: $00
    nop                                           ; $4ecb: $00
    nop                                           ; $4ecc: $00
    nop                                           ; $4ecd: $00
    nop                                           ; $4ece: $00
    nop                                           ; $4ecf: $00
    nop                                           ; $4ed0: $00
    nop                                           ; $4ed1: $00
    nop                                           ; $4ed2: $00
    nop                                           ; $4ed3: $00
    nop                                           ; $4ed4: $00
    nop                                           ; $4ed5: $00
    nop                                           ; $4ed6: $00
    nop                                           ; $4ed7: $00
    nop                                           ; $4ed8: $00
    nop                                           ; $4ed9: $00
    nop                                           ; $4eda: $00
    nop                                           ; $4edb: $00
    nop                                           ; $4edc: $00
    nop                                           ; $4edd: $00
    nop                                           ; $4ede: $00
    nop                                           ; $4edf: $00
    nop                                           ; $4ee0: $00
    nop                                           ; $4ee1: $00
    nop                                           ; $4ee2: $00
    nop                                           ; $4ee3: $00
    nop                                           ; $4ee4: $00
    nop                                           ; $4ee5: $00
    nop                                           ; $4ee6: $00
    nop                                           ; $4ee7: $00
    nop                                           ; $4ee8: $00
    nop                                           ; $4ee9: $00
    nop                                           ; $4eea: $00
    nop                                           ; $4eeb: $00
    nop                                           ; $4eec: $00
    nop                                           ; $4eed: $00
    nop                                           ; $4eee: $00
    nop                                           ; $4eef: $00
    nop                                           ; $4ef0: $00
    nop                                           ; $4ef1: $00
    nop                                           ; $4ef2: $00
    nop                                           ; $4ef3: $00
    nop                                           ; $4ef4: $00
    nop                                           ; $4ef5: $00
    nop                                           ; $4ef6: $00
    nop                                           ; $4ef7: $00
    nop                                           ; $4ef8: $00
    nop                                           ; $4ef9: $00
    nop                                           ; $4efa: $00
    nop                                           ; $4efb: $00
    nop                                           ; $4efc: $00
    nop                                           ; $4efd: $00
    nop                                           ; $4efe: $00
    nop                                           ; $4eff: $00

Call_053_4f00:
    nop                                           ; $4f00: $00
    nop                                           ; $4f01: $00
    nop                                           ; $4f02: $00
    nop                                           ; $4f03: $00
    nop                                           ; $4f04: $00
    nop                                           ; $4f05: $00
    nop                                           ; $4f06: $00
    nop                                           ; $4f07: $00
    nop                                           ; $4f08: $00
    nop                                           ; $4f09: $00
    nop                                           ; $4f0a: $00
    nop                                           ; $4f0b: $00
    nop                                           ; $4f0c: $00
    nop                                           ; $4f0d: $00
    nop                                           ; $4f0e: $00
    nop                                           ; $4f0f: $00
    nop                                           ; $4f10: $00
    nop                                           ; $4f11: $00
    nop                                           ; $4f12: $00
    nop                                           ; $4f13: $00
    nop                                           ; $4f14: $00
    nop                                           ; $4f15: $00
    nop                                           ; $4f16: $00
    nop                                           ; $4f17: $00
    nop                                           ; $4f18: $00
    nop                                           ; $4f19: $00
    nop                                           ; $4f1a: $00
    nop                                           ; $4f1b: $00
    nop                                           ; $4f1c: $00
    nop                                           ; $4f1d: $00
    nop                                           ; $4f1e: $00
    nop                                           ; $4f1f: $00
    nop                                           ; $4f20: $00
    nop                                           ; $4f21: $00
    nop                                           ; $4f22: $00
    nop                                           ; $4f23: $00
    nop                                           ; $4f24: $00
    nop                                           ; $4f25: $00
    nop                                           ; $4f26: $00
    nop                                           ; $4f27: $00
    nop                                           ; $4f28: $00
    nop                                           ; $4f29: $00
    nop                                           ; $4f2a: $00
    nop                                           ; $4f2b: $00
    nop                                           ; $4f2c: $00
    nop                                           ; $4f2d: $00
    nop                                           ; $4f2e: $00
    nop                                           ; $4f2f: $00
    nop                                           ; $4f30: $00
    nop                                           ; $4f31: $00
    nop                                           ; $4f32: $00
    nop                                           ; $4f33: $00
    nop                                           ; $4f34: $00
    nop                                           ; $4f35: $00
    nop                                           ; $4f36: $00
    nop                                           ; $4f37: $00
    nop                                           ; $4f38: $00
    nop                                           ; $4f39: $00
    nop                                           ; $4f3a: $00
    nop                                           ; $4f3b: $00
    nop                                           ; $4f3c: $00
    nop                                           ; $4f3d: $00
    nop                                           ; $4f3e: $00
    nop                                           ; $4f3f: $00
    nop                                           ; $4f40: $00
    nop                                           ; $4f41: $00
    nop                                           ; $4f42: $00
    nop                                           ; $4f43: $00
    nop                                           ; $4f44: $00
    nop                                           ; $4f45: $00
    nop                                           ; $4f46: $00
    nop                                           ; $4f47: $00
    nop                                           ; $4f48: $00
    nop                                           ; $4f49: $00
    nop                                           ; $4f4a: $00
    nop                                           ; $4f4b: $00
    nop                                           ; $4f4c: $00
    nop                                           ; $4f4d: $00
    nop                                           ; $4f4e: $00
    nop                                           ; $4f4f: $00
    cp $5b                                        ; $4f50: $fe $5b
    ld c, a                                       ; $4f52: $4f
    adc e                                         ; $4f53: $8b
    ld c, a                                       ; $4f54: $4f
    ld a, [hl+]                                   ; $4f55: $2a
    ld d, e                                       ; $4f56: $53
    ld a, [hl+]                                   ; $4f57: $2a
    ld d, l                                       ; $4f58: $55
    ld hl, sp+$55                                 ; $4f59: $f8 $55
    ld de, $7f19                                  ; $4f5b: $11 $19 $7f
    ld a, [hl-]                                   ; $4f5e: $3a
    ld [$8003], a                                 ; $4f5f: $ea $03 $80
    ld [bc], a                                    ; $4f62: $02
    rst $38                                       ; $4f63: $ff
    ld a, a                                       ; $4f64: $7f
    di                                            ; $4f65: $f3
    inc bc                                        ; $4f66: $03
    db $ec                                        ; $4f67: $ec
    inc bc                                        ; $4f68: $03
    add b                                         ; $4f69: $80
    ld [bc], a                                    ; $4f6a: $02
    add b                                         ; $4f6b: $80
    ld a, [hl]                                    ; $4f6c: $7e
    ld c, $7f                                     ; $4f6d: $0e $7f
    inc [hl]                                      ; $4f6f: $34
    ld hl, $0280                                  ; $4f70: $21 $80 $02
    rst $38                                       ; $4f73: $ff
    ld a, a                                       ; $4f74: $7f
    ld [$8003], a                                 ; $4f75: $ea $03 $80
    ld [bc], a                                    ; $4f78: $02
    jr nz, jr_053_4f94                            ; $4f79: $20 $19

    halt                                          ; $4f7b: $76
    ld bc, $239f                                  ; $4f7c: $01 $9f $23
    ret nz                                        ; $4f7f: $c0

    ld [hl-], a                                   ; $4f80: $32
    jr nz, jr_053_4f9c                            ; $4f81: $20 $19

    ld [$0825], sp                                ; $4f83: $08 $25 $08
    dec h                                         ; $4f86: $25
    ld [$0825], sp                                ; $4f87: $08 $25 $08
    dec h                                         ; $4f8a: $25
    adc a                                         ; $4f8b: $8f
    jp $c33c                                      ; $4f8c: $c3 $3c $c3


    inc a                                         ; $4f8f: $3c
    db $fd                                        ; $4f90: $fd
    ldh [$fe], a                                  ; $4f91: $e0 $fe
    ld [c], a                                     ; $4f93: $e2

jr_053_4f94:
    db $f4                                        ; $4f94: $f4
    pop hl                                        ; $4f95: $e1
    ld d, a                                       ; $4f96: $57
    rst $38                                       ; $4f97: $ff
    rst $38                                       ; $4f98: $ff
    xor a                                         ; $4f99: $af
    db $fc                                        ; $4f9a: $fc
    ld a, [hl]                                    ; $4f9b: $7e

jr_053_4f9c:
    pop af                                        ; $4f9c: $f1
    cp h                                          ; $4f9d: $bc
    db $e3                                        ; $4f9e: $e3
    ld a, h                                       ; $4f9f: $7c
    rst $38                                       ; $4fa0: $ff
    jp $c3fc                                      ; $4fa1: $c3 $fc $c3


    db $e3                                        ; $4fa4: $e3
    sbc h                                         ; $4fa5: $9c
    jp $fbbc                                      ; $4fa6: $c3 $bc $fb


    rst $38                                       ; $4fa9: $ff
    rst $38                                       ; $4faa: $ff
    sbc $ff                                       ; $4fab: $de $ff
    push af                                       ; $4fad: $f5
    rst $38                                       ; $4fae: $ff
    xor d                                         ; $4faf: $aa
    rst $38                                       ; $4fb0: $ff
    ld d, a                                       ; $4fb1: $57
    ld a, a                                       ; $4fb2: $7f
    rst $38                                       ; $4fb3: $ff
    cp a                                          ; $4fb4: $bf
    ld hl, sp-$01                                 ; $4fb5: $f8 $ff
    ldh [$f3], a                                  ; $4fb7: $e0 $f3
    adc h                                         ; $4fb9: $8c
    ld hl, sp-$1f                                 ; $4fba: $f8 $e1
    rst $38                                       ; $4fbc: $ff
    ld a, h                                       ; $4fbd: $7c
    db $e3                                        ; $4fbe: $e3
    db $fc                                        ; $4fbf: $fc
    add e                                         ; $4fc0: $83
    db $fc                                        ; $4fc1: $fc
    inc bc                                        ; $4fc2: $03
    cp h                                          ; $4fc3: $bc
    ld b, e                                       ; $4fc4: $43
    cp $c4                                        ; $4fc5: $fe $c4
    pop hl                                        ; $4fc7: $e1
    rst $28                                       ; $4fc8: $ef
    rst $38                                       ; $4fc9: $ff
    rst $10                                       ; $4fca: $d7
    ld a, a                                       ; $4fcb: $7f
    db $ed                                        ; $4fcc: $ed
    ld a, a                                       ; $4fcd: $7f
    rst $30                                       ; $4fce: $f7
    rst $38                                       ; $4fcf: $ff
    ccf                                           ; $4fd0: $3f
    ld l, e                                       ; $4fd1: $6b
    cp a                                          ; $4fd2: $bf
    halt                                          ; $4fd3: $76
    sbc a                                         ; $4fd4: $9f
    ei                                            ; $4fd5: $fb
    rra                                           ; $4fd6: $1f
    push af                                       ; $4fd7: $f5
    rst $38                                       ; $4fd8: $ff
    rra                                           ; $4fd9: $1f
    ld a, [$dd0f]                                 ; $4fda: $fa $0f $dd
    daa                                           ; $4fdd: $27
    ld a, $c7                                     ; $4fde: $3e $c7
    ccf                                           ; $4fe0: $3f
    rst $38                                       ; $4fe1: $ff
    jp $c33e                                      ; $4fe2: $c3 $3e $c3


    ccf                                           ; $4fe5: $3f
    pop bc                                        ; $4fe6: $c1
    jp $c33d                                      ; $4fe7: $c3 $3d $c3


    ld a, a                                       ; $4fea: $7f
    dec a                                         ; $4feb: $3d
    db $ed                                        ; $4fec: $ed
    rst $38                                       ; $4fed: $ff
    db $d3                                        ; $4fee: $d3
    inc a                                         ; $4fef: $3c
    ld a, [hl]                                    ; $4ff0: $7e
    add c                                         ; $4ff1: $81
    and b                                         ; $4ff2: $a0
    rst $20                                       ; $4ff3: $e7
    rst $38                                       ; $4ff4: $ff
    jp $e3bc                                      ; $4ff5: $c3 $bc $e3


    sbc h                                         ; $4ff8: $9c
    cp h                                          ; $4ff9: $bc
    jp $c37c                                      ; $4ffa: $c3 $7c $c3


    push de                                       ; $4ffd: $d5
    cp h                                          ; $4ffe: $bc
    cp $e0                                        ; $4fff: $fe $e0
    ld h, e                                       ; $5001: $63
    and b                                         ; $5002: $a0
    ldh [$57], a                                  ; $5003: $e0 $57
    and h                                         ; $5005: $a4
    ldh [$7d], a                                  ; $5006: $e0 $7d
    rst $38                                       ; $5008: $ff
    rst $28                                       ; $5009: $ef
    db $d3                                        ; $500a: $d3
    rst $28                                       ; $500b: $ef
    rst $38                                       ; $500c: $ff
    nop                                           ; $500d: $00
    add b                                         ; $500e: $80
    db $e3                                        ; $500f: $e3
    cp e                                          ; $5010: $bb
    db $f4                                        ; $5011: $f4
    ld e, e                                       ; $5012: $5b
    rst $38                                       ; $5013: $ff
    db $f4                                        ; $5014: $f4
    xor h                                         ; $5015: $ac
    di                                            ; $5016: $f3
    ld l, h                                       ; $5017: $6c
    di                                            ; $5018: $f3
    cp h                                          ; $5019: $bc
    db $e3                                        ; $501a: $e3
    ld l, h                                       ; $501b: $6c
    rst $38                                       ; $501c: $ff
    di                                            ; $501d: $f3
    cp e                                          ; $501e: $bb
    db $f4                                        ; $501f: $f4
    db $db                                        ; $5020: $db
    db $f4                                        ; $5021: $f4
    cp l                                          ; $5022: $bd
    jp $ffe7                                      ; $5023: $c3 $e7 $ff


    rst $38                                       ; $5026: $ff
    cp d                                          ; $5027: $ba
    rst $38                                       ; $5028: $ff
    ld d, l                                       ; $5029: $55
    rst $38                                       ; $502a: $ff
    xor e                                         ; $502b: $ab
    rst $38                                       ; $502c: $ff
    cp $ff                                        ; $502d: $fe $ff
    rst $38                                       ; $502f: $ff
    rst $28                                       ; $5030: $ef
    rst $38                                       ; $5031: $ff
    rst $38                                       ; $5032: $ff
    rst $38                                       ; $5033: $ff
    db $db                                        ; $5034: $db
    rst $38                                       ; $5035: $ff
    ld l, a                                       ; $5036: $6f
    cp $8e                                        ; $5037: $fe $8e
    ldh [$af], a                                  ; $5039: $e0 $af
    ld a, a                                       ; $503b: $7f
    or l                                          ; $503c: $b5
    ld a, a                                       ; $503d: $7f
    rst $28                                       ; $503e: $ef
    ld a, a                                       ; $503f: $7f
    ld d, a                                       ; $5040: $57
    ld e, h                                       ; $5041: $5c
    xor $e2                                       ; $5042: $ee $e2
    db $fd                                        ; $5044: $fd
    pop hl                                        ; $5045: $e1
    db $dd                                        ; $5046: $dd
    rst $38                                       ; $5047: $ff
    ld [hl], a                                    ; $5048: $77
    ld e, h                                       ; $5049: $5c
    ldh [rHDMA5], a                               ; $504a: $e0 $55
    ldh [$e0], a                                  ; $504c: $e0 $e0
    rra                                           ; $504e: $1f
    xor a                                         ; $504f: $af
    rst $38                                       ; $5050: $ff
    rst $18                                       ; $5051: $df
    rst $38                                       ; $5052: $ff
    or a                                          ; $5053: $b7
    db $fc                                        ; $5054: $fc
    ldh [$f8], a                                  ; $5055: $e0 $f8
    push hl                                       ; $5057: $e5
    rst $38                                       ; $5058: $ff
    push hl                                       ; $5059: $e5
    ld l, $de                                     ; $505a: $2e $de
    push hl                                       ; $505c: $e5
    ld e, a                                       ; $505d: $5f
    rst $38                                       ; $505e: $ff
    cp a                                          ; $505f: $bf
    cp [hl]                                       ; $5060: $be
    ldh [$bf], a                                  ; $5061: $e0 $bf
    ld hl, sp-$1a                                 ; $5063: $f8 $e6
    cp a                                          ; $5065: $bf
    db $e3                                        ; $5066: $e3
    jp z, $e1f8                                   ; $5067: $ca $f8 $e1

    ld e, a                                       ; $506a: $5f
    ret z                                         ; $506b: $c8

    ldh [$5f], a                                  ; $506c: $e0 $5f
    ret nc                                        ; $506e: $d0

    and $c7                                       ; $506f: $e6 $c7
    push hl                                       ; $5071: $e5
    db $fd                                        ; $5072: $fd
    rst $38                                       ; $5073: $ff
    rst $30                                       ; $5074: $f7
    rst $30                                       ; $5075: $f7
    rst $38                                       ; $5076: $ff
    jp c, $c0fe                                   ; $5077: $da $fe $c0

    xor a                                         ; $507a: $af
    cp $df                                        ; $507b: $fe $df
    ld hl, sp-$01                                 ; $507d: $f8 $ff
    ld l, a                                       ; $507f: $6f
    ld hl, sp-$21                                 ; $5080: $f8 $df
    ldh a, [rSC]                                  ; $5082: $f0 $02
    rst $38                                       ; $5084: $ff
    rlca                                          ; $5085: $07
    db $fd                                        ; $5086: $fd
    rst $38                                       ; $5087: $ff
    rlca                                          ; $5088: $07
    db $fc                                        ; $5089: $fc
    ld d, $fd                                     ; $508a: $16 $fd
    dec a                                         ; $508c: $3d
    xor $3a                                       ; $508d: $ee $3a
    rst $20                                       ; $508f: $e7
    rst $38                                       ; $5090: $ff
    or a                                          ; $5091: $b7
    add sp, $68                                   ; $5092: $e8 $68
    rst $30                                       ; $5094: $f7
    call z, $eeff                                 ; $5095: $cc $ff $ee
    cp e                                          ; $5098: $bb
    rst $38                                       ; $5099: $ff
    rst $38                                       ; $509a: $ff
    sbc c                                         ; $509b: $99
    cp e                                          ; $509c: $bb
    ld d, l                                       ; $509d: $55
    sbc c                                         ; $509e: $99
    ld h, [hl]                                    ; $509f: $66
    ld d, l                                       ; $50a0: $55
    xor $ff                                       ; $50a1: $ee $ff
    ld h, [hl]                                    ; $50a3: $66
    rst $38                                       ; $50a4: $ff
    xor $ff                                       ; $50a5: $ee $ff
    sbc a                                         ; $50a7: $9f
    rst $20                                       ; $50a8: $e7
    rst $20                                       ; $50a9: $e7
    ld sp, hl                                     ; $50aa: $f9
    xor a                                         ; $50ab: $af
    adc $f3                                       ; $50ac: $ce $f3
    inc a                                         ; $50ae: $3c
    rst $08                                       ; $50af: $cf
    ld hl, sp-$1b                                 ; $50b0: $f8 $e5
    cp $48                                        ; $50b2: $fe $48
    ldh [$f8], a                                  ; $50b4: $e0 $f8
    rst $38                                       ; $50b6: $ff
    rst $38                                       ; $50b7: $ff
    db $e3                                        ; $50b8: $e3
    db $fc                                        ; $50b9: $fc
    ld sp, hl                                     ; $50ba: $f9
    rst $38                                       ; $50bb: $ff
    jp nz, Jump_000_1dfd                          ; $50bc: $c2 $fd $1d

    rst $38                                       ; $50bf: $ff
    ld [c], a                                     ; $50c0: $e2
    set 7, h                                      ; $50c1: $cb $fc
    rst $18                                       ; $50c3: $df
    sub d                                         ; $50c4: $92
    sbc l                                         ; $50c5: $9d
    ld c, e                                       ; $50c6: $4b
    dec h                                         ; $50c7: $25
    rst $38                                       ; $50c8: $ff
    rla                                           ; $50c9: $17
    and d                                         ; $50ca: $a2
    di                                            ; $50cb: $f3
    db $db                                        ; $50cc: $db
    pop hl                                        ; $50cd: $e1
    xor $f1                                       ; $50ce: $ee $f1
    ld [hl], h                                    ; $50d0: $74
    rst $38                                       ; $50d1: $ff
    ei                                            ; $50d2: $fb
    sbc c                                         ; $50d3: $99
    rst $38                                       ; $50d4: $ff
    sub $9f                                       ; $50d5: $d6 $9f
    sbc [hl]                                      ; $50d7: $9e
    ld c, a                                       ; $50d8: $4f
    dec h                                         ; $50d9: $25
    rst $28                                       ; $50da: $ef
    ld d, $a3                                     ; $50db: $16 $a3
    ld a, [c]                                     ; $50dd: $f2
    jp c, $e0f0                                   ; $50de: $da $f0 $e0

    or h                                          ; $50e1: $b4
    ei                                            ; $50e2: $fb
    ld e, c                                       ; $50e3: $59
    cp $80                                        ; $50e4: $fe $80
    xor $ef                                       ; $50e6: $ee $ef
    ldh a, [$b8]                                  ; $50e8: $f0 $b8
    rst $00                                       ; $50ea: $c7
    ld d, $f9                                     ; $50eb: $16 $f9
    db $fc                                        ; $50ed: $fc
    rst $38                                       ; $50ee: $ff
    db $e3                                        ; $50ef: $e3
    db $db                                        ; $50f0: $db
    rst $20                                       ; $50f1: $e7
    di                                            ; $50f2: $f3
    adc $e6                                       ; $50f3: $ce $e6
    sbc $8f                                       ; $50f5: $de $8f
    rst $38                                       ; $50f7: $ff
    rst $38                                       ; $50f8: $ff
    ld a, a                                       ; $50f9: $7f
    rst $38                                       ; $50fa: $ff
    ld d, e                                       ; $50fb: $53
    rst $28                                       ; $50fc: $ef
    sbc c                                         ; $50fd: $99
    rst $20                                       ; $50fe: $e7
    ld sp, hl                                     ; $50ff: $f9
    rst $38                                       ; $5100: $ff
    rst $38                                       ; $5101: $ff
    xor [hl]                                      ; $5102: $ae
    rst $18                                       ; $5103: $df
    ld e, a                                       ; $5104: $5f
    ld h, a                                       ; $5105: $67
    ld c, e                                       ; $5106: $4b
    ld [hl], a                                    ; $5107: $77
    rst $20                                       ; $5108: $e7
    rst $38                                       ; $5109: $ff
    ei                                            ; $510a: $fb
    sbc a                                         ; $510b: $9f
    ld sp, hl                                     ; $510c: $f9
    cp l                                          ; $510d: $bd
    ld sp, hl                                     ; $510e: $f9
    rst $38                                       ; $510f: $ff
    rst $38                                       ; $5110: $ff
    cp $fe                                        ; $5111: $fe $fe
    rst $38                                       ; $5113: $ff
    ldh [rIE], a                                  ; $5114: $e0 $ff
    cp $fd                                        ; $5116: $fe $fd
    db $fd                                        ; $5118: $fd
    rst $38                                       ; $5119: $ff
    cp $f1                                        ; $511a: $fe $f1
    cpl                                           ; $511c: $2f
    rst $38                                       ; $511d: $ff
    sbc c                                         ; $511e: $99
    sbc a                                         ; $511f: $9f
    cp l                                          ; $5120: $bd
    add hl, hl                                    ; $5121: $29
    ldh [$7f], a                                  ; $5122: $e0 $7f
    rst $38                                       ; $5124: $ff
    ldh [$fa], a                                  ; $5125: $e0 $fa
    pop hl                                        ; $5127: $e1
    inc a                                         ; $5128: $3c
    ld [$e4e3], a                                 ; $5129: $ea $e3 $e4
    db $e3                                        ; $512c: $e3
    ld hl, sp-$08                                 ; $512d: $f8 $f8
    cp $fe                                        ; $512f: $fe $fe
    ld [$e4e3], a                                 ; $5131: $ea $e3 $e4
    db $e3                                        ; $5134: $e3
    rst $38                                       ; $5135: $ff
    rra                                           ; $5136: $1f
    rra                                           ; $5137: $1f
    ld a, a                                       ; $5138: $7f
    ld a, a                                       ; $5139: $7f
    db $ec                                        ; $513a: $ec
    di                                            ; $513b: $f3
    adc a                                         ; $513c: $8f
    rst $38                                       ; $513d: $ff
    rst $38                                       ; $513e: $ff
    ld a, c                                       ; $513f: $79
    rst $38                                       ; $5140: $ff
    add sp, -$09                                  ; $5141: $e8 $f7
    di                                            ; $5143: $f3
    rst $28                                       ; $5144: $ef
    add $fe                                       ; $5145: $c6 $fe
    db $eb                                        ; $5147: $eb
    sbc $fe                                       ; $5148: $de $fe
    ldh a, [$c1]                                  ; $514a: $f0 $c1
    ld h, a                                       ; $514c: $67
    ld [hl], d                                    ; $514d: $72
    ret nz                                        ; $514e: $c0

    db $fd                                        ; $514f: $fd
    rst $38                                       ; $5150: $ff
    rst $08                                       ; $5151: $cf
    rst $38                                       ; $5152: $ff
    rst $38                                       ; $5153: $ff
    ld h, a                                       ; $5154: $67
    ld a, a                                       ; $5155: $7f
    rst $30                                       ; $5156: $f7
    rst $38                                       ; $5157: $ff
    ei                                            ; $5158: $fb
    rst $38                                       ; $5159: $ff
    db $fd                                        ; $515a: $fd
    rst $00                                       ; $515b: $c7
    ld sp, hl                                     ; $515c: $f9
    ei                                            ; $515d: $fb
    ei                                            ; $515e: $fb
    sbc e                                         ; $515f: $9b
    jp $e09e                                      ; $5160: $c3 $9e $e0


    sbc b                                         ; $5163: $98
    ldh [$fb], a                                  ; $5164: $e0 $fb
    rst $38                                       ; $5166: $ff
    sub c                                         ; $5167: $91
    cp a                                          ; $5168: $bf
    set 0, l                                      ; $5169: $cb $c5
    ld [$e4e8], a                                 ; $516b: $ea $e8 $e4
    db $e4                                        ; $516e: $e4
    ei                                            ; $516f: $fb
    call c, $bde1                                 ; $5170: $dc $e1 $bd
    rst $00                                       ; $5173: $c7
    rst $18                                       ; $5174: $df
    cp $81                                        ; $5175: $fe $81
    pop bc                                        ; $5177: $c1
    db $fc                                        ; $5178: $fc
    rst $38                                       ; $5179: $ff
    ld hl, sp-$02                                 ; $517a: $f8 $fe
    ld hl, sp-$0a                                 ; $517c: $f8 $f6
    ldh a, [$f7]                                  ; $517e: $f0 $f7
    cp $f0                                        ; $5180: $fe $f0
    db $fc                                        ; $5182: $fc
    db $fc                                        ; $5183: $fc
    ld [c], a                                     ; $5184: $e2
    sbc a                                         ; $5185: $9f
    rra                                           ; $5186: $1f
    rst $08                                       ; $5187: $cf
    rrca                                          ; $5188: $0f
    rst $38                                       ; $5189: $ff
    sbc a                                         ; $518a: $9f
    rra                                           ; $518b: $1f
    sbc a                                         ; $518c: $9f
    rra                                           ; $518d: $1f
    rra                                           ; $518e: $1f
    rra                                           ; $518f: $1f
    sbc h                                         ; $5190: $9c
    inc e                                         ; $5191: $1c
    rrca                                          ; $5192: $0f
    ld e, $1e                                     ; $5193: $1e $1e
    inc e                                         ; $5195: $1c
    inc e                                         ; $5196: $1c
    adc a                                         ; $5197: $8f
    rst $00                                       ; $5198: $c7
    ld d, b                                       ; $5199: $50
    ldh [$fe], a                                  ; $519a: $e0 $fe
    pop hl                                        ; $519c: $e1
    sub l                                         ; $519d: $95
    ld [c], a                                     ; $519e: $e2
    cp $4e                                        ; $519f: $fe $4e
    ld [c], a                                     ; $51a1: $e2
    db $fc                                        ; $51a2: $fc
    cp $fe                                        ; $51a3: $fe $fe
    db $ed                                        ; $51a5: $ed
    pop hl                                        ; $51a6: $e1
    db $fc                                        ; $51a7: $fc
    ldh a, [rIE]                                  ; $51a8: $f0 $ff
    ld l, b                                       ; $51aa: $68
    nop                                           ; $51ab: $00
    call c, $0810                                 ; $51ac: $dc $10 $08
    nop                                           ; $51af: $00
    adc h                                         ; $51b0: $8c
    nop                                           ; $51b1: $00
    rst $38                                       ; $51b2: $ff
    ld [$3400], sp                                ; $51b3: $08 $00 $34
    jr nz, jr_053_51d0                            ; $51b6: $20 $18

    nop                                           ; $51b8: $00
    ld e, $1e                                     ; $51b9: $1e $1e
    rst $38                                       ; $51bb: $ff
    dec a                                         ; $51bc: $3d
    dec a                                         ; $51bd: $3d
    ld [hl], $06                                  ; $51be: $36 $06
    ld h, e                                       ; $51c0: $63
    inc bc                                        ; $51c1: $03
    add $86                                       ; $51c2: $c6 $86
    rst $38                                       ; $51c4: $ff
    ld h, a                                       ; $51c5: $67
    rlca                                          ; $51c6: $07
    ld b, a                                       ; $51c7: $47
    rlca                                          ; $51c8: $07
    ld h, a                                       ; $51c9: $67
    rlca                                          ; $51ca: $07
    ccf                                           ; $51cb: $3f
    ccf                                           ; $51cc: $3f
    ei                                            ; $51cd: $fb
    ld a, a                                       ; $51ce: $7f
    ccf                                           ; $51cf: $3f

jr_053_51d0:
    rst $38                                       ; $51d0: $ff
    pop hl                                        ; $51d1: $e1
    cp a                                          ; $51d2: $bf
    cp a                                          ; $51d3: $bf
    rra                                           ; $51d4: $1f
    rra                                           ; $51d5: $1f
    sbc a                                         ; $51d6: $9f
    rst $38                                       ; $51d7: $ff
    sbc a                                         ; $51d8: $9f
    ld e, a                                       ; $51d9: $5f
    ld e, a                                       ; $51da: $5f
    ld a, [$e1c0]                                 ; $51db: $fa $c0 $e1
    pop bc                                        ; $51de: $c1
    pop af                                        ; $51df: $f1
    rst $38                                       ; $51e0: $ff
    pop bc                                        ; $51e1: $c1
    db $e3                                        ; $51e2: $e3
    jp $8083                                      ; $51e3: $c3 $83 $80


    and $c0                                       ; $51e6: $e6 $c0
    adc h                                         ; $51e8: $8c
    rst $38                                       ; $51e9: $ff
    adc b                                         ; $51ea: $88
    sub b                                         ; $51eb: $90
    sub b                                         ; $51ec: $90
    or b                                          ; $51ed: $b0
    and b                                         ; $51ee: $a0
    xor c                                         ; $51ef: $a9
    and c                                         ; $51f0: $a1
    ldh a, [rIE]                                  ; $51f1: $f0 $ff
    ldh [$e1], a                                  ; $51f3: $e0 $e1
    pop hl                                        ; $51f5: $e1
    ld [hl], d                                    ; $51f6: $72
    ld h, d                                       ; $51f7: $62
    pop bc                                        ; $51f8: $c1
    pop bc                                        ; $51f9: $c1
    ld [c], a                                     ; $51fa: $e2
    rst $38                                       ; $51fb: $ff
    ld [c], a                                     ; $51fc: $e2
    push de                                       ; $51fd: $d5

jr_053_51fe:
    push de                                       ; $51fe: $d5
    ld b, a                                       ; $51ff: $47
    rlca                                          ; $5200: $07
    rst $00                                       ; $5201: $c7
    rlca                                          ; $5202: $07
    push bc                                       ; $5203: $c5
    rst $38                                       ; $5204: $ff
    inc b                                         ; $5205: $04
    add a                                         ; $5206: $87
    nop                                           ; $5207: $00
    ld c, l                                       ; $5208: $4d
    ld [$0082], sp                                ; $5209: $08 $82 $00
    inc b                                         ; $520c: $04
    rst $38                                       ; $520d: $ff
    nop                                           ; $520e: $00
    sub b                                         ; $520f: $90
    db $10                                        ; $5210: $10
    rst $38                                       ; $5211: $ff
    rst $38                                       ; $5212: $ff
    sbc a                                         ; $5213: $9f
    sbc a                                         ; $5214: $9f
    rst $08                                       ; $5215: $cf
    rst $38                                       ; $5216: $ff
    rrca                                          ; $5217: $0f
    add a                                         ; $5218: $87
    rlca                                          ; $5219: $07
    ld c, e                                       ; $521a: $4b
    dec bc                                        ; $521b: $0b
    add a                                         ; $521c: $87
    rlca                                          ; $521d: $07
    inc bc                                        ; $521e: $03
    rst $38                                       ; $521f: $ff
    inc bc                                        ; $5220: $03
    dec b                                         ; $5221: $05
    dec b                                         ; $5222: $05
    adc d                                         ; $5223: $8a
    adc d                                         ; $5224: $8a
    ld d, l                                       ; $5225: $55
    ld d, l                                       ; $5226: $55
    cp [hl]                                       ; $5227: $be
    rst $28                                       ; $5228: $ef
    cp [hl]                                       ; $5229: $be
    db $eb                                        ; $522a: $eb
    rst $38                                       ; $522b: $ff
    pop af                                        ; $522c: $f1
    inc c                                         ; $522d: $0c
    and d                                         ; $522e: $a2
    ei                                            ; $522f: $fb
    rst $38                                       ; $5230: $ff
    db $eb                                        ; $5231: $eb
    xor c                                         ; $5232: $a9
    db $eb                                        ; $5233: $eb
    xor d                                         ; $5234: $aa
    ret nz                                        ; $5235: $c0

    xor d                                         ; $5236: $aa
    and b                                         ; $5237: $a0
    push bc                                       ; $5238: $c5
    db $fc                                        ; $5239: $fc
    add b                                         ; $523a: $80
    ld e, l                                       ; $523b: $5d
    jr nz, jr_053_51fe                            ; $523c: $20 $c0

    ld [hl+], a                                   ; $523e: $22
    ld a, a                                       ; $523f: $7f
    ld [hl+], a                                   ; $5240: $22
    ld d, l                                       ; $5241: $55
    ld d, l                                       ; $5242: $55
    cp a                                          ; $5243: $bf
    cp a                                          ; $5244: $bf
    ld l, e                                       ; $5245: $6b
    ld a, a                                       ; $5246: $7f
    ldh [$e1], a                                  ; $5247: $e0 $e1
    db $fd                                        ; $5249: $fd
    rst $10                                       ; $524a: $d7
    ldh [$c0], a                                  ; $524b: $e0 $c0
    inc hl                                        ; $524d: $23
    inc hl                                        ; $524e: $23
    ld d, l                                       ; $524f: $55
    ld d, l                                       ; $5250: $55
    cp e                                          ; $5251: $bb
    cp e                                          ; $5252: $bb
    dec d                                         ; $5253: $15
    rst $38                                       ; $5254: $ff
    add b                                         ; $5255: $80
    and d                                         ; $5256: $a2
    ld [hl], a                                    ; $5257: $77
    ld h, b                                       ; $5258: $60
    and b                                         ; $5259: $a0
    nop                                           ; $525a: $00
    rst $38                                       ; $525b: $ff
    rst $38                                       ; $525c: $ff
    rst $38                                       ; $525d: $ff
    rst $38                                       ; $525e: $ff
    rst $38                                       ; $525f: $ff
    rst $38                                       ; $5260: $ff
    nop                                           ; $5261: $00
    rst $38                                       ; $5262: $ff
    rst $38                                       ; $5263: $ff
    rst $38                                       ; $5264: $ff
    rst $38                                       ; $5265: $ff
    rst $38                                       ; $5266: $ff
    rst $38                                       ; $5267: $ff
    rst $38                                       ; $5268: $ff
    rst $38                                       ; $5269: $ff
    rst $38                                       ; $526a: $ff
    rst $38                                       ; $526b: $ff
    rst $38                                       ; $526c: $ff
    rst $38                                       ; $526d: $ff
    rst $38                                       ; $526e: $ff
    rst $38                                       ; $526f: $ff
    rst $38                                       ; $5270: $ff
    rst $38                                       ; $5271: $ff
    nop                                           ; $5272: $00
    rst $38                                       ; $5273: $ff
    rst $38                                       ; $5274: $ff
    rst $38                                       ; $5275: $ff
    rst $38                                       ; $5276: $ff
    rst $38                                       ; $5277: $ff
    rst $38                                       ; $5278: $ff
    rst $38                                       ; $5279: $ff
    rst $38                                       ; $527a: $ff
    rst $38                                       ; $527b: $ff
    rst $38                                       ; $527c: $ff
    rst $38                                       ; $527d: $ff
    rst $38                                       ; $527e: $ff
    rst $38                                       ; $527f: $ff
    rst $38                                       ; $5280: $ff
    rst $38                                       ; $5281: $ff
    rst $38                                       ; $5282: $ff
    nop                                           ; $5283: $00
    rst $38                                       ; $5284: $ff
    rst $38                                       ; $5285: $ff
    rst $38                                       ; $5286: $ff
    rst $38                                       ; $5287: $ff
    rst $38                                       ; $5288: $ff
    rst $38                                       ; $5289: $ff
    rst $38                                       ; $528a: $ff
    rst $38                                       ; $528b: $ff
    rst $38                                       ; $528c: $ff
    rst $38                                       ; $528d: $ff
    rst $38                                       ; $528e: $ff
    rst $38                                       ; $528f: $ff
    rst $38                                       ; $5290: $ff
    rst $38                                       ; $5291: $ff
    rst $38                                       ; $5292: $ff
    rst $38                                       ; $5293: $ff
    nop                                           ; $5294: $00
    rst $38                                       ; $5295: $ff
    rst $38                                       ; $5296: $ff
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
    rst $38                                       ; $52a4: $ff
    nop                                           ; $52a5: $00
    rst $38                                       ; $52a6: $ff
    rst $38                                       ; $52a7: $ff
    rst $38                                       ; $52a8: $ff
    rst $38                                       ; $52a9: $ff
    rst $38                                       ; $52aa: $ff
    rst $38                                       ; $52ab: $ff
    rst $38                                       ; $52ac: $ff
    rst $38                                       ; $52ad: $ff
    rst $38                                       ; $52ae: $ff
    rst $38                                       ; $52af: $ff
    rst $38                                       ; $52b0: $ff
    rst $38                                       ; $52b1: $ff
    rst $38                                       ; $52b2: $ff
    rst $38                                       ; $52b3: $ff
    rst $38                                       ; $52b4: $ff
    rst $38                                       ; $52b5: $ff
    nop                                           ; $52b6: $00
    rst $38                                       ; $52b7: $ff
    rst $38                                       ; $52b8: $ff
    rst $38                                       ; $52b9: $ff
    rst $38                                       ; $52ba: $ff
    rst $38                                       ; $52bb: $ff
    rst $38                                       ; $52bc: $ff
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
    nop                                           ; $52c7: $00
    rst $38                                       ; $52c8: $ff
    rst $38                                       ; $52c9: $ff
    rst $38                                       ; $52ca: $ff
    rst $38                                       ; $52cb: $ff
    rst $38                                       ; $52cc: $ff
    rst $38                                       ; $52cd: $ff
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
    nop                                           ; $52d8: $00
    rst $38                                       ; $52d9: $ff
    rst $38                                       ; $52da: $ff
    rst $38                                       ; $52db: $ff
    rst $38                                       ; $52dc: $ff
    rst $38                                       ; $52dd: $ff
    rst $38                                       ; $52de: $ff
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
    nop                                           ; $52e9: $00
    rst $38                                       ; $52ea: $ff
    rst $38                                       ; $52eb: $ff
    rst $38                                       ; $52ec: $ff
    rst $38                                       ; $52ed: $ff
    rst $38                                       ; $52ee: $ff
    rst $38                                       ; $52ef: $ff
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
    nop                                           ; $52fa: $00
    rst $38                                       ; $52fb: $ff
    rst $38                                       ; $52fc: $ff
    rst $38                                       ; $52fd: $ff
    rst $38                                       ; $52fe: $ff
    rst $38                                       ; $52ff: $ff
    rst $38                                       ; $5300: $ff
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
    nop                                           ; $530b: $00
    rst $38                                       ; $530c: $ff
    rst $38                                       ; $530d: $ff
    rst $38                                       ; $530e: $ff
    rst $38                                       ; $530f: $ff
    rst $38                                       ; $5310: $ff
    rst $38                                       ; $5311: $ff
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
    nop                                           ; $531c: $00
    rst $38                                       ; $531d: $ff
    rst $38                                       ; $531e: $ff
    rst $38                                       ; $531f: $ff
    rst $38                                       ; $5320: $ff
    rst $38                                       ; $5321: $ff
    rst $38                                       ; $5322: $ff
    rst $38                                       ; $5323: $ff
    rst $38                                       ; $5324: $ff
    rst $38                                       ; $5325: $ff
    xor $00                                       ; $5326: $ee $00
    nop                                           ; $5328: $00
    nop                                           ; $5329: $00
    nop                                           ; $532a: $00
    nop                                           ; $532b: $00
    nop                                           ; $532c: $00
    nop                                           ; $532d: $00
    nop                                           ; $532e: $00
    nop                                           ; $532f: $00
    nop                                           ; $5330: $00
    nop                                           ; $5331: $00
    nop                                           ; $5332: $00
    nop                                           ; $5333: $00
    nop                                           ; $5334: $00
    nop                                           ; $5335: $00
    nop                                           ; $5336: $00
    nop                                           ; $5337: $00
    nop                                           ; $5338: $00
    nop                                           ; $5339: $00
    nop                                           ; $533a: $00
    nop                                           ; $533b: $00
    nop                                           ; $533c: $00
    nop                                           ; $533d: $00
    nop                                           ; $533e: $00
    nop                                           ; $533f: $00
    nop                                           ; $5340: $00
    nop                                           ; $5341: $00
    nop                                           ; $5342: $00
    nop                                           ; $5343: $00
    nop                                           ; $5344: $00
    nop                                           ; $5345: $00
    nop                                           ; $5346: $00
    nop                                           ; $5347: $00
    nop                                           ; $5348: $00
    nop                                           ; $5349: $00
    nop                                           ; $534a: $00
    nop                                           ; $534b: $00
    nop                                           ; $534c: $00
    nop                                           ; $534d: $00
    nop                                           ; $534e: $00
    nop                                           ; $534f: $00
    nop                                           ; $5350: $00
    nop                                           ; $5351: $00
    nop                                           ; $5352: $00
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
    nop                                           ; $5360: $00
    nop                                           ; $5361: $00
    nop                                           ; $5362: $00
    nop                                           ; $5363: $00
    nop                                           ; $5364: $00
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
    nop                                           ; $5370: $00
    nop                                           ; $5371: $00
    nop                                           ; $5372: $00
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
    nop                                           ; $537f: $00
    nop                                           ; $5380: $00
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
    nop                                           ; $5390: $00
    nop                                           ; $5391: $00
    nop                                           ; $5392: $00
    nop                                           ; $5393: $00
    nop                                           ; $5394: $00
    nop                                           ; $5395: $00
    nop                                           ; $5396: $00
    nop                                           ; $5397: $00
    nop                                           ; $5398: $00
    nop                                           ; $5399: $00
    nop                                           ; $539a: $00
    nop                                           ; $539b: $00
    nop                                           ; $539c: $00
    nop                                           ; $539d: $00
    nop                                           ; $539e: $00
    nop                                           ; $539f: $00
    nop                                           ; $53a0: $00
    nop                                           ; $53a1: $00
    nop                                           ; $53a2: $00
    nop                                           ; $53a3: $00
    nop                                           ; $53a4: $00
    nop                                           ; $53a5: $00
    nop                                           ; $53a6: $00
    nop                                           ; $53a7: $00
    nop                                           ; $53a8: $00
    nop                                           ; $53a9: $00
    nop                                           ; $53aa: $00
    nop                                           ; $53ab: $00
    nop                                           ; $53ac: $00
    nop                                           ; $53ad: $00
    nop                                           ; $53ae: $00
    nop                                           ; $53af: $00
    nop                                           ; $53b0: $00
    nop                                           ; $53b1: $00
    nop                                           ; $53b2: $00
    nop                                           ; $53b3: $00
    nop                                           ; $53b4: $00
    nop                                           ; $53b5: $00
    nop                                           ; $53b6: $00
    nop                                           ; $53b7: $00
    nop                                           ; $53b8: $00
    nop                                           ; $53b9: $00
    nop                                           ; $53ba: $00
    nop                                           ; $53bb: $00
    nop                                           ; $53bc: $00
    nop                                           ; $53bd: $00
    nop                                           ; $53be: $00
    nop                                           ; $53bf: $00
    nop                                           ; $53c0: $00
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
    nop                                           ; $53d4: $00
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
    nop                                           ; $53e0: $00
    nop                                           ; $53e1: $00
    nop                                           ; $53e2: $00
    nop                                           ; $53e3: $00
    nop                                           ; $53e4: $00
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
    nop                                           ; $53f2: $00
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
    nop                                           ; $5400: $00
    nop                                           ; $5401: $00
    nop                                           ; $5402: $00
    nop                                           ; $5403: $00
    nop                                           ; $5404: $00
    nop                                           ; $5405: $00
    nop                                           ; $5406: $00
    nop                                           ; $5407: $00
    nop                                           ; $5408: $00
    nop                                           ; $5409: $00
    nop                                           ; $540a: $00
    nop                                           ; $540b: $00
    nop                                           ; $540c: $00
    nop                                           ; $540d: $00
    nop                                           ; $540e: $00
    nop                                           ; $540f: $00
    nop                                           ; $5410: $00
    nop                                           ; $5411: $00
    nop                                           ; $5412: $00
    nop                                           ; $5413: $00
    nop                                           ; $5414: $00
    nop                                           ; $5415: $00
    nop                                           ; $5416: $00
    nop                                           ; $5417: $00
    nop                                           ; $5418: $00
    nop                                           ; $5419: $00
    nop                                           ; $541a: $00
    nop                                           ; $541b: $00
    nop                                           ; $541c: $00
    nop                                           ; $541d: $00
    nop                                           ; $541e: $00
    nop                                           ; $541f: $00
    nop                                           ; $5420: $00
    nop                                           ; $5421: $00
    nop                                           ; $5422: $00
    nop                                           ; $5423: $00
    nop                                           ; $5424: $00
    nop                                           ; $5425: $00
    nop                                           ; $5426: $00
    nop                                           ; $5427: $00
    nop                                           ; $5428: $00
    nop                                           ; $5429: $00
    nop                                           ; $542a: $00
    nop                                           ; $542b: $00
    nop                                           ; $542c: $00
    nop                                           ; $542d: $00
    nop                                           ; $542e: $00
    nop                                           ; $542f: $00
    nop                                           ; $5430: $00
    nop                                           ; $5431: $00
    nop                                           ; $5432: $00
    nop                                           ; $5433: $00
    nop                                           ; $5434: $00
    nop                                           ; $5435: $00
    nop                                           ; $5436: $00
    nop                                           ; $5437: $00
    nop                                           ; $5438: $00
    nop                                           ; $5439: $00
    nop                                           ; $543a: $00
    nop                                           ; $543b: $00
    nop                                           ; $543c: $00
    nop                                           ; $543d: $00
    nop                                           ; $543e: $00
    nop                                           ; $543f: $00
    nop                                           ; $5440: $00
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
    nop                                           ; $5454: $00
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
    nop                                           ; $5460: $00
    nop                                           ; $5461: $00
    nop                                           ; $5462: $00
    nop                                           ; $5463: $00
    nop                                           ; $5464: $00
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
    nop                                           ; $5472: $00
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
    nop                                           ; $5480: $00
    nop                                           ; $5481: $00
    nop                                           ; $5482: $00
    nop                                           ; $5483: $00
    nop                                           ; $5484: $00
    nop                                           ; $5485: $00
    nop                                           ; $5486: $00
    nop                                           ; $5487: $00
    nop                                           ; $5488: $00
    nop                                           ; $5489: $00
    nop                                           ; $548a: $00
    nop                                           ; $548b: $00
    nop                                           ; $548c: $00
    nop                                           ; $548d: $00
    nop                                           ; $548e: $00
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
    ld a, l                                       ; $552a: $7d
    ld h, [hl]                                    ; $552b: $66
    rst $38                                       ; $552c: $ff
    db $e4                                        ; $552d: $e4
    sbc c                                         ; $552e: $99
    sub [hl]                                      ; $552f: $96
    sub [hl]                                      ; $5530: $96
    ld h, [hl]                                    ; $5531: $66
    sub [hl]                                      ; $5532: $96
    di                                            ; $5533: $f3
    ldh [$e3], a                                  ; $5534: $e0 $e3
    ld de, $ff99                                  ; $5536: $11 $99 $ff
    ldh [$f0], a                                  ; $5539: $e0 $f0
    pop hl                                        ; $553b: $e1
    rst $20                                       ; $553c: $e7
    db $e4                                        ; $553d: $e4
    ld l, c                                       ; $553e: $69
    sub c                                         ; $553f: $91
    ld l, c                                       ; $5540: $69
    dec e                                         ; $5541: $1d
    sub c                                         ; $5542: $91
    di                                            ; $5543: $f3
    ldh [$99], a                                  ; $5544: $e0 $99
    ld h, [hl]                                    ; $5546: $66
    ld l, c                                       ; $5547: $69
    cp $e0                                        ; $5548: $fe $e0
    rst $38                                       ; $554a: $ff
    ldh a, [$d1]                                  ; $554b: $f0 $d1
    db $e4                                        ; $554d: $e4
    sbc b                                         ; $554e: $98
    db $dd                                        ; $554f: $dd
    ld [c], a                                     ; $5550: $e2
    reti                                          ; $5551: $d9


    pop hl                                        ; $5552: $e1
    xor $e3                                       ; $5553: $ee $e3
    ld de, $c811                                  ; $5555: $11 $11 $c8
    pop hl                                        ; $5558: $e1
    call nz, Call_000_11e1                        ; $5559: $c4 $e1 $11
    ld c, h                                       ; $555c: $4c
    rst $38                                       ; $555d: $ff
    ldh [$ad], a                                  ; $555e: $e0 $ad
    pop hl                                        ; $5560: $e1
    sbc c                                         ; $5561: $99
    ld de, $e3fe                                  ; $5562: $11 $fe $e3
    ldh a, [$ef]                                  ; $5565: $f0 $ef
    sub c                                         ; $5567: $91
    and $e1                                       ; $5568: $e6 $e1
    db $fc                                        ; $556a: $fc
    ret c                                         ; $556b: $d8

    ld [c], a                                     ; $556c: $e2
    db $e3                                        ; $556d: $e3
    ld [c], a                                     ; $556e: $e2
    add hl, de                                    ; $556f: $19
    add hl, de                                    ; $5570: $19
    sbc c                                         ; $5571: $99
    add hl, de                                    ; $5572: $19
    sub [hl]                                      ; $5573: $96
    sbc c                                         ; $5574: $99
    ld a, a                                       ; $5575: $7f
    ld h, [hl]                                    ; $5576: $66
    ld de, $1117                                  ; $5577: $11 $17 $11
    ld [hl], a                                    ; $557a: $77
    rla                                           ; $557b: $17
    ld [hl], a                                    ; $557c: $77
    rst $38                                       ; $557d: $ff
    rst $38                                       ; $557e: $ff
    add b                                         ; $557f: $80
    rst $38                                       ; $5580: $ff
    rst $38                                       ; $5581: $ff
    rst $38                                       ; $5582: $ff
    rst $38                                       ; $5583: $ff
    rst $38                                       ; $5584: $ff
    rst $38                                       ; $5585: $ff
    rst $38                                       ; $5586: $ff
    rst $38                                       ; $5587: $ff
    rst $38                                       ; $5588: $ff
    rst $38                                       ; $5589: $ff
    rst $38                                       ; $558a: $ff
    rst $38                                       ; $558b: $ff
    ld a, [$fff9]                                 ; $558c: $fa $f9 $ff
    nop                                           ; $558f: $00
    rst $38                                       ; $5590: $ff
    rst $38                                       ; $5591: $ff
    rst $38                                       ; $5592: $ff
    rst $38                                       ; $5593: $ff
    rst $38                                       ; $5594: $ff
    rst $38                                       ; $5595: $ff
    rst $38                                       ; $5596: $ff
    rst $38                                       ; $5597: $ff
    rst $38                                       ; $5598: $ff
    rst $38                                       ; $5599: $ff
    rst $38                                       ; $559a: $ff
    rst $38                                       ; $559b: $ff
    rst $38                                       ; $559c: $ff
    rst $38                                       ; $559d: $ff
    rst $38                                       ; $559e: $ff
    rst $38                                       ; $559f: $ff
    nop                                           ; $55a0: $00
    rst $38                                       ; $55a1: $ff
    rst $38                                       ; $55a2: $ff
    rst $38                                       ; $55a3: $ff
    rst $38                                       ; $55a4: $ff
    rst $38                                       ; $55a5: $ff
    rst $38                                       ; $55a6: $ff
    rst $38                                       ; $55a7: $ff
    rst $38                                       ; $55a8: $ff
    rst $38                                       ; $55a9: $ff
    rst $38                                       ; $55aa: $ff
    rst $38                                       ; $55ab: $ff
    rst $38                                       ; $55ac: $ff
    rst $38                                       ; $55ad: $ff
    rst $38                                       ; $55ae: $ff
    rst $38                                       ; $55af: $ff
    rst $38                                       ; $55b0: $ff
    nop                                           ; $55b1: $00
    rst $38                                       ; $55b2: $ff
    rst $38                                       ; $55b3: $ff
    rst $38                                       ; $55b4: $ff
    rst $38                                       ; $55b5: $ff
    rst $38                                       ; $55b6: $ff
    rst $38                                       ; $55b7: $ff
    rst $38                                       ; $55b8: $ff
    rst $38                                       ; $55b9: $ff
    rst $38                                       ; $55ba: $ff
    rst $38                                       ; $55bb: $ff
    rst $38                                       ; $55bc: $ff
    rst $38                                       ; $55bd: $ff
    rst $38                                       ; $55be: $ff
    rst $38                                       ; $55bf: $ff
    rst $38                                       ; $55c0: $ff
    rst $38                                       ; $55c1: $ff
    nop                                           ; $55c2: $00
    rst $38                                       ; $55c3: $ff
    rst $38                                       ; $55c4: $ff
    rst $38                                       ; $55c5: $ff
    rst $38                                       ; $55c6: $ff
    rst $38                                       ; $55c7: $ff
    rst $38                                       ; $55c8: $ff
    rst $38                                       ; $55c9: $ff
    rst $38                                       ; $55ca: $ff
    rst $38                                       ; $55cb: $ff
    rst $38                                       ; $55cc: $ff
    rst $38                                       ; $55cd: $ff
    rst $38                                       ; $55ce: $ff
    rst $38                                       ; $55cf: $ff
    rst $38                                       ; $55d0: $ff
    rst $38                                       ; $55d1: $ff
    rst $38                                       ; $55d2: $ff
    nop                                           ; $55d3: $00
    rst $38                                       ; $55d4: $ff
    rst $38                                       ; $55d5: $ff
    rst $38                                       ; $55d6: $ff
    rst $38                                       ; $55d7: $ff
    rst $38                                       ; $55d8: $ff
    rst $38                                       ; $55d9: $ff
    rst $38                                       ; $55da: $ff
    rst $38                                       ; $55db: $ff
    rst $38                                       ; $55dc: $ff
    rst $38                                       ; $55dd: $ff
    rst $38                                       ; $55de: $ff
    rst $38                                       ; $55df: $ff
    rst $38                                       ; $55e0: $ff
    rst $38                                       ; $55e1: $ff
    rst $38                                       ; $55e2: $ff
    rst $38                                       ; $55e3: $ff
    nop                                           ; $55e4: $00
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
    rst $30                                       ; $55f3: $f7
    or $00                                        ; $55f4: $f6 $00
    nop                                           ; $55f6: $00
    nop                                           ; $55f7: $00
    ld bc, $ff00                                  ; $55f8: $01 $00 $ff
    rst $38                                       ; $55fb: $ff
    rst $38                                       ; $55fc: $ff
    rst $38                                       ; $55fd: $ff
    rst $38                                       ; $55fe: $ff
    rst $38                                       ; $55ff: $ff
    rst $38                                       ; $5600: $ff
    rst $38                                       ; $5601: $ff
    rst $38                                       ; $5602: $ff
    rst $38                                       ; $5603: $ff
    rst $38                                       ; $5604: $ff
    rst $38                                       ; $5605: $ff
    rst $38                                       ; $5606: $ff
    rst $38                                       ; $5607: $ff
    nop                                           ; $5608: $00
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
    rst $38                                       ; $5615: $ff
    rst $38                                       ; $5616: $ff
    rst $38                                       ; $5617: $ff
    rst $38                                       ; $5618: $ff
    nop                                           ; $5619: $00
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
    rst $38                                       ; $5626: $ff
    rst $38                                       ; $5627: $ff
    rst $38                                       ; $5628: $ff
    rst $38                                       ; $5629: $ff
    nop                                           ; $562a: $00
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
    rst $38                                       ; $5637: $ff
    rst $38                                       ; $5638: $ff
    rst $38                                       ; $5639: $ff
    rst $38                                       ; $563a: $ff
    nop                                           ; $563b: $00
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
    rst $38                                       ; $5648: $ff
    rst $38                                       ; $5649: $ff
    rst $38                                       ; $564a: $ff
    rst $38                                       ; $564b: $ff
    nop                                           ; $564c: $00
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
    rst $38                                       ; $5659: $ff
    rst $38                                       ; $565a: $ff
    rst $38                                       ; $565b: $ff
    rst $38                                       ; $565c: $ff
    nop                                           ; $565d: $00
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
    rst $38                                       ; $566a: $ff
    rst $38                                       ; $566b: $ff
    rst $38                                       ; $566c: $ff
    rst $38                                       ; $566d: $ff
    nop                                           ; $566e: $00
    rst $38                                       ; $566f: $ff
    rst $38                                       ; $5670: $ff
    rst $38                                       ; $5671: $ff
    rst $38                                       ; $5672: $ff
    rst $38                                       ; $5673: $ff
    rst $38                                       ; $5674: $ff
    rst $38                                       ; $5675: $ff
    rst $38                                       ; $5676: $ff
    rst $38                                       ; $5677: $ff
    rst $38                                       ; $5678: $ff
    rst $38                                       ; $5679: $ff
    db $e4                                        ; $567a: $e4
    nop                                           ; $567b: $00
    nop                                           ; $567c: $00
    nop                                           ; $567d: $00
    sub b                                         ; $567e: $90
    ld d, [hl]                                    ; $567f: $56
    sub b                                         ; $5680: $90
    ld e, [hl]                                    ; $5681: $5e
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

Jump_053_56c9:
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

Jump_053_579f:
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
    nop                                           ; $5911: $00
    nop                                           ; $5912: $00
    nop                                           ; $5913: $00
    nop                                           ; $5914: $00
    nop                                           ; $5915: $00
    nop                                           ; $5916: $00
    nop                                           ; $5917: $00
    nop                                           ; $5918: $00
    nop                                           ; $5919: $00
    nop                                           ; $591a: $00
    nop                                           ; $591b: $00
    nop                                           ; $591c: $00
    nop                                           ; $591d: $00
    nop                                           ; $591e: $00
    nop                                           ; $591f: $00
    nop                                           ; $5920: $00
    nop                                           ; $5921: $00
    nop                                           ; $5922: $00
    nop                                           ; $5923: $00
    nop                                           ; $5924: $00
    nop                                           ; $5925: $00
    nop                                           ; $5926: $00
    nop                                           ; $5927: $00
    nop                                           ; $5928: $00
    nop                                           ; $5929: $00
    nop                                           ; $592a: $00
    nop                                           ; $592b: $00
    nop                                           ; $592c: $00
    nop                                           ; $592d: $00
    nop                                           ; $592e: $00
    nop                                           ; $592f: $00
    nop                                           ; $5930: $00
    nop                                           ; $5931: $00
    nop                                           ; $5932: $00
    nop                                           ; $5933: $00
    nop                                           ; $5934: $00
    nop                                           ; $5935: $00
    nop                                           ; $5936: $00
    nop                                           ; $5937: $00
    nop                                           ; $5938: $00
    nop                                           ; $5939: $00
    nop                                           ; $593a: $00
    nop                                           ; $593b: $00
    nop                                           ; $593c: $00
    nop                                           ; $593d: $00
    nop                                           ; $593e: $00
    nop                                           ; $593f: $00
    nop                                           ; $5940: $00
    nop                                           ; $5941: $00
    nop                                           ; $5942: $00
    nop                                           ; $5943: $00
    nop                                           ; $5944: $00
    nop                                           ; $5945: $00
    nop                                           ; $5946: $00
    nop                                           ; $5947: $00
    nop                                           ; $5948: $00
    nop                                           ; $5949: $00
    nop                                           ; $594a: $00
    nop                                           ; $594b: $00
    nop                                           ; $594c: $00
    nop                                           ; $594d: $00
    nop                                           ; $594e: $00
    nop                                           ; $594f: $00
    nop                                           ; $5950: $00
    nop                                           ; $5951: $00
    nop                                           ; $5952: $00
    nop                                           ; $5953: $00
    nop                                           ; $5954: $00
    nop                                           ; $5955: $00
    nop                                           ; $5956: $00
    nop                                           ; $5957: $00
    nop                                           ; $5958: $00
    nop                                           ; $5959: $00
    nop                                           ; $595a: $00
    nop                                           ; $595b: $00
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
    nop                                           ; $597c: $00
    nop                                           ; $597d: $00
    nop                                           ; $597e: $00
    nop                                           ; $597f: $00
    nop                                           ; $5980: $00
    nop                                           ; $5981: $00
    nop                                           ; $5982: $00
    nop                                           ; $5983: $00
    nop                                           ; $5984: $00
    nop                                           ; $5985: $00
    nop                                           ; $5986: $00
    nop                                           ; $5987: $00
    nop                                           ; $5988: $00
    nop                                           ; $5989: $00
    nop                                           ; $598a: $00
    nop                                           ; $598b: $00
    nop                                           ; $598c: $00
    nop                                           ; $598d: $00
    nop                                           ; $598e: $00
    nop                                           ; $598f: $00
    nop                                           ; $5990: $00
    nop                                           ; $5991: $00
    nop                                           ; $5992: $00
    nop                                           ; $5993: $00
    nop                                           ; $5994: $00
    nop                                           ; $5995: $00
    nop                                           ; $5996: $00
    nop                                           ; $5997: $00
    nop                                           ; $5998: $00
    nop                                           ; $5999: $00
    nop                                           ; $599a: $00
    nop                                           ; $599b: $00
    nop                                           ; $599c: $00
    nop                                           ; $599d: $00
    nop                                           ; $599e: $00
    nop                                           ; $599f: $00
    nop                                           ; $59a0: $00
    nop                                           ; $59a1: $00
    nop                                           ; $59a2: $00
    nop                                           ; $59a3: $00
    nop                                           ; $59a4: $00
    nop                                           ; $59a5: $00
    nop                                           ; $59a6: $00
    nop                                           ; $59a7: $00
    nop                                           ; $59a8: $00
    nop                                           ; $59a9: $00
    nop                                           ; $59aa: $00
    nop                                           ; $59ab: $00
    nop                                           ; $59ac: $00
    nop                                           ; $59ad: $00
    nop                                           ; $59ae: $00
    nop                                           ; $59af: $00
    nop                                           ; $59b0: $00
    nop                                           ; $59b1: $00
    nop                                           ; $59b2: $00
    nop                                           ; $59b3: $00
    nop                                           ; $59b4: $00
    nop                                           ; $59b5: $00
    nop                                           ; $59b6: $00
    nop                                           ; $59b7: $00
    nop                                           ; $59b8: $00
    nop                                           ; $59b9: $00
    nop                                           ; $59ba: $00
    nop                                           ; $59bb: $00
    nop                                           ; $59bc: $00
    nop                                           ; $59bd: $00
    nop                                           ; $59be: $00
    nop                                           ; $59bf: $00
    nop                                           ; $59c0: $00
    nop                                           ; $59c1: $00
    nop                                           ; $59c2: $00
    nop                                           ; $59c3: $00
    nop                                           ; $59c4: $00
    nop                                           ; $59c5: $00
    nop                                           ; $59c6: $00
    nop                                           ; $59c7: $00
    nop                                           ; $59c8: $00
    nop                                           ; $59c9: $00
    nop                                           ; $59ca: $00
    nop                                           ; $59cb: $00
    nop                                           ; $59cc: $00
    nop                                           ; $59cd: $00
    nop                                           ; $59ce: $00
    nop                                           ; $59cf: $00
    nop                                           ; $59d0: $00
    nop                                           ; $59d1: $00
    nop                                           ; $59d2: $00
    nop                                           ; $59d3: $00
    nop                                           ; $59d4: $00
    nop                                           ; $59d5: $00
    nop                                           ; $59d6: $00
    nop                                           ; $59d7: $00
    nop                                           ; $59d8: $00
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
    nop                                           ; $59f8: $00
    nop                                           ; $59f9: $00
    nop                                           ; $59fa: $00
    nop                                           ; $59fb: $00
    nop                                           ; $59fc: $00
    nop                                           ; $59fd: $00
    nop                                           ; $59fe: $00
    nop                                           ; $59ff: $00
    nop                                           ; $5a00: $00
    nop                                           ; $5a01: $00
    nop                                           ; $5a02: $00
    nop                                           ; $5a03: $00
    nop                                           ; $5a04: $00
    nop                                           ; $5a05: $00
    nop                                           ; $5a06: $00
    nop                                           ; $5a07: $00
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
    nop                                           ; $5a12: $00
    nop                                           ; $5a13: $00
    nop                                           ; $5a14: $00
    nop                                           ; $5a15: $00
    nop                                           ; $5a16: $00
    nop                                           ; $5a17: $00
    nop                                           ; $5a18: $00
    nop                                           ; $5a19: $00
    nop                                           ; $5a1a: $00
    nop                                           ; $5a1b: $00
    nop                                           ; $5a1c: $00
    nop                                           ; $5a1d: $00
    nop                                           ; $5a1e: $00
    nop                                           ; $5a1f: $00
    nop                                           ; $5a20: $00
    nop                                           ; $5a21: $00
    nop                                           ; $5a22: $00
    nop                                           ; $5a23: $00
    nop                                           ; $5a24: $00
    nop                                           ; $5a25: $00
    nop                                           ; $5a26: $00
    nop                                           ; $5a27: $00
    nop                                           ; $5a28: $00
    nop                                           ; $5a29: $00
    nop                                           ; $5a2a: $00
    nop                                           ; $5a2b: $00
    nop                                           ; $5a2c: $00
    nop                                           ; $5a2d: $00
    nop                                           ; $5a2e: $00
    nop                                           ; $5a2f: $00
    nop                                           ; $5a30: $00
    nop                                           ; $5a31: $00
    nop                                           ; $5a32: $00
    nop                                           ; $5a33: $00
    nop                                           ; $5a34: $00
    nop                                           ; $5a35: $00
    nop                                           ; $5a36: $00
    nop                                           ; $5a37: $00
    nop                                           ; $5a38: $00
    nop                                           ; $5a39: $00
    nop                                           ; $5a3a: $00
    nop                                           ; $5a3b: $00
    nop                                           ; $5a3c: $00
    nop                                           ; $5a3d: $00
    nop                                           ; $5a3e: $00
    nop                                           ; $5a3f: $00
    nop                                           ; $5a40: $00
    nop                                           ; $5a41: $00
    nop                                           ; $5a42: $00
    nop                                           ; $5a43: $00
    nop                                           ; $5a44: $00
    nop                                           ; $5a45: $00
    nop                                           ; $5a46: $00
    nop                                           ; $5a47: $00
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
    nop                                           ; $5a52: $00
    nop                                           ; $5a53: $00
    nop                                           ; $5a54: $00
    nop                                           ; $5a55: $00
    nop                                           ; $5a56: $00
    nop                                           ; $5a57: $00
    nop                                           ; $5a58: $00
    nop                                           ; $5a59: $00
    nop                                           ; $5a5a: $00
    nop                                           ; $5a5b: $00
    nop                                           ; $5a5c: $00
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
    nop                                           ; $5a7c: $00
    nop                                           ; $5a7d: $00
    nop                                           ; $5a7e: $00
    nop                                           ; $5a7f: $00
    nop                                           ; $5a80: $00
    nop                                           ; $5a81: $00
    nop                                           ; $5a82: $00
    nop                                           ; $5a83: $00
    nop                                           ; $5a84: $00
    nop                                           ; $5a85: $00
    nop                                           ; $5a86: $00
    nop                                           ; $5a87: $00
    nop                                           ; $5a88: $00
    nop                                           ; $5a89: $00
    nop                                           ; $5a8a: $00
    nop                                           ; $5a8b: $00
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
    nop                                           ; $5a96: $00
    nop                                           ; $5a97: $00
    nop                                           ; $5a98: $00
    nop                                           ; $5a99: $00
    nop                                           ; $5a9a: $00
    nop                                           ; $5a9b: $00
    nop                                           ; $5a9c: $00
    nop                                           ; $5a9d: $00
    nop                                           ; $5a9e: $00
    nop                                           ; $5a9f: $00
    nop                                           ; $5aa0: $00
    nop                                           ; $5aa1: $00
    nop                                           ; $5aa2: $00
    nop                                           ; $5aa3: $00
    nop                                           ; $5aa4: $00
    nop                                           ; $5aa5: $00
    nop                                           ; $5aa6: $00
    nop                                           ; $5aa7: $00
    nop                                           ; $5aa8: $00
    nop                                           ; $5aa9: $00
    nop                                           ; $5aaa: $00
    nop                                           ; $5aab: $00
    nop                                           ; $5aac: $00
    nop                                           ; $5aad: $00
    nop                                           ; $5aae: $00
    nop                                           ; $5aaf: $00
    nop                                           ; $5ab0: $00
    nop                                           ; $5ab1: $00
    nop                                           ; $5ab2: $00
    nop                                           ; $5ab3: $00
    nop                                           ; $5ab4: $00
    nop                                           ; $5ab5: $00
    nop                                           ; $5ab6: $00
    nop                                           ; $5ab7: $00
    nop                                           ; $5ab8: $00
    nop                                           ; $5ab9: $00
    nop                                           ; $5aba: $00
    nop                                           ; $5abb: $00
    nop                                           ; $5abc: $00
    nop                                           ; $5abd: $00
    nop                                           ; $5abe: $00
    nop                                           ; $5abf: $00
    nop                                           ; $5ac0: $00
    nop                                           ; $5ac1: $00
    nop                                           ; $5ac2: $00
    nop                                           ; $5ac3: $00
    nop                                           ; $5ac4: $00
    nop                                           ; $5ac5: $00
    nop                                           ; $5ac6: $00
    nop                                           ; $5ac7: $00
    nop                                           ; $5ac8: $00
    nop                                           ; $5ac9: $00
    nop                                           ; $5aca: $00
    nop                                           ; $5acb: $00
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
    nop                                           ; $5ad6: $00
    nop                                           ; $5ad7: $00
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
    nop                                           ; $5af8: $00
    nop                                           ; $5af9: $00
    nop                                           ; $5afa: $00
    nop                                           ; $5afb: $00
    nop                                           ; $5afc: $00
    nop                                           ; $5afd: $00
    nop                                           ; $5afe: $00
    nop                                           ; $5aff: $00
    nop                                           ; $5b00: $00
    nop                                           ; $5b01: $00
    nop                                           ; $5b02: $00
    nop                                           ; $5b03: $00
    nop                                           ; $5b04: $00
    nop                                           ; $5b05: $00
    nop                                           ; $5b06: $00
    nop                                           ; $5b07: $00
    nop                                           ; $5b08: $00
    nop                                           ; $5b09: $00
    nop                                           ; $5b0a: $00
    nop                                           ; $5b0b: $00
    nop                                           ; $5b0c: $00
    nop                                           ; $5b0d: $00
    nop                                           ; $5b0e: $00
    nop                                           ; $5b0f: $00
    nop                                           ; $5b10: $00
    nop                                           ; $5b11: $00
    nop                                           ; $5b12: $00
    nop                                           ; $5b13: $00
    nop                                           ; $5b14: $00
    nop                                           ; $5b15: $00
    nop                                           ; $5b16: $00
    nop                                           ; $5b17: $00
    nop                                           ; $5b18: $00
    nop                                           ; $5b19: $00
    nop                                           ; $5b1a: $00
    nop                                           ; $5b1b: $00
    nop                                           ; $5b1c: $00
    nop                                           ; $5b1d: $00
    nop                                           ; $5b1e: $00
    nop                                           ; $5b1f: $00
    nop                                           ; $5b20: $00
    nop                                           ; $5b21: $00
    nop                                           ; $5b22: $00
    nop                                           ; $5b23: $00
    nop                                           ; $5b24: $00
    nop                                           ; $5b25: $00
    nop                                           ; $5b26: $00
    nop                                           ; $5b27: $00
    nop                                           ; $5b28: $00
    nop                                           ; $5b29: $00
    nop                                           ; $5b2a: $00
    nop                                           ; $5b2b: $00
    nop                                           ; $5b2c: $00
    nop                                           ; $5b2d: $00
    nop                                           ; $5b2e: $00
    nop                                           ; $5b2f: $00
    nop                                           ; $5b30: $00
    nop                                           ; $5b31: $00
    nop                                           ; $5b32: $00
    nop                                           ; $5b33: $00
    nop                                           ; $5b34: $00
    nop                                           ; $5b35: $00
    nop                                           ; $5b36: $00
    nop                                           ; $5b37: $00
    nop                                           ; $5b38: $00
    nop                                           ; $5b39: $00
    nop                                           ; $5b3a: $00
    nop                                           ; $5b3b: $00
    nop                                           ; $5b3c: $00
    nop                                           ; $5b3d: $00
    nop                                           ; $5b3e: $00
    nop                                           ; $5b3f: $00
    nop                                           ; $5b40: $00
    nop                                           ; $5b41: $00
    nop                                           ; $5b42: $00
    nop                                           ; $5b43: $00
    nop                                           ; $5b44: $00
    nop                                           ; $5b45: $00
    nop                                           ; $5b46: $00
    nop                                           ; $5b47: $00
    nop                                           ; $5b48: $00
    nop                                           ; $5b49: $00
    nop                                           ; $5b4a: $00
    nop                                           ; $5b4b: $00
    nop                                           ; $5b4c: $00
    nop                                           ; $5b4d: $00
    nop                                           ; $5b4e: $00
    nop                                           ; $5b4f: $00
    nop                                           ; $5b50: $00
    nop                                           ; $5b51: $00
    nop                                           ; $5b52: $00
    nop                                           ; $5b53: $00
    nop                                           ; $5b54: $00
    nop                                           ; $5b55: $00
    nop                                           ; $5b56: $00
    nop                                           ; $5b57: $00
    nop                                           ; $5b58: $00
    nop                                           ; $5b59: $00
    nop                                           ; $5b5a: $00
    nop                                           ; $5b5b: $00
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
    nop                                           ; $5b7c: $00
    nop                                           ; $5b7d: $00
    nop                                           ; $5b7e: $00
    nop                                           ; $5b7f: $00
    nop                                           ; $5b80: $00
    nop                                           ; $5b81: $00
    nop                                           ; $5b82: $00
    nop                                           ; $5b83: $00
    nop                                           ; $5b84: $00
    nop                                           ; $5b85: $00
    nop                                           ; $5b86: $00
    nop                                           ; $5b87: $00
    nop                                           ; $5b88: $00
    nop                                           ; $5b89: $00
    nop                                           ; $5b8a: $00
    nop                                           ; $5b8b: $00
    nop                                           ; $5b8c: $00
    nop                                           ; $5b8d: $00
    nop                                           ; $5b8e: $00
    nop                                           ; $5b8f: $00
    nop                                           ; $5b90: $00
    nop                                           ; $5b91: $00
    nop                                           ; $5b92: $00
    nop                                           ; $5b93: $00
    nop                                           ; $5b94: $00
    nop                                           ; $5b95: $00
    nop                                           ; $5b96: $00
    nop                                           ; $5b97: $00
    nop                                           ; $5b98: $00
    nop                                           ; $5b99: $00
    nop                                           ; $5b9a: $00
    nop                                           ; $5b9b: $00
    nop                                           ; $5b9c: $00
    nop                                           ; $5b9d: $00
    nop                                           ; $5b9e: $00
    nop                                           ; $5b9f: $00
    nop                                           ; $5ba0: $00
    nop                                           ; $5ba1: $00
    nop                                           ; $5ba2: $00
    nop                                           ; $5ba3: $00
    nop                                           ; $5ba4: $00
    nop                                           ; $5ba5: $00
    nop                                           ; $5ba6: $00
    nop                                           ; $5ba7: $00
    nop                                           ; $5ba8: $00
    nop                                           ; $5ba9: $00
    nop                                           ; $5baa: $00
    nop                                           ; $5bab: $00
    nop                                           ; $5bac: $00
    nop                                           ; $5bad: $00
    nop                                           ; $5bae: $00
    nop                                           ; $5baf: $00
    nop                                           ; $5bb0: $00
    nop                                           ; $5bb1: $00
    nop                                           ; $5bb2: $00
    nop                                           ; $5bb3: $00
    nop                                           ; $5bb4: $00
    nop                                           ; $5bb5: $00
    nop                                           ; $5bb6: $00
    nop                                           ; $5bb7: $00
    nop                                           ; $5bb8: $00
    nop                                           ; $5bb9: $00
    nop                                           ; $5bba: $00
    nop                                           ; $5bbb: $00
    nop                                           ; $5bbc: $00
    nop                                           ; $5bbd: $00
    nop                                           ; $5bbe: $00
    nop                                           ; $5bbf: $00
    nop                                           ; $5bc0: $00
    nop                                           ; $5bc1: $00
    nop                                           ; $5bc2: $00
    nop                                           ; $5bc3: $00
    nop                                           ; $5bc4: $00
    nop                                           ; $5bc5: $00
    nop                                           ; $5bc6: $00
    nop                                           ; $5bc7: $00
    nop                                           ; $5bc8: $00
    nop                                           ; $5bc9: $00
    nop                                           ; $5bca: $00
    nop                                           ; $5bcb: $00
    nop                                           ; $5bcc: $00
    nop                                           ; $5bcd: $00
    nop                                           ; $5bce: $00
    nop                                           ; $5bcf: $00
    nop                                           ; $5bd0: $00
    nop                                           ; $5bd1: $00
    nop                                           ; $5bd2: $00
    nop                                           ; $5bd3: $00
    nop                                           ; $5bd4: $00
    nop                                           ; $5bd5: $00
    nop                                           ; $5bd6: $00
    nop                                           ; $5bd7: $00
    nop                                           ; $5bd8: $00
    nop                                           ; $5bd9: $00
    nop                                           ; $5bda: $00
    nop                                           ; $5bdb: $00
    nop                                           ; $5bdc: $00
    nop                                           ; $5bdd: $00
    nop                                           ; $5bde: $00
    nop                                           ; $5bdf: $00
    nop                                           ; $5be0: $00
    nop                                           ; $5be1: $00
    nop                                           ; $5be2: $00
    nop                                           ; $5be3: $00
    nop                                           ; $5be4: $00
    nop                                           ; $5be5: $00
    nop                                           ; $5be6: $00
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
    nop                                           ; $5bf8: $00
    nop                                           ; $5bf9: $00
    nop                                           ; $5bfa: $00
    nop                                           ; $5bfb: $00
    nop                                           ; $5bfc: $00
    nop                                           ; $5bfd: $00
    nop                                           ; $5bfe: $00
    nop                                           ; $5bff: $00
    nop                                           ; $5c00: $00
    nop                                           ; $5c01: $00
    nop                                           ; $5c02: $00
    nop                                           ; $5c03: $00
    nop                                           ; $5c04: $00
    nop                                           ; $5c05: $00
    nop                                           ; $5c06: $00
    nop                                           ; $5c07: $00
    nop                                           ; $5c08: $00
    nop                                           ; $5c09: $00
    nop                                           ; $5c0a: $00
    nop                                           ; $5c0b: $00
    nop                                           ; $5c0c: $00
    nop                                           ; $5c0d: $00
    nop                                           ; $5c0e: $00
    nop                                           ; $5c0f: $00
    nop                                           ; $5c10: $00
    nop                                           ; $5c11: $00
    nop                                           ; $5c12: $00
    nop                                           ; $5c13: $00
    nop                                           ; $5c14: $00
    nop                                           ; $5c15: $00
    nop                                           ; $5c16: $00
    nop                                           ; $5c17: $00
    nop                                           ; $5c18: $00
    nop                                           ; $5c19: $00
    nop                                           ; $5c1a: $00
    nop                                           ; $5c1b: $00
    nop                                           ; $5c1c: $00
    nop                                           ; $5c1d: $00
    nop                                           ; $5c1e: $00
    nop                                           ; $5c1f: $00
    nop                                           ; $5c20: $00
    nop                                           ; $5c21: $00
    nop                                           ; $5c22: $00
    nop                                           ; $5c23: $00
    nop                                           ; $5c24: $00
    nop                                           ; $5c25: $00
    nop                                           ; $5c26: $00
    nop                                           ; $5c27: $00
    nop                                           ; $5c28: $00
    nop                                           ; $5c29: $00
    nop                                           ; $5c2a: $00
    nop                                           ; $5c2b: $00
    nop                                           ; $5c2c: $00
    nop                                           ; $5c2d: $00
    nop                                           ; $5c2e: $00
    nop                                           ; $5c2f: $00
    nop                                           ; $5c30: $00
    nop                                           ; $5c31: $00
    nop                                           ; $5c32: $00
    nop                                           ; $5c33: $00
    nop                                           ; $5c34: $00
    nop                                           ; $5c35: $00
    nop                                           ; $5c36: $00
    nop                                           ; $5c37: $00
    nop                                           ; $5c38: $00
    nop                                           ; $5c39: $00
    nop                                           ; $5c3a: $00
    nop                                           ; $5c3b: $00
    nop                                           ; $5c3c: $00
    nop                                           ; $5c3d: $00
    nop                                           ; $5c3e: $00
    nop                                           ; $5c3f: $00
    nop                                           ; $5c40: $00
    nop                                           ; $5c41: $00
    nop                                           ; $5c42: $00
    nop                                           ; $5c43: $00
    nop                                           ; $5c44: $00
    nop                                           ; $5c45: $00
    nop                                           ; $5c46: $00
    nop                                           ; $5c47: $00
    nop                                           ; $5c48: $00
    nop                                           ; $5c49: $00
    nop                                           ; $5c4a: $00
    nop                                           ; $5c4b: $00
    nop                                           ; $5c4c: $00
    nop                                           ; $5c4d: $00
    nop                                           ; $5c4e: $00
    nop                                           ; $5c4f: $00
    nop                                           ; $5c50: $00
    nop                                           ; $5c51: $00
    nop                                           ; $5c52: $00
    nop                                           ; $5c53: $00
    nop                                           ; $5c54: $00
    nop                                           ; $5c55: $00
    nop                                           ; $5c56: $00
    nop                                           ; $5c57: $00
    nop                                           ; $5c58: $00
    nop                                           ; $5c59: $00
    nop                                           ; $5c5a: $00
    nop                                           ; $5c5b: $00
    nop                                           ; $5c5c: $00
    nop                                           ; $5c5d: $00
    nop                                           ; $5c5e: $00
    nop                                           ; $5c5f: $00
    nop                                           ; $5c60: $00
    nop                                           ; $5c61: $00
    nop                                           ; $5c62: $00
    nop                                           ; $5c63: $00
    nop                                           ; $5c64: $00
    nop                                           ; $5c65: $00
    nop                                           ; $5c66: $00
    nop                                           ; $5c67: $00
    nop                                           ; $5c68: $00
    nop                                           ; $5c69: $00
    nop                                           ; $5c6a: $00
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
    nop                                           ; $5c7c: $00
    nop                                           ; $5c7d: $00
    nop                                           ; $5c7e: $00
    nop                                           ; $5c7f: $00
    nop                                           ; $5c80: $00
    nop                                           ; $5c81: $00
    nop                                           ; $5c82: $00
    nop                                           ; $5c83: $00
    nop                                           ; $5c84: $00
    nop                                           ; $5c85: $00
    nop                                           ; $5c86: $00
    nop                                           ; $5c87: $00
    nop                                           ; $5c88: $00
    nop                                           ; $5c89: $00
    nop                                           ; $5c8a: $00
    nop                                           ; $5c8b: $00
    nop                                           ; $5c8c: $00
    nop                                           ; $5c8d: $00
    nop                                           ; $5c8e: $00
    nop                                           ; $5c8f: $00
    nop                                           ; $5c90: $00
    nop                                           ; $5c91: $00
    nop                                           ; $5c92: $00
    nop                                           ; $5c93: $00
    nop                                           ; $5c94: $00
    nop                                           ; $5c95: $00
    nop                                           ; $5c96: $00
    nop                                           ; $5c97: $00
    nop                                           ; $5c98: $00
    nop                                           ; $5c99: $00
    nop                                           ; $5c9a: $00
    nop                                           ; $5c9b: $00
    nop                                           ; $5c9c: $00
    nop                                           ; $5c9d: $00
    nop                                           ; $5c9e: $00
    nop                                           ; $5c9f: $00
    nop                                           ; $5ca0: $00
    nop                                           ; $5ca1: $00
    nop                                           ; $5ca2: $00
    nop                                           ; $5ca3: $00
    nop                                           ; $5ca4: $00
    nop                                           ; $5ca5: $00
    nop                                           ; $5ca6: $00
    nop                                           ; $5ca7: $00
    nop                                           ; $5ca8: $00
    nop                                           ; $5ca9: $00
    nop                                           ; $5caa: $00
    nop                                           ; $5cab: $00
    nop                                           ; $5cac: $00
    nop                                           ; $5cad: $00
    nop                                           ; $5cae: $00
    nop                                           ; $5caf: $00
    nop                                           ; $5cb0: $00
    nop                                           ; $5cb1: $00
    nop                                           ; $5cb2: $00
    nop                                           ; $5cb3: $00
    nop                                           ; $5cb4: $00
    nop                                           ; $5cb5: $00
    nop                                           ; $5cb6: $00
    nop                                           ; $5cb7: $00
    nop                                           ; $5cb8: $00
    nop                                           ; $5cb9: $00
    nop                                           ; $5cba: $00
    nop                                           ; $5cbb: $00
    nop                                           ; $5cbc: $00
    nop                                           ; $5cbd: $00
    nop                                           ; $5cbe: $00
    nop                                           ; $5cbf: $00
    nop                                           ; $5cc0: $00
    nop                                           ; $5cc1: $00
    nop                                           ; $5cc2: $00
    nop                                           ; $5cc3: $00
    nop                                           ; $5cc4: $00
    nop                                           ; $5cc5: $00
    nop                                           ; $5cc6: $00
    nop                                           ; $5cc7: $00
    nop                                           ; $5cc8: $00
    nop                                           ; $5cc9: $00
    nop                                           ; $5cca: $00
    nop                                           ; $5ccb: $00
    nop                                           ; $5ccc: $00
    nop                                           ; $5ccd: $00
    nop                                           ; $5cce: $00
    nop                                           ; $5ccf: $00
    nop                                           ; $5cd0: $00
    nop                                           ; $5cd1: $00
    nop                                           ; $5cd2: $00
    nop                                           ; $5cd3: $00
    nop                                           ; $5cd4: $00
    nop                                           ; $5cd5: $00
    nop                                           ; $5cd6: $00
    nop                                           ; $5cd7: $00
    nop                                           ; $5cd8: $00
    nop                                           ; $5cd9: $00
    nop                                           ; $5cda: $00
    nop                                           ; $5cdb: $00
    nop                                           ; $5cdc: $00
    nop                                           ; $5cdd: $00
    nop                                           ; $5cde: $00
    nop                                           ; $5cdf: $00
    nop                                           ; $5ce0: $00
    nop                                           ; $5ce1: $00
    nop                                           ; $5ce2: $00
    nop                                           ; $5ce3: $00
    nop                                           ; $5ce4: $00
    nop                                           ; $5ce5: $00
    nop                                           ; $5ce6: $00
    nop                                           ; $5ce7: $00
    nop                                           ; $5ce8: $00
    nop                                           ; $5ce9: $00
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
    nop                                           ; $5cf8: $00
    nop                                           ; $5cf9: $00
    nop                                           ; $5cfa: $00
    nop                                           ; $5cfb: $00
    nop                                           ; $5cfc: $00
    nop                                           ; $5cfd: $00
    nop                                           ; $5cfe: $00
    nop                                           ; $5cff: $00
    nop                                           ; $5d00: $00
    nop                                           ; $5d01: $00
    nop                                           ; $5d02: $00
    nop                                           ; $5d03: $00
    nop                                           ; $5d04: $00
    nop                                           ; $5d05: $00
    nop                                           ; $5d06: $00
    nop                                           ; $5d07: $00
    nop                                           ; $5d08: $00
    nop                                           ; $5d09: $00
    nop                                           ; $5d0a: $00
    nop                                           ; $5d0b: $00
    nop                                           ; $5d0c: $00
    nop                                           ; $5d0d: $00
    nop                                           ; $5d0e: $00
    nop                                           ; $5d0f: $00
    nop                                           ; $5d10: $00
    nop                                           ; $5d11: $00
    nop                                           ; $5d12: $00
    nop                                           ; $5d13: $00
    nop                                           ; $5d14: $00
    nop                                           ; $5d15: $00
    nop                                           ; $5d16: $00
    nop                                           ; $5d17: $00
    nop                                           ; $5d18: $00
    nop                                           ; $5d19: $00
    nop                                           ; $5d1a: $00
    nop                                           ; $5d1b: $00
    nop                                           ; $5d1c: $00
    nop                                           ; $5d1d: $00
    nop                                           ; $5d1e: $00
    nop                                           ; $5d1f: $00
    nop                                           ; $5d20: $00
    nop                                           ; $5d21: $00
    nop                                           ; $5d22: $00
    nop                                           ; $5d23: $00
    nop                                           ; $5d24: $00
    nop                                           ; $5d25: $00
    nop                                           ; $5d26: $00
    nop                                           ; $5d27: $00
    nop                                           ; $5d28: $00
    nop                                           ; $5d29: $00
    nop                                           ; $5d2a: $00
    nop                                           ; $5d2b: $00
    nop                                           ; $5d2c: $00
    nop                                           ; $5d2d: $00
    nop                                           ; $5d2e: $00
    nop                                           ; $5d2f: $00
    nop                                           ; $5d30: $00
    nop                                           ; $5d31: $00
    nop                                           ; $5d32: $00
    nop                                           ; $5d33: $00
    nop                                           ; $5d34: $00
    nop                                           ; $5d35: $00
    nop                                           ; $5d36: $00
    nop                                           ; $5d37: $00
    nop                                           ; $5d38: $00
    nop                                           ; $5d39: $00
    nop                                           ; $5d3a: $00
    nop                                           ; $5d3b: $00
    nop                                           ; $5d3c: $00
    nop                                           ; $5d3d: $00
    nop                                           ; $5d3e: $00
    nop                                           ; $5d3f: $00
    nop                                           ; $5d40: $00
    nop                                           ; $5d41: $00
    nop                                           ; $5d42: $00
    nop                                           ; $5d43: $00
    nop                                           ; $5d44: $00
    nop                                           ; $5d45: $00
    nop                                           ; $5d46: $00
    nop                                           ; $5d47: $00
    nop                                           ; $5d48: $00
    nop                                           ; $5d49: $00
    nop                                           ; $5d4a: $00
    nop                                           ; $5d4b: $00
    nop                                           ; $5d4c: $00
    nop                                           ; $5d4d: $00
    nop                                           ; $5d4e: $00
    nop                                           ; $5d4f: $00
    nop                                           ; $5d50: $00
    nop                                           ; $5d51: $00
    nop                                           ; $5d52: $00
    nop                                           ; $5d53: $00
    nop                                           ; $5d54: $00
    nop                                           ; $5d55: $00
    nop                                           ; $5d56: $00
    nop                                           ; $5d57: $00
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
    cp $9b                                        ; $5e90: $fe $9b
    ld e, [hl]                                    ; $5e92: $5e
    bit 3, [hl]                                   ; $5e93: $cb $5e
    db $db                                        ; $5e95: $db
    ld h, d                                       ; $5e96: $62
    db $db                                        ; $5e97: $db
    ld h, h                                       ; $5e98: $64
    xor e                                         ; $5e99: $ab
    ld h, l                                       ; $5e9a: $65
    xor [hl]                                      ; $5e9b: $ae
    nop                                           ; $5e9c: $00
    ld e, a                                       ; $5e9d: $5f
    ld [hl+], a                                   ; $5e9e: $22
    inc l                                         ; $5e9f: $2c
    inc bc                                        ; $5ea0: $03
    inc d                                         ; $5ea1: $14
    ld bc, $7fff                                  ; $5ea2: $01 $ff $7f
    or b                                          ; $5ea5: $b0
    inc bc                                        ; $5ea6: $03
    inc l                                         ; $5ea7: $2c
    inc bc                                        ; $5ea8: $03
    inc d                                         ; $5ea9: $14
    ld bc, $7c8a                                  ; $5eaa: $01 $8a $7c
    sub h                                         ; $5ead: $94
    ld a, l                                       ; $5eae: $7d
    adc h                                         ; $5eaf: $8c
    nop                                           ; $5eb0: $00
    inc d                                         ; $5eb1: $14
    ld bc, $7fff                                  ; $5eb2: $01 $ff $7f
    inc l                                         ; $5eb5: $2c
    inc bc                                        ; $5eb6: $03
    inc d                                         ; $5eb7: $14
    ld bc, $046a                                  ; $5eb8: $01 $6a $04
    ld [hl], h                                    ; $5ebb: $74
    nop                                           ; $5ebc: $00
    ccf                                           ; $5ebd: $3f
    ld bc, $02bf                                  ; $5ebe: $01 $bf $02
    ld l, d                                       ; $5ec1: $6a
    inc b                                         ; $5ec2: $04
    ld [$0825], sp                                ; $5ec3: $08 $25 $08
    dec h                                         ; $5ec6: $25
    ld [$0825], sp                                ; $5ec7: $08 $25 $08
    dec h                                         ; $5eca: $25
    adc a                                         ; $5ecb: $8f
    jp $c33c                                      ; $5ecc: $c3 $3c $c3


    inc a                                         ; $5ecf: $3c
    db $fd                                        ; $5ed0: $fd
    ldh [$fe], a                                  ; $5ed1: $e0 $fe
    ld [c], a                                     ; $5ed3: $e2
    db $f4                                        ; $5ed4: $f4
    pop hl                                        ; $5ed5: $e1
    ld d, a                                       ; $5ed6: $57
    rst $38                                       ; $5ed7: $ff
    rst $38                                       ; $5ed8: $ff
    xor a                                         ; $5ed9: $af
    db $fc                                        ; $5eda: $fc
    ld a, [hl]                                    ; $5edb: $7e
    pop af                                        ; $5edc: $f1
    cp h                                          ; $5edd: $bc
    db $e3                                        ; $5ede: $e3
    ld a, h                                       ; $5edf: $7c
    rst $38                                       ; $5ee0: $ff
    jp $c3fc                                      ; $5ee1: $c3 $fc $c3


    db $e3                                        ; $5ee4: $e3
    sbc h                                         ; $5ee5: $9c
    jp $fbbc                                      ; $5ee6: $c3 $bc $fb


    rst $38                                       ; $5ee9: $ff
    rst $38                                       ; $5eea: $ff
    sbc $ff                                       ; $5eeb: $de $ff
    push af                                       ; $5eed: $f5
    rst $38                                       ; $5eee: $ff
    xor d                                         ; $5eef: $aa
    rst $38                                       ; $5ef0: $ff
    ld d, a                                       ; $5ef1: $57
    ld a, a                                       ; $5ef2: $7f
    rst $38                                       ; $5ef3: $ff
    cp a                                          ; $5ef4: $bf
    ld hl, sp-$01                                 ; $5ef5: $f8 $ff
    ldh [$f3], a                                  ; $5ef7: $e0 $f3
    adc h                                         ; $5ef9: $8c
    ld hl, sp-$1f                                 ; $5efa: $f8 $e1
    rst $38                                       ; $5efc: $ff
    ld a, h                                       ; $5efd: $7c
    db $e3                                        ; $5efe: $e3
    db $fc                                        ; $5eff: $fc
    add e                                         ; $5f00: $83
    db $fc                                        ; $5f01: $fc
    inc bc                                        ; $5f02: $03
    cp h                                          ; $5f03: $bc
    ld b, e                                       ; $5f04: $43
    cp $c4                                        ; $5f05: $fe $c4
    pop hl                                        ; $5f07: $e1
    rst $28                                       ; $5f08: $ef
    rst $38                                       ; $5f09: $ff
    rst $10                                       ; $5f0a: $d7
    ld a, a                                       ; $5f0b: $7f
    db $ed                                        ; $5f0c: $ed
    ld a, a                                       ; $5f0d: $7f
    rst $30                                       ; $5f0e: $f7
    rst $38                                       ; $5f0f: $ff
    ccf                                           ; $5f10: $3f
    ld l, e                                       ; $5f11: $6b
    cp a                                          ; $5f12: $bf
    halt                                          ; $5f13: $76
    sbc a                                         ; $5f14: $9f
    ei                                            ; $5f15: $fb
    rra                                           ; $5f16: $1f
    push af                                       ; $5f17: $f5
    rst $38                                       ; $5f18: $ff
    rra                                           ; $5f19: $1f
    ld a, [$dd0f]                                 ; $5f1a: $fa $0f $dd
    daa                                           ; $5f1d: $27
    ld a, $c7                                     ; $5f1e: $3e $c7
    ccf                                           ; $5f20: $3f
    rst $38                                       ; $5f21: $ff
    jp $c33e                                      ; $5f22: $c3 $3e $c3


    ccf                                           ; $5f25: $3f
    pop bc                                        ; $5f26: $c1
    jp $c33d                                      ; $5f27: $c3 $3d $c3


    ld a, a                                       ; $5f2a: $7f
    dec a                                         ; $5f2b: $3d
    db $ed                                        ; $5f2c: $ed
    rst $38                                       ; $5f2d: $ff
    db $d3                                        ; $5f2e: $d3
    inc a                                         ; $5f2f: $3c
    ld a, [hl]                                    ; $5f30: $7e
    add c                                         ; $5f31: $81
    and b                                         ; $5f32: $a0
    rst $20                                       ; $5f33: $e7
    rst $38                                       ; $5f34: $ff
    jp $e3bc                                      ; $5f35: $c3 $bc $e3


    sbc h                                         ; $5f38: $9c
    cp h                                          ; $5f39: $bc
    jp $c37c                                      ; $5f3a: $c3 $7c $c3


    push de                                       ; $5f3d: $d5
    cp h                                          ; $5f3e: $bc
    cp $e0                                        ; $5f3f: $fe $e0
    ld h, e                                       ; $5f41: $63
    and b                                         ; $5f42: $a0
    ldh [$57], a                                  ; $5f43: $e0 $57
    and h                                         ; $5f45: $a4
    ldh [$7d], a                                  ; $5f46: $e0 $7d
    rst $38                                       ; $5f48: $ff
    rst $28                                       ; $5f49: $ef
    db $d3                                        ; $5f4a: $d3
    rst $28                                       ; $5f4b: $ef
    rst $38                                       ; $5f4c: $ff
    nop                                           ; $5f4d: $00
    add b                                         ; $5f4e: $80
    db $e3                                        ; $5f4f: $e3
    cp e                                          ; $5f50: $bb
    db $f4                                        ; $5f51: $f4
    ld e, e                                       ; $5f52: $5b
    rst $38                                       ; $5f53: $ff
    db $f4                                        ; $5f54: $f4
    xor h                                         ; $5f55: $ac
    di                                            ; $5f56: $f3
    ld l, h                                       ; $5f57: $6c
    di                                            ; $5f58: $f3
    cp h                                          ; $5f59: $bc
    db $e3                                        ; $5f5a: $e3
    ld l, h                                       ; $5f5b: $6c
    rst $38                                       ; $5f5c: $ff
    di                                            ; $5f5d: $f3
    cp e                                          ; $5f5e: $bb
    db $f4                                        ; $5f5f: $f4
    db $db                                        ; $5f60: $db
    db $f4                                        ; $5f61: $f4
    cp l                                          ; $5f62: $bd
    jp $ffe7                                      ; $5f63: $c3 $e7 $ff


    rst $38                                       ; $5f66: $ff
    cp d                                          ; $5f67: $ba
    rst $38                                       ; $5f68: $ff
    ld d, l                                       ; $5f69: $55
    rst $38                                       ; $5f6a: $ff
    xor e                                         ; $5f6b: $ab
    rst $38                                       ; $5f6c: $ff
    cp $ff                                        ; $5f6d: $fe $ff
    rst $38                                       ; $5f6f: $ff
    rst $28                                       ; $5f70: $ef
    rst $38                                       ; $5f71: $ff
    rst $38                                       ; $5f72: $ff
    rst $38                                       ; $5f73: $ff
    db $db                                        ; $5f74: $db
    rst $38                                       ; $5f75: $ff
    ld l, a                                       ; $5f76: $6f
    cp $8e                                        ; $5f77: $fe $8e
    ldh [$af], a                                  ; $5f79: $e0 $af
    ld a, a                                       ; $5f7b: $7f
    or l                                          ; $5f7c: $b5
    ld a, a                                       ; $5f7d: $7f
    rst $28                                       ; $5f7e: $ef
    ld a, a                                       ; $5f7f: $7f
    ld d, a                                       ; $5f80: $57
    ld e, h                                       ; $5f81: $5c
    xor $e2                                       ; $5f82: $ee $e2
    db $fd                                        ; $5f84: $fd
    pop hl                                        ; $5f85: $e1
    db $dd                                        ; $5f86: $dd
    rst $38                                       ; $5f87: $ff
    ld [hl], a                                    ; $5f88: $77
    ld e, h                                       ; $5f89: $5c
    ldh [rHDMA5], a                               ; $5f8a: $e0 $55
    ldh [$e0], a                                  ; $5f8c: $e0 $e0
    rra                                           ; $5f8e: $1f
    xor a                                         ; $5f8f: $af
    rst $38                                       ; $5f90: $ff
    rst $18                                       ; $5f91: $df
    rst $38                                       ; $5f92: $ff
    or a                                          ; $5f93: $b7
    db $fc                                        ; $5f94: $fc
    ldh [$f8], a                                  ; $5f95: $e0 $f8
    push hl                                       ; $5f97: $e5
    rst $38                                       ; $5f98: $ff
    push hl                                       ; $5f99: $e5
    ld l, $de                                     ; $5f9a: $2e $de
    push hl                                       ; $5f9c: $e5
    ld e, a                                       ; $5f9d: $5f
    rst $38                                       ; $5f9e: $ff
    cp a                                          ; $5f9f: $bf
    cp [hl]                                       ; $5fa0: $be
    ldh [$bf], a                                  ; $5fa1: $e0 $bf
    ld hl, sp-$1a                                 ; $5fa3: $f8 $e6
    cp a                                          ; $5fa5: $bf
    db $e3                                        ; $5fa6: $e3
    jp z, $e1f8                                   ; $5fa7: $ca $f8 $e1

    ld e, a                                       ; $5faa: $5f
    ret z                                         ; $5fab: $c8

    ldh [$5f], a                                  ; $5fac: $e0 $5f
    ret nc                                        ; $5fae: $d0

    and $c7                                       ; $5faf: $e6 $c7
    push hl                                       ; $5fb1: $e5
    db $fd                                        ; $5fb2: $fd
    rst $38                                       ; $5fb3: $ff
    rst $30                                       ; $5fb4: $f7
    rst $30                                       ; $5fb5: $f7
    rst $38                                       ; $5fb6: $ff
    jp c, $c0fe                                   ; $5fb7: $da $fe $c0

    xor a                                         ; $5fba: $af
    cp $df                                        ; $5fbb: $fe $df
    ld hl, sp-$01                                 ; $5fbd: $f8 $ff
    ld l, a                                       ; $5fbf: $6f
    ld hl, sp-$21                                 ; $5fc0: $f8 $df
    ldh a, [$03]                                  ; $5fc2: $f0 $03
    rst $38                                       ; $5fc4: $ff
    ld [bc], a                                    ; $5fc5: $02
    rst $38                                       ; $5fc6: $ff
    rst $38                                       ; $5fc7: $ff
    rrca                                          ; $5fc8: $0f

Jump_053_5fc9:
    rst $38                                       ; $5fc9: $ff
    ld a, [de]                                    ; $5fca: $1a
    rst $38                                       ; $5fcb: $ff
    ld [hl], $fd                                  ; $5fcc: $36 $fd
    ld hl, $dffe                                  ; $5fce: $21 $fe $df
    ld hl, sp-$09                                 ; $5fd1: $f8 $f7
    xor l                                         ; $5fd3: $ad
    di                                            ; $5fd4: $f3
    rst $38                                       ; $5fd5: $ff
    ld h, d                                       ; $5fd6: $62
    ldh [rHDMA2], a                               ; $5fd7: $e0 $52
    db $fd                                        ; $5fd9: $fd
    rst $18                                       ; $5fda: $df
    ld d, l                                       ; $5fdb: $55
    xor d                                         ; $5fdc: $aa
    jr nz, @-$1f                                  ; $5fdd: $20 $df

    ld a, [bc]                                    ; $5fdf: $0a
    ld e, d                                       ; $5fe0: $5a
    ldh [$af], a                                  ; $5fe1: $e0 $af
    rst $38                                       ; $5fe3: $ff
    rst $38                                       ; $5fe4: $ff
    add e                                         ; $5fe5: $83
    rst $38                                       ; $5fe6: $ff
    ld c, l                                       ; $5fe7: $4d
    rst $30                                       ; $5fe8: $f7
    sub e                                         ; $5fe9: $93
    rst $28                                       ; $5fea: $ef
    ld c, a                                       ; $5feb: $4f
    rst $30                                       ; $5fec: $f7
    rst $38                                       ; $5fed: $ff
    and e                                         ; $5fee: $a3
    rst $38                                       ; $5fef: $ff
    ret                                           ; $5ff0: $c9


    rst $30                                       ; $5ff1: $f7
    and a                                         ; $5ff2: $a7
    ei                                            ; $5ff3: $fb
    ret                                           ; $5ff4: $c9


    rst $30                                       ; $5ff5: $f7
    db $fd                                        ; $5ff6: $fd
    or $be                                        ; $5ff7: $f6 $be
    ldh [$ea], a                                  ; $5ff9: $e0 $ea
    rst $38                                       ; $5ffb: $ff
    or b                                          ; $5ffc: $b0
    rst $38                                       ; $5ffd: $ff
    db $eb                                        ; $5ffe: $eb
    db $fc                                        ; $5fff: $fc
    rst $38                                       ; $6000: $ff
    ld b, c                                       ; $6001: $41
    cp $a8                                        ; $6002: $fe $a8
    rst $30                                       ; $6004: $f7
    ld b, $fb                                     ; $6005: $06 $fb
    db $dd                                        ; $6007: $dd
    sbc e                                         ; $6008: $9b
    rst $38                                       ; $6009: $ff
    sbc l                                         ; $600a: $9d
    ld c, a                                       ; $600b: $4f
    daa                                           ; $600c: $27
    rla                                           ; $600d: $17
    and e                                         ; $600e: $a3
    di                                            ; $600f: $f3
    db $db                                        ; $6010: $db
    pop hl                                        ; $6011: $e1
    rst $38                                       ; $6012: $ff
    xor $f1                                       ; $6013: $ee $f1
    or h                                          ; $6015: $b4
    ei                                            ; $6016: $fb
    reti                                          ; $6017: $d9


    rst $38                                       ; $6018: $ff
    jp c, Jump_053_579f                           ; $6019: $da $9f $57

    sbc l                                         ; $601c: $9d
    ld c, a                                       ; $601d: $4f
    ld h, $f0                                     ; $601e: $26 $f0
    ld [c], a                                     ; $6020: $e2
    ld l, [hl]                                    ; $6021: $6e
    ldh a, [$e0]                                  ; $6022: $f0 $e0
    ld sp, hl                                     ; $6024: $f9
    add b                                         ; $6025: $80
    xor $7f                                       ; $6026: $ee $7f
    rst $38                                       ; $6028: $ff
    nop                                           ; $6029: $00
    rst $18                                       ; $602a: $df
    nop                                           ; $602b: $00
    cp $00                                        ; $602c: $fe $00
    ei                                            ; $602e: $fb
    ld a, [$fde0]                                 ; $602f: $fa $e0 $fd
    ld a, a                                       ; $6032: $7f
    ld a, [$ffe0]                                 ; $6033: $fa $e0 $ff
    nop                                           ; $6036: $00
    xor [hl]                                      ; $6037: $ae
    nop                                           ; $6038: $00
    rst $30                                       ; $6039: $f7
    nop                                           ; $603a: $00
    rst $38                                       ; $603b: $ff
    db $dd                                        ; $603c: $dd
    nop                                           ; $603d: $00
    ld l, e                                       ; $603e: $6b
    nop                                           ; $603f: $00
    sub $00                                       ; $6040: $d6 $00
    cp e                                          ; $6042: $bb
    nop                                           ; $6043: $00
    rst $30                                       ; $6044: $f7
    rst $28                                       ; $6045: $ef
    nop                                           ; $6046: $00
    ld [hl], l                                    ; $6047: $75
    xor $e0                                       ; $6048: $ee $e0
    rst $38                                       ; $604a: $ff
    nop                                           ; $604b: $00
    db $db                                        ; $604c: $db
    inc h                                         ; $604d: $24
    rst $38                                       ; $604e: $ff
    cp $01                                        ; $604f: $fe $01
    push af                                       ; $6051: $f5
    ld a, [bc]                                    ; $6052: $0a
    jp c, $f425                                   ; $6053: $da $25 $f4

    dec bc                                        ; $6056: $0b
    rst $38                                       ; $6057: $ff
    add sp, $17                                   ; $6058: $e8 $17
    add sp, $17                                   ; $605a: $e8 $17
    or c                                          ; $605c: $b1
    ld c, [hl]                                    ; $605d: $4e
    jp hl                                         ; $605e: $e9


    ld d, $ff                                     ; $605f: $16 $ff
    jp nc, Jump_053_632c                          ; $6061: $d2 $2c $63

    sbc h                                         ; $6064: $9c
    ret nc                                        ; $6065: $d0

    ld l, $e9                                     ; $6066: $2e $e9
    ld d, $ff                                     ; $6068: $16 $ff
    or h                                          ; $606a: $b4
    ld c, e                                       ; $606b: $4b
    rst $28                                       ; $606c: $ef
    db $10                                        ; $606d: $10
    ld a, l                                       ; $606e: $7d
    add d                                         ; $606f: $82
    rst $10                                       ; $6070: $d7
    jr z, @+$01                                   ; $6071: $28 $ff

    xor d                                         ; $6073: $aa
    ld d, l                                       ; $6074: $55
    ld b, l                                       ; $6075: $45
    cp d                                          ; $6076: $ba
    add b                                         ; $6077: $80
    ld a, a                                       ; $6078: $7f
    jr @-$17                                      ; $6079: $18 $e7

    rst $38                                       ; $607b: $ff
    ld l, [hl]                                    ; $607c: $6e
    add c                                         ; $607d: $81
    ld a, [hl]                                    ; $607e: $7e
    cp l                                          ; $607f: $bd
    jr @-$17                                      ; $6080: $18 $e7

    add b                                         ; $6082: $80
    ld a, a                                       ; $6083: $7f
    rst $38                                       ; $6084: $ff
    ld b, l                                       ; $6085: $45
    cp d                                          ; $6086: $ba
    xor d                                         ; $6087: $aa
    ld d, l                                       ; $6088: $55
    rst $10                                       ; $6089: $d7
    jr z, jr_053_6109                             ; $608a: $28 $7d

    add d                                         ; $608c: $82
    rst $38                                       ; $608d: $ff
    rst $28                                       ; $608e: $ef
    db $10                                        ; $608f: $10
    ld e, a                                       ; $6090: $5f

jr_053_6091:
    add b                                         ; $6091: $80
    rla                                           ; $6092: $17
    ldh [$83], a                                  ; $6093: $e0 $83
    ld a, b                                       ; $6095: $78
    rst $38                                       ; $6096: $ff
    ld d, c                                       ; $6097: $51
    xor h                                         ; $6098: $ac
    xor e                                         ; $6099: $ab
    ld d, h                                       ; $609a: $54
    ldh a, [$0e]                                  ; $609b: $f0 $0e
    xor c                                         ; $609d: $a9
    ld d, [hl]                                    ; $609e: $56
    rst $38                                       ; $609f: $ff
    db $f4                                        ; $60a0: $f4
    dec bc                                        ; $60a1: $0b
    db $f4                                        ; $60a2: $f4
    dec bc                                        ; $60a3: $0b
    xor c                                         ; $60a4: $a9
    ld d, [hl]                                    ; $60a5: $56
    pop af                                        ; $60a6: $f1
    ld c, $ff                                     ; $60a7: $0e $ff
    xor d                                         ; $60a9: $aa
    ld d, h                                       ; $60aa: $54
    ld d, d                                       ; $60ab: $52
    xor h                                         ; $60ac: $ac
    add h                                         ; $60ad: $84
    ld a, b                                       ; $60ae: $78
    jr jr_053_6091                                ; $60af: $18 $e0

    rst $38                                       ; $60b1: $ff
    ld l, b                                       ; $60b2: $68
    add b                                         ; $60b3: $80
    ld a, a                                       ; $60b4: $7f
    cp a                                          ; $60b5: $bf
    rra                                           ; $60b6: $1f
    rst $28                                       ; $60b7: $ef
    add a                                         ; $60b8: $87
    ld a, a                                       ; $60b9: $7f
    cp a                                          ; $60ba: $bf
    ld d, e                                       ; $60bb: $53
    xor a                                         ; $60bc: $af
    xor e                                         ; $60bd: $ab
    ld d, l                                       ; $60be: $55
    pop af                                        ; $60bf: $f1
    rrca                                          ; $60c0: $0f
    ldh [$e1], a                                  ; $60c1: $e0 $e1
    ld d, a                                       ; $60c3: $57
    rst $38                                       ; $60c4: $ff
    nop                                           ; $60c5: $00
    adc [hl]                                      ; $60c6: $8e
    nop                                           ; $60c7: $00
    rla                                           ; $60c8: $17
    nop                                           ; $60c9: $00
    adc d                                         ; $60ca: $8a
    nop                                           ; $60cb: $00
    rlca                                          ; $60cc: $07
    rst $38                                       ; $60cd: $ff
    nop                                           ; $60ce: $00
    ld c, d                                       ; $60cf: $4a
    ld b, b                                       ; $60d0: $40
    dec b                                         ; $60d1: $05
    nop                                           ; $60d2: $00
    ld [bc], a                                    ; $60d3: $02
    nop                                           ; $60d4: $00
    sub b                                         ; $60d5: $90
    cp a                                          ; $60d6: $bf
    nop                                           ; $60d7: $00
    adc b                                         ; $60d8: $88
    nop                                           ; $60d9: $00
    ld de, $8001                                  ; $60da: $11 $01 $80
    db $fc                                        ; $60dd: $fc
    ldh [$c0], a                                  ; $60de: $e0 $c0
    rst $38                                       ; $60e0: $ff
    ld b, b                                       ; $60e1: $40
    ld de, $0201                                  ; $60e2: $11 $01 $02
    ld [bc], a                                    ; $60e5: $02
    ld b, l                                       ; $60e6: $45
    ld b, b                                       ; $60e7: $40
    ld [bc], a                                    ; $60e8: $02
    rst $38                                       ; $60e9: $ff
    nop                                           ; $60ea: $00
    ld b, b                                       ; $60eb: $40
    ld b, b                                       ; $60ec: $40
    and d                                         ; $60ed: $a2
    and b                                         ; $60ee: $a0
    ld b, b                                       ; $60ef: $40
    ld b, b                                       ; $60f0: $40
    and b                                         ; $60f1: $a0
    ld a, a                                       ; $60f2: $7f
    and b                                         ; $60f3: $a0
    ld d, l                                       ; $60f4: $55
    ld d, l                                       ; $60f5: $55
    ld [$41ea], a                                 ; $60f6: $ea $ea $41
    ld b, c                                       ; $60f9: $41
    db $ec                                        ; $60fa: $ec
    ldh [rIE], a                                  ; $60fb: $e0 $ff
    ld b, l                                       ; $60fd: $45
    inc hl                                        ; $60fe: $23
    inc hl                                        ; $60ff: $23
    ld b, l                                       ; $6100: $45
    ld b, l                                       ; $6101: $45
    xor e                                         ; $6102: $ab
    xor e                                         ; $6103: $ab
    ld d, a                                       ; $6104: $57
    rst $38                                       ; $6105: $ff
    ld d, a                                       ; $6106: $57
    rst $38                                       ; $6107: $ff
    rst $38                                       ; $6108: $ff

jr_053_6109:
    sub b                                         ; $6109: $90
    nop                                           ; $610a: $00
    adc c                                         ; $610b: $89
    nop                                           ; $610c: $00
    ld de, $00ff                                  ; $610d: $11 $ff $00
    add e                                         ; $6110: $83
    nop                                           ; $6111: $00
    ld [de], a                                    ; $6112: $12
    nop                                           ; $6113: $00
    rst $00                                       ; $6114: $c7
    ld b, b                                       ; $6115: $40
    dec e                                         ; $6116: $1d
    rst $38                                       ; $6117: $ff
    nop                                           ; $6118: $00
    ld [hl], a                                    ; $6119: $77
    nop                                           ; $611a: $00
    cp $ff                                        ; $611b: $fe $ff
    cp $fe                                        ; $611d: $fe $fe
    db $f4                                        ; $611f: $f4
    cp a                                          ; $6120: $bf
    ld a, [$f2f6]                                 ; $6121: $fa $f6 $f2
    pop af                                        ; $6124: $f1
    or $fe                                        ; $6125: $f6 $fe
    db $fc                                        ; $6127: $fc
    ldh [$f4], a                                  ; $6128: $e0 $f4
    rst $18                                       ; $612a: $df
    ld a, [$7fff]                                 ; $612b: $fa $ff $7f
    ccf                                           ; $612e: $3f
    ld a, a                                       ; $612f: $7f
    db $fc                                        ; $6130: $fc
    ldh [rIE], a                                  ; $6131: $e0 $ff
    rst $38                                       ; $6133: $ff
    rst $38                                       ; $6134: $ff
    ld a, a                                       ; $6135: $7f
    cpl                                           ; $6136: $2f
    rst $30                                       ; $6137: $f7
    db $eb                                        ; $6138: $eb
    ld h, a                                       ; $6139: $67
    inc hl                                        ; $613a: $23
    rst $28                                       ; $613b: $ef
    ld sp, hl                                     ; $613c: $f9
    rst $38                                       ; $613d: $ff
    cp $fe                                        ; $613e: $fe $fe
    cp $eb                                        ; $6140: $fe $eb
    or $ee                                        ; $6142: $f6 $ee
    and $e3                                       ; $6144: $e6 $e3
    dec sp                                        ; $6146: $3b
    xor $fe                                       ; $6147: $ee $fe
    db $fc                                        ; $6149: $fc
    ldh [$e8], a                                  ; $614a: $e0 $e8
    or $ff                                        ; $614c: $f6 $ff
    db $ec                                        ; $614e: $ec
    ldh [$fc], a                                  ; $614f: $e0 $fc
    ld [c], a                                     ; $6151: $e2
    rst $28                                       ; $6152: $ef
    ld b, a                                       ; $6153: $47
    inc de                                        ; $6154: $13
    rst $28                                       ; $6155: $ef
    rst $00                                       ; $6156: $c7
    ret c                                         ; $6157: $d8

    ldh [$f5], a                                  ; $6158: $e0 $f5
    ld a, [$fefc]                                 ; $615a: $fa $fc $fe
    cp l                                          ; $615d: $bd
    pop hl                                        ; $615e: $e1
    cp $dd                                        ; $615f: $fe $dd
    cp $f3                                        ; $6161: $fe $f3
    db $fc                                        ; $6163: $fc
    ld d, l                                       ; $6164: $55
    ld [$f2fb], a                                 ; $6165: $ea $fb $f2
    db $fd                                        ; $6168: $fd
    call nz, Call_000_3fe3                        ; $6169: $c4 $e3 $3f
    rst $38                                       ; $616c: $ff
    rst $30                                       ; $616d: $f7
    ld a, a                                       ; $616e: $7f
    ld a, $fc                                     ; $616f: $3e $fc
    ld c, h                                       ; $6171: $4c
    and b                                         ; $6172: $a0
    cp b                                          ; $6173: $b8
    ldh [rIE], a                                  ; $6174: $e0 $ff
    ld a, [$fdfa]                                 ; $6176: $fa $fa $fd
    db $fd                                        ; $6179: $fd
    cp $ef                                        ; $617a: $fe $ef
    db $fc                                        ; $617c: $fc
    db $fd                                        ; $617d: $fd
    ld a, [$32fc]                                 ; $617e: $fa $fc $32
    jp nz, $dfff                                  ; $6181: $c2 $ff $df

    cp a                                          ; $6184: $bf
    cp a                                          ; $6185: $bf
    ld a, a                                       ; $6186: $7f
    ld c, a                                       ; $6187: $4f

jr_053_6188:
    ccf                                           ; $6188: $3f
    rst $18                                       ; $6189: $df
    ccf                                           ; $618a: $3f
    sbc a                                         ; $618b: $9f
    db $e4                                        ; $618c: $e4
    ldh [$ef], a                                  ; $618d: $e0 $ef
    ld l, a                                       ; $618f: $6f
    rst $38                                       ; $6190: $ff
    ld e, a                                       ; $6191: $5f
    ccf                                           ; $6192: $3f
    cp $7f                                        ; $6193: $fe $7f
    pop hl                                        ; $6195: $e1
    db $fd                                        ; $6196: $fd
    cp $a6                                        ; $6197: $fe $a6
    and b                                         ; $6199: $a0
    db $fd                                        ; $619a: $fd
    cp $d8                                        ; $619b: $fe $d8
    ldh [rIE], a                                  ; $619d: $e0 $ff
    db $fc                                        ; $619f: $fc
    xor a                                         ; $61a0: $af
    sbc a                                         ; $61a1: $9f
    ld l, a                                       ; $61a2: $6f
    rra                                           ; $61a3: $1f
    or a                                          ; $61a4: $b7
    rst $00                                       ; $61a5: $c7
    ld a, a                                       ; $61a6: $7f
    rra                                           ; $61a7: $1f
    db $ec                                        ; $61a8: $ec
    and c                                         ; $61a9: $a1
    ld a, a                                       ; $61aa: $7f
    rst $08                                       ; $61ab: $cf
    ret c                                         ; $61ac: $d8

    ldh [$f9], a                                  ; $61ad: $e0 $f9
    db $fd                                        ; $61af: $fd
    cp $c8                                        ; $61b0: $fe $c8
    db $e3                                        ; $61b2: $e3
    cp $fe                                        ; $61b3: $fe $fe
    rst $28                                       ; $61b5: $ef
    cp $7e                                        ; $61b6: $fe $7e
    db $fd                                        ; $61b8: $fd
    rst $18                                       ; $61b9: $df
    or $ff                                        ; $61ba: $f6 $ff
    sbc a                                         ; $61bc: $9f
    rst $38                                       ; $61bd: $ff
    cpl                                           ; $61be: $2f
    ld a, d                                       ; $61bf: $7a
    and b                                         ; $61c0: $a0
    rst $18                                       ; $61c1: $df
    ccf                                           ; $61c2: $3f
    rst $18                                       ; $61c3: $df
    rst $20                                       ; $61c4: $e7
    sbc a                                         ; $61c5: $9f
    rst $28                                       ; $61c6: $ef
    rra                                           ; $61c7: $1f
    call $e2d8                                    ; $61c8: $cd $d8 $e2
    rst $08                                       ; $61cb: $cf
    rst $10                                       ; $61cc: $d7
    rst $38                                       ; $61cd: $ff
    db $e3                                        ; $61ce: $e3
    db $db                                        ; $61cf: $db
    add e                                         ; $61d0: $83
    cp e                                          ; $61d1: $bb
    ret                                           ; $61d2: $c9


    or c                                          ; $61d3: $b1
    pop hl                                        ; $61d4: $e1
    sub l                                         ; $61d5: $95
    rst $28                                       ; $61d6: $ef
    ld [hl], $00                                  ; $61d7: $36 $00
    and c                                         ; $61d9: $a1
    add c                                         ; $61da: $81
    ld l, a                                       ; $61db: $6f
    and c                                         ; $61dc: $a1
    rst $28                                       ; $61dd: $ef
    rst $08                                       ; $61de: $cf
    rst $08                                       ; $61df: $cf
    rst $38                                       ; $61e0: $ff
    rst $38                                       ; $61e1: $ff
    sub a                                         ; $61e2: $97
    and a                                         ; $61e3: $a7
    db $db                                        ; $61e4: $db
    and e                                         ; $61e5: $a3
    sbc a                                         ; $61e6: $9f
    db $e3                                        ; $61e7: $e3
    ccf                                           ; $61e8: $3f
    rst $38                                       ; $61e9: $ff
    ld b, e                                       ; $61ea: $43
    ei                                            ; $61eb: $fb
    ei                                            ; $61ec: $fb
    cp $fe                                        ; $61ed: $fe $fe
    ld a, a                                       ; $61ef: $7f
    ld a, [hl]                                    ; $61f0: $7e
    ld hl, sp-$01                                 ; $61f1: $f8 $ff
    ldh a, [$a6]                                  ; $61f3: $f0 $a6
    sbc d                                         ; $61f5: $9a
    pop hl                                        ; $61f6: $e1
    add c                                         ; $61f7: $81
    daa                                           ; $61f8: $27
    daa                                           ; $61f9: $27
    rst $38                                       ; $61fa: $ff
    rst $38                                       ; $61fb: $ff
    rst $38                                       ; $61fc: $ff
    sub c                                         ; $61fd: $91
    ld b, c                                       ; $61fe: $41
    ld b, d                                       ; $61ff: $42
    add b                                         ; $6200: $80
    db $e3                                        ; $6201: $e3
    jr nz, jr_053_6188                            ; $6202: $20 $84

    rst $30                                       ; $6204: $f7
    nop                                           ; $6205: $00
    or e                                          ; $6206: $b3
    or e                                          ; $6207: $b3
    adc [hl]                                      ; $6208: $8e
    ldh [$fe], a                                  ; $6209: $e0 $fe
    cp a                                          ; $620b: $bf
    cp a                                          ; $620c: $bf
    nop                                           ; $620d: $00
    nop                                           ; $620e: $00
    rst $38                                       ; $620f: $ff
    rst $38                                       ; $6210: $ff
    rst $38                                       ; $6211: $ff
    rst $38                                       ; $6212: $ff
    rst $38                                       ; $6213: $ff
    rst $38                                       ; $6214: $ff
    rst $38                                       ; $6215: $ff
    rst $38                                       ; $6216: $ff
    rst $38                                       ; $6217: $ff
    rst $38                                       ; $6218: $ff
    rst $38                                       ; $6219: $ff
    rst $38                                       ; $621a: $ff
    rst $38                                       ; $621b: $ff
    rst $38                                       ; $621c: $ff
    rst $38                                       ; $621d: $ff
    rst $38                                       ; $621e: $ff
    nop                                           ; $621f: $00
    rst $38                                       ; $6220: $ff
    rst $38                                       ; $6221: $ff
    rst $38                                       ; $6222: $ff
    rst $38                                       ; $6223: $ff
    rst $38                                       ; $6224: $ff
    rst $38                                       ; $6225: $ff
    rst $38                                       ; $6226: $ff
    rst $38                                       ; $6227: $ff
    rst $38                                       ; $6228: $ff
    rst $38                                       ; $6229: $ff
    rst $38                                       ; $622a: $ff
    rst $38                                       ; $622b: $ff
    rst $38                                       ; $622c: $ff
    rst $38                                       ; $622d: $ff
    rst $38                                       ; $622e: $ff
    rst $38                                       ; $622f: $ff
    nop                                           ; $6230: $00
    rst $38                                       ; $6231: $ff
    rst $38                                       ; $6232: $ff
    rst $38                                       ; $6233: $ff
    rst $38                                       ; $6234: $ff
    rst $38                                       ; $6235: $ff
    rst $38                                       ; $6236: $ff
    rst $38                                       ; $6237: $ff
    rst $38                                       ; $6238: $ff
    rst $38                                       ; $6239: $ff
    rst $38                                       ; $623a: $ff
    rst $38                                       ; $623b: $ff
    rst $38                                       ; $623c: $ff
    rst $38                                       ; $623d: $ff
    rst $38                                       ; $623e: $ff
    rst $38                                       ; $623f: $ff
    rst $38                                       ; $6240: $ff
    nop                                           ; $6241: $00
    rst $38                                       ; $6242: $ff
    rst $38                                       ; $6243: $ff
    rst $38                                       ; $6244: $ff
    rst $38                                       ; $6245: $ff
    rst $38                                       ; $6246: $ff
    rst $38                                       ; $6247: $ff
    rst $38                                       ; $6248: $ff
    rst $38                                       ; $6249: $ff
    rst $38                                       ; $624a: $ff
    rst $38                                       ; $624b: $ff
    rst $38                                       ; $624c: $ff
    rst $38                                       ; $624d: $ff
    rst $38                                       ; $624e: $ff
    rst $38                                       ; $624f: $ff
    rst $38                                       ; $6250: $ff
    rst $38                                       ; $6251: $ff
    nop                                           ; $6252: $00
    rst $38                                       ; $6253: $ff
    rst $38                                       ; $6254: $ff
    rst $38                                       ; $6255: $ff
    rst $38                                       ; $6256: $ff
    rst $38                                       ; $6257: $ff
    rst $38                                       ; $6258: $ff
    rst $38                                       ; $6259: $ff
    rst $38                                       ; $625a: $ff
    rst $38                                       ; $625b: $ff
    rst $38                                       ; $625c: $ff
    rst $38                                       ; $625d: $ff
    rst $38                                       ; $625e: $ff
    rst $38                                       ; $625f: $ff
    rst $38                                       ; $6260: $ff
    rst $38                                       ; $6261: $ff
    rst $38                                       ; $6262: $ff
    nop                                           ; $6263: $00
    rst $38                                       ; $6264: $ff
    rst $38                                       ; $6265: $ff
    rst $38                                       ; $6266: $ff
    rst $38                                       ; $6267: $ff
    rst $38                                       ; $6268: $ff
    rst $38                                       ; $6269: $ff
    rst $38                                       ; $626a: $ff
    rst $38                                       ; $626b: $ff
    rst $38                                       ; $626c: $ff
    rst $38                                       ; $626d: $ff
    rst $38                                       ; $626e: $ff
    rst $38                                       ; $626f: $ff
    rst $38                                       ; $6270: $ff
    rst $38                                       ; $6271: $ff
    rst $38                                       ; $6272: $ff
    rst $38                                       ; $6273: $ff
    nop                                           ; $6274: $00
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
    rst $38                                       ; $627f: $ff
    rst $38                                       ; $6280: $ff
    rst $38                                       ; $6281: $ff
    rst $38                                       ; $6282: $ff
    rst $38                                       ; $6283: $ff
    rst $38                                       ; $6284: $ff
    nop                                           ; $6285: $00
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
    rst $38                                       ; $6290: $ff
    rst $38                                       ; $6291: $ff
    rst $38                                       ; $6292: $ff
    rst $38                                       ; $6293: $ff
    rst $38                                       ; $6294: $ff
    rst $38                                       ; $6295: $ff
    nop                                           ; $6296: $00
    rst $38                                       ; $6297: $ff
    rst $38                                       ; $6298: $ff
    rst $38                                       ; $6299: $ff
    rst $38                                       ; $629a: $ff
    rst $38                                       ; $629b: $ff
    rst $38                                       ; $629c: $ff
    rst $38                                       ; $629d: $ff
    rst $38                                       ; $629e: $ff
    rst $38                                       ; $629f: $ff
    rst $38                                       ; $62a0: $ff
    rst $38                                       ; $62a1: $ff
    rst $38                                       ; $62a2: $ff
    rst $38                                       ; $62a3: $ff
    rst $38                                       ; $62a4: $ff
    rst $38                                       ; $62a5: $ff
    rst $38                                       ; $62a6: $ff
    nop                                           ; $62a7: $00
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
    rst $38                                       ; $62b2: $ff
    rst $38                                       ; $62b3: $ff
    rst $38                                       ; $62b4: $ff
    rst $38                                       ; $62b5: $ff
    rst $38                                       ; $62b6: $ff
    rst $38                                       ; $62b7: $ff
    nop                                           ; $62b8: $00
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
    rst $38                                       ; $62c3: $ff
    rst $38                                       ; $62c4: $ff
    rst $38                                       ; $62c5: $ff
    rst $38                                       ; $62c6: $ff
    rst $38                                       ; $62c7: $ff
    rst $38                                       ; $62c8: $ff
    nop                                           ; $62c9: $00
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
    rst $38                                       ; $62d4: $ff
    rst $38                                       ; $62d5: $ff
    rst $38                                       ; $62d6: $ff
    ldh [rP1], a                                  ; $62d7: $e0 $00
    nop                                           ; $62d9: $00
    nop                                           ; $62da: $00
    nop                                           ; $62db: $00
    nop                                           ; $62dc: $00
    nop                                           ; $62dd: $00
    nop                                           ; $62de: $00
    nop                                           ; $62df: $00
    nop                                           ; $62e0: $00
    nop                                           ; $62e1: $00
    nop                                           ; $62e2: $00
    nop                                           ; $62e3: $00
    nop                                           ; $62e4: $00
    nop                                           ; $62e5: $00
    nop                                           ; $62e6: $00
    nop                                           ; $62e7: $00
    nop                                           ; $62e8: $00
    nop                                           ; $62e9: $00
    nop                                           ; $62ea: $00
    nop                                           ; $62eb: $00
    nop                                           ; $62ec: $00
    nop                                           ; $62ed: $00
    nop                                           ; $62ee: $00
    nop                                           ; $62ef: $00
    nop                                           ; $62f0: $00
    nop                                           ; $62f1: $00
    nop                                           ; $62f2: $00
    nop                                           ; $62f3: $00
    nop                                           ; $62f4: $00
    nop                                           ; $62f5: $00
    nop                                           ; $62f6: $00
    nop                                           ; $62f7: $00
    nop                                           ; $62f8: $00
    nop                                           ; $62f9: $00
    nop                                           ; $62fa: $00
    nop                                           ; $62fb: $00
    nop                                           ; $62fc: $00
    nop                                           ; $62fd: $00
    nop                                           ; $62fe: $00
    nop                                           ; $62ff: $00
    nop                                           ; $6300: $00
    nop                                           ; $6301: $00
    nop                                           ; $6302: $00
    nop                                           ; $6303: $00
    nop                                           ; $6304: $00
    nop                                           ; $6305: $00
    nop                                           ; $6306: $00
    nop                                           ; $6307: $00
    nop                                           ; $6308: $00
    nop                                           ; $6309: $00
    nop                                           ; $630a: $00
    nop                                           ; $630b: $00
    nop                                           ; $630c: $00
    nop                                           ; $630d: $00
    nop                                           ; $630e: $00
    nop                                           ; $630f: $00
    nop                                           ; $6310: $00
    nop                                           ; $6311: $00
    nop                                           ; $6312: $00
    nop                                           ; $6313: $00
    nop                                           ; $6314: $00
    nop                                           ; $6315: $00
    nop                                           ; $6316: $00
    nop                                           ; $6317: $00
    nop                                           ; $6318: $00
    nop                                           ; $6319: $00
    nop                                           ; $631a: $00
    nop                                           ; $631b: $00
    nop                                           ; $631c: $00
    nop                                           ; $631d: $00
    nop                                           ; $631e: $00
    nop                                           ; $631f: $00
    nop                                           ; $6320: $00
    nop                                           ; $6321: $00
    nop                                           ; $6322: $00
    nop                                           ; $6323: $00
    nop                                           ; $6324: $00
    nop                                           ; $6325: $00
    nop                                           ; $6326: $00
    nop                                           ; $6327: $00
    nop                                           ; $6328: $00
    nop                                           ; $6329: $00
    nop                                           ; $632a: $00
    nop                                           ; $632b: $00

Jump_053_632c:
    nop                                           ; $632c: $00
    nop                                           ; $632d: $00
    nop                                           ; $632e: $00
    nop                                           ; $632f: $00
    nop                                           ; $6330: $00
    nop                                           ; $6331: $00
    nop                                           ; $6332: $00
    nop                                           ; $6333: $00
    nop                                           ; $6334: $00
    nop                                           ; $6335: $00
    nop                                           ; $6336: $00
    nop                                           ; $6337: $00
    nop                                           ; $6338: $00
    nop                                           ; $6339: $00
    nop                                           ; $633a: $00
    nop                                           ; $633b: $00
    nop                                           ; $633c: $00
    nop                                           ; $633d: $00
    nop                                           ; $633e: $00
    nop                                           ; $633f: $00
    nop                                           ; $6340: $00
    nop                                           ; $6341: $00
    nop                                           ; $6342: $00
    nop                                           ; $6343: $00
    nop                                           ; $6344: $00
    nop                                           ; $6345: $00
    nop                                           ; $6346: $00
    nop                                           ; $6347: $00
    nop                                           ; $6348: $00
    nop                                           ; $6349: $00
    nop                                           ; $634a: $00
    nop                                           ; $634b: $00
    nop                                           ; $634c: $00
    nop                                           ; $634d: $00
    nop                                           ; $634e: $00
    nop                                           ; $634f: $00
    nop                                           ; $6350: $00
    nop                                           ; $6351: $00
    nop                                           ; $6352: $00
    nop                                           ; $6353: $00
    nop                                           ; $6354: $00
    nop                                           ; $6355: $00
    nop                                           ; $6356: $00
    nop                                           ; $6357: $00
    nop                                           ; $6358: $00
    nop                                           ; $6359: $00
    nop                                           ; $635a: $00
    nop                                           ; $635b: $00
    nop                                           ; $635c: $00
    nop                                           ; $635d: $00
    nop                                           ; $635e: $00
    nop                                           ; $635f: $00
    nop                                           ; $6360: $00
    nop                                           ; $6361: $00
    nop                                           ; $6362: $00
    nop                                           ; $6363: $00
    nop                                           ; $6364: $00
    nop                                           ; $6365: $00
    nop                                           ; $6366: $00
    nop                                           ; $6367: $00
    nop                                           ; $6368: $00
    nop                                           ; $6369: $00
    nop                                           ; $636a: $00
    nop                                           ; $636b: $00
    nop                                           ; $636c: $00
    nop                                           ; $636d: $00
    nop                                           ; $636e: $00
    nop                                           ; $636f: $00
    nop                                           ; $6370: $00
    nop                                           ; $6371: $00
    nop                                           ; $6372: $00
    nop                                           ; $6373: $00
    nop                                           ; $6374: $00
    nop                                           ; $6375: $00
    nop                                           ; $6376: $00
    nop                                           ; $6377: $00
    nop                                           ; $6378: $00
    nop                                           ; $6379: $00
    nop                                           ; $637a: $00
    nop                                           ; $637b: $00
    nop                                           ; $637c: $00
    nop                                           ; $637d: $00
    nop                                           ; $637e: $00
    nop                                           ; $637f: $00
    nop                                           ; $6380: $00
    nop                                           ; $6381: $00
    nop                                           ; $6382: $00
    nop                                           ; $6383: $00
    nop                                           ; $6384: $00
    nop                                           ; $6385: $00
    nop                                           ; $6386: $00
    nop                                           ; $6387: $00
    nop                                           ; $6388: $00
    nop                                           ; $6389: $00
    nop                                           ; $638a: $00
    nop                                           ; $638b: $00
    nop                                           ; $638c: $00
    nop                                           ; $638d: $00
    nop                                           ; $638e: $00
    nop                                           ; $638f: $00
    nop                                           ; $6390: $00
    nop                                           ; $6391: $00
    nop                                           ; $6392: $00
    nop                                           ; $6393: $00
    nop                                           ; $6394: $00
    nop                                           ; $6395: $00
    nop                                           ; $6396: $00
    nop                                           ; $6397: $00
    nop                                           ; $6398: $00
    nop                                           ; $6399: $00
    nop                                           ; $639a: $00
    nop                                           ; $639b: $00
    nop                                           ; $639c: $00
    nop                                           ; $639d: $00
    nop                                           ; $639e: $00
    nop                                           ; $639f: $00
    nop                                           ; $63a0: $00
    nop                                           ; $63a1: $00
    nop                                           ; $63a2: $00
    nop                                           ; $63a3: $00
    nop                                           ; $63a4: $00
    nop                                           ; $63a5: $00
    nop                                           ; $63a6: $00
    nop                                           ; $63a7: $00
    nop                                           ; $63a8: $00
    nop                                           ; $63a9: $00
    nop                                           ; $63aa: $00
    nop                                           ; $63ab: $00
    nop                                           ; $63ac: $00
    nop                                           ; $63ad: $00
    nop                                           ; $63ae: $00
    nop                                           ; $63af: $00
    nop                                           ; $63b0: $00
    nop                                           ; $63b1: $00
    nop                                           ; $63b2: $00
    nop                                           ; $63b3: $00
    nop                                           ; $63b4: $00
    nop                                           ; $63b5: $00
    nop                                           ; $63b6: $00
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
    ld a, l                                       ; $64db: $7d
    ld h, [hl]                                    ; $64dc: $66
    rst $38                                       ; $64dd: $ff
    db $e4                                        ; $64de: $e4
    sbc c                                         ; $64df: $99
    sub [hl]                                      ; $64e0: $96
    sub [hl]                                      ; $64e1: $96
    ld h, [hl]                                    ; $64e2: $66
    sub [hl]                                      ; $64e3: $96
    di                                            ; $64e4: $f3
    ldh [$e3], a                                  ; $64e5: $e0 $e3
    ld de, $ff99                                  ; $64e7: $11 $99 $ff
    ldh [$f0], a                                  ; $64ea: $e0 $f0
    pop hl                                        ; $64ec: $e1
    rst $20                                       ; $64ed: $e7
    db $e4                                        ; $64ee: $e4
    ld l, c                                       ; $64ef: $69
    sub c                                         ; $64f0: $91
    ld l, c                                       ; $64f1: $69
    dec e                                         ; $64f2: $1d
    sub c                                         ; $64f3: $91
    di                                            ; $64f4: $f3
    ldh [$99], a                                  ; $64f5: $e0 $99
    ld h, [hl]                                    ; $64f7: $66
    ld l, c                                       ; $64f8: $69
    cp $e0                                        ; $64f9: $fe $e0
    rst $38                                       ; $64fb: $ff
    ldh a, [$d1]                                  ; $64fc: $f0 $d1
    db $e4                                        ; $64fe: $e4
    sbc b                                         ; $64ff: $98
    db $dd                                        ; $6500: $dd
    ld [c], a                                     ; $6501: $e2
    reti                                          ; $6502: $d9


    pop hl                                        ; $6503: $e1
    xor $e3                                       ; $6504: $ee $e3
    ld de, $c811                                  ; $6506: $11 $11 $c8
    pop hl                                        ; $6509: $e1
    call nz, Call_000_11e1                        ; $650a: $c4 $e1 $11
    ld c, h                                       ; $650d: $4c
    rst $38                                       ; $650e: $ff
    ldh [$ad], a                                  ; $650f: $e0 $ad
    pop hl                                        ; $6511: $e1
    sbc c                                         ; $6512: $99
    ld de, $e3fe                                  ; $6513: $11 $fe $e3
    ldh a, [$ef]                                  ; $6516: $f0 $ef
    sub c                                         ; $6518: $91
    and $e1                                       ; $6519: $e6 $e1
    db $fc                                        ; $651b: $fc
    ret c                                         ; $651c: $d8

    ld [c], a                                     ; $651d: $e2
    db $e3                                        ; $651e: $e3
    ld [c], a                                     ; $651f: $e2
    add hl, de                                    ; $6520: $19
    add hl, de                                    ; $6521: $19
    sbc c                                         ; $6522: $99
    add hl, de                                    ; $6523: $19
    sub [hl]                                      ; $6524: $96
    sbc c                                         ; $6525: $99
    ld a, a                                       ; $6526: $7f
    ld h, [hl]                                    ; $6527: $66
    ld de, $1117                                  ; $6528: $11 $17 $11
    ld [hl], a                                    ; $652b: $77
    rla                                           ; $652c: $17
    ld [hl], a                                    ; $652d: $77
    rst $38                                       ; $652e: $ff
    rst $38                                       ; $652f: $ff
    nop                                           ; $6530: $00
    rst $38                                       ; $6531: $ff
    rst $38                                       ; $6532: $ff
    rst $38                                       ; $6533: $ff
    rst $38                                       ; $6534: $ff
    rst $38                                       ; $6535: $ff
    rst $38                                       ; $6536: $ff
    rst $38                                       ; $6537: $ff
    rst $38                                       ; $6538: $ff
    rst $38                                       ; $6539: $ff
    rst $38                                       ; $653a: $ff
    rst $38                                       ; $653b: $ff
    rst $38                                       ; $653c: $ff
    rst $38                                       ; $653d: $ff
    rst $38                                       ; $653e: $ff
    ldh a, [$ef]                                  ; $653f: $f0 $ef
    ld bc, $ffff                                  ; $6541: $01 $ff $ff
    rst $38                                       ; $6544: $ff
    rst $38                                       ; $6545: $ff
    rst $38                                       ; $6546: $ff
    rst $38                                       ; $6547: $ff
    rst $38                                       ; $6548: $ff
    rst $38                                       ; $6549: $ff
    rst $38                                       ; $654a: $ff
    rst $38                                       ; $654b: $ff
    rst $38                                       ; $654c: $ff
    rst $38                                       ; $654d: $ff
    rst $38                                       ; $654e: $ff
    rst $38                                       ; $654f: $ff
    rst $38                                       ; $6550: $ff
    nop                                           ; $6551: $00
    rst $38                                       ; $6552: $ff
    rst $38                                       ; $6553: $ff
    rst $38                                       ; $6554: $ff
    rst $38                                       ; $6555: $ff
    rst $38                                       ; $6556: $ff
    rst $38                                       ; $6557: $ff
    rst $38                                       ; $6558: $ff
    rst $38                                       ; $6559: $ff
    rst $38                                       ; $655a: $ff
    rst $38                                       ; $655b: $ff
    rst $38                                       ; $655c: $ff
    rst $38                                       ; $655d: $ff
    rst $38                                       ; $655e: $ff
    rst $38                                       ; $655f: $ff
    rst $38                                       ; $6560: $ff
    rst $38                                       ; $6561: $ff
    nop                                           ; $6562: $00
    rst $38                                       ; $6563: $ff
    rst $38                                       ; $6564: $ff
    rst $38                                       ; $6565: $ff
    rst $38                                       ; $6566: $ff
    rst $38                                       ; $6567: $ff
    rst $38                                       ; $6568: $ff
    rst $38                                       ; $6569: $ff
    rst $38                                       ; $656a: $ff
    rst $38                                       ; $656b: $ff
    rst $38                                       ; $656c: $ff
    rst $38                                       ; $656d: $ff
    rst $38                                       ; $656e: $ff
    rst $38                                       ; $656f: $ff
    rst $38                                       ; $6570: $ff
    rst $38                                       ; $6571: $ff
    rst $38                                       ; $6572: $ff
    nop                                           ; $6573: $00
    rst $38                                       ; $6574: $ff
    rst $38                                       ; $6575: $ff
    rst $38                                       ; $6576: $ff
    rst $38                                       ; $6577: $ff
    rst $38                                       ; $6578: $ff
    rst $38                                       ; $6579: $ff
    rst $38                                       ; $657a: $ff
    rst $38                                       ; $657b: $ff
    rst $38                                       ; $657c: $ff
    rst $38                                       ; $657d: $ff
    rst $38                                       ; $657e: $ff
    rst $38                                       ; $657f: $ff
    rst $38                                       ; $6580: $ff
    rst $38                                       ; $6581: $ff
    rst $38                                       ; $6582: $ff
    rst $38                                       ; $6583: $ff
    nop                                           ; $6584: $00
    rst $38                                       ; $6585: $ff
    rst $38                                       ; $6586: $ff
    rst $38                                       ; $6587: $ff
    rst $38                                       ; $6588: $ff
    rst $38                                       ; $6589: $ff
    rst $38                                       ; $658a: $ff
    rst $38                                       ; $658b: $ff
    rst $38                                       ; $658c: $ff
    rst $38                                       ; $658d: $ff
    rst $38                                       ; $658e: $ff
    rst $38                                       ; $658f: $ff
    rst $38                                       ; $6590: $ff
    rst $38                                       ; $6591: $ff
    rst $38                                       ; $6592: $ff
    rst $38                                       ; $6593: $ff
    rst $38                                       ; $6594: $ff
    nop                                           ; $6595: $00
    rst $38                                       ; $6596: $ff
    rst $38                                       ; $6597: $ff
    rst $38                                       ; $6598: $ff
    rst $38                                       ; $6599: $ff
    rst $38                                       ; $659a: $ff
    rst $38                                       ; $659b: $ff
    rst $38                                       ; $659c: $ff
    rst $38                                       ; $659d: $ff
    rst $38                                       ; $659e: $ff
    rst $38                                       ; $659f: $ff
    rst $38                                       ; $65a0: $ff
    rst $38                                       ; $65a1: $ff
    rst $38                                       ; $65a2: $ff
    rst $38                                       ; $65a3: $ff
    rst $38                                       ; $65a4: $ff
    rst $38                                       ; $65a5: $ff
    ld bc, $00ff                                  ; $65a6: $01 $ff $00
    nop                                           ; $65a9: $00
    nop                                           ; $65aa: $00
    ld bc, $ff00                                  ; $65ab: $01 $00 $ff
    rst $38                                       ; $65ae: $ff
    rst $38                                       ; $65af: $ff
    rst $38                                       ; $65b0: $ff
    rst $38                                       ; $65b1: $ff
    rst $38                                       ; $65b2: $ff
    rst $38                                       ; $65b3: $ff
    rst $38                                       ; $65b4: $ff
    rst $38                                       ; $65b5: $ff
    rst $38                                       ; $65b6: $ff
    rst $38                                       ; $65b7: $ff
    rst $38                                       ; $65b8: $ff
    rst $38                                       ; $65b9: $ff
    rst $38                                       ; $65ba: $ff
    nop                                           ; $65bb: $00
    rst $38                                       ; $65bc: $ff
    rst $38                                       ; $65bd: $ff
    rst $38                                       ; $65be: $ff
    rst $38                                       ; $65bf: $ff
    rst $38                                       ; $65c0: $ff
    rst $38                                       ; $65c1: $ff
    rst $38                                       ; $65c2: $ff
    rst $38                                       ; $65c3: $ff
    rst $38                                       ; $65c4: $ff
    rst $38                                       ; $65c5: $ff
    rst $38                                       ; $65c6: $ff
    rst $38                                       ; $65c7: $ff
    rst $38                                       ; $65c8: $ff
    rst $38                                       ; $65c9: $ff
    rst $38                                       ; $65ca: $ff
    rst $38                                       ; $65cb: $ff
    nop                                           ; $65cc: $00
    rst $38                                       ; $65cd: $ff
    rst $38                                       ; $65ce: $ff
    rst $38                                       ; $65cf: $ff
    rst $38                                       ; $65d0: $ff
    rst $38                                       ; $65d1: $ff
    rst $38                                       ; $65d2: $ff
    rst $38                                       ; $65d3: $ff
    rst $38                                       ; $65d4: $ff
    rst $38                                       ; $65d5: $ff
    rst $38                                       ; $65d6: $ff
    rst $38                                       ; $65d7: $ff
    rst $38                                       ; $65d8: $ff
    rst $38                                       ; $65d9: $ff
    rst $38                                       ; $65da: $ff
    rst $38                                       ; $65db: $ff
    rst $38                                       ; $65dc: $ff
    nop                                           ; $65dd: $00
    rst $38                                       ; $65de: $ff
    rst $38                                       ; $65df: $ff
    rst $38                                       ; $65e0: $ff
    rst $38                                       ; $65e1: $ff
    rst $38                                       ; $65e2: $ff
    rst $38                                       ; $65e3: $ff
    rst $38                                       ; $65e4: $ff
    rst $38                                       ; $65e5: $ff
    rst $38                                       ; $65e6: $ff
    rst $38                                       ; $65e7: $ff
    rst $38                                       ; $65e8: $ff
    rst $38                                       ; $65e9: $ff
    rst $38                                       ; $65ea: $ff
    rst $38                                       ; $65eb: $ff
    rst $38                                       ; $65ec: $ff
    rst $38                                       ; $65ed: $ff
    nop                                           ; $65ee: $00
    rst $38                                       ; $65ef: $ff
    rst $38                                       ; $65f0: $ff
    rst $38                                       ; $65f1: $ff
    rst $38                                       ; $65f2: $ff
    rst $38                                       ; $65f3: $ff
    rst $38                                       ; $65f4: $ff
    rst $38                                       ; $65f5: $ff
    rst $38                                       ; $65f6: $ff
    rst $38                                       ; $65f7: $ff
    rst $38                                       ; $65f8: $ff
    rst $38                                       ; $65f9: $ff
    rst $38                                       ; $65fa: $ff
    rst $38                                       ; $65fb: $ff
    rst $38                                       ; $65fc: $ff
    rst $38                                       ; $65fd: $ff
    rst $38                                       ; $65fe: $ff
    nop                                           ; $65ff: $00
    rst $38                                       ; $6600: $ff
    rst $38                                       ; $6601: $ff
    rst $38                                       ; $6602: $ff
    rst $38                                       ; $6603: $ff
    rst $38                                       ; $6604: $ff
    rst $38                                       ; $6605: $ff
    rst $38                                       ; $6606: $ff
    rst $38                                       ; $6607: $ff
    rst $38                                       ; $6608: $ff
    rst $38                                       ; $6609: $ff
    rst $38                                       ; $660a: $ff
    rst $38                                       ; $660b: $ff
    rst $38                                       ; $660c: $ff
    rst $38                                       ; $660d: $ff
    rst $38                                       ; $660e: $ff
    rst $38                                       ; $660f: $ff
    nop                                           ; $6610: $00
    rst $38                                       ; $6611: $ff
    rst $38                                       ; $6612: $ff
    rst $38                                       ; $6613: $ff
    rst $38                                       ; $6614: $ff
    rst $38                                       ; $6615: $ff
    rst $38                                       ; $6616: $ff
    rst $38                                       ; $6617: $ff
    rst $38                                       ; $6618: $ff
    rst $38                                       ; $6619: $ff
    rst $38                                       ; $661a: $ff
    rst $38                                       ; $661b: $ff
    rst $38                                       ; $661c: $ff
    rst $38                                       ; $661d: $ff
    rst $38                                       ; $661e: $ff
    rst $38                                       ; $661f: $ff
    rst $38                                       ; $6620: $ff
    nop                                           ; $6621: $00
    rst $38                                       ; $6622: $ff
    rst $38                                       ; $6623: $ff
    rst $38                                       ; $6624: $ff
    rst $38                                       ; $6625: $ff
    rst $38                                       ; $6626: $ff
    rst $38                                       ; $6627: $ff
    rst $38                                       ; $6628: $ff
    rst $38                                       ; $6629: $ff
    rst $38                                       ; $662a: $ff
    rst $38                                       ; $662b: $ff
    rst $38                                       ; $662c: $ff
    db $e4                                        ; $662d: $e4
    nop                                           ; $662e: $00
    nop                                           ; $662f: $00
    nop                                           ; $6630: $00
    ld b, b                                       ; $6631: $40
    ld h, [hl]                                    ; $6632: $66
    ld b, b                                       ; $6633: $40
    ld l, [hl]                                    ; $6634: $6e
    nop                                           ; $6635: $00
    nop                                           ; $6636: $00
    nop                                           ; $6637: $00
    nop                                           ; $6638: $00
    nop                                           ; $6639: $00
    nop                                           ; $663a: $00
    nop                                           ; $663b: $00
    nop                                           ; $663c: $00
    nop                                           ; $663d: $00
    nop                                           ; $663e: $00
    nop                                           ; $663f: $00
    nop                                           ; $6640: $00
    nop                                           ; $6641: $00
    nop                                           ; $6642: $00
    nop                                           ; $6643: $00
    nop                                           ; $6644: $00
    nop                                           ; $6645: $00
    nop                                           ; $6646: $00
    nop                                           ; $6647: $00
    nop                                           ; $6648: $00
    nop                                           ; $6649: $00
    nop                                           ; $664a: $00
    nop                                           ; $664b: $00
    nop                                           ; $664c: $00
    nop                                           ; $664d: $00
    nop                                           ; $664e: $00
    nop                                           ; $664f: $00
    nop                                           ; $6650: $00
    nop                                           ; $6651: $00
    nop                                           ; $6652: $00
    nop                                           ; $6653: $00
    nop                                           ; $6654: $00
    nop                                           ; $6655: $00
    nop                                           ; $6656: $00
    nop                                           ; $6657: $00
    nop                                           ; $6658: $00
    nop                                           ; $6659: $00
    nop                                           ; $665a: $00
    nop                                           ; $665b: $00
    nop                                           ; $665c: $00
    nop                                           ; $665d: $00
    nop                                           ; $665e: $00
    nop                                           ; $665f: $00
    nop                                           ; $6660: $00
    nop                                           ; $6661: $00
    nop                                           ; $6662: $00
    nop                                           ; $6663: $00
    nop                                           ; $6664: $00
    nop                                           ; $6665: $00
    nop                                           ; $6666: $00
    nop                                           ; $6667: $00
    nop                                           ; $6668: $00
    nop                                           ; $6669: $00
    nop                                           ; $666a: $00
    nop                                           ; $666b: $00
    nop                                           ; $666c: $00
    nop                                           ; $666d: $00
    nop                                           ; $666e: $00
    nop                                           ; $666f: $00
    nop                                           ; $6670: $00
    nop                                           ; $6671: $00
    nop                                           ; $6672: $00
    nop                                           ; $6673: $00
    nop                                           ; $6674: $00
    nop                                           ; $6675: $00
    nop                                           ; $6676: $00
    nop                                           ; $6677: $00
    nop                                           ; $6678: $00
    nop                                           ; $6679: $00
    nop                                           ; $667a: $00
    nop                                           ; $667b: $00
    nop                                           ; $667c: $00
    nop                                           ; $667d: $00
    nop                                           ; $667e: $00
    nop                                           ; $667f: $00
    nop                                           ; $6680: $00
    nop                                           ; $6681: $00
    nop                                           ; $6682: $00
    nop                                           ; $6683: $00
    nop                                           ; $6684: $00
    nop                                           ; $6685: $00
    nop                                           ; $6686: $00
    nop                                           ; $6687: $00
    nop                                           ; $6688: $00
    nop                                           ; $6689: $00
    nop                                           ; $668a: $00
    nop                                           ; $668b: $00
    nop                                           ; $668c: $00
    nop                                           ; $668d: $00
    nop                                           ; $668e: $00
    nop                                           ; $668f: $00
    nop                                           ; $6690: $00
    nop                                           ; $6691: $00
    nop                                           ; $6692: $00
    nop                                           ; $6693: $00
    nop                                           ; $6694: $00
    nop                                           ; $6695: $00
    nop                                           ; $6696: $00
    nop                                           ; $6697: $00
    nop                                           ; $6698: $00
    nop                                           ; $6699: $00
    nop                                           ; $669a: $00
    nop                                           ; $669b: $00
    nop                                           ; $669c: $00
    nop                                           ; $669d: $00
    nop                                           ; $669e: $00
    nop                                           ; $669f: $00
    nop                                           ; $66a0: $00
    nop                                           ; $66a1: $00
    nop                                           ; $66a2: $00
    nop                                           ; $66a3: $00
    nop                                           ; $66a4: $00
    nop                                           ; $66a5: $00
    nop                                           ; $66a6: $00
    nop                                           ; $66a7: $00
    nop                                           ; $66a8: $00
    nop                                           ; $66a9: $00
    nop                                           ; $66aa: $00
    nop                                           ; $66ab: $00
    nop                                           ; $66ac: $00
    nop                                           ; $66ad: $00
    nop                                           ; $66ae: $00
    nop                                           ; $66af: $00
    nop                                           ; $66b0: $00
    nop                                           ; $66b1: $00
    nop                                           ; $66b2: $00
    nop                                           ; $66b3: $00
    nop                                           ; $66b4: $00
    nop                                           ; $66b5: $00
    nop                                           ; $66b6: $00
    nop                                           ; $66b7: $00
    nop                                           ; $66b8: $00
    nop                                           ; $66b9: $00
    nop                                           ; $66ba: $00
    nop                                           ; $66bb: $00
    nop                                           ; $66bc: $00
    nop                                           ; $66bd: $00
    nop                                           ; $66be: $00
    nop                                           ; $66bf: $00
    nop                                           ; $66c0: $00
    nop                                           ; $66c1: $00
    nop                                           ; $66c2: $00
    nop                                           ; $66c3: $00
    nop                                           ; $66c4: $00
    nop                                           ; $66c5: $00
    nop                                           ; $66c6: $00
    nop                                           ; $66c7: $00
    nop                                           ; $66c8: $00
    nop                                           ; $66c9: $00
    nop                                           ; $66ca: $00
    nop                                           ; $66cb: $00
    nop                                           ; $66cc: $00
    nop                                           ; $66cd: $00
    nop                                           ; $66ce: $00
    nop                                           ; $66cf: $00
    nop                                           ; $66d0: $00
    nop                                           ; $66d1: $00
    nop                                           ; $66d2: $00
    nop                                           ; $66d3: $00
    nop                                           ; $66d4: $00
    nop                                           ; $66d5: $00
    nop                                           ; $66d6: $00
    nop                                           ; $66d7: $00
    nop                                           ; $66d8: $00
    nop                                           ; $66d9: $00
    nop                                           ; $66da: $00
    nop                                           ; $66db: $00
    nop                                           ; $66dc: $00
    nop                                           ; $66dd: $00
    nop                                           ; $66de: $00
    nop                                           ; $66df: $00
    nop                                           ; $66e0: $00
    nop                                           ; $66e1: $00
    nop                                           ; $66e2: $00
    nop                                           ; $66e3: $00
    nop                                           ; $66e4: $00
    nop                                           ; $66e5: $00
    nop                                           ; $66e6: $00
    nop                                           ; $66e7: $00
    nop                                           ; $66e8: $00
    nop                                           ; $66e9: $00
    nop                                           ; $66ea: $00
    nop                                           ; $66eb: $00
    nop                                           ; $66ec: $00
    nop                                           ; $66ed: $00
    nop                                           ; $66ee: $00
    nop                                           ; $66ef: $00
    nop                                           ; $66f0: $00
    nop                                           ; $66f1: $00
    nop                                           ; $66f2: $00
    nop                                           ; $66f3: $00
    nop                                           ; $66f4: $00
    nop                                           ; $66f5: $00
    nop                                           ; $66f6: $00
    nop                                           ; $66f7: $00
    nop                                           ; $66f8: $00
    nop                                           ; $66f9: $00
    nop                                           ; $66fa: $00
    nop                                           ; $66fb: $00
    nop                                           ; $66fc: $00
    nop                                           ; $66fd: $00
    nop                                           ; $66fe: $00
    nop                                           ; $66ff: $00
    nop                                           ; $6700: $00
    nop                                           ; $6701: $00
    nop                                           ; $6702: $00
    nop                                           ; $6703: $00
    nop                                           ; $6704: $00
    nop                                           ; $6705: $00
    nop                                           ; $6706: $00
    nop                                           ; $6707: $00
    nop                                           ; $6708: $00
    nop                                           ; $6709: $00
    nop                                           ; $670a: $00
    nop                                           ; $670b: $00
    nop                                           ; $670c: $00
    nop                                           ; $670d: $00
    nop                                           ; $670e: $00
    nop                                           ; $670f: $00
    nop                                           ; $6710: $00
    nop                                           ; $6711: $00
    nop                                           ; $6712: $00
    nop                                           ; $6713: $00
    nop                                           ; $6714: $00
    nop                                           ; $6715: $00
    nop                                           ; $6716: $00
    nop                                           ; $6717: $00
    nop                                           ; $6718: $00
    nop                                           ; $6719: $00
    nop                                           ; $671a: $00
    nop                                           ; $671b: $00
    nop                                           ; $671c: $00
    nop                                           ; $671d: $00
    nop                                           ; $671e: $00
    nop                                           ; $671f: $00
    nop                                           ; $6720: $00
    nop                                           ; $6721: $00
    nop                                           ; $6722: $00
    nop                                           ; $6723: $00
    nop                                           ; $6724: $00
    nop                                           ; $6725: $00
    nop                                           ; $6726: $00
    nop                                           ; $6727: $00
    nop                                           ; $6728: $00
    nop                                           ; $6729: $00
    nop                                           ; $672a: $00
    nop                                           ; $672b: $00
    nop                                           ; $672c: $00
    nop                                           ; $672d: $00
    nop                                           ; $672e: $00
    nop                                           ; $672f: $00
    nop                                           ; $6730: $00
    nop                                           ; $6731: $00
    nop                                           ; $6732: $00
    nop                                           ; $6733: $00
    nop                                           ; $6734: $00
    nop                                           ; $6735: $00
    nop                                           ; $6736: $00
    nop                                           ; $6737: $00
    nop                                           ; $6738: $00
    nop                                           ; $6739: $00
    nop                                           ; $673a: $00
    nop                                           ; $673b: $00
    nop                                           ; $673c: $00
    nop                                           ; $673d: $00
    nop                                           ; $673e: $00

Call_053_673f:
    nop                                           ; $673f: $00
    nop                                           ; $6740: $00
    nop                                           ; $6741: $00
    nop                                           ; $6742: $00
    nop                                           ; $6743: $00
    nop                                           ; $6744: $00
    nop                                           ; $6745: $00
    nop                                           ; $6746: $00
    nop                                           ; $6747: $00
    nop                                           ; $6748: $00
    nop                                           ; $6749: $00
    nop                                           ; $674a: $00
    nop                                           ; $674b: $00
    nop                                           ; $674c: $00
    nop                                           ; $674d: $00
    nop                                           ; $674e: $00
    nop                                           ; $674f: $00
    nop                                           ; $6750: $00
    nop                                           ; $6751: $00
    nop                                           ; $6752: $00
    nop                                           ; $6753: $00
    nop                                           ; $6754: $00
    nop                                           ; $6755: $00
    nop                                           ; $6756: $00
    nop                                           ; $6757: $00
    nop                                           ; $6758: $00
    nop                                           ; $6759: $00
    nop                                           ; $675a: $00
    nop                                           ; $675b: $00
    nop                                           ; $675c: $00
    nop                                           ; $675d: $00
    nop                                           ; $675e: $00
    nop                                           ; $675f: $00
    nop                                           ; $6760: $00
    nop                                           ; $6761: $00
    nop                                           ; $6762: $00
    nop                                           ; $6763: $00
    nop                                           ; $6764: $00
    nop                                           ; $6765: $00
    nop                                           ; $6766: $00
    nop                                           ; $6767: $00
    nop                                           ; $6768: $00
    nop                                           ; $6769: $00
    nop                                           ; $676a: $00
    nop                                           ; $676b: $00
    nop                                           ; $676c: $00
    nop                                           ; $676d: $00
    nop                                           ; $676e: $00
    nop                                           ; $676f: $00
    nop                                           ; $6770: $00
    nop                                           ; $6771: $00
    nop                                           ; $6772: $00
    nop                                           ; $6773: $00
    nop                                           ; $6774: $00
    nop                                           ; $6775: $00
    nop                                           ; $6776: $00
    nop                                           ; $6777: $00
    nop                                           ; $6778: $00
    nop                                           ; $6779: $00
    nop                                           ; $677a: $00
    nop                                           ; $677b: $00
    nop                                           ; $677c: $00
    nop                                           ; $677d: $00
    nop                                           ; $677e: $00
    nop                                           ; $677f: $00
    nop                                           ; $6780: $00
    nop                                           ; $6781: $00
    nop                                           ; $6782: $00
    nop                                           ; $6783: $00
    nop                                           ; $6784: $00
    nop                                           ; $6785: $00
    nop                                           ; $6786: $00
    nop                                           ; $6787: $00
    nop                                           ; $6788: $00
    nop                                           ; $6789: $00
    nop                                           ; $678a: $00
    nop                                           ; $678b: $00
    nop                                           ; $678c: $00
    nop                                           ; $678d: $00
    nop                                           ; $678e: $00
    nop                                           ; $678f: $00
    nop                                           ; $6790: $00
    nop                                           ; $6791: $00
    nop                                           ; $6792: $00
    nop                                           ; $6793: $00
    nop                                           ; $6794: $00
    nop                                           ; $6795: $00
    nop                                           ; $6796: $00
    nop                                           ; $6797: $00
    nop                                           ; $6798: $00
    nop                                           ; $6799: $00
    nop                                           ; $679a: $00
    nop                                           ; $679b: $00
    nop                                           ; $679c: $00
    nop                                           ; $679d: $00
    nop                                           ; $679e: $00
    nop                                           ; $679f: $00
    nop                                           ; $67a0: $00
    nop                                           ; $67a1: $00
    nop                                           ; $67a2: $00
    nop                                           ; $67a3: $00
    nop                                           ; $67a4: $00
    nop                                           ; $67a5: $00
    nop                                           ; $67a6: $00
    nop                                           ; $67a7: $00
    nop                                           ; $67a8: $00
    nop                                           ; $67a9: $00
    nop                                           ; $67aa: $00
    nop                                           ; $67ab: $00
    nop                                           ; $67ac: $00
    nop                                           ; $67ad: $00
    nop                                           ; $67ae: $00
    nop                                           ; $67af: $00
    nop                                           ; $67b0: $00
    nop                                           ; $67b1: $00
    nop                                           ; $67b2: $00
    nop                                           ; $67b3: $00
    nop                                           ; $67b4: $00
    nop                                           ; $67b5: $00
    nop                                           ; $67b6: $00
    nop                                           ; $67b7: $00
    nop                                           ; $67b8: $00
    nop                                           ; $67b9: $00
    nop                                           ; $67ba: $00
    nop                                           ; $67bb: $00
    nop                                           ; $67bc: $00
    nop                                           ; $67bd: $00
    nop                                           ; $67be: $00
    nop                                           ; $67bf: $00
    nop                                           ; $67c0: $00
    nop                                           ; $67c1: $00
    nop                                           ; $67c2: $00
    nop                                           ; $67c3: $00
    nop                                           ; $67c4: $00
    nop                                           ; $67c5: $00
    nop                                           ; $67c6: $00
    nop                                           ; $67c7: $00
    nop                                           ; $67c8: $00
    nop                                           ; $67c9: $00
    nop                                           ; $67ca: $00
    nop                                           ; $67cb: $00
    nop                                           ; $67cc: $00
    nop                                           ; $67cd: $00
    nop                                           ; $67ce: $00
    nop                                           ; $67cf: $00
    nop                                           ; $67d0: $00
    nop                                           ; $67d1: $00
    nop                                           ; $67d2: $00
    nop                                           ; $67d3: $00
    nop                                           ; $67d4: $00
    nop                                           ; $67d5: $00
    nop                                           ; $67d6: $00
    nop                                           ; $67d7: $00
    nop                                           ; $67d8: $00
    nop                                           ; $67d9: $00
    nop                                           ; $67da: $00
    nop                                           ; $67db: $00
    nop                                           ; $67dc: $00
    nop                                           ; $67dd: $00
    nop                                           ; $67de: $00
    nop                                           ; $67df: $00
    nop                                           ; $67e0: $00
    nop                                           ; $67e1: $00
    nop                                           ; $67e2: $00
    nop                                           ; $67e3: $00
    nop                                           ; $67e4: $00
    nop                                           ; $67e5: $00
    nop                                           ; $67e6: $00
    nop                                           ; $67e7: $00
    nop                                           ; $67e8: $00
    nop                                           ; $67e9: $00
    nop                                           ; $67ea: $00
    nop                                           ; $67eb: $00
    nop                                           ; $67ec: $00
    nop                                           ; $67ed: $00
    nop                                           ; $67ee: $00
    nop                                           ; $67ef: $00
    nop                                           ; $67f0: $00
    nop                                           ; $67f1: $00
    nop                                           ; $67f2: $00
    nop                                           ; $67f3: $00
    nop                                           ; $67f4: $00
    nop                                           ; $67f5: $00
    nop                                           ; $67f6: $00
    nop                                           ; $67f7: $00
    nop                                           ; $67f8: $00
    nop                                           ; $67f9: $00
    nop                                           ; $67fa: $00
    nop                                           ; $67fb: $00
    nop                                           ; $67fc: $00

Call_053_67fd:
    nop                                           ; $67fd: $00
    nop                                           ; $67fe: $00
    nop                                           ; $67ff: $00
    nop                                           ; $6800: $00
    nop                                           ; $6801: $00
    nop                                           ; $6802: $00
    nop                                           ; $6803: $00
    nop                                           ; $6804: $00
    nop                                           ; $6805: $00
    nop                                           ; $6806: $00
    nop                                           ; $6807: $00
    nop                                           ; $6808: $00
    nop                                           ; $6809: $00
    nop                                           ; $680a: $00
    nop                                           ; $680b: $00
    nop                                           ; $680c: $00
    nop                                           ; $680d: $00
    nop                                           ; $680e: $00
    nop                                           ; $680f: $00
    nop                                           ; $6810: $00
    nop                                           ; $6811: $00
    nop                                           ; $6812: $00
    nop                                           ; $6813: $00
    nop                                           ; $6814: $00
    nop                                           ; $6815: $00
    nop                                           ; $6816: $00
    nop                                           ; $6817: $00
    nop                                           ; $6818: $00
    nop                                           ; $6819: $00
    nop                                           ; $681a: $00
    nop                                           ; $681b: $00
    nop                                           ; $681c: $00
    nop                                           ; $681d: $00
    nop                                           ; $681e: $00
    nop                                           ; $681f: $00
    nop                                           ; $6820: $00
    nop                                           ; $6821: $00
    nop                                           ; $6822: $00
    nop                                           ; $6823: $00
    nop                                           ; $6824: $00
    nop                                           ; $6825: $00
    nop                                           ; $6826: $00
    nop                                           ; $6827: $00
    nop                                           ; $6828: $00
    nop                                           ; $6829: $00
    nop                                           ; $682a: $00
    nop                                           ; $682b: $00
    nop                                           ; $682c: $00
    nop                                           ; $682d: $00
    nop                                           ; $682e: $00
    nop                                           ; $682f: $00
    nop                                           ; $6830: $00
    nop                                           ; $6831: $00
    nop                                           ; $6832: $00
    nop                                           ; $6833: $00
    nop                                           ; $6834: $00
    nop                                           ; $6835: $00
    nop                                           ; $6836: $00
    nop                                           ; $6837: $00
    nop                                           ; $6838: $00
    nop                                           ; $6839: $00
    nop                                           ; $683a: $00
    nop                                           ; $683b: $00
    nop                                           ; $683c: $00
    nop                                           ; $683d: $00
    nop                                           ; $683e: $00
    nop                                           ; $683f: $00
    nop                                           ; $6840: $00
    nop                                           ; $6841: $00
    nop                                           ; $6842: $00
    nop                                           ; $6843: $00
    nop                                           ; $6844: $00
    nop                                           ; $6845: $00
    nop                                           ; $6846: $00
    nop                                           ; $6847: $00
    nop                                           ; $6848: $00
    nop                                           ; $6849: $00
    nop                                           ; $684a: $00
    nop                                           ; $684b: $00
    nop                                           ; $684c: $00
    nop                                           ; $684d: $00
    nop                                           ; $684e: $00
    nop                                           ; $684f: $00
    nop                                           ; $6850: $00
    nop                                           ; $6851: $00
    nop                                           ; $6852: $00
    nop                                           ; $6853: $00
    nop                                           ; $6854: $00
    nop                                           ; $6855: $00
    nop                                           ; $6856: $00
    nop                                           ; $6857: $00
    nop                                           ; $6858: $00
    nop                                           ; $6859: $00
    nop                                           ; $685a: $00
    nop                                           ; $685b: $00
    nop                                           ; $685c: $00
    nop                                           ; $685d: $00
    nop                                           ; $685e: $00
    nop                                           ; $685f: $00
    nop                                           ; $6860: $00
    nop                                           ; $6861: $00
    nop                                           ; $6862: $00
    nop                                           ; $6863: $00
    nop                                           ; $6864: $00
    nop                                           ; $6865: $00
    nop                                           ; $6866: $00
    nop                                           ; $6867: $00
    nop                                           ; $6868: $00
    nop                                           ; $6869: $00
    nop                                           ; $686a: $00
    nop                                           ; $686b: $00
    nop                                           ; $686c: $00
    nop                                           ; $686d: $00
    nop                                           ; $686e: $00
    nop                                           ; $686f: $00
    nop                                           ; $6870: $00
    nop                                           ; $6871: $00
    nop                                           ; $6872: $00
    nop                                           ; $6873: $00
    nop                                           ; $6874: $00
    nop                                           ; $6875: $00
    nop                                           ; $6876: $00
    nop                                           ; $6877: $00
    nop                                           ; $6878: $00
    nop                                           ; $6879: $00
    nop                                           ; $687a: $00
    nop                                           ; $687b: $00
    nop                                           ; $687c: $00
    nop                                           ; $687d: $00
    nop                                           ; $687e: $00
    nop                                           ; $687f: $00
    nop                                           ; $6880: $00
    nop                                           ; $6881: $00
    nop                                           ; $6882: $00
    nop                                           ; $6883: $00
    nop                                           ; $6884: $00
    nop                                           ; $6885: $00
    nop                                           ; $6886: $00
    nop                                           ; $6887: $00
    nop                                           ; $6888: $00
    nop                                           ; $6889: $00
    nop                                           ; $688a: $00
    nop                                           ; $688b: $00
    nop                                           ; $688c: $00
    nop                                           ; $688d: $00
    nop                                           ; $688e: $00
    nop                                           ; $688f: $00
    nop                                           ; $6890: $00
    nop                                           ; $6891: $00
    nop                                           ; $6892: $00
    nop                                           ; $6893: $00
    nop                                           ; $6894: $00
    nop                                           ; $6895: $00
    nop                                           ; $6896: $00
    nop                                           ; $6897: $00
    nop                                           ; $6898: $00
    nop                                           ; $6899: $00
    nop                                           ; $689a: $00
    nop                                           ; $689b: $00
    nop                                           ; $689c: $00
    nop                                           ; $689d: $00
    nop                                           ; $689e: $00
    nop                                           ; $689f: $00
    nop                                           ; $68a0: $00
    nop                                           ; $68a1: $00
    nop                                           ; $68a2: $00
    nop                                           ; $68a3: $00
    nop                                           ; $68a4: $00
    nop                                           ; $68a5: $00
    nop                                           ; $68a6: $00
    nop                                           ; $68a7: $00
    nop                                           ; $68a8: $00
    nop                                           ; $68a9: $00
    nop                                           ; $68aa: $00
    nop                                           ; $68ab: $00
    nop                                           ; $68ac: $00
    nop                                           ; $68ad: $00
    nop                                           ; $68ae: $00
    nop                                           ; $68af: $00
    nop                                           ; $68b0: $00
    nop                                           ; $68b1: $00
    nop                                           ; $68b2: $00
    nop                                           ; $68b3: $00
    nop                                           ; $68b4: $00
    nop                                           ; $68b5: $00
    nop                                           ; $68b6: $00
    nop                                           ; $68b7: $00
    nop                                           ; $68b8: $00
    nop                                           ; $68b9: $00
    nop                                           ; $68ba: $00
    nop                                           ; $68bb: $00
    nop                                           ; $68bc: $00
    nop                                           ; $68bd: $00
    nop                                           ; $68be: $00
    nop                                           ; $68bf: $00
    nop                                           ; $68c0: $00
    nop                                           ; $68c1: $00
    nop                                           ; $68c2: $00
    nop                                           ; $68c3: $00
    nop                                           ; $68c4: $00
    nop                                           ; $68c5: $00
    nop                                           ; $68c6: $00
    nop                                           ; $68c7: $00
    nop                                           ; $68c8: $00
    nop                                           ; $68c9: $00
    nop                                           ; $68ca: $00
    nop                                           ; $68cb: $00
    nop                                           ; $68cc: $00
    nop                                           ; $68cd: $00
    nop                                           ; $68ce: $00
    nop                                           ; $68cf: $00
    nop                                           ; $68d0: $00
    nop                                           ; $68d1: $00
    nop                                           ; $68d2: $00
    nop                                           ; $68d3: $00
    nop                                           ; $68d4: $00
    nop                                           ; $68d5: $00
    nop                                           ; $68d6: $00
    nop                                           ; $68d7: $00
    nop                                           ; $68d8: $00
    nop                                           ; $68d9: $00
    nop                                           ; $68da: $00
    nop                                           ; $68db: $00
    nop                                           ; $68dc: $00
    nop                                           ; $68dd: $00
    nop                                           ; $68de: $00
    nop                                           ; $68df: $00
    nop                                           ; $68e0: $00
    nop                                           ; $68e1: $00
    nop                                           ; $68e2: $00
    nop                                           ; $68e3: $00
    nop                                           ; $68e4: $00
    nop                                           ; $68e5: $00
    nop                                           ; $68e6: $00
    nop                                           ; $68e7: $00
    nop                                           ; $68e8: $00
    nop                                           ; $68e9: $00
    nop                                           ; $68ea: $00
    nop                                           ; $68eb: $00
    nop                                           ; $68ec: $00
    nop                                           ; $68ed: $00
    nop                                           ; $68ee: $00
    nop                                           ; $68ef: $00
    nop                                           ; $68f0: $00
    nop                                           ; $68f1: $00
    nop                                           ; $68f2: $00
    nop                                           ; $68f3: $00
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
    nop                                           ; $6904: $00
    nop                                           ; $6905: $00
    nop                                           ; $6906: $00
    nop                                           ; $6907: $00
    nop                                           ; $6908: $00
    nop                                           ; $6909: $00
    nop                                           ; $690a: $00
    nop                                           ; $690b: $00
    nop                                           ; $690c: $00
    nop                                           ; $690d: $00
    nop                                           ; $690e: $00
    nop                                           ; $690f: $00
    nop                                           ; $6910: $00
    nop                                           ; $6911: $00
    nop                                           ; $6912: $00
    nop                                           ; $6913: $00
    nop                                           ; $6914: $00
    nop                                           ; $6915: $00
    nop                                           ; $6916: $00
    nop                                           ; $6917: $00
    nop                                           ; $6918: $00
    nop                                           ; $6919: $00
    nop                                           ; $691a: $00
    nop                                           ; $691b: $00
    nop                                           ; $691c: $00
    nop                                           ; $691d: $00
    nop                                           ; $691e: $00
    nop                                           ; $691f: $00
    nop                                           ; $6920: $00
    nop                                           ; $6921: $00
    nop                                           ; $6922: $00
    nop                                           ; $6923: $00
    nop                                           ; $6924: $00
    nop                                           ; $6925: $00
    nop                                           ; $6926: $00
    nop                                           ; $6927: $00
    nop                                           ; $6928: $00
    nop                                           ; $6929: $00
    nop                                           ; $692a: $00
    nop                                           ; $692b: $00
    nop                                           ; $692c: $00
    nop                                           ; $692d: $00
    nop                                           ; $692e: $00
    nop                                           ; $692f: $00
    nop                                           ; $6930: $00
    nop                                           ; $6931: $00
    nop                                           ; $6932: $00
    nop                                           ; $6933: $00
    nop                                           ; $6934: $00
    nop                                           ; $6935: $00
    nop                                           ; $6936: $00
    nop                                           ; $6937: $00
    nop                                           ; $6938: $00
    nop                                           ; $6939: $00
    nop                                           ; $693a: $00
    nop                                           ; $693b: $00
    nop                                           ; $693c: $00
    nop                                           ; $693d: $00
    nop                                           ; $693e: $00
    nop                                           ; $693f: $00
    nop                                           ; $6940: $00
    nop                                           ; $6941: $00
    nop                                           ; $6942: $00
    nop                                           ; $6943: $00
    nop                                           ; $6944: $00
    nop                                           ; $6945: $00
    nop                                           ; $6946: $00
    nop                                           ; $6947: $00
    nop                                           ; $6948: $00
    nop                                           ; $6949: $00
    nop                                           ; $694a: $00
    nop                                           ; $694b: $00
    nop                                           ; $694c: $00
    nop                                           ; $694d: $00
    nop                                           ; $694e: $00
    nop                                           ; $694f: $00
    nop                                           ; $6950: $00
    nop                                           ; $6951: $00
    nop                                           ; $6952: $00
    nop                                           ; $6953: $00
    nop                                           ; $6954: $00
    nop                                           ; $6955: $00
    nop                                           ; $6956: $00
    nop                                           ; $6957: $00
    nop                                           ; $6958: $00
    nop                                           ; $6959: $00
    nop                                           ; $695a: $00
    nop                                           ; $695b: $00
    nop                                           ; $695c: $00
    nop                                           ; $695d: $00
    nop                                           ; $695e: $00
    nop                                           ; $695f: $00
    nop                                           ; $6960: $00
    nop                                           ; $6961: $00
    nop                                           ; $6962: $00
    nop                                           ; $6963: $00
    nop                                           ; $6964: $00
    nop                                           ; $6965: $00
    nop                                           ; $6966: $00
    nop                                           ; $6967: $00
    nop                                           ; $6968: $00
    nop                                           ; $6969: $00
    nop                                           ; $696a: $00
    nop                                           ; $696b: $00
    nop                                           ; $696c: $00
    nop                                           ; $696d: $00
    nop                                           ; $696e: $00
    nop                                           ; $696f: $00
    nop                                           ; $6970: $00
    nop                                           ; $6971: $00
    nop                                           ; $6972: $00
    nop                                           ; $6973: $00
    nop                                           ; $6974: $00
    nop                                           ; $6975: $00
    nop                                           ; $6976: $00
    nop                                           ; $6977: $00
    nop                                           ; $6978: $00
    nop                                           ; $6979: $00
    nop                                           ; $697a: $00
    nop                                           ; $697b: $00
    nop                                           ; $697c: $00
    nop                                           ; $697d: $00
    nop                                           ; $697e: $00
    nop                                           ; $697f: $00
    nop                                           ; $6980: $00
    nop                                           ; $6981: $00
    nop                                           ; $6982: $00
    nop                                           ; $6983: $00
    nop                                           ; $6984: $00
    nop                                           ; $6985: $00
    nop                                           ; $6986: $00
    nop                                           ; $6987: $00
    nop                                           ; $6988: $00
    nop                                           ; $6989: $00
    nop                                           ; $698a: $00
    nop                                           ; $698b: $00
    nop                                           ; $698c: $00
    nop                                           ; $698d: $00
    nop                                           ; $698e: $00
    nop                                           ; $698f: $00
    nop                                           ; $6990: $00
    nop                                           ; $6991: $00
    nop                                           ; $6992: $00
    nop                                           ; $6993: $00
    nop                                           ; $6994: $00
    nop                                           ; $6995: $00
    nop                                           ; $6996: $00
    nop                                           ; $6997: $00
    nop                                           ; $6998: $00
    nop                                           ; $6999: $00
    nop                                           ; $699a: $00
    nop                                           ; $699b: $00
    nop                                           ; $699c: $00
    nop                                           ; $699d: $00
    nop                                           ; $699e: $00
    nop                                           ; $699f: $00
    nop                                           ; $69a0: $00
    nop                                           ; $69a1: $00
    nop                                           ; $69a2: $00
    nop                                           ; $69a3: $00
    nop                                           ; $69a4: $00
    nop                                           ; $69a5: $00
    nop                                           ; $69a6: $00
    nop                                           ; $69a7: $00
    nop                                           ; $69a8: $00
    nop                                           ; $69a9: $00
    nop                                           ; $69aa: $00
    nop                                           ; $69ab: $00
    nop                                           ; $69ac: $00
    nop                                           ; $69ad: $00
    nop                                           ; $69ae: $00
    nop                                           ; $69af: $00
    nop                                           ; $69b0: $00
    nop                                           ; $69b1: $00
    nop                                           ; $69b2: $00
    nop                                           ; $69b3: $00
    nop                                           ; $69b4: $00
    nop                                           ; $69b5: $00
    nop                                           ; $69b6: $00
    nop                                           ; $69b7: $00
    nop                                           ; $69b8: $00
    nop                                           ; $69b9: $00
    nop                                           ; $69ba: $00
    nop                                           ; $69bb: $00
    nop                                           ; $69bc: $00
    nop                                           ; $69bd: $00
    nop                                           ; $69be: $00
    nop                                           ; $69bf: $00
    nop                                           ; $69c0: $00
    nop                                           ; $69c1: $00
    nop                                           ; $69c2: $00
    nop                                           ; $69c3: $00
    nop                                           ; $69c4: $00
    nop                                           ; $69c5: $00
    nop                                           ; $69c6: $00
    nop                                           ; $69c7: $00
    nop                                           ; $69c8: $00
    nop                                           ; $69c9: $00
    nop                                           ; $69ca: $00
    nop                                           ; $69cb: $00
    nop                                           ; $69cc: $00
    nop                                           ; $69cd: $00
    nop                                           ; $69ce: $00
    nop                                           ; $69cf: $00
    nop                                           ; $69d0: $00
    nop                                           ; $69d1: $00
    nop                                           ; $69d2: $00
    nop                                           ; $69d3: $00
    nop                                           ; $69d4: $00
    nop                                           ; $69d5: $00
    nop                                           ; $69d6: $00
    nop                                           ; $69d7: $00
    nop                                           ; $69d8: $00
    nop                                           ; $69d9: $00
    nop                                           ; $69da: $00
    nop                                           ; $69db: $00
    nop                                           ; $69dc: $00
    nop                                           ; $69dd: $00
    nop                                           ; $69de: $00
    nop                                           ; $69df: $00
    nop                                           ; $69e0: $00
    nop                                           ; $69e1: $00
    nop                                           ; $69e2: $00
    nop                                           ; $69e3: $00
    nop                                           ; $69e4: $00
    nop                                           ; $69e5: $00
    nop                                           ; $69e6: $00
    nop                                           ; $69e7: $00
    nop                                           ; $69e8: $00
    nop                                           ; $69e9: $00
    nop                                           ; $69ea: $00
    nop                                           ; $69eb: $00
    nop                                           ; $69ec: $00
    nop                                           ; $69ed: $00
    nop                                           ; $69ee: $00
    nop                                           ; $69ef: $00
    nop                                           ; $69f0: $00
    nop                                           ; $69f1: $00
    nop                                           ; $69f2: $00
    nop                                           ; $69f3: $00
    nop                                           ; $69f4: $00
    nop                                           ; $69f5: $00
    nop                                           ; $69f6: $00
    nop                                           ; $69f7: $00
    nop                                           ; $69f8: $00
    nop                                           ; $69f9: $00
    nop                                           ; $69fa: $00
    nop                                           ; $69fb: $00
    nop                                           ; $69fc: $00
    nop                                           ; $69fd: $00
    nop                                           ; $69fe: $00
    nop                                           ; $69ff: $00
    nop                                           ; $6a00: $00
    nop                                           ; $6a01: $00
    nop                                           ; $6a02: $00
    nop                                           ; $6a03: $00
    nop                                           ; $6a04: $00
    nop                                           ; $6a05: $00
    nop                                           ; $6a06: $00
    nop                                           ; $6a07: $00
    nop                                           ; $6a08: $00
    nop                                           ; $6a09: $00
    nop                                           ; $6a0a: $00
    nop                                           ; $6a0b: $00
    nop                                           ; $6a0c: $00
    nop                                           ; $6a0d: $00
    nop                                           ; $6a0e: $00
    nop                                           ; $6a0f: $00
    nop                                           ; $6a10: $00
    nop                                           ; $6a11: $00
    nop                                           ; $6a12: $00
    nop                                           ; $6a13: $00
    nop                                           ; $6a14: $00
    nop                                           ; $6a15: $00
    nop                                           ; $6a16: $00
    nop                                           ; $6a17: $00
    nop                                           ; $6a18: $00
    nop                                           ; $6a19: $00
    nop                                           ; $6a1a: $00
    nop                                           ; $6a1b: $00
    nop                                           ; $6a1c: $00
    nop                                           ; $6a1d: $00
    nop                                           ; $6a1e: $00
    nop                                           ; $6a1f: $00
    nop                                           ; $6a20: $00
    nop                                           ; $6a21: $00
    nop                                           ; $6a22: $00
    nop                                           ; $6a23: $00
    nop                                           ; $6a24: $00
    nop                                           ; $6a25: $00
    nop                                           ; $6a26: $00
    nop                                           ; $6a27: $00
    nop                                           ; $6a28: $00
    nop                                           ; $6a29: $00
    nop                                           ; $6a2a: $00
    nop                                           ; $6a2b: $00
    nop                                           ; $6a2c: $00
    nop                                           ; $6a2d: $00
    nop                                           ; $6a2e: $00
    nop                                           ; $6a2f: $00
    nop                                           ; $6a30: $00
    nop                                           ; $6a31: $00
    nop                                           ; $6a32: $00
    nop                                           ; $6a33: $00
    nop                                           ; $6a34: $00
    nop                                           ; $6a35: $00
    nop                                           ; $6a36: $00
    nop                                           ; $6a37: $00
    nop                                           ; $6a38: $00
    nop                                           ; $6a39: $00
    nop                                           ; $6a3a: $00
    nop                                           ; $6a3b: $00
    nop                                           ; $6a3c: $00
    nop                                           ; $6a3d: $00
    nop                                           ; $6a3e: $00
    nop                                           ; $6a3f: $00
    nop                                           ; $6a40: $00
    nop                                           ; $6a41: $00
    nop                                           ; $6a42: $00
    nop                                           ; $6a43: $00
    nop                                           ; $6a44: $00
    nop                                           ; $6a45: $00
    nop                                           ; $6a46: $00
    nop                                           ; $6a47: $00
    nop                                           ; $6a48: $00
    nop                                           ; $6a49: $00
    nop                                           ; $6a4a: $00
    nop                                           ; $6a4b: $00
    nop                                           ; $6a4c: $00
    nop                                           ; $6a4d: $00
    nop                                           ; $6a4e: $00
    nop                                           ; $6a4f: $00
    nop                                           ; $6a50: $00
    nop                                           ; $6a51: $00
    nop                                           ; $6a52: $00
    nop                                           ; $6a53: $00
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
    nop                                           ; $6a5e: $00
    nop                                           ; $6a5f: $00
    nop                                           ; $6a60: $00
    nop                                           ; $6a61: $00
    nop                                           ; $6a62: $00
    nop                                           ; $6a63: $00
    nop                                           ; $6a64: $00
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
    nop                                           ; $6a71: $00
    nop                                           ; $6a72: $00
    nop                                           ; $6a73: $00
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
    nop                                           ; $6a80: $00
    nop                                           ; $6a81: $00
    nop                                           ; $6a82: $00
    nop                                           ; $6a83: $00
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
    nop                                           ; $6a8e: $00
    nop                                           ; $6a8f: $00
    nop                                           ; $6a90: $00
    nop                                           ; $6a91: $00
    nop                                           ; $6a92: $00
    nop                                           ; $6a93: $00
    nop                                           ; $6a94: $00
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
    nop                                           ; $6aa1: $00
    nop                                           ; $6aa2: $00
    nop                                           ; $6aa3: $00
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
    nop                                           ; $6ab0: $00
    nop                                           ; $6ab1: $00
    nop                                           ; $6ab2: $00
    nop                                           ; $6ab3: $00
    nop                                           ; $6ab4: $00
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
    nop                                           ; $6ac0: $00
    nop                                           ; $6ac1: $00
    nop                                           ; $6ac2: $00
    nop                                           ; $6ac3: $00
    nop                                           ; $6ac4: $00
    nop                                           ; $6ac5: $00
    nop                                           ; $6ac6: $00
    nop                                           ; $6ac7: $00
    nop                                           ; $6ac8: $00
    nop                                           ; $6ac9: $00
    nop                                           ; $6aca: $00
    nop                                           ; $6acb: $00
    nop                                           ; $6acc: $00
    nop                                           ; $6acd: $00
    nop                                           ; $6ace: $00
    nop                                           ; $6acf: $00
    nop                                           ; $6ad0: $00
    nop                                           ; $6ad1: $00
    nop                                           ; $6ad2: $00
    nop                                           ; $6ad3: $00
    nop                                           ; $6ad4: $00
    nop                                           ; $6ad5: $00
    nop                                           ; $6ad6: $00
    nop                                           ; $6ad7: $00
    nop                                           ; $6ad8: $00
    nop                                           ; $6ad9: $00
    nop                                           ; $6ada: $00
    nop                                           ; $6adb: $00
    nop                                           ; $6adc: $00
    nop                                           ; $6add: $00
    nop                                           ; $6ade: $00
    nop                                           ; $6adf: $00
    nop                                           ; $6ae0: $00
    nop                                           ; $6ae1: $00
    nop                                           ; $6ae2: $00
    nop                                           ; $6ae3: $00
    nop                                           ; $6ae4: $00
    nop                                           ; $6ae5: $00
    nop                                           ; $6ae6: $00
    nop                                           ; $6ae7: $00
    nop                                           ; $6ae8: $00
    nop                                           ; $6ae9: $00
    nop                                           ; $6aea: $00
    nop                                           ; $6aeb: $00
    nop                                           ; $6aec: $00
    nop                                           ; $6aed: $00
    nop                                           ; $6aee: $00
    nop                                           ; $6aef: $00
    nop                                           ; $6af0: $00
    nop                                           ; $6af1: $00
    nop                                           ; $6af2: $00
    nop                                           ; $6af3: $00
    nop                                           ; $6af4: $00
    nop                                           ; $6af5: $00
    nop                                           ; $6af6: $00
    nop                                           ; $6af7: $00
    nop                                           ; $6af8: $00
    nop                                           ; $6af9: $00
    nop                                           ; $6afa: $00
    nop                                           ; $6afb: $00
    nop                                           ; $6afc: $00
    nop                                           ; $6afd: $00
    nop                                           ; $6afe: $00
    nop                                           ; $6aff: $00
    nop                                           ; $6b00: $00
    nop                                           ; $6b01: $00
    nop                                           ; $6b02: $00
    nop                                           ; $6b03: $00
    nop                                           ; $6b04: $00
    nop                                           ; $6b05: $00
    nop                                           ; $6b06: $00
    nop                                           ; $6b07: $00
    nop                                           ; $6b08: $00
    nop                                           ; $6b09: $00
    nop                                           ; $6b0a: $00
    nop                                           ; $6b0b: $00
    nop                                           ; $6b0c: $00
    nop                                           ; $6b0d: $00
    nop                                           ; $6b0e: $00
    nop                                           ; $6b0f: $00
    nop                                           ; $6b10: $00
    nop                                           ; $6b11: $00
    nop                                           ; $6b12: $00
    nop                                           ; $6b13: $00
    nop                                           ; $6b14: $00
    nop                                           ; $6b15: $00
    nop                                           ; $6b16: $00
    nop                                           ; $6b17: $00
    nop                                           ; $6b18: $00
    nop                                           ; $6b19: $00
    nop                                           ; $6b1a: $00
    nop                                           ; $6b1b: $00
    nop                                           ; $6b1c: $00
    nop                                           ; $6b1d: $00
    nop                                           ; $6b1e: $00
    nop                                           ; $6b1f: $00
    nop                                           ; $6b20: $00
    nop                                           ; $6b21: $00
    nop                                           ; $6b22: $00
    nop                                           ; $6b23: $00
    nop                                           ; $6b24: $00
    nop                                           ; $6b25: $00
    nop                                           ; $6b26: $00
    nop                                           ; $6b27: $00
    nop                                           ; $6b28: $00
    nop                                           ; $6b29: $00
    nop                                           ; $6b2a: $00
    nop                                           ; $6b2b: $00
    nop                                           ; $6b2c: $00

Jump_053_6b2d:
    nop                                           ; $6b2d: $00
    nop                                           ; $6b2e: $00
    nop                                           ; $6b2f: $00
    nop                                           ; $6b30: $00
    nop                                           ; $6b31: $00
    nop                                           ; $6b32: $00
    nop                                           ; $6b33: $00
    nop                                           ; $6b34: $00
    nop                                           ; $6b35: $00
    nop                                           ; $6b36: $00
    nop                                           ; $6b37: $00
    nop                                           ; $6b38: $00
    nop                                           ; $6b39: $00
    nop                                           ; $6b3a: $00
    nop                                           ; $6b3b: $00
    nop                                           ; $6b3c: $00
    nop                                           ; $6b3d: $00
    nop                                           ; $6b3e: $00
    nop                                           ; $6b3f: $00
    nop                                           ; $6b40: $00
    nop                                           ; $6b41: $00
    nop                                           ; $6b42: $00
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
    nop                                           ; $6b50: $00
    nop                                           ; $6b51: $00
    nop                                           ; $6b52: $00
    nop                                           ; $6b53: $00
    nop                                           ; $6b54: $00
    nop                                           ; $6b55: $00
    nop                                           ; $6b56: $00
    nop                                           ; $6b57: $00
    nop                                           ; $6b58: $00
    nop                                           ; $6b59: $00
    nop                                           ; $6b5a: $00
    nop                                           ; $6b5b: $00
    nop                                           ; $6b5c: $00
    nop                                           ; $6b5d: $00
    nop                                           ; $6b5e: $00
    nop                                           ; $6b5f: $00
    nop                                           ; $6b60: $00
    nop                                           ; $6b61: $00
    nop                                           ; $6b62: $00
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
    nop                                           ; $6b70: $00
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
    nop                                           ; $6b80: $00
    nop                                           ; $6b81: $00
    nop                                           ; $6b82: $00
    nop                                           ; $6b83: $00
    nop                                           ; $6b84: $00
    nop                                           ; $6b85: $00
    nop                                           ; $6b86: $00
    nop                                           ; $6b87: $00
    nop                                           ; $6b88: $00
    nop                                           ; $6b89: $00
    nop                                           ; $6b8a: $00
    nop                                           ; $6b8b: $00
    nop                                           ; $6b8c: $00
    nop                                           ; $6b8d: $00
    nop                                           ; $6b8e: $00
    nop                                           ; $6b8f: $00
    nop                                           ; $6b90: $00
    nop                                           ; $6b91: $00
    nop                                           ; $6b92: $00
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
    nop                                           ; $6ba0: $00
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
    nop                                           ; $6bb0: $00
    nop                                           ; $6bb1: $00
    nop                                           ; $6bb2: $00
    nop                                           ; $6bb3: $00
    nop                                           ; $6bb4: $00
    nop                                           ; $6bb5: $00
    nop                                           ; $6bb6: $00
    nop                                           ; $6bb7: $00
    nop                                           ; $6bb8: $00
    nop                                           ; $6bb9: $00
    nop                                           ; $6bba: $00
    nop                                           ; $6bbb: $00
    nop                                           ; $6bbc: $00
    nop                                           ; $6bbd: $00
    nop                                           ; $6bbe: $00
    nop                                           ; $6bbf: $00
    nop                                           ; $6bc0: $00
    nop                                           ; $6bc1: $00
    nop                                           ; $6bc2: $00
    nop                                           ; $6bc3: $00
    nop                                           ; $6bc4: $00
    nop                                           ; $6bc5: $00
    nop                                           ; $6bc6: $00
    nop                                           ; $6bc7: $00
    nop                                           ; $6bc8: $00
    nop                                           ; $6bc9: $00
    nop                                           ; $6bca: $00
    nop                                           ; $6bcb: $00
    nop                                           ; $6bcc: $00
    nop                                           ; $6bcd: $00
    nop                                           ; $6bce: $00
    nop                                           ; $6bcf: $00
    nop                                           ; $6bd0: $00
    nop                                           ; $6bd1: $00
    nop                                           ; $6bd2: $00
    nop                                           ; $6bd3: $00
    nop                                           ; $6bd4: $00
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
    nop                                           ; $6be0: $00
    nop                                           ; $6be1: $00
    nop                                           ; $6be2: $00
    nop                                           ; $6be3: $00
    nop                                           ; $6be4: $00
    nop                                           ; $6be5: $00
    nop                                           ; $6be6: $00
    nop                                           ; $6be7: $00
    nop                                           ; $6be8: $00
    nop                                           ; $6be9: $00
    nop                                           ; $6bea: $00
    nop                                           ; $6beb: $00
    nop                                           ; $6bec: $00
    nop                                           ; $6bed: $00
    nop                                           ; $6bee: $00
    nop                                           ; $6bef: $00
    nop                                           ; $6bf0: $00
    nop                                           ; $6bf1: $00
    nop                                           ; $6bf2: $00
    nop                                           ; $6bf3: $00
    nop                                           ; $6bf4: $00
    nop                                           ; $6bf5: $00
    nop                                           ; $6bf6: $00
    nop                                           ; $6bf7: $00
    nop                                           ; $6bf8: $00
    nop                                           ; $6bf9: $00
    nop                                           ; $6bfa: $00
    nop                                           ; $6bfb: $00
    nop                                           ; $6bfc: $00
    nop                                           ; $6bfd: $00
    nop                                           ; $6bfe: $00
    nop                                           ; $6bff: $00
    nop                                           ; $6c00: $00
    nop                                           ; $6c01: $00
    nop                                           ; $6c02: $00
    nop                                           ; $6c03: $00
    nop                                           ; $6c04: $00
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
    nop                                           ; $6c10: $00
    nop                                           ; $6c11: $00
    nop                                           ; $6c12: $00
    nop                                           ; $6c13: $00
    nop                                           ; $6c14: $00
    nop                                           ; $6c15: $00
    nop                                           ; $6c16: $00
    nop                                           ; $6c17: $00
    nop                                           ; $6c18: $00
    nop                                           ; $6c19: $00
    nop                                           ; $6c1a: $00
    nop                                           ; $6c1b: $00
    nop                                           ; $6c1c: $00
    nop                                           ; $6c1d: $00
    nop                                           ; $6c1e: $00
    nop                                           ; $6c1f: $00
    nop                                           ; $6c20: $00
    nop                                           ; $6c21: $00
    nop                                           ; $6c22: $00
    nop                                           ; $6c23: $00
    nop                                           ; $6c24: $00
    nop                                           ; $6c25: $00
    nop                                           ; $6c26: $00
    nop                                           ; $6c27: $00
    nop                                           ; $6c28: $00
    nop                                           ; $6c29: $00
    nop                                           ; $6c2a: $00
    nop                                           ; $6c2b: $00
    nop                                           ; $6c2c: $00
    nop                                           ; $6c2d: $00
    nop                                           ; $6c2e: $00
    nop                                           ; $6c2f: $00
    nop                                           ; $6c30: $00
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
    nop                                           ; $6c44: $00
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
    nop                                           ; $6c50: $00
    nop                                           ; $6c51: $00
    nop                                           ; $6c52: $00
    nop                                           ; $6c53: $00
    nop                                           ; $6c54: $00
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
    nop                                           ; $6c74: $00
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
    nop                                           ; $6c80: $00
    nop                                           ; $6c81: $00
    nop                                           ; $6c82: $00
    nop                                           ; $6c83: $00
    nop                                           ; $6c84: $00
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
    nop                                           ; $6c92: $00
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
    nop                                           ; $6ca0: $00
    nop                                           ; $6ca1: $00
    nop                                           ; $6ca2: $00
    nop                                           ; $6ca3: $00
    nop                                           ; $6ca4: $00
    nop                                           ; $6ca5: $00
    nop                                           ; $6ca6: $00
    nop                                           ; $6ca7: $00
    nop                                           ; $6ca8: $00
    nop                                           ; $6ca9: $00
    nop                                           ; $6caa: $00
    nop                                           ; $6cab: $00
    nop                                           ; $6cac: $00
    nop                                           ; $6cad: $00
    nop                                           ; $6cae: $00
    nop                                           ; $6caf: $00
    nop                                           ; $6cb0: $00
    nop                                           ; $6cb1: $00
    nop                                           ; $6cb2: $00
    nop                                           ; $6cb3: $00
    nop                                           ; $6cb4: $00
    nop                                           ; $6cb5: $00
    nop                                           ; $6cb6: $00
    nop                                           ; $6cb7: $00
    nop                                           ; $6cb8: $00
    nop                                           ; $6cb9: $00
    nop                                           ; $6cba: $00
    nop                                           ; $6cbb: $00
    nop                                           ; $6cbc: $00
    nop                                           ; $6cbd: $00
    nop                                           ; $6cbe: $00
    nop                                           ; $6cbf: $00
    nop                                           ; $6cc0: $00
    nop                                           ; $6cc1: $00
    nop                                           ; $6cc2: $00
    nop                                           ; $6cc3: $00
    nop                                           ; $6cc4: $00
    nop                                           ; $6cc5: $00
    nop                                           ; $6cc6: $00
    nop                                           ; $6cc7: $00
    nop                                           ; $6cc8: $00
    nop                                           ; $6cc9: $00
    nop                                           ; $6cca: $00
    nop                                           ; $6ccb: $00
    nop                                           ; $6ccc: $00
    nop                                           ; $6ccd: $00
    nop                                           ; $6cce: $00
    nop                                           ; $6ccf: $00
    nop                                           ; $6cd0: $00
    nop                                           ; $6cd1: $00
    nop                                           ; $6cd2: $00
    nop                                           ; $6cd3: $00
    nop                                           ; $6cd4: $00
    nop                                           ; $6cd5: $00
    nop                                           ; $6cd6: $00
    nop                                           ; $6cd7: $00
    nop                                           ; $6cd8: $00
    nop                                           ; $6cd9: $00
    nop                                           ; $6cda: $00
    nop                                           ; $6cdb: $00
    nop                                           ; $6cdc: $00
    nop                                           ; $6cdd: $00
    nop                                           ; $6cde: $00
    nop                                           ; $6cdf: $00
    nop                                           ; $6ce0: $00
    nop                                           ; $6ce1: $00
    nop                                           ; $6ce2: $00
    nop                                           ; $6ce3: $00
    nop                                           ; $6ce4: $00
    nop                                           ; $6ce5: $00
    nop                                           ; $6ce6: $00
    nop                                           ; $6ce7: $00
    nop                                           ; $6ce8: $00
    nop                                           ; $6ce9: $00
    nop                                           ; $6cea: $00
    nop                                           ; $6ceb: $00
    nop                                           ; $6cec: $00
    nop                                           ; $6ced: $00
    nop                                           ; $6cee: $00
    nop                                           ; $6cef: $00
    nop                                           ; $6cf0: $00
    nop                                           ; $6cf1: $00
    nop                                           ; $6cf2: $00
    nop                                           ; $6cf3: $00
    nop                                           ; $6cf4: $00
    nop                                           ; $6cf5: $00
    nop                                           ; $6cf6: $00
    nop                                           ; $6cf7: $00
    nop                                           ; $6cf8: $00
    nop                                           ; $6cf9: $00
    nop                                           ; $6cfa: $00
    nop                                           ; $6cfb: $00
    nop                                           ; $6cfc: $00
    nop                                           ; $6cfd: $00
    nop                                           ; $6cfe: $00
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

Jump_053_6de1:
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
    cp $49                                        ; $6e40: $fe $49
    ld l, [hl]                                    ; $6e42: $6e
    adc d                                         ; $6e43: $8a
    ld [hl], d                                    ; $6e44: $72
    sbc h                                         ; $6e45: $9c
    ld [hl], a                                    ; $6e46: $77
    cp e                                          ; $6e47: $bb
    ld [hl], a                                    ; $6e48: $77
    ccf                                           ; $6e49: $3f
    ld c, $0e                                     ; $6e4a: $0e $0e
    dec c                                         ; $6e4c: $0d
    dec c                                         ; $6e4d: $0d
    dec c                                         ; $6e4e: $0d
    ld c, $ff                                     ; $6e4f: $0e $ff
    db $e3                                        ; $6e51: $e3
    or $ef                                        ; $6e52: $f6 $ef
    cpl                                           ; $6e54: $2f
    dec l                                         ; $6e55: $2d
    dec c                                         ; $6e56: $0d
    ld c, l                                       ; $6e57: $4d
    ld c, l                                       ; $6e58: $4d
    sbc $e0                                       ; $6e59: $de $e0
    dec l                                         ; $6e5b: $2d
    or $e0                                        ; $6e5c: $f6 $e0
    db $fc                                        ; $6e5e: $fc
    ldh [rSC], a                                  ; $6e5f: $e0 $02
    call nc, Call_000_0ef3                        ; $6e61: $d4 $f3 $0e
    pop bc                                        ; $6e64: $c1
    db $e3                                        ; $6e65: $e3
    cp e                                          ; $6e66: $bb
    pop hl                                        ; $6e67: $e1
    or $ed                                        ; $6e68: $f6 $ed
    cp a                                          ; $6e6a: $bf
    pop hl                                        ; $6e6b: $e1
    and e                                         ; $6e6c: $a3
    ldh [$c0], a                                  ; $6e6d: $e0 $c0
    rst $20                                       ; $6e6f: $e7
    nop                                           ; $6e70: $00
    call nc, $a7f2                                ; $6e71: $d4 $f2 $a7
    push af                                       ; $6e74: $f5
    adc c                                         ; $6e75: $89
    ld [c], a                                     ; $6e76: $e2
    ret nz                                        ; $6e77: $c0

    db $e3                                        ; $6e78: $e3
    cp c                                          ; $6e79: $b9
    ldh [$c0], a                                  ; $6e7a: $e0 $c0
    db $e3                                        ; $6e7c: $e3
    ld e, c                                       ; $6e7d: $59
    ld a, [c]                                     ; $6e7e: $f2
    add l                                         ; $6e7f: $85
    pop af                                        ; $6e80: $f1
    jr c, jr_053_6ef4                             ; $6e81: $38 $71

    db $e4                                        ; $6e83: $e4
    add b                                         ; $6e84: $80
    ldh [$fe], a                                  ; $6e85: $e0 $fe
    pop hl                                        ; $6e87: $e1
    ld c, l                                       ; $6e88: $4d
    ld c, l                                       ; $6e89: $4d
    dec l                                         ; $6e8a: $2d
    ld a, a                                       ; $6e8b: $7f
    add sp, $4f                                   ; $6e8c: $e8 $4f
    db $eb                                        ; $6e8e: $eb
    ldh a, [rP1]                                  ; $6e8f: $f0 $00
    db $f4                                        ; $6e91: $f4
    rst $08                                       ; $6e92: $cf
    ldh [$8b], a                                  ; $6e93: $e0 $8b
    ldh [$c5], a                                  ; $6e95: $e0 $c5
    pop hl                                        ; $6e97: $e1
    ld c, l                                       ; $6e98: $4d
    ld c, l                                       ; $6e99: $4d
    ld l, l                                       ; $6e9a: $6d
    ld l, e                                       ; $6e9b: $6b
    ldh [$bd], a                                  ; $6e9c: $e0 $bd
    ldh [$be], a                                  ; $6e9e: $e0 $be
    ld [c], a                                     ; $6ea0: $e2
    add hl, sp                                    ; $6ea1: $39
    db $e4                                        ; $6ea2: $e4
    nop                                           ; $6ea3: $00
    cp $c9                                        ; $6ea4: $fe $c9
    jp $0d2d                                      ; $6ea6: $c3 $2d $0d


    ld l, l                                       ; $6ea9: $6d
    add c                                         ; $6eaa: $81
    ld c, e                                       ; $6eab: $4b
    ld a, a                                       ; $6eac: $7f
    db $e3                                        ; $6ead: $e3
    xor a                                         ; $6eae: $af
    db $e3                                        ; $6eaf: $e3
    xor a                                         ; $6eb0: $af
    ret nz                                        ; $6eb1: $c0

    nop                                           ; $6eb2: $00
    rst $38                                       ; $6eb3: $ff
    ld d, c                                       ; $6eb4: $51
    ld [c], a                                     ; $6eb5: $e2
    ret                                           ; $6eb6: $c9


    jp $ff0d                                      ; $6eb7: $c3 $0d $ff


    ld l, l                                       ; $6eba: $6d
    dec bc                                        ; $6ebb: $0b
    dec c                                         ; $6ebc: $0d
    dec c                                         ; $6ebd: $0d
    ld a, [bc]                                    ; $6ebe: $0a
    ld l, e                                       ; $6ebf: $6b
    ld l, e                                       ; $6ec0: $6b
    ld a, [bc]                                    ; $6ec1: $0a
    add c                                         ; $6ec2: $81
    ld a, [bc]                                    ; $6ec3: $0a
    inc a                                         ; $6ec4: $3c
    pop hl                                        ; $6ec5: $e1
    add b                                         ; $6ec6: $80
    push hl                                       ; $6ec7: $e5
    nop                                           ; $6ec8: $00
    db $fd                                        ; $6ec9: $fd
    inc c                                         ; $6eca: $0c
    db $e3                                        ; $6ecb: $e3
    daa                                           ; $6ecc: $27
    pop bc                                        ; $6ecd: $c1
    pop bc                                        ; $6ece: $c1
    ld [c], a                                     ; $6ecf: $e2
    ld a, [bc]                                    ; $6ed0: $0a
    dec sp                                        ; $6ed1: $3b
    ld c, d                                       ; $6ed2: $4a
    ld a, [bc]                                    ; $6ed3: $0a
    db $fc                                        ; $6ed4: $fc
    ldh [$0d], a                                  ; $6ed5: $e0 $0d
    ld c, e                                       ; $6ed7: $4b
    ld c, e                                       ; $6ed8: $4b
    db $fc                                        ; $6ed9: $fc
    ret nz                                        ; $6eda: $c0

    cp c                                          ; $6edb: $b9
    jp Jump_000_00e6                              ; $6edc: $c3 $e6 $00


    ei                                            ; $6edf: $fb
    dec l                                         ; $6ee0: $2d
    dec l                                         ; $6ee1: $2d
    dec c                                         ; $6ee2: $0d
    pop bc                                        ; $6ee3: $c1
    ret z                                         ; $6ee4: $c8

    jp nz, Jump_053_4b4b                          ; $6ee5: $c2 $4b $4b

    dec c                                         ; $6ee8: $0d
    ld a, c                                       ; $6ee9: $79
    dec bc                                        ; $6eea: $0b
    jp $fde0                                      ; $6eeb: $c3 $e0 $fd


    pop hl                                        ; $6eee: $e1
    dec c                                         ; $6eef: $0d
    ld c, e                                       ; $6ef0: $4b
    dec c                                         ; $6ef1: $0d
    ld c, e                                       ; $6ef2: $4b
    cp h                                          ; $6ef3: $bc

jr_053_6ef4:
    ret nz                                        ; $6ef4: $c0

    ret nz                                        ; $6ef5: $c0

    db $fd                                        ; $6ef6: $fd
    ld [c], a                                     ; $6ef7: $e2
    nop                                           ; $6ef8: $00
    db $fd                                        ; $6ef9: $fd
    or b                                          ; $6efa: $b0
    and b                                         ; $6efb: $a0
    jp z, Jump_000_03c1                           ; $6efc: $ca $c1 $03

    ldh [$c0], a                                  ; $6eff: $e0 $c0
    ldh [$2a], a                                  ; $6f01: $e0 $2a
    ld a, [hl+]                                   ; $6f03: $2a
    sbc a                                         ; $6f04: $9f
    dec bc                                        ; $6f05: $0b
    dec bc                                        ; $6f06: $0b
    dec hl                                        ; $6f07: $2b
    dec bc                                        ; $6f08: $0b
    dec hl                                        ; $6f09: $2b
    cp $c2                                        ; $6f0a: $fe $c2
    ld [$2dc4], a                                 ; $6f0c: $ea $c4 $2d
    ld l, b                                       ; $6f0f: $68
    nop                                           ; $6f10: $00
    db $fd                                        ; $6f11: $fd
    ret nz                                        ; $6f12: $c0

    pop bc                                        ; $6f13: $c1
    ld b, d                                       ; $6f14: $42
    ldh [rWX], a                                  ; $6f15: $e0 $4b
    add b                                         ; $6f17: $80
    ldh [$0d], a                                  ; $6f18: $e0 $0d
    dec bc                                        ; $6f1a: $0b
    rst $38                                       ; $6f1b: $ff
    db $e4                                        ; $6f1c: $e4
    ret nz                                        ; $6f1d: $c0

    ld l, l                                       ; $6f1e: $6d
    pop bc                                        ; $6f1f: $c1
    ld a, [hl+]                                   ; $6f20: $2a
    db $e3                                        ; $6f21: $e3
    nop                                           ; $6f22: $00
    call c, $a02e                                 ; $6f23: $dc $2e $a0
    pop bc                                        ; $6f26: $c1
    ret nz                                        ; $6f27: $c0

    jp nz, Jump_000_0de4                          ; $6f28: $c2 $e4 $0d

    dec c                                         ; $6f2b: $0d
    ld e, e                                       ; $6f2c: $5b
    dec hl                                        ; $6f2d: $2b
    dec bc                                        ; $6f2e: $0b
    cp c                                          ; $6f2f: $b9
    ldh [rOCPD], a                                ; $6f30: $e0 $6b
    ld l, e                                       ; $6f32: $6b
    rst $30                                       ; $6f33: $f7
    and c                                         ; $6f34: $a1
    ld l, l                                       ; $6f35: $6d
    ret nz                                        ; $6f36: $c0

    push hl                                       ; $6f37: $e5
    ld [$d700], sp                                ; $6f38: $08 $00 $d7
    ld e, l                                       ; $6f3b: $5d
    ld [c], a                                     ; $6f3c: $e2
    add c                                         ; $6f3d: $81
    ret nz                                        ; $6f3e: $c0

    ld c, l                                       ; $6f3f: $4d
    ld b, h                                       ; $6f40: $44
    ldh [$8b], a                                  ; $6f41: $e0 $8b
    pop bc                                        ; $6f43: $c1
    add l                                         ; $6f44: $85
    push hl                                       ; $6f45: $e5
    inc [hl]                                      ; $6f46: $34
    jp nz, Jump_000_35e0                          ; $6f47: $c2 $e0 $35

    push bc                                       ; $6f4a: $c5
    nop                                           ; $6f4b: $00
    rst $10                                       ; $6f4c: $d7
    inc h                                         ; $6f4d: $24
    db $e3                                        ; $6f4e: $e3
    ld b, $e0                                     ; $6f4f: $06 $e0
    adc e                                         ; $6f51: $8b
    ldh [$0a], a                                  ; $6f52: $e0 $0a
    ld a, [bc]                                    ; $6f54: $0a
    ld l, d                                       ; $6f55: $6a
    ld [$e143], sp                                ; $6f56: $08 $43 $e1
    add h                                         ; $6f59: $84
    ldh [$7c], a                                  ; $6f5a: $e0 $7c
    and e                                         ; $6f5c: $a3
    ld l, l                                       ; $6f5d: $6d
    ld b, l                                       ; $6f5e: $45
    jp $e540                                      ; $6f5f: $c3 $40 $e5


    nop                                           ; $6f62: $00
    or e                                          ; $6f63: $b3
    sub d                                         ; $6f64: $92
    add c                                         ; $6f65: $81
    ld a, [hl]                                    ; $6f66: $7e
    rst $00                                       ; $6f67: $c7
    ret nz                                        ; $6f68: $c0

    ld l, e                                       ; $6f69: $6b
    ld l, e                                       ; $6f6a: $6b
    ld c, e                                       ; $6f6b: $4b
    ld a, [bc]                                    ; $6f6c: $0a
    ld l, d                                       ; $6f6d: $6a
    ld a, [bc]                                    ; $6f6e: $0a
    add $c0                                       ; $6f6f: $c6 $c0
    dec d                                         ; $6f71: $15
    dec bc                                        ; $6f72: $0b
    jp Jump_053_6de1                              ; $6f73: $c3 $e1 $6d


    ld [hl], b                                    ; $6f76: $70
    ldh [rKEY1], a                                ; $6f77: $e0 $4d
    ei                                            ; $6f79: $fb
    add b                                         ; $6f7a: $80
    sub l                                         ; $6f7b: $95
    add h                                         ; $6f7c: $84
    nop                                           ; $6f7d: $00
    cp c                                          ; $6f7e: $b9
    ld l, d                                       ; $6f7f: $6a
    add hl, bc                                    ; $6f80: $09
    jp $ff6b                                      ; $6f81: $c3 $6b $ff


    ldh [rWY], a                                  ; $6f84: $e0 $4a
    adc b                                         ; $6f86: $88
    ret nz                                        ; $6f87: $c0

    ld a, [bc]                                    ; $6f88: $0a
    dec bc                                        ; $6f89: $0b
    add c                                         ; $6f8a: $81
    and b                                         ; $6f8b: $a0
    ld b, b                                       ; $6f8c: $40
    adc d                                         ; $6f8d: $8a
    jp $81f4                                      ; $6f8e: $c3 $f4 $81


    inc d                                         ; $6f91: $14
    add l                                         ; $6f92: $85
    nop                                           ; $6f93: $00
    or [hl]                                       ; $6f94: $b6
    sbc a                                         ; $6f95: $9f
    call nz, $e1c1                                ; $6f96: $c4 $c1 $e1
    dec hl                                        ; $6f99: $2b
    adc b                                         ; $6f9a: $88
    jp Jump_053_4100                              ; $6f9b: $c3 $00 $41


    and b                                         ; $6f9e: $a0
    jp z, Jump_053_44c3                           ; $6f9f: $ca $c3 $44

    and e                                         ; $6fa2: $a3
    nop                                           ; $6fa3: $00
    sbc l                                         ; $6fa4: $9d
    sub d                                         ; $6fa5: $92
    add e                                         ; $6fa6: $83
    add c                                         ; $6fa7: $81
    ldh [rOBP1], a                                ; $6fa8: $e0 $49
    jp $e105                                      ; $6faa: $c3 $05 $e1


    ret nz                                        ; $6fad: $c0

    ld b, h                                       ; $6fae: $44
    add c                                         ; $6faf: $81
    ret nz                                        ; $6fb0: $c0

    and $00                                       ; $6fb1: $e6 $00
    sbc c                                         ; $6fb3: $99
    ld e, [hl]                                    ; $6fb4: $5e
    add d                                         ; $6fb5: $82
    ld d, h                                       ; $6fb6: $54
    add c                                         ; $6fb7: $81
    add b                                         ; $6fb8: $80
    ldh [$0d], a                                  ; $6fb9: $e0 $0d
    dec bc                                        ; $6fbb: $0b
    ld a, [hl]                                    ; $6fbc: $7e
    add a                                         ; $6fbd: $87
    and b                                         ; $6fbe: $a0
    dec bc                                        ; $6fbf: $0b
    ld l, e                                       ; $6fc0: $6b
    ld a, [bc]                                    ; $6fc1: $0a
    ld l, d                                       ; $6fc2: $6a
    dec bc                                        ; $6fc3: $0b
    ld l, e                                       ; $6fc4: $6b
    inc b                                         ; $6fc5: $04
    add c                                         ; $6fc6: $81
    add b                                         ; $6fc7: $80
    ld [hl], c                                    ; $6fc8: $71
    add e                                         ; $6fc9: $83
    add l                                         ; $6fca: $85
    adc a                                         ; $6fcb: $8f
    nop                                           ; $6fcc: $00
    adc c                                         ; $6fcd: $89
    ld h, a                                       ; $6fce: $67
    and e                                         ; $6fcf: $a3
    adc c                                         ; $6fd0: $89
    and d                                         ; $6fd1: $a2
    adc a                                         ; $6fd2: $8f
    jp nz, $c086                                  ; $6fd3: $c2 $86 $c0

    ld c, e                                       ; $6fd6: $4b
    rrca                                          ; $6fd7: $0f
    ld a, [hl+]                                   ; $6fd8: $2a
    ld a, [hl+]                                   ; $6fd9: $2a
    ld c, e                                       ; $6fda: $4b
    ld l, e                                       ; $6fdb: $6b
    ld b, h                                       ; $6fdc: $44
    ld h, d                                       ; $6fdd: $62
    ld c, c                                       ; $6fde: $49
    and [hl]                                      ; $6fdf: $a6
    nop                                           ; $6fe0: $00
    sbc e                                         ; $6fe1: $9b
    ld b, l                                       ; $6fe2: $45
    pop bc                                        ; $6fe3: $c1
    or h                                          ; $6fe4: $b4
    inc de                                        ; $6fe5: $13
    add b                                         ; $6fe6: $80
    ld [bc], a                                    ; $6fe7: $02
    ldh [$0d], a                                  ; $6fe8: $e0 $0d
    ld c, h                                       ; $6fea: $4c
    and b                                         ; $6feb: $a0
    ld c, e                                       ; $6fec: $4b
    ld l, e                                       ; $6fed: $6b
    ld b, h                                       ; $6fee: $44
    pop bc                                        ; $6fef: $c1
    ld l, l                                       ; $6ff0: $6d
    nop                                           ; $6ff1: $00
    sbc $5b                                       ; $6ff2: $de $5b
    nop                                           ; $6ff4: $00
    ld l, e                                       ; $6ff5: $6b
    inc c                                         ; $6ff6: $0c
    and b                                         ; $6ff7: $a0
    adc [hl]                                      ; $6ff8: $8e
    and b                                         ; $6ff9: $a0
    ld c, c                                       ; $6ffa: $49
    ldh [$0c], a                                  ; $6ffb: $e0 $0c
    and b                                         ; $6ffd: $a0
    rst $30                                       ; $6ffe: $f7
    jp $834f                                      ; $6fff: $c3 $4f $83


    inc h                                         ; $7002: $24
    sbc $56                                       ; $7003: $de $56
    adc a                                         ; $7005: $8f
    ld l, e                                       ; $7006: $6b
    dec l                                         ; $7007: $2d
    ld b, a                                       ; $7008: $47
    and c                                         ; $7009: $a1
    ld b, l                                       ; $700a: $45
    ret nz                                        ; $700b: $c0

    ld a, [bc]                                    ; $700c: $0a
    ret nz                                        ; $700d: $c0

    and $ca                                       ; $700e: $e6 $ca
    and d                                         ; $7010: $a2
    ld [hl], b                                    ; $7011: $70
    sbc $57                                       ; $7012: $de $57
    nop                                           ; $7014: $00
    db $eb                                        ; $7015: $eb
    add [hl]                                      ; $7016: $86
    and c                                         ; $7017: $a1
    ld b, d                                       ; $7018: $42
    ret nz                                        ; $7019: $c0

    dec hl                                        ; $701a: $2b
    ld a, [hl+]                                   ; $701b: $2a
    ld a, [hl+]                                   ; $701c: $2a
    ld b, d                                       ; $701d: $42
    ret nz                                        ; $701e: $c0

    add e                                         ; $701f: $83
    dec hl                                        ; $7020: $2b
    ld c, e                                       ; $7021: $4b
    add c                                         ; $7022: $81
    push hl                                       ; $7023: $e5
    sbc $5b                                       ; $7024: $de $5b
    inc d                                         ; $7026: $14
    ld b, a                                       ; $7027: $47
    ret nz                                        ; $7028: $c0

    db $e3                                        ; $7029: $e3
    sub d                                         ; $702a: $92
    ld h, b                                       ; $702b: $60
    ld l, d                                       ; $702c: $6a
    ld c, $03                                     ; $702d: $0e $03
    ret nz                                        ; $702f: $c0

    ld a, [bc]                                    ; $7030: $0a
    dec hl                                        ; $7031: $2b
    dec hl                                        ; $7032: $2b
    jp z, $8280                                   ; $7033: $ca $80 $82

    ret nz                                        ; $7036: $c0

    ld a, [bc]                                    ; $7037: $0a
    call nc, Call_053_4f00                        ; $7038: $d4 $00 $4f
    sbc $81                                       ; $703b: $de $81
    jp Jump_053_6b2d                              ; $703d: $c3 $2d $6b


    dec hl                                        ; $7040: $2b
    ld a, [bc]                                    ; $7041: $0a
    ld b, c                                       ; $7042: $41
    pop hl                                        ; $7043: $e1
    dec bc                                        ; $7044: $0b
    dec hl                                        ; $7045: $2b
    add hl, bc                                    ; $7046: $09
    dec hl                                        ; $7047: $2b
    cp b                                          ; $7048: $b8
    and c                                         ; $7049: $a1
    ld c, e                                       ; $704a: $4b
    ld h, d                                       ; $704b: $62
    ld c, l                                       ; $704c: $4d

Jump_053_704d:
    nop                                           ; $704d: $00
    rst $38                                       ; $704e: $ff
    ld [hl+], a                                   ; $704f: $22
    add e                                         ; $7050: $83
    ld d, d                                       ; $7051: $52
    ld b, c                                       ; $7052: $41
    ret nz                                        ; $7053: $c0

    ldh [rTMA], a                                 ; $7054: $e0 $06
    ld [$4ba1], sp                                ; $7056: $08 $a1 $4b
    ld l, e                                       ; $7059: $6b
    dec b                                         ; $705a: $05
    ld h, b                                       ; $705b: $60
    ld sp, hl                                     ; $705c: $f9
    add b                                         ; $705d: $80
    dec hl                                        ; $705e: $2b
    call nz, $ff00                                ; $705f: $c4 $00 $ff
    ld c, c                                       ; $7062: $49
    ld h, b                                       ; $7063: $60
    ld b, h                                       ; $7064: $44
    ld c, b                                       ; $7065: $48
    ld h, d                                       ; $7066: $62
    push bc                                       ; $7067: $c5
    add b                                         ; $7068: $80
    dec c                                         ; $7069: $0d
    ld b, a                                       ; $706a: $47
    ret nz                                        ; $706b: $c0

    inc b                                         ; $706c: $04
    and b                                         ; $706d: $a0
    ld a, [hl]                                    ; $706e: $7e
    jp nz, $ac4d                                  ; $706f: $c2 $4d $ac

    jp nz, $f200                                  ; $7072: $c2 $00 $f2

    ld b, d                                       ; $7075: $42
    nop                                           ; $7076: $00
    db $fd                                        ; $7077: $fd
    ld d, l                                       ; $7078: $55
    ld [hl+], a                                   ; $7079: $22
    ccf                                           ; $707a: $3f
    ldh [$c2], a                                  ; $707b: $e0 $c2
    and e                                         ; $707d: $a3
    ld c, e                                       ; $707e: $4b
    ld h, h                                       ; $707f: $64
    ld a, $e1                                     ; $7080: $3e $e1
    dec sp                                        ; $7082: $3b
    inc h                                         ; $7083: $24
    ld b, b                                       ; $7084: $40
    ld a, e                                       ; $7085: $7b
    db $f4                                        ; $7086: $f4
    nop                                           ; $7087: $00
    and $62                                       ; $7088: $e6 $62
    ld h, h                                       ; $708a: $64
    ret nz                                        ; $708b: $c0

    push hl                                       ; $708c: $e5
    ld a, [bc]                                    ; $708d: $0a
    ld h, c                                       ; $708e: $61
    add hl, bc                                    ; $708f: $09
    ld h, b                                       ; $7090: $60
    ld c, e                                       ; $7091: $4b
    add h                                         ; $7092: $84
    jr nz, jr_053_7095                            ; $7093: $20 $00

jr_053_7095:
    nop                                           ; $7095: $00
    ld b, h                                       ; $7096: $44
    nop                                           ; $7097: $00
    cp $c2                                        ; $7098: $fe $c2
    add h                                         ; $709a: $84
    ld a, [hl]                                    ; $709b: $7e
    add b                                         ; $709c: $80
    ld a, [bc]                                    ; $709d: $0a
    ld h, c                                       ; $709e: $61

jr_053_709f:
    ld a, [$bba3]                                 ; $709f: $fa $a3 $bb
    jp Jump_000_22ef                              ; $70a2: $c3 $ef $22


    jr nc, jr_053_709f                            ; $70a5: $30 $f8

    jp nz, $b900                                  ; $70a7: $c2 $00 $b9

    cp $a2                                        ; $70aa: $fe $a2
    add d                                         ; $70ac: $82
    add c                                         ; $70ad: $81
    ld l, e                                       ; $70ae: $6b
    ld c, e                                       ; $70af: $4b
    ld a, a                                       ; $70b0: $7f
    db $e3                                        ; $70b1: $e3
    ld a, h                                       ; $70b2: $7c

jr_053_70b3:
    add d                                         ; $70b3: $82
    add b                                         ; $70b4: $80
    ld a, d                                       ; $70b5: $7a
    jp nz, $412b                                  ; $70b6: $c2 $2b $41

    dec [hl]                                      ; $70b9: $35
    ld hl, $e1be                                  ; $70ba: $21 $be $e1
    nop                                           ; $70bd: $00
    sub a                                         ; $70be: $97
    ld a, $c3                                     ; $70bf: $3e $c3
    pop bc                                        ; $70c1: $c1
    ld h, b                                       ; $70c2: $60
    ld c, e                                       ; $70c3: $4b
    inc b                                         ; $70c4: $04
    cp a                                          ; $70c5: $bf
    pop hl                                        ; $70c6: $e1
    db $fc                                        ; $70c7: $fc
    ld h, d                                       ; $70c8: $62
    dec c                                         ; $70c9: $0d
    jp $c440                                      ; $70ca: $c3 $40 $c4


    ld [hl+], a                                   ; $70cd: $22
    ld l, e                                       ; $70ce: $6b
    ld b, e                                       ; $70cf: $43
    nop                                           ; $70d0: $00
    sbc e                                         ; $70d1: $9b
    cp a                                          ; $70d2: $bf
    add d                                         ; $70d3: $82
    nop                                           ; $70d4: $00
    cp a                                          ; $70d5: $bf
    db $e4                                        ; $70d6: $e4
    ld a, l                                       ; $70d7: $7d
    ldh [$bb], a                                  ; $70d8: $e0 $bb
    ld h, b                                       ; $70da: $60
    inc sp                                        ; $70db: $33
    pop hl                                        ; $70dc: $e1
    ldh a, [$61]                                  ; $70dd: $f0 $61
    inc a                                         ; $70df: $3c
    pop hl                                        ; $70e0: $e1
    or $b4                                        ; $70e1: $f6 $b4
    add l                                         ; $70e3: $85
    jr z, jr_053_70e6                             ; $70e4: $28 $00

jr_053_70e6:
    ld d, h                                       ; $70e6: $54
    jp nz, $e3cf                                  ; $70e7: $c2 $cf $e3

    cp a                                          ; $70ea: $bf
    push hl                                       ; $70eb: $e5
    ld sp, hl                                     ; $70ec: $f9
    and d                                         ; $70ed: $a2
    add b                                         ; $70ee: $80
    inc bc                                        ; $70ef: $03
    pop hl                                        ; $70f0: $e1
    ld b, d                                       ; $70f1: $42
    nop                                           ; $70f2: $00
    ld a, [hl-]                                   ; $70f3: $3a
    ld b, l                                       ; $70f4: $45
    inc hl                                        ; $70f5: $23
    nop                                           ; $70f6: $00
    ld c, b                                       ; $70f7: $48
    add d                                         ; $70f8: $82
    ld b, d                                       ; $70f9: $42
    ld hl, $a0bb                                  ; $70fa: $21 $bb $a0
    ret nz                                        ; $70fd: $c0

    db $e3                                        ; $70fe: $e3
    add b                                         ; $70ff: $80

Jump_053_7100:
    add $00                                       ; $7100: $c6 $00
    sbc e                                         ; $7102: $9b
    add [hl]                                      ; $7103: $86
    nop                                           ; $7104: $00
    db $fd                                        ; $7105: $fd
    and d                                         ; $7106: $a2
    inc b                                         ; $7107: $04
    ld b, $a1                                     ; $7108: $06 $a1
    ld bc, $0b21                                  ; $710a: $01 $21 $0b
    cp b                                          ; $710d: $b8
    pop bc                                        ; $710e: $c1
    jr c, jr_053_70b3                             ; $710f: $38 $a2

    ld [hl], b                                    ; $7111: $70
    ldh [$60], a                                  ; $7112: $e0 $60
    pop bc                                        ; $7114: $c1
    and h                                         ; $7115: $a4
    ld hl, $7b40                                  ; $7116: $21 $40 $7b
    call Call_053_4b00                            ; $7119: $cd $00 $4b
    jp nc, $bd81                                  ; $711c: $d2 $81 $bd

    jp $e349                                      ; $711f: $c3 $49 $e3


    ld a, [$2bc1]                                 ; $7122: $fa $c1 $2b
    ld l, [hl]                                    ; $7125: $6e
    jp nz, $f700                                  ; $7126: $c2 $00 $f7

    ld b, h                                       ; $7129: $44
    and $02                                       ; $712a: $e6 $02
    nop                                           ; $712c: $00
    ld [hl], $7e                                  ; $712d: $36 $7e
    db $e4                                        ; $712f: $e4
    ld d, b                                       ; $7130: $50

jr_053_7131:
    ld [c], a                                     ; $7131: $e2
    ld a, b                                       ; $7132: $78

jr_053_7133:
    ld h, d                                       ; $7133: $62
    push af                                       ; $7134: $f5
    and e                                         ; $7135: $a3
    ld l, [hl]                                    ; $7136: $6e
    pop bc                                        ; $7137: $c1
    nop                                           ; $7138: $00
    cp c                                          ; $7139: $b9
    and h                                         ; $713a: $a4
    nop                                           ; $713b: $00
    ld e, d                                       ; $713c: $5a
    ld e, [hl]                                    ; $713d: $5e
    pop bc                                        ; $713e: $c1
    cp e                                          ; $713f: $bb
    ld b, h                                       ; $7140: $44
    scf                                           ; $7141: $37
    jp $807b                                      ; $7142: $c3 $7b $80


    halt                                          ; $7145: $76
    ld b, h                                       ; $7146: $44
    inc a                                         ; $7147: $3c
    jp nz, Jump_053_7100                          ; $7148: $c2 $00 $71

    add d                                         ; $714b: $82
    nop                                           ; $714c: $00
    ld sp, hl                                     ; $714d: $f9
    ei                                            ; $714e: $fb
    add h                                         ; $714f: $84
    ld hl, sp+$26                                 ; $7150: $f8 $26
    cp h                                          ; $7152: $bc
    and e                                         ; $7153: $a3
    cp d                                          ; $7154: $ba
    and e                                         ; $7155: $a3
    ld [hl], h                                    ; $7156: $74
    add d                                         ; $7157: $82
    ld [hl], c                                    ; $7158: $71
    ld l, a                                       ; $7159: $6f
    nop                                           ; $715a: $00
    nop                                           ; $715b: $00
    dec hl                                        ; $715c: $2b
    sbc $02                                       ; $715d: $de $02
    ld c, a                                       ; $715f: $4f
    add h                                         ; $7160: $84
    ret nz                                        ; $7161: $c0

    ld b, b                                       ; $7162: $40
    ld a, b                                       ; $7163: $78
    and d                                         ; $7164: $a2
    rst $30                                       ; $7165: $f7
    and b                                         ; $7166: $a0
    ret nz                                        ; $7167: $c0

    and $00                                       ; $7168: $e6 $00
    jp c, $9d00                                   ; $716a: $da $00 $9d

    ld l, d                                       ; $716d: $6a
    jr c, jr_053_7131                             ; $716e: $38 $c1

    ld [hl], l                                    ; $7170: $75
    jr nz, jr_053_7133                            ; $7171: $20 $c0

    db $ec                                        ; $7173: $ec
    ld a, e                                       ; $7174: $7b
    ld sp, $52a7                                  ; $7175: $31 $a7 $52
    cp b                                          ; $7178: $b8
    and c                                         ; $7179: $a1
    ld b, d                                       ; $717a: $42
    jr nz, jr_053_717d                            ; $717b: $20 $00

jr_053_717d:
    ret nz                                        ; $717d: $c0

    and $7e                                       ; $717e: $e6 $7e
    pop bc                                        ; $7180: $c1
    ld a, [$00a1]                                 ; $7181: $fa $a1 $00
    db $db                                        ; $7184: $db
    or $a8                                        ; $7185: $f6 $a8
    adc [hl]                                      ; $7187: $8e
    and b                                         ; $7188: $a0
    ld [hl], h                                    ; $7189: $74
    and d                                         ; $718a: $a2
    ld b, b                                       ; $718b: $40
    db $e3                                        ; $718c: $e3
    nop                                           ; $718d: $00
    pop af                                        ; $718e: $f1
    and c                                         ; $718f: $a1
    cp h                                          ; $7190: $bc
    ld [hl+], a                                   ; $7191: $22
    or a                                          ; $7192: $b7
    inc h                                         ; $7193: $24
    nop                                           ; $7194: $00
    or l                                          ; $7195: $b5
    or $a6                                        ; $7196: $f6 $a6
    or a                                          ; $7198: $b7
    ld [bc], a                                    ; $7199: $02
    inc sp                                        ; $719a: $33
    and c                                         ; $719b: $a1
    ret nz                                        ; $719c: $c0

    rst $28                                       ; $719d: $ef
    ld bc, $002d                                  ; $719e: $01 $2d $00
    rst $38                                       ; $71a1: $ff
    or a                                          ; $71a2: $b7
    and d                                         ; $71a3: $a2
    ld [hl], h                                    ; $71a4: $74
    ld h, c                                       ; $71a5: $61
    cp l                                          ; $71a6: $bd
    push bc                                       ; $71a7: $c5
    or c                                          ; $71a8: $b1
    and c                                         ; $71a9: $a1
    or e                                          ; $71aa: $b3
    ld b, d                                       ; $71ab: $42
    ldh a, [rSC]                                  ; $71ac: $f0 $02
    nop                                           ; $71ae: $00
    nop                                           ; $71af: $00
    rst $38                                       ; $71b0: $ff
    ld [hl], l                                    ; $71b1: $75
    adc b                                         ; $71b2: $88
    cp [hl]                                       ; $71b3: $be
    and l                                         ; $71b4: $a5
    or e                                          ; $71b5: $b3
    ld b, b                                       ; $71b6: $40
    db $dd                                        ; $71b7: $dd
    ld b, d                                       ; $71b8: $42
    add c                                         ; $71b9: $81
    ld [c], a                                     ; $71ba: $e2
    nop                                           ; $71bb: $00
    rst $38                                       ; $71bc: $ff
    push af                                       ; $71bd: $f5
    add e                                         ; $71be: $83
    nop                                           ; $71bf: $00
    ret nz                                        ; $71c0: $c0

    db $e4                                        ; $71c1: $e4
    ccf                                           ; $71c2: $3f
    call nz, $0535                                ; $71c3: $c4 $35 $05
    nop                                           ; $71c6: $00
    rst $38                                       ; $71c7: $ff
    ld a, [c]                                     ; $71c8: $f2
    ld b, h                                       ; $71c9: $44
    or d                                          ; $71ca: $b2
    ld h, d                                       ; $71cb: $62
    or $61                                        ; $71cc: $f6 $61
    ret nz                                        ; $71ce: $c0

    jp hl                                         ; $71cf: $e9


    nop                                           ; $71d0: $00
    nop                                           ; $71d1: $00
    rst $38                                       ; $71d2: $ff
    sub l                                         ; $71d3: $95
    ld [hl+], a                                   ; $71d4: $22
    dec sp                                        ; $71d5: $3b
    call nz, $e2bf                                ; $71d6: $c4 $bf $e2
    ld [hl], h                                    ; $71d9: $74
    ld [bc], a                                    ; $71da: $02
    ld a, l                                       ; $71db: $7d
    add d                                         ; $71dc: $82
    ei                                            ; $71dd: $fb
    add h                                         ; $71de: $84
    nop                                           ; $71df: $00
    rst $18                                       ; $71e0: $df
    nop                                           ; $71e1: $00
    ld [hl], a                                    ; $71e2: $77
    and d                                         ; $71e3: $a2
    ld [hl], d                                    ; $71e4: $72
    ld h, d                                       ; $71e5: $62
    or h                                          ; $71e6: $b4
    jr nz, @+$36                                  ; $71e7: $20 $34

    ld hl, $2172                                  ; $71e9: $21 $72 $21
    sbc c                                         ; $71ec: $99
    ld [bc], a                                    ; $71ed: $02
    nop                                           ; $71ee: $00
    rst $38                                       ; $71ef: $ff
    ld c, $29                                     ; $71f0: $0e $29
    inc c                                         ; $71f2: $0c
    scf                                           ; $71f3: $37
    add b                                         ; $71f4: $80
    ei                                            ; $71f5: $fb
    add h                                         ; $71f6: $84
    dec bc                                        ; $71f7: $0b
    dec hl                                        ; $71f8: $2b
    dec [hl]                                      ; $71f9: $35
    ld b, b                                       ; $71fa: $40
    db $fd                                        ; $71fb: $fd
    add h                                         ; $71fc: $84
    nop                                           ; $71fd: $00
    db $dd                                        ; $71fe: $dd
    db $ec                                        ; $71ff: $ec
    ld h, l                                       ; $7200: $65
    inc b                                         ; $7201: $04
    dec hl                                        ; $7202: $2b
    ld b, d                                       ; $7203: $42
    pop bc                                        ; $7204: $c1
    push hl                                       ; $7205: $e5
    dec bc                                        ; $7206: $0b
    cp l                                          ; $7207: $bd
    add e                                         ; $7208: $83
    nop                                           ; $7209: $00
    rst $38                                       ; $720a: $ff
    sub e                                         ; $720b: $93
    rlca                                          ; $720c: $07
    ret nz                                        ; $720d: $c0

    ldh a, [rP1]                                  ; $720e: $f0 $00
    rst $38                                       ; $7210: $ff
    cp b                                          ; $7211: $b8
    ld [hl], c                                    ; $7212: $71
    ld h, [hl]                                    ; $7213: $66
    ld c, a                                       ; $7214: $4f
    ld b, b                                       ; $7215: $40
    add d                                         ; $7216: $82
    jr nz, jr_053_7244                            ; $7217: $20 $2b

    dec hl                                        ; $7219: $2b
    dec bc                                        ; $721a: $0b
    cpl                                           ; $721b: $2f
    jr nz, jr_053_724b                            ; $721c: $20 $2d

    db $10                                        ; $721e: $10

jr_053_721f:
    xor d                                         ; $721f: $aa
    ld bc, $c2ff                                  ; $7220: $01 $ff $c2
    nop                                           ; $7223: $00
    rst $38                                       ; $7224: $ff
    db $ec                                        ; $7225: $ec
    jp z, $c06b                                   ; $7226: $ca $6b $c0

    ldh [rIE], a                                  ; $7229: $e0 $ff
    call nz, Call_053_67fd                        ; $722b: $c4 $fd $67
    nop                                           ; $722e: $00
    nop                                           ; $722f: $00
    rst $38                                       ; $7230: $ff
    ldh a, [rNR51]                                ; $7231: $f0 $25
    pop bc                                        ; $7233: $c1
    ret z                                         ; $7234: $c8

    add b                                         ; $7235: $80
    pop hl                                        ; $7236: $e1
    nop                                           ; $7237: $00
    rst $38                                       ; $7238: $ff
    ld [hl], c                                    ; $7239: $71
    jp z, Jump_000_22b0                           ; $723a: $ca $b0 $22

    jr c, @+$42                                   ; $723d: $38 $40

    inc b                                         ; $723f: $04
    ld [hl], l                                    ; $7240: $75
    ld h, b                                       ; $7241: $60
    ld h, $01                                     ; $7242: $26 $01

jr_053_7244:
    ld l, l                                       ; $7244: $6d
    ld a, e                                       ; $7245: $7b
    ld de, $f800                                  ; $7246: $11 $00 $f8
    dec sp                                        ; $7249: $3b
    and h                                         ; $724a: $a4

jr_053_724b:
    push af                                       ; $724b: $f5
    jr nz, jr_053_724b                            ; $724c: $20 $fd

    pop hl                                        ; $724e: $e1
    db $10                                        ; $724f: $10
    pop bc                                        ; $7250: $c1
    ldh [$31], a                                  ; $7251: $e0 $31
    ld [bc], a                                    ; $7253: $02
    nop                                           ; $7254: $00
    rst $38                                       ; $7255: $ff
    ld a, e                                       ; $7256: $7b
    xor d                                         ; $7257: $aa
    ld c, l                                       ; $7258: $4d
    ld [hl], h                                    ; $7259: $74
    ld b, d                                       ; $725a: $42
    ld a, h                                       ; $725b: $7c
    jr nz, jr_053_721f                            ; $725c: $20 $c1

    ldh [rNR10], a                                ; $725e: $e0 $10
    nop                                           ; $7260: $00
    cp a                                          ; $7261: $bf
    ld a, e                                       ; $7262: $7b
    ld l, e                                       ; $7263: $6b
    halt                                          ; $7264: $76
    ld h, e                                       ; $7265: $63
    jr z, jr_053_728a                             ; $7266: $28 $22

    ld l, l                                       ; $7268: $6d
    ld b, c                                       ; $7269: $41
    ld b, h                                       ; $726a: $44
    nop                                           ; $726b: $00
    rst $38                                       ; $726c: $ff
    ld [hl], c                                    ; $726d: $71
    and [hl]                                      ; $726e: $a6
    nop                                           ; $726f: $00
    or d                                          ; $7270: $b2
    ld b, e                                       ; $7271: $43
    ld [hl-], a                                   ; $7272: $32
    and l                                         ; $7273: $a5
    db $eb                                        ; $7274: $eb
    add h                                         ; $7275: $84
    inc h                                         ; $7276: $24
    ld b, b                                       ; $7277: $40
    nop                                           ; $7278: $00
    rst $38                                       ; $7279: $ff
    nop                                           ; $727a: $00
    push hl                                       ; $727b: $e5
    sub c                                         ; $727c: $91
    ld hl, $23ae                                  ; $727d: $21 $ae $23
    nop                                           ; $7280: $00
    ld l, h                                       ; $7281: $6c
    ld b, e                                       ; $7282: $43
    ld [$0083], a                                 ; $7283: $ea $83 $00
    ld b, a                                       ; $7286: $47
    nop                                           ; $7287: $00
    nop                                           ; $7288: $00
    nop                                           ; $7289: $00

jr_053_728a:
    rst $38                                       ; $728a: $ff
    call c, $a0dd                                 ; $728b: $dc $dd $a0
    sbc $df                                       ; $728e: $de $df
    ldh [$e1], a                                  ; $7290: $e0 $e1
    ld [c], a                                     ; $7292: $e2
    db $eb                                        ; $7293: $eb
    db $e3                                        ; $7294: $e3
    db $e4                                        ; $7295: $e4
    or $f1                                        ; $7296: $f6 $f1
    and b                                         ; $7298: $a0
    rst $38                                       ; $7299: $ff
    ldh [$d0], a                                  ; $729a: $e0 $d0
    pop de                                        ; $729c: $d1
    and b                                         ; $729d: $a0
    ld a, a                                       ; $729e: $7f
    and b                                         ; $729f: $a0
    ret c                                         ; $72a0: $d8

    reti                                          ; $72a1: $d9


    and b                                         ; $72a2: $a0
    and b                                         ; $72a3: $a0
    sub $d7                                       ; $72a4: $d6 $d7
    call nc, $fff1                                ; $72a6: $d4 $f1 $ff
    push hl                                       ; $72a9: $e5
    and $e7                                       ; $72aa: $e6 $e7
    and b                                         ; $72ac: $a0
    add sp, -$17                                  ; $72ad: $e8 $e9
    ld [$fbeb], a                                 ; $72af: $ea $eb $fb
    db $ec                                        ; $72b2: $ec
    and b                                         ; $72b3: $a0
    or $f0                                        ; $72b4: $f6 $f0
    sub $d7                                       ; $72b6: $d6 $d7
    and b                                         ; $72b8: $a0
    push af                                       ; $72b9: $f5
    or $3f                                        ; $72ba: $f6 $3f
    jp nc, $a0d3                                  ; $72bc: $d2 $d3 $a0

    and b                                         ; $72bf: $a0
    jp c, $bcdb                                   ; $72c0: $da $db $bc

    pop hl                                        ; $72c3: $e1
    call nc, $f8f1                                ; $72c4: $d4 $f1 $f8
    add l                                         ; $72c7: $85
    or $67                                        ; $72c8: $f6 $67
    ldh [$89], a                                  ; $72ca: $e0 $89
    pop hl                                        ; $72cc: $e1
    db $ed                                        ; $72cd: $ed
    xor $d4                                       ; $72ce: $ee $d4
    push de                                       ; $72d0: $d5
    rst $28                                       ; $72d1: $ef
    add c                                         ; $72d2: $81
    and b                                         ; $72d3: $a0
    cp c                                          ; $72d4: $b9
    ldh [$bc], a                                  ; $72d5: $e0 $bc
    ldh [$59], a                                  ; $72d7: $e0 $59
    pop af                                        ; $72d9: $f1
    add l                                         ; $72da: $85
    push af                                       ; $72db: $f5
    ld [hl], c                                    ; $72dc: $71
    ld [c], a                                     ; $72dd: $e2
    adc c                                         ; $72de: $89
    ldh [$f0], a                                  ; $72df: $e0 $f0
    rst $38                                       ; $72e1: $ff
    pop af                                        ; $72e2: $f1
    ld a, [c]                                     ; $72e3: $f2
    di                                            ; $72e4: $f3
    db $f4                                        ; $72e5: $f4
    sbc a                                         ; $72e6: $9f
    sbc l                                         ; $72e7: $9d
    sbc l                                         ; $72e8: $9d
    and d                                         ; $72e9: $a2
    pop hl                                        ; $72ea: $e1
    sbc a                                         ; $72eb: $9f
    ld e, c                                       ; $72ec: $59
    di                                            ; $72ed: $f3
    nop                                           ; $72ee: $00
    or $05                                        ; $72ef: $f6 $05
    ldh [$8b], a                                  ; $72f1: $e0 $8b
    ldh [$9f], a                                  ; $72f3: $e0 $9f
    and d                                         ; $72f5: $a2
    sbc l                                         ; $72f6: $9d
    ld a, [hl]                                    ; $72f7: $7e
    rst $38                                       ; $72f8: $ff
    ldh [$9c], a                                  ; $72f9: $e0 $9c
    ld b, [hl]                                    ; $72fb: $46
    or d                                          ; $72fc: $b2
    or d                                          ; $72fd: $b2
    sbc h                                         ; $72fe: $9c
    sbc a                                         ; $72ff: $9f
    db $fd                                        ; $7300: $fd
    pop bc                                        ; $7301: $c1
    pop af                                        ; $7302: $f1
    and b                                         ; $7303: $a0
    ld c, a                                       ; $7304: $4f
    db $ed                                        ; $7305: $ed
    nop                                           ; $7306: $00
    push af                                       ; $7307: $f5
    ret                                           ; $7308: $c9


    jp nz, $9fa0                                  ; $7309: $c2 $a0 $9f

    sbc h                                         ; $730c: $9c
    ld b, [hl]                                    ; $730d: $46
    rst $38                                       ; $730e: $ff
    ld a, c                                       ; $730f: $79
    ld a, d                                       ; $7310: $7a
    ld a, e                                       ; $7311: $7b
    ld a, e                                       ; $7312: $7b
    ld a, e                                       ; $7313: $7b
    ld a, h                                       ; $7314: $7c
    ld a, l                                       ; $7315: $7d
    or d                                          ; $7316: $b2
    ld h, e                                       ; $7317: $63
    or d                                          ; $7318: $b2
    sbc [hl]                                      ; $7319: $9e
    cp c                                          ; $731a: $b9
    jp nz, $ff00                                  ; $731b: $c2 $00 $ff

    add l                                         ; $731e: $85
    ld [c], a                                     ; $731f: $e2
    and b                                         ; $7320: $a0
    and b                                         ; $7321: $a0
    ret                                           ; $7322: $c9


    pop bc                                        ; $7323: $c1
    cp $c1                                        ; $7324: $fe $c1
    pop hl                                        ; $7326: $e1
    ld a, [hl]                                    ; $7327: $7e
    ld d, b                                       ; $7328: $50
    ld b, [hl]                                    ; $7329: $46
    ld b, [hl]                                    ; $732a: $46
    ld d, b                                       ; $732b: $50
    ld d, b                                       ; $732c: $50
    ld a, a                                       ; $732d: $7f
    add c                                         ; $732e: $81
    ld a, l                                       ; $732f: $7d
    ld a, a                                       ; $7330: $7f
    pop hl                                        ; $7331: $e1
    cp c                                          ; $7332: $b9
    pop bc                                        ; $7333: $c1
    nop                                           ; $7334: $00
    rst $38                                       ; $7335: $ff
    ld c, e                                       ; $7336: $4b
    pop bc                                        ; $7337: $c1
    ret                                           ; $7338: $c9


    jp nz, $e2c1                                  ; $7339: $c2 $c1 $e2

    ld c, d                                       ; $733c: $4a
    rst $38                                       ; $733d: $ff
    ld e, l                                       ; $733e: $5d
    ld d, l                                       ; $733f: $55
    ld b, a                                       ; $7340: $47
    ld e, l                                       ; $7341: $5d
    ld e, l                                       ; $7342: $5d
    ld d, l                                       ; $7343: $55
    add c                                         ; $7344: $81
    ld b, [hl]                                    ; $7345: $46
    ld h, c                                       ; $7346: $61
    ld b, [hl]                                    ; $7347: $46
    ld a, $e0                                     ; $7348: $3e $e0
    cp c                                          ; $734a: $b9
    ret nz                                        ; $734b: $c0

    nop                                           ; $734c: $00
    cp $0c                                        ; $734d: $fe $0c
    ret nz                                        ; $734f: $c0

    sub $d7                                       ; $7350: $d6 $d7
    ret                                           ; $7352: $c9


    jp nz, $9eff                                  ; $7353: $c2 $ff $9e

    ld b, [hl]                                    ; $7356: $46
    ld b, [hl]                                    ; $7357: $46
    add b                                         ; $7358: $80
    ld b, [hl]                                    ; $7359: $46
    ld c, a                                       ; $735a: $4f
    ld h, c                                       ; $735b: $61
    ld d, l                                       ; $735c: $55
    scf                                           ; $735d: $37
    ld d, e                                       ; $735e: $53
    ld d, h                                       ; $735f: $54
    ld h, c                                       ; $7360: $61
    ret nz                                        ; $7361: $c0

    ldh [$b2], a                                  ; $7362: $e0 $b2
    ld b, [hl]                                    ; $7364: $46
    ld a, $e0                                     ; $7365: $3e $e0
    ld h, l                                       ; $7367: $65
    ld [c], a                                     ; $7368: $e2
    ldh a, [rP1]                                  ; $7369: $f0 $00
    db $fd                                        ; $736b: $fd
    pop de                                        ; $736c: $d1
    and d                                         ; $736d: $a2
    inc bc                                        ; $736e: $03
    ld [c], a                                     ; $736f: $e2
    ret nz                                        ; $7370: $c0

    ldh [rHDMA5], a                               ; $7371: $e0 $55
    ld d, d                                       ; $7373: $52
    ld a, [hl+]                                   ; $7374: $2a
    cpl                                           ; $7375: $2f
    ld c, a                                       ; $7376: $4f
    inc l                                         ; $7377: $2c
    ld sp, $8c2b                                  ; $7378: $31 $2b $8c
    cp $c3                                        ; $737b: $fe $c3
    ld [$a0c2], a                                 ; $737d: $ea $c2 $a0
    nop                                           ; $7380: $00
    db $fd                                        ; $7381: $fd
    or $d1                                        ; $7382: $f6 $d1
    and c                                         ; $7384: $a1
    sbc a                                         ; $7385: $9f
    and d                                         ; $7386: $a2
    pop bc                                        ; $7387: $c1
    ldh [rDMA], a                                 ; $7388: $e0 $46
    add d                                         ; $738a: $82
    add e                                         ; $738b: $83
    scf                                           ; $738c: $37
    rst $30                                       ; $738d: $f7
    jr c, jr_053_73b7                             ; $738e: $38 $27

    jr nz, @+$01                                  ; $7390: $20 $ff

    ldh [rSCY], a                                 ; $7392: $e0 $42
    add c                                         ; $7394: $81
    or d                                          ; $7395: $b2
    or d                                          ; $7396: $b2
    ld sp, $b3a1                                  ; $7397: $31 $a1 $b3
    and e                                         ; $739a: $a3
    nop                                           ; $739b: $00
    call c, $c15b                                 ; $739c: $dc $5b $c1
    push af                                       ; $739f: $f5
    or $83                                        ; $73a0: $f6 $83
    pop hl                                        ; $73a2: $e1
    ld c, d                                       ; $73a3: $4a
    ret nz                                        ; $73a4: $c0

    rst $38                                       ; $73a5: $ff
    add l                                         ; $73a6: $85
    add a                                         ; $73a7: $87
    ld [hl], d                                    ; $73a8: $72
    ld l, h                                       ; $73a9: $6c
    ld hl, $2f2f                                  ; $73aa: $21 $2f $2f
    inc l                                         ; $73ad: $2c
    rlca                                          ; $73ae: $07
    dec hl                                        ; $73af: $2b
    add e                                         ; $73b0: $83
    add h                                         ; $73b1: $84
    ld a, $c0                                     ; $73b2: $3e $c0
    or e                                          ; $73b4: $b3
    and h                                         ; $73b5: $a4
    nop                                           ; $73b6: $00

jr_053_73b7:
    ret c                                         ; $73b7: $d8

    rrca                                          ; $73b8: $0f
    and b                                         ; $73b9: $a0
    inc d                                         ; $73ba: $14
    and c                                         ; $73bb: $a1
    db $fd                                        ; $73bc: $fd
    sbc a                                         ; $73bd: $9f
    dec c                                         ; $73be: $0d
    ret nz                                        ; $73bf: $c0

    ld b, [hl]                                    ; $73c0: $46
    ld d, b                                       ; $73c1: $50
    or d                                          ; $73c2: $b2
    or d                                          ; $73c3: $b2
    or d                                          ; $73c4: $b2
    scf                                           ; $73c5: $37
    rst $18                                       ; $73c6: $df
    jr c, jr_053_7437                             ; $73c7: $38 $6e

    ld [hl], b                                    ; $73c9: $70
    ld [hl], c                                    ; $73ca: $71
    adc b                                         ; $73cb: $88
    rst $38                                       ; $73cc: $ff
    ldh [$87], a                                  ; $73cd: $e0 $87
    add l                                         ; $73cf: $85
    ret nz                                        ; $73d0: $c0

    rst $38                                       ; $73d1: $ff
    and b                                         ; $73d2: $a0
    or e                                          ; $73d3: $b3
    and d                                         ; $73d4: $a2
    nop                                           ; $73d5: $00
    ld sp, hl                                     ; $73d6: $f9
    ret nc                                        ; $73d7: $d0

    add c                                         ; $73d8: $81
    inc d                                         ; $73d9: $14
    and b                                         ; $73da: $a0
    add e                                         ; $73db: $83
    ld [c], a                                     ; $73dc: $e2
    ld d, c                                       ; $73dd: $51
    ld e, a                                       ; $73de: $5f
    rst $38                                       ; $73df: $ff
    ld d, d                                       ; $73e0: $52
    or d                                          ; $73e1: $b2
    ld [hl], $35                                  ; $73e2: $36 $35
    dec [hl]                                      ; $73e4: $35
    dec sp                                        ; $73e5: $3b
    jr c, jr_053_741f                             ; $73e6: $38 $37

    dec c                                         ; $73e8: $0d
    sbc h                                         ; $73e9: $9c
    cp h                                          ; $73ea: $bc
    and c                                         ; $73eb: $a1
    sbc l                                         ; $73ec: $9d
    sbc a                                         ; $73ed: $9f
    pop bc                                        ; $73ee: $c1
    and d                                         ; $73ef: $a2
    cp l                                          ; $73f0: $bd
    jp $b600                                      ; $73f1: $c3 $00 $b6


    sub d                                         ; $73f4: $92
    add d                                         ; $73f5: $82
    sbc $44                                       ; $73f6: $de $44
    ld [c], a                                     ; $73f8: $e2
    ld c, d                                       ; $73f9: $4a
    ld d, d                                       ; $73fa: $52
    ld d, e                                       ; $73fb: $53
    ld d, e                                       ; $73fc: $53
    pop bc                                        ; $73fd: $c1
    ldh [$36], a                                  ; $73fe: $e0 $36
    or d                                          ; $7400: $b2
    ld bc, $c69c                                  ; $7401: $01 $9c $c6
    ldh [$87], a                                  ; $7404: $e0 $87
    jp $807a                                      ; $7406: $c3 $7a $80


    nop                                           ; $7409: $00
    cp l                                          ; $740a: $bd
    ret                                           ; $740b: $c9


    and c                                         ; $740c: $a1
    dec b                                         ; $740d: $05
    ld [c], a                                     ; $740e: $e2
    ret nz                                        ; $740f: $c0

    ldh [$9f], a                                  ; $7410: $e0 $9f
    ld [hl], $3b                                  ; $7412: $36 $3b
    swap l                                        ; $7414: $cb $35
    ld a, [hl-]                                   ; $7416: $3a
    jp z, Jump_000_3dc0                           ; $7417: $ca $c0 $3d

    add c                                         ; $741a: $81
    push af                                       ; $741b: $f5
    and c                                         ; $741c: $a1
    or $74                                        ; $741d: $f6 $74

jr_053_741f:
    add b                                         ; $741f: $80
    ld a, d                                       ; $7420: $7a
    add c                                         ; $7421: $81
    nop                                           ; $7422: $00
    jp c, $8392                                   ; $7423: $da $92 $83

    and c                                         ; $7426: $a1
    pop bc                                        ; $7427: $c1
    pop hl                                        ; $7428: $e1
    ld b, l                                       ; $7429: $45
    rla                                           ; $742a: $17
    scf                                           ; $742b: $37
    jr c, @+$37                                   ; $742c: $38 $35

    rst $38                                       ; $742e: $ff
    ldh [$39], a                                  ; $742f: $e0 $39
    ld [$3da2], sp                                ; $7431: $08 $a2 $3d
    add c                                         ; $7434: $81
    db $fd                                        ; $7435: $fd
    ld h, b                                       ; $7436: $60

jr_053_7437:
    db $f4                                        ; $7437: $f4
    nop                                           ; $7438: $00
    sbc a                                         ; $7439: $9f
    ret                                           ; $743a: $c9


    and l                                         ; $743b: $a5
    ld b, [hl]                                    ; $743c: $46
    ld b, $e1                                     ; $743d: $06 $e1
    dec [hl]                                      ; $743f: $35
    dec [hl]                                      ; $7440: $35
    jr c, @+$39                                   ; $7441: $38 $37

    add b                                         ; $7443: $80
    add hl, bc                                    ; $7444: $09
    and c                                         ; $7445: $a1
    dec a                                         ; $7446: $3d
    add e                                         ; $7447: $83
    db $fd                                        ; $7448: $fd
    ld h, b                                       ; $7449: $60
    nop                                           ; $744a: $00
    sbc e                                         ; $744b: $9b
    adc b                                         ; $744c: $88
    and d                                         ; $744d: $a2
    rla                                           ; $744e: $17
    add c                                         ; $744f: $81
    adc c                                         ; $7450: $89
    and b                                         ; $7451: $a0
    or d                                          ; $7452: $b2
    rst $38                                       ; $7453: $ff
    ld [hl], $bb                                  ; $7454: $36 $bb
    dec [hl]                                      ; $7456: $35
    swap l                                        ; $7457: $cb $35
    ld [hl], $47                                  ; $7459: $36 $47
    ld d, d                                       ; $745b: $52
    add c                                         ; $745c: $81
    ld b, l                                       ; $745d: $45
    adc e                                         ; $745e: $8b
    and b                                         ; $745f: $a0
    adc d                                         ; $7460: $8a
    call nz, $8e85                                ; $7461: $c4 $85 $8e
    nop                                           ; $7464: $00
    adc e                                         ; $7465: $8b
    rst $18                                       ; $7466: $df
    call nz, $828c                                ; $7467: $c4 $8c $82
    or d                                          ; $746a: $b2
    rst $38                                       ; $746b: $ff
    or d                                          ; $746c: $b2
    cp e                                          ; $746d: $bb
    cp e                                          ; $746e: $bb
    dec [hl]                                      ; $746f: $35
    dec [hl]                                      ; $7470: $35
    ld a, [hl-]                                   ; $7471: $3a
    ld b, l                                       ; $7472: $45
    ld d, h                                       ; $7473: $54
    pop bc                                        ; $7474: $c1
    ld d, e                                       ; $7475: $53
    ret nz                                        ; $7476: $c0

    ldh [$8a], a                                  ; $7477: $e0 $8a
    add $00                                       ; $7479: $c6 $00
    sbc a                                         ; $747b: $9f
    ld b, l                                       ; $747c: $45
    pop bc                                        ; $747d: $c1
    ld b, $c1                                     ; $747e: $06 $c1
    ld b, [hl]                                    ; $7480: $46
    add hl, sp                                    ; $7481: $39
    ld a, a                                       ; $7482: $7f
    cp e                                          ; $7483: $bb
    rst $08                                       ; $7484: $cf
    rst $08                                       ; $7485: $cf
    dec [hl]                                      ; $7486: $35
    add hl, sp                                    ; $7487: $39
    ld b, l                                       ; $7488: $45
    ld b, l                                       ; $7489: $45
    res 0, c                                      ; $748a: $cb $81
    ld hl, sp+$04                                 ; $748c: $f8 $04
    ld h, b                                       ; $748e: $60
    sbc $58                                       ; $748f: $de $58
    ld a, [bc]                                    ; $7491: $0a
    adc h                                         ; $7492: $8c
    sbc a                                         ; $7493: $9f
    sbc h                                         ; $7494: $9c
    or d                                          ; $7495: $b2
    or d                                          ; $7496: $b2
    ld b, l                                       ; $7497: $45
    rst $38                                       ; $7498: $ff
    ld c, b                                       ; $7499: $48
    ld d, e                                       ; $749a: $53
    ld a, $cf                                     ; $749b: $3e $cf
    call z, $bbce                                 ; $749d: $cc $ce $bb
    or d                                          ; $74a0: $b2
    push bc                                       ; $74a1: $c5
    or d                                          ; $74a2: $b2
    ccf                                           ; $74a3: $3f
    and b                                         ; $74a4: $a0
    sbc [hl]                                      ; $74a5: $9e
    inc b                                         ; $74a6: $04
    ld h, d                                       ; $74a7: $62
    sbc $56                                       ; $74a8: $de $56
    nop                                           ; $74aa: $00
    db $eb                                        ; $74ab: $eb
    and b                                         ; $74ac: $a0
    and b                                         ; $74ad: $a0
    ld a, l                                       ; $74ae: $7d
    sbc [hl]                                      ; $74af: $9e
    set 4, b                                      ; $74b0: $cb $e0
    ld b, l                                       ; $74b2: $45
    ld c, e                                       ; $74b3: $4b
    ld h, c                                       ; $74b4: $61
    ld a, $ce                                     ; $74b5: $3e $ce
    ret nz                                        ; $74b7: $c0

    db $e4                                        ; $74b8: $e4
    ldh [$8a], a                                  ; $74b9: $e0 $8a
    ld h, b                                       ; $74bb: $60
    sbc $59                                       ; $74bc: $de $59
    nop                                           ; $74be: $00
    db $eb                                        ; $74bf: $eb
    sub c                                         ; $74c0: $91
    ld b, b                                       ; $74c1: $40
    ret nz                                        ; $74c2: $c0

    ld [c], a                                     ; $74c3: $e2
    ld d, l                                       ; $74c4: $55
    ld d, d                                       ; $74c5: $52
    ld a, [hl-]                                   ; $74c6: $3a
    adc d                                         ; $74c7: $8a
    ret nz                                        ; $74c8: $c0

    ldh [$3a], a                                  ; $74c9: $e0 $3a
    add c                                         ; $74cb: $81
    pop hl                                        ; $74cc: $e1
    and c                                         ; $74cd: $a1
    add l                                         ; $74ce: $85
    ld hl, sp+$00                                 ; $74cf: $f8 $00
    ld l, h                                       ; $74d1: $6c
    ld a, [de]                                    ; $74d2: $1a
    ld b, d                                       ; $74d3: $42
    sbc [hl]                                      ; $74d4: $9e
    cp $4c                                        ; $74d5: $fe $4c
    ldh [rWY], a                                  ; $74d7: $e0 $4a
    ld d, d                                       ; $74d9: $52
    add hl, sp                                    ; $74da: $39
    rst $08                                       ; $74db: $cf
    call z, $cecb                                 ; $74dc: $cc $cb $ce
    ld bc, $ba3e                                  ; $74df: $01 $3e $ba
    and c                                         ; $74e2: $a1
    ld c, e                                       ; $74e3: $4b
    ld h, b                                       ; $74e4: $60
    dec sp                                        ; $74e5: $3b
    ld b, b                                       ; $74e6: $40
    nop                                           ; $74e7: $00
    rst $38                                       ; $74e8: $ff
    ld a, [bc]                                    ; $74e9: $0a
    add c                                         ; $74ea: $81
    ld b, $a4                                     ; $74eb: $06 $a4
    ld b, c                                       ; $74ed: $41
    db $e3                                        ; $74ee: $e3
    rrca                                          ; $74ef: $0f
    call z, Call_000_3ece                         ; $74f0: $cc $ce $3e
    xor [hl]                                      ; $74f3: $ae
    ld b, b                                       ; $74f4: $40
    add b                                         ; $74f5: $80
    jp z, $c440                                   ; $74f6: $ca $40 $c4

    ld hl, $ff00                                  ; $74f9: $21 $00 $ff
    db $fc                                        ; $74fc: $fc
    adc a                                         ; $74fd: $8f
    ld b, b                                       ; $74fe: $40
    inc e                                         ; $74ff: $1c
    ld b, b                                       ; $7500: $40
    and b                                         ; $7501: $a0
    and b                                         ; $7502: $a0
    and c                                         ; $7503: $a1
    ld b, [hl]                                    ; $7504: $46
    ld b, h                                       ; $7505: $44
    ld c, l                                       ; $7506: $4d
    dec a                                         ; $7507: $3d
    ld d, d                                       ; $7508: $52
    ld bc, $cde0                                  ; $7509: $01 $e0 $cd
    rst $08                                       ; $750c: $cf
    ld a, [hl-]                                   ; $750d: $3a
    xor a                                         ; $750e: $af
    cp a                                          ; $750f: $bf
    pop hl                                        ; $7510: $e1
    ret nz                                        ; $7511: $c0

    jp Jump_053_7bf8                              ; $7512: $c3 $f8 $7b


    ld hl, $ff00                                  ; $7515: $21 $00 $ff
    ld d, l                                       ; $7518: $55
    ld hl, $469e                                  ; $7519: $21 $9e $46
    ld b, l                                       ; $751c: $45
    ld b, e                                       ; $751d: $43
    or d                                          ; $751e: $b2
    add hl, sp                                    ; $751f: $39
    add hl, sp                                    ; $7520: $39
    ld b, d                                       ; $7521: $42
    ret nz                                        ; $7522: $c0

    pop bc                                        ; $7523: $c1
    and b                                         ; $7524: $a0
    xor a                                         ; $7525: $af
    xor [hl]                                      ; $7526: $ae
    xor [hl]                                      ; $7527: $ae
    dec bc                                        ; $7528: $0b
    ld h, h                                       ; $7529: $64
    or d                                          ; $752a: $b2
    ld b, d                                       ; $752b: $42
    ld hl, sp+$00                                 ; $752c: $f8 $00
    cp $c3                                        ; $752e: $fe $c3
    add h                                         ; $7530: $84
    add hl, bc                                    ; $7531: $09
    add b                                         ; $7532: $80
    cp e                                          ; $7533: $bb
    rst $08                                       ; $7534: $cf
    call $cfcd                                    ; $7535: $cd $cd $cf
    ld b, b                                       ; $7538: $40
    cp a                                          ; $7539: $bf
    ldh [$7d], a                                  ; $753a: $e0 $7d
    ldh [$08], a                                  ; $753c: $e0 $08
    ld b, c                                       ; $753e: $41
    ld a, e                                       ; $753f: $7b
    inc h                                         ; $7540: $24
    nop                                           ; $7541: $00
    db $fc                                        ; $7542: $fc
    ld d, l                                       ; $7543: $55
    inc hl                                        ; $7544: $23
    sbc [hl]                                      ; $7545: $9e
    ret nz                                        ; $7546: $c0

    ld [c], a                                     ; $7547: $e2
    ld h, [hl]                                    ; $7548: $66
    rst $38                                       ; $7549: $ff
    ret nz                                        ; $754a: $c0

    call z, Call_000_00cf                         ; $754b: $cc $cf $00
    and b                                         ; $754e: $a0
    cp a                                          ; $754f: $bf
    pop hl                                        ; $7550: $e1
    sbc l                                         ; $7551: $9d
    sbc a                                         ; $7552: $9f
    ret z                                         ; $7553: $c8

    ld h, h                                       ; $7554: $64
    add sp, $00                                   ; $7555: $e8 $00
    cp h                                          ; $7557: $bc
    and d                                         ; $7558: $a2
    ld h, e                                       ; $7559: $63
    ld [bc], a                                    ; $755a: $02
    and c                                         ; $755b: $a1
    or d                                          ; $755c: $b2
    ld b, b                                       ; $755d: $40
    ret nz                                        ; $755e: $c0

    call z, $cbcc                                 ; $755f: $cc $cc $cb
    ld b, $7f                                     ; $7562: $06 $7f
    add b                                         ; $7564: $80
    ld [hl], $af                                  ; $7565: $36 $af
    cp e                                          ; $7567: $bb
    jp Jump_000_00b8                              ; $7568: $c3 $b8 $00


    jp nz, Jump_000_0062                          ; $756b: $c2 $62 $00

    cp e                                          ; $756e: $bb
    cp $a2                                        ; $756f: $fe $a2
    jr nz, jr_053_757b                            ; $7571: $20 $08

    ld h, c                                       ; $7573: $61
    ccf                                           ; $7574: $3f
    ret nz                                        ; $7575: $c0

    ld a, a                                       ; $7576: $7f
    ld [c], a                                     ; $7577: $e2
    ccf                                           ; $7578: $3f
    add b                                         ; $7579: $80
    db $f4                                        ; $757a: $f4

jr_053_757b:
    ld h, c                                       ; $757b: $61
    sbc h                                         ; $757c: $9c
    ld [bc], a                                    ; $757d: $02
    jr nz, jr_053_75eb                            ; $757e: $20 $6b

    ld b, h                                       ; $7580: $44
    ld e, b                                       ; $7581: $58
    nop                                           ; $7582: $00
    sbc e                                         ; $7583: $9b
    call c, $c7e0                                 ; $7584: $dc $e0 $c7
    ld b, d                                       ; $7587: $42
    ld b, l                                       ; $7588: $45
    ld [hl], $bf                                  ; $7589: $36 $bf
    pop hl                                        ; $758b: $e1
    adc $fe                                       ; $758c: $ce $fe
    ld h, b                                       ; $758e: $60
    ld b, b                                       ; $758f: $40
    cp d                                          ; $7590: $ba
    and d                                         ; $7591: $a2
    call nz, $c222                                ; $7592: $c4 $22 $c2
    ld h, d                                       ; $7595: $62
    nop                                           ; $7596: $00
    cp h                                          ; $7597: $bc
    ld b, a                                       ; $7598: $47
    ld b, d                                       ; $7599: $42
    cp a                                          ; $759a: $bf
    db $e4                                        ; $759b: $e4
    call $e27f                                    ; $759c: $cd $7f $e2
    add l                                         ; $759f: $85
    inc a                                         ; $75a0: $3c
    ld a, [$4682]                                 ; $75a1: $fa $82 $46
    pop bc                                        ; $75a4: $c1
    ld b, $00                                     ; $75a5: $06 $00
    ld a, [hl-]                                   ; $75a7: $3a
    adc l                                         ; $75a8: $8d
    ld [bc], a                                    ; $75a9: $02
    ld a, $e2                                     ; $75aa: $3e $e2
    ld b, [hl]                                    ; $75ac: $46
    ld [$4086], sp                                ; $75ad: $08 $86 $40
    inc a                                         ; $75b0: $3c
    ldh [$3e], a                                  ; $75b1: $e0 $3e
    ldh [$39], a                                  ; $75b3: $e0 $39
    cp c                                          ; $75b5: $b9
    add d                                         ; $75b6: $82
    add b                                         ; $75b7: $80
    ld [bc], a                                    ; $75b8: $02
    nop                                           ; $75b9: $00
    ld a, a                                       ; $75ba: $7f
    cp l                                          ; $75bb: $bd
    ld h, d                                       ; $75bc: $62
    add b                                         ; $75bd: $80
    ld b, b                                       ; $75be: $40
    ld h, d                                       ; $75bf: $62
    ld b, h                                       ; $75c0: $44
    ld b, b                                       ; $75c1: $40
    ld a, l                                       ; $75c2: $7d
    ldh [$fe], a                                  ; $75c3: $e0 $fe
    ret nz                                        ; $75c5: $c0

    cp $40                                        ; $75c6: $fe $40
    ld a, [c]                                     ; $75c8: $f2
    ld [c], a                                     ; $75c9: $e2
    add b                                         ; $75ca: $80
    nop                                           ; $75cb: $00
    jp c, $db61                                   ; $75cc: $da $61 $db

    add c                                         ; $75cf: $81
    jr nz, jr_053_75d2                            ; $75d0: $20 $00

jr_053_75d2:
    dec sp                                        ; $75d2: $3b
    cp $c6                                        ; $75d3: $fe $c6

jr_053_75d5:
    cp a                                          ; $75d5: $bf
    ld [c], a                                     ; $75d6: $e2
    dec [hl]                                      ; $75d7: $35
    jr c, jr_053_75d5                             ; $75d8: $38 $fb

    ld b, b                                       ; $75da: $40
    dec c                                         ; $75db: $0d
    ld [hl], $3f                                  ; $75dc: $36 $3f
    db $e3                                        ; $75de: $e3
    ld b, [hl]                                    ; $75df: $46
    sbc [hl]                                      ; $75e0: $9e
    cp b                                          ; $75e1: $b8
    and b                                         ; $75e2: $a0
    add c                                         ; $75e3: $81
    ld [hl+], a                                   ; $75e4: $22
    nop                                           ; $75e5: $00
    ld e, d                                       ; $75e6: $5a
    cp $c6                                        ; $75e7: $fe $c6
    ld [hl-], a                                   ; $75e9: $32
    ret nc                                        ; $75ea: $d0

jr_053_75eb:
    nop                                           ; $75eb: $00
    ld b, l                                       ; $75ec: $45
    add d                                         ; $75ed: $82
    ld b, b                                       ; $75ee: $40
    cp $20                                        ; $75ef: $fe $20
    jr c, jr_053_762a                             ; $75f1: $38 $37

    pop bc                                        ; $75f3: $c1
    pop hl                                        ; $75f4: $e1
    jp nz, $9000                                  ; $75f5: $c2 $00 $90

    add c                                         ; $75f8: $81
    dec h                                         ; $75f9: $25
    nop                                           ; $75fa: $00
    jr c, @+$56                                   ; $75fb: $38 $54

    and b                                         ; $75fd: $a0
    db $dd                                        ; $75fe: $dd
    nop                                           ; $75ff: $00
    sbc a                                         ; $7600: $9f
    rst $08                                       ; $7601: $cf
    ld hl, $00c2                                  ; $7602: $21 $c2 $00
    add hl, sp                                    ; $7605: $39
    ld bc, $f536                                  ; $7606: $01 $36 $f5
    and b                                         ; $7609: $a0
    dec sp                                        ; $760a: $3b
    add $b9                                       ; $760b: $c6 $b9
    and e                                         ; $760d: $a3
    nop                                           ; $760e: $00
    db $fc                                        ; $760f: $fc
    dec sp                                        ; $7610: $3b
    and c                                         ; $7611: $a1
    or a                                          ; $7612: $b7
    add d                                         ; $7613: $82
    ld [hl], l                                    ; $7614: $75

jr_053_7615:
    add d                                         ; $7615: $82
    rrca                                          ; $7616: $0f
    ld a, [hl-]                                   ; $7617: $3a
    ld [hl], $b2                                  ; $7618: $36 $b2
    add hl, sp                                    ; $761a: $39
    dec sp                                        ; $761b: $3b
    pop bc                                        ; $761c: $c1
    scf                                           ; $761d: $37
    ld h, b                                       ; $761e: $60
    cp c                                          ; $761f: $b9
    and e                                         ; $7620: $a3
    nop                                           ; $7621: $00
    ld e, e                                       ; $7622: $5b
    jr c, jr_053_76a0                             ; $7623: $38 $7b

    add b                                         ; $7625: $80
    db $dd                                        ; $7626: $dd
    dec b                                         ; $7627: $05
    or [hl]                                       ; $7628: $b6
    and e                                         ; $7629: $a3

jr_053_762a:
    add hl, sp                                    ; $762a: $39
    dec [hl]                                      ; $762b: $35
    ld [hl], $37                                  ; $762c: $36 $37
    ld b, d                                       ; $762e: $42
    cp d                                          ; $762f: $ba
    and d                                         ; $7630: $a2
    add b                                         ; $7631: $80
    or e                                          ; $7632: $b3
    ld h, b                                       ; $7633: $60
    ld e, a                                       ; $7634: $5f
    ld b, b                                       ; $7635: $40
    nop                                           ; $7636: $00
    ld a, e                                       ; $7637: $7b
    ld d, e                                       ; $7638: $53
    ld b, [hl]                                    ; $7639: $46
    or h                                          ; $763a: $b4
    ld h, c                                       ; $763b: $61
    cp b                                          ; $763c: $b8
    and c                                         ; $763d: $a1
    cp e                                          ; $763e: $bb
    ld hl, $1935                                  ; $763f: $21 $35 $19
    dec [hl]                                      ; $7642: $35
    or h                                          ; $7643: $b4
    ld h, d                                       ; $7644: $62
    dec [hl]                                      ; $7645: $35
    ld b, b                                       ; $7646: $40
    ret c                                         ; $7647: $d8

    reti                                          ; $7648: $d9


    nop                                           ; $7649: $00
    jp c, Jump_000_08f6                           ; $764a: $da $f6 $08

    ld d, h                                       ; $764d: $54
    jr nz, jr_053_75d2                            ; $764e: $20 $82

    ld hl, sp+$21                                 ; $7650: $f8 $21
    ld b, l                                       ; $7652: $45
    ld bc, $c0e1                                  ; $7653: $01 $e1 $c0
    rst $20                                       ; $7656: $e7
    ld a, $20                                     ; $7657: $3e $20
    nop                                           ; $7659: $00
    db $db                                        ; $765a: $db
    jr @+$69                                      ; $765b: $18 $67

    push af                                       ; $765d: $f5
    dec b                                         ; $765e: $05
    or $38                                        ; $765f: $f6 $38
    jr nz, jr_053_7615                            ; $7661: $20 $b2

    ld bc, $80e2                                  ; $7663: $01 $e2 $80
    ld [c], a                                     ; $7666: $e2
    ld a, [hl]                                    ; $7667: $7e
    pop bc                                        ; $7668: $c1
    or $61                                        ; $7669: $f6 $61
    nop                                           ; $766b: $00
    db $db                                        ; $766c: $db
    ld [$2971], sp                                ; $766d: $08 $71 $29
    inc [hl]                                      ; $7670: $34
    ld b, c                                       ; $7671: $41
    ld a, a                                       ; $7672: $7f
    db $e4                                        ; $7673: $e4
    ld a, $eb                                     ; $7674: $3e $eb
    ld h, c                                       ; $7676: $61
    di                                            ; $7677: $f3
    ld b, h                                       ; $7678: $44
    nop                                           ; $7679: $00
    reti                                          ; $767a: $d9


    or $28                                        ; $767b: $f6 $28
    nop                                           ; $767d: $00
    ld [hl], l                                    ; $767e: $75
    add d                                         ; $767f: $82
    ld a, d                                       ; $7680: $7a
    and b                                         ; $7681: $a0
    ld a, a                                       ; $7682: $7f
    ld [c], a                                     ; $7683: $e2
    ret nz                                        ; $7684: $c0

    and $7b                                       ; $7685: $e6 $7b
    adc [hl]                                      ; $7687: $8e
    and a                                         ; $7688: $a7
    ld d, h                                       ; $7689: $54
    ld [hl], l                                    ; $768a: $75
    add l                                         ; $768b: $85
    ld a, [c]                                     ; $768c: $f2
    jr nz, jr_053_768f                            ; $768d: $20 $00

jr_053_768f:
    or [hl]                                       ; $768f: $b6
    ld bc, $c03f                                  ; $7690: $01 $3f $c0
    di                                            ; $7693: $f3
    inc hl                                        ; $7694: $23
    ld a, e                                       ; $7695: $7b
    adc [hl]                                      ; $7696: $8e
    ld [hl+], a                                   ; $7697: $22
    ld d, [hl]                                    ; $7698: $56
    ld [hl], l                                    ; $7699: $75
    add a                                         ; $769a: $87
    cp [hl]                                       ; $769b: $be
    and [hl]                                      ; $769c: $a6
    ld [hl-], a                                   ; $769d: $32
    ld b, c                                       ; $769e: $41
    nop                                           ; $769f: $00

jr_053_76a0:
    and d                                         ; $76a0: $a2
    and b                                         ; $76a1: $a0
    ld [hl], c                                    ; $76a2: $71
    ld c, d                                       ; $76a3: $4a
    nop                                           ; $76a4: $00
    ld hl, sp+$77                                 ; $76a5: $f8 $77
    and c                                         ; $76a7: $a1
    di                                            ; $76a8: $f3
    ld [bc], a                                    ; $76a9: $02
    ccf                                           ; $76aa: $3f
    ret z                                         ; $76ab: $c8

    cp $82                                        ; $76ac: $fe $82
    nop                                           ; $76ae: $00
    rst $38                                       ; $76af: $ff
    add b                                         ; $76b0: $80
    ld [hl], c                                    ; $76b1: $71
    ld [bc], a                                    ; $76b2: $02
    ld [hl], a                                    ; $76b3: $77
    and c                                         ; $76b4: $a1
    or h                                          ; $76b5: $b4
    add c                                         ; $76b6: $81
    ei                                            ; $76b7: $fb
    and c                                         ; $76b8: $a1
    rst $38                                       ; $76b9: $ff
    and h                                         ; $76ba: $a4
    cp $85                                        ; $76bb: $fe $85
    nop                                           ; $76bd: $00
    rst $18                                       ; $76be: $df

jr_053_76bf:
    db $e4                                        ; $76bf: $e4
    nop                                           ; $76c0: $00
    adc h                                         ; $76c1: $8c
    ld b, h                                       ; $76c2: $44
    ld sp, $ba61                                  ; $76c3: $31 $61 $ba
    and b                                         ; $76c6: $a0
    ld a, a                                       ; $76c7: $7f
    and h                                         ; $76c8: $a4
    and d                                         ; $76c9: $a2
    and e                                         ; $76ca: $a3
    nop                                           ; $76cb: $00
    rst $38                                       ; $76cc: $ff
    ld c, $20                                     ; $76cd: $0e $20
    ld [hl], a                                    ; $76cf: $77
    and h                                         ; $76d0: $a4
    ld [bc], a                                    ; $76d1: $02
    ld [hl], d                                    ; $76d2: $72
    ld h, e                                       ; $76d3: $63
    ccf                                           ; $76d4: $3f
    rst $38                                       ; $76d5: $ff
    add d                                         ; $76d6: $82
    di                                            ; $76d7: $f3
    jr nz, jr_053_76bf                            ; $76d8: $20 $e5

    add e                                         ; $76da: $83
    nop                                           ; $76db: $00
    rst $38                                       ; $76dc: $ff
    db $ec                                        ; $76dd: $ec
    ld h, h                                       ; $76de: $64
    or d                                          ; $76df: $b2
    ld h, d                                       ; $76e0: $62
    ld l, $6e                                     ; $76e1: $2e $6e
    nop                                           ; $76e3: $00
    ld b, e                                       ; $76e4: $43
    ld b, c                                       ; $76e5: $41
    ld b, e                                       ; $76e6: $43
    db $fd                                        ; $76e7: $fd
    ldh [rLYC], a                                 ; $76e8: $e0 $45
    or d                                          ; $76ea: $b2
    ld hl, $4079                                  ; $76eb: $21 $79 $40
    ld [hl], b                                    ; $76ee: $70
    nop                                           ; $76ef: $00
    rst $38                                       ; $76f0: $ff

jr_053_76f1:
    sub e                                         ; $76f1: $93
    dec b                                         ; $76f2: $05
    xor [hl]                                      ; $76f3: $ae
    ld [bc], a                                    ; $76f4: $02
    halt                                          ; $76f5: $76
    ld h, b                                       ; $76f6: $60
    dec sp                                        ; $76f7: $3b
    dec [hl]                                      ; $76f8: $35
    dec sp                                        ; $76f9: $3b
    db $fd                                        ; $76fa: $fd
    ldh [$83], a                                  ; $76fb: $e0 $83
    ld [hl], $45                                  ; $76fd: $36 $45
    db $fd                                        ; $76ff: $fd
    add d                                         ; $7700: $82
    nop                                           ; $7701: $00
    rst $38                                       ; $7702: $ff
    or $86                                        ; $7703: $f6 $86
    ld a, [$3681]                                 ; $7705: $fa $81 $36
    ld h, b                                       ; $7708: $60
    inc a                                         ; $7709: $3c
    dec sp                                        ; $770a: $3b
    and h                                         ; $770b: $a4
    ld h, h                                       ; $770c: $64
    rst $38                                       ; $770d: $ff
    ldh [$a5], a                                  ; $770e: $e0 $a5
    inc a                                         ; $7710: $3c
    ld b, h                                       ; $7711: $44
    pop af                                        ; $7712: $f1
    inc bc                                        ; $7713: $03
    nop                                           ; $7714: $00
    rst $38                                       ; $7715: $ff
    db $fc                                        ; $7716: $fc
    db $ec                                        ; $7717: $ec
    ld b, $7e                                     ; $7718: $06 $7e
    pop bc                                        ; $771a: $c1
    or d                                          ; $771b: $b2
    ld b, d                                       ; $771c: $42
    dec [hl]                                      ; $771d: $35
    ld l, c                                       ; $771e: $69
    and e                                         ; $771f: $a3
    dec [hl]                                      ; $7720: $35
    rra                                           ; $7721: $1f
    dec [hl]                                      ; $7722: $35
    and e                                         ; $7723: $a3
    ld l, d                                       ; $7724: $6a
    dec [hl]                                      ; $7725: $35
    ld b, d                                       ; $7726: $42
    db $fd                                        ; $7727: $fd
    add e                                         ; $7728: $83
    nop                                           ; $7729: $00
    rst $38                                       ; $772a: $ff
    nop                                           ; $772b: $00
    add sp, -$80                                  ; $772c: $e8 $80
    xor a                                         ; $772e: $af
    jr nz, jr_053_76f1                            ; $772f: $20 $c0

    ldh [$fb], a                                  ; $7731: $e0 $fb
    ld h, c                                       ; $7733: $61
    ret nz                                        ; $7734: $c0

    ld [c], a                                     ; $7735: $e2
    nop                                           ; $7736: $00
    rst $38                                       ; $7737: $ff
    nop                                           ; $7738: $00
    db $ec                                        ; $7739: $ec
    ld l, a                                       ; $773a: $6f
    jr nz, jr_053_7781                            ; $773b: $20 $44

    rla                                           ; $773d: $17
    inc a                                         ; $773e: $3c
    ld l, e                                       ; $773f: $6b
    ld [hl], c                                    ; $7740: $71
    rst $38                                       ; $7741: $ff
    ldh [$6d], a                                  ; $7742: $e0 $6d
    ld b, b                                       ; $7744: $40
    ld [c], a                                     ; $7745: $e2
    nop                                           ; $7746: $00
    rst $38                                       ; $7747: $ff
    nop                                           ; $7748: $00
    db $eb                                        ; $7749: $eb
    ld [bc], a                                    ; $774a: $02
    ld [hl], c                                    ; $774b: $71
    ld b, b                                       ; $774c: $40
    ld b, l                                       ; $774d: $45
    ret nz                                        ; $774e: $c0

    add $79                                       ; $774f: $c6 $79
    inc hl                                        ; $7751: $23
    nop                                           ; $7752: $00
    rst $38                                       ; $7753: $ff
    db $ec                                        ; $7754: $ec
    rlca                                          ; $7755: $07
    dec sp                                        ; $7756: $3b
    and d                                         ; $7757: $a2
    ld b, b                                       ; $7758: $40
    push bc                                       ; $7759: $c5
    sub b                                         ; $775a: $90
    cp $43                                        ; $775b: $fe $43
    nop                                           ; $775d: $00
    rst $38                                       ; $775e: $ff
    db $ec                                        ; $775f: $ec
    ld h, $10                                     ; $7760: $26 $10
    and e                                         ; $7762: $a3
    sbc a                                         ; $7763: $9f
    ld [hl], h                                    ; $7764: $74
    ld b, c                                       ; $7765: $41
    add c                                         ; $7766: $81
    add b                                         ; $7767: $80
    sbc l                                         ; $7768: $9d
    ld b, b                                       ; $7769: $40
    cp a                                          ; $776a: $bf
    ld b, b                                       ; $776b: $40
    ret nz                                        ; $776c: $c0

    add c                                         ; $776d: $81
    nop                                           ; $776e: $00
    rst $38                                       ; $776f: $ff
    db $ec                                        ; $7770: $ec
    ld h, l                                       ; $7771: $65
    ld c, $45                                     ; $7772: $0e $45
    cpl                                           ; $7774: $2f
    ld b, d                                       ; $7775: $42
    sbc a                                         ; $7776: $9f
    ld [hl+], a                                   ; $7777: $22
    ld hl, $be00                                  ; $7778: $21 $00 $be
    inc hl                                        ; $777b: $23
    nop                                           ; $777c: $00
    rst $38                                       ; $777d: $ff
    or $43                                        ; $777e: $f6 $43
    or d                                          ; $7780: $b2

jr_053_7781:
    ld b, e                                       ; $7781: $43
    adc e                                         ; $7782: $8b
    ld h, d                                       ; $7783: $62
    ld [hl+], a                                   ; $7784: $22
    ld [bc], a                                    ; $7785: $02
    cp [hl]                                       ; $7786: $be
    dec h                                         ; $7787: $25
    nop                                           ; $7788: $00
    rst $38                                       ; $7789: $ff
    jr nc, jr_053_7807                            ; $778a: $30 $7b

    add l                                         ; $778c: $85
    sub c                                         ; $778d: $91
    ld hl, $618b                                  ; $778e: $21 $8b $61
    ld [$d8c1], sp                                ; $7791: $08 $c1 $d8
    reti                                          ; $7794: $d9


    ld h, d                                       ; $7795: $62
    ld b, l                                       ; $7796: $45
    nop                                           ; $7797: $00
    daa                                           ; $7798: $27
    nop                                           ; $7799: $00
    nop                                           ; $779a: $00
    nop                                           ; $779b: $00
    pop bc                                        ; $779c: $c1
    nop                                           ; $779d: $00
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
    nop                                           ; $77a8: $00
    nop                                           ; $77a9: $00
    dec c                                         ; $77aa: $0d
    add b                                         ; $77ab: $80
    cp $e0                                        ; $77ac: $fe $e0
    nop                                           ; $77ae: $00
    ld b, b                                       ; $77af: $40
    ret c                                         ; $77b0: $d8

    push hl                                       ; $77b1: $e5
    rst $30                                       ; $77b2: $f7
    and $ff                                       ; $77b3: $e6 $ff
    rst $38                                       ; $77b5: $ff
    rst $38                                       ; $77b6: $ff
    rst $30                                       ; $77b7: $f7
    nop                                           ; $77b8: $00
    nop                                           ; $77b9: $00
    nop                                           ; $77ba: $00
    ld bc, $2700                                  ; $77bb: $01 $00 $27
    inc b                                         ; $77be: $04
    ld bc, $2801                                  ; $77bf: $01 $01 $28
    inc b                                         ; $77c2: $04
    ld bc, $2802                                  ; $77c3: $01 $02 $28
    dec b                                         ; $77c6: $05
    ld bc, $2903                                  ; $77c7: $01 $03 $29
    dec b                                         ; $77ca: $05
    ld bc, $2904                                  ; $77cb: $01 $04 $29
    ld b, $01                                     ; $77ce: $06 $01
    dec b                                         ; $77d0: $05
    ld a, [hl+]                                   ; $77d1: $2a
    ld [$0601], sp                                ; $77d2: $08 $01 $06
    ld a, [hl+]                                   ; $77d5: $2a
    add hl, bc                                    ; $77d6: $09
    ld bc, $2b07                                  ; $77d7: $01 $07 $2b
    add hl, bc                                    ; $77da: $09
    ld bc, $2a08                                  ; $77db: $01 $08 $2a
    ld a, [bc]                                    ; $77de: $0a
    ld bc, $2b09                                  ; $77df: $01 $09 $2b
    ld a, [bc]                                    ; $77e2: $0a
    ld bc, $1d0a                                  ; $77e3: $01 $0a $1d
    dec bc                                        ; $77e6: $0b
    ld bc, $1e0b                                  ; $77e7: $01 $0b $1e
    dec bc                                        ; $77ea: $0b
    ld bc, $2a0c                                  ; $77eb: $01 $0c $2a
    dec bc                                        ; $77ee: $0b
    ld bc, $1c0d                                  ; $77ef: $01 $0d $1c
    inc c                                         ; $77f2: $0c
    ld bc, $1d0e                                  ; $77f3: $01 $0e $1d
    inc c                                         ; $77f6: $0c
    ld bc, $1e0f                                  ; $77f7: $01 $0f $1e
    inc c                                         ; $77fa: $0c
    ld bc, $1d10                                  ; $77fb: $01 $10 $1d
    dec c                                         ; $77fe: $0d
    ld bc, $2111                                  ; $77ff: $01 $11 $21
    ld c, $01                                     ; $7802: $0e $01
    ld [de], a                                    ; $7804: $12
    jr nz, jr_053_7816                            ; $7805: $20 $0f

jr_053_7807:
    ld bc, $2113                                  ; $7807: $01 $13 $21
    rrca                                          ; $780a: $0f
    ld bc, $2014                                  ; $780b: $01 $14 $20
    db $10                                        ; $780e: $10
    ld bc, $1715                                  ; $780f: $01 $15 $17
    ld de, $1601                                  ; $7812: $11 $01 $16
    rra                                           ; $7815: $1f

jr_053_7816:
    ld de, $1701                                  ; $7816: $11 $01 $17
    jr nz, @+$13                                  ; $7819: $20 $11

    ld bc, $1618                                  ; $781b: $01 $18 $16
    ld [de], a                                    ; $781e: $12
    ld bc, $1819                                  ; $781f: $01 $19 $18
    ld [de], a                                    ; $7822: $12
    ld bc, $151a                                  ; $7823: $01 $1a $15
    inc de                                        ; $7826: $13
    ld bc, $161b                                  ; $7827: $01 $1b $16
    inc de                                        ; $782a: $13
    ld bc, $171c                                  ; $782b: $01 $1c $17
    inc de                                        ; $782e: $13
    ld bc, $181d                                  ; $782f: $01 $1d $18
    inc de                                        ; $7832: $13
    ld bc, $171e                                  ; $7833: $01 $1e $17
    inc d                                         ; $7836: $14
    ld bc, $111f                                  ; $7837: $01 $1f $11
    dec d                                         ; $783a: $15
    ld bc, $1220                                  ; $783b: $01 $20 $12
    dec d                                         ; $783e: $15
    ld bc, $1a21                                  ; $783f: $01 $21 $1a
    dec d                                         ; $7842: $15
    ld bc, $1b22                                  ; $7843: $01 $22 $1b
    dec d                                         ; $7846: $15
    ld bc, $1c23                                  ; $7847: $01 $23 $1c
    dec d                                         ; $784a: $15
    ld bc, $1024                                  ; $784b: $01 $24 $10
    ld d, $01                                     ; $784e: $16 $01
    dec h                                         ; $7850: $25
    ld de, $0116                                  ; $7851: $11 $16 $01
    ld h, $1a                                     ; $7854: $26 $1a
    ld d, $01                                     ; $7856: $16 $01
    daa                                           ; $7858: $27
    dec de                                        ; $7859: $1b
    ld d, $01                                     ; $785a: $16 $01
    jr z, jr_053_787a                             ; $785c: $28 $1c

    ld d, $01                                     ; $785e: $16 $01
    add hl, hl                                    ; $7860: $29
    db $10                                        ; $7861: $10
    rla                                           ; $7862: $17
    ld bc, $112a                                  ; $7863: $01 $2a $11
    rla                                           ; $7866: $17
    ld bc, $1b2b                                  ; $7867: $01 $2b $1b
    rla                                           ; $786a: $17
    ld bc, $102c                                  ; $786b: $01 $2c $10
    jr jr_053_7872                                ; $786e: $18 $02

    dec l                                         ; $7870: $2d
    dec de                                        ; $7871: $1b

jr_053_7872:
    ld a, [de]                                    ; $7872: $1a
    ld bc, $142e                                  ; $7873: $01 $2e $14
    dec de                                        ; $7876: $1b
    ld [bc], a                                    ; $7877: $02
    cpl                                           ; $7878: $2f
    inc e                                         ; $7879: $1c

jr_053_787a:
    dec de                                        ; $787a: $1b
    ld bc, $1330                                  ; $787b: $01 $30 $13
    inc e                                         ; $787e: $1c
    ld bc, $1431                                  ; $787f: $01 $31 $14
    inc e                                         ; $7882: $1c
    ld bc, $1532                                  ; $7883: $01 $32 $15
    inc e                                         ; $7886: $1c
    ld bc, $1633                                  ; $7887: $01 $33 $16
    inc e                                         ; $788a: $1c
    ld [bc], a                                    ; $788b: $02
    inc [hl]                                      ; $788c: $34
    dec e                                         ; $788d: $1d
    inc e                                         ; $788e: $1c
    ld [bc], a                                    ; $788f: $02
    dec [hl]                                      ; $7890: $35
    ld e, $1c                                     ; $7891: $1e $1c
    ld bc, $1336                                  ; $7893: $01 $36 $13
    dec e                                         ; $7896: $1d
    ld bc, $1437                                  ; $7897: $01 $37 $14
    dec e                                         ; $789a: $1d
    ld bc, $1538                                  ; $789b: $01 $38 $15
    dec e                                         ; $789e: $1d
    ld bc, $1639                                  ; $789f: $01 $39 $16
    dec e                                         ; $78a2: $1d
    ld [bc], a                                    ; $78a3: $02
    ld a, [hl-]                                   ; $78a4: $3a
    rra                                           ; $78a5: $1f
    dec e                                         ; $78a6: $1d
    ld bc, $143b                                  ; $78a7: $01 $3b $14
    ld e, $01                                     ; $78aa: $1e $01
    inc a                                         ; $78ac: $3c
    dec d                                         ; $78ad: $15
    ld e, $02                                     ; $78ae: $1e $02
    dec a                                         ; $78b0: $3d
    jr nz, @+$20                                  ; $78b1: $20 $1e

    ld bc, $153e                                  ; $78b3: $01 $3e $15
    rra                                           ; $78b6: $1f
    ld bc, $213f                                  ; $78b7: $01 $3f $21
    jr nz, jr_053_78bd                            ; $78ba: $20 $01

    ld b, b                                       ; $78bc: $40

jr_053_78bd:
    ld hl, $0121                                  ; $78bd: $21 $21 $01
    ld b, c                                       ; $78c0: $41
    ld [hl+], a                                   ; $78c1: $22
    ld hl, $4201                                  ; $78c2: $21 $01 $42
    daa                                           ; $78c5: $27
    ld hl, $4301                                  ; $78c6: $21 $01 $43
    jr @+$24                                      ; $78c9: $18 $22

    ld bc, $2244                                  ; $78cb: $01 $44 $22
    ld [hl+], a                                   ; $78ce: $22
    ld bc, $2345                                  ; $78cf: $01 $45 $23
    ld [hl+], a                                   ; $78d2: $22
    ld bc, $2746                                  ; $78d3: $01 $46 $27
    ld [hl+], a                                   ; $78d6: $22
    ld bc, $2847                                  ; $78d7: $01 $47 $28
    ld [hl+], a                                   ; $78da: $22
    ld bc, $1848                                  ; $78db: $01 $48 $18
    inc hl                                        ; $78de: $23
    ld bc, $1949                                  ; $78df: $01 $49 $19
    inc hl                                        ; $78e2: $23
    ld bc, $1a4a                                  ; $78e3: $01 $4a $1a
    inc hl                                        ; $78e6: $23
    ld bc, $224b                                  ; $78e7: $01 $4b $22
    inc hl                                        ; $78ea: $23
    ld bc, $234c                                  ; $78eb: $01 $4c $23
    inc hl                                        ; $78ee: $23
    ld bc, $264d                                  ; $78ef: $01 $4d $26
    inc hl                                        ; $78f2: $23
    ld bc, $274e                                  ; $78f3: $01 $4e $27
    inc hl                                        ; $78f6: $23
    ld bc, $284f                                  ; $78f7: $01 $4f $28
    inc hl                                        ; $78fa: $23
    ld bc, $2950                                  ; $78fb: $01 $50 $29
    inc hl                                        ; $78fe: $23
    ld bc, $1951                                  ; $78ff: $01 $51 $19
    inc h                                         ; $7902: $24
    ld bc, $1a52                                  ; $7903: $01 $52 $1a
    inc h                                         ; $7906: $24
    ld bc, $1b53                                  ; $7907: $01 $53 $1b
    inc h                                         ; $790a: $24
    ld bc, $2354                                  ; $790b: $01 $54 $23
    inc h                                         ; $790e: $24
    ld bc, $2855                                  ; $790f: $01 $55 $28
    inc h                                         ; $7912: $24
    ld bc, $1a56                                  ; $7913: $01 $56 $1a
    dec h                                         ; $7916: $25
    ld bc, $1e57                                  ; $7917: $01 $57 $1e
    dec h                                         ; $791a: $25
    ld bc, $1f58                                  ; $791b: $01 $58 $1f
    dec h                                         ; $791e: $25
    ld bc, $2759                                  ; $791f: $01 $59 $27
    dec h                                         ; $7922: $25
    ld bc, $1f5a                                  ; $7923: $01 $5a $1f
    ld h, $01                                     ; $7926: $26 $01
    ld e, e                                       ; $7928: $5b
    jr nz, @+$28                                  ; $7929: $20 $26

    ld bc, $205c                                  ; $792b: $01 $5c $20
    daa                                           ; $792e: $27
    ld bc, $1e5d                                  ; $792f: $01 $5d $1e
    ld a, [hl+]                                   ; $7932: $2a
    ld bc, $1e5e                                  ; $7933: $01 $5e $1e
    dec hl                                        ; $7936: $2b
    ld bc, $1f5f                                  ; $7937: $01 $5f $1f
    dec hl                                        ; $793a: $2b
    ld bc, $2960                                  ; $793b: $01 $60 $29
    dec hl                                        ; $793e: $2b
    ld bc, $1d61                                  ; $793f: $01 $61 $1d
    inc l                                         ; $7942: $2c
    ld bc, $1e62                                  ; $7943: $01 $62 $1e
    inc l                                         ; $7946: $2c
    ld bc, $1f63                                  ; $7947: $01 $63 $1f
    inc l                                         ; $794a: $2c
    ld bc, $2864                                  ; $794b: $01 $64 $28
    inc l                                         ; $794e: $2c
    ld bc, $2965                                  ; $794f: $01 $65 $29
    inc l                                         ; $7952: $2c
    ld bc, $2a66                                  ; $7953: $01 $66 $2a
    inc l                                         ; $7956: $2c
    ld bc, $1e67                                  ; $7957: $01 $67 $1e
    dec l                                         ; $795a: $2d
    ld bc, $1f68                                  ; $795b: $01 $68 $1f
    dec l                                         ; $795e: $2d
    ld bc, $2069                                  ; $795f: $01 $69 $20
    dec l                                         ; $7962: $2d
    ld bc, $286a                                  ; $7963: $01 $6a $28
    dec l                                         ; $7966: $2d
    ld bc, $296b                                  ; $7967: $01 $6b $29
    dec l                                         ; $796a: $2d
    ld bc, $2a6c                                  ; $796b: $01 $6c $2a
    dec l                                         ; $796e: $2d
    ld bc, $1f6d                                  ; $796f: $01 $6d $1f
    ld l, $01                                     ; $7972: $2e $01
    ld l, [hl]                                    ; $7974: $6e
    add hl, hl                                    ; $7975: $29
    ld l, $01                                     ; $7976: $2e $01
    ld l, a                                       ; $7978: $6f
    inc hl                                        ; $7979: $23
    inc [hl]                                      ; $797a: $34
    ld bc, $2270                                  ; $797b: $01 $70 $22
    dec [hl]                                      ; $797e: $35
    ld bc, $2371                                  ; $797f: $01 $71 $23
    dec [hl]                                      ; $7982: $35
    ld bc, $2472                                  ; $7983: $01 $72 $24
    dec [hl]                                      ; $7986: $35
    ld bc, $2273                                  ; $7987: $01 $73 $22
    ld [hl], $01                                  ; $798a: $36 $01
    ld [hl], h                                    ; $798c: $74
    inc hl                                        ; $798d: $23
    ld [hl], $01                                  ; $798e: $36 $01
    ld [hl], l                                    ; $7990: $75
    inc h                                         ; $7991: $24
    ld [hl], $01                                  ; $7992: $36 $01
    halt                                          ; $7994: $76
    inc hl                                        ; $7995: $23
    scf                                           ; $7996: $37
    rst $38                                       ; $7997: $ff
    rst $38                                       ; $7998: $ff
    rst $38                                       ; $7999: $ff
    and d                                         ; $799a: $a2
    ld a, c                                       ; $799b: $79
    add a                                         ; $799c: $87
    ld a, e                                       ; $799d: $7b
    db $eb                                        ; $799e: $eb
    ld a, l                                       ; $799f: $7d
    ld b, $7e                                     ; $79a0: $06 $7e
    ccf                                           ; $79a2: $3f
    dec c                                         ; $79a3: $0d
    dec c                                         ; $79a4: $0d
    dec c                                         ; $79a5: $0d
    ld c, $0e                                     ; $79a6: $0e $0e
    ld c, $fa                                     ; $79a8: $0e $fa
    rst $38                                       ; $79aa: $ff
    db $f4                                        ; $79ab: $f4
    rst $30                                       ; $79ac: $f7
    nop                                           ; $79ad: $00
    rst $38                                       ; $79ae: $ff
    rst $38                                       ; $79af: $ff
    rst $38                                       ; $79b0: $ff
    rst $38                                       ; $79b1: $ff
    rst $38                                       ; $79b2: $ff
    rst $38                                       ; $79b3: $ff
    ld sp, hl                                     ; $79b4: $f9
    ld hl, sp+$5b                                 ; $79b5: $f8 $5b
    rst $38                                       ; $79b7: $ff
    db $f4                                        ; $79b8: $f4
    ld hl, sp-$5f                                 ; $79b9: $f8 $a1
    rst $38                                       ; $79bb: $ff
    rst $38                                       ; $79bc: $ff
    rst $38                                       ; $79bd: $ff
    nop                                           ; $79be: $00
    rst $38                                       ; $79bf: $ff
    rst $38                                       ; $79c0: $ff
    ld b, e                                       ; $79c1: $43
    rst $38                                       ; $79c2: $ff
    ld a, [$80ff]                                 ; $79c3: $fa $ff $80
    rst $18                                       ; $79c6: $df
    rst $38                                       ; $79c7: $ff
    rst $38                                       ; $79c8: $ff
    rst $38                                       ; $79c9: $ff
    rst $38                                       ; $79ca: $ff
    rst $38                                       ; $79cb: $ff
    rst $38                                       ; $79cc: $ff
    dec a                                         ; $79cd: $3d
    rst $38                                       ; $79ce: $ff
    nop                                           ; $79cf: $00
    ld a, [$80ff]                                 ; $79d0: $fa $ff $80
    rst $18                                       ; $79d3: $df
    rst $38                                       ; $79d4: $ff
    rst $38                                       ; $79d5: $ff
    rst $38                                       ; $79d6: $ff
    rst $38                                       ; $79d7: $ff
    rst $38                                       ; $79d8: $ff
    rst $38                                       ; $79d9: $ff
    ld e, e                                       ; $79da: $5b
    rst $38                                       ; $79db: $ff
    ld a, [$ffff]                                 ; $79dc: $fa $ff $ff
    rst $38                                       ; $79df: $ff
    nop                                           ; $79e0: $00
    rst $38                                       ; $79e1: $ff
    rst $38                                       ; $79e2: $ff
    rst $38                                       ; $79e3: $ff
    rst $38                                       ; $79e4: $ff
    dec a                                         ; $79e5: $3d
    rst $38                                       ; $79e6: $ff
    ld a, [$80ff]                                 ; $79e7: $fa $ff $80
    rst $18                                       ; $79ea: $df
    rst $38                                       ; $79eb: $ff
    rst $38                                       ; $79ec: $ff
    rst $38                                       ; $79ed: $ff
    rst $38                                       ; $79ee: $ff
    rst $38                                       ; $79ef: $ff
    rst $38                                       ; $79f0: $ff
    nop                                           ; $79f1: $00
    ld b, e                                       ; $79f2: $43
    rst $38                                       ; $79f3: $ff
    ld b, e                                       ; $79f4: $43
    ld [c], a                                     ; $79f5: $e2
    db $fd                                        ; $79f6: $fd
    jp hl                                         ; $79f7: $e9


    add b                                         ; $79f8: $80
    rst $18                                       ; $79f9: $df
    and a                                         ; $79fa: $a7
    ldh a, [rSB]                                  ; $79fb: $f0 $01
    ldh [$c4], a                                  ; $79fd: $e0 $c4
    db $e4                                        ; $79ff: $e4
    rst $38                                       ; $7a00: $ff
    rst $38                                       ; $7a01: $ff
    nop                                           ; $7a02: $00
    ret nz                                        ; $7a03: $c0

    push af                                       ; $7a04: $f5
    db $dd                                        ; $7a05: $dd
    rst $18                                       ; $7a06: $df
    ld b, e                                       ; $7a07: $43
    push af                                       ; $7a08: $f5
    jp $80e5                                      ; $7a09: $c3 $e5 $80


    ld [c], a                                     ; $7a0c: $e2
    scf                                           ; $7a0d: $37
    or $ad                                        ; $7a0e: $f6 $ad
    db $f4                                        ; $7a10: $f4
    add [hl]                                      ; $7a11: $86
    db $e3                                        ; $7a12: $e3
    ldh a, [$3d]                                  ; $7a13: $f0 $3d
    push hl                                       ; $7a15: $e5
    ei                                            ; $7a16: $fb
    and $49                                       ; $7a17: $e6 $49
    rst $38                                       ; $7a19: $ff
    ret nz                                        ; $7a1a: $c0

    jp hl                                         ; $7a1b: $e9


    ld c, l                                       ; $7a1c: $4d
    dec c                                         ; $7a1d: $0d
    ld c, l                                       ; $7a1e: $4d
    ld c, l                                       ; $7a1f: $4d
    jp Jump_053_4d2d                              ; $7a20: $c3 $2d $4d


    cp $c4                                        ; $7a23: $fe $c4
    ret nz                                        ; $7a25: $c0

    db $f4                                        ; $7a26: $f4
    ld b, e                                       ; $7a27: $43
    rst $30                                       ; $7a28: $f7
    pop bc                                        ; $7a29: $c1
    and b                                         ; $7a2a: $a0
    ld l, l                                       ; $7a2b: $6d
    dec bc                                        ; $7a2c: $0b
    adc e                                         ; $7a2d: $8b
    ld c, e                                       ; $7a2e: $4b
    ld c, l                                       ; $7a2f: $4d
    cp l                                          ; $7a30: $bd
    ldh [$2d], a                                  ; $7a31: $e0 $2d
    or $c8                                        ; $7a33: $f6 $c8
    add b                                         ; $7a35: $80
    rst $18                                       ; $7a36: $df
    ld b, l                                       ; $7a37: $45
    add $6d                                       ; $7a38: $c6 $6d
    rst $28                                       ; $7a3a: $ef
    ld c, e                                       ; $7a3b: $4b
    ld c, e                                       ; $7a3c: $4b
    ld c, e                                       ; $7a3d: $4b
    dec bc                                        ; $7a3e: $0b
    db $fc                                        ; $7a3f: $fc
    ldh [rWX], a                                  ; $7a40: $e0 $4b
    ld c, l                                       ; $7a42: $4d
    dec l                                         ; $7a43: $2d
    jr nc, jr_053_7a89                            ; $7a44: $30 $43

    rst $38                                       ; $7a46: $ff
    db $ed                                        ; $7a47: $ed
    xor l                                         ; $7a48: $ad
    pop bc                                        ; $7a49: $c1
    db $e3                                        ; $7a4a: $e3
    db $fd                                        ; $7a4b: $fd
    db $e4                                        ; $7a4c: $e4
    ld l, l                                       ; $7a4d: $6d
    dec c                                         ; $7a4e: $0d
    ld a, [hl-]                                   ; $7a4f: $3a
    push hl                                       ; $7a50: $e5
    add b                                         ; $7a51: $80
    rst $18                                       ; $7a52: $df
    ld [hl], $95                                  ; $7a53: $36 $95
    db $e4                                        ; $7a55: $e4
    dec c                                         ; $7a56: $0d
    ld c, l                                       ; $7a57: $4d
    pop bc                                        ; $7a58: $c1
    rst $20                                       ; $7a59: $e7
    ld c, e                                       ; $7a5a: $4b
    ld l, l                                       ; $7a5b: $6d
    or b                                          ; $7a5c: $b0
    and a                                         ; $7a5d: $a7
    add b                                         ; $7a5e: $80
    db $dd                                        ; $7a5f: $dd
    cp d                                          ; $7a60: $ba
    sbc b                                         ; $7a61: $98
    push bc                                       ; $7a62: $c5
    dec l                                         ; $7a63: $2d
    ret nz                                        ; $7a64: $c0

    pop hl                                        ; $7a65: $e1
    dec hl                                        ; $7a66: $2b
    dec bc                                        ; $7a67: $0b
    dec bc                                        ; $7a68: $0b
    ccf                                           ; $7a69: $3f
    pop hl                                        ; $7a6a: $e1
    dec c                                         ; $7a6b: $0d
    ld [hl], b                                    ; $7a6c: $70
    ret nz                                        ; $7a6d: $c0

    pop hl                                        ; $7a6e: $e1
    ld de, $c09f                                  ; $7a6f: $11 $9f $c0
    rst $20                                       ; $7a72: $e7
    ld b, c                                       ; $7a73: $41
    ld [c], a                                     ; $7a74: $e2
    dec bc                                        ; $7a75: $0b
    ld c, e                                       ; $7a76: $4b
    ld l, e                                       ; $7a77: $6b
    ret nz                                        ; $7a78: $c0

    ldh [$1f], a                                  ; $7a79: $e0 $1f
    dec hl                                        ; $7a7b: $2b
    dec bc                                        ; $7a7c: $0b
    ld c, e                                       ; $7a7d: $4b
    dec bc                                        ; $7a7e: $0b
    ld l, l                                       ; $7a7f: $6d
    ld sp, $43c6                                  ; $7a80: $31 $c6 $43
    rst $38                                       ; $7a83: $ff
    db $10                                        ; $7a84: $10
    push bc                                       ; $7a85: $c5
    cp [hl]                                       ; $7a86: $be
    ld b, c                                       ; $7a87: $41
    pop hl                                        ; $7a88: $e1

jr_053_7a89:
    ld l, e                                       ; $7a89: $6b
    ld l, e                                       ; $7a8a: $6b
    dec bc                                        ; $7a8b: $0b
    dec bc                                        ; $7a8c: $0b
    ld l, e                                       ; $7a8d: $6b
    ret nz                                        ; $7a8e: $c0

    jp Jump_053_704d                              ; $7a8f: $c3 $4d $70


    cp [hl]                                       ; $7a92: $be
    push bc                                       ; $7a93: $c5
    add b                                         ; $7a94: $80
    rst $18                                       ; $7a95: $df
    dec a                                         ; $7a96: $3d
    db $e4                                        ; $7a97: $e4
    add h                                         ; $7a98: $84
    ret nz                                        ; $7a99: $c0

    ld l, e                                       ; $7a9a: $6b
    ld l, e                                       ; $7a9b: $6b
    ld c, e                                       ; $7a9c: $4b
    pop bc                                        ; $7a9d: $c1
    pop hl                                        ; $7a9e: $e1
    jr nz, jr_053_7b20                            ; $7a9f: $20 $7f

    jp nz, $ff43                                  ; $7aa1: $c2 $43 $ff

    ld b, b                                       ; $7aa4: $40
    res 0, b                                      ; $7aa5: $cb $80
    ld [c], a                                     ; $7aa7: $e2
    ccf                                           ; $7aa8: $3f
    push bc                                       ; $7aa9: $c5
    dec bc                                        ; $7aaa: $0b
    ccf                                           ; $7aab: $3f
    jp nz, $df80                                  ; $7aac: $c2 $80 $df

    ld d, $ca                                     ; $7aaf: $16 $ca
    adc b                                         ; $7ab1: $88
    ld c, l                                       ; $7ab2: $4d
    dec l                                         ; $7ab3: $2d
    add b                                         ; $7ab4: $80
    ret z                                         ; $7ab5: $c8

    dec c                                         ; $7ab6: $0d
    cp $c2                                        ; $7ab7: $fe $c2
    add b                                         ; $7ab9: $80
    rst $18                                       ; $7aba: $df
    inc bc                                        ; $7abb: $03
    add $1e                                       ; $7abc: $c6 $1e
    add b                                         ; $7abe: $80
    jp nz, Jump_000_0d0b                          ; $7abf: $c2 $0b $0d

    dec c                                         ; $7ac2: $0d
    dec l                                         ; $7ac3: $2d
    ld a, a                                       ; $7ac4: $7f
    pop bc                                        ; $7ac5: $c1
    ld a, b                                       ; $7ac6: $78
    and b                                         ; $7ac7: $a0
    dec a                                         ; $7ac8: $3d
    and h                                         ; $7ac9: $a4
    inc d                                         ; $7aca: $14
    dec a                                         ; $7acb: $3d
    rst $38                                       ; $7acc: $ff
    ret nz                                        ; $7acd: $c0

    add sp, $0b                                   ; $7ace: $e8 $0b
    ret                                           ; $7ad0: $c9


    and c                                         ; $7ad1: $a1
    dec l                                         ; $7ad2: $2d
    jp nz, $c0e3                                  ; $7ad3: $c2 $e3 $c0

    and c                                         ; $7ad6: $a1
    nop                                           ; $7ad7: $00
    cp a                                          ; $7ad8: $bf
    ld [$a9bd], sp                                ; $7ad9: $08 $bd $a9
    nop                                           ; $7adc: $00
    pop bc                                        ; $7add: $c1
    adc c                                         ; $7ade: $89
    ldh [rKEY1], a                                ; $7adf: $e0 $4d
    add h                                         ; $7ae1: $84
    db $e3                                        ; $7ae2: $e3
    nop                                           ; $7ae3: $00
    cp a                                          ; $7ae4: $bf
    cp l                                          ; $7ae5: $bd
    xor l                                         ; $7ae6: $ad
    ret nz                                        ; $7ae7: $c0

    db $e3                                        ; $7ae8: $e3
    add b                                         ; $7ae9: $80
    db $fc                                        ; $7aea: $fc
    ld l, b                                       ; $7aeb: $68
    ld b, e                                       ; $7aec: $43
    rst $38                                       ; $7aed: $ff
    ld a, l                                       ; $7aee: $7d
    xor e                                         ; $7aef: $ab
    cp a                                          ; $7af0: $bf
    ret nz                                        ; $7af1: $c0

    ret nz                                        ; $7af2: $c0

    rst $38                                       ; $7af3: $ff
    nop                                           ; $7af4: $00
    ld d, [hl]                                    ; $7af5: $56
    rst $38                                       ; $7af6: $ff
    add d                                         ; $7af7: $82
    ld c, l                                       ; $7af8: $4d
    ld b, c                                       ; $7af9: $41
    dec l                                         ; $7afa: $2d
    ld c, c                                       ; $7afb: $49
    ld hl, sp-$80                                 ; $7afc: $f8 $80
    ld a, [hl]                                    ; $7afe: $7e
    ccf                                           ; $7aff: $3f
    rst $20                                       ; $7b00: $e7
    rst $38                                       ; $7b01: $ff
    rst $38                                       ; $7b02: $ff
    ld b, b                                       ; $7b03: $40
    ld [hl], c                                    ; $7b04: $71
    ld l, l                                       ; $7b05: $6d
    add hl, bc                                    ; $7b06: $09
    call nz, $5000                                ; $7b07: $c4 $00 $50
    rst $18                                       ; $7b0a: $df
    ld b, $52                                     ; $7b0b: $06 $52
    add b                                         ; $7b0d: $80
    jp $b5c9                                      ; $7b0e: $c3 $c9 $b5


    nop                                           ; $7b11: $00
    cp a                                          ; $7b12: $bf
    ret nz                                        ; $7b13: $c0

    jp nz, Jump_053_5fc9                          ; $7b14: $c2 $c9 $5f

    ret nz                                        ; $7b17: $c0

    sub [hl]                                      ; $7b18: $96
    jr nc, jr_053_7b67                            ; $7b19: $30 $4c

    and b                                         ; $7b1b: $a0
    ret nz                                        ; $7b1c: $c0

    rst $38                                       ; $7b1d: $ff
    add b                                         ; $7b1e: $80
    inc d                                         ; $7b1f: $14

jr_053_7b20:
    sbc h                                         ; $7b20: $9c
    pop hl                                        ; $7b21: $e1
    ld c, l                                       ; $7b22: $4d
    dec l                                         ; $7b23: $2d
    add $a8                                       ; $7b24: $c6 $a8
    add b                                         ; $7b26: $80
    rst $18                                       ; $7b27: $df
    ld [$d080], sp                                ; $7b28: $08 $80 $d0
    ret                                           ; $7b2b: $c9


    ld e, a                                       ; $7b2c: $5f
    nop                                           ; $7b2d: $00
    ld e, d                                       ; $7b2e: $5a
    ld c, l                                       ; $7b2f: $4d
    ret nz                                        ; $7b30: $c0

    and e                                         ; $7b31: $a3
    ld b, e                                       ; $7b32: $43
    rst $38                                       ; $7b33: $ff
    ld a, d                                       ; $7b34: $7a
    inc d                                         ; $7b35: $14
    ccf                                           ; $7b36: $3f
    ld [c], a                                     ; $7b37: $e2
    inc b                                         ; $7b38: $04
    add [hl]                                      ; $7b39: $86
    jp c, $1c80                                   ; $7b3a: $da $80 $1c

    ld c, l                                       ; $7b3d: $4d
    ld c, c                                       ; $7b3e: $49
    add h                                         ; $7b3f: $84
    rst $38                                       ; $7b40: $ff
    rst $38                                       ; $7b41: $ff
    ret nz                                        ; $7b42: $c0

    rst $38                                       ; $7b43: $ff
    dec a                                         ; $7b44: $3d
    rst $38                                       ; $7b45: $ff
    cp l                                          ; $7b46: $bd
    or b                                          ; $7b47: $b0
    nop                                           ; $7b48: $00
    inc c                                         ; $7b49: $0c
    ld d, l                                       ; $7b4a: $55
    add b                                         ; $7b4b: $80
    rst $18                                       ; $7b4c: $df
    cp $06                                        ; $7b4d: $fe $06
    ret                                           ; $7b4f: $c9


    ld e, a                                       ; $7b50: $5f
    dec a                                         ; $7b51: $3d
    add hl, sp                                    ; $7b52: $39
    call z, Call_053_673f                         ; $7b53: $cc $3f $67
    ld sp, hl                                     ; $7b56: $f9
    add h                                         ; $7b57: $84
    and [hl]                                      ; $7b58: $a6
    nop                                           ; $7b59: $00
    add b                                         ; $7b5a: $80
    rst $18                                       ; $7b5b: $df
    ld a, [hl-]                                   ; $7b5c: $3a
    ld d, h                                       ; $7b5d: $54
    ld d, a                                       ; $7b5e: $57
    rst $38                                       ; $7b5f: $ff
    ld a, [$be3c]                                 ; $7b60: $fa $3c $be
    rst $38                                       ; $7b63: $ff
    ld h, c                                       ; $7b64: $61
    cp $80                                        ; $7b65: $fe $80

jr_053_7b67:
    rst $18                                       ; $7b67: $df
    rst $38                                       ; $7b68: $ff
    rst $38                                       ; $7b69: $ff
    nop                                           ; $7b6a: $00
    rst $38                                       ; $7b6b: $ff
    rst $38                                       ; $7b6c: $ff
    rst $38                                       ; $7b6d: $ff
    rst $38                                       ; $7b6e: $ff
    ld b, e                                       ; $7b6f: $43
    rst $38                                       ; $7b70: $ff
    ld a, [$80ff]                                 ; $7b71: $fa $ff $80
    rst $18                                       ; $7b74: $df
    rst $38                                       ; $7b75: $ff
    rst $38                                       ; $7b76: $ff
    rst $38                                       ; $7b77: $ff
    rst $38                                       ; $7b78: $ff
    rst $38                                       ; $7b79: $ff
    rst $38                                       ; $7b7a: $ff
    nop                                           ; $7b7b: $00
    dec a                                         ; $7b7c: $3d
    rst $38                                       ; $7b7d: $ff
    ld c, a                                       ; $7b7e: $4f
    ld sp, hl                                     ; $7b7f: $f9
    db $f4                                        ; $7b80: $f4
    ld [bc], a                                    ; $7b81: $02
    add b                                         ; $7b82: $80
    ld h, l                                       ; $7b83: $65
    nop                                           ; $7b84: $00
    nop                                           ; $7b85: $00
    nop                                           ; $7b86: $00
    ccf                                           ; $7b87: $3f
    and b                                         ; $7b88: $a0
    and b                                         ; $7b89: $a0
    and b                                         ; $7b8a: $a0
    call c, $dedd                                 ; $7b8b: $dc $dd $de
    ld a, [$f4ff]                                 ; $7b8e: $fa $ff $f4
    push af                                       ; $7b91: $f5
    ccf                                           ; $7b92: $3f
    db $e4                                        ; $7b93: $e4
    rst $18                                       ; $7b94: $df
    ldh [$e1], a                                  ; $7b95: $e0 $e1
    ld [c], a                                     ; $7b97: $e2
    db $e3                                        ; $7b98: $e3
    ld a, [$f4ff]                                 ; $7b99: $fa $ff $f4
    push af                                       ; $7b9c: $f5
    ccf                                           ; $7b9d: $3f
    ld [$e6e5], a                                 ; $7b9e: $ea $e5 $e6
    rst $20                                       ; $7ba1: $e7
    add sp, -$17                                  ; $7ba2: $e8 $e9
    ld a, [$f4ff]                                 ; $7ba4: $fa $ff $f4
    push af                                       ; $7ba7: $f5
    nop                                           ; $7ba8: $00
    ld e, e                                       ; $7ba9: $5b
    rst $38                                       ; $7baa: $ff
    ld a, [$5bfb]                                 ; $7bab: $fa $fb $5b
    rst $38                                       ; $7bae: $ff
    ld a, [$5bfb]                                 ; $7baf: $fa $fb $5b
    rst $38                                       ; $7bb2: $ff
    ld a, [$5bfb]                                 ; $7bb3: $fa $fb $5b
    rst $38                                       ; $7bb6: $ff
    add b                                         ; $7bb7: $80
    rst $18                                       ; $7bb8: $df
    nop                                           ; $7bb9: $00
    ld d, l                                       ; $7bba: $55
    rst $38                                       ; $7bbb: $ff
    add b                                         ; $7bbc: $80
    rst $18                                       ; $7bbd: $df
    ld a, [$80ff]                                 ; $7bbe: $fa $ff $80
    rst $18                                       ; $7bc1: $df
    ld a, [$80ff]                                 ; $7bc2: $fa $ff $80
    rst $18                                       ; $7bc5: $df
    ld a, [$80ff]                                 ; $7bc6: $fa $ff $80
    rst $18                                       ; $7bc9: $df
    nop                                           ; $7bca: $00
    ld a, [$80ff]                                 ; $7bcb: $fa $ff $80
    rst $18                                       ; $7bce: $df
    ld a, [$80ff]                                 ; $7bcf: $fa $ff $80
    rst $18                                       ; $7bd2: $df
    ld a, [$80ff]                                 ; $7bd3: $fa $ff $80
    rst $18                                       ; $7bd6: $df
    add b                                         ; $7bd7: $80
    rst $18                                       ; $7bd8: $df
    ld e, e                                       ; $7bd9: $5b
    rst $38                                       ; $7bda: $ff
    nop                                           ; $7bdb: $00
    add b                                         ; $7bdc: $80
    rst $18                                       ; $7bdd: $df
    ld a, [$80ff]                                 ; $7bde: $fa $ff $80
    rst $18                                       ; $7be1: $df
    ld a, [$80ff]                                 ; $7be2: $fa $ff $80
    rst $18                                       ; $7be5: $df
    ld c, a                                       ; $7be6: $4f
    ld [$e9fd], a                                 ; $7be7: $ea $fd $e9
    add b                                         ; $7bea: $80
    rst $18                                       ; $7beb: $df
    adc h                                         ; $7bec: $8c
    ld d, l                                       ; $7bed: $55
    db $ed                                        ; $7bee: $ed
    cp a                                          ; $7bef: $bf
    pop hl                                        ; $7bf0: $e1
    sub $d7                                       ; $7bf1: $d6 $d7
    ld a, [$80e3]                                 ; $7bf3: $fa $e3 $80
    rst $18                                       ; $7bf6: $df
    ld h, a                                       ; $7bf7: $67

Jump_053_7bf8:
    ld a, [c]                                     ; $7bf8: $f2
    and b                                         ; $7bf9: $a0
    rra                                           ; $7bfa: $1f
    ret c                                         ; $7bfb: $d8

    reti                                          ; $7bfc: $d9


    and b                                         ; $7bfd: $a0
    ret nc                                        ; $7bfe: $d0

    pop de                                        ; $7bff: $d1
    ld a, [$80e0]                                 ; $7c00: $fa $e0 $80
    rst $18                                       ; $7c03: $df
    ld b, e                                       ; $7c04: $43
    ldh a, [$3e]                                  ; $7c05: $f0 $3e
    add $e0                                       ; $7c07: $c6 $e0
    jp c, $a0db                                   ; $7c09: $da $db $a0

    jp nc, $fad3                                  ; $7c0c: $d2 $d3 $fa

    ldh [$bb], a                                  ; $7c0f: $e0 $bb
    ldh [$60], a                                  ; $7c11: $e0 $60
    scf                                           ; $7c13: $37
    push af                                       ; $7c14: $f5
    ld b, e                                       ; $7c15: $43
    db $f4                                        ; $7c16: $f4
    ld b, [hl]                                    ; $7c17: $46
    ldh [$c6], a                                  ; $7c18: $e0 $c6
    ldh [$3e], a                                  ; $7c1a: $e0 $3e
    ret nz                                        ; $7c1c: $c0

    call nc, Call_000_39d5                        ; $7c1d: $d4 $d5 $39
    ret nz                                        ; $7c20: $c0

    ret nz                                        ; $7c21: $c0

    push af                                       ; $7c22: $f5
    ld [c], a                                     ; $7c23: $e2
    inc sp                                        ; $7c24: $33
    pop hl                                        ; $7c25: $e1
    add b                                         ; $7c26: $80
    rst $18                                       ; $7c27: $df
    ld a, [hl+]                                   ; $7c28: $2a
    and h                                         ; $7c29: $a4
    ld b, [hl]                                    ; $7c2a: $46
    ldh [$c6], a                                  ; $7c2b: $e0 $c6
    ldh [$9f], a                                  ; $7c2d: $e0 $9f
    sbc l                                         ; $7c2f: $9d
    inc hl                                        ; $7c30: $23
    sbc l                                         ; $7c31: $9d
    sbc a                                         ; $7c32: $9f
    cp e                                          ; $7c33: $bb
    db $e3                                        ; $7c34: $e3
    or $c0                                        ; $7c35: $f6 $c0
    inc sp                                        ; $7c37: $33
    ldh [$a0], a                                  ; $7c38: $e0 $a0
    add b                                         ; $7c3a: $80
    rst $18                                       ; $7c3b: $df
    add [hl]                                      ; $7c3c: $86
    call nz, Call_053_46fe                        ; $7c3d: $c4 $fe $46
    ldh [$a0], a                                  ; $7c40: $e0 $a0
    sbc a                                         ; $7c42: $9f
    and d                                         ; $7c43: $a2
    sbc h                                         ; $7c44: $9c
    ld b, [hl]                                    ; $7c45: $46
    ld b, [hl]                                    ; $7c46: $46
    sbc h                                         ; $7c47: $9c
    rlca                                          ; $7c48: $07
    sbc l                                         ; $7c49: $9d
    sbc l                                         ; $7c4a: $9d
    and d                                         ; $7c4b: $a2
    cp h                                          ; $7c4c: $bc
    ldh [$f6], a                                  ; $7c4d: $e0 $f6
    ret nz                                        ; $7c4f: $c0

    inc sp                                        ; $7c50: $33
    ldh [$80], a                                  ; $7c51: $e0 $80
    rst $18                                       ; $7c53: $df
    add [hl]                                      ; $7c54: $86
    push bc                                       ; $7c55: $c5
    ld [hl-], a                                   ; $7c56: $32
    add h                                         ; $7c57: $84
    and b                                         ; $7c58: $a0
    sbc a                                         ; $7c59: $9f
    jp nz, $fee0                                  ; $7c5a: $c2 $e0 $fe

    db $e3                                        ; $7c5d: $e3
    sbc h                                         ; $7c5e: $9c
    sbc a                                         ; $7c5f: $9f
    or b                                          ; $7c60: $b0
    ld [c], a                                     ; $7c61: $e2
    add b                                         ; $7c62: $80
    rst $18                                       ; $7c63: $df
    jr c, @+$6f                                   ; $7c64: $38 $6d

    add [hl]                                      ; $7c66: $86
    adc d                                         ; $7c67: $8a
    ret nz                                        ; $7c68: $c0

    pop bc                                        ; $7c69: $c1
    rst $20                                       ; $7c6a: $e7
    ld b, [hl]                                    ; $7c6b: $46
    ld b, [hl]                                    ; $7c6c: $46
    sbc [hl]                                      ; $7c6d: $9e
    ld a, [c]                                     ; $7c6e: $f2
    and d                                         ; $7c6f: $a2
    add b                                         ; $7c70: $80
    rst $18                                       ; $7c71: $df
    ld l, b                                       ; $7c72: $68
    inc c                                         ; $7c73: $0c
    and d                                         ; $7c74: $a2
    dec bc                                        ; $7c75: $0b
    pop bc                                        ; $7c76: $c1
    adc d                                         ; $7c77: $8a
    ret nz                                        ; $7c78: $c0

    sbc [hl]                                      ; $7c79: $9e
    pop bc                                        ; $7c7a: $c1
    rst $20                                       ; $7c7b: $e7
    ld b, [hl]                                    ; $7c7c: $46
    sbc [hl]                                      ; $7c7d: $9e
    ld a, a                                       ; $7c7e: $7f
    rst $00                                       ; $7c7f: $c7
    ldh a, [$80]                                  ; $7c80: $f0 $80
    db $dd                                        ; $7c82: $dd
    dec bc                                        ; $7c83: $0b
    jp nz, $c18a                                  ; $7c84: $c2 $8a $c1

    ret nz                                        ; $7c87: $c0

    pop hl                                        ; $7c88: $e1
    ld b, l                                       ; $7c89: $45
    ld b, e                                       ; $7c8a: $43
    ld b, e                                       ; $7c8b: $43
    ld b, l                                       ; $7c8c: $45
    add b                                         ; $7c8d: $80
    ld b, b                                       ; $7c8e: $40
    ld [c], a                                     ; $7c8f: $e2
    ld a, [hl-]                                   ; $7c90: $3a
    ret nz                                        ; $7c91: $c0

    or h                                          ; $7c92: $b4
    and d                                         ; $7c93: $a2
    add b                                         ; $7c94: $80
    rst $18                                       ; $7c95: $df
    push bc                                       ; $7c96: $c5
    jp nz, $a088                                  ; $7c97: $c2 $88 $a0

    ld [bc], a                                    ; $7c9a: $02
    ld [c], a                                     ; $7c9b: $e2
    dec l                                         ; $7c9c: $2d
    rla                                           ; $7c9d: $17
    cpl                                           ; $7c9e: $2f
    cpl                                           ; $7c9f: $2f
    ld a, [hl+]                                   ; $7ca0: $2a
    cp a                                          ; $7ca1: $bf
    ldh [$9e], a                                  ; $7ca2: $e0 $9e
    ld a, [hl-]                                   ; $7ca4: $3a
    pop bc                                        ; $7ca5: $c1
    add c                                         ; $7ca6: $81
    pop bc                                        ; $7ca7: $c1
    add b                                         ; $7ca8: $80
    rst $18                                       ; $7ca9: $df
    jr c, jr_053_7cfb                             ; $7caa: $38 $4f

    add e                                         ; $7cac: $83
    adc b                                         ; $7cad: $88
    and b                                         ; $7cae: $a0
    ld b, c                                       ; $7caf: $41
    ld [c], a                                     ; $7cb0: $e2
    dec l                                         ; $7cb1: $2d
    jr nz, jr_053_7cd4                            ; $7cb2: $20 $20

    ret nz                                        ; $7cb4: $c0

    pop hl                                        ; $7cb5: $e1
    ret nz                                        ; $7cb6: $c0

    ret nz                                        ; $7cb7: $c0

    ret nc                                        ; $7cb8: $d0

    ld l, [hl]                                    ; $7cb9: $6e
    jp $df80                                      ; $7cba: $c3 $80 $df


    ld b, $a3                                     ; $7cbd: $06 $a3
    adc b                                         ; $7cbf: $88
    and b                                         ; $7cc0: $a0
    and c                                         ; $7cc1: $a1
    add e                                         ; $7cc2: $83
    pop bc                                        ; $7cc3: $c1
    ld b, l                                       ; $7cc4: $45
    dec hl                                        ; $7cc5: $2b
    pop bc                                        ; $7cc6: $c1
    dec hl                                        ; $7cc7: $2b
    ld b, b                                       ; $7cc8: $40
    pop hl                                        ; $7cc9: $e1
    cp a                                          ; $7cca: $bf
    db $e3                                        ; $7ccb: $e3
    add b                                         ; $7ccc: $80
    rst $18                                       ; $7ccd: $df
    ld b, $a8                                     ; $7cce: $06 $a8
    pop bc                                        ; $7cd0: $c1
    jp z, $4646                                   ; $7cd1: $ca $46 $46

jr_053_7cd4:
    ld h, c                                       ; $7cd4: $61
    and c                                         ; $7cd5: $a1
    ld hl, sp-$7f                                 ; $7cd6: $f8 $81
    add b                                         ; $7cd8: $80
    rst $18                                       ; $7cd9: $df
    ld c, c                                       ; $7cda: $49
    add e                                         ; $7cdb: $83
    adc d                                         ; $7cdc: $8a
    add b                                         ; $7cdd: $80
    ret nc                                        ; $7cde: $d0

    pop de                                        ; $7cdf: $d1
    ld b, c                                       ; $7ce0: $41
    ret                                           ; $7ce1: $c9


    ld h, b                                       ; $7ce2: $60
    rst $38                                       ; $7ce3: $ff
    and c                                         ; $7ce4: $a1
    ld [hl-], a                                   ; $7ce5: $32
    and e                                         ; $7ce6: $a3
    add b                                         ; $7ce7: $80
    rst $18                                       ; $7ce8: $df
    adc d                                         ; $7ce9: $8a
    add e                                         ; $7cea: $83
    ld b, b                                       ; $7ceb: $40
    jp $9d9c                                      ; $7cec: $c3 $9c $9d


    cp l                                          ; $7cef: $bd
    and d                                         ; $7cf0: $a2
    add c                                         ; $7cf1: $81
    sbc h                                         ; $7cf2: $9c
    dec sp                                        ; $7cf3: $3b
    and c                                         ; $7cf4: $a1
    dec a                                         ; $7cf5: $3d
    and d                                         ; $7cf6: $a2
    add b                                         ; $7cf7: $80
    rst $18                                       ; $7cf8: $df
    jr nc, jr_053_7d3c                            ; $7cf9: $30 $41

jr_053_7cfb:
    adc d                                         ; $7cfb: $8a
    add b                                         ; $7cfc: $80
    ld b, b                                       ; $7cfd: $40
    jp Jump_000_009e                              ; $7cfe: $c3 $9e $00


    ld a, h                                       ; $7d01: $7c
    and c                                         ; $7d02: $a1
    jp nz, Jump_000_33e2                          ; $7d03: $c2 $e2 $33

    add h                                         ; $7d06: $84
    add b                                         ; $7d07: $80
    rst $18                                       ; $7d08: $df
    cp l                                          ; $7d09: $bd
    and a                                         ; $7d0a: $a7
    ret nz                                        ; $7d0b: $c0

    ld [c], a                                     ; $7d0c: $e2
    cp [hl]                                       ; $7d0d: $be
    add b                                         ; $7d0e: $80
    cp a                                          ; $7d0f: $bf
    add b                                         ; $7d10: $80
    nop                                           ; $7d11: $00
    db $fc                                        ; $7d12: $fc
    ld h, b                                       ; $7d13: $60
    or [hl]                                       ; $7d14: $b6
    ld h, b                                       ; $7d15: $60
    nop                                           ; $7d16: $00
    cp a                                          ; $7d17: $bf
    cp l                                          ; $7d18: $bd
    xor d                                         ; $7d19: $aa
    add b                                         ; $7d1a: $80
    ld [c], a                                     ; $7d1b: $e2
    add $e3                                       ; $7d1c: $c6 $e3
    db $fc                                        ; $7d1e: $fc
    ld h, b                                       ; $7d1f: $60
    add e                                         ; $7d20: $83
    pop hl                                        ; $7d21: $e1
    ld [$df80], sp                                ; $7d22: $08 $80 $df
    cp l                                          ; $7d25: $bd
    xor b                                         ; $7d26: $a8
    pop bc                                        ; $7d27: $c1
    add c                                         ; $7d28: $81
    sbc [hl]                                      ; $7d29: $9e
    add $e4                                       ; $7d2a: $c6 $e4
    db $fc                                        ; $7d2c: $fc
    ld h, b                                       ; $7d2d: $60
    ld [hl], b                                    ; $7d2e: $70
    add c                                         ; $7d2f: $81
    add b                                         ; $7d30: $80
    rst $18                                       ; $7d31: $df
    inc b                                         ; $7d32: $04
    inc c                                         ; $7d33: $0c
    ld b, a                                       ; $7d34: $47
    ld c, c                                       ; $7d35: $49
    ld h, b                                       ; $7d36: $60
    sbc [hl]                                      ; $7d37: $9e
    adc b                                         ; $7d38: $88
    add b                                         ; $7d39: $80
    add $e3                                       ; $7d3a: $c6 $e3

jr_053_7d3c:
    nop                                           ; $7d3c: $00
    ld e, a                                       ; $7d3d: $5f
    jp $bf4e                                      ; $7d3e: $c3 $4e $bf


    add e                                         ; $7d41: $83
    or c                                          ; $7d42: $b1
    sbc [hl]                                      ; $7d43: $9e
    cp [hl]                                       ; $7d44: $be
    ld b, c                                       ; $7d45: $41
    nop                                           ; $7d46: $00
    ld e, a                                       ; $7d47: $5f
    xor d                                         ; $7d48: $aa
    ret nc                                        ; $7d49: $d0

    call nc, $85d5                                ; $7d4a: $d4 $d5 $85
    pop bc                                        ; $7d4d: $c1
    sbc a                                         ; $7d4e: $9f
    nop                                           ; $7d4f: $00
    cp [hl]                                       ; $7d50: $be
    ld b, c                                       ; $7d51: $41
    nop                                           ; $7d52: $00
    ld e, a                                       ; $7d53: $5f
    ld b, $52                                     ; $7d54: $06 $52
    add b                                         ; $7d56: $80
    jp $6178                                      ; $7d57: $c3 $78 $61


    nop                                           ; $7d5a: $00
    ld e, a                                       ; $7d5b: $5f
    ld b, $4d                                     ; $7d5c: $06 $4d
    ld [$3041], sp                                ; $7d5e: $08 $41 $30
    ret nz                                        ; $7d61: $c0

    jp nz, Jump_053_56c9                          ; $7d62: $c2 $c9 $56

    add b                                         ; $7d65: $80
    ld a, e                                       ; $7d66: $7b
    push de                                       ; $7d67: $d5
    and c                                         ; $7d68: $a1
    sbc a                                         ; $7d69: $9f
    sbc h                                         ; $7d6a: $9c
    jp z, $c983                                   ; $7d6b: $ca $83 $c9

    or e                                          ; $7d6e: $b3
    inc c                                         ; $7d6f: $0c
    add b                                         ; $7d70: $80
    dec de                                        ; $7d71: $1b
    ld c, $41                                     ; $7d72: $0e $41
    sbc a                                         ; $7d74: $9f
    sbc h                                         ; $7d75: $9c
    ld c, d                                       ; $7d76: $4a
    ld h, b                                       ; $7d77: $60
    db $fc                                        ; $7d78: $fc
    inc hl                                        ; $7d79: $23
    add b                                         ; $7d7a: $80
    rst $18                                       ; $7d7b: $df
    add b                                         ; $7d7c: $80
    jp nc, $ca00                                  ; $7d7d: $d2 $00 $ca

    add h                                         ; $7d80: $84
    add b                                         ; $7d81: $80
    rst $18                                       ; $7d82: $df
    add b                                         ; $7d83: $80
    jp nc, Jump_053_40ff                          ; $7d84: $d2 $ff $40

    adc b                                         ; $7d87: $88
    ld h, d                                       ; $7d88: $62
    add b                                         ; $7d89: $80
    rst $18                                       ; $7d8a: $df
    dec a                                         ; $7d8b: $3d
    inc [hl]                                      ; $7d8c: $34
    ccf                                           ; $7d8d: $3f
    ld [c], a                                     ; $7d8e: $e2
    ld b, h                                       ; $7d8f: $44
    add [hl]                                      ; $7d90: $86
    ret c                                         ; $7d91: $d8

    add b                                         ; $7d92: $80
    ld e, $9e                                     ; $7d93: $1e $9e
    ld c, c                                       ; $7d95: $49
    ld b, b                                       ; $7d96: $40
    ld b, e                                       ; $7d97: $43
    ei                                            ; $7d98: $fb
    add b                                         ; $7d99: $80
    dec de                                        ; $7d9a: $1b
    sbc a                                         ; $7d9b: $9f
    ld b, h                                       ; $7d9c: $44
    jr nz, jr_053_7d9f                            ; $7d9d: $20 $00

jr_053_7d9f:
    ld b, e                                       ; $7d9f: $43
    ei                                            ; $7da0: $fb
    add b                                         ; $7da1: $80
    ld a, [de]                                    ; $7da2: $1a
    ei                                            ; $7da3: $fb
    rst $20                                       ; $7da4: $e7
    add b                                         ; $7da5: $80
    rst $18                                       ; $7da6: $df
    dec a                                         ; $7da7: $3d
    jr nc, @+$12                                  ; $7da8: $30 $10

    ld b, d                                       ; $7daa: $42
    ret                                           ; $7dab: $c9


    ld d, [hl]                                    ; $7dac: $56
    add b                                         ; $7dad: $80
    dec e                                         ; $7dae: $1d
    nop                                           ; $7daf: $00
    ret z                                         ; $7db0: $c8

    and e                                         ; $7db1: $a3
    call z, $8022                                 ; $7db2: $cc $22 $80
    rst $18                                       ; $7db5: $df
    dec a                                         ; $7db6: $3d
    ld a, [c]                                     ; $7db7: $f2
    ld a, [hl]                                    ; $7db8: $7e
    ld bc, $a184                                  ; $7db9: $01 $84 $a1
    add b                                         ; $7dbc: $80
    rst $18                                       ; $7dbd: $df
    dec a                                         ; $7dbe: $3d
    or $00                                        ; $7dbf: $f6 $00
    ld hl, sp+$20                                 ; $7dc1: $f8 $20
    add b                                         ; $7dc3: $80
    rst $18                                       ; $7dc4: $df
    ld h, a                                       ; $7dc5: $67
    ld hl, sp+$43                                 ; $7dc6: $f8 $43
    cp $80                                        ; $7dc8: $fe $80
    ret c                                         ; $7dca: $d8

    ld a, [$00ff]                                 ; $7dcb: $fa $ff $00
    cp c                                          ; $7dce: $b9
    ld a, [$00ff]                                 ; $7dcf: $fa $ff $00
    nop                                           ; $7dd2: $00
    cp e                                          ; $7dd3: $bb
    ld a, [$00ff]                                 ; $7dd4: $fa $ff $00
    cp a                                          ; $7dd7: $bf
    ld a, [$00ff]                                 ; $7dd8: $fa $ff $00
    cp d                                          ; $7ddb: $ba
    ld a, [$00ff]                                 ; $7ddc: $fa $ff $00
    cp e                                          ; $7ddf: $bb
    ld a, [$04ff]                                 ; $7de0: $fa $ff $04
    add b                                         ; $7de3: $80
    rst $18                                       ; $7de4: $df
    ld a, [$a0ff]                                 ; $7de5: $fa $ff $a0
    nop                                           ; $7de8: $00
    nop                                           ; $7de9: $00
    nop                                           ; $7dea: $00
    pop bc                                        ; $7deb: $c1
    nop                                           ; $7dec: $00
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
    nop                                           ; $7df7: $00
    nop                                           ; $7df8: $00
    ld bc, $fe80                                  ; $7df9: $01 $80 $fe
    ldh [rIE], a                                  ; $7dfc: $e0 $ff
    rst $38                                       ; $7dfe: $ff
    rst $38                                       ; $7dff: $ff
    rst $38                                       ; $7e00: $ff
    rst $38                                       ; $7e01: $ff
    add sp, $00                                   ; $7e02: $e8 $00
    nop                                           ; $7e04: $00
    nop                                           ; $7e05: $00
    rst $38                                       ; $7e06: $ff
    rst $38                                       ; $7e07: $ff
    rst $38                                       ; $7e08: $ff
    push af                                       ; $7e09: $f5
    push bc                                       ; $7e0a: $c5
    push de                                       ; $7e0b: $d5
    push hl                                       ; $7e0c: $e5
    ld a, $ff                                     ; $7e0d: $3e $ff
    ld b, $01                                     ; $7e0f: $06 $01
    ld hl, $c330                                  ; $7e11: $21 $30 $c3
    ld [hl+], a                                   ; $7e14: $22
    ld [hl], b                                    ; $7e15: $70
    inc hl                                        ; $7e16: $23
    ld [hl+], a                                   ; $7e17: $22
    ld [hl], b                                    ; $7e18: $70
    inc hl                                        ; $7e19: $23
    ld [hl+], a                                   ; $7e1a: $22
    ld [hl], b                                    ; $7e1b: $70
    inc hl                                        ; $7e1c: $23
    ld [hl+], a                                   ; $7e1d: $22
    ld [hl], b                                    ; $7e1e: $70
    inc hl                                        ; $7e1f: $23
    ld [hl+], a                                   ; $7e20: $22
    ld [hl+], a                                   ; $7e21: $22
    ld [hl+], a                                   ; $7e22: $22
    ld [hl+], a                                   ; $7e23: $22
    ld hl, $0401                                  ; $7e24: $21 $01 $04
    rst $18                                       ; $7e27: $df
    ld a, [bc]                                    ; $7e28: $0a
    inc de                                        ; $7e29: $13
    ld de, $4000                                  ; $7e2a: $11 $00 $40
    ld h, $00                                     ; $7e2d: $26 $00
    add hl, de                                    ; $7e2f: $19
    ld e, a                                       ; $7e30: $5f
    ld d, $00                                     ; $7e31: $16 $00
    ld a, [hl+]                                   ; $7e33: $2a
    ld h, [hl]                                    ; $7e34: $66
    ld l, a                                       ; $7e35: $6f
    add hl, de                                    ; $7e36: $19
    add hl, de                                    ; $7e37: $19
    ld a, [hl+]                                   ; $7e38: $2a
    ld h, [hl]                                    ; $7e39: $66
    ld l, a                                       ; $7e3a: $6f
    ld a, [hl]                                    ; $7e3b: $7e
    cp $fe                                        ; $7e3c: $fe $fe
    jr nz, jr_053_7e43                            ; $7e3e: $20 $03

    jp Jump_053_7eb7                              ; $7e40: $c3 $b7 $7e


jr_053_7e43:
    add sp, -$02                                  ; $7e43: $e8 $fe
    ld de, $c332                                  ; $7e45: $11 $32 $c3
    push hl                                       ; $7e48: $e5
    ld hl, sp+$02                                 ; $7e49: $f8 $02
    ld [hl], e                                    ; $7e4b: $73
    inc hl                                        ; $7e4c: $23
    ld [hl], d                                    ; $7e4d: $72
    pop hl                                        ; $7e4e: $e1
    ld d, h                                       ; $7e4f: $54
    ld e, l                                       ; $7e50: $5d
    ld b, $ff                                     ; $7e51: $06 $ff
    ld c, $03                                     ; $7e53: $0e $03
    xor a                                         ; $7e55: $af
    ld hl, $c330                                  ; $7e56: $21 $30 $c3
    ld [hl], a                                    ; $7e59: $77
    ld hl, $c338                                  ; $7e5a: $21 $38 $c3
    ld [hl], a                                    ; $7e5d: $77
    inc hl                                        ; $7e5e: $23

jr_053_7e5f:
    inc b                                         ; $7e5f: $04
    ld a, [de]                                    ; $7e60: $1a
    inc de                                        ; $7e61: $13
    cp $fe                                        ; $7e62: $fe $fe
    jr z, jr_053_7e9b                             ; $7e64: $28 $35

    cp $ff                                        ; $7e66: $fe $ff
    jr nz, jr_053_7e5f                            ; $7e68: $20 $f5

    inc b                                         ; $7e6a: $04
    ld a, b                                       ; $7e6b: $78
    inc a                                         ; $7e6c: $3c
    ld [hl], a                                    ; $7e6d: $77
    push de                                       ; $7e6e: $d5
    push hl                                       ; $7e6f: $e5
    ld hl, sp+$04                                 ; $7e70: $f8 $04
    ld e, [hl]                                    ; $7e72: $5e
    inc hl                                        ; $7e73: $23
    ld d, [hl]                                    ; $7e74: $56
    pop hl                                        ; $7e75: $e1
    ld [de], a                                    ; $7e76: $12
    inc de                                        ; $7e77: $13
    inc de                                        ; $7e78: $13
    push hl                                       ; $7e79: $e5
    ld hl, sp+$04                                 ; $7e7a: $f8 $04
    ld [hl], e                                    ; $7e7c: $73
    inc hl                                        ; $7e7d: $23
    ld [hl], d                                    ; $7e7e: $72
    pop hl                                        ; $7e7f: $e1
    pop de                                        ; $7e80: $d1
    ld a, [de]                                    ; $7e81: $1a
    inc a                                         ; $7e82: $3c
    inc de                                        ; $7e83: $13
    push hl                                       ; $7e84: $e5
    push de                                       ; $7e85: $d5
    ld d, a                                       ; $7e86: $57
    ld a, $04                                     ; $7e87: $3e $04
    sub c                                         ; $7e89: $91
    ld hl, $c330                                  ; $7e8a: $21 $30 $c3
    ld e, a                                       ; $7e8d: $5f
    ld a, d                                       ; $7e8e: $7a
    ld d, $00                                     ; $7e8f: $16 $00
    add hl, de                                    ; $7e91: $19
    add hl, de                                    ; $7e92: $19
    inc hl                                        ; $7e93: $23
    ld [hl], a                                    ; $7e94: $77
    pop de                                        ; $7e95: $d1
    pop hl                                        ; $7e96: $e1
    inc hl                                        ; $7e97: $23
    dec c                                         ; $7e98: $0d
    jr nz, jr_053_7e5f                            ; $7e99: $20 $c4

jr_053_7e9b:
    ld a, c                                       ; $7e9b: $79
    or a                                          ; $7e9c: $b7
    jr z, jr_053_7ead                             ; $7e9d: $28 $0e

    ld a, $ff                                     ; $7e9f: $3e $ff
    dec hl                                        ; $7ea1: $2b
    ld [hl], a                                    ; $7ea2: $77
    push hl                                       ; $7ea3: $e5
    ld hl, sp+$02                                 ; $7ea4: $f8 $02
    ld e, [hl]                                    ; $7ea6: $5e
    inc hl                                        ; $7ea7: $23
    ld d, [hl]                                    ; $7ea8: $56
    pop hl                                        ; $7ea9: $e1
    dec de                                        ; $7eaa: $1b
    dec de                                        ; $7eab: $1b
    ld [de], a                                    ; $7eac: $12

jr_053_7ead:
    ld a, $01                                     ; $7ead: $3e $01
    ld hl, $7ecb                                  ; $7eaf: $21 $cb $7e
    call Call_000_23e8                            ; $7eb2: $cd $e8 $23
    add sp, $02                                   ; $7eb5: $e8 $02

Jump_053_7eb7:
    pop hl                                        ; $7eb7: $e1
    pop de                                        ; $7eb8: $d1
    pop bc                                        ; $7eb9: $c1
    pop af                                        ; $7eba: $f1
    ret                                           ; $7ebb: $c9


    push af                                       ; $7ebc: $f5
    push bc                                       ; $7ebd: $c5
    push de                                       ; $7ebe: $d5
    push hl                                       ; $7ebf: $e5
    ld hl, $7ecb                                  ; $7ec0: $21 $cb $7e
    call Call_000_2449                            ; $7ec3: $cd $49 $24
    pop hl                                        ; $7ec6: $e1
    pop de                                        ; $7ec7: $d1
    pop bc                                        ; $7ec8: $c1
    pop af                                        ; $7ec9: $f1
    ret                                           ; $7eca: $c9


    rst $30                                       ; $7ecb: $f7
    add b                                         ; $7ecc: $80
    inc bc                                        ; $7ecd: $03
    jr nz, jr_053_7ed4                            ; $7ece: $20 $04

    rst $30                                       ; $7ed0: $f7
    nop                                           ; $7ed1: $00
    inc bc                                        ; $7ed2: $03
    ret nz                                        ; $7ed3: $c0

jr_053_7ed4:
    push af                                       ; $7ed4: $f5
    push bc                                       ; $7ed5: $c5
    push de                                       ; $7ed6: $d5
    push hl                                       ; $7ed7: $e5
    ldh a, [$96]                                  ; $7ed8: $f0 $96
    push af                                       ; $7eda: $f5
    ld a, $06                                     ; $7edb: $3e $06
    ldh [$96], a                                  ; $7edd: $e0 $96
    ldh [rSVBK], a                                ; $7edf: $e0 $70
    ld c, $00                                     ; $7ee1: $0e $00
    ld hl, $c338                                  ; $7ee3: $21 $38 $c3

jr_053_7ee6:
    ld a, [hl]                                    ; $7ee6: $7e
    cp $ff                                        ; $7ee7: $fe $ff
    jr z, jr_053_7f0f                             ; $7ee9: $28 $24

    push hl                                       ; $7eeb: $e5
    ld l, c                                       ; $7eec: $69
    ld h, $00                                     ; $7eed: $26 $00
    add hl, hl                                    ; $7eef: $29
    ld de, $c330                                  ; $7ef0: $11 $30 $c3
    add hl, de                                    ; $7ef3: $19
    inc hl                                        ; $7ef4: $23
    ld a, [hl]                                    ; $7ef5: $7e
    dec a                                         ; $7ef6: $3d
    ld [hl], a                                    ; $7ef7: $77
    pop hl                                        ; $7ef8: $e1
    inc hl                                        ; $7ef9: $23
    ld b, c                                       ; $7efa: $41
    inc c                                         ; $7efb: $0c
    ld d, a                                       ; $7efc: $57
    ld a, c                                       ; $7efd: $79
    cp $04                                        ; $7efe: $fe $04
    jr z, jr_053_7f0f                             ; $7f00: $28 $0d

    ld a, d                                       ; $7f02: $7a
    or a                                          ; $7f03: $b7
    jr nz, jr_053_7ee6                            ; $7f04: $20 $e0

    ld a, b                                       ; $7f06: $78
    call Call_053_7f19                            ; $7f07: $cd $19 $7f
    ld a, c                                       ; $7f0a: $79
    cp $04                                        ; $7f0b: $fe $04
    jr nz, jr_053_7ee6                            ; $7f0d: $20 $d7

jr_053_7f0f:
    pop af                                        ; $7f0f: $f1
    ldh [$96], a                                  ; $7f10: $e0 $96
    ldh [rSVBK], a                                ; $7f12: $e0 $70
    pop hl                                        ; $7f14: $e1
    pop de                                        ; $7f15: $d1
    pop bc                                        ; $7f16: $c1
    pop af                                        ; $7f17: $f1
    ret                                           ; $7f18: $c9


Call_053_7f19:
    push af                                       ; $7f19: $f5
    push bc                                       ; $7f1a: $c5
    push de                                       ; $7f1b: $d5
    push hl                                       ; $7f1c: $e5
    push af                                       ; $7f1d: $f5
    add sp, -$01                                  ; $7f1e: $e8 $ff
    ld hl, sp+$00                                 ; $7f20: $f8 $00
    ld [hl], a                                    ; $7f22: $77
    ld h, $00                                     ; $7f23: $26 $00
    ld l, a                                       ; $7f25: $6f
    add hl, hl                                    ; $7f26: $29
    ld bc, $c330                                  ; $7f27: $01 $30 $c3
    add hl, bc                                    ; $7f2a: $09
    ld a, [hl]                                    ; $7f2b: $7e
    ld [$c33c], a                                 ; $7f2c: $ea $3c $c3

jr_053_7f2f:
    ld hl, $0401                                  ; $7f2f: $21 $01 $04
    rst $18                                       ; $7f32: $df
    ld a, [bc]                                    ; $7f33: $0a
    inc de                                        ; $7f34: $13
    ld de, $4000                                  ; $7f35: $11 $00 $40
    ld h, $00                                     ; $7f38: $26 $00
    add hl, de                                    ; $7f3a: $19
    ld e, a                                       ; $7f3b: $5f
    ld d, $00                                     ; $7f3c: $16 $00
    ld a, [hl+]                                   ; $7f3e: $2a
    ld h, [hl]                                    ; $7f3f: $66
    ld l, a                                       ; $7f40: $6f
    add hl, de                                    ; $7f41: $19
    add hl, de                                    ; $7f42: $19
    ld a, [hl+]                                   ; $7f43: $2a
    ld h, [hl]                                    ; $7f44: $66
    ld l, a                                       ; $7f45: $6f
    ld a, [$c33c]                                 ; $7f46: $fa $3c $c3
    ld c, a                                       ; $7f49: $4f
    ld b, $00                                     ; $7f4a: $06 $00
    add hl, bc                                    ; $7f4c: $09
    ld a, [hl]                                    ; $7f4d: $7e
    cp $ff                                        ; $7f4e: $fe $ff
    jr nz, jr_053_7f61                            ; $7f50: $20 $0f

    ld hl, sp+$00                                 ; $7f52: $f8 $00
    ld c, [hl]                                    ; $7f54: $4e
    ld b, $00                                     ; $7f55: $06 $00
    ld hl, $c338                                  ; $7f57: $21 $38 $c3
    add hl, bc                                    ; $7f5a: $09
    ld a, [hl]                                    ; $7f5b: $7e
    ld [$c33c], a                                 ; $7f5c: $ea $3c $c3
    jr jr_053_7f2f                                ; $7f5f: $18 $ce

jr_053_7f61:
    ld b, a                                       ; $7f61: $47
    inc hl                                        ; $7f62: $23
    ld c, [hl]                                    ; $7f63: $4e
    inc hl                                        ; $7f64: $23
    ld e, [hl]                                    ; $7f65: $5e
    inc hl                                        ; $7f66: $23
    ld a, [hl]                                    ; $7f67: $7e
    push af                                       ; $7f68: $f5
    push bc                                       ; $7f69: $c5
    ld l, e                                       ; $7f6a: $6b
    ld h, $00                                     ; $7f6b: $26 $00
    add hl, hl                                    ; $7f6d: $29
    add hl, hl                                    ; $7f6e: $29
    add hl, hl                                    ; $7f6f: $29
    add hl, hl                                    ; $7f70: $29
    ld de, $b000                                  ; $7f71: $11 $00 $b0
    add hl, de                                    ; $7f74: $19
    push hl                                       ; $7f75: $e5
    ld l, b                                       ; $7f76: $68
    ld h, $00                                     ; $7f77: $26 $00
    add hl, hl                                    ; $7f79: $29
    add hl, hl                                    ; $7f7a: $29
    add hl, hl                                    ; $7f7b: $29
    add hl, hl                                    ; $7f7c: $29
    ld b, h                                       ; $7f7d: $44
    ld c, l                                       ; $7f7e: $4d
    ld hl, $0400                                  ; $7f7f: $21 $00 $04
    rst $18                                       ; $7f82: $df
    ld a, [bc]                                    ; $7f83: $0a
    inc de                                        ; $7f84: $13
    ld de, $4000                                  ; $7f85: $11 $00 $40
    ld h, $00                                     ; $7f88: $26 $00
    add hl, de                                    ; $7f8a: $19
    ld e, a                                       ; $7f8b: $5f
    ld d, $00                                     ; $7f8c: $16 $00
    ld a, [hl+]                                   ; $7f8e: $2a
    ld h, [hl]                                    ; $7f8f: $66
    ld l, a                                       ; $7f90: $6f
    add hl, de                                    ; $7f91: $19
    add hl, de                                    ; $7f92: $19
    ld a, [hl+]                                   ; $7f93: $2a
    ld h, [hl]                                    ; $7f94: $66
    ld l, a                                       ; $7f95: $6f
    add hl, bc                                    ; $7f96: $09
    pop de                                        ; $7f97: $d1
    pop bc                                        ; $7f98: $c1
    call Call_000_0468                            ; $7f99: $cd $68 $04
    ld a, [$c33c]                                 ; $7f9c: $fa $3c $c3
    add $04                                       ; $7f9f: $c6 $04
    ld [$c33c], a                                 ; $7fa1: $ea $3c $c3
    pop af                                        ; $7fa4: $f1
    ld d, a                                       ; $7fa5: $57
    add sp, $01                                   ; $7fa6: $e8 $01
    pop af                                        ; $7fa8: $f1
    ld h, $00                                     ; $7fa9: $26 $00
    ld l, a                                       ; $7fab: $6f
    add hl, hl                                    ; $7fac: $29
    ld bc, $c330                                  ; $7fad: $01 $30 $c3
    add hl, bc                                    ; $7fb0: $09
    ld a, [$c33c]                                 ; $7fb1: $fa $3c $c3
    ld [hl+], a                                   ; $7fb4: $22
    ld [hl], d                                    ; $7fb5: $72
    pop hl                                        ; $7fb6: $e1
    pop de                                        ; $7fb7: $d1
    pop bc                                        ; $7fb8: $c1
    pop af                                        ; $7fb9: $f1
    ret                                           ; $7fba: $c9


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
