; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $059", ROMX[$4000], BANK[$59]

Call_059_4000:
    ld a, [de]                                    ; $4000: $1a
    ld b, b                                       ; $4001: $40
    ld h, l                                       ; $4002: $65
    ld b, l                                       ; $4003: $45
    ld e, c                                       ; $4004: $59
    ld c, d                                       ; $4005: $4a
    sub e                                         ; $4006: $93
    ld c, a                                       ; $4007: $4f
    and l                                         ; $4008: $a5
    ld d, h                                       ; $4009: $54
    ld [hl], h                                    ; $400a: $74
    ld e, c                                       ; $400b: $59
    ld [hl], b                                    ; $400c: $70
    ld e, [hl]                                    ; $400d: $5e
    ld e, c                                       ; $400e: $59
    ld h, e                                       ; $400f: $63
    dec h                                         ; $4010: $25
    ld l, b                                       ; $4011: $68
    ld [c], a                                     ; $4012: $e2
    ld l, h                                       ; $4013: $6c
    ld a, a                                       ; $4014: $7f
    ld [hl], c                                    ; $4015: $71
    scf                                           ; $4016: $37
    halt                                          ; $4017: $76
    ld b, h                                       ; $4018: $44
    ld a, e                                       ; $4019: $7b
    ld [hl+], a                                   ; $401a: $22
    ld b, b                                       ; $401b: $40
    ld d, d                                       ; $401c: $52
    ld b, b                                       ; $401d: $40
    ld a, [de]                                    ; $401e: $1a
    ld b, e                                       ; $401f: $43
    ld sp, $f845                                  ; $4020: $31 $45 $f8
    inc bc                                        ; $4023: $03
    ld c, h                                       ; $4024: $4c
    inc bc                                        ; $4025: $03
    ld d, e                                       ; $4026: $53
    ld bc, $008a                                  ; $4027: $01 $8a $00
    ldh a, [$03]                                  ; $402a: $f0 $03
    ld hl, sp+$03                                 ; $402c: $f8 $03
    ld c, h                                       ; $402e: $4c
    inc bc                                        ; $402f: $03
    ld d, e                                       ; $4030: $53
    ld bc, $47ff                                  ; $4031: $01 $ff $47
    ldh a, [rP1]                                  ; $4034: $f0 $00
    ld e, l                                       ; $4036: $5d
    add hl, de                                    ; $4037: $19
    ld c, h                                       ; $4038: $4c
    inc bc                                        ; $4039: $03
    ld [$0825], sp                                ; $403a: $08 $25 $08
    dec h                                         ; $403d: $25
    ld [$0825], sp                                ; $403e: $08 $25 $08
    dec h                                         ; $4041: $25
    ld [$0825], sp                                ; $4042: $08 $25 $08
    dec h                                         ; $4045: $25
    ld [$0825], sp                                ; $4046: $08 $25 $08
    dec h                                         ; $4049: $25
    ld [$0825], sp                                ; $404a: $08 $25 $08
    dec h                                         ; $404d: $25
    ld [$0825], sp                                ; $404e: $08 $25 $08
    dec h                                         ; $4051: $25
    db $dd                                        ; $4052: $dd
    dec bc                                        ; $4053: $0b
    rst $38                                       ; $4054: $ff
    ld [c], a                                     ; $4055: $e2

Call_059_4056:
    dec hl                                        ; $4056: $2b
    dec hl                                        ; $4057: $2b
    ld a, [bc]                                    ; $4058: $0a
    rst $30                                       ; $4059: $f7
    pop hl                                        ; $405a: $e1
    inc c                                         ; $405b: $0c
    inc c                                         ; $405c: $0c
    cp a                                          ; $405d: $bf
    inc l                                         ; $405e: $2c
    inc l                                         ; $405f: $2c
    dec hl                                        ; $4060: $2b
    dec hl                                        ; $4061: $2b
    dec hl                                        ; $4062: $2b
    ld c, h                                       ; $4063: $4c
    rst $38                                       ; $4064: $ff
    ldh [$0c], a                                  ; $4065: $e0 $0c
    inc bc                                        ; $4067: $03
    inc c                                         ; $4068: $0c
    inc c                                         ; $4069: $0c
    db $fc                                        ; $406a: $fc
    ldh [$f9], a                                  ; $406b: $e0 $f9
    pop hl                                        ; $406d: $e1
    ld hl, sp-$1e                                 ; $406e: $f8 $e2
    ldh a, [$e2]                                  ; $4070: $f0 $e2
    ld a, [c]                                     ; $4072: $f2
    ld [c], a                                     ; $4073: $e2
    db $fc                                        ; $4074: $fc
    db $ec                                        ; $4075: $ec
    rlca                                          ; $4076: $07
    dec bc                                        ; $4077: $0b
    dec bc                                        ; $4078: $0b
    ld l, e                                       ; $4079: $6b
    cp l                                          ; $407a: $bd
    db $e3                                        ; $407b: $e3
    pop bc                                        ; $407c: $c1
    ld [c], a                                     ; $407d: $e2
    ret nz                                        ; $407e: $c0

    ldh [$bf], a                                  ; $407f: $e0 $bf
    ldh [$d0], a                                  ; $4081: $e0 $d0
    ld [c], a                                     ; $4083: $e2
    call z, $e5fd                                 ; $4084: $cc $fd $e5
    push bc                                       ; $4087: $c5
    push hl                                       ; $4088: $e5
    inc l                                         ; $4089: $2c
    inc l                                         ; $408a: $2c
    ei                                            ; $408b: $fb
    ld [c], a                                     ; $408c: $e2

Jump_059_408d:
    ret nz                                        ; $408d: $c0

    xor $6b                                       ; $408e: $ee $6b
    ld l, e                                       ; $4090: $6b
    ld [de], a                                    ; $4091: $12
    adc [hl]                                      ; $4092: $8e
    ldh [rWX], a                                  ; $4093: $e0 $4b
    pop bc                                        ; $4095: $c1
    db $e4                                        ; $4096: $e4
    ret nz                                        ; $4097: $c0

    pop hl                                        ; $4098: $e1
    inc l                                         ; $4099: $2c
    ret nz                                        ; $409a: $c0

    add sp, -$47                                  ; $409b: $e8 $b9
    ldh [$87], a                                  ; $409d: $e0 $87
    db $e3                                        ; $409f: $e3
    pop bc                                        ; $40a0: $c1
    ld c, h                                       ; $40a1: $4c
    and a                                         ; $40a2: $a7
    ldh [$fb], a                                  ; $40a3: $e0 $fb
    db $e3                                        ; $40a5: $e3
    add b                                         ; $40a6: $80
    db $ed                                        ; $40a7: $ed
    ld d, b                                       ; $40a8: $50
    ldh [$fd], a                                  ; $40a9: $e0 $fd
    pop hl                                        ; $40ab: $e1
    ld c, e                                       ; $40ac: $4b
    dec bc                                        ; $40ad: $0b
    ld bc, $c06c                                  ; $40ae: $01 $6c $c0
    push hl                                       ; $40b1: $e5
    ld c, e                                       ; $40b2: $4b
    db $e3                                        ; $40b3: $e3
    ld a, [hl]                                    ; $40b4: $7e
    ld [c], a                                     ; $40b5: $e2
    db $fc                                        ; $40b6: $fc
    db $e3                                        ; $40b7: $e3
    ld b, b                                       ; $40b8: $40
    pop hl                                        ; $40b9: $e1
    pop bc                                        ; $40ba: $c1
    pop hl                                        ; $40bb: $e1
    ei                                            ; $40bc: $fb
    pop hl                                        ; $40bd: $e1
    ld [$f0c0], sp                                ; $40be: $08 $c0 $f0
    ld a, a                                       ; $40c1: $7f
    ldh [$fe], a                                  ; $40c2: $e0 $fe
    ret nz                                        ; $40c4: $c0

    ld c, e                                       ; $40c5: $4b
    ld h, l                                       ; $40c6: $65

Jump_059_40c7:
    db $e4                                        ; $40c7: $e4
    sub a                                         ; $40c8: $97
    ld [c], a                                     ; $40c9: $e2
    add d                                         ; $40ca: $82
    push hl                                       ; $40cb: $e5
    ld b, b                                       ; $40cc: $40
    add sp, -$18                                  ; $40cd: $e8 $e8
    nop                                           ; $40cf: $00
    rst $20                                       ; $40d0: $e7
    rst $10                                       ; $40d1: $d7
    push hl                                       ; $40d2: $e5
    ret nz                                        ; $40d3: $c0

    and $6b                                       ; $40d4: $e6 $6b
    ret nz                                        ; $40d6: $c0

    ldh [$0b], a                                  ; $40d7: $e0 $0b
    ld c, e                                       ; $40d9: $4b
    dec bc                                        ; $40da: $0b
    add b                                         ; $40db: $80
    inc h                                         ; $40dc: $24
    db $e3                                        ; $40dd: $e3
    dec e                                         ; $40de: $1d
    ld [c], a                                     ; $40df: $e2
    sub $c3                                       ; $40e0: $d6 $c3
    ret nc                                        ; $40e2: $d0

    add $38                                       ; $40e3: $c6 $38
    db $e3                                        ; $40e5: $e3
    inc sp                                        ; $40e6: $33
    db $e3                                        ; $40e7: $e3
    ret nz                                        ; $40e8: $c0

    adc $2b                                       ; $40e9: $ce $2b
    ld c, [hl]                                    ; $40eb: $4e
    cp a                                          ; $40ec: $bf
    jp $6b6b                                      ; $40ed: $c3 $6b $6b


    ld c, e                                       ; $40f0: $4b
    sbc $c0                                       ; $40f1: $de $c0
    add a                                         ; $40f3: $87
    pop bc                                        ; $40f4: $c1
    dec bc                                        ; $40f5: $0b
    jp z, Jump_000_08c6                           ; $40f6: $ca $c6 $08

    ld a, a                                       ; $40f9: $7f
    rst $18                                       ; $40fa: $df
    ret nz                                        ; $40fb: $c0

    pop hl                                        ; $40fc: $e1
    ld b, d                                       ; $40fd: $42

jr_059_40fe:
    ldh [rWX], a                                  ; $40fe: $e0 $4b
    cp a                                          ; $4100: $bf
    jp nz, $c2ba                                  ; $4101: $c2 $ba $c2

    ld a, b                                       ; $4104: $78
    jp $d57f                                      ; $4105: $c3 $7f $d5


    ld [bc], a                                    ; $4108: $02
    ld a, $ce                                     ; $4109: $3e $ce
    inc l                                         ; $410b: $2c
    cp a                                          ; $410c: $bf
    db $e4                                        ; $410d: $e4
    ei                                            ; $410e: $fb
    and c                                         ; $410f: $a1
    or $a2                                        ; $4110: $f6 $a2
    ld [hl], l                                    ; $4112: $75
    ret nz                                        ; $4113: $c0

    ret nz                                        ; $4114: $c0

    add sp, $7f                                   ; $4115: $e8 $7f
    jp z, Jump_059_6cc4                           ; $4117: $ca $c4 $6c

    pop hl                                        ; $411a: $e1
    ccf                                           ; $411b: $3f
    call $cf6c                                    ; $411c: $cd $6c $cf
    and c                                         ; $411f: $a1
    add $e2                                       ; $4120: $c6 $e2
    ld sp, hl                                     ; $4122: $f9
    and h                                         ; $4123: $a4
    ld c, e                                       ; $4124: $4b
    dec hl                                        ; $4125: $2b
    ld bc, $7f4b                                  ; $4126: $01 $4b $7f
    sub $c0                                       ; $4129: $d6 $c0
    ldh a, [$cf]                                  ; $412b: $f0 $cf
    and c                                         ; $412d: $a1
    add [hl]                                      ; $412e: $86
    db $e3                                        ; $412f: $e3
    pop bc                                        ; $4130: $c1
    db $e4                                        ; $4131: $e4
    rst $38                                       ; $4132: $ff
    ldh [$d5], a                                  ; $4133: $e0 $d5
    jp nz, Jump_059_7f00                          ; $4135: $c2 $00 $7f

    ret nc                                        ; $4138: $d0

    ld a, [c]                                     ; $4139: $f2
    jp $a2bd                                      ; $413a: $c3 $bd $a2


    cp b                                          ; $413d: $b8
    and a                                         ; $413e: $a7
    adc [hl]                                      ; $413f: $8e
    and b                                         ; $4140: $a0

jr_059_4141:
    db $fd                                        ; $4141: $fd
    jp nz, $e7c1                                  ; $4142: $c2 $c1 $e7

    add b                                         ; $4145: $80

Jump_059_4146:
    and b                                         ; $4146: $a0
    ld e, h                                       ; $4147: $5c
    ld a, a                                       ; $4148: $7f
    call nc, $b13f                                ; $4149: $d4 $3f $b1
    inc c                                         ; $414c: $0c
    ld l, h                                       ; $414d: $6c
    ld l, h                                       ; $414e: $6c
    dec b                                         ; $414f: $05
    db $e3                                        ; $4150: $e3
    ld c, e                                       ; $4151: $4b
    add h                                         ; $4152: $84
    ld [c], a                                     ; $4153: $e2
    add b                                         ; $4154: $80
    ret nz                                        ; $4155: $c0

    pop hl                                        ; $4156: $e1
    jr jr_059_40fe                                ; $4157: $18 $a5

    ld a, h                                       ; $4159: $7c
    call nz, $88fe                                ; $415a: $c4 $fe $88
    ret nz                                        ; $415d: $c0

    ld a, [c]                                     ; $415e: $f2
    ld a, h                                       ; $415f: $7c
    add $c0                                       ; $4160: $c6 $c0
    db $e4                                        ; $4162: $e4
    dec bc                                        ; $4163: $0b
    ld b, b                                       ; $4164: $40
    rst $08                                       ; $4165: $cf
    add e                                         ; $4166: $83
    ccf                                           ; $4167: $3f
    and l                                         ; $4168: $a5
    cp [hl]                                       ; $4169: $be
    and a                                         ; $416a: $a7
    cp h                                          ; $416b: $bc
    rst $20                                       ; $416c: $e7
    add hl, de                                    ; $416d: $19
    and c                                         ; $416e: $a1
    cp l                                          ; $416f: $bd
    adc b                                         ; $4170: $88
    ld c, e                                       ; $4171: $4b
    ld a, [hl-]                                   ; $4172: $3a
    and c                                         ; $4173: $a1
    ld [bc], a                                    ; $4174: $02
    ret nz                                        ; $4175: $c0

    push hl                                       ; $4176: $e5
    ld l, e                                       ; $4177: $6b
    ret nz                                        ; $4178: $c0

    ldh [$be], a                                  ; $4179: $e0 $be
    push hl                                       ; $417b: $e5
    nop                                           ; $417c: $00
    and c                                         ; $417d: $a1
    or h                                          ; $417e: $b4
    add h                                         ; $417f: $84
    dec hl                                        ; $4180: $2b
    and h                                         ; $4181: $a4
    db $eb                                        ; $4182: $eb
    and b                                         ; $4183: $a0
    jr nz, jr_059_4141                            ; $4184: $20 $bb

    add b                                         ; $4186: $80
    ret nz                                        ; $4187: $c0

    jp hl                                         ; $4188: $e9


    cp [hl]                                       ; $4189: $be
    add b                                         ; $418a: $80
    nop                                           ; $418b: $00
    pop bc                                        ; $418c: $c1
    ld a, e                                       ; $418d: $7b
    add $4b                                       ; $418e: $c6 $4b
    ret nz                                        ; $4190: $c0

    and b                                         ; $4191: $a0
    ld d, d                                       ; $4192: $52
    add d                                         ; $4193: $82
    nop                                           ; $4194: $00
    cp $e4                                        ; $4195: $fe $e4
    db $f4                                        ; $4197: $f4
    add [hl]                                      ; $4198: $86
    cpl                                           ; $4199: $2f
    db $e4                                        ; $419a: $e4
    sbc l                                         ; $419b: $9d
    add c                                         ; $419c: $81
    or a                                          ; $419d: $b7
    add a                                         ; $419e: $87
    ld e, h                                       ; $419f: $5c
    add l                                         ; $41a0: $85
    ret nc                                        ; $41a1: $d0

    add a                                         ; $41a2: $87
    call nc, Call_000_00c6                        ; $41a3: $d4 $c6 $00
    ld c, $e8                                     ; $41a6: $0e $e8
    ret nz                                        ; $41a8: $c0

    ret z                                         ; $41a9: $c8

    or [hl]                                       ; $41aa: $b6
    add c                                         ; $41ab: $81
    ret nz                                        ; $41ac: $c0

    ld [$c565], a                                 ; $41ad: $ea $65 $c5
    ret nc                                        ; $41b0: $d0

    add [hl]                                      ; $41b1: $86
    rst $00                                       ; $41b2: $c7
    add l                                         ; $41b3: $85
    cp d                                          ; $41b4: $ba
    rst $00                                       ; $41b5: $c7
    nop                                           ; $41b6: $00
    ld [hl], a                                    ; $41b7: $77
    add [hl]                                      ; $41b8: $86
    ld l, $a5                                     ; $41b9: $2e $a5
    or a                                          ; $41bb: $b7
    ld l, c                                       ; $41bc: $69
    add d                                         ; $41bd: $82
    db $e4                                        ; $41be: $e4
    ret nc                                        ; $41bf: $d0

    adc d                                         ; $41c0: $8a
    pop bc                                        ; $41c1: $c1
    add a                                         ; $41c2: $87
    ld c, c                                       ; $41c3: $49
    rst $00                                       ; $41c4: $c7
    ld a, e                                       ; $41c5: $7b
    ret z                                         ; $41c6: $c8

    nop                                           ; $41c7: $00
    pop bc                                        ; $41c8: $c1
    jp nz, $ea3e                                  ; $41c9: $c2 $3e $ea

    call nc, $d385                                ; $41cc: $d4 $85 $d3
    push bc                                       ; $41cf: $c5
    add hl, bc                                    ; $41d0: $09
    jp hl                                         ; $41d1: $e9


    adc b                                         ; $41d2: $88
    ld h, e                                       ; $41d3: $63
    dec [hl]                                      ; $41d4: $35

jr_059_41d5:
    ld l, c                                       ; $41d5: $69
    ret nz                                        ; $41d6: $c0

    ld [$d400], a                                 ; $41d7: $ea $00 $d4
    add $0e                                       ; $41da: $c6 $0e
    add [hl]                                      ; $41dc: $86
    ei                                            ; $41dd: $fb
    jp hl                                         ; $41de: $e9


    inc b                                         ; $41df: $04
    and a                                         ; $41e0: $a7
    push af                                       ; $41e1: $f5
    ld l, c                                       ; $41e2: $69
    cp a                                          ; $41e3: $bf
    ret                                           ; $41e4: $c9


    ld e, c                                       ; $41e5: $59
    push bc                                       ; $41e6: $c5
    ld d, c                                       ; $41e7: $51
    ld h, a                                       ; $41e8: $67
    nop                                           ; $41e9: $00
    inc b                                         ; $41ea: $04
    adc c                                         ; $41eb: $89
    add e                                         ; $41ec: $83
    ld h, l                                       ; $41ed: $65
    scf                                           ; $41ee: $37
    rlc b                                         ; $41ef: $cb $00
    ret                                           ; $41f1: $c9


    ld c, c                                       ; $41f2: $49
    and $52                                       ; $41f3: $e6 $52
    push bc                                       ; $41f5: $c5
    add l                                         ; $41f6: $85
    xor b                                         ; $41f7: $a8
    ld [bc], a                                    ; $41f8: $02
    add sp, $00                                   ; $41f9: $e8 $00
    scf                                           ; $41fb: $37
    jp z, $ccbe                                   ; $41fc: $ca $be $cc

    push de                                       ; $41ff: $d5
    ld h, [hl]                                    ; $4200: $66
    adc h                                         ; $4201: $8c
    ld b, a                                       ; $4202: $47
    xor d                                         ; $4203: $aa
    add $8a                                       ; $4204: $c6 $8a
    ld b, h                                       ; $4206: $44
    scf                                           ; $4207: $37
    swap e                                        ; $4208: $cb $33
    ld c, c                                       ; $420a: $49
    nop                                           ; $420b: $00
    and b                                         ; $420c: $a0
    xor b                                         ; $420d: $a8
    jr c, jr_059_41d5                             ; $420e: $38 $c5

    inc l                                         ; $4210: $2c
    jp hl                                         ; $4211: $e9


    adc d                                         ; $4212: $8a
    ld b, a                                       ; $4213: $47
    ld [hl], b                                    ; $4214: $70
    db $ec                                        ; $4215: $ec
    inc sp                                        ; $4216: $33
    ld b, h                                       ; $4217: $44
    ld l, c                                       ; $4218: $69
    db $ec                                        ; $4219: $ec
    adc c                                         ; $421a: $89
    and [hl]                                      ; $421b: $a6
    nop                                           ; $421c: $00
    xor d                                         ; $421d: $aa
    and e                                         ; $421e: $a3
    rst $20                                       ; $421f: $e7
    add sp, $73                                   ; $4220: $e8 $73
    ld b, [hl]                                    ; $4222: $46
    ld l, $48                                     ; $4223: $2e $48
    ld c, e                                       ; $4225: $4b
    push bc                                       ; $4226: $c5
    ret nc                                        ; $4227: $d0

    rst $20                                       ; $4228: $e7
    ld bc, $77ea                                  ; $4229: $01 $ea $77
    ld b, e                                       ; $422c: $43
    nop                                           ; $422d: $00
    sbc b                                         ; $422e: $98
    db $e4                                        ; $422f: $e4
    ld e, c                                       ; $4230: $59
    add sp, -$55                                  ; $4231: $e8 $ab
    add $a2                                       ; $4233: $c6 $a2
    ld c, b                                       ; $4235: $48
    push de                                       ; $4236: $d5
    ld b, d                                       ; $4237: $42
    cp e                                          ; $4238: $bb
    inc hl                                        ; $4239: $23
    and l                                         ; $423a: $a5
    xor e                                         ; $423b: $ab
    sbc b                                         ; $423c: $98
    and $00                                       ; $423d: $e6 $00
    ldh a, [$a8]                                  ; $423f: $f0 $a8
    nop                                           ; $4241: $00
    ld [$e767], a                                 ; $4242: $ea $67 $e7
    ld d, l                                       ; $4245: $55
    and a                                         ; $4246: $a7
    db $dd                                        ; $4247: $dd
    add e                                         ; $4248: $83
    sbc b                                         ; $4249: $98
    db $eb                                        ; $424a: $eb

Jump_059_424b:
    db $eb                                        ; $424b: $eb
    add [hl]                                      ; $424c: $86
    or $ea                                        ; $424d: $f6 $ea
    nop                                           ; $424f: $00
    sub h                                         ; $4250: $94
    inc sp                                        ; $4251: $33
    ld e, l                                       ; $4252: $5d
    add c                                         ; $4253: $81
    ld b, h                                       ; $4254: $44
    dec h                                         ; $4255: $25
    ld sp, hl                                     ; $4256: $f9
    adc l                                         ; $4257: $8d
    ld a, [hl+]                                   ; $4258: $2a
    xor d                                         ; $4259: $aa
    dec d                                         ; $425a: $15
    ld [hl], l                                    ; $425b: $75
    adc [hl]                                      ; $425c: $8e
    db $ed                                        ; $425d: $ed
    xor a                                         ; $425e: $af
    ld [hl], d                                    ; $425f: $72
    nop                                           ; $4260: $00
    db $d3                                        ; $4261: $d3
    adc l                                         ; $4262: $8d
    ld e, h                                       ; $4263: $5c
    jp hl                                         ; $4264: $e9


    jp nz, $af8b                                  ; $4265: $c2 $8b $af

    ld [hl], h                                    ; $4268: $74
    cp l                                          ; $4269: $bd
    xor c                                         ; $426a: $a9
    adc $f2                                       ; $426b: $ce $f2
    rlca                                          ; $426d: $07
    ld l, b                                       ; $426e: $68
    xor a                                         ; $426f: $af
    ld [hl], c                                    ; $4270: $71
    nop                                           ; $4271: $00
    ld h, [hl]                                    ; $4272: $66
    ld hl, sp+$0f                                 ; $4273: $f8 $0f
    inc hl                                        ; $4275: $23
    and a                                         ; $4276: $a7
    xor b                                         ; $4277: $a8
    xor a                                         ; $4278: $af
    ld [hl], b                                    ; $4279: $70
    ld h, [hl]                                    ; $427a: $66
    db $fd                                        ; $427b: $fd
    db $10                                        ; $427c: $10
    xor b                                         ; $427d: $a8
    ld e, d                                       ; $427e: $5a
    jp nc, $fc66                                  ; $427f: $d2 $66 $fc

    nop                                           ; $4282: $00
    ld e, b                                       ; $4283: $58
    call $ef09                                    ; $4284: $cd $09 $ef
    ld h, [hl]                                    ; $4287: $66
    ld hl, sp-$40                                 ; $4288: $f8 $c0
    adc $78                                       ; $428a: $ce $78
    rlca                                          ; $428c: $07
    ld b, d                                       ; $428d: $42
    ld c, d                                       ; $428e: $4a
    ld h, [hl]                                    ; $428f: $66
    push af                                       ; $4290: $f5
    ei                                            ; $4291: $fb
    ld [$4a00], sp                                ; $4292: $08 $00 $4a
    call $ebc0                                    ; $4295: $cd $c0 $eb
    rst $30                                       ; $4298: $f7
    or $f9                                        ; $4299: $f6 $f9
    ld [hl], $ff                                  ; $429b: $36 $ff
    rst $38                                       ; $429d: $ff
    and [hl]                                      ; $429e: $a6
    ld l, c                                       ; $429f: $69
    db $e4                                        ; $42a0: $e4
    sub $fd                                       ; $42a1: $d6 $fd
    db $fc                                        ; $42a3: $fc

Call_059_42a4:
    nop                                           ; $42a4: $00
    adc d                                         ; $42a5: $8a
    add [hl]                                      ; $42a6: $86
    ld c, d                                       ; $42a7: $4a
    pop de                                        ; $42a8: $d1
    rst $38                                       ; $42a9: $ff
    rst $38                                       ; $42aa: $ff
    ld c, d                                       ; $42ab: $4a
    jp c, $ffff                                   ; $42ac: $da $ff $ff

    add b                                         ; $42af: $80
    pop hl                                        ; $42b0: $e1
    ld b, d                                       ; $42b1: $42
    ld b, h                                       ; $42b2: $44
    push bc                                       ; $42b3: $c5
    ld b, $00                                     ; $42b4: $06 $00
    add b                                         ; $42b6: $80
    rst $38                                       ; $42b7: $ff
    ld b, b                                       ; $42b8: $40
    ld a, [c]                                     ; $42b9: $f2
    pop af                                        ; $42ba: $f1
    ld c, c                                       ; $42bb: $49
    add b                                         ; $42bc: $80
    rst $38                                       ; $42bd: $ff
    ld b, b                                       ; $42be: $40
    rst $28                                       ; $42bf: $ef

Jump_059_42c0:
    dec h                                         ; $42c0: $25
    add l                                         ; $42c1: $85
    ld h, e                                       ; $42c2: $63
    adc [hl]                                      ; $42c3: $8e
    jp nz, Jump_000_00fe                          ; $42c4: $c2 $fe $00

    ld a, b                                       ; $42c7: $78
    inc b                                         ; $42c8: $04
    ret nz                                        ; $42c9: $c0

    add sp, -$01                                  ; $42ca: $e8 $ff
    rst $38                                       ; $42cc: $ff
    ld [hl], e                                    ; $42cd: $73
    call nc, $bfcd                                ; $42ce: $d4 $cd $bf
    rst $38                                       ; $42d1: $ff
    rst $38                                       ; $42d2: $ff
    rst $38                                       ; $42d3: $ff
    rst $38                                       ; $42d4: $ff
    sub [hl]                                      ; $42d5: $96
    rst $38                                       ; $42d6: $ff
    nop                                           ; $42d7: $00
    reti                                          ; $42d8: $d9


    or e                                          ; $42d9: $b3
    rst $38                                       ; $42da: $ff
    rst $38                                       ; $42db: $ff
    rst $38                                       ; $42dc: $ff
    rst $38                                       ; $42dd: $ff
    rst $38                                       ; $42de: $ff
    rst $38                                       ; $42df: $ff
    rst $38                                       ; $42e0: $ff
    rst $38                                       ; $42e1: $ff
    scf                                           ; $42e2: $37
    db $eb                                        ; $42e3: $eb
    call c, $ffff                                 ; $42e4: $dc $ff $ff
    rst $38                                       ; $42e7: $ff
    nop                                           ; $42e8: $00
    rst $38                                       ; $42e9: $ff
    rst $38                                       ; $42ea: $ff
    rst $38                                       ; $42eb: $ff
    rst $38                                       ; $42ec: $ff
    rst $38                                       ; $42ed: $ff
    rst $38                                       ; $42ee: $ff
    rst $38                                       ; $42ef: $ff
    rst $38                                       ; $42f0: $ff
    rst $38                                       ; $42f1: $ff
    rst $38                                       ; $42f2: $ff
    rst $38                                       ; $42f3: $ff
    rst $38                                       ; $42f4: $ff
    rst $38                                       ; $42f5: $ff
    rst $38                                       ; $42f6: $ff
    rst $38                                       ; $42f7: $ff
    rst $38                                       ; $42f8: $ff
    nop                                           ; $42f9: $00
    rst $38                                       ; $42fa: $ff
    rst $38                                       ; $42fb: $ff
    rst $38                                       ; $42fc: $ff
    rst $38                                       ; $42fd: $ff
    rst $38                                       ; $42fe: $ff
    rst $38                                       ; $42ff: $ff
    rst $38                                       ; $4300: $ff
    rst $38                                       ; $4301: $ff
    rst $38                                       ; $4302: $ff
    rst $38                                       ; $4303: $ff
    rst $38                                       ; $4304: $ff
    rst $38                                       ; $4305: $ff
    rst $38                                       ; $4306: $ff
    rst $38                                       ; $4307: $ff
    rst $38                                       ; $4308: $ff
    rst $38                                       ; $4309: $ff
    nop                                           ; $430a: $00
    nop                                           ; $430b: $00

jr_059_430c:
    cp a                                          ; $430c: $bf
    rst $38                                       ; $430d: $ff
    rst $38                                       ; $430e: $ff
    rst $38                                       ; $430f: $ff
    rst $38                                       ; $4310: $ff
    rst $38                                       ; $4311: $ff
    rst $38                                       ; $4312: $ff
    rst $38                                       ; $4313: $ff
    rst $38                                       ; $4314: $ff
    push de                                       ; $4315: $d5
    inc sp                                        ; $4316: $33
    nop                                           ; $4317: $00
    nop                                           ; $4318: $00
    nop                                           ; $4319: $00
    rst $38                                       ; $431a: $ff
    ld e, e                                       ; $431b: $5b
    ld e, h                                       ; $431c: $5c
    ld e, l                                       ; $431d: $5d
    ld sp, $3131                                  ; $431e: $31 $31 $31
    ld e, l                                       ; $4321: $5d
    ld e, h                                       ; $4322: $5c
    cp l                                          ; $4323: $bd
    ld e, d                                       ; $4324: $5a
    rst $30                                       ; $4325: $f7
    pop hl                                        ; $4326: $e1
    ld de, $1212                                  ; $4327: $11 $12 $12
    ld de, $e0f2                                  ; $432a: $11 $f2 $e0
    nop                                           ; $432d: $00
    db $fc                                        ; $432e: $fc
    rst $38                                       ; $432f: $ff
    rst $38                                       ; $4330: $ff
    rst $20                                       ; $4331: $e7
    and $5d                                       ; $4332: $e6 $5d
    ld sp, $564d                                  ; $4334: $31 $4d $56
    ld d, a                                       ; $4337: $57
    ld a, $ff                                     ; $4338: $3e $ff
    ld sp, $6231                                  ; $433a: $31 $31 $62
    ld h, d                                       ; $433d: $62
    ld sp, $2931                                  ; $433e: $31 $31 $29
    ld hl, $22cf                                  ; $4341: $21 $cf $22
    ld [hl+], a                                   ; $4344: $22
    ld hl, $c029                                  ; $4345: $21 $29 $c0
    rst $38                                       ; $4348: $ff
    ld [$31e9], a                                 ; $4349: $ea $e9 $31
    ld c, l                                       ; $434c: $4d
    sbc a                                         ; $434d: $9f
    ld [hl-], a                                   ; $434e: $32
    ld l, l                                       ; $434f: $6d
    ld l, l                                       ; $4350: $6d
    ld b, d                                       ; $4351: $42
    ld a, [hl-]                                   ; $4352: $3a
    cp [hl]                                       ; $4353: $be
    ldh [$c1], a                                  ; $4354: $e0 $c1
    ldh [rNR10], a                                ; $4356: $e0 $10
    rst $00                                       ; $4358: $c7
    jr nz, jr_059_437b                            ; $4359: $20 $20

    db $10                                        ; $435b: $10
    cp a                                          ; $435c: $bf
    ldh [$ca], a                                  ; $435d: $e0 $ca
    rst $38                                       ; $435f: $ff
    ret nz                                        ; $4360: $c0

    add sp, $51                                   ; $4361: $e8 $51
    ld l, c                                       ; $4363: $69
    db $fd                                        ; $4364: $fd
    ld l, l                                       ; $4365: $6d
    rst $38                                       ; $4366: $ff
    ldh [rSCY], a                                 ; $4367: $e0 $42

jr_059_4369:
    inc a                                         ; $4369: $3c
    ld sp, $1615                                  ; $436a: $31 $15 $16
    jr z, jr_059_430c                             ; $436d: $28 $9d

    jr nz, @+$01                                  ; $436f: $20 $ff

    ldh [$28], a                                  ; $4371: $e0 $28
    ld d, $15                                     ; $4373: $16 $15
    jp z, $c0ff                                   ; $4375: $ca $ff $c0

    ld [$7f6b], a                                 ; $4378: $ea $6b $7f

jr_059_437b:
    ld l, l                                       ; $437b: $6d
    ld l, l                                       ; $437c: $6d
    jr nc, jr_059_43e8                            ; $437d: $30 $69

    ld b, d                                       ; $437f: $42
    scf                                           ; $4380: $37
    dec d                                         ; $4381: $15
    pop bc                                        ; $4382: $c1
    ld [c], a                                     ; $4383: $e2
    ld a, [c]                                     ; $4384: $f2
    cp a                                          ; $4385: $bf
    ldh [$2a], a                                  ; $4386: $e0 $2a
    jp z, $40ff                                   ; $4388: $ca $ff $40

    add sp, $49                                   ; $438b: $e8 $49
    ld c, b                                       ; $438d: $48
    ld l, e                                       ; $438e: $6b
    ld l, e                                       ; $438f: $6b
    ld e, $c0                                     ; $4390: $1e $c0
    ldh [rBCPD], a                                ; $4392: $e0 $69
    add hl, sp                                    ; $4394: $39
    ld sp, $c00e                                  ; $4395: $31 $0e $c0
    db $e4                                        ; $4398: $e4
    add b                                         ; $4399: $80
    rst $38                                       ; $439a: $ff
    nop                                           ; $439b: $00
    jp hl                                         ; $439c: $e9


    rst $18                                       ; $439d: $df
    ld sp, $6b39                                  ; $439e: $31 $39 $6b
    jr nc, jr_059_43d3                            ; $43a1: $30 $30

    ret nz                                        ; $43a3: $c0

    ldh [$93], a                                  ; $43a4: $e0 $93
    sub l                                         ; $43a6: $95
    scf                                           ; $43a7: $37
    sbc [hl]                                      ; $43a8: $9e
    rrca                                          ; $43a9: $0f
    dec b                                         ; $43aa: $05
    rst $38                                       ; $43ab: $ff
    ldh [$0a], a                                  ; $43ac: $e0 $0a
    dec bc                                        ; $43ae: $0b
    nop                                           ; $43af: $00
    rst $38                                       ; $43b0: $ff
    ret nz                                        ; $43b1: $c0

    ld [$49ff], a                                 ; $43b2: $ea $ff $49

jr_059_43b5:
    ld [hl], $69                                  ; $43b5: $36 $69
    ld l, c                                       ; $43b7: $69
    ld l, e                                       ; $43b8: $6b
    ld l, e                                       ; $43b9: $6b
    ld l, c                                       ; $43ba: $69
    ld l, c                                       ; $43bb: $69
    rrca                                          ; $43bc: $0f
    sub h                                         ; $43bd: $94
    add [hl]                                      ; $43be: $86
    sub [hl]                                      ; $43bf: $96
    ld d, [hl]                                    ; $43c0: $56
    ld [hl], l                                    ; $43c1: $75
    jp nz, $ffc0                                  ; $43c2: $c2 $c0 $ff

    jp hl                                         ; $43c5: $e9


    add sp, $51                                   ; $43c6: $e8 $51
    ret nz                                        ; $43c8: $c0

    ei                                            ; $43c9: $fb
    ld b, a                                       ; $43ca: $47
    ld [hl-], a                                   ; $43cb: $32
    cp a                                          ; $43cc: $bf
    ld [c], a                                     ; $43cd: $e2
    jr nc, jr_059_4369                            ; $43ce: $30 $99

    sbc c                                         ; $43d0: $99
    ld l, b                                       ; $43d1: $68
    ld l, b                                       ; $43d2: $68

jr_059_43d3:
    pop de                                        ; $43d3: $d1
    ld l, b                                       ; $43d4: $68
    ld [hl], l                                    ; $43d5: $75
    pop bc                                        ; $43d6: $c1
    jp z, $e8ff                                   ; $43d7: $ca $ff $e8

    rst $20                                       ; $43da: $e7
    daa                                           ; $43db: $27
    db $10                                        ; $43dc: $10
    ret nz                                        ; $43dd: $c0

    ld c, c                                       ; $43de: $49
    ld c, b                                       ; $43df: $48
    ld a, [$e07e]                                 ; $43e0: $fa $7e $e0

Call_059_43e3:
    ld l, d                                       ; $43e3: $6a
    jp Jump_059_68e0                              ; $43e4: $c3 $e0 $68


    ld l, h                                       ; $43e7: $6c

jr_059_43e8:
    ld l, h                                       ; $43e8: $6c
    jr nc, jr_059_4455                            ; $43e9: $30 $6a

    db $d3                                        ; $43eb: $d3
    ld c, h                                       ; $43ec: $4c
    ld c, c                                       ; $43ed: $49
    jp z, $e8ff                                   ; $43ee: $ca $ff $e8

    rst $20                                       ; $43f1: $e7
    db $10                                        ; $43f2: $10
    cp a                                          ; $43f3: $bf
    pop hl                                        ; $43f4: $e1
    add hl, sp                                    ; $43f5: $39
    ld l, c                                       ; $43f6: $69
    ld a, h                                       ; $43f7: $7c
    dec sp                                        ; $43f8: $3b
    ret nz                                        ; $43f9: $c0

    jp nz, Jump_000_30e2                          ; $43fa: $c2 $e2 $30

    ld l, d                                       ; $43fd: $6a
    ld l, d                                       ; $43fe: $6a
    ld l, l                                       ; $43ff: $6d
    add hl, sp                                    ; $4400: $39
    jp z, $faff                                   ; $4401: $ca $ff $fa

    add sp, -$19                                  ; $4404: $e8 $e7
    jr nz, @-$3f                                  ; $4406: $20 $bf

    pop hl                                        ; $4408: $e1
    ld c, c                                       ; $4409: $49
    ld c, b                                       ; $440a: $48
    ld l, d                                       ; $440b: $6a
    ld l, l                                       ; $440c: $6d
    ld l, l                                       ; $440d: $6d
    call z, $e1c2                                 ; $440e: $cc $c2 $e1
    pop bc                                        ; $4411: $c1
    pop hl                                        ; $4412: $e1
    ld l, l                                       ; $4413: $6d
    ld d, d                                       ; $4414: $52
    jp z, $c0ff                                   ; $4415: $ca $ff $c0

    add sp, $20                                   ; $4418: $e8 $20
    jr z, jr_059_43b5                             ; $441a: $28 $99

    rla                                           ; $441c: $17
    ld a, h                                       ; $441d: $7c
    ret nz                                        ; $441e: $c0

    adc c                                         ; $441f: $89
    ldh [$30], a                                  ; $4420: $e0 $30
    jr nc, @+$03                                  ; $4422: $30 $01

    ldh [$b8], a                                  ; $4424: $e0 $b8
    ldh [$6d], a                                  ; $4426: $e0 $6d
    ret                                           ; $4428: $c9


    ld d, e                                       ; $4429: $53
    jp z, $c0ff                                   ; $442a: $ca $ff $c0

    ld [$7c15], a                                 ; $442d: $ea $15 $7c
    pop bc                                        ; $4430: $c1
    ret nz                                        ; $4431: $c0

    ldh [rOCPS], a                                ; $4432: $e0 $6a
    ld l, d                                       ; $4434: $6a
    sub a                                         ; $4435: $97
    ld l, h                                       ; $4436: $6c
    ld l, h                                       ; $4437: $6c
    ld l, h                                       ; $4438: $6c
    ld [hl], e                                    ; $4439: $73
    and b                                         ; $443a: $a0
    add e                                         ; $443b: $83
    jp z, $80ff                                   ; $443c: $ca $ff $80

    jp hl                                         ; $443f: $e9


    rrca                                          ; $4440: $0f
    ld a, $c3                                     ; $4441: $3e $c3
    add b                                         ; $4443: $80
    ld sp, $3a47                                  ; $4444: $31 $47 $3a
    ld [hl], $6a                                  ; $4447: $36 $6a
    ld b, h                                       ; $4449: $44
    pop hl                                        ; $444a: $e1
    ret nz                                        ; $444b: $c0

    ldh [$93], a                                  ; $444c: $e0 $93
    ld c, h                                       ; $444e: $4c
    add h                                         ; $444f: $84
    jp z, Jump_000_00ff                           ; $4450: $ca $ff $00

    add sp, $0e                                   ; $4453: $e8 $0e

jr_059_4455:
    ld b, e                                       ; $4455: $43
    add b                                         ; $4456: $80
    dec sp                                        ; $4457: $3b
    add c                                         ; $4458: $81
    ld b, a                                       ; $4459: $47
    rst $38                                       ; $445a: $ff
    ld a, [hl-]                                   ; $445b: $3a
    ld d, h                                       ; $445c: $54
    ld d, l                                       ; $445d: $55
    ld d, h                                       ; $445e: $54
    ld d, l                                       ; $445f: $55
    ld d, l                                       ; $4460: $55
    ld d, h                                       ; $4461: $54
    ld l, [hl]                                    ; $4462: $6e
    inc bc                                        ; $4463: $03
    ld [hl], h                                    ; $4464: $74
    add b                                         ; $4465: $80
    jp z, $ffff                                   ; $4466: $ca $ff $ff

    rst $38                                       ; $4469: $ff
    rst $38                                       ; $446a: $ff
    rst $38                                       ; $446b: $ff
    rst $38                                       ; $446c: $ff
    rst $38                                       ; $446d: $ff
    rst $38                                       ; $446e: $ff
    rst $38                                       ; $446f: $ff
    rst $38                                       ; $4470: $ff
    rst $38                                       ; $4471: $ff
    nop                                           ; $4472: $00
    rst $38                                       ; $4473: $ff
    rst $38                                       ; $4474: $ff
    rst $38                                       ; $4475: $ff
    rst $38                                       ; $4476: $ff
    rst $38                                       ; $4477: $ff
    rst $38                                       ; $4478: $ff
    rst $38                                       ; $4479: $ff
    rst $38                                       ; $447a: $ff
    rst $38                                       ; $447b: $ff
    rst $38                                       ; $447c: $ff
    rst $38                                       ; $447d: $ff
    rst $38                                       ; $447e: $ff
    rst $38                                       ; $447f: $ff
    rst $38                                       ; $4480: $ff
    rst $38                                       ; $4481: $ff
    rst $38                                       ; $4482: $ff
    nop                                           ; $4483: $00
    rst $38                                       ; $4484: $ff
    rst $38                                       ; $4485: $ff
    rst $38                                       ; $4486: $ff
    rst $38                                       ; $4487: $ff
    rst $38                                       ; $4488: $ff
    rst $38                                       ; $4489: $ff
    rst $38                                       ; $448a: $ff
    rst $38                                       ; $448b: $ff
    rst $38                                       ; $448c: $ff
    rst $38                                       ; $448d: $ff
    rst $38                                       ; $448e: $ff
    rst $38                                       ; $448f: $ff
    rst $38                                       ; $4490: $ff
    rst $38                                       ; $4491: $ff
    rst $38                                       ; $4492: $ff
    rst $38                                       ; $4493: $ff
    ld b, $ec                                     ; $4494: $06 $ec
    db $eb                                        ; $4496: $eb
    and b                                         ; $4497: $a0
    and c                                         ; $4498: $a1
    call c, $ffff                                 ; $4499: $dc $ff $ff
    rst $38                                       ; $449c: $ff
    rst $38                                       ; $449d: $ff
    rst $38                                       ; $449e: $ff
    rst $38                                       ; $449f: $ff
    rst $38                                       ; $44a0: $ff
    rst $38                                       ; $44a1: $ff
    rst $38                                       ; $44a2: $ff

Jump_059_44a3:
    nop                                           ; $44a3: $00
    rst $38                                       ; $44a4: $ff
    rst $38                                       ; $44a5: $ff
    rst $38                                       ; $44a6: $ff
    rst $38                                       ; $44a7: $ff
    rst $38                                       ; $44a8: $ff
    rst $38                                       ; $44a9: $ff
    rst $38                                       ; $44aa: $ff
    rst $38                                       ; $44ab: $ff
    rst $38                                       ; $44ac: $ff
    rst $38                                       ; $44ad: $ff
    rst $38                                       ; $44ae: $ff
    rst $38                                       ; $44af: $ff
    rst $38                                       ; $44b0: $ff
    rst $38                                       ; $44b1: $ff
    rst $38                                       ; $44b2: $ff
    rst $38                                       ; $44b3: $ff
    nop                                           ; $44b4: $00
    rst $38                                       ; $44b5: $ff
    rst $38                                       ; $44b6: $ff
    rst $38                                       ; $44b7: $ff
    rst $38                                       ; $44b8: $ff
    rst $38                                       ; $44b9: $ff
    rst $38                                       ; $44ba: $ff
    rst $38                                       ; $44bb: $ff
    rst $38                                       ; $44bc: $ff
    rst $38                                       ; $44bd: $ff
    rst $38                                       ; $44be: $ff
    rst $38                                       ; $44bf: $ff
    rst $38                                       ; $44c0: $ff
    rst $38                                       ; $44c1: $ff
    rst $38                                       ; $44c2: $ff
    rst $38                                       ; $44c3: $ff
    rst $38                                       ; $44c4: $ff
    nop                                           ; $44c5: $00
    rst $38                                       ; $44c6: $ff
    rst $38                                       ; $44c7: $ff
    rst $38                                       ; $44c8: $ff
    rst $38                                       ; $44c9: $ff
    rst $38                                       ; $44ca: $ff
    rst $38                                       ; $44cb: $ff
    rst $38                                       ; $44cc: $ff
    rst $38                                       ; $44cd: $ff
    rst $38                                       ; $44ce: $ff
    rst $38                                       ; $44cf: $ff
    rst $38                                       ; $44d0: $ff
    rst $38                                       ; $44d1: $ff
    rst $38                                       ; $44d2: $ff
    rst $38                                       ; $44d3: $ff
    rst $38                                       ; $44d4: $ff
    rst $38                                       ; $44d5: $ff
    nop                                           ; $44d6: $00
    rst $38                                       ; $44d7: $ff
    rst $38                                       ; $44d8: $ff
    rst $38                                       ; $44d9: $ff
    rst $38                                       ; $44da: $ff
    rst $38                                       ; $44db: $ff
    rst $38                                       ; $44dc: $ff
    rst $38                                       ; $44dd: $ff
    rst $38                                       ; $44de: $ff
    rst $38                                       ; $44df: $ff
    rst $38                                       ; $44e0: $ff
    rst $38                                       ; $44e1: $ff
    rst $38                                       ; $44e2: $ff
    rst $38                                       ; $44e3: $ff
    rst $38                                       ; $44e4: $ff
    rst $38                                       ; $44e5: $ff
    rst $38                                       ; $44e6: $ff
    nop                                           ; $44e7: $00
    rst $38                                       ; $44e8: $ff
    rst $38                                       ; $44e9: $ff
    rst $38                                       ; $44ea: $ff
    rst $38                                       ; $44eb: $ff
    rst $38                                       ; $44ec: $ff
    rst $38                                       ; $44ed: $ff
    rst $38                                       ; $44ee: $ff
    rst $38                                       ; $44ef: $ff
    rst $38                                       ; $44f0: $ff
    rst $38                                       ; $44f1: $ff
    rst $38                                       ; $44f2: $ff
    rst $38                                       ; $44f3: $ff
    rst $38                                       ; $44f4: $ff
    rst $38                                       ; $44f5: $ff
    rst $38                                       ; $44f6: $ff
    rst $38                                       ; $44f7: $ff
    nop                                           ; $44f8: $00
    rst $38                                       ; $44f9: $ff
    rst $38                                       ; $44fa: $ff
    rst $38                                       ; $44fb: $ff
    rst $38                                       ; $44fc: $ff
    rst $38                                       ; $44fd: $ff
    rst $38                                       ; $44fe: $ff
    rst $38                                       ; $44ff: $ff
    rst $38                                       ; $4500: $ff
    rst $38                                       ; $4501: $ff
    rst $38                                       ; $4502: $ff
    rst $38                                       ; $4503: $ff
    rst $38                                       ; $4504: $ff
    rst $38                                       ; $4505: $ff
    rst $38                                       ; $4506: $ff
    rst $38                                       ; $4507: $ff
    rst $38                                       ; $4508: $ff
    nop                                           ; $4509: $00
    rst $38                                       ; $450a: $ff
    rst $38                                       ; $450b: $ff
    rst $38                                       ; $450c: $ff
    rst $38                                       ; $450d: $ff
    rst $38                                       ; $450e: $ff
    rst $38                                       ; $450f: $ff
    rst $38                                       ; $4510: $ff
    rst $38                                       ; $4511: $ff
    rst $38                                       ; $4512: $ff
    rst $38                                       ; $4513: $ff
    rst $38                                       ; $4514: $ff
    rst $38                                       ; $4515: $ff
    rst $38                                       ; $4516: $ff
    rst $38                                       ; $4517: $ff
    rst $38                                       ; $4518: $ff
    rst $38                                       ; $4519: $ff
    nop                                           ; $451a: $00
    rst $38                                       ; $451b: $ff
    rst $38                                       ; $451c: $ff
    rst $38                                       ; $451d: $ff
    rst $38                                       ; $451e: $ff
    rst $38                                       ; $451f: $ff
    rst $38                                       ; $4520: $ff
    rst $38                                       ; $4521: $ff
    rst $38                                       ; $4522: $ff
    rst $38                                       ; $4523: $ff
    rst $38                                       ; $4524: $ff
    rst $38                                       ; $4525: $ff
    rst $38                                       ; $4526: $ff
    rst $38                                       ; $4527: $ff
    rst $38                                       ; $4528: $ff
    rst $38                                       ; $4529: $ff
    rst $38                                       ; $452a: $ff
    nop                                           ; $452b: $00
    rst $38                                       ; $452c: $ff
    db $e3                                        ; $452d: $e3
    nop                                           ; $452e: $00
    nop                                           ; $452f: $00
    nop                                           ; $4530: $00
    and l                                         ; $4531: $a5
    nop                                           ; $4532: $00
    rst $38                                       ; $4533: $ff
    push hl                                       ; $4534: $e5
    ld [hl-], a                                   ; $4535: $32
    or $e6                                        ; $4536: $f6 $e6
    rst $30                                       ; $4538: $f7
    rst $20                                       ; $4539: $e7
    dec [hl]                                      ; $453a: $35
    db $ec                                        ; $453b: $ec
    xor $37                                       ; $453c: $ee $37
    db $ec                                        ; $453e: $ec
    jp c, $c7f0                                   ; $453f: $da $f0 $c7

    add sp, $33                                   ; $4542: $e8 $33
    ld sp, $f2e0                                  ; $4544: $31 $e0 $f2
    ld [hl], $30                                  ; $4547: $36 $30
    scf                                           ; $4549: $37
    cp a                                          ; $454a: $bf
    ld h, $20                                     ; $454b: $26 $20
    daa                                           ; $454d: $27
    db $10                                        ; $454e: $10
    ld d, $17                                     ; $454f: $16 $17
    jp nz, Jump_000_34f6                          ; $4551: $c2 $f6 $34

    rst $38                                       ; $4554: $ff
    ld [hl], $32                                  ; $4555: $36 $32
    jr nc, jr_059_4590                            ; $4557: $30 $37

    ld sp, $3133                                  ; $4559: $31 $33 $31
    inc sp                                        ; $455c: $33
    nop                                           ; $455d: $00
    and b                                         ; $455e: $a0
    ei                                            ; $455f: $fb
    rst $38                                       ; $4560: $ff
    rst $28                                       ; $4561: $ef
    nop                                           ; $4562: $00
    nop                                           ; $4563: $00
    nop                                           ; $4564: $00
    ld l, l                                       ; $4565: $6d
    ld b, l                                       ; $4566: $45
    sbc l                                         ; $4567: $9d
    ld b, l                                       ; $4568: $45
    ld b, c                                       ; $4569: $41
    ld c, b                                       ; $456a: $48
    dec h                                         ; $456b: $25
    ld c, d                                       ; $456c: $4a
    ld hl, sp+$03                                 ; $456d: $f8 $03
    ld c, h                                       ; $456f: $4c
    inc bc                                        ; $4570: $03
    ld d, e                                       ; $4571: $53
    ld bc, $008a                                  ; $4572: $01 $8a $00
    ldh a, [$03]                                  ; $4575: $f0 $03
    ld hl, sp+$03                                 ; $4577: $f8 $03
    ld c, h                                       ; $4579: $4c
    inc bc                                        ; $457a: $03
    ld d, e                                       ; $457b: $53
    ld bc, $47ff                                  ; $457c: $01 $ff $47
    ldh a, [rP1]                                  ; $457f: $f0 $00
    ld e, l                                       ; $4581: $5d
    add hl, de                                    ; $4582: $19
    ld c, h                                       ; $4583: $4c
    inc bc                                        ; $4584: $03
    ld [$0825], sp                                ; $4585: $08 $25 $08
    dec h                                         ; $4588: $25
    ld [$0825], sp                                ; $4589: $08 $25 $08
    dec h                                         ; $458c: $25
    ld [$0825], sp                                ; $458d: $08 $25 $08

jr_059_4590:
    dec h                                         ; $4590: $25
    ld [$0825], sp                                ; $4591: $08 $25 $08
    dec h                                         ; $4594: $25
    ld [$0825], sp                                ; $4595: $08 $25 $08
    dec h                                         ; $4598: $25
    ld [$0825], sp                                ; $4599: $08 $25 $08
    dec h                                         ; $459c: $25
    ld [hl], a                                    ; $459d: $77
    ld c, e                                       ; $459e: $4b
    ld a, [bc]                                    ; $459f: $0a
    dec bc                                        ; $45a0: $0b
    rst $38                                       ; $45a1: $ff
    ldh [$2b], a                                  ; $45a2: $e0 $2b
    ld l, e                                       ; $45a4: $6b
    ld c, e                                       ; $45a5: $4b
    rst $38                                       ; $45a6: $ff
    pop hl                                        ; $45a7: $e1
    ld e, $f5                                     ; $45a8: $1e $f5
    ldh [$4c], a                                  ; $45aa: $e0 $4c
    ld c, h                                       ; $45ac: $4c
    ld c, h                                       ; $45ad: $4c
    inc c                                         ; $45ae: $0c
    rst $38                                       ; $45af: $ff
    pop hl                                        ; $45b0: $e1
    ld sp, hl                                     ; $45b1: $f9
    ldh [$f6], a                                  ; $45b2: $e0 $f6
    pop hl                                        ; $45b4: $e1
    ld [hl], b                                    ; $45b5: $70
    ld a, [c]                                     ; $45b6: $f2
    db $e3                                        ; $45b7: $e3
    db $ec                                        ; $45b8: $ec
    db $e4                                        ; $45b9: $e4
    ei                                            ; $45ba: $fb
    pop af                                        ; $45bb: $f1
    set 4, c                                      ; $45bc: $cb $e1
    dec hl                                        ; $45be: $2b
    dec hl                                        ; $45bf: $2b
    ld l, e                                       ; $45c0: $6b
    cp e                                          ; $45c1: $bb
    pop hl                                        ; $45c2: $e1
    ei                                            ; $45c3: $fb
    dec bc                                        ; $45c4: $0b
    dec hl                                        ; $45c5: $2b
    cp a                                          ; $45c6: $bf
    ldh [$2c], a                                  ; $45c7: $e0 $2c
    ld c, h                                       ; $45c9: $4c
    ld c, h                                       ; $45ca: $4c
    inc l                                         ; $45cb: $2c
    inc c                                         ; $45cc: $0c
    nop                                           ; $45cd: $00
    call nz, $b6e2                                ; $45ce: $c4 $e2 $b6
    ld [c], a                                     ; $45d1: $e2
    or c                                          ; $45d2: $b1
    ldh [$f5], a                                  ; $45d3: $e0 $f5
    db $e3                                        ; $45d5: $e3
    or c                                          ; $45d6: $b1
    db $e3                                        ; $45d7: $e3
    cp c                                          ; $45d8: $b9
    rst $28                                       ; $45d9: $ef
    add d                                         ; $45da: $82
    db $e3                                        ; $45db: $e3
    cp l                                          ; $45dc: $bd
    ldh [rSC], a                                  ; $45dd: $e0 $02
    cp a                                          ; $45df: $bf
    db $e4                                        ; $45e0: $e4
    ld c, e                                       ; $45e1: $4b
    add b                                         ; $45e2: $80
    ld [c], a                                     ; $45e3: $e2
    ld a, h                                       ; $45e4: $7c
    db $e4                                        ; $45e5: $e4
    adc d                                         ; $45e6: $8a

jr_059_45e7:
    ld [$e2b6], a                                 ; $45e7: $ea $b6 $e2
    ret nz                                        ; $45ea: $c0

    ld a, [c]                                     ; $45eb: $f2
    pop bc                                        ; $45ec: $c1
    pop hl                                        ; $45ed: $e1
    adc h                                         ; $45ee: $8c
    ret nz                                        ; $45ef: $c0

    ld [c], a                                     ; $45f0: $e2
    ld a, [hl]                                    ; $45f1: $7e
    ldh [rWX], a                                  ; $45f2: $e0 $4b
    inc l                                         ; $45f4: $2c
    ld d, h                                       ; $45f5: $54
    and $b7                                       ; $45f6: $e6 $b7
    push af                                       ; $45f8: $f5
    inc [hl]                                      ; $45f9: $34
    db $eb                                        ; $45fa: $eb
    inc l                                         ; $45fb: $2c
    adc a                                         ; $45fc: $8f
    ld c, h                                       ; $45fd: $4c
    dec hl                                        ; $45fe: $2b
    dec hl                                        ; $45ff: $2b
    ld c, e                                       ; $4600: $4b
    ret nz                                        ; $4601: $c0

    ldh [rSC], a                                  ; $4602: $e0 $02
    ld [c], a                                     ; $4604: $e2
    jr c, jr_059_45e7                             ; $4605: $38 $e0

    ld l, h                                       ; $4607: $6c
    ret nc                                        ; $4608: $d0

    add l                                         ; $4609: $85
    db $e4                                        ; $460a: $e4
    ld a, $e4                                     ; $460b: $3e $e4
    ccf                                           ; $460d: $3f
    and $72                                       ; $460e: $e6 $72
    rst $20                                       ; $4610: $e7
    inc l                                         ; $4611: $2c
    ld sp, hl                                     ; $4612: $f9
    ld [$2c0c], a                                 ; $4613: $ea $0c $2c
    jr @-$7b                                      ; $4616: $18 $83

    ldh [$c0], a                                  ; $4618: $e0 $c0
    pop hl                                        ; $461a: $e1
    db $fd                                        ; $461b: $fd
    jp nz, Jump_000_0b0b                          ; $461c: $c2 $0b $0b

    ld b, a                                       ; $461f: $47
    db $e4                                        ; $4620: $e4
    set 4, [hl]                                   ; $4621: $cb $e6
    ld a, [$7ee8]                                 ; $4623: $fa $e8 $7e
    cp c                                          ; $4626: $b9
    db $d3                                        ; $4627: $d3
    inc l                                         ; $4628: $2c
    ld c, h                                       ; $4629: $4c
    dec bc                                        ; $462a: $0b
    dec hl                                        ; $462b: $2b
    dec bc                                        ; $462c: $0b
    ld l, e                                       ; $462d: $6b
    ld a, a                                       ; $462e: $7f
    jp nz, $fbc0                                  ; $462f: $c2 $c0 $fb

    ret nz                                        ; $4632: $c0

    add c                                         ; $4633: $81
    db $e3                                        ; $4634: $e3
    rst $00                                       ; $4635: $c7
    call nz, $e40d                                ; $4636: $c4 $0d $e4
    ld a, [$79e4]                                 ; $4639: $fa $e4 $79
    call nc, $2c2c                                ; $463c: $d4 $2c $2c
    nop                                           ; $463f: $00
    add a                                         ; $4640: $87
    ret nz                                        ; $4641: $c0

    ret nz                                        ; $4642: $c0

    db $e3                                        ; $4643: $e3
    ld a, c                                       ; $4644: $79
    ret nz                                        ; $4645: $c0

    jp nc, Jump_059_40c7                          ; $4646: $d2 $c7 $40

    rst $00                                       ; $4649: $c7
    inc a                                         ; $464a: $3c
    call nz, $d63b                                ; $464b: $c4 $3b $d6
    cp l                                          ; $464e: $bd
    pop bc                                        ; $464f: $c1
    nop                                           ; $4650: $00
    add b                                         ; $4651: $80
    push hl                                       ; $4652: $e5
    ld [bc], a                                    ; $4653: $02
    db $eb                                        ; $4654: $eb
    adc e                                         ; $4655: $8b
    add $01                                       ; $4656: $c6 $01
    add sp, -$40                                  ; $4658: $e8 $c0
    di                                            ; $465a: $f3
    ret nz                                        ; $465b: $c0

    pop bc                                        ; $465c: $c1
    ret nz                                        ; $465d: $c0

    and $40                                       ; $465e: $e6 $40
    call $ac00                                    ; $4660: $cd $00 $ac
    and l                                         ; $4663: $a5
    add b                                         ; $4664: $80
    rst $30                                       ; $4665: $f7
    cp h                                          ; $4666: $bc
    pop bc                                        ; $4667: $c1
    ld a, c                                       ; $4668: $79
    and b                                         ; $4669: $a0
    ld b, b                                       ; $466a: $40
    rst $20                                       ; $466b: $e7
    ld b, b                                       ; $466c: $40
    ret                                           ; $466d: $c9


    ld b, $c3                                     ; $466e: $06 $c3
    ld a, e                                       ; $4670: $7b
    and l                                         ; $4671: $a5
    nop                                           ; $4672: $00
    add c                                         ; $4673: $81
    jp nz, $c583                                  ; $4674: $c2 $83 $c5

    ret nz                                        ; $4677: $c0

    xor $d4                                       ; $4678: $ee $d4
    and $40                                       ; $467a: $e6 $40
    rst $00                                       ; $467c: $c7
    scf                                           ; $467d: $37
    and e                                         ; $467e: $a3
    xor d                                         ; $467f: $aa
    and h                                         ; $4680: $a4
    rst $00                                       ; $4681: $c7
    ld [$7c02], a                                 ; $4682: $ea $02 $7c
    and [hl]                                      ; $4685: $a6
    dec hl                                        ; $4686: $2b
    cp [hl]                                       ; $4687: $be
    and d                                         ; $4688: $a2
    cp h                                          ; $4689: $bc
    and e                                         ; $468a: $a3
    dec a                                         ; $468b: $3d
    ret nz                                        ; $468c: $c0

    ld b, b                                       ; $468d: $40
    res 0, b                                      ; $468e: $cb $80
    db $ec                                        ; $4690: $ec
    ret nz                                        ; $4691: $c0

    ld a, [c]                                     ; $4692: $f2
    nop                                           ; $4693: $00
    ret nz                                        ; $4694: $c0

    and h                                         ; $4695: $a4
    or h                                          ; $4696: $b4
    add b                                         ; $4697: $80
    or a                                          ; $4698: $b7
    add b                                         ; $4699: $80
    ld c, h                                       ; $469a: $4c
    call nz, $c540                                ; $469b: $c4 $40 $c5
    ld [hl], $c8                                  ; $469e: $36 $c8
    xor h                                         ; $46a0: $ac
    add d                                         ; $46a1: $82
    ret nz                                        ; $46a2: $c0

    and b                                         ; $46a3: $a0
    ld hl, $ff2c                                  ; $46a4: $21 $2c $ff
    ldh [$c0], a                                  ; $46a7: $e0 $c0
    xor $fd                                       ; $46a9: $ee $fd
    add d                                         ; $46ab: $82
    ld [hl], a                                    ; $46ac: $77
    add b                                         ; $46ad: $80
    ld a, [bc]                                    ; $46ae: $0a
    add c                                         ; $46af: $81
    add h                                         ; $46b0: $84
    ld hl, sp-$76                                 ; $46b1: $f8 $8a
    and b                                         ; $46b3: $a0
    ld a, [hl]                                    ; $46b4: $7e
    add h                                         ; $46b5: $84
    or b                                          ; $46b6: $b0
    add c                                         ; $46b7: $81
    ret nz                                        ; $46b8: $c0

    db $ed                                        ; $46b9: $ed
    adc d                                         ; $46ba: $8a
    ld [c], a                                     ; $46bb: $e2
    ret nz                                        ; $46bc: $c0

    add c                                         ; $46bd: $81
    ld l, e                                       ; $46be: $6b
    cp e                                          ; $46bf: $bb
    add b                                         ; $46c0: $80
    ld a, [bc]                                    ; $46c1: $0a
    nop                                           ; $46c2: $00
    scf                                           ; $46c3: $37
    add b                                         ; $46c4: $80
    ld a, a                                       ; $46c5: $7f
    and l                                         ; $46c6: $a5
    cp $84                                        ; $46c7: $fe $84
    ld bc, $cde9                                  ; $46c9: $01 $e9 $cd
    and l                                         ; $46cc: $a5
    add c                                         ; $46cd: $81
    and $62                                       ; $46ce: $e6 $62
    adc b                                         ; $46d0: $88
    ld d, l                                       ; $46d1: $55
    adc b                                         ; $46d2: $88
    nop                                           ; $46d3: $00
    adc e                                         ; $46d4: $8b
    jp z, $c981                                   ; $46d5: $ca $81 $c9

    db $e3                                        ; $46d8: $e3
    ld h, e                                       ; $46d9: $63
    ld b, c                                       ; $46da: $41
    db $eb                                        ; $46db: $eb
    push de                                       ; $46dc: $d5
    ld l, d                                       ; $46dd: $6a
    rst $00                                       ; $46de: $c7
    ld l, c                                       ; $46df: $69
    ld b, e                                       ; $46e0: $43
    add $f7                                       ; $46e1: $c6 $f7
    rst $00                                       ; $46e3: $c7

Jump_059_46e4:
    add b                                         ; $46e4: $80
    ei                                            ; $46e5: $fb
    adc [hl]                                      ; $46e6: $8e
    push de                                       ; $46e7: $d5
    ld l, a                                       ; $46e8: $6f
    add a                                         ; $46e9: $87
    xor b                                         ; $46ea: $a8
    cp b                                          ; $46eb: $b8
    add h                                         ; $46ec: $84
    dec a                                         ; $46ed: $3d
    and a                                         ; $46ee: $a7
    or b                                          ; $46ef: $b0
    add e                                         ; $46f0: $83
    jp nz, Jump_000_2cc1                          ; $46f1: $c2 $c1 $2c

    nop                                           ; $46f4: $00
    ld a, c                                       ; $46f5: $79
    add l                                         ; $46f6: $85
    push de                                       ; $46f7: $d5
    ld l, e                                       ; $46f8: $6b
    ld a, [c]                                     ; $46f9: $f2
    db $ed                                        ; $46fa: $ed
    rst $30                                       ; $46fb: $f7
    call z, Call_059_6322                         ; $46fc: $cc $22 $63
    ret nz                                        ; $46ff: $c0

    ld [$cd9e], a                                 ; $4700: $ea $9e $cd
    rst $00                                       ; $4703: $c7
    ld l, b                                       ; $4704: $68
    nop                                           ; $4705: $00
    add d                                         ; $4706: $82
    add [hl]                                      ; $4707: $86
    ld bc, $bfec                                  ; $4708: $01 $ec $bf
    rst $08                                       ; $470b: $cf
    sub l                                         ; $470c: $95
    xor c                                         ; $470d: $a9
    add a                                         ; $470e: $87
    xor b                                         ; $470f: $a8
    add l                                         ; $4710: $85
    call $8439                                    ; $4711: $cd $39 $84
    nop                                           ; $4714: $00
    ret                                           ; $4715: $c9


    nop                                           ; $4716: $00
    push de                                       ; $4717: $d5
    ld l, l                                       ; $4718: $6d
    add a                                         ; $4719: $87
    xor d                                         ; $471a: $aa
    ld a, e                                       ; $471b: $7b
    ret                                           ; $471c: $c9


    xor c                                         ; $471d: $a9
    ld h, [hl]                                    ; $471e: $66
    ld [hl-], a                                   ; $471f: $32
    ld l, [hl]                                    ; $4720: $6e
    push de                                       ; $4721: $d5
    ld l, c                                       ; $4722: $69
    add a                                         ; $4723: $87
    xor e                                         ; $4724: $ab
    cp l                                          ; $4725: $bd
    adc b                                         ; $4726: $88
    nop                                           ; $4727: $00
    jp c, $80eb                                   ; $4728: $da $eb $80

    xor c                                         ; $472b: $a9
    sub l                                         ; $472c: $95
    xor d                                         ; $472d: $aa
    add a                                         ; $472e: $87
    xor h                                         ; $472f: $ac
    add a                                         ; $4730: $87
    add sp, -$4b                                  ; $4731: $e8 $b5
    ld l, b                                       ; $4733: $68
    cp a                                          ; $4734: $bf
    xor e                                         ; $4735: $ab
    reti                                          ; $4736: $d9


    db $ec                                        ; $4737: $ec
    nop                                           ; $4738: $00
    ld d, d                                       ; $4739: $52
    db $eb                                        ; $473a: $eb
    cp h                                          ; $473b: $bc
    xor b                                         ; $473c: $a8
    ld l, l                                       ; $473d: $6d
    ld c, b                                       ; $473e: $48
    inc bc                                        ; $473f: $03
    xor b                                         ; $4740: $a8
    sub l                                         ; $4741: $95
    xor h                                         ; $4742: $ac
    ld a, [c]                                     ; $4743: $f2
    db $ec                                        ; $4744: $ec
    ld b, b                                       ; $4745: $40
    add sp, $71                                   ; $4746: $e8 $71
    push hl                                       ; $4748: $e5
    nop                                           ; $4749: $00
    ccf                                           ; $474a: $3f
    jp $f600                                      ; $474b: $c3 $00 $f6


    ld c, b                                       ; $474e: $48
    ld l, $bd                                     ; $474f: $2e $bd
    jp hl                                         ; $4751: $e9


    dec [hl]                                      ; $4752: $35
    ld b, l                                       ; $4753: $45
    pop bc                                        ; $4754: $c1
    db $ec                                        ; $4755: $ec
    sbc c                                         ; $4756: $99
    db $eb                                        ; $4757: $eb
    ld [$0068], sp                                ; $4758: $08 $68 $00
    add a                                         ; $475b: $87
    ld l, b                                       ; $475c: $68
    ld b, b                                       ; $475d: $40
    and [hl]                                      ; $475e: $a6
    and $01                                       ; $475f: $e6 $01
    push bc                                       ; $4761: $c5
    xor h                                         ; $4762: $ac
    sbc [hl]                                      ; $4763: $9e
    xor d                                         ; $4764: $aa
    ld [de], a                                    ; $4765: $12
    call $d35a                                    ; $4766: $cd $5a $d3
    nop                                           ; $4769: $00
    db $f4                                        ; $476a: $f4
    nop                                           ; $476b: $00
    ld [$0471], sp                                ; $476c: $08 $71 $04
    xor b                                         ; $476f: $a8
    add b                                         ; $4770: $80
    add [hl]                                      ; $4771: $86
    ld [hl], c                                    ; $4772: $71
    dec c                                         ; $4773: $0d
    ccf                                           ; $4774: $3f
    call z, Call_000_2693                         ; $4775: $cc $93 $26
    ld l, [hl]                                    ; $4778: $6e
    and a                                         ; $4779: $a7
    ld [hl], h                                    ; $477a: $74
    xor d                                         ; $477b: $aa
    nop                                           ; $477c: $00
    jp Jump_000_0180                              ; $477d: $c3 $80 $01


    jp z, Jump_000_2815                           ; $4780: $ca $15 $28

    add c                                         ; $4783: $81
    xor d                                         ; $4784: $aa
    cp b                                          ; $4785: $b8
    ld c, b                                       ; $4786: $48
    ld a, d                                       ; $4787: $7a
    ld c, d                                       ; $4788: $4a
    ld bc, $d5ce                                  ; $4789: $01 $ce $d5
    ld c, d                                       ; $478c: $4a
    nop                                           ; $478d: $00
    add c                                         ; $478e: $81
    and a                                         ; $478f: $a7
    pop af                                        ; $4790: $f1
    ld l, [hl]                                    ; $4791: $6e
    ld b, h                                       ; $4792: $44
    add c                                         ; $4793: $81
    add b                                         ; $4794: $80
    ld h, e                                       ; $4795: $63
    ld b, b                                       ; $4796: $40
    or e                                          ; $4797: $b3
    add [hl]                                      ; $4798: $86
    add [hl]                                      ; $4799: $86
    db $e3                                        ; $479a: $e3
    ld [hl], c                                    ; $479b: $71
    or a                                          ; $479c: $b7
    ld h, $00                                     ; $479d: $26 $00
    add c                                         ; $479f: $81
    ld l, a                                       ; $47a0: $6f
    cp $69                                        ; $47a1: $fe $69
    inc c                                         ; $47a3: $0c
    call z, Call_000_2c78                         ; $47a4: $cc $78 $2c
    add hl, sp                                    ; $47a7: $39
    ld l, $40                                     ; $47a8: $2e $40
    xor l                                         ; $47aa: $ad
    inc de                                        ; $47ab: $13
    ld c, a                                       ; $47ac: $4f
    cp [hl]                                       ; $47ad: $be
    xor e                                         ; $47ae: $ab
    nop                                           ; $47af: $00
    jp nz, Jump_059_408d                          ; $47b0: $c2 $8d $40

    xor [hl]                                      ; $47b3: $ae
    and $ac                                       ; $47b4: $e6 $ac
    and e                                         ; $47b6: $a3
    ret z                                         ; $47b7: $c8

    or $05                                        ; $47b8: $f6 $05
    ld [bc], a                                    ; $47ba: $02
    ld c, e                                       ; $47bb: $4b
    xor b                                         ; $47bc: $a8
    ld d, $00                                     ; $47bd: $16 $00
    ld h, [hl]                                    ; $47bf: $66
    nop                                           ; $47c0: $00
    ld a, b                                       ; $47c1: $78
    daa                                           ; $47c2: $27
    ld a, d                                       ; $47c3: $7a
    add hl, de                                    ; $47c4: $19
    cp a                                          ; $47c5: $bf
    pop af                                        ; $47c6: $f1
    ld a, b                                       ; $47c7: $78
    inc l                                         ; $47c8: $2c
    inc a                                         ; $47c9: $3c
    jr c, jr_059_47ee                             ; $47ca: $38 $22

    rrca                                          ; $47cc: $0f
    sbc $22                                       ; $47cd: $de $22
    db $e3                                        ; $47cf: $e3
    ld [hl], d                                    ; $47d0: $72
    nop                                           ; $47d1: $00
    rst $38                                       ; $47d2: $ff
    rst $38                                       ; $47d3: $ff
    and e                                         ; $47d4: $a3
    push de                                       ; $47d5: $d5
    ld a, a                                       ; $47d6: $7f
    rst $38                                       ; $47d7: $ff
    add b                                         ; $47d8: $80
    jp hl                                         ; $47d9: $e9


    add c                                         ; $47da: $81
    ld c, a                                       ; $47db: $4f
    add b                                         ; $47dc: $80
    rst $38                                       ; $47dd: $ff
    ld b, b                                       ; $47de: $40
    ldh a, [$64]                                  ; $47df: $f0 $64
    ld c, b                                       ; $47e1: $48
    nop                                           ; $47e2: $00
    add b                                         ; $47e3: $80
    rst $38                                       ; $47e4: $ff
    db $e3                                        ; $47e5: $e3
    or b                                          ; $47e6: $b0
    ld sp, hl                                     ; $47e7: $f9
    ld b, $7f                                     ; $47e8: $06 $7f
    and [hl]                                      ; $47ea: $a6
    rst $38                                       ; $47eb: $ff
    rst $38                                       ; $47ec: $ff
    pop bc                                        ; $47ed: $c1

jr_059_47ee:
    ld b, [hl]                                    ; $47ee: $46
    ret nz                                        ; $47ef: $c0

    db $ec                                        ; $47f0: $ec
    rst $38                                       ; $47f1: $ff
    rst $38                                       ; $47f2: $ff
    nop                                           ; $47f3: $00
    ld [hl], e                                    ; $47f4: $73
    call nc, $bfcd                                ; $47f5: $d4 $cd $bf
    rst $38                                       ; $47f8: $ff
    rst $38                                       ; $47f9: $ff
    rst $38                                       ; $47fa: $ff
    rst $38                                       ; $47fb: $ff
    sub [hl]                                      ; $47fc: $96
    rst $38                                       ; $47fd: $ff
    reti                                          ; $47fe: $d9


    or e                                          ; $47ff: $b3
    rst $38                                       ; $4800: $ff
    rst $38                                       ; $4801: $ff
    rst $38                                       ; $4802: $ff
    rst $38                                       ; $4803: $ff
    nop                                           ; $4804: $00
    rst $38                                       ; $4805: $ff
    rst $38                                       ; $4806: $ff
    rst $38                                       ; $4807: $ff
    rst $38                                       ; $4808: $ff
    scf                                           ; $4809: $37
    db $eb                                        ; $480a: $eb
    call c, $ffff                                 ; $480b: $dc $ff $ff
    rst $38                                       ; $480e: $ff
    rst $38                                       ; $480f: $ff
    rst $38                                       ; $4810: $ff
    rst $38                                       ; $4811: $ff
    rst $38                                       ; $4812: $ff
    rst $38                                       ; $4813: $ff
    rst $38                                       ; $4814: $ff
    nop                                           ; $4815: $00
    rst $38                                       ; $4816: $ff
    rst $38                                       ; $4817: $ff
    rst $38                                       ; $4818: $ff
    rst $38                                       ; $4819: $ff
    rst $38                                       ; $481a: $ff
    rst $38                                       ; $481b: $ff
    rst $38                                       ; $481c: $ff
    rst $38                                       ; $481d: $ff
    rst $38                                       ; $481e: $ff
    rst $38                                       ; $481f: $ff
    rst $38                                       ; $4820: $ff
    rst $38                                       ; $4821: $ff
    rst $38                                       ; $4822: $ff
    rst $38                                       ; $4823: $ff
    rst $38                                       ; $4824: $ff
    rst $38                                       ; $4825: $ff
    nop                                           ; $4826: $00
    rst $38                                       ; $4827: $ff
    rst $38                                       ; $4828: $ff
    rst $38                                       ; $4829: $ff
    rst $38                                       ; $482a: $ff
    rst $38                                       ; $482b: $ff
    rst $38                                       ; $482c: $ff
    rst $38                                       ; $482d: $ff
    rst $38                                       ; $482e: $ff
    rst $38                                       ; $482f: $ff
    rst $38                                       ; $4830: $ff
    nop                                           ; $4831: $00
    cp a                                          ; $4832: $bf
    rst $38                                       ; $4833: $ff
    rst $38                                       ; $4834: $ff
    rst $38                                       ; $4835: $ff
    rst $38                                       ; $4836: $ff
    nop                                           ; $4837: $00
    rst $38                                       ; $4838: $ff
    rst $38                                       ; $4839: $ff
    rst $38                                       ; $483a: $ff
    rst $38                                       ; $483b: $ff
    ld e, e                                       ; $483c: $5b
    ld [hl], e                                    ; $483d: $73
    nop                                           ; $483e: $00
    nop                                           ; $483f: $00
    nop                                           ; $4840: $00
    rst $38                                       ; $4841: $ff
    ld e, e                                       ; $4842: $5b
    ld e, d                                       ; $4843: $5a
    ld e, e                                       ; $4844: $5b
    ld e, e                                       ; $4845: $5b
    ld e, h                                       ; $4846: $5c
    ld e, l                                       ; $4847: $5d
    ld sp, $ff3c                                  ; $4848: $31 $3c $ff
    ld d, h                                       ; $484b: $54
    ld d, l                                       ; $484c: $55
    ld d, h                                       ; $484d: $54
    ld d, l                                       ; $484e: $55
    inc a                                         ; $484f: $3c
    ld sp, $3131                                  ; $4850: $31 $31 $31
    rra                                           ; $4853: $1f
    rla                                           ; $4854: $17
    jr z, jr_059_4877                             ; $4855: $28 $20

    jr nz, jr_059_4859                            ; $4857: $20 $00

jr_059_4859:
    rst $38                                       ; $4859: $ff
    rst $38                                       ; $485a: $ff
    rst $20                                       ; $485b: $e7
    and $c2                                       ; $485c: $e6 $c2
    ld [c], a                                     ; $485e: $e2
    xor a                                         ; $485f: $af
    ld sp, $423c                                  ; $4860: $31 $3c $42
    ld l, b                                       ; $4863: $68
    rst $38                                       ; $4864: $ff
    ldh [rSCY], a                                 ; $4865: $e0 $42
    cp a                                          ; $4867: $bf
    ldh [$15], a                                  ; $4868: $e0 $15
    pop hl                                        ; $486a: $e1
    ld d, $c0                                     ; $486b: $16 $c0
    rst $38                                       ; $486d: $ff
    ld [$c2e9], a                                 ; $486e: $ea $e9 $c2
    pop hl                                        ; $4871: $e1
    pop bc                                        ; $4872: $c1
    ldh [rOCPS], a                                ; $4873: $e0 $6a
    ld l, d                                       ; $4875: $6a
    ld l, b                                       ; $4876: $68

jr_059_4877:
    rlca                                          ; $4877: $07
    ld l, b                                       ; $4878: $68
    ld l, d                                       ; $4879: $6a
    ld l, d                                       ; $487a: $6a
    cp a                                          ; $487b: $bf
    pop hl                                        ; $487c: $e1
    ld a, a                                       ; $487d: $7f
    ldh [$ca], a                                  ; $487e: $e0 $ca
    rst $38                                       ; $4880: $ff
    add sp, -$19                                  ; $4881: $e8 $e7
    ld c, l                                       ; $4883: $4d
    ldh [$0e], a                                  ; $4884: $e0 $0e
    pop bc                                        ; $4886: $c1
    ld [c], a                                     ; $4887: $e2
    ld l, d                                       ; $4888: $6a
    ld l, h                                       ; $4889: $6c
    ld l, h                                       ; $488a: $6c
    ei                                            ; $488b: $fb
    ldh [$7e], a                                  ; $488c: $e0 $7e
    ldh [$7f], a                                  ; $488e: $e0 $7f
    ldh [$ca], a                                  ; $4890: $e0 $ca
    rst $38                                       ; $4892: $ff
    cp $e8                                        ; $4893: $fe $e8
    rst $20                                       ; $4895: $e7
    inc d                                         ; $4896: $14
    ld [de], a                                    ; $4897: $12
    ld e, $31                                     ; $4898: $1e $31
    add hl, sp                                    ; $489a: $39
    jr nc, jr_059_4906                            ; $489b: $30 $69

    rst $38                                       ; $489d: $ff
    ld l, c                                       ; $489e: $69
    ld l, e                                       ; $489f: $6b

jr_059_48a0:
    jr nc, jr_059_48d2                            ; $48a0: $30 $30

    ld l, e                                       ; $48a2: $6b
    ld l, c                                       ; $48a3: $69
    ld l, c                                       ; $48a4: $69
    jr nc, jr_059_48a0                            ; $48a5: $30 $f9

    add hl, sp                                    ; $48a7: $39
    ret nz                                        ; $48a8: $c0

    rst $38                                       ; $48a9: $ff
    db $ec                                        ; $48aa: $ec
    db $eb                                        ; $48ab: $eb
    inc h                                         ; $48ac: $24
    inc h                                         ; $48ad: $24
    rla                                           ; $48ae: $17
    ld sp, $cd49                                  ; $48af: $31 $49 $cd
    ld c, b                                       ; $48b2: $48
    ret nz                                        ; $48b3: $c0

    push hl                                       ; $48b4: $e5
    ld c, b                                       ; $48b5: $48
    ld c, c                                       ; $48b6: $49
    ld b, b                                       ; $48b7: $40
    rst $38                                       ; $48b8: $ff
    db $ec                                        ; $48b9: $ec
    db $eb                                        ; $48ba: $eb
    jr nz, jr_059_48dd                            ; $48bb: $20 $20

    add e                                         ; $48bd: $83
    ld d, $15                                     ; $48be: $16 $15
    ld a, a                                       ; $48c0: $7f
    ldh [rLCDC], a                                ; $48c1: $e0 $40

jr_059_48c3:
    db $e3                                        ; $48c3: $e3
    add c                                         ; $48c4: $81
    db $e3                                        ; $48c5: $e3
    ret nz                                        ; $48c6: $c0

    rst $38                                       ; $48c7: $ff
    ret nz                                        ; $48c8: $c0

    ld [$3628], a                                 ; $48c9: $ea $28 $36
    ld a, a                                       ; $48cc: $7f
    ldh [rSCY], a                                 ; $48cd: $e0 $42
    ld l, l                                       ; $48cf: $6d
    ret nz                                        ; $48d0: $c0

    pop bc                                        ; $48d1: $c1

jr_059_48d2:
    ld l, l                                       ; $48d2: $6d
    ld b, d                                       ; $48d3: $42
    add c                                         ; $48d4: $81
    ld [c], a                                     ; $48d5: $e2
    ret nz                                        ; $48d6: $c0

    rst $38                                       ; $48d7: $ff
    ld a, [$ea80]                                 ; $48d8: $fa $80 $ea
    jr nz, @-$42                                  ; $48db: $20 $bc

jr_059_48dd:
    ret nz                                        ; $48dd: $c0

    ld d, d                                       ; $48de: $52
    ld l, d                                       ; $48df: $6a
    ld l, l                                       ; $48e0: $6d
    ld l, b                                       ; $48e1: $68

Call_059_48e2:
    ld l, b                                       ; $48e2: $68
    ld a, a                                       ; $48e3: $7f
    ld l, l                                       ; $48e4: $6d
    ld l, d                                       ; $48e5: $6a
    ld d, d                                       ; $48e6: $52
    ld sp, $2b31                                  ; $48e7: $31 $31 $2b
    inc l                                         ; $48ea: $2c
    ret nz                                        ; $48eb: $c0

    rst $38                                       ; $48ec: $ff
    cp $c0                                        ; $48ed: $fe $c0
    rst $28                                       ; $48ef: $ef
    ld d, e                                       ; $48f0: $53
    ld l, d                                       ; $48f1: $6a
    ld l, c                                       ; $48f2: $69
    ld l, h                                       ; $48f3: $6c
    ld l, h                                       ; $48f4: $6c
    ld l, c                                       ; $48f5: $69
    ld l, d                                       ; $48f6: $6a
    ld bc, $c053                                  ; $48f7: $01 $53 $c0
    rst $38                                       ; $48fa: $ff
    add b                                         ; $48fb: $80
    db $f4                                        ; $48fc: $f4
    add l                                         ; $48fd: $85
    ret nz                                        ; $48fe: $c0

    ld a, e                                       ; $48ff: $7b
    ret nz                                        ; $4900: $c0

    add b                                         ; $4901: $80
    rst $38                                       ; $4902: $ff
    add b                                         ; $4903: $80
    push af                                       ; $4904: $f5
    ret nz                                        ; $4905: $c0

jr_059_4906:
    db $e3                                        ; $4906: $e3
    sbc [hl]                                      ; $4907: $9e
    add b                                         ; $4908: $80
    ldh [$29], a                                  ; $4909: $e0 $29
    daa                                           ; $490b: $27
    dec b                                         ; $490c: $05
    dec b                                         ; $490d: $05
    jp z, Jump_000_00ff                           ; $490e: $ca $ff $00

    ld [$8118], a                                 ; $4911: $ea $18 $81
    ld sp, $a1fe                                  ; $4914: $31 $fe $a1
    add b                                         ; $4917: $80
    ldh [rSC], a                                  ; $4918: $e0 $02
    ret nz                                        ; $491a: $c0

    rst $38                                       ; $491b: $ff
    ld [c], a                                     ; $491c: $e2
    jp z, $c0ff                                   ; $491d: $ca $ff $c0

    jp z, $ed1a                                   ; $4920: $ca $1a $ed

    ld sp, $a1fe                                  ; $4923: $31 $fe $a1
    ld l, b                                       ; $4926: $68
    ld l, b                                       ; $4927: $68
    ld [bc], a                                    ; $4928: $02
    pop bc                                        ; $4929: $c1
    ld sp, $6231                                  ; $492a: $31 $31 $62
    di                                            ; $492d: $f3
    ld h, d                                       ; $492e: $62
    ld h, d                                       ; $492f: $62
    jp z, Jump_000_00ff                           ; $4930: $ca $ff $00

    ret                                           ; $4933: $c9


    jr jr_059_495c                                ; $4934: $18 $26

    ld sp, $ff31                                  ; $4936: $31 $31 $ff
    and a                                         ; $4939: $a7
    add e                                         ; $493a: $83
    jr nc, jr_059_49a5                            ; $493b: $30 $68

    ld l, b                                       ; $493d: $68
    jr nc, jr_059_48c3                            ; $493e: $30 $83

    and a                                         ; $4940: $a7
    ccf                                           ; $4941: $3f
    ld sp, $6031                                  ; $4942: $31 $31 $60
    ld e, e                                       ; $4945: $5b
    ld e, e                                       ; $4946: $5b
    ld e, d                                       ; $4947: $5a
    jp z, $c0ff                                   ; $4948: $ca $ff $c0

    xor c                                         ; $494b: $a9
    cp $81                                        ; $494c: $fe $81
    ldh [$31], a                                  ; $494e: $e0 $31
    add c                                         ; $4950: $81
    ld a, c                                       ; $4951: $79
    ld l, [hl]                                    ; $4952: $6e
    ld d, l                                       ; $4953: $55
    ld d, h                                       ; $4954: $54
    ld l, [hl]                                    ; $4955: $6e
    cpl                                           ; $4956: $2f
    ld a, c                                       ; $4957: $79
    add c                                         ; $4958: $81
    ld sp, $3161                                  ; $4959: $31 $61 $31

jr_059_495c:
    add b                                         ; $495c: $80
    ld e, e                                       ; $495d: $5b
    jp z, $ffff                                   ; $495e: $ca $ff $ff

    rst $38                                       ; $4961: $ff
    nop                                           ; $4962: $00
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
    rst $38                                       ; $496d: $ff
    rst $38                                       ; $496e: $ff
    rst $38                                       ; $496f: $ff
    rst $38                                       ; $4970: $ff
    rst $38                                       ; $4971: $ff
    rst $38                                       ; $4972: $ff
    nop                                           ; $4973: $00
    rst $38                                       ; $4974: $ff
    rst $38                                       ; $4975: $ff
    rst $38                                       ; $4976: $ff
    rst $38                                       ; $4977: $ff
    rst $38                                       ; $4978: $ff
    rst $38                                       ; $4979: $ff
    rst $38                                       ; $497a: $ff
    rst $38                                       ; $497b: $ff
    rst $38                                       ; $497c: $ff
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
    rst $38                                       ; $4997: $ff
    rst $38                                       ; $4998: $ff
    rst $38                                       ; $4999: $ff
    rst $38                                       ; $499a: $ff
    rst $38                                       ; $499b: $ff
    rst $38                                       ; $499c: $ff
    rst $38                                       ; $499d: $ff
    rst $38                                       ; $499e: $ff
    rst $38                                       ; $499f: $ff
    rst $38                                       ; $49a0: $ff
    rst $38                                       ; $49a1: $ff
    rst $38                                       ; $49a2: $ff
    rst $38                                       ; $49a3: $ff
    rst $38                                       ; $49a4: $ff

jr_059_49a5:
    rst $38                                       ; $49a5: $ff
    nop                                           ; $49a6: $00
    rst $38                                       ; $49a7: $ff
    rst $38                                       ; $49a8: $ff
    rst $38                                       ; $49a9: $ff
    rst $38                                       ; $49aa: $ff
    rst $38                                       ; $49ab: $ff
    rst $38                                       ; $49ac: $ff
    rst $38                                       ; $49ad: $ff
    rst $38                                       ; $49ae: $ff
    rst $38                                       ; $49af: $ff
    rst $38                                       ; $49b0: $ff
    rst $38                                       ; $49b1: $ff
    rst $38                                       ; $49b2: $ff
    rst $38                                       ; $49b3: $ff
    rst $38                                       ; $49b4: $ff
    rst $38                                       ; $49b5: $ff
    rst $38                                       ; $49b6: $ff
    nop                                           ; $49b7: $00
    rst $38                                       ; $49b8: $ff
    rst $38                                       ; $49b9: $ff
    rst $38                                       ; $49ba: $ff
    rst $38                                       ; $49bb: $ff
    rst $38                                       ; $49bc: $ff
    rst $38                                       ; $49bd: $ff
    rst $38                                       ; $49be: $ff
    rst $38                                       ; $49bf: $ff
    rst $38                                       ; $49c0: $ff
    rst $38                                       ; $49c1: $ff
    rst $38                                       ; $49c2: $ff
    rst $38                                       ; $49c3: $ff
    rst $38                                       ; $49c4: $ff
    rst $38                                       ; $49c5: $ff
    rst $38                                       ; $49c6: $ff
    rst $38                                       ; $49c7: $ff
    nop                                           ; $49c8: $00
    rst $38                                       ; $49c9: $ff
    rst $38                                       ; $49ca: $ff
    rst $38                                       ; $49cb: $ff
    rst $38                                       ; $49cc: $ff
    rst $38                                       ; $49cd: $ff
    rst $38                                       ; $49ce: $ff
    rst $38                                       ; $49cf: $ff
    rst $38                                       ; $49d0: $ff
    rst $38                                       ; $49d1: $ff
    rst $38                                       ; $49d2: $ff
    rst $38                                       ; $49d3: $ff
    rst $38                                       ; $49d4: $ff
    rst $38                                       ; $49d5: $ff
    rst $38                                       ; $49d6: $ff
    rst $38                                       ; $49d7: $ff
    rst $38                                       ; $49d8: $ff
    nop                                           ; $49d9: $00
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
    rst $38                                       ; $49e4: $ff
    rst $38                                       ; $49e5: $ff
    rst $38                                       ; $49e6: $ff
    rst $38                                       ; $49e7: $ff
    rst $38                                       ; $49e8: $ff
    rst $38                                       ; $49e9: $ff
    nop                                           ; $49ea: $00
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
    rst $38                                       ; $49f5: $ff
    rst $38                                       ; $49f6: $ff
    rst $38                                       ; $49f7: $ff
    rst $38                                       ; $49f8: $ff
    rst $38                                       ; $49f9: $ff
    rst $38                                       ; $49fa: $ff
    nop                                           ; $49fb: $00
    rst $38                                       ; $49fc: $ff
    rst $38                                       ; $49fd: $ff
    rst $38                                       ; $49fe: $ff
    rst $38                                       ; $49ff: $ff

Call_059_4a00:
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
    rst $38                                       ; $4a0a: $ff
    rst $38                                       ; $4a0b: $ff
    nop                                           ; $4a0c: $00
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
    rst $38                                       ; $4a17: $ff
    rst $38                                       ; $4a18: $ff
    rst $38                                       ; $4a19: $ff
    rst $38                                       ; $4a1a: $ff
    rst $38                                       ; $4a1b: $ff
    rst $38                                       ; $4a1c: $ff
    nop                                           ; $4a1d: $00
    rst $38                                       ; $4a1e: $ff
    rst $38                                       ; $4a1f: $ff
    rst $38                                       ; $4a20: $ff
    di                                            ; $4a21: $f3
    nop                                           ; $4a22: $00
    nop                                           ; $4a23: $00
    nop                                           ; $4a24: $00
    and l                                         ; $4a25: $a5
    nop                                           ; $4a26: $00
    rst $38                                       ; $4a27: $ff
    push hl                                       ; $4a28: $e5
    ld [hl-], a                                   ; $4a29: $32
    or $e6                                        ; $4a2a: $f6 $e6
    rst $30                                       ; $4a2c: $f7
    rst $20                                       ; $4a2d: $e7
    dec [hl]                                      ; $4a2e: $35
    db $ec                                        ; $4a2f: $ec
    xor $37                                       ; $4a30: $ee $37
    db $ec                                        ; $4a32: $ec
    jp c, $c7f0                                   ; $4a33: $da $f0 $c7

    add sp, $33                                   ; $4a36: $e8 $33
    ld sp, $f2e0                                  ; $4a38: $31 $e0 $f2
    ld [hl], $30                                  ; $4a3b: $36 $30
    scf                                           ; $4a3d: $37
    cp a                                          ; $4a3e: $bf
    ld h, $20                                     ; $4a3f: $26 $20
    daa                                           ; $4a41: $27
    db $10                                        ; $4a42: $10
    ld d, $17                                     ; $4a43: $16 $17
    jp nz, Jump_000_34f6                          ; $4a45: $c2 $f6 $34

    rst $38                                       ; $4a48: $ff
    ld [hl], $32                                  ; $4a49: $36 $32
    jr nc, jr_059_4a84                            ; $4a4b: $30 $37

    ld sp, $3133                                  ; $4a4d: $31 $33 $31
    inc sp                                        ; $4a50: $33
    nop                                           ; $4a51: $00
    and b                                         ; $4a52: $a0
    ei                                            ; $4a53: $fb

Jump_059_4a54:
    rst $38                                       ; $4a54: $ff
    rst $28                                       ; $4a55: $ef
    nop                                           ; $4a56: $00
    nop                                           ; $4a57: $00
    nop                                           ; $4a58: $00
    ld h, c                                       ; $4a59: $61
    ld c, d                                       ; $4a5a: $4a
    sub c                                         ; $4a5b: $91
    ld c, d                                       ; $4a5c: $4a
    ld b, d                                       ; $4a5d: $42
    ld c, l                                       ; $4a5e: $4d
    ld e, a                                       ; $4a5f: $5f
    ld c, a                                       ; $4a60: $4f
    ld hl, sp+$03                                 ; $4a61: $f8 $03
    ld c, h                                       ; $4a63: $4c
    inc bc                                        ; $4a64: $03
    ld d, e                                       ; $4a65: $53
    ld bc, $008a                                  ; $4a66: $01 $8a $00
    ldh a, [$03]                                  ; $4a69: $f0 $03
    ld hl, sp+$03                                 ; $4a6b: $f8 $03
    ld c, h                                       ; $4a6d: $4c
    inc bc                                        ; $4a6e: $03
    ld d, e                                       ; $4a6f: $53
    ld bc, $47ff                                  ; $4a70: $01 $ff $47
    ldh a, [rP1]                                  ; $4a73: $f0 $00
    ld e, l                                       ; $4a75: $5d
    add hl, de                                    ; $4a76: $19
    ld c, h                                       ; $4a77: $4c
    inc bc                                        ; $4a78: $03
    ld [$0825], sp                                ; $4a79: $08 $25 $08
    dec h                                         ; $4a7c: $25
    ld [$0825], sp                                ; $4a7d: $08 $25 $08
    dec h                                         ; $4a80: $25
    ld [$0825], sp                                ; $4a81: $08 $25 $08

jr_059_4a84:
    dec h                                         ; $4a84: $25
    ld [$0825], sp                                ; $4a85: $08 $25 $08
    dec h                                         ; $4a88: $25
    ld [$0825], sp                                ; $4a89: $08 $25 $08
    dec h                                         ; $4a8c: $25
    ld [$0825], sp                                ; $4a8d: $08 $25 $08
    dec h                                         ; $4a90: $25
    rst $38                                       ; $4a91: $ff
    dec bc                                        ; $4a92: $0b
    dec bc                                        ; $4a93: $0b
    ld l, e                                       ; $4a94: $6b
    dec bc                                        ; $4a95: $0b
    dec bc                                        ; $4a96: $0b
    dec bc                                        ; $4a97: $0b
    ld c, e                                       ; $4a98: $4b
    ld c, e                                       ; $4a99: $4b
    sub c                                         ; $4a9a: $91
    ld c, e                                       ; $4a9b: $4b
    ld a, [$f8e0]                                 ; $4a9c: $fa $e0 $f8
    ld [c], a                                     ; $4a9f: $e2
    rst $30                                       ; $4aa0: $f7
    ldh [$0c], a                                  ; $4aa1: $e0 $0c
    rst $38                                       ; $4aa3: $ff
    rst $38                                       ; $4aa4: $ff
    rst $20                                       ; $4aa5: $e7
    and $6b                                       ; $4aa6: $e6 $6b
    ld l, l                                       ; $4aa8: $6d
    ld l, e                                       ; $4aa9: $6b
    ret nz                                        ; $4aaa: $c0

    pop hl                                        ; $4aab: $e1
    dec hl                                        ; $4aac: $2b
    dec hl                                        ; $4aad: $2b

Call_059_4aae:
    add $e1                                       ; $4aae: $c6 $e1
    ld l, e                                       ; $4ab0: $6b
    ld l, e                                       ; $4ab1: $6b
    cp d                                          ; $4ab2: $ba
    pop hl                                        ; $4ab3: $e1
    dec c                                         ; $4ab4: $0d
    ld c, e                                       ; $4ab5: $4b
    ret nz                                        ; $4ab6: $c0

    ldh [$4c], a                                  ; $4ab7: $e0 $4c
    ld c, h                                       ; $4ab9: $4c
    db $fd                                        ; $4aba: $fd
    db $e3                                        ; $4abb: $e3
    ld sp, hl                                     ; $4abc: $f9
    ldh [$bd], a                                  ; $4abd: $e0 $bd
    ldh [$f2], a                                  ; $4abf: $e0 $f2
    pop hl                                        ; $4ac1: $e1
    add a                                         ; $4ac2: $87
    inc l                                         ; $4ac3: $2c
    inc l                                         ; $4ac4: $2c
    inc l                                         ; $4ac5: $2c
    ei                                            ; $4ac6: $fb
    db $e3                                        ; $4ac7: $e3
    ret nz                                        ; $4ac8: $c0

    db $ed                                        ; $4ac9: $ed
    adc b                                         ; $4aca: $88
    ld [c], a                                     ; $4acb: $e2
    cp l                                          ; $4acc: $bd
    pop hl                                        ; $4acd: $e1
    ld c, e                                       ; $4ace: $4b
    ld [bc], a                                    ; $4acf: $02
    add $e0                                       ; $4ad0: $c6 $e0
    dec hl                                        ; $4ad2: $2b
    rst $30                                       ; $4ad3: $f7
    ld [c], a                                     ; $4ad4: $e2
    adc d                                         ; $4ad5: $8a
    pop hl                                        ; $4ad6: $e1
    cp [hl]                                       ; $4ad7: $be
    db $e3                                        ; $4ad8: $e3
    db $fc                                        ; $4ad9: $fc
    db $e3                                        ; $4ada: $e3
    or b                                          ; $4adb: $b0

jr_059_4adc:
    pop hl                                        ; $4adc: $e1
    pop bc                                        ; $4add: $c1
    pop hl                                        ; $4ade: $e1
    jr c, jr_059_4adc                             ; $4adf: $38 $fb

    pop hl                                        ; $4ae1: $e1
    ld l, [hl]                                    ; $4ae2: $6e
    db $ed                                        ; $4ae3: $ed
    ld c, b                                       ; $4ae4: $48
    db $e3                                        ; $4ae5: $e3
    dec hl                                        ; $4ae6: $2b
    dec hl                                        ; $4ae7: $2b
    dec hl                                        ; $4ae8: $2b
    inc a                                         ; $4ae9: $3c
    ld [c], a                                     ; $4aea: $e2
    ld a, [hl-]                                   ; $4aeb: $3a
    ld [c], a                                     ; $4aec: $e2
    ld bc, $8b4b                                  ; $4aed: $01 $4b $8b
    ldh [$82], a                                  ; $4af0: $e0 $82

jr_059_4af2:
    db $e4                                        ; $4af2: $e4
    ld a, l                                       ; $4af3: $7d
    pop hl                                        ; $4af4: $e1
    ld a, [hl]                                    ; $4af5: $7e
    db $e4                                        ; $4af6: $e4
    ei                                            ; $4af7: $fb
    db $e4                                        ; $4af8: $e4
    ld l, $ed                                     ; $4af9: $2e $ed
    push bc                                       ; $4afb: $c5
    pop hl                                        ; $4afc: $e1
    ld b, $8a                                     ; $4afd: $06 $8a
    ldh [$2b], a                                  ; $4aff: $e0 $2b
    dec hl                                        ; $4b01: $2b
    add hl, sp                                    ; $4b02: $39
    db $e3                                        ; $4b03: $e3
    halt                                          ; $4b04: $76
    ld [c], a                                     ; $4b05: $e2
    adc l                                         ; $4b06: $8d
    ld [c], a                                     ; $4b07: $e2
    ld c, b                                       ; $4b08: $48
    pop hl                                        ; $4b09: $e1

jr_059_4b0a:
    ld bc, $0ce5                                  ; $4b0a: $01 $e5 $0c
    jr c, jr_059_4af2                             ; $4b0d: $38 $e3

Call_059_4b0f:
    inc sp                                        ; $4b0f: $33
    db $e3                                        ; $4b10: $e3
    inc c                                         ; $4b11: $0c
    inc c                                         ; $4b12: $0c
    inc a                                         ; $4b13: $3c
    db $e4                                        ; $4b14: $e4
    dec [hl]                                      ; $4b15: $35
    db $e3                                        ; $4b16: $e3
    ret nz                                        ; $4b17: $c0

    db $e4                                        ; $4b18: $e4
    ld a, [hl]                                    ; $4b19: $7e
    ld [c], a                                     ; $4b1a: $e2
    nop                                           ; $4b1b: $00
    ld b, c                                       ; $4b1c: $41
    ld [c], a                                     ; $4b1d: $e2
    or d                                          ; $4b1e: $b2
    ret nz                                        ; $4b1f: $c0

    jp z, $bde5                                   ; $4b20: $ca $e5 $bd

    push hl                                       ; $4b23: $e5
    jr c, jr_059_4b0a                             ; $4b24: $38 $e4

    ld a, a                                       ; $4b26: $7f
    ld a, [c]                                     ; $4b27: $f2
    add c                                         ; $4b28: $81
    pop hl                                        ; $4b29: $e1
    ld a, a                                       ; $4b2a: $7f
    db $e3                                        ; $4b2b: $e3
    ld h, d                                       ; $4b2c: $62
    rst $30                                       ; $4b2d: $f7
    push bc                                       ; $4b2e: $c5
    ld c, e                                       ; $4b2f: $4b
    add b                                         ; $4b30: $80
    pop hl                                        ; $4b31: $e1
    ret nz                                        ; $4b32: $c0

    rst $00                                       ; $4b33: $c7

jr_059_4b34:
    ccf                                           ; $4b34: $3f
    db $fc                                        ; $4b35: $fc
    dec bc                                        ; $4b36: $0b
    ld l, e                                       ; $4b37: $6b
    cp [hl]                                       ; $4b38: $be
    db $e3                                        ; $4b39: $e3
    ld e, $c0                                     ; $4b3a: $1e $c0
    push hl                                       ; $4b3c: $e5
    ld l, e                                       ; $4b3d: $6b
    ld l, e                                       ; $4b3e: $6b
    dec hl                                        ; $4b3f: $2b
    dec bc                                        ; $4b40: $0b
    adc a                                         ; $4b41: $8f
    db $e4                                        ; $4b42: $e4
    add c                                         ; $4b43: $81
    jp $c475                                      ; $4b44: $c3 $75 $c4


    ld h, b                                       ; $4b47: $60
    jr nc, jr_059_4b34                            ; $4b48: $30 $ea

    nop                                           ; $4b4a: $00
    jp hl                                         ; $4b4b: $e9


    inc b                                         ; $4b4c: $04
    ret nz                                        ; $4b4d: $c0

    ret nz                                        ; $4b4e: $c0

    add sp, -$09                                  ; $4b4f: $e8 $f7
    and b                                         ; $4b51: $a0
    dec hl                                        ; $4b52: $2b
    dec bc                                        ; $4b53: $0b
    ld c, h                                       ; $4b54: $4c
    jp $fe00                                      ; $4b55: $c3 $00 $fe


    db $e4                                        ; $4b58: $e4
    ld [hl], l                                    ; $4b59: $75
    add $c0                                       ; $4b5a: $c6 $c0
    db $d3                                        ; $4b5c: $d3
    ld c, [hl]                                    ; $4b5d: $4e
    ret nz                                        ; $4b5e: $c0

    res 4, c                                      ; $4b5f: $cb $a1
    ld a, [$c1c4]                                 ; $4b61: $fa $c4 $c1
    ld [c], a                                     ; $4b64: $e2
    ret nz                                        ; $4b65: $c0

    and c                                         ; $4b66: $a1
    nop                                           ; $4b67: $00
    ld b, $c5                                     ; $4b68: $06 $c5
    ret nz                                        ; $4b6a: $c0

    pop de                                        ; $4b6b: $d1
    ret nz                                        ; $4b6c: $c0

    db $ed                                        ; $4b6d: $ed
    jp $c0a1                                      ; $4b6e: $c3 $a1 $c0


    push bc                                       ; $4b71: $c5
    pop bc                                        ; $4b72: $c1
    pop hl                                        ; $4b73: $e1
    ret nz                                        ; $4b74: $c0

    and c                                         ; $4b75: $a1
    ld b, $c6                                     ; $4b76: $06 $c6
    nop                                           ; $4b78: $00
    add a                                         ; $4b79: $87
    jp $c73f                                      ; $4b7a: $c3 $3f $c7


    cp l                                          ; $4b7d: $bd
    and h                                         ; $4b7e: $a4
    cp b                                          ; $4b7f: $b8
    and [hl]                                      ; $4b80: $a6
    rst $08                                       ; $4b81: $cf
    ld [c], a                                     ; $4b82: $e2
    ld b, d                                       ; $4b83: $42
    jp $a185                                      ; $4b84: $c3 $85 $a1


    dec sp                                        ; $4b87: $3b
    and d                                         ; $4b88: $a2
    nop                                           ; $4b89: $00
    dec c                                         ; $4b8a: $0d
    call nz, $a5c0                                ; $4b8b: $c4 $c0 $a5
    ld b, b                                       ; $4b8e: $40
    jp z, $ad7f                                   ; $4b8f: $ca $7f $ad

    ld [bc], a                                    ; $4b92: $02
    and b                                         ; $4b93: $a0
    xor e                                         ; $4b94: $ab
    pop hl                                        ; $4b95: $e1
    ei                                            ; $4b96: $fb
    and d                                         ; $4b97: $a2
    add [hl]                                      ; $4b98: $86
    pop bc                                        ; $4b99: $c1
    ld b, e                                       ; $4b9a: $43
    inc l                                         ; $4b9b: $2c
    ld c, h                                       ; $4b9c: $4c
    ret nz                                        ; $4b9d: $c0

    and b                                         ; $4b9e: $a0
    pop bc                                        ; $4b9f: $c1
    push bc                                       ; $4ba0: $c5
    ld a, l                                       ; $4ba1: $7d
    push bc                                       ; $4ba2: $c5
    cp a                                          ; $4ba3: $bf
    cp b                                          ; $4ba4: $b8
    ld l, e                                       ; $4ba5: $6b
    jp nc, Jump_000_0181                          ; $4ba6: $d2 $81 $01

    inc l                                         ; $4ba9: $2c
    cp [hl]                                       ; $4baa: $be
    pop hl                                        ; $4bab: $e1
    cp l                                          ; $4bac: $bd
    add b                                         ; $4bad: $80
    ld [c], a                                     ; $4bae: $e2
    and d                                         ; $4baf: $a2
    ret nz                                        ; $4bb0: $c0

    pop hl                                        ; $4bb1: $e1
    add [hl]                                      ; $4bb2: $86
    and e                                         ; $4bb3: $a3
    ld b, c                                       ; $4bb4: $41
    and h                                         ; $4bb5: $a4

jr_059_4bb6:
    ld a, a                                       ; $4bb6: $7f
    xor h                                         ; $4bb7: $ac
    jr jr_059_4bb6                                ; $4bb8: $18 $fc

    add c                                         ; $4bba: $81
    ld a, [c]                                     ; $4bbb: $f2
    add b                                         ; $4bbc: $80
    or $84                                        ; $4bbd: $f6 $84
    dec bc                                        ; $4bbf: $0b
    ld l, h                                       ; $4bc0: $6c
    xor h                                         ; $4bc1: $ac
    and e                                         ; $4bc2: $a3
    and $84                                       ; $4bc3: $e6 $84
    reti                                          ; $4bc5: $d9


    add b                                         ; $4bc6: $80
    ld bc, $804c                                  ; $4bc7: $01 $4c $80
    adc h                                         ; $4bca: $8c
    cp c                                          ; $4bcb: $b9
    xor l                                         ; $4bcc: $ad
    ret nz                                        ; $4bcd: $c0

    db $ec                                        ; $4bce: $ec
    ld [hl], e                                    ; $4bcf: $73
    and h                                         ; $4bd0: $a4
    ld [$ffc3], a                                 ; $4bd1: $ea $c3 $ff
    ld [c], a                                     ; $4bd4: $e2
    add b                                         ; $4bd5: $80
    add [hl]                                      ; $4bd6: $86
    nop                                           ; $4bd7: $00
    cp c                                          ; $4bd8: $b9
    or e                                          ; $4bd9: $b3
    add c                                         ; $4bda: $81
    ld [$e817], a                                 ; $4bdb: $ea $17 $e8
    rrca                                          ; $4bde: $0f
    and $13                                       ; $4bdf: $e6 $13
    and e                                         ; $4be1: $a3
    adc b                                         ; $4be2: $88

Jump_059_4be3:
    add $b9                                       ; $4be3: $c6 $b9
    xor l                                         ; $4be5: $ad
    ret nz                                        ; $4be6: $c0

    db $eb                                        ; $4be7: $eb
    ld [$ad54], sp                                ; $4be8: $08 $54 $ad
    db $fc                                        ; $4beb: $fc
    jp hl                                         ; $4bec: $e9


    cp c                                          ; $4bed: $b9
    or e                                          ; $4bee: $b3
    inc l                                         ; $4bef: $2c
    ld a, [c]                                     ; $4bf0: $f2
    ld h, h                                       ; $4bf1: $64
    ld e, $e8                                     ; $4bf2: $1e $e8
    add h                                         ; $4bf4: $84
    db $eb                                        ; $4bf5: $eb
    ld c, c                                       ; $4bf6: $49
    and l                                         ; $4bf7: $a5
    nop                                           ; $4bf8: $00
    cp c                                          ; $4bf9: $b9
    or h                                          ; $4bfa: $b4
    ld a, [c]                                     ; $4bfb: $f2
    ld h, h                                       ; $4bfc: $64
    ld a, c                                       ; $4bfd: $79
    add l                                         ; $4bfe: $85
    ld b, l                                       ; $4bff: $45
    ld [$ea7d], a                                 ; $4c00: $ea $7d $ea
    cp c                                          ; $4c03: $b9
    or l                                          ; $4c04: $b5
    ld a, b                                       ; $4c05: $78
    push bc                                       ; $4c06: $c5
    ld e, c                                       ; $4c07: $59
    adc b                                         ; $4c08: $88
    nop                                           ; $4c09: $00
    db $10                                        ; $4c0a: $10
    and [hl]                                      ; $4c0b: $a6
    dec de                                        ; $4c0c: $1b
    add e                                         ; $4c0d: $83
    cp $c4                                        ; $4c0e: $fe $c4
    cp c                                          ; $4c10: $b9
    or e                                          ; $4c11: $b3
    ld a, [c]                                     ; $4c12: $f2
    ld h, h                                       ; $4c13: $64
    ld [hl], $6b                                  ; $4c14: $36 $6b
    cp a                                          ; $4c16: $bf
    ret z                                         ; $4c17: $c8

    pop bc                                        ; $4c18: $c1
    push hl                                       ; $4c19: $e5
    nop                                           ; $4c1a: $00
    ld h, $ec                                     ; $4c1b: $26 $ec
    cp c                                          ; $4c1d: $b9
    and a                                         ; $4c1e: $a7
    ld a, c                                       ; $4c1f: $79
    add $c0                                       ; $4c20: $c6 $c0
    call z, $ecfb                                 ; $4c22: $cc $fb $ec
    rst $00                                       ; $4c25: $c7
    ld h, l                                       ; $4c26: $65
    cp c                                          ; $4c27: $b9
    xor [hl]                                      ; $4c28: $ae
    ld [hl], $6b                                  ; $4c29: $36 $6b
    nop                                           ; $4c2b: $00
    inc d                                         ; $4c2c: $14
    add [hl]                                      ; $4c2d: $86
    add $e9                                       ; $4c2e: $c6 $e9
    ld c, b                                       ; $4c30: $48
    add a                                         ; $4c31: $87
    db $fd                                        ; $4c32: $fd
    ld [hl], b                                    ; $4c33: $70
    add hl, sp                                    ; $4c34: $39
    add $5b                                       ; $4c35: $c6 $5b
    ld h, [hl]                                    ; $4c37: $66
    ld b, $c6                                     ; $4c38: $06 $c6
    ld b, b                                       ; $4c3a: $40
    call z, Call_059_4a00                         ; $4c3b: $cc $00 $4a
    ld b, c                                       ; $4c3e: $41
    db $fd                                        ; $4c3f: $fd
    ld [hl], b                                    ; $4c40: $70
    add hl, sp                                    ; $4c41: $39
    jp $aaff                                      ; $4c42: $c3 $ff $aa


    ld [c], a                                     ; $4c45: $e2
    ld b, [hl]                                    ; $4c46: $46
    sub d                                         ; $4c47: $92
    ld b, a                                       ; $4c48: $47
    ld c, d                                       ; $4c49: $4a
    ld b, l                                       ; $4c4a: $45
    cp l                                          ; $4c4b: $bd
    ld c, [hl]                                    ; $4c4c: $4e
    nop                                           ; $4c4d: $00
    ld [hl], c                                    ; $4c4e: $71
    ld h, l                                       ; $4c4f: $65
    ccf                                           ; $4c50: $3f
    ld [$e948], a                                 ; $4c51: $ea $48 $e9
    pop bc                                        ; $4c54: $c1
    push bc                                       ; $4c55: $c5
    ld c, a                                       ; $4c56: $4f
    ld b, l                                       ; $4c57: $45
    db $fd                                        ; $4c58: $fd
    ld l, h                                       ; $4c59: $6c
    ld [hl], $4a                                  ; $4c5a: $36 $4a
    inc d                                         ; $4c5c: $14
    add a                                         ; $4c5d: $87
    nop                                           ; $4c5e: $00
    ld b, c                                       ; $4c5f: $41
    and a                                         ; $4c60: $a7
    ld b, l                                       ; $4c61: $45
    add $ba                                       ; $4c62: $c6 $ba
    add sp, -$80                                  ; $4c64: $e8 $80
    rst $30                                       ; $4c66: $f7
    add d                                         ; $4c67: $82
    db $d3                                        ; $4c68: $d3
    ei                                            ; $4c69: $fb
    add [hl]                                      ; $4c6a: $86
    db $fd                                        ; $4c6b: $fd
    ld [hl], c                                    ; $4c6c: $71
    or [hl]                                       ; $4c6d: $b6
    ld a, [hl+]                                   ; $4c6e: $2a
    ld [bc], a                                    ; $4c6f: $02
    inc d                                         ; $4c70: $14
    add h                                         ; $4c71: $84
    dec bc                                        ; $4c72: $0b
    add a                                         ; $4c73: $87
    ret                                           ; $4c74: $c9


    ccf                                           ; $4c75: $3f
    add sp, -$03                                  ; $4c76: $e8 $fd
    ld [hl], c                                    ; $4c78: $71
    ld b, b                                       ; $4c79: $40
    jp nc, Jump_059_4a54                          ; $4c7a: $d2 $54 $4a

    ld c, d                                       ; $4c7d: $4a
    ld c, b                                       ; $4c7e: $48
    nop                                           ; $4c7f: $00
    or e                                          ; $4c80: $b3
    and a                                         ; $4c81: $a7
    dec a                                         ; $4c82: $3d
    ld h, $ba                                     ; $4c83: $26 $ba
    ld [$5454], sp                                ; $4c85: $08 $54 $54
    ld c, d                                       ; $4c88: $4a
    ld c, d                                       ; $4c89: $4a
    cp c                                          ; $4c8a: $b9
    ld a, [hl+]                                   ; $4c8b: $2a
    push bc                                       ; $4c8c: $c5
    add e                                         ; $4c8d: $83
    ld [hl], a                                    ; $4c8e: $77
    add hl, bc                                    ; $4c8f: $09
    nop                                           ; $4c90: $00
    sbc e                                         ; $4c91: $9b
    sub e                                         ; $4c92: $93
    ld a, [bc]                                    ; $4c93: $0a
    ld h, $38                                     ; $4c94: $26 $38
    rrca                                          ; $4c96: $0f
    nop                                           ; $4c97: $00
    adc h                                         ; $4c98: $8c
    ld d, h                                       ; $4c99: $54
    ld d, c                                       ; $4c9a: $51
    add e                                         ; $4c9b: $83
    adc c                                         ; $4c9c: $89
    jr c, jr_059_4cac                             ; $4c9d: $38 $0d

    ld [de], a                                    ; $4c9f: $12
    ld h, a                                       ; $4ca0: $67
    nop                                           ; $4ca1: $00
    ld b, b                                       ; $4ca2: $40
    jp z, $8b0d                                   ; $4ca3: $ca $0d $8b

    sub c                                         ; $4ca6: $91
    adc c                                         ; $4ca7: $89
    jr c, jr_059_4cb6                             ; $4ca8: $38 $0c

    add c                                         ; $4caa: $81
    ld l, e                                       ; $4cab: $6b

jr_059_4cac:
    ld d, h                                       ; $4cac: $54
    ld d, e                                       ; $4cad: $53
    sub c                                         ; $4cae: $91
    adc e                                         ; $4caf: $8b
    ld d, $ec                                     ; $4cb0: $16 $ec
    nop                                           ; $4cb2: $00
    and b                                         ; $4cb3: $a0
    ld c, [hl]                                    ; $4cb4: $4e
    ld d, h                                       ; $4cb5: $54

jr_059_4cb6:
    ld d, l                                       ; $4cb6: $55
    jp nz, Jump_000_3824                          ; $4cb7: $c2 $24 $38

    dec c                                         ; $4cba: $0d
    add b                                         ; $4cbb: $80
    db $eb                                        ; $4cbc: $eb
    jp hl                                         ; $4cbd: $e9


    ld [de], a                                    ; $4cbe: $12
    ld h, [hl]                                    ; $4cbf: $66
    adc c                                         ; $4cc0: $89
    jr c, jr_059_4cd1                             ; $4cc1: $38 $0e

    nop                                           ; $4cc3: $00
    ld b, b                                       ; $4cc4: $40
    db $ec                                        ; $4cc5: $ec
    or $f5                                        ; $4cc6: $f6 $f5
    add c                                         ; $4cc8: $81
    set 5, [hl]                                   ; $4cc9: $cb $ee
    xor c                                         ; $4ccb: $a9
    rst $38                                       ; $4ccc: $ff
    rst $38                                       ; $4ccd: $ff
    db $e4                                        ; $4cce: $e4
    cp e                                          ; $4ccf: $bb
    rst $38                                       ; $4cd0: $ff

jr_059_4cd1:
    rst $38                                       ; $4cd1: $ff
    ldh [rLYC], a                                 ; $4cd2: $e0 $45
    nop                                           ; $4cd4: $00
    db $e4                                        ; $4cd5: $e4
    or l                                          ; $4cd6: $b5
    rst $38                                       ; $4cd7: $ff
    rst $38                                       ; $4cd8: $ff
    db $e4                                        ; $4cd9: $e4
    or a                                          ; $4cda: $b7
    rst $38                                       ; $4cdb: $ff
    rst $38                                       ; $4cdc: $ff
    dec de                                        ; $4cdd: $1b
    and h                                         ; $4cde: $a4
    db $e4                                        ; $4cdf: $e4
    cp b                                          ; $4ce0: $b8
    rst $38                                       ; $4ce1: $ff
    rst $38                                       ; $4ce2: $ff
    ld b, b                                       ; $4ce3: $40
    rst $20                                       ; $4ce4: $e7
    nop                                           ; $4ce5: $00
    ld a, a                                       ; $4ce6: $7f
    ld d, b                                       ; $4ce7: $50
    rst $38                                       ; $4ce8: $ff
    rst $38                                       ; $4ce9: $ff
    db $e4                                        ; $4cea: $e4
    cp c                                          ; $4ceb: $b9
    rst $38                                       ; $4cec: $ff
    rst $38                                       ; $4ced: $ff
    ld h, h                                       ; $4cee: $64
    ld l, e                                       ; $4cef: $6b
    ccf                                           ; $4cf0: $3f
    ld c, b                                       ; $4cf1: $48
    rst $38                                       ; $4cf2: $ff
    rst $38                                       ; $4cf3: $ff
    ld [hl], e                                    ; $4cf4: $73
    call nc, $cd00                                ; $4cf5: $d4 $00 $cd
    cp a                                          ; $4cf8: $bf
    rst $38                                       ; $4cf9: $ff
    rst $38                                       ; $4cfa: $ff
    rst $38                                       ; $4cfb: $ff
    rst $38                                       ; $4cfc: $ff
    sub [hl]                                      ; $4cfd: $96
    rst $38                                       ; $4cfe: $ff
    reti                                          ; $4cff: $d9


    or e                                          ; $4d00: $b3
    rst $38                                       ; $4d01: $ff
    rst $38                                       ; $4d02: $ff
    rst $38                                       ; $4d03: $ff
    rst $38                                       ; $4d04: $ff
    rst $38                                       ; $4d05: $ff
    rst $38                                       ; $4d06: $ff
    nop                                           ; $4d07: $00
    rst $38                                       ; $4d08: $ff
    rst $38                                       ; $4d09: $ff
    scf                                           ; $4d0a: $37
    db $eb                                        ; $4d0b: $eb
    call c, $ffff                                 ; $4d0c: $dc $ff $ff
    rst $38                                       ; $4d0f: $ff
    rst $38                                       ; $4d10: $ff
    rst $38                                       ; $4d11: $ff
    rst $38                                       ; $4d12: $ff
    rst $38                                       ; $4d13: $ff
    rst $38                                       ; $4d14: $ff
    rst $38                                       ; $4d15: $ff
    rst $38                                       ; $4d16: $ff
    rst $38                                       ; $4d17: $ff
    nop                                           ; $4d18: $00
    rst $38                                       ; $4d19: $ff
    rst $38                                       ; $4d1a: $ff
    rst $38                                       ; $4d1b: $ff
    rst $38                                       ; $4d1c: $ff
    rst $38                                       ; $4d1d: $ff
    rst $38                                       ; $4d1e: $ff
    rst $38                                       ; $4d1f: $ff
    rst $38                                       ; $4d20: $ff
    rst $38                                       ; $4d21: $ff
    rst $38                                       ; $4d22: $ff
    rst $38                                       ; $4d23: $ff
    rst $38                                       ; $4d24: $ff
    rst $38                                       ; $4d25: $ff
    rst $38                                       ; $4d26: $ff
    rst $38                                       ; $4d27: $ff
    rst $38                                       ; $4d28: $ff
    nop                                           ; $4d29: $00
    rst $38                                       ; $4d2a: $ff
    rst $38                                       ; $4d2b: $ff
    rst $38                                       ; $4d2c: $ff
    rst $38                                       ; $4d2d: $ff
    rst $38                                       ; $4d2e: $ff
    rst $38                                       ; $4d2f: $ff
    rst $38                                       ; $4d30: $ff
    rst $38                                       ; $4d31: $ff
    nop                                           ; $4d32: $00
    cp a                                          ; $4d33: $bf
    rst $38                                       ; $4d34: $ff
    rst $38                                       ; $4d35: $ff
    rst $38                                       ; $4d36: $ff
    rst $38                                       ; $4d37: $ff
    rst $38                                       ; $4d38: $ff
    rst $38                                       ; $4d39: $ff
    nop                                           ; $4d3a: $00
    rst $38                                       ; $4d3b: $ff
    rst $38                                       ; $4d3c: $ff
    ld e, c                                       ; $4d3d: $59
    ld [hl], e                                    ; $4d3e: $73
    nop                                           ; $4d3f: $00
    nop                                           ; $4d40: $00
    nop                                           ; $4d41: $00
    rst $38                                       ; $4d42: $ff
    ld sp, $4731                                  ; $4d43: $31 $31 $47
    ld d, a                                       ; $4d46: $57
    ld d, a                                       ; $4d47: $57
    ld d, [hl]                                    ; $4d48: $56
    sub a                                         ; $4d49: $97
    sbc [hl]                                      ; $4d4a: $9e
    db $eb                                        ; $4d4b: $eb
    sbc [hl]                                      ; $4d4c: $9e
    ld sp, $e1ff                                  ; $4d4d: $31 $ff $e1
    sbc [hl]                                      ; $4d50: $9e
    rst $38                                       ; $4d51: $ff
    ldh [$31], a                                  ; $4d52: $e0 $31
    ld sp, $fc00                                  ; $4d54: $31 $00 $fc
    rst $38                                       ; $4d57: $ff
    rst $38                                       ; $4d58: $ff
    rst $20                                       ; $4d59: $e7
    and $4d                                       ; $4d5a: $e6 $4d
    ld b, [hl]                                    ; $4d5c: $46
    ld [hl], $68                                  ; $4d5d: $36 $68
    ld l, b                                       ; $4d5f: $68
    ld l, b                                       ; $4d60: $68
    rst $38                                       ; $4d61: $ff
    sbc c                                         ; $4d62: $99
    sbc b                                         ; $4d63: $98
    add [hl]                                      ; $4d64: $86
    sub [hl]                                      ; $4d65: $96
    sub a                                         ; $4d66: $97
    sbc [hl]                                      ; $4d67: $9e
    sub a                                         ; $4d68: $97
    sub [hl]                                      ; $4d69: $96
    sbc a                                         ; $4d6a: $9f
    add [hl]                                      ; $4d6b: $86
    sbc b                                         ; $4d6c: $98
    sbc d                                         ; $4d6d: $9a
    sbc d                                         ; $4d6e: $9a
    inc a                                         ; $4d6f: $3c
    ret nz                                        ; $4d70: $c0

    rst $38                                       ; $4d71: $ff
    jp hl                                         ; $4d72: $e9


    add sp, $39                                   ; $4d73: $e8 $39
    ld a, [hl]                                    ; $4d75: $7e
    jp nz, Jump_059_68e0                          ; $4d76: $c2 $e0 $68

    ld l, b                                       ; $4d79: $68
    ld h, l                                       ; $4d7a: $65
    ld h, l                                       ; $4d7b: $65
    sub h                                         ; $4d7c: $94
    add [hl]                                      ; $4d7d: $86
    rst $38                                       ; $4d7e: $ff
    pop hl                                        ; $4d7f: $e1
    ccf                                           ; $4d80: $3f
    sub c                                         ; $4d81: $91
    ld h, l                                       ; $4d82: $65
    ld h, l                                       ; $4d83: $65
    ld h, l                                       ; $4d84: $65
    ld c, h                                       ; $4d85: $4c
    ld c, c                                       ; $4d86: $49
    jp z, $e8ff                                   ; $4d87: $ca $ff $e8

    rst $20                                       ; $4d8a: $e7
    rst $38                                       ; $4d8b: $ff
    ld d, e                                       ; $4d8c: $53
    ld l, h                                       ; $4d8d: $6c
    ld l, h                                       ; $4d8e: $6c
    ld l, h                                       ; $4d8f: $6c
    ld l, b                                       ; $4d90: $68
    ld l, b                                       ; $4d91: $68
    ld l, l                                       ; $4d92: $6d
    ld l, l                                       ; $4d93: $6d
    ld l, e                                       ; $4d94: $6b
    ld h, a                                       ; $4d95: $67
    sub c                                         ; $4d96: $91
    cp a                                          ; $4d97: $bf
    pop hl                                        ; $4d98: $e1
    sub e                                         ; $4d99: $93
    ld [hl], h                                    ; $4d9a: $74
    ldh [$67], a                                  ; $4d9b: $e0 $67
    add hl, sp                                    ; $4d9d: $39
    jp z, Jump_059_66ff                           ; $4d9e: $ca $ff $66

    add sp, -$19                                  ; $4da1: $e8 $e7
    ld d, d                                       ; $4da3: $52
    ld l, l                                       ; $4da4: $6d
    rst $38                                       ; $4da5: $ff
    ldh [$cb], a                                  ; $4da6: $e0 $cb
    ldh [rOCPS], a                                ; $4da8: $e0 $6a
    sub e                                         ; $4daa: $93
    ld a, a                                       ; $4dab: $7f
    ldh [$9b], a                                  ; $4dac: $e0 $9b
    sub h                                         ; $4dae: $94
    ld l, d                                       ; $4daf: $6a
    or d                                          ; $4db0: $b2
    ldh [rOCPS], a                                ; $4db1: $e0 $6a
    ld d, d                                       ; $4db3: $52
    jp z, $c0ff                                   ; $4db4: $ca $ff $c0

    db $ec                                        ; $4db7: $ec
    ld h, l                                       ; $4db8: $65
    ld a, a                                       ; $4db9: $7f
    ld h, l                                       ; $4dba: $65
    ld l, b                                       ; $4dbb: $68
    ld l, d                                       ; $4dbc: $6a
    ld l, d                                       ; $4dbd: $6a
    sbc c                                         ; $4dbe: $99
    sbc d                                         ; $4dbf: $9a
    sbc c                                         ; $4dc0: $99
    pop bc                                        ; $4dc1: $c1
    pop hl                                        ; $4dc2: $e1
    ld h, e                                       ; $4dc3: $63
    ld l, h                                       ; $4dc4: $6c
    ld l, l                                       ; $4dc5: $6d
    add b                                         ; $4dc6: $80
    rst $38                                       ; $4dc7: $ff
    nop                                           ; $4dc8: $00
    jp hl                                         ; $4dc9: $e9


    add b                                         ; $4dca: $80
    ldh [$67], a                                  ; $4dcb: $e0 $67
    ld l, l                                       ; $4dcd: $6d
    jp z, Jump_000_3ae0                           ; $4dce: $ca $e0 $3a

    ld a, e                                       ; $4dd1: $7b
    ldh [rBCPS], a                                ; $4dd2: $e0 $68
    pop bc                                        ; $4dd4: $c1
    pop hl                                        ; $4dd5: $e1
    ld l, h                                       ; $4dd6: $6c
    sub h                                         ; $4dd7: $94
    sub d                                         ; $4dd8: $92
    jp z, $e8ff                                   ; $4dd9: $ca $ff $e8

    rst $20                                       ; $4ddc: $e7
    db $e3                                        ; $4ddd: $e3
    sub d                                         ; $4dde: $92

jr_059_4ddf:
    sub h                                         ; $4ddf: $94
    pop bc                                        ; $4de0: $c1
    ldh [rIE], a                                  ; $4de1: $e0 $ff
    ld [c], a                                     ; $4de3: $e2
    jp Jump_059_6ce2                              ; $4de4: $c3 $e2 $6c


    sbc c                                         ; $4de7: $99
    sbc b                                         ; $4de8: $98
    ld a, c                                       ; $4de9: $79
    sub b                                         ; $4dea: $90
    add b                                         ; $4deb: $80
    rst $18                                       ; $4dec: $df
    jp hl                                         ; $4ded: $e9


    add sp, $31                                   ; $4dee: $e8 $31
    sub l                                         ; $4df0: $95
    sbc b                                         ; $4df1: $98
    sbc c                                         ; $4df2: $99
    ret nz                                        ; $4df3: $c0

    add sp, -$0e                                  ; $4df4: $e8 $f2
    ld a, c                                       ; $4df6: $79
    ret nz                                        ; $4df7: $c0

    sub d                                         ; $4df8: $92
    ret nz                                        ; $4df9: $c0

    rst $38                                       ; $4dfa: $ff
    jp hl                                         ; $4dfb: $e9


    add sp, $5e                                   ; $4dfc: $e8 $5e
    ld sp, $8695                                  ; $4dfe: $31 $95 $86
    db $dd                                        ; $4e01: $dd
    sbc h                                         ; $4e02: $9c
    cp l                                          ; $4e03: $bd
    db $e3                                        ; $4e04: $e3
    ld l, h                                       ; $4e05: $6c
    ld l, h                                       ; $4e06: $6c
    jr nc, @+$3c                                  ; $4e07: $30 $3a

    ret nz                                        ; $4e09: $c0

    sub l                                         ; $4e0a: $95
    ld sp, $5eb9                                  ; $4e0b: $31 $b9 $5e
    jp z, $e8ff                                   ; $4e0e: $ca $ff $e8

    rst $20                                       ; $4e11: $e7
    ld e, a                                       ; $4e12: $5f
    ld sp, $c931                                  ; $4e13: $31 $31 $c9
    and b                                         ; $4e16: $a0
    add [hl]                                      ; $4e17: $86
    db $ed                                        ; $4e18: $ed
    sub e                                         ; $4e19: $93
    ld a, c                                       ; $4e1a: $79
    ret nz                                        ; $4e1b: $c0

    jr nc, @+$32                                  ; $4e1c: $30 $30

    ld a, h                                       ; $4e1e: $7c
    ret nz                                        ; $4e1f: $c0

    sub l                                         ; $4e20: $95
    ld sp, $d931                                  ; $4e21: $31 $31 $d9
    ld e, a                                       ; $4e24: $5f
    jp z, $e8ff                                   ; $4e25: $ca $ff $e8

    rst $20                                       ; $4e28: $e7
    ld e, e                                       ; $4e29: $5b
    ld h, c                                       ; $4e2a: $61
    ld b, a                                       ; $4e2b: $47
    and b                                         ; $4e2c: $a0
    sub a                                         ; $4e2d: $97
    sub [hl]                                      ; $4e2e: $96
    ei                                            ; $4e2f: $fb
    sub c                                         ; $4e30: $91
    jr nc, @+$01                                  ; $4e31: $30 $ff

    pop hl                                        ; $4e33: $e1
    sub c                                         ; $4e34: $91
    sub [hl]                                      ; $4e35: $96
    sub a                                         ; $4e36: $97
    ld sp, $f331                                  ; $4e37: $31 $31 $f3
    ld h, c                                       ; $4e3a: $61
    ld e, e                                       ; $4e3b: $5b
    jp z, $80ff                                   ; $4e3c: $ca $ff $80

    ld [$1311], a                                 ; $4e3f: $ea $11 $13
    ld de, $ff1b                                  ; $4e42: $11 $1b $ff
    sub a                                         ; $4e45: $97
    ld b, [hl]                                    ; $4e46: $46

jr_059_4e47:
    ld [hl], $30                                  ; $4e47: $36 $30
    jr nc, jr_059_4ddf                            ; $4e49: $30 $94

    sub l                                         ; $4e4b: $95
    ld de, $12e7                                  ; $4e4c: $11 $e7 $12
    ld [de], a                                    ; $4e4f: $12
    ld e, $80                                     ; $4e50: $1e $80
    rst $38                                       ; $4e52: $ff
    nop                                           ; $4e53: $00
    db $eb                                        ; $4e54: $eb
    add hl, hl                                    ; $4e55: $29
    ld hl, $ff24                                  ; $4e56: $21 $24 $ff
    ld hl, $1214                                  ; $4e59: $21 $14 $12
    ld de, $5647                                  ; $4e5c: $11 $47 $56
    ld d, a                                       ; $4e5f: $57
    sub a                                         ; $4e60: $97
    sbc a                                         ; $4e61: $9f
    add hl, hl                                    ; $4e62: $29
    daa                                           ; $4e63: $27
    db $10                                        ; $4e64: $10
    inc h                                         ; $4e65: $24
    rla                                           ; $4e66: $17
    nop                                           ; $4e67: $00
    rst $38                                       ; $4e68: $ff
    add b                                         ; $4e69: $80
    jp z, $ff15                                   ; $4e6a: $ca $15 $ff

    ld d, $20                                     ; $4e6d: $16 $20
    jr nz, jr_059_4e91                            ; $4e6f: $20 $20

    inc h                                         ; $4e71: $24
    ld [hl+], a                                   ; $4e72: $22
    ld hl, $ff12                                  ; $4e73: $21 $12 $ff
    inc de                                        ; $4e76: $13
    inc de                                        ; $4e77: $13
    ld [de], a                                    ; $4e78: $12
    daa                                           ; $4e79: $27
    db $10                                        ; $4e7a: $10
    jr nz, jr_059_4e9d                            ; $4e7b: $20 $20

    ld d, $d9                                     ; $4e7d: $16 $d9
    dec d                                         ; $4e7f: $15
    add b                                         ; $4e80: $80
    rst $18                                       ; $4e81: $df
    ld b, b                                       ; $4e82: $40
    ret                                           ; $4e83: $c9


    rla                                           ; $4e84: $17
    jr z, jr_059_4e47                             ; $4e85: $28 $c0

    ldh [rNR41], a                                ; $4e87: $e0 $20
    jr nz, @-$3f                                  ; $4e89: $20 $bf

    db $10                                        ; $4e8b: $10
    inc h                                         ; $4e8c: $24
    inc h                                         ; $4e8d: $24
    inc h                                         ; $4e8e: $24
    ld [hl+], a                                   ; $4e8f: $22
    inc h                                         ; $4e90: $24

jr_059_4e91:
    or l                                          ; $4e91: $b5
    ldh [$28], a                                  ; $4e92: $e0 $28
    ld bc, $c017                                  ; $4e94: $01 $17 $c0
    rst $38                                       ; $4e97: $ff
    rst $38                                       ; $4e98: $ff
    rst $38                                       ; $4e99: $ff
    rst $38                                       ; $4e9a: $ff
    rst $38                                       ; $4e9b: $ff
    rst $38                                       ; $4e9c: $ff

jr_059_4e9d:
    rst $38                                       ; $4e9d: $ff
    rst $38                                       ; $4e9e: $ff
    rst $38                                       ; $4e9f: $ff
    rst $38                                       ; $4ea0: $ff
    rst $38                                       ; $4ea1: $ff
    rst $38                                       ; $4ea2: $ff
    rst $38                                       ; $4ea3: $ff
    nop                                           ; $4ea4: $00
    rst $38                                       ; $4ea5: $ff
    rst $38                                       ; $4ea6: $ff
    rst $38                                       ; $4ea7: $ff
    rst $38                                       ; $4ea8: $ff
    rst $38                                       ; $4ea9: $ff
    rst $38                                       ; $4eaa: $ff
    rst $38                                       ; $4eab: $ff
    rst $38                                       ; $4eac: $ff
    rst $38                                       ; $4ead: $ff
    rst $38                                       ; $4eae: $ff
    rst $38                                       ; $4eaf: $ff
    rst $38                                       ; $4eb0: $ff
    rst $38                                       ; $4eb1: $ff
    rst $38                                       ; $4eb2: $ff
    rst $38                                       ; $4eb3: $ff
    rst $38                                       ; $4eb4: $ff
    nop                                           ; $4eb5: $00
    rst $38                                       ; $4eb6: $ff
    rst $38                                       ; $4eb7: $ff
    rst $38                                       ; $4eb8: $ff
    rst $38                                       ; $4eb9: $ff
    rst $38                                       ; $4eba: $ff
    rst $38                                       ; $4ebb: $ff
    rst $38                                       ; $4ebc: $ff
    rst $38                                       ; $4ebd: $ff
    rst $38                                       ; $4ebe: $ff
    rst $38                                       ; $4ebf: $ff
    rst $38                                       ; $4ec0: $ff
    rst $38                                       ; $4ec1: $ff
    rst $38                                       ; $4ec2: $ff
    rst $38                                       ; $4ec3: $ff
    rst $38                                       ; $4ec4: $ff
    rst $38                                       ; $4ec5: $ff

Call_059_4ec6:
    jr c, @+$01                                   ; $4ec6: $38 $ff

    rst $38                                       ; $4ec8: $ff
    rst $38                                       ; $4ec9: $ff
    rst $38                                       ; $4eca: $ff
    rst $38                                       ; $4ecb: $ff
    rst $38                                       ; $4ecc: $ff
    nop                                           ; $4ecd: $00
    nop                                           ; $4ece: $00
    or b                                          ; $4ecf: $b0
    db $dd                                        ; $4ed0: $dd
    rst $38                                       ; $4ed1: $ff
    rst $38                                       ; $4ed2: $ff
    rst $38                                       ; $4ed3: $ff
    nop                                           ; $4ed4: $00
    rst $38                                       ; $4ed5: $ff
    rst $38                                       ; $4ed6: $ff
    rst $38                                       ; $4ed7: $ff
    rst $38                                       ; $4ed8: $ff
    rst $38                                       ; $4ed9: $ff
    rst $38                                       ; $4eda: $ff
    rst $38                                       ; $4edb: $ff
    rst $38                                       ; $4edc: $ff
    rst $38                                       ; $4edd: $ff
    rst $38                                       ; $4ede: $ff
    rst $38                                       ; $4edf: $ff
    rst $38                                       ; $4ee0: $ff
    rst $38                                       ; $4ee1: $ff
    rst $38                                       ; $4ee2: $ff
    rst $38                                       ; $4ee3: $ff
    rst $38                                       ; $4ee4: $ff
    nop                                           ; $4ee5: $00
    rst $38                                       ; $4ee6: $ff
    rst $38                                       ; $4ee7: $ff
    rst $38                                       ; $4ee8: $ff
    rst $38                                       ; $4ee9: $ff
    rst $38                                       ; $4eea: $ff
    rst $38                                       ; $4eeb: $ff
    rst $38                                       ; $4eec: $ff
    rst $38                                       ; $4eed: $ff
    rst $38                                       ; $4eee: $ff
    rst $38                                       ; $4eef: $ff
    rst $38                                       ; $4ef0: $ff
    rst $38                                       ; $4ef1: $ff
    rst $38                                       ; $4ef2: $ff
    rst $38                                       ; $4ef3: $ff
    rst $38                                       ; $4ef4: $ff
    rst $38                                       ; $4ef5: $ff
    nop                                           ; $4ef6: $00
    rst $38                                       ; $4ef7: $ff
    rst $38                                       ; $4ef8: $ff
    rst $38                                       ; $4ef9: $ff
    rst $38                                       ; $4efa: $ff
    rst $38                                       ; $4efb: $ff
    rst $38                                       ; $4efc: $ff
    rst $38                                       ; $4efd: $ff
    rst $38                                       ; $4efe: $ff
    rst $38                                       ; $4eff: $ff
    rst $38                                       ; $4f00: $ff
    rst $38                                       ; $4f01: $ff
    rst $38                                       ; $4f02: $ff
    rst $38                                       ; $4f03: $ff
    rst $38                                       ; $4f04: $ff
    rst $38                                       ; $4f05: $ff
    rst $38                                       ; $4f06: $ff
    nop                                           ; $4f07: $00
    rst $38                                       ; $4f08: $ff
    rst $38                                       ; $4f09: $ff
    rst $38                                       ; $4f0a: $ff
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
    rst $38                                       ; $4f15: $ff
    rst $38                                       ; $4f16: $ff
    rst $38                                       ; $4f17: $ff
    nop                                           ; $4f18: $00
    rst $38                                       ; $4f19: $ff
    rst $38                                       ; $4f1a: $ff
    rst $38                                       ; $4f1b: $ff
    rst $38                                       ; $4f1c: $ff
    rst $38                                       ; $4f1d: $ff
    rst $38                                       ; $4f1e: $ff
    rst $38                                       ; $4f1f: $ff
    rst $38                                       ; $4f20: $ff
    rst $38                                       ; $4f21: $ff
    rst $38                                       ; $4f22: $ff
    rst $38                                       ; $4f23: $ff
    rst $38                                       ; $4f24: $ff
    rst $38                                       ; $4f25: $ff
    rst $38                                       ; $4f26: $ff
    rst $38                                       ; $4f27: $ff
    rst $38                                       ; $4f28: $ff
    nop                                           ; $4f29: $00
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
    rst $38                                       ; $4f36: $ff
    rst $38                                       ; $4f37: $ff
    rst $38                                       ; $4f38: $ff
    rst $38                                       ; $4f39: $ff
    nop                                           ; $4f3a: $00
    rst $38                                       ; $4f3b: $ff
    rst $38                                       ; $4f3c: $ff
    rst $38                                       ; $4f3d: $ff
    rst $38                                       ; $4f3e: $ff
    rst $38                                       ; $4f3f: $ff
    rst $38                                       ; $4f40: $ff
    rst $38                                       ; $4f41: $ff
    rst $38                                       ; $4f42: $ff
    rst $38                                       ; $4f43: $ff
    rst $38                                       ; $4f44: $ff
    rst $38                                       ; $4f45: $ff
    rst $38                                       ; $4f46: $ff
    rst $38                                       ; $4f47: $ff
    rst $38                                       ; $4f48: $ff
    rst $38                                       ; $4f49: $ff
    rst $38                                       ; $4f4a: $ff
    nop                                           ; $4f4b: $00
    rst $38                                       ; $4f4c: $ff
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
    pop af                                        ; $4f5b: $f1
    nop                                           ; $4f5c: $00
    nop                                           ; $4f5d: $00
    nop                                           ; $4f5e: $00
    and l                                         ; $4f5f: $a5
    nop                                           ; $4f60: $00
    rst $38                                       ; $4f61: $ff
    push hl                                       ; $4f62: $e5
    ld [hl-], a                                   ; $4f63: $32
    or $e6                                        ; $4f64: $f6 $e6
    rst $30                                       ; $4f66: $f7
    rst $20                                       ; $4f67: $e7
    dec [hl]                                      ; $4f68: $35
    db $ec                                        ; $4f69: $ec
    xor $37                                       ; $4f6a: $ee $37
    db $ec                                        ; $4f6c: $ec
    jp c, $c7f0                                   ; $4f6d: $da $f0 $c7

    add sp, $33                                   ; $4f70: $e8 $33
    ld sp, $f2e0                                  ; $4f72: $31 $e0 $f2
    ld [hl], $30                                  ; $4f75: $36 $30
    scf                                           ; $4f77: $37
    cp a                                          ; $4f78: $bf
    ld h, $20                                     ; $4f79: $26 $20
    daa                                           ; $4f7b: $27
    db $10                                        ; $4f7c: $10
    ld d, $17                                     ; $4f7d: $16 $17
    jp nz, Jump_000_34f6                          ; $4f7f: $c2 $f6 $34

    rst $38                                       ; $4f82: $ff
    ld [hl], $32                                  ; $4f83: $36 $32
    jr nc, jr_059_4fbe                            ; $4f85: $30 $37

    ld sp, $3133                                  ; $4f87: $31 $33 $31
    inc sp                                        ; $4f8a: $33
    nop                                           ; $4f8b: $00
    and b                                         ; $4f8c: $a0
    ei                                            ; $4f8d: $fb
    rst $38                                       ; $4f8e: $ff
    rst $28                                       ; $4f8f: $ef
    nop                                           ; $4f90: $00
    nop                                           ; $4f91: $00
    nop                                           ; $4f92: $00
    sbc e                                         ; $4f93: $9b
    ld c, a                                       ; $4f94: $4f
    bit 1, a                                      ; $4f95: $cb $4f
    ld a, e                                       ; $4f97: $7b
    ld d, d                                       ; $4f98: $52
    ld [hl], c                                    ; $4f99: $71
    ld d, h                                       ; $4f9a: $54
    ld hl, sp+$03                                 ; $4f9b: $f8 $03
    ld c, h                                       ; $4f9d: $4c
    inc bc                                        ; $4f9e: $03
    ld d, e                                       ; $4f9f: $53
    ld bc, $008a                                  ; $4fa0: $01 $8a $00
    ldh a, [$03]                                  ; $4fa3: $f0 $03
    ld hl, sp+$03                                 ; $4fa5: $f8 $03
    ld c, h                                       ; $4fa7: $4c
    inc bc                                        ; $4fa8: $03
    ld d, e                                       ; $4fa9: $53
    ld bc, $47ff                                  ; $4faa: $01 $ff $47
    ldh a, [rP1]                                  ; $4fad: $f0 $00
    ld e, l                                       ; $4faf: $5d
    add hl, de                                    ; $4fb0: $19
    ld c, h                                       ; $4fb1: $4c
    inc bc                                        ; $4fb2: $03
    ld [$0825], sp                                ; $4fb3: $08 $25 $08
    dec h                                         ; $4fb6: $25
    ld [$0825], sp                                ; $4fb7: $08 $25 $08
    dec h                                         ; $4fba: $25
    ld [$0825], sp                                ; $4fbb: $08 $25 $08

jr_059_4fbe:
    dec h                                         ; $4fbe: $25
    ld [$0825], sp                                ; $4fbf: $08 $25 $08
    dec h                                         ; $4fc2: $25
    ld [$0825], sp                                ; $4fc3: $08 $25 $08
    dec h                                         ; $4fc6: $25
    ld [$0825], sp                                ; $4fc7: $08 $25 $08
    dec h                                         ; $4fca: $25
    db $fd                                        ; $4fcb: $fd
    inc c                                         ; $4fcc: $0c
    rst $38                                       ; $4fcd: $ff
    db $e3                                        ; $4fce: $e3
    dec bc                                        ; $4fcf: $0b
    dec bc                                        ; $4fd0: $0b
    dec bc                                        ; $4fd1: $0b
    ld l, e                                       ; $4fd2: $6b
    ld l, e                                       ; $4fd3: $6b
    ld c, e                                       ; $4fd4: $4b
    cp $ff                                        ; $4fd5: $fe $ff
    ldh [$2b], a                                  ; $4fd7: $e0 $2b
    dec hl                                        ; $4fd9: $2b
    dec bc                                        ; $4fda: $0b
    dec bc                                        ; $4fdb: $0b
    inc c                                         ; $4fdc: $0c
    inc c                                         ; $4fdd: $0c
    ld c, h                                       ; $4fde: $4c
    ld bc, $fd4c                                  ; $4fdf: $01 $4c $fd
    and $f5                                       ; $4fe2: $e6 $f5
    ldh [$f0], a                                  ; $4fe4: $e0 $f0
    ld [c], a                                     ; $4fe6: $e2
    rst $38                                       ; $4fe7: $ff
    ld sp, hl                                     ; $4fe8: $f9
    jp nz, $c1e0                                  ; $4fe9: $c2 $e0 $c1

    ldh [$fa], a                                  ; $4fec: $e0 $fa
    pop hl                                        ; $4fee: $e1
    adc a                                         ; $4fef: $8f
    ld c, e                                       ; $4ff0: $4b
    ld c, e                                       ; $4ff1: $4b
    dec bc                                        ; $4ff2: $0b
    dec hl                                        ; $4ff3: $2b
    ret nz                                        ; $4ff4: $c0

    add sp, -$47                                  ; $4ff5: $e8 $b9
    ldh [$c2], a                                  ; $4ff7: $e0 $c2
    db $e3                                        ; $4ff9: $e3
    ld c, h                                       ; $4ffa: $4c
    ld b, c                                       ; $4ffb: $41
    inc l                                         ; $4ffc: $2c
    or [hl]                                       ; $4ffd: $b6
    rst $30                                       ; $4ffe: $f7
    jp nz, $82e1                                  ; $4fff: $c2 $e1 $82

    ldh [$87], a                                  ; $5002: $e0 $87
    ldh [$bf], a                                  ; $5004: $e0 $bf
    db $e3                                        ; $5006: $e3
    ld c, e                                       ; $5007: $4b
    ld l, h                                       ; $5008: $6c
    pop hl                                        ; $5009: $e1
    ret z                                         ; $500a: $c8

    ld a, [hl]                                    ; $500b: $7e
    db $e3                                        ; $500c: $e3
    db $fc                                        ; $500d: $fc
    db $e3                                        ; $500e: $e3
    ld [hl], b                                    ; $500f: $70
    pop hl                                        ; $5010: $e1
    inc l                                         ; $5011: $2c
    or [hl]                                       ; $5012: $b6
    rst $20                                       ; $5013: $e7
    jp nz, Jump_059_6bf2                          ; $5014: $c2 $f2 $6b

    dec hl                                        ; $5017: $2b
    ld bc, $412b                                  ; $5018: $01 $2b $41
    ldh [$7c], a                                  ; $501b: $e0 $7c
    ldh [$c0], a                                  ; $501d: $e0 $c0
    pop hl                                        ; $501f: $e1
    add d                                         ; $5020: $82
    and $40                                       ; $5021: $e6 $40
    add sp, -$4a                                  ; $5023: $e8 $b6
    add sp, $45                                   ; $5025: $e8 $45
    db $eb                                        ; $5027: $eb
    nop                                           ; $5028: $00
    ld [$c2e1], sp                                ; $5029: $08 $e1 $c2
    ldh [$c1], a                                  ; $502c: $e0 $c1
    ld [c], a                                     ; $502e: $e2
    inc a                                         ; $502f: $3c
    ldh [rP1], a                                  ; $5030: $e0 $00
    db $e3                                        ; $5032: $e3
    jp hl                                         ; $5033: $e9


    jp nz, $e60b                                  ; $5034: $c2 $0b $e6

    rst $30                                       ; $5037: $f7
    call nz, $f600                                ; $5038: $c4 $00 $f6
    call nz, $e47f                                ; $503b: $c4 $7f $e4
    ld a, b                                       ; $503e: $78
    db $e3                                        ; $503f: $e3
    ld [$c9e4], sp                                ; $5040: $08 $e4 $c9
    pop bc                                        ; $5043: $c1
    db $fc                                        ; $5044: $fc
    jp $c2c0                                      ; $5045: $c3 $c0 $c2


    pop bc                                        ; $5048: $c1
    and $60                                       ; $5049: $e6 $60
    ret z                                         ; $504b: $c8

    jp nz, $e338                                  ; $504c: $c2 $38 $e3

Call_059_504f:
    ld b, b                                       ; $504f: $40
    di                                            ; $5050: $f3
    ld [$bce5], sp                                ; $5051: $08 $e5 $bc
    pop hl                                        ; $5054: $e1
    ld c, e                                       ; $5055: $4b
    dec hl                                        ; $5056: $2b
    add b                                         ; $5057: $80
    and $00                                       ; $5058: $e6 $00
    ret nz                                        ; $505a: $c0

    rst $00                                       ; $505b: $c7
    ld a, a                                       ; $505c: $7f
    push bc                                       ; $505d: $c5
    ld b, b                                       ; $505e: $40
    db $f4                                        ; $505f: $f4
    ld [$89e0], sp                                ; $5060: $08 $e0 $89
    jp $e3bd                                      ; $5063: $c3 $bd $e3


    ld bc, $40e0                                  ; $5066: $01 $e0 $40
    ret nz                                        ; $5069: $c0

    nop                                           ; $506a: $00
    adc a                                         ; $506b: $8f
    db $e4                                        ; $506c: $e4
    add c                                         ; $506d: $81
    jp nz, $c435                                  ; $506e: $c2 $35 $c4

    ld [hl], $d5                                  ; $5071: $36 $d5
    ld b, [hl]                                    ; $5073: $46
    pop hl                                        ; $5074: $e1
    ld [$03c1], sp                                ; $5075: $08 $c1 $03
    jp nz, $a0ff                                  ; $5078: $c2 $ff $a0

    add b                                         ; $507b: $80
    rst $38                                       ; $507c: $ff
    pop bc                                        ; $507d: $c1
    add b                                         ; $507e: $80
    jp $e4fe                                      ; $507f: $c3 $fe $e4


    ld [hl], l                                    ; $5082: $75
    add $f6                                       ; $5083: $c6 $f6
    add $c0                                       ; $5085: $c6 $c0
    db $ed                                        ; $5087: $ed
    jp z, Jump_000_2be1                           ; $5088: $ca $e1 $2b

    add b                                         ; $508b: $80
    ret nz                                        ; $508c: $c0

    db $e4                                        ; $508d: $e4
    cp b                                          ; $508e: $b8
    and c                                         ; $508f: $a1
    nop                                           ; $5090: $00
    pop hl                                        ; $5091: $e1
    ld b, $c5                                     ; $5092: $06 $c5
    ret nz                                        ; $5094: $c0

    ret z                                         ; $5095: $c8

    or $c7                                        ; $5096: $f6 $c7
    add b                                         ; $5098: $80
    db $eb                                        ; $5099: $eb
    ld l, e                                       ; $509a: $6b
    ld b, $44                                     ; $509b: $06 $44
    ldh [rOCPD], a                                ; $509d: $e0 $6b
    ld c, e                                       ; $509f: $4b
    ld a, [$3fc6]                                 ; $50a0: $fa $c6 $3f
    ret nz                                        ; $50a3: $c0

    ret nz                                        ; $50a4: $c0

    jp hl                                         ; $50a5: $e9


    or $d0                                        ; $50a6: $f6 $d0
    add e                                         ; $50a8: $83
    rst $00                                       ; $50a9: $c7
    nop                                           ; $50aa: $00
    ld b, e                                       ; $50ab: $43
    and b                                         ; $50ac: $a0
    pop bc                                        ; $50ad: $c1
    pop hl                                        ; $50ae: $e1
    add [hl]                                      ; $50af: $86
    and d                                         ; $50b0: $a2
    ret nz                                        ; $50b1: $c0

    di                                            ; $50b2: $f3
    or $d1                                        ; $50b3: $f6 $d1
    dec [hl]                                      ; $50b5: $35
    xor d                                         ; $50b6: $aa
    ld b, a                                       ; $50b7: $47
    jp $c14d                                      ; $50b8: $c3 $4d $c1


    inc de                                        ; $50bb: $13
    inc l                                         ; $50bc: $2c
    inc l                                         ; $50bd: $2c
    ld b, [hl]                                    ; $50be: $46
    and c                                         ; $50bf: $a1
    ei                                            ; $50c0: $fb
    ldh [$2b], a                                  ; $50c1: $e0 $2b
    rst $08                                       ; $50c3: $cf
    xor d                                         ; $50c4: $aa
    or $cf                                        ; $50c5: $f6 $cf
    db $f4                                        ; $50c7: $f4
    adc d                                         ; $50c8: $8a
    ld a, b                                       ; $50c9: $78
    jp nz, $c0e5                                  ; $50ca: $c2 $e5 $c0

    pop hl                                        ; $50cd: $e1
    ld h, [hl]                                    ; $50ce: $66
    and c                                         ; $50cf: $a1
    inc l                                         ; $50d0: $2c
    inc l                                         ; $50d1: $2c
    dec bc                                        ; $50d2: $0b
    dec bc                                        ; $50d3: $0b
    add c                                         ; $50d4: $81
    xor b                                         ; $50d5: $a8
    ld [bc], a                                    ; $50d6: $02
    or $d2                                        ; $50d7: $f6 $d2
    inc l                                         ; $50d9: $2c
    call nc, Call_000_39e1                        ; $50da: $d4 $e1 $39
    and h                                         ; $50dd: $a4
    ld b, [hl]                                    ; $50de: $46
    pop bc                                        ; $50df: $c1
    or b                                          ; $50e0: $b0
    and l                                         ; $50e1: $a5
    cp $e2                                        ; $50e2: $fe $e2
    cp a                                          ; $50e4: $bf
    ldh [rP1], a                                  ; $50e5: $e0 $00
    add c                                         ; $50e7: $81
    or c                                          ; $50e8: $b1
    ld b, e                                       ; $50e9: $43
    and a                                         ; $50ea: $a7
    ret nz                                        ; $50eb: $c0

    db $eb                                        ; $50ec: $eb
    ret nc                                        ; $50ed: $d0

    jp nz, $8462                                  ; $50ee: $c2 $62 $84

    ld a, [hl]                                    ; $50f1: $7e
    ld [c], a                                     ; $50f2: $e2
    and [hl]                                      ; $50f3: $a6
    and $81                                       ; $50f4: $e6 $81
    xor e                                         ; $50f6: $ab
    nop                                           ; $50f7: $00
    add hl, sp                                    ; $50f8: $39
    add a                                         ; $50f9: $87
    ld a, $a1                                     ; $50fa: $3e $a1
    add c                                         ; $50fc: $81
    and $1c                                       ; $50fd: $e6 $1c
    add [hl]                                      ; $50ff: $86
    ld hl, sp-$17                                 ; $5100: $f8 $e9
    adc e                                         ; $5102: $8b
    push de                                       ; $5103: $d5
    or b                                          ; $5104: $b0
    and [hl]                                      ; $5105: $a6
    ret nz                                        ; $5106: $c0

    add sp, $00                                   ; $5107: $e8 $00
    push de                                       ; $5109: $d5
    ld l, c                                       ; $510a: $69
    pop de                                        ; $510b: $d1
    add a                                         ; $510c: $87
    call nz, $8ba5                                ; $510d: $c4 $a5 $8b
    jp z, $8371                                   ; $5110: $ca $71 $83

    or e                                          ; $5113: $b3
    ld l, l                                       ; $5114: $6d
    dec d                                         ; $5115: $15
    xor c                                         ; $5116: $a9
    ld sp, hl                                     ; $5117: $f9
    and $00                                       ; $5118: $e6 $00
    add a                                         ; $511a: $87
    rst $00                                       ; $511b: $c7
    or h                                          ; $511c: $b4
    ld l, c                                       ; $511d: $69
    ccf                                           ; $511e: $3f
    and $c1                                       ; $511f: $e6 $c1
    jp nz, $ec7e                                  ; $5121: $c2 $7e $ec

jr_059_5124:
    ld c, [hl]                                    ; $5124: $4e
    and a                                         ; $5125: $a7
    ld b, a                                       ; $5126: $47
    push bc                                       ; $5127: $c5
    add c                                         ; $5128: $81
    xor e                                         ; $5129: $ab
    nop                                           ; $512a: $00
    dec h                                         ; $512b: $25
    add sp, -$7f                                  ; $512c: $e8 $81
    jp Jump_059_63b8                              ; $512e: $c3 $b8 $63


    push de                                       ; $5131: $d5
    ld l, c                                       ; $5132: $69
    ld c, l                                       ; $5133: $4d
    xor c                                         ; $5134: $a9
    db $fd                                        ; $5135: $fd
    ld h, l                                       ; $5136: $65
    inc bc                                        ; $5137: $03
    rst $08                                       ; $5138: $cf
    rst $28                                       ; $5139: $ef
    ld b, c                                       ; $513a: $41
    nop                                           ; $513b: $00
    cp a                                          ; $513c: $bf
    ret                                           ; $513d: $c9


    ld a, [$0dec]                                 ; $513e: $fa $ec $0d
    and l                                         ; $5141: $a5
    pop de                                        ; $5142: $d1
    adc c                                         ; $5143: $89
    ld sp, hl                                     ; $5144: $f9
    adc b                                         ; $5145: $88
    ld a, a                                       ; $5146: $7f
    add sp, -$05                                  ; $5147: $e8 $fb
    ret                                           ; $5149: $c9


    push de                                       ; $514a: $d5
    ld l, b                                       ; $514b: $68
    nop                                           ; $514c: $00
    jp $014a                                      ; $514d: $c3 $4a $01


    or c                                          ; $5150: $b1
    cp $4b                                        ; $5151: $fe $4b
    push de                                       ; $5153: $d5
    ld l, a                                       ; $5154: $6f
    inc bc                                        ; $5155: $03
    adc c                                         ; $5156: $89
    rst $30                                       ; $5157: $f7
    ld [hl], d                                    ; $5158: $72
    add b                                         ; $5159: $80
    xor c                                         ; $515a: $a9
    push de                                       ; $515b: $d5
    ld l, a                                       ; $515c: $6f
    nop                                           ; $515d: $00
    inc bc                                        ; $515e: $03
    adc e                                         ; $515f: $8b
    ld bc, $00b0                                  ; $5160: $01 $b0 $00
    db $eb                                        ; $5163: $eb
    push de                                       ; $5164: $d5
    ld l, [hl]                                    ; $5165: $6e
    inc bc                                        ; $5166: $03
    adc e                                         ; $5167: $8b
    rst $30                                       ; $5168: $f7
    ld [hl], c                                    ; $5169: $71
    ret nz                                        ; $516a: $c0

    and b                                         ; $516b: $a0
    rst $38                                       ; $516c: $ff
    xor h                                         ; $516d: $ac
    nop                                           ; $516e: $00
    sbc $ee                                       ; $516f: $de $ee
    add $2a                                       ; $5171: $c6 $2a
    ld hl, $b4c5                                  ; $5173: $21 $c5 $b4
    ld b, [hl]                                    ; $5176: $46
    jp $95cb                                      ; $5177: $c3 $cb $95


    ld d, b                                       ; $517a: $50
    add $2a                                       ; $517b: $c6 $2a
    or b                                          ; $517d: $b0
    and e                                         ; $517e: $a3
    nop                                           ; $517f: $00
    di                                            ; $5180: $f3
    add hl, hl                                    ; $5181: $29
    add c                                         ; $5182: $81
    db $ed                                        ; $5183: $ed
    sbc [hl]                                      ; $5184: $9e
    adc $0a                                       ; $5185: $ce $0a
    daa                                           ; $5187: $27
    ld [c], a                                     ; $5188: $e2
    xor d                                         ; $5189: $aa
    or h                                          ; $518a: $b4
    ld b, l                                       ; $518b: $45
    ld a, l                                       ; $518c: $7d
    jr z, jr_059_5124                             ; $518d: $28 $95

    ld d, e                                       ; $518f: $53
    nop                                           ; $5190: $00
    rla                                           ; $5191: $17
    and $33                                       ; $5192: $e6 $33
    and h                                         ; $5194: $a4
    ld [hl], $44                                  ; $5195: $36 $44
    or h                                          ; $5197: $b4
    ld c, e                                       ; $5198: $4b
    ret nz                                        ; $5199: $c0

    call nc, Call_000_210a                        ; $519a: $d4 $0a $21
    ld [de], a                                    ; $519d: $12
    jr nz, jr_059_51b6                            ; $519e: $20 $16

    add h                                         ; $51a0: $84
    nop                                           ; $51a1: $00
    pop af                                        ; $51a2: $f1
    adc b                                         ; $51a3: $88
    ld [hl], h                                    ; $51a4: $74
    daa                                           ; $51a5: $27
    rst $38                                       ; $51a6: $ff
    xor [hl]                                      ; $51a7: $ae
    inc d                                         ; $51a8: $14
    xor l                                         ; $51a9: $ad
    sub d                                         ; $51aa: $92
    nop                                           ; $51ab: $00
    push bc                                       ; $51ac: $c5
    db $e3                                        ; $51ad: $e3
    cp d                                          ; $51ae: $ba
    add l                                         ; $51af: $85
    ld b, d                                       ; $51b0: $42
    jr z, jr_059_51b3                             ; $51b1: $28 $00

jr_059_51b3:
    call c, $fa61                                 ; $51b3: $dc $61 $fa

jr_059_51b6:
    ld [c], a                                     ; $51b6: $e2
    nop                                           ; $51b7: $00
    xor [hl]                                      ; $51b8: $ae
    push de                                       ; $51b9: $d5
    ld [$6a12], sp                                ; $51ba: $08 $12 $6a
    jr c, @+$0c                                   ; $51bd: $38 $0a

    sbc h                                         ; $51bf: $9c
    ld h, h                                       ; $51c0: $64
    nop                                           ; $51c1: $00
    add a                                         ; $51c2: $87
    nop                                           ; $51c3: $00
    push de                                       ; $51c4: $d5
    db $10                                        ; $51c5: $10
    cp [hl]                                       ; $51c6: $be
    db $ec                                        ; $51c7: $ec
    jr c, jr_059_51d4                             ; $51c8: $38 $0a

    db $db                                        ; $51ca: $db
    ld b, e                                       ; $51cb: $43
    dec sp                                        ; $51cc: $3b
    inc c                                         ; $51cd: $0c
    ld b, b                                       ; $51ce: $40
    rst $08                                       ; $51cf: $cf
    ld a, [bc]                                    ; $51d0: $0a
    daa                                           ; $51d1: $27
    jr c, jr_059_51e0                             ; $51d2: $38 $0c

jr_059_51d4:
    nop                                           ; $51d4: $00
    sub [hl]                                      ; $51d5: $96
    ld b, e                                       ; $51d6: $43
    add d                                         ; $51d7: $82
    xor c                                         ; $51d8: $a9
    ld b, b                                       ; $51d9: $40
    pop de                                        ; $51da: $d1
    dec hl                                        ; $51db: $2b
    ld h, h                                       ; $51dc: $64
    dec [hl]                                      ; $51dd: $35
    adc c                                         ; $51de: $89
    ld b, d                                       ; $51df: $42

jr_059_51e0:
    ld sp, $d340                                  ; $51e0: $31 $40 $d3
    sub d                                         ; $51e3: $92
    ld b, e                                       ; $51e4: $43
    nop                                           ; $51e5: $00
    ld a, [bc]                                    ; $51e6: $0a
    ld h, $38                                     ; $51e7: $26 $38
    inc c                                         ; $51e9: $0c
    ld [bc], a                                    ; $51ea: $02
    xor h                                         ; $51eb: $ac
    sbc $93                                       ; $51ec: $de $93
    di                                            ; $51ee: $f3
    db $ec                                        ; $51ef: $ec
    add c                                         ; $51f0: $81
    dec bc                                        ; $51f1: $0b
    ld [bc], a                                    ; $51f2: $02
    adc e                                         ; $51f3: $8b
    nop                                           ; $51f4: $00
    or e                                          ; $51f5: $b3
    nop                                           ; $51f6: $00
    ld c, h                                       ; $51f7: $4c
    and a                                         ; $51f8: $a7
    ld b, d                                       ; $51f9: $42
    add hl, sp                                    ; $51fa: $39
    db $fc                                        ; $51fb: $fc
    ei                                            ; $51fc: $fb
    ld b, d                                       ; $51fd: $42
    ld [hl-], a                                   ; $51fe: $32
    rst $38                                       ; $51ff: $ff
    rst $38                                       ; $5200: $ff
    ld h, $24                                     ; $5201: $26 $24
    sbc a                                         ; $5203: $9f
    ld [hl+], a                                   ; $5204: $22
    ccf                                           ; $5205: $3f
    ld [hl], b                                    ; $5206: $70
    nop                                           ; $5207: $00
    rst $38                                       ; $5208: $ff
    rst $38                                       ; $5209: $ff
    ld [c], a                                     ; $520a: $e2
    adc l                                         ; $520b: $8d
    cp [hl]                                       ; $520c: $be
    push bc                                       ; $520d: $c5
    inc b                                         ; $520e: $04
    ld c, [hl]                                    ; $520f: $4e
    add b                                         ; $5210: $80
    db $fc                                        ; $5211: $fc
    db $fc                                        ; $5212: $fc
    and a                                         ; $5213: $a7
    ld a, a                                       ; $5214: $7f
    add hl, hl                                    ; $5215: $29
    rst $38                                       ; $5216: $ff
    rst $38                                       ; $5217: $ff
    nop                                           ; $5218: $00
    ld b, b                                       ; $5219: $40
    db $ec                                        ; $521a: $ec

jr_059_521b:
    add e                                         ; $521b: $83
    add l                                         ; $521c: $85
    add h                                         ; $521d: $84
    cpl                                           ; $521e: $2f
    ld b, b                                       ; $521f: $40
    rst $38                                       ; $5220: $ff
    ld c, l                                       ; $5221: $4d
    jr z, jr_059_521b                             ; $5222: $28 $f7

    ld [$ffff], sp                                ; $5224: $08 $ff $ff
    and h                                         ; $5227: $a4
    dec b                                         ; $5228: $05
    nop                                           ; $5229: $00
    ret nz                                        ; $522a: $c0

    db $ed                                        ; $522b: $ed
    rst $38                                       ; $522c: $ff
    rst $38                                       ; $522d: $ff
    ld [hl], e                                    ; $522e: $73
    call nc, $8ecd                                ; $522f: $d4 $cd $8e
    rst $38                                       ; $5232: $ff
    rst $38                                       ; $5233: $ff
    rst $38                                       ; $5234: $ff
    rst $38                                       ; $5235: $ff
    sub [hl]                                      ; $5236: $96
    rst $38                                       ; $5237: $ff
    rst $38                                       ; $5238: $ff
    rst $38                                       ; $5239: $ff
    nop                                           ; $523a: $00
    db $d3                                        ; $523b: $d3
    rst $38                                       ; $523c: $ff
    rst $38                                       ; $523d: $ff
    rst $38                                       ; $523e: $ff
    rst $38                                       ; $523f: $ff
    rst $38                                       ; $5240: $ff
    rst $38                                       ; $5241: $ff
    rst $38                                       ; $5242: $ff
    scf                                           ; $5243: $37
    ldh a, [$dc]                                  ; $5244: $f0 $dc
    rst $38                                       ; $5246: $ff
    rst $38                                       ; $5247: $ff
    rst $38                                       ; $5248: $ff
    rst $38                                       ; $5249: $ff
    rst $38                                       ; $524a: $ff
    nop                                           ; $524b: $00
    rst $38                                       ; $524c: $ff
    rst $38                                       ; $524d: $ff
    rst $38                                       ; $524e: $ff
    rst $38                                       ; $524f: $ff
    rst $38                                       ; $5250: $ff
    rst $38                                       ; $5251: $ff
    rst $38                                       ; $5252: $ff
    rst $38                                       ; $5253: $ff
    rst $38                                       ; $5254: $ff
    rst $38                                       ; $5255: $ff
    rst $38                                       ; $5256: $ff
    rst $38                                       ; $5257: $ff
    rst $38                                       ; $5258: $ff
    rst $38                                       ; $5259: $ff
    rst $38                                       ; $525a: $ff
    rst $38                                       ; $525b: $ff
    nop                                           ; $525c: $00
    rst $38                                       ; $525d: $ff
    rst $38                                       ; $525e: $ff
    rst $38                                       ; $525f: $ff
    rst $38                                       ; $5260: $ff
    rst $38                                       ; $5261: $ff
    rst $38                                       ; $5262: $ff
    rst $38                                       ; $5263: $ff
    rst $38                                       ; $5264: $ff
    rst $38                                       ; $5265: $ff
    rst $38                                       ; $5266: $ff
    rst $38                                       ; $5267: $ff
    rst $38                                       ; $5268: $ff
    rst $38                                       ; $5269: $ff
    rst $38                                       ; $526a: $ff
    nop                                           ; $526b: $00
    cp a                                          ; $526c: $bf
    nop                                           ; $526d: $00
    rst $38                                       ; $526e: $ff
    rst $38                                       ; $526f: $ff
    rst $38                                       ; $5270: $ff
    rst $38                                       ; $5271: $ff
    rst $38                                       ; $5272: $ff
    rst $38                                       ; $5273: $ff
    rst $38                                       ; $5274: $ff
    rst $38                                       ; $5275: $ff
    call c, Call_000_0033                         ; $5276: $dc $33 $00
    nop                                           ; $5279: $00
    nop                                           ; $527a: $00
    db $fd                                        ; $527b: $fd
    jr nz, @+$01                                  ; $527c: $20 $ff

    pop hl                                        ; $527e: $e1
    ld a, [bc]                                    ; $527f: $0a
    dec bc                                        ; $5280: $0b
    ld sp, $3131                                  ; $5281: $31 $31 $31
    ld c, l                                       ; $5284: $4d
    rst $38                                       ; $5285: $ff
    ld a, [hl-]                                   ; $5286: $3a
    ld d, h                                       ; $5287: $54
    ld d, l                                       ; $5288: $55
    ld b, [hl]                                    ; $5289: $46
    ld c, l                                       ; $528a: $4d
    ld sp, $5b60                                  ; $528b: $31 $60 $5b
    db $e3                                        ; $528e: $e3
    ld e, e                                       ; $528f: $5b
    nop                                           ; $5290: $00
    rst $38                                       ; $5291: $ff
    rst $38                                       ; $5292: $ff
    rst $20                                       ; $5293: $e7
    and $c2                                       ; $5294: $e6 $c2
    push hl                                       ; $5296: $e5
    ld sp, $324d                                  ; $5297: $31 $4d $32
    add l                                         ; $529a: $85
    ld l, b                                       ; $529b: $68
    rst $38                                       ; $529c: $ff
    ldh [$32], a                                  ; $529d: $e0 $32
    cp a                                          ; $529f: $bf
    pop hl                                        ; $52a0: $e1
    jp z, $c0ff                                   ; $52a1: $ca $ff $c0

    add sp, -$3e                                  ; $52a4: $e8 $c2
    db $e3                                        ; $52a6: $e3
    ld sp, $47af                                  ; $52a7: $31 $af $47
    ld [hl-], a                                   ; $52aa: $32
    ld l, d                                       ; $52ab: $6a
    ld l, h                                       ; $52ac: $6c
    rst $38                                       ; $52ad: $ff
    ldh [rOCPS], a                                ; $52ae: $e0 $6a
    cp a                                          ; $52b0: $bf
    ldh [$5f], a                                  ; $52b1: $e0 $5f
    ld hl, sp-$36                                 ; $52b3: $f8 $ca
    rst $38                                       ; $52b5: $ff
    add sp, -$19                                  ; $52b6: $e8 $e7
    jp nz, Jump_059_46e4                          ; $52b8: $c2 $e4 $46

    ld [hl], $6a                                  ; $52bb: $36 $6a
    ld l, l                                       ; $52bd: $6d
    ld l, d                                       ; $52be: $6a
    rst $38                                       ; $52bf: $ff
    ld l, b                                       ; $52c0: $68
    ld l, b                                       ; $52c1: $68
    ld l, d                                       ; $52c2: $6a
    ld l, e                                       ; $52c3: $6b
    ld l, c                                       ; $52c4: $69
    add hl, sp                                    ; $52c5: $39
    ld sp, $785e                                  ; $52c6: $31 $5e $78
    jp z, $e8ff                                   ; $52c9: $ca $ff $e8

    rst $20                                       ; $52cc: $e7
    call nz, $54e1                                ; $52cd: $c4 $e1 $54
    ld d, l                                       ; $52d0: $55
    ld [hl], $6a                                  ; $52d1: $36 $6a
    pop bc                                        ; $52d3: $c1
    ldh [rIE], a                                  ; $52d4: $e0 $ff
    ld l, d                                       ; $52d6: $6a
    ld l, b                                       ; $52d7: $68
    ld l, d                                       ; $52d8: $6a
    ld l, c                                       ; $52d9: $69
    ld l, e                                       ; $52da: $6b
    ld l, c                                       ; $52db: $69
    ld d, e                                       ; $52dc: $53
    ld sp, $31d9                                  ; $52dd: $31 $d9 $31
    jp z, $c0ff                                   ; $52e0: $ca $ff $c0

    add sp, $3c                                   ; $52e3: $e8 $3c
    ld [hl], $08                                  ; $52e5: $36 $08
    pop hl                                        ; $52e7: $e1
    ld l, l                                       ; $52e8: $6d
    ld l, l                                       ; $52e9: $6d
    ld [hl], a                                    ; $52ea: $77
    jr nc, jr_059_5356                            ; $52eb: $30 $69

    ld l, c                                       ; $52ed: $69
    db $fd                                        ; $52ee: $fd
    ldh [rOCPD], a                                ; $52ef: $e0 $6b
    ld l, c                                       ; $52f1: $69
    ld d, d                                       ; $52f2: $52
    ret nz                                        ; $52f3: $c0

    rst $38                                       ; $52f4: $ff
    or $ea                                        ; $52f5: $f6 $ea
    jp hl                                         ; $52f7: $e9


    ld c, c                                       ; $52f8: $49
    ld c, b                                       ; $52f9: $48
    ld [$30e2], sp                                ; $52fa: $08 $e2 $30
    jr nc, jr_059_532f                            ; $52fd: $30 $30

    ld l, c                                       ; $52ff: $69
    jr c, @-$7e                                   ; $5300: $38 $80

    db $e3                                        ; $5302: $e3
    ret nz                                        ; $5303: $c0

    rst $38                                       ; $5304: $ff
    db $eb                                        ; $5305: $eb
    ld [$6939], a                                 ; $5306: $ea $39 $69
    ld l, e                                       ; $5309: $6b
    call nz, $bfe0                                ; $530a: $c4 $e0 $bf
    pop hl                                        ; $530d: $e1
    and h                                         ; $530e: $a4
    ld bc, $00e0                                  ; $530f: $01 $e0 $00
    ldh [rOCPS], a                                ; $5312: $e0 $6a
    nop                                           ; $5314: $00
    rst $38                                       ; $5315: $ff
    db $eb                                        ; $5316: $eb
    ld [$c053], a                                 ; $5317: $ea $53 $c0
    ldh [$6d], a                                  ; $531a: $e0 $6d
    pop hl                                        ; $531c: $e1
    ld l, l                                       ; $531d: $6d
    ccf                                           ; $531e: $3f
    ldh [$82], a                                  ; $531f: $e0 $82
    pop bc                                        ; $5321: $c1
    add b                                         ; $5322: $80
    rst $18                                       ; $5323: $df
    rst $28                                       ; $5324: $ef
    xor $52                                       ; $5325: $ee $52
    ld l, c                                       ; $5327: $69
    ld l, e                                       ; $5328: $6b
    add [hl]                                      ; $5329: $86
    add $c0                                       ; $532a: $c6 $c0
    ld b, h                                       ; $532c: $44
    ld b, h                                       ; $532d: $44
    add d                                         ; $532e: $82

jr_059_532f:
    pop hl                                        ; $532f: $e1
    add b                                         ; $5330: $80
    ret nz                                        ; $5331: $c0

    nop                                           ; $5332: $00
    rst $18                                       ; $5333: $df
    ret nz                                        ; $5334: $c0

    xor $6d                                       ; $5335: $ee $6d
    rst $38                                       ; $5337: $ff
    ld l, d                                       ; $5338: $6a
    ld b, h                                       ; $5339: $44
    ld b, l                                       ; $533a: $45
    inc [hl]                                      ; $533b: $34
    inc [hl]                                      ; $533c: $34
    ld b, l                                       ; $533d: $45
    ld d, h                                       ; $533e: $54
    ld d, l                                       ; $533f: $55
    rst $38                                       ; $5340: $ff
    ld d, l                                       ; $5341: $55
    ld d, l                                       ; $5342: $55
    ld d, h                                       ; $5343: $54
    ld b, l                                       ; $5344: $45
    ld c, l                                       ; $5345: $4d
    ld sp, $5f31                                  ; $5346: $31 $31 $5f
    inc a                                         ; $5349: $3c
    ret nz                                        ; $534a: $c0

    rst $38                                       ; $534b: $ff
    nop                                           ; $534c: $00
    jp hl                                         ; $534d: $e9


    ld l, d                                       ; $534e: $6a
    ld l, d                                       ; $534f: $6a
    ld [hl-], a                                   ; $5350: $32
    inc [hl]                                      ; $5351: $34
    cp [hl]                                       ; $5352: $be
    and d                                         ; $5353: $a2
    ei                                            ; $5354: $fb
    push hl                                       ; $5355: $e5

jr_059_5356:
    reti                                          ; $5356: $d9


    ld e, [hl]                                    ; $5357: $5e
    ret nz                                        ; $5358: $c0

    rst $38                                       ; $5359: $ff
    jp hl                                         ; $535a: $e9


    add sp, $4d                                   ; $535b: $e8 $4d
    ld b, [hl]                                    ; $535d: $46
    inc c                                         ; $535e: $0c
    and b                                         ; $535f: $a0
    ld sp, $df31                                  ; $5360: $31 $31 $df
    ld de, $1414                                  ; $5363: $11 $14 $14
    ld [de], a                                    ; $5366: $12
    ld de, $e0f9                                  ; $5367: $11 $f9 $e0
    ld [de], a                                    ; $536a: $12
    add hl, hl                                    ; $536b: $29
    rst $00                                       ; $536c: $c7
    ld sp, $6031                                  ; $536d: $31 $31 $60
    jp z, $c0ff                                   ; $5370: $ca $ff $c0

    xor c                                         ; $5373: $a9
    jp nz, $12e1                                  ; $5374: $c2 $e1 $12

    ld hl, $24ff                                  ; $5377: $21 $ff $24
    inc h                                         ; $537a: $24
    ld [hl+], a                                   ; $537b: $22
    ld hl, $1212                                  ; $537c: $21 $12 $12
    ld hl, $b122                                  ; $537f: $21 $22 $b1
    daa                                           ; $5382: $27
    cp a                                          ; $5383: $bf
    ldh [$ca], a                                  ; $5384: $e0 $ca
    rst $38                                       ; $5386: $ff
    add sp, -$19                                  ; $5387: $e8 $e7
    ld e, h                                       ; $5389: $5c
    ld e, l                                       ; $538a: $5d
    add e                                         ; $538b: $83
    ldh [rNR42], a                                ; $538c: $e0 $21
    ei                                            ; $538e: $fb
    ld [hl+], a                                   ; $538f: $22
    db $10                                        ; $5390: $10
    ld a, b                                       ; $5391: $78
    add c                                         ; $5392: $81
    ld [hl+], a                                   ; $5393: $22
    ld [hl+], a                                   ; $5394: $22
    jr nz, jr_059_53b7                            ; $5395: $20 $20

    db $10                                        ; $5397: $10
    ld hl, sp-$41                                 ; $5398: $f8 $bf
    ldh [$ca], a                                  ; $539a: $e0 $ca
    rst $38                                       ; $539c: $ff
    add sp, -$19                                  ; $539d: $e8 $e7
    ld e, e                                       ; $539f: $5b
    ld e, e                                       ; $53a0: $5b
    ld h, b                                       ; $53a1: $60
    ld sp, $002b                                  ; $53a2: $31 $2b $00
    jp nz, $fce2                                  ; $53a5: $c2 $e2 $fc

    db $e4                                        ; $53a8: $e4
    cp a                                          ; $53a9: $bf
    ldh [$ca], a                                  ; $53aa: $e0 $ca
    rst $38                                       ; $53ac: $ff
    rst $38                                       ; $53ad: $ff
    rst $38                                       ; $53ae: $ff
    rst $38                                       ; $53af: $ff
    rst $38                                       ; $53b0: $ff
    rst $38                                       ; $53b1: $ff
    rst $38                                       ; $53b2: $ff
    rst $38                                       ; $53b3: $ff
    rst $38                                       ; $53b4: $ff
    nop                                           ; $53b5: $00
    rst $38                                       ; $53b6: $ff

jr_059_53b7:
    rst $38                                       ; $53b7: $ff
    rst $38                                       ; $53b8: $ff
    rst $38                                       ; $53b9: $ff
    rst $38                                       ; $53ba: $ff
    rst $38                                       ; $53bb: $ff
    rst $38                                       ; $53bc: $ff
    rst $38                                       ; $53bd: $ff
    rst $38                                       ; $53be: $ff
    rst $38                                       ; $53bf: $ff
    rst $38                                       ; $53c0: $ff
    rst $38                                       ; $53c1: $ff
    rst $38                                       ; $53c2: $ff
    rst $38                                       ; $53c3: $ff
    rst $38                                       ; $53c4: $ff
    rst $38                                       ; $53c5: $ff
    nop                                           ; $53c6: $00
    rst $38                                       ; $53c7: $ff
    rst $38                                       ; $53c8: $ff
    rst $38                                       ; $53c9: $ff
    rst $38                                       ; $53ca: $ff
    rst $38                                       ; $53cb: $ff
    rst $38                                       ; $53cc: $ff
    rst $38                                       ; $53cd: $ff
    rst $38                                       ; $53ce: $ff
    rst $38                                       ; $53cf: $ff
    rst $38                                       ; $53d0: $ff
    rst $38                                       ; $53d1: $ff
    rst $38                                       ; $53d2: $ff
    rst $38                                       ; $53d3: $ff
    rst $38                                       ; $53d4: $ff
    rst $38                                       ; $53d5: $ff
    rst $38                                       ; $53d6: $ff
    nop                                           ; $53d7: $00
    rst $38                                       ; $53d8: $ff
    rst $38                                       ; $53d9: $ff
    rst $38                                       ; $53da: $ff
    rst $38                                       ; $53db: $ff
    rst $38                                       ; $53dc: $ff
    rst $38                                       ; $53dd: $ff
    rst $38                                       ; $53de: $ff
    rst $38                                       ; $53df: $ff
    rst $38                                       ; $53e0: $ff
    rst $38                                       ; $53e1: $ff
    rst $38                                       ; $53e2: $ff
    rst $38                                       ; $53e3: $ff
    rst $38                                       ; $53e4: $ff
    rst $38                                       ; $53e5: $ff
    rst $38                                       ; $53e6: $ff
    rst $38                                       ; $53e7: $ff
    nop                                           ; $53e8: $00
    rst $38                                       ; $53e9: $ff
    rst $38                                       ; $53ea: $ff
    rst $38                                       ; $53eb: $ff
    rst $38                                       ; $53ec: $ff
    rst $38                                       ; $53ed: $ff
    rst $38                                       ; $53ee: $ff
    rst $38                                       ; $53ef: $ff
    rst $38                                       ; $53f0: $ff
    rst $38                                       ; $53f1: $ff
    rst $38                                       ; $53f2: $ff
    rst $38                                       ; $53f3: $ff
    rst $38                                       ; $53f4: $ff
    rst $38                                       ; $53f5: $ff
    rst $38                                       ; $53f6: $ff
    rst $38                                       ; $53f7: $ff
    rst $38                                       ; $53f8: $ff
    nop                                           ; $53f9: $00
    rst $38                                       ; $53fa: $ff
    rst $38                                       ; $53fb: $ff
    rst $38                                       ; $53fc: $ff
    rst $38                                       ; $53fd: $ff
    rst $38                                       ; $53fe: $ff
    rst $38                                       ; $53ff: $ff
    rst $38                                       ; $5400: $ff
    rst $38                                       ; $5401: $ff
    rst $38                                       ; $5402: $ff
    rst $38                                       ; $5403: $ff
    rst $38                                       ; $5404: $ff
    rst $38                                       ; $5405: $ff
    rst $38                                       ; $5406: $ff
    rst $38                                       ; $5407: $ff
    rst $38                                       ; $5408: $ff
    rst $38                                       ; $5409: $ff
    nop                                           ; $540a: $00
    rst $38                                       ; $540b: $ff
    rst $38                                       ; $540c: $ff
    rst $38                                       ; $540d: $ff
    rst $38                                       ; $540e: $ff
    rst $38                                       ; $540f: $ff
    rst $38                                       ; $5410: $ff
    rst $38                                       ; $5411: $ff
    rst $38                                       ; $5412: $ff
    rst $38                                       ; $5413: $ff
    rst $38                                       ; $5414: $ff
    rst $38                                       ; $5415: $ff
    rst $38                                       ; $5416: $ff
    rst $38                                       ; $5417: $ff
    rst $38                                       ; $5418: $ff
    rst $38                                       ; $5419: $ff
    rst $38                                       ; $541a: $ff
    nop                                           ; $541b: $00
    rst $38                                       ; $541c: $ff
    rst $38                                       ; $541d: $ff
    rst $38                                       ; $541e: $ff
    rst $38                                       ; $541f: $ff
    rst $38                                       ; $5420: $ff
    rst $38                                       ; $5421: $ff
    rst $38                                       ; $5422: $ff
    rst $38                                       ; $5423: $ff
    rst $38                                       ; $5424: $ff
    rst $38                                       ; $5425: $ff
    rst $38                                       ; $5426: $ff
    rst $38                                       ; $5427: $ff
    rst $38                                       ; $5428: $ff
    rst $38                                       ; $5429: $ff
    rst $38                                       ; $542a: $ff
    rst $38                                       ; $542b: $ff
    nop                                           ; $542c: $00
    rst $38                                       ; $542d: $ff
    rst $38                                       ; $542e: $ff
    rst $38                                       ; $542f: $ff
    rst $38                                       ; $5430: $ff
    rst $38                                       ; $5431: $ff
    rst $38                                       ; $5432: $ff
    rst $38                                       ; $5433: $ff
    rst $38                                       ; $5434: $ff
    rst $38                                       ; $5435: $ff
    rst $38                                       ; $5436: $ff
    rst $38                                       ; $5437: $ff
    rst $38                                       ; $5438: $ff
    rst $38                                       ; $5439: $ff
    rst $38                                       ; $543a: $ff
    rst $38                                       ; $543b: $ff
    rst $38                                       ; $543c: $ff
    nop                                           ; $543d: $00
    rst $38                                       ; $543e: $ff
    rst $38                                       ; $543f: $ff
    rst $38                                       ; $5440: $ff
    rst $38                                       ; $5441: $ff
    rst $38                                       ; $5442: $ff
    rst $38                                       ; $5443: $ff
    rst $38                                       ; $5444: $ff
    rst $38                                       ; $5445: $ff
    rst $38                                       ; $5446: $ff
    rst $38                                       ; $5447: $ff
    rst $38                                       ; $5448: $ff
    rst $38                                       ; $5449: $ff
    rst $38                                       ; $544a: $ff
    rst $38                                       ; $544b: $ff
    rst $38                                       ; $544c: $ff
    rst $38                                       ; $544d: $ff
    nop                                           ; $544e: $00
    rst $38                                       ; $544f: $ff
    rst $38                                       ; $5450: $ff
    rst $38                                       ; $5451: $ff
    rst $38                                       ; $5452: $ff
    rst $38                                       ; $5453: $ff
    rst $38                                       ; $5454: $ff
    rst $38                                       ; $5455: $ff
    rst $38                                       ; $5456: $ff
    rst $38                                       ; $5457: $ff
    rst $38                                       ; $5458: $ff
    rst $38                                       ; $5459: $ff
    rst $38                                       ; $545a: $ff
    rst $38                                       ; $545b: $ff
    rst $38                                       ; $545c: $ff
    rst $38                                       ; $545d: $ff
    rst $38                                       ; $545e: $ff
    nop                                           ; $545f: $00
    rst $38                                       ; $5460: $ff
    rst $38                                       ; $5461: $ff
    rst $38                                       ; $5462: $ff
    rst $38                                       ; $5463: $ff
    rst $38                                       ; $5464: $ff
    rst $38                                       ; $5465: $ff
    rst $38                                       ; $5466: $ff
    rst $38                                       ; $5467: $ff
    rst $38                                       ; $5468: $ff
    rst $38                                       ; $5469: $ff
    rst $38                                       ; $546a: $ff
    rst $38                                       ; $546b: $ff
    rst $38                                       ; $546c: $ff
    di                                            ; $546d: $f3
    nop                                           ; $546e: $00
    nop                                           ; $546f: $00
    nop                                           ; $5470: $00
    and l                                         ; $5471: $a5
    nop                                           ; $5472: $00
    rst $38                                       ; $5473: $ff
    push hl                                       ; $5474: $e5
    ld [hl-], a                                   ; $5475: $32
    or $e6                                        ; $5476: $f6 $e6
    rst $30                                       ; $5478: $f7
    rst $20                                       ; $5479: $e7
    dec [hl]                                      ; $547a: $35
    db $ec                                        ; $547b: $ec
    xor $37                                       ; $547c: $ee $37
    db $ec                                        ; $547e: $ec
    jp c, $c7f0                                   ; $547f: $da $f0 $c7

    add sp, $33                                   ; $5482: $e8 $33
    ld sp, $f2e0                                  ; $5484: $31 $e0 $f2
    ld [hl], $30                                  ; $5487: $36 $30
    scf                                           ; $5489: $37
    cp a                                          ; $548a: $bf
    ld h, $20                                     ; $548b: $26 $20
    daa                                           ; $548d: $27
    db $10                                        ; $548e: $10
    ld d, $17                                     ; $548f: $16 $17
    jp nz, Jump_000_34f6                          ; $5491: $c2 $f6 $34

    rst $38                                       ; $5494: $ff
    ld [hl], $32                                  ; $5495: $36 $32
    jr nc, jr_059_54d0                            ; $5497: $30 $37

    ld sp, $3133                                  ; $5499: $31 $33 $31
    inc sp                                        ; $549c: $33
    nop                                           ; $549d: $00
    and b                                         ; $549e: $a0
    ei                                            ; $549f: $fb
    rst $38                                       ; $54a0: $ff
    rst $28                                       ; $54a1: $ef
    nop                                           ; $54a2: $00
    nop                                           ; $54a3: $00
    nop                                           ; $54a4: $00
    xor l                                         ; $54a5: $ad
    ld d, h                                       ; $54a6: $54
    db $dd                                        ; $54a7: $dd
    ld d, h                                       ; $54a8: $54
    ld a, d                                       ; $54a9: $7a
    ld d, a                                       ; $54aa: $57
    ld b, b                                       ; $54ab: $40
    ld e, c                                       ; $54ac: $59
    ld hl, sp+$03                                 ; $54ad: $f8 $03
    ld c, h                                       ; $54af: $4c
    inc bc                                        ; $54b0: $03
    ld d, e                                       ; $54b1: $53
    ld bc, $008a                                  ; $54b2: $01 $8a $00
    ldh a, [$03]                                  ; $54b5: $f0 $03
    ld hl, sp+$03                                 ; $54b7: $f8 $03
    ld c, h                                       ; $54b9: $4c
    inc bc                                        ; $54ba: $03
    ld d, e                                       ; $54bb: $53
    ld bc, $47ff                                  ; $54bc: $01 $ff $47
    ldh a, [rP1]                                  ; $54bf: $f0 $00
    ld e, l                                       ; $54c1: $5d
    add hl, de                                    ; $54c2: $19
    ld c, h                                       ; $54c3: $4c
    inc bc                                        ; $54c4: $03
    ld [$0825], sp                                ; $54c5: $08 $25 $08
    dec h                                         ; $54c8: $25
    ld [$0825], sp                                ; $54c9: $08 $25 $08
    dec h                                         ; $54cc: $25
    ld [$0825], sp                                ; $54cd: $08 $25 $08

jr_059_54d0:
    dec h                                         ; $54d0: $25
    ld [$0825], sp                                ; $54d1: $08 $25 $08
    dec h                                         ; $54d4: $25
    ld [$0825], sp                                ; $54d5: $08 $25 $08
    dec h                                         ; $54d8: $25
    ld [$0825], sp                                ; $54d9: $08 $25 $08
    dec h                                         ; $54dc: $25
    db $ed                                        ; $54dd: $ed
    dec bc                                        ; $54de: $0b
    rst $38                                       ; $54df: $ff
    and $2b                                       ; $54e0: $e6 $2b
    dec hl                                        ; $54e2: $2b
    db $f4                                        ; $54e3: $f4
    pop hl                                        ; $54e4: $e1
    ld a, [bc]                                    ; $54e5: $0a
    dec bc                                        ; $54e6: $0b
    dec bc                                        ; $54e7: $0b
    ccf                                           ; $54e8: $3f
    ld c, e                                       ; $54e9: $4b
    inc c                                         ; $54ea: $0c
    inc c                                         ; $54eb: $0c
    inc c                                         ; $54ec: $0c
    ld c, h                                       ; $54ed: $4c
    ld c, h                                       ; $54ee: $4c
    db $fd                                        ; $54ef: $fd
    and $f5                                       ; $54f0: $e6 $f5
    ldh [$78], a                                  ; $54f2: $e0 $78
    ldh a, [$e0]                                  ; $54f4: $f0 $e0
    db $ec                                        ; $54f6: $ec
    ldh [$fd], a                                  ; $54f7: $e0 $fd
    ld a, [c]                                     ; $54f9: $f2
    dec bc                                        ; $54fa: $0b
    ld l, e                                       ; $54fb: $6b
    ld l, e                                       ; $54fc: $6b
    ld c, e                                       ; $54fd: $4b
    rst $38                                       ; $54fe: $ff
    ld [c], a                                     ; $54ff: $e2

Call_059_5500:
    add b                                         ; $5500: $80
    cp [hl]                                       ; $5501: $be
    pop hl                                        ; $5502: $e1
    jp $bee0                                      ; $5503: $c3 $e0 $be


    ldh [$c0], a                                  ; $5506: $e0 $c0
    jp hl                                         ; $5508: $e9


    cp c                                          ; $5509: $b9
    ldh [$b2], a                                  ; $550a: $e0 $b2
    db $e4                                        ; $550c: $e4
    or [hl]                                       ; $550d: $b6
    db $f4                                        ; $550e: $f4
    dec bc                                        ; $550f: $0b
    add hl, bc                                    ; $5510: $09
    ld l, e                                       ; $5511: $6b
    ld a, [hl]                                    ; $5512: $7e
    pop hl                                        ; $5513: $e1
    cp [hl]                                       ; $5514: $be
    db $e4                                        ; $5515: $e4
    dec hl                                        ; $5516: $2b
    rst $38                                       ; $5517: $ff
    ldh [$6f], a                                  ; $5518: $e0 $6f
    ldh [$94], a                                  ; $551a: $e0 $94
    ld [c], a                                     ; $551c: $e2
    ld a, [hl]                                    ; $551d: $7e
    db $e3                                        ; $551e: $e3
    nop                                           ; $551f: $00
    db $fc                                        ; $5520: $fc
    db $e3                                        ; $5521: $e3

jr_059_5522:
    ld [hl], b                                    ; $5522: $70
    pop hl                                        ; $5523: $e1
    or [hl]                                       ; $5524: $b6
    and $80                                       ; $5525: $e6 $80
    db $ec                                        ; $5527: $ec
    add [hl]                                      ; $5528: $86
    ld [c], a                                     ; $5529: $e2
    ld a, l                                       ; $552a: $7d
    and $39                                       ; $552b: $e6 $39
    ld [c], a                                     ; $552d: $e2
    ld d, c                                       ; $552e: $51
    pop hl                                        ; $552f: $e1
    ld h, b                                       ; $5530: $60
    add d                                         ; $5531: $82
    db $e4                                        ; $5532: $e4
    ld b, b                                       ; $5533: $40
    add sp, -$4a                                  ; $5534: $e8 $b6
    push hl                                       ; $5536: $e5
    ld b, b                                       ; $5537: $40
    db $ec                                        ; $5538: $ec
    add c                                         ; $5539: $81
    and $4b                                       ; $553a: $e6 $4b
    dec hl                                        ; $553c: $2b
    jr c, jr_059_5522                             ; $553d: $38 $e3

    inc hl                                        ; $553f: $23
    ld l, e                                       ; $5540: $6b
    dec hl                                        ; $5541: $2b
    db $10                                        ; $5542: $10
    and $0a                                       ; $5543: $e6 $0a
    and $b6                                       ; $5545: $e6 $b6
    ld [$f42c], a                                 ; $5547: $ea $2c $f4
    jp $e3f9                                      ; $554a: $c3 $f9 $e3


    add hl, bc                                    ; $554d: $09
    dec bc                                        ; $554e: $0b
    jp z, $ffc0                                   ; $554f: $ca $c0 $ff

    jp Jump_059_424b                              ; $5552: $c3 $4b $42


    ld [c], a                                     ; $5555: $e2
    rst $30                                       ; $5556: $f7
    pop bc                                        ; $5557: $c1
    jp z, $c7e6                                   ; $5558: $ca $e6 $c7

    push bc                                       ; $555b: $c5
    inc e                                         ; $555c: $1c
    jp nz, Jump_000_3fc8                          ; $555d: $c2 $c8 $3f

    db $ed                                        ; $5560: $ed
    dec bc                                        ; $5561: $0b
    dec hl                                        ; $5562: $2b
    ld c, e                                       ; $5563: $4b
    add c                                         ; $5564: $81

jr_059_5565:
    push hl                                       ; $5565: $e5
    inc bc                                        ; $5566: $03
    ld [c], a                                     ; $5567: $e2
    ld a, d                                       ; $5568: $7a
    ldh [rP1], a                                  ; $5569: $e0 $00
    nop                                           ; $556b: $00
    pop hl                                        ; $556c: $e1
    ret nz                                        ; $556d: $c0

    ret z                                         ; $556e: $c8

    ld a, a                                       ; $556f: $7f
    jp $e7b6                                      ; $5570: $c3 $b6 $e7


    ld [hl], l                                    ; $5573: $75
    bit 1, b                                      ; $5574: $cb $48
    ret nz                                        ; $5576: $c0

    cp l                                          ; $5577: $bd
    ldh [$82], a                                  ; $5578: $e0 $82
    db $e4                                        ; $557a: $e4
    ret nz                                        ; $557b: $c0

    add c                                         ; $557c: $81
    pop hl                                        ; $557d: $e1
    halt                                          ; $557e: $76
    ret nz                                        ; $557f: $c0

    ld de, $81e5                                  ; $5580: $11 $e5 $81
    jp $cd35                                      ; $5583: $c3 $35 $cd


    ld [hl], $cc                                  ; $5586: $36 $cc
    inc l                                         ; $5588: $2c
    ld c, h                                       ; $5589: $4c
    nop                                           ; $558a: $00
    adc d                                         ; $558b: $8a
    ret nz                                        ; $558c: $c0

    add c                                         ; $558d: $81
    rst $20                                       ; $558e: $e7
    ld b, b                                       ; $558f: $40
    ld [c], a                                     ; $5590: $e2
    ld c, h                                       ; $5591: $4c
    jp $e4fe                                      ; $5592: $c3 $fe $e4


    di                                            ; $5595: $f3
    and [hl]                                      ; $5596: $a6
    ld hl, sp-$1a                                 ; $5597: $f8 $e6
    ret nz                                        ; $5599: $c0

    db $eb                                        ; $559a: $eb
    ld bc, $c82c                                  ; $559b: $01 $2c $c8
    and b                                         ; $559e: $a0
    push bc                                       ; $559f: $c5
    ret nz                                        ; $55a0: $c0

    pop bc                                        ; $55a1: $c1
    push hl                                       ; $55a2: $e5
    jr nc, jr_059_5565                            ; $55a3: $30 $c0

    ld b, c                                       ; $55a5: $41
    push bc                                       ; $55a6: $c5
    ret z                                         ; $55a7: $c8

    and a                                         ; $55a8: $a7
    or [hl]                                       ; $55a9: $b6
    db $eb                                        ; $55aa: $eb
    ld [de], a                                    ; $55ab: $12
    ret nz                                        ; $55ac: $c0

    db $ec                                        ; $55ad: $ec
    ld c, h                                       ; $55ae: $4c
    add e                                         ; $55af: $83
    and d                                         ; $55b0: $a2
    ld b, d                                       ; $55b1: $42
    db $e4                                        ; $55b2: $e4
    dec bc                                        ; $55b3: $0b
    ret nz                                        ; $55b4: $c0

    jp $c706                                      ; $55b5: $c3 $06 $c7


    ld c, h                                       ; $55b8: $4c
    push bc                                       ; $55b9: $c5
    jr nz, @-$48                                  ; $55ba: $20 $b6

    rst $20                                       ; $55bc: $e7
    add e                                         ; $55bd: $83
    rst $00                                       ; $55be: $c7
    ld a, a                                       ; $55bf: $7f
    db $e4                                        ; $55c0: $e4
    ret nz                                        ; $55c1: $c0

    add sp, $31                                   ; $55c2: $e8 $31
    and c                                         ; $55c4: $a1
    ld l, e                                       ; $55c5: $6b
    jp c, Jump_059_44a3                           ; $55c6: $da $a3 $44

    and $a0                                       ; $55c9: $e6 $a0
    jp z, $02e6                                   ; $55cb: $ca $e6 $02

    rst $08                                       ; $55ce: $cf
    dec de                                        ; $55cf: $1b
    jp $a27e                                      ; $55d0: $c3 $7e $a2


    add e                                         ; $55d3: $83
    jp nz, $fc6b                                  ; $55d4: $c2 $6b $fc

    add b                                         ; $55d7: $80
    ld l, e                                       ; $55d8: $6b
    nop                                           ; $55d9: $00
    ld b, b                                       ; $55da: $40
    and $81                                       ; $55db: $e6 $81
    call nz, $e6bc                                ; $55dd: $c4 $bc $e6
    ld b, b                                       ; $55e0: $40
    pop de                                        ; $55e1: $d1
    cp h                                          ; $55e2: $bc
    and e                                         ; $55e3: $a3
    dec sp                                        ; $55e4: $3b
    and b                                         ; $55e5: $a0
    pop bc                                        ; $55e6: $c1
    add d                                         ; $55e7: $82
    ret nz                                        ; $55e8: $c0

    pop hl                                        ; $55e9: $e1
    jr nz, jr_059_562c                            ; $55ea: $20 $40

    rst $20                                       ; $55ec: $e7
    ld b, c                                       ; $55ed: $41
    and l                                         ; $55ee: $a5
    cp a                                          ; $55ef: $bf
    add e                                         ; $55f0: $83
    or [hl]                                       ; $55f1: $b6
    and $c0                                       ; $55f2: $e6 $c0
    and b                                         ; $55f4: $a0
    inc l                                         ; $55f5: $2c
    rst $38                                       ; $55f6: $ff
    ldh [$7c], a                                  ; $55f7: $e0 $7c
    xor h                                         ; $55f9: $ac
    ld [hl], $b7                                  ; $55fa: $36 $b7
    add b                                         ; $55fc: $80
    ld l, e                                       ; $55fd: $6b
    ld l, e                                       ; $55fe: $6b
    or d                                          ; $55ff: $b2
    and c                                         ; $5600: $a1
    dec bc                                        ; $5601: $0b
    ld a, [bc]                                    ; $5602: $0a
    ld b, b                                       ; $5603: $40
    and $c0                                       ; $5604: $e6 $c0
    add sp, $00                                   ; $5606: $e8 $00
    or [hl]                                       ; $5608: $b6
    add sp, -$40                                  ; $5609: $e8 $c0
    rst $28                                       ; $560b: $ef
    cp h                                          ; $560c: $bc
    add d                                         ; $560d: $82
    dec sp                                        ; $560e: $3b
    add e                                         ; $560f: $83
    add b                                         ; $5610: $80
    db $e4                                        ; $5611: $e4
    ld h, c                                       ; $5612: $61
    ret z                                         ; $5613: $c8

    sub [hl]                                      ; $5614: $96
    db $e4                                        ; $5615: $e4
    halt                                          ; $5616: $76
    add sp, $00                                   ; $5617: $e8 $00
    add c                                         ; $5619: $81
    jp hl                                         ; $561a: $e9


    db $dd                                        ; $561b: $dd
    add l                                         ; $561c: $85
    db $10                                        ; $561d: $10
    add sp, -$39                                  ; $561e: $e8 $c7
    and [hl]                                      ; $5620: $a6
    add hl, bc                                    ; $5621: $09
    adc e                                         ; $5622: $8b
    ld c, h                                       ; $5623: $4c
    add sp, $41                                   ; $5624: $e8 $41
    ld [$8857], a                                 ; $5626: $ea $57 $88
    nop                                           ; $5629: $00
    sub $c7                                       ; $562a: $d6 $c7

jr_059_562c:
    jp Jump_059_756b                              ; $562c: $c3 $6b $75


    res 6, d                                      ; $562f: $cb $b2
    ld l, h                                       ; $5631: $6c
    ret nz                                        ; $5632: $c0

    rst $30                                       ; $5633: $f7
    dec c                                         ; $5634: $0d
    add a                                         ; $5635: $87
    ld [hl], l                                    ; $5636: $75
    jp z, Jump_059_6064                           ; $5637: $ca $64 $60

    nop                                           ; $563a: $00
    pop bc                                        ; $563b: $c1
    pop bc                                        ; $563c: $c1
    ld a, [hl]                                    ; $563d: $7e
    ld [$8f9a], a                                 ; $563e: $ea $9a $8f
    jp $b56b                                      ; $5641: $c3 $6b $b5


    jp z, $c0bd                                   ; $5644: $ca $bd $c0

    ret nz                                        ; $5647: $c0

    rst $20                                       ; $5648: $e7
    inc h                                         ; $5649: $24
    and l                                         ; $564a: $a5
    nop                                           ; $564b: $00
    ld sp, hl                                     ; $564c: $f9
    and $c3                                       ; $564d: $e6 $c3
    ld [hl], b                                    ; $564f: $70
    ret nz                                        ; $5650: $c0

    pop af                                        ; $5651: $f1
    ld a, [hl]                                    ; $5652: $7e
    and [hl]                                      ; $5653: $a6
    dec e                                         ; $5654: $1d
    and l                                         ; $5655: $a5
    rst $08                                       ; $5656: $cf
    ld h, a                                       ; $5657: $67
    jp $c664                                      ; $5658: $c3 $64 $c6


    ld b, l                                       ; $565b: $45
    nop                                           ; $565c: $00
    ld c, h                                       ; $565d: $4c
    ld h, l                                       ; $565e: $65
    ld [hl], l                                    ; $565f: $75
    ret z                                         ; $5660: $c8

    nop                                           ; $5661: $00
    res 4, h                                      ; $5662: $cb $a4
    ld d, d                                       ; $5664: $52
    add $48                                       ; $5665: $c6 $48
    ld b, d                                       ; $5667: $42
    ld h, l                                       ; $5668: $65
    or d                                          ; $5669: $b2
    ld l, a                                       ; $566a: $6f
    add b                                         ; $566b: $80
    call c, $c400                                 ; $566c: $dc $00 $c4
    adc b                                         ; $566f: $88
    ld [hl], h                                    ; $5670: $74
    rst $20                                       ; $5671: $e7
    ld a, l                                       ; $5672: $7d
    and d                                         ; $5673: $a2
    rst $38                                       ; $5674: $ff
    xor h                                         ; $5675: $ac
    db $eb                                        ; $5676: $eb
    sub b                                         ; $5677: $90
    ld b, e                                       ; $5678: $43
    ret z                                         ; $5679: $c8

    ld d, c                                       ; $567a: $51
    and [hl]                                      ; $567b: $a6
    xor a                                         ; $567c: $af
    ld h, [hl]                                    ; $567d: $66
    nop                                           ; $567e: $00
    ld b, b                                       ; $567f: $40
    and a                                         ; $5680: $a7
    ld d, [hl]                                    ; $5681: $56
    and [hl]                                      ; $5682: $a6
    ret nz                                        ; $5683: $c0

    xor $50                                       ; $5684: $ee $50
    add a                                         ; $5686: $87
    add h                                         ; $5687: $84
    adc c                                         ; $5688: $89
    xor e                                         ; $5689: $ab
    add e                                         ; $568a: $83
    inc bc                                        ; $568b: $03
    ld [$6dd5], a                                 ; $568c: $ea $d5 $6d
    nop                                           ; $568f: $00
    add $4d                                       ; $5690: $c6 $4d
    ld a, [hl]                                    ; $5692: $7e
    adc c                                         ; $5693: $89
    ld [hl-], a                                   ; $5694: $32
    add h                                         ; $5695: $84
    jp $d5c9                                      ; $5696: $c3 $c9 $d5


    ld [hl], b                                    ; $5699: $70
    add $4a                                       ; $569a: $c6 $4a
    or h                                          ; $569c: $b4
    add l                                         ; $569d: $85
    cp h                                          ; $569e: $bc
    db $eb                                        ; $569f: $eb
    nop                                           ; $56a0: $00
    ld [hl], b                                    ; $56a1: $70
    ld c, d                                       ; $56a2: $4a
    push de                                       ; $56a3: $d5
    ld l, h                                       ; $56a4: $6c
    add $4b                                       ; $56a5: $c6 $4b
    or a                                          ; $56a7: $b7
    ld l, c                                       ; $56a8: $69
    db $fc                                        ; $56a9: $fc
    ld [hl], d                                    ; $56aa: $72
    push de                                       ; $56ab: $d5
    ld l, l                                       ; $56ac: $6d
    add $4e                                       ; $56ad: $c6 $4e
    add h                                         ; $56af: $84
    adc d                                         ; $56b0: $8a
    nop                                           ; $56b1: $00
    dec a                                         ; $56b2: $3d
    ld l, $d5                                     ; $56b3: $2e $d5
    ld [hl], c                                    ; $56b5: $71
    pop af                                        ; $56b6: $f1
    call z, $c77f                                 ; $56b7: $cc $7f $c7
    ld [hl], l                                    ; $56ba: $75
    ld c, $d5                                     ; $56bb: $0e $d5
    halt                                          ; $56bd: $76
    db $d3                                        ; $56be: $d3
    ld l, $bc                                     ; $56bf: $2e $bc
    jp hl                                         ; $56c1: $e9


    nop                                           ; $56c2: $00
    ld c, d                                       ; $56c3: $4a
    ld b, b                                       ; $56c4: $40
    or $30                                        ; $56c5: $f6 $30
    push de                                       ; $56c7: $d5
    ld h, a                                       ; $56c8: $67
    adc c                                         ; $56c9: $89
    ld l, e                                       ; $56ca: $6b
    or d                                          ; $56cb: $b2
    ld l, a                                       ; $56cc: $6f
    ret nz                                        ; $56cd: $c0

    ld l, d                                       ; $56ce: $6a
    push de                                       ; $56cf: $d5
    jr nc, @-$38                                  ; $56d0: $30 $c6

    ld c, d                                       ; $56d2: $4a
    nop                                           ; $56d3: $00
    add hl, sp                                    ; $56d4: $39
    ld a, [bc]                                    ; $56d5: $0a
    ld [$0262], sp                                ; $56d6: $08 $62 $02
    xor e                                         ; $56d9: $ab
    nop                                           ; $56da: $00
    adc $c6                                       ; $56db: $ce $c6
    ld c, h                                       ; $56dd: $4c
    halt                                          ; $56de: $76
    adc d                                         ; $56df: $8a
    add c                                         ; $56e0: $81
    ld l, [hl]                                    ; $56e1: $6e
    nop                                           ; $56e2: $00
    jp nc, Jump_000_1100                          ; $56e3: $d2 $00 $11

    adc h                                         ; $56e6: $8c
    sub [hl]                                      ; $56e7: $96
    xor h                                         ; $56e8: $ac
    nop                                           ; $56e9: $00
    call c, Call_059_4ec6                         ; $56ea: $dc $c6 $4e
    add e                                         ; $56ed: $83
    add hl, bc                                    ; $56ee: $09
    jp nz, $d58c                                  ; $56ef: $c2 $8c $d5

    inc sp                                        ; $56f2: $33
    and [hl]                                      ; $56f3: $a6
    adc c                                         ; $56f4: $89
    nop                                           ; $56f5: $00
    ld [hl], e                                    ; $56f6: $73
    xor h                                         ; $56f7: $ac
    ret nz                                        ; $56f8: $c0

    rst $28                                       ; $56f9: $ef
    push de                                       ; $56fa: $d5
    ld l, $fe                                     ; $56fb: $2e $fe
    ld l, d                                       ; $56fd: $6a
    add hl, sp                                    ; $56fe: $39
    dec c                                         ; $56ff: $0d
    ld b, d                                       ; $5700: $42
    ld l, $0f                                     ; $5701: $2e $0f
    pop af                                        ; $5703: $f1
    ld h, h                                       ; $5704: $64
    reti                                          ; $5705: $d9


    nop                                           ; $5706: $00
    adc c                                         ; $5707: $89
    ld [hl], a                                    ; $5708: $77
    ld l, e                                       ; $5709: $6b
    ld l, h                                       ; $570a: $6c
    ld c, $84                                     ; $570b: $0e $84
    ld h, h                                       ; $570d: $64
    call Call_059_7c49                            ; $570e: $cd $49 $7c
    cp c                                          ; $5711: $b9
    ld [hl], b                                    ; $5712: $70
    add hl, sp                                    ; $5713: $39
    add hl, bc                                    ; $5714: $09
    ld a, a                                       ; $5715: $7f
    ld a, [$7100]                                 ; $5716: $fa $00 $71
    xor h                                         ; $5719: $ac
    ld h, h                                       ; $571a: $64
    jp nc, $ffc0                                  ; $571b: $d2 $c0 $ff

    ld b, b                                       ; $571e: $40
    xor $c4                                       ; $571f: $ee $c4
    inc l                                         ; $5721: $2c
    rst $38                                       ; $5722: $ff
    rst $38                                       ; $5723: $ff
    ld h, h                                       ; $5724: $64
    sbc c                                         ; $5725: $99
    ret nz                                        ; $5726: $c0

    rst $38                                       ; $5727: $ff
    nop                                           ; $5728: $00
    ld h, h                                       ; $5729: $64
    rst $18                                       ; $572a: $df
    rst $38                                       ; $572b: $ff
    rst $38                                       ; $572c: $ff
    ld h, h                                       ; $572d: $64
    db $dd                                        ; $572e: $dd
    rst $38                                       ; $572f: $ff
    rst $38                                       ; $5730: $ff
    rst $38                                       ; $5731: $ff
    rst $38                                       ; $5732: $ff
    sub [hl]                                      ; $5733: $96
    rst $38                                       ; $5734: $ff
    rst $38                                       ; $5735: $ff
    rst $38                                       ; $5736: $ff
    sbc c                                         ; $5737: $99
    push bc                                       ; $5738: $c5
    nop                                           ; $5739: $00
    rst $38                                       ; $573a: $ff
    rst $38                                       ; $573b: $ff
    rst $38                                       ; $573c: $ff
    rst $38                                       ; $573d: $ff
    rst $38                                       ; $573e: $ff
    rst $38                                       ; $573f: $ff
    rst $38                                       ; $5740: $ff
    rst $38                                       ; $5741: $ff
    ld d, h                                       ; $5742: $54
    ld l, e                                       ; $5743: $6b
    call c, $ffff                                 ; $5744: $dc $ff $ff
    rst $38                                       ; $5747: $ff
    rst $38                                       ; $5748: $ff
    rst $38                                       ; $5749: $ff
    nop                                           ; $574a: $00
    rst $38                                       ; $574b: $ff
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
    nop                                           ; $575b: $00
    rst $38                                       ; $575c: $ff
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
    nop                                           ; $576a: $00
    cp a                                          ; $576b: $bf
    nop                                           ; $576c: $00
    rst $38                                       ; $576d: $ff
    rst $38                                       ; $576e: $ff
    rst $38                                       ; $576f: $ff
    rst $38                                       ; $5770: $ff
    rst $38                                       ; $5771: $ff
    rst $38                                       ; $5772: $ff
    rst $38                                       ; $5773: $ff
    rst $38                                       ; $5774: $ff
    ld [hl], $f3                                  ; $5775: $36 $f3
    nop                                           ; $5777: $00
    nop                                           ; $5778: $00
    nop                                           ; $5779: $00
    ld e, l                                       ; $577a: $5d
    ld sp, $e6ff                                  ; $577b: $31 $ff $e6
    ld e, l                                       ; $577e: $5d
    ld e, h                                       ; $577f: $5c
    ld e, e                                       ; $5780: $5b
    rst $38                                       ; $5781: $ff
    ldh [$5a], a                                  ; $5782: $e0 $5a
    ei                                            ; $5784: $fb
    ldh [$f9], a                                  ; $5785: $e0 $f9
    nop                                           ; $5787: $00
    rst $38                                       ; $5788: $ff
    rst $38                                       ; $5789: $ff
    rst $20                                       ; $578a: $e7
    and $31                                       ; $578b: $e6 $31
    ld c, l                                       ; $578d: $4d
    ld a, [hl-]                                   ; $578e: $3a
    ld d, h                                       ; $578f: $54
    ld d, l                                       ; $5790: $55
    cpl                                           ; $5791: $2f
    ld d, l                                       ; $5792: $55
    ld d, h                                       ; $5793: $54
    ld b, [hl]                                    ; $5794: $46
    ld b, a                                       ; $5795: $47
    or a                                          ; $5796: $b7
    ldh [$60], a                                  ; $5797: $e0 $60
    jp $bee1                                      ; $5799: $c3 $e1 $be


    ldh [$ec], a                                  ; $579c: $e0 $ec
    jp z, $c0ff                                   ; $579e: $ca $ff $c0

    add sp, $39                                   ; $57a1: $e8 $39
    jr nc, @+$01                                  ; $57a3: $30 $ff

    ldh [rOCPS], a                                ; $57a5: $e0 $6a
    ld l, l                                       ; $57a7: $6d
    ld [hl], $46                                  ; $57a8: $36 $46
    cp [hl]                                       ; $57aa: $be
    pop hl                                        ; $57ab: $e1
    ld h, d                                       ; $57ac: $62
    ld h, d                                       ; $57ad: $62
    ld a, e                                       ; $57ae: $7b
    ld [c], a                                     ; $57af: $e2
    jp z, $80ff                                   ; $57b0: $ca $ff $80

    add sp, $53                                   ; $57b3: $e8 $53
    ret nz                                        ; $57b5: $c0

    db $e3                                        ; $57b6: $e3
    adc a                                         ; $57b7: $8f
    ld l, l                                       ; $57b8: $6d
    ld l, l                                       ; $57b9: $6d
    ld [hl], $3c                                  ; $57ba: $36 $3c
    add hl, sp                                    ; $57bc: $39
    push hl                                       ; $57bd: $e5
    jp z, $40ff                                   ; $57be: $ca $ff $40

    add sp, $52                                   ; $57c1: $e8 $52
    cp $c1                                        ; $57c3: $fe $c1
    db $e4                                        ; $57c5: $e4
    ld l, l                                       ; $57c6: $6d
    ld l, b                                       ; $57c7: $68
    ld b, d                                       ; $57c8: $42
    ld d, l                                       ; $57c9: $55
    ld d, h                                       ; $57ca: $54
    ld d, l                                       ; $57cb: $55
    ld b, [hl]                                    ; $57cc: $46
    and c                                         ; $57cd: $a1
    ld c, l                                       ; $57ce: $4d
    add hl, sp                                    ; $57cf: $39
    ldh [$ca], a                                  ; $57d0: $e0 $ca
    rst $38                                       ; $57d2: $ff
    ld b, b                                       ; $57d3: $40
    db $eb                                        ; $57d4: $eb
    pop bc                                        ; $57d5: $c1
    db $e3                                        ; $57d6: $e3
    ld l, b                                       ; $57d7: $68
    ld a, h                                       ; $57d8: $7c
    ldh [rOCPS], a                                ; $57d9: $e0 $6a
    ld h, e                                       ; $57db: $63
    jr nc, @+$4c                                  ; $57dc: $30 $4a

    ld a, d                                       ; $57de: $7a
    ldh [$ca], a                                  ; $57df: $e0 $ca
    rst $38                                       ; $57e1: $ff
    ret nz                                        ; $57e2: $c0

    ret z                                         ; $57e3: $c8

    ld c, c                                       ; $57e4: $49
    ld c, h                                       ; $57e5: $4c
    ld b, d                                       ; $57e6: $42
    ld [c], a                                     ; $57e7: $e2
    sbc [hl]                                      ; $57e8: $9e
    pop bc                                        ; $57e9: $c1
    db $e4                                        ; $57ea: $e4
    jr nc, jr_059_5857                            ; $57eb: $30 $6a

    ld b, d                                       ; $57ed: $42
    ld c, c                                       ; $57ee: $49
    ret nz                                        ; $57ef: $c0

    rst $38                                       ; $57f0: $ff
    add b                                         ; $57f1: $80
    ret                                           ; $57f2: $c9


    ld sp, $3ca7                                  ; $57f3: $31 $a7 $3c
    ld d, l                                       ; $57f6: $55
    ld [hl], $42                                  ; $57f7: $36 $42
    pop hl                                        ; $57f9: $e1
    dec a                                         ; $57fa: $3d
    pop hl                                        ; $57fb: $e1
    ld l, d                                       ; $57fc: $6a
    rst $30                                       ; $57fd: $f7
    pop bc                                        ; $57fe: $c1
    add hl, sp                                    ; $57ff: $39
    db $fc                                        ; $5800: $fc
    ret nz                                        ; $5801: $c0

jr_059_5802:
    rst $38                                       ; $5802: $ff
    jp hl                                         ; $5803: $e9


    add sp, $14                                   ; $5804: $e8 $14
    ld [de], a                                    ; $5806: $12
    ld e, $31                                     ; $5807: $1e $31
    ld b, a                                       ; $5809: $47
    ld b, [hl]                                    ; $580a: $46
    pop hl                                        ; $580b: $e1
    ld b, d                                       ; $580c: $42
    ret nz                                        ; $580d: $c0

    ld [c], a                                     ; $580e: $e2
    add c                                         ; $580f: $81
    pop hl                                        ; $5810: $e1
    ret nz                                        ; $5811: $c0

    rst $38                                       ; $5812: $ff
    db $ec                                        ; $5813: $ec
    db $eb                                        ; $5814: $eb
    inc h                                         ; $5815: $24
    ld d, $17                                     ; $5816: $16 $17
    ld h, $bd                                     ; $5818: $26 $bd
    and b                                         ; $581a: $a0
    inc a                                         ; $581b: $3c
    ld b, d                                       ; $581c: $42
    ld [bc], a                                    ; $581d: $02
    ldh [$c1], a                                  ; $581e: $e0 $c1
    db $e3                                        ; $5820: $e3
    ld c, h                                       ; $5821: $4c
    ld b, b                                       ; $5822: $40
    rst $38                                       ; $5823: $ff
    ld [$afe9], a                                 ; $5824: $ea $e9 $af
    jr nz, @+$22                                  ; $5827: $20 $20

    ld d, $15                                     ; $5829: $16 $15
    ld a, h                                       ; $582b: $7c
    and b                                         ; $582c: $a0
    add hl, sp                                    ; $582d: $39
    ld b, d                                       ; $582e: $42
    push hl                                       ; $582f: $e5
    ld [hl-], a                                   ; $5830: $32
    ld l, c                                       ; $5831: $69
    ld a, $c0                                     ; $5832: $3e $c0
    rst $18                                       ; $5834: $df
    ret nz                                        ; $5835: $c0

    db $eb                                        ; $5836: $eb
    jr z, jr_059_58b8                             ; $5837: $28 $7f

    pop hl                                        ; $5839: $e1
    ld c, c                                       ; $583a: $49
    ld c, b                                       ; $583b: $48
    ld [bc], a                                    ; $583c: $02
    db $e3                                        ; $583d: $e3
    jp hl                                         ; $583e: $e9


    ld [hl-], a                                   ; $583f: $32
    ld b, b                                       ; $5840: $40
    rst $18                                       ; $5841: $df
    add b                                         ; $5842: $80
    db $ed                                        ; $5843: $ed
    jr nz, jr_059_5802                            ; $5844: $20 $bc

    ret nz                                        ; $5846: $c0

    ld sp, $7281                                  ; $5847: $31 $81 $72
    adc l                                         ; $584a: $8d
    ld [hl], $83                                  ; $584b: $36 $83
    pop bc                                        ; $584d: $c1
    ld [hl], c                                    ; $584e: $71
    xor a                                         ; $584f: $af
    ld a, [hl-]                                   ; $5850: $3a
    and b                                         ; $5851: $a0
    ret nz                                        ; $5852: $c0

    cp a                                          ; $5853: $bf
    ret nz                                        ; $5854: $c0

    xor $ac                                       ; $5855: $ee $ac

jr_059_5857:
    rst $38                                       ; $5857: $ff
    xor c                                         ; $5858: $a9
    add b                                         ; $5859: $80
    ld l, a                                       ; $585a: $6f
    ld l, [hl]                                    ; $585b: $6e
    ld d, h                                       ; $585c: $54
    ld d, l                                       ; $585d: $55
    ld l, [hl]                                    ; $585e: $6e
    ld a, c                                       ; $585f: $79
    ld h, a                                       ; $5860: $67
    add c                                         ; $5861: $81
    ld sp, $4061                                  ; $5862: $31 $61 $40
    cp a                                          ; $5865: $bf
    add b                                         ; $5866: $80
    rst $28                                       ; $5867: $ef
    add c                                         ; $5868: $81
    add b                                         ; $5869: $80
    rst $38                                       ; $586a: $ff
    db $e4                                        ; $586b: $e4
    dec b                                         ; $586c: $05
    and b                                         ; $586d: $a0
    ret nz                                        ; $586e: $c0

    ldh [$5a], a                                  ; $586f: $e0 $5a
    jp z, $40ff                                   ; $5871: $ca $ff $40

    db $ec                                        ; $5874: $ec
    add c                                         ; $5875: $81
    ldh [$c0], a                                  ; $5876: $e0 $c0
    add sp, -$80                                  ; $5878: $e8 $80
    rst $38                                       ; $587a: $ff
    nop                                           ; $587b: $00
    rst $38                                       ; $587c: $ff
    rst $38                                       ; $587d: $ff
    rst $38                                       ; $587e: $ff
    rst $38                                       ; $587f: $ff
    rst $38                                       ; $5880: $ff
    rst $38                                       ; $5881: $ff
    rst $38                                       ; $5882: $ff
    rst $38                                       ; $5883: $ff
    rst $38                                       ; $5884: $ff
    rst $38                                       ; $5885: $ff
    rst $38                                       ; $5886: $ff
    rst $38                                       ; $5887: $ff
    rst $38                                       ; $5888: $ff
    rst $38                                       ; $5889: $ff
    rst $38                                       ; $588a: $ff
    rst $38                                       ; $588b: $ff
    nop                                           ; $588c: $00
    rst $38                                       ; $588d: $ff
    rst $38                                       ; $588e: $ff
    rst $38                                       ; $588f: $ff
    rst $38                                       ; $5890: $ff
    rst $38                                       ; $5891: $ff
    rst $38                                       ; $5892: $ff
    rst $38                                       ; $5893: $ff
    rst $38                                       ; $5894: $ff
    rst $38                                       ; $5895: $ff
    rst $38                                       ; $5896: $ff
    rst $38                                       ; $5897: $ff
    rst $38                                       ; $5898: $ff
    rst $38                                       ; $5899: $ff
    rst $38                                       ; $589a: $ff
    rst $38                                       ; $589b: $ff
    rst $38                                       ; $589c: $ff
    nop                                           ; $589d: $00
    rst $38                                       ; $589e: $ff
    rst $38                                       ; $589f: $ff
    rst $38                                       ; $58a0: $ff
    rst $38                                       ; $58a1: $ff
    rst $38                                       ; $58a2: $ff
    rst $38                                       ; $58a3: $ff
    rst $38                                       ; $58a4: $ff
    rst $38                                       ; $58a5: $ff
    rst $38                                       ; $58a6: $ff
    rst $38                                       ; $58a7: $ff
    rst $38                                       ; $58a8: $ff
    rst $38                                       ; $58a9: $ff
    rst $38                                       ; $58aa: $ff
    rst $38                                       ; $58ab: $ff
    rst $38                                       ; $58ac: $ff
    rst $38                                       ; $58ad: $ff
    nop                                           ; $58ae: $00
    rst $38                                       ; $58af: $ff
    rst $38                                       ; $58b0: $ff
    rst $38                                       ; $58b1: $ff
    rst $38                                       ; $58b2: $ff
    rst $38                                       ; $58b3: $ff
    rst $38                                       ; $58b4: $ff
    rst $38                                       ; $58b5: $ff
    rst $38                                       ; $58b6: $ff
    rst $38                                       ; $58b7: $ff

jr_059_58b8:
    rst $38                                       ; $58b8: $ff
    rst $38                                       ; $58b9: $ff
    rst $38                                       ; $58ba: $ff
    rst $38                                       ; $58bb: $ff
    rst $38                                       ; $58bc: $ff
    rst $38                                       ; $58bd: $ff
    rst $38                                       ; $58be: $ff
    nop                                           ; $58bf: $00
    rst $38                                       ; $58c0: $ff
    rst $38                                       ; $58c1: $ff
    rst $38                                       ; $58c2: $ff
    rst $38                                       ; $58c3: $ff
    rst $38                                       ; $58c4: $ff
    rst $38                                       ; $58c5: $ff
    rst $38                                       ; $58c6: $ff
    rst $38                                       ; $58c7: $ff
    rst $38                                       ; $58c8: $ff
    rst $38                                       ; $58c9: $ff
    rst $38                                       ; $58ca: $ff
    rst $38                                       ; $58cb: $ff
    rst $38                                       ; $58cc: $ff
    rst $38                                       ; $58cd: $ff
    rst $38                                       ; $58ce: $ff
    rst $38                                       ; $58cf: $ff
    nop                                           ; $58d0: $00
    rst $38                                       ; $58d1: $ff
    rst $38                                       ; $58d2: $ff
    rst $38                                       ; $58d3: $ff
    rst $38                                       ; $58d4: $ff
    rst $38                                       ; $58d5: $ff
    rst $38                                       ; $58d6: $ff
    rst $38                                       ; $58d7: $ff
    rst $38                                       ; $58d8: $ff
    rst $38                                       ; $58d9: $ff
    rst $38                                       ; $58da: $ff
    rst $38                                       ; $58db: $ff
    rst $38                                       ; $58dc: $ff
    rst $38                                       ; $58dd: $ff
    rst $38                                       ; $58de: $ff
    rst $38                                       ; $58df: $ff
    rst $38                                       ; $58e0: $ff
    nop                                           ; $58e1: $00
    rst $38                                       ; $58e2: $ff
    rst $38                                       ; $58e3: $ff
    rst $38                                       ; $58e4: $ff
    rst $38                                       ; $58e5: $ff
    rst $38                                       ; $58e6: $ff
    rst $38                                       ; $58e7: $ff
    rst $38                                       ; $58e8: $ff
    rst $38                                       ; $58e9: $ff
    rst $38                                       ; $58ea: $ff
    rst $38                                       ; $58eb: $ff
    rst $38                                       ; $58ec: $ff
    rst $38                                       ; $58ed: $ff
    rst $38                                       ; $58ee: $ff
    rst $38                                       ; $58ef: $ff
    rst $38                                       ; $58f0: $ff
    rst $38                                       ; $58f1: $ff
    nop                                           ; $58f2: $00
    rst $38                                       ; $58f3: $ff
    rst $38                                       ; $58f4: $ff
    rst $38                                       ; $58f5: $ff
    rst $38                                       ; $58f6: $ff
    rst $38                                       ; $58f7: $ff
    rst $38                                       ; $58f8: $ff
    rst $38                                       ; $58f9: $ff
    rst $38                                       ; $58fa: $ff
    rst $38                                       ; $58fb: $ff
    rst $38                                       ; $58fc: $ff
    rst $38                                       ; $58fd: $ff
    rst $38                                       ; $58fe: $ff
    rst $38                                       ; $58ff: $ff
    rst $38                                       ; $5900: $ff
    rst $38                                       ; $5901: $ff
    rst $38                                       ; $5902: $ff
    nop                                           ; $5903: $00
    rst $38                                       ; $5904: $ff
    rst $38                                       ; $5905: $ff
    rst $38                                       ; $5906: $ff
    rst $38                                       ; $5907: $ff
    rst $38                                       ; $5908: $ff
    rst $38                                       ; $5909: $ff
    rst $38                                       ; $590a: $ff
    rst $38                                       ; $590b: $ff
    rst $38                                       ; $590c: $ff
    rst $38                                       ; $590d: $ff
    rst $38                                       ; $590e: $ff
    rst $38                                       ; $590f: $ff
    rst $38                                       ; $5910: $ff
    rst $38                                       ; $5911: $ff
    rst $38                                       ; $5912: $ff
    rst $38                                       ; $5913: $ff
    nop                                           ; $5914: $00
    rst $38                                       ; $5915: $ff
    rst $38                                       ; $5916: $ff
    rst $38                                       ; $5917: $ff
    rst $38                                       ; $5918: $ff
    rst $38                                       ; $5919: $ff
    rst $38                                       ; $591a: $ff
    rst $38                                       ; $591b: $ff
    rst $38                                       ; $591c: $ff
    rst $38                                       ; $591d: $ff
    rst $38                                       ; $591e: $ff
    rst $38                                       ; $591f: $ff
    rst $38                                       ; $5920: $ff
    rst $38                                       ; $5921: $ff
    rst $38                                       ; $5922: $ff
    rst $38                                       ; $5923: $ff
    rst $38                                       ; $5924: $ff
    nop                                           ; $5925: $00
    rst $38                                       ; $5926: $ff
    rst $38                                       ; $5927: $ff
    rst $38                                       ; $5928: $ff
    rst $38                                       ; $5929: $ff
    rst $38                                       ; $592a: $ff
    rst $38                                       ; $592b: $ff
    rst $38                                       ; $592c: $ff
    rst $38                                       ; $592d: $ff
    rst $38                                       ; $592e: $ff
    rst $38                                       ; $592f: $ff
    rst $38                                       ; $5930: $ff
    rst $38                                       ; $5931: $ff
    rst $38                                       ; $5932: $ff
    rst $38                                       ; $5933: $ff
    rst $38                                       ; $5934: $ff
    rst $38                                       ; $5935: $ff
    nop                                           ; $5936: $00
    rst $38                                       ; $5937: $ff
    rst $38                                       ; $5938: $ff
    rst $38                                       ; $5939: $ff
    rst $38                                       ; $593a: $ff
    rst $38                                       ; $593b: $ff
    db $f4                                        ; $593c: $f4
    nop                                           ; $593d: $00
    nop                                           ; $593e: $00
    nop                                           ; $593f: $00
    and l                                         ; $5940: $a5
    nop                                           ; $5941: $00
    rst $38                                       ; $5942: $ff
    push hl                                       ; $5943: $e5
    ld [hl-], a                                   ; $5944: $32
    or $e6                                        ; $5945: $f6 $e6
    rst $30                                       ; $5947: $f7
    rst $20                                       ; $5948: $e7
    dec [hl]                                      ; $5949: $35
    db $ec                                        ; $594a: $ec
    xor $37                                       ; $594b: $ee $37
    db $ec                                        ; $594d: $ec
    jp c, $c7f0                                   ; $594e: $da $f0 $c7

    add sp, $33                                   ; $5951: $e8 $33
    ld sp, $f2e0                                  ; $5953: $31 $e0 $f2
    ld [hl], $30                                  ; $5956: $36 $30
    scf                                           ; $5958: $37
    cp a                                          ; $5959: $bf
    ld h, $20                                     ; $595a: $26 $20
    daa                                           ; $595c: $27
    db $10                                        ; $595d: $10
    ld d, $17                                     ; $595e: $16 $17
    jp nz, Jump_000_34f6                          ; $5960: $c2 $f6 $34

    rst $38                                       ; $5963: $ff
    ld [hl], $32                                  ; $5964: $36 $32
    jr nc, jr_059_599f                            ; $5966: $30 $37

    ld sp, $3133                                  ; $5968: $31 $33 $31
    inc sp                                        ; $596b: $33
    nop                                           ; $596c: $00
    and b                                         ; $596d: $a0
    ei                                            ; $596e: $fb
    rst $38                                       ; $596f: $ff
    rst $28                                       ; $5970: $ef
    nop                                           ; $5971: $00
    nop                                           ; $5972: $00
    nop                                           ; $5973: $00
    ld a, h                                       ; $5974: $7c
    ld e, c                                       ; $5975: $59
    xor h                                         ; $5976: $ac
    ld e, c                                       ; $5977: $59
    ld l, d                                       ; $5978: $6a
    ld e, h                                       ; $5979: $5c
    inc a                                         ; $597a: $3c
    ld e, [hl]                                    ; $597b: $5e
    ld hl, sp+$03                                 ; $597c: $f8 $03
    ld c, h                                       ; $597e: $4c
    inc bc                                        ; $597f: $03
    ld d, e                                       ; $5980: $53
    ld bc, $008a                                  ; $5981: $01 $8a $00
    ldh a, [$03]                                  ; $5984: $f0 $03
    ld hl, sp+$03                                 ; $5986: $f8 $03
    ld c, h                                       ; $5988: $4c
    inc bc                                        ; $5989: $03
    ld d, e                                       ; $598a: $53
    ld bc, $47ff                                  ; $598b: $01 $ff $47
    ldh a, [rP1]                                  ; $598e: $f0 $00
    ld e, l                                       ; $5990: $5d
    add hl, de                                    ; $5991: $19
    ld c, h                                       ; $5992: $4c
    inc bc                                        ; $5993: $03
    ld [$0825], sp                                ; $5994: $08 $25 $08
    dec h                                         ; $5997: $25
    ld [$0825], sp                                ; $5998: $08 $25 $08
    dec h                                         ; $599b: $25
    ld [$0825], sp                                ; $599c: $08 $25 $08

jr_059_599f:
    dec h                                         ; $599f: $25
    ld [$0825], sp                                ; $59a0: $08 $25 $08
    dec h                                         ; $59a3: $25
    ld [$0825], sp                                ; $59a4: $08 $25 $08
    dec h                                         ; $59a7: $25
    ld [$0825], sp                                ; $59a8: $08 $25 $08
    dec h                                         ; $59ab: $25
    push af                                       ; $59ac: $f5
    ld c, d                                       ; $59ad: $4a
    rst $38                                       ; $59ae: $ff
    ldh [$0b], a                                  ; $59af: $e0 $0b
    rst $38                                       ; $59b1: $ff
    db $e3                                        ; $59b2: $e3
    dec hl                                        ; $59b3: $2b
    ld c, d                                       ; $59b4: $4a
    ld l, d                                       ; $59b5: $6a
    ld l, d                                       ; $59b6: $6a
    ld a, l                                       ; $59b7: $7d
    ld l, d                                       ; $59b8: $6a
    di                                            ; $59b9: $f3
    pop hl                                        ; $59ba: $e1
    inc c                                         ; $59bb: $0c
    inc c                                         ; $59bc: $0c
    inc c                                         ; $59bd: $0c
    ld c, h                                       ; $59be: $4c
    ld c, h                                       ; $59bf: $4c
    db $fd                                        ; $59c0: $fd
    pop hl                                        ; $59c1: $e1
    inc c                                         ; $59c2: $0c
    db $fc                                        ; $59c3: $fc
    db $e3                                        ; $59c4: $e3
    ld a, [c]                                     ; $59c5: $f2
    pop hl                                        ; $59c6: $e1
    inc l                                         ; $59c7: $2c
    inc l                                         ; $59c8: $2c
    ld sp, hl                                     ; $59c9: $f9
    db $e3                                        ; $59ca: $e3
    push hl                                       ; $59cb: $e5
    ldh [$fd], a                                  ; $59cc: $e0 $fd
    db $eb                                        ; $59ce: $eb
    ret nz                                        ; $59cf: $c0

    add sp, -$80                                  ; $59d0: $e8 $80
    cp a                                          ; $59d2: $bf
    and $c1                                       ; $59d3: $e6 $c1
    db $e4                                        ; $59d5: $e4
    ret nz                                        ; $59d6: $c0

    ld [c], a                                     ; $59d7: $e2
    cp d                                          ; $59d8: $ba
    pop hl                                        ; $59d9: $e1
    or l                                          ; $59da: $b5
    ld [c], a                                     ; $59db: $e2
    ld sp, hl                                     ; $59dc: $f9
    rst $20                                       ; $59dd: $e7
    ret nz                                        ; $59de: $c0

    ldh a, [rOCPD]                                ; $59df: $f0 $6b

jr_059_59e1:
    inc bc                                        ; $59e1: $03
    ld l, e                                       ; $59e2: $6b
    ld c, e                                       ; $59e3: $4b
    rst $38                                       ; $59e4: $ff
    ldh [$7e], a                                  ; $59e5: $e0 $7e
    push hl                                       ; $59e7: $e5
    adc l                                         ; $59e8: $8d
    pop hl                                        ; $59e9: $e1
    ld a, h                                       ; $59ea: $7c
    pop hl                                        ; $59eb: $e1
    sub e                                         ; $59ec: $93
    push hl                                       ; $59ed: $e5
    ld [hl], e                                    ; $59ee: $73
    rst $20                                       ; $59ef: $e7
    inc b                                         ; $59f0: $04
    cp a                                          ; $59f1: $bf
    rst $28                                       ; $59f2: $ef
    ld b, b                                       ; $59f3: $40
    pop hl                                        ; $59f4: $e1
    dec hl                                        ; $59f5: $2b
    pop bc                                        ; $59f6: $c1
    db $e3                                        ; $59f7: $e3
    cp a                                          ; $59f8: $bf
    and $ca                                       ; $59f9: $e6 $ca
    db $e4                                        ; $59fb: $e4

jr_059_59fc:
    cp l                                          ; $59fc: $bd
    push hl                                       ; $59fd: $e5
    ld a, b                                       ; $59fe: $78
    db $e3                                        ; $59ff: $e3
    inc c                                         ; $5a00: $0c
    jr c, @-$1b                                   ; $5a01: $38 $e3

    ld b, b                                       ; $5a03: $40
    ld a, [c]                                     ; $5a04: $f2
    ld l, e                                       ; $5a05: $6b
    dec bc                                        ; $5a06: $0b
    jp nz, Jump_059_7ee4                          ; $5a07: $c2 $e4 $7e

    db $e4                                        ; $5a0a: $e4
    ld [bc], a                                    ; $5a0b: $02
    db $e4                                        ; $5a0c: $e4
    set 4, d                                      ; $5a0d: $cb $e2
    jr nz, jr_059_5a50                            ; $5a0f: $20 $3f

    push hl                                       ; $5a11: $e5
    jr c, jr_059_59fc                             ; $5a12: $38 $e8

    ei                                            ; $5a14: $fb
    call nz, $c3f4                                ; $5a15: $c4 $f4 $c3
    add b                                         ; $5a18: $80
    ld [c], a                                     ; $5a19: $e2
    dec hl                                        ; $5a1a: $2b
    add d                                         ; $5a1b: $82
    db $e3                                        ; $5a1c: $e3
    cp a                                          ; $5a1d: $bf
    push hl                                       ; $5a1e: $e5
    jr nz, jr_059_59e1                            ; $5a1f: $20 $c0

    push bc                                       ; $5a21: $c5
    ld d, b                                       ; $5a22: $50
    pop hl                                        ; $5a23: $e1
    or l                                          ; $5a24: $b5
    db $e4                                        ; $5a25: $e4
    xor l                                         ; $5a26: $ad
    call nz, $f300                                ; $5a27: $c4 $00 $f3
    dec hl                                        ; $5a2a: $2b
    cp a                                          ; $5a2b: $bf
    ldh [$7d], a                                  ; $5a2c: $e0 $7d
    call nz, Call_059_4b0f                        ; $5a2e: $c4 $0f $4b
    dec bc                                        ; $5a31: $0b
    ld c, e                                       ; $5a32: $4b
    ld c, d                                       ; $5a33: $4a
    ret nz                                        ; $5a34: $c0

    db $e3                                        ; $5a35: $e3
    cp $e4                                        ; $5a36: $fe $e4
    ld [bc], a                                    ; $5a38: $02
    ld [$d4c0], a                                 ; $5a39: $ea $c0 $d4
    db $10                                        ; $5a3c: $10
    set 4, b                                      ; $5a3d: $cb $e0
    ld a, [hl]                                    ; $5a3f: $7e
    ldh [$3a], a                                  ; $5a40: $e0 $3a
    jp nz, $e0c0                                  ; $5a42: $c2 $c0 $e0

    dec bc                                        ; $5a45: $0b
    nop                                           ; $5a46: $00
    ldh [$8d], a                                  ; $5a47: $e0 $8d
    push hl                                       ; $5a49: $e5
    ret nz                                        ; $5a4a: $c0

    rst $18                                       ; $5a4b: $df
    ld b, $00                                     ; $5a4c: $06 $00
    ret nz                                        ; $5a4e: $c0

    ld a, [bc]                                    ; $5a4f: $0a

jr_059_5a50:
    ld a, [hl+]                                   ; $5a50: $2a
    add l                                         ; $5a51: $85
    pop bc                                        ; $5a52: $c1
    db $fc                                        ; $5a53: $fc
    ret nz                                        ; $5a54: $c0

    db $fc                                        ; $5a55: $fc
    and c                                         ; $5a56: $a1
    db $f4                                        ; $5a57: $f4
    and c                                         ; $5a58: $a1
    push de                                       ; $5a59: $d5
    push bc                                       ; $5a5a: $c5
    ld e, h                                       ; $5a5b: $5c
    cp [hl]                                       ; $5a5c: $be
    call nz, $dcc0                                ; $5a5d: $c4 $c0 $dc
    ld a, [bc]                                    ; $5a60: $0a
    ld a, [hl+]                                   ; $5a61: $2a
    ld a, [hl+]                                   ; $5a62: $2a
    cp a                                          ; $5a63: $bf
    ldh [$2b], a                                  ; $5a64: $e0 $2b
    add $e1                                       ; $5a66: $c6 $e1
    nop                                           ; $5a68: $00
    ld sp, hl                                     ; $5a69: $f9
    ldh [$c0], a                                  ; $5a6a: $e0 $c0
    ld [c], a                                     ; $5a6c: $e2
    adc $c6                                       ; $5a6d: $ce $c6
    rlca                                          ; $5a6f: $07
    jp $da40                                      ; $5a70: $c3 $40 $da


    pop bc                                        ; $5a73: $c1
    pop hl                                        ; $5a74: $e1
    cp a                                          ; $5a75: $bf
    pop hl                                        ; $5a76: $e1
    ret nz                                        ; $5a77: $c0

    pop bc                                        ; $5a78: $c1
    nop                                           ; $5a79: $00
    dec sp                                        ; $5a7a: $3b
    db $e4                                        ; $5a7b: $e4
    ret nz                                        ; $5a7c: $c0

    and l                                         ; $5a7d: $a5
    ld a, l                                       ; $5a7e: $7d
    push bc                                       ; $5a7f: $c5
    pop af                                        ; $5a80: $f1
    call nz, $a4b8                                ; $5a81: $c4 $b8 $a4
    ld a, h                                       ; $5a84: $7c
    and d                                         ; $5a85: $a2
    ld [hl], a                                    ; $5a86: $77
    and [hl]                                      ; $5a87: $a6
    pop bc                                        ; $5a88: $c1
    db $e3                                        ; $5a89: $e3
    inc bc                                        ; $5a8a: $03
    ld a, [hl+]                                   ; $5a8b: $2a
    ld a, [hl+]                                   ; $5a8c: $2a
    add e                                         ; $5a8d: $83
    pop hl                                        ; $5a8e: $e1
    db $fc                                        ; $5a8f: $fc
    call nz, $a880                                ; $5a90: $c4 $80 $a8
    ld a, c                                       ; $5a93: $79
    xor $c7                                       ; $5a94: $ee $c7
    rst $20                                       ; $5a96: $e7
    ld [hl], $a4                                  ; $5a97: $36 $a4
    ld [hl], d                                    ; $5a99: $72
    pop bc                                        ; $5a9a: $c1
    db $e4                                        ; $5a9b: $e4
    ld a, [bc]                                    ; $5a9c: $0a
    nop                                           ; $5a9d: $00
    pop hl                                        ; $5a9e: $e1
    cp h                                          ; $5a9f: $bc
    jp nz, Jump_000_0b4b                          ; $5aa0: $c2 $4b $0b

    ld a, [bc]                                    ; $5aa3: $0a
    add b                                         ; $5aa4: $80
    and [hl]                                      ; $5aa5: $a6
    sub h                                         ; $5aa6: $94
    ld a, c                                       ; $5aa7: $79
    rst $28                                       ; $5aa8: $ef
    db $fc                                        ; $5aa9: $fc
    adc [hl]                                      ; $5aaa: $8e
    ld c, d                                       ; $5aab: $4a
    pop bc                                        ; $5aac: $c1
    db $e3                                        ; $5aad: $e3
    ld a, [bc]                                    ; $5aae: $0a
    ld a, $a2                                     ; $5aaf: $3e $a2
    or a                                          ; $5ab1: $b7
    add d                                         ; $5ab2: $82
    ld a, [bc]                                    ; $5ab3: $0a
    ld hl, $802a                                  ; $5ab4: $21 $2a $80
    or c                                          ; $5ab7: $b1
    cp b                                          ; $5ab8: $b8
    add l                                         ; $5ab9: $85
    and a                                         ; $5aba: $a7
    add b                                         ; $5abb: $80
    cp e                                          ; $5abc: $bb
    add b                                         ; $5abd: $80
    inc l                                         ; $5abe: $2c
    rst $38                                       ; $5abf: $ff
    ldh [$b5], a                                  ; $5ac0: $e0 $b5
    add e                                         ; $5ac2: $83
    dec h                                         ; $5ac3: $25
    dec bc                                        ; $5ac4: $0b
    cp a                                          ; $5ac5: $bf
    pop hl                                        ; $5ac6: $e1
    ld a, [bc]                                    ; $5ac7: $0a
    ret nz                                        ; $5ac8: $c0

    ldh [$c1], a                                  ; $5ac9: $e0 $c1
    rst $20                                       ; $5acb: $e7
    ld a, [hl+]                                   ; $5acc: $2a
    add b                                         ; $5acd: $80
    cp c                                          ; $5ace: $b9
    ld l, b                                       ; $5acf: $68
    add b                                         ; $5ad0: $80
    nop                                           ; $5ad1: $00
    ret nz                                        ; $5ad2: $c0

    db $eb                                        ; $5ad3: $eb
    cp a                                          ; $5ad4: $bf
    ldh [$c1], a                                  ; $5ad5: $e0 $c1
    ldh [rLCDC], a                                ; $5ad7: $e0 $40
    ldh [$3a], a                                  ; $5ad9: $e0 $3a

jr_059_5adb:
    add e                                         ; $5adb: $83
    ld [hl], d                                    ; $5adc: $72
    pop bc                                        ; $5add: $c1
    add b                                         ; $5ade: $80
    or e                                          ; $5adf: $b3
    pop bc                                        ; $5ae0: $c1
    push hl                                       ; $5ae1: $e5
    nop                                           ; $5ae2: $00
    inc sp                                        ; $5ae3: $33
    add c                                         ; $5ae4: $81
    add c                                         ; $5ae5: $81
    and $96                                       ; $5ae6: $e6 $96
    push bc                                       ; $5ae8: $c5
    sub h                                         ; $5ae9: $94
    and e                                         ; $5aea: $a3
    ld a, [bc]                                    ; $5aeb: $0a
    add c                                         ; $5aec: $81
    ld h, a                                       ; $5aed: $67
    ld [c], a                                     ; $5aee: $e2
    ld b, e                                       ; $5aef: $43
    add a                                         ; $5af0: $87
    rst $10                                       ; $5af1: $d7
    and $00                                       ; $5af2: $e6 $00
    jr c, jr_059_5adb                             ; $5af4: $38 $e5

    db $eb                                        ; $5af6: $eb
    db $e3                                        ; $5af7: $e3
    jp hl                                         ; $5af8: $e9


    jp hl                                         ; $5af9: $e9


    dec de                                        ; $5afa: $1b
    and [hl]                                      ; $5afb: $a6
    xor e                                         ; $5afc: $ab
    and $23                                       ; $5afd: $e6 $23
    pop hl                                        ; $5aff: $e1
    db $ec                                        ; $5b00: $ec
    db $eb                                        ; $5b01: $eb
    ccf                                           ; $5b02: $3f
    jp hl                                         ; $5b03: $e9


    nop                                           ; $5b04: $00
    ld a, [hl-]                                   ; $5b05: $3a
    adc e                                         ; $5b06: $8b
    ld h, [hl]                                    ; $5b07: $66
    add [hl]                                      ; $5b08: $86
    ld [c], a                                     ; $5b09: $e2
    ld h, l                                       ; $5b0a: $65
    sbc h                                         ; $5b0b: $9c
    ld h, [hl]                                    ; $5b0c: $66
    ld c, $a9                                     ; $5b0d: $0e $a9
    ld h, d                                       ; $5b0f: $62
    push hl                                       ; $5b10: $e5
    ld a, l                                       ; $5b11: $7d
    call nz, $c1c1                                ; $5b12: $c4 $c1 $c1
    nop                                           ; $5b15: $00
    and a                                         ; $5b16: $a7
    db $e4                                        ; $5b17: $e4
    ldh [$e6], a                                  ; $5b18: $e0 $e6
    ld d, h                                       ; $5b1a: $54
    push hl                                       ; $5b1b: $e5

jr_059_5b1c:
    and c                                         ; $5b1c: $a1
    jp nz, $ecec                                  ; $5b1d: $c2 $ec $ec

    sbc l                                         ; $5b20: $9d
    rst $20                                       ; $5b21: $e7
    rst $38                                       ; $5b22: $ff
    add $f6                                       ; $5b23: $c6 $f6
    xor c                                         ; $5b25: $a9
    nop                                           ; $5b26: $00
    ld b, b                                       ; $5b27: $40
    rst $38                                       ; $5b28: $ff
    cp a                                          ; $5b29: $bf
    and a                                         ; $5b2a: $a7
    jr z, jr_059_5b8f                             ; $5b2b: $28 $62

    ld b, b                                       ; $5b2d: $40
    rst $00                                       ; $5b2e: $c7
    ld h, d                                       ; $5b2f: $62
    sbc b                                         ; $5b30: $98
    ld c, [hl]                                    ; $5b31: $4e
    adc d                                         ; $5b32: $8a
    cp b                                          ; $5b33: $b8
    adc b                                         ; $5b34: $88
    ret nz                                        ; $5b35: $c0

    ld [$2700], a                                 ; $5b36: $ea $00 $27
    add a                                         ; $5b39: $87
    ld [c], a                                     ; $5b3a: $e2
    ld c, h                                       ; $5b3b: $4c
    db $ec                                        ; $5b3c: $ec
    db $eb                                        ; $5b3d: $eb
    add b                                         ; $5b3e: $80
    jp hl                                         ; $5b3f: $e9


    dec a                                         ; $5b40: $3d
    jp nz, $c9bf                                  ; $5b41: $c2 $bf $c9

    inc e                                         ; $5b44: $1c
    ret                                           ; $5b45: $c9


    ld d, d                                       ; $5b46: $52
    ret z                                         ; $5b47: $c8

    nop                                           ; $5b48: $00
    ret nc                                        ; $5b49: $d0

    ld c, c                                       ; $5b4a: $49
    cp b                                          ; $5b4b: $b8
    add a                                         ; $5b4c: $87
    jr z, jr_059_5b1c                             ; $5b4d: $28 $cd

    ld e, d                                       ; $5b4f: $5a
    ld l, b                                       ; $5b50: $68
    ld b, c                                       ; $5b51: $41
    ld sp, hl                                     ; $5b52: $f9
    inc sp                                        ; $5b53: $33
    adc h                                         ; $5b54: $8c
    inc d                                         ; $5b55: $14
    add $aa                                       ; $5b56: $c6 $aa
    ld b, l                                       ; $5b58: $45
    nop                                           ; $5b59: $00
    ld h, e                                       ; $5b5a: $63
    ld d, c                                       ; $5b5b: $51
    ld c, a                                       ; $5b5c: $4f
    ld c, b                                       ; $5b5d: $48
    cp d                                          ; $5b5e: $ba
    adc [hl]                                      ; $5b5f: $8e
    ld d, $ec                                     ; $5b60: $16 $ec
    ld h, e                                       ; $5b62: $63
    ld c, b                                       ; $5b63: $48
    inc c                                         ; $5b64: $0c
    jp hl                                         ; $5b65: $e9


    nop                                           ; $5b66: $00
    add sp, -$02                                  ; $5b67: $e8 $fe
    db $e4                                        ; $5b69: $e4
    nop                                           ; $5b6a: $00
    xor a                                         ; $5b6b: $af
    ld a, [hl+]                                   ; $5b6c: $2a
    dec hl                                        ; $5b6d: $2b
    and a                                         ; $5b6e: $a7
    ld h, e                                       ; $5b6f: $63
    inc hl                                        ; $5b70: $23
    and c                                         ; $5b71: $a1
    and [hl]                                      ; $5b72: $a6
    ld c, b                                       ; $5b73: $48
    daa                                           ; $5b74: $27
    call nz, $b249                                ; $5b75: $c4 $49 $b2
    ld b, a                                       ; $5b78: $47
    pop bc                                        ; $5b79: $c1
    db $eb                                        ; $5b7a: $eb
    nop                                           ; $5b7b: $00
    ld e, h                                       ; $5b7c: $5c
    daa                                           ; $5b7d: $27
    ld c, [hl]                                    ; $5b7e: $4e
    ld b, h                                       ; $5b7f: $44
    sub b                                         ; $5b80: $90
    db $e3                                        ; $5b81: $e3

Call_059_5b82:
    db $ec                                        ; $5b82: $ec
    and $fb                                       ; $5b83: $e6 $fb
    ld [hl], b                                    ; $5b85: $70
    add hl, de                                    ; $5b86: $19
    call $4915                                    ; $5b87: $cd $15 $49
    ld c, e                                       ; $5b8a: $4b
    xor b                                         ; $5b8b: $a8
    nop                                           ; $5b8c: $00
    rlca                                          ; $5b8d: $07
    ld c, b                                       ; $5b8e: $48

jr_059_5b8f:
    pop af                                        ; $5b8f: $f1
    ld b, a                                       ; $5b90: $47
    scf                                           ; $5b91: $37
    inc l                                         ; $5b92: $2c
    dec d                                         ; $5b93: $15
    ld c, [hl]                                    ; $5b94: $4e
    rla                                           ; $5b95: $17
    ld b, l                                       ; $5b96: $45
    inc b                                         ; $5b97: $04
    ld c, c                                       ; $5b98: $49
    or b                                          ; $5b99: $b0
    daa                                           ; $5b9a: $27
    add sp, -$35                                  ; $5b9b: $e8 $cb
    nop                                           ; $5b9d: $00
    dec d                                         ; $5b9e: $15
    ld d, c                                       ; $5b9f: $51
    jp nz, Jump_059_7946                          ; $5ba0: $c2 $46 $79

    daa                                           ; $5ba3: $27
    inc bc                                        ; $5ba4: $03
    and $70                                       ; $5ba5: $e6 $70
    ld b, [hl]                                    ; $5ba7: $46
    nop                                           ; $5ba8: $00
    add [hl]                                      ; $5ba9: $86
    dec d                                         ; $5baa: $15
    ld c, a                                       ; $5bab: $4f
    sub e                                         ; $5bac: $93
    add [hl]                                      ; $5bad: $86
    nop                                           ; $5bae: $00
    ld h, [hl]                                    ; $5baf: $66
    add [hl]                                      ; $5bb0: $86
    ld [hl], b                                    ; $5bb1: $70
    ld d, b                                       ; $5bb2: $50
    ld a, a                                       ; $5bb3: $7f
    xor l                                         ; $5bb4: $ad
    sbc h                                         ; $5bb5: $9c
    ld c, c                                       ; $5bb6: $49
    ld c, a                                       ; $5bb7: $4f
    add hl, hl                                    ; $5bb8: $29
    add l                                         ; $5bb9: $85
    ret                                           ; $5bba: $c9


    ld e, e                                       ; $5bbb: $5b
    jp nz, Jump_059_4146                          ; $5bbc: $c2 $46 $41

    nop                                           ; $5bbf: $00
    pop bc                                        ; $5bc0: $c1
    ld l, [hl]                                    ; $5bc1: $6e
    dec d                                         ; $5bc2: $15
    ld c, h                                       ; $5bc3: $4c
    and [hl]                                      ; $5bc4: $a6
    ld l, h                                       ; $5bc5: $6c
    ld [$7fe7], a                                 ; $5bc6: $ea $e7 $7f
    inc b                                         ; $5bc9: $04
    add c                                         ; $5bca: $81
    ld l, l                                       ; $5bcb: $6d
    dec d                                         ; $5bcc: $15
    dec l                                         ; $5bcd: $2d
    ld [bc], a                                    ; $5bce: $02
    call nz, $8000                                ; $5bcf: $c4 $00 $80
    ld h, $6f                                     ; $5bd2: $26 $6f
    or b                                          ; $5bd4: $b0
    dec hl                                        ; $5bd5: $2b
    ld l, e                                       ; $5bd6: $6b
    nop                                           ; $5bd7: $00
    xor $cf                                       ; $5bd8: $ee $cf
    daa                                           ; $5bda: $27
    scf                                           ; $5bdb: $37
    ld c, a                                       ; $5bdc: $4f
    ld bc, $156b                                  ; $5bdd: $01 $6b $15
    ld sp, $b300                                  ; $5be0: $31 $00 $b3
    ld b, l                                       ; $5be3: $45
    scf                                           ; $5be4: $37
    ld d, c                                       ; $5be5: $51
    ld b, b                                       ; $5be6: $40
    pop af                                        ; $5be7: $f1
    ld [c], a                                     ; $5be8: $e2
    sub e                                         ; $5be9: $93
    rst $20                                       ; $5bea: $e7
    ld b, a                                       ; $5beb: $47
    scf                                           ; $5bec: $37
    ld c, l                                       ; $5bed: $4d
    rst $38                                       ; $5bee: $ff
    rst $38                                       ; $5bef: $ff
    ld a, [hl]                                    ; $5bf0: $7e
    daa                                           ; $5bf1: $27
    nop                                           ; $5bf2: $00
    and d                                         ; $5bf3: $a2
    xor l                                         ; $5bf4: $ad
    rst $38                                       ; $5bf5: $ff
    rst $38                                       ; $5bf6: $ff
    dec sp                                        ; $5bf7: $3b
    ld b, l                                       ; $5bf8: $45
    and d                                         ; $5bf9: $a2
    or h                                          ; $5bfa: $b4
    rst $38                                       ; $5bfb: $ff
    rst $38                                       ; $5bfc: $ff
    and d                                         ; $5bfd: $a2
    db $db                                        ; $5bfe: $db
    rst $38                                       ; $5bff: $ff
    rst $38                                       ; $5c00: $ff
    ld hl, sp+$25                                 ; $5c01: $f8 $25
    nop                                           ; $5c03: $00
    ld a, $13                                     ; $5c04: $3e $13
    rst $38                                       ; $5c06: $ff
    rst $38                                       ; $5c07: $ff
    ld b, b                                       ; $5c08: $40
    db $ec                                        ; $5c09: $ec
    ld a, $0c                                     ; $5c0a: $3e $0c
    rst $38                                       ; $5c0c: $ff
    rst $38                                       ; $5c0d: $ff
    ld [c], a                                     ; $5c0e: $e2
    xor h                                         ; $5c0f: $ac
    ld b, e                                       ; $5c10: $43
    adc c                                         ; $5c11: $89
    ret nz                                        ; $5c12: $c0

    rst $38                                       ; $5c13: $ff
    nop                                           ; $5c14: $00
    dec a                                         ; $5c15: $3d
    ld c, a                                       ; $5c16: $4f
    inc bc                                        ; $5c17: $03
    adc e                                         ; $5c18: $8b
    rst $38                                       ; $5c19: $ff
    rst $38                                       ; $5c1a: $ff
    ld [hl], e                                    ; $5c1b: $73
    jp nc, $ab8d                                  ; $5c1c: $d2 $8d $ab

    rst $38                                       ; $5c1f: $ff
    rst $38                                       ; $5c20: $ff
    rst $38                                       ; $5c21: $ff
    rst $38                                       ; $5c22: $ff
    sub [hl]                                      ; $5c23: $96
    rst $38                                       ; $5c24: $ff
    nop                                           ; $5c25: $00
    rst $38                                       ; $5c26: $ff
    rst $38                                       ; $5c27: $ff
    ld d, c                                       ; $5c28: $51
    add hl, bc                                    ; $5c29: $09
    rst $38                                       ; $5c2a: $ff
    rst $38                                       ; $5c2b: $ff
    rst $38                                       ; $5c2c: $ff
    rst $38                                       ; $5c2d: $ff
    rst $38                                       ; $5c2e: $ff
    rst $38                                       ; $5c2f: $ff
    rst $38                                       ; $5c30: $ff
    rst $38                                       ; $5c31: $ff
    scf                                           ; $5c32: $37
    rst $20                                       ; $5c33: $e7
    call c, Call_000_00ff                         ; $5c34: $dc $ff $00
    rst $38                                       ; $5c37: $ff
    rst $38                                       ; $5c38: $ff
    rst $38                                       ; $5c39: $ff
    rst $38                                       ; $5c3a: $ff
    rst $38                                       ; $5c3b: $ff
    rst $38                                       ; $5c3c: $ff
    rst $38                                       ; $5c3d: $ff
    rst $38                                       ; $5c3e: $ff
    rst $38                                       ; $5c3f: $ff
    rst $38                                       ; $5c40: $ff
    rst $38                                       ; $5c41: $ff
    rst $38                                       ; $5c42: $ff
    rst $38                                       ; $5c43: $ff
    rst $38                                       ; $5c44: $ff
    rst $38                                       ; $5c45: $ff
    rst $38                                       ; $5c46: $ff
    nop                                           ; $5c47: $00
    rst $38                                       ; $5c48: $ff
    rst $38                                       ; $5c49: $ff
    rst $38                                       ; $5c4a: $ff
    rst $38                                       ; $5c4b: $ff
    rst $38                                       ; $5c4c: $ff
    rst $38                                       ; $5c4d: $ff
    rst $38                                       ; $5c4e: $ff
    rst $38                                       ; $5c4f: $ff
    rst $38                                       ; $5c50: $ff
    rst $38                                       ; $5c51: $ff
    rst $38                                       ; $5c52: $ff
    rst $38                                       ; $5c53: $ff
    rst $38                                       ; $5c54: $ff
    rst $38                                       ; $5c55: $ff
    rst $38                                       ; $5c56: $ff
    rst $38                                       ; $5c57: $ff
    nop                                           ; $5c58: $00
    rst $38                                       ; $5c59: $ff
    rst $38                                       ; $5c5a: $ff
    nop                                           ; $5c5b: $00
    cp a                                          ; $5c5c: $bf
    rst $38                                       ; $5c5d: $ff
    rst $38                                       ; $5c5e: $ff
    rst $38                                       ; $5c5f: $ff
    rst $38                                       ; $5c60: $ff
    rst $38                                       ; $5c61: $ff
    rst $38                                       ; $5c62: $ff
    rst $38                                       ; $5c63: $ff
    rst $38                                       ; $5c64: $ff
    ld e, [hl]                                    ; $5c65: $5e
    ld d, e                                       ; $5c66: $53
    nop                                           ; $5c67: $00
    nop                                           ; $5c68: $00
    nop                                           ; $5c69: $00
    db $fd                                        ; $5c6a: $fd
    add a                                         ; $5c6b: $87
    rst $38                                       ; $5c6c: $ff
    ldh [$5b], a                                  ; $5c6d: $e0 $5b
    ld e, e                                       ; $5c6f: $5b
    ld e, e                                       ; $5c70: $5b
    ld e, h                                       ; $5c71: $5c
    ld e, l                                       ; $5c72: $5d
    ld sp, $317f                                  ; $5c73: $31 $7f $31
    ld h, b                                       ; $5c76: $60
    adc h                                         ; $5c77: $8c
    ld c, [hl]                                    ; $5c78: $4e
    ld c, [hl]                                    ; $5c79: $4e
    ld c, [hl]                                    ; $5c7a: $4e
    adc h                                         ; $5c7b: $8c
    di                                            ; $5c7c: $f3
    ldh [rSB], a                                  ; $5c7d: $e0 $01
    nop                                           ; $5c7f: $00
    rst $38                                       ; $5c80: $ff

Jump_059_5c81:
    rst $38                                       ; $5c81: $ff
    rst $20                                       ; $5c82: $e7
    and $c0                                       ; $5c83: $e6 $c0
    ld [c], a                                     ; $5c85: $e2
    jp nz, $fee1                                  ; $5c86: $c2 $e1 $fe

    ldh [$bf], a                                  ; $5c89: $e0 $bf
    push hl                                       ; $5c8b: $e5
    jp z, $feff                                   ; $5c8c: $ca $ff $fe

    ret nz                                        ; $5c8f: $c0

    db $eb                                        ; $5c90: $eb
    ld h, b                                       ; $5c91: $60
    ld sp, $4647                                  ; $5c92: $31 $47 $46
    ld d, l                                       ; $5c95: $55
    ld d, h                                       ; $5c96: $54
    ld b, [hl]                                    ; $5c97: $46
    pop af                                        ; $5c98: $f1
    ld b, a                                       ; $5c99: $47
    ld a, [hl]                                    ; $5c9a: $7e
    push hl                                       ; $5c9b: $e5
    jp z, $80ff                                   ; $5c9c: $ca $ff $80

    db $eb                                        ; $5c9f: $eb
    ld h, c                                       ; $5ca0: $61
    inc a                                         ; $5ca1: $3c
    ld [hl], $6d                                  ; $5ca2: $36 $6d
    add $ff                                       ; $5ca4: $c6 $ff
    ldh [$36], a                                  ; $5ca6: $e0 $36
    inc a                                         ; $5ca8: $3c
    dec a                                         ; $5ca9: $3d
    db $e4                                        ; $5caa: $e4
    jp z, $40ff                                   ; $5cab: $ca $ff $40

    db $eb                                        ; $5cae: $eb
    inc a                                         ; $5caf: $3c
    ld b, d                                       ; $5cb0: $42
    ld c, $c1                                     ; $5cb1: $0e $c1
    pop hl                                        ; $5cb3: $e1
    ld l, l                                       ; $5cb4: $6d
    ld l, e                                       ; $5cb5: $6b
    ld b, d                                       ; $5cb6: $42
    cp a                                          ; $5cb7: $bf
    db $e4                                        ; $5cb8: $e4
    jp z, $c0ff                                   ; $5cb9: $ca $ff $c0

    db $ec                                        ; $5cbc: $ec
    add c                                         ; $5cbd: $81
    ld [c], a                                     ; $5cbe: $e2
    db $e3                                        ; $5cbf: $e3
    ld l, l                                       ; $5cc0: $6d
    ld l, e                                       ; $5cc1: $6b
    cp a                                          ; $5cc2: $bf
    push hl                                       ; $5cc3: $e5
    jp z, $40ff                                   ; $5cc4: $ca $ff $40

    db $ec                                        ; $5cc7: $ec
    ld b, a                                       ; $5cc8: $47
    ld b, [hl]                                    ; $5cc9: $46
    ld b, d                                       ; $5cca: $42
    rst $28                                       ; $5ccb: $ef
    ld l, b                                       ; $5ccc: $68
    ld l, b                                       ; $5ccd: $68
    ld l, b                                       ; $5cce: $68
    ld l, e                                       ; $5ccf: $6b
    cp a                                          ; $5cd0: $bf
    ldh [rOBP1], a                                ; $5cd1: $e0 $49
    ld sp, $f95f                                  ; $5cd3: $31 $5f $f9
    adc h                                         ; $5cd6: $8c
    ret nz                                        ; $5cd7: $c0

    rst $38                                       ; $5cd8: $ff
    ret nz                                        ; $5cd9: $c0

    adc $31                                       ; $5cda: $ce $31
    inc a                                         ; $5cdc: $3c
    ld b, d                                       ; $5cdd: $42
    jr nc, jr_059_5d10                            ; $5cde: $30 $30

    dec a                                         ; $5ce0: $3d
    ld l, d                                       ; $5ce1: $6a
    cp a                                          ; $5ce2: $bf
    ldh [$39], a                                  ; $5ce3: $e0 $39
    ld sp, $5b5e                                  ; $5ce5: $31 $5e $5b
    nop                                           ; $5ce8: $00
    rst $38                                       ; $5ce9: $ff
    ld b, b                                       ; $5cea: $40
    set 7, e                                      ; $5ceb: $cb $fb
    adc l                                         ; $5ced: $8d
    adc [hl]                                      ; $5cee: $8e
    cp a                                          ; $5cef: $bf
    ldh [$39], a                                  ; $5cf0: $e0 $39
    jr nc, @+$32                                  ; $5cf2: $30 $30

    jr nc, jr_059_5d5f                            ; $5cf4: $30 $69

    sbc a                                         ; $5cf6: $9f
    ld l, e                                       ; $5cf7: $6b
    ld l, e                                       ; $5cf8: $6b
    ld d, d                                       ; $5cf9: $52
    ld sp, $4061                                  ; $5cfa: $31 $61 $40
    rst $18                                       ; $5cfd: $df
    nop                                           ; $5cfe: $00
    res 1, l                                      ; $5cff: $cb $8d
    db $db                                        ; $5d01: $db
    ld c, a                                       ; $5d02: $4f
    ld c, a                                       ; $5d03: $4f
    cp a                                          ; $5d04: $bf
    ldh [rOBP1], a                                ; $5d05: $e0 $49
    ld c, b                                       ; $5d07: $48
    ret nz                                        ; $5d08: $c0

    ldh [$6d], a                                  ; $5d09: $e0 $6d
    ld l, l                                       ; $5d0b: $6d
    ld hl, $c053                                  ; $5d0c: $21 $53 $c0
    rst $38                                       ; $5d0f: $ff

jr_059_5d10:
    ret nz                                        ; $5d10: $c0

    xor h                                         ; $5d11: $ac
    pop bc                                        ; $5d12: $c1
    ldh [$bf], a                                  ; $5d13: $e0 $bf
    ld [c], a                                     ; $5d15: $e2
    ld d, e                                       ; $5d16: $53
    ret nz                                        ; $5d17: $c0

    ld [c], a                                     ; $5d18: $e2
    ld b, b                                       ; $5d19: $40
    pop hl                                        ; $5d1a: $e1
    ldh a, [$c0]                                  ; $5d1b: $f0 $c0
    rst $38                                       ; $5d1d: $ff
    jp hl                                         ; $5d1e: $e9


    add sp, -$3f                                  ; $5d1f: $e8 $c1
    ld [c], a                                     ; $5d21: $e2
    ld a, [hl]                                    ; $5d22: $7e
    ldh [$31], a                                  ; $5d23: $e0 $31
    ld d, d                                       ; $5d25: $52
    jr nc, jr_059_5d92                            ; $5d26: $30 $6a

    add a                                         ; $5d28: $87
    ld l, l                                       ; $5d29: $6d
    ld l, l                                       ; $5d2a: $6d
    ld c, b                                       ; $5d2b: $48
    ret nz                                        ; $5d2c: $c0

    ret nz                                        ; $5d2d: $c0

    ret nz                                        ; $5d2e: $c0

    rst $38                                       ; $5d2f: $ff
    ld [$c1e9], a                                 ; $5d30: $ea $e9 $c1
    db $e3                                        ; $5d33: $e3
    ld c, a                                       ; $5d34: $4f
    ld e, a                                       ; $5d35: $5f
    adc a                                         ; $5d36: $8f
    ld h, c                                       ; $5d37: $61
    ld d, e                                       ; $5d38: $53
    ld l, b                                       ; $5d39: $68
    ld l, h                                       ; $5d3a: $6c
    add c                                         ; $5d3b: $81
    db $e4                                        ; $5d3c: $e4
    adc [hl]                                      ; $5d3d: $8e
    jp z, $faff                                   ; $5d3e: $ca $ff $fa

    add sp, -$19                                  ; $5d41: $e8 $e7
    dec e                                         ; $5d43: $1d
    pop bc                                        ; $5d44: $c1
    db $e3                                        ; $5d45: $e3
    adc c                                         ; $5d46: $89
    ld c, c                                       ; $5d47: $49
    ld c, b                                       ; $5d48: $48
    ld l, h                                       ; $5d49: $6c
    ld l, h                                       ; $5d4a: $6c
    and [hl]                                      ; $5d4b: $a6
    add c                                         ; $5d4c: $81
    db $e3                                        ; $5d4d: $e3
    adc [hl]                                      ; $5d4e: $8e
    adc c                                         ; $5d4f: $89
    jp z, $e8ff                                   ; $5d50: $ca $ff $e8

    rst $20                                       ; $5d53: $e7
    ld e, e                                       ; $5d54: $5b
    cp a                                          ; $5d55: $bf
    pop hl                                        ; $5d56: $e1
    adc a                                         ; $5d57: $8f
    cp a                                          ; $5d58: $bf
    adc c                                         ; $5d59: $89
    adc c                                         ; $5d5a: $89
    add hl, sp                                    ; $5d5b: $39
    ld l, h                                       ; $5d5c: $6c
    ld l, h                                       ; $5d5d: $6c
    ld l, h                                       ; $5d5e: $6c

jr_059_5d5f:
    ccf                                           ; $5d5f: $3f
    and b                                         ; $5d60: $a0
    ld e, [hl]                                    ; $5d61: $5e
    ld h, b                                       ; $5d62: $60
    pop bc                                        ; $5d63: $c1
    ldh [$c0], a                                  ; $5d64: $e0 $c0
    rst $38                                       ; $5d66: $ff
    ret nz                                        ; $5d67: $c0

    jp hl                                         ; $5d68: $e9


    cp a                                          ; $5d69: $bf
    ldh [$c1], a                                  ; $5d6a: $e0 $c1
    ldh [$89], a                                  ; $5d6c: $e0 $89
    inc a                                         ; $5d6e: $3c
    cp a                                          ; $5d6f: $bf
    add d                                         ; $5d70: $82
    inc bc                                        ; $5d71: $03
    ld sp, $c15f                                  ; $5d72: $31 $5f $c1
    ldh [$c0], a                                  ; $5d75: $e0 $c0
    rst $38                                       ; $5d77: $ff
    rst $38                                       ; $5d78: $ff
    rst $38                                       ; $5d79: $ff
    rst $38                                       ; $5d7a: $ff
    rst $38                                       ; $5d7b: $ff
    rst $38                                       ; $5d7c: $ff
    rst $38                                       ; $5d7d: $ff
    rst $38                                       ; $5d7e: $ff
    rst $38                                       ; $5d7f: $ff
    nop                                           ; $5d80: $00
    rst $38                                       ; $5d81: $ff
    rst $38                                       ; $5d82: $ff
    rst $38                                       ; $5d83: $ff
    rst $38                                       ; $5d84: $ff
    rst $38                                       ; $5d85: $ff
    rst $38                                       ; $5d86: $ff
    rst $38                                       ; $5d87: $ff
    rst $38                                       ; $5d88: $ff
    rst $38                                       ; $5d89: $ff
    rst $38                                       ; $5d8a: $ff
    rst $38                                       ; $5d8b: $ff
    rst $38                                       ; $5d8c: $ff
    rst $38                                       ; $5d8d: $ff
    rst $38                                       ; $5d8e: $ff
    rst $38                                       ; $5d8f: $ff
    rst $38                                       ; $5d90: $ff
    nop                                           ; $5d91: $00

jr_059_5d92:
    rst $38                                       ; $5d92: $ff
    rst $38                                       ; $5d93: $ff
    rst $38                                       ; $5d94: $ff
    rst $38                                       ; $5d95: $ff
    rst $38                                       ; $5d96: $ff
    rst $38                                       ; $5d97: $ff
    rst $38                                       ; $5d98: $ff
    rst $38                                       ; $5d99: $ff
    rst $38                                       ; $5d9a: $ff
    rst $38                                       ; $5d9b: $ff
    rst $38                                       ; $5d9c: $ff
    rst $38                                       ; $5d9d: $ff
    rst $38                                       ; $5d9e: $ff
    rst $38                                       ; $5d9f: $ff
    rst $38                                       ; $5da0: $ff
    rst $38                                       ; $5da1: $ff
    nop                                           ; $5da2: $00
    rst $38                                       ; $5da3: $ff
    rst $38                                       ; $5da4: $ff
    rst $38                                       ; $5da5: $ff
    rst $38                                       ; $5da6: $ff
    rst $38                                       ; $5da7: $ff
    rst $38                                       ; $5da8: $ff
    rst $38                                       ; $5da9: $ff
    rst $38                                       ; $5daa: $ff
    rst $38                                       ; $5dab: $ff
    rst $38                                       ; $5dac: $ff
    rst $38                                       ; $5dad: $ff
    rst $38                                       ; $5dae: $ff
    rst $38                                       ; $5daf: $ff
    rst $38                                       ; $5db0: $ff
    rst $38                                       ; $5db1: $ff
    rst $38                                       ; $5db2: $ff
    nop                                           ; $5db3: $00
    rst $38                                       ; $5db4: $ff
    rst $38                                       ; $5db5: $ff
    rst $38                                       ; $5db6: $ff
    rst $38                                       ; $5db7: $ff
    rst $38                                       ; $5db8: $ff
    rst $38                                       ; $5db9: $ff
    rst $38                                       ; $5dba: $ff
    rst $38                                       ; $5dbb: $ff
    rst $38                                       ; $5dbc: $ff
    rst $38                                       ; $5dbd: $ff
    rst $38                                       ; $5dbe: $ff
    rst $38                                       ; $5dbf: $ff
    rst $38                                       ; $5dc0: $ff
    rst $38                                       ; $5dc1: $ff
    rst $38                                       ; $5dc2: $ff
    rst $38                                       ; $5dc3: $ff
    nop                                           ; $5dc4: $00
    rst $38                                       ; $5dc5: $ff
    rst $38                                       ; $5dc6: $ff
    rst $38                                       ; $5dc7: $ff
    rst $38                                       ; $5dc8: $ff
    rst $38                                       ; $5dc9: $ff
    rst $38                                       ; $5dca: $ff
    rst $38                                       ; $5dcb: $ff
    rst $38                                       ; $5dcc: $ff
    rst $38                                       ; $5dcd: $ff
    rst $38                                       ; $5dce: $ff
    rst $38                                       ; $5dcf: $ff
    rst $38                                       ; $5dd0: $ff
    rst $38                                       ; $5dd1: $ff
    rst $38                                       ; $5dd2: $ff
    rst $38                                       ; $5dd3: $ff
    rst $38                                       ; $5dd4: $ff
    nop                                           ; $5dd5: $00
    rst $38                                       ; $5dd6: $ff
    rst $38                                       ; $5dd7: $ff
    rst $38                                       ; $5dd8: $ff
    rst $38                                       ; $5dd9: $ff
    rst $38                                       ; $5dda: $ff
    rst $38                                       ; $5ddb: $ff
    rst $38                                       ; $5ddc: $ff
    rst $38                                       ; $5ddd: $ff
    rst $38                                       ; $5dde: $ff
    rst $38                                       ; $5ddf: $ff
    rst $38                                       ; $5de0: $ff
    rst $38                                       ; $5de1: $ff
    rst $38                                       ; $5de2: $ff
    rst $38                                       ; $5de3: $ff
    rst $38                                       ; $5de4: $ff
    rst $38                                       ; $5de5: $ff
    nop                                           ; $5de6: $00
    rst $38                                       ; $5de7: $ff
    rst $38                                       ; $5de8: $ff
    rst $38                                       ; $5de9: $ff
    rst $38                                       ; $5dea: $ff
    rst $38                                       ; $5deb: $ff
    rst $38                                       ; $5dec: $ff
    rst $38                                       ; $5ded: $ff
    rst $38                                       ; $5dee: $ff
    rst $38                                       ; $5def: $ff
    rst $38                                       ; $5df0: $ff
    rst $38                                       ; $5df1: $ff
    rst $38                                       ; $5df2: $ff
    rst $38                                       ; $5df3: $ff
    rst $38                                       ; $5df4: $ff
    rst $38                                       ; $5df5: $ff
    rst $38                                       ; $5df6: $ff
    nop                                           ; $5df7: $00
    rst $38                                       ; $5df8: $ff
    rst $38                                       ; $5df9: $ff
    rst $38                                       ; $5dfa: $ff
    rst $38                                       ; $5dfb: $ff
    rst $38                                       ; $5dfc: $ff
    rst $38                                       ; $5dfd: $ff
    rst $38                                       ; $5dfe: $ff
    rst $38                                       ; $5dff: $ff
    rst $38                                       ; $5e00: $ff
    rst $38                                       ; $5e01: $ff
    rst $38                                       ; $5e02: $ff
    rst $38                                       ; $5e03: $ff
    rst $38                                       ; $5e04: $ff
    rst $38                                       ; $5e05: $ff
    rst $38                                       ; $5e06: $ff
    rst $38                                       ; $5e07: $ff
    nop                                           ; $5e08: $00
    rst $38                                       ; $5e09: $ff
    rst $38                                       ; $5e0a: $ff
    rst $38                                       ; $5e0b: $ff
    rst $38                                       ; $5e0c: $ff
    rst $38                                       ; $5e0d: $ff
    rst $38                                       ; $5e0e: $ff
    rst $38                                       ; $5e0f: $ff
    rst $38                                       ; $5e10: $ff
    rst $38                                       ; $5e11: $ff
    rst $38                                       ; $5e12: $ff
    rst $38                                       ; $5e13: $ff
    rst $38                                       ; $5e14: $ff
    rst $38                                       ; $5e15: $ff
    rst $38                                       ; $5e16: $ff
    rst $38                                       ; $5e17: $ff
    rst $38                                       ; $5e18: $ff
    nop                                           ; $5e19: $00
    rst $38                                       ; $5e1a: $ff
    rst $38                                       ; $5e1b: $ff
    rst $38                                       ; $5e1c: $ff
    rst $38                                       ; $5e1d: $ff
    rst $38                                       ; $5e1e: $ff
    rst $38                                       ; $5e1f: $ff
    rst $38                                       ; $5e20: $ff
    rst $38                                       ; $5e21: $ff
    rst $38                                       ; $5e22: $ff
    rst $38                                       ; $5e23: $ff
    rst $38                                       ; $5e24: $ff
    rst $38                                       ; $5e25: $ff
    rst $38                                       ; $5e26: $ff
    rst $38                                       ; $5e27: $ff
    rst $38                                       ; $5e28: $ff
    rst $38                                       ; $5e29: $ff
    nop                                           ; $5e2a: $00
    rst $38                                       ; $5e2b: $ff
    rst $38                                       ; $5e2c: $ff
    rst $38                                       ; $5e2d: $ff
    rst $38                                       ; $5e2e: $ff
    rst $38                                       ; $5e2f: $ff
    rst $38                                       ; $5e30: $ff
    rst $38                                       ; $5e31: $ff
    rst $38                                       ; $5e32: $ff
    rst $38                                       ; $5e33: $ff
    rst $38                                       ; $5e34: $ff
    rst $38                                       ; $5e35: $ff
    rst $38                                       ; $5e36: $ff
    rst $38                                       ; $5e37: $ff
    db $f4                                        ; $5e38: $f4
    nop                                           ; $5e39: $00
    nop                                           ; $5e3a: $00
    nop                                           ; $5e3b: $00
    and l                                         ; $5e3c: $a5
    nop                                           ; $5e3d: $00
    rst $38                                       ; $5e3e: $ff
    push hl                                       ; $5e3f: $e5
    ld [hl-], a                                   ; $5e40: $32
    or $e6                                        ; $5e41: $f6 $e6
    rst $30                                       ; $5e43: $f7
    rst $20                                       ; $5e44: $e7
    dec [hl]                                      ; $5e45: $35
    db $ec                                        ; $5e46: $ec
    xor $37                                       ; $5e47: $ee $37
    db $ec                                        ; $5e49: $ec
    jp c, $c7f0                                   ; $5e4a: $da $f0 $c7

    add sp, $33                                   ; $5e4d: $e8 $33
    ld sp, $f2e0                                  ; $5e4f: $31 $e0 $f2
    ld [hl], $30                                  ; $5e52: $36 $30
    scf                                           ; $5e54: $37
    cp a                                          ; $5e55: $bf
    ld h, $20                                     ; $5e56: $26 $20
    daa                                           ; $5e58: $27
    db $10                                        ; $5e59: $10
    ld d, $17                                     ; $5e5a: $16 $17
    jp nz, Jump_000_34f6                          ; $5e5c: $c2 $f6 $34

    rst $38                                       ; $5e5f: $ff
    ld [hl], $32                                  ; $5e60: $36 $32
    jr nc, jr_059_5e9b                            ; $5e62: $30 $37

    ld sp, $3133                                  ; $5e64: $31 $33 $31
    inc sp                                        ; $5e67: $33
    nop                                           ; $5e68: $00
    and b                                         ; $5e69: $a0
    ei                                            ; $5e6a: $fb
    rst $38                                       ; $5e6b: $ff
    rst $28                                       ; $5e6c: $ef
    nop                                           ; $5e6d: $00
    nop                                           ; $5e6e: $00
    nop                                           ; $5e6f: $00
    ld a, b                                       ; $5e70: $78
    ld e, [hl]                                    ; $5e71: $5e
    xor b                                         ; $5e72: $a8
    ld e, [hl]                                    ; $5e73: $5e
    cpl                                           ; $5e74: $2f
    ld h, c                                       ; $5e75: $61
    dec h                                         ; $5e76: $25
    ld h, e                                       ; $5e77: $63
    ld hl, sp+$03                                 ; $5e78: $f8 $03
    ld c, h                                       ; $5e7a: $4c
    inc bc                                        ; $5e7b: $03
    ld d, e                                       ; $5e7c: $53
    ld bc, $008a                                  ; $5e7d: $01 $8a $00
    ldh a, [$03]                                  ; $5e80: $f0 $03
    ld hl, sp+$03                                 ; $5e82: $f8 $03
    ld c, h                                       ; $5e84: $4c
    inc bc                                        ; $5e85: $03
    ld d, e                                       ; $5e86: $53
    ld bc, $47ff                                  ; $5e87: $01 $ff $47
    ldh a, [rP1]                                  ; $5e8a: $f0 $00
    ld e, l                                       ; $5e8c: $5d
    add hl, de                                    ; $5e8d: $19
    ld c, h                                       ; $5e8e: $4c
    inc bc                                        ; $5e8f: $03
    ld [$0825], sp                                ; $5e90: $08 $25 $08
    dec h                                         ; $5e93: $25
    ld [$0825], sp                                ; $5e94: $08 $25 $08
    dec h                                         ; $5e97: $25
    ld [$0825], sp                                ; $5e98: $08 $25 $08

jr_059_5e9b:
    dec h                                         ; $5e9b: $25
    ld [$0825], sp                                ; $5e9c: $08 $25 $08
    dec h                                         ; $5e9f: $25
    ld [$0825], sp                                ; $5ea0: $08 $25 $08
    dec h                                         ; $5ea3: $25
    ld [$0825], sp                                ; $5ea4: $08 $25 $08
    dec h                                         ; $5ea7: $25
    rst $30                                       ; $5ea8: $f7
    inc l                                         ; $5ea9: $2c
    inc l                                         ; $5eaa: $2c
    dec bc                                        ; $5eab: $0b
    rst $38                                       ; $5eac: $ff
    ldh [rOCPD], a                                ; $5ead: $e0 $6b
    ld l, e                                       ; $5eaf: $6b
    ld c, e                                       ; $5eb0: $4b
    ld c, e                                       ; $5eb1: $4b
    rst $10                                       ; $5eb2: $d7
    dec bc                                        ; $5eb3: $0b
    dec hl                                        ; $5eb4: $2b
    ld l, e                                       ; $5eb5: $6b
    push af                                       ; $5eb6: $f5
    ldh [$0a], a                                  ; $5eb7: $e0 $0a
    pop af                                        ; $5eb9: $f1
    ldh [$4c], a                                  ; $5eba: $e0 $4c
    inc c                                         ; $5ebc: $0c
    ld [bc], a                                    ; $5ebd: $02
    rst $38                                       ; $5ebe: $ff
    ld [c], a                                     ; $5ebf: $e2
    inc l                                         ; $5ec0: $2c
    rst $38                                       ; $5ec1: $ff
    ldh [$f6], a                                  ; $5ec2: $e0 $f6
    db $e3                                        ; $5ec4: $e3
    ld a, [$dbf8]                                 ; $5ec5: $fa $f8 $db
    ldh [$c0], a                                  ; $5ec8: $e0 $c0
    ld [c], a                                     ; $5eca: $e2
    cp a                                          ; $5ecb: $bf
    db $e3                                        ; $5ecc: $e3
    inc b                                         ; $5ecd: $04
    jp nz, $c0e1                                  ; $5ece: $c2 $e1 $c0

    pop hl                                        ; $5ed1: $e1
    ld c, h                                       ; $5ed2: $4c
    cp l                                          ; $5ed3: $bd
    pop hl                                        ; $5ed4: $e1
    ei                                            ; $5ed5: $fb
    ld [c], a                                     ; $5ed6: $e2
    or l                                          ; $5ed7: $b5
    pop hl                                        ; $5ed8: $e1
    rst $30                                       ; $5ed9: $f7
    db $e4                                        ; $5eda: $e4
    or e                                          ; $5edb: $b3
    pop hl                                        ; $5edc: $e1
    inc c                                         ; $5edd: $0c
    xor [hl]                                      ; $5ede: $ae
    rst $28                                       ; $5edf: $ef
    cp a                                          ; $5ee0: $bf
    pop hl                                        ; $5ee1: $e1
    ld c, e                                       ; $5ee2: $4b
    ld c, e                                       ; $5ee3: $4b
    cp a                                          ; $5ee4: $bf
    push hl                                       ; $5ee5: $e5
    ld a, [hl]                                    ; $5ee6: $7e
    ld [c], a                                     ; $5ee7: $e2
    ret nz                                        ; $5ee8: $c0

    db $e4                                        ; $5ee9: $e4
    sub l                                         ; $5eea: $95
    xor $0c                                       ; $5eeb: $ee $0c
    ld l, l                                       ; $5eed: $6d
    ld [c], a                                     ; $5eee: $e2
    ld l, [hl]                                    ; $5eef: $6e
    ldh a, [rWX]                                  ; $5ef0: $f0 $4b
    dec hl                                        ; $5ef2: $2b
    add b                                         ; $5ef3: $80
    ldh [$3d], a                                  ; $5ef4: $e0 $3d
    rst $20                                       ; $5ef6: $e7
    ld b, b                                       ; $5ef7: $40
    ldh [rOBP0], a                                ; $5ef8: $e0 $48
    push af                                       ; $5efa: $f5
    cp b                                          ; $5efb: $b8
    cpl                                           ; $5efc: $2f
    di                                            ; $5efd: $f3
    inc b                                         ; $5efe: $04

Jump_059_5eff:
    ldh [$bf], a                                  ; $5eff: $e0 $bf
    db $e3                                        ; $5f01: $e3
    dec bc                                        ; $5f02: $0b
    dec bc                                        ; $5f03: $0b
    dec hl                                        ; $5f04: $2b
    ld b, b                                       ; $5f05: $40
    and $4c                                       ; $5f06: $e6 $4c
    adc b                                         ; $5f08: $88
    rst $38                                       ; $5f09: $ff
    ldh [$3b], a                                  ; $5f0a: $e0 $3b
    db $e3                                        ; $5f0c: $e3
    ld a, [$2cc1]                                 ; $5f0d: $fa $c1 $2c
    ld a, [$3de4]                                 ; $5f10: $fa $e4 $3d
    add sp, -$1c                                  ; $5f13: $e8 $e4
    rst $00                                       ; $5f15: $c7
    dec bc                                        ; $5f16: $0b
    jr nz, jr_059_5f5a                            ; $5f17: $20 $41

    pop hl                                        ; $5f19: $e1
    db $fd                                        ; $5f1a: $fd
    jp $e600                                      ; $5f1b: $c3 $00 $e6


    db $fc                                        ; $5f1e: $fc
    ret nz                                        ; $5f1f: $c0

    db $fd                                        ; $5f20: $fd
    jp $ba4c                                      ; $5f21: $c3 $4c $ba


    jp nz, $c4b4                                  ; $5f24: $c2 $b4 $c4

    ld l, $29                                     ; $5f27: $2e $29
    pop af                                        ; $5f29: $f1
    inc c                                         ; $5f2a: $0c
    ld c, e                                       ; $5f2b: $4b
    dec bc                                        ; $5f2c: $0b
    add b                                         ; $5f2d: $80
    pop hl                                        ; $5f2e: $e1
    dec hl                                        ; $5f2f: $2b
    dec sp                                        ; $5f30: $3b
    ldh [$c0], a                                  ; $5f31: $e0 $c0
    db $e3                                        ; $5f33: $e3
    jr nz, @-$26                                  ; $5f34: $20 $d8

    db $e3                                        ; $5f36: $e3
    cp l                                          ; $5f37: $bd
    pop bc                                        ; $5f38: $c1
    ld sp, hl                                     ; $5f39: $f9
    ld [c], a                                     ; $5f3a: $e2
    ld a, e                                       ; $5f3b: $7b
    jp nz, $c374                                  ; $5f3c: $c2 $74 $c3

    inc l                                         ; $5f3f: $2c
    ld h, [hl]                                    ; $5f40: $66
    pop bc                                        ; $5f41: $c1
    ld l, h                                       ; $5f42: $6c
    call $c200                                    ; $5f43: $cd $00 $c2
    ldh [rOBP0], a                                ; $5f46: $e0 $48
    ldh [rIE], a                                  ; $5f48: $e0 $ff
    ld [c], a                                     ; $5f4a: $e2
    ld a, a                                       ; $5f4b: $7f
    pop hl                                        ; $5f4c: $e1
    sbc d                                         ; $5f4d: $9a
    ld [c], a                                     ; $5f4e: $e2
    ret nz                                        ; $5f4f: $c0

    ld [c], a                                     ; $5f50: $e2
    ld a, e                                       ; $5f51: $7b
    ret z                                         ; $5f52: $c8

    dec [hl]                                      ; $5f53: $35
    pop bc                                        ; $5f54: $c1
    ld [bc], a                                    ; $5f55: $02
    ret nz                                        ; $5f56: $c0

    di                                            ; $5f57: $f3
    dec bc                                        ; $5f58: $0b
    pop bc                                        ; $5f59: $c1

jr_059_5f5a:
    ld [c], a                                     ; $5f5a: $e2
    ret nz                                        ; $5f5b: $c0

    db $e4                                        ; $5f5c: $e4
    ld [hl], a                                    ; $5f5d: $77
    ldh [rWX], a                                  ; $5f5e: $e0 $4b
    db $e4                                        ; $5f60: $e4
    ld [$f4c5], sp                                ; $5f61: $08 $c5 $f4
    jp hl                                         ; $5f64: $e9


    ld [$b2f4], sp                                ; $5f65: $08 $f4 $b2
    call nz, $c0a0                                ; $5f68: $c4 $a0 $c0
    add sp, $2b                                   ; $5f6b: $e8 $2b
    ld b, e                                       ; $5f6d: $43
    ldh [rSC], a                                  ; $5f6e: $e0 $02
    push bc                                       ; $5f70: $c5
    ld b, $c2                                     ; $5f71: $06 $c2
    ld a, [$00a4]                                 ; $5f73: $fa $a4 $00
    add b                                         ; $5f76: $80
    db $e4                                        ; $5f77: $e4
    ret nz                                        ; $5f78: $c0

    ld a, [c]                                     ; $5f79: $f2
    call $81a2                                    ; $5f7a: $cd $a2 $81
    db $e3                                        ; $5f7d: $e3
    ret nz                                        ; $5f7e: $c0

    ld [c], a                                     ; $5f7f: $e2
    cp [hl]                                       ; $5f80: $be
    db $e3                                        ; $5f81: $e3
    ld a, a                                       ; $5f82: $7f
    ret                                           ; $5f83: $c9


    ret nz                                        ; $5f84: $c0

    rst $20                                       ; $5f85: $e7
    nop                                           ; $5f86: $00
    jp hl                                         ; $5f87: $e9


    and [hl]                                      ; $5f88: $a6
    ld h, a                                       ; $5f89: $67
    and [hl]                                      ; $5f8a: $a6
    ld c, [hl]                                    ; $5f8b: $4e
    jp $c2ff                                      ; $5f8c: $c3 $ff $c2


    dec [hl]                                      ; $5f8f: $35
    ld [c], a                                     ; $5f90: $e2
    ret                                           ; $5f91: $c9


    jp nz, $c381                                  ; $5f92: $c2 $81 $c3

    dec sp                                        ; $5f95: $3b

jr_059_5f96:
    jp nz, $8d24                                  ; $5f96: $c2 $24 $8d

    res 5, c                                      ; $5f99: $cb $a9
    xor a                                         ; $5f9b: $af
    ld c, e                                       ; $5f9c: $4b
    ret nz                                        ; $5f9d: $c0

    push hl                                       ; $5f9e: $e5
    ld [hl], a                                    ; $5f9f: $77
    db $e4                                        ; $5fa0: $e4
    inc l                                         ; $5fa1: $2c
    dec b                                         ; $5fa2: $05
    call nz, $c202                                ; $5fa3: $c4 $02 $c2
    ld [$e3be], sp                                ; $5fa6: $08 $be $e3
    ret nz                                        ; $5fa9: $c0

    db $ed                                        ; $5faa: $ed
    ld [$4b8a], a                                 ; $5fab: $ea $8a $4b
    dec bc                                        ; $5fae: $0b
    jp $e5c1                                      ; $5faf: $c3 $c1 $e5


    ld a, a                                       ; $5fb2: $7f
    pop hl                                        ; $5fb3: $e1
    ld bc, $08e7                                  ; $5fb4: $01 $e7 $08
    ret nz                                        ; $5fb7: $c0

    adc $c0                                       ; $5fb8: $ce $c0
    and $a5                                       ; $5fba: $e6 $a5
    add [hl]                                      ; $5fbc: $86
    ld c, e                                       ; $5fbd: $4b
    ld a, a                                       ; $5fbe: $7f
    ld [c], a                                     ; $5fbf: $e2
    adc c                                         ; $5fc0: $89
    and d                                         ; $5fc1: $a2
    ld b, h                                       ; $5fc2: $44
    and d                                         ; $5fc3: $a2
    ld a, $e3                                     ; $5fc4: $3e $e3
    nop                                           ; $5fc6: $00

jr_059_5fc7:
    jp $c0a3                                      ; $5fc7: $c3 $a3 $c0


    rst $00                                       ; $5fca: $c7
    add b                                         ; $5fcb: $80
    db $eb                                        ; $5fcc: $eb
    ld [hl], $a9                                  ; $5fcd: $36 $a9
    add b                                         ; $5fcf: $80
    ldh [$fe], a                                  ; $5fd0: $e0 $fe
    jp $e4c2                                      ; $5fd2: $c3 $c2 $e4


    ccf                                           ; $5fd5: $3f
    and c                                         ; $5fd6: $a1
    nop                                           ; $5fd7: $00
    ld b, h                                       ; $5fd8: $44
    push hl                                       ; $5fd9: $e5
    ld b, b                                       ; $5fda: $40
    rst $10                                       ; $5fdb: $d7
    ld sp, $64a0                                  ; $5fdc: $31 $a0 $64
    adc e                                         ; $5fdf: $8b
    db $db                                        ; $5fe0: $db
    jp z, $860a                                   ; $5fe1: $ca $0a $86

    cp b                                          ; $5fe4: $b8
    rst $20                                       ; $5fe5: $e7
    ld [hl], e                                    ; $5fe6: $73
    sub c                                         ; $5fe7: $91
    nop                                           ; $5fe8: $00
    jp z, $c0ec                                   ; $5fe9: $ca $ec $c0

    jp hl                                         ; $5fec: $e9


    add e                                         ; $5fed: $83
    and $40                                       ; $5fee: $e6 $40
    rst $28                                       ; $5ff0: $ef
    ldh a, [$a3]                                  ; $5ff1: $f0 $a3
    ld l, l                                       ; $5ff3: $6d
    ret                                           ; $5ff4: $c9


    sub c                                         ; $5ff5: $91
    ld h, e                                       ; $5ff6: $63
    adc [hl]                                      ; $5ff7: $8e
    add h                                         ; $5ff8: $84
    nop                                           ; $5ff9: $00
    inc b                                         ; $5ffa: $04
    adc c                                         ; $5ffb: $89
    ld a, [$f06c]                                 ; $5ffc: $fa $6c $f0
    xor e                                         ; $5fff: $ab
    inc e                                         ; $6000: $1c
    add l                                         ; $6001: $85
    ld d, e                                       ; $6002: $53
    and l                                         ; $6003: $a5
    adc e                                         ; $6004: $8b
    pop hl                                        ; $6005: $e1
    add hl, bc                                    ; $6006: $09
    jp $869a                                      ; $6007: $c3 $9a $86


    nop                                           ; $600a: $00
    ld b, d                                       ; $600b: $42
    ld l, h                                       ; $600c: $6c
    ldh a, [$aa]                                  ; $600d: $f0 $aa
    cp $c6                                        ; $600f: $fe $c6
    push af                                       ; $6011: $f5
    push bc                                       ; $6012: $c5
    jr jr_059_5f96                                ; $6013: $18 $81

    xor d                                         ; $6015: $aa
    ld [c], a                                     ; $6016: $e2
    ld b, d                                       ; $6017: $42
    ldh [$0e], a                                  ; $6018: $e0 $0e
    add h                                         ; $601a: $84
    nop                                           ; $601b: $00
    and $cf                                       ; $601c: $e6 $cf
    ld h, [hl]                                    ; $601e: $66
    ld h, [hl]                                    ; $601f: $66
    push hl                                       ; $6020: $e5
    ld b, a                                       ; $6021: $47
    ld b, b                                       ; $6022: $40
    ldh a, [$0e]                                  ; $6023: $f0 $0e
    add l                                         ; $6025: $85
    and h                                         ; $6026: $a4
    pop de                                        ; $6027: $d1
    and h                                         ; $6028: $a4
    add h                                         ; $6029: $84
    ret nz                                        ; $602a: $c0

    db $fc                                        ; $602b: $fc
    nop                                           ; $602c: $00
    sbc $e9                                       ; $602d: $de $e9
    ld [hl], h                                    ; $602f: $74
    add a                                         ; $6030: $87
    ldh a, [$af]                                  ; $6031: $f0 $af
    ret nz                                        ; $6033: $c0

    rst $00                                       ; $6034: $c7
    add hl, bc                                    ; $6035: $09
    xor d                                         ; $6036: $aa
    ld b, e                                       ; $6037: $43
    ld c, d                                       ; $6038: $4a
    ld a, d                                       ; $6039: $7a
    ld b, [hl]                                    ; $603a: $46
    jr nc, jr_059_5fc7                            ; $603b: $30 $8a

    add b                                         ; $603d: $80
    ld b, b                                       ; $603e: $40
    db $ed                                        ; $603f: $ed
    ret z                                         ; $6040: $c8

    push bc                                       ; $6041: $c5
    ret nz                                        ; $6042: $c0

    call z, $6008                                 ; $6043: $cc $08 $60
    ld a, [hl-]                                   ; $6046: $3a
    ld c, b                                       ; $6047: $48
    ldh a, [$a8]                                  ; $6048: $f0 $a8
    nop                                           ; $604a: $00
    ld [HeaderMaskROMVersion], a                  ; $604b: $ea $4c $01
    ld [$e8ff], sp                                ; $604e: $08 $ff $e8
    ld c, $8a                                     ; $6051: $0e $8a
    ld a, [$7fc1]                                 ; $6053: $fa $c1 $7f
    ret                                           ; $6056: $c9


    dec hl                                        ; $6057: $2b
    rst $08                                       ; $6058: $cf
    db $eb                                        ; $6059: $eb
    ld c, a                                       ; $605a: $4f
    adc $66                                       ; $605b: $ce $66
    nop                                           ; $605d: $00
    ld a, h                                       ; $605e: $7c
    inc hl                                        ; $605f: $23
    ret nz                                        ; $6060: $c0

    db $ec                                        ; $6061: $ec
    adc b                                         ; $6062: $88
    or a                                          ; $6063: $b7

Jump_059_6064:
    dec de                                        ; $6064: $1b
    sub b                                         ; $6065: $90
    dec a                                         ; $6066: $3d
    add hl, hl                                    ; $6067: $29
    ld [hl-], a                                   ; $6068: $32
    inc sp                                        ; $6069: $33
    sub [hl]                                      ; $606a: $96
    cpl                                           ; $606b: $2f
    rrca                                          ; $606c: $0f
    or h                                          ; $606d: $b4
    nop                                           ; $606e: $00
    cp b                                          ; $606f: $b8
    rst $00                                       ; $6070: $c7
    xor [hl]                                      ; $6071: $ae
    ld l, e                                       ; $6072: $6b
    push de                                       ; $6073: $d5
    ld h, h                                       ; $6074: $64
    ld c, $93                                     ; $6075: $0e $93
    cp l                                          ; $6077: $bd

jr_059_6078:
    rra                                           ; $6078: $1f
    db $eb                                        ; $6079: $eb
    ld h, $0e                                     ; $607a: $26 $0e
    sub d                                         ; $607c: $92
    add hl, bc                                    ; $607d: $09
    ld b, h                                       ; $607e: $44
    nop                                           ; $607f: $00
    pop bc                                        ; $6080: $c1
    cp $0e                                        ; $6081: $fe $0e
    sbc e                                         ; $6083: $9b
    ld [hl-], a                                   ; $6084: $32
    inc [hl]                                      ; $6085: $34
    dec e                                         ; $6086: $1d
    adc c                                         ; $6087: $89
    adc a                                         ; $6088: $8f
    ld b, h                                       ; $6089: $44
    ld c, $93                                     ; $608a: $0e $93
    ld [hl-], a                                   ; $608c: $32
    dec [hl]                                      ; $608d: $35
    db $e4                                        ; $608e: $e4
    and $00                                       ; $608f: $e6 $00
    adc a                                         ; $6091: $8f
    ld h, [hl]                                    ; $6092: $66
    ld e, $d1                                     ; $6093: $1e $d1
    ld [hl-], a                                   ; $6095: $32
    inc sp                                        ; $6096: $33
    db $e4                                        ; $6097: $e4
    pop af                                        ; $6098: $f1
    sub e                                         ; $6099: $93
    ld [hl], l                                    ; $609a: $75
    ld [hl-], a                                   ; $609b: $32
    ld sp, $6dae                                  ; $609c: $31 $ae $6d
    sub e                                         ; $609f: $93
    reti                                          ; $60a0: $d9


    nop                                           ; $60a1: $00
    ld [hl-], a                                   ; $60a2: $32
    dec a                                         ; $60a3: $3d
    ld e, e                                       ; $60a4: $5b
    call c, Call_000_3232                         ; $60a5: $dc $32 $32
    ld a, [hl+]                                   ; $60a8: $2a
    sbc $1f                                       ; $60a9: $de $1f
    ld l, c                                       ; $60ab: $69
    ld [hl-], a                                   ; $60ac: $32
    jr nc, @-$1d                                  ; $60ad: $30 $e1

    ret nc                                        ; $60af: $d0

    call nz, Call_000_00d2                        ; $60b0: $c4 $d2 $00
    add c                                         ; $60b3: $81
    add $32                                       ; $60b4: $c6 $32
    jr nc, jr_059_6078                            ; $60b6: $30 $c0

    ldh a, [rNR34]                                ; $60b8: $f0 $1e
    or d                                          ; $60ba: $b2
    ld [hl-], a                                   ; $60bb: $32
    dec [hl]                                      ; $60bc: $35
    db $fd                                        ; $60bd: $fd
    sra l                                         ; $60be: $cb $2d
    push af                                       ; $60c0: $f5
    ld [hl-], a                                   ; $60c1: $32
    scf                                           ; $60c2: $37
    nop                                           ; $60c3: $00
    rst $38                                       ; $60c4: $ff
    rst $38                                       ; $60c5: $ff
    ld b, $c7                                     ; $60c6: $06 $c7
    ld b, d                                       ; $60c8: $42
    ld [hl], h                                    ; $60c9: $74
    ld h, $bb                                     ; $60ca: $26 $bb
    dec h                                         ; $60cc: $25
    and h                                         ; $60cd: $a4
    ld [hl-], a                                   ; $60ce: $32
    dec a                                         ; $60cf: $3d
    dec l                                         ; $60d0: $2d
    db $f4                                        ; $60d1: $f4
    dec b                                         ; $60d2: $05
    xor c                                         ; $60d3: $a9
    nop                                           ; $60d4: $00
    inc h                                         ; $60d5: $24
    or [hl]                                       ; $60d6: $b6
    ld b, b                                       ; $60d7: $40
    rst $38                                       ; $60d8: $ff
    inc h                                         ; $60d9: $24
    cp e                                          ; $60da: $bb
    ld b, b                                       ; $60db: $40
    rst $38                                       ; $60dc: $ff
    db $e4                                        ; $60dd: $e4
    adc d                                         ; $60de: $8a
    rst $38                                       ; $60df: $ff
    rst $38                                       ; $60e0: $ff
    ld h, b                                       ; $60e1: $60
    rst $18                                       ; $60e2: $df
    rst $38                                       ; $60e3: $ff
    rst $38                                       ; $60e4: $ff
    nop                                           ; $60e5: $00
    rst $38                                       ; $60e6: $ff
    rst $38                                       ; $60e7: $ff
    sub [hl]                                      ; $60e8: $96
    rst $38                                       ; $60e9: $ff
    rst $38                                       ; $60ea: $ff
    rst $38                                       ; $60eb: $ff
    sbc e                                         ; $60ec: $9b
    ld [de], a                                    ; $60ed: $12
    rst $38                                       ; $60ee: $ff
    rst $38                                       ; $60ef: $ff
    rst $38                                       ; $60f0: $ff
    rst $38                                       ; $60f1: $ff
    rst $38                                       ; $60f2: $ff
    rst $38                                       ; $60f3: $ff
    rst $38                                       ; $60f4: $ff
    rst $38                                       ; $60f5: $ff
    nop                                           ; $60f6: $00
    ld e, [hl]                                    ; $60f7: $5e
    jr z, @+$01                                   ; $60f8: $28 $ff

    rst $38                                       ; $60fa: $ff
    rst $38                                       ; $60fb: $ff
    rst $38                                       ; $60fc: $ff
    rst $38                                       ; $60fd: $ff
    rst $38                                       ; $60fe: $ff
    rst $38                                       ; $60ff: $ff
    rst $38                                       ; $6100: $ff
    rst $38                                       ; $6101: $ff
    rst $38                                       ; $6102: $ff
    rst $38                                       ; $6103: $ff
    rst $38                                       ; $6104: $ff
    rst $38                                       ; $6105: $ff
    rst $38                                       ; $6106: $ff
    nop                                           ; $6107: $00
    rst $38                                       ; $6108: $ff
    rst $38                                       ; $6109: $ff
    rst $38                                       ; $610a: $ff
    rst $38                                       ; $610b: $ff
    rst $38                                       ; $610c: $ff
    rst $38                                       ; $610d: $ff
    rst $38                                       ; $610e: $ff
    rst $38                                       ; $610f: $ff
    rst $38                                       ; $6110: $ff
    rst $38                                       ; $6111: $ff
    rst $38                                       ; $6112: $ff
    rst $38                                       ; $6113: $ff
    rst $38                                       ; $6114: $ff
    rst $38                                       ; $6115: $ff
    rst $38                                       ; $6116: $ff
    rst $38                                       ; $6117: $ff
    nop                                           ; $6118: $00
    rst $38                                       ; $6119: $ff
    rst $38                                       ; $611a: $ff
    rst $38                                       ; $611b: $ff
    rst $38                                       ; $611c: $ff
    nop                                           ; $611d: $00
    cp a                                          ; $611e: $bf
    rst $38                                       ; $611f: $ff
    rst $38                                       ; $6120: $ff
    rst $38                                       ; $6121: $ff
    rst $38                                       ; $6122: $ff
    rst $38                                       ; $6123: $ff
    rst $38                                       ; $6124: $ff
    rst $38                                       ; $6125: $ff
    rst $38                                       ; $6126: $ff
    rst $38                                       ; $6127: $ff
    rst $38                                       ; $6128: $ff
    nop                                           ; $6129: $00
    sbc h                                         ; $612a: $9c
    ld c, h                                       ; $612b: $4c
    nop                                           ; $612c: $00
    nop                                           ; $612d: $00
    nop                                           ; $612e: $00
    rst $30                                       ; $612f: $f7
    ld [de], a                                    ; $6130: $12
    ld de, $ff31                                  ; $6131: $11 $31 $ff
    ldh [rKEY1], a                                ; $6134: $e0 $4d
    ld a, [hl-]                                   ; $6136: $3a
    ld a, [hl-]                                   ; $6137: $3a
    ld c, l                                       ; $6138: $4d
    ld d, a                                       ; $6139: $57
    ld sp, $5b60                                  ; $613a: $31 $60 $5b
    rst $38                                       ; $613d: $ff
    ldh [$5a], a                                  ; $613e: $e0 $5a
    ei                                            ; $6140: $fb
    ldh [rP1], a                                  ; $6141: $e0 $00
    rst $38                                       ; $6143: $ff
    rst $38                                       ; $6144: $ff
    xor $e7                                       ; $6145: $ee $e7
    and $22                                       ; $6147: $e6 $22
    ld hl, $bf29                                  ; $6149: $21 $29 $bf
    ldh [$39], a                                  ; $614c: $e0 $39
    ld l, l                                       ; $614e: $6d
    ld l, l                                       ; $614f: $6d
    ld h, c                                       ; $6150: $61
    ld [hl-], a                                   ; $6151: $32
    cp a                                          ; $6152: $bf
    pop hl                                        ; $6153: $e1
    jp nz, $c0e1                                  ; $6154: $c2 $e1 $c0

    rst $38                                       ; $6157: $ff
    ld [$20e9], a                                 ; $6158: $ea $e9 $20
    db $10                                        ; $615b: $10
    cp a                                          ; $615c: $bf
    ldh [$87], a                                  ; $615d: $e0 $87
    sub l                                         ; $615f: $95
    sub e                                         ; $6160: $93
    ld l, l                                       ; $6161: $6d
    cp a                                          ; $6162: $bf
    db $e4                                        ; $6163: $e4
    ld a, [hl]                                    ; $6164: $7e
    ld [c], a                                     ; $6165: $e2
    jp z, $c0ff                                   ; $6166: $ca $ff $c0

    add sp, $20                                   ; $6169: $e8 $20
    ccf                                           ; $616b: $3f
    jr nz, jr_059_616e                            ; $616c: $20 $00

jr_059_616e:
    sub d                                         ; $616e: $92
    sbc l                                         ; $616f: $9d
    ld l, d                                       ; $6170: $6a
    ld h, a                                       ; $6171: $67
    cp a                                          ; $6172: $bf
    add sp, -$40                                  ; $6173: $e8 $c0
    rst $38                                       ; $6175: $ff
    sbc $c0                                       ; $6176: $de $c0
    db $eb                                        ; $6178: $eb
    ld [$8690], sp                                ; $6179: $08 $90 $86
    sub e                                         ; $617c: $93
    cp a                                          ; $617d: $bf
    ld [c], a                                     ; $617e: $e2
    add hl, sp                                    ; $617f: $39
    ld sp, $fce6                                  ; $6180: $31 $e6 $fc
    pop bc                                        ; $6183: $c1
    ld e, h                                       ; $6184: $5c
    ld e, l                                       ; $6185: $5d
    jp z, $80ff                                   ; $6186: $ca $ff $80

    ld [$9d1a], a                                 ; $6189: $ea $1a $9d
    add [hl]                                      ; $618c: $86
    ei                                            ; $618d: $fb
    sub c                                         ; $618e: $91
    ld l, d                                       ; $618f: $6a
    ld a, [hl]                                    ; $6190: $7e
    pop hl                                        ; $6191: $e1
    ld c, b                                       ; $6192: $48
    ld c, c                                       ; $6193: $49
    ld sp, $6231                                  ; $6194: $31 $31 $62
    rst $20                                       ; $6197: $e7
    ld h, d                                       ; $6198: $62
    ld sp, $ca31                                  ; $6199: $31 $31 $ca
    rst $38                                       ; $619c: $ff
    ld b, b                                       ; $619d: $40
    jp hl                                         ; $619e: $e9


    rrca                                          ; $619f: $0f
    sub d                                         ; $61a0: $92
    add [hl]                                      ; $61a1: $86
    rst $38                                       ; $61a2: $ff
    add [hl]                                      ; $61a3: $86
    add [hl]                                      ; $61a4: $86
    sub h                                         ; $61a5: $94
    ld l, d                                       ; $61a6: $6a
    ld l, c                                       ; $61a7: $69
    ld h, [hl]                                    ; $61a8: $66
    ld l, e                                       ; $61a9: $6b
    ld l, e                                       ; $61aa: $6b
    db $e4                                        ; $61ab: $e4
    ld a, a                                       ; $61ac: $7f
    ldh [$72], a                                  ; $61ad: $e0 $72
    ret nz                                        ; $61af: $c0

    ld de, $ffca                                  ; $61b0: $11 $ca $ff
    add sp, -$19                                  ; $61b3: $e8 $e7
    ld b, $07                                     ; $61b5: $06 $07
    ld sp, $90cf                                  ; $61b7: $31 $cf $90
    add [hl]                                      ; $61ba: $86
    sbc h                                         ; $61bb: $9c
    sbc h                                         ; $61bc: $9c
    ret nz                                        ; $61bd: $c0

    db $e3                                        ; $61be: $e3
    ld a, a                                       ; $61bf: $7f
    pop hl                                        ; $61c0: $e1
    ld de, $f912                                  ; $61c1: $11 $12 $f9
    ld hl, $ffca                                  ; $61c4: $21 $ca $ff
    add sp, -$19                                  ; $61c7: $e8 $e7
    ld sp, $9231                                  ; $61c9: $31 $31 $92
    sbc b                                         ; $61cc: $98
    sbc c                                         ; $61cd: $99
    ei                                            ; $61ce: $fb
    ld l, b                                       ; $61cf: $68
    ld l, b                                       ; $61d0: $68
    ld b, b                                       ; $61d1: $40
    ld [c], a                                     ; $61d2: $e2
    ld l, l                                       ; $61d3: $6d
    jr nc, @+$3b                                  ; $61d4: $30 $39

    ld sp, $e729                                  ; $61d6: $31 $29 $e7
    ld hl, $2022                                  ; $61d9: $21 $22 $20
    jp z, $c0ff                                   ; $61dc: $ca $ff $c0

    jp hl                                         ; $61df: $e9


    add hl, sp                                    ; $61e0: $39
    ld l, h                                       ; $61e1: $6c
    ld h, a                                       ; $61e2: $67
    ei                                            ; $61e3: $fb
    ld l, d                                       ; $61e4: $6a
    ld l, b                                       ; $61e5: $68
    ld a, a                                       ; $61e6: $7f
    jp nz, Jump_000_306d                          ; $61e7: $c2 $6d $30

    ld d, e                                       ; $61ea: $53
    ld sp, $f12b                                  ; $61eb: $31 $2b $f1
    inc l                                         ; $61ee: $2c
    ld l, a                                       ; $61ef: $6f
    ret nz                                        ; $61f0: $c0

    rst $38                                       ; $61f1: $ff
    rst $38                                       ; $61f2: $ff
    rst $20                                       ; $61f3: $e7
    and $a4                                       ; $61f4: $e6 $a4
    or b                                          ; $61f6: $b0
    dec [hl]                                      ; $61f7: $35
    ld l, h                                       ; $61f8: $6c
    scf                                           ; $61f9: $37
    ld l, h                                       ; $61fa: $6c
    ld h, l                                       ; $61fb: $65
    ld h, l                                       ; $61fc: $65
    pop bc                                        ; $61fd: $c1
    db $e3                                        ; $61fe: $e3
    jr nc, @+$54                                  ; $61ff: $30 $52

    ret nz                                        ; $6201: $c0

    rst $38                                       ; $6202: $ff
    db $ed                                        ; $6203: $ed
    db $ec                                        ; $6204: $ec
    rst $00                                       ; $6205: $c7
    add b                                         ; $6206: $80
    ld a, d                                       ; $6207: $7a
    ld l, h                                       ; $6208: $6c
    rst $38                                       ; $6209: $ff
    ld [c], a                                     ; $620a: $e2
    pop bc                                        ; $620b: $c1
    ld [c], a                                     ; $620c: $e2
    ld b, b                                       ; $620d: $40
    ldh [rNR22], a                                ; $620e: $e0 $17
    jr z, @-$5a                                   ; $6210: $28 $a4

    ret nz                                        ; $6212: $c0

    rst $38                                       ; $6213: $ff
    ret nz                                        ; $6214: $c0

    ld [$c07b], a                                 ; $6215: $ea $7b $c0
    db $e4                                        ; $6218: $e4
    jp nz, Jump_000_30e0                          ; $6219: $c2 $e0 $30

    inc a                                         ; $621c: $3c
    and b                                         ; $621d: $a0
    dec d                                         ; $621e: $15
    ret                                           ; $621f: $c9


    ld d, $c0                                     ; $6220: $16 $c0
    rst $38                                       ; $6222: $ff
    add b                                         ; $6223: $80
    ld [$4079], a                                 ; $6224: $ea $79 $40
    ldh [$c1], a                                  ; $6227: $e0 $c1
    db $e3                                        ; $6229: $e3
    ld b, h                                       ; $622a: $44
    ld b, l                                       ; $622b: $45
    ld h, c                                       ; $622c: $61
    ld c, l                                       ; $622d: $4d
    or h                                          ; $622e: $b4
    add b                                         ; $622f: $80
    cp a                                          ; $6230: $bf
    ret nz                                        ; $6231: $c0

    jp z, $40ff                                   ; $6232: $ca $ff $40

    add sp, -$80                                  ; $6235: $e8 $80
    add e                                         ; $6237: $83
    add d                                         ; $6238: $82
    db $e3                                        ; $6239: $e3
    add a                                         ; $623a: $87
    ld b, h                                       ; $623b: $44
    ld b, l                                       ; $623c: $45
    inc [hl]                                      ; $623d: $34
    ld [bc], a                                    ; $623e: $02
    jp nz, $c03f                                  ; $623f: $c2 $3f $c0

    jp z, $c0ff                                   ; $6242: $ca $ff $c0

    jp hl                                         ; $6245: $e9


    ld a, c                                       ; $6246: $79
    rra                                           ; $6247: $1f
    ld l, [hl]                                    ; $6248: $6e
    ld d, l                                       ; $6249: $55
    ld d, h                                       ; $624a: $54
    ld d, l                                       ; $624b: $55
    ld d, h                                       ; $624c: $54
    jp nz, Jump_000_32e5                          ; $624d: $c2 $e5 $32

    add c                                         ; $6250: $81
    jp z, Jump_000_00ff                           ; $6251: $ca $ff $00

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
    rst $38                                       ; $6263: $ff
    nop                                           ; $6264: $00
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
    rst $38                                       ; $6274: $ff
    db $fc                                        ; $6275: $fc
    rst $38                                       ; $6276: $ff
    rst $38                                       ; $6277: $ff
    db $ec                                        ; $6278: $ec
    db $eb                                        ; $6279: $eb
    or h                                          ; $627a: $b4
    or l                                          ; $627b: $b5
    or [hl]                                       ; $627c: $b6
    or a                                          ; $627d: $b7
    cp b                                          ; $627e: $b8
    cp c                                          ; $627f: $b9
    ccf                                           ; $6280: $3f
    cp d                                          ; $6281: $ba
    cp e                                          ; $6282: $bb
    cp h                                          ; $6283: $bc
    cp l                                          ; $6284: $bd
    cp [hl]                                       ; $6285: $be
    cp a                                          ; $6286: $bf
    jp nc, $ffff                                  ; $6287: $d2 $ff $ff

    rst $38                                       ; $628a: $ff
    nop                                           ; $628b: $00
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
    rst $38                                       ; $6296: $ff
    rst $38                                       ; $6297: $ff
    rst $38                                       ; $6298: $ff
    rst $38                                       ; $6299: $ff
    rst $38                                       ; $629a: $ff
    rst $38                                       ; $629b: $ff
    nop                                           ; $629c: $00
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
    rst $38                                       ; $62a7: $ff
    rst $38                                       ; $62a8: $ff
    rst $38                                       ; $62a9: $ff
    rst $38                                       ; $62aa: $ff
    rst $38                                       ; $62ab: $ff
    rst $38                                       ; $62ac: $ff
    nop                                           ; $62ad: $00
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
    rst $38                                       ; $62b8: $ff
    rst $38                                       ; $62b9: $ff
    rst $38                                       ; $62ba: $ff
    rst $38                                       ; $62bb: $ff
    rst $38                                       ; $62bc: $ff
    rst $38                                       ; $62bd: $ff
    nop                                           ; $62be: $00
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
    rst $38                                       ; $62c9: $ff
    rst $38                                       ; $62ca: $ff
    rst $38                                       ; $62cb: $ff
    rst $38                                       ; $62cc: $ff
    rst $38                                       ; $62cd: $ff
    rst $38                                       ; $62ce: $ff
    nop                                           ; $62cf: $00
    rst $38                                       ; $62d0: $ff
    rst $38                                       ; $62d1: $ff
    rst $38                                       ; $62d2: $ff
    rst $38                                       ; $62d3: $ff
    rst $38                                       ; $62d4: $ff
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
    nop                                           ; $62e0: $00
    rst $38                                       ; $62e1: $ff
    rst $38                                       ; $62e2: $ff
    rst $38                                       ; $62e3: $ff
    rst $38                                       ; $62e4: $ff
    rst $38                                       ; $62e5: $ff
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
    nop                                           ; $62f1: $00
    rst $38                                       ; $62f2: $ff
    rst $38                                       ; $62f3: $ff
    rst $38                                       ; $62f4: $ff
    rst $38                                       ; $62f5: $ff
    rst $38                                       ; $62f6: $ff
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
    nop                                           ; $6302: $00
    rst $38                                       ; $6303: $ff
    rst $38                                       ; $6304: $ff
    rst $38                                       ; $6305: $ff
    rst $38                                       ; $6306: $ff
    rst $38                                       ; $6307: $ff
    rst $38                                       ; $6308: $ff
    rst $38                                       ; $6309: $ff
    rst $38                                       ; $630a: $ff
    rst $38                                       ; $630b: $ff
    rst $38                                       ; $630c: $ff
    rst $38                                       ; $630d: $ff
    rst $38                                       ; $630e: $ff
    rst $38                                       ; $630f: $ff
    rst $38                                       ; $6310: $ff
    rst $38                                       ; $6311: $ff
    rst $38                                       ; $6312: $ff
    nop                                           ; $6313: $00
    rst $38                                       ; $6314: $ff
    rst $38                                       ; $6315: $ff
    rst $38                                       ; $6316: $ff
    rst $38                                       ; $6317: $ff
    rst $38                                       ; $6318: $ff
    rst $38                                       ; $6319: $ff
    rst $38                                       ; $631a: $ff
    rst $38                                       ; $631b: $ff
    rst $38                                       ; $631c: $ff
    rst $38                                       ; $631d: $ff
    rst $38                                       ; $631e: $ff
    rst $38                                       ; $631f: $ff
    rst $38                                       ; $6320: $ff
    ei                                            ; $6321: $fb

Call_059_6322:
    nop                                           ; $6322: $00
    nop                                           ; $6323: $00
    nop                                           ; $6324: $00
    and l                                         ; $6325: $a5
    nop                                           ; $6326: $00
    rst $38                                       ; $6327: $ff
    push hl                                       ; $6328: $e5
    ld [hl-], a                                   ; $6329: $32
    or $e6                                        ; $632a: $f6 $e6
    rst $30                                       ; $632c: $f7
    rst $20                                       ; $632d: $e7
    dec [hl]                                      ; $632e: $35
    db $ec                                        ; $632f: $ec
    xor $37                                       ; $6330: $ee $37
    db $ec                                        ; $6332: $ec
    jp c, $c7f0                                   ; $6333: $da $f0 $c7

    add sp, $33                                   ; $6336: $e8 $33
    ld sp, $f2e0                                  ; $6338: $31 $e0 $f2
    ld [hl], $30                                  ; $633b: $36 $30
    scf                                           ; $633d: $37
    cp a                                          ; $633e: $bf
    ld h, $20                                     ; $633f: $26 $20
    daa                                           ; $6341: $27
    db $10                                        ; $6342: $10
    ld d, $17                                     ; $6343: $16 $17
    jp nz, Jump_000_34f6                          ; $6345: $c2 $f6 $34

    rst $38                                       ; $6348: $ff
    ld [hl], $32                                  ; $6349: $36 $32
    jr nc, jr_059_6384                            ; $634b: $30 $37

    ld sp, $3133                                  ; $634d: $31 $33 $31
    inc sp                                        ; $6350: $33
    nop                                           ; $6351: $00
    and b                                         ; $6352: $a0
    ei                                            ; $6353: $fb
    rst $38                                       ; $6354: $ff
    rst $28                                       ; $6355: $ef
    nop                                           ; $6356: $00
    nop                                           ; $6357: $00
    nop                                           ; $6358: $00
    ld h, c                                       ; $6359: $61
    ld h, e                                       ; $635a: $63
    sub c                                         ; $635b: $91
    ld h, e                                       ; $635c: $63
    inc l                                         ; $635d: $2c
    ld h, [hl]                                    ; $635e: $66
    pop af                                        ; $635f: $f1
    ld h, a                                       ; $6360: $67
    ld hl, sp+$03                                 ; $6361: $f8 $03
    ld c, h                                       ; $6363: $4c
    inc bc                                        ; $6364: $03
    ld d, e                                       ; $6365: $53
    ld bc, $008a                                  ; $6366: $01 $8a $00
    ldh a, [$03]                                  ; $6369: $f0 $03
    ld hl, sp+$03                                 ; $636b: $f8 $03
    ld c, h                                       ; $636d: $4c
    inc bc                                        ; $636e: $03
    ld d, e                                       ; $636f: $53
    ld bc, $47ff                                  ; $6370: $01 $ff $47
    ldh a, [rP1]                                  ; $6373: $f0 $00
    ld e, l                                       ; $6375: $5d
    add hl, de                                    ; $6376: $19
    ld c, h                                       ; $6377: $4c
    inc bc                                        ; $6378: $03
    ld [$0825], sp                                ; $6379: $08 $25 $08
    dec h                                         ; $637c: $25
    ld [$0825], sp                                ; $637d: $08 $25 $08
    dec h                                         ; $6380: $25
    ld [$0825], sp                                ; $6381: $08 $25 $08

jr_059_6384:
    dec h                                         ; $6384: $25
    ld [$0825], sp                                ; $6385: $08 $25 $08
    dec h                                         ; $6388: $25
    ld [$0825], sp                                ; $6389: $08 $25 $08
    dec h                                         ; $638c: $25
    ld [$0825], sp                                ; $638d: $08 $25 $08
    dec h                                         ; $6390: $25
    rst $38                                       ; $6391: $ff
    dec bc                                        ; $6392: $0b
    dec bc                                        ; $6393: $0b
    ld c, e                                       ; $6394: $4b
    dec hl                                        ; $6395: $2b
    inc l                                         ; $6396: $2c
    inc c                                         ; $6397: $0c
    inc c                                         ; $6398: $0c
    inc c                                         ; $6399: $0c
    rst $38                                       ; $639a: $ff
    ld c, h                                       ; $639b: $4c
    ld c, h                                       ; $639c: $4c
    ld c, h                                       ; $639d: $4c
    inc c                                         ; $639e: $0c
    dec bc                                        ; $639f: $0b
    dec hl                                        ; $63a0: $2b
    dec hl                                        ; $63a1: $2b
    dec bc                                        ; $63a2: $0b
    rrca                                          ; $63a3: $0f
    dec bc                                        ; $63a4: $0b
    dec bc                                        ; $63a5: $0b
    ld a, [bc]                                    ; $63a6: $0a
    dec bc                                        ; $63a7: $0b
    pop af                                        ; $63a8: $f1
    ldh [$f0], a                                  ; $63a9: $e0 $f0
    ldh [$fd], a                                  ; $63ab: $e0 $fd
    and $e6                                       ; $63ad: $e6 $e6
    ldh [$f8], a                                  ; $63af: $e0 $f8
    ldh a, [$e2]                                  ; $63b1: $f0 $e2
    ld a, [$fce6]                                 ; $63b3: $fa $e6 $fc
    jp hl                                         ; $63b6: $e9


    dec bc                                        ; $63b7: $0b

Jump_059_63b8:
    dec bc                                        ; $63b8: $0b
    ld l, e                                       ; $63b9: $6b
    dec bc                                        ; $63ba: $0b
    inc c                                         ; $63bb: $0c
    inc c                                         ; $63bc: $0c
    rst $18                                       ; $63bd: $df
    ldh [$c0], a                                  ; $63be: $e0 $c0
    ld [c], a                                     ; $63c0: $e2
    dec bc                                        ; $63c1: $0b
    dec bc                                        ; $63c2: $0b
    cp a                                          ; $63c3: $bf
    pop hl                                        ; $63c4: $e1
    ret nz                                        ; $63c5: $c0

    ld [$e0b9], a                                 ; $63c6: $ea $b9 $e0
    or d                                          ; $63c9: $b2
    db $e4                                        ; $63ca: $e4
    ld b, c                                       ; $63cb: $41
    inc l                                         ; $63cc: $2c
    ld a, [$c0e4]                                 ; $63cd: $fa $e4 $c0
    rst $28                                       ; $63d0: $ef
    sbc l                                         ; $63d1: $9d
    db $e4                                        ; $63d2: $e4
    ret nz                                        ; $63d3: $c0

    pop hl                                        ; $63d4: $e1
    ld a, l                                       ; $63d5: $7d
    pop hl                                        ; $63d6: $e1
    ld a, [bc]                                    ; $63d7: $0a
    call Call_059_48e2                            ; $63d8: $cd $e2 $48
    ld a, [hl]                                    ; $63db: $7e
    db $e4                                        ; $63dc: $e4
    db $fc                                        ; $63dd: $fc
    db $e3                                        ; $63de: $e3
    ld h, b                                       ; $63df: $60
    pop hl                                        ; $63e0: $e1
    inc l                                         ; $63e1: $2c
    ld a, [$80e3]                                 ; $63e2: $fa $e3 $80
    db $ed                                        ; $63e5: $ed
    ld l, e                                       ; $63e6: $6b
    adc [hl]                                      ; $63e7: $8e
    pop hl                                        ; $63e8: $e1
    add b                                         ; $63e9: $80
    ld e, l                                       ; $63ea: $5d
    pop hl                                        ; $63eb: $e1
    add [hl]                                      ; $63ec: $86
    pop hl                                        ; $63ed: $e1
    cp [hl]                                       ; $63ee: $be
    ld [c], a                                     ; $63ef: $e2
    ld b, b                                       ; $63f0: $40
    ldh [$89], a                                  ; $63f1: $e0 $89
    db $e3                                        ; $63f3: $e3
    ld b, [hl]                                    ; $63f4: $46
    ld [c], a                                     ; $63f5: $e2
    ld b, b                                       ; $63f6: $40
    db $fd                                        ; $63f7: $fd
    ld l, e                                       ; $63f8: $6b
    cpl                                           ; $63f9: $2f
    dec bc                                        ; $63fa: $0b
    ld l, e                                       ; $63fb: $6b
    ld c, e                                       ; $63fc: $4b
    ld c, e                                       ; $63fd: $4b
    ld c, d                                       ; $63fe: $4a
    pop hl                                        ; $63ff: $e1
    ld l, e                                       ; $6400: $6b
    ld hl, sp-$20                                 ; $6401: $f8 $e0
    cp $e0                                        ; $6403: $fe $e0
    add b                                         ; $6405: $80
    inc a                                         ; $6406: $3c
    ldh [rKEY1], a                                ; $6407: $e0 $4d
    db $e4                                        ; $6409: $e4
    nop                                           ; $640a: $00
    rst $28                                       ; $640b: $ef
    ld [hl-], a                                   ; $640c: $32
    db $e3                                        ; $640d: $e3
    dec a                                         ; $640e: $3d
    db $e4                                        ; $640f: $e4
    ld [hl], $e3                                  ; $6410: $36 $e3
    nop                                           ; $6412: $00
    pop hl                                        ; $6413: $e1
    dec hl                                        ; $6414: $2b
    ld e, $c7                                     ; $6415: $1e $c7
    ldh [rOCPD], a                                ; $6417: $e0 $6b
    ld l, e                                       ; $6419: $6b
    ld l, e                                       ; $641a: $6b
    dec hl                                        ; $641b: $2b
    rst $38                                       ; $641c: $ff
    ld [c], a                                     ; $641d: $e2
    or h                                          ; $641e: $b4
    ldh [$c0], a                                  ; $641f: $e0 $c0
    jp nz, $bdc0                                  ; $6421: $c2 $c0 $bd

    call nz, $ea00                                ; $6424: $c4 $00 $ea
    cp a                                          ; $6427: $bf
    ret nc                                        ; $6428: $d0

    pop bc                                        ; $6429: $c1
    pop hl                                        ; $642a: $e1
    jp z, $c1e1                                   ; $642b: $ca $e1 $c1

    push hl                                       ; $642e: $e5
    ld l, e                                       ; $642f: $6b
    dec hl                                        ; $6430: $2b
    add e                                         ; $6431: $83
    ld c, e                                       ; $6432: $4b
    dec hl                                        ; $6433: $2b
    dec bc                                        ; $6434: $0b
    db $e4                                        ; $6435: $e4
    nop                                           ; $6436: $00
    ldh a, [$7f]                                  ; $6437: $f0 $7f
    rst $08                                       ; $6439: $cf
    pop bc                                        ; $643a: $c1
    db $e3                                        ; $643b: $e3

jr_059_643c:
    cp h                                          ; $643c: $bc
    ld [c], a                                     ; $643d: $e2
    dec hl                                        ; $643e: $2b
    ld b, $3f                                     ; $643f: $06 $3f
    db $e3                                        ; $6441: $e3
    dec hl                                        ; $6442: $2b
    ld c, e                                       ; $6443: $4b
    adc l                                         ; $6444: $8d
    add $00                                       ; $6445: $c6 $00
    db $ec                                        ; $6447: $ec
    ld [hl], e                                    ; $6448: $73
    call nz, $cb40                                ; $6449: $c4 $40 $cb
    adc e                                         ; $644c: $8b
    db $e3                                        ; $644d: $e3
    nop                                           ; $644e: $00
    cp e                                          ; $644f: $bb
    ld [c], a                                     ; $6450: $e2
    nop                                           ; $6451: $00
    ld [c], a                                     ; $6452: $e2
    cp a                                          ; $6453: $bf
    ldh [rLCDC], a                                ; $6454: $e0 $40
    db $e4                                        ; $6456: $e4
    ld a, [$b2e6]                                 ; $6457: $fa $e6 $b2
    rst $20                                       ; $645a: $e7
    nop                                           ; $645b: $00
    ret nc                                        ; $645c: $d0

    add d                                         ; $645d: $82
    and $00                                       ; $645e: $e6 $00
    pop bc                                        ; $6460: $c1
    push hl                                       ; $6461: $e5
    ret nz                                        ; $6462: $c0

    db $e3                                        ; $6463: $e3
    pop bc                                        ; $6464: $c1
    and $c8                                       ; $6465: $e6 $c8
    and e                                         ; $6467: $a3
    ld a, a                                       ; $6468: $7f
    or $8c                                        ; $6469: $f6 $8c
    and c                                         ; $646b: $a1
    add d                                         ; $646c: $82
    add sp, $7f                                   ; $646d: $e8 $7f
    and b                                         ; $646f: $a0
    ld bc, $802b                                  ; $6470: $01 $2b $80
    jp nz, $a8c0                                  ; $6473: $c2 $c0 $a8

    ld a, a                                       ; $6476: $7f
    and [hl]                                      ; $6477: $a6
    ld a, [c]                                     ; $6478: $f2
    and e                                         ; $6479: $a3
    cp [hl]                                       ; $647a: $be
    and d                                         ; $647b: $a2
    cp c                                          ; $647c: $b9
    and [hl]                                      ; $647d: $a6
    adc [hl]                                      ; $647e: $8e
    and b                                         ; $647f: $a0
    nop                                           ; $6480: $00
    ld b, h                                       ; $6481: $44
    add sp, $76                                   ; $6482: $e8 $76
    pop bc                                        ; $6484: $c1
    ret nz                                        ; $6485: $c0

    ret nz                                        ; $6486: $c0

    push de                                       ; $6487: $d5
    push hl                                       ; $6488: $e5
    add c                                         ; $6489: $81
    and e                                         ; $648a: $a3
    dec [hl]                                      ; $648b: $35
    and h                                         ; $648c: $a4
    ld b, b                                       ; $648d: $40
    add $c0                                       ; $648e: $c6 $c0
    rlc b                                         ; $6490: $cb $00
    pop bc                                        ; $6492: $c1
    jp nz, $a047                                  ; $6493: $c2 $47 $a0

    inc b                                         ; $6496: $04
    jp nz, $a1fe                                  ; $6497: $c2 $fe $a1

    jr nc, jr_059_643c                            ; $649a: $30 $a0

    rst $38                                       ; $649c: $ff
    and [hl]                                      ; $649d: $a6
    db $fc                                        ; $649e: $fc
    ld [c], a                                     ; $649f: $e2
    ld [hl], l                                    ; $64a0: $75
    and [hl]                                      ; $64a1: $a6
    db $10                                        ; $64a2: $10
    ld b, b                                       ; $64a3: $40
    ld a, [c]                                     ; $64a4: $f2
    res 0, e                                      ; $64a5: $cb $83
    cp a                                          ; $64a7: $bf
    ld [c], a                                     ; $64a8: $e2
    pop bc                                        ; $64a9: $c1
    db $e4                                        ; $64aa: $e4
    dec bc                                        ; $64ab: $0b
    ld b, c                                       ; $64ac: $41
    and [hl]                                      ; $64ad: $a6
    cp [hl]                                       ; $64ae: $be
    rst $00                                       ; $64af: $c7
    ld [hl], a                                    ; $64b0: $77
    and $04                                       ; $64b1: $e6 $04
    call nc, $9180                                ; $64b3: $d4 $80 $91
    add b                                         ; $64b6: $80
    inc l                                         ; $64b7: $2c
    rst $38                                       ; $64b8: $ff
    ldh [$b6], a                                  ; $64b9: $e0 $b6
    add e                                         ; $64bb: $83
    add l                                         ; $64bc: $85
    and e                                         ; $64bd: $a3
    adc c                                         ; $64be: $89
    and d                                         ; $64bf: $a2
    add c                                         ; $64c0: $81
    and d                                         ; $64c1: $a2
    ret nz                                        ; $64c2: $c0

    ld sp, $cea1                                  ; $64c3: $31 $a1 $ce
    ret                                           ; $64c6: $c9


    or l                                          ; $64c7: $b5
    and h                                         ; $64c8: $a4
    ld [hl], b                                    ; $64c9: $70
    xor b                                         ; $64ca: $a8
    add $e1                                       ; $64cb: $c6 $e1
    ret nz                                        ; $64cd: $c0

    rst $20                                       ; $64ce: $e7
    dec bc                                        ; $64cf: $0b
    ld c, e                                       ; $64d0: $4b
    nop                                           ; $64d1: $00
    ld b, a                                       ; $64d2: $47
    and b                                         ; $64d3: $a0
    ld c, h                                       ; $64d4: $4c
    add b                                         ; $64d5: $80
    inc a                                         ; $64d6: $3c
    and b                                         ; $64d7: $a0
    ld a, b                                       ; $64d8: $78
    db $e3                                        ; $64d9: $e3
    ld l, a                                       ; $64da: $6f
    add b                                         ; $64db: $80
    ld d, d                                       ; $64dc: $52
    and [hl]                                      ; $64dd: $a6
    ret nz                                        ; $64de: $c0

    add l                                         ; $64df: $85
    jp nz, Jump_000_00c8                          ; $64e0: $c2 $c8 $00

    cp [hl]                                       ; $64e3: $be
    add d                                         ; $64e4: $82
    add c                                         ; $64e5: $81
    rst $20                                       ; $64e6: $e7
    ld e, $86                                     ; $64e7: $1e $86
    ld hl, sp-$19                                 ; $64e9: $f8 $e7
    rst $08                                       ; $64eb: $cf
    rst $20                                       ; $64ec: $e7
    nop                                           ; $64ed: $00
    adc l                                         ; $64ee: $8d
    xor l                                         ; $64ef: $ad
    add l                                         ; $64f0: $85
    ret nz                                        ; $64f1: $c0

    jp hl                                         ; $64f2: $e9


    nop                                           ; $64f3: $00
    push de                                       ; $64f4: $d5
    ld [hl], l                                    ; $64f5: $75
    nop                                           ; $64f6: $00
    sub c                                         ; $64f7: $91
    rst $38                                       ; $64f8: $ff
    push bc                                       ; $64f9: $c5
    cp h                                          ; $64fa: $bc
    ld l, h                                       ; $64fb: $6c
    push de                                       ; $64fc: $d5
    ld a, [c]                                     ; $64fd: $f2
    nop                                           ; $64fe: $00
    sub b                                         ; $64ff: $90

Call_059_6500:
    xor d                                         ; $6500: $aa
    add [hl]                                      ; $6501: $86
    jp nz, Jump_000_01c1                          ; $6502: $c2 $c1 $01

    inc l                                         ; $6505: $2c
    ld a, c                                       ; $6506: $79
    add h                                         ; $6507: $84
    push de                                       ; $6508: $d5
    ld [hl], e                                    ; $6509: $73
    ld a, [bc]                                    ; $650a: $0a
    push bc                                       ; $650b: $c5
    nop                                           ; $650c: $00
    adc d                                         ; $650d: $8a
    scf                                           ; $650e: $37
    ld h, [hl]                                    ; $650f: $66
    ret nz                                        ; $6510: $c0

    jp hl                                         ; $6511: $e9


    and e                                         ; $6512: $a3
    ld h, c                                       ; $6513: $61
    nop                                           ; $6514: $00
    push de                                       ; $6515: $d5
    sub b                                         ; $6516: $90
    nop                                           ; $6517: $00
    or a                                          ; $6518: $b7
    ld b, b                                       ; $6519: $40
    call z, $93d5                                 ; $651a: $cc $d5 $93
    nop                                           ; $651d: $00
    cp b                                          ; $651e: $b8
    cp l                                          ; $651f: $bd
    ld h, e                                       ; $6520: $63
    cp a                                          ; $6521: $bf
    jp z, $f8d5                                   ; $6522: $ca $d5 $f8

    nop                                           ; $6525: $00
    ld a, a                                       ; $6526: $7f
    ld d, b                                       ; $6527: $50
    db $fc                                        ; $6528: $fc
    ld c, e                                       ; $6529: $4b
    push de                                       ; $652a: $d5
    sbc d                                         ; $652b: $9a

jr_059_652c:
    nop                                           ; $652c: $00
    xor e                                         ; $652d: $ab
    cp b                                          ; $652e: $b8
    and [hl]                                      ; $652f: $a6
    call nz, $80c0                                ; $6530: $c4 $c0 $80
    and [hl]                                      ; $6533: $a6
    push de                                       ; $6534: $d5
    or $00                                        ; $6535: $f6 $00
    nop                                           ; $6537: $00
    or c                                          ; $6538: $b1
    ld l, e                                       ; $6539: $6b
    ld b, [hl]                                    ; $653a: $46
    cp a                                          ; $653b: $bf
    xor c                                         ; $653c: $a9
    push de                                       ; $653d: $d5
    sub d                                         ; $653e: $92
    pop bc                                        ; $653f: $c1
    jr nc, jr_059_652c                            ; $6540: $30 $ea

    add a                                         ; $6542: $87
    dec a                                         ; $6543: $3d
    and d                                         ; $6544: $a2
    rst $38                                       ; $6545: $ff
    xor h                                         ; $6546: $ac
    nop                                           ; $6547: $00
    push de                                       ; $6548: $d5
    sub b                                         ; $6549: $90
    pop bc                                        ; $654a: $c1
    inc l                                         ; $654b: $2c
    ld a, [hl]                                    ; $654c: $7e
    and a                                         ; $654d: $a7
    ret nz                                        ; $654e: $c0

    db $ec                                        ; $654f: $ec
    push de                                       ; $6550: $d5
    sub b                                         ; $6551: $90
    pop bc                                        ; $6552: $c1
    inc [hl]                                      ; $6553: $34
    ld l, h                                       ; $6554: $6c
    ld b, l                                       ; $6555: $45
    cp a                                          ; $6556: $bf
    jp z, $d500                                   ; $6557: $ca $00 $d5

    sub c                                         ; $655a: $91
    db $ec                                        ; $655b: $ec
    or d                                          ; $655c: $b2
    or [hl]                                       ; $655d: $b6
    ld h, a                                       ; $655e: $67
    add c                                         ; $655f: $81
    db $ec                                        ; $6560: $ec
    call nc, $c1f2                                ; $6561: $d4 $f2 $c1
    ld d, b                                       ; $6564: $50
    or [hl]                                       ; $6565: $b6
    jp z, $cb05                                   ; $6566: $ca $05 $cb

    nop                                           ; $6569: $00
    ret nz                                        ; $656a: $c0

    or d                                          ; $656b: $b2
    pop bc                                        ; $656c: $c1
    ld c, e                                       ; $656d: $4b
    or [hl]                                       ; $656e: $b6
    ld l, b                                       ; $656f: $68
    cp e                                          ; $6570: $bb
    dec c                                         ; $6571: $0d
    sub l                                         ; $6572: $95
    ld c, a                                       ; $6573: $4f
    pop bc                                        ; $6574: $c1
    or e                                          ; $6575: $b3
    or l                                          ; $6576: $b5
    add a                                         ; $6577: $87
    ld b, c                                       ; $6578: $41
    ret                                           ; $6579: $c9


    nop                                           ; $657a: $00
    ret nz                                        ; $657b: $c0

    or b                                          ; $657c: $b0
    pop bc                                        ; $657d: $c1
    ld d, d                                       ; $657e: $52
    or [hl]                                       ; $657f: $b6
    ld h, a                                       ; $6580: $67
    ld bc, $95ca                                  ; $6581: $01 $ca $95
    ld d, e                                       ; $6584: $53
    db $ec                                        ; $6585: $ec
    or c                                          ; $6586: $b1
    ld a, [hl-]                                   ; $6587: $3a
    ld [bc], a                                    ; $6588: $02
    add hl, sp                                    ; $6589: $39
    add c                                         ; $658a: $81
    nop                                           ; $658b: $00
    jp nz, $958d                                  ; $658c: $c2 $8d $95

    ld d, a                                       ; $658f: $57
    pop bc                                        ; $6590: $c1
    ld c, b                                       ; $6591: $48
    ld bc, $c227                                  ; $6592: $01 $27 $c2
    adc l                                         ; $6595: $8d
    sub l                                         ; $6596: $95
    ld d, c                                       ; $6597: $51
    db $ec                                        ; $6598: $ec
    or [hl]                                       ; $6599: $b6
    push bc                                       ; $659a: $c5
    jp nc, $9500                                  ; $659b: $d2 $00 $95

    ld c, [hl]                                    ; $659e: $4e
    pop bc                                        ; $659f: $c1
    ld d, e                                       ; $65a0: $53
    add b                                         ; $65a1: $80
    inc b                                         ; $65a2: $04
    ld [bc], a                                    ; $65a3: $02
    adc e                                         ; $65a4: $8b
    sub l                                         ; $65a5: $95
    ld d, e                                       ; $65a6: $53
    ld h, l                                       ; $65a7: $65
    sub a                                         ; $65a8: $97
    ld [bc], a                                    ; $65a9: $02
    sub c                                         ; $65aa: $91
    di                                            ; $65ab: $f3
    ld a, [c]                                     ; $65ac: $f2
    nop                                           ; $65ad: $00
    and l                                         ; $65ae: $a5
    sub $ff                                       ; $65af: $d6 $ff
    rst $38                                       ; $65b1: $ff
    and l                                         ; $65b2: $a5
    jp c, $ffff                                   ; $65b3: $da $ff $ff

    ld e, h                                       ; $65b6: $5c
    ld [bc], a                                    ; $65b7: $02
    ld a, e                                       ; $65b8: $7b
    ld b, [hl]                                    ; $65b9: $46
    ld a, [hl-]                                   ; $65ba: $3a
    inc l                                         ; $65bb: $2c
    rst $38                                       ; $65bc: $ff
    rst $38                                       ; $65bd: $ff
    nop                                           ; $65be: $00
    ld h, l                                       ; $65bf: $65
    sbc l                                         ; $65c0: $9d
    rst $38                                       ; $65c1: $ff
    rst $38                                       ; $65c2: $ff
    add b                                         ; $65c3: $80
    db $e3                                        ; $65c4: $e3
    and l                                         ; $65c5: $a5
    rst $10                                       ; $65c6: $d7
    rst $38                                       ; $65c7: $ff
    rst $38                                       ; $65c8: $ff
    ld b, b                                       ; $65c9: $40
    add sp, -$06                                  ; $65ca: $e8 $fa
    add h                                         ; $65cc: $84
    pop af                                        ; $65cd: $f1
    ld h, [hl]                                    ; $65ce: $66
    nop                                           ; $65cf: $00
    rst $38                                       ; $65d0: $ff
    rst $38                                       ; $65d1: $ff
    and d                                         ; $65d2: $a2
    ld c, e                                       ; $65d3: $4b
    ld b, e                                       ; $65d4: $43
    ld b, a                                       ; $65d5: $47
    ret nz                                        ; $65d6: $c0

    rst $38                                       ; $65d7: $ff
    daa                                           ; $65d8: $27
    dec l                                         ; $65d9: $2d
    ret nz                                        ; $65da: $c0

    db $ed                                        ; $65db: $ed
    rst $38                                       ; $65dc: $ff
    rst $38                                       ; $65dd: $ff
    ld [hl], e                                    ; $65de: $73
    call nc, $cd00                                ; $65df: $d4 $00 $cd
    cp a                                          ; $65e2: $bf
    rst $38                                       ; $65e3: $ff
    rst $38                                       ; $65e4: $ff
    rst $38                                       ; $65e5: $ff
    rst $38                                       ; $65e6: $ff
    sub [hl]                                      ; $65e7: $96
    rst $38                                       ; $65e8: $ff
    reti                                          ; $65e9: $d9


    or e                                          ; $65ea: $b3
    rst $38                                       ; $65eb: $ff
    rst $38                                       ; $65ec: $ff
    rst $38                                       ; $65ed: $ff
    rst $38                                       ; $65ee: $ff
    rst $38                                       ; $65ef: $ff
    rst $38                                       ; $65f0: $ff
    nop                                           ; $65f1: $00
    rst $38                                       ; $65f2: $ff
    rst $38                                       ; $65f3: $ff
    scf                                           ; $65f4: $37
    db $eb                                        ; $65f5: $eb
    call c, $ffff                                 ; $65f6: $dc $ff $ff
    rst $38                                       ; $65f9: $ff
    rst $38                                       ; $65fa: $ff
    rst $38                                       ; $65fb: $ff
    rst $38                                       ; $65fc: $ff
    rst $38                                       ; $65fd: $ff
    rst $38                                       ; $65fe: $ff
    rst $38                                       ; $65ff: $ff
    rst $38                                       ; $6600: $ff
    rst $38                                       ; $6601: $ff
    nop                                           ; $6602: $00
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
    rst $38                                       ; $6610: $ff
    rst $38                                       ; $6611: $ff
    rst $38                                       ; $6612: $ff
    nop                                           ; $6613: $00
    rst $38                                       ; $6614: $ff
    rst $38                                       ; $6615: $ff
    rst $38                                       ; $6616: $ff
    rst $38                                       ; $6617: $ff
    rst $38                                       ; $6618: $ff
    rst $38                                       ; $6619: $ff
    rst $38                                       ; $661a: $ff
    rst $38                                       ; $661b: $ff
    nop                                           ; $661c: $00
    cp a                                          ; $661d: $bf
    rst $38                                       ; $661e: $ff
    rst $38                                       ; $661f: $ff
    rst $38                                       ; $6620: $ff
    rst $38                                       ; $6621: $ff
    rst $38                                       ; $6622: $ff
    rst $38                                       ; $6623: $ff
    nop                                           ; $6624: $00
    rst $38                                       ; $6625: $ff
    rst $38                                       ; $6626: $ff
    ld e, [hl]                                    ; $6627: $5e
    ld d, e                                       ; $6628: $53
    nop                                           ; $6629: $00
    nop                                           ; $662a: $00
    nop                                           ; $662b: $00
    cp a                                          ; $662c: $bf
    ld e, e                                       ; $662d: $5b
    ld e, e                                       ; $662e: $5b
    ld e, e                                       ; $662f: $5b
    ld h, c                                       ; $6630: $61
    nop                                           ; $6631: $00
    jr nz, @+$01                                  ; $6632: $20 $ff

    ld [c], a                                     ; $6634: $e2
    nop                                           ; $6635: $00
    ld [hl], a                                    ; $6636: $77
    ld sp, $5c5d                                  ; $6637: $31 $5d $5c
    pop af                                        ; $663a: $f1
    ldh [$5a], a                                  ; $663b: $e0 $5a
    ld e, e                                       ; $663d: $5b
    nop                                           ; $663e: $00
    rst $38                                       ; $663f: $ff
    rst $38                                       ; $6640: $ff
    ld a, [hl]                                    ; $6641: $7e
    rst $20                                       ; $6642: $e7
    and $5b                                       ; $6643: $e6 $5b
    ld e, e                                       ; $6645: $5b
    ld e, a                                       ; $6646: $5f
    ld sp, $282b                                  ; $6647: $31 $2b $28
    ret nz                                        ; $664a: $c0

    db $e4                                        ; $664b: $e4
    rst $00                                       ; $664c: $c7
    ld sp, $6031                                  ; $664d: $31 $31 $60
    or b                                          ; $6650: $b0
    ldh [$c0], a                                  ; $6651: $e0 $c0
    rst $38                                       ; $6653: $ff
    ret nz                                        ; $6654: $c0

    ld [$315e], a                                 ; $6655: $ea $5e $31
    scf                                           ; $6658: $37
    ld de, $2112                                  ; $6659: $11 $12 $21
    cp [hl]                                       ; $665c: $be
    ldh [$0a], a                                  ; $665d: $e0 $0a
    dec bc                                        ; $665f: $0b
    ret nz                                        ; $6660: $c0

    ldh [$7d], a                                  ; $6661: $e0 $7d
    pop hl                                        ; $6663: $e1
    ld l, c                                       ; $6664: $69
    ld e, d                                       ; $6665: $5a
    jp z, $80ff                                   ; $6666: $ca $ff $80

    add sp, $5f                                   ; $6669: $e8 $5f
    jp z, Jump_000_11e1                           ; $666b: $ca $e1 $11

    ld [de], a                                    ; $666e: $12
    jp nz, $f2e3                                  ; $666f: $c2 $e3 $f2

    cp [hl]                                       ; $6672: $be
    pop hl                                        ; $6673: $e1
    ld h, b                                       ; $6674: $60
    add b                                         ; $6675: $80
    rst $38                                       ; $6676: $ff
    ld b, b                                       ; $6677: $40
    jp hl                                         ; $6678: $e9


    ld e, [hl]                                    ; $6679: $5e
    ld sp, $463c                                  ; $667a: $31 $3c $46
    db $fd                                        ; $667d: $fd
    ld b, a                                       ; $667e: $47
    add [hl]                                      ; $667f: $86
    pop hl                                        ; $6680: $e1
    ld b, a                                       ; $6681: $47
    ld b, [hl]                                    ; $6682: $46
    ld d, l                                       ; $6683: $55
    ld d, h                                       ; $6684: $54
    ld d, l                                       ; $6685: $55
    ld d, h                                       ; $6686: $54
    pop af                                        ; $6687: $f1
    inc a                                         ; $6688: $3c
    inc a                                         ; $6689: $3c
    ldh [$ca], a                                  ; $668a: $e0 $ca
    rst $38                                       ; $668c: $ff
    add sp, -$19                                  ; $668d: $e8 $e7
    ld h, b                                       ; $668f: $60
    ld sp, $423c                                  ; $6690: $31 $3c $42
    rst $38                                       ; $6693: $ff
    ld l, l                                       ; $6694: $6d
    ld [hl], $46                                  ; $6695: $36 $46
    ld b, a                                       ; $6697: $47
    ld b, a                                       ; $6698: $47
    ld b, [hl]                                    ; $6699: $46
    ld [hl], $6a                                  ; $669a: $36 $6a
    rra                                           ; $669c: $1f
    ld l, d                                       ; $669d: $6a
    ld l, d                                       ; $669e: $6a
    jr nc, jr_059_66d1                            ; $669f: $30 $30

    ld b, d                                       ; $66a1: $42
    cp a                                          ; $66a2: $bf
    ldh [$ca], a                                  ; $66a3: $e0 $ca
    rst $38                                       ; $66a5: $ff
    add sp, -$19                                  ; $66a6: $e8 $e7
    inc e                                         ; $66a8: $1c
    pop bc                                        ; $66a9: $c1
    pop hl                                        ; $66aa: $e1
    rst $38                                       ; $66ab: $ff
    ldh [$36], a                                  ; $66ac: $e0 $36
    ld [hl], $30                                  ; $66ae: $36 $30
    pop bc                                        ; $66b0: $c1
    ld [c], a                                     ; $66b1: $e2
    cp a                                          ; $66b2: $bf
    ld [c], a                                     ; $66b3: $e2
    jp z, $d0ff                                   ; $66b4: $ca $ff $d0

    add sp, -$19                                  ; $66b7: $e8 $e7
    pop bc                                        ; $66b9: $c1
    db $e3                                        ; $66ba: $e3
    jp $82e1                                      ; $66bb: $c3 $e1 $82


    ldh [rBCPS], a                                ; $66be: $e0 $68
    rst $38                                       ; $66c0: $ff
    pop hl                                        ; $66c1: $e1
    ld b, d                                       ; $66c2: $42
    inc a                                         ; $66c3: $3c
    or h                                          ; $66c4: $b4
    jp z, $e8ff                                   ; $66c5: $ca $ff $e8

    rst $20                                       ; $66c8: $e7
    ld d, e                                       ; $66c9: $53
    pop bc                                        ; $66ca: $c1
    add sp, $6a                                   ; $66cb: $e8 $6a
    ld l, d                                       ; $66cd: $6a
    cp a                                          ; $66ce: $bf
    ld [c], a                                     ; $66cf: $e2
    ld d, e                                       ; $66d0: $53

jr_059_66d1:
    inc h                                         ; $66d1: $24
    jp z, $e8ff                                   ; $66d2: $ca $ff $e8

    rst $20                                       ; $66d5: $e7
    ld d, d                                       ; $66d6: $52
    pop bc                                        ; $66d7: $c1
    jp hl                                         ; $66d8: $e9


    cp a                                          ; $66d9: $bf
    db $e3                                        ; $66da: $e3
    ld d, d                                       ; $66db: $52
    jp z, $80ff                                   ; $66dc: $ca $ff $80

    ld [$c160], a                                 ; $66df: $ea $60 $c1
    add sp, -$02                                  ; $66e2: $e8 $fe
    jp nz, $ff80                                  ; $66e4: $c2 $80 $ff

    add b                                         ; $66e7: $80
    ld [$e204], a                                 ; $66e8: $ea $04 $e2
    ld [hl], $42                                  ; $66eb: $36 $42
    cp $c3                                        ; $66ed: $fe $c3
    ld c, a                                       ; $66ef: $4f
    ld l, l                                       ; $66f0: $6d
    ld l, l                                       ; $66f1: $6d
    ld l, h                                       ; $66f2: $6c
    ld l, h                                       ; $66f3: $6c
    add b                                         ; $66f4: $80
    rst $38                                       ; $66f5: $ff
    jp hl                                         ; $66f6: $e9


    add sp, $3e                                   ; $66f7: $e8 $3e
    ld c, b                                       ; $66f9: $48
    pop bc                                        ; $66fa: $c1
    ld [hl-], a                                   ; $66fb: $32
    ld b, b                                       ; $66fc: $40
    ret nz                                        ; $66fd: $c0

    inc a                                         ; $66fe: $3c

Jump_059_66ff:
    cp a                                          ; $66ff: $bf
    pop hl                                        ; $6700: $e1
    pop bc                                        ; $6701: $c1
    ldh [$6d], a                                  ; $6702: $e0 $6d
    ld l, l                                       ; $6704: $6d
    ret nz                                        ; $6705: $c0

    rst $18                                       ; $6706: $df
    ld b, b                                       ; $6707: $40
    jp z, $c880                                   ; $6708: $ca $80 $c8

    and b                                         ; $670b: $a0
    ret nz                                        ; $670c: $c0

    and d                                         ; $670d: $a2
    cp a                                          ; $670e: $bf
    ldh [$c1], a                                  ; $670f: $e0 $c1
    db $e4                                        ; $6711: $e4
    ld b, b                                       ; $6712: $40
    rst $18                                       ; $6713: $df
    ret nz                                        ; $6714: $c0

    xor d                                         ; $6715: $aa
    jp z, Jump_059_5c81                           ; $6716: $ca $81 $5c

    and c                                         ; $6719: $a1
    ld e, l                                       ; $671a: $5d
    cp a                                          ; $671b: $bf
    pop hl                                        ; $671c: $e1
    pop bc                                        ; $671d: $c1
    db $e4                                        ; $671e: $e4
    ret nz                                        ; $671f: $c0

    rst $38                                       ; $6720: $ff
    add b                                         ; $6721: $80
    adc c                                         ; $6722: $89
    ld h, b                                       ; $6723: $60
    call Call_059_5b82                            ; $6724: $cd $82 $5b
    ld [bc], a                                    ; $6727: $02
    cp [hl]                                       ; $6728: $be
    ldh [$3c], a                                  ; $6729: $e0 $3c
    ld b, b                                       ; $672b: $40
    cp a                                          ; $672c: $bf
    rst $38                                       ; $672d: $ff
    rst $38                                       ; $672e: $ff
    rst $38                                       ; $672f: $ff
    rst $38                                       ; $6730: $ff
    rst $38                                       ; $6731: $ff
    rst $38                                       ; $6732: $ff
    rst $38                                       ; $6733: $ff
    rst $38                                       ; $6734: $ff
    rst $38                                       ; $6735: $ff
    rst $38                                       ; $6736: $ff
    nop                                           ; $6737: $00
    rst $38                                       ; $6738: $ff
    rst $38                                       ; $6739: $ff
    rst $38                                       ; $673a: $ff
    rst $38                                       ; $673b: $ff
    rst $38                                       ; $673c: $ff
    rst $38                                       ; $673d: $ff
    rst $38                                       ; $673e: $ff
    rst $38                                       ; $673f: $ff
    rst $38                                       ; $6740: $ff
    rst $38                                       ; $6741: $ff
    rst $38                                       ; $6742: $ff
    rst $38                                       ; $6743: $ff
    rst $38                                       ; $6744: $ff
    rst $38                                       ; $6745: $ff
    rst $38                                       ; $6746: $ff
    rst $38                                       ; $6747: $ff
    nop                                           ; $6748: $00
    rst $38                                       ; $6749: $ff
    rst $38                                       ; $674a: $ff
    rst $38                                       ; $674b: $ff
    rst $38                                       ; $674c: $ff
    rst $38                                       ; $674d: $ff
    rst $38                                       ; $674e: $ff
    rst $38                                       ; $674f: $ff
    rst $38                                       ; $6750: $ff
    rst $38                                       ; $6751: $ff
    rst $38                                       ; $6752: $ff
    rst $38                                       ; $6753: $ff
    rst $38                                       ; $6754: $ff
    rst $38                                       ; $6755: $ff
    rst $38                                       ; $6756: $ff
    rst $38                                       ; $6757: $ff
    rst $38                                       ; $6758: $ff
    nop                                           ; $6759: $00
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
    rst $38                                       ; $6769: $ff
    nop                                           ; $676a: $00
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
    rst $38                                       ; $677a: $ff
    nop                                           ; $677b: $00
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
    rst $38                                       ; $678b: $ff
    nop                                           ; $678c: $00
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
    rst $38                                       ; $679c: $ff
    nop                                           ; $679d: $00
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
    rst $38                                       ; $67ad: $ff
    nop                                           ; $67ae: $00
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
    rst $38                                       ; $67be: $ff
    nop                                           ; $67bf: $00
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
    rst $38                                       ; $67cf: $ff
    nop                                           ; $67d0: $00
    rst $38                                       ; $67d1: $ff
    rst $38                                       ; $67d2: $ff
    rst $38                                       ; $67d3: $ff
    rst $38                                       ; $67d4: $ff
    rst $38                                       ; $67d5: $ff
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
    nop                                           ; $67e1: $00
    rst $38                                       ; $67e2: $ff
    rst $38                                       ; $67e3: $ff
    rst $38                                       ; $67e4: $ff
    rst $38                                       ; $67e5: $ff
    rst $38                                       ; $67e6: $ff
    rst $38                                       ; $67e7: $ff
    rst $38                                       ; $67e8: $ff
    rst $38                                       ; $67e9: $ff
    rst $38                                       ; $67ea: $ff
    rst $38                                       ; $67eb: $ff
    rst $38                                       ; $67ec: $ff
    ei                                            ; $67ed: $fb
    nop                                           ; $67ee: $00
    nop                                           ; $67ef: $00
    nop                                           ; $67f0: $00
    and l                                         ; $67f1: $a5
    nop                                           ; $67f2: $00
    rst $38                                       ; $67f3: $ff
    push hl                                       ; $67f4: $e5
    ld [hl-], a                                   ; $67f5: $32
    or $e6                                        ; $67f6: $f6 $e6
    rst $30                                       ; $67f8: $f7
    rst $20                                       ; $67f9: $e7
    dec [hl]                                      ; $67fa: $35
    db $ec                                        ; $67fb: $ec
    xor $37                                       ; $67fc: $ee $37
    db $ec                                        ; $67fe: $ec
    jp c, $c7f0                                   ; $67ff: $da $f0 $c7

    add sp, $33                                   ; $6802: $e8 $33
    ld sp, $f2e0                                  ; $6804: $31 $e0 $f2
    ld [hl], $30                                  ; $6807: $36 $30
    scf                                           ; $6809: $37
    cp a                                          ; $680a: $bf
    ld h, $20                                     ; $680b: $26 $20
    daa                                           ; $680d: $27
    db $10                                        ; $680e: $10
    ld d, $17                                     ; $680f: $16 $17
    jp nz, Jump_000_34f6                          ; $6811: $c2 $f6 $34

    rst $38                                       ; $6814: $ff
    ld [hl], $32                                  ; $6815: $36 $32
    jr nc, jr_059_6850                            ; $6817: $30 $37

    ld sp, $3133                                  ; $6819: $31 $33 $31
    inc sp                                        ; $681c: $33
    nop                                           ; $681d: $00
    and b                                         ; $681e: $a0
    ei                                            ; $681f: $fb
    rst $38                                       ; $6820: $ff
    rst $28                                       ; $6821: $ef
    nop                                           ; $6822: $00
    nop                                           ; $6823: $00
    nop                                           ; $6824: $00
    dec l                                         ; $6825: $2d
    ld l, b                                       ; $6826: $68
    ld e, l                                       ; $6827: $5d
    ld l, b                                       ; $6828: $68
    db $e3                                        ; $6829: $e3
    ld l, d                                       ; $682a: $6a
    xor [hl]                                      ; $682b: $ae
    ld l, h                                       ; $682c: $6c
    ld hl, sp+$03                                 ; $682d: $f8 $03
    ld c, h                                       ; $682f: $4c
    inc bc                                        ; $6830: $03
    ld d, e                                       ; $6831: $53
    ld bc, $008a                                  ; $6832: $01 $8a $00
    ldh a, [$03]                                  ; $6835: $f0 $03
    ld hl, sp+$03                                 ; $6837: $f8 $03
    ld c, h                                       ; $6839: $4c
    inc bc                                        ; $683a: $03
    ld d, e                                       ; $683b: $53
    ld bc, $47ff                                  ; $683c: $01 $ff $47
    ldh a, [rP1]                                  ; $683f: $f0 $00
    ld e, l                                       ; $6841: $5d
    add hl, de                                    ; $6842: $19
    ld c, h                                       ; $6843: $4c
    inc bc                                        ; $6844: $03
    ld [$0825], sp                                ; $6845: $08 $25 $08
    dec h                                         ; $6848: $25
    ld [$0825], sp                                ; $6849: $08 $25 $08
    dec h                                         ; $684c: $25
    ld [$0825], sp                                ; $684d: $08 $25 $08

jr_059_6850:
    dec h                                         ; $6850: $25
    ld [$0825], sp                                ; $6851: $08 $25 $08
    dec h                                         ; $6854: $25
    ld [$0825], sp                                ; $6855: $08 $25 $08
    dec h                                         ; $6858: $25
    ld [$0825], sp                                ; $6859: $08 $25 $08
    dec h                                         ; $685c: $25
    push af                                       ; $685d: $f5
    dec bc                                        ; $685e: $0b
    rst $38                                       ; $685f: $ff
    ldh [$0c], a                                  ; $6860: $e0 $0c
    rst $38                                       ; $6862: $ff
    add sp, $0b                                   ; $6863: $e8 $0b
    dec bc                                        ; $6865: $0b
    ld a, [bc]                                    ; $6866: $0a
    dec bc                                        ; $6867: $0b
    add e                                         ; $6868: $83
    inc c                                         ; $6869: $0c
    ld c, h                                       ; $686a: $4c
    rst $38                                       ; $686b: $ff
    ldh [$eb], a                                  ; $686c: $e0 $eb
    ldh [$fc], a                                  ; $686e: $e0 $fc
    ldh [$f9], a                                  ; $6870: $e0 $f9
    pop hl                                        ; $6872: $e1
    ld hl, sp-$1e                                 ; $6873: $f8 $e2
    ld c, h                                       ; $6875: $4c
    ld [$e4fa], sp                                ; $6876: $08 $fa $e4
    rst $38                                       ; $6879: $ff
    db $ed                                        ; $687a: $ed
    pop bc                                        ; $687b: $c1
    push hl                                       ; $687c: $e5
    ld l, h                                       ; $687d: $6c
    db $e4                                        ; $687e: $e4
    db $e4                                        ; $687f: $e4
    or b                                          ; $6880: $b0
    db $e4                                        ; $6881: $e4
    ret nc                                        ; $6882: $d0

    pop hl                                        ; $6883: $e1
    db $fd                                        ; $6884: $fd
    db $e4                                        ; $6885: $e4
    nop                                           ; $6886: $00
    or l                                          ; $6887: $b5

jr_059_6888:
    db $e3                                        ; $6888: $e3
    ld a, [$c0e4]                                 ; $6889: $fa $e4 $c0
    ldh a, [$82]                                  ; $688c: $f0 $82
    db $e4                                        ; $688e: $e4
    adc h                                         ; $688f: $8c
    db $e3                                        ; $6890: $e3
    ld [hl], c                                    ; $6891: $71
    pop hl                                        ; $6892: $e1
    ret nz                                        ; $6893: $c0

    jp hl                                         ; $6894: $e9


    adc c                                         ; $6895: $89
    ld [c], a                                     ; $6896: $e2
    ld e, b                                       ; $6897: $58
    add d                                         ; $6898: $82
    rst $20                                       ; $6899: $e7
    add b                                         ; $689a: $80
    ldh a, [$79]                                  ; $689b: $f0 $79
    and $0b                                       ; $689d: $e6 $0b
    ld c, h                                       ; $689f: $4c
    jp nz, Jump_059_4be3                          ; $68a0: $c2 $e3 $4b

    jr nc, jr_059_6888                            ; $68a3: $30 $e3

    ld [hl], b                                    ; $68a5: $70
    ld a, [hl]                                    ; $68a6: $7e
    db $e3                                        ; $68a7: $e3
    db $fc                                        ; $68a8: $fc
    db $e3                                        ; $68a9: $e3
    ld b, b                                       ; $68aa: $40
    ld hl, sp+$0b                                 ; $68ab: $f8 $0b
    db $e4                                        ; $68ad: $e4
    ld l, e                                       ; $68ae: $6b
    ld c, e                                       ; $68af: $4b
    ld c, e                                       ; $68b0: $4b
    or $c1                                        ; $68b1: $f6 $c1
    ccf                                           ; $68b3: $3f
    ld l, e                                       ; $68b4: $6b
    ld l, e                                       ; $68b5: $6b
    ld c, e                                       ; $68b6: $4b
    dec bc                                        ; $68b7: $0b
    ld c, e                                       ; $68b8: $4b
    ld a, [bc]                                    ; $68b9: $0a
    nop                                           ; $68ba: $00
    ld a, [c]                                     ; $68bb: $f2
    ld b, b                                       ; $68bc: $40
    rst $20                                       ; $68bd: $e7
    pop af                                        ; $68be: $f1
    inc l                                         ; $68bf: $2c
    ret nc                                        ; $68c0: $d0

    jp $e4f9                                      ; $68c1: $c3 $f9 $e4


    ld c, e                                       ; $68c4: $4b
    ld [c], a                                     ; $68c5: $e2
    ld l, e                                       ; $68c6: $6b
    dec bc                                        ; $68c7: $0b
    dec hl                                        ; $68c8: $2b
    ld c, e                                       ; $68c9: $4b
    rst $18                                       ; $68ca: $df
    ld c, e                                       ; $68cb: $4b
    ld c, e                                       ; $68cc: $4b
    ld l, e                                       ; $68cd: $6b
    ld l, e                                       ; $68ce: $6b
    ld l, e                                       ; $68cf: $6b
    add d                                         ; $68d0: $82
    ldh [$0b], a                                  ; $68d1: $e0 $0b
    ld c, e                                       ; $68d3: $4b
    ret nz                                        ; $68d4: $c0

    nop                                           ; $68d5: $00
    ld a, [c]                                     ; $68d6: $f2
    add hl, sp                                    ; $68d7: $39
    and $bd                                       ; $68d8: $e6 $bd
    call z, $e14a                                 ; $68da: $cc $4a $e1
    pop bc                                        ; $68dd: $c1
    ldh [rIE], a                                  ; $68de: $e0 $ff

Jump_059_68e0:
    ldh [rWX], a                                  ; $68e0: $e0 $4b
    ld l, e                                       ; $68e2: $6b
    nop                                           ; $68e3: $00
    ld b, d                                       ; $68e4: $42
    pop hl                                        ; $68e5: $e1
    ld a, a                                       ; $68e6: $7f
    ldh [rP1], a                                  ; $68e7: $e0 $00
    push af                                       ; $68e9: $f5
    ld a, a                                       ; $68ea: $7f
    pop de                                        ; $68eb: $d1
    pop bc                                        ; $68ec: $c1
    rst $20                                       ; $68ed: $e7
    push bc                                       ; $68ee: $c5
    jp nz, $e101                                  ; $68ef: $c2 $01 $e1

    nop                                           ; $68f2: $00
    di                                            ; $68f3: $f3
    inc c                                         ; $68f4: $0c
    ld a, a                                       ; $68f5: $7f
    call nc, $c100                                ; $68f6: $d4 $00 $c1
    dec hl                                        ; $68f9: $2b
    ld c, e                                       ; $68fa: $4b
    pop bc                                        ; $68fb: $c1
    ld [c], a                                     ; $68fc: $e2
    ld a, $e0                                     ; $68fd: $3e $e0
    dec sp                                        ; $68ff: $3b
    ldh [$b8], a                                  ; $6900: $e0 $b8
    ldh [rP1], a                                  ; $6902: $e0 $00
    ld b, $c1                                     ; $6904: $06 $c1
    add d                                         ; $6906: $82
    call nz, $c940                                ; $6907: $c4 $40 $c9
    xor [hl]                                      ; $690a: $ae
    call nz, $efc0                                ; $690b: $c4 $c0 $ef
    cp a                                          ; $690e: $bf
    pop hl                                        ; $690f: $e1
    pop bc                                        ; $6910: $c1
    push hl                                       ; $6911: $e5
    ret nz                                        ; $6912: $c0

    db $e3                                        ; $6913: $e3
    nop                                           ; $6914: $00
    ld d, a                                       ; $6915: $57
    call nz, $a6d1                                ; $6916: $c4 $d1 $a6
    halt                                          ; $6919: $76
    call nz, $a3a9                                ; $691a: $c4 $a9 $a3
    ret nz                                        ; $691d: $c0

    rst $28                                       ; $691e: $ef
    jp nz, $82c0                                  ; $691f: $c2 $c0 $82

    pop hl                                        ; $6922: $e1
    dec sp                                        ; $6923: $3b
    ld [c], a                                     ; $6924: $e2
    nop                                           ; $6925: $00
    ret nz                                        ; $6926: $c0

    db $e3                                        ; $6927: $e3
    pop bc                                        ; $6928: $c1
    and $7f                                       ; $6929: $e6 $7f
    and [hl]                                      ; $692b: $a6
    add c                                         ; $692c: $81
    bit 7, h                                      ; $692d: $cb $7c
    call nz, $e5c0                                ; $692f: $c4 $c0 $e5
    add c                                         ; $6932: $81
    jp nz, $e33e                                  ; $6933: $c2 $3e $e3

    sbc b                                         ; $6936: $98
    add b                                         ; $6937: $80
    db $e4                                        ; $6938: $e4
    ret nz                                        ; $6939: $c0

    and a                                         ; $693a: $a7
    inc [hl]                                      ; $693b: $34
    xor c                                         ; $693c: $a9
    ld c, h                                       ; $693d: $4c
    ld c, h                                       ; $693e: $4c
    rst $00                                       ; $693f: $c7
    and $0b                                       ; $6940: $e6 $0b
    xor b                                         ; $6942: $a8
    inc l                                         ; $6943: $2c
    nop                                           ; $6944: $00
    inc b                                         ; $6945: $04
    ret nz                                        ; $6946: $c0

    ld a, [hl]                                    ; $6947: $7e
    ldh [rIE], a                                  ; $6948: $e0 $ff
    jp $82f0                                      ; $694a: $c3 $f0 $82


    ld d, c                                       ; $694d: $51
    rst $20                                       ; $694e: $e7
    jr c, @-$58                                   ; $694f: $38 $a6

    ld a, c                                       ; $6951: $79
    and l                                         ; $6952: $a5
    cp h                                          ; $6953: $bc
    or c                                          ; $6954: $b1
    ld bc, $7e4c                                  ; $6955: $01 $4c $7e
    db $e4                                        ; $6958: $e4
    pop bc                                        ; $6959: $c1
    db $e3                                        ; $695a: $e3
    ret nz                                        ; $695b: $c0

    add b                                         ; $695c: $80
    jr nc, @-$5a                                  ; $695d: $30 $a4

    db $fc                                        ; $695f: $fc
    ld [c], a                                     ; $6960: $e2
    ld b, $e5                                     ; $6961: $06 $e5
    cp c                                          ; $6963: $b9
    db $e4                                        ; $6964: $e4
    ld [hl-], a                                   ; $6965: $32
    ld a, l                                       ; $6966: $7d
    ld [c], a                                     ; $6967: $e2
    inc l                                         ; $6968: $2c
    rst $38                                       ; $6969: $ff
    ldh [rNR31], a                                ; $696a: $e0 $1b
    add sp, $0c                                   ; $696c: $e8 $0c
    ld c, h                                       ; $696e: $4c
    ld a, [hl]                                    ; $696f: $7e
    ld [c], a                                     ; $6970: $e2
    ld a, l                                       ; $6971: $7d
    and d                                         ; $6972: $a2
    nop                                           ; $6973: $00
    ld [hl], b                                    ; $6974: $70
    add h                                         ; $6975: $84
    ld b, $a5                                     ; $6976: $06 $a5
    ret nz                                        ; $6978: $c0

    rst $00                                       ; $6979: $c7
    rst $28                                       ; $697a: $ef
    add [hl]                                      ; $697b: $86
    ret nz                                        ; $697c: $c0

    ldh a, [$7e]                                  ; $697d: $f0 $7e
    db $e3                                        ; $697f: $e3
    db $fd                                        ; $6980: $fd
    and l                                         ; $6981: $a5
    ld c, l                                       ; $6982: $4d
    add [hl]                                      ; $6983: $86
    nop                                           ; $6984: $00
    cp [hl]                                       ; $6985: $be
    push bc                                       ; $6986: $c5
    scf                                           ; $6987: $37
    add [hl]                                      ; $6988: $86
    inc a                                         ; $6989: $3c
    add h                                         ; $698a: $84
    add c                                         ; $698b: $81
    jp hl                                         ; $698c: $e9


    ld h, h                                       ; $698d: $64
    add sp, -$2f                                  ; $698e: $e8 $d1
    add $4d                                       ; $6990: $c6 $4d
    add l                                         ; $6992: $85
    dec c                                         ; $6993: $0d
    add [hl]                                      ; $6994: $86
    nop                                           ; $6995: $00
    ld a, a                                       ; $6996: $7f
    and a                                         ; $6997: $a7
    ret nz                                        ; $6998: $c0

    rst $28                                       ; $6999: $ef
    push de                                       ; $699a: $d5
    sub e                                         ; $699b: $93
    pop de                                        ; $699c: $d1
    ld h, [hl]                                    ; $699d: $66
    cp c                                          ; $699e: $b9
    db $ed                                        ; $699f: $ed
    ld a, $af                                     ; $69a0: $3e $af
    push de                                       ; $69a2: $d5
    adc a                                         ; $69a3: $8f
    ld d, d                                       ; $69a4: $52
    xor [hl]                                      ; $69a5: $ae
    inc b                                         ; $69a6: $04
    or $ab                                        ; $69a7: $f6 $ab
    jp nz, Jump_000_2cc1                          ; $69a9: $c2 $c1 $2c

    db $fd                                        ; $69ac: $fd
    and [hl]                                      ; $69ad: $a6
    push de                                       ; $69ae: $d5
    ld l, a                                       ; $69af: $6f
    bit 5, c                                      ; $69b0: $cb $69
    or $b1                                        ; $69b2: $f6 $b1
    ret nz                                        ; $69b4: $c0

    db $eb                                        ; $69b5: $eb
    nop                                           ; $69b6: $00
    push de                                       ; $69b7: $d5
    ld [hl], c                                    ; $69b8: $71
    res 0, [hl]                                   ; $69b9: $cb $86
    or $b1                                        ; $69bb: $f6 $b1
    ld b, b                                       ; $69bd: $40
    call $8ed5                                    ; $69be: $cd $d5 $8e
    ld [hl], $e9                                  ; $69c1: $36 $e9
    or $b0                                        ; $69c3: $f6 $b0
    nop                                           ; $69c5: $00
    rlc b                                         ; $69c6: $cb $00
    push de                                       ; $69c8: $d5
    sub c                                         ; $69c9: $91
    or $ea                                        ; $69ca: $f6 $ea
    or $b0                                        ; $69cc: $f6 $b0
    ld a, [hl]                                    ; $69ce: $7e
    or b                                          ; $69cf: $b0
    push de                                       ; $69d0: $d5
    adc d                                         ; $69d1: $8a
    ld a, a                                       ; $69d2: $7f
    ret                                           ; $69d3: $c9


    or $b1                                        ; $69d4: $f6 $b1
    ld sp, hl                                     ; $69d6: $f9
    add b                                         ; $69d7: $80
    nop                                           ; $69d8: $00
    add b                                         ; $69d9: $80
    and l                                         ; $69da: $a5
    dec d                                         ; $69db: $15
    ld [hl], d                                    ; $69dc: $72
    ld c, b                                       ; $69dd: $48
    and h                                         ; $69de: $a4
    ld [de], a                                    ; $69df: $12
    and l                                         ; $69e0: $a5
    or $ac                                        ; $69e1: $f6 $ac
    ret nz                                        ; $69e3: $c0

    ld [$5215], a                                 ; $69e4: $ea $15 $52
    res 1, b                                      ; $69e7: $cb $88
    nop                                           ; $69e9: $00
    cp d                                          ; $69ea: $ba
    xor a                                         ; $69eb: $af
    jr c, jr_059_6a3b                             ; $69ec: $38 $4d

    dec d                                         ; $69ee: $15
    ld d, b                                       ; $69ef: $50
    add c                                         ; $69f0: $81
    jp z, $e8f2                                   ; $69f1: $ca $f2 $e8

    cpl                                           ; $69f4: $2f
    jp hl                                         ; $69f5: $e9


    cp [hl]                                       ; $69f6: $be
    xor [hl]                                      ; $69f7: $ae
    dec d                                         ; $69f8: $15
    ld l, c                                       ; $69f9: $69
    nop                                           ; $69fa: $00
    sub c                                         ; $69fb: $91
    ld c, b                                       ; $69fc: $48
    add [hl]                                      ; $69fd: $86
    xor d                                         ; $69fe: $aa
    ld sp, hl                                     ; $69ff: $f9
    ld d, b                                       ; $6a00: $50
    dec d                                         ; $6a01: $15
    ld [hl], c                                    ; $6a02: $71
    sub d                                         ; $6a03: $92
    adc c                                         ; $6a04: $89
    dec [hl]                                      ; $6a05: $35
    add sp, $5d                                   ; $6a06: $e8 $5d
    rst $08                                       ; $6a08: $cf
    ld b, b                                       ; $6a09: $40
    db $d3                                        ; $6a0a: $d3
    nop                                           ; $6a0b: $00
    call nz, $0205                                ; $6a0c: $c4 $05 $02
    dec h                                         ; $6a0f: $25
    cp [hl]                                       ; $6a10: $be
    ld l, b                                       ; $6a11: $68
    ld [hl-], a                                   ; $6a12: $32
    ld l, b                                       ; $6a13: $68
    ld b, b                                       ; $6a14: $40
    reti                                          ; $6a15: $d9


    adc h                                         ; $6a16: $8c
    ld b, a                                       ; $6a17: $47
    xor e                                         ; $6a18: $ab
    add sp, $32                                   ; $6a19: $e8 $32
    ld l, e                                       ; $6a1b: $6b
    nop                                           ; $6a1c: $00
    ret nz                                        ; $6a1d: $c0

    pop de                                        ; $6a1e: $d1
    ld c, d                                       ; $6a1f: $4a
    add $8c                                       ; $6a20: $c6 $8c
    ld b, [hl]                                    ; $6a22: $46
    nop                                           ; $6a23: $00
    adc b                                         ; $6a24: $88
    inc a                                         ; $6a25: $3c
    xor e                                         ; $6a26: $ab
    add c                                         ; $6a27: $81
    xor c                                         ; $6a28: $a9
    dec d                                         ; $6a29: $15
    ld l, [hl]                                    ; $6a2a: $6e
    ccf                                           ; $6a2b: $3f
    rst $20                                       ; $6a2c: $e7
    nop                                           ; $6a2d: $00
    ld b, a                                       ; $6a2e: $47
    adc c                                         ; $6a2f: $89
    inc a                                         ; $6a30: $3c
    xor d                                         ; $6a31: $aa
    ld b, c                                       ; $6a32: $41
    ld l, c                                       ; $6a33: $69
    dec d                                         ; $6a34: $15
    ld l, a                                       ; $6a35: $6f
    ld e, d                                       ; $6a36: $5a
    rst $20                                       ; $6a37: $e7
    ld b, $cb                                     ; $6a38: $06 $cb
    adc h                                         ; $6a3a: $8c

jr_059_6a3b:
    ld h, [hl]                                    ; $6a3b: $66
    ld a, c                                       ; $6a3c: $79
    ld c, c                                       ; $6a3d: $49
    nop                                           ; $6a3e: $00
    dec d                                         ; $6a3f: $15
    ld l, [hl]                                    ; $6a40: $6e
    rst $28                                       ; $6a41: $ef
    ld h, a                                       ; $6a42: $67
    ld b, $2b                                     ; $6a43: $06 $2b
    jr c, jr_059_6a8f                             ; $6a45: $38 $48

    add hl, sp                                    ; $6a47: $39
    ld c, b                                       ; $6a48: $48
    dec d                                         ; $6a49: $15
    ld [hl], b                                    ; $6a4a: $70
    adc h                                         ; $6a4b: $8c
    jp z, $b43c                                   ; $6a4c: $ca $3c $b4

    nop                                           ; $6a4f: $00
    sub c                                         ; $6a50: $91
    adc c                                         ; $6a51: $89
    ld e, e                                       ; $6a52: $5b
    or b                                          ; $6a53: $b0
    call nc, $6408                                ; $6a54: $d4 $08 $64
    jp z, $c157                                   ; $6a57: $ca $57 $c1

    ld b, d                                       ; $6a5a: $42
    adc c                                         ; $6a5b: $89
    ret c                                         ; $6a5c: $d8

    db $eb                                        ; $6a5d: $eb
    adc h                                         ; $6a5e: $8c
    rst $08                                       ; $6a5f: $cf
    nop                                           ; $6a60: $00
    ld a, c                                       ; $6a61: $79
    dec l                                         ; $6a62: $2d
    ret nz                                        ; $6a63: $c0

    rst $28                                       ; $6a64: $ef
    ld [hl], a                                    ; $6a65: $77
    ei                                            ; $6a66: $fb
    ld a, c                                       ; $6a67: $79
    jr nc, @+$01                                  ; $6a68: $30 $ff

    rst $38                                       ; $6a6a: $ff
    ld h, h                                       ; $6a6b: $64
    ret c                                         ; $6a6c: $d8

    jp z, $eaff                                   ; $6a6d: $ca $ff $ea

    ld b, $00                                     ; $6a70: $06 $00
    ld h, h                                       ; $6a72: $64
    call nc, $ffff                                ; $6a73: $d4 $ff $ff
    ld h, h                                       ; $6a76: $64
    reti                                          ; $6a77: $d9


    ret nz                                        ; $6a78: $c0

    rst $38                                       ; $6a79: $ff
    add b                                         ; $6a7a: $80
    rst $20                                       ; $6a7b: $e7
    ld h, h                                       ; $6a7c: $64
    rst $10                                       ; $6a7d: $d7
    rst $38                                       ; $6a7e: $ff
    rst $38                                       ; $6a7f: $ff
    ld b, b                                       ; $6a80: $40
    add sp, $00                                   ; $6a81: $e8 $00
    ret z                                         ; $6a83: $c8

    add h                                         ; $6a84: $84
    ld sp, $ffa8                                  ; $6a85: $31 $a8 $ff
    rst $38                                       ; $6a88: $ff
    db $e3                                        ; $6a89: $e3
    adc c                                         ; $6a8a: $89
    or $89                                        ; $6a8b: $f6 $89
    ret nz                                        ; $6a8d: $c0

    rst $38                                       ; $6a8e: $ff

jr_059_6a8f:
    dec l                                         ; $6a8f: $2d
    ret nc                                        ; $6a90: $d0

    or [hl]                                       ; $6a91: $b6
    adc c                                         ; $6a92: $89
    nop                                           ; $6a93: $00
    rst $38                                       ; $6a94: $ff
    rst $38                                       ; $6a95: $ff
    ld [hl], e                                    ; $6a96: $73
    db $d3                                        ; $6a97: $d3
    call $ffb1                                    ; $6a98: $cd $b1 $ff
    rst $38                                       ; $6a9b: $ff
    rst $38                                       ; $6a9c: $ff
    rst $38                                       ; $6a9d: $ff
    sub [hl]                                      ; $6a9e: $96
    rst $38                                       ; $6a9f: $ff
    sbc c                                         ; $6aa0: $99
    rst $18                                       ; $6aa1: $df
    rst $38                                       ; $6aa2: $ff
    rst $38                                       ; $6aa3: $ff
    nop                                           ; $6aa4: $00
    rst $38                                       ; $6aa5: $ff
    rst $38                                       ; $6aa6: $ff
    rst $38                                       ; $6aa7: $ff
    rst $38                                       ; $6aa8: $ff
    rst $38                                       ; $6aa9: $ff
    rst $38                                       ; $6aaa: $ff
    scf                                           ; $6aab: $37
    db $ed                                        ; $6aac: $ed
    call c, $ffff                                 ; $6aad: $dc $ff $ff
    rst $38                                       ; $6ab0: $ff
    rst $38                                       ; $6ab1: $ff
    rst $38                                       ; $6ab2: $ff
    rst $38                                       ; $6ab3: $ff
    rst $38                                       ; $6ab4: $ff
    nop                                           ; $6ab5: $00
    rst $38                                       ; $6ab6: $ff
    rst $38                                       ; $6ab7: $ff
    rst $38                                       ; $6ab8: $ff
    rst $38                                       ; $6ab9: $ff
    rst $38                                       ; $6aba: $ff
    rst $38                                       ; $6abb: $ff

jr_059_6abc:
    rst $38                                       ; $6abc: $ff
    rst $38                                       ; $6abd: $ff
    rst $38                                       ; $6abe: $ff
    rst $38                                       ; $6abf: $ff
    rst $38                                       ; $6ac0: $ff
    rst $38                                       ; $6ac1: $ff
    rst $38                                       ; $6ac2: $ff
    rst $38                                       ; $6ac3: $ff
    rst $38                                       ; $6ac4: $ff
    rst $38                                       ; $6ac5: $ff
    nop                                           ; $6ac6: $00
    rst $38                                       ; $6ac7: $ff
    rst $38                                       ; $6ac8: $ff
    rst $38                                       ; $6ac9: $ff
    rst $38                                       ; $6aca: $ff
    rst $38                                       ; $6acb: $ff
    rst $38                                       ; $6acc: $ff
    rst $38                                       ; $6acd: $ff
    rst $38                                       ; $6ace: $ff
    rst $38                                       ; $6acf: $ff
    rst $38                                       ; $6ad0: $ff
    rst $38                                       ; $6ad1: $ff
    rst $38                                       ; $6ad2: $ff
    nop                                           ; $6ad3: $00
    cp a                                          ; $6ad4: $bf
    rst $38                                       ; $6ad5: $ff
    rst $38                                       ; $6ad6: $ff
    nop                                           ; $6ad7: $00
    rst $38                                       ; $6ad8: $ff
    rst $38                                       ; $6ad9: $ff
    rst $38                                       ; $6ada: $ff
    rst $38                                       ; $6adb: $ff
    rst $38                                       ; $6adc: $ff
    rst $38                                       ; $6add: $ff
    ld e, l                                       ; $6ade: $5d
    ld d, e                                       ; $6adf: $53
    nop                                           ; $6ae0: $00
    nop                                           ; $6ae1: $00
    nop                                           ; $6ae2: $00
    rst $38                                       ; $6ae3: $ff
    ld e, e                                       ; $6ae4: $5b
    ld h, b                                       ; $6ae5: $60
    ld sp, $2931                                  ; $6ae6: $31 $31 $29
    daa                                           ; $6ae9: $27
    db $10                                        ; $6aea: $10
    jr nz, @+$80                                  ; $6aeb: $20 $7e

    rst $38                                       ; $6aed: $ff
    db $e4                                        ; $6aee: $e4
    nop                                           ; $6aef: $00
    ld sp, $5a61                                  ; $6af0: $31 $61 $5a
    ld e, e                                       ; $6af3: $5b
    nop                                           ; $6af4: $00
    rst $38                                       ; $6af5: $ff
    rst $38                                       ; $6af6: $ff
    call c, $e6e7                                 ; $6af7: $dc $e7 $e6
    pop bc                                        ; $6afa: $c1
    push hl                                       ; $6afb: $e5
    jr z, jr_059_6b1f                             ; $6afc: $28 $21

    jr z, jr_059_6abc                             ; $6afe: $28 $bc

    pop hl                                        ; $6b00: $e1
    rrca                                          ; $6b01: $0f
    ld sp, $61e3                                  ; $6b02: $31 $e3 $61
    ld e, e                                       ; $6b05: $5b
    ret nz                                        ; $6b06: $c0

    rst $38                                       ; $6b07: $ff
    jp hl                                         ; $6b08: $e9


    add sp, -$7e                                  ; $6b09: $e8 $82
    db $e4                                        ; $6b0b: $e4
    ld a, [bc]                                    ; $6b0c: $0a
    dec bc                                        ; $6b0d: $0b
    ld de, $123f                                  ; $6b0e: $11 $3f $12
    ld hl, $0a28                                  ; $6b11: $21 $28 $0a
    dec bc                                        ; $6b14: $0b
    ld sp, $ffc0                                  ; $6b15: $31 $c0 $ff
    ret nz                                        ; $6b18: $c0

    db $ec                                        ; $6b19: $ec
    call c, $e143                                 ; $6b1a: $dc $43 $e1
    ret z                                         ; $6b1d: $c8

    pop hl                                        ; $6b1e: $e1

jr_059_6b1f:
    ld sp, $1131                                  ; $6b1f: $31 $31 $11
    ld a, [$31e2]                                 ; $6b22: $fa $e2 $31
    ld e, a                                       ; $6b25: $5f
    add sp, -$40                                  ; $6b26: $e8 $c0
    rst $38                                       ; $6b28: $ff
    jp hl                                         ; $6b29: $e9


    add sp, $04                                   ; $6b2a: $e8 $04
    ldh [rNR23], a                                ; $6b2c: $e0 $18
    adc d                                         ; $6b2e: $8a
    ldh [$3c], a                                  ; $6b2f: $e0 $3c
    ld b, [hl]                                    ; $6b31: $46
    ld b, a                                       ; $6b32: $47
    ld a, [hl]                                    ; $6b33: $7e
    cp l                                          ; $6b34: $bd
    pop hl                                        ; $6b35: $e1
    ld b, a                                       ; $6b36: $47
    ld b, [hl]                                    ; $6b37: $46
    scf                                           ; $6b38: $37
    ld sp, $5a5e                                  ; $6b39: $31 $5e $5a
    jp z, $deff                                   ; $6b3c: $ca $ff $de

    add sp, -$19                                  ; $6b3f: $e8 $e7
    dec hl                                        ; $6b41: $2b
    db $10                                        ; $6b42: $10
    jr nz, jr_059_6b5f                            ; $6b43: $20 $1a

    pop bc                                        ; $6b45: $c1
    ldh [rSCY], a                                 ; $6b46: $e0 $42
    ld h, a                                       ; $6b48: $67
    rst $38                                       ; $6b49: $ff
    ld [hl], $46                                  ; $6b4a: $36 $46
    ld b, a                                       ; $6b4c: $47
    ld b, a                                       ; $6b4d: $47
    ld b, [hl]                                    ; $6b4e: $46
    ld [hl], $68                                  ; $6b4f: $36 $68
    add hl, sp                                    ; $6b51: $39
    add sp, $7f                                   ; $6b52: $e8 $7f
    ldh [$ca], a                                  ; $6b54: $e0 $ca
    rst $38                                       ; $6b56: $ff
    ret nz                                        ; $6b57: $c0

    jp hl                                         ; $6b58: $e9


    rrca                                          ; $6b59: $0f
    pop bc                                        ; $6b5a: $c1
    ld [c], a                                     ; $6b5b: $e2
    ld h, a                                       ; $6b5c: $67
    ld l, d                                       ; $6b5d: $6a
    ld l, d                                       ; $6b5e: $6a

jr_059_6b5f:
    rst $38                                       ; $6b5f: $ff
    ld [hl], $36                                  ; $6b60: $36 $36
    ld l, b                                       ; $6b62: $68
    ld l, b                                       ; $6b63: $68
    ld l, b                                       ; $6b64: $68
    ld c, b                                       ; $6b65: $48
    ld c, c                                       ; $6b66: $49
    ld sp, $5e11                                  ; $6b67: $31 $11 $5e
    jp z, $40ff                                   ; $6b6a: $ca $ff $40

    add sp, -$3f                                  ; $6b6d: $e8 $c1
    and $30                                       ; $6b6f: $e6 $30
    rst $38                                       ; $6b71: $ff
    db $e3                                        ; $6b72: $e3
    ld a, a                                       ; $6b73: $7f
    ldh [$ca], a                                  ; $6b74: $e0 $ca
    rst $38                                       ; $6b76: $ff
    jr nz, @-$7e                                  ; $6b77: $20 $80

    ret                                           ; $6b79: $c9


    ld b, d                                       ; $6b7a: $42
    ld [c], a                                     ; $6b7b: $e2
    pop bc                                        ; $6b7c: $c1

Jump_059_6b7d:
    pop hl                                        ; $6b7d: $e1
    add d                                         ; $6b7e: $82
    ldh [$7f], a                                  ; $6b7f: $e0 $7f
    ldh [rHDMA3], a                               ; $6b81: $e0 $53
    ret nz                                        ; $6b83: $c0

    rst $38                                       ; $6b84: $ff
    ret nz                                        ; $6b85: $c0

    db $ed                                        ; $6b86: $ed
    db $ec                                        ; $6b87: $ec
    ld bc, $82e0                                  ; $6b88: $01 $e0 $82
    ldh [rOCPS], a                                ; $6b8b: $e0 $6a
    ld l, d                                       ; $6b8d: $6a
    cp a                                          ; $6b8e: $bf
    ld [c], a                                     ; $6b8f: $e2
    ld d, d                                       ; $6b90: $52
    and h                                         ; $6b91: $a4
    and h                                         ; $6b92: $a4
    ldh [$ca], a                                  ; $6b93: $e0 $ca
    rst $38                                       ; $6b95: $ff
    ret nz                                        ; $6b96: $c0

    db $ec                                        ; $6b97: $ec
    ret nz                                        ; $6b98: $c0

    ret nz                                        ; $6b99: $c0

    pop bc                                        ; $6b9a: $c1
    ldh [$3e], a                                  ; $6b9b: $e0 $3e
    db $e3                                        ; $6b9d: $e3
    ld d, e                                       ; $6b9e: $53
    add b                                         ; $6b9f: $80
    add b                                         ; $6ba0: $80
    sub b                                         ; $6ba1: $90
    jp z, $c0ff                                   ; $6ba2: $ca $ff $c0

    db $ed                                        ; $6ba5: $ed
    ld a, [hl]                                    ; $6ba6: $7e
    pop hl                                        ; $6ba7: $e1
    ld a, $e4                                     ; $6ba8: $3e $e4
    ld d, d                                       ; $6baa: $52
    ret nz                                        ; $6bab: $c0

    rst $38                                       ; $6bac: $ff
    nop                                           ; $6bad: $00
    jp z, Jump_000_2714                           ; $6bae: $ca $14 $27

    inc d                                         ; $6bb1: $14
    inc d                                         ; $6bb2: $14
    add hl, hl                                    ; $6bb3: $29
    ld a, [hl]                                    ; $6bb4: $7e
    db $e3                                        ; $6bb5: $e3
    ld a, $e3                                     ; $6bb6: $3e $e3
    add e                                         ; $6bb8: $83
    ret nz                                        ; $6bb9: $c0

    rst $38                                       ; $6bba: $ff
    nop                                           ; $6bbb: $00
    jp z, Jump_000_24f1                           ; $6bbc: $ca $f1 $24

    rst $38                                       ; $6bbf: $ff
    ldh [$3d], a                                  ; $6bc0: $e0 $3d
    ret nz                                        ; $6bc2: $c0

    ld a, [hl]                                    ; $6bc3: $7e
    ld [c], a                                     ; $6bc4: $e2
    ld h, a                                       ; $6bc5: $67
    ld h, l                                       ; $6bc6: $65
    ld h, l                                       ; $6bc7: $65
    ld c, b                                       ; $6bc8: $48
    ld de, $c076                                  ; $6bc9: $11 $76 $c0
    rst $38                                       ; $6bcc: $ff
    ret nz                                        ; $6bcd: $c0

    xor h                                         ; $6bce: $ac
    add h                                         ; $6bcf: $84
    add b                                         ; $6bd0: $80
    ld c, $7a                                     ; $6bd1: $0e $7a
    jp $c03d                                      ; $6bd3: $c3 $3d $c0


    add c                                         ; $6bd6: $81
    ldh [$f0], a                                  ; $6bd7: $e0 $f0
    ret nz                                        ; $6bd9: $c0

    rst $38                                       ; $6bda: $ff
    ret nz                                        ; $6bdb: $c0

    xor $88                                       ; $6bdc: $ee $88
    add b                                         ; $6bde: $80
    inc a                                         ; $6bdf: $3c
    and b                                         ; $6be0: $a0
    ld d, h                                       ; $6be1: $54
    ld d, l                                       ; $6be2: $55
    ld d, h                                       ; $6be3: $54
    ld d, l                                       ; $6be4: $55
    nop                                           ; $6be5: $00
    add c                                         ; $6be6: $81
    ldh [$c0], a                                  ; $6be7: $e0 $c0
    rst $38                                       ; $6be9: $ff
    rst $38                                       ; $6bea: $ff
    rst $38                                       ; $6beb: $ff
    rst $38                                       ; $6bec: $ff
    rst $38                                       ; $6bed: $ff
    rst $38                                       ; $6bee: $ff
    rst $38                                       ; $6bef: $ff
    rst $38                                       ; $6bf0: $ff
    rst $38                                       ; $6bf1: $ff

Jump_059_6bf2:
    rst $38                                       ; $6bf2: $ff
    rst $38                                       ; $6bf3: $ff
    rst $38                                       ; $6bf4: $ff
    rst $38                                       ; $6bf5: $ff
    nop                                           ; $6bf6: $00
    rst $38                                       ; $6bf7: $ff
    rst $38                                       ; $6bf8: $ff
    rst $38                                       ; $6bf9: $ff
    rst $38                                       ; $6bfa: $ff
    rst $38                                       ; $6bfb: $ff
    rst $38                                       ; $6bfc: $ff
    rst $38                                       ; $6bfd: $ff
    rst $38                                       ; $6bfe: $ff
    rst $38                                       ; $6bff: $ff
    rst $38                                       ; $6c00: $ff
    rst $38                                       ; $6c01: $ff
    rst $38                                       ; $6c02: $ff
    rst $38                                       ; $6c03: $ff
    rst $38                                       ; $6c04: $ff
    rst $38                                       ; $6c05: $ff
    rst $38                                       ; $6c06: $ff
    nop                                           ; $6c07: $00
    rst $38                                       ; $6c08: $ff
    rst $38                                       ; $6c09: $ff
    rst $38                                       ; $6c0a: $ff
    rst $38                                       ; $6c0b: $ff
    rst $38                                       ; $6c0c: $ff
    rst $38                                       ; $6c0d: $ff
    rst $38                                       ; $6c0e: $ff
    rst $38                                       ; $6c0f: $ff
    rst $38                                       ; $6c10: $ff
    rst $38                                       ; $6c11: $ff
    rst $38                                       ; $6c12: $ff
    rst $38                                       ; $6c13: $ff
    rst $38                                       ; $6c14: $ff
    rst $38                                       ; $6c15: $ff
    rst $38                                       ; $6c16: $ff
    rst $38                                       ; $6c17: $ff
    nop                                           ; $6c18: $00
    rst $38                                       ; $6c19: $ff
    rst $38                                       ; $6c1a: $ff
    rst $38                                       ; $6c1b: $ff
    rst $38                                       ; $6c1c: $ff
    rst $38                                       ; $6c1d: $ff
    rst $38                                       ; $6c1e: $ff
    rst $38                                       ; $6c1f: $ff
    rst $38                                       ; $6c20: $ff
    rst $38                                       ; $6c21: $ff
    rst $38                                       ; $6c22: $ff
    rst $38                                       ; $6c23: $ff
    rst $38                                       ; $6c24: $ff
    rst $38                                       ; $6c25: $ff
    rst $38                                       ; $6c26: $ff
    rst $38                                       ; $6c27: $ff
    rst $38                                       ; $6c28: $ff
    nop                                           ; $6c29: $00
    rst $38                                       ; $6c2a: $ff
    rst $38                                       ; $6c2b: $ff
    rst $38                                       ; $6c2c: $ff
    rst $38                                       ; $6c2d: $ff
    rst $38                                       ; $6c2e: $ff
    rst $38                                       ; $6c2f: $ff
    rst $38                                       ; $6c30: $ff
    rst $38                                       ; $6c31: $ff
    rst $38                                       ; $6c32: $ff
    rst $38                                       ; $6c33: $ff
    rst $38                                       ; $6c34: $ff
    rst $38                                       ; $6c35: $ff
    rst $38                                       ; $6c36: $ff
    rst $38                                       ; $6c37: $ff
    rst $38                                       ; $6c38: $ff
    rst $38                                       ; $6c39: $ff
    nop                                           ; $6c3a: $00
    rst $38                                       ; $6c3b: $ff
    rst $38                                       ; $6c3c: $ff
    rst $38                                       ; $6c3d: $ff
    rst $38                                       ; $6c3e: $ff
    rst $38                                       ; $6c3f: $ff
    rst $38                                       ; $6c40: $ff
    rst $38                                       ; $6c41: $ff
    rst $38                                       ; $6c42: $ff
    rst $38                                       ; $6c43: $ff
    rst $38                                       ; $6c44: $ff
    rst $38                                       ; $6c45: $ff
    rst $38                                       ; $6c46: $ff
    rst $38                                       ; $6c47: $ff
    rst $38                                       ; $6c48: $ff
    rst $38                                       ; $6c49: $ff
    rst $38                                       ; $6c4a: $ff
    nop                                           ; $6c4b: $00
    rst $38                                       ; $6c4c: $ff
    rst $38                                       ; $6c4d: $ff
    rst $38                                       ; $6c4e: $ff
    rst $38                                       ; $6c4f: $ff
    rst $38                                       ; $6c50: $ff
    rst $38                                       ; $6c51: $ff
    rst $38                                       ; $6c52: $ff
    rst $38                                       ; $6c53: $ff
    rst $38                                       ; $6c54: $ff
    rst $38                                       ; $6c55: $ff
    rst $38                                       ; $6c56: $ff
    rst $38                                       ; $6c57: $ff
    rst $38                                       ; $6c58: $ff
    rst $38                                       ; $6c59: $ff
    rst $38                                       ; $6c5a: $ff
    rst $38                                       ; $6c5b: $ff
    nop                                           ; $6c5c: $00
    rst $38                                       ; $6c5d: $ff
    rst $38                                       ; $6c5e: $ff
    rst $38                                       ; $6c5f: $ff
    rst $38                                       ; $6c60: $ff
    rst $38                                       ; $6c61: $ff
    rst $38                                       ; $6c62: $ff
    rst $38                                       ; $6c63: $ff
    rst $38                                       ; $6c64: $ff
    rst $38                                       ; $6c65: $ff
    rst $38                                       ; $6c66: $ff
    rst $38                                       ; $6c67: $ff
    rst $38                                       ; $6c68: $ff
    rst $38                                       ; $6c69: $ff
    rst $38                                       ; $6c6a: $ff
    rst $38                                       ; $6c6b: $ff
    rst $38                                       ; $6c6c: $ff
    nop                                           ; $6c6d: $00
    rst $38                                       ; $6c6e: $ff
    rst $38                                       ; $6c6f: $ff
    rst $38                                       ; $6c70: $ff
    rst $38                                       ; $6c71: $ff
    rst $38                                       ; $6c72: $ff
    rst $38                                       ; $6c73: $ff
    rst $38                                       ; $6c74: $ff
    rst $38                                       ; $6c75: $ff
    rst $38                                       ; $6c76: $ff
    rst $38                                       ; $6c77: $ff
    rst $38                                       ; $6c78: $ff
    rst $38                                       ; $6c79: $ff
    rst $38                                       ; $6c7a: $ff
    rst $38                                       ; $6c7b: $ff
    rst $38                                       ; $6c7c: $ff
    rst $38                                       ; $6c7d: $ff
    nop                                           ; $6c7e: $00
    rst $38                                       ; $6c7f: $ff
    rst $38                                       ; $6c80: $ff
    rst $38                                       ; $6c81: $ff
    rst $38                                       ; $6c82: $ff
    rst $38                                       ; $6c83: $ff
    rst $38                                       ; $6c84: $ff
    rst $38                                       ; $6c85: $ff
    rst $38                                       ; $6c86: $ff
    rst $38                                       ; $6c87: $ff
    rst $38                                       ; $6c88: $ff
    rst $38                                       ; $6c89: $ff
    rst $38                                       ; $6c8a: $ff
    rst $38                                       ; $6c8b: $ff
    rst $38                                       ; $6c8c: $ff
    rst $38                                       ; $6c8d: $ff
    rst $38                                       ; $6c8e: $ff
    nop                                           ; $6c8f: $00
    rst $38                                       ; $6c90: $ff
    rst $38                                       ; $6c91: $ff
    rst $38                                       ; $6c92: $ff
    rst $38                                       ; $6c93: $ff
    rst $38                                       ; $6c94: $ff
    rst $38                                       ; $6c95: $ff
    rst $38                                       ; $6c96: $ff
    rst $38                                       ; $6c97: $ff
    rst $38                                       ; $6c98: $ff
    rst $38                                       ; $6c99: $ff
    rst $38                                       ; $6c9a: $ff
    rst $38                                       ; $6c9b: $ff
    rst $38                                       ; $6c9c: $ff
    rst $38                                       ; $6c9d: $ff
    rst $38                                       ; $6c9e: $ff
    rst $38                                       ; $6c9f: $ff
    nop                                           ; $6ca0: $00
    rst $38                                       ; $6ca1: $ff
    rst $38                                       ; $6ca2: $ff
    rst $38                                       ; $6ca3: $ff
    rst $38                                       ; $6ca4: $ff
    rst $38                                       ; $6ca5: $ff
    rst $38                                       ; $6ca6: $ff
    rst $38                                       ; $6ca7: $ff
    rst $38                                       ; $6ca8: $ff
    rst $38                                       ; $6ca9: $ff
    db $f4                                        ; $6caa: $f4
    nop                                           ; $6cab: $00
    nop                                           ; $6cac: $00
    nop                                           ; $6cad: $00
    and l                                         ; $6cae: $a5
    nop                                           ; $6caf: $00
    rst $38                                       ; $6cb0: $ff
    push hl                                       ; $6cb1: $e5
    ld [hl-], a                                   ; $6cb2: $32
    or $e6                                        ; $6cb3: $f6 $e6
    rst $30                                       ; $6cb5: $f7
    rst $20                                       ; $6cb6: $e7
    dec [hl]                                      ; $6cb7: $35
    db $ec                                        ; $6cb8: $ec
    xor $37                                       ; $6cb9: $ee $37
    db $ec                                        ; $6cbb: $ec
    jp c, $c7f0                                   ; $6cbc: $da $f0 $c7

    add sp, $33                                   ; $6cbf: $e8 $33
    ld sp, $f2e0                                  ; $6cc1: $31 $e0 $f2

Jump_059_6cc4:
    ld [hl], $30                                  ; $6cc4: $36 $30
    scf                                           ; $6cc6: $37
    cp a                                          ; $6cc7: $bf
    ld h, $20                                     ; $6cc8: $26 $20
    daa                                           ; $6cca: $27
    db $10                                        ; $6ccb: $10
    ld d, $17                                     ; $6ccc: $16 $17
    jp nz, Jump_000_34f6                          ; $6cce: $c2 $f6 $34

    rst $38                                       ; $6cd1: $ff
    ld [hl], $32                                  ; $6cd2: $36 $32
    jr nc, jr_059_6d0d                            ; $6cd4: $30 $37

    ld sp, $3133                                  ; $6cd6: $31 $33 $31
    inc sp                                        ; $6cd9: $33
    nop                                           ; $6cda: $00
    and b                                         ; $6cdb: $a0
    ei                                            ; $6cdc: $fb
    rst $38                                       ; $6cdd: $ff
    rst $28                                       ; $6cde: $ef
    nop                                           ; $6cdf: $00
    nop                                           ; $6ce0: $00
    nop                                           ; $6ce1: $00

Jump_059_6ce2:
    ld [$1a6c], a                                 ; $6ce2: $ea $6c $1a
    ld l, l                                       ; $6ce5: $6d
    adc c                                         ; $6ce6: $89
    ld l, a                                       ; $6ce7: $6f
    ld c, e                                       ; $6ce8: $4b
    ld [hl], c                                    ; $6ce9: $71
    ld hl, sp+$03                                 ; $6cea: $f8 $03
    ld c, h                                       ; $6cec: $4c
    inc bc                                        ; $6ced: $03
    ld d, e                                       ; $6cee: $53
    ld bc, $008a                                  ; $6cef: $01 $8a $00
    ldh a, [$03]                                  ; $6cf2: $f0 $03
    ld hl, sp+$03                                 ; $6cf4: $f8 $03
    ld c, h                                       ; $6cf6: $4c
    inc bc                                        ; $6cf7: $03
    ld d, e                                       ; $6cf8: $53
    ld bc, $47ff                                  ; $6cf9: $01 $ff $47
    ldh a, [rP1]                                  ; $6cfc: $f0 $00
    ld e, l                                       ; $6cfe: $5d
    add hl, de                                    ; $6cff: $19
    ld c, h                                       ; $6d00: $4c
    inc bc                                        ; $6d01: $03
    ld [$0825], sp                                ; $6d02: $08 $25 $08
    dec h                                         ; $6d05: $25
    ld [$0825], sp                                ; $6d06: $08 $25 $08
    dec h                                         ; $6d09: $25
    ld [$0825], sp                                ; $6d0a: $08 $25 $08

jr_059_6d0d:
    dec h                                         ; $6d0d: $25
    ld [$0825], sp                                ; $6d0e: $08 $25 $08
    dec h                                         ; $6d11: $25
    ld [$0825], sp                                ; $6d12: $08 $25 $08
    dec h                                         ; $6d15: $25
    ld [$0825], sp                                ; $6d16: $08 $25 $08
    dec h                                         ; $6d19: $25
    rst $38                                       ; $6d1a: $ff
    ld a, [hl+]                                   ; $6d1b: $2a
    ld c, d                                       ; $6d1c: $4a
    ld c, d                                       ; $6d1d: $4a
    ld c, d                                       ; $6d1e: $4a
    ld a, [bc]                                    ; $6d1f: $0a
    ld a, [bc]                                    ; $6d20: $0a
    ld a, [bc]                                    ; $6d21: $0a
    ld l, d                                       ; $6d22: $6a
    rst $38                                       ; $6d23: $ff
    dec bc                                        ; $6d24: $0b
    ld l, e                                       ; $6d25: $6b
    ld l, e                                       ; $6d26: $6b
    ld c, e                                       ; $6d27: $4b
    ld l, e                                       ; $6d28: $6b
    ld c, e                                       ; $6d29: $4b
    ld c, e                                       ; $6d2a: $4b
    dec bc                                        ; $6d2b: $0b
    sbc $f4                                       ; $6d2c: $de $f4
    ldh [$0a], a                                  ; $6d2e: $e0 $0a
    inc c                                         ; $6d30: $0c
    ld c, h                                       ; $6d31: $4c
    inc c                                         ; $6d32: $0c
    rst $38                                       ; $6d33: $ff
    add sp, $4c                                   ; $6d34: $e8 $4c
    ld c, h                                       ; $6d36: $4c
    and h                                         ; $6d37: $a4
    ldh a, [$eb]                                  ; $6d38: $f0 $eb
    db $f4                                        ; $6d3a: $f4
    db $eb                                        ; $6d3b: $eb
    ld c, d                                       ; $6d3c: $4a
    cp a                                          ; $6d3d: $bf
    ldh [$c1], a                                  ; $6d3e: $e0 $c1
    db $e3                                        ; $6d40: $e3
    dec bc                                        ; $6d41: $0b
    rst $38                                       ; $6d42: $ff
    ldh [rWX], a                                  ; $6d43: $e0 $4b
    add c                                         ; $6d45: $81
    ld c, e                                       ; $6d46: $4b
    ret nz                                        ; $6d47: $c0

    pop hl                                        ; $6d48: $e1
    adc $e0                                       ; $6d49: $ce $e0
    ret                                           ; $6d4b: $c9


    ldh [$fd], a                                  ; $6d4c: $e0 $fd
    ld [c], a                                     ; $6d4e: $e2
    ld hl, sp-$1d                                 ; $6d4f: $f8 $e3
    or b                                          ; $6d51: $b0
    db $e3                                        ; $6d52: $e3
    inc l                                         ; $6d53: $2c
    db $fc                                        ; $6d54: $fc
    ret nz                                        ; $6d55: $c0

    ld a, [c]                                     ; $6d56: $f2
    cp a                                          ; $6d57: $bf
    ldh [$0a], a                                  ; $6d58: $e0 $0a
    ld l, d                                       ; $6d5a: $6a
    ld l, e                                       ; $6d5b: $6b
    dec bc                                        ; $6d5c: $0b
    ld l, e                                       ; $6d5d: $6b
    dec hl                                        ; $6d5e: $2b
    pop hl                                        ; $6d5f: $e1
    dec hl                                        ; $6d60: $2b
    cp a                                          ; $6d61: $bf
    ld [c], a                                     ; $6d62: $e2
    ret nz                                        ; $6d63: $c0

    db $e4                                        ; $6d64: $e4
    db $fd                                        ; $6d65: $fd
    push hl                                       ; $6d66: $e5
    or l                                          ; $6d67: $b5
    db $e3                                        ; $6d68: $e3
    ld c, h                                       ; $6d69: $4c
    inc c                                         ; $6d6a: $0c
    inc l                                         ; $6d6b: $2c
    or d                                          ; $6d6c: $b2
    jp Jump_000_2ce0                              ; $6d6d: $c3 $e0 $2c


    ld a, [$c0e2]                                 ; $6d70: $fa $e2 $c0
    xor $4a                                       ; $6d73: $ee $4a
    ld a, [hl+]                                   ; $6d75: $2a
    ld b, e                                       ; $6d76: $43
    ldh [$0b], a                                  ; $6d77: $e0 $0b
    adc e                                         ; $6d79: $8b
    dec bc                                        ; $6d7a: $0b
    dec hl                                        ; $6d7b: $2b
    cp a                                          ; $6d7c: $bf
    ld [c], a                                     ; $6d7d: $e2
    dec hl                                        ; $6d7e: $2b
    ret nz                                        ; $6d7f: $c0

    jp hl                                         ; $6d80: $e9


    ld b, a                                       ; $6d81: $47
    db $e3                                        ; $6d82: $e3
    ld b, b                                       ; $6d83: $40
    pop hl                                        ; $6d84: $e1
    inc l                                         ; $6d85: $2c
    xor b                                         ; $6d86: $a8
    ret nz                                        ; $6d87: $c0

jr_059_6d88:
    ld [c], a                                     ; $6d88: $e2
    ld a, [$c0e2]                                 ; $6d89: $fa $e2 $c0
    rst $28                                       ; $6d8c: $ef
    ld a, [bc]                                    ; $6d8d: $0a
    ld b, [hl]                                    ; $6d8e: $46
    ldh [rOCPD], a                                ; $6d8f: $e0 $6b
    ret nz                                        ; $6d91: $c0

    ldh [rOCPD], a                                ; $6d92: $e0 $6b
    ld bc, $c04b                                  ; $6d94: $01 $4b $c0
    db $e4                                        ; $6d97: $e4
    inc c                                         ; $6d98: $0c
    db $e3                                        ; $6d99: $e3
    ld b, a                                       ; $6d9a: $47
    db $e4                                        ; $6d9b: $e4
    ld b, b                                       ; $6d9c: $40
    ld [c], a                                     ; $6d9d: $e2
    add a                                         ; $6d9e: $87
    ld [c], a                                     ; $6d9f: $e2
    pop bc                                        ; $6da0: $c1
    push hl                                       ; $6da1: $e5
    jr c, jr_059_6d88                             ; $6da2: $38 $e4

    ld hl, sp+$31                                 ; $6da4: $f8 $31
    db $e3                                        ; $6da6: $e3
    pop bc                                        ; $6da7: $c1
    pop bc                                        ; $6da8: $c1
    ld b, d                                       ; $6da9: $42
    ldh [$0b], a                                  ; $6daa: $e0 $0b
    ld c, e                                       ; $6dac: $4b
    dec hl                                        ; $6dad: $2b
    dec hl                                        ; $6dae: $2b
    ld c, e                                       ; $6daf: $4b
    nop                                           ; $6db0: $00
    pop bc                                        ; $6db1: $c1
    ret nz                                        ; $6db2: $c0

    ret nz                                        ; $6db3: $c0

    call nz, $e382                                ; $6db4: $c4 $82 $e3
    ld b, b                                       ; $6db7: $40
    add sp, -$3f                                  ; $6db8: $e8 $c1
    db $e3                                        ; $6dba: $e3
    cp $d0                                        ; $6dbb: $fe $d0
    ret nz                                        ; $6dbd: $c0

    db $e4                                        ; $6dbe: $e4
    call nz, Call_000_00e0                        ; $6dbf: $c4 $e0 $00
    cp a                                          ; $6dc2: $bf
    pop hl                                        ; $6dc3: $e1
    ret nz                                        ; $6dc4: $c0

    db $e3                                        ; $6dc5: $e3
    add c                                         ; $6dc6: $81
    jp $c67b                                      ; $6dc7: $c3 $7b $c6


    ld a, a                                       ; $6dca: $7f
    jp c, $c141                                   ; $6dcb: $da $41 $c1

    add $c0                                       ; $6dce: $c6 $c0
    add h                                         ; $6dd0: $84
    ldh [rP1], a                                  ; $6dd1: $e0 $00
    ld a, [hl]                                    ; $6dd3: $7e
    ldh [$38], a                                  ; $6dd4: $e0 $38
    ldh [rLCDC], a                                ; $6dd6: $e0 $40
    db $e3                                        ; $6dd8: $e3
    pop bc                                        ; $6dd9: $c1
    db $e4                                        ; $6dda: $e4
    ld a, a                                       ; $6ddb: $7f
    jp z, $f780                                   ; $6ddc: $ca $80 $f7

    ret nz                                        ; $6ddf: $c0

    db $e3                                        ; $6de0: $e3
    ld b, b                                       ; $6de1: $40
    pop bc                                        ; $6de2: $c1
    rst $00                                       ; $6de3: $c7
    ld l, e                                       ; $6de4: $6b
    ld a, [bc]                                    ; $6de5: $0a
    ld a, [hl+]                                   ; $6de6: $2a
    ret nz                                        ; $6de7: $c0

    srl a                                         ; $6de8: $cb $3f
    add sp, $40                                   ; $6dea: $e8 $40
    or $4a                                        ; $6dec: $f6 $4a
    dec hl                                        ; $6dee: $2b
    dec b                                         ; $6def: $05
    dec bc                                        ; $6df0: $0b
    inc b                                         ; $6df1: $04
    db $e3                                        ; $6df2: $e3
    ld l, e                                       ; $6df3: $6b
    pop bc                                        ; $6df4: $c1
    pop hl                                        ; $6df5: $e1
    cp a                                          ; $6df6: $bf
    ldh [$c0], a                                  ; $6df7: $e0 $c0
    call nz, $a1c8                                ; $6df9: $c4 $c8 $a1
    dec [hl]                                      ; $6dfc: $35
    call nz, $c070                                ; $6dfd: $c4 $70 $c0
    cp b                                          ; $6e00: $b8
    ret nz                                        ; $6e01: $c0

    pop hl                                        ; $6e02: $e1
    call nz, $c0c1                                ; $6e03: $c4 $c1 $c0
    and c                                         ; $6e06: $a1
    ld a, [bc]                                    ; $6e07: $0a
    ld a, [hl+]                                   ; $6e08: $2a
    ld a, [hl+]                                   ; $6e09: $2a
    cp a                                          ; $6e0a: $bf
    pop hl                                        ; $6e0b: $e1
    ld b, b                                       ; $6e0c: $40
    rst $00                                       ; $6e0d: $c7
    jp $e2fc                                      ; $6e0e: $c3 $fc $e2


    ld [hl], l                                    ; $6e11: $75

jr_059_6e12:
    add $6e                                       ; $6e12: $c6 $6e
    and l                                         ; $6e14: $a5
    ld a, h                                       ; $6e15: $7c
    res 0, b                                      ; $6e16: $cb $80
    db $e3                                        ; $6e18: $e3
    dec bc                                        ; $6e19: $0b

jr_059_6e1a:
    ld a, a                                       ; $6e1a: $7f
    ldh [rNR32], a                                ; $6e1b: $e0 $1c
    rst $38                                       ; $6e1d: $ff
    and b                                         ; $6e1e: $a0
    pop bc                                        ; $6e1f: $c1
    db $e3                                        ; $6e20: $e3
    ld a, [bc]                                    ; $6e21: $0a
    ld a, [bc]                                    ; $6e22: $0a
    ld a, [hl+]                                   ; $6e23: $2a
    ld c, l                                       ; $6e24: $4d
    and l                                         ; $6e25: $a5
    add hl, sp                                    ; $6e26: $39
    and h                                         ; $6e27: $a4
    ccf                                           ; $6e28: $3f
    xor d                                         ; $6e29: $aa
    inc b                                         ; $6e2a: $04
    cp l                                          ; $6e2b: $bd
    xor l                                         ; $6e2c: $ad
    ld bc, $2aa1                                  ; $6e2d: $01 $a1 $2a
    add l                                         ; $6e30: $85
    and d                                         ; $6e31: $a2
    inc b                                         ; $6e32: $04
    ldh [$c0], a                                  ; $6e33: $e0 $c0
    db $e3                                        ; $6e35: $e3
    add b                                         ; $6e36: $80
    pop bc                                        ; $6e37: $c1
    ld b, $c4                                     ; $6e38: $06 $c4
    jr nc, jr_059_6e76                            ; $6e3a: $30 $3a

    and h                                         ; $6e3c: $a4
    ld a, a                                       ; $6e3d: $7f
    add sp, $3b                                   ; $6e3e: $e8 $3b
    xor l                                         ; $6e40: $ad
    pop bc                                        ; $6e41: $c1
    pop hl                                        ; $6e42: $e1
    ld a, [hl+]                                   ; $6e43: $2a
    ld a, [hl+]                                   ; $6e44: $2a
    ld b, c                                       ; $6e45: $41
    ldh [$c1], a                                  ; $6e46: $e0 $c1
    db $e3                                        ; $6e48: $e3
    add b                                         ; $6e49: $80
    ret nz                                        ; $6e4a: $c0

    ld [c], a                                     ; $6e4b: $e2
    res 0, d                                      ; $6e4c: $cb $82
    ret nz                                        ; $6e4e: $c0

    and l                                         ; $6e4f: $a5
    add b                                         ; $6e50: $80
    db $ed                                        ; $6e51: $ed
    db $fd                                        ; $6e52: $fd
    db $e3                                        ; $6e53: $e3
    ld [hl], l                                    ; $6e54: $75
    and [hl]                                      ; $6e55: $a6
    pop bc                                        ; $6e56: $c1
    ld [c], a                                     ; $6e57: $e2
    ld a, [hl+]                                   ; $6e58: $2a
    ld bc, $042a                                  ; $6e59: $01 $2a $04
    db $e3                                        ; $6e5c: $e3
    ret nz                                        ; $6e5d: $c0

    push hl                                       ; $6e5e: $e5
    dec b                                         ; $6e5f: $05
    and l                                         ; $6e60: $a5
    ld a, l                                       ; $6e61: $7d
    jp $ea80                                      ; $6e62: $c3 $80 $ea


    and $aa                                       ; $6e65: $e6 $aa
    ld e, c                                       ; $6e67: $59
    add b                                         ; $6e68: $80
    nop                                           ; $6e69: $00
    ret                                           ; $6e6a: $c9


    db $e4                                        ; $6e6b: $e4
    adc b                                         ; $6e6c: $88
    ret nz                                        ; $6e6d: $c0

    ret nz                                        ; $6e6e: $c0

    rst $20                                       ; $6e6f: $e7
    add [hl]                                      ; $6e70: $86
    and e                                         ; $6e71: $a3
    ld b, c                                       ; $6e72: $41
    and h                                         ; $6e73: $a4
    ld a, a                                       ; $6e74: $7f
    and a                                         ; $6e75: $a7

jr_059_6e76:
    ld a, e                                       ; $6e76: $7b
    adc h                                         ; $6e77: $8c
    ld [hl], c                                    ; $6e78: $71
    add e                                         ; $6e79: $83
    nop                                           ; $6e7a: $00
    sub l                                         ; $6e7b: $95
    rst $20                                       ; $6e7c: $e7
    adc l                                         ; $6e7d: $8d
    and $48                                       ; $6e7e: $e6 $48
    ret z                                         ; $6e80: $c8

    db $fd                                        ; $6e81: $fd
    or d                                          ; $6e82: $b2
    nop                                           ; $6e83: $00
    and [hl]                                      ; $6e84: $a6
    ld [hl], c                                    ; $6e85: $71
    add d                                         ; $6e86: $82
    call nc, $c678                                ; $6e87: $d4 $78 $c6
    ld [hl], h                                    ; $6e8a: $74
    nop                                           ; $6e8b: $00
    jr c, jr_059_6e12                             ; $6e8c: $38 $84

    ld [hl], c                                    ; $6e8e: $71
    add e                                         ; $6e8f: $83
    call nc, $c67b                                ; $6e90: $d4 $7b $c6
    ld [hl], d                                    ; $6e93: $72
    jr c, jr_059_6e1a                             ; $6e94: $38 $84

    ld [hl-], a                                   ; $6e96: $32
    add e                                         ; $6e97: $83
    call nc, $c67b                                ; $6e98: $d4 $7b $c6
    ld [hl], d                                    ; $6e9b: $72
    nop                                           ; $6e9c: $00
    pop bc                                        ; $6e9d: $c1
    and $c0                                       ; $6e9e: $e6 $c0
    jp hl                                         ; $6ea0: $e9


    call nc, $c674                                ; $6ea1: $d4 $74 $c6
    ld [hl], c                                    ; $6ea4: $71
    cp c                                          ; $6ea5: $b9
    ld l, e                                       ; $6ea6: $6b
    call nc, $c65a                                ; $6ea7: $d4 $5a $c6
    ld l, h                                       ; $6eaa: $6c
    ld a, [hl-]                                   ; $6eab: $3a
    ldh a, [rP1]                                  ; $6eac: $f0 $00
    call nc, $cf59                                ; $6eae: $d4 $59 $cf
    ld d, d                                       ; $6eb1: $52
    ld b, b                                       ; $6eb2: $40
    db $f4                                        ; $6eb3: $f4
    call nc, $8f51                                ; $6eb4: $d4 $51 $8f
    ld b, [hl]                                    ; $6eb7: $46
    ret nz                                        ; $6eb8: $c0

    adc $22                                       ; $6eb9: $ce $22
    ld c, e                                       ; $6ebb: $4b
    call nc, SerialTransferCompleteInterrupt      ; $6ebc: $d4 $58 $00
    cp d                                          ; $6ebf: $ba
    db $e3                                        ; $6ec0: $e3
    add [hl]                                      ; $6ec1: $86
    ld d, d                                       ; $6ec2: $52
    cp [hl]                                       ; $6ec3: $be
    db $eb                                        ; $6ec4: $eb
    call nc, $8853                                ; $6ec5: $d4 $53 $88
    ld b, c                                       ; $6ec8: $41
    add [hl]                                      ; $6ec9: $86
    ld d, l                                       ; $6eca: $55
    ld a, a                                       ; $6ecb: $7f
    jp hl                                         ; $6ecc: $e9


    call nc, Call_000_0055                        ; $6ecd: $d4 $55 $00
    adc [hl]                                      ; $6ed0: $8e
    ld b, l                                       ; $6ed1: $45
    pop bc                                        ; $6ed2: $c1
    ld hl, sp-$2c                                 ; $6ed3: $f8 $d4
    ld e, d                                       ; $6ed5: $5a
    ld a, d                                       ; $6ed6: $7a
    and $41                                       ; $6ed7: $e6 $41
    rst $30                                       ; $6ed9: $f7
    call nc, $c55f                                ; $6eda: $d4 $5f $c5
    ei                                            ; $6edd: $fb
    call nc, $005a                                ; $6ede: $d4 $5a $00
    add b                                         ; $6ee1: $80
    rst $38                                       ; $6ee2: $ff
    call nc, $c05b                                ; $6ee3: $d4 $5b $c0
    rst $38                                       ; $6ee6: $ff
    call nc, Call_000_1b59                        ; $6ee7: $d4 $59 $1b
    ldh a, [$b6]                                  ; $6eea: $f0 $b6
    rrca                                          ; $6eec: $0f
    call nc, Call_000_1658                        ; $6eed: $d4 $58 $16
    pop de                                        ; $6ef0: $d1
    nop                                           ; $6ef1: $00
    or [hl]                                       ; $6ef2: $b6
    dec c                                         ; $6ef3: $0d
    call nc, $5559                                ; $6ef4: $d4 $59 $55
    rst $08                                       ; $6ef7: $cf
    ldh a, [$92]                                  ; $6ef8: $f0 $92
    call nc, Call_059_4056                        ; $6efa: $d4 $56 $40
    ld a, [c]                                     ; $6efd: $f2
    or [hl]                                       ; $6efe: $b6
    dec c                                         ; $6eff: $0d
    call nc, Call_000_005c                        ; $6f00: $d4 $5c $00
    ld d, l                                       ; $6f03: $55
    xor [hl]                                      ; $6f04: $ae
    ld l, e                                       ; $6f05: $6b
    pop af                                        ; $6f06: $f1
    call nc, Call_000_3f54                        ; $6f07: $d4 $54 $3f
    ld a, [c]                                     ; $6f0a: $f2
    ld [hl], $0e                                  ; $6f0b: $36 $0e
    rlca                                          ; $6f0d: $07
    and [hl]                                      ; $6f0e: $a6
    cp d                                          ; $6f0f: $ba
    db $fc                                        ; $6f10: $fc
    or [hl]                                       ; $6f11: $b6
    dec e                                         ; $6f12: $1d
    nop                                           ; $6f13: $00
    dec h                                         ; $6f14: $25
    or b                                          ; $6f15: $b0
    ld bc, $b625                                  ; $6f16: $01 $25 $b6
    rra                                           ; $6f19: $1f
    ld c, $d8                                     ; $6f1a: $0e $d8
    ld [c], a                                     ; $6f1c: $e2
    cp a                                          ; $6f1d: $bf
    sbc c                                         ; $6f1e: $99
    ld [hl], h                                    ; $6f1f: $74
    ld [c], a                                     ; $6f20: $e2
    cp a                                          ; $6f21: $bf
    ld a, [hl]                                    ; $6f22: $7e
    rst $38                                       ; $6f23: $ff
    nop                                           ; $6f24: $00
    ld [c], a                                     ; $6f25: $e2
    cp a                                          ; $6f26: $bf
    add b                                         ; $6f27: $80
    ld hl, sp-$79                                 ; $6f28: $f8 $87
    inc h                                         ; $6f2a: $24
    ld [c], a                                     ; $6f2b: $e2
    cp a                                          ; $6f2c: $bf
    ld b, b                                       ; $6f2d: $40
    ei                                            ; $6f2e: $fb
    ld [c], a                                     ; $6f2f: $e2
    cp a                                          ; $6f30: $bf
    ld c, $db                                     ; $6f31: $0e $db
    ld [c], a                                     ; $6f33: $e2
    cp a                                          ; $6f34: $bf
    nop                                           ; $6f35: $00
    and $57                                       ; $6f36: $e6 $57
    halt                                          ; $6f38: $76
    dec c                                         ; $6f39: $0d
    rst $38                                       ; $6f3a: $ff
    rst $38                                       ; $6f3b: $ff
    inc c                                         ; $6f3c: $0c
    ld d, [hl]                                    ; $6f3d: $56
    call $ffbf                                    ; $6f3e: $cd $bf $ff
    rst $38                                       ; $6f41: $ff
    rst $38                                       ; $6f42: $ff
    rst $38                                       ; $6f43: $ff
    sub [hl]                                      ; $6f44: $96
    rst $38                                       ; $6f45: $ff
    nop                                           ; $6f46: $00
    reti                                          ; $6f47: $d9


    or c                                          ; $6f48: $b1
    rst $38                                       ; $6f49: $ff
    rst $38                                       ; $6f4a: $ff
    rst $38                                       ; $6f4b: $ff
    rst $38                                       ; $6f4c: $ff
    rst $38                                       ; $6f4d: $ff
    rst $38                                       ; $6f4e: $ff
    rst $38                                       ; $6f4f: $ff
    rst $38                                       ; $6f50: $ff
    call nz, $ff4f                                ; $6f51: $c4 $4f $ff
    rst $38                                       ; $6f54: $ff
    rst $38                                       ; $6f55: $ff
    rst $38                                       ; $6f56: $ff
    nop                                           ; $6f57: $00
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
    nop                                           ; $6f77: $00
    cp a                                          ; $6f78: $bf
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
    db $ec                                        ; $6f84: $ec
    rrca                                          ; $6f85: $0f
    nop                                           ; $6f86: $00
    nop                                           ; $6f87: $00
    nop                                           ; $6f88: $00
    rst $38                                       ; $6f89: $ff
    adc e                                         ; $6f8a: $8b
    ld c, [hl]                                    ; $6f8b: $4e
    ld c, [hl]                                    ; $6f8c: $4e
    ld c, [hl]                                    ; $6f8d: $4e
    adc b                                         ; $6f8e: $88
    adc b                                         ; $6f8f: $88
    adc b                                         ; $6f90: $88
    adc h                                         ; $6f91: $8c
    rst $38                                       ; $6f92: $ff
    ld h, b                                       ; $6f93: $60
    ld b, a                                       ; $6f94: $47
    ld b, [hl]                                    ; $6f95: $46
    ld d, h                                       ; $6f96: $54
    ld d, l                                       ; $6f97: $55
    ld b, [hl]                                    ; $6f98: $46
    ld b, a                                       ; $6f99: $47
    ld h, c                                       ; $6f9a: $61
    dec h                                         ; $6f9b: $25
    adc d                                         ; $6f9c: $8a
    rst $38                                       ; $6f9d: $ff
    ldh [rP1], a                                  ; $6f9e: $e0 $00
    rst $38                                       ; $6fa0: $ff
    rst $38                                       ; $6fa1: $ff
    rst $20                                       ; $6fa2: $e7
    and $87                                       ; $6fa3: $e6 $87
    cp a                                          ; $6fa5: $bf

jr_059_6fa6:
    ldh [$c1], a                                  ; $6fa6: $e0 $c1
    pop hl                                        ; $6fa8: $e1
    scf                                           ; $6fa9: $37
    scf                                           ; $6faa: $37
    ld [hl], $68                                  ; $6fab: $36 $68
    rst $38                                       ; $6fad: $ff
    ldh [$36], a                                  ; $6fae: $e0 $36
    ld c, c                                       ; $6fb0: $49
    ret nz                                        ; $6fb1: $c0

    rst $38                                       ; $6fb2: $ff
    ret nz                                        ; $6fb3: $c0

    db $ec                                        ; $6fb4: $ec
    cp $bf                                        ; $6fb5: $fe $bf
    ldh [$88], a                                  ; $6fb7: $e0 $88
    adc h                                         ; $6fb9: $8c
    ld e, a                                       ; $6fba: $5f
    ld sp, $6939                                  ; $6fbb: $31 $39 $69
    ld l, l                                       ; $6fbe: $6d
    sbc a                                         ; $6fbf: $9f
    ld l, h                                       ; $6fc0: $6c
    ld l, h                                       ; $6fc1: $6c
    ld l, l                                       ; $6fc2: $6d
    ld l, c                                       ; $6fc3: $69
    add hl, sp                                    ; $6fc4: $39
    ret nz                                        ; $6fc5: $c0

    rst $38                                       ; $6fc6: $ff
    ret nz                                        ; $6fc7: $c0

    db $ed                                        ; $6fc8: $ed
    add a                                         ; $6fc9: $87
    rst $38                                       ; $6fca: $ff
    adc e                                         ; $6fcb: $8b
    adc h                                         ; $6fcc: $8c
    ld e, e                                       ; $6fcd: $5b
    ld e, [hl]                                    ; $6fce: $5e
    ld sp, $6952                                  ; $6fcf: $31 $52 $69
    ld l, e                                       ; $6fd2: $6b
    sbc a                                         ; $6fd3: $9f
    ld l, l                                       ; $6fd4: $6d
    ld l, l                                       ; $6fd5: $6d
    ld l, e                                       ; $6fd6: $6b
    ld l, c                                       ; $6fd7: $69
    ld d, d                                       ; $6fd8: $52
    ret nz                                        ; $6fd9: $c0

    rst $38                                       ; $6fda: $ff
    ret nz                                        ; $6fdb: $c0

    xor $87                                       ; $6fdc: $ee $87
    cp a                                          ; $6fde: $bf
    ld e, e                                       ; $6fdf: $5b
    ld h, b                                       ; $6fe0: $60
    ld sp, $423c                                  ; $6fe1: $31 $3c $42
    jr nc, jr_059_6fa6                            ; $6fe4: $30 $c0

    ld [c], a                                     ; $6fe6: $e2
    ld d, e                                       ; $6fe7: $53
    db $fc                                        ; $6fe8: $fc
    ret nz                                        ; $6fe9: $c0

    rst $38                                       ; $6fea: $ff
    ret nz                                        ; $6feb: $c0

    rst $28                                       ; $6fec: $ef

jr_059_6fed:
    ld e, a                                       ; $6fed: $5f
    ld sp, $4249                                  ; $6fee: $31 $49 $42
    ld l, l                                       ; $6ff1: $6d
    jr nc, jr_059_6fed                            ; $6ff2: $30 $f9

    jr nc, jr_059_7036                            ; $6ff4: $30 $40

    rst $38                                       ; $6ff6: $ff
    add b                                         ; $6ff7: $80
    db $f4                                        ; $6ff8: $f4
    ld e, [hl]                                    ; $6ff9: $5e
    ld sp, $6d39                                  ; $6ffa: $31 $39 $6d
    ld l, l                                       ; $6ffd: $6d
    cp b                                          ; $6ffe: $b8
    cp a                                          ; $6fff: $bf
    ldh [$c0], a                                  ; $7000: $e0 $c0
    rst $18                                       ; $7002: $df
    ld b, b                                       ; $7003: $40
    di                                            ; $7004: $f3
    ld h, c                                       ; $7005: $61
    ld sp, $c052                                  ; $7006: $31 $52 $c0
    ldh [$6d], a                                  ; $7009: $e0 $6d
    and l                                         ; $700b: $a5
    ccf                                           ; $700c: $3f
    ld b, b                                       ; $700d: $40
    ret nz                                        ; $700e: $c0

    ld h, b                                       ; $700f: $60
    ret nz                                        ; $7010: $c0

    rst $38                                       ; $7011: $ff
    ret nz                                        ; $7012: $c0

    pop af                                        ; $7013: $f1
    ld d, e                                       ; $7014: $53
    add b                                         ; $7015: $80
    ldh [rOBP0], a                                ; $7016: $e0 $48
    ccf                                           ; $7018: $3f
    ld c, c                                       ; $7019: $49
    ld sp, $6031                                  ; $701a: $31 $31 $60
    adc [hl]                                      ; $701d: $8e
    adc a                                         ; $701e: $8f
    ret nz                                        ; $701f: $c0

    rst $38                                       ; $7020: $ff
    ld b, b                                       ; $7021: $40
    db $f4                                        ; $7022: $f4
    ld a, a                                       ; $7023: $7f
    add hl, sp                                    ; $7024: $39
    ld sp, $5c5d                                  ; $7025: $31 $5d $5c
    adc [hl]                                      ; $7028: $8e
    adc c                                         ; $7029: $89
    ld c, a                                       ; $702a: $4f
    cp a                                          ; $702b: $bf
    ldh [$fc], a                                  ; $702c: $e0 $fc
    jp z, $c0ff                                   ; $702e: $ca $ff $c0

    adc $4c                                       ; $7031: $ce $4c
    ld l, l                                       ; $7033: $6d
    ld c, h                                       ; $7034: $4c
    ld c, c                                       ; $7035: $49

jr_059_7036:
    ld e, [hl]                                    ; $7036: $5e
    ld e, e                                       ; $7037: $5b
    rst $00                                       ; $7038: $c7
    adc [hl]                                      ; $7039: $8e
    adc c                                         ; $703a: $89
    adc c                                         ; $703b: $89
    cp a                                          ; $703c: $bf
    pop hl                                        ; $703d: $e1
    jp z, $40ff                                   ; $703e: $ca $ff $40

    call z, Call_000_315e                         ; $7041: $cc $5e $31
    rra                                           ; $7044: $1f
    inc a                                         ; $7045: $3c
    ld d, h                                       ; $7046: $54
    inc a                                         ; $7047: $3c
    ld sp, $c15f                                  ; $7048: $31 $5f $c1
    pop hl                                        ; $704b: $e1
    cp a                                          ; $704c: $bf
    pop hl                                        ; $704d: $e1
    jp z, Jump_059_5eff                           ; $704e: $ca $ff $5e

    ret nz                                        ; $7051: $c0

    xor d                                         ; $7052: $aa
    adc l                                         ; $7053: $8d
    adc [hl]                                      ; $7054: $8e
    ld e, a                                       ; $7055: $5f
    ld sp, $e0ff                                  ; $7056: $31 $ff $e0
    ld h, b                                       ; $7059: $60
    pop bc                                        ; $705a: $c1
    db $e3                                        ; $705b: $e3
    ld hl, sp+$7e                                 ; $705c: $f8 $7e
    ldh [$ca], a                                  ; $705e: $e0 $ca
    rst $38                                       ; $7060: $ff
    ld b, b                                       ; $7061: $40
    xor c                                         ; $7062: $a9
    adc l                                         ; $7063: $8d
    adc c                                         ; $7064: $89
    adc c                                         ; $7065: $89
    adc [hl]                                      ; $7066: $8e
    ld e, h                                       ; $7067: $5c
    add c                                         ; $7068: $81
    ld e, l                                       ; $7069: $5d
    inc b                                         ; $706a: $04
    pop hl                                        ; $706b: $e1
    rst $38                                       ; $706c: $ff
    push hl                                       ; $706d: $e5
    jp z, $c0ff                                   ; $706e: $ca $ff $c0

    adc b                                         ; $7071: $88
    pop bc                                        ; $7072: $c1
    ldh [$bf], a                                  ; $7073: $e0 $bf
    ldh [$5b], a                                  ; $7075: $e0 $5b
    nop                                           ; $7077: $00
    inc b                                         ; $7078: $04
    ld [c], a                                     ; $7079: $e2
    ret nz                                        ; $707a: $c0

    rst $38                                       ; $707b: $ff
    rst $28                                       ; $707c: $ef
    xor $c1                                       ; $707d: $ee $c1
    ld [c], a                                     ; $707f: $e2
    ld a, [hl]                                    ; $7080: $7e
    ldh [$c1], a                                  ; $7081: $e0 $c1
    add sp, -$40                                  ; $7083: $e8 $c0
    rst $38                                       ; $7085: $ff
    rst $38                                       ; $7086: $ff
    rst $38                                       ; $7087: $ff
    nop                                           ; $7088: $00
    rst $38                                       ; $7089: $ff
    rst $38                                       ; $708a: $ff
    rst $38                                       ; $708b: $ff
    rst $38                                       ; $708c: $ff
    rst $38                                       ; $708d: $ff
    rst $38                                       ; $708e: $ff
    rst $38                                       ; $708f: $ff
    rst $38                                       ; $7090: $ff
    rst $38                                       ; $7091: $ff
    rst $38                                       ; $7092: $ff
    rst $38                                       ; $7093: $ff
    rst $38                                       ; $7094: $ff
    rst $38                                       ; $7095: $ff
    rst $38                                       ; $7096: $ff
    rst $38                                       ; $7097: $ff
    rst $38                                       ; $7098: $ff
    nop                                           ; $7099: $00
    rst $38                                       ; $709a: $ff
    rst $38                                       ; $709b: $ff
    rst $38                                       ; $709c: $ff
    rst $38                                       ; $709d: $ff
    rst $38                                       ; $709e: $ff
    rst $38                                       ; $709f: $ff
    rst $38                                       ; $70a0: $ff
    rst $38                                       ; $70a1: $ff
    rst $38                                       ; $70a2: $ff
    rst $38                                       ; $70a3: $ff
    rst $38                                       ; $70a4: $ff
    rst $38                                       ; $70a5: $ff
    rst $38                                       ; $70a6: $ff
    rst $38                                       ; $70a7: $ff
    rst $38                                       ; $70a8: $ff
    rst $38                                       ; $70a9: $ff
    nop                                           ; $70aa: $00
    rst $38                                       ; $70ab: $ff
    rst $38                                       ; $70ac: $ff
    rst $38                                       ; $70ad: $ff
    rst $38                                       ; $70ae: $ff
    rst $38                                       ; $70af: $ff
    rst $38                                       ; $70b0: $ff
    rst $38                                       ; $70b1: $ff
    rst $38                                       ; $70b2: $ff
    rst $38                                       ; $70b3: $ff
    rst $38                                       ; $70b4: $ff
    rst $38                                       ; $70b5: $ff
    rst $38                                       ; $70b6: $ff
    rst $38                                       ; $70b7: $ff
    rst $38                                       ; $70b8: $ff
    rst $38                                       ; $70b9: $ff
    rst $38                                       ; $70ba: $ff
    nop                                           ; $70bb: $00
    rst $38                                       ; $70bc: $ff
    rst $38                                       ; $70bd: $ff
    rst $38                                       ; $70be: $ff
    rst $38                                       ; $70bf: $ff
    rst $38                                       ; $70c0: $ff
    rst $38                                       ; $70c1: $ff
    rst $38                                       ; $70c2: $ff
    rst $38                                       ; $70c3: $ff
    rst $38                                       ; $70c4: $ff
    rst $38                                       ; $70c5: $ff
    rst $38                                       ; $70c6: $ff
    rst $38                                       ; $70c7: $ff
    rst $38                                       ; $70c8: $ff
    rst $38                                       ; $70c9: $ff
    rst $38                                       ; $70ca: $ff
    rst $38                                       ; $70cb: $ff
    nop                                           ; $70cc: $00
    rst $38                                       ; $70cd: $ff
    rst $38                                       ; $70ce: $ff
    rst $38                                       ; $70cf: $ff
    rst $38                                       ; $70d0: $ff
    rst $38                                       ; $70d1: $ff
    rst $38                                       ; $70d2: $ff
    rst $38                                       ; $70d3: $ff
    rst $38                                       ; $70d4: $ff
    rst $38                                       ; $70d5: $ff
    rst $38                                       ; $70d6: $ff
    rst $38                                       ; $70d7: $ff
    rst $38                                       ; $70d8: $ff
    rst $38                                       ; $70d9: $ff
    rst $38                                       ; $70da: $ff
    rst $38                                       ; $70db: $ff
    rst $38                                       ; $70dc: $ff
    nop                                           ; $70dd: $00
    rst $38                                       ; $70de: $ff
    rst $38                                       ; $70df: $ff
    rst $38                                       ; $70e0: $ff
    rst $38                                       ; $70e1: $ff
    rst $38                                       ; $70e2: $ff
    rst $38                                       ; $70e3: $ff
    rst $38                                       ; $70e4: $ff
    rst $38                                       ; $70e5: $ff
    rst $38                                       ; $70e6: $ff
    rst $38                                       ; $70e7: $ff
    rst $38                                       ; $70e8: $ff
    rst $38                                       ; $70e9: $ff
    rst $38                                       ; $70ea: $ff
    rst $38                                       ; $70eb: $ff
    rst $38                                       ; $70ec: $ff
    rst $38                                       ; $70ed: $ff
    nop                                           ; $70ee: $00
    rst $38                                       ; $70ef: $ff
    rst $38                                       ; $70f0: $ff
    rst $38                                       ; $70f1: $ff
    rst $38                                       ; $70f2: $ff
    rst $38                                       ; $70f3: $ff
    rst $38                                       ; $70f4: $ff
    rst $38                                       ; $70f5: $ff
    rst $38                                       ; $70f6: $ff
    rst $38                                       ; $70f7: $ff
    rst $38                                       ; $70f8: $ff
    rst $38                                       ; $70f9: $ff
    rst $38                                       ; $70fa: $ff
    rst $38                                       ; $70fb: $ff
    rst $38                                       ; $70fc: $ff
    rst $38                                       ; $70fd: $ff
    rst $38                                       ; $70fe: $ff
    nop                                           ; $70ff: $00
    rst $38                                       ; $7100: $ff
    rst $38                                       ; $7101: $ff
    rst $38                                       ; $7102: $ff
    rst $38                                       ; $7103: $ff
    rst $38                                       ; $7104: $ff
    rst $38                                       ; $7105: $ff
    rst $38                                       ; $7106: $ff
    rst $38                                       ; $7107: $ff
    rst $38                                       ; $7108: $ff
    rst $38                                       ; $7109: $ff
    rst $38                                       ; $710a: $ff
    rst $38                                       ; $710b: $ff
    rst $38                                       ; $710c: $ff
    rst $38                                       ; $710d: $ff
    rst $38                                       ; $710e: $ff
    rst $38                                       ; $710f: $ff
    nop                                           ; $7110: $00
    rst $38                                       ; $7111: $ff
    rst $38                                       ; $7112: $ff
    rst $38                                       ; $7113: $ff
    rst $38                                       ; $7114: $ff
    rst $38                                       ; $7115: $ff
    rst $38                                       ; $7116: $ff
    rst $38                                       ; $7117: $ff
    rst $38                                       ; $7118: $ff
    rst $38                                       ; $7119: $ff
    rst $38                                       ; $711a: $ff
    rst $38                                       ; $711b: $ff
    rst $38                                       ; $711c: $ff
    rst $38                                       ; $711d: $ff
    rst $38                                       ; $711e: $ff
    rst $38                                       ; $711f: $ff
    rst $38                                       ; $7120: $ff
    nop                                           ; $7121: $00
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
    nop                                           ; $7132: $00
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
    nop                                           ; $7143: $00
    rst $38                                       ; $7144: $ff
    rst $38                                       ; $7145: $ff
    rst $38                                       ; $7146: $ff
    db $f4                                        ; $7147: $f4
    nop                                           ; $7148: $00
    nop                                           ; $7149: $00
    nop                                           ; $714a: $00
    and l                                         ; $714b: $a5
    nop                                           ; $714c: $00
    rst $38                                       ; $714d: $ff

Call_059_714e:
    push hl                                       ; $714e: $e5
    ld [hl-], a                                   ; $714f: $32
    or $e6                                        ; $7150: $f6 $e6
    rst $30                                       ; $7152: $f7
    rst $20                                       ; $7153: $e7
    dec [hl]                                      ; $7154: $35
    db $ec                                        ; $7155: $ec
    xor $37                                       ; $7156: $ee $37
    db $ec                                        ; $7158: $ec
    jp c, $c7f0                                   ; $7159: $da $f0 $c7

    add sp, $33                                   ; $715c: $e8 $33
    ld sp, $f2e0                                  ; $715e: $31 $e0 $f2
    ld [hl], $30                                  ; $7161: $36 $30
    scf                                           ; $7163: $37
    cp a                                          ; $7164: $bf
    ld h, $20                                     ; $7165: $26 $20
    daa                                           ; $7167: $27
    db $10                                        ; $7168: $10
    ld d, $17                                     ; $7169: $16 $17
    jp nz, Jump_000_34f6                          ; $716b: $c2 $f6 $34

    rst $38                                       ; $716e: $ff
    ld [hl], $32                                  ; $716f: $36 $32
    jr nc, jr_059_71aa                            ; $7171: $30 $37

    ld sp, $3133                                  ; $7173: $31 $33 $31
    inc sp                                        ; $7176: $33
    nop                                           ; $7177: $00
    and b                                         ; $7178: $a0
    ei                                            ; $7179: $fb
    rst $38                                       ; $717a: $ff
    rst $28                                       ; $717b: $ef
    nop                                           ; $717c: $00
    nop                                           ; $717d: $00
    nop                                           ; $717e: $00
    add a                                         ; $717f: $87
    ld [hl], c                                    ; $7180: $71
    or a                                          ; $7181: $b7
    ld [hl], c                                    ; $7182: $71
    add hl, hl                                    ; $7183: $29
    ld [hl], h                                    ; $7184: $74
    inc bc                                        ; $7185: $03
    halt                                          ; $7186: $76
    ld hl, sp+$03                                 ; $7187: $f8 $03
    ld c, h                                       ; $7189: $4c
    inc bc                                        ; $718a: $03
    ld d, e                                       ; $718b: $53
    ld bc, $008a                                  ; $718c: $01 $8a $00
    ldh a, [$03]                                  ; $718f: $f0 $03
    ld hl, sp+$03                                 ; $7191: $f8 $03
    ld c, h                                       ; $7193: $4c
    inc bc                                        ; $7194: $03
    ld d, e                                       ; $7195: $53
    ld bc, $47ff                                  ; $7196: $01 $ff $47
    ldh a, [rP1]                                  ; $7199: $f0 $00
    ld e, l                                       ; $719b: $5d
    add hl, de                                    ; $719c: $19
    ld c, h                                       ; $719d: $4c
    inc bc                                        ; $719e: $03
    ld [$0825], sp                                ; $719f: $08 $25 $08
    dec h                                         ; $71a2: $25
    ld [$0825], sp                                ; $71a3: $08 $25 $08
    dec h                                         ; $71a6: $25
    ld [$0825], sp                                ; $71a7: $08 $25 $08

jr_059_71aa:
    dec h                                         ; $71aa: $25
    ld [$0825], sp                                ; $71ab: $08 $25 $08
    dec h                                         ; $71ae: $25
    ld [$0825], sp                                ; $71af: $08 $25 $08
    dec h                                         ; $71b2: $25
    ld [$0825], sp                                ; $71b3: $08 $25 $08
    dec h                                         ; $71b6: $25
    cp l                                          ; $71b7: $bd
    inc c                                         ; $71b8: $0c
    rst $38                                       ; $71b9: $ff
    ldh [$4c], a                                  ; $71ba: $e0 $4c
    ld c, h                                       ; $71bc: $4c
    inc c                                         ; $71bd: $0c
    dec bc                                        ; $71be: $0b
    rst $38                                       ; $71bf: $ff
    push hl                                       ; $71c0: $e5
    dec hl                                        ; $71c1: $2b
    add a                                         ; $71c2: $87
    ld a, [bc]                                    ; $71c3: $0a
    dec bc                                        ; $71c4: $0b
    dec bc                                        ; $71c5: $0b
    db $ec                                        ; $71c6: $ec
    db $e4                                        ; $71c7: $e4
    db $fd                                        ; $71c8: $fd
    push hl                                       ; $71c9: $e5
    pop hl                                        ; $71ca: $e1
    ldh [$dc], a                                  ; $71cb: $e0 $dc
    ld [c], a                                     ; $71cd: $e2
    inc l                                         ; $71ce: $2c
    or b                                          ; $71cf: $b0
    rst $38                                       ; $71d0: $ff
    ldh [$d1], a                                  ; $71d1: $e0 $d1
    pop hl                                        ; $71d3: $e1
    db $fc                                        ; $71d4: $fc
    xor $c1                                       ; $71d5: $ee $c1
    pop hl                                        ; $71d7: $e1
    ld l, e                                       ; $71d8: $6b
    ld c, e                                       ; $71d9: $4b
    rst $38                                       ; $71da: $ff
    ld [c], a                                     ; $71db: $e2
    dec bc                                        ; $71dc: $0b
    ld bc, $fd0b                                  ; $71dd: $01 $0b $fd
    ldh [$c0], a                                  ; $71e0: $e0 $c0
    jp hl                                         ; $71e2: $e9


    cp c                                          ; $71e3: $b9
    ldh [$b2], a                                  ; $71e4: $e0 $b2
    db $e4                                        ; $71e6: $e4
    pop bc                                        ; $71e7: $c1
    pop hl                                        ; $71e8: $e1
    ret nz                                        ; $71e9: $c0

    di                                            ; $71ea: $f3
    pop bc                                        ; $71eb: $c1
    pop hl                                        ; $71ec: $e1
    inc bc                                        ; $71ed: $03
    dec bc                                        ; $71ee: $0b
    ld l, e                                       ; $71ef: $6b
    rst $38                                       ; $71f0: $ff
    pop hl                                        ; $71f1: $e1
    cp a                                          ; $71f2: $bf
    ldh [$c0], a                                  ; $71f3: $e0 $c0
    pop hl                                        ; $71f5: $e1
    adc a                                         ; $71f6: $8f
    pop hl                                        ; $71f7: $e1
    ld a, [hl]                                    ; $71f8: $7e
    db $e4                                        ; $71f9: $e4
    db $fc                                        ; $71fa: $fc
    db $e3                                        ; $71fb: $e3
    ld b, b                                       ; $71fc: $40
    ld e, h                                       ; $71fd: $5c
    pop hl                                        ; $71fe: $e1
    add e                                         ; $71ff: $83
    ldh [$c1], a                                  ; $7200: $e0 $c1
    or $c0                                        ; $7202: $f6 $c0
    ldh [$80], a                                  ; $7204: $e0 $80
    ldh [$bb], a                                  ; $7206: $e0 $bb
    ldh [$2b], a                                  ; $7208: $e0 $2b
    cp a                                          ; $720a: $bf
    ldh [$81], a                                  ; $720b: $e0 $81
    ld a, [bc]                                    ; $720d: $0a
    ld l, l                                       ; $720e: $6d
    ld [c], a                                     ; $720f: $e2
    add d                                         ; $7210: $82
    db $e4                                        ; $7211: $e4
    ld b, b                                       ; $7212: $40
    add sp, -$01                                  ; $7213: $e8 $ff
    or $42                                        ; $7215: $f6 $42
    ldh [rSTAT], a                                ; $7217: $e0 $41
    ld [c], a                                     ; $7219: $e2
    ld l, e                                       ; $721a: $6b
    rlca                                          ; $721b: $07
    ld l, e                                       ; $721c: $6b
    dec hl                                        ; $721d: $2b
    ld l, e                                       ; $721e: $6b
    ld a, a                                       ; $721f: $7f
    pop hl                                        ; $7220: $e1
    inc l                                         ; $7221: $2c

jr_059_7222:
    db $e3                                        ; $7222: $e3
    ld a, [$f1e7]                                 ; $7223: $fa $e7 $f1
    call nz, $e504                                ; $7226: $c4 $04 $e5
    ret z                                         ; $7229: $c8

    ei                                            ; $722a: $fb
    call nz, $c7f4                                ; $722b: $c4 $f4 $c7
    ld [bc], a                                    ; $722e: $02
    ld [c], a                                     ; $722f: $e2
    dec hl                                        ; $7230: $2b
    ld a, d                                       ; $7231: $7a
    pop hl                                        ; $7232: $e1
    ld a, c                                       ; $7233: $79
    pop hl                                        ; $7234: $e1
    dec bc                                        ; $7235: $0b
    ld c, e                                       ; $7236: $4b
    nop                                           ; $7237: $00
    rst $20                                       ; $7238: $e7
    ret z                                         ; $7239: $c8

    or a                                          ; $723a: $b7
    db $e4                                        ; $723b: $e4
    jr c, jr_059_7222                             ; $723c: $38 $e4

    call nz, $bee0                                ; $723e: $c4 $e0 $be
    pop de                                        ; $7241: $d1
    add e                                         ; $7242: $83
    ret nz                                        ; $7243: $c0

    rst $00                                       ; $7244: $c7
    ret nz                                        ; $7245: $c0

    ld a, l                                       ; $7246: $7d
    pop bc                                        ; $7247: $c1
    add b                                         ; $7248: $80
    cp a                                          ; $7249: $bf
    pop hl                                        ; $724a: $e1
    ret nz                                        ; $724b: $c0

    ldh [$09], a                                  ; $724c: $e0 $09
    db $e3                                        ; $724e: $e3
    ret nz                                        ; $724f: $c0

    push bc                                       ; $7250: $c5
    ccf                                           ; $7251: $3f
    jp hl                                         ; $7252: $e9


    ld a, c                                       ; $7253: $79
    jp nz, $f000                                  ; $7254: $c2 $00 $f0

    dec hl                                        ; $7257: $2b
    nop                                           ; $7258: $00
    add c                                         ; $7259: $81
    pop hl                                        ; $725a: $e1
    ld sp, hl                                     ; $725b: $f9
    push hl                                       ; $725c: $e5
    ld [bc], a                                    ; $725d: $02
    pop hl                                        ; $725e: $e1
    ld a, $c4                                     ; $725f: $3e $c4
    add c                                         ; $7261: $81
    pop bc                                        ; $7262: $c1
    dec [hl]                                      ; $7263: $35
    call nz, $c454                                ; $7264: $c4 $54 $c4
    dec sp                                        ; $7267: $3b
    rst $08                                       ; $7268: $cf
    inc b                                         ; $7269: $04
    add d                                         ; $726a: $82
    pop bc                                        ; $726b: $c1
    ret nz                                        ; $726c: $c0

    and $6b                                       ; $726d: $e6 $6b
    ret nz                                        ; $726f: $c0

    pop hl                                        ; $7270: $e1
    ld c, h                                       ; $7271: $4c
    call nz, $e4fe                                ; $7272: $c4 $fe $e4
    ld [hl], l                                    ; $7275: $75
    add $d5                                       ; $7276: $c6 $d5
    and d                                         ; $7278: $a2
    nop                                           ; $7279: $00
    pop bc                                        ; $727a: $c1
    db $f4                                        ; $727b: $f4
    add b                                         ; $727c: $80
    db $e4                                        ; $727d: $e4
    cp b                                          ; $727e: $b8
    and c                                         ; $727f: $a1
    nop                                           ; $7280: $00
    db $e3                                        ; $7281: $e3
    ld b, $c5                                     ; $7282: $06 $c5
    ret nz                                        ; $7284: $c0

    bit 7, c                                      ; $7285: $cb $79
    rst $08                                       ; $7287: $cf
    ld b, e                                       ; $7288: $43
    jp nz, $c000                                  ; $7289: $c2 $00 $c0

    db $e3                                        ; $728c: $e3
    add h                                         ; $728d: $84
    pop hl                                        ; $728e: $e1
    ld [hl], a                                    ; $728f: $77
    and b                                         ; $7290: $a0
    ld b, b                                       ; $7291: $40
    pop bc                                        ; $7292: $c1
    adc $c5                                       ; $7293: $ce $c5
    cp [hl]                                       ; $7295: $be
    call nz, $c6c0                                ; $7296: $c4 $c0 $c6
    ld a, c                                       ; $7299: $79
    push bc                                       ; $729a: $c5
    nop                                           ; $729b: $00
    ld [hl], a                                    ; $729c: $77
    and [hl]                                      ; $729d: $a6
    ret                                           ; $729e: $c9


    db $e4                                        ; $729f: $e4
    push bc                                       ; $72a0: $c5
    and c                                         ; $72a1: $a1
    pop bc                                        ; $72a2: $c1
    db $e4                                        ; $72a3: $e4
    ld b, b                                       ; $72a4: $40
    ld [c], a                                     ; $72a5: $e2
    ccf                                           ; $72a6: $3f
    push hl                                       ; $72a7: $e5
    ret z                                         ; $72a8: $c8

    ret z                                         ; $72a9: $c8

    ccf                                           ; $72aa: $3f
    push hl                                       ; $72ab: $e5
    db $10                                        ; $72ac: $10
    call nz, Call_059_4aae                        ; $72ad: $c4 $ae $4a
    pop hl                                        ; $72b0: $e1
    add l                                         ; $72b1: $85
    and b                                         ; $72b2: $a0
    ld b, $e0                                     ; $72b3: $06 $e0
    ld l, h                                       ; $72b5: $6c
    db $f4                                        ; $72b6: $f4
    add b                                         ; $72b7: $80
    cp [hl]                                       ; $72b8: $be
    and b                                         ; $72b9: $a0
    ld c, $c6                                     ; $72ba: $0e $c6
    ret nz                                        ; $72bc: $c0

    add c                                         ; $72bd: $81
    call nz, $a678                                ; $72be: $c4 $78 $a6
    ret nz                                        ; $72c1: $c0

    ld a, [c]                                     ; $72c2: $f2
    jp Jump_059_42c0                              ; $72c3: $c3 $c0 $42


    pop bc                                        ; $72c6: $c1
    rst $00                                       ; $72c7: $c7
    jp $2c0c                                      ; $72c8: $c3 $0c $2c


    nop                                           ; $72cb: $00
    ld a, [hl]                                    ; $72cc: $7e
    and b                                         ; $72cd: $a0
    ld c, e                                       ; $72ce: $4b
    push hl                                       ; $72cf: $e5
    ld b, c                                       ; $72d0: $41
    and [hl]                                      ; $72d1: $a6
    ld a, a                                       ; $72d2: $7f
    xor b                                         ; $72d3: $a8
    ld b, c                                       ; $72d4: $41
    db $e4                                        ; $72d5: $e4
    or l                                          ; $72d6: $b5
    add [hl]                                      ; $72d7: $86
    ld c, c                                       ; $72d8: $49
    ret z                                         ; $72d9: $c8

    add c                                         ; $72da: $81
    pop hl                                        ; $72db: $e1
    inc bc                                        ; $72dc: $03
    inc c                                         ; $72dd: $0c
    inc l                                         ; $72de: $2c
    ld a, a                                       ; $72df: $7f
    ldh [rLCDC], a                                ; $72e0: $e0 $40
    rst $20                                       ; $72e2: $e7
    ret nz                                        ; $72e3: $c0

    add sp, $78                                   ; $72e4: $e8 $78
    and [hl]                                      ; $72e6: $a6
    ret nz                                        ; $72e7: $c0

    db $ec                                        ; $72e8: $ec
    set 0, e                                      ; $72e9: $cb $c3
    nop                                           ; $72eb: $00
    ld [$9fc3], sp                                ; $72ec: $08 $c3 $9f
    and d                                         ; $72ef: $a2
    ret nz                                        ; $72f0: $c0

    pop hl                                        ; $72f1: $e1
    ld h, h                                       ; $72f2: $64
    adc b                                         ; $72f3: $88
    ld a, c                                       ; $72f4: $79
    pop de                                        ; $72f5: $d1
    ld [hl], $88                                  ; $72f6: $36 $88
    add hl, de                                    ; $72f8: $19
    rst $20                                       ; $72f9: $e7
    ld de, $00e6                                  ; $72fa: $11 $e6 $00
    rst $00                                       ; $72fd: $c7
    add [hl]                                      ; $72fe: $86
    ld a, c                                       ; $72ff: $79
    sub $f6                                       ; $7300: $d6 $f6
    ld l, e                                       ; $7302: $6b
    push de                                       ; $7303: $d5
    ld [hl], d                                    ; $7304: $72
    db $ed                                        ; $7305: $ed
    pop af                                        ; $7306: $f1
    cp c                                          ; $7307: $b9
    add l                                         ; $7308: $85
    cp d                                          ; $7309: $ba
    ld l, h                                       ; $730a: $6c
    push de                                       ; $730b: $d5
    ld [hl], d                                    ; $730c: $72
    nop                                           ; $730d: $00
    db $ed                                        ; $730e: $ed
    db $f4                                        ; $730f: $f4
    db $ed                                        ; $7310: $ed
    ld h, d                                       ; $7311: $62
    or [hl]                                       ; $7312: $b6
    ld h, e                                       ; $7313: $63
    ld [hl], h                                    ; $7314: $74
    ld h, e                                       ; $7315: $63
    push de                                       ; $7316: $d5
    ld [hl], l                                    ; $7317: $75
    db $ed                                        ; $7318: $ed
    di                                            ; $7319: $f3
    ld b, b                                       ; $731a: $40
    jp hl                                         ; $731b: $e9


    cp $c6                                        ; $731c: $fe $c6
    nop                                           ; $731e: $00
    push de                                       ; $731f: $d5
    ld [hl], d                                    ; $7320: $72
    db $ed                                        ; $7321: $ed
    pop af                                        ; $7322: $f1
    cp l                                          ; $7323: $bd
    ld h, a                                       ; $7324: $67
    push af                                       ; $7325: $f5
    ld c, d                                       ; $7326: $4a
    push de                                       ; $7327: $d5
    ld [hl], d                                    ; $7328: $72
    ld [bc], a                                    ; $7329: $02
    ldh a, [$e8]                                  ; $732a: $f0 $e8
    push hl                                       ; $732c: $e5
    cp a                                          ; $732d: $bf
    adc $00                                       ; $732e: $ce $00
    push de                                       ; $7330: $d5
    ld [hl], c                                    ; $7331: $71
    rst $28                                       ; $7332: $ef
    rst $08                                       ; $7333: $cf
    ld a, d                                       ; $7334: $7a
    rst $28                                       ; $7335: $ef
    and [hl]                                      ; $7336: $a6
    ld h, a                                       ; $7337: $67
    push de                                       ; $7338: $d5
    ld [hl], b                                    ; $7339: $70
    call nz, $c44d                                ; $733a: $c4 $4d $c4
    add l                                         ; $733d: $85
    ccf                                           ; $733e: $3f
    call z, $d500                                 ; $733f: $cc $00 $d5
    ld [hl], l                                    ; $7342: $75
    call nz, $ee51                                ; $7343: $c4 $51 $ee
    and l                                         ; $7346: $a5
    cp a                                          ; $7347: $bf
    xor e                                         ; $7348: $ab
    push de                                       ; $7349: $d5
    halt                                          ; $734a: $76
    call nz, Call_059_714e                        ; $734b: $c4 $4e $71
    add [hl]                                      ; $734e: $86
    cp b                                          ; $734f: $b8
    inc l                                         ; $7350: $2c
    nop                                           ; $7351: $00
    push de                                       ; $7352: $d5
    ld [hl], d                                    ; $7353: $72
    call nz, Call_059_504f                        ; $7354: $c4 $4f $50
    rst $20                                       ; $7357: $e7
    ld a, b                                       ; $7358: $78
    dec hl                                        ; $7359: $2b
    push de                                       ; $735a: $d5
    ld [hl], d                                    ; $735b: $72
    call nz, Call_059_7851                        ; $735c: $c4 $51 $78
    ld b, [hl]                                    ; $735f: $46
    add hl, sp                                    ; $7360: $39
    add hl, hl                                    ; $7361: $29
    nop                                           ; $7362: $00
    push de                                       ; $7363: $d5
    ld [hl], l                                    ; $7364: $75
    call nz, Call_000_3f50                        ; $7365: $c4 $50 $3f
    cp d                                          ; $7368: $ba
    push de                                       ; $7369: $d5
    ld l, h                                       ; $736a: $6c
    rst $28                                       ; $736b: $ef
    jp nc, $8c33                                  ; $736c: $d2 $33 $8c

    dec a                                         ; $736f: $3d
    ret                                           ; $7370: $c9


    push de                                       ; $7371: $d5
    ld l, l                                       ; $7372: $6d
    nop                                           ; $7373: $00
    call nz, $b850                                ; $7374: $c4 $50 $b8
    ld h, a                                       ; $7377: $67
    ld b, b                                       ; $7378: $40
    pop af                                        ; $7379: $f1
    push de                                       ; $737a: $d5
    ld l, h                                       ; $737b: $6c
    call nz, $fc50                                ; $737c: $c4 $50 $fc
    rlca                                          ; $737f: $07
    or [hl]                                       ; $7380: $b6
    nop                                           ; $7381: $00
    db $fd                                        ; $7382: $fd
    call z, Call_059_5500                         ; $7383: $cc $00 $55
    ld c, [hl]                                    ; $7386: $4e
    call nz, $c154                                ; $7387: $c4 $54 $c1
    inc hl                                        ; $738a: $23
    nop                                           ; $738b: $00
    adc h                                         ; $738c: $8c
    add b                                         ; $738d: $80
    jp nc, $4fc4                                  ; $738e: $d2 $c4 $4f

    halt                                          ; $7391: $76
    and a                                         ; $7392: $a7
    jp nz, Jump_000_008a                          ; $7393: $c2 $8a $00

    ld d, l                                       ; $7396: $55
    ld d, e                                       ; $7397: $53
    rst $28                                       ; $7398: $ef
    rst $08                                       ; $7399: $cf
    ld a, [hl-]                                   ; $739a: $3a
    rlca                                          ; $739b: $07
    jp nz, $808d                                  ; $739c: $c2 $8d $80

    db $d3                                        ; $739f: $d3
    call nz, Call_000_3a4e                        ; $73a0: $c4 $4e $3a
    dec bc                                        ; $73a3: $0b
    add b                                         ; $73a4: $80
    call c, Call_059_6500                         ; $73a5: $dc $00 $65
    sbc b                                         ; $73a8: $98
    ld [bc], a                                    ; $73a9: $02
    adc h                                         ; $73aa: $8c
    ld d, l                                       ; $73ab: $55
    ld d, l                                       ; $73ac: $55
    ld a, [hl-]                                   ; $73ad: $3a
    rla                                           ; $73ae: $17
    ld [bc], a                                    ; $73af: $02
    adc a                                         ; $73b0: $8f
    di                                            ; $73b1: $f3
    ld a, [c]                                     ; $73b2: $f2
    ld a, [hl-]                                   ; $73b3: $3a
    jr @+$01                                      ; $73b4: $18 $ff

    rst $38                                       ; $73b6: $ff
    nop                                           ; $73b7: $00
    ld h, l                                       ; $73b8: $65
    sbc d                                         ; $73b9: $9a
    rst $38                                       ; $73ba: $ff
    rst $38                                       ; $73bb: $ff
    sbc l                                         ; $73bc: $9d
    dec b                                         ; $73bd: $05
    ld a, [hl-]                                   ; $73be: $3a
    inc de                                        ; $73bf: $13
    rst $38                                       ; $73c0: $ff
    rst $38                                       ; $73c1: $ff
    ld h, l                                       ; $73c2: $65
    sbc c                                         ; $73c3: $99
    rst $38                                       ; $73c4: $ff
    rst $38                                       ; $73c5: $ff
    ld e, e                                       ; $73c6: $5b
    and h                                         ; $73c7: $a4
    nop                                           ; $73c8: $00
    ld a, [hl-]                                   ; $73c9: $3a
    rla                                           ; $73ca: $17
    rst $38                                       ; $73cb: $ff
    rst $38                                       ; $73cc: $ff
    ld b, b                                       ; $73cd: $40
    add sp, $3a                                   ; $73ce: $e8 $3a
    db $10                                        ; $73d0: $10
    rst $38                                       ; $73d1: $ff
    rst $38                                       ; $73d2: $ff
    push hl                                       ; $73d3: $e5
    cp a                                          ; $73d4: $bf
    rst $38                                       ; $73d5: $ff
    rst $38                                       ; $73d6: $ff
    push hl                                       ; $73d7: $e5
    or a                                          ; $73d8: $b7
    nop                                           ; $73d9: $00
    rst $38                                       ; $73da: $ff
    rst $38                                       ; $73db: $ff
    ld [hl], e                                    ; $73dc: $73
    call $bfcd                                    ; $73dd: $cd $cd $bf
    rst $38                                       ; $73e0: $ff
    rst $38                                       ; $73e1: $ff
    rst $38                                       ; $73e2: $ff
    rst $38                                       ; $73e3: $ff
    sub [hl]                                      ; $73e4: $96
    rst $38                                       ; $73e5: $ff
    reti                                          ; $73e6: $d9


    or e                                          ; $73e7: $b3
    rst $38                                       ; $73e8: $ff
    rst $38                                       ; $73e9: $ff
    nop                                           ; $73ea: $00
    rst $38                                       ; $73eb: $ff
    rst $38                                       ; $73ec: $ff
    rst $38                                       ; $73ed: $ff
    rst $38                                       ; $73ee: $ff
    rst $38                                       ; $73ef: $ff
    rst $38                                       ; $73f0: $ff
    scf                                           ; $73f1: $37
    db $eb                                        ; $73f2: $eb
    call c, $ffff                                 ; $73f3: $dc $ff $ff
    rst $38                                       ; $73f6: $ff
    rst $38                                       ; $73f7: $ff
    rst $38                                       ; $73f8: $ff
    rst $38                                       ; $73f9: $ff
    rst $38                                       ; $73fa: $ff
    nop                                           ; $73fb: $00
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
    nop                                           ; $740c: $00
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
    nop                                           ; $7419: $00
    cp a                                          ; $741a: $bf
    rst $38                                       ; $741b: $ff
    rst $38                                       ; $741c: $ff
    nop                                           ; $741d: $00
    rst $38                                       ; $741e: $ff
    rst $38                                       ; $741f: $ff
    rst $38                                       ; $7420: $ff
    rst $38                                       ; $7421: $ff
    rst $38                                       ; $7422: $ff
    rst $38                                       ; $7423: $ff
    ld e, b                                       ; $7424: $58
    ld [hl], e                                    ; $7425: $73
    nop                                           ; $7426: $00
    nop                                           ; $7427: $00
    nop                                           ; $7428: $00
    db $ed                                        ; $7429: $ed
    jr nz, @+$01                                  ; $742a: $20 $ff

    ld [c], a                                     ; $742c: $e2
    rrca                                          ; $742d: $0f
    ld sp, $e5ff                                  ; $742e: $31 $ff $e5
    ld h, b                                       ; $7431: $60
    ld e, d                                       ; $7432: $5a
    ld e, e                                       ; $7433: $5b
    db $e3                                        ; $7434: $e3
    ld e, e                                       ; $7435: $5b
    nop                                           ; $7436: $00
    rst $38                                       ; $7437: $ff
    rst $38                                       ; $7438: $ff
    rst $20                                       ; $7439: $e7
    and $c1                                       ; $743a: $e6 $c1
    push hl                                       ; $743c: $e5
    inc a                                         ; $743d: $3c
    ld d, h                                       ; $743e: $54
    ld d, h                                       ; $743f: $54
    ld a, a                                       ; $7440: $7f
    ld d, l                                       ; $7441: $55
    ld d, l                                       ; $7442: $55
    dec sp                                        ; $7443: $3b
    ld b, a                                       ; $7444: $47
    ld sp, $5f31                                  ; $7445: $31 $31 $5f
    ret nz                                        ; $7448: $c0

    rst $38                                       ; $7449: $ff
    call c, $edc0                                 ; $744a: $dc $c0 $ed
    add d                                         ; $744d: $82
    ldh [rOBP1], a                                ; $744e: $e0 $49
    ld b, d                                       ; $7450: $42
    jr nc, @+$01                                  ; $7451: $30 $ff

    pop hl                                        ; $7453: $e1
    ld [hl], $3c                                  ; $7454: $36 $3c
    db $d3                                        ; $7456: $d3
    ld sp, $c05e                                  ; $7457: $31 $5e $c0
    rst $38                                       ; $745a: $ff
    add b                                         ; $745b: $80
    db $ec                                        ; $745c: $ec
    nop                                           ; $745d: $00
    ld b, e                                       ; $745e: $43
    ldh [$39], a                                  ; $745f: $e0 $39
    jr nc, @+$01                                  ; $7461: $30 $ff

    ld l, d                                       ; $7463: $6a
    ld l, b                                       ; $7464: $68
    ld l, b                                       ; $7465: $68
    ld l, d                                       ; $7466: $6a
    jr nc, jr_059_7499                            ; $7467: $30 $30

    ld b, d                                       ; $7469: $42
    ld c, c                                       ; $746a: $49
    rst $20                                       ; $746b: $e7
    ld sp, $5a5f                                  ; $746c: $31 $5f $5a
    jp z, $c0ff                                   ; $746f: $ca $ff $c0

    db $ed                                        ; $7472: $ed
    ld c, c                                       ; $7473: $49
    ld c, b                                       ; $7474: $48
    ld l, d                                       ; $7475: $6a
    cpl                                           ; $7476: $2f
    ld l, l                                       ; $7477: $6d
    ld l, h                                       ; $7478: $6c
    ld l, h                                       ; $7479: $6c
    ld l, l                                       ; $747a: $6d
    cp a                                          ; $747b: $bf
    ldh [$39], a                                  ; $747c: $e0 $39
    ld a, a                                       ; $747e: $7f
    ldh [$ca], a                                  ; $747f: $e0 $ca
    rst $38                                       ; $7481: $ff
    ld c, [hl]                                    ; $7482: $4e
    add b                                         ; $7483: $80
    db $ed                                        ; $7484: $ed
    add hl, sp                                    ; $7485: $39
    ld l, d                                       ; $7486: $6a
    ld l, l                                       ; $7487: $6d
    ld b, b                                       ; $7488: $40
    pop hl                                        ; $7489: $e1
    cp a                                          ; $748a: $bf
    ldh [rOBP0], a                                ; $748b: $e0 $48
    ld a, a                                       ; $748d: $7f
    ldh [$7c], a                                  ; $748e: $e0 $7c
    jp z, $40ff                                   ; $7490: $ca $ff $40

    db $ed                                        ; $7493: $ed
    ld d, d                                       ; $7494: $52
    ld l, l                                       ; $7495: $6d
    jr nc, jr_059_7504                            ; $7496: $30 $6c

jr_059_7498:
    ld l, h                                       ; $7498: $6c

jr_059_7499:
    cp a                                          ; $7499: $bf
    db $e3                                        ; $749a: $e3
    or b                                          ; $749b: $b0
    ld a, a                                       ; $749c: $7f
    ldh [$ca], a                                  ; $749d: $e0 $ca
    rst $38                                       ; $749f: $ff
    add b                                         ; $74a0: $80
    jp z, $c043                                   ; $74a1: $ca $43 $c0

    ld d, d                                       ; $74a4: $52
    ld l, l                                       ; $74a5: $6d
    ld b, c                                       ; $74a6: $41
    pop hl                                        ; $74a7: $e1
    ld l, l                                       ; $74a8: $6d
    rst $00                                       ; $74a9: $c7
    jr nc, jr_059_7517                            ; $74aa: $30 $6b

    ld l, c                                       ; $74ac: $69
    ret nz                                        ; $74ad: $c0

    rst $38                                       ; $74ae: $ff
    ld b, b                                       ; $74af: $40
    call $c143                                    ; $74b0: $cd $43 $c1
    ld b, d                                       ; $74b3: $42
    ld l, l                                       ; $74b4: $6d
    rlca                                          ; $74b5: $07
    ld l, l                                       ; $74b6: $6d
    ld l, b                                       ; $74b7: $68
    ld l, b                                       ; $74b8: $68
    ret nz                                        ; $74b9: $c0

    ld [c], a                                     ; $74ba: $e2
    cp a                                          ; $74bb: $bf
    pop bc                                        ; $74bc: $c1
    jp z, Jump_000_00ff                           ; $74bd: $ca $ff $00

    ret z                                         ; $74c0: $c8

    ld b, e                                       ; $74c1: $43
    jp nz, Jump_059_6b7d                          ; $74c2: $c2 $7d $6b

    add a                                         ; $74c5: $87
    ldh [$30], a                                  ; $74c6: $e0 $30
    ld l, c                                       ; $74c8: $69
    ld l, e                                       ; $74c9: $6b
    ld l, e                                       ; $74ca: $6b
    ld l, e                                       ; $74cb: $6b
    ccf                                           ; $74cc: $3f
    jp nz, $ca58                                  ; $74cd: $c2 $58 $ca

    rst $38                                       ; $74d0: $ff
    add sp, -$19                                  ; $74d1: $e8 $e7
    add [hl]                                      ; $74d3: $86
    and c                                         ; $74d4: $a1
    add hl, sp                                    ; $74d5: $39
    jr nc, jr_059_7498                            ; $74d6: $30 $c0

    db $e3                                        ; $74d8: $e3
    ld b, d                                       ; $74d9: $42
    cp a                                          ; $74da: $bf
    and e                                         ; $74db: $a3
    sbc b                                         ; $74dc: $98
    ld b, b                                       ; $74dd: $40
    rst $18                                       ; $74de: $df
    jp hl                                         ; $74df: $e9


    add sp, $47                                   ; $74e0: $e8 $47
    and b                                         ; $74e2: $a0
    xor h                                         ; $74e3: $ac
    ld d, d                                       ; $74e4: $52
    add [hl]                                      ; $74e5: $86
    ret nz                                        ; $74e6: $c0

    ld b, b                                       ; $74e7: $40
    ldh [rSCY], a                                 ; $74e8: $e0 $42
    ld h, l                                       ; $74ea: $65
    inc a                                         ; $74eb: $3c
    ld a, [hl-]                                   ; $74ec: $3a
    and c                                         ; $74ed: $a1
    ld h, c                                       ; $74ee: $61
    ret nz                                        ; $74ef: $c0

    cp a                                          ; $74f0: $bf
    ret nz                                        ; $74f1: $c0

    db $ec                                        ; $74f2: $ec
    add c                                         ; $74f3: $81
    add e                                         ; $74f4: $83
    ret nz                                        ; $74f5: $c0

    pop hl                                        ; $74f6: $e1
    dec a                                         ; $74f7: $3d
    ld l, h                                       ; $74f8: $6c
    pop bc                                        ; $74f9: $c1
    ldh [$15], a                                  ; $74fa: $e0 $15
    inc d                                         ; $74fc: $14
    inc d                                         ; $74fd: $14
    dec d                                         ; $74fe: $15
    ccf                                           ; $74ff: $3f
    and b                                         ; $7500: $a0
    jp z, $ceff                                   ; $7501: $ca $ff $ce

jr_059_7504:
    add b                                         ; $7504: $80
    jp hl                                         ; $7505: $e9


    xor h                                         ; $7506: $ac
    xor c                                         ; $7507: $a9
    add h                                         ; $7508: $84
    ld b, e                                       ; $7509: $43
    and c                                         ; $750a: $a1
    add d                                         ; $750b: $82
    pop hl                                        ; $750c: $e1
    rla                                           ; $750d: $17
    inc h                                         ; $750e: $24
    di                                            ; $750f: $f3
    inc h                                         ; $7510: $24
    rla                                           ; $7511: $17
    nop                                           ; $7512: $00
    rst $38                                       ; $7513: $ff
    ld b, b                                       ; $7514: $40
    db $ec                                        ; $7515: $ec
    add c                                         ; $7516: $81

jr_059_7517:
    add b                                         ; $7517: $80
    add b                                         ; $7518: $80
    ld l, a                                       ; $7519: $6f
    rst $30                                       ; $751a: $f7
    ld l, [hl]                                    ; $751b: $6e
    ld d, l                                       ; $751c: $55
    ld d, h                                       ; $751d: $54
    ld b, e                                       ; $751e: $43
    ldh [$15], a                                  ; $751f: $e0 $15
    ld d, $20                                     ; $7521: $16 $20
    jr nz, jr_059_7596                            ; $7523: $20 $71

    ld d, $7f                                     ; $7525: $16 $7f
    ldh [$ca], a                                  ; $7527: $e0 $ca
    rst $38                                       ; $7529: $ff
    nop                                           ; $752a: $00
    add sp, -$54                                  ; $752b: $e8 $ac
    xor c                                         ; $752d: $a9
    add b                                         ; $752e: $80
    rst $38                                       ; $752f: $ff
    ldh [$7d], a                                  ; $7530: $e0 $7d
    and b                                         ; $7532: $a0
    ccf                                           ; $7533: $3f
    add c                                         ; $7534: $81
    rla                                           ; $7535: $17
    jr z, jr_059_7558                             ; $7536: $28 $20

    jr nz, jr_059_7562                            ; $7538: $20 $28

    ld a, a                                       ; $753a: $7f
    ldh [rP1], a                                  ; $753b: $e0 $00
    jp z, $ffff                                   ; $753d: $ca $ff $ff

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
    nop                                           ; $754d: $00
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

jr_059_7558:
    rst $38                                       ; $7558: $ff
    rst $38                                       ; $7559: $ff
    rst $38                                       ; $755a: $ff
    rst $38                                       ; $755b: $ff
    rst $38                                       ; $755c: $ff
    rst $38                                       ; $755d: $ff
    nop                                           ; $755e: $00
    rst $38                                       ; $755f: $ff
    rst $38                                       ; $7560: $ff
    rst $38                                       ; $7561: $ff

jr_059_7562:
    rst $38                                       ; $7562: $ff
    rst $38                                       ; $7563: $ff
    rst $38                                       ; $7564: $ff
    rst $38                                       ; $7565: $ff
    rst $38                                       ; $7566: $ff
    rst $38                                       ; $7567: $ff
    rst $38                                       ; $7568: $ff
    rst $38                                       ; $7569: $ff
    rst $38                                       ; $756a: $ff

Jump_059_756b:
    rst $38                                       ; $756b: $ff
    rst $38                                       ; $756c: $ff
    rst $38                                       ; $756d: $ff
    rst $38                                       ; $756e: $ff
    nop                                           ; $756f: $00
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
    rst $38                                       ; $757f: $ff
    nop                                           ; $7580: $00
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
    nop                                           ; $7591: $00
    rst $38                                       ; $7592: $ff
    rst $38                                       ; $7593: $ff
    rst $38                                       ; $7594: $ff
    rst $38                                       ; $7595: $ff

jr_059_7596:
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
    nop                                           ; $75a2: $00
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
    nop                                           ; $75b3: $00
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
    nop                                           ; $75c4: $00
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
    nop                                           ; $75d5: $00
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
    nop                                           ; $75e6: $00
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
    nop                                           ; $75f7: $00
    rst $38                                       ; $75f8: $ff
    rst $38                                       ; $75f9: $ff
    rst $38                                       ; $75fa: $ff
    rst $38                                       ; $75fb: $ff
    rst $38                                       ; $75fc: $ff
    rst $38                                       ; $75fd: $ff
    rst $38                                       ; $75fe: $ff
    di                                            ; $75ff: $f3
    nop                                           ; $7600: $00
    nop                                           ; $7601: $00
    nop                                           ; $7602: $00
    and l                                         ; $7603: $a5
    nop                                           ; $7604: $00
    rst $38                                       ; $7605: $ff
    push hl                                       ; $7606: $e5
    ld [hl-], a                                   ; $7607: $32
    or $e6                                        ; $7608: $f6 $e6
    rst $30                                       ; $760a: $f7
    rst $20                                       ; $760b: $e7
    dec [hl]                                      ; $760c: $35
    db $ec                                        ; $760d: $ec
    xor $37                                       ; $760e: $ee $37
    db $ec                                        ; $7610: $ec
    jp c, $c7f0                                   ; $7611: $da $f0 $c7

    add sp, $33                                   ; $7614: $e8 $33
    ld sp, $f2e0                                  ; $7616: $31 $e0 $f2
    ld [hl], $30                                  ; $7619: $36 $30
    scf                                           ; $761b: $37
    cp a                                          ; $761c: $bf
    ld h, $20                                     ; $761d: $26 $20
    daa                                           ; $761f: $27
    db $10                                        ; $7620: $10
    ld d, $17                                     ; $7621: $16 $17
    jp nz, Jump_000_34f6                          ; $7623: $c2 $f6 $34

    rst $38                                       ; $7626: $ff
    ld [hl], $32                                  ; $7627: $36 $32
    jr nc, jr_059_7662                            ; $7629: $30 $37

    ld sp, $3133                                  ; $762b: $31 $33 $31
    inc sp                                        ; $762e: $33
    nop                                           ; $762f: $00
    and b                                         ; $7630: $a0
    ei                                            ; $7631: $fb
    rst $38                                       ; $7632: $ff
    rst $28                                       ; $7633: $ef
    nop                                           ; $7634: $00
    nop                                           ; $7635: $00
    nop                                           ; $7636: $00
    ccf                                           ; $7637: $3f
    halt                                          ; $7638: $76
    ld l, a                                       ; $7639: $6f
    halt                                          ; $763a: $76
    ld e, $79                                     ; $763b: $1e $79
    db $10                                        ; $763d: $10
    ld a, e                                       ; $763e: $7b
    ld hl, sp+$03                                 ; $763f: $f8 $03
    ld c, h                                       ; $7641: $4c
    inc bc                                        ; $7642: $03
    ld d, e                                       ; $7643: $53
    ld bc, $008a                                  ; $7644: $01 $8a $00
    ldh a, [$03]                                  ; $7647: $f0 $03
    ld hl, sp+$03                                 ; $7649: $f8 $03
    ld c, h                                       ; $764b: $4c
    inc bc                                        ; $764c: $03
    ld d, e                                       ; $764d: $53
    ld bc, $47ff                                  ; $764e: $01 $ff $47
    ldh a, [rP1]                                  ; $7651: $f0 $00
    ld e, l                                       ; $7653: $5d
    add hl, de                                    ; $7654: $19
    ld c, h                                       ; $7655: $4c
    inc bc                                        ; $7656: $03
    ld [$0825], sp                                ; $7657: $08 $25 $08
    dec h                                         ; $765a: $25
    ld [$0825], sp                                ; $765b: $08 $25 $08
    dec h                                         ; $765e: $25
    ld [$0825], sp                                ; $765f: $08 $25 $08

jr_059_7662:
    dec h                                         ; $7662: $25
    ld [$0825], sp                                ; $7663: $08 $25 $08
    dec h                                         ; $7666: $25
    ld [$0825], sp                                ; $7667: $08 $25 $08
    dec h                                         ; $766a: $25
    ld [$0825], sp                                ; $766b: $08 $25 $08
    dec h                                         ; $766e: $25
    rst $38                                       ; $766f: $ff
    ld c, h                                       ; $7670: $4c
    ld c, h                                       ; $7671: $4c
    ld l, h                                       ; $7672: $6c
    ld l, h                                       ; $7673: $6c
    dec bc                                        ; $7674: $0b
    dec hl                                        ; $7675: $2b
    ld l, e                                       ; $7676: $6b
    ld c, e                                       ; $7677: $4b
    rst $20                                       ; $7678: $e7
    ld c, e                                       ; $7679: $4b
    ld c, e                                       ; $767a: $4b
    dec bc                                        ; $767b: $0b
    db $fd                                        ; $767c: $fd
    ldh [rIE], a                                  ; $767d: $e0 $ff
    pop hl                                        ; $767f: $e1
    ld a, [bc]                                    ; $7680: $0a
    dec bc                                        ; $7681: $0b
    inc c                                         ; $7682: $0c
    scf                                           ; $7683: $37
    ld c, h                                       ; $7684: $4c
    inc c                                         ; $7685: $0c
    ld c, h                                       ; $7686: $4c
    rst $38                                       ; $7687: $ff
    ldh [$0c], a                                  ; $7688: $e0 $0c
    inc c                                         ; $768a: $0c
    rst $30                                       ; $768b: $f7
    ldh [$fd], a                                  ; $768c: $e0 $fd
    pop hl                                        ; $768e: $e1
    inc l                                         ; $768f: $2c
    cp $f9                                        ; $7690: $fe $f9
    ret nz                                        ; $7692: $c0

    ldh [$0c], a                                  ; $7693: $e0 $0c
    ld l, e                                       ; $7695: $6b
    ret z                                         ; $7696: $c8

    ld [c], a                                     ; $7697: $e2
    dec hl                                        ; $7698: $2b
    cp [hl]                                       ; $7699: $be
    ldh [$c2], a                                  ; $769a: $e0 $c2
    pop hl                                        ; $769c: $e1
    jp Jump_000_0b0b                              ; $769d: $c3 $0b $0b


    rst $20                                       ; $76a0: $e7
    db $e4                                        ; $76a1: $e4
    cp c                                          ; $76a2: $b9
    pop hl                                        ; $76a3: $e1
    or a                                          ; $76a4: $b7
    cp $80                                        ; $76a5: $fe $80
    ldh [$0b], a                                  ; $76a7: $e0 $0b
    ld l, e                                       ; $76a9: $6b
    ld bc, $c02b                                  ; $76aa: $01 $2b $c0
    rst $20                                       ; $76ad: $e7
    ld a, l                                       ; $76ae: $7d
    pop hl                                        ; $76af: $e1
    adc h                                         ; $76b0: $8c
    ld [c], a                                     ; $76b1: $e2
    add b                                         ; $76b2: $80
    ld [c], a                                     ; $76b3: $e2
    or a                                          ; $76b4: $b7
    push hl                                       ; $76b5: $e5
    db $fd                                        ; $76b6: $fd
    db $e4                                        ; $76b7: $e4
    db $ec                                        ; $76b8: $ec
    and $2e                                       ; $76b9: $e6 $2e
    ld l, h                                       ; $76bb: $6c
    rst $20                                       ; $76bc: $e7
    ld l, h                                       ; $76bd: $6c
    ld l, h                                       ; $76be: $6c
    inc c                                         ; $76bf: $0c
    add l                                         ; $76c0: $85
    ldh [$2b], a                                  ; $76c1: $e0 $2b

jr_059_76c3:
    add l                                         ; $76c3: $85
    ldh [$fb], a                                  ; $76c4: $e0 $fb
    ldh [$c0], a                                  ; $76c6: $e0 $c0
    rst $38                                       ; $76c8: $ff
    db $e4                                        ; $76c9: $e4
    call nz, Call_059_7ee4                        ; $76ca: $c4 $e4 $7e
    ld [c], a                                     ; $76cd: $e2
    ret nz                                        ; $76ce: $c0

    rst $20                                       ; $76cf: $e7
    ld a, [c]                                     ; $76d0: $f2
    db $e3                                        ; $76d1: $e3
    ret nz                                        ; $76d2: $c0

    xor $2c                                       ; $76d3: $ee $2c
    inc l                                         ; $76d5: $2c
    ld de, $452b                                  ; $76d6: $11 $2b $45
    ldh [rTIMA], a                                ; $76d9: $e0 $05
    ldh [$c0], a                                  ; $76db: $e0 $c0
    and $0a                                       ; $76dd: $e6 $0a
    jr z, jr_059_76c3                             ; $76df: $28 $e2

    db $fd                                        ; $76e1: $fd
    jp nz, $e7b7                                  ; $76e2: $c2 $b7 $e7

    db $f4                                        ; $76e5: $f4
    or $c1                                        ; $76e6: $f6 $c1
    push af                                       ; $76e8: $f5
    call nz, $f92c                                ; $76e9: $c4 $2c $f9
    jp hl                                         ; $76ec: $e9


    inc l                                         ; $76ed: $2c
    ld l, h                                       ; $76ee: $6c
    inc l                                         ; $76ef: $2c
    ld c, h                                       ; $76f0: $4c
    ld [bc], a                                    ; $76f1: $02
    pop bc                                        ; $76f2: $c1
    jp nz, $802b                                  ; $76f3: $c2 $2b $80

    pop hl                                        ; $76f6: $e1
    ld a, h                                       ; $76f7: $7c
    db $e3                                        ; $76f8: $e3
    rst $20                                       ; $76f9: $e7
    jp $c5df                                      ; $76fa: $c3 $df $c5


    add d                                         ; $76fd: $82
    push hl                                       ; $76fe: $e5
    ld b, b                                       ; $76ff: $40
    di                                            ; $7700: $f3
    dec b                                         ; $7701: $05
    inc l                                         ; $7702: $2c
    rst $38                                       ; $7703: $ff
    ldh [$2b], a                                  ; $7704: $e0 $2b
    jp $c0e1                                      ; $7706: $c3 $e1 $c0


    ldh [rSB], a                                  ; $7709: $e0 $01
    db $e4                                        ; $770b: $e4
    ret nz                                        ; $770c: $c0

    jp $c79e                                      ; $770d: $c3 $9e $c7


    inc b                                         ; $7710: $04
    or c                                          ; $7711: $b1
    ld [$d072], a                                 ; $7712: $ea $72 $d0
    inc l                                         ; $7715: $2c
    cp a                                          ; $7716: $bf
    ret nz                                        ; $7717: $c0

    rst $38                                       ; $7718: $ff
    db $e4                                        ; $7719: $e4
    ld a, $c3                                     ; $771a: $3e $c3
    ld c, b                                       ; $771c: $48
    jp $ca47                                      ; $771d: $c3 $47 $ca


    nop                                           ; $7720: $00
    inc sp                                        ; $7721: $33
    call nz, $f4c0                                ; $7722: $c4 $c0 $f4
    ld b, h                                       ; $7725: $44
    ret nz                                        ; $7726: $c0

    cp a                                          ; $7727: $bf
    rst $20                                       ; $7728: $e7
    ld [bc], a                                    ; $7729: $02
    db $e4                                        ; $772a: $e4
    ei                                            ; $772b: $fb
    db $e3                                        ; $772c: $e3
    add hl, bc                                    ; $772d: $09
    db $e3                                        ; $772e: $e3
    ret nz                                        ; $772f: $c0

    push bc                                       ; $7730: $c5
    inc b                                         ; $7731: $04
    db $ed                                        ; $7732: $ed
    rst $00                                       ; $7733: $c7
    ret nz                                        ; $7734: $c0

    db $ec                                        ; $7735: $ec
    ld l, e                                       ; $7736: $6b
    ld a, l                                       ; $7737: $7d
    ret nz                                        ; $7738: $c0

    ccf                                           ; $7739: $3f
    pop hl                                        ; $773a: $e1
    cp l                                          ; $773b: $bd
    and c                                         ; $773c: $a1
    sub b                                         ; $773d: $90
    add sp, -$42                                  ; $773e: $e8 $be
    jp hl                                         ; $7740: $e9


    nop                                           ; $7741: $00
    di                                            ; $7742: $f3
    and e                                         ; $7743: $a3
    or c                                          ; $7744: $b1
    xor [hl]                                      ; $7745: $ae
    sub a                                         ; $7746: $97
    and b                                         ; $7747: $a0
    ret nz                                        ; $7748: $c0

    pop hl                                        ; $7749: $e1
    ld bc, $bae3                                  ; $774a: $01 $e3 $ba
    ret nz                                        ; $774d: $c0

    jp nz, $9ea2                                  ; $774e: $c2 $a2 $9e

    jp nz, Jump_000_3b20                          ; $7751: $c2 $20 $3b

    call nz, $e3dc                                ; $7754: $c4 $dc $e3
    ld [hl], e                                    ; $7757: $73
    push bc                                       ; $7758: $c5
    ld a, h                                       ; $7759: $7c
    call z, $c2ab                                 ; $775a: $cc $ab $c2
    ld l, h                                       ; $775d: $6c
    add e                                         ; $775e: $83
    and c                                         ; $775f: $a1
    jp nz, Jump_000_04c2                          ; $7760: $c2 $c2 $04

    ret nz                                        ; $7763: $c0

    push hl                                       ; $7764: $e5
    add b                                         ; $7765: $80
    call nz, $b72c                                ; $7766: $c4 $2c $b7
    and $01                                       ; $7769: $e6 $01
    add sp, $30                                   ; $776b: $e8 $30
    xor h                                         ; $776d: $ac
    call z, Call_059_42a4                         ; $776e: $cc $a4 $42
    ret nz                                        ; $7771: $c0

    ld de, $ff6b                                  ; $7772: $11 $6b $ff
    add b                                         ; $7775: $80
    cp $81                                        ; $7776: $fe $81
    rlca                                          ; $7778: $07
    and b                                         ; $7779: $a0
    inc l                                         ; $777a: $2c
    jp nz, Jump_000_06c9                          ; $777b: $c2 $c9 $06

    call nz, $e42e                                ; $777e: $c4 $2e $e4
    ld b, b                                       ; $7781: $40
    ld a, c                                       ; $7782: $79
    xor l                                         ; $7783: $ad
    rst $00                                       ; $7784: $c7
    add b                                         ; $7785: $80
    call nz, Call_059_7ea2                        ; $7786: $c4 $a2 $7e
    and b                                         ; $7789: $a0
    cp h                                          ; $778a: $bc
    add b                                         ; $778b: $80
    or $81                                        ; $778c: $f6 $81
    inc l                                         ; $778e: $2c
    adc $86                                       ; $778f: $ce $86
    nop                                           ; $7791: $00
    add b                                         ; $7792: $80
    pop hl                                        ; $7793: $e1
    cp c                                          ; $7794: $b9
    add e                                         ; $7795: $83
    ld b, h                                       ; $7796: $44
    and $79                                       ; $7797: $e6 $79
    and h                                         ; $7799: $a4
    ld a, [bc]                                    ; $779a: $0a
    pop bc                                        ; $779b: $c1
    add b                                         ; $779c: $80
    rst $20                                       ; $779d: $e7
    ld a, a                                       ; $779e: $7f
    and c                                         ; $779f: $a1
    pop bc                                        ; $77a0: $c1
    ld [c], a                                     ; $77a1: $e2
    add e                                         ; $77a2: $83
    dec bc                                        ; $77a3: $0b
    ld l, e                                       ; $77a4: $6b
    or l                                          ; $77a5: $b5
    add c                                         ; $77a6: $81
    adc e                                         ; $77a7: $8b
    add e                                         ; $77a8: $83
    adc c                                         ; $77a9: $89
    bit 7, c                                      ; $77aa: $cb $79
    xor h                                         ; $77ac: $ac
    ret nz                                        ; $77ad: $c0

    jp hl                                         ; $77ae: $e9


    ld a, [bc]                                    ; $77af: $0a
    nop                                           ; $77b0: $00
    ld bc, $bda1                                  ; $77b1: $01 $a1 $bd
    add e                                         ; $77b4: $83
    db $fc                                        ; $77b5: $fc
    add e                                         ; $77b6: $83
    ld h, b                                       ; $77b7: $60
    and b                                         ; $77b8: $a0
    adc c                                         ; $77b9: $89
    adc $79                                       ; $77ba: $ce $79
    xor h                                         ; $77bc: $ac
    add c                                         ; $77bd: $81
    and $a8                                       ; $77be: $e6 $a8
    add [hl]                                      ; $77c0: $86
    nop                                           ; $77c1: $00
    ld hl, sp-$19                                 ; $77c2: $f8 $e7
    rlca                                          ; $77c4: $07
    add l                                         ; $77c5: $85
    adc c                                         ; $77c6: $89
    ret                                           ; $77c7: $c9


    ld a, c                                       ; $77c8: $79
    xor l                                         ; $77c9: $ad
    ret nz                                        ; $77ca: $c0

    add sp, -$2b                                  ; $77cb: $e8 $d5
    ld l, d                                       ; $77cd: $6a
    ret                                           ; $77ce: $c9


    ld l, h                                       ; $77cf: $6c
    adc d                                         ; $77d0: $8a
    xor [hl]                                      ; $77d1: $ae
    nop                                           ; $77d2: $00
    ld a, c                                       ; $77d3: $79
    or e                                          ; $77d4: $b3
    ld e, $86                                     ; $77d5: $1e $86
    ld [de], a                                    ; $77d7: $12
    adc l                                         ; $77d8: $8d
    adc c                                         ; $77d9: $89
    rst $00                                       ; $77da: $c7
    ld a, c                                       ; $77db: $79
    xor h                                         ; $77dc: $ac
    pop bc                                        ; $77dd: $c1
    pop bc                                        ; $77de: $c1
    ld a, c                                       ; $77df: $79
    add e                                         ; $77e0: $83
    ld e, $8b                                     ; $77e1: $1e $8b
    nop                                           ; $77e3: $00
    ld [de], a                                    ; $77e4: $12
    adc h                                         ; $77e5: $8c
    adc c                                         ; $77e6: $89
    rst $00                                       ; $77e7: $c7
    ld a, c                                       ; $77e8: $79
    xor h                                         ; $77e9: $ac
    ret nz                                        ; $77ea: $c0

    add sp, -$76                                  ; $77eb: $e8 $8a
    db $eb                                        ; $77ed: $eb
    ld [de], a                                    ; $77ee: $12
    adc a                                         ; $77ef: $8f
    ld [hl], d                                    ; $77f0: $72
    call nz, $ab79                                ; $77f1: $c4 $79 $ab
    nop                                           ; $77f4: $00
    ld b, b                                       ; $77f5: $40
    rst $00                                       ; $77f6: $c7
    ld e, $8a                                     ; $77f7: $1e $8a
    ld [de], a                                    ; $77f9: $12
    adc l                                         ; $77fa: $8d
    add l                                         ; $77fb: $85
    push hl                                       ; $77fc: $e5
    ld a, c                                       ; $77fd: $79
    xor [hl]                                      ; $77fe: $ae
    ret nz                                        ; $77ff: $c0

    ld [$8a1e], a                                 ; $7800: $ea $1e $8a
    ld [de], a                                    ; $7803: $12
    adc h                                         ; $7804: $8c
    db $10                                        ; $7805: $10
    ld a, a                                       ; $7806: $7f
    ld b, a                                       ; $7807: $47
    ld a, c                                       ; $7808: $79
    xor d                                         ; $7809: $aa
    ld [hl], a                                    ; $780a: $77
    ld d, c                                       ; $780b: $51
    ld [de], a                                    ; $780c: $12
    sub d                                         ; $780d: $92
    ld c, h                                       ; $780e: $4c
    ld d, e                                       ; $780f: $53
    ld h, d                                       ; $7810: $62
    ld a, c                                       ; $7811: $79
    xor [hl]                                      ; $7812: $ae
    ld b, b                                       ; $7813: $40
    add sp, $00                                   ; $7814: $e8 $00
    ld e, $88                                     ; $7816: $1e $88
    ld [de], a                                    ; $7818: $12
    adc [hl]                                      ; $7819: $8e
    ld a, h                                       ; $781a: $7c
    add a                                         ; $781b: $87
    add l                                         ; $781c: $85
    add sp, -$40                                  ; $781d: $e8 $c0
    and h                                         ; $781f: $a4
    rst $38                                       ; $7820: $ff
    xor b                                         ; $7821: $a8
    ld e, $89                                     ; $7822: $1e $89
    ld [de], a                                    ; $7824: $12
    adc d                                         ; $7825: $8a
    nop                                           ; $7826: $00
    ld a, h                                       ; $7827: $7c
    add d                                         ; $7828: $82
    cp $8d                                        ; $7829: $fe $8d
    ld h, [hl]                                    ; $782b: $66
    add e                                         ; $782c: $83
    ld h, l                                       ; $782d: $65
    ld l, h                                       ; $782e: $6c
    ld [de], a                                    ; $782f: $12
    ret                                           ; $7830: $c9


    adc c                                         ; $7831: $89
    xor e                                         ; $7832: $ab
    add hl, bc                                    ; $7833: $09
    add a                                         ; $7834: $87
    cp c                                          ; $7835: $b9
    ld b, [hl]                                    ; $7836: $46
    nop                                           ; $7837: $00
    ret nz                                        ; $7838: $c0

    jp hl                                         ; $7839: $e9


    ld e, $89                                     ; $783a: $1e $89
    ld [de], a                                    ; $783c: $12
    adc a                                         ; $783d: $8f
    ld b, h                                       ; $783e: $44
    adc l                                         ; $783f: $8d
    ld b, b                                       ; $7840: $40
    push hl                                       ; $7841: $e5
    sbc [hl]                                      ; $7842: $9e
    ld c, [hl]                                    ; $7843: $4e
    ld e, $85                                     ; $7844: $1e $85
    ld [de], a                                    ; $7846: $12
    adc h                                         ; $7847: $8c
    nop                                           ; $7848: $00
    ld a, a                                       ; $7849: $7f
    db $eb                                        ; $784a: $eb
    ld a, c                                       ; $784b: $79
    ld d, c                                       ; $784c: $51
    ld e, $89                                     ; $784d: $1e $89
    ld [de], a                                    ; $784f: $12
    adc [hl]                                      ; $7850: $8e

Call_059_7851:
    ld b, a                                       ; $7851: $47
    jp nc, $b000                                  ; $7852: $d2 $00 $b0

    rst $08                                       ; $7855: $cf
    inc h                                         ; $7856: $24
    jp nc, Jump_000_006f                          ; $7857: $d2 $6f $00

    ret nz                                        ; $785a: $c0

    ld [hl], e                                    ; $785b: $73
    ld sp, hl                                     ; $785c: $f9
    db $10                                        ; $785d: $10
    ld e, $47                                     ; $785e: $1e $47
    ld a, [bc]                                    ; $7860: $0a
    adc e                                         ; $7861: $8b
    adc h                                         ; $7862: $8c
    ld b, h                                       ; $7863: $44
    ld a, c                                       ; $7864: $79
    ld c, [hl]                                    ; $7865: $4e
    ld b, c                                       ; $7866: $41
    and a                                         ; $7867: $a7
    ld e, $51                                     ; $7868: $1e $51
    nop                                           ; $786a: $00
    ld b, $2c                                     ; $786b: $06 $2c
    nop                                           ; $786d: $00
    or d                                          ; $786e: $b2
    ld [bc], a                                    ; $786f: $02
    xor b                                         ; $7870: $a8
    inc c                                         ; $7871: $0c
    call z, Call_000_2a94                         ; $7872: $cc $94 $2a
    ld b, d                                       ; $7875: $42
    ld [bc], a                                    ; $7876: $02
    nop                                           ; $7877: $00
    or b                                          ; $7878: $b0
    nop                                           ; $7879: $00
    pop de                                        ; $787a: $d1
    nop                                           ; $787b: $00
    ld a, $86                                     ; $787c: $3e $86
    sub l                                         ; $787e: $95
    and [hl]                                      ; $787f: $a6
    and [hl]                                      ; $7880: $a6
    adc d                                         ; $7881: $8a
    ld a, c                                       ; $7882: $79
    ld c, b                                       ; $7883: $48
    add d                                         ; $7884: $82
    add a                                         ; $7885: $87

jr_059_7886:
    inc c                                         ; $7886: $0c
    ret nc                                        ; $7887: $d0

    rst $10                                       ; $7888: $d7
    jr z, jr_059_7886                             ; $7889: $28 $fb

    add [hl]                                      ; $788b: $86
    nop                                           ; $788c: $00
    ld h, a                                       ; $788d: $67
    pop de                                        ; $788e: $d1
    ld e, $53                                     ; $788f: $1e $53
    and [hl]                                      ; $7891: $a6
    rst $10                                       ; $7892: $d7
    xor d                                         ; $7893: $aa
    ld b, $02                                     ; $7894: $06 $02
    adc c                                         ; $7896: $89
    and l                                         ; $7897: $a5
    ld hl, sp+$3b                                 ; $7898: $f8 $3b
    ld d, c                                       ; $789a: $51
    ret nz                                        ; $789b: $c0

    xor $00                                       ; $789c: $ee $00
    ld sp, hl                                     ; $789e: $f9
    ld hl, sp-$3c                                 ; $789f: $f8 $c4
    rrca                                          ; $78a1: $0f
    pop bc                                        ; $78a2: $c1
    rrca                                          ; $78a3: $0f
    cp a                                          ; $78a4: $bf
    db $fc                                        ; $78a5: $fc
    call nz, $c60d                                ; $78a6: $c4 $0d $c6
    or d                                          ; $78a9: $b2
    ld a, l                                       ; $78aa: $7d
    db $f4                                        ; $78ab: $f4
    call nz, $0011                                ; $78ac: $c4 $11 $00
    ld a, a                                       ; $78af: $7f
    rst $38                                       ; $78b0: $ff
    and [hl]                                      ; $78b1: $a6
    reti                                          ; $78b2: $d9


    add e                                         ; $78b3: $83
    jp nc, $f880                                  ; $78b4: $d2 $80 $f8

    or d                                          ; $78b7: $b2
    adc [hl]                                      ; $78b8: $8e
    add b                                         ; $78b9: $80
    rst $38                                       ; $78ba: $ff
    ld b, b                                       ; $78bb: $40
    pop af                                        ; $78bc: $f1
    inc sp                                        ; $78bd: $33
    ld l, c                                       ; $78be: $69
    nop                                           ; $78bf: $00
    add b                                         ; $78c0: $80
    rst $38                                       ; $78c1: $ff
    and $6f                                       ; $78c2: $e6 $6f
    ld b, l                                       ; $78c4: $45
    ld b, $d1                                     ; $78c5: $06 $d1
    ld h, $ff                                     ; $78c7: $26 $ff
    rst $38                                       ; $78c9: $ff
    and h                                         ; $78ca: $a4
    daa                                           ; $78cb: $27
    ret nz                                        ; $78cc: $c0

    db $eb                                        ; $78cd: $eb
    rst $38                                       ; $78ce: $ff
    rst $38                                       ; $78cf: $ff
    nop                                           ; $78d0: $00
    ld [hl], e                                    ; $78d1: $73
    call nc, $bfcd                                ; $78d2: $d4 $cd $bf
    rst $38                                       ; $78d5: $ff
    rst $38                                       ; $78d6: $ff
    rst $38                                       ; $78d7: $ff
    rst $38                                       ; $78d8: $ff
    sub [hl]                                      ; $78d9: $96
    rst $38                                       ; $78da: $ff
    reti                                          ; $78db: $d9


    or e                                          ; $78dc: $b3
    rst $38                                       ; $78dd: $ff
    rst $38                                       ; $78de: $ff
    rst $38                                       ; $78df: $ff
    rst $38                                       ; $78e0: $ff
    nop                                           ; $78e1: $00
    rst $38                                       ; $78e2: $ff
    rst $38                                       ; $78e3: $ff
    rst $38                                       ; $78e4: $ff
    rst $38                                       ; $78e5: $ff
    scf                                           ; $78e6: $37
    db $eb                                        ; $78e7: $eb
    call c, $ffff                                 ; $78e8: $dc $ff $ff
    rst $38                                       ; $78eb: $ff
    rst $38                                       ; $78ec: $ff
    rst $38                                       ; $78ed: $ff
    rst $38                                       ; $78ee: $ff
    rst $38                                       ; $78ef: $ff
    rst $38                                       ; $78f0: $ff
    rst $38                                       ; $78f1: $ff
    nop                                           ; $78f2: $00
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
    nop                                           ; $7903: $00
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
    nop                                           ; $790e: $00
    cp a                                          ; $790f: $bf
    rst $38                                       ; $7910: $ff
    rst $38                                       ; $7911: $ff
    rst $38                                       ; $7912: $ff
    rst $38                                       ; $7913: $ff
    nop                                           ; $7914: $00
    rst $38                                       ; $7915: $ff
    rst $38                                       ; $7916: $ff
    rst $38                                       ; $7917: $ff
    rst $38                                       ; $7918: $ff
    ld e, l                                       ; $7919: $5d
    ld d, e                                       ; $791a: $53
    nop                                           ; $791b: $00
    nop                                           ; $791c: $00
    nop                                           ; $791d: $00
    rst $38                                       ; $791e: $ff
    jr nz, @+$22                                  ; $791f: $20 $20

    jr z, @+$19                                   ; $7921: $28 $17

    ld sp, $3b3e                                  ; $7923: $31 $3e $3b
    ld d, h                                       ; $7926: $54
    cp a                                          ; $7927: $bf
    ld d, h                                       ; $7928: $54
    dec sp                                        ; $7929: $3b
    ld a, $31                                     ; $792a: $3e $31
    ld e, [hl]                                    ; $792c: $5e
    ld e, e                                       ; $792d: $5b
    rst $38                                       ; $792e: $ff
    pop hl                                        ; $792f: $e1
    ld e, d                                       ; $7930: $5a
    db $e3                                        ; $7931: $e3
    ld e, e                                       ; $7932: $5b
    nop                                           ; $7933: $00
    rst $38                                       ; $7934: $ff
    rst $38                                       ; $7935: $ff
    rst $20                                       ; $7936: $e7
    and $c0                                       ; $7937: $e6 $c0
    ldh [$15], a                                  ; $7939: $e0 $15
    ld c, c                                       ; $793b: $49
    ld c, h                                       ; $793c: $4c
    cp l                                          ; $793d: $bd
    ld l, b                                       ; $793e: $68
    rst $38                                       ; $793f: $ff
    ldh [$4c], a                                  ; $7940: $e0 $4c
    ld c, c                                       ; $7942: $49
    ld sp, $c25f                                  ; $7943: $31 $5f $c2

Jump_059_7946:
    pop hl                                        ; $7946: $e1
    ld e, e                                       ; $7947: $5b
    ld a, h                                       ; $7948: $7c
    ret nz                                        ; $7949: $c0

    rst $38                                       ; $794a: $ff
    ret nz                                        ; $794b: $c0

    ld [$3117], a                                 ; $794c: $ea $17 $31
    add hl, sp                                    ; $794f: $39
    ld l, d                                       ; $7950: $6a
    ld l, h                                       ; $7951: $6c
    rst $38                                       ; $7952: $ff
    ldh [$e3], a                                  ; $7953: $e0 $e3
    ld l, l                                       ; $7955: $6d
    add hl, sp                                    ; $7956: $39
    ld a, a                                       ; $7957: $7f
    db $e4                                        ; $7958: $e4
    ret nz                                        ; $7959: $c0

    rst $38                                       ; $795a: $ff
    add b                                         ; $795b: $80
    jp hl                                         ; $795c: $e9


    jr z, jr_059_7974                             ; $795d: $28 $15

    ld sp, $53ff                                  ; $795f: $31 $ff $53
    ld l, l                                       ; $7962: $6d
    ld l, l                                       ; $7963: $6d
    jr nc, @+$32                                  ; $7964: $30 $30

    jr nc, @+$6f                                  ; $7966: $30 $6d

    ld d, d                                       ; $7968: $52
    ld [hl], e                                    ; $7969: $73
    ld sp, $c061                                  ; $796a: $31 $61 $c0
    rst $38                                       ; $796d: $ff
    ret nz                                        ; $796e: $c0

    rst $28                                       ; $796f: $ef
    rla                                           ; $7970: $17
    ld sp, $c152                                  ; $7971: $31 $52 $c1

jr_059_7974:
    pop hl                                        ; $7974: $e1
    sub a                                         ; $7975: $97
    jr nc, jr_059_79e5                            ; $7976: $30 $6d

    ld d, e                                       ; $7978: $53
    ret nz                                        ; $7979: $c0

    db $e4                                        ; $797a: $e4
    ld e, d                                       ; $797b: $5a
    jp z, Jump_000_00ff                           ; $797c: $ca $ff $00

    jp hl                                         ; $797f: $e9


    ld d, $73                                     ; $7980: $16 $73
    dec d                                         ; $7982: $15
    add hl, sp                                    ; $7983: $39
    pop bc                                        ; $7984: $c1
    ld [c], a                                     ; $7985: $e2
    add b                                         ; $7986: $80
    ldh [$31], a                                  ; $7987: $e0 $31
    ld e, l                                       ; $7989: $5d
    ld e, h                                       ; $798a: $5c
    add b                                         ; $798b: $80
    rst $38                                       ; $798c: $ff
    sbc $c0                                       ; $798d: $de $c0
    adc $17                                       ; $798f: $ce $17
    ld c, c                                       ; $7991: $49
    ld c, h                                       ; $7992: $4c
    ld l, l                                       ; $7993: $6d
    rst $38                                       ; $7994: $ff
    ldh [rOCPS], a                                ; $7995: $e0 $6a
    ld b, d                                       ; $7997: $42
    add $7d                                       ; $7998: $c6 $7d
    ret nz                                        ; $799a: $c0

    ld sp, $ff62                                  ; $799b: $31 $62 $ff
    ldh [$ca], a                                  ; $799e: $e0 $ca
    rst $38                                       ; $79a0: $ff
    add b                                         ; $79a1: $80
    ret                                           ; $79a2: $c9


    jr nz, jr_059_79d0                            ; $79a3: $20 $2b

    rst $30                                       ; $79a5: $f7
    ld sp, $3d3e                                  ; $79a6: $31 $3e $3d
    pop bc                                        ; $79a9: $c1
    ldh [$67], a                                  ; $79aa: $e0 $67
    ld l, d                                       ; $79ac: $6a
    ld l, l                                       ; $79ad: $6d
    ld b, d                                       ; $79ae: $42
    db $e3                                        ; $79af: $e3
    inc a                                         ; $79b0: $3c
    ld sp, $e1ff                                  ; $79b1: $31 $ff $e1
    jp z, $c0ff                                   ; $79b4: $ca $ff $c0

    db $ec                                        ; $79b7: $ec
    ld sp, $4c49                                  ; $79b8: $31 $49 $4c
    cp $c1                                        ; $79bb: $fe $c1
    pop hl                                        ; $79bd: $e1
    ld l, l                                       ; $79be: $6d
    ld l, l                                       ; $79bf: $6d
    ld b, d                                       ; $79c0: $42
    ld c, c                                       ; $79c1: $49
    ld sp, $2931                                  ; $79c2: $31 $31 $29
    pop de                                        ; $79c5: $d1
    inc d                                         ; $79c6: $14
    jp z, $c0ff                                   ; $79c7: $ca $ff $c0

    rst $28                                       ; $79ca: $ef
    pop bc                                        ; $79cb: $c1
    ld [c], a                                     ; $79cc: $e2
    jr nc, @+$3e                                  ; $79cd: $30 $3c

    ret nz                                        ; $79cf: $c0

jr_059_79d0:
    ld sp, $b92b                                  ; $79d0: $31 $2b $b9
    db $10                                        ; $79d3: $10
    jp z, $e8ff                                   ; $79d4: $ca $ff $e8

    rst $20                                       ; $79d7: $e7
    inc h                                         ; $79d8: $24
    inc h                                         ; $79d9: $24
    inc h                                         ; $79da: $24
    add b                                         ; $79db: $80
    ldh [$39], a                                  ; $79dc: $e0 $39
    sub h                                         ; $79de: $94
    add d                                         ; $79df: $82
    pop hl                                        ; $79e0: $e1
    cp h                                          ; $79e1: $bc
    pop bc                                        ; $79e2: $c1
    ld d, e                                       ; $79e3: $53
    ret nz                                        ; $79e4: $c0

jr_059_79e5:
    ldh [$2c], a                                  ; $79e5: $e0 $2c
    jp z, $e8ff                                   ; $79e7: $ca $ff $e8

    rst $20                                       ; $79ea: $e7
    inc d                                         ; $79eb: $14
    cp a                                          ; $79ec: $bf
    inc d                                         ; $79ed: $14
    inc d                                         ; $79ee: $14
    add hl, hl                                    ; $79ef: $29
    ld sp, $5331                                  ; $79f0: $31 $31 $53
    pop bc                                        ; $79f3: $c1
    ld [c], a                                     ; $79f4: $e2
    jr nc, jr_059_79fa                            ; $79f5: $30 $03

    ld l, l                                       ; $79f7: $6d
    ld l, d                                       ; $79f8: $6a
    ld a, h                                       ; $79f9: $7c

jr_059_79fa:
    ret nz                                        ; $79fa: $c0

    ret nz                                        ; $79fb: $c0

    rst $38                                       ; $79fc: $ff
    ld [$cfe9], a                                 ; $79fd: $ea $e9 $cf
    jp nz, $a0fe                                  ; $7a00: $c2 $fe $a0

    add c                                         ; $7a03: $81
    db $e3                                        ; $7a04: $e3
    ccf                                           ; $7a05: $3f
    ld l, d                                       ; $7a06: $6a
    add e                                         ; $7a07: $83
    and a                                         ; $7a08: $a7
    ld sp, $2817                                  ; $7a09: $31 $17 $28
    jp z, $e8ff                                   ; $7a0c: $ca $ff $e8

    rst $20                                       ; $7a0f: $e7
    ldh a, [$50]                                  ; $7a10: $f0 $50
    pop bc                                        ; $7a12: $c1
    ld b, b                                       ; $7a13: $40
    ldh [rDIV], a                                 ; $7a14: $e0 $04
    pop hl                                        ; $7a16: $e1
    dec a                                         ; $7a17: $3d
    pop bc                                        ; $7a18: $c1
    halt                                          ; $7a19: $76
    and c                                         ; $7a1a: $a1
    ld sp, $9115                                  ; $7a1b: $31 $15 $91
    ld d, $ca                                     ; $7a1e: $16 $ca
    rst $38                                       ; $7a20: $ff
    add sp, -$19                                  ; $7a21: $e8 $e7
    adc l                                         ; $7a23: $8d
    add c                                         ; $7a24: $81
    ld e, [hl]                                    ; $7a25: $5e
    add b                                         ; $7a26: $80
    ret nz                                        ; $7a27: $c0

    add e                                         ; $7a28: $83
    pop hl                                        ; $7a29: $e1
    ld l, d                                       ; $7a2a: $6a
    ld a, a                                       ; $7a2b: $7f
    ld [hl], $72                                  ; $7a2c: $36 $72
    add b                                         ; $7a2e: $80
    and c                                         ; $7a2f: $a1
    ld sp, $1731                                  ; $7a30: $31 $31 $17
    jp z, $feff                                   ; $7a33: $ca $ff $fe

    ret nz                                        ; $7a36: $c0

    jp hl                                         ; $7a37: $e9


    ld e, d                                       ; $7a38: $5a
    ld e, e                                       ; $7a39: $5b
    ld e, a                                       ; $7a3a: $5f
    ld sp, $3e31                                  ; $7a3b: $31 $31 $3e
    ld a, [hl-]                                   ; $7a3e: $3a
    cp a                                          ; $7a3f: $bf
    ld d, h                                       ; $7a40: $54
    ld d, l                                       ; $7a41: $55
    ld d, l                                       ; $7a42: $55
    ld l, [hl]                                    ; $7a43: $6e
    ld l, a                                       ; $7a44: $6f
    add b                                         ; $7a45: $80
    ret nz                                        ; $7a46: $c0

    pop hl                                        ; $7a47: $e1
    dec d                                         ; $7a48: $15
    nop                                           ; $7a49: $00
    jp z, $ffff                                   ; $7a4a: $ca $ff $ff

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
    nop                                           ; $7a5a: $00
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
    nop                                           ; $7a6b: $00
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
    nop                                           ; $7a7c: $00
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
    nop                                           ; $7a8d: $00
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
    nop                                           ; $7a9e: $00
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
    nop                                           ; $7aaf: $00
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
    nop                                           ; $7ac0: $00
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
    nop                                           ; $7ad1: $00
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
    nop                                           ; $7ae2: $00
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
    nop                                           ; $7af3: $00
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
    nop                                           ; $7b04: $00
    rst $38                                       ; $7b05: $ff
    rst $38                                       ; $7b06: $ff
    rst $38                                       ; $7b07: $ff
    rst $38                                       ; $7b08: $ff
    rst $38                                       ; $7b09: $ff
    rst $38                                       ; $7b0a: $ff
    rst $38                                       ; $7b0b: $ff
    di                                            ; $7b0c: $f3
    nop                                           ; $7b0d: $00
    nop                                           ; $7b0e: $00
    nop                                           ; $7b0f: $00
    and l                                         ; $7b10: $a5
    nop                                           ; $7b11: $00
    rst $38                                       ; $7b12: $ff
    push hl                                       ; $7b13: $e5
    ld [hl-], a                                   ; $7b14: $32
    or $e6                                        ; $7b15: $f6 $e6
    rst $30                                       ; $7b17: $f7
    rst $20                                       ; $7b18: $e7
    dec [hl]                                      ; $7b19: $35
    db $ec                                        ; $7b1a: $ec
    xor $37                                       ; $7b1b: $ee $37
    db $ec                                        ; $7b1d: $ec
    jp c, $c7f0                                   ; $7b1e: $da $f0 $c7

    add sp, $33                                   ; $7b21: $e8 $33
    ld sp, $f2e0                                  ; $7b23: $31 $e0 $f2
    ld [hl], $30                                  ; $7b26: $36 $30
    scf                                           ; $7b28: $37
    cp a                                          ; $7b29: $bf
    ld h, $20                                     ; $7b2a: $26 $20
    daa                                           ; $7b2c: $27
    db $10                                        ; $7b2d: $10
    ld d, $17                                     ; $7b2e: $16 $17
    jp nz, Jump_000_34f6                          ; $7b30: $c2 $f6 $34

    rst $38                                       ; $7b33: $ff
    ld [hl], $32                                  ; $7b34: $36 $32
    jr nc, jr_059_7b6f                            ; $7b36: $30 $37

    ld sp, $3133                                  ; $7b38: $31 $33 $31
    inc sp                                        ; $7b3b: $33
    nop                                           ; $7b3c: $00
    and b                                         ; $7b3d: $a0
    ei                                            ; $7b3e: $fb
    rst $38                                       ; $7b3f: $ff
    rst $28                                       ; $7b40: $ef
    nop                                           ; $7b41: $00
    nop                                           ; $7b42: $00
    nop                                           ; $7b43: $00
    ld c, h                                       ; $7b44: $4c
    ld a, e                                       ; $7b45: $7b
    ld a, h                                       ; $7b46: $7c
    ld a, e                                       ; $7b47: $7b
    ld c, e                                       ; $7b48: $4b
    ld a, l                                       ; $7b49: $7d
    add hl, hl                                    ; $7b4a: $29
    ld a, a                                       ; $7b4b: $7f
    db $ec                                        ; $7b4c: $ec
    dec hl                                        ; $7b4d: $2b
    ld [hl+], a                                   ; $7b4e: $22
    dec sp                                        ; $7b4f: $3b
    ld b, b                                       ; $7b50: $40
    ld [hl+], a                                   ; $7b51: $22
    nop                                           ; $7b52: $00
    add hl, bc                                    ; $7b53: $09
    and l                                         ; $7b54: $a5
    ld b, e                                       ; $7b55: $43
    xor $37                                       ; $7b56: $ee $37
    ld [hl+], a                                   ; $7b58: $22
    dec sp                                        ; $7b59: $3b
    ld b, b                                       ; $7b5a: $40
    ld [hl+], a                                   ; $7b5b: $22
    ld e, d                                       ; $7b5c: $5a
    ld a, l                                       ; $7b5d: $7d
    cp a                                          ; $7b5e: $bf
    ld a, [hl]                                    ; $7b5f: $7e
    ld [hl], h                                    ; $7b60: $74
    db $10                                        ; $7b61: $10
    ld [hl+], a                                   ; $7b62: $22
    dec sp                                        ; $7b63: $3b
    ld [$0825], sp                                ; $7b64: $08 $25 $08
    dec h                                         ; $7b67: $25
    ld [$0825], sp                                ; $7b68: $08 $25 $08
    dec h                                         ; $7b6b: $25
    ld [$0825], sp                                ; $7b6c: $08 $25 $08

jr_059_7b6f:
    dec h                                         ; $7b6f: $25
    ld [$0825], sp                                ; $7b70: $08 $25 $08
    dec h                                         ; $7b73: $25
    ld [$0825], sp                                ; $7b74: $08 $25 $08
    dec h                                         ; $7b77: $25
    ld [$0825], sp                                ; $7b78: $08 $25 $08
    dec h                                         ; $7b7b: $25
    rst $38                                       ; $7b7c: $ff
    dec bc                                        ; $7b7d: $0b
    dec bc                                        ; $7b7e: $0b
    ld l, e                                       ; $7b7f: $6b
    dec bc                                        ; $7b80: $0b
    dec bc                                        ; $7b81: $0b
    dec bc                                        ; $7b82: $0b
    ld c, e                                       ; $7b83: $4b
    dec hl                                        ; $7b84: $2b
    ccf                                           ; $7b85: $3f
    dec bc                                        ; $7b86: $0b
    dec hl                                        ; $7b87: $2b
    dec hl                                        ; $7b88: $2b
    ld c, e                                       ; $7b89: $4b
    dec bc                                        ; $7b8a: $0b
    ld a, [bc]                                    ; $7b8b: $0a
    push af                                       ; $7b8c: $f5
    ldh [$f2], a                                  ; $7b8d: $e0 $f2
    ldh [$f5], a                                  ; $7b8f: $e0 $f5
    inc c                                         ; $7b91: $0c
    rst $38                                       ; $7b92: $ff
    db $ec                                        ; $7b93: $ec
    inc l                                         ; $7b94: $2c
    db $fd                                        ; $7b95: $fd
    ldh [$2c], a                                  ; $7b96: $e0 $2c
    ld c, h                                       ; $7b98: $4c
    inc c                                         ; $7b99: $0c
    ld c, h                                       ; $7b9a: $4c
    ei                                            ; $7b9b: $fb
    ld c, h                                       ; $7b9c: $4c
    ld c, h                                       ; $7b9d: $4c
    and $ed                                       ; $7b9e: $e6 $ed
    inc c                                         ; $7ba0: $0c
    inc c                                         ; $7ba1: $0c
    dec bc                                        ; $7ba2: $0b
    ld l, e                                       ; $7ba3: $6b
    ld l, e                                       ; $7ba4: $6b
    dec b                                         ; $7ba5: $05
    dec hl                                        ; $7ba6: $2b
    push bc                                       ; $7ba7: $c5
    ldh [rWX], a                                  ; $7ba8: $e0 $4b
    cp [hl]                                       ; $7baa: $be
    pop hl                                        ; $7bab: $e1
    jp nz, $bce2                                  ; $7bac: $c2 $e2 $bc

    ldh [$c0], a                                  ; $7baf: $e0 $c0
    ld a, [c]                                     ; $7bb1: $f2
    push bc                                       ; $7bb2: $c5
    rst $28                                       ; $7bb3: $ef
    inc b                                         ; $7bb4: $04
    ret nz                                        ; $7bb5: $c0

jr_059_7bb6:
    db $e3                                        ; $7bb6: $e3
    jp nz, Jump_000_2be0                          ; $7bb7: $c2 $e0 $2b

    add $e0                                       ; $7bba: $c6 $e0
    cp [hl]                                       ; $7bbc: $be
    ldh [$bf], a                                  ; $7bbd: $e0 $bf
    and $80                                       ; $7bbf: $e6 $80
    pop af                                        ; $7bc1: $f1
    pop bc                                        ; $7bc2: $c1
    db $f4                                        ; $7bc3: $f4
    ld [hl], b                                    ; $7bc4: $70
    ret nz                                        ; $7bc5: $c0

    db $e3                                        ; $7bc6: $e3
    pop bc                                        ; $7bc7: $c1
    ld [c], a                                     ; $7bc8: $e2
    cp a                                          ; $7bc9: $bf
    pop hl                                        ; $7bca: $e1
    ccf                                           ; $7bcb: $3f
    ldh [$0a], a                                  ; $7bcc: $e0 $0a
    dec bc                                        ; $7bce: $0b
    ld a, [bc]                                    ; $7bcf: $0a
    ld b, b                                       ; $7bd0: $40
    db $ed                                        ; $7bd1: $ed
    nop                                           ; $7bd2: $00
    ld c, c                                       ; $7bd3: $49
    ldh [rDMA], a                                 ; $7bd4: $e0 $46
    ldh a, [$80]                                  ; $7bd6: $f0 $80
    rst $20                                       ; $7bd8: $e7
    pop bc                                        ; $7bd9: $c1
    db $e4                                        ; $7bda: $e4
    ld a, [hl]                                    ; $7bdb: $7e
    and $94                                       ; $7bdc: $e6 $94
    push af                                       ; $7bde: $f5
    ld [$00ce], a                                 ; $7bdf: $ea $ce $00
    pop hl                                        ; $7be2: $e1
    nop                                           ; $7be3: $00
    rst $00                                       ; $7be4: $c7
    ret nz                                        ; $7be5: $c0

    add d                                         ; $7be6: $82
    db $e4                                        ; $7be7: $e4
    inc a                                         ; $7be8: $3c
    ldh [$fc], a                                  ; $7be9: $e0 $fc
    jp $cedc                                      ; $7beb: $c3 $dc $ce


    jp c, $bae0                                   ; $7bee: $da $e0 $ba

    ret nz                                        ; $7bf1: $c0

    db $fc                                        ; $7bf2: $fc
    pop hl                                        ; $7bf3: $e1
    jr nc, jr_059_7bb6                            ; $7bf4: $30 $c0

    rst $08                                       ; $7bf6: $cf
    ret nz                                        ; $7bf7: $c0

    pop hl                                        ; $7bf8: $e1
    ld b, c                                       ; $7bf9: $41
    ld [c], a                                     ; $7bfa: $e2
    ld a, c                                       ; $7bfb: $79
    pop bc                                        ; $7bfc: $c1
    ld c, e                                       ; $7bfd: $4b
    dec bc                                        ; $7bfe: $0b
    ld sp, hl                                     ; $7bff: $f9
    pop hl                                        ; $7c00: $e1
    call c, Call_000_00ef                         ; $7c01: $dc $ef $00
    ret nz                                        ; $7c04: $c0

    ld sp, hl                                     ; $7c05: $f9
    adc b                                         ; $7c06: $88
    pop bc                                        ; $7c07: $c1
    pop bc                                        ; $7c08: $c1
    db $e3                                        ; $7c09: $e3
    cp d                                          ; $7c0a: $ba
    jp $cfc0                                      ; $7c0b: $c3 $c0 $cf


    ret nz                                        ; $7c0e: $c0

    db $e4                                        ; $7c0f: $e4
    add b                                         ; $7c10: $80
    db $d3                                        ; $7c11: $d3
    ccf                                           ; $7c12: $3f
    db $e3                                        ; $7c13: $e3
    add b                                         ; $7c14: $80
    rlca                                          ; $7c15: $07
    jp $a0f7                                      ; $7c16: $c3 $f7 $a0


    ld a, a                                       ; $7c19: $7f
    pop hl                                        ; $7c1a: $e1
    ld d, h                                       ; $7c1b: $54
    adc $ee                                       ; $7c1c: $ce $ee
    and e                                         ; $7c1e: $a3
    db $fd                                        ; $7c1f: $fd
    and d                                         ; $7c20: $a2
    db $e4                                        ; $7c21: $e4
    xor [hl]                                      ; $7c22: $ae
    inc l                                         ; $7c23: $2c
    db $10                                        ; $7c24: $10
    ld a, $e3                                     ; $7c25: $3e $e3
    add e                                         ; $7c27: $83
    db $e3                                        ; $7c28: $e3
    cp b                                          ; $7c29: $b8
    and b                                         ; $7c2a: $a0
    ret nz                                        ; $7c2b: $c0

    ldh a, [$2c]                                  ; $7c2c: $f0 $2c
    ld a, [hl]                                    ; $7c2e: $7e
    ret nz                                        ; $7c2f: $c0

    jp $fda0                                      ; $7c30: $c3 $a0 $fd


    or e                                          ; $7c33: $b3
    ld bc, $c92c                                  ; $7c34: $01 $2c $c9
    and b                                         ; $7c37: $a0
    cp a                                          ; $7c38: $bf
    ld [c], a                                     ; $7c39: $e2
    dec a                                         ; $7c3a: $3d
    jp nz, $a1f6                                  ; $7c3b: $c2 $f6 $a1

    add b                                         ; $7c3e: $80
    rst $28                                       ; $7c3f: $ef
    adc b                                         ; $7c40: $88
    xor a                                         ; $7c41: $af
    or c                                          ; $7c42: $b1
    and a                                         ; $7c43: $a7
    ld de, $7e4c                                  ; $7c44: $11 $4c $7e
    ld [c], a                                     ; $7c47: $e2
    ccf                                           ; $7c48: $3f

Call_059_7c49:
    push bc                                       ; $7c49: $c5
    inc [hl]                                      ; $7c4a: $34
    and c                                         ; $7c4b: $a1
    ld a, [bc]                                    ; $7c4c: $0a
    db $d3                                        ; $7c4d: $d3
    or [hl]                                       ; $7c4e: $b6
    rst $00                                       ; $7c4f: $c7
    ld [$a721], a                                 ; $7c50: $ea $21 $a7
    nop                                           ; $7c53: $00
    inc a                                         ; $7c54: $3c
    pop bc                                        ; $7c55: $c1
    cp $a3                                        ; $7c56: $fe $a3
    db $f4                                        ; $7c58: $f4
    add c                                         ; $7c59: $81
    nop                                           ; $7c5a: $00
    ldh a, [$f7]                                  ; $7c5b: $f0 $f7
    cp h                                          ; $7c5d: $bc
    ld a, h                                       ; $7c5e: $7c
    pop bc                                        ; $7c5f: $c1
    add c                                         ; $7c60: $81
    and $c0                                       ; $7c61: $e6 $c0
    ld sp, hl                                     ; $7c63: $f9
    nop                                           ; $7c64: $00
    cp $d4                                        ; $7c65: $fe $d4
    adc d                                         ; $7c67: $8a
    add c                                         ; $7c68: $81
    add d                                         ; $7c69: $82
    add b                                         ; $7c6a: $80
    rst $38                                       ; $7c6b: $ff
    and $40                                       ; $7c6c: $e6 $40
    ld hl, sp-$47                                 ; $7c6e: $f8 $b9
    sub c                                         ; $7c70: $91
    add b                                         ; $7c71: $80
    ld [c], a                                     ; $7c72: $e2
    ld a, h                                       ; $7c73: $7c
    call nz, Call_059_4000                        ; $7c74: $c4 $00 $40
    ld sp, hl                                     ; $7c77: $f9
    ld a, $81                                     ; $7c78: $3e $81
    ld bc, $1df1                                  ; $7c7a: $01 $f1 $1d
    add e                                         ; $7c7d: $83
    sbc e                                         ; $7c7e: $9b
    add e                                         ; $7c7f: $83
    di                                            ; $7c80: $f3
    db $e4                                        ; $7c81: $e4
    rst $38                                       ; $7c82: $ff
    rst $38                                       ; $7c83: $ff
    rst $38                                       ; $7c84: $ff
    rst $38                                       ; $7c85: $ff
    nop                                           ; $7c86: $00
    ld a, h                                       ; $7c87: $7c
    di                                            ; $7c88: $f3
    ld [hl], a                                    ; $7c89: $77
    sub [hl]                                      ; $7c8a: $96
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
    nop                                           ; $7c97: $00
    ld c, h                                       ; $7c98: $4c
    or e                                          ; $7c99: $b3
    ld a, h                                       ; $7c9a: $7c
    sub [hl]                                      ; $7c9b: $96
    rst $38                                       ; $7c9c: $ff
    rst $38                                       ; $7c9d: $ff
    ret nz                                        ; $7c9e: $c0

    rst $38                                       ; $7c9f: $ff
    rst $38                                       ; $7ca0: $ff
    rst $38                                       ; $7ca1: $ff
    daa                                           ; $7ca2: $27
    rst $18                                       ; $7ca3: $df
    ret nz                                        ; $7ca4: $c0

    rst $38                                       ; $7ca5: $ff
    cp b                                          ; $7ca6: $b8
    ld d, a                                       ; $7ca7: $57
    jr nz, @+$01                                  ; $7ca8: $20 $ff

    rst $38                                       ; $7caa: $ff
    rst $38                                       ; $7cab: $ff
    rst $38                                       ; $7cac: $ff
    rst $38                                       ; $7cad: $ff
    rst $38                                       ; $7cae: $ff
    ccf                                           ; $7caf: $3f
    rst $38                                       ; $7cb0: $ff
    add h                                         ; $7cb1: $84
    cp c                                          ; $7cb2: $b9
    ld l, h                                       ; $7cb3: $6c
    ret nz                                        ; $7cb4: $c0

    rst $38                                       ; $7cb5: $ff
    add d                                         ; $7cb6: $82
    rst $38                                       ; $7cb7: $ff
    nop                                           ; $7cb8: $00
    rst $38                                       ; $7cb9: $ff
    rst $38                                       ; $7cba: $ff
    ld bc, $ffbf                                  ; $7cbb: $01 $bf $ff
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
    nop                                           ; $7cc9: $00
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
    nop                                           ; $7cda: $00
    rst $38                                       ; $7cdb: $ff
    rst $38                                       ; $7cdc: $ff
    push de                                       ; $7cdd: $d5
    ld a, a                                       ; $7cde: $7f
    rst $38                                       ; $7cdf: $ff
    rst $38                                       ; $7ce0: $ff
    rst $38                                       ; $7ce1: $ff
    rst $38                                       ; $7ce2: $ff
    rst $38                                       ; $7ce3: $ff
    rst $38                                       ; $7ce4: $ff
    rst $38                                       ; $7ce5: $ff
    rst $38                                       ; $7ce6: $ff
    ld c, a                                       ; $7ce7: $4f
    rst $38                                       ; $7ce8: $ff
    rst $38                                       ; $7ce9: $ff
    rst $38                                       ; $7cea: $ff
    nop                                           ; $7ceb: $00
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
    nop                                           ; $7cfc: $00
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
    nop                                           ; $7d0d: $00
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
    nop                                           ; $7d1e: $00
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
    jr nz, @+$01                                  ; $7d2f: $20 $ff

    rst $38                                       ; $7d31: $ff
    rst $38                                       ; $7d32: $ff
    rst $38                                       ; $7d33: $ff
    rst $38                                       ; $7d34: $ff
    rst $38                                       ; $7d35: $ff
    rst $38                                       ; $7d36: $ff
    rst $38                                       ; $7d37: $ff
    or $f5                                        ; $7d38: $f6 $f5
    inc l                                         ; $7d3a: $2c
    db $dd                                        ; $7d3b: $dd
    rst $38                                       ; $7d3c: $ff
    rst $38                                       ; $7d3d: $ff
    rst $38                                       ; $7d3e: $ff
    nop                                           ; $7d3f: $00
    rst $38                                       ; $7d40: $ff
    rst $38                                       ; $7d41: $ff
    rst $38                                       ; $7d42: $ff
    rst $38                                       ; $7d43: $ff
    rst $38                                       ; $7d44: $ff
    rst $38                                       ; $7d45: $ff
    rst $38                                       ; $7d46: $ff
    pop af                                        ; $7d47: $f1
    nop                                           ; $7d48: $00
    nop                                           ; $7d49: $00
    nop                                           ; $7d4a: $00
    rst $38                                       ; $7d4b: $ff
    ld hl, $3721                                  ; $7d4c: $21 $21 $37
    ld b, [hl]                                    ; $7d4f: $46
    ld b, [hl]                                    ; $7d50: $46
    ld b, a                                       ; $7d51: $47
    scf                                           ; $7d52: $37
    ld hl, $217f                                  ; $7d53: $21 $7f $21
    ld c, l                                       ; $7d56: $4d
    ld c, h                                       ; $7d57: $4c
    ld c, e                                       ; $7d58: $4b
    ld c, e                                       ; $7d59: $4b
    ld c, d                                       ; $7d5a: $4a
    ld c, e                                       ; $7d5b: $4b
    rst $38                                       ; $7d5c: $ff
    ld [c], a                                     ; $7d5d: $e2
    ld sp, hl                                     ; $7d5e: $f9
    nop                                           ; $7d5f: $00
    rst $38                                       ; $7d60: $ff

jr_059_7d61:
    rst $38                                       ; $7d61: $ff
    rst $20                                       ; $7d62: $e7
    and $21                                       ; $7d63: $e6 $21
    daa                                           ; $7d65: $27
    ld h, $5d                                     ; $7d66: $26 $5d
    ld e, l                                       ; $7d68: $5d
    rla                                           ; $7d69: $17
    ld e, l                                       ; $7d6a: $5d
    ld h, $36                                     ; $7d6b: $26 $36
    cp [hl]                                       ; $7d6d: $be
    ldh [$50], a                                  ; $7d6e: $e0 $50
    jp nz, $bce2                                  ; $7d70: $c2 $e2 $bc

    ldh [$ca], a                                  ; $7d73: $e0 $ca
    rst $38                                       ; $7d75: $ff
    ld a, [$e8c0]                                 ; $7d76: $fa $c0 $e8
    ld b, b                                       ; $7d79: $40
    pop bc                                        ; $7d7a: $c1
    ldh [$5d], a                                  ; $7d7b: $e0 $5d
    jr nz, @+$22                                  ; $7d7d: $20 $20

    ld h, $36                                     ; $7d7f: $26 $36
    pop de                                        ; $7d81: $d1
    dec a                                         ; $7d82: $3d
    cp a                                          ; $7d83: $bf
    and $ca                                       ; $7d84: $e6 $ca
    rst $38                                       ; $7d86: $ff
    add b                                         ; $7d87: $80
    add sp, $41                                   ; $7d88: $e8 $41
    pop bc                                        ; $7d8a: $c1
    ld [c], a                                     ; $7d8b: $e2
    ld d, a                                       ; $7d8c: $57
    ld d, l                                       ; $7d8d: $55
    ld [hl], e                                    ; $7d8e: $73
    ld d, l                                       ; $7d8f: $55
    ld [hl+], a                                   ; $7d90: $22
    cp a                                          ; $7d91: $bf
    ldh [$3f], a                                  ; $7d92: $e0 $3f
    ldh [rWY], a                                  ; $7d94: $e0 $4a

jr_059_7d96:
    ld c, e                                       ; $7d96: $4b
    ld c, d                                       ; $7d97: $4a
    jp z, Jump_000_06ff                           ; $7d98: $ca $ff $06

    ld b, b                                       ; $7d9b: $40
    add sp, $39                                   ; $7d9c: $e8 $39
    jr c, jr_059_7d61                             ; $7d9e: $38 $c1

    pop hl                                        ; $7da0: $e1
    ld a, e                                       ; $7da1: $7b
    pop hl                                        ; $7da2: $e1
    cp a                                          ; $7da3: $bf
    pop hl                                        ; $7da4: $e1
    nop                                           ; $7da5: $00
    rst $38                                       ; $7da6: $ff
    nop                                           ; $7da7: $00
    db $ed                                        ; $7da8: $ed
    scf                                           ; $7da9: $37

jr_059_7daa:
    ld hl, $5d29                                  ; $7daa: $21 $29 $5d
    pop bc                                        ; $7dad: $c1
    db $e3                                        ; $7dae: $e3
    jr nz, @+$22                                  ; $7daf: $20 $20

    cp a                                          ; $7db1: $bf
    push hl                                       ; $7db2: $e5
    jp z, $cfed                                   ; $7db3: $ca $ed $cf

    sub b                                         ; $7db6: $90
    nop                                           ; $7db7: $00
    sub b                                         ; $7db8: $90
    sub b                                         ; $7db9: $90
    ld sp, hl                                     ; $7dba: $f9
    ld [c], a                                     ; $7dbb: $e2
    ret nz                                        ; $7dbc: $c0

    ld a, [c]                                     ; $7dbd: $f2
    add hl, sp                                    ; $7dbe: $39
    jr c, jr_059_7dec                             ; $7dbf: $38 $2b

    jr nz, jr_059_7e19                            ; $7dc1: $20 $56

    db $fc                                        ; $7dc3: $fc
    jp Jump_000_3d56                              ; $7dc4: $c3 $56 $3d


    ldh [rVBK], a                                 ; $7dc7: $e0 $4f
    ret nz                                        ; $7dc9: $c0

    pop af                                        ; $7dca: $f1
    rst $38                                       ; $7dcb: $ff
    ldh [$d6], a                                  ; $7dcc: $e0 $d6
    ret nz                                        ; $7dce: $c0

    rst $30                                       ; $7dcf: $f7
    ld hl, $c029                                  ; $7dd0: $21 $29 $c0
    ld [c], a                                     ; $7dd3: $e2
    jr nz, jr_059_7d96                            ; $7dd4: $20 $c0

    ldh [$5b], a                                  ; $7dd6: $e0 $5b
    ld [hl+], a                                   ; $7dd8: $22
    db $e3                                        ; $7dd9: $e3
    dec a                                         ; $7dda: $3d
    ld c, [hl]                                    ; $7ddb: $4e
    ret nz                                        ; $7ddc: $c0

    ret nc                                        ; $7ddd: $d0

    ret nz                                        ; $7dde: $c0

    db $e4                                        ; $7ddf: $e4
    ld b, b                                       ; $7de0: $40
    db $f4                                        ; $7de1: $f4
    ld hl, $223d                                  ; $7de2: $21 $3d $22
    add hl, de                                    ; $7de5: $19
    jr nz, jr_059_7daa                            ; $7de6: $20 $c2

    pop hl                                        ; $7de8: $e1
    ret nz                                        ; $7de9: $c0

    pop hl                                        ; $7dea: $e1
    ld e, e                                       ; $7deb: $5b

jr_059_7dec:
    add hl, hl                                    ; $7dec: $29
    ld a, a                                       ; $7ded: $7f
    pop hl                                        ; $7dee: $e1
    ld a, [bc]                                    ; $7def: $0a
    xor $c2                                       ; $7df0: $ee $c2
    or $8f                                        ; $7df2: $f6 $8f
    nop                                           ; $7df4: $00
    nop                                           ; $7df5: $00
    rlca                                          ; $7df6: $07
    ld [de], a                                    ; $7df7: $12
    cp a                                          ; $7df8: $bf
    ld [c], a                                     ; $7df9: $e2
    ret nz                                        ; $7dfa: $c0

    pop hl                                        ; $7dfb: $e1
    cp e                                          ; $7dfc: $bb
    pop bc                                        ; $7dfd: $c1
    ld b, e                                       ; $7dfe: $43
    inc de                                        ; $7dff: $13
    ld hl, $c04e                                  ; $7e00: $21 $4e $c0
    rst $18                                       ; $7e03: $df
    db $eb                                        ; $7e04: $eb
    ld [$3e17], a                                 ; $7e05: $ea $17 $3e
    ldh [$fd], a                                  ; $7e08: $e0 $fd
    ret nz                                        ; $7e0a: $c0

    ld a, h                                       ; $7e0b: $7c
    call nz, Call_059_43e3                        ; $7e0c: $c4 $e3 $43
    ld hl, $c0fe                                  ; $7e0f: $21 $fe $c0
    set 7, a                                      ; $7e12: $cb $ff
    jp hl                                         ; $7e14: $e9


    add sp, $01                                   ; $7e15: $e8 $01
    ld d, $13                                     ; $7e17: $16 $13

jr_059_7e19:
    xor $7c                                       ; $7e19: $ee $7c
    ret nz                                        ; $7e1b: $c0

    ld d, l                                       ; $7e1c: $55
    ld d, l                                       ; $7e1d: $55
    ld d, l                                       ; $7e1e: $55
    cp b                                          ; $7e1f: $b8
    and d                                         ; $7e20: $a2
    ld [hl], e                                    ; $7e21: $73
    sub a                                         ; $7e22: $97
    ld hl, $4e69                                  ; $7e23: $21 $69 $4e
    nop                                           ; $7e26: $00
    rst $18                                       ; $7e27: $df
    db $ec                                        ; $7e28: $ec
    db $eb                                        ; $7e29: $eb
    dec e                                         ; $7e2a: $1d
    ld a, h                                       ; $7e2b: $7c
    pop bc                                        ; $7e2c: $c1
    ld e, h                                       ; $7e2d: $5c
    ld e, h                                       ; $7e2e: $5c
    ld a, b                                       ; $7e2f: $78
    and c                                         ; $7e30: $a1
    sbc a                                         ; $7e31: $9f
    ld [hl-], a                                   ; $7e32: $32
    ld [hl], h                                    ; $7e33: $74
    sub c                                         ; $7e34: $91
    ld hl, $8051                                  ; $7e35: $21 $51 $80
    rst $38                                       ; $7e38: $ff
    ret nz                                        ; $7e39: $c0

    xor $21                                       ; $7e3a: $ee $21
    sbc l                                         ; $7e3c: $9d
    add hl, hl                                    ; $7e3d: $29
    ret nz                                        ; $7e3e: $c0

    ld [c], a                                     ; $7e3f: $e2
    jr nz, jr_059_7eb5                            ; $7e40: $20 $73

    ld [hl], b                                    ; $7e42: $70
    ret nz                                        ; $7e43: $c0

    rst $38                                       ; $7e44: $ff
    rst $28                                       ; $7e45: $ef
    xor $09                                       ; $7e46: $ee $09
    ld l, [hl]                                    ; $7e48: $6e
    inc a                                         ; $7e49: $3c
    ret nz                                        ; $7e4a: $c0

    sbc a                                         ; $7e4b: $9f
    ld h, $5c                                     ; $7e4c: $26 $5c
    ccf                                           ; $7e4e: $3f
    ret nz                                        ; $7e4f: $c0

    ld h, $74                                     ; $7e50: $26 $74
    ret nz                                        ; $7e52: $c0

    rst $38                                       ; $7e53: $ff
    ld a, [$eff0]                                 ; $7e54: $fa $f0 $ef
    ld e, $fc                                     ; $7e57: $1e $fc
    and b                                         ; $7e59: $a0
    sub c                                         ; $7e5a: $91
    ld e, a                                       ; $7e5b: $5f
    ld e, [hl]                                    ; $7e5c: $5e
    ld b, h                                       ; $7e5d: $44
    ld b, l                                       ; $7e5e: $45
    rlca                                          ; $7e5f: $07
    ld e, [hl]                                    ; $7e60: $5e
    ld e, a                                       ; $7e61: $5f
    ld [hl], b                                    ; $7e62: $70
    ret nz                                        ; $7e63: $c0

    rst $38                                       ; $7e64: $ff
    rst $38                                       ; $7e65: $ff
    rst $38                                       ; $7e66: $ff
    rst $38                                       ; $7e67: $ff
    rst $38                                       ; $7e68: $ff
    rst $38                                       ; $7e69: $ff
    rst $38                                       ; $7e6a: $ff
    rst $38                                       ; $7e6b: $ff
    rst $38                                       ; $7e6c: $ff
    nop                                           ; $7e6d: $00
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
    cp d                                          ; $7e7c: $ba
    sbc h                                         ; $7e7d: $9c
    nop                                           ; $7e7e: $00
    rst $38                                       ; $7e7f: $ff
    rst $38                                       ; $7e80: $ff
    ret nz                                        ; $7e81: $c0

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
    nop                                           ; $7e8f: $00
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
    nop                                           ; $7ea0: $00
    rst $38                                       ; $7ea1: $ff

Call_059_7ea2:
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
    nop                                           ; $7eb1: $00
    rst $38                                       ; $7eb2: $ff
    rst $38                                       ; $7eb3: $ff
    rst $38                                       ; $7eb4: $ff

jr_059_7eb5:
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
    nop                                           ; $7ec2: $00
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
    nop                                           ; $7ed3: $00
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

Call_059_7ee4:
Jump_059_7ee4:
    nop                                           ; $7ee4: $00
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
    nop                                           ; $7ef5: $00
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

Jump_059_7f00:
    rst $38                                       ; $7f00: $ff
    rst $38                                       ; $7f01: $ff
    rst $38                                       ; $7f02: $ff
    rst $38                                       ; $7f03: $ff
    rst $38                                       ; $7f04: $ff
    rst $38                                       ; $7f05: $ff
    nop                                           ; $7f06: $00
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
    nop                                           ; $7f17: $00
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
    ei                                            ; $7f25: $fb
    nop                                           ; $7f26: $00
    nop                                           ; $7f27: $00
    nop                                           ; $7f28: $00
    call $ff00                                    ; $7f29: $cd $00 $ff
    jp hl                                         ; $7f2c: $e9


    scf                                           ; $7f2d: $37
    ld [hl-], a                                   ; $7f2e: $32
    pop af                                        ; $7f2f: $f1
    ld [$ffff], a                                 ; $7f30: $ea $ff $ff
    inc sp                                        ; $7f33: $33
    ld sp, $dcfe                                  ; $7f34: $31 $fe $dc
    ld a, [c]                                     ; $7f37: $f2
    ld [hl], $30                                  ; $7f38: $36 $30
    scf                                           ; $7f3a: $37
    ld h, $20                                     ; $7f3b: $26 $20
    daa                                           ; $7f3d: $27
    db $10                                        ; $7f3e: $10
    ei                                            ; $7f3f: $fb
    ld d, $17                                     ; $7f40: $16 $17
    cp [hl]                                       ; $7f42: $be
    or $34                                        ; $7f43: $f6 $34
    ld [hl], $32                                  ; $7f45: $36 $32
    jr nc, jr_059_7f80                            ; $7f47: $30 $37

    rrca                                          ; $7f49: $0f
    ld sp, $3133                                  ; $7f4a: $31 $33 $31
    inc sp                                        ; $7f4d: $33
    sbc h                                         ; $7f4e: $9c
    rst $38                                       ; $7f4f: $ff
    rst $38                                       ; $7f50: $ff
    ei                                            ; $7f51: $fb
    nop                                           ; $7f52: $00
    nop                                           ; $7f53: $00
    nop                                           ; $7f54: $00
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

jr_059_7f80:
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
