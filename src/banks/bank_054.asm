; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $054", ROMX[$4000], BANK[$54]

Call_054_4000:
Jump_054_4000:
    inc d                                         ; $4000: $14
    ld b, b                                       ; $4001: $40
    jr nz, @+$49                                  ; $4002: $20 $47

    ld sp, $9e4f                                  ; $4004: $31 $4f $9e
    ld d, a                                       ; $4007: $57
    ld l, [hl]                                    ; $4008: $6e
    ld e, h                                       ; $4009: $5c
    sub h                                         ; $400a: $94
    ld h, a                                       ; $400b: $67
    scf                                           ; $400c: $37
    ld l, a                                       ; $400d: $6f
    dec d                                         ; $400e: $15
    ld [hl], l                                    ; $400f: $75
    db $21                                        ; $4010: $21
    ld a, l                                       ; $4011: $7d

    db $d4, $7d

    ld e, $40                                     ; $4014: $1e $40
    ld c, [hl]                                    ; $4016: $4e
    ld b, b                                       ; $4017: $40
    call z, $cc43                                 ; $4018: $cc $43 $cc
    ld b, l                                       ; $401b: $45
    sbc d                                         ; $401c: $9a
    ld b, [hl]                                    ; $401d: $46
    ld c, [hl]                                    ; $401e: $4e
    ld hl, $5f7f                                  ; $401f: $21 $7f $5f
    nop                                           ; $4022: $00
    ld c, e                                       ; $4023: $4b
    ld h, b                                       ; $4024: $60
    ld b, l                                       ; $4025: $45
    rst $38                                       ; $4026: $ff
    ld a, a                                       ; $4027: $7f
    and $43                                       ; $4028: $e6 $43
    nop                                           ; $402a: $00
    ld c, e                                       ; $402b: $4b
    ld h, b                                       ; $402c: $60
    ld b, l                                       ; $402d: $45
    sbc d                                         ; $402e: $9a
    ld b, b                                       ; $402f: $40
    rst $18                                       ; $4030: $df
    ld [hl], d                                    ; $4031: $72
    ld c, h                                       ; $4032: $4c
    db $10                                        ; $4033: $10
    ld h, b                                       ; $4034: $60
    ld b, l                                       ; $4035: $45
    rst $38                                       ; $4036: $ff
    ld a, a                                       ; $4037: $7f
    nop                                           ; $4038: $00
    ld c, e                                       ; $4039: $4b
    ld h, b                                       ; $403a: $60
    ld b, l                                       ; $403b: $45
    ld a, [bc]                                    ; $403c: $0a
    db $10                                        ; $403d: $10
    rst $38                                       ; $403e: $ff
    ld a, a                                       ; $403f: $7f
    ccf                                           ; $4040: $3f
    ld d, c                                       ; $4041: $51
    halt                                          ; $4042: $76
    inc h                                         ; $4043: $24
    ld a, [bc]                                    ; $4044: $0a
    db $10                                        ; $4045: $10
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

Call_054_40e2:
    db $f4                                        ; $40e2: $f4

Call_054_40e3:
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
    or l                                          ; $40ff: $b5
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
    ldh a, [$03]                                  ; $4145: $f0 $03
    rst $38                                       ; $4147: $ff
    ld a, [bc]                                    ; $4148: $0a
    rst $38                                       ; $4149: $ff
    rst $38                                       ; $414a: $ff
    ld b, $ff                                     ; $414b: $06 $ff
    ld e, h                                       ; $414d: $5c
    rst $38                                       ; $414e: $ff
    ld de, $74fe                                  ; $414f: $11 $fe $74
    ei                                            ; $4152: $fb
    rst $38                                       ; $4153: $ff
    ret nz                                        ; $4154: $c0

    rst $38                                       ; $4155: $ff
    sub c                                         ; $4156: $91
    rst $28                                       ; $4157: $ef
    ld c, [hl]                                    ; $4158: $4e
    rst $38                                       ; $4159: $ff
    ei                                            ; $415a: $fb
    rst $38                                       ; $415b: $ff
    rst $38                                       ; $415c: $ff
    and b                                         ; $415d: $a0
    rst $38                                       ; $415e: $ff
    inc b                                         ; $415f: $04
    ei                                            ; $4160: $fb
    ld c, d                                       ; $4161: $4a
    or l                                          ; $4162: $b5
    and b                                         ; $4163: $a0
    ld e, a                                       ; $4164: $5f
    db $fd                                        ; $4165: $fd
    ld a, [bc]                                    ; $4166: $0a
    ld e, b                                       ; $4167: $58
    ldh [rNR52], a                                ; $4168: $e0 $26
    rst $18                                       ; $416a: $df
    sub e                                         ; $416b: $93
    rst $28                                       ; $416c: $ef
    ld h, $df                                     ; $416d: $26 $df
    rst $38                                       ; $416f: $ff
    add d                                         ; $4170: $82
    rst $38                                       ; $4171: $ff
    ld d, e                                       ; $4172: $53
    rst $28                                       ; $4173: $ef
    adc c                                         ; $4174: $89
    rst $30                                       ; $4175: $f7
    ld d, e                                       ; $4176: $53
    rst $28                                       ; $4177: $ef
    db $fd                                        ; $4178: $fd
    add d                                         ; $4179: $82
    ld c, d                                       ; $417a: $4a
    ldh [$f5], a                                  ; $417b: $e0 $f5
    rst $38                                       ; $417d: $ff
    ld [$f0ff], a                                 ; $417e: $ea $ff $f0
    rst $38                                       ; $4181: $ff
    rst $38                                       ; $4182: $ff
    xor d                                         ; $4183: $aa
    db $fd                                        ; $4184: $fd
    ld d, c                                       ; $4185: $51
    cp $80                                        ; $4186: $fe $80
    rst $38                                       ; $4188: $ff
    ld d, l                                       ; $4189: $55
    db $eb                                        ; $418a: $eb
    rst $38                                       ; $418b: $ff
    pop de                                        ; $418c: $d1
    sbc a                                         ; $418d: $9f
    sbc l                                         ; $418e: $9d
    ld c, a                                       ; $418f: $4f
    daa                                           ; $4190: $27
    rla                                           ; $4191: $17
    and e                                         ; $4192: $a3
    di                                            ; $4193: $f3
    rst $38                                       ; $4194: $ff
    db $db                                        ; $4195: $db
    pop hl                                        ; $4196: $e1
    xor $f1                                       ; $4197: $ee $f1
    or h                                          ; $4199: $b4
    ei                                            ; $419a: $fb
    ret                                           ; $419b: $c9


    rst $38                                       ; $419c: $ff
    db $fd                                        ; $419d: $fd
    jp c, $e0f0                                   ; $419e: $da $f0 $e0

    ld h, $17                                     ; $41a1: $26 $17
    and d                                         ; $41a3: $a2
    di                                            ; $41a4: $f3
    ld e, d                                       ; $41a5: $5a
    pop hl                                        ; $41a6: $e1
    ld e, a                                       ; $41a7: $5f
    ld l, [hl]                                    ; $41a8: $6e
    pop af                                        ; $41a9: $f1
    inc [hl]                                      ; $41aa: $34
    ei                                            ; $41ab: $fb
    ld sp, hl                                     ; $41ac: $f9
    add b                                         ; $41ad: $80
    xor $fe                                       ; $41ae: $ee $fe
    db $fd                                        ; $41b0: $fd
    pop hl                                        ; $41b1: $e1
    rst $38                                       ; $41b2: $ff
    cp $fc                                        ; $41b3: $fe $fc
    rst $38                                       ; $41b5: $ff
    ld a, [$fbfd]                                 ; $41b6: $fa $fd $fb
    ldh a, [$fd]                                  ; $41b9: $f0 $fd
    ld l, a                                       ; $41bb: $6f
    cp $f9                                        ; $41bc: $fe $f9
    rst $38                                       ; $41be: $ff
    ld a, a                                       ; $41bf: $7f
    cp $e0                                        ; $41c0: $fe $e0
    rst $38                                       ; $41c2: $ff
    ld a, a                                       ; $41c3: $7f
    ld b, b                                       ; $41c4: $40
    pop hl                                        ; $41c5: $e1
    rst $30                                       ; $41c6: $f7
    rra                                           ; $41c7: $1f
    rst $28                                       ; $41c8: $ef

Jump_054_41c9:
    ld a, a                                       ; $41c9: $7f
    inc d                                         ; $41ca: $14
    ldh [$f4], a                                  ; $41cb: $e0 $f4
    ei                                            ; $41cd: $fb
    jp hl                                         ; $41ce: $e9


    or $ff                                        ; $41cf: $f6 $ff
    rst $28                                       ; $41d1: $ef
    ret nz                                        ; $41d2: $c0

    ld a, [c]                                     ; $41d3: $f2
    ld sp, hl                                     ; $41d4: $f9
    db $e3                                        ; $41d5: $e3
    rst $38                                       ; $41d6: $ff
    ret nc                                        ; $41d7: $d0

    rst $28                                       ; $41d8: $ef
    rst $18                                       ; $41d9: $df
    add l                                         ; $41da: $85
    jp c, Jump_000_04bb                           ; $41db: $da $bb $04

    xor a                                         ; $41de: $af
    ld d, [hl]                                    ; $41df: $56
    ret nz                                        ; $41e0: $c0

    add a                                         ; $41e1: $87
    ld a, e                                       ; $41e2: $7b
    rst $30                                       ; $41e3: $f7
    rst $18                                       ; $41e4: $df
    cp a                                          ; $41e5: $bf
    rst $30                                       ; $41e6: $f7
    ld l, b                                       ; $41e7: $68
    ldh [$57], a                                  ; $41e8: $e0 $57
    db $fd                                        ; $41ea: $fd
    xor c                                         ; $41eb: $a9
    ld a, [hl]                                    ; $41ec: $7e
    rst $18                                       ; $41ed: $df
    call $f3e3                                    ; $41ee: $cd $e3 $f3
    rst $30                                       ; $41f1: $f7
    or $ba                                        ; $41f2: $f6 $ba
    ld [c], a                                     ; $41f4: $e2
    push af                                       ; $41f5: $f5
    cp $ff                                        ; $41f6: $fe $ff
    cp a                                          ; $41f8: $bf
    ld [$fff4], a                                 ; $41f9: $ea $f4 $ff
    jp $efbf                                      ; $41fc: $c3 $bf $ef


    rst $18                                       ; $41ff: $df
    dec e                                         ; $4200: $1d
    rst $28                                       ; $4201: $ef
    cp d                                          ; $4202: $ba
    ld [c], a                                     ; $4203: $e2
    ld e, a                                       ; $4204: $5f
    rst $38                                       ; $4205: $ff
    ld [hl], l                                    ; $4206: $75
    nop                                           ; $4207: $00
    ld [c], a                                     ; $4208: $e2
    and c                                         ; $4209: $a1
    ldh [rNR30], a                                ; $420a: $e0 $1a
    ldh [$7f], a                                  ; $420c: $e0 $7f
    ld a, [$f4fd]                                 ; $420e: $fa $fd $f4
    ei                                            ; $4211: $fb
    rst $38                                       ; $4212: $ff
    cp $fb                                        ; $4213: $fe $fb
    nop                                           ; $4215: $00
    add sp, -$02                                  ; $4216: $e8 $fe
    db $f4                                        ; $4218: $f4
    jp $fff3                                      ; $4219: $c3 $f3 $ff


    ld [$d8f7], a                                 ; $421c: $ea $f7 $d8
    rst $20                                       ; $421f: $e7
    db $fd                                        ; $4220: $fd
    rst $38                                       ; $4221: $ff
    ei                                            ; $4222: $fb
    rst $28                                       ; $4223: $ef
    rst $38                                       ; $4224: $ff
    set 7, a                                      ; $4225: $cb $ff
    and d                                         ; $4227: $a2
    rst $18                                       ; $4228: $df
    ld l, b                                       ; $4229: $68
    ld c, e                                       ; $422a: $4b
    sub a                                         ; $422b: $97
    rst $38                                       ; $422c: $ff
    ld a, d                                       ; $422d: $7a
    ret nz                                        ; $422e: $c0

    ld [hl], a                                    ; $422f: $77
    ret z                                         ; $4230: $c8

    jp nz, $e19e                                  ; $4231: $c2 $9e $e1

    ld l, c                                       ; $4234: $69
    ld b, [hl]                                    ; $4235: $46
    pop bc                                        ; $4236: $c1
    ld a, l                                       ; $4237: $7d
    rst $30                                       ; $4238: $f7
    ld e, b                                       ; $4239: $58
    db $e3                                        ; $423a: $e3
    or $ff                                        ; $423b: $f6 $ff
    xor [hl]                                      ; $423d: $ae
    ei                                            ; $423e: $fb
    push af                                       ; $423f: $f5
    adc h                                         ; $4240: $8c
    ret z                                         ; $4241: $c8

    ret                                           ; $4242: $c9


    rst $18                                       ; $4243: $df
    call nz, $b1c0                                ; $4244: $c4 $c0 $b1
    set 7, e                                      ; $4247: $cb $fb
    inc sp                                        ; $4249: $33
    ldh [$9f], a                                  ; $424a: $e0 $9f
    ret z                                         ; $424c: $c8

    or a                                          ; $424d: $b7
    ld [c], a                                     ; $424e: $e2
    inc sp                                        ; $424f: $33
    rra                                           ; $4250: $1f
    add c                                         ; $4251: $81
    inc sp                                        ; $4252: $33
    ldh [$28], a                                  ; $4253: $e0 $28
    ret nz                                        ; $4255: $c0

    ei                                            ; $4256: $fb
    ld d, b                                       ; $4257: $50
    ld [hl+], a                                   ; $4258: $22
    ret nz                                        ; $4259: $c0

    add h                                         ; $425a: $84
    jp hl                                         ; $425b: $e9


    ret c                                         ; $425c: $d8

    sub d                                         ; $425d: $92
    and b                                         ; $425e: $a0
    halt                                          ; $425f: $76
    adc $15                                       ; $4260: $ce $15
    pop bc                                        ; $4262: $c1
    db $eb                                        ; $4263: $eb
    db $fc                                        ; $4264: $fc
    or d                                          ; $4265: $b2
    add sp, -$09                                  ; $4266: $e8 $f7
    cp l                                          ; $4268: $bd
    rst $30                                       ; $4269: $f7
    ld h, d                                       ; $426a: $62
    ld [$4f15], a                                 ; $426b: $ea $15 $4f
    ret                                           ; $426e: $c9


    rst $18                                       ; $426f: $df
    cp a                                          ; $4270: $bf
    ld h, $dd                                     ; $4271: $26 $dd
    sub a                                         ; $4273: $97
    rst $38                                       ; $4274: $ff
    rst $38                                       ; $4275: $ff
    ld a, [$ca3c]                                 ; $4276: $fa $3c $ca
    ld a, a                                       ; $4279: $7f
    add $a0                                       ; $427a: $c6 $a0
    ld a, [$ffa7]                                 ; $427c: $fa $a7 $ff
    ld d, h                                       ; $427f: $54
    ld [hl], h                                    ; $4280: $74
    ret nz                                        ; $4281: $c0

    ld l, d                                       ; $4282: $6a
    db $eb                                        ; $4283: $eb
    adc d                                         ; $4284: $8a
    and h                                         ; $4285: $a4
    and b                                         ; $4286: $a0
    xor a                                         ; $4287: $af
    ld a, [bc]                                    ; $4288: $0a
    ret z                                         ; $4289: $c8

    xor a                                         ; $428a: $af
    and b                                         ; $428b: $a0
    pop bc                                        ; $428c: $c1
    db $fc                                        ; $428d: $fc
    ld a, [$ccac]                                 ; $428e: $fa $ac $cc
    jp hl                                         ; $4291: $e9


    db $fd                                        ; $4292: $fd
    cp $54                                        ; $4293: $fe $54
    ei                                            ; $4295: $fb
    add c                                         ; $4296: $81
    rst $38                                       ; $4297: $ff
    ld sp, hl                                     ; $4298: $f9

Jump_054_4299:
    ld d, h                                       ; $4299: $54
    inc l                                         ; $429a: $2c
    ret nz                                        ; $429b: $c0

    add l                                         ; $429c: $85
    and e                                         ; $429d: $a3
    ld b, b                                       ; $429e: $40
    cp a                                          ; $429f: $bf
    ld [$02ff], sp                                ; $42a0: $08 $ff $02
    ld a, [$a260]                                 ; $42a3: $fa $60 $a2
    ld a, [hl]                                    ; $42a6: $7e
    ld [hl], h                                    ; $42a7: $74
    and d                                         ; $42a8: $a2
    nop                                           ; $42a9: $00
    rst $38                                       ; $42aa: $ff
    add h                                         ; $42ab: $84
    rst $38                                       ; $42ac: $ff
    ld a, [hl+]                                   ; $42ad: $2a
    jp nz, $80d2                                  ; $42ae: $c2 $d2 $80

    cp l                                          ; $42b1: $bd
    ld a, [$7ec6]                                 ; $42b2: $fa $c6 $7e
    pop hl                                        ; $42b5: $e1
    xor b                                         ; $42b6: $a8
    xor a                                         ; $42b7: $af
    ld b, a                                       ; $42b8: $47
    and c                                         ; $42b9: $a1
    push af                                       ; $42ba: $f5
    rst $38                                       ; $42bb: $ff
    xor c                                         ; $42bc: $a9
    cp a                                          ; $42bd: $bf
    cp c                                          ; $42be: $b9
    push hl                                       ; $42bf: $e5
    ld h, $a0                                     ; $42c0: $26 $a0
    xor d                                         ; $42c2: $aa
    add hl, bc                                    ; $42c3: $09
    ldh [$ca], a                                  ; $42c4: $e0 $ca
    add hl, bc                                    ; $42c6: $09
    db $ec                                        ; $42c7: $ec
    xor a                                         ; $42c8: $af
    adc a                                         ; $42c9: $8f
    rst $38                                       ; $42ca: $ff
    ld d, d                                       ; $42cb: $52
    db $fd                                        ; $42cc: $fd
    xor d                                         ; $42cd: $aa
    add b                                         ; $42ce: $80
    add b                                         ; $42cf: $80
    ld hl, sp-$5e                                 ; $42d0: $f8 $a2
    inc d                                         ; $42d2: $14
    and d                                         ; $42d3: $a2
    dec hl                                        ; $42d4: $2b
    adc a                                         ; $42d5: $8f
    push de                                       ; $42d6: $d5
    dec b                                         ; $42d7: $05
    ld a, [$d454]                                 ; $42d8: $fa $54 $d4
    pop hl                                        ; $42db: $e1
    ld [$4ae2], a                                 ; $42dc: $ea $e2 $4a
    and c                                         ; $42df: $a1

Call_054_42e0:
    ld l, [hl]                                    ; $42e0: $6e
    inc hl                                        ; $42e1: $23
    cp e                                          ; $42e2: $bb
    ld bc, $8260                                  ; $42e3: $01 $60 $82
    inc h                                         ; $42e6: $24
    pop hl                                        ; $42e7: $e1
    cp b                                          ; $42e8: $b8
    db $e3                                        ; $42e9: $e3
    dec d                                         ; $42ea: $15
    ld l, $e2                                     ; $42eb: $2e $e2
    ldh [$e3], a                                  ; $42ed: $e0 $e3
    ldh a, [rDMA]                                 ; $42ef: $f0 $46
    and b                                         ; $42f1: $a0
    ld l, $e2                                     ; $42f2: $2e $e2
    sub $85                                       ; $42f4: $d6 $85
    adc d                                         ; $42f6: $8a
    pop hl                                        ; $42f7: $e1
    xor c                                         ; $42f8: $a9
    cp $48                                        ; $42f9: $fe $48
    rst $30                                       ; $42fb: $f7
    inc a                                         ; $42fc: $3c
    xor d                                         ; $42fd: $aa
    db $e3                                        ; $42fe: $e3
    ld c, $e3                                     ; $42ff: $0e $e3
    ld d, l                                       ; $4301: $55
    rst $38                                       ; $4302: $ff
    ld [de], a                                    ; $4303: $12
    rst $28                                       ; $4304: $ef
    call z, Call_054_40e3                         ; $4305: $cc $e3 $40
    ldh [rP1], a                                  ; $4308: $e0 $00
    rst $38                                       ; $430a: $ff
    rst $38                                       ; $430b: $ff
    rst $38                                       ; $430c: $ff
    rst $38                                       ; $430d: $ff
    rst $38                                       ; $430e: $ff
    rst $38                                       ; $430f: $ff
    rst $38                                       ; $4310: $ff
    rst $38                                       ; $4311: $ff
    rst $38                                       ; $4312: $ff
    rst $38                                       ; $4313: $ff
    rst $38                                       ; $4314: $ff
    rst $38                                       ; $4315: $ff
    rst $38                                       ; $4316: $ff
    rst $38                                       ; $4317: $ff
    rst $38                                       ; $4318: $ff
    rst $38                                       ; $4319: $ff
    nop                                           ; $431a: $00
    rst $38                                       ; $431b: $ff
    rst $38                                       ; $431c: $ff
    rst $38                                       ; $431d: $ff
    rst $38                                       ; $431e: $ff
    rst $38                                       ; $431f: $ff
    rst $38                                       ; $4320: $ff
    rst $38                                       ; $4321: $ff
    rst $38                                       ; $4322: $ff
    rst $38                                       ; $4323: $ff
    rst $38                                       ; $4324: $ff
    rst $38                                       ; $4325: $ff
    rst $38                                       ; $4326: $ff
    rst $38                                       ; $4327: $ff
    rst $38                                       ; $4328: $ff
    rst $38                                       ; $4329: $ff
    rst $38                                       ; $432a: $ff
    nop                                           ; $432b: $00
    rst $38                                       ; $432c: $ff
    rst $38                                       ; $432d: $ff
    rst $38                                       ; $432e: $ff
    rst $38                                       ; $432f: $ff
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
    nop                                           ; $433c: $00
    rst $38                                       ; $433d: $ff
    rst $38                                       ; $433e: $ff
    rst $38                                       ; $433f: $ff
    rst $38                                       ; $4340: $ff
    rst $38                                       ; $4341: $ff
    rst $38                                       ; $4342: $ff
    rst $38                                       ; $4343: $ff
    rst $38                                       ; $4344: $ff

Jump_054_4345:
    rst $38                                       ; $4345: $ff
    rst $38                                       ; $4346: $ff
    rst $38                                       ; $4347: $ff
    rst $38                                       ; $4348: $ff
    rst $38                                       ; $4349: $ff
    rst $38                                       ; $434a: $ff
    rst $38                                       ; $434b: $ff
    rst $38                                       ; $434c: $ff
    nop                                           ; $434d: $00
    rst $38                                       ; $434e: $ff
    rst $38                                       ; $434f: $ff
    rst $38                                       ; $4350: $ff
    rst $38                                       ; $4351: $ff
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
    nop                                           ; $435e: $00
    rst $38                                       ; $435f: $ff
    rst $38                                       ; $4360: $ff
    rst $38                                       ; $4361: $ff
    rst $38                                       ; $4362: $ff
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
    nop                                           ; $436f: $00
    rst $38                                       ; $4370: $ff
    rst $38                                       ; $4371: $ff
    rst $38                                       ; $4372: $ff
    rst $38                                       ; $4373: $ff
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
    nop                                           ; $4380: $00
    rst $38                                       ; $4381: $ff
    rst $38                                       ; $4382: $ff
    rst $38                                       ; $4383: $ff
    rst $38                                       ; $4384: $ff
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
    nop                                           ; $4391: $00
    rst $38                                       ; $4392: $ff
    rst $38                                       ; $4393: $ff
    rst $38                                       ; $4394: $ff
    rst $38                                       ; $4395: $ff
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
    nop                                           ; $43a2: $00
    rst $38                                       ; $43a3: $ff
    rst $38                                       ; $43a4: $ff
    rst $38                                       ; $43a5: $ff
    rst $38                                       ; $43a6: $ff
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
    nop                                           ; $43b3: $00
    rst $38                                       ; $43b4: $ff
    rst $38                                       ; $43b5: $ff
    rst $38                                       ; $43b6: $ff
    rst $38                                       ; $43b7: $ff
    rst $38                                       ; $43b8: $ff
    rst $38                                       ; $43b9: $ff
    rst $38                                       ; $43ba: $ff
    rst $38                                       ; $43bb: $ff

Jump_054_43bc:
    rst $38                                       ; $43bc: $ff
    rst $38                                       ; $43bd: $ff
    rst $38                                       ; $43be: $ff
    rst $38                                       ; $43bf: $ff
    rst $38                                       ; $43c0: $ff
    rst $38                                       ; $43c1: $ff
    rst $38                                       ; $43c2: $ff
    rst $38                                       ; $43c3: $ff
    nop                                           ; $43c4: $00
    rst $38                                       ; $43c5: $ff
    rst $38                                       ; $43c6: $ff
    rst $38                                       ; $43c7: $ff
    ld a, [$0000]                                 ; $43c8: $fa $00 $00
    nop                                           ; $43cb: $00
    nop                                           ; $43cc: $00
    nop                                           ; $43cd: $00
    nop                                           ; $43ce: $00
    nop                                           ; $43cf: $00
    nop                                           ; $43d0: $00
    nop                                           ; $43d1: $00
    nop                                           ; $43d2: $00
    nop                                           ; $43d3: $00
    nop                                           ; $43d4: $00
    nop                                           ; $43d5: $00
    nop                                           ; $43d6: $00
    nop                                           ; $43d7: $00
    nop                                           ; $43d8: $00
    nop                                           ; $43d9: $00
    nop                                           ; $43da: $00
    nop                                           ; $43db: $00
    nop                                           ; $43dc: $00
    nop                                           ; $43dd: $00
    nop                                           ; $43de: $00
    nop                                           ; $43df: $00
    nop                                           ; $43e0: $00
    nop                                           ; $43e1: $00
    nop                                           ; $43e2: $00
    nop                                           ; $43e3: $00
    nop                                           ; $43e4: $00
    nop                                           ; $43e5: $00
    nop                                           ; $43e6: $00
    nop                                           ; $43e7: $00
    nop                                           ; $43e8: $00
    nop                                           ; $43e9: $00
    nop                                           ; $43ea: $00
    nop                                           ; $43eb: $00
    nop                                           ; $43ec: $00
    nop                                           ; $43ed: $00
    nop                                           ; $43ee: $00
    nop                                           ; $43ef: $00
    nop                                           ; $43f0: $00
    nop                                           ; $43f1: $00
    nop                                           ; $43f2: $00
    nop                                           ; $43f3: $00
    nop                                           ; $43f4: $00
    nop                                           ; $43f5: $00
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

Call_054_44fd:
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
    ld a, l                                       ; $45cc: $7d
    ld h, [hl]                                    ; $45cd: $66
    rst $38                                       ; $45ce: $ff
    db $e4                                        ; $45cf: $e4
    sbc c                                         ; $45d0: $99
    sub [hl]                                      ; $45d1: $96
    sub [hl]                                      ; $45d2: $96
    ld h, [hl]                                    ; $45d3: $66
    sub [hl]                                      ; $45d4: $96
    di                                            ; $45d5: $f3
    ldh [$e3], a                                  ; $45d6: $e0 $e3
    ld de, $ff99                                  ; $45d8: $11 $99 $ff
    ldh [$f0], a                                  ; $45db: $e0 $f0
    pop hl                                        ; $45dd: $e1
    rst $20                                       ; $45de: $e7
    db $e4                                        ; $45df: $e4
    ld l, c                                       ; $45e0: $69
    sub c                                         ; $45e1: $91
    ld l, c                                       ; $45e2: $69
    dec e                                         ; $45e3: $1d
    sub c                                         ; $45e4: $91
    di                                            ; $45e5: $f3
    ldh [$99], a                                  ; $45e6: $e0 $99
    ld h, [hl]                                    ; $45e8: $66
    ld l, c                                       ; $45e9: $69
    cp $e0                                        ; $45ea: $fe $e0
    rst $38                                       ; $45ec: $ff
    ldh a, [$d1]                                  ; $45ed: $f0 $d1
    db $e4                                        ; $45ef: $e4
    sbc b                                         ; $45f0: $98
    db $dd                                        ; $45f1: $dd
    ld [c], a                                     ; $45f2: $e2
    reti                                          ; $45f3: $d9


    pop hl                                        ; $45f4: $e1
    xor $e3                                       ; $45f5: $ee $e3
    ld de, $c811                                  ; $45f7: $11 $11 $c8
    pop hl                                        ; $45fa: $e1
    call nz, Call_000_11e1                        ; $45fb: $c4 $e1 $11
    ld c, h                                       ; $45fe: $4c
    rst $38                                       ; $45ff: $ff
    ldh [$ad], a                                  ; $4600: $e0 $ad
    pop hl                                        ; $4602: $e1
    sbc c                                         ; $4603: $99
    ld de, $e3fe                                  ; $4604: $11 $fe $e3
    ldh a, [$ef]                                  ; $4607: $f0 $ef
    sub c                                         ; $4609: $91
    and $e1                                       ; $460a: $e6 $e1
    db $fc                                        ; $460c: $fc
    ret c                                         ; $460d: $d8

    ld [c], a                                     ; $460e: $e2
    db $e3                                        ; $460f: $e3
    ld [c], a                                     ; $4610: $e2
    add hl, de                                    ; $4611: $19
    add hl, de                                    ; $4612: $19
    sbc c                                         ; $4613: $99
    add hl, de                                    ; $4614: $19
    sub [hl]                                      ; $4615: $96
    sbc c                                         ; $4616: $99
    ld a, a                                       ; $4617: $7f
    ld h, [hl]                                    ; $4618: $66
    ld de, $1117                                  ; $4619: $11 $17 $11
    ld [hl], a                                    ; $461c: $77
    rla                                           ; $461d: $17
    ld [hl], a                                    ; $461e: $77
    rst $38                                       ; $461f: $ff
    rst $38                                       ; $4620: $ff
    nop                                           ; $4621: $00
    rst $38                                       ; $4622: $ff
    rst $38                                       ; $4623: $ff
    rst $38                                       ; $4624: $ff
    rst $38                                       ; $4625: $ff
    rst $38                                       ; $4626: $ff
    rst $38                                       ; $4627: $ff
    rst $38                                       ; $4628: $ff
    rst $38                                       ; $4629: $ff
    rst $38                                       ; $462a: $ff
    rst $38                                       ; $462b: $ff
    rst $38                                       ; $462c: $ff
    rst $38                                       ; $462d: $ff
    rst $38                                       ; $462e: $ff
    rst $38                                       ; $462f: $ff
    rst $38                                       ; $4630: $ff
    rst $38                                       ; $4631: $ff
    inc b                                         ; $4632: $04
    rst $38                                       ; $4633: $ff
    rst $38                                       ; $4634: $ff
    db $f4                                        ; $4635: $f4
    di                                            ; $4636: $f3
    rst $38                                       ; $4637: $ff
    rst $38                                       ; $4638: $ff
    rst $38                                       ; $4639: $ff
    rst $38                                       ; $463a: $ff
    rst $38                                       ; $463b: $ff
    rst $38                                       ; $463c: $ff
    rst $38                                       ; $463d: $ff
    rst $38                                       ; $463e: $ff
    rst $38                                       ; $463f: $ff
    rst $38                                       ; $4640: $ff
    rst $38                                       ; $4641: $ff
    nop                                           ; $4642: $00
    rst $38                                       ; $4643: $ff
    rst $38                                       ; $4644: $ff
    rst $38                                       ; $4645: $ff
    rst $38                                       ; $4646: $ff
    rst $38                                       ; $4647: $ff
    rst $38                                       ; $4648: $ff
    rst $38                                       ; $4649: $ff
    rst $38                                       ; $464a: $ff
    rst $38                                       ; $464b: $ff
    rst $38                                       ; $464c: $ff
    rst $38                                       ; $464d: $ff
    rst $38                                       ; $464e: $ff
    rst $38                                       ; $464f: $ff
    rst $38                                       ; $4650: $ff
    rst $38                                       ; $4651: $ff
    rst $38                                       ; $4652: $ff
    nop                                           ; $4653: $00
    rst $38                                       ; $4654: $ff
    rst $38                                       ; $4655: $ff
    rst $38                                       ; $4656: $ff
    rst $38                                       ; $4657: $ff
    rst $38                                       ; $4658: $ff
    rst $38                                       ; $4659: $ff
    rst $38                                       ; $465a: $ff
    rst $38                                       ; $465b: $ff
    rst $38                                       ; $465c: $ff
    rst $38                                       ; $465d: $ff
    rst $38                                       ; $465e: $ff
    rst $38                                       ; $465f: $ff
    rst $38                                       ; $4660: $ff
    rst $38                                       ; $4661: $ff
    rst $38                                       ; $4662: $ff
    rst $38                                       ; $4663: $ff
    nop                                           ; $4664: $00
    rst $38                                       ; $4665: $ff
    rst $38                                       ; $4666: $ff
    rst $38                                       ; $4667: $ff
    rst $38                                       ; $4668: $ff
    rst $38                                       ; $4669: $ff
    rst $38                                       ; $466a: $ff
    rst $38                                       ; $466b: $ff
    rst $38                                       ; $466c: $ff
    rst $38                                       ; $466d: $ff
    rst $38                                       ; $466e: $ff
    rst $38                                       ; $466f: $ff
    rst $38                                       ; $4670: $ff
    rst $38                                       ; $4671: $ff
    rst $38                                       ; $4672: $ff
    rst $38                                       ; $4673: $ff
    rst $38                                       ; $4674: $ff
    nop                                           ; $4675: $00
    rst $38                                       ; $4676: $ff
    rst $38                                       ; $4677: $ff
    rst $38                                       ; $4678: $ff
    rst $38                                       ; $4679: $ff
    rst $38                                       ; $467a: $ff
    rst $38                                       ; $467b: $ff
    rst $38                                       ; $467c: $ff
    rst $38                                       ; $467d: $ff
    rst $38                                       ; $467e: $ff
    rst $38                                       ; $467f: $ff
    rst $38                                       ; $4680: $ff
    rst $38                                       ; $4681: $ff
    rst $38                                       ; $4682: $ff
    rst $38                                       ; $4683: $ff
    rst $38                                       ; $4684: $ff
    rst $38                                       ; $4685: $ff
    nop                                           ; $4686: $00
    rst $38                                       ; $4687: $ff
    rst $38                                       ; $4688: $ff
    rst $38                                       ; $4689: $ff
    rst $38                                       ; $468a: $ff
    rst $38                                       ; $468b: $ff
    rst $38                                       ; $468c: $ff
    rst $38                                       ; $468d: $ff
    rst $38                                       ; $468e: $ff
    rst $38                                       ; $468f: $ff
    rst $38                                       ; $4690: $ff
    rst $38                                       ; $4691: $ff
    rst $38                                       ; $4692: $ff
    rst $38                                       ; $4693: $ff
    rst $38                                       ; $4694: $ff
    db $fd                                        ; $4695: $fd
    db $fc                                        ; $4696: $fc
    nop                                           ; $4697: $00
    nop                                           ; $4698: $00
    nop                                           ; $4699: $00
    ld bc, $ff00                                  ; $469a: $01 $00 $ff
    rst $38                                       ; $469d: $ff

Call_054_469e:
Jump_054_469e:
    rst $38                                       ; $469e: $ff
    rst $38                                       ; $469f: $ff
    rst $38                                       ; $46a0: $ff
    rst $38                                       ; $46a1: $ff
    rst $38                                       ; $46a2: $ff
    rst $38                                       ; $46a3: $ff
    rst $38                                       ; $46a4: $ff
    rst $38                                       ; $46a5: $ff
    rst $38                                       ; $46a6: $ff
    rst $38                                       ; $46a7: $ff
    rst $38                                       ; $46a8: $ff
    rst $38                                       ; $46a9: $ff
    nop                                           ; $46aa: $00
    rst $38                                       ; $46ab: $ff
    rst $38                                       ; $46ac: $ff
    rst $38                                       ; $46ad: $ff
    rst $38                                       ; $46ae: $ff
    rst $38                                       ; $46af: $ff
    rst $38                                       ; $46b0: $ff
    rst $38                                       ; $46b1: $ff
    rst $38                                       ; $46b2: $ff
    rst $38                                       ; $46b3: $ff
    rst $38                                       ; $46b4: $ff
    rst $38                                       ; $46b5: $ff
    rst $38                                       ; $46b6: $ff
    rst $38                                       ; $46b7: $ff
    rst $38                                       ; $46b8: $ff
    rst $38                                       ; $46b9: $ff
    rst $38                                       ; $46ba: $ff
    nop                                           ; $46bb: $00
    rst $38                                       ; $46bc: $ff
    rst $38                                       ; $46bd: $ff
    rst $38                                       ; $46be: $ff
    rst $38                                       ; $46bf: $ff
    rst $38                                       ; $46c0: $ff
    rst $38                                       ; $46c1: $ff
    rst $38                                       ; $46c2: $ff
    rst $38                                       ; $46c3: $ff
    rst $38                                       ; $46c4: $ff
    rst $38                                       ; $46c5: $ff
    rst $38                                       ; $46c6: $ff
    rst $38                                       ; $46c7: $ff
    rst $38                                       ; $46c8: $ff
    rst $38                                       ; $46c9: $ff
    rst $38                                       ; $46ca: $ff
    rst $38                                       ; $46cb: $ff
    nop                                           ; $46cc: $00
    rst $38                                       ; $46cd: $ff
    rst $38                                       ; $46ce: $ff
    rst $38                                       ; $46cf: $ff
    rst $38                                       ; $46d0: $ff
    rst $38                                       ; $46d1: $ff
    rst $38                                       ; $46d2: $ff
    rst $38                                       ; $46d3: $ff
    rst $38                                       ; $46d4: $ff
    rst $38                                       ; $46d5: $ff
    rst $38                                       ; $46d6: $ff
    rst $38                                       ; $46d7: $ff
    rst $38                                       ; $46d8: $ff
    rst $38                                       ; $46d9: $ff
    rst $38                                       ; $46da: $ff
    rst $38                                       ; $46db: $ff
    rst $38                                       ; $46dc: $ff
    nop                                           ; $46dd: $00
    rst $38                                       ; $46de: $ff
    rst $38                                       ; $46df: $ff
    rst $38                                       ; $46e0: $ff
    rst $38                                       ; $46e1: $ff
    rst $38                                       ; $46e2: $ff
    rst $38                                       ; $46e3: $ff
    rst $38                                       ; $46e4: $ff
    rst $38                                       ; $46e5: $ff
    rst $38                                       ; $46e6: $ff
    rst $38                                       ; $46e7: $ff
    rst $38                                       ; $46e8: $ff
    rst $38                                       ; $46e9: $ff
    rst $38                                       ; $46ea: $ff
    rst $38                                       ; $46eb: $ff
    rst $38                                       ; $46ec: $ff
    rst $38                                       ; $46ed: $ff
    nop                                           ; $46ee: $00
    rst $38                                       ; $46ef: $ff
    rst $38                                       ; $46f0: $ff
    rst $38                                       ; $46f1: $ff
    rst $38                                       ; $46f2: $ff
    rst $38                                       ; $46f3: $ff
    rst $38                                       ; $46f4: $ff
    rst $38                                       ; $46f5: $ff
    rst $38                                       ; $46f6: $ff
    rst $38                                       ; $46f7: $ff
    rst $38                                       ; $46f8: $ff
    rst $38                                       ; $46f9: $ff
    rst $38                                       ; $46fa: $ff
    rst $38                                       ; $46fb: $ff
    rst $38                                       ; $46fc: $ff
    rst $38                                       ; $46fd: $ff
    rst $38                                       ; $46fe: $ff
    nop                                           ; $46ff: $00
    rst $38                                       ; $4700: $ff
    rst $38                                       ; $4701: $ff
    rst $38                                       ; $4702: $ff
    rst $38                                       ; $4703: $ff
    rst $38                                       ; $4704: $ff
    rst $38                                       ; $4705: $ff
    rst $38                                       ; $4706: $ff
    rst $38                                       ; $4707: $ff
    rst $38                                       ; $4708: $ff
    rst $38                                       ; $4709: $ff
    rst $38                                       ; $470a: $ff
    rst $38                                       ; $470b: $ff
    rst $38                                       ; $470c: $ff
    rst $38                                       ; $470d: $ff
    rst $38                                       ; $470e: $ff
    rst $38                                       ; $470f: $ff
    nop                                           ; $4710: $00
    rst $38                                       ; $4711: $ff
    rst $38                                       ; $4712: $ff
    rst $38                                       ; $4713: $ff
    rst $38                                       ; $4714: $ff
    rst $38                                       ; $4715: $ff
    rst $38                                       ; $4716: $ff
    rst $38                                       ; $4717: $ff
    rst $38                                       ; $4718: $ff
    rst $38                                       ; $4719: $ff
    rst $38                                       ; $471a: $ff
    rst $38                                       ; $471b: $ff
    db $e4                                        ; $471c: $e4
    nop                                           ; $471d: $00
    nop                                           ; $471e: $00
    nop                                           ; $471f: $00
    jr nc, jr_054_4769                            ; $4720: $30 $47

    jr nc, jr_054_4773                            ; $4722: $30 $4f

    nop                                           ; $4724: $00
    nop                                           ; $4725: $00
    nop                                           ; $4726: $00
    nop                                           ; $4727: $00
    nop                                           ; $4728: $00
    nop                                           ; $4729: $00
    nop                                           ; $472a: $00
    nop                                           ; $472b: $00
    nop                                           ; $472c: $00
    nop                                           ; $472d: $00
    nop                                           ; $472e: $00
    nop                                           ; $472f: $00
    nop                                           ; $4730: $00
    nop                                           ; $4731: $00
    nop                                           ; $4732: $00
    nop                                           ; $4733: $00
    nop                                           ; $4734: $00
    nop                                           ; $4735: $00
    nop                                           ; $4736: $00
    nop                                           ; $4737: $00
    nop                                           ; $4738: $00
    nop                                           ; $4739: $00
    nop                                           ; $473a: $00
    nop                                           ; $473b: $00
    nop                                           ; $473c: $00
    nop                                           ; $473d: $00
    nop                                           ; $473e: $00
    nop                                           ; $473f: $00
    nop                                           ; $4740: $00
    nop                                           ; $4741: $00
    nop                                           ; $4742: $00

Jump_054_4743:
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
    nop                                           ; $474e: $00
    nop                                           ; $474f: $00
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

jr_054_4769:
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

jr_054_4773:
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

Jump_054_483a:
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

Call_054_4bc1:
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

Jump_054_4be2:
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

Jump_054_4c20:
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

Jump_054_4cab:
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

Jump_054_4cc3:
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
    cp $39                                        ; $4f30: $fe $39
    ld c, a                                       ; $4f32: $4f
    call c, $1052                                 ; $4f33: $dc $52 $10
    ld d, a                                       ; $4f36: $57
    dec hl                                        ; $4f37: $2b
    ld d, a                                       ; $4f38: $57
    ccf                                           ; $4f39: $3f
    dec c                                         ; $4f3a: $0d
    dec c                                         ; $4f3b: $0d
    dec c                                         ; $4f3c: $0d
    ld c, $0e                                     ; $4f3d: $0e $0e
    ld c, $fa                                     ; $4f3f: $0e $fa
    rst $38                                       ; $4f41: $ff
    db $f4                                        ; $4f42: $f4
    rst $30                                       ; $4f43: $f7
    nop                                           ; $4f44: $00
    rst $38                                       ; $4f45: $ff
    rst $38                                       ; $4f46: $ff
    rst $38                                       ; $4f47: $ff
    rst $38                                       ; $4f48: $ff
    rst $38                                       ; $4f49: $ff
    rst $38                                       ; $4f4a: $ff
    ld sp, hl                                     ; $4f4b: $f9
    ld hl, sp+$5b                                 ; $4f4c: $f8 $5b
    rst $38                                       ; $4f4e: $ff
    db $f4                                        ; $4f4f: $f4
    ld hl, sp-$5f                                 ; $4f50: $f8 $a1
    rst $38                                       ; $4f52: $ff
    rst $38                                       ; $4f53: $ff
    rst $38                                       ; $4f54: $ff
    nop                                           ; $4f55: $00
    rst $38                                       ; $4f56: $ff
    rst $38                                       ; $4f57: $ff
    ld b, e                                       ; $4f58: $43
    rst $38                                       ; $4f59: $ff
    ld a, [$80ff]                                 ; $4f5a: $fa $ff $80
    rst $18                                       ; $4f5d: $df
    rst $38                                       ; $4f5e: $ff
    rst $38                                       ; $4f5f: $ff
    rst $38                                       ; $4f60: $ff
    rst $38                                       ; $4f61: $ff
    rst $38                                       ; $4f62: $ff
    rst $38                                       ; $4f63: $ff
    dec a                                         ; $4f64: $3d
    rst $38                                       ; $4f65: $ff
    ret nz                                        ; $4f66: $c0

    ld a, [$80ff]                                 ; $4f67: $fa $ff $80
    rst $18                                       ; $4f6a: $df
    rst $38                                       ; $4f6b: $ff
    rst $38                                       ; $4f6c: $ff
    rst $38                                       ; $4f6d: $ff
    rst $38                                       ; $4f6e: $ff

jr_054_4f6f:
    rst $38                                       ; $4f6f: $ff
    rst $38                                       ; $4f70: $ff
    ld e, e                                       ; $4f71: $5b
    rst $38                                       ; $4f72: $ff
    dec c                                         ; $4f73: $0d
    ld c, l                                       ; $4f74: $4d
    ld de, $384d                                  ; $4f75: $11 $4d $38
    ldh [$80], a                                  ; $4f78: $e0 $80
    rst $18                                       ; $4f7a: $df
    sub [hl]                                      ; $4f7b: $96
    db $f4                                        ; $4f7c: $f4
    ld c, l                                       ; $4f7d: $4d
    jp c, Jump_054_61ff                           ; $4f7e: $da $ff $61

    ei                                            ; $4f81: $fb
    ret nz                                        ; $4f82: $c0

    rst $38                                       ; $4f83: $ff
    nop                                           ; $4f84: $00
    ld b, e                                       ; $4f85: $43
    ld a, [$e285]                                 ; $4f86: $fa $85 $e2
    dec a                                         ; $4f89: $3d
    db $e3                                        ; $4f8a: $e3
    jr c, jr_054_4f6f                             ; $4f8b: $38 $e2

    add b                                         ; $4f8d: $80
    rst $18                                       ; $4f8e: $df
    ld b, e                                       ; $4f8f: $43
    jp hl                                         ; $4f90: $e9


    adc $e4                                       ; $4f91: $ce $e4
    jp nz, Jump_000_20e2                          ; $4f93: $c2 $e2 $20

    ld [hl], a                                    ; $4f96: $77
    rst $38                                       ; $4f97: $ff
    ld h, a                                       ; $4f98: $67
    ldh a, [$fc]                                  ; $4f99: $f0 $fc
    add sp, -$40                                  ; $4f9b: $e8 $c0
    db $f4                                        ; $4f9d: $f4
    db $db                                        ; $4f9e: $db
    xor e                                         ; $4f9f: $ab
    ld c, l                                       ; $4fa0: $4d
    ld e, d                                       ; $4fa1: $5a
    db $e3                                        ; $4fa2: $e3
    ld l, b                                       ; $4fa3: $68
    jp $8500                                      ; $4fa4: $c3 $00 $85


    ret nz                                        ; $4fa7: $c0

    ld b, h                                       ; $4fa8: $44
    pop hl                                        ; $4fa9: $e1
    cp $e1                                        ; $4faa: $fe $e1
    or a                                          ; $4fac: $b7
    call nz, $dd80                                ; $4fad: $c4 $80 $dd
    ld de, $5be1                                  ; $4fb0: $11 $e1 $5b
    push hl                                       ; $4fb3: $e5
    add h                                         ; $4fb4: $84
    and b                                         ; $4fb5: $a0
    jp nz, $e1c0                                  ; $4fb6: $c2 $c0 $e1

    ld l, l                                       ; $4fb9: $6d
    ret nz                                        ; $4fba: $c0

    push hl                                       ; $4fbb: $e5
    push af                                       ; $4fbc: $f5
    jp $ff4f                                      ; $4fbd: $c3 $4f $ff


    ret nz                                        ; $4fc0: $c0

    ld [$6d4d], a                                 ; $4fc1: $ea $4d $6d
    rra                                           ; $4fc4: $1f
    ld c, l                                       ; $4fc5: $4d
    dec c                                         ; $4fc6: $0d
    ld a, [bc]                                    ; $4fc7: $0a
    ld a, [bc]                                    ; $4fc8: $0a
    dec l                                         ; $4fc9: $2d
    ld a, e                                       ; $4fca: $7b
    ldh [$03], a                                  ; $4fcb: $e0 $03
    ld hl, sp-$25                                 ; $4fcd: $f8 $db
    and [hl]                                      ; $4fcf: $a6
    ld hl, sp-$7a                                 ; $4fd0: $f8 $86
    push hl                                       ; $4fd2: $e5
    push af                                       ; $4fd3: $f5
    rst $20                                       ; $4fd4: $e7
    call nz, $6da0                                ; $4fd5: $c4 $a0 $6d
    ld a, [bc]                                    ; $4fd8: $0a
    ld a, [bc]                                    ; $4fd9: $0a
    ld c, l                                       ; $4fda: $4d
    dec l                                         ; $4fdb: $2d
    ld bc, $b22d                                  ; $4fdc: $01 $2d $b2
    db $e3                                        ; $4fdf: $e3
    add b                                         ; $4fe0: $80
    call nc, $a09e                                ; $4fe1: $d4 $9e $a0
    sbc e                                         ; $4fe4: $9b
    jp $c5cd                                      ; $4fe5: $c3 $cd $c5


    push af                                       ; $4fe8: $f5
    and $84                                       ; $4fe9: $e6 $84
    and c                                         ; $4feb: $a1
    ccf                                           ; $4fec: $3f
    dec hl                                        ; $4fed: $2b
    ld c, e                                       ; $4fee: $4b
    dec l                                         ; $4fef: $2d
    dec c                                         ; $4ff0: $0d
    dec l                                         ; $4ff1: $2d
    ld l, l                                       ; $4ff2: $6d
    or l                                          ; $4ff3: $b5
    and d                                         ; $4ff4: $a2
    ld a, e                                       ; $4ff5: $7b
    ret nz                                        ; $4ff6: $c0

    ret nz                                        ; $4ff7: $c0

    rst $38                                       ; $4ff8: $ff
    or [hl]                                       ; $4ff9: $b6
    db $10                                        ; $4ffa: $10
    pop hl                                        ; $4ffb: $e1
    cp $c4                                        ; $4ffc: $fe $c4
    ld a, [hl+]                                   ; $4ffe: $2a
    and b                                         ; $4fff: $a0
    add $c2                                       ; $5000: $c6 $c2
    ld a, $c2                                     ; $5002: $3e $c2
    ld l, e                                       ; $5004: $6b
    ld l, e                                       ; $5005: $6b
    rlca                                          ; $5006: $07
    ld c, e                                       ; $5007: $4b
    dec bc                                        ; $5008: $0b
    dec l                                         ; $5009: $2d
    ret nz                                        ; $500a: $c0

    rst $30                                       ; $500b: $f7
    ld sp, hl                                     ; $500c: $f9
    and [hl]                                      ; $500d: $a6
    db $10                                        ; $500e: $10
    db $e3                                        ; $500f: $e3
    jp nc, $fec7                                  ; $5010: $d2 $c7 $fe

    db $e3                                        ; $5013: $e3
    dec b                                         ; $5014: $05
    ld l, l                                       ; $5015: $6d
    add b                                         ; $5016: $80
    ldh [$0b], a                                  ; $5017: $e0 $0b
    ei                                            ; $5019: $fb
    add b                                         ; $501a: $80
    db $fd                                        ; $501b: $fd
    ret nz                                        ; $501c: $c0

    dec a                                         ; $501d: $3d
    push af                                       ; $501e: $f5
    cp c                                          ; $501f: $b9
    add a                                         ; $5020: $87
    ld b, d                                       ; $5021: $42
    ret nz                                        ; $5022: $c0

    ldh a, [rHDMA1]                               ; $5023: $f0 $51
    ret nz                                        ; $5025: $c0

    ld d, h                                       ; $5026: $54
    ld [c], a                                     ; $5027: $e2
    ret                                           ; $5028: $c9


    add c                                         ; $5029: $81
    pop bc                                        ; $502a: $c1
    pop bc                                        ; $502b: $c1
    ld c, e                                       ; $502c: $4b
    dec c                                         ; $502d: $0d
    dec c                                         ; $502e: $0d
    dec bc                                        ; $502f: $0b
    add c                                         ; $5030: $81
    dec hl                                        ; $5031: $2b
    ld a, e                                       ; $5032: $7b
    ldh [$bf], a                                  ; $5033: $e0 $bf
    ldh [$3e], a                                  ; $5035: $e0 $3e
    db $e3                                        ; $5037: $e3
    dec a                                         ; $5038: $3d
    push af                                       ; $5039: $f5
    sbc l                                         ; $503a: $9d
    jp nz, $e092                                  ; $503b: $c2 $92 $e0

    dec bc                                        ; $503e: $0b
    rst $10                                       ; $503f: $d7
    ld c, e                                       ; $5040: $4b
    ld c, l                                       ; $5041: $4d
    dec l                                         ; $5042: $2d
    adc b                                         ; $5043: $88
    pop hl                                        ; $5044: $e1
    dec bc                                        ; $5045: $0b
    rst $38                                       ; $5046: $ff
    pop hl                                        ; $5047: $e1
    ld c, e                                       ; $5048: $4b
    dec bc                                        ; $5049: $0b
    pop bc                                        ; $504a: $c1
    dec hl                                        ; $504b: $2b
    ld hl, sp-$1e                                 ; $504c: $f8 $e2
    ld a, [$c0e0]                                 ; $504e: $fa $e0 $c0
    ld hl, sp+$5a                                 ; $5051: $f8 $5a
    and [hl]                                      ; $5053: $a6
    sub d                                         ; $5054: $92
    pop hl                                        ; $5055: $e1
    ld c, e                                       ; $5056: $4b
    ld c, e                                       ; $5057: $4b
    call $bb6b                                    ; $5058: $cd $6b $bb
    and b                                         ; $505b: $a0
    ld l, l                                       ; $505c: $6d
    ld c, e                                       ; $505d: $4b
    ld c, e                                       ; $505e: $4b
    ldh [$80], a                                  ; $505f: $e0 $80
    ld h, b                                       ; $5061: $60
    ld c, e                                       ; $5062: $4b
    ld l, e                                       ; $5063: $6b
    nop                                           ; $5064: $00
    ret nz                                        ; $5065: $c0

    db $e3                                        ; $5066: $e3
    db $fd                                        ; $5067: $fd
    ret nz                                        ; $5068: $c0

    cp h                                          ; $5069: $bc
    and h                                         ; $506a: $a4
    nop                                           ; $506b: $00
    or c                                          ; $506c: $b1
    jp nz, $c4c4                                  ; $506d: $c2 $c4 $c4

    ldh [$fe], a                                  ; $5070: $e0 $fe
    db $e3                                        ; $5072: $e3
    add h                                         ; $5073: $84
    pop hl                                        ; $5074: $e1
    ld e, $48                                     ; $5075: $1e $48
    ldh [$0b], a                                  ; $5077: $e0 $0b
    ld c, e                                       ; $5079: $4b
    dec c                                         ; $507a: $0d
    ld c, e                                       ; $507b: $4b
    add b                                         ; $507c: $80
    ldh [$f7], a                                  ; $507d: $e0 $f7
    ldh [$80], a                                  ; $507f: $e0 $80
    ld [c], a                                     ; $5081: $e2
    ld [$a378], sp                                ; $5082: $08 $78 $a3
    ld e, e                                       ; $5085: $5b
    sub l                                         ; $5086: $95
    ret nz                                        ; $5087: $c0

    db $ec                                        ; $5088: $ec
    ld c, e                                       ; $5089: $4b
    pop bc                                        ; $508a: $c1
    ldh [$fb], a                                  ; $508b: $e0 $fb
    pop hl                                        ; $508d: $e1
    add b                                         ; $508e: $80
    db $eb                                        ; $508f: $eb
    ld b, e                                       ; $5090: $43
    ld hl, sp-$7e                                 ; $5091: $f8 $82
    sub $a1                                       ; $5093: $d6 $a1
    ld c, e                                       ; $5095: $4b
    sub c                                         ; $5096: $91
    ldh [$80], a                                  ; $5097: $e0 $80
    db $e3                                        ; $5099: $e3
    ld b, h                                       ; $509a: $44
    ld [c], a                                     ; $509b: $e2
    ld [$40c0], sp                                ; $509c: $08 $c0 $40
    and $4b                                       ; $509f: $e6 $4b
    ldh [$c0], a                                  ; $50a1: $e0 $c0
    pop bc                                        ; $50a3: $c1
    db $db                                        ; $50a4: $db
    jp Jump_054_4cab                              ; $50a5: $c3 $ab $4c


    ld a, [hl+]                                   ; $50a8: $2a
    add h                                         ; $50a9: $84
    call Call_054_4bc1                            ; $50aa: $cd $c1 $4b
    dec hl                                        ; $50ad: $2b
    ld a, [bc]                                    ; $50ae: $0a
    rst $18                                       ; $50af: $df
    ld l, d                                       ; $50b0: $6a
    ld c, e                                       ; $50b1: $4b
    ld a, [bc]                                    ; $50b2: $0a
    ld l, d                                       ; $50b3: $6a
    ld a, [bc]                                    ; $50b4: $0a
    ret nz                                        ; $50b5: $c0

    db $e3                                        ; $50b6: $e3
    dec c                                         ; $50b7: $0d
    dec c                                         ; $50b8: $0d
    inc bc                                        ; $50b9: $03
    dec l                                         ; $50ba: $2d
    dec l                                         ; $50bb: $2d
    ret nz                                        ; $50bc: $c0

    pop bc                                        ; $50bd: $c1
    ld b, b                                       ; $50be: $40
    ld [c], a                                     ; $50bf: $e2
    ret nz                                        ; $50c0: $c0

    ld [c], a                                     ; $50c1: $e2
    cp b                                          ; $50c2: $b8
    add h                                         ; $50c3: $84
    add [hl]                                      ; $50c4: $86
    rst $08                                       ; $50c5: $cf
    sub $a3                                       ; $50c6: $d6 $a3
    rst $38                                       ; $50c8: $ff
    dec c                                         ; $50c9: $0d
    ld c, e                                       ; $50ca: $4b
    ld a, [bc]                                    ; $50cb: $0a
    ld a, [bc]                                    ; $50cc: $0a
    dec bc                                        ; $50cd: $0b
    dec hl                                        ; $50ce: $2b
    ld a, [bc]                                    ; $50cf: $0a
    ld a, [bc]                                    ; $50d0: $0a
    inc bc                                        ; $50d1: $03
    ld a, [bc]                                    ; $50d2: $0a
    ld c, d                                       ; $50d3: $4a
    rst $30                                       ; $50d4: $f7
    call nz, $c044                                ; $50d5: $c4 $44 $c0
    add b                                         ; $50d8: $80
    and $6a                                       ; $50d9: $e6 $6a
    pop bc                                        ; $50db: $c1
    ret nz                                        ; $50dc: $c0

    ld a, [c]                                     ; $50dd: $f2
    inc b                                         ; $50de: $04
    add $7a                                       ; $50df: $c6 $7a
    add h                                         ; $50e1: $84
    ret nz                                        ; $50e2: $c0

    ld a, [hl+]                                   ; $50e3: $2a
    add l                                         ; $50e4: $85
    ldh [$2b], a                                  ; $50e5: $e0 $2b
    dec hl                                        ; $50e7: $2b

jr_054_50e8:
    ld c, d                                       ; $50e8: $4a
    ld a, [bc]                                    ; $50e9: $0a
    ret nz                                        ; $50ea: $c0

    add sp, -$7c                                  ; $50eb: $e8 $84
    xor h                                         ; $50ed: $ac
    jp nz, $e0fa                                  ; $50ee: $c2 $fa $e0

    dec bc                                        ; $50f1: $0b
    cp $a2                                        ; $50f2: $fe $a2
    xor h                                         ; $50f4: $ac
    ld h, a                                       ; $50f5: $67
    add b                                         ; $50f6: $80
    jp z, Jump_054_4299                           ; $50f7: $ca $99 $42

    dec l                                         ; $50fa: $2d
    ld h, b                                       ; $50fb: $60
    ld b, l                                       ; $50fc: $45
    ret nz                                        ; $50fd: $c0

    add $e1                                       ; $50fe: $c6 $e1
    ei                                            ; $5100: $fb
    ldh [$8e], a                                  ; $5101: $e0 $8e
    ld b, c                                       ; $5103: $41
    or $c2                                        ; $5104: $f6 $c2
    ld c, e                                       ; $5106: $4b
    dec hl                                        ; $5107: $2b
    ld b, c                                       ; $5108: $41
    and b                                         ; $5109: $a0
    ld b, h                                       ; $510a: $44
    pop bc                                        ; $510b: $c1
    ldh [$75], a                                  ; $510c: $e0 $75
    ret nz                                        ; $510e: $c0

    dec c                                         ; $510f: $0d
    cp [hl]                                       ; $5110: $be
    and d                                         ; $5111: $a2
    rra                                           ; $5112: $1f
    adc b                                         ; $5113: $88
    add b                                         ; $5114: $80
    adc $2d                                       ; $5115: $ce $2d
    nop                                           ; $5117: $00
    ldh [rTIMA], a                                ; $5118: $e0 $05
    ld a, [hl+]                                   ; $511a: $2a
    ccf                                           ; $511b: $3f
    ldh [$2a], a                                  ; $511c: $e0 $2a
    ld b, h                                       ; $511e: $44
    pop bc                                        ; $511f: $c1
    inc sp                                        ; $5120: $33
    push bc                                       ; $5121: $c5
    xor a                                         ; $5122: $af
    ret nz                                        ; $5123: $c0

    cp b                                          ; $5124: $b8
    and b                                         ; $5125: $a0
    inc [hl]                                      ; $5126: $34
    pop hl                                        ; $5127: $e1
    jr nz, jr_054_50e8                            ; $5128: $20 $be

    jp nz, $eec0                                  ; $512a: $c2 $c0 $ee

    db $db                                        ; $512d: $db
    ld b, h                                       ; $512e: $44
    nop                                           ; $512f: $00
    call nz, $80d3                                ; $5130: $c4 $d3 $80
    ld l, e                                       ; $5133: $6b
    add h                                         ; $5134: $84
    pop hl                                        ; $5135: $e1
    dec b                                         ; $5136: $05
    pop bc                                        ; $5137: $c1
    nop                                           ; $5138: $00
    call nz, Call_054_71e1                        ; $5139: $c4 $e1 $71
    jp $e2ba                                      ; $513c: $c3 $ba $e2


    push af                                       ; $513f: $f5
    add c                                         ; $5140: $81
    halt                                          ; $5141: $76
    ld h, d                                       ; $5142: $62
    dec hl                                        ; $5143: $2b
    inc l                                         ; $5144: $2c
    and $63                                       ; $5145: $e6 $63
    ret nz                                        ; $5147: $c0

    and e                                         ; $5148: $a3
    inc b                                         ; $5149: $04
    adc l                                         ; $514a: $8d
    and d                                         ; $514b: $a2
    ret nz                                        ; $514c: $c0

    db $e4                                        ; $514d: $e4
    dec hl                                        ; $514e: $2b
    rst $38                                       ; $514f: $ff
    pop hl                                        ; $5150: $e1
    ld a, [c]                                     ; $5151: $f2
    ret nz                                        ; $5152: $c0

    ld b, h                                       ; $5153: $44
    ret nz                                        ; $5154: $c0

    or h                                          ; $5155: $b4
    jp nz, Jump_054_6177                          ; $5156: $c2 $77 $61

    ld b, b                                       ; $5159: $40
    nop                                           ; $515a: $00
    or c                                          ; $515b: $b1
    ld d, l                                       ; $515c: $55
    jp $2199                                      ; $515d: $c3 $99 $21


    db $d3                                        ; $5160: $d3
    add c                                         ; $5161: $81
    ld [$ccc2], sp                                ; $5162: $08 $c2 $cc
    add b                                         ; $5165: $80
    dec l                                         ; $5166: $2d
    ret nz                                        ; $5167: $c0

    pop hl                                        ; $5168: $e1
    ld [$a107], sp                                ; $5169: $08 $07 $a1
    ret nz                                        ; $516c: $c0

    ld [c], a                                     ; $516d: $e2
    or [hl]                                       ; $516e: $b6
    nop                                           ; $516f: $00
    ld l, l                                       ; $5170: $6d
    nop                                           ; $5171: $00
    cp d                                          ; $5172: $ba
    nop                                           ; $5173: $00
    jp nz, $e2d8                                  ; $5174: $c2 $d8 $e2

    rlca                                          ; $5177: $07
    pop hl                                        ; $5178: $e1
    nop                                           ; $5179: $00
    dec b                                         ; $517a: $05
    jp nz, $e1c1                                  ; $517b: $c2 $c1 $e1

    cp a                                          ; $517e: $bf
    ld [c], a                                     ; $517f: $e2
    add h                                         ; $5180: $84
    ld [c], a                                     ; $5181: $e2
    ld h, b                                       ; $5182: $60
    add e                                         ; $5183: $83
    nop                                           ; $5184: $00
    or h                                          ; $5185: $b4
    dec h                                         ; $5186: $25
    add d                                         ; $5187: $82
    ld b, l                                       ; $5188: $45
    db $e3                                        ; $5189: $e3
    ld [$e087], sp                                ; $518a: $08 $87 $e0
    ld a, [$8684]                                 ; $518d: $fa $84 $86
    add c                                         ; $5190: $81
    dec l                                         ; $5191: $2d
    add l                                         ; $5192: $85
    add c                                         ; $5193: $81
    add [hl]                                      ; $5194: $86
    call nz, $9943                                ; $5195: $c4 $43 $99
    ret nz                                        ; $5198: $c0

    rst $20                                       ; $5199: $e7
    nop                                           ; $519a: $00
    adc h                                         ; $519b: $8c
    and c                                         ; $519c: $a1
    ld c, [hl]                                    ; $519d: $4e
    add d                                         ; $519e: $82
    ld b, a                                       ; $519f: $47
    add c                                         ; $51a0: $81
    dec a                                         ; $51a1: $3d
    ld [c], a                                     ; $51a2: $e2
    ret nz                                        ; $51a3: $c0

    and $c0                                       ; $51a4: $e6 $c0
    sub e                                         ; $51a6: $93
    sbc [hl]                                      ; $51a7: $9e
    inc bc                                        ; $51a8: $03
    add $61                                       ; $51a9: $c6 $61
    nop                                           ; $51ab: $00
    nop                                           ; $51ac: $00
    ret nz                                        ; $51ad: $c0

    ld [de], a                                    ; $51ae: $12
    add e                                         ; $51af: $83
    add hl, bc                                    ; $51b0: $09
    ld [c], a                                     ; $51b1: $e2
    add d                                         ; $51b2: $82
    pop hl                                        ; $51b3: $e1
    cp l                                          ; $51b4: $bd
    pop bc                                        ; $51b5: $c1
    cp a                                          ; $51b6: $bf
    and b                                         ; $51b7: $a0
    inc b                                         ; $51b8: $04
    ld [c], a                                     ; $51b9: $e2
    ld h, $45                                     ; $51ba: $26 $45
    ret nz                                        ; $51bc: $c0

    nop                                           ; $51bd: $00
    xor [hl]                                      ; $51be: $ae
    add b                                         ; $51bf: $80
    call nz, $6187                                ; $51c0: $c4 $87 $61
    ret nz                                        ; $51c3: $c0

    add sp, $0b                                   ; $51c4: $e8 $0b
    ld h, b                                       ; $51c6: $60
    add b                                         ; $51c7: $80
    ld [c], a                                     ; $51c8: $e2
    ld l, e                                       ; $51c9: $6b
    ld c, e                                       ; $51ca: $4b
    ld bc, $862b                                  ; $51cb: $01 $2b $86
    pop bc                                        ; $51ce: $c1
    rst $30                                       ; $51cf: $f7
    inc b                                         ; $51d0: $04
    jp nz, Jump_000_0014                          ; $51d1: $c2 $14 $00

    add [hl]                                      ; $51d4: $86
    ld [de], a                                    ; $51d5: $12
    add e                                         ; $51d6: $83
    ld a, $e1                                     ; $51d7: $3e $e1
    adc b                                         ; $51d9: $88
    ldh [rSC], a                                  ; $51da: $e0 $02
    dec [hl]                                      ; $51dc: $35
    and c                                         ; $51dd: $a1
    ld l, e                                       ; $51de: $6b
    adc b                                         ; $51df: $88
    and l                                         ; $51e0: $a5

jr_054_51e1:
    jp nz, $c039                                  ; $51e1: $c2 $39 $c0

    ld [$e53e], a                                 ; $51e4: $ea $3e $e5
    cp a                                          ; $51e7: $bf
    pop hl                                        ; $51e8: $e1
    ld b, e                                       ; $51e9: $43
    ld [c], a                                     ; $51ea: $e2
    nop                                           ; $51eb: $00
    adc b                                         ; $51ec: $88
    and e                                         ; $51ed: $a3
    ld e, $83                                     ; $51ee: $1e $83
    nop                                           ; $51f0: $00
    ld d, [hl]                                    ; $51f1: $56
    ld a, [hl]                                    ; $51f2: $7e
    jp $e900                                      ; $51f3: $c3 $00 $e9


    add h                                         ; $51f6: $84
    db $e3                                        ; $51f7: $e3
    or c                                          ; $51f8: $b1
    and c                                         ; $51f9: $a1
    ld [bc], a                                    ; $51fa: $02
    push hl                                       ; $51fb: $e5
    ld [hl], b                                    ; $51fc: $70
    ld b, $b1                                     ; $51fd: $06 $b1
    adc a                                         ; $51ff: $8f
    daa                                           ; $5200: $27
    add $01                                       ; $5201: $c6 $01
    sbc b                                         ; $5203: $98
    add b                                         ; $5204: $80
    ld l, e                                       ; $5205: $6b
    dec bc                                        ; $5206: $0b
    ld l, e                                       ; $5207: $6b
    db $fd                                        ; $5208: $fd
    pop hl                                        ; $5209: $e1
    ld bc, $c54b                                  ; $520a: $01 $4b $c5
    jp nz, $62a4                                  ; $520d: $c2 $a4 $62

    ld [bc], a                                    ; $5210: $02
    pop hl                                        ; $5211: $e1
    ld b, d                                       ; $5212: $42
    ld [bc], a                                    ; $5213: $02
    ret nz                                        ; $5214: $c0

    di                                            ; $5215: $f3
    nop                                           ; $5216: $00
    ld b, a                                       ; $5217: $47
    dec de                                        ; $5218: $1b
    ld b, b                                       ; $5219: $40
    inc b                                         ; $521a: $04
    sub d                                         ; $521b: $92
    add b                                         ; $521c: $80
    cp $e2                                        ; $521d: $fe $e2
    ld c, e                                       ; $521f: $4b
    res 4, c                                      ; $5220: $cb $a1
    ld l, b                                       ; $5222: $68
    and e                                         ; $5223: $a3
    add h                                         ; $5224: $84
    jp nz, $221f                                  ; $5225: $c2 $1f $22

    jp TimerOverflowInterrupt                     ; $5228: $c3 $50 $00


    db $ec                                        ; $522b: $ec
    add hl, bc                                    ; $522c: $09
    ld a, [hl]                                    ; $522d: $7e
    jp $e6ff                                      ; $522e: $c3 $ff $e6


    adc h                                         ; $5231: $8c
    and c                                         ; $5232: $a1
    ld [hl-], a                                   ; $5233: $32
    inc bc                                        ; $5234: $03
    inc hl                                        ; $5235: $23
    ld h, d                                       ; $5236: $62
    ld b, e                                       ; $5237: $43
    rst $30                                       ; $5238: $f7
    cp e                                          ; $5239: $bb
    ld c, b                                       ; $523a: $48
    ld [bc], a                                    ; $523b: $02
    cp d                                          ; $523c: $ba
    ld bc, $d02d                                  ; $523d: $01 $2d $d0
    add e                                         ; $5240: $83
    ld c, l                                       ; $5241: $4d
    and d                                         ; $5242: $a2
    ld [$c0e7], sp                                ; $5243: $08 $e7 $c0
    ld a, [$0480]                                 ; $5246: $fa $80 $04
    cp e                                          ; $5249: $bb
    ld [hl+], a                                   ; $524a: $22
    nop                                           ; $524b: $00
    ld d, [hl]                                    ; $524c: $56
    jr nz, jr_054_51e1                            ; $524d: $20 $92

    add h                                         ; $524f: $84
    xor $05                                       ; $5250: $ee $05
    ld b, a                                       ; $5252: $47
    dec b                                         ; $5253: $05
    ld b, e                                       ; $5254: $43
    di                                            ; $5255: $f3
    add b                                         ; $5256: $80
    ld [$04ca], sp                                ; $5257: $08 $ca $04
    ld a, [$0022]                                 ; $525a: $fa $22 $00
    ld de, $ae20                                  ; $525d: $11 $20 $ae
    ld b, $49                                     ; $5260: $06 $49
    ei                                            ; $5262: $fb
    add b                                         ; $5263: $80
    rlca                                          ; $5264: $07
    ld a, e                                       ; $5265: $7b
    pop bc                                        ; $5266: $c1
    ld h, [hl]                                    ; $5267: $66
    ld b, c                                       ; $5268: $41
    ret nz                                        ; $5269: $c0

    ld [c], a                                     ; $526a: $e2
    ld l, h                                       ; $526b: $6c
    and l                                         ; $526c: $a5

jr_054_526d:
    nop                                           ; $526d: $00
    call z, $8036                                 ; $526e: $cc $36 $80
    ld c, $b8                                     ; $5271: $0e $b8
    add [hl]                                      ; $5273: $86
    ld a, d                                       ; $5274: $7a
    ld hl, $00fc                                  ; $5275: $21 $fc $00
    db $ed                                        ; $5278: $ed
    ld h, c                                       ; $5279: $61
    inc c                                         ; $527a: $0c
    or l                                          ; $527b: $b5
    add b                                         ; $527c: $80
    pop de                                        ; $527d: $d1
    nop                                           ; $527e: $00
    and e                                         ; $527f: $a3
    ld b, [hl]                                    ; $5280: $46
    ld a, [hl-]                                   ; $5281: $3a
    ld [hl+], a                                   ; $5282: $22
    sub b                                         ; $5283: $90
    dec b                                         ; $5284: $05
    rst $38                                       ; $5285: $ff
    rst $38                                       ; $5286: $ff
    or a                                          ; $5287: $b7
    xor [hl]                                      ; $5288: $ae
    ld a, [hl]                                    ; $5289: $7e
    jp $6490                                      ; $528a: $c3 $90 $64


    rst $38                                       ; $528d: $ff
    rst $38                                       ; $528e: $ff
    inc d                                         ; $528f: $14
    ld [hl], e                                    ; $5290: $73
    jr z, jr_054_526d                             ; $5291: $28 $da

    add d                                         ; $5293: $82
    ld l, l                                       ; $5294: $6d
    ld a, [$6da3]                                 ; $5295: $fa $a3 $6d
    xor l                                         ; $5298: $ad
    and e                                         ; $5299: $a3
    inc c                                         ; $529a: $0c
    or d                                          ; $529b: $b2
    nop                                           ; $529c: $00
    xor l                                         ; $529d: $ad
    inc b                                         ; $529e: $04
    ld b, e                                       ; $529f: $43
    push hl                                       ; $52a0: $e5
    ld [hl], c                                    ; $52a1: $71
    ld [bc], a                                    ; $52a2: $02
    dec l                                         ; $52a3: $2d
    ld hl, sp+$01                                 ; $52a4: $f8 $01
    add b                                         ; $52a6: $80
    pop hl                                        ; $52a7: $e1
    inc hl                                        ; $52a8: $23
    dec h                                         ; $52a9: $25
    ld a, a                                       ; $52aa: $7f
    rst $38                                       ; $52ab: $ff
    ld a, c                                       ; $52ac: $79
    adc d                                         ; $52ad: $8a
    inc bc                                        ; $52ae: $03
    dec c                                         ; $52af: $0d
    ld l, l                                       ; $52b0: $6d
    ld b, b                                       ; $52b1: $40
    db $e3                                        ; $52b2: $e3
    db $e3                                        ; $52b3: $e3
    ld b, $43                                     ; $52b4: $06 $43
    rst $38                                       ; $52b6: $ff
    ld [hl], $a7                                  ; $52b7: $36 $a7
    ld a, [hl-]                                   ; $52b9: $3a
    ld [hl+], a                                   ; $52ba: $22
    ld d, c                                       ; $52bb: $51
    ld b, e                                       ; $52bc: $43
    nop                                           ; $52bd: $00
    ld h, [hl]                                    ; $52be: $66
    dec h                                         ; $52bf: $25
    add b                                         ; $52c0: $80
    rst $18                                       ; $52c1: $df
    dec a                                         ; $52c2: $3d
    db $ec                                        ; $52c3: $ec
    ld [de], a                                    ; $52c4: $12
    ld b, l                                       ; $52c5: $45
    inc c                                         ; $52c6: $0c
    ld h, d                                       ; $52c7: $62
    ld c, c                                       ; $52c8: $49
    rst $38                                       ; $52c9: $ff
    or [hl]                                       ; $52ca: $b6
    ld l, [hl]                                    ; $52cb: $6e
    add d                                         ; $52cc: $82
    jp $c000                                      ; $52cd: $c3 $00 $c0


    rst $38                                       ; $52d0: $ff
    dec a                                         ; $52d1: $3d
    db $f4                                        ; $52d2: $f4
    ret nz                                        ; $52d3: $c0

    db $e3                                        ; $52d4: $e3
    inc b                                         ; $52d5: $04
    rst $20                                       ; $52d6: $e7
    add b                                         ; $52d7: $80
    call c, $0000                                 ; $52d8: $dc $00 $00
    nop                                           ; $52db: $00
    ccf                                           ; $52dc: $3f
    and b                                         ; $52dd: $a0
    and b                                         ; $52de: $a0
    and b                                         ; $52df: $a0
    call c, $dedd                                 ; $52e0: $dc $dd $de
    ld a, [$f4ff]                                 ; $52e3: $fa $ff $f4
    push af                                       ; $52e6: $f5
    ccf                                           ; $52e7: $3f
    db $e4                                        ; $52e8: $e4
    rst $18                                       ; $52e9: $df
    ldh [$e1], a                                  ; $52ea: $e0 $e1
    ld [c], a                                     ; $52ec: $e2
    db $e3                                        ; $52ed: $e3
    ld a, [$f4ff]                                 ; $52ee: $fa $ff $f4
    push af                                       ; $52f1: $f5
    ccf                                           ; $52f2: $3f
    ld [$e6e5], a                                 ; $52f3: $ea $e5 $e6
    rst $20                                       ; $52f6: $e7
    add sp, -$17                                  ; $52f7: $e8 $e9
    ld a, [$f4ff]                                 ; $52f9: $fa $ff $f4
    push af                                       ; $52fc: $f5
    nop                                           ; $52fd: $00
    ld e, e                                       ; $52fe: $5b
    rst $38                                       ; $52ff: $ff
    ld a, [$5bfb]                                 ; $5300: $fa $fb $5b
    rst $38                                       ; $5303: $ff
    ld a, [$5bfb]                                 ; $5304: $fa $fb $5b
    rst $38                                       ; $5307: $ff
    ld a, [$5bfb]                                 ; $5308: $fa $fb $5b
    rst $38                                       ; $530b: $ff
    add b                                         ; $530c: $80
    rst $18                                       ; $530d: $df
    nop                                           ; $530e: $00
    ld d, l                                       ; $530f: $55
    rst $38                                       ; $5310: $ff
    add b                                         ; $5311: $80
    rst $18                                       ; $5312: $df
    ld a, [$80ff]                                 ; $5313: $fa $ff $80
    rst $18                                       ; $5316: $df
    ld a, [$80ff]                                 ; $5317: $fa $ff $80
    rst $18                                       ; $531a: $df
    ld a, [$80ff]                                 ; $531b: $fa $ff $80
    rst $18                                       ; $531e: $df
    ret nz                                        ; $531f: $c0

    ld a, [$80ff]                                 ; $5320: $fa $ff $80
    rst $18                                       ; $5323: $df
    ld b, e                                       ; $5324: $43
    and $fd                                       ; $5325: $e6 $fd
    db $e3                                        ; $5327: $e3
    add b                                         ; $5328: $80
    rst $18                                       ; $5329: $df
    ld d, l                                       ; $532a: $55
    di                                            ; $532b: $f3
    and b                                         ; $532c: $a0
    sub $31                                       ; $532d: $d6 $31
    rst $10                                       ; $532f: $d7
    ld sp, hl                                     ; $5330: $f9
    ret nz                                        ; $5331: $c0

    add b                                         ; $5332: $80
    rst $18                                       ; $5333: $df
    ld h, c                                       ; $5334: $61
    or $d8                                        ; $5335: $f6 $d8
    reti                                          ; $5337: $d9


    cp c                                          ; $5338: $b9
    ret nz                                        ; $5339: $c0

    add b                                         ; $533a: $80
    rst $18                                       ; $533b: $df
    ld e, $43                                     ; $533c: $1e $43
    or $da                                        ; $533e: $f6 $da
    db $db                                        ; $5340: $db
    ret nc                                        ; $5341: $d0

    pop de                                        ; $5342: $d1
    ld a, [hl-]                                   ; $5343: $3a
    and $80                                       ; $5344: $e6 $80
    rst $18                                       ; $5346: $df
    ld b, e                                       ; $5347: $43
    db $eb                                        ; $5348: $eb
    add [hl]                                      ; $5349: $86
    ld bc, $d2e2                                  ; $534a: $01 $e2 $d2
    db $d3                                        ; $534d: $d3
    ld a, [$37c2]                                 ; $534e: $fa $c2 $37
    db $f4                                        ; $5351: $f4
    and h                                         ; $5352: $a4
    db $db                                        ; $5353: $db
    add h                                         ; $5354: $84
    pop hl                                        ; $5355: $e1
    call nc, $d5c1                                ; $5356: $d4 $c1 $d5
    ld hl, sp-$1e                                 ; $5359: $f8 $e2
    scf                                           ; $535b: $37
    db $f4                                        ; $535c: $f4
    sub d                                         ; $535d: $92
    ret c                                         ; $535e: $d8

    add h                                         ; $535f: $84
    rst $20                                       ; $5360: $e7
    ld a, h                                       ; $5361: $7c
    pop hl                                        ; $5362: $e1
    jp c, $80db                                   ; $5363: $da $db $80

    add b                                         ; $5366: $80
    rst $18                                       ; $5367: $df
    ld e, d                                       ; $5368: $5a
    db $e3                                        ; $5369: $e3
    add [hl]                                      ; $536a: $86
    ret z                                         ; $536b: $c8

    add h                                         ; $536c: $84
    pop hl                                        ; $536d: $e1
    inc a                                         ; $536e: $3c
    pop bc                                        ; $536f: $c1
    ld hl, sp-$1e                                 ; $5370: $f8 $e2
    add b                                         ; $5372: $80
    rst $18                                       ; $5373: $df
    and b                                         ; $5374: $a0
    db $fc                                        ; $5375: $fc
    sub c                                         ; $5376: $91
    jp nz, $c986                                  ; $5377: $c2 $86 $c9

    and b                                         ; $537a: $a0
    and b                                         ; $537b: $a0
    sbc a                                         ; $537c: $9f
    db $eb                                        ; $537d: $eb
    db $ec                                        ; $537e: $ec
    sbc a                                         ; $537f: $9f
    sbc b                                         ; $5380: $98
    ld sp, hl                                     ; $5381: $f9
    and e                                         ; $5382: $a3
    add b                                         ; $5383: $80
    ret c                                         ; $5384: $d8

    ret c                                         ; $5385: $d8

    and h                                         ; $5386: $a4
    ret nc                                        ; $5387: $d0

    pop de                                        ; $5388: $d1
    sub c                                         ; $5389: $91
    add $f5                                       ; $538a: $c6 $f5
    db $e4                                        ; $538c: $e4
    sbc a                                         ; $538d: $9f
    ld a, a                                       ; $538e: $7f
    and d                                         ; $538f: $a2
    sbc h                                         ; $5390: $9c
    db $ed                                        ; $5391: $ed
    xor $9c                                       ; $5392: $ee $9c
    and d                                         ; $5394: $a2
    sbc a                                         ; $5395: $9f
    or $c2                                        ; $5396: $f6 $c2
    ldh [$80], a                                  ; $5398: $e0 $80
    push de                                       ; $539a: $d5
    and d                                         ; $539b: $a2
    push bc                                       ; $539c: $c5
    sub l                                         ; $539d: $95
    jp nz, $c491                                  ; $539e: $c2 $91 $c4

    push af                                       ; $53a1: $f5
    db $e4                                        ; $53a2: $e4
    sbc [hl]                                      ; $53a3: $9e
    sub b                                         ; $53a4: $90
    sub c                                         ; $53a5: $91
    rra                                           ; $53a6: $1f
    ld b, h                                       ; $53a7: $44
    ld b, h                                       ; $53a8: $44
    sub c                                         ; $53a9: $91
    sub b                                         ; $53aa: $90
    sbc [hl]                                      ; $53ab: $9e
    ld a, d                                       ; $53ac: $7a

jr_054_53ad:
    pop bc                                        ; $53ad: $c1
    or l                                          ; $53ae: $b5
    and b                                         ; $53af: $a0
    add b                                         ; $53b0: $80
    db $d3                                        ; $53b1: $d3
    add b                                         ; $53b2: $80
    sub a                                         ; $53b3: $97
    add b                                         ; $53b4: $80
    reti                                          ; $53b5: $d9


    and b                                         ; $53b6: $a0
    jr @-$3e                                      ; $53b7: $18 $c0

    sub l                                         ; $53b9: $95
    pop bc                                        ; $53ba: $c1
    sub c                                         ; $53bb: $91
    ret nz                                        ; $53bc: $c0

    adc d                                         ; $53bd: $8a
    push bc                                       ; $53be: $c5
    add [hl]                                      ; $53bf: $86
    ret nz                                        ; $53c0: $c0

    sbc [hl]                                      ; $53c1: $9e
    ld a, a                                       ; $53c2: $7f
    sub c                                         ; $53c3: $91
    ld b, [hl]                                    ; $53c4: $46
    ld b, l                                       ; $53c5: $45
    ld b, l                                       ; $53c6: $45
    ld b, [hl]                                    ; $53c7: $46
    sub c                                         ; $53c8: $91
    sbc [hl]                                      ; $53c9: $9e
    ld a, d                                       ; $53ca: $7a
    pop bc                                        ; $53cb: $c1
    ret nz                                        ; $53cc: $c0

    or l                                          ; $53cd: $b5
    and b                                         ; $53ce: $a0
    nop                                           ; $53cf: $00
    or [hl]                                       ; $53d0: $b6
    and d                                         ; $53d1: $a2
    ret nz                                        ; $53d2: $c0

    sub h                                         ; $53d3: $94
    push bc                                       ; $53d4: $c5
    adc d                                         ; $53d5: $8a
    rst $00                                       ; $53d6: $c7
    inc bc                                        ; $53d7: $03
    ldh [$9c], a                                  ; $53d8: $e0 $9c
    xor [hl]                                      ; $53da: $ae
    ccf                                           ; $53db: $3f
    xor [hl]                                      ; $53dc: $ae
    ld b, l                                       ; $53dd: $45
    ld b, l                                       ; $53de: $45
    xor [hl]                                      ; $53df: $ae
    xor [hl]                                      ; $53e0: $ae
    sbc h                                         ; $53e1: $9c
    db $fd                                        ; $53e2: $fd
    pop bc                                        ; $53e3: $c1
    ld a, [hl]                                    ; $53e4: $7e
    pop bc                                        ; $53e5: $c1
    ld e, b                                       ; $53e6: $58
    db $f4                                        ; $53e7: $f4
    adc [hl]                                      ; $53e8: $8e
    push de                                       ; $53e9: $d5
    and a                                         ; $53ea: $a7
    jr jr_054_53ad                                ; $53eb: $18 $c0

    sbc a                                         ; $53ed: $9f
    sbc l                                         ; $53ee: $9d
    rst $38                                       ; $53ef: $ff
    ldh [$9f], a                                  ; $53f0: $e0 $9f
    or $e4                                        ; $53f2: $f6 $e4
    db $fd                                        ; $53f4: $fd
    and d                                         ; $53f5: $a2
    di                                            ; $53f6: $f3
    ldh [$9c], a                                  ; $53f7: $e0 $9c
    ld b, [hl]                                    ; $53f9: $46
    xor a                                         ; $53fa: $af
    xor a                                         ; $53fb: $af
    ld [hl], $36                                  ; $53fc: $36 $36
    rlca                                          ; $53fe: $07
    xor a                                         ; $53ff: $af
    xor a                                         ; $5400: $af
    ld b, [hl]                                    ; $5401: $46
    cp a                                          ; $5402: $bf
    ldh [$78], a                                  ; $5403: $e0 $78
    and b                                         ; $5405: $a0
    ld h, d                                       ; $5406: $62
    rst $00                                       ; $5407: $c7
    nop                                           ; $5408: $00
    xor l                                         ; $5409: $ad
    sub d                                         ; $540a: $92
    and $e9                                       ; $540b: $e6 $e9
    ld b, [hl]                                    ; $540d: $46
    push de                                       ; $540e: $d5
    pop hl                                        ; $540f: $e1
    adc b                                         ; $5410: $88
    ldh [rDMA], a                                 ; $5411: $e0 $46
    rst $38                                       ; $5413: $ff
    db $e3                                        ; $5414: $e3
    ld b, l                                       ; $5415: $45
    ld [hl], $3b                                  ; $5416: $36 $3b
    ccf                                           ; $5418: $3f
    dec [hl]                                      ; $5419: $35
    dec [hl]                                      ; $541a: $35
    dec sp                                        ; $541b: $3b
    ld [hl], $45                                  ; $541c: $36 $45
    ld b, [hl]                                    ; $541e: $46
    cp $c2                                        ; $541f: $fe $c2
    ld h, d                                       ; $5421: $62
    rst $00                                       ; $5422: $c7
    or b                                          ; $5423: $b0
    add b                                         ; $5424: $80
    adc $94                                       ; $5425: $ce $94
    pop bc                                        ; $5427: $c1
    sub d                                         ; $5428: $92
    pop hl                                        ; $5429: $e1
    ret z                                         ; $542a: $c8

    ldh [$9c], a                                  ; $542b: $e0 $9c
    and d                                         ; $542d: $a2
    adc b                                         ; $542e: $88
    ldh [rDMA], a                                 ; $542f: $e0 $46
    rst $38                                       ; $5431: $ff
    ld a, c                                       ; $5432: $79
    ld a, d                                       ; $5433: $7a
    ld a, e                                       ; $5434: $7b
    ld a, h                                       ; $5435: $7c
    ld a, l                                       ; $5436: $7d
    ld b, [hl]                                    ; $5437: $46
    ld b, h                                       ; $5438: $44
    inc a                                         ; $5439: $3c
    ccf                                           ; $543a: $3f
    and h                                         ; $543b: $a4
    ld h, h                                       ; $543c: $64
    ld h, h                                       ; $543d: $64
    and l                                         ; $543e: $a5
    inc a                                         ; $543f: $3c
    ld b, h                                       ; $5440: $44
    ret nz                                        ; $5441: $c0

    ldh [$78], a                                  ; $5442: $e0 $78
    and b                                         ; $5444: $a0
    sub b                                         ; $5445: $90
    cp h                                          ; $5446: $bc
    and b                                         ; $5447: $a0
    add b                                         ; $5448: $80
    jp nc, $805b                                  ; $5449: $d2 $5b $80

    ld a, [de]                                    ; $544c: $1a
    and b                                         ; $544d: $a0
    and c                                         ; $544e: $a1
    adc h                                         ; $544f: $8c
    db $e4                                        ; $5450: $e4
    add l                                         ; $5451: $85
    ld [c], a                                     ; $5452: $e2
    ld a, c                                       ; $5453: $79
    db $fd                                        ; $5454: $fd
    ld a, [hl]                                    ; $5455: $7e
    ld a, [hl]                                    ; $5456: $7e
    ldh [$81], a                                  ; $5457: $e0 $81
    ld b, [hl]                                    ; $5459: $46
    ld b, d                                       ; $545a: $42
    dec [hl]                                      ; $545b: $35
    ld l, c                                       ; $545c: $69
    and e                                         ; $545d: $a3
    ccf                                           ; $545e: $3f
    dec [hl]                                      ; $545f: $35
    ld l, d                                       ; $5460: $6a
    dec [hl]                                      ; $5461: $35
    ld b, d                                       ; $5462: $42
    ld b, [hl]                                    ; $5463: $46
    and c                                         ; $5464: $a1
    push af                                       ; $5465: $f5
    ld h, d                                       ; $5466: $62
    add b                                         ; $5467: $80
    call nc, Call_054_5ba8                        ; $5468: $d4 $a8 $5b
    add b                                         ; $546b: $80
    sub h                                         ; $546c: $94
    pop bc                                        ; $546d: $c1
    ret nz                                        ; $546e: $c0

    jp hl                                         ; $546f: $e9


    add b                                         ; $5470: $80
    ccf                                           ; $5471: $3f
    pop hl                                        ; $5472: $e1
    add c                                         ; $5473: $81
    add b                                         ; $5474: $80
    ldh [rBCPD], a                                ; $5475: $e0 $69
    rlca                                          ; $5477: $07
    dec [hl]                                      ; $5478: $35
    dec [hl]                                      ; $5479: $35
    ld l, d                                       ; $547a: $6a
    add b                                         ; $547b: $80
    ld [c], a                                     ; $547c: $e2
    ld a, b                                       ; $547d: $78
    add c                                         ; $547e: $81
    add b                                         ; $547f: $80
    ld [hl], d                                    ; $5480: $72
    and [hl]                                      ; $5481: $a6
    call nz, $e10c                                ; $5482: $c4 $0c $e1
    db $fc                                        ; $5485: $fc
    ld d, h                                       ; $5486: $54
    ret nz                                        ; $5487: $c0

    rlca                                          ; $5488: $07
    ld [c], a                                     ; $5489: $e2
    xor [hl]                                      ; $548a: $ae
    xor [hl]                                      ; $548b: $ae
    add d                                         ; $548c: $82
    add e                                         ; $548d: $83
    ld b, [hl]                                    ; $548e: $46
    ld b, [hl]                                    ; $548f: $46
    jp $8483                                      ; $5490: $c3 $83 $84


    ret nz                                        ; $5493: $c0

    jp hl                                         ; $5494: $e9


    ld h, b                                       ; $5495: $60
    add $80                                       ; $5496: $c6 $80
    ld l, e                                       ; $5498: $6b
    ld [bc], a                                    ; $5499: $02
    add sp, $46                                   ; $549a: $e8 $46
    ld b, l                                       ; $549c: $45
    ld a, a                                       ; $549d: $7f
    ld b, a                                       ; $549e: $47
    ld d, h                                       ; $549f: $54
    ld b, h                                       ; $54a0: $44
    ld c, b                                       ; $54a1: $48
    ld d, e                                       ; $54a2: $53
    ld d, b                                       ; $54a3: $50
    ld b, l                                       ; $54a4: $45
    adc d                                         ; $54a5: $8a
    ret nz                                        ; $54a6: $c0

    ccf                                           ; $54a7: $3f
    add l                                         ; $54a8: $85
    add a                                         ; $54a9: $87
    adc b                                         ; $54aa: $88
    adc b                                         ; $54ab: $88
    add a                                         ; $54ac: $87
    add l                                         ; $54ad: $85
    ld b, b                                       ; $54ae: $40
    rst $20                                       ; $54af: $e7
    cp $a2                                        ; $54b0: $fe $a2
    ldh a, [$bd]                                  ; $54b2: $f0 $bd
    or b                                          ; $54b4: $b0
    add [hl]                                      ; $54b5: $86
    jp $a196                                      ; $54b6: $c3 $96 $a1


    add h                                         ; $54b9: $84
    ret nz                                        ; $54ba: $c0

    ld c, d                                       ; $54bb: $4a
    ld d, [hl]                                    ; $54bc: $56
    dec hl                                        ; $54bd: $2b
    dec hl                                        ; $54be: $2b
    rst $08                                       ; $54bf: $cf
    ld e, c                                       ; $54c0: $59
    ld d, h                                       ; $54c1: $54
    ld e, l                                       ; $54c2: $5d
    ld d, l                                       ; $54c3: $55
    add e                                         ; $54c4: $83
    call nz, $c072                                ; $54c5: $c4 $72 $c0
    ld b, h                                       ; $54c8: $44
    inc a                                         ; $54c9: $3c
    rrca                                          ; $54ca: $0f
    ld l, e                                       ; $54cb: $6b
    ld [hl], c                                    ; $54cc: $71
    ld [hl], c                                    ; $54cd: $71
    ld l, l                                       ; $54ce: $6d
    ret nz                                        ; $54cf: $c0

    ret nz                                        ; $54d0: $c0

    cp $a2                                        ; $54d1: $fe $a2
    cp l                                          ; $54d3: $bd
    or b                                          ; $54d4: $b0
    ld e, $43                                     ; $54d5: $1e $43
    db $fc                                        ; $54d7: $fc
    sub [hl]                                      ; $54d8: $96
    and c                                         ; $54d9: $a1
    ld a, [de]                                    ; $54da: $1a
    ret nz                                        ; $54db: $c0

    ld d, l                                       ; $54dc: $55
    ld e, d                                       ; $54dd: $5a
    jr nc, jr_054_5500                            ; $54de: $30 $20

    cpl                                           ; $54e0: $2f
    ld a, [hl+]                                   ; $54e1: $2a
    ld bc, $c04b                                  ; $54e2: $01 $4b $c0
    push hl                                       ; $54e5: $e5
    ld [$40c0], sp                                ; $54e6: $08 $c0 $40
    add $fe                                       ; $54e9: $c6 $fe
    and e                                         ; $54eb: $a3
    cp l                                          ; $54ec: $bd
    xor a                                         ; $54ed: $af
    sbc b                                         ; $54ee: $98
    ld h, [hl]                                    ; $54ef: $66
    ld bc, $ffe2                                  ; $54f0: $01 $e2 $ff
    ld d, b                                       ; $54f3: $50
    ld a, [hl+]                                   ; $54f4: $2a
    cpl                                           ; $54f5: $2f
    cpl                                           ; $54f6: $2f
    ld a, [hl+]                                   ; $54f7: $2a
    ld d, b                                       ; $54f8: $50
    ld b, l                                       ; $54f9: $45
    ld a, c                                       ; $54fa: $79
    ld a, c                                       ; $54fb: $79
    ld a, d                                       ; $54fc: $7a
    ld b, l                                       ; $54fd: $45
    ret nz                                        ; $54fe: $c0

    rst $38                                       ; $54ff: $ff

jr_054_5500:
    and h                                         ; $5500: $a4
    ld b, e                                       ; $5501: $43
    ld b, c                                       ; $5502: $41
    ld b, c                                       ; $5503: $41
    ld b, e                                       ; $5504: $43
    ld [$c3c0], a                                 ; $5505: $ea $c0 $c3
    xor [hl]                                      ; $5508: $ae
    xor [hl]                                      ; $5509: $ae
    cp $c3                                        ; $550a: $fe $c3
    cp l                                          ; $550c: $bd
    xor l                                         ; $550d: $ad
    inc a                                         ; $550e: $3c
    ld b, d                                       ; $550f: $42
    sbc e                                         ; $5510: $9b
    ld b, b                                       ; $5511: $40
    ret nc                                        ; $5512: $d0

    pop de                                        ; $5513: $d1
    cp $cc                                        ; $5514: $fe $cc
    and b                                         ; $5516: $a0
    ld b, h                                       ; $5517: $44
    ld d, h                                       ; $5518: $54
    ld c, c                                       ; $5519: $49
    ld b, h                                       ; $551a: $44
    ld b, h                                       ; $551b: $44
    ld c, c                                       ; $551c: $49
    ld d, h                                       ; $551d: $54
    ld [de], a                                    ; $551e: $12
    ld b, h                                       ; $551f: $44
    pop bc                                        ; $5520: $c1
    add c                                         ; $5521: $81
    inc sp                                        ; $5522: $33
    ret                                           ; $5523: $c9


    ld [hl], h                                    ; $5524: $74
    ld [c], a                                     ; $5525: $e2
    and c                                         ; $5526: $a1
    halt                                          ; $5527: $76
    ld h, d                                       ; $5528: $62
    cp l                                          ; $5529: $bd
    xor l                                         ; $552a: $ad
    ld e, $42                                     ; $552b: $1e $42
    inc c                                         ; $552d: $0c
    sbc e                                         ; $552e: $9b
    ld b, b                                       ; $552f: $40
    nop                                           ; $5530: $00
    jp Jump_054_4345                              ; $5531: $c3 $45 $43


    ld [de], a                                    ; $5534: $12
    and c                                         ; $5535: $a1
    ld b, h                                       ; $5536: $44
    pop bc                                        ; $5537: $c1
    ret nz                                        ; $5538: $c0

    db $ed                                        ; $5539: $ed
    rst $38                                       ; $553a: $ff
    call nz, $bd60                                ; $553b: $c4 $60 $bd
    xor [hl]                                      ; $553e: $ae
    db $db                                        ; $553f: $db
    ld b, d                                       ; $5540: $42
    ld h, h                                       ; $5541: $64
    ld h, b                                       ; $5542: $60
    nop                                           ; $5543: $00
    jp nz, $e248                                  ; $5544: $c2 $48 $e2

    xor a                                         ; $5547: $af
    xor a                                         ; $5548: $af
    ret nz                                        ; $5549: $c0

    push hl                                       ; $554a: $e5
    add e                                         ; $554b: $83
    ld b, l                                       ; $554c: $45
    ld b, c                                       ; $554d: $41
    ld sp, $c1c4                                  ; $554e: $31 $c4 $c1
    push hl                                       ; $5551: $e5
    nop                                           ; $5552: $00
    or c                                          ; $5553: $b1
    sbc l                                         ; $5554: $9d
    ld h, $0c                                     ; $5555: $26 $0c
    and b                                         ; $5557: $a0
    add b                                         ; $5558: $80
    add a                                         ; $5559: $87
    xor [hl]                                      ; $555a: $ae
    xor [hl]                                      ; $555b: $ae
    ld a, a                                       ; $555c: $7f
    rlca                                          ; $555d: $07
    ldh [rDIV], a                                 ; $555e: $e0 $04
    ret nz                                        ; $5560: $c0

    dec b                                         ; $5561: $05
    ret nz                                        ; $5562: $c0

    inc b                                         ; $5563: $04
    and b                                         ; $5564: $a0
    and [hl]                                      ; $5565: $a6
    ld b, b                                       ; $5566: $40
    rst $00                                       ; $5567: $c7
    pop bc                                        ; $5568: $c1
    ld l, $a1                                     ; $5569: $2e $a1
    xor d                                         ; $556b: $aa
    add c                                         ; $556c: $81
    cp h                                          ; $556d: $bc
    ld b, h                                       ; $556e: $44
    nop                                           ; $556f: $00
    ld d, d                                       ; $5570: $52
    nop                                           ; $5571: $00
    call nz, $9680                                ; $5572: $c4 $80 $96
    add b                                         ; $5575: $80
    ld hl, sp+$07                                 ; $5576: $f8 $07
    ldh [rDIV], a                                 ; $5578: $e0 $04
    ret nz                                        ; $557a: $c0

    dec b                                         ; $557b: $05
    ret nz                                        ; $557c: $c0

    ld b, l                                       ; $557d: $45
    ld [hl], $62                                  ; $557e: $36 $62
    and a                                         ; $5580: $a7
    ld h, [hl]                                    ; $5581: $66
    add b                                         ; $5582: $80
    cp a                                          ; $5583: $bf
    ld [c], a                                     ; $5584: $e2
    ld b, h                                       ; $5585: $44
    jp Jump_054_43bc                              ; $5586: $c3 $bc $43


jr_054_5589:
    add b                                         ; $5589: $80
    ld [hl], e                                    ; $558a: $73
    nop                                           ; $558b: $00
    call nz, $e487                                ; $558c: $c4 $87 $e4
    add [hl]                                      ; $558f: $86
    add h                                         ; $5590: $84
    ld h, d                                       ; $5591: $62
    ld [hl], a                                    ; $5592: $77
    ld h, a                                       ; $5593: $67
    and e                                         ; $5594: $a3
    ld l, b                                       ; $5595: $68
    cp a                                          ; $5596: $bf
    ldh [$ae], a                                  ; $5597: $e0 $ae
    xor [hl]                                      ; $5599: $ae
    and c                                         ; $559a: $a1
    jr c, jr_054_55e3                             ; $559b: $38 $46

    ret z                                         ; $559d: $c8

    add b                                         ; $559e: $80
    ld [hl], l                                    ; $559f: $75
    nop                                           ; $55a0: $00
    call nz, $e287                                ; $55a1: $c4 $87 $e2
    ld b, e                                       ; $55a4: $43
    ld d, b                                       ; $55a5: $50
    jp nz, $e1c1                                  ; $55a6: $c2 $c1 $e1

    dec [hl]                                      ; $55a9: $35
    dec [hl]                                      ; $55aa: $35
    ccf                                           ; $55ab: $3f
    ld l, h                                       ; $55ac: $6c
    or a                                          ; $55ad: $b7
    cp b                                          ; $55ae: $b8
    ld b, d                                       ; $55af: $42
    xor a                                         ; $55b0: $af
    xor a                                         ; $55b1: $af
    ld b, h                                       ; $55b2: $44
    and a                                         ; $55b3: $a7
    nop                                           ; $55b4: $00
    or h                                          ; $55b5: $b4
    db $f4                                        ; $55b6: $f4
    nop                                           ; $55b7: $00
    add $12                                       ; $55b8: $c6 $12
    add b                                         ; $55ba: $80
    dec sp                                        ; $55bb: $3b
    db $fd                                        ; $55bc: $fd
    ldh [$36], a                                  ; $55bd: $e0 $36
    ld b, l                                       ; $55bf: $45
    ld b, l                                       ; $55c0: $45
    ld [hl], $7f                                  ; $55c1: $36 $7f
    cp c                                          ; $55c3: $b9
    cp d                                          ; $55c4: $ba
    and e                                         ; $55c5: $a3
    dec [hl]                                      ; $55c6: $35
    ld l, h                                       ; $55c7: $6c
    ld l, a                                       ; $55c8: $6f
    ld l, [hl]                                    ; $55c9: $6e
    dec b                                         ; $55ca: $05
    add b                                         ; $55cb: $80
    nop                                           ; $55cc: $00
    add e                                         ; $55cd: $83
    ld h, b                                       ; $55ce: $60
    cp h                                          ; $55cf: $bc
    jr nz, jr_054_5589                            ; $55d0: $20 $b7

    ld bc, $1180                                  ; $55d2: $01 $80 $11
    ld h, h                                       ; $55d5: $64
    ld h, $00                                     ; $55d6: $26 $00
    pop bc                                        ; $55d8: $c1
    ld [de], a                                    ; $55d9: $12
    add c                                         ; $55da: $81
    db $10                                        ; $55db: $10
    add d                                         ; $55dc: $82
    rra                                           ; $55dd: $1f
    ld b, l                                       ; $55de: $45
    ld [hl], $6e                                  ; $55df: $36 $6e
    ld l, a                                       ; $55e1: $6f
    ld l, h                                       ; $55e2: $6c

jr_054_55e3:
    pop bc                                        ; $55e3: $c1
    and $45                                       ; $55e4: $e6 $45
    and e                                         ; $55e6: $a3
    nop                                           ; $55e7: $00
    ld d, e                                       ; $55e8: $53
    inc [hl]                                      ; $55e9: $34
    add hl, hl                                    ; $55ea: $29
    and h                                         ; $55eb: $a4
    jp c, $9e00                                   ; $55ec: $da $00 $9e

    ld [de], a                                    ; $55ef: $12
    add e                                         ; $55f0: $83
    dec [hl]                                      ; $55f1: $35
    and e                                         ; $55f2: $a3
    db $10                                        ; $55f3: $10
    add c                                         ; $55f4: $81
    cp a                                          ; $55f5: $bf
    pop hl                                        ; $55f6: $e1
    sbc b                                         ; $55f7: $98
    add d                                         ; $55f8: $82
    pop hl                                        ; $55f9: $e1
    adc b                                         ; $55fa: $88
    and c                                         ; $55fb: $a1
    cp [hl]                                       ; $55fc: $be
    ld [bc], a                                    ; $55fd: $02
    jp c, $80db                                   ; $55fe: $da $db $80

    rla                                           ; $5601: $17
    jp nz, $a143                                  ; $5602: $c2 $43 $a1

    ld [bc], a                                    ; $5605: $02
    jp nc, Jump_000_3561                          ; $5606: $d2 $61 $35

    rst $38                                       ; $5609: $ff
    ldh [$d0], a                                  ; $560a: $e0 $d0
    ld h, c                                       ; $560c: $61
    cp a                                          ; $560d: $bf
    pop hl                                        ; $560e: $e1
    ld b, e                                       ; $560f: $43
    pop hl                                        ; $5610: $e1
    adc b                                         ; $5611: $88
    and c                                         ; $5612: $a1
    ld b, h                                       ; $5613: $44
    ld b, e                                       ; $5614: $43
    ld h, b                                       ; $5615: $60
    nop                                           ; $5616: $00
    ld e, d                                       ; $5617: $5a
    ret nz                                        ; $5618: $c0

    ld h, e                                       ; $5619: $63
    sub d                                         ; $561a: $92
    add d                                         ; $561b: $82
    sub b                                         ; $561c: $90
    add e                                         ; $561d: $83
    dec b                                         ; $561e: $05
    ld h, c                                       ; $561f: $61
    xor h                                         ; $5620: $ac
    xor [hl]                                      ; $5621: $ae
    ldh a, [rLCDC]                                ; $5622: $f0 $40
    jr nz, @+$04                                  ; $5624: $20 $02

    db $e3                                        ; $5626: $e3
    jp nz, $c300                                  ; $5627: $c2 $00 $c3

    ld d, b                                       ; $562a: $50
    nop                                           ; $562b: $00
    ld b, a                                       ; $562c: $47
    push bc                                       ; $562d: $c5
    ld bc, $c09e                                  ; $562e: $01 $9e $c0
    ret z                                         ; $5631: $c8

    call nz, $0142                                ; $5632: $c4 $42 $01
    xor a                                         ; $5635: $af
    rst $38                                       ; $5636: $ff
    ldh [rOBP1], a                                ; $5637: $e0 $49
    and a                                         ; $5639: $a7
    jp $8050                                      ; $563a: $c3 $50 $80


    rlca                                          ; $563d: $07
    add b                                         ; $563e: $80
    ld hl, $408b                                  ; $563f: $21 $8b $40
    sub d                                         ; $5642: $92
    add b                                         ; $5643: $80
    ld bc, $4043                                  ; $5644: $01 $43 $40
    jp $a18c                                      ; $5647: $c3 $8c $a1


    ld [hl-], a                                   ; $564a: $32
    ld b, e                                       ; $564b: $43
    ld b, [hl]                                    ; $564c: $46
    dec h                                         ; $564d: $25
    jp $8050                                      ; $564e: $c3 $50 $80


    rlca                                          ; $5651: $07
    ld [hl+], a                                   ; $5652: $22
    ld [bc], a                                    ; $5653: $02
    nop                                           ; $5654: $00
    ld c, d                                       ; $5655: $4a
    ld b, [hl]                                    ; $5656: $46
    pop de                                        ; $5657: $d1
    add a                                         ; $5658: $87
    inc a                                         ; $5659: $3c
    dec b                                         ; $565a: $05
    ld b, e                                       ; $565b: $43
    di                                            ; $565c: $f3
    add b                                         ; $565d: $80
    rlca                                          ; $565e: $07
    ld [hl+], a                                   ; $565f: $22
    nop                                           ; $5660: $00
    jp nc, $ce01                                  ; $5661: $d2 $01 $ce

    ld hl, $9200                                  ; $5664: $21 $00 $92
    add a                                         ; $5667: $87
    ret nz                                        ; $5668: $c0

    nop                                           ; $5669: $00
    dec hl                                        ; $566a: $2b
    inc h                                         ; $566b: $24
    ld b, e                                       ; $566c: $43
    db $f4                                        ; $566d: $f4
    add b                                         ; $566e: $80
    ld a, [bc]                                    ; $566f: $0a
    rst $00                                       ; $5670: $c7
    inc bc                                        ; $5671: $03
    add $23                                       ; $5672: $c6 $23
    sub c                                         ; $5674: $91
    inc hl                                        ; $5675: $23
    nop                                           ; $5676: $00
    or l                                          ; $5677: $b5
    nop                                           ; $5678: $00
    or d                                          ; $5679: $b2
    ld [bc], a                                    ; $567a: $02
    ld e, h                                       ; $567b: $5c
    ld h, b                                       ; $567c: $60
    ld b, e                                       ; $567d: $43
    di                                            ; $567e: $f3
    add b                                         ; $567f: $80
    ld a, [bc]                                    ; $5680: $0a
    sbc b                                         ; $5681: $98
    pop hl                                        ; $5682: $e1
    ld a, [$85a2]                                 ; $5683: $fa $a2 $85
    jr nz, jr_054_5688                            ; $5686: $20 $00

jr_054_5688:
    ld [de], a                                    ; $5688: $12
    ld b, b                                       ; $5689: $40
    ld a, b                                       ; $568a: $78
    nop                                           ; $568b: $00
    add [hl]                                      ; $568c: $86
    ldh [$83], a                                  ; $568d: $e0 $83
    ldh [rOBP1], a                                ; $568f: $e0 $49
    ld a, [c]                                     ; $5691: $f2
    add b                                         ; $5692: $80
    db $10                                        ; $5693: $10
    add $04                                       ; $5694: $c6 $04
    cp d                                          ; $5696: $ba
    ld [hl+], a                                   ; $5697: $22
    ld bc, $7f9e                                  ; $5698: $01 $9e $7f
    inc bc                                        ; $569b: $03
    inc c                                         ; $569c: $0c
    or h                                          ; $569d: $b4
    add b                                         ; $569e: $80
    ld [de], a                                    ; $569f: $12
    or a                                          ; $56a0: $b7
    ld b, d                                       ; $56a1: $42
    cp d                                          ; $56a2: $ba
    dec h                                         ; $56a3: $25
    sub e                                         ; $56a4: $93
    ld h, h                                       ; $56a5: $64
    inc c                                         ; $56a6: $0c
    or h                                          ; $56a7: $b4
    nop                                           ; $56a8: $00
    add b                                         ; $56a9: $80
    ret nc                                        ; $56aa: $d0

    ld a, d                                       ; $56ab: $7a
    ld b, $7a                                     ; $56ac: $06 $7a
    inc h                                         ; $56ae: $24
    sub b                                         ; $56af: $90
    inc bc                                        ; $56b0: $03
    inc c                                         ; $56b1: $0c
    or h                                          ; $56b2: $b4
    add b                                         ; $56b3: $80
    ret nc                                        ; $56b4: $d0

    ld [hl], e                                    ; $56b5: $73
    daa                                           ; $56b6: $27
    add l                                         ; $56b7: $85
    inc b                                         ; $56b8: $04
    nop                                           ; $56b9: $00
    sub d                                         ; $56ba: $92
    ld b, d                                       ; $56bb: $42
    inc c                                         ; $56bc: $0c
    or h                                          ; $56bd: $b4
    nop                                           ; $56be: $00
    ld c, a                                       ; $56bf: $4f
    ld a, d                                       ; $56c0: $7a
    add $77                                       ; $56c1: $c6 $77
    inc h                                         ; $56c3: $24
    cp $c1                                        ; $56c4: $fe $c1
    rst $38                                       ; $56c6: $ff
    add $3d                                       ; $56c7: $c6 $3d
    ld a, [$4300]                                 ; $56c9: $fa $00 $43
    jp hl                                         ; $56cc: $e9


    ld a, c                                       ; $56cd: $79
    inc bc                                        ; $56ce: $03
    ret nz                                        ; $56cf: $c0

    push hl                                       ; $56d0: $e5
    add hl, hl                                    ; $56d1: $29
    add h                                         ; $56d2: $84
    add b                                         ; $56d3: $80
    rst $18                                       ; $56d4: $df
    or [hl]                                       ; $56d5: $b6
    ld b, $79                                     ; $56d6: $06 $79
    ld [bc], a                                    ; $56d8: $02
    ld b, b                                       ; $56d9: $40
    and $00                                       ; $56da: $e6 $00
    ld l, e                                       ; $56dc: $6b
    push bc                                       ; $56dd: $c5
    add b                                         ; $56de: $80
    rst $18                                       ; $56df: $df
    ld a, [hl+]                                   ; $56e0: $2a
    and l                                         ; $56e1: $a5
    ld h, d                                       ; $56e2: $62
    ld [hl+], a                                   ; $56e3: $22
    ret nz                                        ; $56e4: $c0

    ret z                                         ; $56e5: $c8

    ld d, d                                       ; $56e6: $52
    ld [hl+], a                                   ; $56e7: $22
    add b                                         ; $56e8: $80
    rst $18                                       ; $56e9: $df
    dec a                                         ; $56ea: $3d
    db $eb                                        ; $56eb: $eb
    jr nc, @+$42                                  ; $56ec: $30 $40

    add $0c                                       ; $56ee: $c6 $0c
    ld h, d                                       ; $56f0: $62
    add b                                         ; $56f1: $80
    rst $18                                       ; $56f2: $df
    ld [hl], e                                    ; $56f3: $73
    dec hl                                        ; $56f4: $2b
    ret c                                         ; $56f5: $d8

    reti                                          ; $56f6: $d9


    add b                                         ; $56f7: $80
    and d                                         ; $56f8: $a2
    ld [bc], a                                    ; $56f9: $02
    pop hl                                        ; $56fa: $e1
    jr jr_054_5705                                ; $56fb: $18 $08

    and d                                         ; $56fd: $a2
    add b                                         ; $56fe: $80
    rst $18                                       ; $56ff: $df
    ld l, l                                       ; $5700: $6d
    adc e                                         ; $5701: $8b
    jp c, $c0db                                   ; $5702: $da $db $c0

jr_054_5705:
    db $e4                                        ; $5705: $e4
    adc a                                         ; $5706: $8f
    ld h, e                                       ; $5707: $63
    ld b, e                                       ; $5708: $43
    db $fc                                        ; $5709: $fc
    nop                                           ; $570a: $00
    ld b, h                                       ; $570b: $44
    nop                                           ; $570c: $00
    nop                                           ; $570d: $00
    nop                                           ; $570e: $00
    nop                                           ; $570f: $00
    pop bc                                        ; $5710: $c1
    nop                                           ; $5711: $00
    rst $38                                       ; $5712: $ff
    rst $38                                       ; $5713: $ff
    rst $38                                       ; $5714: $ff
    rst $38                                       ; $5715: $ff
    rst $38                                       ; $5716: $ff
    rst $38                                       ; $5717: $ff
    rst $38                                       ; $5718: $ff
    rst $38                                       ; $5719: $ff
    rst $38                                       ; $571a: $ff
    rst $38                                       ; $571b: $ff
    nop                                           ; $571c: $00
    nop                                           ; $571d: $00
    ld bc, $fe80                                  ; $571e: $01 $80 $fe
    ldh [rIE], a                                  ; $5721: $e0 $ff
    rst $38                                       ; $5723: $ff
    rst $38                                       ; $5724: $ff
    rst $38                                       ; $5725: $ff
    rst $38                                       ; $5726: $ff
    add sp, $00                                   ; $5727: $e8 $00
    nop                                           ; $5729: $00
    nop                                           ; $572a: $00
    ld [bc], a                                    ; $572b: $02
    nop                                           ; $572c: $00
    jr nz, jr_054_5748                            ; $572d: $20 $19

    ld [bc], a                                    ; $572f: $02
    ld bc, $1921                                  ; $5730: $01 $21 $19
    ld [bc], a                                    ; $5733: $02
    ld [bc], a                                    ; $5734: $02
    inc h                                         ; $5735: $24
    add hl, de                                    ; $5736: $19
    ld [bc], a                                    ; $5737: $02
    inc bc                                        ; $5738: $03
    dec h                                         ; $5739: $25
    add hl, de                                    ; $573a: $19
    ld [bc], a                                    ; $573b: $02
    inc b                                         ; $573c: $04
    ld c, $1b                                     ; $573d: $0e $1b
    ld [bc], a                                    ; $573f: $02
    dec b                                         ; $5740: $05
    rrca                                          ; $5741: $0f
    dec de                                        ; $5742: $1b
    ld [bc], a                                    ; $5743: $02
    ld b, $16                                     ; $5744: $06 $16
    rra                                           ; $5746: $1f
    ld [bc], a                                    ; $5747: $02

jr_054_5748:
    rlca                                          ; $5748: $07
    rla                                           ; $5749: $17
    rra                                           ; $574a: $1f
    ld [bc], a                                    ; $574b: $02
    ld [$210a], sp                                ; $574c: $08 $0a $21
    ld [bc], a                                    ; $574f: $02
    add hl, bc                                    ; $5750: $09
    dec bc                                        ; $5751: $0b
    ld hl, $0a02                                  ; $5752: $21 $02 $0a
    inc e                                         ; $5755: $1c
    ld hl, $0b02                                  ; $5756: $21 $02 $0b
    dec e                                         ; $5759: $1d
    ld hl, $0c02                                  ; $575a: $21 $02 $0c
    jr z, jr_054_5782                             ; $575d: $28 $23

    ld [bc], a                                    ; $575f: $02
    dec c                                         ; $5760: $0d
    add hl, hl                                    ; $5761: $29
    inc hl                                        ; $5762: $23
    ld [bc], a                                    ; $5763: $02
    ld c, $12                                     ; $5764: $0e $12
    dec h                                         ; $5766: $25
    ld [bc], a                                    ; $5767: $02
    rrca                                          ; $5768: $0f
    inc de                                        ; $5769: $13
    dec h                                         ; $576a: $25
    ld [bc], a                                    ; $576b: $02
    db $10                                        ; $576c: $10
    ld c, $27                                     ; $576d: $0e $27
    ld [bc], a                                    ; $576f: $02
    ld de, $270f                                  ; $5770: $11 $0f $27
    ld [bc], a                                    ; $5773: $02
    ld [de], a                                    ; $5774: $12
    ld a, [bc]                                    ; $5775: $0a
    add hl, hl                                    ; $5776: $29
    ld [bc], a                                    ; $5777: $02
    inc de                                        ; $5778: $13
    dec bc                                        ; $5779: $0b
    add hl, hl                                    ; $577a: $29
    ld [bc], a                                    ; $577b: $02
    inc d                                         ; $577c: $14
    ld [hl+], a                                   ; $577d: $22
    add hl, hl                                    ; $577e: $29
    ld [bc], a                                    ; $577f: $02
    dec d                                         ; $5780: $15
    inc hl                                        ; $5781: $23

jr_054_5782:
    add hl, hl                                    ; $5782: $29
    ld [bc], a                                    ; $5783: $02
    ld d, $20                                     ; $5784: $16 $20
    dec l                                         ; $5786: $2d
    ld [bc], a                                    ; $5787: $02
    rla                                           ; $5788: $17
    ld hl, $022d                                  ; $5789: $21 $2d $02
    jr @+$1e                                      ; $578c: $18 $1c

    cpl                                           ; $578e: $2f
    ld [bc], a                                    ; $578f: $02
    add hl, de                                    ; $5790: $19
    dec e                                         ; $5791: $1d
    cpl                                           ; $5792: $2f
    ld [bc], a                                    ; $5793: $02
    ld a, [de]                                    ; $5794: $1a
    ld e, $2f                                     ; $5795: $1e $2f
    ld [bc], a                                    ; $5797: $02
    dec de                                        ; $5798: $1b
    rra                                           ; $5799: $1f
    cpl                                           ; $579a: $2f
    rst $38                                       ; $579b: $ff
    rst $38                                       ; $579c: $ff
    rst $38                                       ; $579d: $ff
    and [hl]                                      ; $579e: $a6
    ld d, a                                       ; $579f: $57
    sub $57                                       ; $57a0: $d6 $57
    ld e, h                                       ; $57a2: $5c
    ld e, d                                       ; $57a3: $5a
    ld a, [hl-]                                   ; $57a4: $3a
    ld e, h                                       ; $57a5: $5c
    ld [$c503], a                                 ; $57a6: $ea $03 $c5
    ld b, $e2                                     ; $57a9: $06 $e2
    ld bc, $00a0                                  ; $57ab: $01 $a0 $00
    ld [$f003], a                                 ; $57ae: $ea $03 $f0
    inc bc                                        ; $57b1: $03
    push bc                                       ; $57b2: $c5
    ld b, $e2                                     ; $57b3: $06 $e2
    ld bc, $023f                                  ; $57b5: $01 $3f $02
    xor e                                         ; $57b8: $ab
    nop                                           ; $57b9: $00
    inc sp                                        ; $57ba: $33
    ld bc, $06c5                                  ; $57bb: $01 $c5 $06
    ld [$0825], sp                                ; $57be: $08 $25 $08
    dec h                                         ; $57c1: $25
    ld [$0825], sp                                ; $57c2: $08 $25 $08
    dec h                                         ; $57c5: $25
    ld [$0825], sp                                ; $57c6: $08 $25 $08
    dec h                                         ; $57c9: $25
    ld [$0825], sp                                ; $57ca: $08 $25 $08
    dec h                                         ; $57cd: $25
    ld [$0825], sp                                ; $57ce: $08 $25 $08
    dec h                                         ; $57d1: $25
    ld [$0825], sp                                ; $57d2: $08 $25 $08
    dec h                                         ; $57d5: $25
    db $dd                                        ; $57d6: $dd
    dec bc                                        ; $57d7: $0b
    rst $38                                       ; $57d8: $ff
    db $e4                                        ; $57d9: $e4
    inc c                                         ; $57da: $0c
    inc c                                         ; $57db: $0c
    ld c, h                                       ; $57dc: $4c
    rst $38                                       ; $57dd: $ff
    pop hl                                        ; $57de: $e1
    inc l                                         ; $57df: $2c
    inc c                                         ; $57e0: $0c
    add $ff                                       ; $57e1: $c6 $ff
    ld [c], a                                     ; $57e3: $e2
    ld c, h                                       ; $57e4: $4c
    ld c, h                                       ; $57e5: $4c
    db $fd                                        ; $57e6: $fd
    db $e3                                        ; $57e7: $e3
    ld sp, hl                                     ; $57e8: $f9
    ldh [$f2], a                                  ; $57e9: $e0 $f2
    db $e4                                        ; $57eb: $e4
    inc l                                         ; $57ec: $2c
    inc l                                         ; $57ed: $2c
    ldh a, [$ed]                                  ; $57ee: $f0 $ed
    db $e3                                        ; $57f0: $e3
    ld hl, sp-$1f                                 ; $57f1: $f8 $e1
    rst $38                                       ; $57f3: $ff
    jp hl                                         ; $57f4: $e9


    ret nz                                        ; $57f5: $c0

    push hl                                       ; $57f6: $e5
    inc l                                         ; $57f7: $2c
    ld l, h                                       ; $57f8: $6c
    ld l, h                                       ; $57f9: $6c
    ld l, h                                       ; $57fa: $6c
    jr nz, @-$3f                                  ; $57fb: $20 $bf

    add sp, -$4e                                  ; $57fd: $e8 $b2
    db $e3                                        ; $57ff: $e3
    or a                                          ; $5800: $b7
    ld [c], a                                     ; $5801: $e2
    cp l                                          ; $5802: $bd
    pop hl                                        ; $5803: $e1
    and a                                         ; $5804: $a7
    ldh [$2c], a                                  ; $5805: $e0 $2c
    pop af                                        ; $5807: $f1
    db $e3                                        ; $5808: $e3
    ret nz                                        ; $5809: $c0

    rst $28                                       ; $580a: $ef
    rrca                                          ; $580b: $0f
    ld l, e                                       ; $580c: $6b
    ld l, e                                       ; $580d: $6b
    ld c, e                                       ; $580e: $4b
    ld c, e                                       ; $580f: $4b
    ld a, d                                       ; $5810: $7a
    db $e3                                        ; $5811: $e3
    ld a, [hl]                                    ; $5812: $7e
    ld [c], a                                     ; $5813: $e2
    adc e                                         ; $5814: $8b
    db $e3                                        ; $5815: $e3
    add d                                         ; $5816: $82
    db $e4                                        ; $5817: $e4
    jr nz, @+$6d                                  ; $5818: $20 $6b

    ld [c], a                                     ; $581a: $e2
    ld [hl], b                                    ; $581b: $70
    db $e3                                        ; $581c: $e3
    halt                                          ; $581d: $76
    push hl                                       ; $581e: $e5
    ld l, [hl]                                    ; $581f: $6e
    ld [c], a                                     ; $5820: $e2
    ld a, l                                       ; $5821: $7d
    rst $20                                       ; $5822: $e7
    ld l, e                                       ; $5823: $6b
    pop bc                                        ; $5824: $c1
    ldh [$bf], a                                  ; $5825: $e0 $bf
    ldh [rLCDC], a                                ; $5827: $e0 $40
    cp [hl]                                       ; $5829: $be
    ld [$e5dc], a                                 ; $582a: $ea $dc $e5
    ld d, [hl]                                    ; $582d: $56
    and $38                                       ; $582e: $e6 $38
    db $e4                                        ; $5830: $e4
    ld hl, sp-$1a                                 ; $5831: $f8 $e6
    ret nz                                        ; $5833: $c0

    jp hl                                         ; $5834: $e9


jr_054_5835:
    dec hl                                        ; $5835: $2b
    cp $c2                                        ; $5836: $fe $c2
    nop                                           ; $5838: $00
    cp [hl]                                       ; $5839: $be
    ldh [$bb], a                                  ; $583a: $e0 $bb
    db $e3                                        ; $583c: $e3
    adc a                                         ; $583d: $8f
    db $e4                                        ; $583e: $e4
    pop bc                                        ; $583f: $c1
    push hl                                       ; $5840: $e5
    ret                                           ; $5841: $c9


    db $e3                                        ; $5842: $e3
    jr c, @-$1b                                   ; $5843: $38 $e3

    ld hl, sp-$1b                                 ; $5845: $f8 $e5
    call c, $12c4                                 ; $5847: $dc $c4 $12
    push de                                       ; $584a: $d5
    jp $c00b                                      ; $584b: $c3 $0b $c0


    db $e3                                        ; $584e: $e3
    cp c                                          ; $584f: $b9
    pop bc                                        ; $5850: $c1
    dec hl                                        ; $5851: $2b
    jr c, jr_054_5835                             ; $5852: $38 $e1

    add hl, de                                    ; $5854: $19
    ldh [$c7], a                                  ; $5855: $e0 $c7
    call nz, $f960                                ; $5857: $c4 $60 $f9
    push hl                                       ; $585a: $e5
    ccf                                           ; $585b: $3f
    xor $c0                                       ; $585c: $ee $c0
    res 0, b                                      ; $585e: $cb $80
    ldh [$7d], a                                  ; $5860: $e0 $7d
    db $e3                                        ; $5862: $e3
    dec hl                                        ; $5863: $2b
    dec hl                                        ; $5864: $2b
    ld a, d                                       ; $5865: $7a
    ldh [rSCX], a                                 ; $5866: $e0 $43
    dec bc                                        ; $5868: $0b
    ld c, e                                       ; $5869: $4b
    adc e                                         ; $586a: $8b
    call nz, $c681                                ; $586b: $c4 $81 $c6
    ld [hl], l                                    ; $586e: $75
    call nz, $f441                                ; $586f: $c4 $41 $f4
    inc c                                         ; $5872: $0c
    jp z, Jump_000_11e1                           ; $5873: $ca $e1 $11

    ld l, e                                       ; $5876: $6b
    add c                                         ; $5877: $81
    db $e3                                        ; $5878: $e3
    add hl, sp                                    ; $5879: $39
    ld [c], a                                     ; $587a: $e2
    ld a, a                                       ; $587b: $7f

jr_054_587c:
    ldh [$6c], a                                  ; $587c: $e0 $6c
    adc [hl]                                      ; $587e: $8e
    jp $c5b3                                      ; $587f: $c3 $b3 $c5


    inc sp                                        ; $5882: $33
    call nz, $f800                                ; $5883: $c4 $00 $f8
    rst $20                                       ; $5886: $e7
    ret nz                                        ; $5887: $c0

    db $ed                                        ; $5888: $ed
    rst $38                                       ; $5889: $ff
    rst $20                                       ; $588a: $e7
    ld a, b                                       ; $588b: $78
    call nz, $c7ce                                ; $588c: $c4 $ce $c7
    inc d                                         ; $588f: $14
    call nz, $d8c0                                ; $5890: $c4 $c0 $d8
    ld c, c                                       ; $5893: $49
    pop hl                                        ; $5894: $e1
    add b                                         ; $5895: $80
    pop bc                                        ; $5896: $c1
    db $ec                                        ; $5897: $ec
    or h                                          ; $5898: $b4
    and c                                         ; $5899: $a1
    ld c, l                                       ; $589a: $4d
    ret z                                         ; $589b: $c8

    ret nz                                        ; $589c: $c0

    adc $c0                                       ; $589d: $ce $c0
    xor h                                         ; $589f: $ac
    ld a, [hl]                                    ; $58a0: $7e
    and $c1                                       ; $58a1: $e6 $c1
    push hl                                       ; $58a3: $e5
    dec bc                                        ; $58a4: $0b
    add b                                         ; $58a5: $80
    adc e                                         ; $58a6: $8b
    and h                                         ; $58a7: $a4
    ret nz                                        ; $58a8: $c0

    and l                                         ; $58a9: $a5
    ld b, b                                       ; $58aa: $40
    pop de                                        ; $58ab: $d1
    sbc c                                         ; $58ac: $99
    and l                                         ; $58ad: $a5
    add b                                         ; $58ae: $80
    and c                                         ; $58af: $a1
    dec a                                         ; $58b0: $3d
    ld [$e540], a                                 ; $58b1: $ea $40 $e5
    inc l                                         ; $58b4: $2c
    jr nc, jr_054_587c                            ; $58b5: $30 $c5

    and e                                         ; $58b7: $a3
    halt                                          ; $58b8: $76
    call nz, $eafc                                ; $58b9: $c4 $fc $ea
    ld b, b                                       ; $58bc: $40
    xor d                                         ; $58bd: $aa
    inc l                                         ; $58be: $2c
    inc l                                         ; $58bf: $2c
    add $ec                                       ; $58c0: $c6 $ec
    ld d, b                                       ; $58c2: $50
    and c                                         ; $58c3: $a1
    inc b                                         ; $58c4: $04
    ld bc, $40b4                                  ; $58c5: $01 $b4 $40
    pop de                                        ; $58c8: $d1
    inc l                                         ; $58c9: $2c
    rst $38                                       ; $58ca: $ff
    ldh [$87], a                                  ; $58cb: $e0 $87
    jp $e4c2                                      ; $58cd: $c3 $c2 $e4


    ld bc, $47b6                                  ; $58d0: $01 $b6 $47
    and [hl]                                      ; $58d3: $a6
    db $10                                        ; $58d4: $10
    sbc h                                         ; $58d5: $9c
    add b                                         ; $58d6: $80
    jp z, $c0e1                                   ; $58d7: $ca $e1 $c0

    rst $20                                       ; $58da: $e7
    ld a, l                                       ; $58db: $7d
    ld [c], a                                     ; $58dc: $e2
    dec hl                                        ; $58dd: $2b
    pop bc                                        ; $58de: $c1
    rst $20                                       ; $58df: $e7
    ld bc, $40b4                                  ; $58e0: $01 $b4 $40
    ret z                                         ; $58e3: $c8

    ld [bc], a                                    ; $58e4: $02
    ret nz                                        ; $58e5: $c0

    rst $20                                       ; $58e6: $e7
    ld c, h                                       ; $58e7: $4c
    ld de, $01c0                                  ; $58e8: $11 $c0 $01
    push bc                                       ; $58eb: $c5
    ld a, h                                       ; $58ec: $7c
    add c                                         ; $58ed: $81
    ld l, [hl]                                    ; $58ee: $6e
    add c                                         ; $58ef: $81
    ld bc, $f8b5                                  ; $58f0: $01 $b5 $f8
    add [hl]                                      ; $58f3: $86
    nop                                           ; $58f4: $00
    add c                                         ; $58f5: $81
    rst $20                                       ; $58f6: $e7
    ld l, a                                       ; $58f7: $6f
    and [hl]                                      ; $58f8: $a6
    ld d, l                                       ; $58f9: $55
    and l                                         ; $58fa: $a5
    nop                                           ; $58fb: $00
    and a                                         ; $58fc: $a7
    ld bc, $40ae                                  ; $58fd: $01 $ae $40
    rst $00                                       ; $5900: $c7
    ret nz                                        ; $5901: $c0

    add sp, -$2b                                  ; $5902: $e8 $d5
    ld [hl], h                                    ; $5904: $74
    nop                                           ; $5905: $00
    bit 4, [hl]                                   ; $5906: $cb $66
    ld b, b                                       ; $5908: $40
    add a                                         ; $5909: $87
    ccf                                           ; $590a: $3f
    or h                                          ; $590b: $b4
    call nc, $cbd3                                ; $590c: $d4 $d3 $cb
    ld h, a                                       ; $590f: $67
    ld bc, $78aa                                  ; $5910: $01 $aa $78
    add e                                         ; $5913: $83
    call z, Call_000_00c2                         ; $5914: $cc $c2 $00
    ld a, c                                       ; $5917: $79
    add h                                         ; $5918: $84
    push de                                       ; $5919: $d5
    ld [hl], e                                    ; $591a: $73
    bit 5, c                                      ; $591b: $cb $69
    ld bc, $c0a8                                  ; $591d: $01 $a8 $c0
    ldh a, [$d4]                                  ; $5920: $f0 $d4
    sub $f6                                       ; $5922: $d6 $f6
    xor $45                                       ; $5924: $ee $45
    adc c                                         ; $5926: $89
    nop                                           ; $5927: $00
    rst $38                                       ; $5928: $ff
    ret                                           ; $5929: $c9


    call nc, $fdd3                                ; $592a: $d4 $d3 $fd
    adc b                                         ; $592d: $88
    db $ec                                        ; $592e: $ec
    add sp, -$50                                  ; $592f: $e8 $b0
    ld b, e                                       ; $5931: $43
    ld b, h                                       ; $5932: $44
    ldh [rLCDC], a                                ; $5933: $e0 $40
    ret z                                         ; $5935: $c8

    push de                                       ; $5936: $d5
    ld [hl], d                                    ; $5937: $72
    nop                                           ; $5938: $00
    jp z, Jump_054_41c9                           ; $5939: $ca $c9 $41

    ld h, a                                       ; $593c: $67
    nop                                           ; $593d: $00
    push hl                                       ; $593e: $e5
    add [hl]                                      ; $593f: $86
    db $eb                                        ; $5940: $eb
    push de                                       ; $5941: $d5
    ld [hl], b                                    ; $5942: $70
    or $e8                                        ; $5943: $f6 $e8
    dec b                                         ; $5945: $05
    xor e                                         ; $5946: $ab
    inc hl                                        ; $5947: $23
    ld h, h                                       ; $5948: $64
    nop                                           ; $5949: $00
    ret nz                                        ; $594a: $c0

    xor b                                         ; $594b: $a8
    push de                                       ; $594c: $d5
    ld [hl], d                                    ; $594d: $72
    db $d3                                        ; $594e: $d3
    ld l, b                                       ; $594f: $68
    ld a, a                                       ; $5950: $7f
    xor h                                         ; $5951: $ac
    nop                                           ; $5952: $00
    rst $28                                       ; $5953: $ef
    push de                                       ; $5954: $d5
    ld [hl], e                                    ; $5955: $73
    cp l                                          ; $5956: $bd
    ld h, a                                       ; $5957: $67
    ld a, d                                       ; $5958: $7a
    ld c, d                                       ; $5959: $4a
    nop                                           ; $595a: $00
    ld b, c                                       ; $595b: $41
    adc l                                         ; $595c: $8d
    push de                                       ; $595d: $d5
    ld [hl], h                                    ; $595e: $74
    or $e9                                        ; $595f: $f6 $e9
    and e                                         ; $5961: $a3
    pop af                                        ; $5962: $f1
    add e                                         ; $5963: $83
    rst $00                                       ; $5964: $c7
    push de                                       ; $5965: $d5
    ld [hl], l                                    ; $5966: $75
    add b                                         ; $5967: $80
    ld [$6c78], a                                 ; $5968: $ea $78 $6c
    nop                                           ; $596b: $00
    add c                                         ; $596c: $81
    xor h                                         ; $596d: $ac
    push de                                       ; $596e: $d5
    ld [hl], b                                    ; $596f: $70
    dec bc                                        ; $5970: $0b
    ld a, [hl+]                                   ; $5971: $2a
    and e                                         ; $5972: $a3
    pop af                                        ; $5973: $f1
    dec b                                         ; $5974: $05
    ret                                           ; $5975: $c9


    dec c                                         ; $5976: $0d
    ld b, d                                       ; $5977: $42
    sbc l                                         ; $5978: $9d
    call Call_000_250b                            ; $5979: $cd $0b $25
    nop                                           ; $597c: $00
    and e                                         ; $597d: $a3
    di                                            ; $597e: $f3
    rst $10                                       ; $597f: $d7
    ld l, c                                       ; $5980: $69
    ld d, c                                       ; $5981: $51
    and h                                         ; $5982: $a4
    ld h, d                                       ; $5983: $62
    ld l, d                                       ; $5984: $6a
    dec bc                                        ; $5985: $0b
    daa                                           ; $5986: $27
    and e                                         ; $5987: $a3
    ld a, [c]                                     ; $5988: $f2
    add [hl]                                      ; $5989: $86
    xor d                                         ; $598a: $aa
    push de                                       ; $598b: $d5
    inc d                                         ; $598c: $14
    nop                                           ; $598d: $00
    push af                                       ; $598e: $f5
    and a                                         ; $598f: $a7
    dec b                                         ; $5990: $05
    ld [hl], c                                    ; $5991: $71
    ld b, b                                       ; $5992: $40
    adc b                                         ; $5993: $88
    call nc, $ce75                                ; $5994: $d4 $75 $ce
    add a                                         ; $5997: $87
    inc hl                                        ; $5998: $23
    adc a                                         ; $5999: $8f
    ld bc, $d5ac                                  ; $599a: $01 $ac $d5
    ld c, $00                                     ; $599d: $0e $00
    ld [hl], l                                    ; $599f: $75
    adc d                                         ; $59a0: $8a
    inc hl                                        ; $59a1: $23
    adc a                                         ; $59a2: $8f
    add c                                         ; $59a3: $81
    jp hl                                         ; $59a4: $e9


    nop                                           ; $59a5: $00
    or h                                          ; $59a6: $b4
    ld b, b                                       ; $59a7: $40
    xor c                                         ; $59a8: $a9
    inc hl                                        ; $59a9: $23
    rst $28                                       ; $59aa: $ef
    ld b, c                                       ; $59ab: $41
    ld [$11d5], a                                 ; $59ac: $ea $d5 $11
    nop                                           ; $59af: $00
    inc de                                        ; $59b0: $13
    ld a, [hl+]                                   ; $59b1: $2a
    inc hl                                        ; $59b2: $23
    sub b                                         ; $59b3: $90
    ret nz                                        ; $59b4: $c0

    adc e                                         ; $59b5: $8b
    nop                                           ; $59b6: $00
    or b                                          ; $59b7: $b0
    or $cb                                        ; $59b8: $f6 $cb
    add b                                         ; $59ba: $80
    adc h                                         ; $59bb: $8c
    ld [bc], a                                    ; $59bc: $02
    adc d                                         ; $59bd: $8a
    push de                                       ; $59be: $d5
    ld de, $0b00                                  ; $59bf: $11 $00 $0b
    add hl, hl                                    ; $59c2: $29
    inc hl                                        ; $59c3: $23
    adc [hl]                                      ; $59c4: $8e
    jp nz, $d56b                                  ; $59c5: $c2 $6b $d5

    inc de                                        ; $59c8: $13
    adc d                                         ; $59c9: $8a
    ld l, c                                       ; $59ca: $69
    inc hl                                        ; $59cb: $23
    rst $28                                       ; $59cc: $ef
    add [hl]                                      ; $59cd: $86
    ld l, l                                       ; $59ce: $6d
    push de                                       ; $59cf: $d5
    ld c, $00                                     ; $59d0: $0e $00
    dec bc                                        ; $59d2: $0b
    add hl, hl                                    ; $59d3: $29
    inc hl                                        ; $59d4: $23
    ld a, [c]                                     ; $59d5: $f2
    nop                                           ; $59d6: $00
    cp l                                          ; $59d7: $bd
    adc c                                         ; $59d8: $89
    add hl, hl                                    ; $59d9: $29
    inc hl                                        ; $59da: $23
    sub c                                         ; $59db: $91
    nop                                           ; $59dc: $00
    cp l                                          ; $59dd: $bd
    ld a, [bc]                                    ; $59de: $0a
    adc d                                         ; $59df: $8a
    add b                                         ; $59e0: $80
    sbc c                                         ; $59e1: $99
    nop                                           ; $59e2: $00
    nop                                           ; $59e3: $00
    or e                                          ; $59e4: $b3
    reti                                          ; $59e5: $d9


    inc bc                                        ; $59e6: $03
    dec c                                         ; $59e7: $0d
    call nz, $9b80                                ; $59e8: $c4 $80 $9b
    di                                            ; $59eb: $f3
    ld a, [c]                                     ; $59ec: $f2
    inc hl                                        ; $59ed: $23
    ld h, c                                       ; $59ee: $61
    rra                                           ; $59ef: $1f
    ld h, d                                       ; $59f0: $62
    add b                                         ; $59f1: $80
    sbc [hl]                                      ; $59f2: $9e
    nop                                           ; $59f3: $00
    ldh a, [$d7]                                  ; $59f4: $f0 $d7
    ld a, [hl]                                    ; $59f6: $7e
    ld [c], a                                     ; $59f7: $e2
    inc hl                                        ; $59f8: $23
    sub e                                         ; $59f9: $93
    pop bc                                        ; $59fa: $c1
    ld a, [$61f0]                                 ; $59fb: $fa $f0 $61
    cp d                                          ; $59fe: $ba
    add sp, -$80                                  ; $59ff: $e8 $80
    sub e                                         ; $5a01: $93
    pop bc                                        ; $5a02: $c1
    ld hl, sp+$00                                 ; $5a03: $f8 $00
    db $10                                        ; $5a05: $10
    ld b, h                                       ; $5a06: $44
    xor d                                         ; $5a07: $aa
    ld h, e                                       ; $5a08: $63
    adc a                                         ; $5a09: $8f
    dec [hl]                                      ; $5a0a: $35
    cp b                                          ; $5a0b: $b8
    rst $38                                       ; $5a0c: $ff
    ld a, [hl-]                                   ; $5a0d: $3a
    and $ff                                       ; $5a0e: $e6 $ff
    rst $38                                       ; $5a10: $ff
    push bc                                       ; $5a11: $c5
    sla h                                         ; $5a12: $cb $24
    inc b                                         ; $5a14: $04
    nop                                           ; $5a15: $00
    cp a                                          ; $5a16: $bf
    rst $38                                       ; $5a17: $ff
    dec [hl]                                      ; $5a18: $35
    ld c, [hl]                                    ; $5a19: $4e
    ld l, d                                       ; $5a1a: $6a
    ld l, d                                       ; $5a1b: $6a
    ccf                                           ; $5a1c: $3f
    db $ec                                        ; $5a1d: $ec
    rst $38                                       ; $5a1e: $ff
    rst $38                                       ; $5a1f: $ff
    add hl, hl                                    ; $5a20: $29
    or c                                          ; $5a21: $b1
    rst $10                                       ; $5a22: $d7
    rst $38                                       ; $5a23: $ff
    scf                                           ; $5a24: $37
    ld sp, hl                                     ; $5a25: $f9
    nop                                           ; $5a26: $00
    call c, $ffff                                 ; $5a27: $dc $ff $ff
    rst $38                                       ; $5a2a: $ff
    rst $38                                       ; $5a2b: $ff
    rst $38                                       ; $5a2c: $ff
    rst $38                                       ; $5a2d: $ff
    rst $38                                       ; $5a2e: $ff
    rst $38                                       ; $5a2f: $ff
    rst $38                                       ; $5a30: $ff
    rst $38                                       ; $5a31: $ff
    rst $38                                       ; $5a32: $ff
    rst $38                                       ; $5a33: $ff
    rst $38                                       ; $5a34: $ff
    rst $38                                       ; $5a35: $ff
    rst $38                                       ; $5a36: $ff
    nop                                           ; $5a37: $00
    rst $38                                       ; $5a38: $ff
    rst $38                                       ; $5a39: $ff
    rst $38                                       ; $5a3a: $ff
    rst $38                                       ; $5a3b: $ff
    rst $38                                       ; $5a3c: $ff
    rst $38                                       ; $5a3d: $ff
    rst $38                                       ; $5a3e: $ff
    rst $38                                       ; $5a3f: $ff
    rst $38                                       ; $5a40: $ff
    rst $38                                       ; $5a41: $ff
    rst $38                                       ; $5a42: $ff
    rst $38                                       ; $5a43: $ff
    rst $38                                       ; $5a44: $ff
    rst $38                                       ; $5a45: $ff
    rst $38                                       ; $5a46: $ff
    rst $38                                       ; $5a47: $ff
    nop                                           ; $5a48: $00
    rst $38                                       ; $5a49: $ff
    rst $38                                       ; $5a4a: $ff
    rst $38                                       ; $5a4b: $ff
    rst $38                                       ; $5a4c: $ff
    nop                                           ; $5a4d: $00
    or e                                          ; $5a4e: $b3
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
    nop                                           ; $5a59: $00
    nop                                           ; $5a5a: $00
    nop                                           ; $5a5b: $00
    db $dd                                        ; $5a5c: $dd
    ld sp, $e4ff                                  ; $5a5d: $31 $ff $e4
    dec hl                                        ; $5a60: $2b
    inc l                                         ; $5a61: $2c
    jr nz, @+$01                                  ; $5a62: $20 $ff

    pop hl                                        ; $5a64: $e1
    ld hl, $e214                                  ; $5a65: $21 $14 $e2
    rst $38                                       ; $5a68: $ff
    ldh [rP1], a                                  ; $5a69: $e0 $00
    rst $38                                       ; $5a6b: $ff
    rst $38                                       ; $5a6c: $ff
    rst $20                                       ; $5a6d: $e7
    and $c0                                       ; $5a6e: $e6 $c0
    push hl                                       ; $5a70: $e5
    rrca                                          ; $5a71: $0f
    dec b                                         ; $5a72: $05
    dec b                                         ; $5a73: $05
    ccf                                           ; $5a74: $3f
    dec b                                         ; $5a75: $05

jr_054_5a76:
    ld [hl+], a                                   ; $5a76: $22
    inc hl                                        ; $5a77: $23
    jr nz, @+$22                                  ; $5a78: $20 $20

    inc h                                         ; $5a7a: $24
    rst $38                                       ; $5a7b: $ff
    ldh [$ca], a                                  ; $5a7c: $e0 $ca
    rst $38                                       ; $5a7e: $ff
    sbc $c0                                       ; $5a7f: $de $c0
    jp hl                                         ; $5a81: $e9


    ld b, a                                       ; $5a82: $47
    ld b, [hl]                                    ; $5a83: $46
    ld b, [hl]                                    ; $5a84: $46
    ld b, a                                       ; $5a85: $47
    ld a, d                                       ; $5a86: $7a
    db $e3                                        ; $5a87: $e3
    ld de, $e312                                  ; $5a88: $11 $12 $e3
    ld hl, $7a22                                  ; $5a8b: $21 $22 $7a
    pop hl                                        ; $5a8e: $e1
    jp z, $e8ff                                   ; $5a8f: $ca $ff $e8

    rst $20                                       ; $5a92: $e7
    ld c, l                                       ; $5a93: $4d
    ld b, [hl]                                    ; $5a94: $46
    ld [hl], $87                                  ; $5a95: $36 $87
    jr nc, jr_054_5ac9                            ; $5a97: $30 $30

    ld [hl], $be                                  ; $5a99: $36 $be
    rst $20                                       ; $5a9b: $e7
    cp a                                          ; $5a9c: $bf
    pop hl                                        ; $5a9d: $e1
    jp z, $e8ff                                   ; $5a9e: $ca $ff $e8

    rst $20                                       ; $5aa1: $e7
    add hl, sp                                    ; $5aa2: $39
    rst $38                                       ; $5aa3: $ff
    ld l, c                                       ; $5aa4: $69
    ld h, [hl]                                    ; $5aa5: $66
    jr nc, @+$32                                  ; $5aa6: $30 $30

    ld l, e                                       ; $5aa8: $6b
    jr nc, jr_054_5ae1                            ; $5aa9: $30 $36

    ld d, l                                       ; $5aab: $55
    ld l, a                                       ; $5aac: $6f
    ld d, h                                       ; $5aad: $54
    ld d, l                                       ; $5aae: $55
    dec sp                                        ; $5aaf: $3b
    ld c, l                                       ; $5ab0: $4d
    di                                            ; $5ab1: $f3
    ret nz                                        ; $5ab2: $c0

    rla                                           ; $5ab3: $17
    jr z, jr_054_5a76                             ; $5ab4: $28 $c0

    rst $38                                       ; $5ab6: $ff
    cp $ea                                        ; $5ab7: $fe $ea
    jp hl                                         ; $5ab9: $e9


    ld d, d                                       ; $5aba: $52
    ld l, c                                       ; $5abb: $69
    ld h, [hl]                                    ; $5abc: $66
    ld l, b                                       ; $5abd: $68
    ld l, b                                       ; $5abe: $68
    ld l, l                                       ; $5abf: $6d
    jr nc, jr_054_5af8                            ; $5ac0: $30 $36

    rst $38                                       ; $5ac2: $ff
    pop hl                                        ; $5ac3: $e1
    ld l, l                                       ; $5ac4: $6d
    ld [hl-], a                                   ; $5ac5: $32
    cp a                                          ; $5ac6: $bf
    ldh [$15], a                                  ; $5ac7: $e0 $15

jr_054_5ac9:
    ld d, $c0                                     ; $5ac9: $16 $c0
    rst $38                                       ; $5acb: $ff
    ret nz                                        ; $5acc: $c0

    db $ec                                        ; $5acd: $ec
    rst $38                                       ; $5ace: $ff
    rra                                           ; $5acf: $1f
    rra                                           ; $5ad0: $1f
    ld l, d                                       ; $5ad1: $6a
    ld l, l                                       ; $5ad2: $6d
    ld l, h                                       ; $5ad3: $6c
    ld l, h                                       ; $5ad4: $6c
    ld l, h                                       ; $5ad5: $6c
    ld l, l                                       ; $5ad6: $6d
    jp Jump_000_3067                              ; $5ad7: $c3 $67 $30


    cp a                                          ; $5ada: $bf
    pop hl                                        ; $5adb: $e1
    ld a, a                                       ; $5adc: $7f
    ldh [$ca], a                                  ; $5add: $e0 $ca
    rst $38                                       ; $5adf: $ff
    ld b, b                                       ; $5ae0: $40

jr_054_5ae1:
    ld [$1f1f], a                                 ; $5ae1: $ea $1f $1f
    ccf                                           ; $5ae4: $3f
    jr nc, @+$6c                                  ; $5ae5: $30 $6a

    ld h, l                                       ; $5ae7: $65
    ld h, l                                       ; $5ae8: $65
    ld h, l                                       ; $5ae9: $65
    ld h, a                                       ; $5aea: $67
    ld a, e                                       ; $5aeb: $7b
    ldh [$7e], a                                  ; $5aec: $e0 $7e
    ldh [$e7], a                                  ; $5aee: $e0 $e7
    dec d                                         ; $5af0: $15
    inc d                                         ; $5af1: $14
    dec b                                         ; $5af2: $05
    jp z, $c0ff                                   ; $5af3: $ca $ff $c0

    ret z                                         ; $5af6: $c8

    ld [hl-], a                                   ; $5af7: $32

jr_054_5af8:
    ld l, d                                       ; $5af8: $6a
    ld l, d                                       ; $5af9: $6a
    ld e, a                                       ; $5afa: $5f
    ld l, d                                       ; $5afb: $6a
    ld l, l                                       ; $5afc: $6d
    jr nc, jr_054_5b65                            ; $5afd: $30 $66

    ld l, e                                       ; $5aff: $6b
    dec a                                         ; $5b00: $3d
    pop hl                                        ; $5b01: $e1
    ld l, d                                       ; $5b02: $6a
    ld a, $e1                                     ; $5b03: $3e $e1
    inc bc                                        ; $5b05: $03
    ld sp, $ca31                                  ; $5b06: $31 $31 $ca
    rst $38                                       ; $5b09: $ff
    nop                                           ; $5b0a: $00
    ret z                                         ; $5b0b: $c8

    cp a                                          ; $5b0c: $bf
    db $e3                                        ; $5b0d: $e3
    ret nz                                        ; $5b0e: $c0

    ld [c], a                                     ; $5b0f: $e2
    pop bc                                        ; $5b10: $c1
    db $e4                                        ; $5b11: $e4
    ret nz                                        ; $5b12: $c0

    rst $38                                       ; $5b13: $ff
    ret nz                                        ; $5b14: $c0

    ret nz                                        ; $5b15: $c0

    xor d                                         ; $5b16: $aa
    ld a, [hl]                                    ; $5b17: $7e
    ld [c], a                                     ; $5b18: $e2
    add b                                         ; $5b19: $80
    pop hl                                        ; $5b1a: $e1
    pop bc                                        ; $5b1b: $c1
    push hl                                       ; $5b1c: $e5
    ret nz                                        ; $5b1d: $c0

    rst $38                                       ; $5b1e: $ff
    add b                                         ; $5b1f: $80
    xor e                                         ; $5b20: $ab
    ld c, l                                       ; $5b21: $4d
    ld b, [hl]                                    ; $5b22: $46
    ld h, b                                       ; $5b23: $60
    ld b, e                                       ; $5b24: $43
    ret nz                                        ; $5b25: $c0

    cp $e0                                        ; $5b26: $fe $e0
    ld b, b                                       ; $5b28: $40
    jp nz, $ffc0                                  ; $5b29: $c2 $c0 $ff

    db $ec                                        ; $5b2c: $ec
    db $eb                                        ; $5b2d: $eb
    ld [de], a                                    ; $5b2e: $12
    ld de, $85fe                                  ; $5b2f: $11 $fe $85
    ld h, h                                       ; $5b32: $64
    ld a, [hl]                                    ; $5b33: $7e
    and e                                         ; $5b34: $a3
    nop                                           ; $5b35: $00
    and b                                         ; $5b36: $a0
    ld c, $ca                                     ; $5b37: $0e $ca
    rst $38                                       ; $5b39: $ff
    add sp, -$19                                  ; $5b3a: $e8 $e7
    ld [hl+], a                                   ; $5b3c: $22
    ld hl, $e2be                                  ; $5b3d: $21 $be $e2
    dec sp                                        ; $5b40: $3b
    ld h, d                                       ; $5b41: $62
    ld h, d                                       ; $5b42: $62
    ld b, b                                       ; $5b43: $40
    and h                                         ; $5b44: $a4
    inc h                                         ; $5b45: $24
    inc h                                         ; $5b46: $24
    inc hl                                        ; $5b47: $23
    set 7, a                                      ; $5b48: $cb $ff
    jp hl                                         ; $5b4a: $e9


    add sp, -$01                                  ; $5b4b: $e8 $ff
    jr nz, jr_054_5b5f                            ; $5b4d: $20 $10

    ld [hl+], a                                   ; $5b4f: $22
    ld hl, $3101                                  ; $5b50: $21 $01 $31
    ld e, [hl]                                    ; $5b53: $5e
    ld e, e                                       ; $5b54: $5b
    rst $18                                       ; $5b55: $df
    ld e, e                                       ; $5b56: $5b
    ld e, [hl]                                    ; $5b57: $5e
    ld sp, $2101                                  ; $5b58: $31 $01 $21
    cp a                                          ; $5b5b: $bf
    add c                                         ; $5b5c: $81
    jr nz, @+$0c                                  ; $5b5d: $20 $0a

jr_054_5b5f:
    pop af                                        ; $5b5f: $f1
    dec bc                                        ; $5b60: $0b
    jp z, $e8ff                                   ; $5b61: $ca $ff $e8

    rst $20                                       ; $5b64: $e7

jr_054_5b65:
    adc c                                         ; $5b65: $89
    add b                                         ; $5b66: $80
    rrca                                          ; $5b67: $0f
    ld sp, $5f31                                  ; $5b68: $31 $31 $5f
    scf                                           ; $5b6b: $37
    ld e, e                                       ; $5b6c: $5b
    ld e, e                                       ; $5b6d: $5b
    ld e, a                                       ; $5b6e: $5f
    ld a, h                                       ; $5b6f: $7c
    add e                                         ; $5b70: $83
    ld a, [bc]                                    ; $5b71: $0a
    dec bc                                        ; $5b72: $0b
    nop                                           ; $5b73: $00
    rst $38                                       ; $5b74: $ff
    rst $38                                       ; $5b75: $ff
    rst $38                                       ; $5b76: $ff
    nop                                           ; $5b77: $00
    rst $38                                       ; $5b78: $ff
    rst $38                                       ; $5b79: $ff
    rst $38                                       ; $5b7a: $ff
    rst $38                                       ; $5b7b: $ff
    rst $38                                       ; $5b7c: $ff
    rst $38                                       ; $5b7d: $ff
    rst $38                                       ; $5b7e: $ff
    rst $38                                       ; $5b7f: $ff
    rst $38                                       ; $5b80: $ff
    rst $38                                       ; $5b81: $ff
    rst $38                                       ; $5b82: $ff
    rst $38                                       ; $5b83: $ff
    rst $38                                       ; $5b84: $ff
    rst $38                                       ; $5b85: $ff
    rst $38                                       ; $5b86: $ff
    rst $38                                       ; $5b87: $ff
    nop                                           ; $5b88: $00
    rst $38                                       ; $5b89: $ff
    rst $38                                       ; $5b8a: $ff
    rst $38                                       ; $5b8b: $ff
    rst $38                                       ; $5b8c: $ff
    rst $38                                       ; $5b8d: $ff
    rst $38                                       ; $5b8e: $ff
    rst $38                                       ; $5b8f: $ff
    rst $38                                       ; $5b90: $ff
    rst $38                                       ; $5b91: $ff
    rst $38                                       ; $5b92: $ff
    rst $38                                       ; $5b93: $ff
    rst $38                                       ; $5b94: $ff
    rst $38                                       ; $5b95: $ff
    rst $38                                       ; $5b96: $ff
    rst $38                                       ; $5b97: $ff
    rst $38                                       ; $5b98: $ff
    nop                                           ; $5b99: $00
    rst $38                                       ; $5b9a: $ff
    rst $38                                       ; $5b9b: $ff
    rst $38                                       ; $5b9c: $ff
    rst $38                                       ; $5b9d: $ff
    rst $38                                       ; $5b9e: $ff
    rst $38                                       ; $5b9f: $ff
    rst $38                                       ; $5ba0: $ff
    rst $38                                       ; $5ba1: $ff
    rst $38                                       ; $5ba2: $ff
    rst $38                                       ; $5ba3: $ff
    rst $38                                       ; $5ba4: $ff
    rst $38                                       ; $5ba5: $ff
    rst $38                                       ; $5ba6: $ff
    rst $38                                       ; $5ba7: $ff

Call_054_5ba8:
    rst $38                                       ; $5ba8: $ff
    rst $38                                       ; $5ba9: $ff
    nop                                           ; $5baa: $00
    rst $38                                       ; $5bab: $ff
    rst $38                                       ; $5bac: $ff
    rst $38                                       ; $5bad: $ff
    rst $38                                       ; $5bae: $ff
    rst $38                                       ; $5baf: $ff
    rst $38                                       ; $5bb0: $ff
    rst $38                                       ; $5bb1: $ff
    rst $38                                       ; $5bb2: $ff
    rst $38                                       ; $5bb3: $ff
    rst $38                                       ; $5bb4: $ff
    rst $38                                       ; $5bb5: $ff
    rst $38                                       ; $5bb6: $ff
    rst $38                                       ; $5bb7: $ff
    rst $38                                       ; $5bb8: $ff
    rst $38                                       ; $5bb9: $ff
    rst $38                                       ; $5bba: $ff
    nop                                           ; $5bbb: $00
    rst $38                                       ; $5bbc: $ff
    rst $38                                       ; $5bbd: $ff
    rst $38                                       ; $5bbe: $ff
    rst $38                                       ; $5bbf: $ff
    rst $38                                       ; $5bc0: $ff
    rst $38                                       ; $5bc1: $ff
    rst $38                                       ; $5bc2: $ff
    rst $38                                       ; $5bc3: $ff
    rst $38                                       ; $5bc4: $ff
    rst $38                                       ; $5bc5: $ff
    rst $38                                       ; $5bc6: $ff
    rst $38                                       ; $5bc7: $ff
    rst $38                                       ; $5bc8: $ff
    rst $38                                       ; $5bc9: $ff
    rst $38                                       ; $5bca: $ff
    rst $38                                       ; $5bcb: $ff
    nop                                           ; $5bcc: $00
    rst $38                                       ; $5bcd: $ff
    rst $38                                       ; $5bce: $ff
    rst $38                                       ; $5bcf: $ff
    rst $38                                       ; $5bd0: $ff
    rst $38                                       ; $5bd1: $ff
    rst $38                                       ; $5bd2: $ff
    rst $38                                       ; $5bd3: $ff
    rst $38                                       ; $5bd4: $ff
    rst $38                                       ; $5bd5: $ff
    rst $38                                       ; $5bd6: $ff
    rst $38                                       ; $5bd7: $ff
    rst $38                                       ; $5bd8: $ff
    rst $38                                       ; $5bd9: $ff
    rst $38                                       ; $5bda: $ff
    rst $38                                       ; $5bdb: $ff
    rst $38                                       ; $5bdc: $ff
    nop                                           ; $5bdd: $00
    rst $38                                       ; $5bde: $ff
    rst $38                                       ; $5bdf: $ff
    rst $38                                       ; $5be0: $ff
    rst $38                                       ; $5be1: $ff
    rst $38                                       ; $5be2: $ff
    rst $38                                       ; $5be3: $ff
    rst $38                                       ; $5be4: $ff
    rst $38                                       ; $5be5: $ff
    rst $38                                       ; $5be6: $ff
    rst $38                                       ; $5be7: $ff
    rst $38                                       ; $5be8: $ff
    rst $38                                       ; $5be9: $ff
    rst $38                                       ; $5bea: $ff
    rst $38                                       ; $5beb: $ff
    rst $38                                       ; $5bec: $ff
    rst $38                                       ; $5bed: $ff
    nop                                           ; $5bee: $00
    rst $38                                       ; $5bef: $ff
    rst $38                                       ; $5bf0: $ff
    rst $38                                       ; $5bf1: $ff
    rst $38                                       ; $5bf2: $ff
    rst $38                                       ; $5bf3: $ff
    rst $38                                       ; $5bf4: $ff
    rst $38                                       ; $5bf5: $ff
    rst $38                                       ; $5bf6: $ff
    rst $38                                       ; $5bf7: $ff
    rst $38                                       ; $5bf8: $ff
    rst $38                                       ; $5bf9: $ff
    rst $38                                       ; $5bfa: $ff
    rst $38                                       ; $5bfb: $ff
    rst $38                                       ; $5bfc: $ff
    rst $38                                       ; $5bfd: $ff
    rst $38                                       ; $5bfe: $ff
    nop                                           ; $5bff: $00
    rst $38                                       ; $5c00: $ff
    rst $38                                       ; $5c01: $ff
    rst $38                                       ; $5c02: $ff
    rst $38                                       ; $5c03: $ff
    rst $38                                       ; $5c04: $ff
    rst $38                                       ; $5c05: $ff
    rst $38                                       ; $5c06: $ff
    rst $38                                       ; $5c07: $ff
    rst $38                                       ; $5c08: $ff
    rst $38                                       ; $5c09: $ff
    rst $38                                       ; $5c0a: $ff
    rst $38                                       ; $5c0b: $ff
    rst $38                                       ; $5c0c: $ff
    rst $38                                       ; $5c0d: $ff
    rst $38                                       ; $5c0e: $ff
    rst $38                                       ; $5c0f: $ff
    nop                                           ; $5c10: $00
    rst $38                                       ; $5c11: $ff
    rst $38                                       ; $5c12: $ff
    rst $38                                       ; $5c13: $ff
    rst $38                                       ; $5c14: $ff
    rst $38                                       ; $5c15: $ff
    rst $38                                       ; $5c16: $ff
    rst $38                                       ; $5c17: $ff
    rst $38                                       ; $5c18: $ff
    rst $38                                       ; $5c19: $ff
    rst $38                                       ; $5c1a: $ff
    rst $38                                       ; $5c1b: $ff
    rst $38                                       ; $5c1c: $ff
    rst $38                                       ; $5c1d: $ff
    rst $38                                       ; $5c1e: $ff
    rst $38                                       ; $5c1f: $ff
    rst $38                                       ; $5c20: $ff
    nop                                           ; $5c21: $00
    rst $38                                       ; $5c22: $ff
    rst $38                                       ; $5c23: $ff
    rst $38                                       ; $5c24: $ff
    rst $38                                       ; $5c25: $ff
    rst $38                                       ; $5c26: $ff
    rst $38                                       ; $5c27: $ff
    rst $38                                       ; $5c28: $ff
    rst $38                                       ; $5c29: $ff
    rst $38                                       ; $5c2a: $ff
    rst $38                                       ; $5c2b: $ff
    rst $38                                       ; $5c2c: $ff
    rst $38                                       ; $5c2d: $ff
    rst $38                                       ; $5c2e: $ff
    rst $38                                       ; $5c2f: $ff
    rst $38                                       ; $5c30: $ff
    rst $38                                       ; $5c31: $ff
    nop                                           ; $5c32: $00
    rst $38                                       ; $5c33: $ff
    rst $38                                       ; $5c34: $ff
    rst $38                                       ; $5c35: $ff
    push af                                       ; $5c36: $f5
    nop                                           ; $5c37: $00
    nop                                           ; $5c38: $00
    nop                                           ; $5c39: $00
    and l                                         ; $5c3a: $a5
    nop                                           ; $5c3b: $00
    rst $38                                       ; $5c3c: $ff
    push hl                                       ; $5c3d: $e5
    ld [hl-], a                                   ; $5c3e: $32
    or $e6                                        ; $5c3f: $f6 $e6
    rst $30                                       ; $5c41: $f7
    rst $20                                       ; $5c42: $e7
    dec [hl]                                      ; $5c43: $35
    db $ec                                        ; $5c44: $ec
    xor $37                                       ; $5c45: $ee $37
    db $ec                                        ; $5c47: $ec
    jp c, $c7f0                                   ; $5c48: $da $f0 $c7

    add sp, $33                                   ; $5c4b: $e8 $33
    ld sp, $f2e0                                  ; $5c4d: $31 $e0 $f2
    ld [hl], $30                                  ; $5c50: $36 $30
    scf                                           ; $5c52: $37
    cp a                                          ; $5c53: $bf
    ld h, $20                                     ; $5c54: $26 $20
    daa                                           ; $5c56: $27
    db $10                                        ; $5c57: $10
    ld d, $17                                     ; $5c58: $16 $17
    jp nz, Jump_000_34f6                          ; $5c5a: $c2 $f6 $34

    rst $38                                       ; $5c5d: $ff
    ld [hl], $32                                  ; $5c5e: $36 $32
    jr nc, jr_054_5c99                            ; $5c60: $30 $37

    ld sp, $3133                                  ; $5c62: $31 $33 $31
    inc sp                                        ; $5c65: $33
    nop                                           ; $5c66: $00
    and b                                         ; $5c67: $a0
    ei                                            ; $5c68: $fb
    rst $38                                       ; $5c69: $ff
    rst $28                                       ; $5c6a: $ef
    nop                                           ; $5c6b: $00
    nop                                           ; $5c6c: $00
    nop                                           ; $5c6d: $00
    halt                                          ; $5c6e: $76
    ld e, h                                       ; $5c6f: $5c
    ld d, $61                                     ; $5c70: $16 $61
    ld [$0566], a                                 ; $5c72: $ea $66 $05
    ld h, a                                       ; $5c75: $67
    cp a                                          ; $5c76: $bf
    dec c                                         ; $5c77: $0d
    dec c                                         ; $5c78: $0d
    dec c                                         ; $5c79: $0d
    ld c, $0e                                     ; $5c7a: $0e $0e
    ld c, $fa                                     ; $5c7c: $0e $fa
    ld [$c34d], a                                 ; $5c7e: $ea $4d $c3
    ld c, l                                       ; $5c81: $4d
    ld c, l                                       ; $5c82: $4d
    ld [$e9e0], a                                 ; $5c83: $ea $e0 $e9
    ldh [$fd], a                                  ; $5c86: $e0 $fd
    pop hl                                        ; $5c88: $e1
    rst $30                                       ; $5c89: $f7
    and $0e                                       ; $5c8a: $e6 $0e
    ld c, $00                                     ; $5c8c: $0e $00
    ld [$d5e0], a                                 ; $5c8e: $ea $e0 $d5
    ld [c], a                                     ; $5c91: $e2
    ret nc                                        ; $5c92: $d0

    db $ec                                        ; $5c93: $ec
    db $fd                                        ; $5c94: $fd
    xor $cf                                       ; $5c95: $ee $cf
    and $ba                                       ; $5c97: $e6 $ba

jr_054_5c99:
    pop hl                                        ; $5c99: $e1
    db $fc                                        ; $5c9a: $fc
    db $e3                                        ; $5c9b: $e3
    cp l                                          ; $5c9c: $bd
    push hl                                       ; $5c9d: $e5
    jr nz, @+$01                                  ; $5c9e: $20 $ff

    rst $38                                       ; $5ca0: $ff
    ret nz                                        ; $5ca1: $c0

    rst $20                                       ; $5ca2: $e7
    ld a, e                                       ; $5ca3: $7b
    ldh [rPCM12], a                               ; $5ca4: $e0 $76
    ldh [$fd], a                                  ; $5ca6: $e0 $fd
    pop hl                                        ; $5ca8: $e1
    dec l                                         ; $5ca9: $2d
    ret nz                                        ; $5caa: $c0

    ei                                            ; $5cab: $fb
    dec a                                         ; $5cac: $3d
    rst $28                                       ; $5cad: $ef
    cp $46                                        ; $5cae: $fe $46
    db $e3                                        ; $5cb0: $e3
    ld l, l                                       ; $5cb1: $6d
    ld l, e                                       ; $5cb2: $6b
    ld l, e                                       ; $5cb3: $6b
    dec hl                                        ; $5cb4: $2b
    ld a, [bc]                                    ; $5cb5: $0a
    ld a, [hl+]                                   ; $5cb6: $2a
    dec bc                                        ; $5cb7: $0b
    inc bc                                        ; $5cb8: $03
    ld l, e                                       ; $5cb9: $6b
    ld l, e                                       ; $5cba: $6b
    cp a                                          ; $5cbb: $bf
    ldh [$35], a                                  ; $5cbc: $e0 $35
    ld [c], a                                     ; $5cbe: $e2
    ld b, e                                       ; $5cbf: $43
    ldh a, [$3f]                                  ; $5cc0: $f0 $3f
    xor $d6                                       ; $5cc2: $ee $d6
    db $e3                                        ; $5cc4: $e3
    nop                                           ; $5cc5: $00
    pop hl                                        ; $5cc6: $e1
    rst $38                                       ; $5cc7: $ff
    ld l, l                                       ; $5cc8: $6d
    dec c                                         ; $5cc9: $0d
    dec hl                                        ; $5cca: $2b
    dec bc                                        ; $5ccb: $0b
    ld l, e                                       ; $5ccc: $6b
    ld a, [bc]                                    ; $5ccd: $0a
    ld a, [hl+]                                   ; $5cce: $2a
    ld c, e                                       ; $5ccf: $4b
    jp Jump_000_0d0b                              ; $5cd0: $c3 $0b $0d


    cp a                                          ; $5cd3: $bf
    pop hl                                        ; $5cd4: $e1
    rlca                                          ; $5cd5: $07
    db $e4                                        ; $5cd6: $e4
    ld b, e                                       ; $5cd7: $43
    rst $38                                       ; $5cd8: $ff
    call nc, $6dc5                                ; $5cd9: $d4 $c5 $6d
    ld l, e                                       ; $5cdc: $6b
    ld a, a                                       ; $5cdd: $7f
    dec c                                         ; $5cde: $0d
    ld a, [bc]                                    ; $5cdf: $0a
    ld a, [hl+]                                   ; $5ce0: $2a
    dec hl                                        ; $5ce1: $2b
    dec hl                                        ; $5ce2: $2b
    dec bc                                        ; $5ce3: $0b
    dec bc                                        ; $5ce4: $0b
    ret nz                                        ; $5ce5: $c0

    ldh [$81], a                                  ; $5ce6: $e0 $81
    ld l, e                                       ; $5ce8: $6b
    ld a, $e1                                     ; $5ce9: $3e $e1
    ld b, e                                       ; $5ceb: $43
    rst $38                                       ; $5cec: $ff
    ld [hl], h                                    ; $5ced: $74
    jp nz, $c184                                  ; $5cee: $c2 $84 $c1

    ld l, a                                       ; $5cf1: $6f
    pop bc                                        ; $5cf2: $c1
    ld c, b                                       ; $5cf3: $48
    ldh [rWY], a                                  ; $5cf4: $e0 $4a
    db $fd                                        ; $5cf6: $fd
    ld a, [bc]                                    ; $5cf7: $0a
    jp nz, Jump_000_0be0                          ; $5cf8: $c2 $e0 $0b

    dec hl                                        ; $5cfb: $2b
    ld l, e                                       ; $5cfc: $6b
    ld l, e                                       ; $5cfd: $6b
    ld l, e                                       ; $5cfe: $6b
    ld l, l                                       ; $5cff: $6d

Call_054_5d00:
    ld [de], a                                    ; $5d00: $12
    ld [hl], b                                    ; $5d01: $70
    jp Jump_054_7b4d                              ; $5d02: $c3 $4d $7b


    rst $00                                       ; $5d05: $c7
    add b                                         ; $5d06: $80
    jp nc, $df4d                                  ; $5d07: $d2 $4d $df

    ldh [rOBP0], a                                ; $5d0a: $e0 $48
    push bc                                       ; $5d0c: $c5
    adc c                                         ; $5d0d: $89
    pop hl                                        ; $5d0e: $e1
    ld e, $02                                     ; $5d0f: $1e $02
    ldh [rWX], a                                  ; $5d11: $e0 $4b
    ld c, e                                       ; $5d13: $4b
    ld c, e                                       ; $5d14: $4b
    ld l, e                                       ; $5d15: $6b
    ccf                                           ; $5d16: $3f
    ldh [$bc], a                                  ; $5d17: $e0 $bc
    jp $e1c0                                      ; $5d19: $c3 $c0 $e1


    jr c, jr_054_5d61                             ; $5d1c: $38 $43

    rst $38                                       ; $5d1e: $ff
    ld c, b                                       ; $5d1f: $48
    push bc                                       ; $5d20: $c5
    ccf                                           ; $5d21: $3f
    ld [c], a                                     ; $5d22: $e2
    ld c, e                                       ; $5d23: $4b
    ld l, e                                       ; $5d24: $6b
    dec bc                                        ; $5d25: $0b
    ret nz                                        ; $5d26: $c0

    ldh [$bc], a                                  ; $5d27: $e0 $bc
    push bc                                       ; $5d29: $c5
    and b                                         ; $5d2a: $a0
    dec sp                                        ; $5d2b: $3b
    jp nc, $a6bd                                  ; $5d2c: $d2 $bd $a6

    inc e                                         ; $5d2f: $1c
    push bc                                       ; $5d30: $c5
    ld b, a                                       ; $5d31: $47

jr_054_5d32:
    ret nz                                        ; $5d32: $c0

    jp nz, $6bc0                                  ; $5d33: $c2 $c0 $6b

    ret z                                         ; $5d36: $c8

    pop hl                                        ; $5d37: $e1
    dec hl                                        ; $5d38: $2b
    inc sp                                        ; $5d39: $33
    ld c, e                                       ; $5d3a: $4b
    ld c, e                                       ; $5d3b: $4b
    ld a, [$bce1]                                 ; $5d3c: $fa $e1 $bc
    ldh [rKEY1], a                                ; $5d3f: $e0 $4d
    dec l                                         ; $5d41: $2d
    ld h, e                                       ; $5d42: $63
    pop hl                                        ; $5d43: $e1
    ldh a, [$a6]                                  ; $5d44: $f0 $a6
    ld hl, sp-$80                                 ; $5d46: $f8 $80
    rst $08                                       ; $5d48: $cf
    adc l                                         ; $5d49: $8d
    xor b                                         ; $5d4a: $a8
    jp nz, Jump_000_0bc0                          ; $5d4b: $c2 $c0 $0b

    inc c                                         ; $5d4e: $0c
    inc c                                         ; $5d4f: $0c
    inc l                                         ; $5d50: $2c
    inc l                                         ; $5d51: $2c
    ld h, e                                       ; $5d52: $63
    ld l, e                                       ; $5d53: $6b
    dec hl                                        ; $5d54: $2b

Jump_054_5d55:
    ret nz                                        ; $5d55: $c0

    ld [c], a                                     ; $5d56: $e2
    db $fc                                        ; $5d57: $fc
    ret nz                                        ; $5d58: $c0

    cp d                                          ; $5d59: $ba
    ldh [rKEY1], a                                ; $5d5a: $e0 $4d
    dec l                                         ; $5d5c: $2d
    ld l, [hl]                                    ; $5d5d: $6e
    and l                                         ; $5d5e: $a5
    db $ec                                        ; $5d5f: $ec
    or [hl]                                       ; $5d60: $b6

jr_054_5d61:
    ret c                                         ; $5d61: $d8

    rlca                                          ; $5d62: $07
    push bc                                       ; $5d63: $c5
    dec bc                                        ; $5d64: $0b
    inc l                                         ; $5d65: $2c
    pop bc                                        ; $5d66: $c1
    ldh [$2c], a                                  ; $5d67: $e0 $2c
    inc c                                         ; $5d69: $0c
    inc c                                         ; $5d6a: $0c
    inc hl                                        ; $5d6b: $23
    ld l, e                                       ; $5d6c: $6b
    ld c, e                                       ; $5d6d: $4b
    cp a                                          ; $5d6e: $bf
    ret nz                                        ; $5d6f: $c0

    jr c, jr_054_5d32                             ; $5d70: $38 $c0

    dec sp                                        ; $5d72: $3b
    ldh [rWX], a                                  ; $5d73: $e0 $4b
    cp e                                          ; $5d75: $bb
    call nz, $ab4b                                ; $5d76: $c4 $4b $ab
    sbc h                                         ; $5d79: $9c
    nop                                           ; $5d7a: $00
    xor h                                         ; $5d7b: $ac
    rlca                                          ; $5d7c: $07
    jp nz, Jump_000_0b0b                          ; $5d7d: $c2 $0b $0b

    ld c, e                                       ; $5d80: $4b
    ret nz                                        ; $5d81: $c0

    ldh [rIE], a                                  ; $5d82: $e0 $ff
    ldh [$6c], a                                  ; $5d84: $e0 $6c
    add hl, sp                                    ; $5d86: $39
    ld c, h                                       ; $5d87: $4c
    ld b, b                                       ; $5d88: $40
    ldh [$7f], a                                  ; $5d89: $e0 $7f
    ret nz                                        ; $5d8b: $c0

    dec hl                                        ; $5d8c: $2b
    ld a, [bc]                                    ; $5d8d: $0a
    ld c, d                                       ; $5d8e: $4a
    ret nz                                        ; $5d8f: $c0

    pop hl                                        ; $5d90: $e1
    ld a, a                                       ; $5d91: $7f
    ldh [$4c], a                                  ; $5d92: $e0 $4c
    nop                                           ; $5d94: $00
    cp e                                          ; $5d95: $bb
    adc c                                         ; $5d96: $89
    and e                                         ; $5d97: $a3
    dec c                                         ; $5d98: $0d
    ld c, e                                       ; $5d99: $4b
    call nz, $c0e1                                ; $5d9a: $c4 $e1 $c0
    pop hl                                        ; $5d9d: $e1
    inc l                                         ; $5d9e: $2c
    ld bc, $1be0                                  ; $5d9f: $01 $e0 $1b
    ld c, e                                       ; $5da2: $4b
    dec hl                                        ; $5da3: $2b
    ccf                                           ; $5da4: $3f
    ret nz                                        ; $5da5: $c0

    ld c, d                                       ; $5da6: $4a
    ld a, [bc]                                    ; $5da7: $0a
    ld a, [c]                                     ; $5da8: $f2
    ret nz                                        ; $5da9: $c0

    ret nz                                        ; $5daa: $c0

    pop hl                                        ; $5dab: $e1
    cp e                                          ; $5dac: $bb
    cp e                                          ; $5dad: $bb
    add b                                         ; $5dae: $80
    ld b, a                                       ; $5daf: $47
    call nz, $e284                                ; $5db0: $c4 $84 $e2
    add b                                         ; $5db3: $80
    pop hl                                        ; $5db4: $e1
    add c                                         ; $5db5: $81
    pop hl                                        ; $5db6: $e1
    ret nz                                        ; $5db7: $c0

    ldh [rSTAT], a                                ; $5db8: $e0 $41
    ldh [$3b], a                                  ; $5dba: $e0 $3b
    ret nz                                        ; $5dbc: $c0

    ld l, l                                       ; $5dbd: $6d
    pop hl                                        ; $5dbe: $e1
    dec c                                         ; $5dbf: $0d
    ret nz                                        ; $5dc0: $c0

    db $f4                                        ; $5dc1: $f4
    ld b, e                                       ; $5dc2: $43
    add sp, -$39                                  ; $5dc3: $e8 $c7
    and d                                         ; $5dc5: $a2
    ld b, h                                       ; $5dc6: $44
    db $e4                                        ; $5dc7: $e4
    ld l, h                                       ; $5dc8: $6c
    ld c, h                                       ; $5dc9: $4c
    ld c, h                                       ; $5dca: $4c
    ld sp, $020c                                  ; $5dcb: $31 $0c $02
    ret nz                                        ; $5dce: $c0

    ccf                                           ; $5dcf: $3f
    ldh [$7c], a                                  ; $5dd0: $e0 $7c
    and b                                         ; $5dd2: $a0
    ld l, e                                       ; $5dd3: $6b
    ld c, e                                       ; $5dd4: $4b
    add c                                         ; $5dd5: $81
    ret                                           ; $5dd6: $c9


    nop                                           ; $5dd7: $00
    or d                                          ; $5dd8: $b2
    call z, $a2c3                                 ; $5dd9: $cc $c3 $a2
    adc h                                         ; $5ddc: $8c
    add b                                         ; $5ddd: $80
    dec l                                         ; $5dde: $2d
    dec bc                                        ; $5ddf: $0b
    rst $00                                       ; $5de0: $c7
    ldh [rDIV], a                                 ; $5de1: $e0 $04
    ldh [$0b], a                                  ; $5de3: $e0 $0b
    dec hl                                        ; $5de5: $2b
    inc hl                                        ; $5de6: $23
    ld c, h                                       ; $5de7: $4c
    ld l, h                                       ; $5de8: $6c
    ld b, b                                       ; $5de9: $40
    pop hl                                        ; $5dea: $e1
    add b                                         ; $5deb: $80
    pop bc                                        ; $5dec: $c1
    xor $c0                                       ; $5ded: $ee $c0
    ld l, l                                       ; $5def: $6d
    rst $28                                       ; $5df0: $ef
    ld l, c                                       ; $5df1: $69
    add hl, bc                                    ; $5df2: $09
    sub c                                         ; $5df3: $91
    inc d                                         ; $5df4: $14
    add e                                         ; $5df5: $83
    and l                                         ; $5df6: $a5
    cp a                                          ; $5df7: $bf
    ldh [$6c], a                                  ; $5df8: $e0 $6c
    inc b                                         ; $5dfa: $04
    pop hl                                        ; $5dfb: $e1
    ld l, e                                       ; $5dfc: $6b
    add a                                         ; $5dfd: $87
    ret nz                                        ; $5dfe: $c0

    pop bc                                        ; $5dff: $c1
    pop bc                                        ; $5e00: $c1
    ld l, a                                       ; $5e01: $6f
    ldh [rSC], a                                  ; $5e02: $e0 $02
    add b                                         ; $5e04: $80
    ret nz                                        ; $5e05: $c0

    dec bc                                        ; $5e06: $0b
    ld b, c                                       ; $5e07: $41
    rst $00                                       ; $5e08: $c7
    add b                                         ; $5e09: $80
    sub $8e                                       ; $5e0a: $d6 $8e
    ld h, l                                       ; $5e0c: $65
    add e                                         ; $5e0d: $83
    jp nz, $e0c0                                  ; $5e0e: $c2 $c0 $e0

    ld c, c                                       ; $5e11: $49
    pop hl                                        ; $5e12: $e1
    nop                                           ; $5e13: $00
    pop bc                                        ; $5e14: $c1
    add b                                         ; $5e15: $80
    add d                                         ; $5e16: $82
    pop hl                                        ; $5e17: $e1
    ld a, a                                       ; $5e18: $7f
    pop hl                                        ; $5e19: $e1
    ld b, l                                       ; $5e1a: $45
    and d                                         ; $5e1b: $a2
    inc de                                        ; $5e1c: $13
    sub b                                         ; $5e1d: $90
    dec a                                         ; $5e1e: $3d
    xor $3f                                       ; $5e1f: $ee $3f
    ldh [$03], a                                  ; $5e21: $e0 $03
    pop bc                                        ; $5e23: $c1
    jr @+$47                                      ; $5e24: $18 $45

    and c                                         ; $5e26: $a1
    inc bc                                        ; $5e27: $03
    pop hl                                        ; $5e28: $e1
    ret nz                                        ; $5e29: $c0

    and b                                         ; $5e2a: $a0
    ld c, e                                       ; $5e2b: $4b
    dec c                                         ; $5e2c: $0d
    ccf                                           ; $5e2d: $3f
    db $e4                                        ; $5e2e: $e4
    add b                                         ; $5e2f: $80
    call c, Call_054_6106                         ; $5e30: $dc $06 $61
    inc e                                         ; $5e33: $1c
    sub b                                         ; $5e34: $90
    ld h, b                                       ; $5e35: $60
    cp $c0                                        ; $5e36: $fe $c0
    ld c, h                                       ; $5e38: $4c
    ld l, h                                       ; $5e39: $6c
    ld c, h                                       ; $5e3a: $4c
    dec b                                         ; $5e3b: $05
    pop bc                                        ; $5e3c: $c1
    ret nz                                        ; $5e3d: $c0

    ld [c], a                                     ; $5e3e: $e2
    db $fd                                        ; $5e3f: $fd
    and b                                         ; $5e40: $a0
    ldh [$c0], a                                  ; $5e41: $e0 $c0
    ldh [$80], a                                  ; $5e43: $e0 $80
    and d                                         ; $5e45: $a2
    add b                                         ; $5e46: $80
    ret c                                         ; $5e47: $d8

    ret                                           ; $5e48: $c9


    ld b, c                                       ; $5e49: $41
    cp $c6                                        ; $5e4a: $fe $c6
    dec bc                                        ; $5e4c: $0b
    ld c, h                                       ; $5e4d: $4c
    ld l, h                                       ; $5e4e: $6c
    db $10                                        ; $5e4f: $10
    add l                                         ; $5e50: $85
    add b                                         ; $5e51: $80
    ret nz                                        ; $5e52: $c0

    ld [c], a                                     ; $5e53: $e2
    inc a                                         ; $5e54: $3c
    and b                                         ; $5e55: $a0
    cp b                                          ; $5e56: $b8
    pop hl                                        ; $5e57: $e1
    ld c, e                                       ; $5e58: $4b
    cp $80                                        ; $5e59: $fe $80
    db $ec                                        ; $5e5b: $ec
    ld b, [hl]                                    ; $5e5c: $46
    add b                                         ; $5e5d: $80
    jp nc, $8c06                                  ; $5e5e: $d2 $06 $8c

    ld b, a                                       ; $5e61: $47
    ld c, l                                       ; $5e62: $4d
    dec l                                         ; $5e63: $2d
    add l                                         ; $5e64: $85
    pop hl                                        ; $5e65: $e1
    ld b, e                                       ; $5e66: $43
    add $3e                                       ; $5e67: $c6 $3e
    jp nz, Jump_054_626e                          ; $5e69: $c2 $6e $62

    cp b                                          ; $5e6c: $b8
    ld e, c                                       ; $5e6d: $59
    inc b                                         ; $5e6e: $04
    ret nz                                        ; $5e6f: $c0

    and $fb                                       ; $5e70: $e6 $fb
    and e                                         ; $5e72: $a3
    ld l, e                                       ; $5e73: $6b
    ld b, $81                                     ; $5e74: $06 $81
    ld [bc], a                                    ; $5e76: $02
    pop bc                                        ; $5e77: $c1
    db $fc                                        ; $5e78: $fc
    ld [c], a                                     ; $5e79: $e2
    ret nz                                        ; $5e7a: $c0

    and $bb                                       ; $5e7b: $e6 $bb
    add e                                         ; $5e7d: $83
    ld d, b                                       ; $5e7e: $50
    jp Jump_054_5d55                              ; $5e7f: $c3 $55 $5d


    add d                                         ; $5e82: $82
    cp e                                          ; $5e83: $bb
    and e                                         ; $5e84: $a3
    add b                                         ; $5e85: $80
    ld [c], a                                     ; $5e86: $e2
    dec c                                         ; $5e87: $0d
    cp a                                          ; $5e88: $bf
    jp nz, Jump_000_352b                          ; $5e89: $c2 $2b $35

    pop hl                                        ; $5e8c: $e1
    add l                                         ; $5e8d: $85
    ld c, e                                       ; $5e8e: $4b
    xor $41                                       ; $5e8f: $ee $41
    dec c                                         ; $5e91: $0d
    ld a, h                                       ; $5e92: $7c
    and c                                         ; $5e93: $a1
    nop                                           ; $5e94: $00
    cp b                                          ; $5e95: $b8
    ret nz                                        ; $5e96: $c0

    rst $20                                       ; $5e97: $e7
    dec b                                         ; $5e98: $05
    jp Jump_000_000d                              ; $5e99: $c3 $0d $00


    cp a                                          ; $5e9c: $bf
    jp nz, $80fe                                  ; $5e9d: $c2 $fe $80

    ld a, b                                       ; $5ea0: $78
    ld h, c                                       ; $5ea1: $61
    rst $38                                       ; $5ea2: $ff
    ld h, d                                       ; $5ea3: $62
    ret nz                                        ; $5ea4: $c0

    db $e3                                        ; $5ea5: $e3
    cp b                                          ; $5ea6: $b8
    ld d, h                                       ; $5ea7: $54
    cp a                                          ; $5ea8: $bf
    pop bc                                        ; $5ea9: $c1
    ld [hl], e                                    ; $5eaa: $73
    ld [hl+], a                                   ; $5eab: $22
    jr c, @-$7a                                   ; $5eac: $38 $84

    ld b, b                                       ; $5eae: $40
    ld b, a                                       ; $5eaf: $47
    ld h, d                                       ; $5eb0: $62
    ei                                            ; $5eb1: $fb
    call nz, $0a0a                                ; $5eb2: $c4 $0a $0a
    ld c, d                                       ; $5eb5: $4a
    jr c, jr_054_5f18                             ; $5eb6: $38 $60

    ccf                                           ; $5eb8: $3f
    jp $bde0                                      ; $5eb9: $c3 $e0 $bd


    ld e, l                                       ; $5ebc: $5d
    ld a, l                                       ; $5ebd: $7d
    add e                                         ; $5ebe: $83
    add $e3                                       ; $5ebf: $c6 $e3
    add c                                         ; $5ec1: $81
    ld b, c                                       ; $5ec2: $41
    rst $38                                       ; $5ec3: $ff
    add c                                         ; $5ec4: $81
    ld a, [bc]                                    ; $5ec5: $0a
    ld a, [bc]                                    ; $5ec6: $0a
    ld a, [bc]                                    ; $5ec7: $0a
    jr nc, @-$3e                                  ; $5ec8: $30 $c0

    pop hl                                        ; $5eca: $e1
    cp a                                          ; $5ecb: $bf
    and l                                         ; $5ecc: $a5
    nop                                           ; $5ecd: $00
    ld e, d                                       ; $5ece: $5a
    di                                            ; $5ecf: $f3
    ld bc, $0d4b                                  ; $5ed0: $01 $4b $0d
    push bc                                       ; $5ed3: $c5
    jp nz, $83c5                                  ; $5ed4: $c2 $c5 $83

    ld b, d                                       ; $5ed7: $42
    cp l                                          ; $5ed8: $bd
    ld b, b                                       ; $5ed9: $40
    dec hl                                        ; $5eda: $2b
    db $fd                                        ; $5edb: $fd
    jp nz, Jump_054_72c0                          ; $5edc: $c2 $c0 $72

    ld [hl], e                                    ; $5edf: $73
    jr nc, jr_054_5f23                            ; $5ee0: $30 $41

    pop bc                                        ; $5ee2: $c1
    ld c, e                                       ; $5ee3: $4b
    ld b, l                                       ; $5ee4: $45
    db $e3                                        ; $5ee5: $e3
    ld b, b                                       ; $5ee6: $40
    db $fc                                        ; $5ee7: $fc
    and c                                         ; $5ee8: $a1
    ld a, l                                       ; $5ee9: $7d
    ld b, c                                       ; $5eea: $41
    or h                                          ; $5eeb: $b4
    jp nz, $81be                                  ; $5eec: $c2 $be $81

    add b                                         ; $5eef: $80
    ld a, e                                       ; $5ef0: $7b
    cp a                                          ; $5ef1: $bf
    and l                                         ; $5ef2: $a5
    dec c                                         ; $5ef3: $0d
    ret nz                                        ; $5ef4: $c0

    add sp, $60                                   ; $5ef5: $e8 $60
    ccf                                           ; $5ef7: $3f
    jp nz, $e3c1                                  ; $5ef8: $c2 $c1 $e3

    add c                                         ; $5efb: $81
    add a                                         ; $5efc: $87
    add b                                         ; $5efd: $80
    reti                                          ; $5efe: $d9


    ld [hl-], a                                   ; $5eff: $32
    ld [bc], a                                    ; $5f00: $02
    ld c, e                                       ; $5f01: $4b
    dec hl                                        ; $5f02: $2b
    ccf                                           ; $5f03: $3f
    ld [c], a                                     ; $5f04: $e2
    ld [bc], a                                    ; $5f05: $02
    ret nz                                        ; $5f06: $c0

    rst $20                                       ; $5f07: $e7
    dec c                                         ; $5f08: $0d
    pop bc                                        ; $5f09: $c1
    add l                                         ; $5f0a: $85
    nop                                           ; $5f0b: $00
    ld e, a                                       ; $5f0c: $5f
    db $dd                                        ; $5f0d: $dd
    jp nz, Jump_054_600e                          ; $5f0e: $c2 $0e $60

    rst $00                                       ; $5f11: $c7
    and e                                         ; $5f12: $a3
    inc bc                                        ; $5f13: $03
    pop bc                                        ; $5f14: $c1
    ld de, $804b                                  ; $5f15: $11 $4b $80

jr_054_5f18:
    ld b, b                                       ; $5f18: $40
    add e                                         ; $5f19: $83
    or a                                          ; $5f1a: $b7
    cp l                                          ; $5f1b: $bd
    ld c, l                                       ; $5f1c: $4d
    ld c, l                                       ; $5f1d: $4d
    ld d, $a1                                     ; $5f1e: $16 $a1
    ld c, $60                                     ; $5f20: $0e $60
    add l                                         ; $5f22: $85

jr_054_5f23:
    ld h, d                                       ; $5f23: $62
    ld h, b                                       ; $5f24: $60
    db $fc                                        ; $5f25: $fc
    ld h, d                                       ; $5f26: $62
    ld b, c                                       ; $5f27: $41
    add d                                         ; $5f28: $82
    and h                                         ; $5f29: $a4
    add hl, hl                                    ; $5f2a: $29
    add b                                         ; $5f2b: $80
    jp c, $807b                                   ; $5f2c: $da $7b $80

    ld c, l                                       ; $5f2f: $4d
    dec l                                         ; $5f30: $2d
    adc l                                         ; $5f31: $8d
    ld b, b                                       ; $5f32: $40
    add d                                         ; $5f33: $82
    ret nz                                        ; $5f34: $c0

    db $e4                                        ; $5f35: $e4
    ld l, e                                       ; $5f36: $6b
    ld a, [hl-]                                   ; $5f37: $3a
    and e                                         ; $5f38: $a3
    ret nz                                        ; $5f39: $c0

    jr nz, @+$01                                  ; $5f3a: $20 $ff

    ret z                                         ; $5f3c: $c8

    cp l                                          ; $5f3d: $bd
    ld e, c                                       ; $5f3e: $59
    sbc b                                         ; $5f3f: $98
    ld [hl+], a                                   ; $5f40: $22
    ld l, e                                       ; $5f41: $6b
    nop                                           ; $5f42: $00
    dec c                                         ; $5f43: $0d
    jp nz, $a23c                                  ; $5f44: $c2 $3c $a2

    cp e                                          ; $5f47: $bb
    call nz, $023c                                ; $5f48: $c4 $3c $02
    nop                                           ; $5f4b: $00
    ld e, h                                       ; $5f4c: $5c
    dec a                                         ; $5f4d: $3d
    add [hl]                                      ; $5f4e: $86
    rst $38                                       ; $5f4f: $ff
    and b                                         ; $5f50: $a0
    ld a, a                                       ; $5f51: $7f
    add h                                         ; $5f52: $84
    jr nz, @-$3c                                  ; $5f53: $20 $c2

    nop                                           ; $5f55: $00
    ccf                                           ; $5f56: $3f
    db $e4                                        ; $5f57: $e4
    and e                                         ; $5f58: $a3
    push bc                                       ; $5f59: $c5
    nop                                           ; $5f5a: $00
    cp l                                          ; $5f5b: $bd
    cp e                                          ; $5f5c: $bb
    ld bc, $096d                                  ; $5f5d: $01 $6d $09
    ld b, b                                       ; $5f60: $40
    ld [$01c4], sp                                ; $5f61: $08 $c4 $01
    dec hl                                        ; $5f64: $2b
    ld [hl-], a                                   ; $5f65: $32
    ret nz                                        ; $5f66: $c0

    ld a, b                                       ; $5f67: $78
    ld b, c                                       ; $5f68: $41
    cp a                                          ; $5f69: $bf
    ld b, h                                       ; $5f6a: $44
    nop                                           ; $5f6b: $00
    cp l                                          ; $5f6c: $bd
    ld b, b                                       ; $5f6d: $40
    push bc                                       ; $5f6e: $c5
    ret                                           ; $5f6f: $c9


    and e                                         ; $5f70: $a3
    ld a, [hl-]                                   ; $5f71: $3a
    add b                                         ; $5f72: $80
    ld e, $81                                     ; $5f73: $1e $81
    ld bc, $4b4b                                  ; $5f75: $01 $4b $4b
    inc c                                         ; $5f78: $0c
    inc l                                         ; $5f79: $2c
    ld a, [hl]                                    ; $5f7a: $7e
    inc bc                                        ; $5f7b: $03
    nop                                           ; $5f7c: $00
    cp h                                          ; $5f7d: $bc
    cp $05                                        ; $5f7e: $fe $05
    ld e, b                                       ; $5f80: $58
    jp z, Jump_054_4743                           ; $5f81: $ca $43 $47

    pop bc                                        ; $5f84: $c1
    rst $38                                       ; $5f85: $ff
    ld hl, $6b6b                                  ; $5f86: $21 $6b $6b
    or d                                          ; $5f89: $b2
    nop                                           ; $5f8a: $00
    inc c                                         ; $5f8b: $0c
    add b                                         ; $5f8c: $80
    ld a, h                                       ; $5f8d: $7c
    nop                                           ; $5f8e: $00
    ld a, l                                       ; $5f8f: $7d
    add sp, -$01                                  ; $5f90: $e8 $ff
    add b                                         ; $5f92: $80
    adc d                                         ; $5f93: $8a
    ld bc, $42bf                                  ; $5f94: $01 $bf $42
    push af                                       ; $5f97: $f5
    ld bc, $236f                                  ; $5f98: $01 $6f $23
    db $fd                                        ; $5f9b: $fd
    ld [hl+], a                                   ; $5f9c: $22
    cp l                                          ; $5f9d: $bd
    cp a                                          ; $5f9e: $bf
    ret nc                                        ; $5f9f: $d0

    jr c, jr_054_6003                             ; $5fa0: $38 $61

    ret nz                                        ; $5fa2: $c0

    pop hl                                        ; $5fa3: $e1
    add h                                         ; $5fa4: $84
    add b                                         ; $5fa5: $80
    ld a, d                                       ; $5fa6: $7a
    ld h, e                                       ; $5fa7: $63
    ld l, h                                       ; $5fa8: $6c
    or h                                          ; $5fa9: $b4
    ld bc, $4c6c                                  ; $5faa: $01 $6c $4c
    add a                                         ; $5fad: $87
    ld l, h                                       ; $5fae: $6c
    dec c                                         ; $5faf: $0d
    ld l, l                                       ; $5fb0: $6d
    cp a                                          ; $5fb1: $bf
    rst $00                                       ; $5fb2: $c7
    nop                                           ; $5fb3: $00
    or h                                          ; $5fb4: $b4
    cp [hl]                                       ; $5fb5: $be
    ld b, h                                       ; $5fb6: $44
    dec d                                         ; $5fb7: $15
    pop hl                                        ; $5fb8: $e1
    dec c                                         ; $5fb9: $0d
    ld [$8243], sp                                ; $5fba: $08 $43 $82
    ld sp, hl                                     ; $5fbd: $f9
    ld h, c                                       ; $5fbe: $61
    add b                                         ; $5fbf: $80
    ld [c], a                                     ; $5fc0: $e2
    ld c, h                                       ; $5fc1: $4c
    ld a, $a3                                     ; $5fc2: $3e $a3
    ld bc, $0064                                  ; $5fc4: $01 $64 $00
    ld d, [hl]                                    ; $5fc7: $56
    ld a, [hl]                                    ; $5fc8: $7e
    ld b, [hl]                                    ; $5fc9: $46
    inc b                                         ; $5fca: $04
    ld c, l                                       ; $5fcb: $4d
    and b                                         ; $5fcc: $a0
    add hl, bc                                    ; $5fcd: $09
    ld b, e                                       ; $5fce: $43
    ld l, e                                       ; $5fcf: $6b
    ret nz                                        ; $5fd0: $c0

    ldh [$36], a                                  ; $5fd1: $e0 $36
    ld bc, $80ff                                  ; $5fd3: $01 $ff $80
    and h                                         ; $5fd6: $a4
    and c                                         ; $5fd7: $a1
    ld b, e                                       ; $5fd8: $43
    sbc l                                         ; $5fd9: $9d
    ld c, $ed                                     ; $5fda: $0e $ed
    inc b                                         ; $5fdc: $04
    ld c, l                                       ; $5fdd: $4d
    dec l                                         ; $5fde: $2d
    ld l, e                                       ; $5fdf: $6b
    ret                                           ; $5fe0: $c9


jr_054_5fe1:
    ld [hl+], a                                   ; $5fe1: $22
    add $c1                                       ; $5fe2: $c6 $c1
    or d                                          ; $5fe4: $b2
    ld [bc], a                                    ; $5fe5: $02
    inc bc                                        ; $5fe6: $03
    ld [c], a                                     ; $5fe7: $e2
    nop                                           ; $5fe8: $00
    pop hl                                        ; $5fe9: $e1
    ld hl, $be00                                  ; $5fea: $21 $00 $be
    cp a                                          ; $5fed: $bf
    and [hl]                                      ; $5fee: $a6
    ld c, e                                       ; $5fef: $4b
    ld b, b                                       ; $5ff0: $40
    ld a, d                                       ; $5ff1: $7a
    jr nz, jr_054_6028                            ; $5ff2: $20 $34

    inc b                                         ; $5ff4: $04
    add c                                         ; $5ff5: $81
    and d                                         ; $5ff6: $a2
    cp [hl]                                       ; $5ff7: $be
    and c                                         ; $5ff8: $a1
    nop                                           ; $5ff9: $00
    add hl, de                                    ; $5ffa: $19
    ld b, c                                       ; $5ffb: $41
    add b                                         ; $5ffc: $80
    ld a, c                                       ; $5ffd: $79
    db $fd                                        ; $5ffe: $fd
    ld h, [hl]                                    ; $5fff: $66
    adc l                                         ; $6000: $8d
    ld h, c                                       ; $6001: $61
    pop bc                                        ; $6002: $c1

jr_054_6003:
    and $83                                       ; $6003: $e6 $83
    jp $e4c0                                      ; $6005: $c3 $c0 $e4


    cp l                                          ; $6008: $bd
    ld e, d                                       ; $6009: $5a
    ld [hl+], a                                   ; $600a: $22
    db $fd                                        ; $600b: $fd
    ld [bc], a                                    ; $600c: $02
    ld c, l                                       ; $600d: $4d

Jump_054_600e:
    ld a, a                                       ; $600e: $7f
    and b                                         ; $600f: $a0
    res 4, c                                      ; $6010: $cb $a1
    pop bc                                        ; $6012: $c1
    and $2c                                       ; $6013: $e6 $2c
    ret nz                                        ; $6015: $c0

    add b                                         ; $6016: $80
    ld hl, $d042                                  ; $6017: $21 $42 $d0
    sbc d                                         ; $601a: $9a
    inc hl                                        ; $601b: $23
    nop                                           ; $601c: $00
    cp b                                          ; $601d: $b8
    cp [hl]                                       ; $601e: $be
    ld b, l                                       ; $601f: $45
    jp nz, Jump_054_6c21                          ; $6020: $c2 $21 $6c

    ld b, b                                       ; $6023: $40
    db $e4                                        ; $6024: $e4
    inc l                                         ; $6025: $2c
    inc l                                         ; $6026: $2c
    add b                                         ; $6027: $80

jr_054_6028:
    di                                            ; $6028: $f3
    nop                                           ; $6029: $00
    ret nz                                        ; $602a: $c0

    inc bc                                        ; $602b: $03
    cp $c3                                        ; $602c: $fe $c3
    add b                                         ; $602e: $80
    halt                                          ; $602f: $76
    sbc [hl]                                      ; $6030: $9e
    pop hl                                        ; $6031: $e1
    sbc h                                         ; $6032: $9c
    ld b, e                                       ; $6033: $43
    ld b, d                                       ; $6034: $42
    ld hl, $0b6c                                  ; $6035: $21 $6c $0b
    ld c, h                                       ; $6038: $4c
    ld c, h                                       ; $6039: $4c
    jp nz, Jump_054_4cc3                          ; $603a: $c2 $c3 $4c

    ret nz                                        ; $603d: $c0

    rst $20                                       ; $603e: $e7
    add b                                         ; $603f: $80
    sbc $3c                                       ; $6040: $de $3c
    inc b                                         ; $6042: $04
    ld bc, $8623                                  ; $6043: $01 $23 $86
    cp a                                          ; $6046: $bf
    ld [c], a                                     ; $6047: $e2
    ld l, h                                       ; $6048: $6c
    ld l, h                                       ; $6049: $6c
    pop bc                                        ; $604a: $c1
    ld b, l                                       ; $604b: $45
    ret nz                                        ; $604c: $c0

    ld a, [c]                                     ; $604d: $f2
    cp l                                          ; $604e: $bd
    ld c, c                                       ; $604f: $49
    ld e, $e3                                     ; $6050: $1e $e3
    ld c, l                                       ; $6052: $4d
    inc c                                         ; $6053: $0c
    nop                                           ; $6054: $00
    jr nz, jr_054_5fe1                            ; $6055: $20 $8a

    ld b, h                                       ; $6057: $44
    ld c, h                                       ; $6058: $4c
    ld l, h                                       ; $6059: $6c
    add [hl]                                      ; $605a: $86
    and b                                         ; $605b: $a0
    ld a, [$4261]                                 ; $605c: $fa $61 $42
    ld hl, $e100                                  ; $605f: $21 $00 $e1
    nop                                           ; $6062: $00
    dec e                                         ; $6063: $1d
    db $e4                                        ; $6064: $e4
    nop                                           ; $6065: $00
    or [hl]                                       ; $6066: $b6
    ld a, c                                       ; $6067: $79
    and e                                         ; $6068: $a3
    ret z                                         ; $6069: $c8

    ld hl, $4304                                  ; $606a: $21 $04 $43
    ld b, d                                       ; $606d: $42
    ld b, l                                       ; $606e: $45
    ld b, d                                       ; $606f: $42
    and c                                         ; $6070: $a1
    ret nz                                        ; $6071: $c0

    db $e3                                        ; $6072: $e3
    inc b                                         ; $6073: $04
    dec a                                         ; $6074: $3d
    ei                                            ; $6075: $fb
    add hl, sp                                    ; $6076: $39
    ld b, d                                       ; $6077: $42
    ld l, l                                       ; $6078: $6d
    call z, $0204                                 ; $6079: $cc $04 $02
    ld b, d                                       ; $607c: $42
    ei                                            ; $607d: $fb
    ld hl, $202d                                  ; $607e: $21 $2d $20
    pop bc                                        ; $6081: $c1
    ld h, e                                       ; $6082: $63
    nop                                           ; $6083: $00
    ret nz                                        ; $6084: $c0

    db $ed                                        ; $6085: $ed
    nop                                           ; $6086: $00
    ld c, e                                       ; $6087: $4b

jr_054_6088:
    ld b, c                                       ; $6088: $41
    add [hl]                                      ; $6089: $86
    adc a                                         ; $608a: $8f
    jr nz, @+$01                                  ; $608b: $20 $ff

    ld [$a342], a                                 ; $608d: $ea $42 $a3
    ld bc, $00c6                                  ; $6090: $01 $c6 $00
    or l                                          ; $6093: $b5
    ld [$a4a0], sp                                ; $6094: $08 $a0 $a4
    ld c, h                                       ; $6097: $4c
    ld [bc], a                                    ; $6098: $02
    db $fc                                        ; $6099: $fc
    ret nz                                        ; $609a: $c0

    dec l                                         ; $609b: $2d
    db $fc                                        ; $609c: $fc
    push hl                                       ; $609d: $e5
    push af                                       ; $609e: $f5
    ldh [$e9], a                                  ; $609f: $e0 $e9
    pop bc                                        ; $60a1: $c1
    pop hl                                        ; $60a2: $e1
    and e                                         ; $60a3: $a3
    adc b                                         ; $60a4: $88
    ld b, e                                       ; $60a5: $43
    ei                                            ; $60a6: $fb
    ld b, d                                       ; $60a7: $42
    ld [bc], a                                    ; $60a8: $02
    add b                                         ; $60a9: $80
    xor $0b                                       ; $60aa: $ee $0b

jr_054_60ac:
    add c                                         ; $60ac: $81
    ld b, b                                       ; $60ad: $40
    inc bc                                        ; $60ae: $03
    sub l                                         ; $60af: $95
    add b                                         ; $60b0: $80
    ld c, $4d                                     ; $60b1: $0e $4d
    nop                                           ; $60b3: $00
    sub b                                         ; $60b4: $90
    ldh [$80], a                                  ; $60b5: $e0 $80
    ld h, c                                       ; $60b7: $61
    dec a                                         ; $60b8: $3d
    add sp, -$40                                  ; $60b9: $e8 $c0
    inc h                                         ; $60bb: $24
    add c                                         ; $60bc: $81
    add d                                         ; $60bd: $82
    add b                                         ; $60be: $80
    rra                                           ; $60bf: $1f
    cp a                                          ; $60c0: $bf
    ldh [$3b], a                                  ; $60c1: $e0 $3b
    pop hl                                        ; $60c3: $e1
    jr nz, jr_054_6088                            ; $60c4: $20 $c2

    jp $e3f9                                      ; $60c6: $c3 $f9 $e3


    add b                                         ; $60c9: $80
    dec h                                         ; $60ca: $25
    cp $fd                                        ; $60cb: $fe $fd
    ld a, $42                                     ; $60cd: $3e $42
    ld c, l                                       ; $60cf: $4d
    cp a                                          ; $60d0: $bf
    pop hl                                        ; $60d1: $e1
    ld b, e                                       ; $60d2: $43
    rst $00                                       ; $60d3: $c7
    and b                                         ; $60d4: $a0
    cp a                                          ; $60d5: $bf
    jp Jump_000_33c8                              ; $60d6: $c3 $c8 $33


    nop                                           ; $60d9: $00
    ld c, l                                       ; $60da: $4d
    cp $a6                                        ; $60db: $fe $a6
    jr nc, jr_054_60ff                            ; $60dd: $30 $20

    dec l                                         ; $60df: $2d
    ld a, h                                       ; $60e0: $7c
    ld b, d                                       ; $60e1: $42
    dec hl                                        ; $60e2: $2b
    nop                                           ; $60e3: $00
    adc $42                                       ; $60e4: $ce $42
    inc b                                         ; $60e6: $04
    ld h, e                                       ; $60e7: $63
    jp nz, $80a2                                  ; $60e8: $c2 $a2 $80

    jr jr_054_60ac                                ; $60eb: $18 $bf

    dec b                                         ; $60ed: $05
    ret c                                         ; $60ee: $d8

    and e                                         ; $60ef: $a3
    ld a, d                                       ; $60f0: $7a
    ld h, b                                       ; $60f1: $60
    add [hl]                                      ; $60f2: $86
    inc bc                                        ; $60f3: $03
    ld b, b                                       ; $60f4: $40
    di                                            ; $60f5: $f3
    ld [c], a                                     ; $60f6: $e2
    ret nz                                        ; $60f7: $c0

    db $e4                                        ; $60f8: $e4
    add b                                         ; $60f9: $80
    ld a, [hl]                                    ; $60fa: $7e
    inc a                                         ; $60fb: $3c
    add h                                         ; $60fc: $84
    dec d                                         ; $60fd: $15
    add d                                         ; $60fe: $82

jr_054_60ff:
    ret nz                                        ; $60ff: $c0

    ld hl, $c02d                                  ; $6100: $21 $2d $c0
    ldh [rP1], a                                  ; $6103: $e0 $00
    xor h                                         ; $6105: $ac

Call_054_6106:
    add sp, -$80                                  ; $6106: $e8 $80
    ld a, a                                       ; $6108: $7f
    add hl, sp                                    ; $6109: $39
    ld b, $c0                                     ; $610a: $06 $c0
    push hl                                       ; $610c: $e5
    adc c                                         ; $610d: $89
    ld b, [hl]                                    ; $610e: $46
    call c, Call_000_0084                         ; $610f: $dc $84 $00
    xor c                                         ; $6112: $a9
    nop                                           ; $6113: $00
    nop                                           ; $6114: $00
    nop                                           ; $6115: $00
    ccf                                           ; $6116: $3f
    and b                                         ; $6117: $a0
    and b                                         ; $6118: $a0
    and b                                         ; $6119: $a0
    call c, $dedd                                 ; $611a: $dc $dd $de
    ld a, [$fdec]                                 ; $611d: $fa $ec $fd
    ld [c], a                                     ; $6120: $e2
    rst $18                                       ; $6121: $df
    jp nc, $a0d3                                  ; $6122: $d2 $d3 $a0

    jp c, $f3db                                   ; $6125: $da $db $f3

    pop hl                                        ; $6128: $e1
    call nc, Call_000_3fd5                        ; $6129: $d4 $d5 $3f
    and b                                         ; $612c: $a0
    ret nc                                        ; $612d: $d0

    pop de                                        ; $612e: $d1
    and b                                         ; $612f: $a0
    sub $d7                                       ; $6130: $d6 $d7
    push de                                       ; $6132: $d5
    push hl                                       ; $6133: $e5
    ret nc                                        ; $6134: $d0

    ld [$e43f], a                                 ; $6135: $ea $3f $e4
    rst $18                                       ; $6138: $df
    ldh [$e1], a                                  ; $6139: $e0 $e1
    ld [c], a                                     ; $613b: $e2
    db $e3                                        ; $613c: $e3
    ld a, [$d5ea]                                 ; $613d: $fa $ea $d5
    pop hl                                        ; $6140: $e1
    ld [hl], b                                    ; $6141: $70
    rst $08                                       ; $6142: $cf
    ldh [$c9], a                                  ; $6143: $e0 $c9
    ldh [rIE], a                                  ; $6145: $e0 $ff
    and $b4                                       ; $6147: $e6 $b4
    ldh [$d8], a                                  ; $6149: $e0 $d8
    reti                                          ; $614b: $d9


    and b                                         ; $614c: $a0
    push de                                       ; $614d: $d5
    ld [c], a                                     ; $614e: $e2
    ld a, [hl]                                    ; $614f: $7e
    ret nc                                        ; $6150: $d0

    db $ec                                        ; $6151: $ec
    ld [$e6e5], a                                 ; $6152: $ea $e5 $e6
    rst $20                                       ; $6155: $e7
    add sp, -$17                                  ; $6156: $e8 $e9
    ld a, [$bcea]                                 ; $6158: $fa $ea $bc
    push de                                       ; $615b: $d5
    pop hl                                        ; $615c: $e1
    add e                                         ; $615d: $83
    ldh [$a0], a                                  ; $615e: $e0 $a0
    sbc a                                         ; $6160: $9f
    and d                                         ; $6161: $a2
    sbc l                                         ; $6162: $9d
    rst $38                                       ; $6163: $ff
    db $e3                                        ; $6164: $e3
    sbc a                                         ; $6165: $9f
    ld h, b                                       ; $6166: $60
    ld a, l                                       ; $6167: $7d
    pop hl                                        ; $6168: $e1
    ld [hl], h                                    ; $6169: $74
    ldh [$d5], a                                  ; $616a: $e0 $d5
    ld [c], a                                     ; $616c: $e2
    ret nc                                        ; $616d: $d0

    db $ec                                        ; $616e: $ec
    ld b, e                                       ; $616f: $43
    rst $28                                       ; $6170: $ef
    sub $d7                                       ; $6171: $d6 $d7
    ld c, c                                       ; $6173: $49
    ldh [$fe], a                                  ; $6174: $e0 $fe
    ld c, h                                       ; $6176: $4c

Jump_054_6177:
    ldh [$9f], a                                  ; $6177: $e0 $9f
    sbc h                                         ; $6179: $9c
    ld b, [hl]                                    ; $617a: $46
    ld b, [hl]                                    ; $617b: $46
    ld b, l                                       ; $617c: $45
    ld c, b                                       ; $617d: $48
    ld c, b                                       ; $617e: $48
    ccf                                           ; $617f: $3f

Call_054_6180:
    ld b, l                                       ; $6180: $45
    ld b, [hl]                                    ; $6181: $46
    ld b, [hl]                                    ; $6182: $46
    sbc h                                         ; $6183: $9c
    sbc a                                         ; $6184: $9f
    and b                                         ; $6185: $a0
    ld a, $e1                                     ; $6186: $3e $e1
    dec a                                         ; $6188: $3d
    ld [c], a                                     ; $6189: $e2
    ldh a, [rNR13]                                ; $618a: $f0 $13
    db $ed                                        ; $618c: $ed
    ld b, e                                       ; $618d: $43
    xor $57                                       ; $618e: $ee $57
    pop hl                                        ; $6190: $e1
    db $fd                                        ; $6191: $fd
    pop bc                                        ; $6192: $c1
    sbc a                                         ; $6193: $9f
    sbc h                                         ; $6194: $9c
    xor [hl]                                      ; $6195: $ae
    ld b, l                                       ; $6196: $45
    ld a, a                                       ; $6197: $7f
    ld b, l                                       ; $6198: $45
    ld b, h                                       ; $6199: $44
    ld e, c                                       ; $619a: $59
    ld d, e                                       ; $619b: $53
    inc sp                                        ; $619c: $33
    ld b, l                                       ; $619d: $45
    xor [hl]                                      ; $619e: $ae
    cp a                                          ; $619f: $bf
    pop hl                                        ; $61a0: $e1
    ld b, $6f                                     ; $61a1: $06 $6f
    pop hl                                        ; $61a3: $e1
    ret c                                         ; $61a4: $d8

    reti                                          ; $61a5: $d9


    inc de                                        ; $61a6: $13
    rst $28                                       ; $61a7: $ef
    ld b, e                                       ; $61a8: $43
    xor $cb                                       ; $61a9: $ee $cb
    pop bc                                        ; $61ab: $c1
    pop de                                        ; $61ac: $d1
    ret nz                                        ; $61ad: $c0

    add d                                         ; $61ae: $82
    ldh [rIE], a                                  ; $61af: $e0 $ff
    xor a                                         ; $61b1: $af
    ld c, d                                       ; $61b2: $4a
    ld b, a                                       ; $61b3: $47
    dec l                                         ; $61b4: $2d
    inc l                                         ; $61b5: $2c
    inc l                                         ; $61b6: $2c
    jr nz, @+$2f                                  ; $61b7: $20 $2d

    rst $28                                       ; $61b9: $ef
    xor a                                         ; $61ba: $af
    ld b, [hl]                                    ; $61bb: $46
    ld b, [hl]                                    ; $61bc: $46
    and c                                         ; $61bd: $a1
    cp e                                          ; $61be: $bb
    ret nz                                        ; $61bf: $c0

    ret nc                                        ; $61c0: $d0

    pop de                                        ; $61c1: $d1
    jp c, $dbf1                                   ; $61c2: $da $f1 $db

    inc de                                        ; $61c5: $13
    ldh a, [rSCX]                                 ; $61c6: $f0 $43
    db $ed                                        ; $61c8: $ed
    add l                                         ; $61c9: $85
    call nz, Call_054_469e                        ; $61ca: $c4 $9e $46
    ld b, [hl]                                    ; $61cd: $46
    ld b, [hl]                                    ; $61ce: $46
    ld a, a                                       ; $61cf: $7f
    ld c, d                                       ; $61d0: $4a
    ld e, b                                       ; $61d1: $58
    ld [hl-], a                                   ; $61d2: $32
    jr nz, jr_054_61f5                            ; $61d3: $20 $20

    jr nz, jr_054_6209                            ; $61d5: $20 $32

    or $e0                                        ; $61d7: $f6 $e0
    pop bc                                        ; $61d9: $c1
    sbc [hl]                                      ; $61da: $9e
    ld [hl], b                                    ; $61db: $70
    jp $c87b                                      ; $61dc: $c3 $7b $c8


    add b                                         ; $61df: $80
    jp nc, $e243                                  ; $61e0: $d2 $43 $e2

    add l                                         ; $61e3: $85
    jp Jump_054_469e                              ; $61e4: $c3 $9e $46


    rst $38                                       ; $61e7: $ff
    xor [hl]                                      ; $61e8: $ae
    ld b, [hl]                                    ; $61e9: $46
    ld b, h                                       ; $61ea: $44
    ld c, l                                       ; $61eb: $4d
    ld c, c                                       ; $61ec: $49
    inc sp                                        ; $61ed: $33
    ld [hl+], a                                   ; $61ee: $22
    inc hl                                        ; $61ef: $23
    dec b                                         ; $61f0: $05
    dec l                                         ; $61f1: $2d
    or $e0                                        ; $61f2: $f6 $e0
    sbc h                                         ; $61f4: $9c

jr_054_61f5:
    cp h                                          ; $61f5: $bc
    jp $c67b                                      ; $61f6: $c3 $7b $c6


    add b                                         ; $61f9: $80
    call nc, $e243                                ; $61fa: $d4 $43 $e2
    add l                                         ; $61fd: $85
    pop bc                                        ; $61fe: $c1

Jump_054_61ff:
    rst $38                                       ; $61ff: $ff
    and b                                         ; $6200: $a0
    and b                                         ; $6201: $a0
    sbc [hl]                                      ; $6202: $9e
    xor [hl]                                      ; $6203: $ae
    xor a                                         ; $6204: $af
    ld b, [hl]                                    ; $6205: $46
    xor [hl]                                      ; $6206: $ae
    ld d, e                                       ; $6207: $53
    ccf                                           ; $6208: $3f

jr_054_6209:
    ld d, e                                       ; $6209: $53
    ld b, h                                       ; $620a: $44
    inc a                                         ; $620b: $3c
    inc a                                         ; $620c: $3c
    ld b, h                                       ; $620d: $44
    ld b, [hl]                                    ; $620e: $46
    ccf                                           ; $620f: $3f
    ldh [$bc], a                                  ; $6210: $e0 $bc
    call nz, Call_054_7b30                        ; $6212: $c4 $30 $7b
    push bc                                       ; $6215: $c5
    add b                                         ; $6216: $80
    db $d3                                        ; $6217: $d3
    rlca                                          ; $6218: $07
    jp $c208                                      ; $6219: $c3 $08 $c2


    sbc a                                         ; $621c: $9f
    sbc h                                         ; $621d: $9c
    ld a, [bc]                                    ; $621e: $0a
    ldh [rTAC], a                                 ; $621f: $e0 $07
    ldh [$ef], a                                  ; $6221: $e0 $ef
    add hl, sp                                    ; $6223: $39
    dec [hl]                                      ; $6224: $35
    dec [hl]                                      ; $6225: $35
    xor [hl]                                      ; $6226: $ae
    ld a, c                                       ; $6227: $79
    ret nz                                        ; $6228: $c0

    ld b, l                                       ; $6229: $45
    ld b, [hl]                                    ; $622a: $46
    xor [hl]                                      ; $622b: $ae
    ldh [$bc], a                                  ; $622c: $e0 $bc
    call nz, $a3a2                                ; $622e: $c4 $a2 $a3
    add b                                         ; $6231: $80
    pop de                                        ; $6232: $d1
    halt                                          ; $6233: $76
    and b                                         ; $6234: $a0
    rlca                                          ; $6235: $07
    push bc                                       ; $6236: $c5
    sbc l                                         ; $6237: $9d
    and d                                         ; $6238: $a2
    sbc h                                         ; $6239: $9c
    rst $38                                       ; $623a: $ff
    ld b, [hl]                                    ; $623b: $46
    inc bc                                        ; $623c: $03
    inc b                                         ; $623d: $04
    inc b                                         ; $623e: $04
    inc bc                                        ; $623f: $03
    ld b, [hl]                                    ; $6240: $46
    ld b, l                                       ; $6241: $45
    ld a, [hl-]                                   ; $6242: $3a
    rst $38                                       ; $6243: $ff
    dec [hl]                                      ; $6244: $35
    ld a, [hl-]                                   ; $6245: $3a
    xor a                                         ; $6246: $af
    ld b, [hl]                                    ; $6247: $46
    cp l                                          ; $6248: $bd
    inc l                                         ; $6249: $2c
    inc l                                         ; $624a: $2c
    ld b, h                                       ; $624b: $44
    add c                                         ; $624c: $81
    xor a                                         ; $624d: $af
    ld a, [hl-]                                   ; $624e: $3a
    ret nz                                        ; $624f: $c0

    ld [hl], a                                    ; $6250: $77
    and b                                         ; $6251: $a0
    ld a, d                                       ; $6252: $7a
    and d                                         ; $6253: $a2
    add b                                         ; $6254: $80
    db $d3                                        ; $6255: $d3
    ld [hl], $a0                                  ; $6256: $36 $a0
    rlca                                          ; $6258: $07
    rst $00                                       ; $6259: $c7
    ld b, [hl]                                    ; $625a: $46
    ld a, a                                       ; $625b: $7f
    dec b                                         ; $625c: $05
    rrca                                          ; $625d: $0f
    ld bc, $0d00                                  ; $625e: $01 $00 $0d
    rlca                                          ; $6261: $07
    dec b                                         ; $6262: $05
    ret nz                                        ; $6263: $c0

    ldh [$3f], a                                  ; $6264: $e0 $3f
    ld b, l                                       ; $6266: $45
    ld b, l                                       ; $6267: $45
    ld l, $20                                     ; $6268: $2e $20
    inc l                                         ; $626a: $2c
    ld b, h                                       ; $626b: $44
    pop af                                        ; $626c: $f1
    ret nz                                        ; $626d: $c0

Jump_054_626e:
    cp e                                          ; $626e: $bb
    pop bc                                        ; $626f: $c1
    ldh a, [rNR44]                                ; $6270: $f0 $23
    jp nz, $d880                                  ; $6272: $c2 $80 $d8

    rlca                                          ; $6275: $07
    jp nz, $c085                                  ; $6276: $c2 $85 $c0

    ld b, [hl]                                    ; $6279: $46
    ld b, $98                                     ; $627a: $06 $98
    sbc b                                         ; $627c: $98
    rst $30                                       ; $627d: $f7
    sbc c                                         ; $627e: $99
    sbc b                                         ; $627f: $98
    ld c, $c0                                     ; $6280: $0e $c0
    ldh [$35], a                                  ; $6282: $e0 $35
    add hl, sp                                    ; $6284: $39
    ld b, d                                       ; $6285: $42
    dec h                                         ; $6286: $25
    rla                                           ; $6287: $17
    jr nc, jr_054_62d9                            ; $6288: $30 $4f

    ld d, l                                       ; $628a: $55
    ei                                            ; $628b: $fb
    ret nz                                        ; $628c: $c0

    sbc [hl]                                      ; $628d: $9e
    rst $38                                       ; $628e: $ff
    jp $d980                                      ; $628f: $c3 $80 $d9


    rlca                                          ; $6292: $07
    jp nz, $aefd                                  ; $6293: $c2 $fd $ae

    ld b, h                                       ; $6296: $44
    ldh [rTAC], a                                 ; $6297: $e0 $07
    rrca                                          ; $6299: $0f
    sbc b                                         ; $629a: $98
    sub a                                         ; $629b: $97
    sbc b                                         ; $629c: $98
    sbc c                                         ; $629d: $99
    db $fd                                        ; $629e: $fd
    ld [$e001], sp                                ; $629f: $08 $01 $e0
    dec [hl]                                      ; $62a2: $35
    ld a, $40                                     ; $62a3: $3e $40
    inc h                                         ; $62a5: $24
    ld hl, $e14a                                  ; $62a6: $21 $4a $e1
    ld d, l                                       ; $62a9: $55
    ld a, d                                       ; $62aa: $7a
    and d                                         ; $62ab: $a2
    ld a, [hl+]                                   ; $62ac: $2a
    and c                                         ; $62ad: $a1
    add b                                         ; $62ae: $80
    jp c, $c207                                   ; $62af: $da $07 $c2

    xor a                                         ; $62b2: $af
    dec b                                         ; $62b3: $05
    rrca                                          ; $62b4: $0f
    db $dd                                        ; $62b5: $dd
    sbc b                                         ; $62b6: $98
    rst $38                                       ; $62b7: $ff
    pop hl                                        ; $62b8: $e1
    nop                                           ; $62b9: $00
    ld bc, $8106                                  ; $62ba: $01 $06 $81
    ldh [$35], a                                  ; $62bd: $e0 $35
    ld a, $1f                                     ; $62bf: $3e $1f
    add hl, sp                                    ; $62c1: $39
    dec [hl]                                      ; $62c2: $35
    inc a                                         ; $62c3: $3c
    ld b, h                                       ; $62c4: $44
    ld b, l                                       ; $62c5: $45
    dec sp                                        ; $62c6: $3b
    and d                                         ; $62c7: $a2
    xor l                                         ; $62c8: $ad
    add c                                         ; $62c9: $81
    add b                                         ; $62ca: $80
    reti                                          ; $62cb: $d9


    db $fc                                        ; $62cc: $fc
    rlca                                          ; $62cd: $07
    jp $e044                                      ; $62ce: $c3 $44 $e0


    sub a                                         ; $62d1: $97
    sub a                                         ; $62d2: $97
    sbc b                                         ; $62d3: $98
    rrca                                          ; $62d4: $0f
    inc b                                         ; $62d5: $04
    inc b                                         ; $62d6: $04
    scf                                           ; $62d7: $37
    rrca                                          ; $62d8: $0f

jr_054_62d9:
    ld b, $36                                     ; $62d9: $06 $36
    add b                                         ; $62db: $80
    ldh [$39], a                                  ; $62dc: $e0 $39
    ld a, $3c                                     ; $62de: $3e $3c
    ldh [$7d], a                                  ; $62e0: $e0 $7d
    and c                                         ; $62e2: $a1
    ret nc                                        ; $62e3: $d0

    db $fd                                        ; $62e4: $fd
    add c                                         ; $62e5: $81
    add b                                         ; $62e6: $80
    jp c, $821d                                   ; $62e7: $da $1d $82

    ret                                           ; $62ea: $c9


    add b                                         ; $62eb: $80
    ld [bc], a                                    ; $62ec: $02
    ld b, e                                       ; $62ed: $43
    ldh [$9a], a                                  ; $62ee: $e0 $9a
    ld [bc], a                                    ; $62f0: $02
    ld l, a                                       ; $62f1: $6f
    dec hl                                        ; $62f2: $2b
    dec hl                                        ; $62f3: $2b
    ld [bc], a                                    ; $62f4: $02
    ld [bc], a                                    ; $62f5: $02
    ld b, c                                       ; $62f6: $41
    ret nz                                        ; $62f7: $c0

    ld a, [hl-]                                   ; $62f8: $3a
    xor [hl]                                      ; $62f9: $ae
    ei                                            ; $62fa: $fb
    pop hl                                        ; $62fb: $e1
    add c                                         ; $62fc: $81
    ld b, l                                       ; $62fd: $45
    ld a, l                                       ; $62fe: $7d
    and b                                         ; $62ff: $a0
    rst $28                                       ; $6300: $ef
    ld h, b                                       ; $6301: $60
    ld h, c                                       ; $6302: $61
    and e                                         ; $6303: $a3
    add b                                         ; $6304: $80
    push de                                       ; $6305: $d5

Call_054_6306:
    add e                                         ; $6306: $83
    and e                                         ; $6307: $a3
    adc b                                         ; $6308: $88
    add b                                         ; $6309: $80
    ld b, $7f                                     ; $630a: $06 $7f
    sbc b                                         ; $630c: $98
    sbc e                                         ; $630d: $9b
    sbc b                                         ; $630e: $98
    ld [bc], a                                    ; $630f: $02
    ld l, $20                                     ; $6310: $2e $20
    ld a, [hl+]                                   ; $6312: $2a
    ld b, c                                       ; $6313: $41
    ret nz                                        ; $6314: $c0

    add b                                         ; $6315: $80
    ld b, b                                       ; $6316: $40
    ret nz                                        ; $6317: $c0

    ld a, e                                       ; $6318: $7b
    ldh [$bb], a                                  ; $6319: $e0 $bb
    and b                                         ; $631b: $a0
    ld b, c                                       ; $631c: $41
    jp nz, $83a4                                  ; $631d: $c2 $a4 $83

    nop                                           ; $6320: $00
    or l                                          ; $6321: $b5
    add e                                         ; $6322: $83
    and h                                         ; $6323: $a4
    sbc [hl]                                      ; $6324: $9e
    ld a, [hl]                                    ; $6325: $7e
    add e                                         ; $6326: $83
    pop bc                                        ; $6327: $c1
    sbc b                                         ; $6328: $98
    ld [$202d], sp                                ; $6329: $08 $2d $20
    jr nz, jr_054_6362                            ; $632c: $20 $34

    add c                                         ; $632e: $81
    ret nz                                        ; $632f: $c0

    ld a, a                                       ; $6330: $7f
    ld h, d                                       ; $6331: $62
    ld a, d                                       ; $6332: $7a
    ld h, l                                       ; $6333: $65
    ld h, [hl]                                    ; $6334: $66
    dec [hl]                                      ; $6335: $35
    dec [hl]                                      ; $6336: $35
    ld b, b                                       ; $6337: $40
    db $fc                                        ; $6338: $fc
    add c                                         ; $6339: $81
    add sp, -$7f                                  ; $633a: $e8 $81
    jp $ba00                                      ; $633c: $c3 $00 $ba


    adc e                                         ; $633f: $8b
    ld h, c                                       ; $6340: $61
    and c                                         ; $6341: $a1
    ccf                                           ; $6342: $3f
    ldh [rSB], a                                  ; $6343: $e0 $01
    nop                                           ; $6345: $00
    ld c, $ff                                     ; $6346: $0e $ff
    dec b                                         ; $6348: $05
    ld hl, $4021                                  ; $6349: $21 $21 $40
    add hl, sp                                    ; $634c: $39
    dec [hl]                                      ; $634d: $35
    ld h, d                                       ; $634e: $62
    ld h, a                                       ; $634f: $67
    rra                                           ; $6350: $1f
    ld b, d                                       ; $6351: $42
    ld a, [hl-]                                   ; $6352: $3a
    ld l, b                                       ; $6353: $68
    ld h, [hl]                                    ; $6354: $66
    ld a, [hl-]                                   ; $6355: $3a
    ld a, e                                       ; $6356: $7b
    and b                                         ; $6357: $a0
    ccf                                           ; $6358: $3f
    ld [c], a                                     ; $6359: $e2
    add b                                         ; $635a: $80
    call c, $fffe                                 ; $635b: $dc $fe $ff
    and l                                         ; $635e: $a5
    ld [bc], a                                    ; $635f: $02
    rlca                                          ; $6360: $07
    rrca                                          ; $6361: $0f

jr_054_6362:
    ld c, $05                                     ; $6362: $0e $05
    inc a                                         ; $6364: $3c
    dec [hl]                                      ; $6365: $35
    ld l, a                                       ; $6366: $6f
    add hl, sp                                    ; $6367: $39
    add hl, sp                                    ; $6368: $39
    dec [hl]                                      ; $6369: $35
    ld l, c                                       ; $636a: $69
    ei                                            ; $636b: $fb
    pop hl                                        ; $636c: $e1
    ld l, d                                       ; $636d: $6a
    ld a, $3c                                     ; $636e: $3e $3c
    add b                                         ; $6370: $80
    or b                                          ; $6371: $b0
    add b                                         ; $6372: $80
    and d                                         ; $6373: $a2
    add b                                         ; $6374: $80
    call c, Call_054_6306                         ; $6375: $dc $06 $63
    add [hl]                                      ; $6378: $86
    ld h, c                                       ; $6379: $61
    ld [bc], a                                    ; $637a: $02
    ld [bc], a                                    ; $637b: $02
    add h                                         ; $637c: $84
    ret nz                                        ; $637d: $c0

    ld a, [hl-]                                   ; $637e: $3a
    rst $38                                       ; $637f: $ff
    ld a, [hl-]                                   ; $6380: $3a
    dec [hl]                                      ; $6381: $35
    ld l, e                                       ; $6382: $6b
    ld l, h                                       ; $6383: $6c
    ld a, $44                                     ; $6384: $3e $44
    inc a                                         ; $6386: $3c
    ld l, d                                       ; $6387: $6a
    ld bc, $323e                                  ; $6388: $01 $3e $32
    add b                                         ; $638b: $80
    cp $81                                        ; $638c: $fe $81
    ld a, l                                       ; $638e: $7d
    push bc                                       ; $638f: $c5
    nop                                           ; $6390: $00
    or h                                          ; $6391: $b4
    ld b, $66                                     ; $6392: $06 $66
    ld b, l                                       ; $6394: $45
    ld h, b                                       ; $6395: $60
    push bc                                       ; $6396: $c5
    and c                                         ; $6397: $a1
    ld a, [hl]                                    ; $6398: $7e
    jp nz, Jump_054_6ea0                          ; $6399: $c2 $a0 $6e

    ld [hl], h                                    ; $639c: $74
    ld a, [hl-]                                   ; $639d: $3a
    ld [hl], $35                                  ; $639e: $36 $35
    ld l, d                                       ; $63a0: $6a
    add b                                         ; $63a1: $80
    ret nz                                        ; $63a2: $c0

    rlca                                          ; $63a3: $07
    xor [hl]                                      ; $63a4: $ae
    xor a                                         ; $63a5: $af
    xor [hl]                                      ; $63a6: $ae
    ld a, l                                       ; $63a7: $7d
    push bc                                       ; $63a8: $c5
    nop                                           ; $63a9: $00
    or [hl]                                       ; $63aa: $b6
    rst $38                                       ; $63ab: $ff
    add e                                         ; $63ac: $83
    ld d, e                                       ; $63ad: $53
    ld b, b                                       ; $63ae: $40
    jp nz, $aa60                                  ; $63af: $c2 $60 $aa

    add l                                         ; $63b2: $85
    and c                                         ; $63b3: $a1
    ld [hl], $00                                  ; $63b4: $36 $00
    ret nz                                        ; $63b6: $c0

    ld l, c                                       ; $63b7: $69
    ld a, l                                       ; $63b8: $7d
    and b                                         ; $63b9: $a0
    ld l, d                                       ; $63ba: $6a
    rst $38                                       ; $63bb: $ff
    and b                                         ; $63bc: $a0
    xor a                                         ; $63bd: $af
    rlca                                          ; $63be: $07
    xor [hl]                                      ; $63bf: $ae
    xor a                                         ; $63c0: $af
    sbc [hl]                                      ; $63c1: $9e
    dec [hl]                                      ; $63c2: $35
    ld b, c                                       ; $63c3: $41
    ld a, b                                       ; $63c4: $78
    ld b, b                                       ; $63c5: $40
    add b                                         ; $63c6: $80
    ld a, h                                       ; $63c7: $7c
    add d                                         ; $63c8: $82

jr_054_63c9:
    ld h, e                                       ; $63c9: $63
    ld a, [bc]                                    ; $63ca: $0a
    jp nz, $ae5d                                  ; $63cb: $c2 $5d $ae

    ccf                                           ; $63ce: $3f
    pop hl                                        ; $63cf: $e1
    dec [hl]                                      ; $63d0: $35
    ld l, h                                       ; $63d1: $6c
    ld l, l                                       ; $63d2: $6d
    cp a                                          ; $63d3: $bf
    and c                                         ; $63d4: $a1
    xor a                                         ; $63d5: $af
    cp c                                          ; $63d6: $b9
    ld b, c                                       ; $63d7: $41
    ldh a, [rNR42]                                ; $63d8: $f0 $21
    ld h, c                                       ; $63da: $61
    add b                                         ; $63db: $80
    ld a, h                                       ; $63dc: $7c
    add d                                         ; $63dd: $82
    ld h, e                                       ; $63de: $63
    dec b                                         ; $63df: $05
    jp nz, $afae                                  ; $63e0: $c2 $ae $af

    ld a, [hl-]                                   ; $63e3: $3a
    dec [hl]                                      ; $63e4: $35
    ld a, a                                       ; $63e5: $7f
    ld l, [hl]                                    ; $63e6: $6e
    ld [hl], b                                    ; $63e7: $70
    ld [hl], c                                    ; $63e8: $71
    ld [hl], b                                    ; $63e9: $70
    ld l, [hl]                                    ; $63ea: $6e
    ld [hl], $44                                  ; $63eb: $36 $44
    ld sp, $b060                                  ; $63ed: $31 $60 $b0
    ld a, [hl]                                    ; $63f0: $7e
    and e                                         ; $63f1: $a3
    add b                                         ; $63f2: $80
    ld a, l                                       ; $63f3: $7d
    ld d, a                                       ; $63f4: $57
    ld b, c                                       ; $63f5: $41
    add h                                         ; $63f6: $84
    ld b, b                                       ; $63f7: $40
    ld b, h                                       ; $63f8: $44

jr_054_63f9:
    inc a                                         ; $63f9: $3c
    jp z, $afa0                                   ; $63fa: $ca $a0 $af

    ld c, $fb                                     ; $63fd: $0e $fb
    jp Jump_054_483a                              ; $63ff: $c3 $3a $48


    ld c, c                                       ; $6402: $49
    ret nz                                        ; $6403: $c0

    add b                                         ; $6404: $80
    ccf                                           ; $6405: $3f
    call nz, Call_054_5d00                        ; $6406: $c4 $00 $5d
    ld c, c                                       ; $6409: $49
    jr nz, jr_054_6482                            ; $640a: $20 $76

    ld b, l                                       ; $640c: $45
    ld b, b                                       ; $640d: $40
    xor a                                         ; $640e: $af
    ld b, b                                       ; $640f: $40
    pop bc                                        ; $6410: $c1
    pop bc                                        ; $6411: $c1
    ld [hl], $3a                                  ; $6412: $36 $3a
    ld h, d                                       ; $6414: $62
    call nz, Call_054_6fa0                        ; $6415: $c4 $a0 $6f
    dec [hl]                                      ; $6418: $35
    ld a, [hl-]                                   ; $6419: $3a
    ld d, h                                       ; $641a: $54
    ld d, a                                       ; $641b: $57
    ret nz                                        ; $641c: $c0

    db $e3                                        ; $641d: $e3
    call nc, $a0d5                                ; $641e: $d4 $d5 $a0
    ld b, e                                       ; $6421: $43
    sub h                                         ; $6422: $94
    nop                                           ; $6423: $00
    ld e, c                                       ; $6424: $59
    ld [de], a                                    ; $6425: $12
    jr nz, jr_054_63c9                            ; $6426: $20 $a1

    ld c, $60                                     ; $6428: $0e $60
    ld b, l                                       ; $642a: $45
    push bc                                       ; $642b: $c5
    add c                                         ; $642c: $81
    jp nz, Jump_054_68a0                          ; $642d: $c2 $a0 $68

    ld c, $bf                                     ; $6430: $0e $bf
    pop hl                                        ; $6432: $e1
    jr c, jr_054_6472                             ; $6433: $38 $3d

    scf                                           ; $6435: $37
    cp c                                          ; $6436: $b9
    jr nz, jr_054_63f9                            ; $6437: $20 $c0

    ld h, [hl]                                    ; $6439: $66
    nop                                           ; $643a: $00
    ld e, e                                       ; $643b: $5b
    cp [hl]                                       ; $643c: $be
    ld h, e                                       ; $643d: $63
    nop                                           ; $643e: $00
    ccf                                           ; $643f: $3f
    ld [c], a                                     ; $6440: $e2
    add e                                         ; $6441: $83
    pop bc                                        ; $6442: $c1
    cp a                                          ; $6443: $bf
    ld [c], a                                     ; $6444: $e2
    cp a                                          ; $6445: $bf
    add c                                         ; $6446: $81
    ld bc, $aec2                                  ; $6447: $01 $c2 $ae

jr_054_644a:
    ld [bc], a                                    ; $644a: $02
    nop                                           ; $644b: $00
    ld e, e                                       ; $644c: $5b
    ld b, c                                       ; $644d: $41
    jp Jump_000_0580                              ; $644e: $c3 $80 $05


    db $e3                                        ; $6451: $e3
    ld b, e                                       ; $6452: $43
    jp $813b                                      ; $6453: $c3 $3b $81


    dec sp                                        ; $6456: $3b
    ld [hl+], a                                   ; $6457: $22
    ld h, l                                       ; $6458: $65
    ld b, e                                       ; $6459: $43
    nop                                           ; $645a: $00
    ld e, h                                       ; $645b: $5c
    jp $ae21                                      ; $645c: $c3 $21 $ae


    inc bc                                        ; $645f: $03
    ld b, [hl]                                    ; $6460: $46
    ld b, l                                       ; $6461: $45
    ret nz                                        ; $6462: $c0

    ld [$c036], a                                 ; $6463: $ea $36 $c0
    ld b, d                                       ; $6466: $42
    ld h, c                                       ; $6467: $61
    ld l, l                                       ; $6468: $6d
    ld bc, $5e00                                  ; $6469: $01 $00 $5e
    jp Jump_000_0f21                              ; $646c: $c3 $21 $0f


    xor a                                         ; $646f: $af
    xor [hl]                                      ; $6470: $ae
    ld c, d                                       ; $6471: $4a

jr_054_6472:
    ld d, [hl]                                    ; $6472: $56
    add h                                         ; $6473: $84
    ld h, c                                       ; $6474: $61
    jp Jump_000_03a0                              ; $6475: $c3 $a0 $03


    ret nz                                        ; $6478: $c0

    inc a                                         ; $6479: $3c
    ld h, b                                       ; $647a: $60
    ld h, c                                       ; $647b: $61
    ld b, [hl]                                    ; $647c: $46
    jp Jump_000_00a0                              ; $647d: $c3 $a0 $00


    add e                                         ; $6480: $83
    add b                                         ; $6481: $80

jr_054_6482:
    ld e, $02                                     ; $6482: $1e $02
    ld b, e                                       ; $6484: $43
    ld c, d                                       ; $6485: $4a
    ld e, b                                       ; $6486: $58
    inc b                                         ; $6487: $04
    ld h, c                                       ; $6488: $61
    rra                                           ; $6489: $1f
    ld l, e                                       ; $648a: $6b
    ld l, h                                       ; $648b: $6c
    ld l, h                                       ; $648c: $6c
    ld l, a                                       ; $648d: $6f
    ld l, [hl]                                    ; $648e: $6e
    ld bc, $83e3                                  ; $648f: $01 $e3 $83
    and l                                         ; $6492: $a5
    add b                                         ; $6493: $80
    db $dd                                        ; $6494: $dd
    ld l, [hl]                                    ; $6495: $6e
    ld a, e                                       ; $6496: $7b
    ld h, h                                       ; $6497: $64
    ld b, h                                       ; $6498: $44
    ld c, l                                       ; $6499: $4d
    ld d, l                                       ; $649a: $55
    cp $a0                                        ; $649b: $fe $a0
    ld l, [hl]                                    ; $649d: $6e
    ld [hl], b                                    ; $649e: $70
    call nz, $c2a0                                ; $649f: $c4 $a0 $c2
    ei                                            ; $64a2: $fb
    ld b, c                                       ; $64a3: $41
    ld b, b                                       ; $64a4: $40
    dec sp                                        ; $64a5: $3b
    ld [bc], a                                    ; $64a6: $02
    jr nz, jr_054_644a                            ; $64a7: $20 $a1

jr_054_64a9:
    add b                                         ; $64a9: $80
    db $dd                                        ; $64aa: $dd
    cp $03                                        ; $64ab: $fe $03
    sbc [hl]                                      ; $64ad: $9e
    ld b, l                                       ; $64ae: $45
    dec de                                        ; $64af: $1b
    ld d, d                                       ; $64b0: $52
    ld d, l                                       ; $64b1: $55
    cp a                                          ; $64b2: $bf
    add e                                         ; $64b3: $83
    dec [hl]                                      ; $64b4: $35
    xor [hl]                                      ; $64b5: $ae
    nop                                           ; $64b6: $00
    ld h, b                                       ; $64b7: $60
    rst $38                                       ; $64b8: $ff
    ld b, [hl]                                    ; $64b9: $46
    cp a                                          ; $64ba: $bf
    ld [bc], a                                    ; $64bb: $02
    inc b                                         ; $64bc: $04
    nop                                           ; $64bd: $00
    ld e, d                                       ; $64be: $5a
    cp $03                                        ; $64bf: $fe $03
    and c                                         ; $64c1: $a1
    cp a                                          ; $64c2: $bf
    call nz, $a57b                                ; $64c3: $c4 $7b $a5
    rst $38                                       ; $64c6: $ff
    ld b, l                                       ; $64c7: $45
    ret nz                                        ; $64c8: $c0

    ld hl, $1980                                  ; $64c9: $21 $80 $19
    add $5f                                       ; $64cc: $c6 $5f
    ld [bc], a                                    ; $64ce: $02
    call nc, Call_000_3fd5                        ; $64cf: $d4 $d5 $3f
    add b                                         ; $64d2: $80
    inc b                                         ; $64d3: $04
    ld h, c                                       ; $64d4: $61
    dec a                                         ; $64d5: $3d
    add d                                         ; $64d6: $82
    ld [hl], $ae                                  ; $64d7: $36 $ae
    inc c                                         ; $64d9: $0c
    or $61                                        ; $64da: $f6 $61
    rst $38                                       ; $64dc: $ff
    call nz, $dbda                                ; $64dd: $c4 $da $db
    add b                                         ; $64e0: $80

jr_054_64e1:
    dec de                                        ; $64e1: $1b
    ld b, b                                       ; $64e2: $40
    inc bc                                        ; $64e3: $03
    ret nz                                        ; $64e4: $c0

    add c                                         ; $64e5: $81
    add b                                         ; $64e6: $80
    and d                                         ; $64e7: $a2
    jr c, jr_054_64a9                             ; $64e8: $38 $bf

    ld h, b                                       ; $64ea: $60
    ld a, [$fa80]                                 ; $64eb: $fa $80 $fa
    nop                                           ; $64ee: $00
    add hl, sp                                    ; $64ef: $39
    inc bc                                        ; $64f0: $03
    inc bc                                        ; $64f1: $03
    ld a, [hl]                                    ; $64f2: $7e
    inc bc                                        ; $64f3: $03
    nop                                           ; $64f4: $00
    cp h                                          ; $64f5: $bc
    xor h                                         ; $64f6: $ac
    ld b, b                                       ; $64f7: $40
    inc bc                                        ; $64f8: $03
    ret nz                                        ; $64f9: $c0

    ld h, b                                       ; $64fa: $60
    ld a, c                                       ; $64fb: $79
    ld h, h                                       ; $64fc: $64
    ld b, $a1                                     ; $64fd: $06 $a1
    add hl, sp                                    ; $64ff: $39
    ld a, a                                       ; $6500: $7f
    ld b, c                                       ; $6501: $41
    ld b, l                                       ; $6502: $45
    ld a, a                                       ; $6503: $7f
    ld b, [hl]                                    ; $6504: $46
    add hl, sp                                    ; $6505: $39
    ld [hl], $02                                  ; $6506: $36 $02
    dec c                                         ; $6508: $0d
    ld c, $05                                     ; $6509: $0e $05
    ld a, [hl]                                    ; $650b: $7e
    ld [$008c], sp                                ; $650c: $08 $8c $00
    cp b                                          ; $650f: $b8
    cp h                                          ; $6510: $bc
    inc hl                                        ; $6511: $23
    ld a, c                                       ; $6512: $79
    ld a, [hl]                                    ; $6513: $7e
    jp z, $8840                                   ; $6514: $ca $40 $88

    jr nz, @+$41                                  ; $6517: $20 $3f

    ld b, c                                       ; $6519: $41
    dec b                                         ; $651a: $05
    pop bc                                        ; $651b: $c1
    rlca                                          ; $651c: $07
    or l                                          ; $651d: $b5
    jr nz, jr_054_6593                            ; $651e: $20 $73

    jr nz, jr_054_64e1                            ; $6520: $20 $bf

    add [hl]                                      ; $6522: $86
    nop                                           ; $6523: $00
    cp l                                          ; $6524: $bd
    pop bc                                        ; $6525: $c1
    ld h, b                                       ; $6526: $60
    add d                                         ; $6527: $82
    add e                                         ; $6528: $83
    pop de                                        ; $6529: $d1
    add hl, sp                                    ; $652a: $39
    rst $00                                       ; $652b: $c7
    and c                                         ; $652c: $a1
    cp a                                          ; $652d: $bf
    ld b, b                                       ; $652e: $40
    ret nz                                        ; $652f: $c0

    ldh [$9a], a                                  ; $6530: $e0 $9a
    ld sp, $0f20                                  ; $6532: $31 $20 $0f
    rlca                                          ; $6535: $07
    add a                                         ; $6536: $87
    ld [bc], a                                    ; $6537: $02
    sbc h                                         ; $6538: $9c
    sbc a                                         ; $6539: $9f
    nop                                           ; $653a: $00
    add b                                         ; $653b: $80
    ld a, a                                       ; $653c: $7f
    ld bc, $d980                                  ; $653d: $01 $80 $d9
    cp [hl]                                       ; $6540: $be
    ld b, d                                       ; $6541: $42

Call_054_6542:
    sbc a                                         ; $6542: $9f
    sbc a                                         ; $6543: $9f
    sbc h                                         ; $6544: $9c
    add l                                         ; $6545: $85
    add a                                         ; $6546: $87
    adc b                                         ; $6547: $88
    ld [hl], b                                    ; $6548: $70
    rst $00                                       ; $6549: $c7
    and b                                         ; $654a: $a0
    ret nz                                        ; $654b: $c0

    pop hl                                        ; $654c: $e1
    add hl, sp                                    ; $654d: $39
    ccf                                           ; $654e: $3f
    dec b                                         ; $654f: $05
    sbc c                                         ; $6550: $99
    sbc e                                         ; $6551: $9b
    sub a                                         ; $6552: $97
    sbc b                                         ; $6553: $98
    ld b, $c0                                     ; $6554: $06 $c0
    inc b                                         ; $6556: $04
    ld e, $60                                     ; $6557: $1e $60
    ret nc                                        ; $6559: $d0

    add b                                         ; $655a: $80
    ld a, c                                       ; $655b: $79
    cp [hl]                                       ; $655c: $be
    ld b, h                                       ; $655d: $44
    cp a                                          ; $655e: $bf
    ld b, b                                       ; $655f: $40
    cp a                                          ; $6560: $bf
    ld h, c                                       ; $6561: $61
    ld a, [hl-]                                   ; $6562: $3a
    inc b                                         ; $6563: $04
    ret nz                                        ; $6564: $c0

    ld [hl], $45                                  ; $6565: $36 $45
    ld h, b                                       ; $6567: $60
    pop af                                        ; $6568: $f1
    nop                                           ; $6569: $00
    ld [hl], $00                                  ; $656a: $36 $00
    ret nz                                        ; $656c: $c0

    dec b                                         ; $656d: $05
    nop                                           ; $656e: $00
    ld e, h                                       ; $656f: $5c
    cp [hl]                                       ; $6570: $be
    ld b, h                                       ; $6571: $44
    sbc a                                         ; $6572: $9f
    sbc h                                         ; $6573: $9c
    ld b, h                                       ; $6574: $44
    ld hl, $3913                                  ; $6575: $21 $13 $39
    xor a                                         ; $6578: $af
    add $c0                                       ; $6579: $c6 $c0
    dec [hl]                                      ; $657b: $35
    ld [bc], a                                    ; $657c: $02
    ld [bc], a                                    ; $657d: $02
    add c                                         ; $657e: $81
    ld [hl+], a                                   ; $657f: $22
    ld b, e                                       ; $6580: $43
    dec l                                         ; $6581: $2d
    nop                                           ; $6582: $00
    or d                                          ; $6583: $b2
    ld e, b                                       ; $6584: $58
    db $fd                                        ; $6585: $fd
    and b                                         ; $6586: $a0
    cp a                                          ; $6587: $bf
    and d                                         ; $6588: $a2
    call nz, Call_054_4000                        ; $6589: $c4 $00 $40
    dec b                                         ; $658c: $05
    ld a, e                                       ; $658d: $7b
    nop                                           ; $658e: $00
    sbc b                                         ; $658f: $98
    add c                                         ; $6590: $81
    ldh [$83], a                                  ; $6591: $e0 $83

jr_054_6593:
    sbc c                                         ; $6593: $99
    dec b                                         ; $6594: $05
    add c                                         ; $6595: $81
    and b                                         ; $6596: $a0
    ret nz                                        ; $6597: $c0

    ld b, $80                                     ; $6598: $06 $80
    db $db                                        ; $659a: $db
    db $fc                                        ; $659b: $fc
    jr nz, jr_054_65d7                            ; $659c: $20 $39

    ld [bc], a                                    ; $659e: $02
    ld b, b                                       ; $659f: $40
    inc b                                         ; $65a0: $04
    adc d                                         ; $65a1: $8a
    nop                                           ; $65a2: $00
    rst $30                                       ; $65a3: $f7
    ld bc, $ff97                                  ; $65a4: $01 $97 $ff
    ldh [rSB], a                                  ; $65a7: $e0 $01
    ldh [$c0], a                                  ; $65a9: $e0 $c0
    adc b                                         ; $65ab: $88
    add b                                         ; $65ac: $80
    ld a, e                                       ; $65ad: $7b
    sbc l                                         ; $65ae: $9d
    ld h, d                                       ; $65af: $62
    and $7f                                       ; $65b0: $e6 $7f
    and c                                         ; $65b2: $a1
    ld [hl], $39                                  ; $65b3: $36 $39
    scf                                           ; $65b5: $37
    ld bc, $e1c2                                  ; $65b6: $01 $c2 $e1
    sbc b                                         ; $65b9: $98
    sbc c                                         ; $65ba: $99
    ld [$c0f0], sp                                ; $65bb: $08 $f0 $c0
    adc c                                         ; $65be: $89
    nop                                           ; $65bf: $00
    cp d                                          ; $65c0: $ba
    sbc e                                         ; $65c1: $9b
    and d                                         ; $65c2: $a2
    ld a, a                                       ; $65c3: $7f
    ld b, b                                       ; $65c4: $40
    ld b, [hl]                                    ; $65c5: $46
    ld b, [hl]                                    ; $65c6: $46
    ld b, l                                       ; $65c7: $45
    ld b, l                                       ; $65c8: $45
    rst $30                                       ; $65c9: $f7

jr_054_65ca:
    ld b, $01                                     ; $65ca: $06 $01
    nop                                           ; $65cc: $00
    call nz, $98c0                                ; $65cd: $c4 $c0 $98
    sbc c                                         ; $65d0: $99
    ld bc, $6100                                  ; $65d1: $01 $00 $61
    ld b, $80                                     ; $65d4: $06 $80
    inc bc                                        ; $65d6: $03

jr_054_65d7:
    ld b, e                                       ; $65d7: $43
    adc h                                         ; $65d8: $8c
    add b                                         ; $65d9: $80
    ret nc                                        ; $65da: $d0

    ld [bc], a                                    ; $65db: $02
    db $e3                                        ; $65dc: $e3
    sbc [hl]                                      ; $65dd: $9e
    xor [hl]                                      ; $65de: $ae
    rst $08                                       ; $65df: $cf
    nop                                           ; $65e0: $00
    rst $38                                       ; $65e1: $ff
    ld b, [hl]                                    ; $65e2: $46
    ld b, [hl]                                    ; $65e3: $46
    dec b                                         ; $65e4: $05
    rlca                                          ; $65e5: $07
    rrca                                          ; $65e6: $0f
    sbc e                                         ; $65e7: $9b
    sbc b                                         ; $65e8: $98
    sbc c                                         ; $65e9: $99
    add d                                         ; $65ea: $82
    inc bc                                        ; $65eb: $03
    pop bc                                        ; $65ec: $c1
    dec b                                         ; $65ed: $05
    add b                                         ; $65ee: $80
    rra                                           ; $65ef: $1f
    di                                            ; $65f0: $f3
    ld b, e                                       ; $65f1: $43
    ld [bc], a                                    ; $65f2: $02
    db $e4                                        ; $65f3: $e4
    pop bc                                        ; $65f4: $c1
    ld [c], a                                     ; $65f5: $e2
    rlc b                                         ; $65f6: $cb $00
    ld [bc], a                                    ; $65f8: $02
    ld c, $87                                     ; $65f9: $0e $87

jr_054_65fb:
    and b                                         ; $65fb: $a0
    sbc c                                         ; $65fc: $99
    dec c                                         ; $65fd: $0d
    ld [bc], a                                    ; $65fe: $02
    pop bc                                        ; $65ff: $c1
    ld bc, $2242                                  ; $6600: $01 $42 $22
    add b                                         ; $6603: $80
    sbc $de                                       ; $6604: $de $de
    ld h, e                                       ; $6606: $63
    inc a                                         ; $6607: $3c
    ld b, b                                       ; $6608: $40
    jr nz, jr_054_65ca                            ; $6609: $20 $bf

    push hl                                       ; $660b: $e5
    inc b                                         ; $660c: $04
    inc bc                                        ; $660d: $03
    inc bc                                        ; $660e: $03
    inc bc                                        ; $660f: $03
    add d                                         ; $6610: $82
    ld bc, $2002                                  ; $6611: $01 $02 $20
    nop                                           ; $6614: $00
    ld h, c                                       ; $6615: $61
    add h                                         ; $6616: $84
    nop                                           ; $6617: $00
    ld e, e                                       ; $6618: $5b
    ld e, l                                       ; $6619: $5d
    ld [bc], a                                    ; $661a: $02
    ret nz                                        ; $661b: $c0

    rst $20                                       ; $661c: $e7
    or a                                          ; $661d: $b7
    push hl                                       ; $661e: $e5
    ld [bc], a                                    ; $661f: $02
    jr nz, jr_054_6664                            ; $6620: $20 $42

    and h                                         ; $6622: $a4
    add b                                         ; $6623: $80
    ld a, h                                       ; $6624: $7c
    sbc [hl]                                      ; $6625: $9e
    ld b, b                                       ; $6626: $40
    inc b                                         ; $6627: $04
    ld b, l                                       ; $6628: $45
    ld b, e                                       ; $6629: $43
    ccf                                           ; $662a: $3f
    ccf                                           ; $662b: $3f
    db $fd                                        ; $662c: $fd
    pop hl                                        ; $662d: $e1
    ld sp, hl                                     ; $662e: $f9
    db $e4                                        ; $662f: $e4
    xor [hl]                                      ; $6630: $ae
    ldh [rSCY], a                                 ; $6631: $e0 $42
    and [hl]                                      ; $6633: $a6
    nop                                           ; $6634: $00
    ld e, d                                       ; $6635: $5a
    pop bc                                        ; $6636: $c1
    ld h, b                                       ; $6637: $60
    add b                                         ; $6638: $80
    jr nz, jr_054_65fb                            ; $6639: $20 $c0

    ld hl, $a444                                  ; $663b: $21 $44 $a4
    ld h, h                                       ; $663e: $64
    ld b, d                                       ; $663f: $42
    rst $38                                       ; $6640: $ff
    add sp, -$5b                                  ; $6641: $e8 $a5
    ld b, d                                       ; $6643: $42
    pop hl                                        ; $6644: $e1
    ld b, d                                       ; $6645: $42
    dec h                                         ; $6646: $25
    nop                                           ; $6647: $00

Jump_054_6648:
    ld e, b                                       ; $6648: $58
    and b                                         ; $6649: $a0
    ld b, e                                       ; $664a: $43
    and c                                         ; $664b: $a1
    sub e                                         ; $664c: $93
    nop                                           ; $664d: $00
    cp a                                          ; $664e: $bf
    ld b, b                                       ; $664f: $40
    ld l, c                                       ; $6650: $69

jr_054_6651:
    and e                                         ; $6651: $a3
    dec [hl]                                      ; $6652: $35
    dec [hl]                                      ; $6653: $35
    and e                                         ; $6654: $a3
    db $fc                                        ; $6655: $fc
    push hl                                       ; $6656: $e5
    ld l, d                                       ; $6657: $6a
    inc bc                                        ; $6658: $03
    ld b, b                                       ; $6659: $40
    and c                                         ; $665a: $a1
    ld h, [hl]                                    ; $665b: $66
    ld b, c                                       ; $665c: $41
    ld b, d                                       ; $665d: $42
    ld hl, $1a80                                  ; $665e: $21 $80 $1a
    ld [bc], a                                    ; $6661: $02
    and b                                         ; $6662: $a0
    add c                                         ; $6663: $81

jr_054_6664:
    inc hl                                        ; $6664: $23
    ret nz                                        ; $6665: $c0

    ldh [$8c], a                                  ; $6666: $e0 $8c
    pop bc                                        ; $6668: $c1
    ld b, h                                       ; $6669: $44
    ld a, [$6a42]                                 ; $666a: $fa $42 $6a
    ld b, b                                       ; $666d: $40
    ld b, d                                       ; $666e: $42
    ld h, $80                                     ; $666f: $26 $80
    rra                                           ; $6671: $1f
    nop                                           ; $6672: $00
    inc hl                                        ; $6673: $23
    ld l, e                                       ; $6674: $6b
    dec c                                         ; $6675: $0d
    ld [hl], c                                    ; $6676: $71
    rst $38                                       ; $6677: $ff
    add sp, $6d                                   ; $6678: $e8 $6d
    ld b, h                                       ; $667a: $44
    add b                                         ; $667b: $80

jr_054_667c:
    jr nz, @+$03                                  ; $667c: $20 $01

    jp nz, Jump_000_2dd0                          ; $667e: $c2 $d0 $2d

    add b                                         ; $6681: $80
    ld de, $c016                                  ; $6682: $11 $16 $c0
    pop bc                                        ; $6685: $c1
    xor a                                         ; $6686: $af
    xor [hl]                                      ; $6687: $ae
    ret nz                                        ; $6688: $c0

    jp z, $8045                                   ; $6689: $ca $45 $80

    jr nz, jr_054_66f4                            ; $668c: $20 $66

    nop                                           ; $668e: $00
    ld b, e                                       ; $668f: $43
    inc l                                         ; $6690: $2c
    ld h, b                                       ; $6691: $60
    add b                                         ; $6692: $80
    inc de                                        ; $6693: $13
    ld b, b                                       ; $6694: $40
    and d                                         ; $6695: $a2
    dec a                                         ; $6696: $3d
    nop                                           ; $6697: $00
    inc a                                         ; $6698: $3c
    jp z, Jump_000_21c1                           ; $6699: $ca $c1 $21

    sub $d7                                       ; $669c: $d6 $d7
    ld b, e                                       ; $669e: $43
    inc l                                         ; $669f: $2c
    inc b                                         ; $66a0: $04
    add b                                         ; $66a1: $80
    ld [hl], e                                    ; $66a2: $73
    ld a, $c2                                     ; $66a3: $3e $c2
    sbc l                                         ; $66a5: $9d
    rst $38                                       ; $66a6: $ff
    ldh [$39], a                                  ; $66a7: $e0 $39
    nop                                           ; $66a9: $00
    push bc                                       ; $66aa: $c5
    ld [c], a                                     ; $66ab: $e2
    db $f4                                        ; $66ac: $f4
    pop hl                                        ; $66ad: $e1
    ld b, e                                       ; $66ae: $43
    ld bc, $4280                                  ; $66af: $01 $80 $42
    inc h                                         ; $66b2: $24
    add b                                         ; $66b3: $80
    ld a, l                                       ; $66b4: $7d
    sbc d                                         ; $66b5: $9a
    ld h, b                                       ; $66b6: $60
    push de                                       ; $66b7: $d5
    ld h, e                                       ; $66b8: $63
    jr c, jr_054_667c                             ; $66b9: $38 $c1

    add [hl]                                      ; $66bb: $86
    db $e3                                        ; $66bc: $e3
    jp hl                                         ; $66bd: $e9


    ld bc, $01d2                                  ; $66be: $01 $d2 $01
    db $d3                                        ; $66c1: $d3
    ld [bc], a                                    ; $66c2: $02
    jp nz, Jump_054_7e80                          ; $66c3: $c2 $80 $7e

    cp l                                          ; $66c6: $bd
    ld hl, $a0bb                                  ; $66c7: $21 $bb $a0
    sub d                                         ; $66ca: $92
    ld h, c                                       ; $66cb: $61
    scf                                           ; $66cc: $37
    pop bc                                        ; $66cd: $c1
    ld c, b                                       ; $66ce: $48
    jr nz, jr_054_6651                            ; $66cf: $20 $80

    ld l, h                                       ; $66d1: $6c
    add e                                         ; $66d2: $83
    ld [bc], a                                    ; $66d3: $02
    and d                                         ; $66d4: $a2
    add b                                         ; $66d5: $80
    rst $18                                       ; $66d6: $df
    ld e, h                                       ; $66d7: $5c
    and d                                         ; $66d8: $a2
    rla                                           ; $66d9: $17
    ld h, b                                       ; $66da: $60
    ld a, b                                       ; $66db: $78
    and c                                         ; $66dc: $a1
    add hl, sp                                    ; $66dd: $39
    and d                                         ; $66de: $a2
    sbc [hl]                                      ; $66df: $9e
    nop                                           ; $66e0: $00
    inc l                                         ; $66e1: $2c
    push hl                                       ; $66e2: $e5
    ld h, h                                       ; $66e3: $64
    ld [hl+], a                                   ; $66e4: $22
    ld d, b                                       ; $66e5: $50
    dec c                                         ; $66e6: $0d
    nop                                           ; $66e7: $00
    nop                                           ; $66e8: $00
    nop                                           ; $66e9: $00
    pop bc                                        ; $66ea: $c1
    nop                                           ; $66eb: $00
    rst $38                                       ; $66ec: $ff
    rst $38                                       ; $66ed: $ff
    rst $38                                       ; $66ee: $ff
    rst $38                                       ; $66ef: $ff
    rst $38                                       ; $66f0: $ff
    rst $38                                       ; $66f1: $ff
    rst $38                                       ; $66f2: $ff
    rst $38                                       ; $66f3: $ff

jr_054_66f4:
    rst $38                                       ; $66f4: $ff
    rst $38                                       ; $66f5: $ff
    nop                                           ; $66f6: $00
    nop                                           ; $66f7: $00
    ld bc, $fe80                                  ; $66f8: $01 $80 $fe
    ldh [rIE], a                                  ; $66fb: $e0 $ff
    rst $38                                       ; $66fd: $ff
    rst $38                                       ; $66fe: $ff
    rst $38                                       ; $66ff: $ff
    rst $38                                       ; $6700: $ff
    add sp, $00                                   ; $6701: $e8 $00
    nop                                           ; $6703: $00
    nop                                           ; $6704: $00
    ld [bc], a                                    ; $6705: $02
    nop                                           ; $6706: $00
    dec de                                        ; $6707: $1b
    dec b                                         ; $6708: $05
    ld [bc], a                                    ; $6709: $02
    ld bc, $0523                                  ; $670a: $01 $23 $05
    ld [bc], a                                    ; $670d: $02
    ld [bc], a                                    ; $670e: $02
    ld a, [de]                                    ; $670f: $1a
    ld [$0302], sp                                ; $6710: $08 $02 $03
    inc h                                         ; $6713: $24
    ld [$0402], sp                                ; $6714: $08 $02 $04
    add hl, de                                    ; $6717: $19
    add hl, bc                                    ; $6718: $09
    ld [bc], a                                    ; $6719: $02
    dec b                                         ; $671a: $05
    inc e                                         ; $671b: $1c
    add hl, bc                                    ; $671c: $09
    ld [bc], a                                    ; $671d: $02
    ld b, $22                                     ; $671e: $06 $22
    ld a, [bc]                                    ; $6720: $0a
    ld [bc], a                                    ; $6721: $02
    rlca                                          ; $6722: $07
    jr z, jr_054_672f                             ; $6723: $28 $0a

    ld [bc], a                                    ; $6725: $02
    ld [$0c29], sp                                ; $6726: $08 $29 $0c
    ld [bc], a                                    ; $6729: $02
    add hl, bc                                    ; $672a: $09
    inc de                                        ; $672b: $13
    ld c, $02                                     ; $672c: $0e $02
    ld a, [bc]                                    ; $672e: $0a

jr_054_672f:
    ld [hl+], a                                   ; $672f: $22
    ld de, $0b02                                  ; $6730: $11 $02 $0b
    daa                                           ; $6733: $27
    inc d                                         ; $6734: $14
    ld [bc], a                                    ; $6735: $02
    inc c                                         ; $6736: $0c
    ld a, [hl+]                                   ; $6737: $2a
    ld d, $02                                     ; $6738: $16 $02
    dec c                                         ; $673a: $0d
    add hl, hl                                    ; $673b: $29
    rla                                           ; $673c: $17
    ld [bc], a                                    ; $673d: $02
    ld c, $2b                                     ; $673e: $0e $2b
    rla                                           ; $6740: $17
    ld [bc], a                                    ; $6741: $02
    rrca                                          ; $6742: $0f
    ld a, [hl+]                                   ; $6743: $2a
    jr @+$04                                      ; $6744: $18 $02

    db $10                                        ; $6746: $10
    ld e, $19                                     ; $6747: $1e $19
    ld [bc], a                                    ; $6749: $02
    ld de, $1a1d                                  ; $674a: $11 $1d $1a
    ld [bc], a                                    ; $674d: $02
    ld [de], a                                    ; $674e: $12
    rla                                           ; $674f: $17
    dec de                                        ; $6750: $1b
    ld [bc], a                                    ; $6751: $02
    inc de                                        ; $6752: $13
    ld d, $1c                                     ; $6753: $16 $1c
    ld [bc], a                                    ; $6755: $02
    inc d                                         ; $6756: $14
    jr jr_054_6777                                ; $6757: $18 $1e

    ld [bc], a                                    ; $6759: $02
    dec d                                         ; $675a: $15
    ld d, $20                                     ; $675b: $16 $20
    ld [bc], a                                    ; $675d: $02
    ld d, $28                                     ; $675e: $16 $28
    jr nz, jr_054_6764                            ; $6760: $20 $02

    rla                                           ; $6762: $17
    rla                                           ; $6763: $17

jr_054_6764:
    ld hl, $1802                                  ; $6764: $21 $02 $18
    ld [hl+], a                                   ; $6767: $22
    inc h                                         ; $6768: $24
    ld [bc], a                                    ; $6769: $02
    add hl, de                                    ; $676a: $19
    inc hl                                        ; $676b: $23
    ld h, $02                                     ; $676c: $26 $02
    ld a, [de]                                    ; $676e: $1a
    ld e, $2c                                     ; $676f: $1e $2c
    ld [bc], a                                    ; $6771: $02
    dec de                                        ; $6772: $1b
    jr jr_054_67a6                                ; $6773: $18 $31

    ld [bc], a                                    ; $6775: $02
    inc e                                         ; $6776: $1c

jr_054_6777:
    rla                                           ; $6777: $17
    ld [hl-], a                                   ; $6778: $32
    ld [bc], a                                    ; $6779: $02
    dec e                                         ; $677a: $1d
    add hl, hl                                    ; $677b: $29
    inc sp                                        ; $677c: $33
    ld [bc], a                                    ; $677d: $02
    ld e, $28                                     ; $677e: $1e $28
    inc [hl]                                      ; $6780: $34
    ld [bc], a                                    ; $6781: $02
    rra                                           ; $6782: $1f
    daa                                           ; $6783: $27
    ld [hl], $02                                  ; $6784: $36 $02
    jr nz, jr_054_67a0                            ; $6786: $20 $18

    ld a, [hl-]                                   ; $6788: $3a
    ld [bc], a                                    ; $6789: $02
    ld hl, $3a28                                  ; $678a: $21 $28 $3a
    ld [bc], a                                    ; $678d: $02
    ld [hl+], a                                   ; $678e: $22
    add hl, de                                    ; $678f: $19
    dec sp                                        ; $6790: $3b
    rst $38                                       ; $6791: $ff
    rst $38                                       ; $6792: $ff
    rst $38                                       ; $6793: $ff
    sbc h                                         ; $6794: $9c
    ld h, a                                       ; $6795: $67
    ld l, $6b                                     ; $6796: $2e $6b
    ld bc, $1c6f                                  ; $6798: $01 $6f $1c
    ld l, a                                       ; $679b: $6f
    ccf                                           ; $679c: $3f
    dec c                                         ; $679d: $0d
    dec c                                         ; $679e: $0d
    dec c                                         ; $679f: $0d

jr_054_67a0:
    ld c, $0e                                     ; $67a0: $0e $0e
    ld c, $fa                                     ; $67a2: $0e $fa
    rst $38                                       ; $67a4: $ff
    db $f4                                        ; $67a5: $f4

jr_054_67a6:
    rst $30                                       ; $67a6: $f7
    nop                                           ; $67a7: $00
    rst $38                                       ; $67a8: $ff
    rst $38                                       ; $67a9: $ff
    rst $38                                       ; $67aa: $ff
    rst $38                                       ; $67ab: $ff
    rst $38                                       ; $67ac: $ff
    rst $38                                       ; $67ad: $ff
    ld sp, hl                                     ; $67ae: $f9
    ld hl, sp+$5b                                 ; $67af: $f8 $5b
    rst $38                                       ; $67b1: $ff
    db $f4                                        ; $67b2: $f4
    ld hl, sp-$5f                                 ; $67b3: $f8 $a1
    rst $38                                       ; $67b5: $ff
    rst $38                                       ; $67b6: $ff
    rst $38                                       ; $67b7: $ff
    nop                                           ; $67b8: $00
    rst $38                                       ; $67b9: $ff
    rst $38                                       ; $67ba: $ff
    ld b, e                                       ; $67bb: $43
    rst $38                                       ; $67bc: $ff
    ld a, [$80ff]                                 ; $67bd: $fa $ff $80
    rst $18                                       ; $67c0: $df
    rst $38                                       ; $67c1: $ff
    rst $38                                       ; $67c2: $ff
    rst $38                                       ; $67c3: $ff
    rst $38                                       ; $67c4: $ff
    rst $38                                       ; $67c5: $ff
    rst $38                                       ; $67c6: $ff
    dec a                                         ; $67c7: $3d
    rst $38                                       ; $67c8: $ff
    nop                                           ; $67c9: $00
    ld a, [$80ff]                                 ; $67ca: $fa $ff $80
    rst $18                                       ; $67cd: $df
    rst $38                                       ; $67ce: $ff
    rst $38                                       ; $67cf: $ff
    rst $38                                       ; $67d0: $ff
    rst $38                                       ; $67d1: $ff
    rst $38                                       ; $67d2: $ff
    rst $38                                       ; $67d3: $ff
    ld e, e                                       ; $67d4: $5b
    rst $38                                       ; $67d5: $ff
    ld a, [$ffff]                                 ; $67d6: $fa $ff $ff
    rst $38                                       ; $67d9: $ff
    nop                                           ; $67da: $00
    rst $38                                       ; $67db: $ff
    rst $38                                       ; $67dc: $ff
    rst $38                                       ; $67dd: $ff
    rst $38                                       ; $67de: $ff
    dec a                                         ; $67df: $3d
    rst $38                                       ; $67e0: $ff
    ld a, [$80ff]                                 ; $67e1: $fa $ff $80
    rst $18                                       ; $67e4: $df
    rst $38                                       ; $67e5: $ff
    rst $38                                       ; $67e6: $ff
    rst $38                                       ; $67e7: $ff
    rst $38                                       ; $67e8: $ff
    rst $38                                       ; $67e9: $ff
    rst $38                                       ; $67ea: $ff
    nop                                           ; $67eb: $00
    ld b, e                                       ; $67ec: $43
    rst $38                                       ; $67ed: $ff
    ld b, e                                       ; $67ee: $43
    ld [c], a                                     ; $67ef: $e2
    db $fd                                        ; $67f0: $fd
    pop hl                                        ; $67f1: $e1
    rst $30                                       ; $67f2: $f7
    and $f2                                       ; $67f3: $e6 $f2
    db $e4                                        ; $67f5: $e4
    add b                                         ; $67f6: $80
    rst $18                                       ; $67f7: $df
    and a                                         ; $67f8: $a7
    ld [$c0ff], a                                 ; $67f9: $ea $ff $c0
    add e                                         ; $67fc: $83
    ld c, l                                       ; $67fd: $4d
    ld c, l                                       ; $67fe: $4d
    cp e                                          ; $67ff: $bb
    pop hl                                        ; $6800: $e1
    ei                                            ; $6801: $fb
    pop hl                                        ; $6802: $e1
    rst $38                                       ; $6803: $ff
    rst $38                                       ; $6804: $ff
    ret nz                                        ; $6805: $c0

    pop af                                        ; $6806: $f1
    cp e                                          ; $6807: $bb
    db $e3                                        ; $6808: $e3
    dec c                                         ; $6809: $0d
    ld hl, $3d4d                                  ; $680a: $21 $4d $3d
    rst $38                                       ; $680d: $ff
    ld c, c                                       ; $680e: $49
    add sp, -$3d                                  ; $680f: $e8 $c3
    rst $20                                       ; $6811: $e7
    ret z                                         ; $6812: $c8

    ldh [$2d], a                                  ; $6813: $e0 $2d
    db $fd                                        ; $6815: $fd
    ld [c], a                                     ; $6816: $e2
    dec l                                         ; $6817: $2d
    db $e4                                        ; $6818: $e4
    ld [bc], a                                    ; $6819: $02
    add b                                         ; $681a: $80
    db $dd                                        ; $681b: $dd
    dec c                                         ; $681c: $0d
    ld d, l                                       ; $681d: $55
    ld [c], a                                     ; $681e: $e2
    ld a, [$40e0]                                 ; $681f: $fa $e0 $40
    call nz, $e3f8                                ; $6822: $c4 $f8 $e3
    cp l                                          ; $6825: $bd
    ldh [$3d], a                                  ; $6826: $e0 $3d
    ldh [$60], a                                  ; $6828: $e0 $60
    sub c                                         ; $682a: $91
    cp a                                          ; $682b: $bf
    ret nc                                        ; $682c: $d0

    db $e3                                        ; $682d: $e3
    adc d                                         ; $682e: $8a
    ld [c], a                                     ; $682f: $e2
    ld b, [hl]                                    ; $6830: $46
    db $e4                                        ; $6831: $e4
    cp b                                          ; $6832: $b8
    pop bc                                        ; $6833: $c1
    ld c, l                                       ; $6834: $4d
    dec l                                         ; $6835: $2d
    ld a, l                                       ; $6836: $7d
    ldh [rLCDC], a                                ; $6837: $e0 $40
    ccf                                           ; $6839: $3f
    ldh [$fb], a                                  ; $683a: $e0 $fb
    pop de                                        ; $683c: $d1
    adc h                                         ; $683d: $8c
    adc $ec                                       ; $683e: $ce $ec
    and d                                         ; $6840: $a2
    sub b                                         ; $6841: $90
    pop hl                                        ; $6842: $e1
    ld c, c                                       ; $6843: $49
    pop hl                                        ; $6844: $e1
    dec l                                         ; $6845: $2d
    adc e                                         ; $6846: $8b
    pop hl                                        ; $6847: $e1
    rlca                                          ; $6848: $07
    ld l, l                                       ; $6849: $6d
    dec hl                                        ; $684a: $2b
    dec hl                                        ; $684b: $2b
    cp [hl]                                       ; $684c: $be
    ldh [$7d], a                                  ; $684d: $e0 $7d
    pop hl                                        ; $684f: $e1
    ld l, c                                       ; $6850: $69
    jp $d780                                      ; $6851: $c3 $80 $d7


    adc $c5                                       ; $6854: $ce $c5
    db $fc                                        ; $6856: $fc
    db $d3                                        ; $6857: $d3
    ld [c], a                                     ; $6858: $e2
    ld c, h                                       ; $6859: $4c
    pop hl                                        ; $685a: $e1
    dec c                                         ; $685b: $0d
    ld c, l                                       ; $685c: $4d
    ld c, l                                       ; $685d: $4d
    ld c, l                                       ; $685e: $4d
    ld l, l                                       ; $685f: $6d
    dec bc                                        ; $6860: $0b
    add a                                         ; $6861: $87
    dec bc                                        ; $6862: $0b
    ld c, e                                       ; $6863: $4b
    ld l, e                                       ; $6864: $6b
    ld a, l                                       ; $6865: $7d
    ld [c], a                                     ; $6866: $e2
    ld [hl-], a                                   ; $6867: $32
    jp nz, $fd43                                  ; $6868: $c2 $43 $fd

    ld d, c                                       ; $686b: $51
    pop bc                                        ; $686c: $c1
    dec l                                         ; $686d: $2d
    add hl, de                                    ; $686e: $19
    dec l                                         ; $686f: $2d
    ld bc, $86c3                                  ; $6870: $01 $c3 $86
    ldh [$2b], a                                  ; $6873: $e0 $2b
    dec bc                                        ; $6875: $0b
    rst $38                                       ; $6876: $ff
    pop hl                                        ; $6877: $e1
    ld a, [hl]                                    ; $6878: $7e
    ld [c], a                                     ; $6879: $e2
    scf                                           ; $687a: $37
    pop bc                                        ; $687b: $c1
    or b                                          ; $687c: $b0
    dec a                                         ; $687d: $3d
    ld a, [$c3e0]                                 ; $687e: $fa $e0 $c3
    pop bc                                        ; $6881: $c1
    jp $e1ff                                      ; $6882: $c3 $ff $e1


    ld l, l                                       ; $6885: $6d
    ld c, e                                       ; $6886: $4b
    jp Jump_054_4be2                              ; $6887: $c3 $e2 $4b


    ld [bc], a                                    ; $688a: $02
    pop bc                                        ; $688b: $c1
    ldh [$2b], a                                  ; $688c: $e0 $2b
    ld a, [hl]                                    ; $688e: $7e
    db $e4                                        ; $688f: $e4
    or a                                          ; $6890: $b7
    xor [hl]                                      ; $6891: $ae
    halt                                          ; $6892: $76
    xor c                                         ; $6893: $a9
    sbc $c3                                       ; $6894: $de $c3
    adc b                                         ; $6896: $88
    db $e4                                        ; $6897: $e4
    add l                                         ; $6898: $85
    push hl                                       ; $6899: $e5
    inc e                                         ; $689a: $1c
    ret nz                                        ; $689b: $c0

    pop hl                                        ; $689c: $e1
    ld a, $e0                                     ; $689d: $3e $e0
    ld c, e                                       ; $689f: $4b

Jump_054_68a0:
    dec bc                                        ; $68a0: $0b
    dec l                                         ; $68a1: $2d
    and l                                         ; $68a2: $a5
    jp $d67a                                      ; $68a3: $c3 $7a $d6


    ld c, b                                       ; $68a6: $48
    jp $89d8                                      ; $68a7: $c3 $d8 $89


    add c                                         ; $68aa: $81
    adc b                                         ; $68ab: $88
    and $39                                       ; $68ac: $e6 $39
    ldh [$2d], a                                  ; $68ae: $e0 $2d
    dec c                                         ; $68b0: $0d
    ld a, [hl]                                    ; $68b1: $7e
    ld [c], a                                     ; $68b2: $e2
    ld c, e                                       ; $68b3: $4b
    ld l, e                                       ; $68b4: $6b
    ld b, b                                       ; $68b5: $40
    ret nz                                        ; $68b6: $c0

    ld [c], a                                     ; $68b7: $e2
    ld a, e                                       ; $68b8: $7b
    pop bc                                        ; $68b9: $c1
    ld [hl], l                                    ; $68ba: $75
    xor e                                         ; $68bb: $ab
    ld [hl], $ab                                  ; $68bc: $36 $ab
    ld [$cfe2], sp                                ; $68be: $08 $e2 $cf
    ret nz                                        ; $68c1: $c0

    ld l, l                                       ; $68c2: $6d
    ld c, d                                       ; $68c3: $4a
    pop bc                                        ; $68c4: $c1
    rst $38                                       ; $68c5: $ff
    dec bc                                        ; $68c6: $0b
    ld c, e                                       ; $68c7: $4b
    dec c                                         ; $68c8: $0d
    inc c                                         ; $68c9: $0c
    inc c                                         ; $68ca: $0c
    inc l                                         ; $68cb: $2c
    dec c                                         ; $68cc: $0d
    dec c                                         ; $68cd: $0d
    ld e, $7f                                     ; $68ce: $1e $7f
    pop hl                                        ; $68d0: $e1
    ld c, e                                       ; $68d1: $4b
    ld c, e                                       ; $68d2: $4b
    ld c, e                                       ; $68d3: $4b
    ld c, l                                       ; $68d4: $4d
    or d                                          ; $68d5: $b2
    pop hl                                        ; $68d6: $e1

jr_054_68d7:
    cp [hl]                                       ; $68d7: $be
    call nz, $d780                                ; $68d8: $c4 $80 $d7
    ld d, c                                       ; $68db: $51
    dec l                                         ; $68dc: $2d
    add d                                         ; $68dd: $82
    pop hl                                        ; $68de: $e1
    pop bc                                        ; $68df: $c1
    pop hl                                        ; $68e0: $e1
    ret z                                         ; $68e1: $c8

    ldh [$0b], a                                  ; $68e2: $e0 $0b
    ret nz                                        ; $68e4: $c0

    pop hl                                        ; $68e5: $e1
    inc l                                         ; $68e6: $2c
    ld a, a                                       ; $68e7: $7f
    ld [c], a                                     ; $68e8: $e2
    ld [bc], a                                    ; $68e9: $02
    add b                                         ; $68ea: $80
    ldh [$0b], a                                  ; $68eb: $e0 $0b
    ld sp, hl                                     ; $68ed: $f9
    and d                                         ; $68ee: $a2
    halt                                          ; $68ef: $76
    and d                                         ; $68f0: $a2
    ld [hl], $b6                                  ; $68f1: $36 $b6
    bit 4, c                                      ; $68f3: $cb $61
    sub l                                         ; $68f5: $95
    ldh [$83], a                                  ; $68f6: $e0 $83
    add e                                         ; $68f8: $83
    nop                                           ; $68f9: $00
    add b                                         ; $68fa: $80
    ld [c], a                                     ; $68fb: $e2
    ld a, a                                       ; $68fc: $7f
    ld [c], a                                     ; $68fd: $e2
    add b                                         ; $68fe: $80
    ld [c], a                                     ; $68ff: $e2
    cp $c6                                        ; $6900: $fe $c6
    dec a                                         ; $6902: $3d
    sub h                                         ; $6903: $94
    sbc l                                         ; $6904: $9d
    add e                                         ; $6905: $83
    ld d, c                                       ; $6906: $51
    pop hl                                        ; $6907: $e1
    add c                                         ; $6908: $81
    ld [c], a                                     ; $6909: $e2
    ld c, $48                                     ; $690a: $0e $48
    pop bc                                        ; $690c: $c1
    dec c                                         ; $690d: $0d
    ld c, h                                       ; $690e: $4c
    ld c, h                                       ; $690f: $4c
    ccf                                           ; $6910: $3f
    db $e3                                        ; $6911: $e3
    ld bc, $3ee0                                  ; $6912: $01 $e0 $3e
    ldh [$be], a                                  ; $6915: $e0 $be
    pop bc                                        ; $6917: $c1
    jr nc, jr_054_68d7                            ; $6918: $30 $bd

    xor l                                         ; $691a: $ad
    ret nz                                        ; $691b: $c0

    call $e180                                    ; $691c: $cd $80 $e1
    ld b, e                                       ; $691f: $43
    db $e4                                        ; $6920: $e4
    dec c                                         ; $6921: $0d
    ld c, e                                       ; $6922: $4b
    cp a                                          ; $6923: $bf
    pop hl                                        ; $6924: $e1
    ccf                                           ; $6925: $3f
    ldh [rDIV], a                                 ; $6926: $e0 $04
    cp l                                          ; $6928: $bd
    ret nz                                        ; $6929: $c0

    xor h                                         ; $692a: $ac
    ldh [rKEY1], a                                ; $692b: $e0 $4d
    ld a, [hl]                                    ; $692d: $7e
    ret nz                                        ; $692e: $c0

    jp hl                                         ; $692f: $e9


    add e                                         ; $6930: $83
    add b                                         ; $6931: $80
    rst $10                                       ; $6932: $d7
    add b                                         ; $6933: $80
    ld [c], a                                     ; $6934: $e2
    add $e0                                       ; $6935: $c6 $e0
    ld b, $ba                                     ; $6937: $06 $ba
    db $e3                                        ; $6939: $e3
    ld c, e                                       ; $693a: $4b
    dec hl                                        ; $693b: $2b
    cp a                                          ; $693c: $bf
    push hl                                       ; $693d: $e5
    dec l                                         ; $693e: $2d
    ld [c], a                                     ; $693f: $e2
    add b                                         ; $6940: $80
    db $e4                                        ; $6941: $e4
    add b                                         ; $6942: $80
    rst $10                                       ; $6943: $d7
    cp $a3                                        ; $6944: $fe $a3
    inc b                                         ; $6946: $04
    add b                                         ; $6947: $80
    db $e4                                        ; $6948: $e4

jr_054_6949:
    dec a                                         ; $6949: $3d
    db $e3                                        ; $694a: $e3
    dec hl                                        ; $694b: $2b
    cp a                                          ; $694c: $bf
    push hl                                       ; $694d: $e5
    ret nz                                        ; $694e: $c0

    push hl                                       ; $694f: $e5
    ld a, d                                       ; $6950: $7a
    add b                                         ; $6951: $80
    ld e, h                                       ; $6952: $5c
    ld l, d                                       ; $6953: $6a
    ret nz                                        ; $6954: $c0

    rst $08                                       ; $6955: $cf
    ld a, [bc]                                    ; $6956: $0a
    add b                                         ; $6957: $80
    db $e3                                        ; $6958: $e3
    ld c, l                                       ; $6959: $4d
    cp e                                          ; $695a: $bb
    ret nz                                        ; $695b: $c0

    ld c, d                                       ; $695c: $4a
    add [hl]                                      ; $695d: $86
    and b                                         ; $695e: $a0
    ld a, h                                       ; $695f: $7c
    call nz, $e7c0                                ; $6960: $c4 $c0 $e7
    dec a                                         ; $6963: $3d
    adc e                                         ; $6964: $8b
    pop af                                        ; $6965: $f1
    inc c                                         ; $6966: $0c
    cp l                                          ; $6967: $bd
    xor h                                         ; $6968: $ac
    nop                                           ; $6969: $00
    ld [c], a                                     ; $696a: $e2
    ld [bc], a                                    ; $696b: $02
    and d                                         ; $696c: $a2
    ld c, l                                       ; $696d: $4d
    dec bc                                        ; $696e: $0b
    ld a, [bc]                                    ; $696f: $0a
    ld a, [bc]                                    ; $6970: $0a
    rla                                           ; $6971: $17
    ld c, d                                       ; $6972: $4a
    ld c, e                                       ; $6973: $4b
    ld l, e                                       ; $6974: $6b
    db $fc                                        ; $6975: $fc
    and b                                         ; $6976: $a0
    inc l                                         ; $6977: $2c
    ret nz                                        ; $6978: $c0

    pop hl                                        ; $6979: $e1
    xor $80                                       ; $697a: $ee $80
    ld a, [hl]                                    ; $697c: $7e
    and b                                         ; $697d: $a0
    ld [c], a                                     ; $697e: $e2
    ld a, d                                       ; $697f: $7a
    ld l, [hl]                                    ; $6980: $6e
    ld c, e                                       ; $6981: $4b
    ld b, e                                       ; $6982: $43
    ld [$e480], a                                 ; $6983: $ea $80 $e4
    rst $38                                       ; $6986: $ff
    jp nz, $0b0d                                  ; $6987: $c2 $0d $0b

    ld c, d                                       ; $698a: $4a
    dec sp                                        ; $698b: $3b
    ld a, [bc]                                    ; $698c: $0a
    ld a, [bc]                                    ; $698d: $0a
    ld a, h                                       ; $698e: $7c
    jp Jump_054_6c4c                              ; $698f: $c3 $4c $6c


    dec c                                         ; $6992: $0d
    nop                                           ; $6993: $00
    pop bc                                        ; $6994: $c1
    add b                                         ; $6995: $80
    ret nz                                        ; $6996: $c0

    jr nc, jr_054_6949                            ; $6997: $30 $b0

    ld b, l                                       ; $6999: $45
    add sp, $26                                   ; $699a: $e8 $26
    add b                                         ; $699c: $80
    add sp, -$40                                  ; $699d: $e8 $c0
    db $e4                                        ; $699f: $e4
    ld c, l                                       ; $69a0: $4d
    dec l                                         ; $69a1: $2d
    rst $10                                       ; $69a2: $d7
    ldh [$c1], a                                  ; $69a3: $e0 $c1
    and d                                         ; $69a5: $a2
    ld c, a                                       ; $69a6: $4f
    ld l, e                                       ; $69a7: $6b
    ld a, [bc]                                    ; $69a8: $0a
    ld c, d                                       ; $69a9: $4a
    ld l, e                                       ; $69aa: $6b
    ccf                                           ; $69ab: $3f
    pop hl                                        ; $69ac: $e1
    push af                                       ; $69ad: $f5
    and d                                         ; $69ae: $a2
    ld l, e                                       ; $69af: $6b
    ld [$81a0], a                                 ; $69b0: $ea $a0 $81
    ld l, l                                       ; $69b3: $6d
    xor d                                         ; $69b4: $aa
    ld h, [hl]                                    ; $69b5: $66
    add b                                         ; $69b6: $80
    ld [$6786], a                                 ; $69b7: $ea $86 $67
    ld c, e                                       ; $69ba: $4b
    ld h, d                                       ; $69bb: $62
    cp a                                          ; $69bc: $bf
    ldh [$7e], a                                  ; $69bd: $e0 $7e
    jp nz, $cf6b                                  ; $69bf: $c2 $6b $cf

    ld l, e                                       ; $69c2: $6b
    ld l, e                                       ; $69c3: $6b
    ld c, d                                       ; $69c4: $4a
    dec hl                                        ; $69c5: $2b
    ld a, l                                       ; $69c6: $7d
    ret nz                                        ; $69c7: $c0

    ld hl, sp-$20                                 ; $69c8: $f8 $e0
    ld l, e                                       ; $69ca: $6b
    ld l, e                                       ; $69cb: $6b
    ld h, $fa                                     ; $69cc: $26 $fa
    ldh [$0d], a                                  ; $69ce: $e0 $0d
    ld l, l                                       ; $69d0: $6d
    ld hl, $8c82                                  ; $69d1: $21 $82 $8c
    dec hl                                        ; $69d4: $2b
    inc c                                         ; $69d5: $0c
    ld [hl], e                                    ; $69d6: $73
    inc l                                         ; $69d7: $2c
    ld a, [hl]                                    ; $69d8: $7e
    call nz, Call_000_1244                        ; $69d9: $c4 $44 $12
    pop hl                                        ; $69dc: $e1
    push af                                       ; $69dd: $f5
    and c                                         ; $69de: $a1
    dec hl                                        ; $69df: $2b
    adc b                                         ; $69e0: $88
    add b                                         ; $69e1: $80
    add [hl]                                      ; $69e2: $86
    ldh [$6e], a                                  ; $69e3: $e0 $6e
    and d                                         ; $69e5: $a2
    ld l, l                                       ; $69e6: $6d
    ld [bc], a                                    ; $69e7: $02
    pop hl                                        ; $69e8: $e1
    call nz, Call_054_44fd                        ; $69e9: $c4 $fd $44
    dec h                                         ; $69ec: $25
    ld h, $0a                                     ; $69ed: $26 $0a
    ld a, $b1                                     ; $69ef: $3e $b1
    dec bc                                        ; $69f1: $0b
    add d                                         ; $69f2: $82
    dec sp                                        ; $69f3: $3b
    and b                                         ; $69f4: $a0
    ld l, e                                       ; $69f5: $6b
    ld l, e                                       ; $69f6: $6b
    dec b                                         ; $69f7: $05
    dec hl                                        ; $69f8: $2b
    ld b, e                                       ; $69f9: $43
    add c                                         ; $69fa: $81
    ld l, e                                       ; $69fb: $6b
    cp e                                          ; $69fc: $bb
    ret nz                                        ; $69fd: $c0

    jp $bfe2                                      ; $69fe: $c3 $e2 $bf


    ld [c], a                                     ; $6a01: $e2
    ld a, [bc]                                    ; $6a02: $0a
    ld e, h                                       ; $6a03: $5c
    cp $c4                                        ; $6a04: $fe $c4
    nop                                           ; $6a06: $00
    rst $38                                       ; $6a07: $ff
    ld [c], a                                     ; $6a08: $e2
    ret nz                                        ; $6a09: $c0

    ldh [$09], a                                  ; $6a0a: $e0 $09
    and c                                         ; $6a0c: $a1
    ld b, d                                       ; $6a0d: $42
    ldh [$86], a                                  ; $6a0e: $e0 $86
    ret nz                                        ; $6a10: $c0

    ret nz                                        ; $6a11: $c0

    rst $30                                       ; $6a12: $f7
    ld c, a                                       ; $6a13: $4f
    add hl, hl                                    ; $6a14: $29
    adc l                                         ; $6a15: $8d
    inc hl                                        ; $6a16: $23
    inc c                                         ; $6a17: $0c
    cp $c0                                        ; $6a18: $fe $c0
    call Call_000_2b61                            ; $6a1a: $cd $61 $2b
    dec c                                         ; $6a1d: $0d
    ret nz                                        ; $6a1e: $c0

    ld [c], a                                     ; $6a1f: $e2
    add [hl]                                      ; $6a20: $86
    jp nz, Jump_000_350d                          ; $6a21: $c2 $0d $35

    add b                                         ; $6a24: $80
    ld l, e                                       ; $6a25: $6b
    inc b                                         ; $6a26: $04
    ld a, h                                       ; $6a27: $7c
    push bc                                       ; $6a28: $c5
    ld [bc], a                                    ; $6a29: $02
    ld hl, $492d                                  ; $6a2a: $21 $2d $49
    ld h, c                                       ; $6a2d: $61
    ld a, $60                                     ; $6a2e: $3e $60
    inc a                                         ; $6a30: $3c
    pop hl                                        ; $6a31: $e1
    add h                                         ; $6a32: $84
    ld h, d                                       ; $6a33: $62
    ld [bc], a                                    ; $6a34: $02
    ld e, h                                       ; $6a35: $5c
    inc e                                         ; $6a36: $1c
    jr jr_054_6a5b                                ; $6a37: $18 $22

    ld e, l                                       ; $6a39: $5d
    ld h, a                                       ; $6a3a: $67
    ld c, l                                       ; $6a3b: $4d
    ld c, l                                       ; $6a3c: $4d
    dec l                                         ; $6a3d: $2d
    nop                                           ; $6a3e: $00
    pop hl                                        ; $6a3f: $e1
    db $f4                                        ; $6a40: $f4
    jp $f7c0                                      ; $6a41: $c3 $c0 $f7


    nop                                           ; $6a44: $00
    or [hl]                                       ; $6a45: $b6

jr_054_6a46:
    dec bc                                        ; $6a46: $0b
    or a                                          ; $6a47: $b7
    xor b                                         ; $6a48: $a8
    ret z                                         ; $6a49: $c8

    nop                                           ; $6a4a: $00
    ld b, a                                       ; $6a4b: $47
    jp nz, $8205                                  ; $6a4c: $c2 $05 $82

    add h                                         ; $6a4f: $84
    ld h, b                                       ; $6a50: $60
    ld l, a                                       ; $6a51: $6f
    inc hl                                        ; $6a52: $23
    nop                                           ; $6a53: $00
    ld e, e                                       ; $6a54: $5b
    db $10                                        ; $6a55: $10
    adc d                                         ; $6a56: $8a
    ld h, $d7                                     ; $6a57: $26 $d7
    add e                                         ; $6a59: $83
    cp l                                          ; $6a5a: $bd

jr_054_6a5b:
    pop bc                                        ; $6a5b: $c1
    push bc                                       ; $6a5c: $c5
    ld h, h                                       ; $6a5d: $64
    ld c, l                                       ; $6a5e: $4d
    jp nz, Jump_054_7844                          ; $6a5f: $c2 $44 $78

    rra                                           ; $6a62: $1f
    ld c, e                                       ; $6a63: $4b
    inc b                                         ; $6a64: $04
    ld a, [bc]                                    ; $6a65: $0a
    ld c, c                                       ; $6a66: $49
    nop                                           ; $6a67: $00
    ld l, l                                       ; $6a68: $6d
    cp [hl]                                       ; $6a69: $be
    ret nz                                        ; $6a6a: $c0

    ld l, e                                       ; $6a6b: $6b
    add a                                         ; $6a6c: $87
    and c                                         ; $6a6d: $a1
    add h                                         ; $6a6e: $84
    ld l, b                                       ; $6a6f: $68
    dec a                                         ; $6a70: $3d
    ccf                                           ; $6a71: $3f
    rrca                                          ; $6a72: $0f
    ld [hl+], a                                   ; $6a73: $22
    nop                                           ; $6a74: $00
    ld d, b                                       ; $6a75: $50
    nop                                           ; $6a76: $00
    ld [bc], a                                    ; $6a77: $02
    ld b, b                                       ; $6a78: $40
    bit 0, b                                      ; $6a79: $cb $40
    pop bc                                        ; $6a7b: $c1
    inc h                                         ; $6a7c: $24
    inc b                                         ; $6a7d: $04
    and c                                         ; $6a7e: $a1
    add a                                         ; $6a7f: $87
    ld b, d                                       ; $6a80: $42
    add b                                         ; $6a81: $80
    rra                                           ; $6a82: $1f
    ld a, [hl]                                    ; $6a83: $7e
    and d                                         ; $6a84: $a2
    nop                                           ; $6a85: $00
    add h                                         ; $6a86: $84
    pop hl                                        ; $6a87: $e1
    jp $fc22                                      ; $6a88: $c3 $22 $fc


    ld h, $7e                                     ; $6a8b: $26 $7e
    rst $18                                       ; $6a8d: $df
    cp d                                          ; $6a8e: $ba
    add hl, hl                                    ; $6a8f: $29
    add [hl]                                      ; $6a90: $86
    ld [hl+], a                                   ; $6a91: $22
    inc bc                                        ; $6a92: $03
    jp Jump_054_4000                              ; $6a93: $c3 $00 $40


    nop                                           ; $6a96: $00
    ld [hl], $c0                                  ; $6a97: $36 $c0
    ld a, [hl]                                    ; $6a99: $7e
    sub $80                                       ; $6a9a: $d6 $80
    ld c, $55                                     ; $6a9c: $0e $55
    ld bc, $407c                                  ; $6a9e: $01 $7c $40
    adc h                                         ; $6aa1: $8c
    ld b, l                                       ; $6aa2: $45
    ld a, h                                       ; $6aa3: $7c
    inc hl                                        ; $6aa4: $23
    ret nz                                        ; $6aa5: $c0

    push hl                                       ; $6aa6: $e5
    inc c                                         ; $6aa7: $0c
    add b                                         ; $6aa8: $80
    call c, Call_054_6180                         ; $6aa9: $dc $80 $61
    dec l                                         ; $6aac: $2d
    dec l                                         ; $6aad: $2d
    jp Jump_054_4c20                              ; $6aae: $c3 $20 $4c


    inc h                                         ; $6ab1: $24
    add hl, bc                                    ; $6ab2: $09
    ld b, d                                       ; $6ab3: $42
    cp $a5                                        ; $6ab4: $fe $a5
    ld b, b                                       ; $6ab6: $40
    pop bc                                        ; $6ab7: $c1
    inc bc                                        ; $6ab8: $03
    dec a                                         ; $6ab9: $3d
    ld a, [$e220]                                 ; $6aba: $fa $20 $e2
    add h                                         ; $6abd: $84
    jr nz, jr_054_6a46                            ; $6abe: $20 $86

    ret nz                                        ; $6ac0: $c0

    cp d                                          ; $6ac1: $ba
    ld h, e                                       ; $6ac2: $63
    dec l                                         ; $6ac3: $2d
    add d                                         ; $6ac4: $82
    jp $bf60                                      ; $6ac5: $c3 $60 $bf


    add c                                         ; $6ac8: $81
    ld b, e                                       ; $6ac9: $43
    ld sp, $1380                                  ; $6aca: $31 $80 $13
    nop                                           ; $6acd: $00
    inc h                                         ; $6ace: $24
    ld c, a                                       ; $6acf: $4f
    add c                                         ; $6ad0: $81
    ld c, l                                       ; $6ad1: $4d
    dec l                                         ; $6ad2: $2d
    or [hl]                                       ; $6ad3: $b6
    add e                                         ; $6ad4: $83
    ld b, b                                       ; $6ad5: $40
    inc b                                         ; $6ad6: $04
    add d                                         ; $6ad7: $82
    ld b, h                                       ; $6ad8: $44
    ld b, l                                       ; $6ad9: $45
    add b                                         ; $6ada: $80
    ld d, $01                                     ; $6adb: $16 $01
    ld h, c                                       ; $6add: $61
    ld a, [hl]                                    ; $6ade: $7e
    ld [hl+], a                                   ; $6adf: $22
    adc h                                         ; $6ae0: $8c
    ld [bc], a                                    ; $6ae1: $02
    dec l                                         ; $6ae2: $2d
    sub c                                         ; $6ae3: $91
    ld b, h                                       ; $6ae4: $44
    ld b, b                                       ; $6ae5: $40
    db $ed                                        ; $6ae6: $ed
    ld [bc], a                                    ; $6ae7: $02
    ld b, c                                       ; $6ae8: $41
    add d                                         ; $6ae9: $82
    add b                                         ; $6aea: $80
    db $db                                        ; $6aeb: $db
    ld h, [hl]                                    ; $6aec: $66
    ld b, d                                       ; $6aed: $42
    ld b, a                                       ; $6aee: $47
    inc h                                         ; $6aef: $24
    ld d, d                                       ; $6af0: $52
    ld [hl+], a                                   ; $6af1: $22
    ld l, l                                       ; $6af2: $6d
    or a                                          ; $6af3: $b7
    and h                                         ; $6af4: $a4
    nop                                           ; $6af5: $00
    ld b, h                                       ; $6af6: $44
    add d                                         ; $6af7: $82
    xor a                                         ; $6af8: $af
    ld bc, $de80                                  ; $6af9: $01 $80 $de
    cp $07                                        ; $6afc: $fe $07
    ld b, c                                       ; $6afe: $41
    pop hl                                        ; $6aff: $e1
    db $eb                                        ; $6b00: $eb
    ld c, b                                       ; $6b01: $48
    dec h                                         ; $6b02: $25
    ld b, h                                       ; $6b03: $44
    sub e                                         ; $6b04: $93
    xor a                                         ; $6b05: $af
    nop                                           ; $6b06: $00
    cp [hl]                                       ; $6b07: $be
    ld [de], a                                    ; $6b08: $12
    ld [bc], a                                    ; $6b09: $02
    db $e4                                        ; $6b0a: $e4
    pop de                                        ; $6b0b: $d1
    call nz, $a307                                ; $6b0c: $c4 $07 $a3
    push bc                                       ; $6b0f: $c5
    cp a                                          ; $6b10: $bf
    ld [hl], $a5                                  ; $6b11: $36 $a5
    ld a, [hl]                                    ; $6b13: $7e
    ld hl, $00d4                                  ; $6b14: $21 $d4 $00
    nop                                           ; $6b17: $00
    adc a                                         ; $6b18: $8f
    and d                                         ; $6b19: $a2
    ld c, d                                       ; $6b1a: $4a
    ld h, d                                       ; $6b1b: $62
    ld [hl], h                                    ; $6b1c: $74
    add d                                         ; $6b1d: $82
    ld b, $4e                                     ; $6b1e: $06 $4e
    nop                                           ; $6b20: $00
    cp b                                          ; $6b21: $b8
    inc c                                         ; $6b22: $0c
    and c                                         ; $6b23: $a1
    ld a, [$4fa1]                                 ; $6b24: $fa $a1 $4f
    db $f4                                        ; $6b27: $f4
    nop                                           ; $6b28: $00
    dec a                                         ; $6b29: $3d
    ld a, [hl+]                                   ; $6b2a: $2a
    nop                                           ; $6b2b: $00
    nop                                           ; $6b2c: $00
    nop                                           ; $6b2d: $00
    ccf                                           ; $6b2e: $3f
    and b                                         ; $6b2f: $a0
    and b                                         ; $6b30: $a0
    and b                                         ; $6b31: $a0
    call c, $dedd                                 ; $6b32: $dc $dd $de
    ld a, [$f4ff]                                 ; $6b35: $fa $ff $f4
    push af                                       ; $6b38: $f5
    ccf                                           ; $6b39: $3f
    db $e4                                        ; $6b3a: $e4
    rst $18                                       ; $6b3b: $df
    ldh [$e1], a                                  ; $6b3c: $e0 $e1
    ld [c], a                                     ; $6b3e: $e2
    db $e3                                        ; $6b3f: $e3
    ld a, [$f4ff]                                 ; $6b40: $fa $ff $f4
    push af                                       ; $6b43: $f5
    ccf                                           ; $6b44: $3f
    ld [$e6e5], a                                 ; $6b45: $ea $e5 $e6
    rst $20                                       ; $6b48: $e7
    add sp, -$17                                  ; $6b49: $e8 $e9
    ld a, [$f4ff]                                 ; $6b4b: $fa $ff $f4
    push af                                       ; $6b4e: $f5
    nop                                           ; $6b4f: $00
    ld e, e                                       ; $6b50: $5b
    rst $38                                       ; $6b51: $ff
    ld a, [$5bfb]                                 ; $6b52: $fa $fb $5b
    rst $38                                       ; $6b55: $ff
    ld a, [$5bfb]                                 ; $6b56: $fa $fb $5b
    rst $38                                       ; $6b59: $ff
    ld a, [$5bfb]                                 ; $6b5a: $fa $fb $5b
    rst $38                                       ; $6b5d: $ff
    add b                                         ; $6b5e: $80
    rst $18                                       ; $6b5f: $df
    nop                                           ; $6b60: $00
    ld d, l                                       ; $6b61: $55
    rst $38                                       ; $6b62: $ff
    add b                                         ; $6b63: $80
    rst $18                                       ; $6b64: $df
    ld a, [$80ff]                                 ; $6b65: $fa $ff $80
    rst $18                                       ; $6b68: $df
    ld a, [$80ff]                                 ; $6b69: $fa $ff $80
    rst $18                                       ; $6b6c: $df
    ld a, [$80ff]                                 ; $6b6d: $fa $ff $80
    rst $18                                       ; $6b70: $df
    nop                                           ; $6b71: $00
    ld a, [$80ff]                                 ; $6b72: $fa $ff $80
    rst $18                                       ; $6b75: $df
    ld a, [$80ff]                                 ; $6b76: $fa $ff $80
    rst $18                                       ; $6b79: $df
    ld a, [$80ff]                                 ; $6b7a: $fa $ff $80
    rst $18                                       ; $6b7d: $df
    add b                                         ; $6b7e: $80
    rst $18                                       ; $6b7f: $df
    ld e, e                                       ; $6b80: $5b
    rst $38                                       ; $6b81: $ff
    add b                                         ; $6b82: $80
    add b                                         ; $6b83: $80
    rst $18                                       ; $6b84: $df
    ld a, [$80ff]                                 ; $6b85: $fa $ff $80
    rst $18                                       ; $6b88: $df
    ld a, [$80ff]                                 ; $6b89: $fa $ff $80
    rst $18                                       ; $6b8c: $df
    ld c, a                                       ; $6b8d: $4f
    ld [$e1fd], a                                 ; $6b8e: $ea $fd $e1
    sub $c1                                       ; $6b91: $d6 $c1
    rst $10                                       ; $6b93: $d7
    rst $30                                       ; $6b94: $f7
    db $e4                                        ; $6b95: $e4
    ldh a, [$e2]                                  ; $6b96: $f0 $e2
    add b                                         ; $6b98: $80
    rst $18                                       ; $6b99: $df
    ld c, a                                       ; $6b9a: $4f
    rst $20                                       ; $6b9b: $e7
    jp $d8e3                                      ; $6b9c: $c3 $e3 $d8


    reti                                          ; $6b9f: $d9


    add [hl]                                      ; $6ba0: $86
    ld a, [$d0c0]                                 ; $6ba1: $fa $c0 $d0
    pop de                                        ; $6ba4: $d1
    or [hl]                                       ; $6ba5: $b6
    ld [c], a                                     ; $6ba6: $e2
    add b                                         ; $6ba7: $80
    rst $18                                       ; $6ba8: $df
    ld h, a                                       ; $6ba9: $67
    db $ec                                        ; $6baa: $ec
    jp $dae0                                      ; $6bab: $c3 $e0 $da


    dec c                                         ; $6bae: $0d
    db $db                                        ; $6baf: $db
    jp $d2e0                                      ; $6bb0: $c3 $e0 $d2


    db $d3                                        ; $6bb3: $d3
    di                                            ; $6bb4: $f3
    ld [c], a                                     ; $6bb5: $e2
    add b                                         ; $6bb6: $80
    rst $18                                       ; $6bb7: $df
    ld c, c                                       ; $6bb8: $49
    and $46                                       ; $6bb9: $e6 $46
    db $e3                                        ; $6bbb: $e3
    ld [hl], $c3                                  ; $6bbc: $36 $c3
    push hl                                       ; $6bbe: $e5
    call nc, Call_054_7dd5                        ; $6bbf: $d4 $d5 $7d
    ldh [$da], a                                  ; $6bc2: $e0 $da
    db $db                                        ; $6bc4: $db
    dec a                                         ; $6bc5: $3d
    ld a, [c]                                     ; $6bc6: $f2
    ld c, c                                       ; $6bc7: $49
    ldh a, [rP1]                                  ; $6bc8: $f0 $00
    dec bc                                        ; $6bca: $0b
    db $e3                                        ; $6bcb: $e3
    ld b, [hl]                                    ; $6bcc: $46
    ld [c], a                                     ; $6bcd: $e2
    jp $f7e3                                      ; $6bce: $c3 $e3 $f7


    db $e3                                        ; $6bd1: $e3
    xor $c1                                       ; $6bd2: $ee $c1
    add b                                         ; $6bd4: $80
    rst $18                                       ; $6bd5: $df
    dec bc                                        ; $6bd6: $0b
    db $e4                                        ; $6bd7: $e4
    sub b                                         ; $6bd8: $90
    pop hl                                        ; $6bd9: $e1
    cp h                                          ; $6bda: $bc
    add hl, bc                                    ; $6bdb: $09
    ldh [$c3], a                                  ; $6bdc: $e0 $c3
    ld [c], a                                     ; $6bde: $e2
    sbc a                                         ; $6bdf: $9f
    sbc l                                         ; $6be0: $9d
    and d                                         ; $6be1: $a2
    sbc a                                         ; $6be2: $9f
    ld a, l                                       ; $6be3: $7d
    ld [c], a                                     ; $6be4: $e2
    and b                                         ; $6be5: $a0
    pop hl                                        ; $6be6: $e1
    and b                                         ; $6be7: $a0
    add b                                         ; $6be8: $80
    sbc $0b                                       ; $6be9: $de $0b
    db $e4                                        ; $6beb: $e4
    dec c                                         ; $6bec: $0d
    ld [c], a                                     ; $6bed: $e2
    adc h                                         ; $6bee: $8c
    db $e4                                        ; $6bef: $e4
    sbc a                                         ; $6bf0: $9f
    sbc h                                         ; $6bf1: $9c
    ld b, [hl]                                    ; $6bf2: $46
    rlca                                          ; $6bf3: $07
    ld b, [hl]                                    ; $6bf4: $46
    sbc h                                         ; $6bf5: $9c
    sbc a                                         ; $6bf6: $9f
    ld [hl], h                                    ; $6bf7: $74
    ld [c], a                                     ; $6bf8: $e2
    ld [hl], d                                    ; $6bf9: $72
    jp $d780                                      ; $6bfa: $c3 $80 $d7


    dec bc                                        ; $6bfd: $0b
    and $4a                                       ; $6bfe: $e6 $4a
    ld [c], a                                     ; $6c00: $e2
    ld a, a                                       ; $6c01: $7f
    call nc, $9fd5                                ; $6c02: $d4 $d5 $9f
    and d                                         ; $6c05: $a2
    sbc l                                         ; $6c06: $9d
    sbc l                                         ; $6c07: $9d
    sbc l                                         ; $6c08: $9d
    pop bc                                        ; $6c09: $c1
    ldh [rP1], a                                  ; $6c0a: $e0 $00
    cp a                                          ; $6c0c: $bf
    ld [c], a                                     ; $6c0d: $e2
    ld a, [$72c0]                                 ; $6c0e: $fa $c0 $72
    pop bc                                        ; $6c11: $c1
    add b                                         ; $6c12: $80
    reti                                          ; $6c13: $d9


    dec bc                                        ; $6c14: $0b
    and $02                                       ; $6c15: $e6 $02
    jp $e186                                      ; $6c17: $c3 $86 $e1


    cp $e5                                        ; $6c1a: $fe $e5
    nop                                           ; $6c1c: $00
    ld a, [hl]                                    ; $6c1d: $7e
    pop hl                                        ; $6c1e: $e1
    ld h, a                                       ; $6c1f: $67
    pop hl                                        ; $6c20: $e1

Jump_054_6c21:
    dec a                                         ; $6c21: $3d
    db $ed                                        ; $6c22: $ed
    rst $08                                       ; $6c23: $cf
    xor e                                         ; $6c24: $ab
    dec bc                                        ; $6c25: $0b
    db $e4                                        ; $6c26: $e4
    adc b                                         ; $6c27: $88
    ld [c], a                                     ; $6c28: $e2
    add [hl]                                      ; $6c29: $86
    db $e4                                        ; $6c2a: $e4
    cp a                                          ; $6c2b: $bf
    add sp, -$80                                  ; $6c2c: $e8 $80
    ld hl, sp-$5e                                 ; $6c2e: $f8 $a2
    or a                                          ; $6c30: $b7
    xor h                                         ; $6c31: $ac
    rst $08                                       ; $6c32: $cf
    xor c                                         ; $6c33: $a9
    sub e                                         ; $6c34: $93
    and c                                         ; $6c35: $a1
    inc d                                         ; $6c36: $14
    pop bc                                        ; $6c37: $c1
    adc b                                         ; $6c38: $88
    jp hl                                         ; $6c39: $e9


    ld a, [hl]                                    ; $6c3a: $7e
    rst $20                                       ; $6c3b: $e7
    sbc [hl]                                      ; $6c3c: $9e
    ldh [$fe], a                                  ; $6c3d: $e0 $fe
    add $00                                       ; $6c3f: $c6 $00
    or e                                          ; $6c41: $b3
    ld c, l                                       ; $6c42: $4d
    jp $c014                                      ; $6c43: $c3 $14 $c0


    ld c, c                                       ; $6c46: $49
    rst $20                                       ; $6c47: $e7
    add e                                         ; $6c48: $83
    adc c                                         ; $6c49: $89
    adc b                                         ; $6c4a: $88
    dec bc                                        ; $6c4b: $0b

Jump_054_6c4c:
    adc c                                         ; $6c4c: $89
    add e                                         ; $6c4d: $83
    inc a                                         ; $6c4e: $3c
    push hl                                       ; $6c4f: $e5
    and c                                         ; $6c50: $a1
    cp $c5                                        ; $6c51: $fe $c5
    ld a, d                                       ; $6c53: $7a
    jp z, $895b                                   ; $6c54: $ca $5b $89

    db $dd                                        ; $6c57: $dd
    and e                                         ; $6c58: $a3
    cp $90                                        ; $6c59: $fe $90
    pop bc                                        ; $6c5b: $c1
    sub c                                         ; $6c5c: $91
    sub b                                         ; $6c5d: $90
    sub b                                         ; $6c5e: $90
    sub b                                         ; $6c5f: $90
    sub c                                         ; $6c60: $91
    ld b, [hl]                                    ; $6c61: $46
    ld b, [hl]                                    ; $6c62: $46
    rra                                           ; $6c63: $1f
    adc d                                         ; $6c64: $8a
    ld [bc], a                                    ; $6c65: $02
    rlca                                          ; $6c66: $07
    ld [bc], a                                    ; $6c67: $02
    add [hl]                                      ; $6c68: $86
    cp a                                          ; $6c69: $bf
    push hl                                       ; $6c6a: $e5
    cp $c6                                        ; $6c6b: $fe $c6
    add b                                         ; $6c6d: $80
    ret c                                         ; $6c6e: $d8

    db $fc                                        ; $6c6f: $fc
    ld d, $a0                                     ; $6c70: $16 $a0
    pop bc                                        ; $6c72: $c1
    push hl                                       ; $6c73: $e5
    sub b                                         ; $6c74: $90
    sub b                                         ; $6c75: $90
    ld b, [hl]                                    ; $6c76: $46
    ld b, [hl]                                    ; $6c77: $46
    add c                                         ; $6c78: $81
    ld [$988f], sp                                ; $6c79: $08 $8f $98
    rrca                                          ; $6c7c: $0f
    ld [bc], a                                    ; $6c7d: $02
    adc e                                         ; $6c7e: $8b
    cp $cb                                        ; $6c7f: $fe $cb
    add b                                         ; $6c81: $80
    jp c, $a016                                   ; $6c82: $da $16 $a0

    sbc [hl]                                      ; $6c85: $9e
    ld hl, sp+$51                                 ; $6c86: $f8 $51
    ret nz                                        ; $6c88: $c0

    pop bc                                        ; $6c89: $c1
    ld [c], a                                     ; $6c8a: $e2
    add b                                         ; $6c8b: $80
    ldh [$81], a                                  ; $6c8c: $e0 $81
    ld [$989b], sp                                ; $6c8e: $08 $9b $98
    ld [$8033], sp                                ; $6c91: $08 $33 $80
    or e                                          ; $6c94: $b3
    cp $ca                                        ; $6c95: $fe $ca
    add b                                         ; $6c97: $80
    ld a, b                                       ; $6c98: $78
    sub $d7                                       ; $6c99: $d6 $d7
    ld d, $a0                                     ; $6c9b: $16 $a0
    ret nz                                        ; $6c9d: $c0

    ldh [$fe], a                                  ; $6c9e: $e0 $fe
    ld b, d                                       ; $6ca0: $42
    db $e4                                        ; $6ca1: $e4
    ld b, [hl]                                    ; $6ca2: $46
    ld b, [hl]                                    ; $6ca3: $46
    ld a, a                                       ; $6ca4: $7f
    ld [bc], a                                    ; $6ca5: $02
    rrca                                          ; $6ca6: $0f
    sbc b                                         ; $6ca7: $98
    ld [$8205], sp                                ; $6ca8: $08 $05 $82
    cp $c6                                        ; $6cab: $fe $c6
    sbc [hl]                                      ; $6cad: $9e
    or $80                                        ; $6cae: $f6 $80
    cp l                                          ; $6cb0: $bd
    xor l                                         ; $6cb1: $ad
    ld c, a                                       ; $6cb2: $4f
    adc c                                         ; $6cb3: $89
    ld d, e                                       ; $6cb4: $53
    add d                                         ; $6cb5: $82
    add b                                         ; $6cb6: $80
    ldh [rRP], a                                  ; $6cb7: $e0 $56
    ld b, e                                       ; $6cb9: $43
    db $e3                                        ; $6cba: $e3
    xor [hl]                                      ; $6cbb: $ae
    xor [hl]                                      ; $6cbc: $ae
    cp a                                          ; $6cbd: $bf
    ld [c], a                                     ; $6cbe: $e2
    rrca                                          ; $6cbf: $0f
    cp $c3                                        ; $6cc0: $fe $c3
    sub c                                         ; $6cc2: $91
    ldh a, [$c0]                                  ; $6cc3: $f0 $c0
    pop de                                        ; $6cc5: $d1
    sbc [hl]                                      ; $6cc6: $9e
    jp hl                                         ; $6cc7: $e9


    add h                                         ; $6cc8: $84
    add b                                         ; $6cc9: $80
    push de                                       ; $6cca: $d5
    ld d, e                                       ; $6ccb: $53
    add d                                         ; $6ccc: $82
    and c                                         ; $6ccd: $a1
    ret nz                                        ; $6cce: $c0

    push hl                                       ; $6ccf: $e5
    xor a                                         ; $6cd0: $af
    xor a                                         ; $6cd1: $af
    daa                                           ; $6cd2: $27
    ld b, [hl]                                    ; $6cd3: $46
    ld b, l                                       ; $6cd4: $45
    ld b, c                                       ; $6cd5: $41
    cp a                                          ; $6cd6: $bf
    and $f0                                       ; $6cd7: $e6 $f0
    pop bc                                        ; $6cd9: $c1
    sbc [hl]                                      ; $6cda: $9e
    ld a, c                                       ; $6cdb: $79
    add h                                         ; $6cdc: $84
    add b                                         ; $6cdd: $80
    ld [hl], a                                    ; $6cde: $77
    db $fc                                        ; $6cdf: $fc
    nop                                           ; $6ce0: $00
    db $e3                                        ; $6ce1: $e3
    jp $b3c2                                      ; $6ce2: $c3 $c2 $b3


    xor [hl]                                      ; $6ce5: $ae
    xor [hl]                                      ; $6ce6: $ae
    ld b, e                                       ; $6ce7: $43
    ld a, [hl+]                                   ; $6ce8: $2a
    ld h, $9d                                     ; $6ce9: $26 $9d
    ld a, [hl+]                                   ; $6ceb: $2a
    ld a, [hl]                                    ; $6cec: $7e
    push hl                                       ; $6ced: $e5
    sub b                                         ; $6cee: $90
    sub b                                         ; $6cef: $90
    or b                                          ; $6cf0: $b0
    cp $a3                                        ; $6cf1: $fe $a3
    xor e                                         ; $6cf3: $ab
    ld c, e                                       ; $6cf4: $4b
    sub b                                         ; $6cf5: $90
    ldh a, [$8c]                                  ; $6cf6: $f0 $8c
    ld l, e                                       ; $6cf8: $6b
    nop                                           ; $6cf9: $00
    db $e3                                        ; $6cfa: $e3
    call nc, Call_054_42e0                        ; $6cfb: $d4 $e0 $42
    ret nz                                        ; $6cfe: $c0

    xor a                                         ; $6cff: $af
    xor a                                         ; $6d00: $af
    ld d, [hl]                                    ; $6d01: $56
    ld a, [hl+]                                   ; $6d02: $2a
    add a                                         ; $6d03: $87
    jr nz, jr_054_6d36                            ; $6d04: $20 $30

    ld b, d                                       ; $6d06: $42
    ld a, h                                       ; $6d07: $7c
    call nz, $e380                                ; $6d08: $c4 $80 $e3
    or $60                                        ; $6d0b: $f6 $60
    xor e                                         ; $6d0d: $ab
    ld c, e                                       ; $6d0e: $4b
    nop                                           ; $6d0f: $00
    ld hl, sp-$0d                                 ; $6d10: $f8 $f3
    ld c, l                                       ; $6d12: $4d
    ret nz                                        ; $6d13: $c0

    push bc                                       ; $6d14: $c5
    ld bc, $4ac0                                  ; $6d15: $01 $c0 $4a
    ld h, b                                       ; $6d18: $60
    ld d, l                                       ; $6d19: $55
    ld a, [hl+]                                   ; $6d1a: $2a
    ld a, [hl+]                                   ; $6d1b: $2a
    ld a, a                                       ; $6d1c: $7f
    ld b, l                                       ; $6d1d: $45
    add c                                         ; $6d1e: $81
    ld [$0001], sp                                ; $6d1f: $08 $01 $00
    ld [$0080], sp                                ; $6d22: $08 $80 $00
    ld [c], a                                     ; $6d25: $e2
    add hl, bc                                    ; $6d26: $09
    and c                                         ; $6d27: $a1
    ldh a, [rSTAT]                                ; $6d28: $f0 $41
    xor e                                         ; $6d2a: $ab
    ld c, e                                       ; $6d2b: $4b
    ld b, [hl]                                    ; $6d2c: $46
    ld e, $48                                     ; $6d2d: $1e $48
    call nc, Call_000_1640                        ; $6d2f: $d4 $40 $16
    ld h, b                                       ; $6d32: $60
    ld b, b                                       ; $6d33: $40
    push bc                                       ; $6d34: $c5
    rst $38                                       ; $6d35: $ff

jr_054_6d36:
    or b                                          ; $6d36: $b0
    ld b, [hl]                                    ; $6d37: $46
    ld c, d                                       ; $6d38: $4a
    or h                                          ; $6d39: $b4
    ld e, d                                       ; $6d3a: $5a
    ld a, $3a                                     ; $6d3b: $3e $3a
    ld b, l                                       ; $6d3d: $45
    ccf                                           ; $6d3e: $3f
    ld a, a                                       ; $6d3f: $7f
    ld [bc], a                                    ; $6d40: $02
    rlca                                          ; $6d41: $07
    rlca                                          ; $6d42: $07
    ld [bc], a                                    ; $6d43: $02
    ld a, [hl]                                    ; $6d44: $7e
    ld a, $a4                                     ; $6d45: $3e $a4
    ldh a, [rSCX]                                 ; $6d47: $f0 $43
    jp nz, $28e8                                  ; $6d49: $c2 $e8 $28

    nop                                           ; $6d4c: $00
    rst $08                                       ; $6d4d: $cf
    ld c, b                                       ; $6d4e: $48
    call nc, Call_000_1640                        ; $6d4f: $d4 $40 $16
    ld h, b                                       ; $6d52: $60
    ret nz                                        ; $6d53: $c0

    and [hl]                                      ; $6d54: $a6
    ld b, [hl]                                    ; $6d55: $46
    ld b, l                                       ; $6d56: $45
    rst $38                                       ; $6d57: $ff
    ld d, d                                       ; $6d58: $52
    ld d, [hl]                                    ; $6d59: $56
    add hl, sp                                    ; $6d5a: $39
    or c                                          ; $6d5b: $b1
    ld [hl], $45                                  ; $6d5c: $36 $45
    adc [hl]                                      ; $6d5e: $8e
    ld a, e                                       ; $6d5f: $7b
    ld b, e                                       ; $6d60: $43
    ld a, e                                       ; $6d61: $7b
    adc a                                         ; $6d62: $8f
    ld a, l                                       ; $6d63: $7d
    add h                                         ; $6d64: $84
    ld a, [hl-]                                   ; $6d65: $3a
    ld h, c                                       ; $6d66: $61
    ld l, [hl]                                    ; $6d67: $6e
    ld b, b                                       ; $6d68: $40
    add sp, $28                                   ; $6d69: $e8 $28
    dec [hl]                                      ; $6d6b: $35
    ld [hl], $48                                  ; $6d6c: $36 $48
    ldh a, [rNR34]                                ; $6d6e: $f0 $1e
    ld h, b                                       ; $6d70: $60
    ld d, e                                       ; $6d71: $53
    ld h, c                                       ; $6d72: $61
    ret nc                                        ; $6d73: $d0

    ld h, c                                       ; $6d74: $61
    ld b, c                                       ; $6d75: $41
    and e                                         ; $6d76: $a3
    ld b, l                                       ; $6d77: $45
    ld c, e                                       ; $6d78: $4b
    ld b, b                                       ; $6d79: $40
    dec [hl]                                      ; $6d7a: $35
    ld b, e                                       ; $6d7b: $43
    inc a                                         ; $6d7c: $3c
    ld b, h                                       ; $6d7d: $44
    ld a, $88                                     ; $6d7e: $3e $88
    or a                                          ; $6d80: $b7
    ld b, c                                       ; $6d81: $41
    ld l, [hl]                                    ; $6d82: $6e
    ld b, b                                       ; $6d83: $40
    add sp, $28                                   ; $6d84: $e8 $28
    nop                                           ; $6d86: $00
    ld e, e                                       ; $6d87: $5b
    ld a, [hl+]                                   ; $6d88: $2a
    db $fc                                        ; $6d89: $fc
    ld a, $e6                                     ; $6d8a: $3e $e6
    ld [de], a                                    ; $6d8c: $12
    pop bc                                        ; $6d8d: $c1
    xor [hl]                                      ; $6d8e: $ae
    xor [hl]                                      ; $6d8f: $ae
    or e                                          ; $6d90: $b3
    ld b, e                                       ; $6d91: $43
    ld b, d                                       ; $6d92: $42
    dec [hl]                                      ; $6d93: $35
    sbc e                                         ; $6d94: $9b
    dec [hl]                                      ; $6d95: $35
    add hl, sp                                    ; $6d96: $39
    ld bc, $9d83                                  ; $6d97: $01 $83 $9d
    sbc l                                         ; $6d9a: $9d
    ld a, l                                       ; $6d9b: $7d
    ld h, b                                       ; $6d9c: $60
    db $f4                                        ; $6d9d: $f4
    ld b, c                                       ; $6d9e: $41
    jp c, $db05                                   ; $6d9f: $da $05 $db

    dec hl                                        ; $6da2: $2b
    add hl, hl                                    ; $6da3: $29
    ld h, c                                       ; $6da4: $61
    ld e, e                                       ; $6da5: $5b
    ld a, [hl+]                                   ; $6da6: $2a
    ld a, $e3                                     ; $6da7: $3e $e3
    cp $a0                                        ; $6da9: $fe $a0
    adc l                                         ; $6dab: $8d
    ld h, c                                       ; $6dac: $61
    nop                                           ; $6dad: $00
    ret nz                                        ; $6dae: $c0

    ccf                                           ; $6daf: $3f
    ld b, [hl]                                    ; $6db0: $46
    ld b, h                                       ; $6db1: $44
    inc a                                         ; $6db2: $3c
    dec [hl]                                      ; $6db3: $35
    ld a, [hl-]                                   ; $6db4: $3a
    ld b, l                                       ; $6db5: $45
    jp nz, $fa64                                  ; $6db6: $c2 $64 $fa

    ld hl, $4300                                  ; $6db9: $21 $00 $43
    db $eb                                        ; $6dbc: $eb
    add b                                         ; $6dbd: $80
    ld c, $3e                                     ; $6dbe: $0e $3e
    db $e3                                        ; $6dc0: $e3
    adc c                                         ; $6dc1: $89
    ld l, b                                       ; $6dc2: $68
    add b                                         ; $6dc3: $80
    ldh [$7f], a                                  ; $6dc4: $e0 $7f
    ld [c], a                                     ; $6dc6: $e2
    add [hl]                                      ; $6dc7: $86
    and c                                         ; $6dc8: $a1
    ld b, e                                       ; $6dc9: $43
    rst $28                                       ; $6dca: $ef
    sbc b                                         ; $6dcb: $98
    add b                                         ; $6dcc: $80
    ld l, a                                       ; $6dcd: $6f
    ld a, h                                       ; $6dce: $7c
    jp Jump_054_6648                              ; $6dcf: $c3 $48 $66


    or e                                          ; $6dd2: $b3
    ld b, b                                       ; $6dd3: $40
    ret nz                                        ; $6dd4: $c0

    ldh [$7f], a                                  ; $6dd5: $e0 $7f
    pop hl                                        ; $6dd7: $e1
    and c                                         ; $6dd8: $a1
    ret nz                                        ; $6dd9: $c0

    ld a, h                                       ; $6dda: $7c
    jr nz, jr_054_6de1                            ; $6ddb: $20 $04

    and c                                         ; $6ddd: $a1
    ld b, e                                       ; $6dde: $43
    db $eb                                        ; $6ddf: $eb
    add b                                         ; $6de0: $80

jr_054_6de1:
    ld [hl], b                                    ; $6de1: $70
    ld a, h                                       ; $6de2: $7c
    call nz, Call_054_6542                        ; $6de3: $c4 $42 $65
    ld b, d                                       ; $6de6: $42
    dec [hl]                                      ; $6de7: $35
    add hl, de                                    ; $6de8: $19
    or c                                          ; $6de9: $b1
    cp [hl]                                       ; $6dea: $be
    jp nz, $a386                                  ; $6deb: $c2 $86 $a3

    ret c                                         ; $6dee: $d8

    reti                                          ; $6def: $d9


    nop                                           ; $6df0: $00
    ld e, c                                       ; $6df1: $59
    ld b, l                                       ; $6df2: $45
    ld b, l                                       ; $6df3: $45
    rst $08                                       ; $6df4: $cf
    ld [hl+], a                                   ; $6df5: $22
    inc e                                         ; $6df6: $1c
    rst $30                                       ; $6df7: $f7
    ld h, h                                       ; $6df8: $64
    nop                                           ; $6df9: $00
    ldh [$35], a                                  ; $6dfa: $e0 $35
    dec [hl]                                      ; $6dfc: $35
    ld b, d                                       ; $6dfd: $42
    add [hl]                                      ; $6dfe: $86
    add e                                         ; $6dff: $83
    pop bc                                        ; $6e00: $c1
    ld b, c                                       ; $6e01: $41
    add b                                         ; $6e02: $80
    dec de                                        ; $6e03: $1b
    jr nc, jr_054_6e63                            ; $6e04: $30 $5d

    jr nz, @-$47                                  ; $6e06: $20 $b7

    and l                                         ; $6e08: $a5
    dec c                                         ; $6e09: $0d
    ld hl, $80b6                                  ; $6e0a: $21 $b6 $80
    ld b, l                                       ; $6e0d: $45
    ld a, [hl-]                                   ; $6e0e: $3a
    ld b, b                                       ; $6e0f: $40
    db $e3                                        ; $6e10: $e3
    ret nz                                        ; $6e11: $c0

    push bc                                       ; $6e12: $c5
    jr nz, jr_054_6e8f                            ; $6e13: $20 $7a

    rrca                                          ; $6e15: $0f
    add [hl]                                      ; $6e16: $86
    ld de, $008b                                  ; $6e17: $11 $8b $00
    ld c, d                                       ; $6e1a: $4a
    ld hl, $61b6                                  ; $6e1b: $21 $b6 $61
    add hl, sp                                    ; $6e1e: $39
    ccf                                           ; $6e1f: $3f
    call nz, $c303                                ; $6e20: $c4 $03 $c3
    ld [hl], b                                    ; $6e23: $70
    ld [hl-], a                                   ; $6e24: $32
    ld bc, $1f80                                  ; $6e25: $01 $80 $1f
    add hl, de                                    ; $6e28: $19
    ld b, d                                       ; $6e29: $42
    ld [bc], a                                    ; $6e2a: $02
    ld b, h                                       ; $6e2b: $44
    ld b, l                                       ; $6e2c: $45

jr_054_6e2d:
    scf                                           ; $6e2d: $37
    scf                                           ; $6e2e: $37
    ld b, b                                       ; $6e2f: $40
    pop bc                                        ; $6e30: $c1
    ldh [$3e], a                                  ; $6e31: $e0 $3e
    db $e4                                        ; $6e33: $e4
    ld [hl-], a                                   ; $6e34: $32
    ld bc, $1f80                                  ; $6e35: $01 $80 $1f
    ld c, e                                       ; $6e38: $4b
    ld [hl+], a                                   ; $6e39: $22
    adc b                                         ; $6e3a: $88
    inc h                                         ; $6e3b: $24
    ld b, l                                       ; $6e3c: $45
    scf                                           ; $6e3d: $37
    dec a                                         ; $6e3e: $3d
    add b                                         ; $6e3f: $80
    rst $38                                       ; $6e40: $ff
    ldh [$bc], a                                  ; $6e41: $e0 $bc
    ldh [$c4], a                                  ; $6e43: $e0 $c4
    ld h, c                                       ; $6e45: $61
    daa                                           ; $6e46: $27
    ld hl, $1f80                                  ; $6e47: $21 $80 $1f
    jr jr_054_6e2d                                ; $6e4a: $18 $e1

    add [hl]                                      ; $6e4c: $86
    ld h, $39                                     ; $6e4d: $26 $39
    dec de                                        ; $6e4f: $1b
    and h                                         ; $6e50: $a4
    ld h, h                                       ; $6e51: $64
    rst $38                                       ; $6e52: $ff
    ldh [$a5], a                                  ; $6e53: $e0 $a5
    add hl, sp                                    ; $6e55: $39
    call nz, $8062                                ; $6e56: $c4 $62 $80
    rra                                           ; $6e59: $1f
    or b                                          ; $6e5a: $b0
    ld bc, $bcfc                                  ; $6e5b: $01 $fc $bc
    add h                                         ; $6e5e: $84
    ld b, l                                       ; $6e5f: $45
    inc hl                                        ; $6e60: $23
    ld a, $69                                     ; $6e61: $3e $69

jr_054_6e63:
    and e                                         ; $6e63: $a3
    dec [hl]                                      ; $6e64: $35
    dec [hl]                                      ; $6e65: $35
    and e                                         ; $6e66: $a3
    inc bc                                        ; $6e67: $03
    ld l, d                                       ; $6e68: $6a
    ld a, $c4                                     ; $6e69: $3e $c4
    ld h, h                                       ; $6e6b: $64
    add b                                         ; $6e6c: $80
    rra                                           ; $6e6d: $1f
    dec de                                        ; $6e6e: $1b
    and d                                         ; $6e6f: $a2
    ld a, h                                       ; $6e70: $7c
    ld b, c                                       ; $6e71: $41
    ret nz                                        ; $6e72: $c0

    push hl                                       ; $6e73: $e5
    ld a, [hl]                                    ; $6e74: $7e
    and b                                         ; $6e75: $a0
    add c                                         ; $6e76: $81
    dec [hl]                                      ; $6e77: $35
    ret nz                                        ; $6e78: $c0

    ldh [$c2], a                                  ; $6e79: $e0 $c2
    ld [hl+], a                                   ; $6e7b: $22
    add b                                         ; $6e7c: $80
    db $dd                                        ; $6e7d: $dd
    ld e, a                                       ; $6e7e: $5f
    inc b                                         ; $6e7f: $04
    cp $85                                        ; $6e80: $fe $85
    add b                                         ; $6e82: $80
    pop bc                                        ; $6e83: $c1
    ld l, e                                       ; $6e84: $6b
    dec b                                         ; $6e85: $05
    ld [hl], c                                    ; $6e86: $71
    rst $38                                       ; $6e87: $ff
    ldh [$6d], a                                  ; $6e88: $e0 $6d
    ld b, b                                       ; $6e8a: $40
    pop hl                                        ; $6e8b: $e1
    jr nz, jr_054_6eb1                            ; $6e8c: $20 $23

    add b                                         ; $6e8e: $80

jr_054_6e8f:
    dec e                                         ; $6e8f: $1d
    ld [bc], a                                    ; $6e90: $02
    add sp, -$74                                  ; $6e91: $e8 $8c
    add b                                         ; $6e93: $80
    ld bc, $c09c                                  ; $6e94: $01 $9c $c0
    push bc                                       ; $6e97: $c5
    inc b                                         ; $6e98: $04
    add c                                         ; $6e99: $81
    ld b, e                                       ; $6e9a: $43
    cpl                                           ; $6e9b: $2f
    add b                                         ; $6e9c: $80
    db $10                                        ; $6e9d: $10
    ld [bc], a                                    ; $6e9e: $02
    rst $20                                       ; $6e9f: $e7

Jump_054_6ea0:
    adc h                                         ; $6ea0: $8c
    add c                                         ; $6ea1: $81
    ld a, $05                                     ; $6ea2: $3e $05
    nop                                           ; $6ea4: $00
    ld bc, $43c3                                  ; $6ea5: $01 $c3 $43
    ld l, $00                                     ; $6ea8: $2e $00
    ld c, h                                       ; $6eaa: $4c
    ld [bc], a                                    ; $6eab: $02
    db $eb                                        ; $6eac: $eb
    ld [de], a                                    ; $6ead: $12
    ld b, b                                       ; $6eae: $40
    or l                                          ; $6eaf: $b5
    add b                                         ; $6eb0: $80

jr_054_6eb1:
    scf                                           ; $6eb1: $37
    ld [bc], a                                    ; $6eb2: $02
    inc b                                         ; $6eb3: $04
    add l                                         ; $6eb4: $85
    nop                                           ; $6eb5: $00
    add b                                         ; $6eb6: $80
    jp c, $e51f                                   ; $6eb7: $da $1f $e5

    ret nz                                        ; $6eba: $c0

    add sp, $51                                   ; $6ebb: $e8 $51
    ld b, d                                       ; $6ebd: $42
    db $ed                                        ; $6ebe: $ed
    and c                                         ; $6ebf: $a1
    ld b, h                                       ; $6ec0: $44
    and l                                         ; $6ec1: $a5
    add b                                         ; $6ec2: $80
    call c, Call_054_40e2                         ; $6ec3: $dc $e2 $40
    nop                                           ; $6ec6: $00
    cp [hl]                                       ; $6ec7: $be
    ld b, h                                       ; $6ec8: $44
    ld [de], a                                    ; $6ec9: $12
    ld h, e                                       ; $6eca: $63
    res 0, b                                      ; $6ecb: $cb $80
    ld a, [bc]                                    ; $6ecd: $0a
    and b                                         ; $6ece: $a0
    rlca                                          ; $6ecf: $07
    and b                                         ; $6ed0: $a0
    ld b, h                                       ; $6ed1: $44
    and h                                         ; $6ed2: $a4
    sub e                                         ; $6ed3: $93
    xor a                                         ; $6ed4: $af
    add b                                         ; $6ed5: $80
    rlc b                                         ; $6ed6: $cb $00
    ccf                                           ; $6ed8: $3f
    nop                                           ; $6ed9: $00
    cp [hl]                                       ; $6eda: $be
    inc b                                         ; $6edb: $04
    ld [de], a                                    ; $6edc: $12
    ld h, l                                       ; $6edd: $65
    ld [hl-], a                                   ; $6ede: $32
    add c                                         ; $6edf: $81
    cpl                                           ; $6ee0: $2f
    add b                                         ; $6ee1: $80
    ld b, h                                       ; $6ee2: $44
    and d                                         ; $6ee3: $a2
    sub $8f                                       ; $6ee4: $d6 $8f
    add b                                         ; $6ee6: $80
    ld c, $00                                     ; $6ee7: $0e $00
    nop                                           ; $6ee9: $00
    rst $20                                       ; $6eea: $e7
    inc d                                         ; $6eeb: $14
    jr nz, jr_054_6f25                            ; $6eec: $20 $37

    add d                                         ; $6eee: $82
    ld c, b                                       ; $6eef: $48
    add b                                         ; $6ef0: $80
    rlca                                          ; $6ef1: $07
    jp $9143                                      ; $6ef2: $c3 $43 $91


    nop                                           ; $6ef5: $00
    or e                                          ; $6ef6: $b3
    ret nz                                        ; $6ef7: $c0

    push hl                                       ; $6ef8: $e5
    nop                                           ; $6ef9: $00
    ld d, l                                       ; $6efa: $55
    adc l                                         ; $6efb: $8d
    db $f4                                        ; $6efc: $f4
    ld a, [c]                                     ; $6efd: $f2
    nop                                           ; $6efe: $00
    nop                                           ; $6eff: $00
    nop                                           ; $6f00: $00
    pop bc                                        ; $6f01: $c1
    nop                                           ; $6f02: $00
    rst $38                                       ; $6f03: $ff
    rst $38                                       ; $6f04: $ff
    rst $38                                       ; $6f05: $ff
    rst $38                                       ; $6f06: $ff
    rst $38                                       ; $6f07: $ff
    rst $38                                       ; $6f08: $ff
    rst $38                                       ; $6f09: $ff
    rst $38                                       ; $6f0a: $ff
    rst $38                                       ; $6f0b: $ff
    rst $38                                       ; $6f0c: $ff
    nop                                           ; $6f0d: $00
    nop                                           ; $6f0e: $00
    ld bc, $fe80                                  ; $6f0f: $01 $80 $fe
    ldh [rIE], a                                  ; $6f12: $e0 $ff
    rst $38                                       ; $6f14: $ff
    rst $38                                       ; $6f15: $ff
    rst $38                                       ; $6f16: $ff
    rst $38                                       ; $6f17: $ff
    add sp, $00                                   ; $6f18: $e8 $00
    nop                                           ; $6f1a: $00
    nop                                           ; $6f1b: $00
    ld [bc], a                                    ; $6f1c: $02
    nop                                           ; $6f1d: $00
    ld a, [de]                                    ; $6f1e: $1a
    inc hl                                        ; $6f1f: $23
    ld [bc], a                                    ; $6f20: $02
    ld bc, $231b                                  ; $6f21: $01 $1b $23
    ld [bc], a                                    ; $6f24: $02

jr_054_6f25:
    ld [bc], a                                    ; $6f25: $02
    ld a, [de]                                    ; $6f26: $1a
    dec h                                         ; $6f27: $25
    ld [bc], a                                    ; $6f28: $02
    inc bc                                        ; $6f29: $03
    dec de                                        ; $6f2a: $1b
    dec h                                         ; $6f2b: $25
    ld [bc], a                                    ; $6f2c: $02
    inc b                                         ; $6f2d: $04
    ld a, [de]                                    ; $6f2e: $1a
    dec hl                                        ; $6f2f: $2b
    ld [bc], a                                    ; $6f30: $02
    dec b                                         ; $6f31: $05
    dec de                                        ; $6f32: $1b
    dec hl                                        ; $6f33: $2b
    rst $38                                       ; $6f34: $ff
    rst $38                                       ; $6f35: $ff
    rst $38                                       ; $6f36: $ff
    ld b, c                                       ; $6f37: $41
    ld l, a                                       ; $6f38: $6f
    ld [hl], c                                    ; $6f39: $71
    ld l, a                                       ; $6f3a: $6f
    ld [$0872], sp                                ; $6f3b: $08 $72 $08
    ld [hl], h                                    ; $6f3e: $74
    adc a                                         ; $6f3f: $8f
    ld [hl], h                                    ; $6f40: $74
    rst $38                                       ; $6f41: $ff
    ld a, a                                       ; $6f42: $7f
    nop                                           ; $6f43: $00
    ld a, h                                       ; $6f44: $7c
    rra                                           ; $6f45: $1f
    nop                                           ; $6f46: $00
    ldh [rP1], a                                  ; $6f47: $e0 $00
    rst $38                                       ; $6f49: $ff
    ld a, a                                       ; $6f4a: $7f
    nop                                           ; $6f4b: $00
    ld a, h                                       ; $6f4c: $7c
    rra                                           ; $6f4d: $1f
    nop                                           ; $6f4e: $00
    ldh [rSC], a                                  ; $6f4f: $e0 $02
    db $10                                        ; $6f51: $10
    ld b, d                                       ; $6f52: $42
    db $10                                        ; $6f53: $10
    ld b, d                                       ; $6f54: $42
    db $10                                        ; $6f55: $10
    ld b, d                                       ; $6f56: $42
    db $10                                        ; $6f57: $10
    ld b, d                                       ; $6f58: $42
    db $10                                        ; $6f59: $10
    ld b, d                                       ; $6f5a: $42
    db $10                                        ; $6f5b: $10
    ld b, d                                       ; $6f5c: $42
    db $10                                        ; $6f5d: $10
    ld b, d                                       ; $6f5e: $42
    db $10                                        ; $6f5f: $10
    ld b, d                                       ; $6f60: $42
    db $10                                        ; $6f61: $10
    ld b, d                                       ; $6f62: $42
    db $10                                        ; $6f63: $10
    ld b, d                                       ; $6f64: $42
    db $10                                        ; $6f65: $10
    ld b, d                                       ; $6f66: $42
    db $10                                        ; $6f67: $10
    ld b, d                                       ; $6f68: $42
    db $10                                        ; $6f69: $10
    ld b, d                                       ; $6f6a: $42
    db $10                                        ; $6f6b: $10
    ld b, d                                       ; $6f6c: $42
    db $10                                        ; $6f6d: $10
    ld b, d                                       ; $6f6e: $42
    db $10                                        ; $6f6f: $10
    ld b, d                                       ; $6f70: $42
    pop de                                        ; $6f71: $d1
    nop                                           ; $6f72: $00
    rst $38                                       ; $6f73: $ff
    rst $38                                       ; $6f74: $ff
    rst $38                                       ; $6f75: $ff
    rst $38                                       ; $6f76: $ff
    jp hl                                         ; $6f77: $e9


    add sp, -$01                                  ; $6f78: $e8 $ff
    rst $38                                       ; $6f7a: $ff
    db $ec                                        ; $6f7b: $ec
    rst $18                                       ; $6f7c: $df
    rst $18                                       ; $6f7d: $df
    ld [hl], $ee                                  ; $6f7e: $36 $ee
    db $eb                                        ; $6f80: $eb
    rst $30                                       ; $6f81: $f7
    rst $30                                       ; $6f82: $f7
    sbc $eb                                       ; $6f83: $de $eb
    db $fd                                        ; $6f85: $fd
    db $fd                                        ; $6f86: $fd
    adc $ed                                       ; $6f87: $ce $ed
    cp [hl]                                       ; $6f89: $be
    db $eb                                        ; $6f8a: $eb
    pop af                                        ; $6f8b: $f1
    ld a, a                                       ; $6f8c: $7f
    rst $38                                       ; $6f8d: $ff
    db $ec                                        ; $6f8e: $ec
    or b                                          ; $6f8f: $b0
    rst $38                                       ; $6f90: $ff
    or b                                          ; $6f91: $b0
    pop af                                        ; $6f92: $f1
    pop af                                        ; $6f93: $f1
    pop af                                        ; $6f94: $f1
    db $fd                                        ; $6f95: $fd
    db $fd                                        ; $6f96: $fd
    call c, $e3fc                                 ; $6f97: $dc $fc $e3
    ld h, b                                       ; $6f9a: $60
    db $e3                                        ; $6f9b: $e3
    rra                                           ; $6f9c: $1f
    rra                                           ; $6f9d: $1f
    ld e, a                                       ; $6f9e: $5f
    rst $38                                       ; $6f9f: $ff

Call_054_6fa0:
    ld [c], a                                     ; $6fa0: $e2
    rra                                           ; $6fa1: $1f
    rra                                           ; $6fa2: $1f
    sbc b                                         ; $6fa3: $98
    ld l, $ff                                     ; $6fa4: $2e $ff
    rst $38                                       ; $6fa6: $ff
    rst $38                                       ; $6fa7: $ff
    ld a, [$dff9]                                 ; $6fa8: $fa $f9 $df
    rst $18                                       ; $6fab: $df
    db $fc                                        ; $6fac: $fc
    pop hl                                        ; $6fad: $e1
    ld d, b                                       ; $6fae: $50
    jp hl                                         ; $6faf: $e9


    nop                                           ; $6fb0: $00
    dec a                                         ; $6fb1: $3d
    nop                                           ; $6fb2: $00
    ld c, h                                       ; $6fb3: $4c
    jp hl                                         ; $6fb4: $e9


    db $fd                                        ; $6fb5: $fd
    db $fd                                        ; $6fb6: $fd
    nop                                           ; $6fb7: $00
    nop                                           ; $6fb8: $00
    db $fc                                        ; $6fb9: $fc
    res 7, h                                      ; $6fba: $cb $bc
    rrc a                                         ; $6fbc: $cb $0f
    ld a, a                                       ; $6fbe: $7f
    ld a, a                                       ; $6fbf: $7f
    nop                                           ; $6fc0: $00
    nop                                           ; $6fc1: $00
    nop                                           ; $6fc2: $00
    db $eb                                        ; $6fc3: $eb
    or b                                          ; $6fc4: $b0
    rst $38                                       ; $6fc5: $ff
    or b                                          ; $6fc6: $b0
    di                                            ; $6fc7: $f3
    nop                                           ; $6fc8: $00
    push hl                                       ; $6fc9: $e5
    adc b                                         ; $6fca: $88
    ld e, h                                       ; $6fcb: $5c
    push bc                                       ; $6fcc: $c5
    db $fc                                        ; $6fcd: $fc
    jp $cf40                                      ; $6fce: $c3 $40 $cf


    add b                                         ; $6fd1: $80
    rst $38                                       ; $6fd2: $ff
    ld [$e170], a                                 ; $6fd3: $ea $70 $e1
    ld a, [de]                                    ; $6fd6: $1a
    jp hl                                         ; $6fd7: $e9


    xor d                                         ; $6fd8: $aa
    rra                                           ; $6fd9: $1f
    xor d                                         ; $6fda: $aa
    nop                                           ; $6fdb: $00
    nop                                           ; $6fdc: $00
    add b                                         ; $6fdd: $80
    add b                                         ; $6fde: $80
    db $fc                                        ; $6fdf: $fc
    rst $20                                       ; $6fe0: $e7
    ldh a, [$e1]                                  ; $6fe1: $f0 $e1
    ldh a, [$bd]                                  ; $6fe3: $f0 $bd
    ret nz                                        ; $6fe5: $c0

    ld c, h                                       ; $6fe6: $4c
    rst $38                                       ; $6fe7: $ff
    db $fc                                        ; $6fe8: $fc
    rst $10                                       ; $6fe9: $d7
    nop                                           ; $6fea: $00
    jp $c7fc                                      ; $6feb: $c3 $fc $c7


    or b                                          ; $6fee: $b0
    rst $38                                       ; $6fef: $ff
    xor h                                         ; $6ff0: $ac
    set 6, a                                      ; $6ff1: $cb $f7
    rst $30                                       ; $6ff3: $f7
    ld b, $0c                                     ; $6ff4: $06 $0c
    jp hl                                         ; $6ff6: $e9


    db $fd                                        ; $6ff7: $fd
    db $fd                                        ; $6ff8: $fd
    inc c                                         ; $6ff9: $0c
    pop bc                                        ; $6ffa: $c1
    db $fc                                        ; $6ffb: $fc
    ret                                           ; $6ffc: $c9


    ld a, $cd                                     ; $6ffd: $3e $cd
    ld [bc], a                                    ; $6fff: $02
    db $eb                                        ; $7000: $eb
    ld d, $e1                                     ; $7001: $16 $e1
    nop                                           ; $7003: $00
    ldh [$ed], a                                  ; $7004: $e0 $ed
    nop                                           ; $7006: $00
    db $eb                                        ; $7007: $eb
    ldh a, [$9f]                                  ; $7008: $f0 $9f
    ld hl, sp-$7b                                 ; $700a: $f8 $85
    ld c, h                                       ; $700c: $4c
    rst $38                                       ; $700d: $ff
    ld hl, sp-$4f                                 ; $700e: $f8 $b1
    nop                                           ; $7010: $00
    and a                                         ; $7011: $a7
    ld hl, sp-$5d                                 ; $7012: $f8 $a3
    inc b                                         ; $7014: $04
    or b                                          ; $7015: $b0
    rst $38                                       ; $7016: $ff
    xor h                                         ; $7017: $ac
    set 7, l                                      ; $7018: $cb $fd
    rst $38                                       ; $701a: $ff
    db $e4                                        ; $701b: $e4
    xor b                                         ; $701c: $a8
    and l                                         ; $701d: $a5
    ld [$98a5], sp                                ; $701e: $08 $a5 $98
    and l                                         ; $7021: $a5
    ld a, $ed                                     ; $7022: $3e $ed
    inc bc                                        ; $7024: $03
    xor d                                         ; $7025: $aa
    xor d                                         ; $7026: $aa
    nop                                           ; $7027: $00
    rst $08                                       ; $7028: $cf
    db $10                                        ; $7029: $10
    rst $38                                       ; $702a: $ff
    nop                                           ; $702b: $00
    rst $38                                       ; $702c: $ff
    ld c, h                                       ; $702d: $4c
    push hl                                       ; $702e: $e5
    ld b, h                                       ; $702f: $44
    adc e                                         ; $7030: $8b
    ret nc                                        ; $7031: $d0

    ld l, e                                       ; $7032: $6b
    nop                                           ; $7033: $00
    db $f4                                        ; $7034: $f4
    add c                                         ; $7035: $81
    ret nz                                        ; $7036: $c0

    ld l, e                                       ; $7037: $6b
    inc b                                         ; $7038: $04
    xor e                                         ; $7039: $ab
    db $f4                                        ; $703a: $f4
    add c                                         ; $703b: $81
    or b                                          ; $703c: $b0
    rst $38                                       ; $703d: $ff
    or b                                          ; $703e: $b0
    ei                                            ; $703f: $fb
    inc b                                         ; $7040: $04
    adc c                                         ; $7041: $89
    ld [bc], a                                    ; $7042: $02
    rst $28                                       ; $7043: $ef
    nop                                           ; $7044: $00
    rst $38                                       ; $7045: $ff
    rst $38                                       ; $7046: $ff
    db $10                                        ; $7047: $10
    ld a, l                                       ; $7048: $7d
    ld d, b                                       ; $7049: $50
    ld l, l                                       ; $704a: $6d
    ld [hl+], a                                   ; $704b: $22
    ld a, e                                       ; $704c: $7b
    rst $38                                       ; $704d: $ff
    rst $38                                       ; $704e: $ff
    or b                                          ; $704f: $b0
    rst $38                                       ; $7050: $ff
    rst $38                                       ; $7051: $ff
    rst $38                                       ; $7052: $ff
    sbc [hl]                                      ; $7053: $9e
    ld sp, hl                                     ; $7054: $f9
    nop                                           ; $7055: $00
    ld e, $ff                                     ; $7056: $1e $ff
    nop                                           ; $7058: $00
    db $fd                                        ; $7059: $fd
    ld d, b                                       ; $705a: $50
    ld a, e                                       ; $705b: $7b
    ld a, [hl]                                    ; $705c: $7e
    rst $38                                       ; $705d: $ff
    rst $38                                       ; $705e: $ff
    rst $38                                       ; $705f: $ff
    rst $38                                       ; $7060: $ff
    rst $38                                       ; $7061: $ff
    rst $38                                       ; $7062: $ff
    rst $38                                       ; $7063: $ff
    sbc d                                         ; $7064: $9a
    db $db                                        ; $7065: $db
    rst $38                                       ; $7066: $ff
    ld d, c                                       ; $7067: $51
    ld d, c                                       ; $7068: $51
    ld e, l                                       ; $7069: $5d
    ld e, l                                       ; $706a: $5d
    ld de, $dd11                                  ; $706b: $11 $11 $dd
    db $dd                                        ; $706e: $dd
    dec sp                                        ; $706f: $3b
    pop de                                        ; $7070: $d1
    pop de                                        ; $7071: $d1
    ldh a, [$e7]                                  ; $7072: $f0 $e7
    dec e                                         ; $7074: $1d
    dec e                                         ; $7075: $1d
    db $dd                                        ; $7076: $dd
    rst $38                                       ; $7077: $ff
    ldh [$30], a                                  ; $7078: $e0 $30
    inc hl                                        ; $707a: $23
    ld l, a                                       ; $707b: $6f
    dec e                                         ; $707c: $1d
    dec e                                         ; $707d: $1d
    ld a, l                                       ; $707e: $7d
    ld a, l                                       ; $707f: $7d
    ldh a, [$e1]                                  ; $7080: $f0 $e1
    dec e                                         ; $7082: $1d
    dec e                                         ; $7083: $1d
    db $10                                        ; $7084: $10
    inc sp                                        ; $7085: $33
    add b                                         ; $7086: $80
    ld d, b                                       ; $7087: $50
    ld a, e                                       ; $7088: $7b
    add b                                         ; $7089: $80
    inc hl                                        ; $708a: $23
    ld a, b                                       ; $708b: $78
    add l                                         ; $708c: $85
    sbc $01                                       ; $708d: $de $01
    and [hl]                                      ; $708f: $a6
    pop hl                                        ; $7090: $e1
    db $fc                                        ; $7091: $fc
    db $e3                                        ; $7092: $e3
    ret nc                                        ; $7093: $d0

    inc bc                                        ; $7094: $03
    pop de                                        ; $7095: $d1
    rst $18                                       ; $7096: $df
    pop de                                        ; $7097: $d1
    rst $10                                       ; $7098: $d7
    rst $10                                       ; $7099: $d7
    pop de                                        ; $709a: $d1
    pop de                                        ; $709b: $d1
    add b                                         ; $709c: $80
    rst $20                                       ; $709d: $e7
    pop de                                        ; $709e: $d1
    pop de                                        ; $709f: $d1
    di                                            ; $70a0: $f3
    push de                                       ; $70a1: $d5
    push de                                       ; $70a2: $d5
    ldh a, [$e9]                                  ; $70a3: $f0 $e9
    ld h, h                                       ; $70a5: $64
    pop hl                                        ; $70a6: $e1
    ld de, $7d11                                  ; $70a7: $11 $11 $7d
    ld a, l                                       ; $70aa: $7d
    inc bc                                        ; $70ab: $03
    ld de, $f011                                  ; $70ac: $11 $11 $f0
    rst $20                                       ; $70af: $e7
    ld l, h                                       ; $70b0: $6c
    db $e3                                        ; $70b1: $e3
    ld h, b                                       ; $70b2: $60
    push hl                                       ; $70b3: $e5
    ld h, h                                       ; $70b4: $64
    pop hl                                        ; $70b5: $e1
    ld h, b                                       ; $70b6: $60
    pop hl                                        ; $70b7: $e1
    ret nc                                        ; $70b8: $d0

    push hl                                       ; $70b9: $e5
    inc sp                                        ; $70ba: $33
    rst $10                                       ; $70bb: $d7
    rst $10                                       ; $70bc: $d7
    call z, $c0e3                                 ; $70bd: $cc $e3 $c0
    push hl                                       ; $70c0: $e5
    push de                                       ; $70c1: $d5
    push de                                       ; $70c2: $d5
    ldh a, [$e9]                                  ; $70c3: $f0 $e9
    ldh a, [$09]                                  ; $70c5: $f0 $09
    ret c                                         ; $70c7: $d8

    ld c, h                                       ; $70c8: $4c
    dec b                                         ; $70c9: $05
    db $fc                                        ; $70ca: $fc
    jp $e9f0                                      ; $70cb: $c3 $f0 $e9


    ld d, a                                       ; $70ce: $57
    ld d, a                                       ; $70cf: $57
    ldh a, [$e9]                                  ; $70d0: $f0 $e9
    ld de, $0f11                                  ; $70d2: $11 $11 $0f
    ld [hl], l                                    ; $70d5: $75
    ld [hl], l                                    ; $70d6: $75
    dec d                                         ; $70d7: $15
    dec d                                         ; $70d8: $15
    nop                                           ; $70d9: $00
    or a                                          ; $70da: $b7
    ld d, b                                       ; $70db: $50
    ld [hl], l                                    ; $70dc: $75
    add b                                         ; $70dd: $80
    daa                                           ; $70de: $27
    ld [hl], h                                    ; $70df: $74
    ld c, e                                       ; $70e0: $4b
    ld b, $1c                                     ; $70e1: $06 $1c
    pop hl                                        ; $70e3: $e1
    push de                                       ; $70e4: $d5
    push de                                       ; $70e5: $d5
    db $10                                        ; $70e6: $10
    daa                                           ; $70e7: $27
    ld a, [c]                                     ; $70e8: $f2
    pop hl                                        ; $70e9: $e1

jr_054_70ea:
    add b                                         ; $70ea: $80
    pop bc                                        ; $70eb: $c1
    ldh [$e9], a                                  ; $70ec: $e0 $e9
    ldh a, [$e9]                                  ; $70ee: $f0 $e9
    ldh a, [$30]                                  ; $70f0: $f0 $30
    push hl                                       ; $70f2: $e5
    ld [hl], b                                    ; $70f3: $70
    rst $20                                       ; $70f4: $e7
    inc e                                         ; $70f5: $1c
    pop hl                                        ; $70f6: $e1
    ld h, b                                       ; $70f7: $60
    jp hl                                         ; $70f8: $e9


    push de                                       ; $70f9: $d5
    push de                                       ; $70fa: $d5
    dec d                                         ; $70fb: $15
    dec d                                         ; $70fc: $15
    ld b, $c0                                     ; $70fd: $06 $c0
    rlca                                          ; $70ff: $07
    dec d                                         ; $7100: $15
    dec d                                         ; $7101: $15
    inc c                                         ; $7102: $0c
    pop hl                                        ; $7103: $e1
    ldh [$eb], a                                  ; $7104: $e0 $eb
    jr nz, @-$15                                  ; $7106: $20 $e9

    db $fc                                        ; $7108: $fc
    jp $c188                                      ; $7109: $c3 $88 $c1


    or [hl]                                       ; $710c: $b6
    adc h                                         ; $710d: $8c

jr_054_710e:
    rlca                                          ; $710e: $07
    ld e, l                                       ; $710f: $5d
    ld e, l                                       ; $7110: $5d
    ld a, h                                       ; $7111: $7c
    db $eb                                        ; $7112: $eb
    ld d, c                                       ; $7113: $51
    ld d, c                                       ; $7114: $51

jr_054_7115:
    cp h                                          ; $7115: $bc
    db $eb                                        ; $7116: $eb
    ld d, c                                       ; $7117: $51
    reti                                          ; $7118: $d9


    ld d, c                                       ; $7119: $51
    nop                                           ; $711a: $00
    sbc e                                         ; $711b: $9b
    ld d, b                                       ; $711c: $50
    ld l, a                                       ; $711d: $6f
    push af                                       ; $711e: $f5
    push af                                       ; $711f: $f5
    add b                                         ; $7120: $80
    add hl, hl                                    ; $7121: $29
    pop af                                        ; $7122: $f1
    pop af                                        ; $7123: $f1
    and $1c                                       ; $7124: $e6 $1c
    db $eb                                        ; $7126: $eb
    pop af                                        ; $7127: $f1
    pop af                                        ; $7128: $f1
    sbc h                                         ; $7129: $9c
    and e                                         ; $712a: $a3
    inc c                                         ; $712b: $0c
    push af                                       ; $712c: $f5
    pop de                                        ; $712d: $d1
    pop de                                        ; $712e: $d1
    ld [hl], a                                    ; $712f: $77
    dec a                                         ; $7130: $3d
    ld [hl], a                                    ; $7131: $77
    ld l, h                                       ; $7132: $6c
    ret                                           ; $7133: $c9


    dec e                                         ; $7134: $1d
    dec e                                         ; $7135: $1d
    ld [hl], l                                    ; $7136: $75
    ld [hl], l                                    ; $7137: $75
    inc l                                         ; $7138: $2c
    ld sp, hl                                     ; $7139: $f9
    add sp, -$5d                                  ; $713a: $e8 $a3
    add b                                         ; $713c: $80
    ldh [$f9], a                                  ; $713d: $e0 $f9
    ldh a, [$0d]                                  ; $713f: $f0 $0d
    jr jr_054_70ea                                ; $7141: $18 $a7

    inc [hl]                                      ; $7143: $34
    ld h, e                                       ; $7144: $63
    inc c                                         ; $7145: $0c
    pop bc                                        ; $7146: $c1
    ld hl, sp-$7d                                 ; $7147: $f8 $83
    inc h                                         ; $7149: $24
    ld h, e                                       ; $714a: $63
    ld d, l                                       ; $714b: $55
    ld bc, $e855                                  ; $714c: $01 $55 $e8
    add c                                         ; $714f: $81
    ld e, h                                       ; $7150: $5c
    rst $20                                       ; $7151: $e7
    nop                                           ; $7152: $00

jr_054_7153:
    ld a, a                                       ; $7153: $7f
    ld c, [hl]                                    ; $7154: $4e
    ld c, e                                       ; $7155: $4b
    add b                                         ; $7156: $80
    ld bc, $a998                                  ; $7157: $01 $98 $a9
    ldh a, [$c1]                                  ; $715a: $f0 $c1
    nop                                           ; $715c: $00
    ld [hl], b                                    ; $715d: $70
    add hl, hl                                    ; $715e: $29
    adc h                                         ; $715f: $8c
    add c                                         ; $7160: $81
    sub b                                         ; $7161: $90
    jp hl                                         ; $7162: $e9


    add sp, -$79                                  ; $7163: $e8 $87
    ldh [$e5], a                                  ; $7165: $e0 $e5
    jr jr_054_710e                                ; $7167: $18 $a5

    sub h                                         ; $7169: $94
    db $e3                                        ; $716a: $e3
    jr z, jr_054_710e                             ; $716b: $28 $a1

    nop                                           ; $716d: $00
    ld hl, sp-$7d                                 ; $716e: $f8 $83
    add h                                         ; $7170: $84
    db $e3                                        ; $7171: $e3
    jr z, jr_054_7115                             ; $7172: $28 $a1

    ldh [$e9], a                                  ; $7174: $e0 $e9
    ret c                                         ; $7176: $d8

    add c                                         ; $7177: $81
    ret c                                         ; $7178: $d8

    xor c                                         ; $7179: $a9
    add sp, -$79                                  ; $717a: $e8 $87
    ld d, h                                       ; $717c: $54
    db $e3                                        ; $717d: $e3
    ld c, h                                       ; $717e: $4c
    ldh a, [$0d]                                  ; $717f: $f0 $0d
    inc b                                         ; $7181: $04
    add c                                         ; $7182: $81
    ld d, l                                       ; $7183: $55
    ld d, l                                       ; $7184: $55
    call nc, $84a1                                ; $7185: $d4 $a1 $84
    and l                                         ; $7188: $a5
    ld d, l                                       ; $7189: $55
    rst $38                                       ; $718a: $ff
    ldh [rLCDC], a                                ; $718b: $e0 $40
    inc c                                         ; $718d: $0c
    jp hl                                         ; $718e: $e9


    ldh [$e1], a                                  ; $718f: $e0 $e1
    ret nz                                        ; $7191: $c0

    add c                                         ; $7192: $81
    ld h, h                                       ; $7193: $64
    and e                                         ; $7194: $a3
    rst $38                                       ; $7195: $ff
    rst $38                                       ; $7196: $ff
    ldh [$cd], a                                  ; $7197: $e0 $cd
    push af                                       ; $7199: $f5
    rst $38                                       ; $719a: $ff
    ldh [rTMA], a                                 ; $719b: $e0 $06
    inc c                                         ; $719d: $0c
    jp hl                                         ; $719e: $e9


    pop af                                        ; $719f: $f1
    pop af                                        ; $71a0: $f1
    db $ec                                        ; $71a1: $ec
    and c                                         ; $71a2: $a1
    add sp, -$59                                  ; $71a3: $e8 $a7
    ld [$7883], sp                                ; $71a5: $08 $83 $78
    and a                                         ; $71a8: $a7
    db $f4                                        ; $71a9: $f4
    ld h, e                                       ; $71aa: $63
    nop                                           ; $71ab: $00
    db $f4                                        ; $71ac: $f4
    add a                                         ; $71ad: $87
    jr z, jr_054_7153                             ; $71ae: $28 $a3

    ld [$28c7], sp                                ; $71b0: $08 $c7 $28
    and e                                         ; $71b3: $a3
    db $ec                                        ; $71b4: $ec
    rst $00                                       ; $71b5: $c7
    inc h                                         ; $71b6: $24
    add e                                         ; $71b7: $83
    add sp, -$59                                  ; $71b8: $e8 $a7
    call nc, Call_000_0063                        ; $71ba: $d4 $63 $00
    db $e4                                        ; $71bd: $e4
    add a                                         ; $71be: $87
    db $f4                                        ; $71bf: $f4
    ld h, e                                       ; $71c0: $63
    db $f4                                        ; $71c1: $f4
    adc e                                         ; $71c2: $8b
    ld [bc], a                                    ; $71c3: $02
    ld e, a                                       ; $71c4: $5f
    rst $38                                       ; $71c5: $ff
    rst $38                                       ; $71c6: $ff
    rst $38                                       ; $71c7: $ff
    rst $38                                       ; $71c8: $ff
    rst $38                                       ; $71c9: $ff
    rst $38                                       ; $71ca: $ff
    rst $38                                       ; $71cb: $ff
    rst $38                                       ; $71cc: $ff
    nop                                           ; $71cd: $00
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
    nop                                           ; $71de: $00
    rst $38                                       ; $71df: $ff
    rst $38                                       ; $71e0: $ff

Call_054_71e1:
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
    nop                                           ; $71ef: $00
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
    nop                                           ; $7200: $00
    rst $38                                       ; $7201: $ff
    rst $38                                       ; $7202: $ff
    ld b, b                                       ; $7203: $40
    ld c, e                                       ; $7204: $4b
    nop                                           ; $7205: $00
    nop                                           ; $7206: $00
    nop                                           ; $7207: $00
    nop                                           ; $7208: $00
    nop                                           ; $7209: $00
    nop                                           ; $720a: $00
    nop                                           ; $720b: $00
    nop                                           ; $720c: $00
    nop                                           ; $720d: $00
    nop                                           ; $720e: $00
    nop                                           ; $720f: $00
    nop                                           ; $7210: $00
    nop                                           ; $7211: $00
    nop                                           ; $7212: $00
    nop                                           ; $7213: $00
    nop                                           ; $7214: $00
    nop                                           ; $7215: $00
    nop                                           ; $7216: $00
    nop                                           ; $7217: $00
    nop                                           ; $7218: $00
    nop                                           ; $7219: $00
    nop                                           ; $721a: $00
    nop                                           ; $721b: $00
    nop                                           ; $721c: $00
    nop                                           ; $721d: $00
    nop                                           ; $721e: $00
    nop                                           ; $721f: $00
    nop                                           ; $7220: $00
    nop                                           ; $7221: $00
    nop                                           ; $7222: $00
    nop                                           ; $7223: $00
    nop                                           ; $7224: $00
    nop                                           ; $7225: $00
    nop                                           ; $7226: $00
    nop                                           ; $7227: $00
    nop                                           ; $7228: $00
    nop                                           ; $7229: $00
    nop                                           ; $722a: $00
    nop                                           ; $722b: $00
    nop                                           ; $722c: $00
    nop                                           ; $722d: $00
    nop                                           ; $722e: $00
    nop                                           ; $722f: $00
    nop                                           ; $7230: $00
    nop                                           ; $7231: $00
    nop                                           ; $7232: $00
    nop                                           ; $7233: $00
    nop                                           ; $7234: $00
    nop                                           ; $7235: $00
    nop                                           ; $7236: $00
    nop                                           ; $7237: $00
    nop                                           ; $7238: $00
    nop                                           ; $7239: $00
    nop                                           ; $723a: $00
    nop                                           ; $723b: $00
    nop                                           ; $723c: $00
    nop                                           ; $723d: $00
    nop                                           ; $723e: $00
    nop                                           ; $723f: $00
    nop                                           ; $7240: $00
    nop                                           ; $7241: $00
    nop                                           ; $7242: $00
    nop                                           ; $7243: $00
    nop                                           ; $7244: $00
    nop                                           ; $7245: $00
    nop                                           ; $7246: $00
    nop                                           ; $7247: $00
    nop                                           ; $7248: $00
    nop                                           ; $7249: $00
    nop                                           ; $724a: $00
    nop                                           ; $724b: $00
    nop                                           ; $724c: $00
    nop                                           ; $724d: $00
    nop                                           ; $724e: $00
    nop                                           ; $724f: $00
    nop                                           ; $7250: $00
    nop                                           ; $7251: $00
    nop                                           ; $7252: $00
    nop                                           ; $7253: $00
    nop                                           ; $7254: $00
    nop                                           ; $7255: $00
    nop                                           ; $7256: $00
    nop                                           ; $7257: $00
    nop                                           ; $7258: $00
    nop                                           ; $7259: $00
    nop                                           ; $725a: $00
    nop                                           ; $725b: $00
    nop                                           ; $725c: $00
    nop                                           ; $725d: $00
    nop                                           ; $725e: $00
    nop                                           ; $725f: $00
    nop                                           ; $7260: $00
    nop                                           ; $7261: $00
    nop                                           ; $7262: $00
    nop                                           ; $7263: $00
    nop                                           ; $7264: $00
    nop                                           ; $7265: $00
    nop                                           ; $7266: $00
    nop                                           ; $7267: $00
    nop                                           ; $7268: $00
    nop                                           ; $7269: $00
    nop                                           ; $726a: $00
    nop                                           ; $726b: $00
    nop                                           ; $726c: $00
    nop                                           ; $726d: $00
    nop                                           ; $726e: $00
    nop                                           ; $726f: $00
    nop                                           ; $7270: $00
    nop                                           ; $7271: $00
    nop                                           ; $7272: $00
    nop                                           ; $7273: $00
    nop                                           ; $7274: $00
    nop                                           ; $7275: $00
    nop                                           ; $7276: $00
    nop                                           ; $7277: $00
    nop                                           ; $7278: $00
    nop                                           ; $7279: $00
    nop                                           ; $727a: $00
    nop                                           ; $727b: $00
    nop                                           ; $727c: $00
    nop                                           ; $727d: $00
    nop                                           ; $727e: $00
    nop                                           ; $727f: $00
    nop                                           ; $7280: $00
    nop                                           ; $7281: $00
    nop                                           ; $7282: $00
    nop                                           ; $7283: $00
    nop                                           ; $7284: $00
    nop                                           ; $7285: $00
    nop                                           ; $7286: $00
    nop                                           ; $7287: $00
    nop                                           ; $7288: $00
    nop                                           ; $7289: $00
    nop                                           ; $728a: $00
    nop                                           ; $728b: $00
    nop                                           ; $728c: $00
    nop                                           ; $728d: $00
    nop                                           ; $728e: $00
    nop                                           ; $728f: $00
    nop                                           ; $7290: $00
    nop                                           ; $7291: $00
    nop                                           ; $7292: $00
    nop                                           ; $7293: $00
    nop                                           ; $7294: $00
    nop                                           ; $7295: $00
    nop                                           ; $7296: $00
    nop                                           ; $7297: $00
    nop                                           ; $7298: $00
    nop                                           ; $7299: $00
    nop                                           ; $729a: $00
    nop                                           ; $729b: $00
    nop                                           ; $729c: $00
    nop                                           ; $729d: $00
    nop                                           ; $729e: $00
    nop                                           ; $729f: $00
    nop                                           ; $72a0: $00
    nop                                           ; $72a1: $00
    nop                                           ; $72a2: $00
    nop                                           ; $72a3: $00
    nop                                           ; $72a4: $00
    nop                                           ; $72a5: $00
    nop                                           ; $72a6: $00
    nop                                           ; $72a7: $00
    nop                                           ; $72a8: $00
    nop                                           ; $72a9: $00
    nop                                           ; $72aa: $00
    nop                                           ; $72ab: $00
    nop                                           ; $72ac: $00
    nop                                           ; $72ad: $00
    nop                                           ; $72ae: $00
    nop                                           ; $72af: $00
    nop                                           ; $72b0: $00
    nop                                           ; $72b1: $00
    nop                                           ; $72b2: $00
    nop                                           ; $72b3: $00
    nop                                           ; $72b4: $00
    nop                                           ; $72b5: $00
    nop                                           ; $72b6: $00
    nop                                           ; $72b7: $00
    nop                                           ; $72b8: $00
    nop                                           ; $72b9: $00
    nop                                           ; $72ba: $00
    nop                                           ; $72bb: $00
    nop                                           ; $72bc: $00
    nop                                           ; $72bd: $00
    nop                                           ; $72be: $00
    nop                                           ; $72bf: $00

Jump_054_72c0:
    nop                                           ; $72c0: $00
    nop                                           ; $72c1: $00
    nop                                           ; $72c2: $00
    nop                                           ; $72c3: $00
    nop                                           ; $72c4: $00
    nop                                           ; $72c5: $00
    nop                                           ; $72c6: $00
    nop                                           ; $72c7: $00
    nop                                           ; $72c8: $00
    nop                                           ; $72c9: $00
    nop                                           ; $72ca: $00
    nop                                           ; $72cb: $00
    nop                                           ; $72cc: $00
    nop                                           ; $72cd: $00
    nop                                           ; $72ce: $00
    nop                                           ; $72cf: $00
    nop                                           ; $72d0: $00
    nop                                           ; $72d1: $00
    nop                                           ; $72d2: $00
    nop                                           ; $72d3: $00
    nop                                           ; $72d4: $00
    nop                                           ; $72d5: $00
    nop                                           ; $72d6: $00
    nop                                           ; $72d7: $00
    nop                                           ; $72d8: $00
    nop                                           ; $72d9: $00
    nop                                           ; $72da: $00
    nop                                           ; $72db: $00
    nop                                           ; $72dc: $00
    nop                                           ; $72dd: $00
    nop                                           ; $72de: $00
    nop                                           ; $72df: $00
    nop                                           ; $72e0: $00
    nop                                           ; $72e1: $00
    nop                                           ; $72e2: $00
    nop                                           ; $72e3: $00
    nop                                           ; $72e4: $00
    nop                                           ; $72e5: $00
    nop                                           ; $72e6: $00
    nop                                           ; $72e7: $00
    nop                                           ; $72e8: $00
    nop                                           ; $72e9: $00
    nop                                           ; $72ea: $00
    nop                                           ; $72eb: $00
    nop                                           ; $72ec: $00
    nop                                           ; $72ed: $00
    nop                                           ; $72ee: $00
    nop                                           ; $72ef: $00
    nop                                           ; $72f0: $00
    nop                                           ; $72f1: $00
    nop                                           ; $72f2: $00
    nop                                           ; $72f3: $00
    nop                                           ; $72f4: $00
    nop                                           ; $72f5: $00
    nop                                           ; $72f6: $00
    nop                                           ; $72f7: $00
    nop                                           ; $72f8: $00
    nop                                           ; $72f9: $00
    nop                                           ; $72fa: $00
    nop                                           ; $72fb: $00
    nop                                           ; $72fc: $00
    nop                                           ; $72fd: $00
    nop                                           ; $72fe: $00
    nop                                           ; $72ff: $00
    nop                                           ; $7300: $00
    nop                                           ; $7301: $00
    nop                                           ; $7302: $00
    nop                                           ; $7303: $00
    nop                                           ; $7304: $00
    nop                                           ; $7305: $00
    nop                                           ; $7306: $00
    nop                                           ; $7307: $00
    nop                                           ; $7308: $00
    nop                                           ; $7309: $00
    nop                                           ; $730a: $00
    nop                                           ; $730b: $00
    nop                                           ; $730c: $00
    nop                                           ; $730d: $00
    nop                                           ; $730e: $00
    nop                                           ; $730f: $00
    nop                                           ; $7310: $00
    nop                                           ; $7311: $00
    nop                                           ; $7312: $00
    nop                                           ; $7313: $00
    nop                                           ; $7314: $00
    nop                                           ; $7315: $00
    nop                                           ; $7316: $00
    nop                                           ; $7317: $00
    nop                                           ; $7318: $00
    nop                                           ; $7319: $00
    nop                                           ; $731a: $00
    nop                                           ; $731b: $00
    nop                                           ; $731c: $00
    nop                                           ; $731d: $00
    nop                                           ; $731e: $00
    nop                                           ; $731f: $00
    nop                                           ; $7320: $00
    nop                                           ; $7321: $00
    nop                                           ; $7322: $00
    nop                                           ; $7323: $00
    nop                                           ; $7324: $00
    nop                                           ; $7325: $00
    nop                                           ; $7326: $00
    nop                                           ; $7327: $00
    nop                                           ; $7328: $00
    nop                                           ; $7329: $00
    nop                                           ; $732a: $00
    nop                                           ; $732b: $00
    nop                                           ; $732c: $00
    nop                                           ; $732d: $00
    nop                                           ; $732e: $00
    nop                                           ; $732f: $00
    nop                                           ; $7330: $00
    nop                                           ; $7331: $00
    nop                                           ; $7332: $00
    nop                                           ; $7333: $00
    nop                                           ; $7334: $00
    nop                                           ; $7335: $00
    nop                                           ; $7336: $00
    nop                                           ; $7337: $00
    nop                                           ; $7338: $00
    nop                                           ; $7339: $00
    nop                                           ; $733a: $00
    nop                                           ; $733b: $00
    nop                                           ; $733c: $00
    nop                                           ; $733d: $00
    nop                                           ; $733e: $00
    nop                                           ; $733f: $00
    nop                                           ; $7340: $00
    nop                                           ; $7341: $00
    nop                                           ; $7342: $00
    nop                                           ; $7343: $00
    nop                                           ; $7344: $00
    nop                                           ; $7345: $00
    nop                                           ; $7346: $00
    nop                                           ; $7347: $00
    nop                                           ; $7348: $00
    nop                                           ; $7349: $00
    nop                                           ; $734a: $00
    nop                                           ; $734b: $00
    nop                                           ; $734c: $00
    nop                                           ; $734d: $00
    nop                                           ; $734e: $00
    nop                                           ; $734f: $00
    nop                                           ; $7350: $00
    nop                                           ; $7351: $00
    nop                                           ; $7352: $00
    nop                                           ; $7353: $00
    nop                                           ; $7354: $00
    nop                                           ; $7355: $00
    nop                                           ; $7356: $00
    nop                                           ; $7357: $00
    nop                                           ; $7358: $00
    nop                                           ; $7359: $00
    nop                                           ; $735a: $00
    nop                                           ; $735b: $00
    nop                                           ; $735c: $00
    nop                                           ; $735d: $00
    nop                                           ; $735e: $00
    nop                                           ; $735f: $00
    nop                                           ; $7360: $00
    nop                                           ; $7361: $00
    nop                                           ; $7362: $00
    nop                                           ; $7363: $00
    nop                                           ; $7364: $00
    nop                                           ; $7365: $00
    nop                                           ; $7366: $00
    nop                                           ; $7367: $00
    nop                                           ; $7368: $00
    nop                                           ; $7369: $00
    nop                                           ; $736a: $00
    nop                                           ; $736b: $00
    nop                                           ; $736c: $00
    nop                                           ; $736d: $00
    nop                                           ; $736e: $00
    nop                                           ; $736f: $00
    nop                                           ; $7370: $00
    nop                                           ; $7371: $00
    nop                                           ; $7372: $00
    nop                                           ; $7373: $00
    nop                                           ; $7374: $00
    nop                                           ; $7375: $00
    nop                                           ; $7376: $00
    nop                                           ; $7377: $00
    nop                                           ; $7378: $00
    nop                                           ; $7379: $00
    nop                                           ; $737a: $00
    nop                                           ; $737b: $00
    nop                                           ; $737c: $00
    nop                                           ; $737d: $00
    nop                                           ; $737e: $00
    nop                                           ; $737f: $00
    nop                                           ; $7380: $00
    nop                                           ; $7381: $00
    nop                                           ; $7382: $00
    nop                                           ; $7383: $00
    nop                                           ; $7384: $00
    nop                                           ; $7385: $00
    nop                                           ; $7386: $00
    nop                                           ; $7387: $00
    nop                                           ; $7388: $00
    nop                                           ; $7389: $00
    nop                                           ; $738a: $00
    nop                                           ; $738b: $00
    nop                                           ; $738c: $00
    nop                                           ; $738d: $00
    nop                                           ; $738e: $00
    nop                                           ; $738f: $00
    nop                                           ; $7390: $00
    nop                                           ; $7391: $00
    nop                                           ; $7392: $00
    nop                                           ; $7393: $00
    nop                                           ; $7394: $00
    nop                                           ; $7395: $00
    nop                                           ; $7396: $00
    nop                                           ; $7397: $00
    nop                                           ; $7398: $00
    nop                                           ; $7399: $00
    nop                                           ; $739a: $00
    nop                                           ; $739b: $00
    nop                                           ; $739c: $00
    nop                                           ; $739d: $00
    nop                                           ; $739e: $00
    nop                                           ; $739f: $00
    nop                                           ; $73a0: $00
    nop                                           ; $73a1: $00
    nop                                           ; $73a2: $00
    nop                                           ; $73a3: $00
    nop                                           ; $73a4: $00
    nop                                           ; $73a5: $00
    nop                                           ; $73a6: $00
    nop                                           ; $73a7: $00
    nop                                           ; $73a8: $00
    nop                                           ; $73a9: $00
    nop                                           ; $73aa: $00
    nop                                           ; $73ab: $00
    nop                                           ; $73ac: $00
    nop                                           ; $73ad: $00
    nop                                           ; $73ae: $00
    nop                                           ; $73af: $00
    nop                                           ; $73b0: $00
    nop                                           ; $73b1: $00
    nop                                           ; $73b2: $00
    nop                                           ; $73b3: $00
    nop                                           ; $73b4: $00
    nop                                           ; $73b5: $00
    nop                                           ; $73b6: $00
    nop                                           ; $73b7: $00
    nop                                           ; $73b8: $00
    nop                                           ; $73b9: $00
    nop                                           ; $73ba: $00
    nop                                           ; $73bb: $00
    nop                                           ; $73bc: $00
    nop                                           ; $73bd: $00
    nop                                           ; $73be: $00
    nop                                           ; $73bf: $00
    nop                                           ; $73c0: $00
    nop                                           ; $73c1: $00
    nop                                           ; $73c2: $00
    nop                                           ; $73c3: $00
    nop                                           ; $73c4: $00
    nop                                           ; $73c5: $00
    nop                                           ; $73c6: $00
    nop                                           ; $73c7: $00
    nop                                           ; $73c8: $00
    nop                                           ; $73c9: $00
    nop                                           ; $73ca: $00
    nop                                           ; $73cb: $00
    nop                                           ; $73cc: $00
    nop                                           ; $73cd: $00
    nop                                           ; $73ce: $00
    nop                                           ; $73cf: $00
    nop                                           ; $73d0: $00
    nop                                           ; $73d1: $00
    nop                                           ; $73d2: $00
    nop                                           ; $73d3: $00
    nop                                           ; $73d4: $00
    nop                                           ; $73d5: $00
    nop                                           ; $73d6: $00
    nop                                           ; $73d7: $00
    nop                                           ; $73d8: $00
    nop                                           ; $73d9: $00
    nop                                           ; $73da: $00
    nop                                           ; $73db: $00
    nop                                           ; $73dc: $00
    nop                                           ; $73dd: $00
    nop                                           ; $73de: $00
    nop                                           ; $73df: $00
    nop                                           ; $73e0: $00
    nop                                           ; $73e1: $00
    nop                                           ; $73e2: $00
    nop                                           ; $73e3: $00
    nop                                           ; $73e4: $00
    nop                                           ; $73e5: $00
    nop                                           ; $73e6: $00
    nop                                           ; $73e7: $00
    nop                                           ; $73e8: $00
    nop                                           ; $73e9: $00
    nop                                           ; $73ea: $00
    nop                                           ; $73eb: $00
    nop                                           ; $73ec: $00
    nop                                           ; $73ed: $00
    nop                                           ; $73ee: $00
    nop                                           ; $73ef: $00
    nop                                           ; $73f0: $00
    nop                                           ; $73f1: $00
    nop                                           ; $73f2: $00
    nop                                           ; $73f3: $00
    nop                                           ; $73f4: $00
    nop                                           ; $73f5: $00
    nop                                           ; $73f6: $00
    nop                                           ; $73f7: $00
    nop                                           ; $73f8: $00
    nop                                           ; $73f9: $00
    nop                                           ; $73fa: $00
    nop                                           ; $73fb: $00
    nop                                           ; $73fc: $00
    nop                                           ; $73fd: $00
    nop                                           ; $73fe: $00
    nop                                           ; $73ff: $00
    nop                                           ; $7400: $00
    nop                                           ; $7401: $00
    nop                                           ; $7402: $00
    nop                                           ; $7403: $00
    nop                                           ; $7404: $00
    nop                                           ; $7405: $00
    nop                                           ; $7406: $00
    nop                                           ; $7407: $00
    ld bc, $ff00                                  ; $7408: $01 $00 $ff
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
    nop                                           ; $7418: $00
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
    jr nz, @+$01                                  ; $7429: $20 $ff

    rst $38                                       ; $742b: $ff
    rst $38                                       ; $742c: $ff
    rst $38                                       ; $742d: $ff
    rst $38                                       ; $742e: $ff
    rst $38                                       ; $742f: $ff
    rst $38                                       ; $7430: $ff
    rst $38                                       ; $7431: $ff
    rst $30                                       ; $7432: $f7
    or $66                                        ; $7433: $f6 $66
    rst $38                                       ; $7435: $ff
    db $ec                                        ; $7436: $ec
    adc $ff                                       ; $7437: $ce $ff
    nop                                           ; $7439: $00
    rst $38                                       ; $743a: $ff
    rst $38                                       ; $743b: $ff
    rst $38                                       ; $743c: $ff
    rst $38                                       ; $743d: $ff
    add b                                         ; $743e: $80
    rst $38                                       ; $743f: $ff
    rst $38                                       ; $7440: $ff
    rst $38                                       ; $7441: $ff
    rst $38                                       ; $7442: $ff
    rst $38                                       ; $7443: $ff
    rst $38                                       ; $7444: $ff
    rst $38                                       ; $7445: $ff
    add b                                         ; $7446: $80
    rst $38                                       ; $7447: $ff
    rst $38                                       ; $7448: $ff
    rst $38                                       ; $7449: $ff
    nop                                           ; $744a: $00
    rst $38                                       ; $744b: $ff
    rst $38                                       ; $744c: $ff
    add b                                         ; $744d: $80
    rst $38                                       ; $744e: $ff
    add b                                         ; $744f: $80
    rst $38                                       ; $7450: $ff
    rst $38                                       ; $7451: $ff
    rst $38                                       ; $7452: $ff
    rst $38                                       ; $7453: $ff
    rst $38                                       ; $7454: $ff
    add b                                         ; $7455: $80
    rst $38                                       ; $7456: $ff
    add b                                         ; $7457: $80
    rst $38                                       ; $7458: $ff
    rst $38                                       ; $7459: $ff
    rst $38                                       ; $745a: $ff
    nop                                           ; $745b: $00
    rst $38                                       ; $745c: $ff
    rst $38                                       ; $745d: $ff
    add b                                         ; $745e: $80
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
    nop                                           ; $746c: $00
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
    nop                                           ; $747d: $00
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
    nop                                           ; $748c: $00
    nop                                           ; $748d: $00
    nop                                           ; $748e: $00
    ld bc, $ff00                                  ; $748f: $01 $00 $ff
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
    nop                                           ; $749f: $00
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
    nop                                           ; $74b0: $00
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
    nop                                           ; $74c1: $00
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
    nop                                           ; $74d2: $00
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
    nop                                           ; $74e3: $00
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
    nop                                           ; $74f4: $00
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
    nop                                           ; $7505: $00
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
    db $e4                                        ; $7511: $e4
    nop                                           ; $7512: $00
    nop                                           ; $7513: $00
    nop                                           ; $7514: $00
    jr nz, jr_054_758c                            ; $7515: $20 $75

    jr nz, jr_054_7596                            ; $7517: $20 $7d

    nop                                           ; $7519: $00
    nop                                           ; $751a: $00
    nop                                           ; $751b: $00
    nop                                           ; $751c: $00
    nop                                           ; $751d: $00
    nop                                           ; $751e: $00
    nop                                           ; $751f: $00
    nop                                           ; $7520: $00
    nop                                           ; $7521: $00
    nop                                           ; $7522: $00
    nop                                           ; $7523: $00
    nop                                           ; $7524: $00
    nop                                           ; $7525: $00
    nop                                           ; $7526: $00
    nop                                           ; $7527: $00
    nop                                           ; $7528: $00
    nop                                           ; $7529: $00
    nop                                           ; $752a: $00
    nop                                           ; $752b: $00
    nop                                           ; $752c: $00
    nop                                           ; $752d: $00
    nop                                           ; $752e: $00
    nop                                           ; $752f: $00
    nop                                           ; $7530: $00
    nop                                           ; $7531: $00
    nop                                           ; $7532: $00
    nop                                           ; $7533: $00
    nop                                           ; $7534: $00
    nop                                           ; $7535: $00
    nop                                           ; $7536: $00
    nop                                           ; $7537: $00
    nop                                           ; $7538: $00
    nop                                           ; $7539: $00
    nop                                           ; $753a: $00
    nop                                           ; $753b: $00
    nop                                           ; $753c: $00
    nop                                           ; $753d: $00
    nop                                           ; $753e: $00
    nop                                           ; $753f: $00
    nop                                           ; $7540: $00
    nop                                           ; $7541: $00
    nop                                           ; $7542: $00
    nop                                           ; $7543: $00
    nop                                           ; $7544: $00
    nop                                           ; $7545: $00
    nop                                           ; $7546: $00
    nop                                           ; $7547: $00
    nop                                           ; $7548: $00
    nop                                           ; $7549: $00
    nop                                           ; $754a: $00
    nop                                           ; $754b: $00
    nop                                           ; $754c: $00
    nop                                           ; $754d: $00
    nop                                           ; $754e: $00
    nop                                           ; $754f: $00
    nop                                           ; $7550: $00
    nop                                           ; $7551: $00
    nop                                           ; $7552: $00
    nop                                           ; $7553: $00
    nop                                           ; $7554: $00
    nop                                           ; $7555: $00
    nop                                           ; $7556: $00
    nop                                           ; $7557: $00
    nop                                           ; $7558: $00
    nop                                           ; $7559: $00
    nop                                           ; $755a: $00
    nop                                           ; $755b: $00
    nop                                           ; $755c: $00
    nop                                           ; $755d: $00
    nop                                           ; $755e: $00
    nop                                           ; $755f: $00
    nop                                           ; $7560: $00
    nop                                           ; $7561: $00
    nop                                           ; $7562: $00
    nop                                           ; $7563: $00
    nop                                           ; $7564: $00
    nop                                           ; $7565: $00
    nop                                           ; $7566: $00
    nop                                           ; $7567: $00
    nop                                           ; $7568: $00
    nop                                           ; $7569: $00
    nop                                           ; $756a: $00
    nop                                           ; $756b: $00
    nop                                           ; $756c: $00
    nop                                           ; $756d: $00
    nop                                           ; $756e: $00
    nop                                           ; $756f: $00
    nop                                           ; $7570: $00
    nop                                           ; $7571: $00
    nop                                           ; $7572: $00
    nop                                           ; $7573: $00
    nop                                           ; $7574: $00
    nop                                           ; $7575: $00
    nop                                           ; $7576: $00
    nop                                           ; $7577: $00
    nop                                           ; $7578: $00
    nop                                           ; $7579: $00
    nop                                           ; $757a: $00
    nop                                           ; $757b: $00
    nop                                           ; $757c: $00
    nop                                           ; $757d: $00
    nop                                           ; $757e: $00
    nop                                           ; $757f: $00
    nop                                           ; $7580: $00
    nop                                           ; $7581: $00
    nop                                           ; $7582: $00
    nop                                           ; $7583: $00
    nop                                           ; $7584: $00
    nop                                           ; $7585: $00
    nop                                           ; $7586: $00
    nop                                           ; $7587: $00
    nop                                           ; $7588: $00
    nop                                           ; $7589: $00
    nop                                           ; $758a: $00
    nop                                           ; $758b: $00

jr_054_758c:
    nop                                           ; $758c: $00
    nop                                           ; $758d: $00
    nop                                           ; $758e: $00
    nop                                           ; $758f: $00
    nop                                           ; $7590: $00
    nop                                           ; $7591: $00
    nop                                           ; $7592: $00
    nop                                           ; $7593: $00
    nop                                           ; $7594: $00
    nop                                           ; $7595: $00

jr_054_7596:
    nop                                           ; $7596: $00
    nop                                           ; $7597: $00
    nop                                           ; $7598: $00
    nop                                           ; $7599: $00
    nop                                           ; $759a: $00
    nop                                           ; $759b: $00
    nop                                           ; $759c: $00
    nop                                           ; $759d: $00
    nop                                           ; $759e: $00
    nop                                           ; $759f: $00
    nop                                           ; $75a0: $00
    nop                                           ; $75a1: $00
    nop                                           ; $75a2: $00
    nop                                           ; $75a3: $00
    nop                                           ; $75a4: $00
    nop                                           ; $75a5: $00
    nop                                           ; $75a6: $00
    nop                                           ; $75a7: $00
    nop                                           ; $75a8: $00
    nop                                           ; $75a9: $00
    nop                                           ; $75aa: $00
    nop                                           ; $75ab: $00
    nop                                           ; $75ac: $00
    nop                                           ; $75ad: $00
    nop                                           ; $75ae: $00
    nop                                           ; $75af: $00
    nop                                           ; $75b0: $00
    nop                                           ; $75b1: $00
    nop                                           ; $75b2: $00
    nop                                           ; $75b3: $00
    nop                                           ; $75b4: $00
    nop                                           ; $75b5: $00
    nop                                           ; $75b6: $00
    nop                                           ; $75b7: $00
    nop                                           ; $75b8: $00
    nop                                           ; $75b9: $00
    nop                                           ; $75ba: $00
    nop                                           ; $75bb: $00
    nop                                           ; $75bc: $00
    nop                                           ; $75bd: $00
    nop                                           ; $75be: $00
    nop                                           ; $75bf: $00
    nop                                           ; $75c0: $00
    nop                                           ; $75c1: $00
    nop                                           ; $75c2: $00
    nop                                           ; $75c3: $00
    nop                                           ; $75c4: $00
    nop                                           ; $75c5: $00
    nop                                           ; $75c6: $00
    nop                                           ; $75c7: $00
    nop                                           ; $75c8: $00
    nop                                           ; $75c9: $00
    nop                                           ; $75ca: $00
    nop                                           ; $75cb: $00
    nop                                           ; $75cc: $00
    nop                                           ; $75cd: $00
    nop                                           ; $75ce: $00
    nop                                           ; $75cf: $00
    nop                                           ; $75d0: $00
    nop                                           ; $75d1: $00
    nop                                           ; $75d2: $00
    nop                                           ; $75d3: $00
    nop                                           ; $75d4: $00
    nop                                           ; $75d5: $00
    nop                                           ; $75d6: $00
    nop                                           ; $75d7: $00
    nop                                           ; $75d8: $00
    nop                                           ; $75d9: $00
    nop                                           ; $75da: $00
    nop                                           ; $75db: $00
    nop                                           ; $75dc: $00
    nop                                           ; $75dd: $00
    nop                                           ; $75de: $00
    nop                                           ; $75df: $00
    nop                                           ; $75e0: $00
    nop                                           ; $75e1: $00
    nop                                           ; $75e2: $00
    nop                                           ; $75e3: $00
    nop                                           ; $75e4: $00
    nop                                           ; $75e5: $00
    nop                                           ; $75e6: $00
    nop                                           ; $75e7: $00
    nop                                           ; $75e8: $00
    nop                                           ; $75e9: $00
    nop                                           ; $75ea: $00
    nop                                           ; $75eb: $00
    nop                                           ; $75ec: $00
    nop                                           ; $75ed: $00
    nop                                           ; $75ee: $00
    nop                                           ; $75ef: $00
    nop                                           ; $75f0: $00
    nop                                           ; $75f1: $00
    nop                                           ; $75f2: $00
    nop                                           ; $75f3: $00
    nop                                           ; $75f4: $00
    nop                                           ; $75f5: $00
    nop                                           ; $75f6: $00
    nop                                           ; $75f7: $00
    nop                                           ; $75f8: $00
    nop                                           ; $75f9: $00
    nop                                           ; $75fa: $00
    nop                                           ; $75fb: $00
    nop                                           ; $75fc: $00
    nop                                           ; $75fd: $00
    nop                                           ; $75fe: $00
    nop                                           ; $75ff: $00
    nop                                           ; $7600: $00
    nop                                           ; $7601: $00
    nop                                           ; $7602: $00
    nop                                           ; $7603: $00
    nop                                           ; $7604: $00
    nop                                           ; $7605: $00
    nop                                           ; $7606: $00
    nop                                           ; $7607: $00
    nop                                           ; $7608: $00
    nop                                           ; $7609: $00
    nop                                           ; $760a: $00
    nop                                           ; $760b: $00
    nop                                           ; $760c: $00
    nop                                           ; $760d: $00
    nop                                           ; $760e: $00
    nop                                           ; $760f: $00
    nop                                           ; $7610: $00
    nop                                           ; $7611: $00
    nop                                           ; $7612: $00
    nop                                           ; $7613: $00
    nop                                           ; $7614: $00
    nop                                           ; $7615: $00
    nop                                           ; $7616: $00
    nop                                           ; $7617: $00
    nop                                           ; $7618: $00
    nop                                           ; $7619: $00
    nop                                           ; $761a: $00
    nop                                           ; $761b: $00
    nop                                           ; $761c: $00
    nop                                           ; $761d: $00
    nop                                           ; $761e: $00
    nop                                           ; $761f: $00
    nop                                           ; $7620: $00
    nop                                           ; $7621: $00
    nop                                           ; $7622: $00
    nop                                           ; $7623: $00
    nop                                           ; $7624: $00
    nop                                           ; $7625: $00
    nop                                           ; $7626: $00
    nop                                           ; $7627: $00
    nop                                           ; $7628: $00
    nop                                           ; $7629: $00
    nop                                           ; $762a: $00
    nop                                           ; $762b: $00
    nop                                           ; $762c: $00
    nop                                           ; $762d: $00
    nop                                           ; $762e: $00
    nop                                           ; $762f: $00
    nop                                           ; $7630: $00
    nop                                           ; $7631: $00
    nop                                           ; $7632: $00
    nop                                           ; $7633: $00
    nop                                           ; $7634: $00
    nop                                           ; $7635: $00
    nop                                           ; $7636: $00
    nop                                           ; $7637: $00
    nop                                           ; $7638: $00
    nop                                           ; $7639: $00
    nop                                           ; $763a: $00
    nop                                           ; $763b: $00
    nop                                           ; $763c: $00
    nop                                           ; $763d: $00
    nop                                           ; $763e: $00
    nop                                           ; $763f: $00
    nop                                           ; $7640: $00
    nop                                           ; $7641: $00
    nop                                           ; $7642: $00
    nop                                           ; $7643: $00
    nop                                           ; $7644: $00
    nop                                           ; $7645: $00
    nop                                           ; $7646: $00
    nop                                           ; $7647: $00
    nop                                           ; $7648: $00
    nop                                           ; $7649: $00
    nop                                           ; $764a: $00
    nop                                           ; $764b: $00
    nop                                           ; $764c: $00
    nop                                           ; $764d: $00
    nop                                           ; $764e: $00
    nop                                           ; $764f: $00
    nop                                           ; $7650: $00
    nop                                           ; $7651: $00
    nop                                           ; $7652: $00
    nop                                           ; $7653: $00
    nop                                           ; $7654: $00
    nop                                           ; $7655: $00
    nop                                           ; $7656: $00
    nop                                           ; $7657: $00
    nop                                           ; $7658: $00
    nop                                           ; $7659: $00
    nop                                           ; $765a: $00
    nop                                           ; $765b: $00
    nop                                           ; $765c: $00
    nop                                           ; $765d: $00
    nop                                           ; $765e: $00
    nop                                           ; $765f: $00
    nop                                           ; $7660: $00
    nop                                           ; $7661: $00
    nop                                           ; $7662: $00
    nop                                           ; $7663: $00
    nop                                           ; $7664: $00
    nop                                           ; $7665: $00
    nop                                           ; $7666: $00
    nop                                           ; $7667: $00
    nop                                           ; $7668: $00
    nop                                           ; $7669: $00
    nop                                           ; $766a: $00
    nop                                           ; $766b: $00
    nop                                           ; $766c: $00
    nop                                           ; $766d: $00
    nop                                           ; $766e: $00
    nop                                           ; $766f: $00
    nop                                           ; $7670: $00
    nop                                           ; $7671: $00
    nop                                           ; $7672: $00
    nop                                           ; $7673: $00
    nop                                           ; $7674: $00
    nop                                           ; $7675: $00
    nop                                           ; $7676: $00
    nop                                           ; $7677: $00
    nop                                           ; $7678: $00
    nop                                           ; $7679: $00
    nop                                           ; $767a: $00
    nop                                           ; $767b: $00
    nop                                           ; $767c: $00
    nop                                           ; $767d: $00
    nop                                           ; $767e: $00
    nop                                           ; $767f: $00
    nop                                           ; $7680: $00
    nop                                           ; $7681: $00
    nop                                           ; $7682: $00
    nop                                           ; $7683: $00
    nop                                           ; $7684: $00
    nop                                           ; $7685: $00
    nop                                           ; $7686: $00
    nop                                           ; $7687: $00
    nop                                           ; $7688: $00
    nop                                           ; $7689: $00
    nop                                           ; $768a: $00
    nop                                           ; $768b: $00
    nop                                           ; $768c: $00
    nop                                           ; $768d: $00
    nop                                           ; $768e: $00
    nop                                           ; $768f: $00
    nop                                           ; $7690: $00
    nop                                           ; $7691: $00
    nop                                           ; $7692: $00
    nop                                           ; $7693: $00
    nop                                           ; $7694: $00
    nop                                           ; $7695: $00
    nop                                           ; $7696: $00
    nop                                           ; $7697: $00
    nop                                           ; $7698: $00
    nop                                           ; $7699: $00
    nop                                           ; $769a: $00
    nop                                           ; $769b: $00
    nop                                           ; $769c: $00
    nop                                           ; $769d: $00
    nop                                           ; $769e: $00
    nop                                           ; $769f: $00
    nop                                           ; $76a0: $00
    nop                                           ; $76a1: $00
    nop                                           ; $76a2: $00
    nop                                           ; $76a3: $00
    nop                                           ; $76a4: $00
    nop                                           ; $76a5: $00
    nop                                           ; $76a6: $00
    nop                                           ; $76a7: $00
    nop                                           ; $76a8: $00
    nop                                           ; $76a9: $00
    nop                                           ; $76aa: $00
    nop                                           ; $76ab: $00
    nop                                           ; $76ac: $00
    nop                                           ; $76ad: $00
    nop                                           ; $76ae: $00
    nop                                           ; $76af: $00
    nop                                           ; $76b0: $00
    nop                                           ; $76b1: $00
    nop                                           ; $76b2: $00
    nop                                           ; $76b3: $00
    nop                                           ; $76b4: $00
    nop                                           ; $76b5: $00
    nop                                           ; $76b6: $00
    nop                                           ; $76b7: $00
    nop                                           ; $76b8: $00
    nop                                           ; $76b9: $00
    nop                                           ; $76ba: $00
    nop                                           ; $76bb: $00
    nop                                           ; $76bc: $00
    nop                                           ; $76bd: $00
    nop                                           ; $76be: $00
    nop                                           ; $76bf: $00
    nop                                           ; $76c0: $00
    nop                                           ; $76c1: $00
    nop                                           ; $76c2: $00
    nop                                           ; $76c3: $00
    nop                                           ; $76c4: $00
    nop                                           ; $76c5: $00
    nop                                           ; $76c6: $00
    nop                                           ; $76c7: $00
    nop                                           ; $76c8: $00
    nop                                           ; $76c9: $00
    nop                                           ; $76ca: $00
    nop                                           ; $76cb: $00
    nop                                           ; $76cc: $00
    nop                                           ; $76cd: $00
    nop                                           ; $76ce: $00
    nop                                           ; $76cf: $00
    nop                                           ; $76d0: $00
    nop                                           ; $76d1: $00
    nop                                           ; $76d2: $00
    nop                                           ; $76d3: $00
    nop                                           ; $76d4: $00
    nop                                           ; $76d5: $00
    nop                                           ; $76d6: $00
    nop                                           ; $76d7: $00
    nop                                           ; $76d8: $00
    nop                                           ; $76d9: $00
    nop                                           ; $76da: $00
    nop                                           ; $76db: $00
    nop                                           ; $76dc: $00
    nop                                           ; $76dd: $00
    nop                                           ; $76de: $00
    nop                                           ; $76df: $00
    nop                                           ; $76e0: $00
    nop                                           ; $76e1: $00
    nop                                           ; $76e2: $00
    nop                                           ; $76e3: $00
    nop                                           ; $76e4: $00
    nop                                           ; $76e5: $00
    nop                                           ; $76e6: $00
    nop                                           ; $76e7: $00
    nop                                           ; $76e8: $00
    nop                                           ; $76e9: $00
    nop                                           ; $76ea: $00
    nop                                           ; $76eb: $00
    nop                                           ; $76ec: $00
    nop                                           ; $76ed: $00
    nop                                           ; $76ee: $00
    nop                                           ; $76ef: $00
    nop                                           ; $76f0: $00
    nop                                           ; $76f1: $00
    nop                                           ; $76f2: $00
    nop                                           ; $76f3: $00
    nop                                           ; $76f4: $00
    nop                                           ; $76f5: $00
    nop                                           ; $76f6: $00
    nop                                           ; $76f7: $00
    nop                                           ; $76f8: $00
    nop                                           ; $76f9: $00
    nop                                           ; $76fa: $00
    nop                                           ; $76fb: $00
    nop                                           ; $76fc: $00
    nop                                           ; $76fd: $00
    nop                                           ; $76fe: $00
    nop                                           ; $76ff: $00
    nop                                           ; $7700: $00
    nop                                           ; $7701: $00
    nop                                           ; $7702: $00
    nop                                           ; $7703: $00
    nop                                           ; $7704: $00
    nop                                           ; $7705: $00
    nop                                           ; $7706: $00
    nop                                           ; $7707: $00
    nop                                           ; $7708: $00
    nop                                           ; $7709: $00
    nop                                           ; $770a: $00
    nop                                           ; $770b: $00
    nop                                           ; $770c: $00
    nop                                           ; $770d: $00
    nop                                           ; $770e: $00
    nop                                           ; $770f: $00
    nop                                           ; $7710: $00
    nop                                           ; $7711: $00
    nop                                           ; $7712: $00
    nop                                           ; $7713: $00
    nop                                           ; $7714: $00
    nop                                           ; $7715: $00
    nop                                           ; $7716: $00
    nop                                           ; $7717: $00
    nop                                           ; $7718: $00
    nop                                           ; $7719: $00
    nop                                           ; $771a: $00
    nop                                           ; $771b: $00
    nop                                           ; $771c: $00
    nop                                           ; $771d: $00
    nop                                           ; $771e: $00
    nop                                           ; $771f: $00
    nop                                           ; $7720: $00
    nop                                           ; $7721: $00
    nop                                           ; $7722: $00
    nop                                           ; $7723: $00
    nop                                           ; $7724: $00
    nop                                           ; $7725: $00
    nop                                           ; $7726: $00
    nop                                           ; $7727: $00
    nop                                           ; $7728: $00
    nop                                           ; $7729: $00
    nop                                           ; $772a: $00
    nop                                           ; $772b: $00
    nop                                           ; $772c: $00
    nop                                           ; $772d: $00
    nop                                           ; $772e: $00
    nop                                           ; $772f: $00
    nop                                           ; $7730: $00
    nop                                           ; $7731: $00
    nop                                           ; $7732: $00
    nop                                           ; $7733: $00
    nop                                           ; $7734: $00
    nop                                           ; $7735: $00
    nop                                           ; $7736: $00
    nop                                           ; $7737: $00
    nop                                           ; $7738: $00
    nop                                           ; $7739: $00
    nop                                           ; $773a: $00
    nop                                           ; $773b: $00
    nop                                           ; $773c: $00
    nop                                           ; $773d: $00
    nop                                           ; $773e: $00
    nop                                           ; $773f: $00
    nop                                           ; $7740: $00
    nop                                           ; $7741: $00
    nop                                           ; $7742: $00
    nop                                           ; $7743: $00
    nop                                           ; $7744: $00
    nop                                           ; $7745: $00
    nop                                           ; $7746: $00
    nop                                           ; $7747: $00
    nop                                           ; $7748: $00
    nop                                           ; $7749: $00
    nop                                           ; $774a: $00
    nop                                           ; $774b: $00
    nop                                           ; $774c: $00
    nop                                           ; $774d: $00
    nop                                           ; $774e: $00
    nop                                           ; $774f: $00
    nop                                           ; $7750: $00
    nop                                           ; $7751: $00
    nop                                           ; $7752: $00
    nop                                           ; $7753: $00
    nop                                           ; $7754: $00
    nop                                           ; $7755: $00
    nop                                           ; $7756: $00
    nop                                           ; $7757: $00
    nop                                           ; $7758: $00
    nop                                           ; $7759: $00
    nop                                           ; $775a: $00
    nop                                           ; $775b: $00
    nop                                           ; $775c: $00
    nop                                           ; $775d: $00
    nop                                           ; $775e: $00
    nop                                           ; $775f: $00
    nop                                           ; $7760: $00
    nop                                           ; $7761: $00
    nop                                           ; $7762: $00
    nop                                           ; $7763: $00
    nop                                           ; $7764: $00
    nop                                           ; $7765: $00
    nop                                           ; $7766: $00
    nop                                           ; $7767: $00
    nop                                           ; $7768: $00
    nop                                           ; $7769: $00
    nop                                           ; $776a: $00
    nop                                           ; $776b: $00
    nop                                           ; $776c: $00
    nop                                           ; $776d: $00
    nop                                           ; $776e: $00
    nop                                           ; $776f: $00
    nop                                           ; $7770: $00
    nop                                           ; $7771: $00
    nop                                           ; $7772: $00
    nop                                           ; $7773: $00
    nop                                           ; $7774: $00
    nop                                           ; $7775: $00
    nop                                           ; $7776: $00
    nop                                           ; $7777: $00
    nop                                           ; $7778: $00
    nop                                           ; $7779: $00
    nop                                           ; $777a: $00
    nop                                           ; $777b: $00
    nop                                           ; $777c: $00
    nop                                           ; $777d: $00
    nop                                           ; $777e: $00
    nop                                           ; $777f: $00
    nop                                           ; $7780: $00
    nop                                           ; $7781: $00
    nop                                           ; $7782: $00
    nop                                           ; $7783: $00
    nop                                           ; $7784: $00
    nop                                           ; $7785: $00
    nop                                           ; $7786: $00
    nop                                           ; $7787: $00
    nop                                           ; $7788: $00
    nop                                           ; $7789: $00
    nop                                           ; $778a: $00
    nop                                           ; $778b: $00
    nop                                           ; $778c: $00
    nop                                           ; $778d: $00
    nop                                           ; $778e: $00
    nop                                           ; $778f: $00
    nop                                           ; $7790: $00
    nop                                           ; $7791: $00
    nop                                           ; $7792: $00
    nop                                           ; $7793: $00
    nop                                           ; $7794: $00
    nop                                           ; $7795: $00
    nop                                           ; $7796: $00
    nop                                           ; $7797: $00
    nop                                           ; $7798: $00
    nop                                           ; $7799: $00
    nop                                           ; $779a: $00
    nop                                           ; $779b: $00
    nop                                           ; $779c: $00
    nop                                           ; $779d: $00
    nop                                           ; $779e: $00
    nop                                           ; $779f: $00
    nop                                           ; $77a0: $00
    nop                                           ; $77a1: $00
    nop                                           ; $77a2: $00
    nop                                           ; $77a3: $00
    nop                                           ; $77a4: $00
    nop                                           ; $77a5: $00
    nop                                           ; $77a6: $00
    nop                                           ; $77a7: $00
    nop                                           ; $77a8: $00
    nop                                           ; $77a9: $00
    nop                                           ; $77aa: $00
    nop                                           ; $77ab: $00
    nop                                           ; $77ac: $00
    nop                                           ; $77ad: $00
    nop                                           ; $77ae: $00
    nop                                           ; $77af: $00
    nop                                           ; $77b0: $00
    nop                                           ; $77b1: $00
    nop                                           ; $77b2: $00
    nop                                           ; $77b3: $00
    nop                                           ; $77b4: $00
    nop                                           ; $77b5: $00
    nop                                           ; $77b6: $00
    nop                                           ; $77b7: $00
    nop                                           ; $77b8: $00
    nop                                           ; $77b9: $00
    nop                                           ; $77ba: $00
    nop                                           ; $77bb: $00
    nop                                           ; $77bc: $00
    nop                                           ; $77bd: $00
    nop                                           ; $77be: $00
    nop                                           ; $77bf: $00
    nop                                           ; $77c0: $00
    nop                                           ; $77c1: $00
    nop                                           ; $77c2: $00
    nop                                           ; $77c3: $00
    nop                                           ; $77c4: $00
    nop                                           ; $77c5: $00
    nop                                           ; $77c6: $00
    nop                                           ; $77c7: $00
    nop                                           ; $77c8: $00
    nop                                           ; $77c9: $00
    nop                                           ; $77ca: $00
    nop                                           ; $77cb: $00
    nop                                           ; $77cc: $00
    nop                                           ; $77cd: $00
    nop                                           ; $77ce: $00
    nop                                           ; $77cf: $00
    nop                                           ; $77d0: $00
    nop                                           ; $77d1: $00
    nop                                           ; $77d2: $00
    nop                                           ; $77d3: $00
    nop                                           ; $77d4: $00
    nop                                           ; $77d5: $00
    nop                                           ; $77d6: $00
    nop                                           ; $77d7: $00
    nop                                           ; $77d8: $00
    nop                                           ; $77d9: $00
    nop                                           ; $77da: $00
    nop                                           ; $77db: $00
    nop                                           ; $77dc: $00
    nop                                           ; $77dd: $00
    nop                                           ; $77de: $00
    nop                                           ; $77df: $00
    nop                                           ; $77e0: $00
    nop                                           ; $77e1: $00
    nop                                           ; $77e2: $00
    nop                                           ; $77e3: $00
    nop                                           ; $77e4: $00
    nop                                           ; $77e5: $00
    nop                                           ; $77e6: $00
    nop                                           ; $77e7: $00
    nop                                           ; $77e8: $00
    nop                                           ; $77e9: $00
    nop                                           ; $77ea: $00
    nop                                           ; $77eb: $00
    nop                                           ; $77ec: $00
    nop                                           ; $77ed: $00
    nop                                           ; $77ee: $00
    nop                                           ; $77ef: $00
    nop                                           ; $77f0: $00
    nop                                           ; $77f1: $00
    nop                                           ; $77f2: $00
    nop                                           ; $77f3: $00
    nop                                           ; $77f4: $00
    nop                                           ; $77f5: $00
    nop                                           ; $77f6: $00
    nop                                           ; $77f7: $00
    nop                                           ; $77f8: $00
    nop                                           ; $77f9: $00
    nop                                           ; $77fa: $00
    nop                                           ; $77fb: $00
    nop                                           ; $77fc: $00
    nop                                           ; $77fd: $00
    nop                                           ; $77fe: $00
    nop                                           ; $77ff: $00
    nop                                           ; $7800: $00
    nop                                           ; $7801: $00
    nop                                           ; $7802: $00
    nop                                           ; $7803: $00
    nop                                           ; $7804: $00
    nop                                           ; $7805: $00
    nop                                           ; $7806: $00
    nop                                           ; $7807: $00
    nop                                           ; $7808: $00
    nop                                           ; $7809: $00
    nop                                           ; $780a: $00
    nop                                           ; $780b: $00
    nop                                           ; $780c: $00
    nop                                           ; $780d: $00
    nop                                           ; $780e: $00
    nop                                           ; $780f: $00
    nop                                           ; $7810: $00
    nop                                           ; $7811: $00
    nop                                           ; $7812: $00
    nop                                           ; $7813: $00
    nop                                           ; $7814: $00
    nop                                           ; $7815: $00
    nop                                           ; $7816: $00
    nop                                           ; $7817: $00
    nop                                           ; $7818: $00
    nop                                           ; $7819: $00
    nop                                           ; $781a: $00
    nop                                           ; $781b: $00
    nop                                           ; $781c: $00
    nop                                           ; $781d: $00
    nop                                           ; $781e: $00
    nop                                           ; $781f: $00
    nop                                           ; $7820: $00
    nop                                           ; $7821: $00
    nop                                           ; $7822: $00
    nop                                           ; $7823: $00
    nop                                           ; $7824: $00
    nop                                           ; $7825: $00
    nop                                           ; $7826: $00
    nop                                           ; $7827: $00
    nop                                           ; $7828: $00
    nop                                           ; $7829: $00
    nop                                           ; $782a: $00
    nop                                           ; $782b: $00
    nop                                           ; $782c: $00
    nop                                           ; $782d: $00
    nop                                           ; $782e: $00
    nop                                           ; $782f: $00
    nop                                           ; $7830: $00
    nop                                           ; $7831: $00
    nop                                           ; $7832: $00
    nop                                           ; $7833: $00
    nop                                           ; $7834: $00
    nop                                           ; $7835: $00
    nop                                           ; $7836: $00
    nop                                           ; $7837: $00
    nop                                           ; $7838: $00
    nop                                           ; $7839: $00
    nop                                           ; $783a: $00
    nop                                           ; $783b: $00
    nop                                           ; $783c: $00
    nop                                           ; $783d: $00
    nop                                           ; $783e: $00
    nop                                           ; $783f: $00
    nop                                           ; $7840: $00
    nop                                           ; $7841: $00
    nop                                           ; $7842: $00
    nop                                           ; $7843: $00

Jump_054_7844:
    nop                                           ; $7844: $00
    nop                                           ; $7845: $00
    nop                                           ; $7846: $00
    nop                                           ; $7847: $00
    nop                                           ; $7848: $00
    nop                                           ; $7849: $00
    nop                                           ; $784a: $00
    nop                                           ; $784b: $00
    nop                                           ; $784c: $00
    nop                                           ; $784d: $00
    nop                                           ; $784e: $00
    nop                                           ; $784f: $00
    nop                                           ; $7850: $00
    nop                                           ; $7851: $00
    nop                                           ; $7852: $00
    nop                                           ; $7853: $00
    nop                                           ; $7854: $00
    nop                                           ; $7855: $00
    nop                                           ; $7856: $00
    nop                                           ; $7857: $00
    nop                                           ; $7858: $00
    nop                                           ; $7859: $00
    nop                                           ; $785a: $00
    nop                                           ; $785b: $00
    nop                                           ; $785c: $00
    nop                                           ; $785d: $00
    nop                                           ; $785e: $00
    nop                                           ; $785f: $00
    nop                                           ; $7860: $00
    nop                                           ; $7861: $00
    nop                                           ; $7862: $00
    nop                                           ; $7863: $00
    nop                                           ; $7864: $00
    nop                                           ; $7865: $00
    nop                                           ; $7866: $00
    nop                                           ; $7867: $00
    nop                                           ; $7868: $00
    nop                                           ; $7869: $00
    nop                                           ; $786a: $00
    nop                                           ; $786b: $00
    nop                                           ; $786c: $00
    nop                                           ; $786d: $00
    nop                                           ; $786e: $00
    nop                                           ; $786f: $00
    nop                                           ; $7870: $00
    nop                                           ; $7871: $00
    nop                                           ; $7872: $00
    nop                                           ; $7873: $00
    nop                                           ; $7874: $00
    nop                                           ; $7875: $00
    nop                                           ; $7876: $00
    nop                                           ; $7877: $00
    nop                                           ; $7878: $00
    nop                                           ; $7879: $00
    nop                                           ; $787a: $00
    nop                                           ; $787b: $00
    nop                                           ; $787c: $00
    nop                                           ; $787d: $00
    nop                                           ; $787e: $00
    nop                                           ; $787f: $00
    nop                                           ; $7880: $00
    nop                                           ; $7881: $00
    nop                                           ; $7882: $00
    nop                                           ; $7883: $00
    nop                                           ; $7884: $00
    nop                                           ; $7885: $00
    nop                                           ; $7886: $00
    nop                                           ; $7887: $00
    nop                                           ; $7888: $00
    nop                                           ; $7889: $00
    nop                                           ; $788a: $00
    nop                                           ; $788b: $00
    nop                                           ; $788c: $00
    nop                                           ; $788d: $00
    nop                                           ; $788e: $00
    nop                                           ; $788f: $00
    nop                                           ; $7890: $00
    nop                                           ; $7891: $00
    nop                                           ; $7892: $00
    nop                                           ; $7893: $00
    nop                                           ; $7894: $00
    nop                                           ; $7895: $00
    nop                                           ; $7896: $00
    nop                                           ; $7897: $00
    nop                                           ; $7898: $00
    nop                                           ; $7899: $00
    nop                                           ; $789a: $00
    nop                                           ; $789b: $00
    nop                                           ; $789c: $00
    nop                                           ; $789d: $00
    nop                                           ; $789e: $00
    nop                                           ; $789f: $00
    nop                                           ; $78a0: $00
    nop                                           ; $78a1: $00
    nop                                           ; $78a2: $00
    nop                                           ; $78a3: $00
    nop                                           ; $78a4: $00
    nop                                           ; $78a5: $00
    nop                                           ; $78a6: $00
    nop                                           ; $78a7: $00
    nop                                           ; $78a8: $00
    nop                                           ; $78a9: $00
    nop                                           ; $78aa: $00
    nop                                           ; $78ab: $00
    nop                                           ; $78ac: $00
    nop                                           ; $78ad: $00
    nop                                           ; $78ae: $00
    nop                                           ; $78af: $00
    nop                                           ; $78b0: $00
    nop                                           ; $78b1: $00
    nop                                           ; $78b2: $00
    nop                                           ; $78b3: $00
    nop                                           ; $78b4: $00
    nop                                           ; $78b5: $00
    nop                                           ; $78b6: $00
    nop                                           ; $78b7: $00
    nop                                           ; $78b8: $00
    nop                                           ; $78b9: $00
    nop                                           ; $78ba: $00
    nop                                           ; $78bb: $00
    nop                                           ; $78bc: $00
    nop                                           ; $78bd: $00
    nop                                           ; $78be: $00
    nop                                           ; $78bf: $00
    nop                                           ; $78c0: $00
    nop                                           ; $78c1: $00
    nop                                           ; $78c2: $00
    nop                                           ; $78c3: $00
    nop                                           ; $78c4: $00
    nop                                           ; $78c5: $00
    nop                                           ; $78c6: $00
    nop                                           ; $78c7: $00
    nop                                           ; $78c8: $00
    nop                                           ; $78c9: $00
    nop                                           ; $78ca: $00
    nop                                           ; $78cb: $00
    nop                                           ; $78cc: $00
    nop                                           ; $78cd: $00
    nop                                           ; $78ce: $00
    nop                                           ; $78cf: $00
    nop                                           ; $78d0: $00
    nop                                           ; $78d1: $00
    nop                                           ; $78d2: $00
    nop                                           ; $78d3: $00
    nop                                           ; $78d4: $00
    nop                                           ; $78d5: $00
    nop                                           ; $78d6: $00
    nop                                           ; $78d7: $00
    nop                                           ; $78d8: $00
    nop                                           ; $78d9: $00
    nop                                           ; $78da: $00
    nop                                           ; $78db: $00
    nop                                           ; $78dc: $00
    nop                                           ; $78dd: $00
    nop                                           ; $78de: $00
    nop                                           ; $78df: $00
    nop                                           ; $78e0: $00
    nop                                           ; $78e1: $00
    nop                                           ; $78e2: $00
    nop                                           ; $78e3: $00
    nop                                           ; $78e4: $00
    nop                                           ; $78e5: $00
    nop                                           ; $78e6: $00
    nop                                           ; $78e7: $00
    nop                                           ; $78e8: $00
    nop                                           ; $78e9: $00
    nop                                           ; $78ea: $00
    nop                                           ; $78eb: $00
    nop                                           ; $78ec: $00
    nop                                           ; $78ed: $00
    nop                                           ; $78ee: $00
    nop                                           ; $78ef: $00
    nop                                           ; $78f0: $00
    nop                                           ; $78f1: $00
    nop                                           ; $78f2: $00
    nop                                           ; $78f3: $00
    nop                                           ; $78f4: $00
    nop                                           ; $78f5: $00
    nop                                           ; $78f6: $00
    nop                                           ; $78f7: $00
    nop                                           ; $78f8: $00
    nop                                           ; $78f9: $00
    nop                                           ; $78fa: $00
    nop                                           ; $78fb: $00
    nop                                           ; $78fc: $00
    nop                                           ; $78fd: $00
    nop                                           ; $78fe: $00
    nop                                           ; $78ff: $00
    nop                                           ; $7900: $00
    nop                                           ; $7901: $00
    nop                                           ; $7902: $00
    nop                                           ; $7903: $00
    nop                                           ; $7904: $00
    nop                                           ; $7905: $00
    nop                                           ; $7906: $00
    nop                                           ; $7907: $00
    nop                                           ; $7908: $00
    nop                                           ; $7909: $00
    nop                                           ; $790a: $00
    nop                                           ; $790b: $00
    nop                                           ; $790c: $00
    nop                                           ; $790d: $00
    nop                                           ; $790e: $00
    nop                                           ; $790f: $00
    nop                                           ; $7910: $00
    nop                                           ; $7911: $00
    nop                                           ; $7912: $00
    nop                                           ; $7913: $00
    nop                                           ; $7914: $00
    nop                                           ; $7915: $00
    nop                                           ; $7916: $00
    nop                                           ; $7917: $00
    nop                                           ; $7918: $00
    nop                                           ; $7919: $00
    nop                                           ; $791a: $00
    nop                                           ; $791b: $00
    nop                                           ; $791c: $00
    nop                                           ; $791d: $00
    nop                                           ; $791e: $00
    nop                                           ; $791f: $00
    nop                                           ; $7920: $00
    nop                                           ; $7921: $00
    nop                                           ; $7922: $00
    nop                                           ; $7923: $00
    nop                                           ; $7924: $00
    nop                                           ; $7925: $00
    nop                                           ; $7926: $00
    nop                                           ; $7927: $00
    nop                                           ; $7928: $00
    nop                                           ; $7929: $00
    nop                                           ; $792a: $00
    nop                                           ; $792b: $00
    nop                                           ; $792c: $00
    nop                                           ; $792d: $00
    nop                                           ; $792e: $00
    nop                                           ; $792f: $00
    nop                                           ; $7930: $00
    nop                                           ; $7931: $00
    nop                                           ; $7932: $00
    nop                                           ; $7933: $00
    nop                                           ; $7934: $00
    nop                                           ; $7935: $00
    nop                                           ; $7936: $00
    nop                                           ; $7937: $00
    nop                                           ; $7938: $00
    nop                                           ; $7939: $00
    nop                                           ; $793a: $00
    nop                                           ; $793b: $00
    nop                                           ; $793c: $00
    nop                                           ; $793d: $00
    nop                                           ; $793e: $00
    nop                                           ; $793f: $00
    nop                                           ; $7940: $00
    nop                                           ; $7941: $00
    nop                                           ; $7942: $00
    nop                                           ; $7943: $00
    nop                                           ; $7944: $00
    nop                                           ; $7945: $00
    nop                                           ; $7946: $00
    nop                                           ; $7947: $00
    nop                                           ; $7948: $00
    nop                                           ; $7949: $00
    nop                                           ; $794a: $00
    nop                                           ; $794b: $00
    nop                                           ; $794c: $00
    nop                                           ; $794d: $00
    nop                                           ; $794e: $00
    nop                                           ; $794f: $00
    nop                                           ; $7950: $00
    nop                                           ; $7951: $00
    nop                                           ; $7952: $00
    nop                                           ; $7953: $00
    nop                                           ; $7954: $00
    nop                                           ; $7955: $00
    nop                                           ; $7956: $00
    nop                                           ; $7957: $00
    nop                                           ; $7958: $00
    nop                                           ; $7959: $00
    nop                                           ; $795a: $00
    nop                                           ; $795b: $00
    nop                                           ; $795c: $00
    nop                                           ; $795d: $00
    nop                                           ; $795e: $00
    nop                                           ; $795f: $00
    nop                                           ; $7960: $00
    nop                                           ; $7961: $00
    nop                                           ; $7962: $00
    nop                                           ; $7963: $00
    nop                                           ; $7964: $00
    nop                                           ; $7965: $00
    nop                                           ; $7966: $00
    nop                                           ; $7967: $00
    nop                                           ; $7968: $00
    nop                                           ; $7969: $00
    nop                                           ; $796a: $00
    nop                                           ; $796b: $00
    nop                                           ; $796c: $00
    nop                                           ; $796d: $00
    nop                                           ; $796e: $00
    nop                                           ; $796f: $00
    nop                                           ; $7970: $00
    nop                                           ; $7971: $00
    nop                                           ; $7972: $00
    nop                                           ; $7973: $00
    nop                                           ; $7974: $00
    nop                                           ; $7975: $00
    nop                                           ; $7976: $00
    nop                                           ; $7977: $00
    nop                                           ; $7978: $00
    nop                                           ; $7979: $00
    nop                                           ; $797a: $00
    nop                                           ; $797b: $00
    nop                                           ; $797c: $00
    nop                                           ; $797d: $00
    nop                                           ; $797e: $00
    nop                                           ; $797f: $00
    nop                                           ; $7980: $00
    nop                                           ; $7981: $00
    nop                                           ; $7982: $00
    nop                                           ; $7983: $00
    nop                                           ; $7984: $00
    nop                                           ; $7985: $00
    nop                                           ; $7986: $00
    nop                                           ; $7987: $00
    nop                                           ; $7988: $00
    nop                                           ; $7989: $00
    nop                                           ; $798a: $00
    nop                                           ; $798b: $00
    nop                                           ; $798c: $00
    nop                                           ; $798d: $00
    nop                                           ; $798e: $00
    nop                                           ; $798f: $00
    nop                                           ; $7990: $00
    nop                                           ; $7991: $00
    nop                                           ; $7992: $00
    nop                                           ; $7993: $00
    nop                                           ; $7994: $00
    nop                                           ; $7995: $00
    nop                                           ; $7996: $00
    nop                                           ; $7997: $00
    nop                                           ; $7998: $00
    nop                                           ; $7999: $00
    nop                                           ; $799a: $00
    nop                                           ; $799b: $00
    nop                                           ; $799c: $00
    nop                                           ; $799d: $00
    nop                                           ; $799e: $00
    nop                                           ; $799f: $00
    nop                                           ; $79a0: $00
    nop                                           ; $79a1: $00
    nop                                           ; $79a2: $00
    nop                                           ; $79a3: $00
    nop                                           ; $79a4: $00
    nop                                           ; $79a5: $00
    nop                                           ; $79a6: $00
    nop                                           ; $79a7: $00
    nop                                           ; $79a8: $00
    nop                                           ; $79a9: $00
    nop                                           ; $79aa: $00
    nop                                           ; $79ab: $00
    nop                                           ; $79ac: $00
    nop                                           ; $79ad: $00
    nop                                           ; $79ae: $00
    nop                                           ; $79af: $00
    nop                                           ; $79b0: $00
    nop                                           ; $79b1: $00
    nop                                           ; $79b2: $00
    nop                                           ; $79b3: $00
    nop                                           ; $79b4: $00
    nop                                           ; $79b5: $00
    nop                                           ; $79b6: $00
    nop                                           ; $79b7: $00
    nop                                           ; $79b8: $00
    nop                                           ; $79b9: $00
    nop                                           ; $79ba: $00
    nop                                           ; $79bb: $00
    nop                                           ; $79bc: $00
    nop                                           ; $79bd: $00
    nop                                           ; $79be: $00
    nop                                           ; $79bf: $00
    nop                                           ; $79c0: $00
    nop                                           ; $79c1: $00
    nop                                           ; $79c2: $00
    nop                                           ; $79c3: $00
    nop                                           ; $79c4: $00
    nop                                           ; $79c5: $00
    nop                                           ; $79c6: $00
    nop                                           ; $79c7: $00
    nop                                           ; $79c8: $00
    nop                                           ; $79c9: $00
    nop                                           ; $79ca: $00
    nop                                           ; $79cb: $00
    nop                                           ; $79cc: $00
    nop                                           ; $79cd: $00
    nop                                           ; $79ce: $00
    nop                                           ; $79cf: $00
    nop                                           ; $79d0: $00
    nop                                           ; $79d1: $00
    nop                                           ; $79d2: $00
    nop                                           ; $79d3: $00
    nop                                           ; $79d4: $00
    nop                                           ; $79d5: $00
    nop                                           ; $79d6: $00
    nop                                           ; $79d7: $00
    nop                                           ; $79d8: $00
    nop                                           ; $79d9: $00
    nop                                           ; $79da: $00
    nop                                           ; $79db: $00
    nop                                           ; $79dc: $00
    nop                                           ; $79dd: $00
    nop                                           ; $79de: $00
    nop                                           ; $79df: $00
    nop                                           ; $79e0: $00
    nop                                           ; $79e1: $00
    nop                                           ; $79e2: $00
    nop                                           ; $79e3: $00
    nop                                           ; $79e4: $00
    nop                                           ; $79e5: $00
    nop                                           ; $79e6: $00
    nop                                           ; $79e7: $00
    nop                                           ; $79e8: $00
    nop                                           ; $79e9: $00
    nop                                           ; $79ea: $00
    nop                                           ; $79eb: $00
    nop                                           ; $79ec: $00
    nop                                           ; $79ed: $00
    nop                                           ; $79ee: $00
    nop                                           ; $79ef: $00
    nop                                           ; $79f0: $00
    nop                                           ; $79f1: $00
    nop                                           ; $79f2: $00
    nop                                           ; $79f3: $00
    nop                                           ; $79f4: $00
    nop                                           ; $79f5: $00
    nop                                           ; $79f6: $00
    nop                                           ; $79f7: $00
    nop                                           ; $79f8: $00
    nop                                           ; $79f9: $00
    nop                                           ; $79fa: $00
    nop                                           ; $79fb: $00
    nop                                           ; $79fc: $00
    nop                                           ; $79fd: $00
    nop                                           ; $79fe: $00
    nop                                           ; $79ff: $00
    nop                                           ; $7a00: $00
    nop                                           ; $7a01: $00
    nop                                           ; $7a02: $00
    nop                                           ; $7a03: $00
    nop                                           ; $7a04: $00
    nop                                           ; $7a05: $00
    nop                                           ; $7a06: $00
    nop                                           ; $7a07: $00
    nop                                           ; $7a08: $00
    nop                                           ; $7a09: $00
    nop                                           ; $7a0a: $00
    nop                                           ; $7a0b: $00
    nop                                           ; $7a0c: $00
    nop                                           ; $7a0d: $00
    nop                                           ; $7a0e: $00
    nop                                           ; $7a0f: $00
    nop                                           ; $7a10: $00
    nop                                           ; $7a11: $00
    nop                                           ; $7a12: $00
    nop                                           ; $7a13: $00
    nop                                           ; $7a14: $00
    nop                                           ; $7a15: $00
    nop                                           ; $7a16: $00
    nop                                           ; $7a17: $00
    nop                                           ; $7a18: $00
    nop                                           ; $7a19: $00
    nop                                           ; $7a1a: $00
    nop                                           ; $7a1b: $00
    nop                                           ; $7a1c: $00
    nop                                           ; $7a1d: $00
    nop                                           ; $7a1e: $00
    nop                                           ; $7a1f: $00
    nop                                           ; $7a20: $00
    nop                                           ; $7a21: $00
    nop                                           ; $7a22: $00
    nop                                           ; $7a23: $00
    nop                                           ; $7a24: $00
    nop                                           ; $7a25: $00
    nop                                           ; $7a26: $00
    nop                                           ; $7a27: $00
    nop                                           ; $7a28: $00
    nop                                           ; $7a29: $00
    nop                                           ; $7a2a: $00
    nop                                           ; $7a2b: $00
    nop                                           ; $7a2c: $00
    nop                                           ; $7a2d: $00
    nop                                           ; $7a2e: $00
    nop                                           ; $7a2f: $00
    nop                                           ; $7a30: $00
    nop                                           ; $7a31: $00
    nop                                           ; $7a32: $00
    nop                                           ; $7a33: $00
    nop                                           ; $7a34: $00
    nop                                           ; $7a35: $00
    nop                                           ; $7a36: $00
    nop                                           ; $7a37: $00
    nop                                           ; $7a38: $00
    nop                                           ; $7a39: $00
    nop                                           ; $7a3a: $00
    nop                                           ; $7a3b: $00
    nop                                           ; $7a3c: $00
    nop                                           ; $7a3d: $00
    nop                                           ; $7a3e: $00
    nop                                           ; $7a3f: $00
    nop                                           ; $7a40: $00
    nop                                           ; $7a41: $00
    nop                                           ; $7a42: $00
    nop                                           ; $7a43: $00
    nop                                           ; $7a44: $00
    nop                                           ; $7a45: $00
    nop                                           ; $7a46: $00
    nop                                           ; $7a47: $00
    nop                                           ; $7a48: $00
    nop                                           ; $7a49: $00
    nop                                           ; $7a4a: $00
    nop                                           ; $7a4b: $00
    nop                                           ; $7a4c: $00
    nop                                           ; $7a4d: $00
    nop                                           ; $7a4e: $00
    nop                                           ; $7a4f: $00
    nop                                           ; $7a50: $00
    nop                                           ; $7a51: $00
    nop                                           ; $7a52: $00
    nop                                           ; $7a53: $00
    nop                                           ; $7a54: $00
    nop                                           ; $7a55: $00
    nop                                           ; $7a56: $00
    nop                                           ; $7a57: $00
    nop                                           ; $7a58: $00
    nop                                           ; $7a59: $00
    nop                                           ; $7a5a: $00
    nop                                           ; $7a5b: $00
    nop                                           ; $7a5c: $00
    nop                                           ; $7a5d: $00
    nop                                           ; $7a5e: $00
    nop                                           ; $7a5f: $00
    nop                                           ; $7a60: $00
    nop                                           ; $7a61: $00
    nop                                           ; $7a62: $00
    nop                                           ; $7a63: $00
    nop                                           ; $7a64: $00
    nop                                           ; $7a65: $00
    nop                                           ; $7a66: $00
    nop                                           ; $7a67: $00
    nop                                           ; $7a68: $00
    nop                                           ; $7a69: $00
    nop                                           ; $7a6a: $00
    nop                                           ; $7a6b: $00
    nop                                           ; $7a6c: $00
    nop                                           ; $7a6d: $00
    nop                                           ; $7a6e: $00
    nop                                           ; $7a6f: $00
    nop                                           ; $7a70: $00
    nop                                           ; $7a71: $00
    nop                                           ; $7a72: $00
    nop                                           ; $7a73: $00
    nop                                           ; $7a74: $00
    nop                                           ; $7a75: $00
    nop                                           ; $7a76: $00
    nop                                           ; $7a77: $00
    nop                                           ; $7a78: $00
    nop                                           ; $7a79: $00
    nop                                           ; $7a7a: $00
    nop                                           ; $7a7b: $00
    nop                                           ; $7a7c: $00
    nop                                           ; $7a7d: $00
    nop                                           ; $7a7e: $00
    nop                                           ; $7a7f: $00
    nop                                           ; $7a80: $00
    nop                                           ; $7a81: $00
    nop                                           ; $7a82: $00
    nop                                           ; $7a83: $00
    nop                                           ; $7a84: $00
    nop                                           ; $7a85: $00
    nop                                           ; $7a86: $00
    nop                                           ; $7a87: $00
    nop                                           ; $7a88: $00
    nop                                           ; $7a89: $00
    nop                                           ; $7a8a: $00
    nop                                           ; $7a8b: $00
    nop                                           ; $7a8c: $00
    nop                                           ; $7a8d: $00
    nop                                           ; $7a8e: $00
    nop                                           ; $7a8f: $00
    nop                                           ; $7a90: $00
    nop                                           ; $7a91: $00
    nop                                           ; $7a92: $00
    nop                                           ; $7a93: $00
    nop                                           ; $7a94: $00
    nop                                           ; $7a95: $00
    nop                                           ; $7a96: $00
    nop                                           ; $7a97: $00
    nop                                           ; $7a98: $00
    nop                                           ; $7a99: $00
    nop                                           ; $7a9a: $00
    nop                                           ; $7a9b: $00
    nop                                           ; $7a9c: $00
    nop                                           ; $7a9d: $00
    nop                                           ; $7a9e: $00
    nop                                           ; $7a9f: $00
    nop                                           ; $7aa0: $00
    nop                                           ; $7aa1: $00
    nop                                           ; $7aa2: $00
    nop                                           ; $7aa3: $00
    nop                                           ; $7aa4: $00
    nop                                           ; $7aa5: $00
    nop                                           ; $7aa6: $00
    nop                                           ; $7aa7: $00
    nop                                           ; $7aa8: $00
    nop                                           ; $7aa9: $00
    nop                                           ; $7aaa: $00
    nop                                           ; $7aab: $00
    nop                                           ; $7aac: $00
    nop                                           ; $7aad: $00
    nop                                           ; $7aae: $00
    nop                                           ; $7aaf: $00
    nop                                           ; $7ab0: $00
    nop                                           ; $7ab1: $00
    nop                                           ; $7ab2: $00
    nop                                           ; $7ab3: $00
    nop                                           ; $7ab4: $00
    nop                                           ; $7ab5: $00
    nop                                           ; $7ab6: $00
    nop                                           ; $7ab7: $00
    nop                                           ; $7ab8: $00
    nop                                           ; $7ab9: $00
    nop                                           ; $7aba: $00
    nop                                           ; $7abb: $00
    nop                                           ; $7abc: $00
    nop                                           ; $7abd: $00
    nop                                           ; $7abe: $00
    nop                                           ; $7abf: $00
    nop                                           ; $7ac0: $00
    nop                                           ; $7ac1: $00
    nop                                           ; $7ac2: $00
    nop                                           ; $7ac3: $00
    nop                                           ; $7ac4: $00
    nop                                           ; $7ac5: $00
    nop                                           ; $7ac6: $00
    nop                                           ; $7ac7: $00
    nop                                           ; $7ac8: $00
    nop                                           ; $7ac9: $00
    nop                                           ; $7aca: $00
    nop                                           ; $7acb: $00
    nop                                           ; $7acc: $00
    nop                                           ; $7acd: $00
    nop                                           ; $7ace: $00
    nop                                           ; $7acf: $00
    nop                                           ; $7ad0: $00
    nop                                           ; $7ad1: $00
    nop                                           ; $7ad2: $00
    nop                                           ; $7ad3: $00
    nop                                           ; $7ad4: $00
    nop                                           ; $7ad5: $00
    nop                                           ; $7ad6: $00
    nop                                           ; $7ad7: $00
    nop                                           ; $7ad8: $00
    nop                                           ; $7ad9: $00
    nop                                           ; $7ada: $00
    nop                                           ; $7adb: $00
    nop                                           ; $7adc: $00
    nop                                           ; $7add: $00
    nop                                           ; $7ade: $00
    nop                                           ; $7adf: $00
    nop                                           ; $7ae0: $00
    nop                                           ; $7ae1: $00
    nop                                           ; $7ae2: $00
    nop                                           ; $7ae3: $00
    nop                                           ; $7ae4: $00
    nop                                           ; $7ae5: $00
    nop                                           ; $7ae6: $00
    nop                                           ; $7ae7: $00
    nop                                           ; $7ae8: $00
    nop                                           ; $7ae9: $00
    nop                                           ; $7aea: $00
    nop                                           ; $7aeb: $00
    nop                                           ; $7aec: $00
    nop                                           ; $7aed: $00
    nop                                           ; $7aee: $00
    nop                                           ; $7aef: $00
    nop                                           ; $7af0: $00
    nop                                           ; $7af1: $00
    nop                                           ; $7af2: $00
    nop                                           ; $7af3: $00
    nop                                           ; $7af4: $00
    nop                                           ; $7af5: $00
    nop                                           ; $7af6: $00
    nop                                           ; $7af7: $00
    nop                                           ; $7af8: $00
    nop                                           ; $7af9: $00
    nop                                           ; $7afa: $00
    nop                                           ; $7afb: $00
    nop                                           ; $7afc: $00
    nop                                           ; $7afd: $00
    nop                                           ; $7afe: $00
    nop                                           ; $7aff: $00
    nop                                           ; $7b00: $00
    nop                                           ; $7b01: $00
    nop                                           ; $7b02: $00
    nop                                           ; $7b03: $00
    nop                                           ; $7b04: $00
    nop                                           ; $7b05: $00
    nop                                           ; $7b06: $00
    nop                                           ; $7b07: $00
    nop                                           ; $7b08: $00
    nop                                           ; $7b09: $00
    nop                                           ; $7b0a: $00
    nop                                           ; $7b0b: $00
    nop                                           ; $7b0c: $00
    nop                                           ; $7b0d: $00
    nop                                           ; $7b0e: $00
    nop                                           ; $7b0f: $00
    nop                                           ; $7b10: $00
    nop                                           ; $7b11: $00
    nop                                           ; $7b12: $00
    nop                                           ; $7b13: $00
    nop                                           ; $7b14: $00
    nop                                           ; $7b15: $00
    nop                                           ; $7b16: $00
    nop                                           ; $7b17: $00
    nop                                           ; $7b18: $00
    nop                                           ; $7b19: $00
    nop                                           ; $7b1a: $00
    nop                                           ; $7b1b: $00
    nop                                           ; $7b1c: $00
    nop                                           ; $7b1d: $00
    nop                                           ; $7b1e: $00
    nop                                           ; $7b1f: $00
    nop                                           ; $7b20: $00
    nop                                           ; $7b21: $00
    nop                                           ; $7b22: $00
    nop                                           ; $7b23: $00
    nop                                           ; $7b24: $00
    nop                                           ; $7b25: $00
    nop                                           ; $7b26: $00
    nop                                           ; $7b27: $00
    nop                                           ; $7b28: $00
    nop                                           ; $7b29: $00
    nop                                           ; $7b2a: $00
    nop                                           ; $7b2b: $00
    nop                                           ; $7b2c: $00
    nop                                           ; $7b2d: $00
    nop                                           ; $7b2e: $00
    nop                                           ; $7b2f: $00

Call_054_7b30:
    nop                                           ; $7b30: $00
    nop                                           ; $7b31: $00
    nop                                           ; $7b32: $00
    nop                                           ; $7b33: $00
    nop                                           ; $7b34: $00
    nop                                           ; $7b35: $00
    nop                                           ; $7b36: $00
    nop                                           ; $7b37: $00
    nop                                           ; $7b38: $00
    nop                                           ; $7b39: $00
    nop                                           ; $7b3a: $00
    nop                                           ; $7b3b: $00
    nop                                           ; $7b3c: $00
    nop                                           ; $7b3d: $00
    nop                                           ; $7b3e: $00
    nop                                           ; $7b3f: $00
    nop                                           ; $7b40: $00
    nop                                           ; $7b41: $00
    nop                                           ; $7b42: $00
    nop                                           ; $7b43: $00
    nop                                           ; $7b44: $00
    nop                                           ; $7b45: $00
    nop                                           ; $7b46: $00
    nop                                           ; $7b47: $00
    nop                                           ; $7b48: $00
    nop                                           ; $7b49: $00
    nop                                           ; $7b4a: $00
    nop                                           ; $7b4b: $00
    nop                                           ; $7b4c: $00

Jump_054_7b4d:
    nop                                           ; $7b4d: $00
    nop                                           ; $7b4e: $00
    nop                                           ; $7b4f: $00
    nop                                           ; $7b50: $00
    nop                                           ; $7b51: $00
    nop                                           ; $7b52: $00
    nop                                           ; $7b53: $00
    nop                                           ; $7b54: $00
    nop                                           ; $7b55: $00
    nop                                           ; $7b56: $00
    nop                                           ; $7b57: $00
    nop                                           ; $7b58: $00
    nop                                           ; $7b59: $00
    nop                                           ; $7b5a: $00
    nop                                           ; $7b5b: $00
    nop                                           ; $7b5c: $00
    nop                                           ; $7b5d: $00
    nop                                           ; $7b5e: $00
    nop                                           ; $7b5f: $00
    nop                                           ; $7b60: $00
    nop                                           ; $7b61: $00
    nop                                           ; $7b62: $00
    nop                                           ; $7b63: $00
    nop                                           ; $7b64: $00
    nop                                           ; $7b65: $00
    nop                                           ; $7b66: $00
    nop                                           ; $7b67: $00
    nop                                           ; $7b68: $00
    nop                                           ; $7b69: $00
    nop                                           ; $7b6a: $00
    nop                                           ; $7b6b: $00
    nop                                           ; $7b6c: $00
    nop                                           ; $7b6d: $00
    nop                                           ; $7b6e: $00
    nop                                           ; $7b6f: $00
    nop                                           ; $7b70: $00
    nop                                           ; $7b71: $00
    nop                                           ; $7b72: $00
    nop                                           ; $7b73: $00
    nop                                           ; $7b74: $00
    nop                                           ; $7b75: $00
    nop                                           ; $7b76: $00
    nop                                           ; $7b77: $00
    nop                                           ; $7b78: $00
    nop                                           ; $7b79: $00
    nop                                           ; $7b7a: $00
    nop                                           ; $7b7b: $00
    nop                                           ; $7b7c: $00
    nop                                           ; $7b7d: $00
    nop                                           ; $7b7e: $00
    nop                                           ; $7b7f: $00
    nop                                           ; $7b80: $00
    nop                                           ; $7b81: $00
    nop                                           ; $7b82: $00
    nop                                           ; $7b83: $00
    nop                                           ; $7b84: $00
    nop                                           ; $7b85: $00
    nop                                           ; $7b86: $00
    nop                                           ; $7b87: $00
    nop                                           ; $7b88: $00
    nop                                           ; $7b89: $00
    nop                                           ; $7b8a: $00
    nop                                           ; $7b8b: $00
    nop                                           ; $7b8c: $00
    nop                                           ; $7b8d: $00
    nop                                           ; $7b8e: $00
    nop                                           ; $7b8f: $00
    nop                                           ; $7b90: $00
    nop                                           ; $7b91: $00
    nop                                           ; $7b92: $00
    nop                                           ; $7b93: $00
    nop                                           ; $7b94: $00
    nop                                           ; $7b95: $00
    nop                                           ; $7b96: $00
    nop                                           ; $7b97: $00
    nop                                           ; $7b98: $00
    nop                                           ; $7b99: $00
    nop                                           ; $7b9a: $00
    nop                                           ; $7b9b: $00
    nop                                           ; $7b9c: $00
    nop                                           ; $7b9d: $00
    nop                                           ; $7b9e: $00
    nop                                           ; $7b9f: $00
    nop                                           ; $7ba0: $00
    nop                                           ; $7ba1: $00
    nop                                           ; $7ba2: $00
    nop                                           ; $7ba3: $00
    nop                                           ; $7ba4: $00
    nop                                           ; $7ba5: $00
    nop                                           ; $7ba6: $00
    nop                                           ; $7ba7: $00
    nop                                           ; $7ba8: $00
    nop                                           ; $7ba9: $00
    nop                                           ; $7baa: $00
    nop                                           ; $7bab: $00
    nop                                           ; $7bac: $00
    nop                                           ; $7bad: $00
    nop                                           ; $7bae: $00
    nop                                           ; $7baf: $00
    nop                                           ; $7bb0: $00
    nop                                           ; $7bb1: $00
    nop                                           ; $7bb2: $00
    nop                                           ; $7bb3: $00
    nop                                           ; $7bb4: $00
    nop                                           ; $7bb5: $00
    nop                                           ; $7bb6: $00
    nop                                           ; $7bb7: $00
    nop                                           ; $7bb8: $00
    nop                                           ; $7bb9: $00
    nop                                           ; $7bba: $00
    nop                                           ; $7bbb: $00
    nop                                           ; $7bbc: $00
    nop                                           ; $7bbd: $00
    nop                                           ; $7bbe: $00
    nop                                           ; $7bbf: $00
    nop                                           ; $7bc0: $00
    nop                                           ; $7bc1: $00
    nop                                           ; $7bc2: $00
    nop                                           ; $7bc3: $00
    nop                                           ; $7bc4: $00
    nop                                           ; $7bc5: $00
    nop                                           ; $7bc6: $00
    nop                                           ; $7bc7: $00
    nop                                           ; $7bc8: $00
    nop                                           ; $7bc9: $00
    nop                                           ; $7bca: $00
    nop                                           ; $7bcb: $00
    nop                                           ; $7bcc: $00
    nop                                           ; $7bcd: $00
    nop                                           ; $7bce: $00
    nop                                           ; $7bcf: $00
    nop                                           ; $7bd0: $00
    nop                                           ; $7bd1: $00
    nop                                           ; $7bd2: $00
    nop                                           ; $7bd3: $00
    nop                                           ; $7bd4: $00
    nop                                           ; $7bd5: $00
    nop                                           ; $7bd6: $00
    nop                                           ; $7bd7: $00
    nop                                           ; $7bd8: $00
    nop                                           ; $7bd9: $00
    nop                                           ; $7bda: $00
    nop                                           ; $7bdb: $00
    nop                                           ; $7bdc: $00
    nop                                           ; $7bdd: $00
    nop                                           ; $7bde: $00
    nop                                           ; $7bdf: $00
    nop                                           ; $7be0: $00
    nop                                           ; $7be1: $00
    nop                                           ; $7be2: $00
    nop                                           ; $7be3: $00
    nop                                           ; $7be4: $00
    nop                                           ; $7be5: $00
    nop                                           ; $7be6: $00
    nop                                           ; $7be7: $00
    nop                                           ; $7be8: $00
    nop                                           ; $7be9: $00
    nop                                           ; $7bea: $00
    nop                                           ; $7beb: $00
    nop                                           ; $7bec: $00
    nop                                           ; $7bed: $00
    nop                                           ; $7bee: $00
    nop                                           ; $7bef: $00
    nop                                           ; $7bf0: $00
    nop                                           ; $7bf1: $00
    nop                                           ; $7bf2: $00
    nop                                           ; $7bf3: $00
    nop                                           ; $7bf4: $00
    nop                                           ; $7bf5: $00
    nop                                           ; $7bf6: $00
    nop                                           ; $7bf7: $00
    nop                                           ; $7bf8: $00
    nop                                           ; $7bf9: $00
    nop                                           ; $7bfa: $00
    nop                                           ; $7bfb: $00
    nop                                           ; $7bfc: $00
    nop                                           ; $7bfd: $00
    nop                                           ; $7bfe: $00
    nop                                           ; $7bff: $00
    nop                                           ; $7c00: $00
    nop                                           ; $7c01: $00
    nop                                           ; $7c02: $00
    nop                                           ; $7c03: $00
    nop                                           ; $7c04: $00
    nop                                           ; $7c05: $00
    nop                                           ; $7c06: $00
    nop                                           ; $7c07: $00
    nop                                           ; $7c08: $00
    nop                                           ; $7c09: $00
    nop                                           ; $7c0a: $00
    nop                                           ; $7c0b: $00
    nop                                           ; $7c0c: $00
    nop                                           ; $7c0d: $00
    nop                                           ; $7c0e: $00
    nop                                           ; $7c0f: $00
    nop                                           ; $7c10: $00
    nop                                           ; $7c11: $00
    nop                                           ; $7c12: $00
    nop                                           ; $7c13: $00
    nop                                           ; $7c14: $00
    nop                                           ; $7c15: $00
    nop                                           ; $7c16: $00
    nop                                           ; $7c17: $00
    nop                                           ; $7c18: $00
    nop                                           ; $7c19: $00
    nop                                           ; $7c1a: $00
    nop                                           ; $7c1b: $00
    nop                                           ; $7c1c: $00
    nop                                           ; $7c1d: $00
    nop                                           ; $7c1e: $00
    nop                                           ; $7c1f: $00
    nop                                           ; $7c20: $00
    nop                                           ; $7c21: $00
    nop                                           ; $7c22: $00
    nop                                           ; $7c23: $00
    nop                                           ; $7c24: $00
    nop                                           ; $7c25: $00
    nop                                           ; $7c26: $00
    nop                                           ; $7c27: $00
    nop                                           ; $7c28: $00
    nop                                           ; $7c29: $00
    nop                                           ; $7c2a: $00
    nop                                           ; $7c2b: $00
    nop                                           ; $7c2c: $00
    nop                                           ; $7c2d: $00
    nop                                           ; $7c2e: $00
    nop                                           ; $7c2f: $00
    nop                                           ; $7c30: $00
    nop                                           ; $7c31: $00
    nop                                           ; $7c32: $00
    nop                                           ; $7c33: $00
    nop                                           ; $7c34: $00
    nop                                           ; $7c35: $00
    nop                                           ; $7c36: $00
    nop                                           ; $7c37: $00
    nop                                           ; $7c38: $00
    nop                                           ; $7c39: $00
    nop                                           ; $7c3a: $00
    nop                                           ; $7c3b: $00
    nop                                           ; $7c3c: $00
    nop                                           ; $7c3d: $00
    nop                                           ; $7c3e: $00
    nop                                           ; $7c3f: $00
    nop                                           ; $7c40: $00
    nop                                           ; $7c41: $00
    nop                                           ; $7c42: $00
    nop                                           ; $7c43: $00
    nop                                           ; $7c44: $00
    nop                                           ; $7c45: $00
    nop                                           ; $7c46: $00
    nop                                           ; $7c47: $00
    nop                                           ; $7c48: $00
    nop                                           ; $7c49: $00
    nop                                           ; $7c4a: $00
    nop                                           ; $7c4b: $00
    nop                                           ; $7c4c: $00
    nop                                           ; $7c4d: $00
    nop                                           ; $7c4e: $00
    nop                                           ; $7c4f: $00
    nop                                           ; $7c50: $00
    nop                                           ; $7c51: $00
    nop                                           ; $7c52: $00
    nop                                           ; $7c53: $00
    nop                                           ; $7c54: $00
    nop                                           ; $7c55: $00
    nop                                           ; $7c56: $00
    nop                                           ; $7c57: $00
    nop                                           ; $7c58: $00
    nop                                           ; $7c59: $00
    nop                                           ; $7c5a: $00
    nop                                           ; $7c5b: $00
    nop                                           ; $7c5c: $00
    nop                                           ; $7c5d: $00
    nop                                           ; $7c5e: $00
    nop                                           ; $7c5f: $00
    nop                                           ; $7c60: $00
    nop                                           ; $7c61: $00
    nop                                           ; $7c62: $00
    nop                                           ; $7c63: $00
    nop                                           ; $7c64: $00
    nop                                           ; $7c65: $00
    nop                                           ; $7c66: $00
    nop                                           ; $7c67: $00
    nop                                           ; $7c68: $00
    nop                                           ; $7c69: $00
    nop                                           ; $7c6a: $00
    nop                                           ; $7c6b: $00
    nop                                           ; $7c6c: $00
    nop                                           ; $7c6d: $00
    nop                                           ; $7c6e: $00
    nop                                           ; $7c6f: $00
    nop                                           ; $7c70: $00
    nop                                           ; $7c71: $00
    nop                                           ; $7c72: $00
    nop                                           ; $7c73: $00
    nop                                           ; $7c74: $00
    nop                                           ; $7c75: $00
    nop                                           ; $7c76: $00
    nop                                           ; $7c77: $00
    nop                                           ; $7c78: $00
    nop                                           ; $7c79: $00
    nop                                           ; $7c7a: $00
    nop                                           ; $7c7b: $00
    nop                                           ; $7c7c: $00
    nop                                           ; $7c7d: $00
    nop                                           ; $7c7e: $00
    nop                                           ; $7c7f: $00
    nop                                           ; $7c80: $00
    nop                                           ; $7c81: $00
    nop                                           ; $7c82: $00
    nop                                           ; $7c83: $00
    nop                                           ; $7c84: $00
    nop                                           ; $7c85: $00
    nop                                           ; $7c86: $00
    nop                                           ; $7c87: $00
    nop                                           ; $7c88: $00
    nop                                           ; $7c89: $00
    nop                                           ; $7c8a: $00
    nop                                           ; $7c8b: $00
    nop                                           ; $7c8c: $00
    nop                                           ; $7c8d: $00
    nop                                           ; $7c8e: $00
    nop                                           ; $7c8f: $00
    nop                                           ; $7c90: $00
    nop                                           ; $7c91: $00
    nop                                           ; $7c92: $00
    nop                                           ; $7c93: $00
    nop                                           ; $7c94: $00
    nop                                           ; $7c95: $00
    nop                                           ; $7c96: $00
    nop                                           ; $7c97: $00
    nop                                           ; $7c98: $00
    nop                                           ; $7c99: $00
    nop                                           ; $7c9a: $00
    nop                                           ; $7c9b: $00
    nop                                           ; $7c9c: $00
    nop                                           ; $7c9d: $00
    nop                                           ; $7c9e: $00
    nop                                           ; $7c9f: $00
    nop                                           ; $7ca0: $00
    nop                                           ; $7ca1: $00
    nop                                           ; $7ca2: $00
    nop                                           ; $7ca3: $00
    nop                                           ; $7ca4: $00
    nop                                           ; $7ca5: $00
    nop                                           ; $7ca6: $00
    nop                                           ; $7ca7: $00
    nop                                           ; $7ca8: $00
    nop                                           ; $7ca9: $00
    nop                                           ; $7caa: $00
    nop                                           ; $7cab: $00
    nop                                           ; $7cac: $00
    nop                                           ; $7cad: $00
    nop                                           ; $7cae: $00
    nop                                           ; $7caf: $00
    nop                                           ; $7cb0: $00
    nop                                           ; $7cb1: $00
    nop                                           ; $7cb2: $00
    nop                                           ; $7cb3: $00
    nop                                           ; $7cb4: $00
    nop                                           ; $7cb5: $00
    nop                                           ; $7cb6: $00
    nop                                           ; $7cb7: $00
    nop                                           ; $7cb8: $00
    nop                                           ; $7cb9: $00
    nop                                           ; $7cba: $00
    nop                                           ; $7cbb: $00
    nop                                           ; $7cbc: $00
    nop                                           ; $7cbd: $00
    nop                                           ; $7cbe: $00
    nop                                           ; $7cbf: $00
    nop                                           ; $7cc0: $00
    nop                                           ; $7cc1: $00
    nop                                           ; $7cc2: $00
    nop                                           ; $7cc3: $00
    nop                                           ; $7cc4: $00
    nop                                           ; $7cc5: $00
    nop                                           ; $7cc6: $00
    nop                                           ; $7cc7: $00
    nop                                           ; $7cc8: $00
    nop                                           ; $7cc9: $00
    nop                                           ; $7cca: $00
    nop                                           ; $7ccb: $00
    nop                                           ; $7ccc: $00
    nop                                           ; $7ccd: $00
    nop                                           ; $7cce: $00
    nop                                           ; $7ccf: $00
    nop                                           ; $7cd0: $00
    nop                                           ; $7cd1: $00
    nop                                           ; $7cd2: $00
    nop                                           ; $7cd3: $00
    nop                                           ; $7cd4: $00
    nop                                           ; $7cd5: $00
    nop                                           ; $7cd6: $00
    nop                                           ; $7cd7: $00
    nop                                           ; $7cd8: $00
    nop                                           ; $7cd9: $00
    nop                                           ; $7cda: $00
    nop                                           ; $7cdb: $00
    nop                                           ; $7cdc: $00
    nop                                           ; $7cdd: $00
    nop                                           ; $7cde: $00
    nop                                           ; $7cdf: $00
    nop                                           ; $7ce0: $00
    nop                                           ; $7ce1: $00
    nop                                           ; $7ce2: $00
    nop                                           ; $7ce3: $00
    nop                                           ; $7ce4: $00
    nop                                           ; $7ce5: $00
    nop                                           ; $7ce6: $00
    nop                                           ; $7ce7: $00
    nop                                           ; $7ce8: $00
    nop                                           ; $7ce9: $00
    nop                                           ; $7cea: $00
    nop                                           ; $7ceb: $00
    nop                                           ; $7cec: $00
    nop                                           ; $7ced: $00
    nop                                           ; $7cee: $00
    nop                                           ; $7cef: $00
    nop                                           ; $7cf0: $00
    nop                                           ; $7cf1: $00
    nop                                           ; $7cf2: $00
    nop                                           ; $7cf3: $00
    nop                                           ; $7cf4: $00
    nop                                           ; $7cf5: $00
    nop                                           ; $7cf6: $00
    nop                                           ; $7cf7: $00
    nop                                           ; $7cf8: $00
    nop                                           ; $7cf9: $00
    nop                                           ; $7cfa: $00
    nop                                           ; $7cfb: $00
    nop                                           ; $7cfc: $00
    nop                                           ; $7cfd: $00
    nop                                           ; $7cfe: $00
    nop                                           ; $7cff: $00
    nop                                           ; $7d00: $00
    nop                                           ; $7d01: $00
    nop                                           ; $7d02: $00
    nop                                           ; $7d03: $00
    nop                                           ; $7d04: $00
    nop                                           ; $7d05: $00
    nop                                           ; $7d06: $00
    nop                                           ; $7d07: $00
    nop                                           ; $7d08: $00
    nop                                           ; $7d09: $00
    nop                                           ; $7d0a: $00
    nop                                           ; $7d0b: $00
    nop                                           ; $7d0c: $00
    nop                                           ; $7d0d: $00
    nop                                           ; $7d0e: $00
    nop                                           ; $7d0f: $00
    nop                                           ; $7d10: $00
    nop                                           ; $7d11: $00
    nop                                           ; $7d12: $00
    nop                                           ; $7d13: $00
    nop                                           ; $7d14: $00
    nop                                           ; $7d15: $00
    nop                                           ; $7d16: $00
    nop                                           ; $7d17: $00
    nop                                           ; $7d18: $00
    nop                                           ; $7d19: $00
    nop                                           ; $7d1a: $00
    nop                                           ; $7d1b: $00
    nop                                           ; $7d1c: $00
    nop                                           ; $7d1d: $00
    nop                                           ; $7d1e: $00
    nop                                           ; $7d1f: $00
    cp $f5                                        ; $7d20: $fe $f5
    push bc                                       ; $7d22: $c5
    push de                                       ; $7d23: $d5
    push hl                                       ; $7d24: $e5
    ld a, $ff                                     ; $7d25: $3e $ff
    ld b, $01                                     ; $7d27: $06 $01
    ld hl, $c330                                  ; $7d29: $21 $30 $c3
    ld [hl+], a                                   ; $7d2c: $22
    ld [hl], b                                    ; $7d2d: $70
    inc hl                                        ; $7d2e: $23
    ld [hl+], a                                   ; $7d2f: $22
    ld [hl], b                                    ; $7d30: $70
    inc hl                                        ; $7d31: $23
    ld [hl+], a                                   ; $7d32: $22
    ld [hl], b                                    ; $7d33: $70
    inc hl                                        ; $7d34: $23
    ld [hl+], a                                   ; $7d35: $22
    ld [hl], b                                    ; $7d36: $70
    inc hl                                        ; $7d37: $23
    ld [hl+], a                                   ; $7d38: $22
    ld [hl+], a                                   ; $7d39: $22
    ld [hl+], a                                   ; $7d3a: $22
    ld [hl+], a                                   ; $7d3b: $22
    ld hl, $0401                                  ; $7d3c: $21 $01 $04
    rst $18                                       ; $7d3f: $df
    ld a, [bc]                                    ; $7d40: $0a
    inc de                                        ; $7d41: $13
    ld de, $4000                                  ; $7d42: $11 $00 $40
    ld h, $00                                     ; $7d45: $26 $00
    add hl, de                                    ; $7d47: $19
    ld e, a                                       ; $7d48: $5f
    ld d, $00                                     ; $7d49: $16 $00
    ld a, [hl+]                                   ; $7d4b: $2a
    ld h, [hl]                                    ; $7d4c: $66
    ld l, a                                       ; $7d4d: $6f
    add hl, de                                    ; $7d4e: $19
    add hl, de                                    ; $7d4f: $19
    ld a, [hl+]                                   ; $7d50: $2a
    ld h, [hl]                                    ; $7d51: $66
    ld l, a                                       ; $7d52: $6f
    ld a, [hl]                                    ; $7d53: $7e
    cp $fe                                        ; $7d54: $fe $fe
    jr nz, jr_054_7d5b                            ; $7d56: $20 $03

    jp Jump_054_7dcf                              ; $7d58: $c3 $cf $7d


jr_054_7d5b:
    add sp, -$02                                  ; $7d5b: $e8 $fe
    ld de, $c332                                  ; $7d5d: $11 $32 $c3
    push hl                                       ; $7d60: $e5
    ld hl, sp+$02                                 ; $7d61: $f8 $02
    ld [hl], e                                    ; $7d63: $73
    inc hl                                        ; $7d64: $23
    ld [hl], d                                    ; $7d65: $72
    pop hl                                        ; $7d66: $e1
    ld d, h                                       ; $7d67: $54
    ld e, l                                       ; $7d68: $5d
    ld b, $ff                                     ; $7d69: $06 $ff
    ld c, $03                                     ; $7d6b: $0e $03
    xor a                                         ; $7d6d: $af
    ld hl, $c330                                  ; $7d6e: $21 $30 $c3
    ld [hl], a                                    ; $7d71: $77
    ld hl, $c338                                  ; $7d72: $21 $38 $c3
    ld [hl], a                                    ; $7d75: $77
    inc hl                                        ; $7d76: $23

jr_054_7d77:
    inc b                                         ; $7d77: $04
    ld a, [de]                                    ; $7d78: $1a
    inc de                                        ; $7d79: $13
    cp $fe                                        ; $7d7a: $fe $fe
    jr z, jr_054_7db3                             ; $7d7c: $28 $35

    cp $ff                                        ; $7d7e: $fe $ff
    jr nz, jr_054_7d77                            ; $7d80: $20 $f5

    inc b                                         ; $7d82: $04
    ld a, b                                       ; $7d83: $78
    inc a                                         ; $7d84: $3c
    ld [hl], a                                    ; $7d85: $77
    push de                                       ; $7d86: $d5
    push hl                                       ; $7d87: $e5
    ld hl, sp+$04                                 ; $7d88: $f8 $04
    ld e, [hl]                                    ; $7d8a: $5e
    inc hl                                        ; $7d8b: $23
    ld d, [hl]                                    ; $7d8c: $56
    pop hl                                        ; $7d8d: $e1
    ld [de], a                                    ; $7d8e: $12
    inc de                                        ; $7d8f: $13
    inc de                                        ; $7d90: $13
    push hl                                       ; $7d91: $e5
    ld hl, sp+$04                                 ; $7d92: $f8 $04
    ld [hl], e                                    ; $7d94: $73
    inc hl                                        ; $7d95: $23
    ld [hl], d                                    ; $7d96: $72
    pop hl                                        ; $7d97: $e1
    pop de                                        ; $7d98: $d1
    ld a, [de]                                    ; $7d99: $1a
    inc a                                         ; $7d9a: $3c
    inc de                                        ; $7d9b: $13
    push hl                                       ; $7d9c: $e5
    push de                                       ; $7d9d: $d5
    ld d, a                                       ; $7d9e: $57
    ld a, $04                                     ; $7d9f: $3e $04
    sub c                                         ; $7da1: $91
    ld hl, $c330                                  ; $7da2: $21 $30 $c3
    ld e, a                                       ; $7da5: $5f
    ld a, d                                       ; $7da6: $7a
    ld d, $00                                     ; $7da7: $16 $00
    add hl, de                                    ; $7da9: $19
    add hl, de                                    ; $7daa: $19
    inc hl                                        ; $7dab: $23
    ld [hl], a                                    ; $7dac: $77
    pop de                                        ; $7dad: $d1
    pop hl                                        ; $7dae: $e1
    inc hl                                        ; $7daf: $23
    dec c                                         ; $7db0: $0d
    jr nz, jr_054_7d77                            ; $7db1: $20 $c4

jr_054_7db3:
    ld a, c                                       ; $7db3: $79
    or a                                          ; $7db4: $b7
    jr z, jr_054_7dc5                             ; $7db5: $28 $0e

    ld a, $ff                                     ; $7db7: $3e $ff
    dec hl                                        ; $7db9: $2b
    ld [hl], a                                    ; $7dba: $77
    push hl                                       ; $7dbb: $e5
    ld hl, sp+$02                                 ; $7dbc: $f8 $02
    ld e, [hl]                                    ; $7dbe: $5e
    inc hl                                        ; $7dbf: $23
    ld d, [hl]                                    ; $7dc0: $56
    pop hl                                        ; $7dc1: $e1
    dec de                                        ; $7dc2: $1b
    dec de                                        ; $7dc3: $1b
    ld [de], a                                    ; $7dc4: $12

jr_054_7dc5:
    ld a, $01                                     ; $7dc5: $3e $01
    ld hl, $7de3                                  ; $7dc7: $21 $e3 $7d
    call Call_000_23e8                            ; $7dca: $cd $e8 $23
    add sp, $02                                   ; $7dcd: $e8 $02

Jump_054_7dcf:
    pop hl                                        ; $7dcf: $e1
    pop de                                        ; $7dd0: $d1
    pop bc                                        ; $7dd1: $c1
    pop af                                        ; $7dd2: $f1
    ret                                           ; $7dd3: $c9


    push af                                       ; $7dd4: $f5

Call_054_7dd5:
    push bc                                       ; $7dd5: $c5
    push de                                       ; $7dd6: $d5
    push hl                                       ; $7dd7: $e5
    ld hl, $7de3                                  ; $7dd8: $21 $e3 $7d
    call Call_000_2449                            ; $7ddb: $cd $49 $24
    pop hl                                        ; $7dde: $e1
    pop de                                        ; $7ddf: $d1
    pop bc                                        ; $7de0: $c1
    pop af                                        ; $7de1: $f1
    ret                                           ; $7de2: $c9


    rst $30                                       ; $7de3: $f7
    add b                                         ; $7de4: $80
    inc bc                                        ; $7de5: $03
    jr nz, jr_054_7dec                            ; $7de6: $20 $04

    rst $30                                       ; $7de8: $f7
    nop                                           ; $7de9: $00
    inc bc                                        ; $7dea: $03
    ret nz                                        ; $7deb: $c0

jr_054_7dec:
    push af                                       ; $7dec: $f5
    push bc                                       ; $7ded: $c5
    push de                                       ; $7dee: $d5
    push hl                                       ; $7def: $e5
    ldh a, [$96]                                  ; $7df0: $f0 $96
    push af                                       ; $7df2: $f5
    ld a, $06                                     ; $7df3: $3e $06
    ldh [$96], a                                  ; $7df5: $e0 $96
    ldh [rSVBK], a                                ; $7df7: $e0 $70
    ld c, $00                                     ; $7df9: $0e $00
    ld hl, $c338                                  ; $7dfb: $21 $38 $c3

jr_054_7dfe:
    ld a, [hl]                                    ; $7dfe: $7e
    cp $ff                                        ; $7dff: $fe $ff
    jr z, jr_054_7e27                             ; $7e01: $28 $24

    push hl                                       ; $7e03: $e5
    ld l, c                                       ; $7e04: $69
    ld h, $00                                     ; $7e05: $26 $00
    add hl, hl                                    ; $7e07: $29
    ld de, $c330                                  ; $7e08: $11 $30 $c3
    add hl, de                                    ; $7e0b: $19
    inc hl                                        ; $7e0c: $23
    ld a, [hl]                                    ; $7e0d: $7e
    dec a                                         ; $7e0e: $3d
    ld [hl], a                                    ; $7e0f: $77
    pop hl                                        ; $7e10: $e1
    inc hl                                        ; $7e11: $23
    ld b, c                                       ; $7e12: $41
    inc c                                         ; $7e13: $0c
    ld d, a                                       ; $7e14: $57
    ld a, c                                       ; $7e15: $79
    cp $04                                        ; $7e16: $fe $04
    jr z, jr_054_7e27                             ; $7e18: $28 $0d

    ld a, d                                       ; $7e1a: $7a
    or a                                          ; $7e1b: $b7
    jr nz, jr_054_7dfe                            ; $7e1c: $20 $e0

    ld a, b                                       ; $7e1e: $78
    call Call_054_7e31                            ; $7e1f: $cd $31 $7e
    ld a, c                                       ; $7e22: $79
    cp $04                                        ; $7e23: $fe $04
    jr nz, jr_054_7dfe                            ; $7e25: $20 $d7

jr_054_7e27:
    pop af                                        ; $7e27: $f1
    ldh [$96], a                                  ; $7e28: $e0 $96
    ldh [rSVBK], a                                ; $7e2a: $e0 $70
    pop hl                                        ; $7e2c: $e1
    pop de                                        ; $7e2d: $d1
    pop bc                                        ; $7e2e: $c1
    pop af                                        ; $7e2f: $f1
    ret                                           ; $7e30: $c9


Call_054_7e31:
    push af                                       ; $7e31: $f5
    push bc                                       ; $7e32: $c5
    push de                                       ; $7e33: $d5
    push hl                                       ; $7e34: $e5
    push af                                       ; $7e35: $f5
    add sp, -$01                                  ; $7e36: $e8 $ff
    ld hl, sp+$00                                 ; $7e38: $f8 $00
    ld [hl], a                                    ; $7e3a: $77
    ld h, $00                                     ; $7e3b: $26 $00
    ld l, a                                       ; $7e3d: $6f
    add hl, hl                                    ; $7e3e: $29
    ld bc, $c330                                  ; $7e3f: $01 $30 $c3
    add hl, bc                                    ; $7e42: $09
    ld a, [hl]                                    ; $7e43: $7e
    ld [$c33c], a                                 ; $7e44: $ea $3c $c3

jr_054_7e47:
    ld hl, $0401                                  ; $7e47: $21 $01 $04
    rst $18                                       ; $7e4a: $df
    ld a, [bc]                                    ; $7e4b: $0a
    inc de                                        ; $7e4c: $13
    ld de, $4000                                  ; $7e4d: $11 $00 $40
    ld h, $00                                     ; $7e50: $26 $00
    add hl, de                                    ; $7e52: $19
    ld e, a                                       ; $7e53: $5f
    ld d, $00                                     ; $7e54: $16 $00
    ld a, [hl+]                                   ; $7e56: $2a
    ld h, [hl]                                    ; $7e57: $66
    ld l, a                                       ; $7e58: $6f
    add hl, de                                    ; $7e59: $19
    add hl, de                                    ; $7e5a: $19
    ld a, [hl+]                                   ; $7e5b: $2a
    ld h, [hl]                                    ; $7e5c: $66
    ld l, a                                       ; $7e5d: $6f
    ld a, [$c33c]                                 ; $7e5e: $fa $3c $c3
    ld c, a                                       ; $7e61: $4f
    ld b, $00                                     ; $7e62: $06 $00
    add hl, bc                                    ; $7e64: $09
    ld a, [hl]                                    ; $7e65: $7e
    cp $ff                                        ; $7e66: $fe $ff
    jr nz, jr_054_7e79                            ; $7e68: $20 $0f

    ld hl, sp+$00                                 ; $7e6a: $f8 $00
    ld c, [hl]                                    ; $7e6c: $4e
    ld b, $00                                     ; $7e6d: $06 $00
    ld hl, $c338                                  ; $7e6f: $21 $38 $c3
    add hl, bc                                    ; $7e72: $09
    ld a, [hl]                                    ; $7e73: $7e
    ld [$c33c], a                                 ; $7e74: $ea $3c $c3
    jr jr_054_7e47                                ; $7e77: $18 $ce

jr_054_7e79:
    ld b, a                                       ; $7e79: $47
    inc hl                                        ; $7e7a: $23
    ld c, [hl]                                    ; $7e7b: $4e
    inc hl                                        ; $7e7c: $23
    ld e, [hl]                                    ; $7e7d: $5e
    inc hl                                        ; $7e7e: $23
    ld a, [hl]                                    ; $7e7f: $7e

Jump_054_7e80:
    push af                                       ; $7e80: $f5
    push bc                                       ; $7e81: $c5
    ld l, e                                       ; $7e82: $6b
    ld h, $00                                     ; $7e83: $26 $00
    add hl, hl                                    ; $7e85: $29
    add hl, hl                                    ; $7e86: $29
    add hl, hl                                    ; $7e87: $29
    add hl, hl                                    ; $7e88: $29
    ld de, $b000                                  ; $7e89: $11 $00 $b0
    add hl, de                                    ; $7e8c: $19
    push hl                                       ; $7e8d: $e5
    ld l, b                                       ; $7e8e: $68
    ld h, $00                                     ; $7e8f: $26 $00
    add hl, hl                                    ; $7e91: $29
    add hl, hl                                    ; $7e92: $29
    add hl, hl                                    ; $7e93: $29
    add hl, hl                                    ; $7e94: $29
    ld b, h                                       ; $7e95: $44
    ld c, l                                       ; $7e96: $4d
    ld hl, $0400                                  ; $7e97: $21 $00 $04
    rst $18                                       ; $7e9a: $df
    ld a, [bc]                                    ; $7e9b: $0a
    inc de                                        ; $7e9c: $13
    ld de, $4000                                  ; $7e9d: $11 $00 $40
    ld h, $00                                     ; $7ea0: $26 $00
    add hl, de                                    ; $7ea2: $19
    ld e, a                                       ; $7ea3: $5f
    ld d, $00                                     ; $7ea4: $16 $00
    ld a, [hl+]                                   ; $7ea6: $2a
    ld h, [hl]                                    ; $7ea7: $66
    ld l, a                                       ; $7ea8: $6f
    add hl, de                                    ; $7ea9: $19
    add hl, de                                    ; $7eaa: $19
    ld a, [hl+]                                   ; $7eab: $2a
    ld h, [hl]                                    ; $7eac: $66
    ld l, a                                       ; $7ead: $6f
    add hl, bc                                    ; $7eae: $09
    pop de                                        ; $7eaf: $d1
    pop bc                                        ; $7eb0: $c1
    call Call_000_0468                            ; $7eb1: $cd $68 $04
    ld a, [$c33c]                                 ; $7eb4: $fa $3c $c3
    add $04                                       ; $7eb7: $c6 $04
    ld [$c33c], a                                 ; $7eb9: $ea $3c $c3
    pop af                                        ; $7ebc: $f1
    ld d, a                                       ; $7ebd: $57
    add sp, $01                                   ; $7ebe: $e8 $01
    pop af                                        ; $7ec0: $f1
    ld h, $00                                     ; $7ec1: $26 $00
    ld l, a                                       ; $7ec3: $6f
    add hl, hl                                    ; $7ec4: $29
    ld bc, $c330                                  ; $7ec5: $01 $30 $c3
    add hl, bc                                    ; $7ec8: $09
    ld a, [$c33c]                                 ; $7ec9: $fa $3c $c3
    ld [hl+], a                                   ; $7ecc: $22
    ld [hl], d                                    ; $7ecd: $72
    pop hl                                        ; $7ece: $e1
    pop de                                        ; $7ecf: $d1
    pop bc                                        ; $7ed0: $c1
    pop af                                        ; $7ed1: $f1
    ret                                           ; $7ed2: $c9


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
